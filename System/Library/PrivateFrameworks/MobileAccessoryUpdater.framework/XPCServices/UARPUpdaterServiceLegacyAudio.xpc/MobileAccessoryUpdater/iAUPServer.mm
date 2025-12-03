@interface iAUPServer
- (BOOL)personalizationComplete;
- (char)assetTypeString:(int)string;
- (char)commandString:(int)string;
- (char)parserStateString:(int)string;
- (char)serverStateString:(int)string;
- (id)initInstanceWithByteEscape:(BOOL)escape;
- (unsigned)appendByteWithEscaping:(unsigned __int8)escaping toObject:(id *)object;
- (void)accessoryDisconnected;
- (void)appendToLog:(id)log;
- (void)dealloc;
- (void)processDataFromAccessory:(id)accessory;
- (void)processInTelegram;
- (void)processNotifyAccessoryErrorCommand:(char *)command length:(unsigned int)length;
- (void)processPersonalizationInfo:(char *)info length:(unsigned int)length;
- (void)resetParser;
- (void)setFirmwareBundle:(id)bundle;
- (void)setHSModel:(id)model fallbackModel:(id)fallbackModel error:(id)error;
@end

@implementation iAUPServer

- (id)initInstanceWithByteEscape:(BOOL)escape
{
  v6.receiver = self;
  v6.super_class = iAUPServer;
  v4 = [(iAUPServer *)&v6 init];
  if (v4)
  {
    *(v4 + 7) = [[NSMutableData alloc] initWithCapacity:32];
    *(v4 + 1) = 0;
    *(v4 + 4) = 0;
    v4[25] = escape;
    v4[26] = 0;
    *(v4 + 42) = 0;
    *(v4 + 87) = 256;
    [v4 resetParser];
    [v4 setServerState:1];
    *(v4 + 20) = 0;
    *(v4 + 18) = 0;
    memset_pattern16(v4 + 64, &unk_100022130, 8uLL);
    NSLog(@"%s(): iAUPServer init byteEscape=%d serverState=%s parserState=%s\n", "-[iAUPServer initInstanceWithByteEscape:]", v4[25], [v4 serverStateString:*(v4 + 4)], objc_msgSend(v4, "parserStateString:", *(v4 + 5)));
  }

  return v4;
}

- (void)dealloc
{
  NSLog(@"%s(): iAUPServer dealloc\n", a2, "[iAUPServer dealloc]");

  self->_telegramDataIn = 0;
  v3.receiver = self;
  v3.super_class = iAUPServer;
  [(iAUPServer *)&v3 dealloc];
}

