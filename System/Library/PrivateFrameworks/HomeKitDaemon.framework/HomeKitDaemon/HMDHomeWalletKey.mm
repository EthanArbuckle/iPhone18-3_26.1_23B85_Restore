@interface HMDHomeWalletKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isMissingNFCInfo;
- (HMDHomeWalletKey)initWithPKPass:(id)pass flow:(id)flow;
- (HMDHomeWalletKey)initWithTypeIdentifier:(id)identifier serialNumber:(id)number state:(int64_t)state walletKeyDescription:(id)description homeName:(id)name color:(int64_t)color nfcInfos:(id)infos;
- (NSString)labelColorValue;
- (NSString)passColorValue;
- (NSUUID)uuid;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMDHomeWalletKey

- (id)attributeDescriptions
{
  v33[9] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  typeIdentifier = [(HMDHomeWalletKey *)self typeIdentifier];
  v31 = [v3 initWithName:@"Type Identifier" value:typeIdentifier];
  v33[0] = v31;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  serialNumber = [(HMDHomeWalletKey *)self serialNumber];
  v29 = [v4 initWithName:@"Serial Number" value:serialNumber];
  v33[1] = v29;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeWalletKey state](self, "state")}];
  v27 = [v5 initWithName:@"State" value:v28];
  v33[2] = v27;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  walletKeyDescription = [(HMDHomeWalletKey *)self walletKeyDescription];
  v25 = [v6 initWithName:@"Description" value:walletKeyDescription];
  v33[3] = v25;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  homeName = [(HMDHomeWalletKey *)self homeName];
  v8 = [v7 initWithName:@"Home Name" value:homeName];
  v33[4] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  changeAccessCodeHomeAppCustomURL = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
  v11 = [v9 initWithName:@"Change Access Code Home App URL" value:changeAccessCodeHomeAppCustomURL];
  v33[5] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  nfcInfos = [(HMDHomeWalletKey *)self nfcInfos];
  v14 = [v12 initWithName:@"NFC Info" value:nfcInfos];
  v33[6] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeWalletKey *)self color];
  v16 = HMHomeWalletKeyColorAsString();
  v17 = [v15 initWithName:@"Color" value:v16];
  v33[7] = v17;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  customURL = [(HMDHomeWalletKey *)self customURL];
  v20 = [v18 initWithName:@"Custom URL" value:customURL];
  v33[8] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:9];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMDMutableHomeWalletKey alloc];
  typeIdentifier = [(HMDHomeWalletKey *)self typeIdentifier];
  serialNumber = [(HMDHomeWalletKey *)self serialNumber];
  state = [(HMDHomeWalletKey *)self state];
  walletKeyDescription = [(HMDHomeWalletKey *)self walletKeyDescription];
  homeName = [(HMDHomeWalletKey *)self homeName];
  color = [(HMDHomeWalletKey *)self color];
  nfcInfos = [(HMDHomeWalletKey *)self nfcInfos];
  v12 = [(HMDHomeWalletKey *)v4 initWithTypeIdentifier:typeIdentifier serialNumber:serialNumber state:state walletKeyDescription:walletKeyDescription homeName:homeName color:color nfcInfos:nfcInfos];

  accessCode = [(HMDHomeWalletKey *)self accessCode];
  [(HMDHomeWalletKey *)v12 setAccessCode:accessCode];

  changeAccessCodeHomeAppCustomURL = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
  [(HMDHomeWalletKey *)v12 setChangeAccessCodeHomeAppCustomURL:changeAccessCodeHomeAppCustomURL];

  customURL = [(HMDHomeWalletKey *)self customURL];
  [(HMDHomeWalletKey *)v12 setCustomURL:customURL];

  return v12;
}

