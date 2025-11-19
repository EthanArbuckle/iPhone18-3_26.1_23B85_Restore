@interface ICASCloudOperationData
- (ICASCloudOperationData)initWithOperationID:(id)a3 operationType:(id)a4 operationGroupName:(id)a5;
- (id)toDict;
@end

@implementation ICASCloudOperationData

- (ICASCloudOperationData)initWithOperationID:(id)a3 operationType:(id)a4 operationGroupName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASCloudOperationData;
  v12 = [(ICASCloudOperationData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationID, a3);
    objc_storeStrong(&v13->_operationType, a4);
    objc_storeStrong(&v13->_operationGroupName, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"operationID";
  v3 = [(ICASCloudOperationData *)self operationID];
  if (v3)
  {
    v4 = [(ICASCloudOperationData *)self operationID];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"operationType";
  v6 = [(ICASCloudOperationData *)self operationType];
  if (v6)
  {
    v7 = [(ICASCloudOperationData *)self operationType];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"operationGroupName";
  v9 = [(ICASCloudOperationData *)self operationGroupName];
  if (v9)
  {
    v10 = [(ICASCloudOperationData *)self operationGroupName];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end