- (void)resetParser
{
  self->_escapeInProgress = 0;
  [(NSMutableData *)self->_telegramDataIn setLength:0];
  if (self->_byteEscape)
  {
    v3 = 4294967294;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  [(iAUPServer *)self setParserState:v3];
}

- (void)appendToLog:(id)log
{
  delegate = [(iAUPServer *)self delegate];

  [(iAUPServerDelegate *)delegate logStatusString:log];
}

- (void)setFirmwareBundle:(id)bundle
{
  firmwareBundle = self->_firmwareBundle;
  if (firmwareBundle)
  {

    self->_firmwareBundle = 0;
  }

  self->_firmwareBundle = bundle;
  if ([(iAUPServer *)self serverState]!= 1 && [(iAUPServer *)self serverState]!= 7)
  {
    [(iAUPServer *)self resetParser];

    [(iAUPServer *)self setServerState:6];
  }
}

- (void)processDataFromAccessory:(id)accessory
{
  bytes = [accessory bytes];
  if ([accessory length])
  {
    v6 = 1;
    do
    {
      v7 = *bytes++;
      [(iAUPServer *)self processInByte:v7];
    }

    while ([accessory length] > v6++);
  }
}

- (void)processInTelegram
{
  mutableBytes = [(NSMutableData *)self->_telegramDataIn mutableBytes];
  v4 = (mutableBytes + 1);
  v5 = *mutableBytes;
  v6 = [(NSMutableData *)self->_telegramDataIn length]- 1;
  [(iAUPServer *)self logCommand:v5 payload:mutableBytes + 1 length:v6];
  if (v5 > 6)
  {
    if (v5 <= 33)
    {
      switch(v5)
      {
        case 7:

          [(iAUPServer *)self setResumeInfo:v4 length:v6];
          break;
        case 0x20:

          [(iAUPServer *)self processIdentifyCommand:v4 length:v6];
          break;
        case 0x21:

          [(iAUPServer *)self processRequestDownloadCommand:v4 length:v6];
          break;
      }

      return;
    }

    if (v5 <= 192)
    {
      if (v5 == 34)
      {

        [(iAUPServer *)self processDownloadCompleteCommand:v4 length:v6];
      }

      else if (v5 == 35)
      {

        [(iAUPServer *)self processNotifyAccessoryErrorCommand:v4 length:v6];
      }

      return;
    }

    if (v5 != 193)
    {
      if (v5 == 194)
      {

        [(iAUPServer *)self processPersonalizationInfo:v4 length:v6];
      }

      return;
    }

    if (!self->_ackAppReentry)
    {
      return;
    }

    goto LABEL_55;
  }

  if (v5 > 2)
  {
    if (v5 <= 4)
    {
      if (v5 != 3)
      {
        v7 = *v4;
        if (!*v4)
        {
          if ([(FirmwareBundle *)self->_firmwareBundle firmwareImage]|| [(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL])
          {
            goto LABEL_78;
          }

          v7 = *v4;
        }

        if (v7 == 2)
        {
          if ([(FirmwareBundle *)self->_firmwareBundle hash])
          {
            goto LABEL_78;
          }

          v7 = *v4;
        }

        if (v7 == 1)
        {
          if ([(FirmwareBundle *)self->_firmwareBundle certificate])
          {
            goto LABEL_78;
          }

          v7 = *v4;
        }

        if (v7 != 3 || ![(FirmwareBundle *)self->_firmwareBundle signature])
        {
          [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectSize: request for empty object."];
          v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-4 userInfo:0];
          v62 = @"Event";
          v63 = @"com.apple.fud.updateFailed";
          v9 = &v63;
          v10 = &v62;
LABEL_69:
          [(iAUPServerDelegate *)self->_delegate firmwareUpdateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v9 forKeys:v10 count:1], v8];

          return;
        }

LABEL_78:
        v29 = 0;
        v30 = *v4;
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            signature = [(FirmwareBundle *)self->_firmwareBundle hash];
            goto LABEL_90;
          }

          if (v30 == 3)
          {
            signature = [(FirmwareBundle *)self->_firmwareBundle signature];
            goto LABEL_90;
          }
        }

        else if (*v4)
        {
          if (v30 == 1)
          {
            signature = [(FirmwareBundle *)self->_firmwareBundle certificate];
LABEL_90:
            v29 = bswap32([(NSData *)signature length]);
          }
        }

        else
        {
          v29 = bswap32([(FirmwareBundle *)self->_firmwareBundle firmwareImageSize]);
        }

        v48 = *v4;
        v49 = v29;
        selfCopy4 = self;
        v28 = 132;
LABEL_92:
        [(iAUPServer *)selfCopy4 sendCommand:v28 payload:&v48 payload_length:5];
        return;
      }

      v17 = bswap32(*v4);
      self->_firmwareImageBaseTransferAddress = v17;
      if (v17 < [(FirmwareBundle *)self->_firmwareBundle firmwareImageBaseAddress]|| (firmwareImageBaseTransferAddress = self->_firmwareImageBaseTransferAddress, v19 = firmwareImageBaseTransferAddress - [(FirmwareBundle *)self->_firmwareBundle firmwareImageBaseAddress], v19 >= [(FirmwareBundle *)self->_firmwareBundle firmwareImageSize]))
      {
        [(iAUPServer *)self appendToLog:@"COMMAND_SetBaseImageTransferAddress: Bound check failed"];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-2 userInfo:0];
        v64 = @"Event";
        v65 = @"com.apple.fud.updateFailed";
        v9 = &v65;
        v10 = &v64;
        goto LABEL_69;
      }

      selfCopy5 = self;
      v13 = 131;
      v14 = (mutableBytes + 1);
      v15 = 4;
      goto LABEL_34;
    }

    if (v5 != 5)
    {
      v16 = *v4;
      self->_accessoryCapabilities = v16;
      NSLog(@"_accessoryCapabilities set to 0x%x\n", v16);
      selfCopy5 = self;
      v13 = 134;
      v14 = 0;
      v15 = 0;
LABEL_34:

      [(iAUPServer *)selfCopy5 sendCommand:v13 payload:v14 payload_length:v15];
      return;
    }

    v20 = *v4;
    if (v20 > 3)
    {
      return;
    }

    v21 = *(mutableBytes + 2);
    LODWORD(mutableBytes) = self->objectBlockTransferSizes[v20];
    firmwareBundle = self->_firmwareBundle;
    if (*v4)
    {
      if (v20 == 1)
      {
        if ([(FirmwareBundle *)firmwareBundle certificate])
        {
          firmwareImageSize = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle certificate] length];
          certificate = [(FirmwareBundle *)self->_firmwareBundle certificate];
          goto LABEL_98;
        }
      }

      else if (v20 == 3)
      {
        if ([(FirmwareBundle *)firmwareBundle signature])
        {
          firmwareImageSize = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle signature] length];
          certificate = [(FirmwareBundle *)self->_firmwareBundle signature];