- (unint64_t)hash
{
  serialNumber = [(HMDHomeWalletKey *)self serialNumber];
  v4 = [serialNumber hash];

  typeIdentifier = [(HMDHomeWalletKey *)self typeIdentifier];
  v6 = [typeIdentifier hash] ^ v4;

  homeName = [(HMDHomeWalletKey *)self homeName];
  v8 = [homeName hash];

  walletKeyDescription = [(HMDHomeWalletKey *)self walletKeyDescription];
  v10 = v6 ^ v8 ^ [walletKeyDescription hash];

  state = [(HMDHomeWalletKey *)self state];
  accessCode = [(HMDHomeWalletKey *)self accessCode];
  v13 = state ^ [accessCode hash];

  changeAccessCodeHomeAppCustomURL = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
  v15 = v10 ^ v13 ^ [changeAccessCodeHomeAppCustomURL hash];

  nfcInfos = [(HMDHomeWalletKey *)self nfcInfos];
  v17 = [nfcInfos hash];

  v18 = v17 ^ [(HMDHomeWalletKey *)self color];
  customURL = [(HMDHomeWalletKey *)self customURL];
  v20 = v18 ^ [customURL hash];

  return v15 ^ v20;
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
  if (v6)
  {
    serialNumber = [(HMDHomeWalletKey *)self serialNumber];
    serialNumber2 = [v6 serialNumber];
    if ([serialNumber isEqualToString:serialNumber2])
    {
      typeIdentifier = [(HMDHomeWalletKey *)self typeIdentifier];
      typeIdentifier2 = [v6 typeIdentifier];
      if ([typeIdentifier isEqualToString:typeIdentifier2])
      {
        homeName = [(HMDHomeWalletKey *)self homeName];
        homeName2 = [v6 homeName];
        if ([homeName isEqualToString:homeName2])
        {
          walletKeyDescription = [(HMDHomeWalletKey *)self walletKeyDescription];
          walletKeyDescription2 = [v6 walletKeyDescription];
          if ([walletKeyDescription isEqualToString:?])
          {
            v29 = walletKeyDescription;
            state = [(HMDHomeWalletKey *)self state];
            if (state != [v6 state])
            {
              goto LABEL_20;
            }

            accessCode = [(HMDHomeWalletKey *)self accessCode];
            accessCode2 = [v6 accessCode];
            v23 = HMFEqualObjects();

            if (!v23)
            {
              goto LABEL_20;
            }

            changeAccessCodeHomeAppCustomURL = [(HMDHomeWalletKey *)self changeAccessCodeHomeAppCustomURL];
            changeAccessCodeHomeAppCustomURL2 = [v6 changeAccessCodeHomeAppCustomURL];
            v24 = HMFEqualObjects();

            if (v24)
            {
              nfcInfos = [(HMDHomeWalletKey *)self nfcInfos];
              nfcInfos2 = [v6 nfcInfos];
              v28 = nfcInfos;
              if ([nfcInfos isEqual:?] && (v18 = -[HMDHomeWalletKey color](self, "color"), v18 == objc_msgSend(v6, "color")))
              {
                customURL = [(HMDHomeWalletKey *)self customURL];
                customURL2 = [v6 customURL];
                v20 = HMFEqualObjects();
              }

              else
              {
                v20 = 0;
              }

              walletKeyDescription = v29;
            }

            else
            {
LABEL_20:
              v20 = 0;
              walletKeyDescription = v29;
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
  nfcInfos = [(HMDHomeWalletKey *)self nfcInfos];
  hmf_isEmpty = [nfcInfos hmf_isEmpty];

  if (hmf_isEmpty)
  {
    return 1;
  }

  nfcInfos2 = [(HMDHomeWalletKey *)self nfcInfos];
  v7 = [nfcInfos2 na_any:&__block_literal_global_44858];

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
  serialNumber = [(HMDHomeWalletKey *)self serialNumber];
  v5 = [v3 initWithUUIDString:serialNumber];

  v6 = MEMORY[0x277CCAD78];
  nfcInfos = [(HMDHomeWalletKey *)self nfcInfos];
  firstObject = [nfcInfos firstObject];
  subCredentialIdentifier = [firstObject subCredentialIdentifier];
  v10 = [subCredentialIdentifier dataUsingEncoding:4];
  v11 = [v6 hmf_UUIDWithNamespace:v5 data:v10];

  return v11;
}

- (NSString)labelColorValue
{
  color = [(HMDHomeWalletKey *)self color];
  if (color > 14935010)
  {
    if (color != 14935011)
    {
      if (color == 15521450)
      {
        return @"rgb(141, 125, 100)";
      }

      return @"rgb(118, 112, 104)";
    }

    return @"rgb(137, 136, 136)";
  }

  else
  {
    if (color)
    {
      return @"rgb(118, 112, 104)";
    }

    return @"rgb(153, 153, 153)";
  }
}

- (NSString)passColorValue
{
  color = [(HMDHomeWalletKey *)self color];
  if (color > 14935010)
  {
    if (color != 14935011)
    {
      if (color == 15521450)
      {
        return @"gold";
      }

      return @"tan";
    }

    return @"silver";
  }

  else
  {
    if (color)
    {
      return @"tan";
    }

    return @"black";
  }
}

- (HMDHomeWalletKey)initWithPKPass:(id)pass flow:(id)flow
{
  passCopy = pass;
  flowCopy = flow;
  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];
  localizedDescription = [passCopy localizedDescription];
  v9 = [passCopy fieldForKey:@"homeName"];
  v10 = [passCopy fieldForKey:@"arbitrary_supplementary_field_changeAccessCode"];
  secureElementPass = [passCopy secureElementPass];
  devicePaymentApplications = [secureElementPass devicePaymentApplications];
  allObjects = [devicePaymentApplications allObjects];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __40__HMDHomeWalletKey_initWithPKPass_flow___block_invoke;
  v32[3] = &unk_278673060;
  v14 = flowCopy;
  v33 = v14;
  v15 = [allObjects na_map:v32];

  secureElementPass2 = [passCopy secureElementPass];
  devicePrimaryPaymentApplication = [secureElementPass2 devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];

  v19 = [passCopy homeKeyLiveRenderType] - 1;
  if (v19 > 3)
  {
    v20 = *MEMORY[0x277CD06D0];
  }

  else
  {
    v20 = qword_22A5870B0[v19];
  }

  value = [v9 value];
  v22 = [(HMDHomeWalletKey *)self initWithTypeIdentifier:passTypeIdentifier serialNumber:serialNumber state:state walletKeyDescription:localizedDescription homeName:value color:v20 nfcInfos:v15];

  v23 = [passCopy fieldForKey:@"arbitrary_supplementary_field_accessCode"];
  link = [v10 link];

  if (link)
  {
    v25 = MEMORY[0x277CBEBC0];
    link2 = [v10 link];
    link = [v25 URLWithString:link2];
  }

  value2 = [v23 value];
  [(HMDHomeWalletKey *)v22 setAccessCode:value2];

  [(HMDHomeWalletKey *)v22 setChangeAccessCodeHomeAppCustomURL:link];
  passURL = [passCopy passURL];
  [(HMDHomeWalletKey *)v22 setCustomURL:passURL];

  return v22;
}

HMDHomeWalletKeySecureElementInfo *__40__HMDHomeWalletKey_initWithPKPass_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDHomeWalletKeySecureElementInfo alloc] initWithPaymentApplication:v3 flow:*(a1 + 32)];

  return v4;
}

- (HMDHomeWalletKey)initWithTypeIdentifier:(id)identifier serialNumber:(id)number state:(int64_t)state walletKeyDescription:(id)description homeName:(id)name color:(int64_t)color nfcInfos:(id)infos
{
  identifierCopy = identifier;
  numberCopy = number;
  descriptionCopy = description;
  nameCopy = name;
  infosCopy = infos;
  v32.receiver = self;
  v32.super_class = HMDHomeWalletKey;
  v20 = [(HMDHomeWalletKey *)&v32 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    typeIdentifier = v20->_typeIdentifier;
    v20->_typeIdentifier = v21;

    v23 = [numberCopy copy];
    serialNumber = v20->_serialNumber;
    v20->_serialNumber = v23;

    v20->_state = state;
    v25 = [descriptionCopy copy];
    walletKeyDescription = v20->_walletKeyDescription;
    v20->_walletKeyDescription = v25;

    v27 = [nameCopy copy];
    homeName = v20->_homeName;
    v20->_homeName = v27;

    v29 = [infosCopy copy];
    nfcInfos = v20->_nfcInfos;
    v20->_nfcInfos = v29;

    v20->_color = color;
  }

  return v20;
}

@end