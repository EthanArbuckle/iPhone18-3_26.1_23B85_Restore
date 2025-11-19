@interface HDMedicalIDSetupStatusTaskServer
+ (BOOL)validateClient:(id)a3 error:(id *)a4;
- (void)remote_medicalIDSetUpStatusWithCompletion:(id)a3;
@end

@implementation HDMedicalIDSetupStatusTaskServer

+ (BOOL)validateClient:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = *MEMORY[0x277CCC368];
  if ([v5 hasRequiredEntitlement:*MEMORY[0x277CCC368] error:a4])
  {
    v7 = [v5 valueForEntitlement:v6];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = [v5 hasRequiredArrayEntitlement:v6 containing:*MEMORY[0x277CCBD48] error:a4] | v8;

  return v9 & 1;
}

- (void)remote_medicalIDSetUpStatusWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(HDStandardTaskServer *)self profile];
    v6 = [v5 medicalIDDataManager];

    if (v6)
    {
      v7 = [(HDStandardTaskServer *)self profile];
      self = [v7 medicalIDDataManager];
      v8 = 0;
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
      v8 = v9;
      if (v9)
      {
        v10 = v9;
      }

      self = 0;
      v7 = v8;
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

  v4[2](v4, v13);
}

@end