LABEL_98:
          bytes = [(NSData *)certificate bytes];
          goto LABEL_99;
        }
      }

      else if ([(FirmwareBundle *)firmwareBundle hash])
      {
        firmwareImageSize = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle hash] length];
        certificate = [(FirmwareBundle *)self->_firmwareBundle hash];
        goto LABEL_98;
      }
    }

    else if ([(FirmwareBundle *)firmwareBundle firmwareImage]|| [(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL])
    {
      firmwareImageSize = [(FirmwareBundle *)self->_firmwareBundle firmwareImageSize];
      v32 = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle firmwareImage] bytes]+ self->_firmwareImageBaseTransferAddress;
      bytes = &v32[[(FirmwareBundle *)self->_firmwareBundle]];
LABEL_99:
      if (!bytes && ![(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL]|| !firmwareImageSize)
      {
        [(iAUPServer *)self appendToLog:[NSString stringWithFormat:@"COMMAND_GetObjectBlock Failed, Invalid object_type (%c) or Image (object_total_size = %u)", v20, firmwareImageSize]];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-4 userInfo:0];
        v58 = @"Event";
        v59 = @"com.apple.fud.updateFailed";
        v9 = &v59;
        v10 = &v58;
        goto LABEL_69;
      }

      v34 = (bswap32(v21) >> 16) * mutableBytes;
      v35 = firmwareImageSize - v34;
      if (firmwareImageSize < v34)
      {
        [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectBlock: bound check failed: block_offset * block_size > object_total_size"];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-2 userInfo:0];
        v56 = @"Event";
        v57 = @"com.apple.fud.updateFailed";
        v9 = &v57;
        v10 = &v56;
        goto LABEL_69;
      }

      if (v35 >= mutableBytes)
      {
        mutableBytes = mutableBytes;
      }

      else
      {
        mutableBytes = v35;
      }

      v36 = malloc_type_malloc((mutableBytes + 3), 0xB287C21EuLL);
      if (!v36)
      {
        [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectBlock: malloc failed."];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-3 userInfo:0];
        v54 = @"Event";
        v55 = @"com.apple.fud.updateFailed";
        v9 = &v55;
        v10 = &v54;
        goto LABEL_69;
      }

      v37 = v36;
      if (v20 || ![(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL])
      {
        v38 = *v4;
        v39 = &bytes[v34];
        v37[2] = v4[2];
        *v37 = v38;
        v40 = v37 + 3;
        v41 = mutableBytes;
      }

      else
      {
        v43 = [(FirmwareBundle *)self->_firmwareBundle getFirmwareDataInRange:v34 error:mutableBytes, 0];
        if (!v43)
        {
          [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectBlock: Failed to read firmware data from file"];
          v47 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-4 userInfo:0];
          v52 = @"Event";
          v53 = @"com.apple.fud.updateFailed";
          [(iAUPServerDelegate *)self->_delegate firmwareUpdateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v52 forKeys:1 count:?], v47];

          free(v37);
          return;
        }

        v44 = v43;
        v45 = *v4;
        v37[2] = v4[2];
        *v37 = v45;
        bytes2 = [v43 bytes];
        v41 = [v44 length];
        v40 = v37 + 3;
        v39 = bytes2;
      }

      memcpy(v40, v39, v41);
      [(iAUPServer *)self sendCommand:133 payload:v37 payload_length:(mutableBytes + 3)];
      free(v37);
      self->_totalBytesDownloadedInCurrentSession += mutableBytes;
      if ((self->_accessoryCapabilities & 1) == 0 && !self->_startEventSent)
      {
        v51[0] = @"com.apple.fud.updateStarted";
        v50[0] = @"Event";
        v50[1] = @"resumeCount";
        v51[1] = [NSNumber numberWithUnsignedInt:0];
        v50[2] = @"cumulativeUpdateTime";
        v51[2] = [NSNumber numberWithUnsignedInt:0];
        v50[3] = @"cumulativeCloakTime";
        v51[3] = [NSNumber numberWithUnsignedInt:0];
        v50[4] = @"totalBytesForCompleteUpdate";
        v51[4] = [NSNumber numberWithUnsignedInt:[(FirmwareBundle *)self->_firmwareBundle firmwareImageSize]];
        v50[5] = @"totalBytesDownloadedSoFar";
        v51[5] = [NSNumber numberWithUnsignedInt:0];
        [(iAUPServerDelegate *)self->_delegate handleFirmwareUpdateStatus:[NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:6]];
        self->_startEventSent = 1;
      }

      if (!v20)
      {
        delegate = self->_delegate;
        if (delegate)
        {
          [(iAUPServerDelegate *)delegate updateProgress:(mutableBytes + v34) / firmwareImageSize * 100.0];
        }
      }

      return;
    }

    [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectBlock: request for empty object."];
    v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-4 userInfo:0];
    v60 = @"Event";
    v61 = @"com.apple.fud.updateFailed";
    v9 = &v61;
    v10 = &v60;
    goto LABEL_69;
  }

  if (!v5)
  {
    v48 = *v4;
    if (v48 == 1)
    {
      v26 = bswap32([(FirmwareBundle *)self->_firmwareBundle productIDCode]);
    }

    else
    {
      v26 = 0;
    }

    v49 = v26;
    selfCopy4 = self;
    v28 = 128;
    goto LABEL_92;
  }

  if (v5 != 1)
  {
    v11 = *v4;
    if (v11 > 3)
    {
      return;
    }

    self->objectBlockTransferSizes[v11] = bswap32(*(mutableBytes + 2)) >> 16;
    selfCopy5 = self;
    v13 = 130;
    v14 = (mutableBytes + 1);
    v15 = 3;
    goto LABEL_34;
  }

  if (*v4 == 136)
  {
    [(iAUPServer *)self appendToLog:@"ProcessAbort_GeneralFailure from accessory. Cleaning up."];
    v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-1 userInfo:0];
    v66 = @"Event";
    v67 = @"com.apple.fud.updateFailed";
    v9 = &v67;
    v10 = &v66;
    goto LABEL_69;
  }

  [(iAUPServer *)self sendCommand:129 payload:v4 payload_length:1];
  if (*v4 == 8 && self->_iAUPVersion == 1)
  {
    [(iAUPServer *)self sendCommand:65 payload:0 payload_length:0];
    if (!self->_ackAppReentry)
    {
LABEL_55:
      v25 = self->_delegate;

      [(iAUPServerDelegate *)v25 firmwareUpdateComplete:0 error:0];
    }
  }
}

