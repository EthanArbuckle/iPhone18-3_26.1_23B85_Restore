@interface iAUPServer
- (BOOL)personalizationComplete;
- (char)assetTypeString:(int)a3;
- (char)commandString:(int)a3;
- (char)parserStateString:(int)a3;
- (char)serverStateString:(int)a3;
- (id)initInstanceWithByteEscape:(BOOL)a3;
- (unsigned)appendByteWithEscaping:(unsigned __int8)a3 toObject:(id *)a4;
- (void)accessoryDisconnected;
- (void)appendToLog:(id)a3;
- (void)dealloc;
- (void)processDataFromAccessory:(id)a3;
- (void)processInTelegram;
- (void)processNotifyAccessoryErrorCommand:(char *)a3 length:(unsigned int)a4;
- (void)processPersonalizationInfo:(char *)a3 length:(unsigned int)a4;
- (void)resetParser;
- (void)setFirmwareBundle:(id)a3;
- (void)setHSModel:(id)a3 fallbackModel:(id)a4 error:(id)a5;
@end

@implementation iAUPServer

- (id)initInstanceWithByteEscape:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = iAUPServer;
  v4 = [(iAUPServer *)&v6 init];
  if (v4)
  {
    *(v4 + 7) = [[NSMutableData alloc] initWithCapacity:32];
    *(v4 + 1) = 0;
    *(v4 + 4) = 0;
    v4[25] = a3;
    v4[26] = 0;
    *(v4 + 42) = 0;
    *(v4 + 87) = 256;
    [v4 resetParser];
    [v4 setServerState:1];
    *(v4 + 20) = 0;
    *(v4 + 18) = 0;
    memset_pattern16(v4 + 64, &unk_100013E70, 8uLL);
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

- (void)appendToLog:(id)a3
{
  v4 = [(iAUPServer *)self delegate];

  [(iAUPServerDelegate *)v4 logStatusString:a3];
}

- (void)setFirmwareBundle:(id)a3
{
  firmwareBundle = self->_firmwareBundle;
  if (firmwareBundle)
  {

    self->_firmwareBundle = 0;
  }

  self->_firmwareBundle = a3;
  if ([(iAUPServer *)self serverState]!= 1 && [(iAUPServer *)self serverState]!= 7)
  {
    [(iAUPServer *)self resetParser];

    [(iAUPServer *)self setServerState:6];
  }
}

- (void)processDataFromAccessory:(id)a3
{
  v5 = [a3 bytes];
  if ([a3 length])
  {
    v6 = 1;
    do
    {
      v7 = *v5++;
      [(iAUPServer *)self processInByte:v7];
    }

    while ([a3 length] > v6++);
  }
}

- (void)processInTelegram
{
  v3 = [(NSMutableData *)self->_telegramDataIn mutableBytes];
  v4 = (v3 + 1);
  v5 = *v3;
  v6 = [(NSMutableData *)self->_telegramDataIn length]- 1;
  [(iAUPServer *)self logCommand:v5 payload:v3 + 1 length:v6];
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
            v31 = [(FirmwareBundle *)self->_firmwareBundle hash];
            goto LABEL_90;
          }

          if (v30 == 3)
          {
            v31 = [(FirmwareBundle *)self->_firmwareBundle signature];
            goto LABEL_90;
          }
        }

        else if (*v4)
        {
          if (v30 == 1)
          {
            v31 = [(FirmwareBundle *)self->_firmwareBundle certificate];
LABEL_90:
            v29 = bswap32([(NSData *)v31 length]);
          }
        }

        else
        {
          v29 = bswap32([(FirmwareBundle *)self->_firmwareBundle firmwareImageSize]);
        }

        v48 = *v4;
        v49 = v29;
        v27 = self;
        v28 = 132;
