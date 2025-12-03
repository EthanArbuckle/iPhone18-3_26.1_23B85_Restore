@interface HDMedicalIDSetupStatusTaskServer
+ (BOOL)validateClient:(id)client error:(id *)error;
- (void)remote_medicalIDSetUpStatusWithCompletion:(id)completion;
@end

@implementation HDMedicalIDSetupStatusTaskServer

+ (BOOL)validateClient:(id)client error:(id *)error
{
  clientCopy = client;
  v6 = *MEMORY[0x277CCC368];
  if ([clientCopy hasRequiredEntitlement:*MEMORY[0x277CCC368] error:error])
  {
    v7 = [clientCopy valueForEntitlement:v6];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = [clientCopy hasRequiredArrayEntitlement:v6 containing:*MEMORY[0x277CCBD48] error:error] | v8;

  return v9 & 1;
}

- (void)remote_medicalIDSetUpStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    profile = [(HDStandardTaskServer *)self profile];
    medicalIDDataManager = [profile medicalIDDataManager];

    if (medicalIDDataManager)
    {
      profile2 = [(HDStandardTaskServer *)self profile];
      self = [profile2 medicalIDDataManager];
      v8 = 0;
    }

    else
    {
      hk_featureUnavailableForProfileError = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
      v8 = hk_featureUnavailableForProfileError;
      if (hk_featureUnavailableForProfileError)
      {
        v10 = hk_featureUnavailableForProfileError;
      }

      self = 0;
      profile2 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v12 = v11;
  if (self)
  {
    v15 = v11;
    v13 = [(HDMedicalIDSetupStatusTaskServer *)self medicalIDSetupStatusWithError:&v15];
    v14 = v15;

    v12 = v14;
  }

  else
  {
    v13 = 0;
  }

  completionCopy[2](completionCopy, v13);
}

@end