- (unsigned)appendByteWithEscaping:(unsigned __int8)escaping toObject:(id *)object
{
  escapingCopy = escaping;
  if ((escaping - 125) <= 1 && self->_byteEscape)
  {
    escapingCopy2 = escaping;
    v6[0] = 125;
    v6[1] = escaping & 0x5F;
    [*object appendBytes:v6 length:2];
  }

  else
  {
    [*object appendBytes:&escapingCopy length:1];
    return escapingCopy;
  }

  return escapingCopy2;
}

- (void)processPersonalizationInfo:(char *)info length:(unsigned int)length
{
  if (info && length)
  {
    if ((*info & 0xF) == 1)
    {
      v5 = [iAUPServer processManifestProperties:"processManifestProperties:length:" length:?];
      goto LABEL_7;
    }

    NSLog(@"[processPersonalizationInfo] Unsupported infoType = %d\n", a2, *info);
  }

  else
  {
    NSLog(@"[processPersonalizationInfo] Invalid payload length=%d\n", a2, length);
  }

  v5 = 0;
LABEL_7:
  delegate = self->_delegate;

  [(iAUPServerDelegate *)delegate processPersonalizationInfoFromAccessory:v5];
}

- (BOOL)personalizationComplete
{
  if (!self->_firmwareBundle)
  {
    v5 = @"[personalizationComplete] Invalid state: firmwareBundle = NULL";
    goto LABEL_12;
  }

  if (self->_currentAsset != 1)
  {
    v5 = @"[personalizationComplete] Invalid asset for processing personalization";
    goto LABEL_12;
  }

  if ([(iAUPServerDelegate *)self->_delegate getPersonalizationID]>= 0x10)
  {
    currentAsset = [(iAUPServerDelegate *)self->_delegate getPersonalizationID];
    NSLog(@"[RequestDownload] Sending COMMAND_GetPersonalizationInfo");
    v3 = 1;
    if (![(iAUPServer *)self sendCommand:66 payload:&currentAsset payload_length:1])
    {
      return v3;
    }

    v5 = @"[personalizationComplete] Failed to send next Personalization request";
LABEL_12:
    sub_1000150F4(&v5->isa, &currentAsset, self);
    return 0;
  }

  currentAsset = self->_currentAsset;
  if ([(iAUPServer *)self sendCommand:97 payload:&currentAsset payload_length:1])
  {
    v5 = @"[personalizationComplete] Failed to send AckRequestDownload";
    goto LABEL_12;
  }

  [(iAUPServer *)self setServerState:6];
  return 1;
}

