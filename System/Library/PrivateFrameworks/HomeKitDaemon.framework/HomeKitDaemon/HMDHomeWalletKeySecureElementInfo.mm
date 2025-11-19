@interface HMDHomeWalletKeySecureElementInfo
+ (id)createForEasyProvisioning;
+ (id)createForExpressConflictCheckWithSecureElementIdentifier:(id)a3;
+ (id)shortDescription;
+ (int64_t)hmdPaymentTypeFromPKPaymentType:(unint64_t)a3 flow:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HMDHomeWalletKeySecureElementInfo)initWithDeviceCredentialKey:(id)a3 applicationIdentifier:(id)a4 subCredentialIdentifier:(id)a5 secureElementIdentifier:(id)a6 pairedReaderIdentifier:(id)a7 paymentCredentialType:(int64_t)a8;
- (HMDHomeWalletKeySecureElementInfo)initWithPaymentApplication:(id)a3 flow:(id)a4;
- (id)attributeDescriptions;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDHomeWalletKeySecureElementInfo

- (id)attributeDescriptions
{
  v22[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDHomeWalletKeySecureElementInfo *)self deviceCredentialKey];
  v20 = [v21 hmf_hexadecimalRepresentation];
  v4 = [v3 initWithName:@"Device Credential Public Key" value:v20];
  v22[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDHomeWalletKeySecureElementInfo *)self applicationIdentifier];
  v7 = [v5 initWithName:@"Application Identifier" value:v6];
  v22[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDHomeWalletKeySecureElementInfo *)self subCredentialIdentifier];
  v10 = [v8 initWithName:@"Sub Credential Identifier" value:v9];
  v22[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDHomeWalletKeySecureElementInfo *)self secureElementIdentifier];
  v13 = [v11 initWithName:@"Secure Element Identifier" value:v12];
  v22[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDHomeWalletKeySecureElementInfo *)self pairedReaderIdentifier];
  v16 = [v14 initWithName:@"Paired Reader Identifier" value:v15];
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
  v3 = [(HMDHomeWalletKeySecureElementInfo *)self deviceCredentialKey];
  v4 = [v3 hash];

  v5 = [(HMDHomeWalletKeySecureElementInfo *)self applicationIdentifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDHomeWalletKeySecureElementInfo *)self subCredentialIdentifier];
  v8 = [v7 hash];

  v9 = [(HMDHomeWalletKeySecureElementInfo *)self secureElementIdentifier];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(HMDHomeWalletKeySecureElementInfo *)self pairedReaderIdentifier];
  v12 = v10 ^ [v11 hash];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeWalletKeySecureElementInfo paymentCredentialType](self, "paymentCredentialType")}];
  v14 = [v13 hash];

  return v12 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[HMDHomeWalletKeySecureElementInfo deviceCredentialKey](self, "deviceCredentialKey"), v7 = objc_claimAutoreleasedReturnValue(), [v6 deviceCredentialKey], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
  {
    v10 = [(HMDHomeWalletKeySecureElementInfo *)self applicationIdentifier];
    v11 = [v6 applicationIdentifier];
    if ([v10 isEqualToString:v11])
    {
      v12 = [(HMDHomeWalletKeySecureElementInfo *)self subCredentialIdentifier];
      v13 = [v6 subCredentialIdentifier];
      if ([v12 isEqualToString:v13])
      {
        v14 = [(HMDHomeWalletKeySecureElementInfo *)self secureElementIdentifier];
        v15 = [v6 secureElementIdentifier];
        if ([v14 isEqualToString:v15])
        {
          v22 = v14;
          v16 = [(HMDHomeWalletKeySecureElementInfo *)self pairedReaderIdentifier];
          v17 = [v6 pairedReaderIdentifier];
          v21 = HMFEqualObjects();

          if (v21)
          {
            v18 = [(HMDHomeWalletKeySecureElementInfo *)self paymentCredentialType];
            v19 = v18 == [v6 paymentCredentialType];
          }

          else
          {
            v19 = 0;
          }

          v14 = v22;
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

- (HMDHomeWalletKeySecureElementInfo)initWithPaymentApplication:(id)a3 flow:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 secureElementIdentifier];
  v9 = [v6 subcredentials];
  v10 = [v9 anyObject];

  v11 = +[HMDHomeWalletKeySecureElementInfo hmdPaymentTypeFromPKPaymentType:flow:](HMDHomeWalletKeySecureElementInfo, "hmdPaymentTypeFromPKPaymentType:flow:", [v6 paymentType], v7);
  v12 = [v6 applicationIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [v10 identifier];
    v15 = v14;
    if (v14 && v8)
    {
      v16 = [v10 pairedReaderIdentifier];

      if (v16)
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
  v34 = self;
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v20 = v32 = v7;
    v21 = [v32 UUID];
    v22 = [v6 applicationIdentifier];
    v23 = [v10 identifier];
    [v10 pairedReaderIdentifier];
    v24 = v31 = v17;
    *buf = 138545154;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    v39 = 2112;
    v40 = v6;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v22;
    v45 = 2112;
    v46 = v23;
    v47 = 2112;
    v48 = v8;
    v49 = 2112;
    v50 = v24;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] PKPass is missing data. paymentApplication: %@, subcredential: %@, paymentApplication.applicationIdentifier: %@, subcredential.identifier: %@, secureElementIdentifier: %@, subcredential.pairedReaderIdentifier: %@", buf, 0x52u);

    v17 = v31;
    v7 = v32;
  }

  objc_autoreleasePoolPop(v17);
  v11 = v33;
  self = v34;
LABEL_10:
  v25 = [v6 applicationIdentifier];
  v26 = [v10 identifier];
  v27 = [v10 pairedReaderIdentifier];
  v28 = [(HMDHomeWalletKeySecureElementInfo *)self initWithDeviceCredentialKey:0 applicationIdentifier:v25 subCredentialIdentifier:v26 secureElementIdentifier:v8 pairedReaderIdentifier:v27 paymentCredentialType:v11];

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (HMDHomeWalletKeySecureElementInfo)initWithDeviceCredentialKey:(id)a3 applicationIdentifier:(id)a4 subCredentialIdentifier:(id)a5 secureElementIdentifier:(id)a6 pairedReaderIdentifier:(id)a7 paymentCredentialType:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v31.receiver = self;
  v31.super_class = HMDHomeWalletKeySecureElementInfo;
  v19 = [(HMDHomeWalletKeySecureElementInfo *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    deviceCredentialKey = v19->_deviceCredentialKey;
    v19->_deviceCredentialKey = v20;

    v22 = [v15 copy];
    applicationIdentifier = v19->_applicationIdentifier;
    v19->_applicationIdentifier = v22;

    v24 = [v16 copy];
    subCredentialIdentifier = v19->_subCredentialIdentifier;
    v19->_subCredentialIdentifier = v24;

    v26 = [v17 copy];
    secureElementIdentifier = v19->_secureElementIdentifier;
    v19->_secureElementIdentifier = v26;

    v28 = [v18 copy];
    pairedReaderIdentifier = v19->_pairedReaderIdentifier;
    v19->_pairedReaderIdentifier = v28;

    v19->_paymentCredentialType = a8;
  }

  return v19;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)createForExpressConflictCheckWithSecureElementIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[HMDHomeWalletKeySecureElementInfo alloc] initWithDeviceCredentialKey:0 applicationIdentifier:@"A00000085801010100000001" subCredentialIdentifier:@"50306AC7BE75749DA5F104397B29933A78E71B59" secureElementIdentifier:v3 pairedReaderIdentifier:0 paymentCredentialType:0];

  return v4;
}

+ (id)createForEasyProvisioning
{
  v2 = [[HMDHomeWalletKeySecureElementInfo alloc] initWithDeviceCredentialKey:0 applicationIdentifier:&stru_283CF9D50 subCredentialIdentifier:&stru_283CF9D50 secureElementIdentifier:&stru_283CF9D50 pairedReaderIdentifier:0 paymentCredentialType:0];

  return v2;
}

+ (int64_t)hmdPaymentTypeFromPKPaymentType:(unint64_t)a3 flow:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 == 1003)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (a3 != 1004)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 UUID];
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unrecognized paymentType, defaulting to HMDPaymentCredentialType0. paymentType: %lu", &v15, 0x20u);
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