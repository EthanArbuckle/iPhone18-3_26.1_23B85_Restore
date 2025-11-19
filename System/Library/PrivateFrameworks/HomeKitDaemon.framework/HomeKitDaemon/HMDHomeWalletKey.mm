@interface HMDHomeWalletKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isMissingNFCInfo;
- (HMDHomeWalletKey)initWithPKPass:(id)a3 flow:(id)a4;
- (HMDHomeWalletKey)initWithTypeIdentifier:(id)a3 serialNumber:(id)a4 state:(int64_t)a5 walletKeyDescription:(id)a6 homeName:(id)a7 color:(int64_t)a8 nfcInfos:(id)a9;
- (NSString)labelColorValue;
- (NSString)passColorValue;
- (NSUUID)uuid;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HMDHomeWalletKey

- (id)attributeDescriptions
{
  v33[9] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v32 = [(HMDHomeWalletKey *)self typeIdentifier];
  v31 = [v3 initWithName:@"Type Identifier" value:v32];
  v33[0] = v31;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v30 = [(HMDHomeWalletKey *)self serialNumber];
  v29 = [v4 initWithName:@"Serial Number" value:v30];
  v33[1] = v29;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeWalletKey state](self, "state")}];
  v27 = [v5 initWithName:@"State" value:v28];
  v33[2] = v27;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = [(HMDHomeWalletKey *)self walletKeyDescription];
  v25 = [v6 initWithName:@"Description" value:v26];
  v33[3] = v25;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [(HMDHomeWalletKey *)self homeName];
  v8 = [v7 initWithName:@"Home Name" value:v24];
  v33[4] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
  v11 = [v9 initWithName:@"Change Access Code Home App URL" value:v10];
  v33[5] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDHomeWalletKey *)self nfcInfos];
  v14 = [v12 initWithName:@"NFC Info" value:v13];
  v33[6] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeWalletKey *)self color];
  v16 = HMHomeWalletKeyColorAsString();
  v17 = [v15 initWithName:@"Color" value:v16];
  v33[7] = v17;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [(HMDHomeWalletKey *)self customURL];
  v20 = [v18 initWithName:@"Custom URL" value:v19];
  v33[8] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:9];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMDMutableHomeWalletKey alloc];
  v5 = [(HMDHomeWalletKey *)self typeIdentifier];
  v6 = [(HMDHomeWalletKey *)self serialNumber];
  v7 = [(HMDHomeWalletKey *)self state];
  v8 = [(HMDHomeWalletKey *)self walletKeyDescription];
  v9 = [(HMDHomeWalletKey *)self homeName];
  v10 = [(HMDHomeWalletKey *)self color];
  v11 = [(HMDHomeWalletKey *)self nfcInfos];
  v12 = [(HMDHomeWalletKey *)v4 initWithTypeIdentifier:v5 serialNumber:v6 state:v7 walletKeyDescription:v8 homeName:v9 color:v10 nfcInfos:v11];

  v13 = [(HMDHomeWalletKey *)self accessCode];
  [(HMDHomeWalletKey *)v12 setAccessCode:v13];

  v14 = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
  [(HMDHomeWalletKey *)v12 setChangeAccessCodeHomeAppCustomURL:v14];

  v15 = [(HMDHomeWalletKey *)self customURL];
  [(HMDHomeWalletKey *)v12 setCustomURL:v15];

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HMDHomeWalletKey *)self serialNumber];
  v4 = [v3 hash];

  v5 = [(HMDHomeWalletKey *)self typeIdentifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDHomeWalletKey *)self homeName];
  v8 = [v7 hash];

  v9 = [(HMDHomeWalletKey *)self walletKeyDescription];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(HMDHomeWalletKey *)self state];
  v12 = [(HMDHomeWalletKey *)self accessCode];
  v13 = v11 ^ [v12 hash];

  v14 = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
  v15 = v10 ^ v13 ^ [v14 hash];

  v16 = [(HMDHomeWalletKey *)self nfcInfos];
  v17 = [v16 hash];

  v18 = v17 ^ [(HMDHomeWalletKey *)self color];
  v19 = [(HMDHomeWalletKey *)self customURL];
  v20 = v18 ^ [v19 hash];

  return v15 ^ v20;
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
  if (v6)
  {
    v7 = [(HMDHomeWalletKey *)self serialNumber];
    v8 = [v6 serialNumber];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(HMDHomeWalletKey *)self typeIdentifier];
      v10 = [v6 typeIdentifier];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(HMDHomeWalletKey *)self homeName];
        v12 = [v6 homeName];
        if ([v11 isEqualToString:v12])
        {
          v13 = [(HMDHomeWalletKey *)self walletKeyDescription];
          v30 = [v6 walletKeyDescription];
          if ([v13 isEqualToString:?])
          {
            v29 = v13;
            v14 = [(HMDHomeWalletKey *)self state];
            if (v14 != [v6 state])
            {
              goto LABEL_20;
            }

            v26 = [(HMDHomeWalletKey *)self accessCode];
            v15 = [v6 accessCode];
            v23 = HMFEqualObjects();

            if (!v23)
            {
              goto LABEL_20;
            }

            v27 = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
            v16 = [v6 changeAccessCodeHomeAppCustomURL];
            v24 = HMFEqualObjects();

            if (v24)
            {
              v17 = [(HMDHomeWalletKey *)self nfcInfos];
              v25 = [v6 nfcInfos];
              v28 = v17;
              if ([v17 isEqual:?] && (v18 = -[HMDHomeWalletKey color](self, "color"), v18 == objc_msgSend(v6, "color")))
              {
                v22 = [(HMDHomeWalletKey *)self customURL];
                v19 = [v6 customURL];
                v20 = HMFEqualObjects();
              }

              else
              {
                v20 = 0;
              }

              v13 = v29;
            }

            else
            {
LABEL_20:
              v20 = 0;
              v13 = v29;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)isMissingNFCInfo
{
  v3 = [(HMDHomeWalletKey *)self nfcInfos];
  v4 = [v3 hmf_isEmpty];

  if (v4)
  {
    return 1;
  }

  v6 = [(HMDHomeWalletKey *)self nfcInfos];
  v7 = [v6 na_any:&__block_literal_global_44858];

  return v7;
}

BOOL __36__HMDHomeWalletKey_isMissingNFCInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 applicationIdentifier];
  if (v3)
  {
    v4 = [v2 subCredentialIdentifier];
    if (v4)
    {
      v5 = [v2 secureElementIdentifier];
      if (v5)
      {
        v6 = [v2 pairedReaderIdentifier];
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (NSUUID)uuid
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(HMDHomeWalletKey *)self serialNumber];
  v5 = [v3 initWithUUIDString:v4];

  v6 = MEMORY[0x277CCAD78];
  v7 = [(HMDHomeWalletKey *)self nfcInfos];
  v8 = [v7 firstObject];
  v9 = [v8 subCredentialIdentifier];
  v10 = [v9 dataUsingEncoding:4];
  v11 = [v6 hmf_UUIDWithNamespace:v5 data:v10];

  return v11;
}

- (NSString)labelColorValue
{
  v2 = [(HMDHomeWalletKey *)self color];
  if (v2 > 14935010)
  {
    if (v2 != 14935011)
    {
      if (v2 == 15521450)
      {
        return @"rgb(141, 125, 100)";
      }

      return @"rgb(118, 112, 104)";
    }

    return @"rgb(137, 136, 136)";
  }

  else
  {
    if (v2)
    {
      return @"rgb(118, 112, 104)";
    }

    return @"rgb(153, 153, 153)";
  }
}

- (NSString)passColorValue
{
  v2 = [(HMDHomeWalletKey *)self color];
  if (v2 > 14935010)
  {
    if (v2 != 14935011)
    {
      if (v2 == 15521450)
      {
        return @"gold";
      }

      return @"tan";
    }

    return @"silver";
  }

  else
  {
    if (v2)
    {
      return @"tan";
    }

    return @"black";
  }
}

- (HMDHomeWalletKey)initWithPKPass:(id)a3 flow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = [v6 passTypeIdentifier];
  v30 = [v6 serialNumber];
  v8 = [v6 localizedDescription];
  v9 = [v6 fieldForKey:@"homeName"];
  v10 = [v6 fieldForKey:@"arbitrary_supplementary_field_changeAccessCode"];
  v11 = [v6 secureElementPass];
  v12 = [v11 devicePaymentApplications];
  v13 = [v12 allObjects];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __40__HMDHomeWalletKey_initWithPKPass_flow___block_invoke;
  v32[3] = &unk_278673060;
  v14 = v7;
  v33 = v14;
  v15 = [v13 na_map:v32];

  v16 = [v6 secureElementPass];
  v17 = [v16 devicePrimaryPaymentApplication];
  v18 = [v17 state];

  v19 = [v6 homeKeyLiveRenderType] - 1;
  if (v19 > 3)
  {
    v20 = *MEMORY[0x277CD06D0];
  }

  else
  {
    v20 = qword_22A5870B0[v19];
  }

  v21 = [v9 value];
  v22 = [(HMDHomeWalletKey *)self initWithTypeIdentifier:v31 serialNumber:v30 state:v18 walletKeyDescription:v8 homeName:v21 color:v20 nfcInfos:v15];

  v23 = [v6 fieldForKey:@"arbitrary_supplementary_field_accessCode"];
  v24 = [v10 link];

  if (v24)
  {
    v25 = MEMORY[0x277CBEBC0];
    v26 = [v10 link];
    v24 = [v25 URLWithString:v26];
  }

  v27 = [v23 value];
  [(HMDHomeWalletKey *)v22 setAccessCode:v27];

  [(HMDHomeWalletKey *)v22 setChangeAccessCodeHomeAppCustomURL:v24];
  v28 = [v6 passURL];
  [(HMDHomeWalletKey *)v22 setCustomURL:v28];

  return v22;
}

HMDHomeWalletKeySecureElementInfo *__40__HMDHomeWalletKey_initWithPKPass_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDHomeWalletKeySecureElementInfo alloc] initWithPaymentApplication:v3 flow:*(a1 + 32)];

  return v4;
}

- (HMDHomeWalletKey)initWithTypeIdentifier:(id)a3 serialNumber:(id)a4 state:(int64_t)a5 walletKeyDescription:(id)a6 homeName:(id)a7 color:(int64_t)a8 nfcInfos:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v32.receiver = self;
  v32.super_class = HMDHomeWalletKey;
  v20 = [(HMDHomeWalletKey *)&v32 init];
  if (v20)
  {
    v21 = [v15 copy];
    typeIdentifier = v20->_typeIdentifier;
    v20->_typeIdentifier = v21;

    v23 = [v16 copy];
    serialNumber = v20->_serialNumber;
    v20->_serialNumber = v23;

    v20->_state = a5;
    v25 = [v17 copy];
    walletKeyDescription = v20->_walletKeyDescription;
    v20->_walletKeyDescription = v25;

    v27 = [v18 copy];
    homeName = v20->_homeName;
    v20->_homeName = v27;

    v29 = [v19 copy];
    nfcInfos = v20->_nfcInfos;
    v20->_nfcInfos = v29;

    v20->_color = a8;
  }

  return v20;
}

@end