- (void)processNotifyAccessoryErrorCommand:(char *)command length:(unsigned int)length
{
  v6 = "valid";
  if (!command)
  {
    v6 = "nil";
  }

  NSLog(@"%s(): payload=%s length=%d \n", a2, "[iAUPServer processNotifyAccessoryErrorCommand:length:]", v6, length);
  NSLog(@"[NotifyAccessoryError] Accessory notified error reason=%d\n", *command);
  [(iAUPServer *)self setServerState:0];
  v7 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-1 userInfo:0];
  v8 = @"Event";
  v9 = @"com.apple.fud.updateFailed";
  [(iAUPServerDelegate *)self->_delegate firmwareUpdateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v8 forKeys:1 count:?], v7];

  self->_firmwareBundle = 0;
}

- (void)accessoryDisconnected
{
  NSLog(@"%s()\n", a2, "[iAUPServer accessoryDisconnected]");
  hsModel = self->_hsModel;
  if (hsModel)
  {
    [(HSModel *)hsModel setDelegate:0];

    self->_hsModel = 0;
  }
}

- (void)setHSModel:(id)model fallbackModel:(id)fallbackModel error:(id)error
{
  dispatchQ = self->_dispatchQ;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D8DC;
  v6[3] = &unk_10002CB58;
  v6[4] = model;
  v6[5] = fallbackModel;
  v6[6] = error;
  v6[7] = self;
  dispatch_async(dispatchQ, v6);
}

