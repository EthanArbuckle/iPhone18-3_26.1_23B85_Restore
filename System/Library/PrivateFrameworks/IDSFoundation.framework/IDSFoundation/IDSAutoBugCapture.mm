@interface IDSAutoBugCapture
+ (void)triggerCaptureWithEvent:(int64_t)event destinations:(id)destinations context:(id)context completion:(id)completion;
@end

@implementation IDSAutoBugCapture

+ (void)triggerCaptureWithEvent:(int64_t)event destinations:(id)destinations context:(id)context completion:(id)completion
{
  v32[1] = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  contextCopy = context;
  completionCopy = completion;
  if ([objc_opt_class() isSupported])
  {
    if (qword_1EB2B87C0 != -1)
    {
      sub_1A7E1B578();
    }

    if (!qword_1EB2B87B8)
    {
      v13 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A278];
      v32[0] = @"Failed to weak link SymptomDiagnosticReporter reporter";
      v14 = MEMORY[0x1E695DF20];
      v15 = 0;
      v16 = [v14 dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v17 = [v13 errorWithDomain:@"IDSAutoBugCaptureErrorDomain" code:-100 userInfo:v16];
      completionCopy[2](completionCopy, 0, v17);
LABEL_39:

      goto LABEL_40;
    }

    v12 = @"Unknown";
    if (event <= 199)
    {
      if ((event - 100) >= 8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (event <= 206)
      {
        if ((event - 200) < 6)
        {
LABEL_8:
          v12 = @"Registration";
          goto LABEL_20;
        }

        if (event == 206)
        {
          v12 = @"Push Token";
LABEL_49:
          v18 = @"PushTokenChangedUnexpectedly";
LABEL_38:
          v25 = MEMORY[0x1E696AE30];
          v17 = qword_1EB2B87B8;
          processInfo = [v25 processInfo];
          processName = [processInfo processName];
          v16 = [v17 signatureWithDomain:@"IDS" type:v12 subType:v18 subtypeContext:contextCopy detectedProcess:processName triggerThresholdValues:0];

          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = sub_1A7C06D9C;
          v29[3] = &unk_1E77E17C8;
          v30 = completionCopy;
          [v17 snapshotWithSignature:v16 withIDSDestinations:destinationsCopy validFor:0 delay:0 events:0 payload:v29 actions:0.0 reply:0.0];
          v15 = v30;
          goto LABEL_39;
        }

LABEL_20:
        v18 = @"Unknown";
        if (event <= 105)
        {
          v19 = @"QueryRateLimited";
          v20 = @"SecondaryEncryptionFailed";
          v21 = @"SecondaryDecryptionFailed";
          if (event != 105)
          {
            v21 = @"Unknown";
          }

          if (event != 104)
          {
            v20 = v21;
          }

          if (event != 103)
          {
            v19 = v20;
          }

          v22 = @"ECCEncryptionFailed";
          v23 = @"ECCDecryptionFailed";
          v24 = @"NiceRateLimited";
          if (event != 102)
          {
            v24 = @"Unknown";
          }

          if (event != 101)
          {
            v23 = v24;
          }

          if (event != 100)
          {
            v22 = v23;
          }

          if (event <= 102)
          {
            v18 = v22;
          }

          else
          {
            v18 = v19;
          }
        }

        else
        {
          switch(event)
          {
            case 200:
              v18 = @"RegistrationFailed";
              break;
            case 201:
              v18 = @"AccountStateError";
              break;
            case 202:
              v18 = @"ECKeyLoadingFailed";
              break;
            case 203:
              v18 = @"SMSQuotaExhausted";
              break;
            case 204:
              v18 = @"SMSTimeoutFailure";
              break;
            case 205:
              v18 = @"AttemptRateExceeded";
              break;
            case 206:
              goto LABEL_49;
            case 207:
              v18 = @"TooManyFileDescriptors";
              break;
            case 208:
              goto LABEL_38;
            case 209:
              v18 = @"TooManyPortsAllocated";
              break;
            case 210:
              v18 = @"MissingKTAccountKey";
              break;
            case 211:
              v18 = @"ExcessiveQueryCacheEntries";
              break;
            case 212:
              v18 = @"QueuedQueryRefreshV2";
              break;
            case 213:
              v18 = @"StorageStateTimedOutOnClientAck";
              break;
            default:
              v28 = @"SenderKeyNotFound";
              if (event != 107)
              {
                v28 = @"Unknown";
              }

              if (event == 106)
              {
                v18 = @"DifferedQueryCacheResults";
              }

              else
              {
                v18 = v28;
              }

              break;
          }
        }

        goto LABEL_38;
      }

      if (event <= 210)
      {
        if (event == 207 || event == 209)
        {
          v12 = @"System";
        }

        else if (event == 210)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }

      if ((event - 211) > 2)
      {
        goto LABEL_20;
      }
    }

    v12 = @"Delivery";
    goto LABEL_20;
  }

  completionCopy[2](completionCopy, 0, 0);
LABEL_40:
}

@end