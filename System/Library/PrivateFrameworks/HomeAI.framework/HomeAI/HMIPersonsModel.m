@interface HMIPersonsModel
- (HMIPersonsModel)initWithPersonsModel:(id)a3 homeUUID:(id)a4 sourceUUID:(id)a5 externalLibrary:(BOOL)a6;
- (HMIPersonsModelSummary)summary;
@end

@implementation HMIPersonsModel

- (HMIPersonsModel)initWithPersonsModel:(id)a3 homeUUID:(id)a4 sourceUUID:(id)a5 externalLibrary:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HMIPersonsModel;
  v14 = [(HMIPersonsModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_visionPersonsModel, a3);
    objc_storeStrong(&v15->_homeUUID, a4);
    objc_storeStrong(&v15->_sourceUUID, a5);
    v15->_externalLibrary = a6;
  }

  return v15;
}

- (HMIPersonsModelSummary)summary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMIPersonsModel *)self visionPersonsModel];
  v5 = [v4 personUniqueIdentifiers];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __26__HMIPersonsModel_summary__block_invoke;
  v16 = &unk_278754680;
  v17 = self;
  v18 = v3;
  v6 = v3;
  [v5 na_each:&v13];

  v7 = [HMIPersonsModelSummary alloc];
  v8 = [(HMIPersonsModel *)self sourceUUID:v13];
  v9 = [(HMIPersonsModel *)self isExternalLibrary];
  v10 = [v6 copy];
  v11 = [(HMIPersonsModelSummary *)v7 initWithSourceUUID:v8 externalLibrary:v9 faceCountsByPerson:v10];

  return v11;
}

void __26__HMIPersonsModel_summary__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 visionPersonsModel];
  v7 = [v3 numberWithUnsignedInteger:{objc_msgSend(v6, "faceCountForPersonWithUniqueIdentifier:", v5)}];

  [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];
}

@end