LABEL_92:
        [(iAUPServer *)v27 sendCommand:v28 payload:&v48 payload_length:5];
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

      v12 = self;
      v13 = 131;
      v14 = (v3 + 1);
      v15 = 4;
      goto LABEL_34;
    }

    if (v5 != 5)
    {
      v16 = *v4;
      self->_accessoryCapabilities = v16;
      NSLog(@"_accessoryCapabilities set to 0x%x\n", v16);
      v12 = self;
      v13 = 134;
      v14 = 0;
      v15 = 0;
LABEL_34:

      [(iAUPServer *)v12 sendCommand:v13 payload:v14 payload_length:v15];
      return;
    }

    v20 = *v4;
    if (v20 > 3)
    {
      return;
    }

    v21 = *(v3 + 2);
    LODWORD(v3) = self->objectBlockTransferSizes[v20];
    firmwareBundle = self->_firmwareBundle;
    if (*v4)
    {
      if (v20 == 1)
      {
        if ([(FirmwareBundle *)firmwareBundle certificate])
        {
          v23 = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle certificate] length];
          v24 = [(FirmwareBundle *)self->_firmwareBundle certificate];
          goto LABEL_98;
        }
      }

      else if (v20 == 3)
      {
        if ([(FirmwareBundle *)firmwareBundle signature])
        {
          v23 = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle signature] length];
          v24 = [(FirmwareBundle *)self->_firmwareBundle signature];
LABEL_98:
          v33 = [(NSData *)v24 bytes];
          goto LABEL_99;
        }
      }

      else if ([(FirmwareBundle *)firmwareBundle hash])
      {
        v23 = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle hash] length];
        v24 = [(FirmwareBundle *)self->_firmwareBundle hash];
        goto LABEL_98;
      }
    }

    else if ([(FirmwareBundle *)firmwareBundle firmwareImage]|| [(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL])
    {
      v23 = [(FirmwareBundle *)self->_firmwareBundle firmwareImageSize];
      v32 = [(NSData *)[(FirmwareBundle *)self->_firmwareBundle firmwareImage] bytes]+ self->_firmwareImageBaseTransferAddress;
      v33 = &v32[[(FirmwareBundle *)self->_firmwareBundle]];
LABEL_99:
      if (!v33 && ![(FirmwareBundle *)self->_firmwareBundle firmwareLocalURL]|| !v23)
      {
        [(iAUPServer *)self appendToLog:[NSString stringWithFormat:@"COMMAND_GetObjectBlock Failed, Invalid object_type (%c) or Image (object_total_size = %u)", v20, v23]];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-4 userInfo:0];
        v58 = @"Event";
        v59 = @"com.apple.fud.updateFailed";
        v9 = &v59;
        v10 = &v58;
        goto LABEL_69;
      }

      v34 = (bswap32(v21) >> 16) * v3;
      v35 = v23 - v34;
      if (v23 < v34)
      {
        [(iAUPServer *)self appendToLog:@"COMMAND_GetObjectBlock: bound check failed: block_offset * block_size > object_total_size"];
        v8 = [[NSError alloc] initWithDomain:@"com.apple.iAUPServer.ErrorDomain" code:-2 userInfo:0];
        v56 = @"Event";
        v57 = @"com.apple.fud.updateFailed";
        v9 = &v57;
        v10 = &v56;
        goto LABEL_69;
      }

      if (v35 >= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v35;
      }

      v36 = malloc_type_malloc((v3 + 3), 0xB287C21EuLL);
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
        v39 = &v33[v34];
        v37[2] = v4[2];
        *v37 = v38;
        v40 = v37 + 3;
        v41 = v3;
      }

      else
      {
        v43 = [(FirmwareBundle *)self->_firmwareBundle getFirmwareDataInRange:v34 error:v3, 0];
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
        v46 = [v43 bytes];
        v41 = [v44 length];
        v40 = v37 + 3;
        v39 = v46;
      }

      memcpy(v40, v39, v41);
      [(iAUPServer *)self sendCommand:133 payload:v37 payload_length:(v3 + 3)];
      free(v37);
      self->_totalBytesDownloadedInCurrentSession += v3;
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
          [(iAUPServerDelegate *)delegate updateProgress:(v3 + v34) / v23 * 100.0];
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
    v27 = self;
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

    self->objectBlockTransferSizes[v11] = bswap32(*(v3 + 2)) >> 16;
    v12 = self;
    v13 = 130;
    v14 = (v3 + 1);
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

