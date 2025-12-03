@interface HMDHomeWalletKeySecureElementInfo
+ (id)createForEasyProvisioning;
+ (id)createForExpressConflictCheckWithSecureElementIdentifier:(id)identifier;
+ (id)shortDescription;
+ (int64_t)hmdPaymentTypeFromPKPaymentType:(unint64_t)type flow:(id)flow;
- (BOOL)isEqual:(id)equal;
- (HMDHomeWalletKeySecureElementInfo)initWithDeviceCredentialKey:(id)key applicationIdentifier:(id)identifier subCredentialIdentifier:(id)credentialIdentifier secureElementIdentifier:(id)elementIdentifier pairedReaderIdentifier:(id)readerIdentifier paymentCredentialType:(int64_t)type;
- (HMDHomeWalletKeySecureElementInfo)initWithPaymentApplication:(id)application flow:(id)flow;
- (id)attributeDescriptions;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDHomeWalletKeySecureElementInfo

- (id)attributeDescriptions
{
  v22[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  deviceCredentialKey = [(HMDHomeWalletKeySecureElementInfo *)self deviceCredentialKey];
  hmf_hexadecimalRepresentation = [deviceCredentialKey hmf_hexadecimalRepresentation];
  v4 = [v3 initWithName:@"Device Credential Public Key" value:hmf_hexadecimalRepresentation];
  v22[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  applicationIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self applicationIdentifier];
  v7 = [v5 initWithName:@"Application Identifier" value:applicationIdentifier];
  v22[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  subCredentialIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self subCredentialIdentifier];
  v10 = [v8 initWithName:@"Sub Credential Identifier" value:subCredentialIdentifier];
  v22[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  secureElementIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self secureElementIdentifier];
  v13 = [v11 initWithName:@"Secure Element Identifier" value:secureElementIdentifier];
  v22[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  pairedReaderIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self pairedReaderIdentifier];
  v16 = [v14 initWithName:@"Paired Reader Identifier" value:pairedReaderIdentifier];
  v22[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  deviceCredentialKey = [(HMDHomeWalletKeySecureElementInfo *)self deviceCredentialKey];
  v4 = [deviceCredentialKey hash];

  applicationIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self applicationIdentifier];
  v6 = [applicationIdentifier hash] ^ v4;

  subCredentialIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self subCredentialIdentifier];
  v8 = [subCredentialIdentifier hash];

  secureElementIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self secureElementIdentifier];
  v10 = v6 ^ v8 ^ [secureElementIdentifier hash];

  pairedReaderIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self pairedReaderIdentifier];
  v12 = v10 ^ [pairedReaderIdentifier hash];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeWalletKeySecureElementInfo paymentCredentialType](self, "paymentCredentialType")}];
  v14 = [v13 hash];

  return v12 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[HMDHomeWalletKeySecureElementInfo deviceCredentialKey](self, "deviceCredentialKey"), v7 = objc_claimAutoreleasedReturnValue(), [v6 deviceCredentialKey], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
  {
    applicationIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self applicationIdentifier];
    applicationIdentifier2 = [v6 applicationIdentifier];
    if ([applicationIdentifier isEqualToString:applicationIdentifier2])
    {
      subCredentialIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self subCredentialIdentifier];
      subCredentialIdentifier2 = [v6 subCredentialIdentifier];
      if ([subCredentialIdentifier isEqualToString:subCredentialIdentifier2])
      {
        secureElementIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self secureElementIdentifier];
        secureElementIdentifier2 = [v6 secureElementIdentifier];
        if ([secureElementIdentifier isEqualToString:secureElementIdentifier2])
        {
          v22 = secureElementIdentifier;
          pairedReaderIdentifier = [(HMDHomeWalletKeySecureElementInfo *)self pairedReaderIdentifier];
          pairedReaderIdentifier2 = [v6 pairedReaderIdentifier];
          v21 = HMFEqualObjects();

          if (v21)
          {
            paymentCredentialType = [(HMDHomeWalletKeySecureElementInfo *)self paymentCredentialType];
            v19 = paymentCredentialType == [v6 paymentCredentialType];
          }

          else
          {
            v19 = 0;
          }

          secureElementIdentifier = v22;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (HMDHomeWalletKeySecureElementInfo)initWithPaymentApplication:(id)application flow:(id)flow
{
  v51 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  flowCopy = flow;
  secureElementIdentifier = [applicationCopy secureElementIdentifier];
  subcredentials = [applicationCopy subcredentials];
  anyObject = [subcredentials anyObject];

  v11 = +[HMDHomeWalletKeySecureElementInfo hmdPaymentTypeFromPKPaymentType:flow:](HMDHomeWalletKeySecureElementInfo, "hmdPaymentTypeFromPKPaymentType:flow:", [applicationCopy paymentType], flowCopy);
  applicationIdentifier = [applicationCopy applicationIdentifier];
  if (applicationIdentifier)
  {
    v13 = applicationIdentifier;
    identifier = [anyObject identifier];
    v15 = identifier;
    if (identifier && secureElementIdentifier)
    {
      pairedReaderIdentifier = [anyObject pairedReaderIdentifier];

      if (pairedReaderIdentifier)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v33 = v11;
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  selfCopy2 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v20 = v32 = flowCopy;
    uUID = [v32 UUID];
    applicationIdentifier2 = [applicationCopy applicationIdentifier];
    identifier2 = [anyObject identifier];
    [anyObject pairedReaderIdentifier];
    v24 = v31 = v17;
    *buf = 138545154;
    v36 = v20;
    v37 = 2112;
    v38 = uUID;
    v39 = 2112;
    v40 = applicationCopy;
    v41 = 2112;
    v42 = anyObject;
    v43 = 2112;
    v44 = applicationIdentifier2;
    v45 = 2112;
    v46 = identifier2;
    v47 = 2112;
    v48 = secureElementIdentifier;
    v49 = 2112;
    v50 = v24;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] PKPass is missing data. paymentApplication: %@, subcredential: %@, paymentApplication.applicationIdentifier: %@, subcredential.identifier: %@, secureElementIdentifier: %@, subcredential.pairedReaderIdentifier: %@", buf, 0x52u);

    v17 = v31;
    flowCopy = v32;
  }

  objc_autoreleasePoolPop(v17);
  v11 = v33;
  self = selfCopy;
LABEL_10:
  applicationIdentifier3 = [applicationCopy applicationIdentifier];
  identifier3 = [anyObject identifier];
  pairedReaderIdentifier2 = [anyObject pairedReaderIdentifier];
  v28 = [(HMDHomeWalletKeySecureElementInfo *)self initWithDeviceCredentialKey:0 applicationIdentifier:applicationIdentifier3 subCredentialIdentifier:identifier3 secureElementIdentifier:secureElementIdentifier pairedReaderIdentifier:pairedReaderIdentifier2 paymentCredentialType:v11];

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (HMDHomeWalletKeySecureElementInfo)initWithDeviceCredentialKey:(id)key applicationIdentifier:(id)identifier subCredentialIdentifier:(id)credentialIdentifier secureElementIdentifier:(id)elementIdentifier pairedReaderIdentifier:(id)readerIdentifier paymentCredentialType:(int64_t)type
{
  keyCopy = key;
  identifierCopy = identifier;
  credentialIdentifierCopy = credentialIdentifier;
  elementIdentifierCopy = elementIdentifier;
  readerIdentifierCopy = readerIdentifier;
  v31.receiver = self;
  v31.super_class = HMDHomeWalletKeySecureElementInfo;
  v19 = [(HMDHomeWalletKeySecureElementInfo *)&v31 init];
  if (v19)
  {
    v20 = [keyCopy copy];
    deviceCredentialKey = v19->_deviceCredentialKey;
    v19->_deviceCredentialKey = v20;

    v22 = [identifierCopy copy];
    applicationIdentifier = v19->_applicationIdentifier;
    v19->_applicationIdentifier = v22;

    v24 = [credentialIdentifierCopy copy];
    subCredentialIdentifier = v19->_subCredentialIdentifier;
    v19->_subCredentialIdentifier = v24;

    v26 = [elementIdentifierCopy copy];
    secureElementIdentifier = v19->_secureElementIdentifier;
    v19->_secureElementIdentifier = v26;

    v28 = [readerIdentifierCopy copy];
    pairedReaderIdentifier = v19->_pairedReaderIdentifier;
    v19->_pairedReaderIdentifier = v28;

    v19->_paymentCredentialType = type;
  }

  return v19;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)createForExpressConflictCheckWithSecureElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HMDHomeWalletKeySecureElementInfo alloc] initWithDeviceCredentialKey:0 applicationIdentifier:@"A00000085801010100000001" subCredentialIdentifier:@"50306AC7BE75749DA5F104397B29933A78E71B59" secureElementIdentifier:identifierCopy pairedReaderIdentifier:0 paymentCredentialType:0];

  return v4;
}

+ (id)createForEasyProvisioning
{
  v2 = [[HMDHomeWalletKeySecureElementInfo alloc] initWithDeviceCredentialKey:0 applicationIdentifier:&stru_286509E58 subCredentialIdentifier:&stru_286509E58 secureElementIdentifier:&stru_286509E58 pairedReaderIdentifier:0 paymentCredentialType:0];

  return v2;
}

+ (int64_t)hmdPaymentTypeFromPKPaymentType:(unint64_t)type flow:(id)flow
{
  v21 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  if (type == 1003)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (type != 1004)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = uUID;
      v19 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unrecognized paymentType, defaulting to HMDPaymentCredentialType0. paymentType: %lu", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_7;
  }

  v7 = 1;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

@end