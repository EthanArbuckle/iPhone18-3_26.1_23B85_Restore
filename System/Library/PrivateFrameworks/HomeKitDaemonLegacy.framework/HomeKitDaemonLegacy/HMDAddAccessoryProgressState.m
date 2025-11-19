@interface HMDAddAccessoryProgressState
- (HMDAddAccessoryProgressState)initWithPairedAccessory:(id)a3;
- (HMDAddAccessoryProgressState)initWithUUID:(id)a3 accessoryName:(id)a4 manufacturerName:(id)a5 category:(id)a6 certificationStatus:(unint64_t)a7 productData:(id)a8 commissioneeInfo:(id)a9 systemCommissionerUUID:(id)a10;
- (HMDAddAccessoryProgressState)initWithUnpairedAccessory:(id)a3 server:(id)a4 accessoryInfo:(id)a5 certificationStatus:(unint64_t)a6;
- (HMDAddAccessoryProgressState)initWithUnpairedAccessory:(id)a3 server:(id)a4 categoryIdentifier:(id)a5 certificationStatus:(unint64_t)a6;
- (id)description;
@end

@implementation HMDAddAccessoryProgressState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAddAccessoryProgressState *)self accessoryUUID];
  v5 = [(HMDAddAccessoryProgressState *)self accessoryName];
  v6 = [(HMDAddAccessoryProgressState *)self manufacturerName];
  v7 = [v3 stringWithFormat:@"HMDAddAccessoryProgressState - uuid: %@, name: %@, mfg: %@", v4, v5, v6];

  return v7;
}

- (HMDAddAccessoryProgressState)initWithUnpairedAccessory:(id)a3 server:(id)a4 categoryIdentifier:(id)a5 certificationStatus:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [v10 uuid];
  v14 = [v10 name];
  if (v11)
  {
    [MEMORY[0x277CD1680] categoryWithCategoryIdentifier:v11];
  }

  else
  {
    [v10 category];
  }
  v15 = ;
  v16 = [v12 productData];
  v17 = [v12 commissioningID];

  v18 = [(HMDAddAccessoryProgressState *)self initWithUUID:v13 accessoryName:v14 manufacturerName:0 category:v15 certificationStatus:a6 productData:v16 commissioneeInfo:0 systemCommissionerUUID:v17];
  return v18;
}

- (HMDAddAccessoryProgressState)initWithUnpairedAccessory:(id)a3 server:(id)a4 accessoryInfo:(id)a5 certificationStatus:(unint64_t)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [v9 uuid];
  v13 = [v9 name];
  v14 = [v10 manufacturer];
  if (v10)
  {
    v15 = MEMORY[0x277CD1680];
    v21 = [v10 category];
    [v15 categoryWithCategoryIdentifier:?];
  }

  else
  {
    [v9 category];
  }
  v16 = ;
  v17 = [v11 productData];
  v18 = [v11 commissioningID];

  v19 = [(HMDAddAccessoryProgressState *)self initWithUUID:v12 accessoryName:v13 manufacturerName:v14 category:v16 certificationStatus:a6 productData:v17 commissioneeInfo:0 systemCommissionerUUID:v18];
  if (v10)
  {

    v16 = v21;
  }

  return v19;
}

- (HMDAddAccessoryProgressState)initWithPairedAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v4 name];
  v7 = [v4 manufacturer];
  v8 = [v4 category];
  v9 = [v4 productData];

  v10 = [(HMDAddAccessoryProgressState *)self initWithUUID:v5 accessoryName:v6 manufacturerName:v7 category:v8 certificationStatus:0 productData:v9 commissioneeInfo:0 systemCommissionerUUID:0];
  return v10;
}

- (HMDAddAccessoryProgressState)initWithUUID:(id)a3 accessoryName:(id)a4 manufacturerName:(id)a5 category:(id)a6 certificationStatus:(unint64_t)a7 productData:(id)a8 commissioneeInfo:(id)a9 systemCommissionerUUID:(id)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a8;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = HMDAddAccessoryProgressState;
  v18 = [(HMDAddAccessoryProgressState *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accessoryUUID, a3);
    objc_storeStrong(&v19->_accessoryName, a4);
    objc_storeStrong(&v19->_manufacturerName, a5);
    objc_storeStrong(&v19->_category, a6);
    v19->_certificationStatus = a7;
    objc_storeStrong(&v19->_productData, a8);
    objc_storeStrong(&v19->_commissioneeInfo, a9);
    objc_storeStrong(&v19->_systemCommissionerUUID, a10);
  }

  return v19;
}

@end