- (unsigned)appendByteWithEscaping:(unsigned __int8)a3 toObject:(id *)a4
{
  v7 = a3;
  if ((a3 - 125) <= 1 && self->_byteEscape)
  {
    v4 = a3;
    v6[0] = 125;
    v6[1] = a3 & 0x5F;
    [*a4 appendBytes:v6 length:2];
  }

  else
  {
    [*a4 appendBytes:&v7 length:1];
    return v7;
  }

  return v4;
}

- (void)processPersonalizationInfo:(char *)a3 length:(unsigned int)a4
{
  if (a3 && a4)
  {
    if ((*a3 & 0xF) == 1)
    {
      v5 = [iAUPServer processManifestProperties:"processManifestProperties:length:" length:?];
      goto LABEL_7;
    }

    NSLog(@"[processPersonalizationInfo] Unsupported infoType = %d\n", a2, *a3);
  }

  else
  {
    NSLog(@"[processPersonalizationInfo] Invalid payload length=%d\n", a2, a4);
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
    sub_10000D458(&v5->isa, &currentAsset, self);
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

- (void)processNotifyAccessoryErrorCommand:(char *)a3 length:(unsigned int)a4
{
  v6 = "valid";
  if (!a3)
  {
    v6 = "nil";
  }

  NSLog(@"%s(): payload=%s length=%d \n", a2, "[iAUPServer processNotifyAccessoryErrorCommand:length:]", v6, a4);
  NSLog(@"[NotifyAccessoryError] Accessory notified error reason=%d\n", *a3);
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

- (void)setHSModel:(id)a3 fallbackModel:(id)a4 error:(id)a5
{
  dispatchQ = self->_dispatchQ;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004690;
  v6[3] = &unk_1000205D0;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = self;
  dispatch_async(dispatchQ, v6);
}

- (char)commandString:(int)a3
{
  if (a3 <= 65)
  {
    if (a3 > 5)
    {
      if (a3 > 32)
      {
        switch(a3)
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
        switch(a3)
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

    if (a3 <= 2)
    {
      switch(a3)
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

    if (a3 == 3)
    {
      return "COMMAND_SetBaseImageTransferAddress";
    }

    else if (a3 == 4)
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
    if (a3 <= 128)
    {
      if (a3 > 97)
      {
        switch(a3)
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
        switch(a3)
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

    if (a3 > 131)
    {
      if (a3 <= 133)
      {
        if (a3 == 132)
        {
          return "COMMAND_RetObjectSize";
        }

        else
        {
          return "COMMAND_RetObjectBlock";
        }
      }

      if (a3 == 134)
      {
        return "COMMAND_AckAccessoryCapabilities";
      }

      if (a3 == 135)
      {
        return "COMMAND_AckResumeInfo";
      }

      return "unknown";
    }

    if (a3 == 129)
    {
      return "COMMAND_AckNotifyProcessStatus";
    }

    else if (a3 == 130)
    {
      return "COMMAND_AckSetBlockTransferSize";
    }

    else
    {
      return "COMMAND_AckSetBaseImageTransferAddress";
    }
  }
}

- (char)assetTypeString:(int)a3
{
  if (a3 > 2)
  {
    return "unknown";
  }

  else
  {
    return (&off_1000205F0)[a3];
  }
}

- (char)serverStateString:(int)a3
{
  if (a3 > 7)
  {
    return "Unknown";
  }

  else
  {
    return (&off_100020608)[a3];
  }
}

- (char)parserStateString:(int)a3
{
  if (a3 != 0 && a3 < 0xFFFFFFFC)
  {
    return "PayloadCountdown";
  }

  else
  {
    return (&off_100020648)[a3 + 4];
  }
}

@end