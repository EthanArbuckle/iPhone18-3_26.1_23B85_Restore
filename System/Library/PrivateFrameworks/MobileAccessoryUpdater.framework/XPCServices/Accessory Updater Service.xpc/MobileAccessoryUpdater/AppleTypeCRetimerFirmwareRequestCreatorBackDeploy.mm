@interface AppleTypeCRetimerFirmwareRequestCreatorBackDeploy
- (AppleTypeCRetimerFirmwareRequestCreatorBackDeploy)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (BOOL)parseOptions:(id)a3;
- (id)generateHashForSubfile:(id)a3;
- (void)generateRequestDictionary;
@end

@implementation AppleTypeCRetimerFirmwareRequestCreatorBackDeploy

- (AppleTypeCRetimerFirmwareRequestCreatorBackDeploy)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = AppleTypeCRetimerFirmwareRequestCreatorBackDeploy;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)&v13 initWithOptions:v8 logFunction:a4 logContext:a5];
  v10 = v9;
  if (v9)
  {
    if (![(AppleTypeCRetimerFirmwareRequestCreatorBackDeploy *)v9 parseOptions:v8])
    {
      v11 = 0;
      goto LABEL_6;
    }

    [(AppleTypeCRetimerFirmwareRequestCreatorBackDeploy *)v10 generateRequestDictionary];
  }

  v11 = v10;
LABEL_6:

  return v11;
}

- (BOOL)parseOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"FirmwareData"];
  if (!v5)
  {
    v32 = @"Unable to locate firmware data";
LABEL_14:
    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:v32];
    v25 = 0;
    goto LABEL_15;
  }

  v6 = [[FTABFileBackDeploy alloc] initWithData:v5];
  v7 = *(&self->super._verbose + 1);
  *(&self->super._verbose + 1) = v6;

  v8 = *(&self->super._verbose + 1);
  if (!v8)
  {
    v32 = @"Failed to parse ftab";
    goto LABEL_14;
  }

  v9 = [v8 subfileWithTag:@"rrko"];
  v10 = *(&self->_rkos + 1);
  *(&self->_rkos + 1) = v9;

  if (!*(&self->_rkos + 1))
  {
    v32 = @"Failed to locate rrko file in ftab";
    goto LABEL_14;
  }

  v11 = [*(&self->super._verbose + 1) subfileWithTag:@"rkos"];
  v12 = *(&self->_ftab + 1);
  *(&self->_ftab + 1) = v11;

  if (!*(&self->_ftab + 1))
  {
    v32 = @"Failed to locate rkos file in ftab";
    goto LABEL_14;
  }

  v13 = [v4 objectForKeyedSubscript:@"DeviceInfo"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:@"TagNumber"];
    v16 = v15;
    if (v15)
    {
      BYTE1(self->_rrko) = [v15 unsignedCharValue];
      v17 = [v14 objectForKeyedSubscript:@"HardwareID"];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 objectForKeyedSubscript:@"ChipID"];
        *(&self->_rrko + 3) = [v19 unsignedShortValue];
        v20 = [v18 objectForKeyedSubscript:@"BoardID"];
        *(&self->_rrko + 5) = [v20 unsignedShortValue];
        v21 = [v18 objectForKeyedSubscript:@"SecurityEpoch"];
        HIBYTE(self->_rrko) = [v21 unsignedCharValue];
        v39 = [v18 objectForKeyedSubscript:@"ProductionStatus"];
        self->_tagNumber = [v39 unsignedCharValue];
        v38 = [v18 objectForKeyedSubscript:@"SecurityMode"];
        *(&self->_tagNumber + 1) = [v38 unsignedCharValue];
        v37 = [v18 objectForKeyedSubscript:@"SecurityDomain"];
        LOBYTE(self->_chipID) = [v37 unsignedCharValue];
        v36 = [v18 objectForKeyedSubscript:@"ECID"];
        *&self->_securityDomain = [v36 unsignedLongLongValue];
        v22 = [v18 objectForKeyedSubscript:@"Nonce"];
        v23 = *(&self->_ecid + 1);
        *(&self->_ecid + 1) = v22;

        v24 = *(&self->_ecid + 1);
        v25 = v24 != 0;
        if (v24)
        {
          v35 = v19;
          v26 = [v18 objectForKeyedSubscript:@"ChipRev"];
          BYTE1(self->_nonce) = [v26 unsignedCharValue];
          v34 = v16;
          v27 = v21;
          v28 = v20;
          v29 = [v18 objectForKeyedSubscript:@"Demote"];
          BYTE2(self->_nonce) = [v29 BOOLValue];
          v30 = v29;
          v20 = v28;
          v21 = v27;
          v16 = v34;

          v31 = v26;
          v19 = v35;
        }

        else
        {
          [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Nonce missing from hardware dictionary"];
        }
      }

      else
      {
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Unable to locate hardware ID data"];
        v25 = 0;
      }
    }

    else
    {
      [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Unable to locate tag number in device info"];
      v25 = 0;
    }
  }

  else
  {
    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Unable to locate device info"];
    v25 = 0;
  }

LABEL_15:
  return v25;
}

- (id)generateHashForSubfile:(id)a3
{
  memset(&v8, 0, sizeof(v8));
  v3 = a3;
  CC_SHA384_Init(&v8);
  v4 = [v3 dataPointer];
  v5 = [v3 dataLength];

  CC_SHA384_Update(&v8, v4, v5);
  CC_SHA384_Final(md, &v8);
  v6 = [NSData dataWithBytes:md length:48];

  return v6;
}

