@interface HMDAddAccessoryProgressState
- (HMDAddAccessoryProgressState)initWithPairedAccessory:(id)accessory;
- (HMDAddAccessoryProgressState)initWithUUID:(id)d accessoryName:(id)name manufacturerName:(id)manufacturerName category:(id)category certificationStatus:(unint64_t)status productData:(id)data commissioneeInfo:(id)info systemCommissionerUUID:(id)self0;
- (HMDAddAccessoryProgressState)initWithUnpairedAccessory:(id)accessory server:(id)server accessoryInfo:(id)info certificationStatus:(unint64_t)status;
- (HMDAddAccessoryProgressState)initWithUnpairedAccessory:(id)accessory server:(id)server categoryIdentifier:(id)identifier certificationStatus:(unint64_t)status;
- (id)description;
@end

@implementation HMDAddAccessoryProgressState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accessoryUUID = [(HMDAddAccessoryProgressState *)self accessoryUUID];
  accessoryName = [(HMDAddAccessoryProgressState *)self accessoryName];
  manufacturerName = [(HMDAddAccessoryProgressState *)self manufacturerName];
  v7 = [v3 stringWithFormat:@"HMDAddAccessoryProgressState - uuid: %@, name: %@, mfg: %@", accessoryUUID, accessoryName, manufacturerName];

  return v7;
}

- (HMDAddAccessoryProgressState)initWithUnpairedAccessory:(id)accessory server:(id)server categoryIdentifier:(id)identifier certificationStatus:(unint64_t)status
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  serverCopy = server;
  uuid = [accessoryCopy uuid];
  name = [accessoryCopy name];
  if (identifierCopy)
  {
    [MEMORY[0x277CD1680] categoryWithCategoryIdentifier:identifierCopy];
  }

  else
  {
    [accessoryCopy category];
  }
  v15 = ;
  productData = [serverCopy productData];
  commissioningID = [serverCopy commissioningID];

  v18 = [(HMDAddAccessoryProgressState *)self initWithUUID:uuid accessoryName:name manufacturerName:0 category:v15 certificationStatus:status productData:productData commissioneeInfo:0 systemCommissionerUUID:commissioningID];
  return v18;
}

- (HMDAddAccessoryProgressState)initWithUnpairedAccessory:(id)accessory server:(id)server accessoryInfo:(id)info certificationStatus:(unint64_t)status
{
  accessoryCopy = accessory;
  infoCopy = info;
  serverCopy = server;
  uuid = [accessoryCopy uuid];
  name = [accessoryCopy name];
  manufacturer = [infoCopy manufacturer];
  if (infoCopy)
  {
    v15 = MEMORY[0x277CD1680];
    category = [infoCopy category];
    [v15 categoryWithCategoryIdentifier:?];
  }

  else
  {
    [accessoryCopy category];
  }
  v16 = ;
  productData = [serverCopy productData];
  commissioningID = [serverCopy commissioningID];

  v19 = [(HMDAddAccessoryProgressState *)self initWithUUID:uuid accessoryName:name manufacturerName:manufacturer category:v16 certificationStatus:status productData:productData commissioneeInfo:0 systemCommissionerUUID:commissioningID];
  if (infoCopy)
  {

    v16 = category;
  }

  return v19;
}

- (HMDAddAccessoryProgressState)initWithPairedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  name = [accessoryCopy name];
  manufacturer = [accessoryCopy manufacturer];
  category = [accessoryCopy category];
  productData = [accessoryCopy productData];

  v10 = [(HMDAddAccessoryProgressState *)self initWithUUID:uuid accessoryName:name manufacturerName:manufacturer category:category certificationStatus:0 productData:productData commissioneeInfo:0 systemCommissionerUUID:0];
  return v10;
}

- (HMDAddAccessoryProgressState)initWithUUID:(id)d accessoryName:(id)name manufacturerName:(id)manufacturerName category:(id)category certificationStatus:(unint64_t)status productData:(id)data commissioneeInfo:(id)info systemCommissionerUUID:(id)self0
{
  dCopy = d;
  nameCopy = name;
  manufacturerNameCopy = manufacturerName;
  categoryCopy = category;
  dataCopy = data;
  infoCopy = info;
  iDCopy = iD;
  v27.receiver = self;
  v27.super_class = HMDAddAccessoryProgressState;
  v18 = [(HMDAddAccessoryProgressState *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accessoryUUID, d);
    objc_storeStrong(&v19->_accessoryName, name);
    objc_storeStrong(&v19->_manufacturerName, manufacturerName);
    objc_storeStrong(&v19->_category, category);
    v19->_certificationStatus = status;
    objc_storeStrong(&v19->_productData, data);
    objc_storeStrong(&v19->_commissioneeInfo, info);
    objc_storeStrong(&v19->_systemCommissionerUUID, iD);
  }

  return v19;
}

@end