@interface DMTPerformAutomatedDeviceEnrollmentRequest
- (DMTPerformAutomatedDeviceEnrollmentRequest)initWithCoder:(id)coder;
- (int64_t)effectiveNetworkConfiguration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMTPerformAutomatedDeviceEnrollmentRequest

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = DMTPerformAutomatedDeviceEnrollmentRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v13 encodeWithCoder:coderCopy];
  v5 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self nonce:v13.receiver];
  [coderCopy encodeObject:v5 forKey:@"nonce"];

  networkCredential = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkCredential];
  [coderCopy encodeObject:networkCredential forKey:@"networkCredential"];

  networkPayload = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkPayload];
  [coderCopy encodeObject:networkPayload forKey:@"networkPayload"];

  organizationName = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self organizationName];
  [coderCopy encodeObject:organizationName forKey:@"organizationName"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMTPerformAutomatedDeviceEnrollmentRequest organizationType](self, "organizationType")}];
  [coderCopy encodeObject:v9 forKey:@"organizationType"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMTPerformAutomatedDeviceEnrollmentRequest automationBehavior](self, "automationBehavior")}];
  [coderCopy encodeObject:v10 forKey:@"automationBehavior"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMTPerformAutomatedDeviceEnrollmentRequest networkConfiguration](self, "networkConfiguration")}];
  [coderCopy encodeObject:v11 forKey:@"networkConfiguration"];

  mdmServerName = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self mdmServerName];
  [coderCopy encodeObject:mdmServerName forKey:@"mdmServerName"];
}

- (DMTPerformAutomatedDeviceEnrollmentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = DMTPerformAutomatedDeviceEnrollmentRequest;
  v5 = [(CATTaskRequest *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"networkCredential"];
    networkCredential = v5->_networkCredential;
    v5->_networkCredential = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"networkPayload"];
    networkPayload = v5->_networkPayload;
    v5->_networkPayload = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"organizationName"];
    organizationName = v5->_organizationName;
    v5->_organizationName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationType"];
    v5->_organizationType = [v18 integerValue];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"automationBehavior"];
    v5->_automationBehavior = [v19 integerValue];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkConfiguration"];
    v5->_networkConfiguration = [v20 integerValue];

    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"mdmServerName"];
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
    networkPayload = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkPayload];

    if (networkPayload)
    {
      return 2;
    }

    else
    {
      networkCredential = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkCredential];
      networkName = [networkCredential networkName];
      v7 = [networkName length];

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
          networkCredential2 = [(DMTPerformAutomatedDeviceEnrollmentRequest *)self networkCredential];
          networkName2 = [networkCredential2 networkName];
          v11 = [networkName2 length];

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