@interface DMTPerformAutomatedDeviceEnrollmentRequest
- (DMTPerformAutomatedDeviceEnrollmentRequest)initWithCoder:(id)a3;
- (int64_t)effectiveNetworkConfiguration;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMTPerformAutomatedDeviceEnrollmentRequest

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = DMTPerformAutomatedDeviceEnrollmentRequest;
  v4 = a3;
  [(CATTaskRequest *)&v13 encodeWithCoder:v4];
  v5 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self nonce:v13.receiver];
  [v4 encodeObject:v5 forKey:@"nonce"];

  v6 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkCredential];
  [v4 encodeObject:v6 forKey:@"networkCredential"];

  v7 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkPayload];
  [v4 encodeObject:v7 forKey:@"networkPayload"];

  v8 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self organizationName];
  [v4 encodeObject:v8 forKey:@"organizationName"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMTPerformAutomatedDeviceEnrollmentRequest organizationType](self, "organizationType")}];
  [v4 encodeObject:v9 forKey:@"organizationType"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMTPerformAutomatedDeviceEnrollmentRequest automationBehavior](self, "automationBehavior")}];
  [v4 encodeObject:v10 forKey:@"automationBehavior"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMTPerformAutomatedDeviceEnrollmentRequest networkConfiguration](self, "networkConfiguration")}];
  [v4 encodeObject:v11 forKey:@"networkConfiguration"];

  v12 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self mdmServerName];
  [v4 encodeObject:v12 forKey:@"mdmServerName"];
}

- (DMTPerformAutomatedDeviceEnrollmentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DMTPerformAutomatedDeviceEnrollmentRequest;
  v5 = [(CATTaskRequest *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"networkCredential"];
    networkCredential = v5->_networkCredential;
    v5->_networkCredential = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"networkPayload"];
    networkPayload = v5->_networkPayload;
    v5->_networkPayload = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"organizationName"];
    organizationName = v5->_organizationName;
    v5->_organizationName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organizationType"];
    v5->_organizationType = [v18 integerValue];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"automationBehavior"];
    v5->_automationBehavior = [v19 integerValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkConfiguration"];
    v5->_networkConfiguration = [v20 integerValue];

    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"mdmServerName"];
    mdmServerName = v5->_mdmServerName;
    v5->_mdmServerName = v22;
  }

  return v5;
}

- (int64_t)effectiveNetworkConfiguration
{
  if ([(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkConfiguration])
  {

    return [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkConfiguration];
  }

  else
  {
    v4 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkPayload];

    if (v4)
    {
      return 2;
    }

    else
    {
      v5 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkCredential];
      v6 = [v5 networkName];
      v7 = [v6 length];

      if (v7)
      {
        return 1;
      }

      else
      {
        result = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkCredential];
        if (result)
        {
          v8 = result;
          v9 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkCredential];
          v10 = [v9 networkName];
          v11 = [v10 length];

          if (v11)
          {
            return 0;
          }

          else
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

@end