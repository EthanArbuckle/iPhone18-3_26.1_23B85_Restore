@interface HMDCHIPHomeKeychainFabricDataItem
- (HMDCHIPHomeKeychainFabricDataItem)initWithKeyItemValueDictionary:(id)a3;
@end

@implementation HMDCHIPHomeKeychainFabricDataItem

- (HMDCHIPHomeKeychainFabricDataItem)initWithKeyItemValueDictionary:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = HMDCHIPHomeKeychainFabricDataItem;
  v5 = [(HMDCHIPHomeKeychainFabricDataItem *)&v48 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rootKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277D17B20]) initWithPrivateKeyExternalRepresentation:v8];
      rootKeyPair = v5->_rootKeyPair;
      v5->_rootKeyPair = v9;
    }

    v11 = [v4 objectForKeyedSubscript:@"opKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277D17B20]) initWithPrivateKeyExternalRepresentation:v13];
      residentOpKeyPair = v5->_residentOpKeyPair;
      v5->_residentOpKeyPair = v14;
    }

    v16 = [v4 objectForKeyedSubscript:@"fabricID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    fabricID = v5->_fabricID;
    v5->_fabricID = v18;

    v20 = [v4 objectForKeyedSubscript:@"residentNodeID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    residentNodeID = v5->_residentNodeID;
    v5->_residentNodeID = v22;

    v24 = [v4 objectForKeyedSubscript:@"rcac"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    rcac = v5->_rcac;
    v5->_rcac = v26;

    v28 = [v4 objectForKeyedSubscript:@"ipk"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    ipk = v5->_ipk;
    v5->_ipk = v30;

    v32 = [v4 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    version = v5->_version;
    v5->_version = v34;

    v36 = [v4 objectForKeyedSubscript:@"createTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    [v38 doubleValue];
    v40 = v39;

    v5->_creationTime = v40;
    v41 = [v4 objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42;

    if (v43)
    {
      v44 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v43];
      uuid = v5->_uuid;
      v5->_uuid = v44;
    }

    if (!v5->_rootKeyPair || !v5->_residentOpKeyPair || !v5->_fabricID || !v5->_ipk || !v5->_version || !v5->_uuid)
    {

      v46 = 0;
      goto LABEL_44;
    }
  }

  v46 = v5;
LABEL_44:

  return v46;
}

@end