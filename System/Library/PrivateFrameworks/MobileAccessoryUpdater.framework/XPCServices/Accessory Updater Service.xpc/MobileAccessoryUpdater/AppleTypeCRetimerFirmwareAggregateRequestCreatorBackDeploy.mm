@interface AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy
- (AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (BOOL)generateRequestDictionary;
- (BOOL)parseOptions:(id)options;
- (id)generateHashForData:(id)data;
@end

@implementation AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy

- (AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)&v13 initWithOptions:optionsCopy logFunction:function logContext:context];
  v10 = v9;
  if (!v9 || [(AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy *)v9 parseOptions:optionsCopy]&& [(AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy *)v10 generateRequestDictionary])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)parseOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"FirmwareData"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[FTABFileBackDeploy alloc] initWithData:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [(FTABFileBackDeploy *)v6 subfileWithTag:@"rrko"];
      if (v8)
      {
        v9 = v8;
        data = [(UARPSuperBinaryBackDeploy *)v8 data];
        v11 = *(&self->_rkosData + 1);
        *(&self->_rkosData + 1) = data;

        v12 = [(FTABFileBackDeploy *)v7 subfileWithTag:@"rkos"];
        if (v12)
        {
          v13 = v12;
          data2 = [v12 data];
          v15 = *(&self->super._verbose + 1);
          *(&self->super._verbose + 1) = data2;

          v16 = [(FTABFileBackDeploy *)v7 subfileWithTag:@"cphy"];
          v17 = v16;
          if (v16)
          {
            data3 = [v16 data];
            v19 = *(&self->_rrkoData + 1);
            *(&self->_rrkoData + 1) = data3;
          }

          else
          {
            [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"No cphy data found"];
          }

          goto LABEL_21;
        }

        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to locate rkos file in ftab"];
        goto LABEL_33;
      }

      v40 = @"Failed to locate rrko file in ftab";
    }

    else
    {
      v21 = [[UARPSuperBinaryBackDeploy alloc] initWithData:v5 delegate:0 delegateQueue:0];
      if (v21)
      {
        v9 = v21;
        v22 = [[UARPAssetTagBackDeploy alloc] initWithString:@"RRKO"];
        v23 = [(UARPSuperBinaryBackDeploy *)v9 payloadWith4ccTag:v22];
        if (v23)
        {
          v24 = v23;
          payloadData = [v23 payloadData];
          v26 = *(&self->_rkosData + 1);
          *(&self->_rkosData + 1) = payloadData;

          v27 = [[UARPAssetTagBackDeploy alloc] initWithString:@"FIRM"];
          v28 = [(UARPSuperBinaryBackDeploy *)v9 payloadWith4ccTag:v27];
          if (v28)
          {
            v29 = v28;
            v51 = v27;
            v30 = [FTABFileBackDeploy alloc];
            payloadData2 = [v29 payloadData];
            v32 = [(FTABFileBackDeploy *)v30 initWithData:payloadData2];

            if (v32)
            {
              v33 = [(FTABFileBackDeploy *)v32 subfileWithTag:@"rkos"];
              v34 = v33;
              if (v33)
              {
                data4 = [v33 data];
                v36 = *(&self->super._verbose + 1);
                *(&self->super._verbose + 1) = data4;

                v37 = [(FTABFileBackDeploy *)v32 subfileWithTag:@"cphy"];
                if (v37)
                {
                  data5 = [v37 data];
                  v39 = *(&self->_rrkoData + 1);
                  *(&self->_rrkoData + 1) = data5;
                }

                else
                {
                  [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"No cphy data found", 0];
                }
              }

              else
              {
                [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to locate rkos file in super binary ftab"];
              }

              if (v34)
              {
LABEL_21:
                v41 = [optionsCopy objectForKeyedSubscript:@"DeviceInfo"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v42 = [v41 objectForKeyedSubscript:@"InfoArray"];
                  v43 = *(&self->_cphyData + 1);
                  *(&self->_cphyData + 1) = v42;

                  v44 = *(&self->_cphyData + 1);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v45 = [v41 objectForKeyedSubscript:@"APInfo"];
                    v46 = *(&self->_deviceInfoArray + 1);
                    *(&self->_deviceInfoArray + 1) = v45;

                    v20 = 1;
LABEL_28:

LABEL_35:
                    goto LABEL_36;
                  }

                  v47 = @"Failed to locate device info array";
                }

                else
                {
                  v47 = @"Failed to locate device info";
                }

                [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:v47];
                v20 = 0;
                goto LABEL_28;
              }

LABEL_34:
              v20 = 0;
              goto LABEL_35;
            }

            [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to parse FTAB in super binary"];

            v48 = v51;
          }

          else
          {
            [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to locate FTAB in super binary"];
            v48 = v27;
          }
        }

        else
        {
          [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to locate rrko file in super binary"];
        }

LABEL_33:
        goto LABEL_34;
      }

      v40 = @"Failed to parse firmware data";
    }

    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:v40];
    goto LABEL_34;
  }

  [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Unable to locate firmware data"];
  v20 = 0;
LABEL_36:

  return v20;
}

- (id)generateHashForData:(id)data
{
  memset(&v9, 0, sizeof(v9));
  dataCopy = data;
  CC_SHA384_Init(&v9);
  v4 = dataCopy;
  bytes = [v4 bytes];
  v6 = [dataCopy length];

  CC_SHA384_Update(&v9, bytes, v6);
  CC_SHA384_Final(md, &v9);
  v7 = [NSData dataWithBytes:md length:48];

  return v7;
}

- (BOOL)generateRequestDictionary
{
  selfCopy = self;
  v3 = [(AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy *)self generateHashForData:*(&self->super._verbose + 1)];
  v4 = [(AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy *)selfCopy generateHashForData:*(&selfCopy->_rkosData + 1)];
  if (*(&selfCopy->_rrkoData + 1))
  {
    v5 = [(AppleTypeCRetimerFirmwareAggregateRequestCreatorBackDeploy *)selfCopy generateHashForData:?];
  }

  else
  {
    v5 = 0;
  }

  v86 = +[NSMutableDictionary dictionary];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = *(&selfCopy->_cphyData + 1);
  v73 = [obj countByEnumeratingWithState:&v88 objects:v104 count:16];
  if (v73)
  {
    v75 = *v89;
    v70 = v4;
    v71 = v3;
    v69 = v5;
    v76 = selfCopy;
LABEL_6:
    v6 = 0;
    while (1)
    {
      if (*v89 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v88 + 1) + 8 * v6);
      v8 = [v7 objectForKeyedSubscript:@"TagNumber"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      unsignedCharValue = [v8 unsignedCharValue];
      v10 = [v7 objectForKeyedSubscript:@"HardwareID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Unable to locate hardware ID data"];
        goto LABEL_90;
      }

      v81 = v6;
      v11 = [NSString stringWithValidatedFormat:@"@Timer%u validFormatSpecifiers:Ticket" error:@"%u", 0, unsignedCharValue];
      [v86 setObject:&__kCFBooleanTrue forKeyedSubscript:v11];
      v12 = [v10 objectForKeyedSubscript:@"BoardID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Unable to locate board ID for tag %u", unsignedCharValue];
        v59 = v12;
        goto LABEL_89;
      }

      v84 = v12;
      v85 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:BoardID error:%u", @"%u", 0, unsignedCharValue];
      [v86 setObject:v12 forKeyedSubscript:v85];
      v13 = [v10 objectForKeyedSubscript:@"ChipID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Unable to locate board ID for tag %u", unsignedCharValue];
        v60 = v13;
        goto LABEL_88;
      }

      v82 = v13;
      v83 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:ChipID error:%u", @"%u", 0, unsignedCharValue];
      [v86 setObject:v13 forKeyedSubscript:v83];
      v14 = [v10 objectForKeyedSubscript:@"ECID"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Unable to locate ECID for tag %u", unsignedCharValue];

        v60 = v13;
LABEL_88:

        v59 = v84;
LABEL_89:

LABEL_90:
LABEL_91:

LABEL_92:
        v58 = 0;
        v4 = v70;
        v3 = v71;
        v5 = v69;
        v55 = v86;
        goto LABEL_93;
      }

      v80 = v8;
      v79 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:ECID error:%u", @"%u", 0, unsignedCharValue];
      [v86 setObject:v14 forKeyedSubscript:?];
      v15 = [v10 objectForKeyedSubscript:@"Nonce"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Unable to locate nonce for tag %u", unsignedCharValue];

        v8 = v80;
        goto LABEL_91;
      }

      v77 = v11;
      v78 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:Nonce error:%u", @"%u", 0, unsignedCharValue];
      [v86 setObject:v15 forKeyedSubscript:?];
      v16 = [v10 objectForKeyedSubscript:@"ProductionStatus"];
      objc_opt_class();
      v87 = v16;
      if (objc_opt_isKindOfClass())
      {
        v17 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:ProductionMode error:%u", @"%u", 0, unsignedCharValue];
        v18 = v16;
        v19 = v17;
        if ([v18 unsignedCharValue])
        {
          v20 = &__kCFBooleanTrue;
        }

        else
        {
          v20 = &__kCFBooleanFalse;
        }

        v72 = v19;
        [v86 setObject:v20 forKeyedSubscript:v19];
        v21 = [v10 objectForKeyedSubscript:@"SecurityDomain"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v67 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityDomain error:%u", @"%u", 0, unsignedCharValue];
          v68 = v21;
          [v86 setObject:v21 forKeyedSubscript:?];
          v22 = [v10 objectForKeyedSubscript:@"SecurityMode"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:SecurityMode error:%u", @"%u", 0, unsignedCharValue];
            if ([v22 unsignedCharValue])
            {
              v24 = &__kCFBooleanTrue;
            }

            else
            {
              v24 = &__kCFBooleanFalse;
            }

            v63 = v23;
            [v86 setObject:v24 forKeyedSubscript:v23];
            v25 = [v10 objectForKeyedSubscript:@"Demote"];
            if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v50 = v25;
              v34 = v22;
              [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Invalid demote setting for tag %u", unsignedCharValue];
              v31 = 0;
              v32 = v11;
              v27 = v84;
            }

            else
            {
              v26 = [v7 objectForKeyedSubscript:@"Trusted"];
              objc_opt_class();
              v66 = &__kCFBooleanTrue;
              v27 = v84;
              if (objc_opt_isKindOfClass())
              {
                v66 = v26;
              }

              v62 = v26;
              v65 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:RTKitOS error:%u", @"%u", 0, unsignedCharValue];
              if ([v25 BOOLValue] && objc_msgSend(v87, "unsignedCharValue"))
              {
                v100[0] = @"Digest";
                v100[1] = @"EPRO";
                v101[0] = v71;
                v101[1] = &__kCFBooleanFalse;
                v100[2] = @"DPRO";
                v100[3] = @"ESEC";
                v101[2] = &__kCFBooleanTrue;
                v101[3] = &__kCFBooleanTrue;
                v100[4] = @"Trusted";
                v101[4] = &__kCFBooleanFalse;
                v28 = v101;
                v29 = v100;
                v30 = 5;
              }

              else
              {
                v103[0] = v71;
                v102[0] = @"Digest";
                v102[1] = @"EPRO";
                if ([v87 unsignedCharValue])
                {
                  v35 = &__kCFBooleanTrue;
                }

                else
                {
                  v35 = &__kCFBooleanFalse;
                }

                v103[1] = v35;
                v102[2] = @"ESEC";
                if ([v22 unsignedCharValue])
                {
                  v36 = &__kCFBooleanTrue;
                }

                else
                {
                  v36 = &__kCFBooleanFalse;
                }

                v103[2] = v36;
                v102[3] = @"Trusted";
                if ([v66 BOOLValue])
                {
                  v37 = &__kCFBooleanTrue;
                }

                else
                {
                  v37 = &__kCFBooleanFalse;
                }

                v103[3] = v37;
                v28 = v103;
                v29 = v102;
                v30 = 4;
              }

              v38 = [NSDictionary dictionaryWithObjects:v28 forKeys:v29 count:v30];
              [v86 setObject:v38 forKeyedSubscript:v65];

              v64 = [NSString stringWithValidatedFormat:@"Timer validFormatSpecifiers:RestoreRTKitOS error:%u", @"%u", 0, unsignedCharValue];
              if ([v25 BOOLValue] && objc_msgSend(v87, "unsignedCharValue"))
              {
                v96[0] = @"Digest";
                v96[1] = @"EPRO";
                v97[0] = v70;
                v97[1] = &__kCFBooleanFalse;
                v96[2] = @"DPRO";
                v96[3] = @"ESEC";
                v97[2] = &__kCFBooleanTrue;
                v97[3] = &__kCFBooleanTrue;
                v96[4] = @"Trusted";
                v97[4] = &__kCFBooleanFalse;
                v39 = v97;
                v40 = v96;
                v41 = 5;
              }

              else
              {
                v99[0] = v70;
                v98[0] = @"Digest";
                v98[1] = @"EPRO";
                if ([v87 unsignedCharValue])
                {
                  v42 = &__kCFBooleanTrue;
                }

                else
                {
                  v42 = &__kCFBooleanFalse;
                }

                v99[1] = v42;
                v98[2] = @"ESEC";
                if ([v22 unsignedCharValue])
                {
                  v43 = &__kCFBooleanTrue;
                }

                else
                {
                  v43 = &__kCFBooleanFalse;
                }

                v99[2] = v43;
                v98[3] = @"Trusted";
                if ([v66 BOOLValue])
                {
                  v44 = &__kCFBooleanTrue;
                }

                else
                {
                  v44 = &__kCFBooleanFalse;
                }

                v99[3] = v44;
                v39 = v99;
                v40 = v98;
                v41 = 4;
              }

              v45 = [NSDictionary dictionaryWithObjects:v39 forKeys:v40 count:v41];
              [v86 setObject:v45 forKeyedSubscript:v64];

              if (*(&v76->_rrkoData + 1))
              {
                v46 = [NSString stringWithFormat:@"Timer, AppleTypeCPhyFirmware, %u", unsignedCharValue];
                if ([v25 BOOLValue] && objc_msgSend(v87, "unsignedCharValue"))
                {
                  v92[0] = @"Digest";
                  v92[1] = @"EPRO";
                  v93[0] = v69;
                  v93[1] = &__kCFBooleanFalse;
                  v92[2] = @"DPRO";
                  v92[3] = @"ESEC";
                  v93[2] = &__kCFBooleanTrue;
                  v93[3] = &__kCFBooleanTrue;
                  v92[4] = @"Trusted";
                  v93[4] = &__kCFBooleanFalse;
                  v47 = v93;
                  v48 = v92;
                  v49 = 5;
                }

                else
                {
                  v95[0] = v69;
                  v94[0] = @"Digest";
                  v94[1] = @"EPRO";
                  if ([v87 unsignedCharValue])
                  {
                    v51 = &__kCFBooleanTrue;
                  }

                  else
                  {
                    v51 = &__kCFBooleanFalse;
                  }

                  v95[1] = v51;
                  v94[2] = @"ESEC";
                  if ([v22 unsignedCharValue])
                  {
                    v52 = &__kCFBooleanTrue;
                  }

                  else
                  {
                    v52 = &__kCFBooleanFalse;
                  }

                  v95[2] = v52;
                  v94[3] = @"Trusted";
                  if ([v66 BOOLValue])
                  {
                    v53 = &__kCFBooleanTrue;
                  }

                  else
                  {
                    v53 = &__kCFBooleanFalse;
                  }

                  v95[3] = v53;
                  v47 = v95;
                  v48 = v94;
                  v49 = 4;
                }

                v54 = [NSDictionary dictionaryWithObjects:v47 forKeys:v48 count:v49];
                [v86 setObject:v54 forKeyedSubscript:v46];
              }

              v50 = v25;
              v34 = v22;

              v31 = 1;
              v32 = v77;
            }
          }

          else
          {
            v34 = v22;
            [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Unable to locate security mode for tag %u", unsignedCharValue];
            v31 = 0;
            v32 = v11;
            v27 = v84;
          }

          v33 = v82;
          v21 = v68;
        }

        else
        {
          [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Unable to locate security domain for tag %u", unsignedCharValue];
          v31 = 0;
          v32 = v11;
          v27 = v84;
          v33 = v82;
        }
      }

      else
      {
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Unable to locate production status for tag %u", unsignedCharValue];
        v31 = 0;
        v32 = v11;
        v27 = v84;
        v33 = v82;
      }

      if (!v31)
      {
        goto LABEL_92;
      }

      v6 = v81 + 1;
      if (v73 == (v81 + 1))
      {
        v4 = v70;
        v3 = v71;
        v5 = v69;
        selfCopy = v76;
        v73 = [obj countByEnumeratingWithState:&v88 objects:v104 count:16];
        if (v73)
        {
          goto LABEL_6;
        }

        goto LABEL_80;
      }
    }

    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v76 log:@"Unable to locate tag number in device info"];
    goto LABEL_91;
  }

LABEL_80:

  v55 = v86;
  if (*(&selfCopy->_deviceInfoArray + 1))
  {
    [v86 addEntriesFromDictionary:?];
  }

  v56 = [NSDictionary dictionaryWithDictionary:v86];
  v57 = *(&selfCopy->_apParameters + 1);
  *(&selfCopy->_apParameters + 1) = v56;

  [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)selfCopy verboseLog:@"ATCRT request dictionary = %@", *(&selfCopy->_apParameters + 1)];
  v58 = 1;
LABEL_93:

  return v58;
}

@end