- (char)commandString:(int)string
{
  if (string <= 65)
  {
    if (string > 5)
    {
      if (string > 32)
      {
        switch(string)
        {
          case '!':
            return "COMMAND_iAUPv2_RequestDownload";
          case '""':
            return "COMMAND_iAUPv2_DownloadComplete";
          case '#':
            return "COMMAND_iAUPv2_NotifyAccessoryError";
        }
      }

      else
      {
        switch(string)
        {
          case 6:
            return "COMMAND_SetAccessoryCapabilities";
          case 7:
            return "COMMAND_SetResumeInfo";
          case 32:
            return "COMMAND_iAUPv2_Identify";
        }
      }

      return "unknown";
    }

    if (string <= 2)
    {
      switch(string)
      {
        case 0:
          return "COMMAND_GetMetadata";
        case 1:
          return "COMMAND_NotifyProcessStatus";
        case 2:
          return "COMMAND_SetBlockTransferSize";
      }

      return "unknown";
    }

    if (string == 3)
    {
      return "COMMAND_SetBaseImageTransferAddress";
    }

    else if (string == 4)
    {
      return "COMMAND_GetObjectSize";
    }

    else
    {
      return "COMMAND_GetObjectBlock";
    }
  }

  else
  {
    if (string <= 128)
    {
      if (string > 97)
      {
        switch(string)
        {
          case 98:
            return "COMMAND_iAUPv2_AckDownloadComplete";
          case 99:
            return "COMMAND_iAUPv2_NotifyDeviceError";
          case 128:
            return "COMMAND_RetMetadata";
        }
      }

      else
      {
        switch(string)
        {
          case 'B':
            return "COMMAND_GetPersonalizationInfo";
            return "COMMAND_iAUPv2_AckIdentify";
          case 'a':
            return "COMMAND_iAUPv2_AckRequestDownload";
        }
      }

      return "unknown";
    }

    if (string > 131)
    {
      if (string <= 133)
      {
        if (string == 132)
        {
          return "COMMAND_RetObjectSize";
        }

        else
        {
          return "COMMAND_RetObjectBlock";
        }
      }

      if (string == 134)
      {
        return "COMMAND_AckAccessoryCapabilities";
      }

      if (string == 135)
      {
        return "COMMAND_AckResumeInfo";
      }

      return "unknown";
    }

    if (string == 129)
    {
      return "COMMAND_AckNotifyProcessStatus";
    }

    else if (string == 130)
    {
      return "COMMAND_AckSetBlockTransferSize";
    }

    else
    {
      return "COMMAND_AckSetBaseImageTransferAddress";
    }
  }
}

- (char)assetTypeString:(int)string
{
  if (string > 2)
  {
    return "unknown";
  }

  else
  {
    return off_10002CB78[string];
  }
}

- (char)serverStateString:(int)string
{
  if (string > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_10002CB90[string];
  }
}

- (char)parserStateString:(int)string
{
  if (string != 0 && string < 0xFFFFFFFC)
  {
    return "PayloadCountdown";
  }

  else
  {
    return off_10002CBD0[string + 4];
  }
}

@end