- (void)generateRequestDictionary
{
  v3 = BYTE1(self->_rrko);
  v4 = +[NSMutableDictionary dictionary];
  v38 = v3;
  v42 = [NSString stringWithValidatedFormat:@"@Timer%u validFormatSpecifiers:Ticket" error:@"%u", 0, v3];
  [v4 setObject:? forKeyedSubscript:?];
  v5 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:BoardID error:%u", @"%u", 0, v3];
  v6 = [NSNumber numberWithUnsignedShort:*(&self->_rrko + 5)];
  v41 = v5;
  [v4 setObject:v6 forKeyedSubscript:v5];

  v7 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:ChipID error:%u", @"%u", 0, v3];
  v8 = [NSNumber numberWithUnsignedShort:*(&self->_rrko + 3)];
  v40 = v7;
  [v4 setObject:v8 forKeyedSubscript:v7];

  v9 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:ECID error:%u", @"%u", 0, v3];
  v10 = [NSNumber numberWithUnsignedLongLong:*&self->_securityDomain];
  [v4 setObject:v10 forKeyedSubscript:v9];

  v39 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:Nonce error:%u", @"%u", 0, v3];
  [v4 setObject:*(&self->_ecid + 1) forKeyedSubscript:?];
  v11 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:ProductionMode error:%u", @"%u", 0, v3];
  if (self->_tagNumber)
  {
    v12 = &__kCFBooleanTrue;
  }

  else
  {
    v12 = &__kCFBooleanFalse;
  }

  v37 = v11;
  [v4 setObject:v12 forKeyedSubscript:?];
  v13 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityDomain error:%u", @"%u", 0, v3];
  v14 = [NSNumber numberWithUnsignedChar:LOBYTE(self->_chipID)];
  v36 = v13;
  [v4 setObject:v14 forKeyedSubscript:v13];

  v15 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityMode error:%u", @"%u", 0, v3];
  if (*(&self->_tagNumber + 1))
  {
    v16 = &__kCFBooleanTrue;
  }

  else
  {
    v16 = &__kCFBooleanFalse;
  }

  v35 = v15;
  [v4 setObject:v16 forKeyedSubscript:?];
  v44 = [(AppleTypeCRetimerFirmwareRequestCreatorBackDeploy *)self generateHashForSubfile:*(&self->_ftab + 1)];
  v43 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:RTKitOS error:%u", @"%u", 0, v3];
  tagNumber = self->_tagNumber;
  if (BYTE2(self->_nonce) && self->_tagNumber)
  {
    v49[0] = @"Digest";
    v49[1] = @"EPRO";
    v50[0] = v44;
    v50[1] = &__kCFBooleanFalse;
    v50[2] = &__kCFBooleanTrue;
    v49[2] = @"DPRO";
    v49[3] = @"ESEC";
    v50[3] = &__kCFBooleanTrue;
    v50[4] = &__kCFBooleanFalse;
    v49[4] = @"Trusted";
    v18 = v50;
    v19 = v49;
    v20 = 5;
  }

  else
  {
    v51[0] = @"Digest";
    v51[1] = @"EPRO";
    if (tagNumber)
    {
      v21 = &__kCFBooleanTrue;
    }

    else
    {
      v21 = &__kCFBooleanFalse;
    }

    v52[0] = v44;
    v52[1] = v21;
    if (*(&self->_tagNumber + 1))
    {
      v22 = &__kCFBooleanTrue;
    }

    else
    {
      v22 = &__kCFBooleanFalse;
    }

    v51[2] = @"ESEC";
    v51[3] = @"Trusted";
    v52[2] = v22;
    v52[3] = &__kCFBooleanTrue;
    v18 = v52;
    v19 = v51;
    v20 = 4;
  }

  v23 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:v20];
  [v4 setObject:v23 forKeyedSubscript:v43];

  v24 = [(AppleTypeCRetimerFirmwareRequestCreatorBackDeploy *)self generateHashForSubfile:*(&self->_rkos + 1)];
  v25 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:RestoreRTKitOS error:%u", @"%u", 0, v38];
  v26 = self->_tagNumber;
  if (BYTE2(self->_nonce) && self->_tagNumber)
  {
    v45[0] = @"Digest";
    v45[1] = @"EPRO";
    v46[0] = v24;
    v46[1] = &__kCFBooleanFalse;
    v46[2] = &__kCFBooleanTrue;
    v45[2] = @"DPRO";
    v45[3] = @"ESEC";
    v46[3] = &__kCFBooleanTrue;
    v46[4] = &__kCFBooleanFalse;
    v45[4] = @"Trusted";
    v27 = v46;
    v28 = v45;
    v29 = 5;
  }

  else
  {
    v47[0] = @"Digest";
    v47[1] = @"EPRO";
    if (v26)
    {
      v30 = &__kCFBooleanTrue;
    }

    else
    {
      v30 = &__kCFBooleanFalse;
    }

    v48[0] = v24;
    v48[1] = v30;
    if (*(&self->_tagNumber + 1))
    {
      v31 = &__kCFBooleanTrue;
    }

    else
    {
      v31 = &__kCFBooleanFalse;
    }

    v47[2] = @"ESEC";
    v47[3] = @"Trusted";
    v48[2] = v31;
    v48[3] = &__kCFBooleanTrue;
    v27 = v48;
    v28 = v47;
    v29 = 4;
  }

  v32 = [NSDictionary dictionaryWithObjects:v27 forKeys:v28 count:v29];
  [v4 setObject:v32 forKeyedSubscript:v25];

  v33 = [NSDictionary dictionaryWithDictionary:v4];
  v34 = *&self->_demote;
  *&self->_demote = v33;

  [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self verboseLog:@"ATCRT %u: request dictionary = %@", BYTE1(self->_rrko) - 1, *&self->_demote];
}

@end