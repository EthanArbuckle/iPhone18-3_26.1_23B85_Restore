@interface ICASPartialCloudErrorItemData
- (ICASPartialCloudErrorItemData)initWithSyncableDataType:(id)a3 errorCode:(id)a4 count:(id)a5 errorString:(id)a6;
- (id)toDict;
@end

@implementation ICASPartialCloudErrorItemData

- (ICASPartialCloudErrorItemData)initWithSyncableDataType:(id)a3 errorCode:(id)a4 count:(id)a5 errorString:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASPartialCloudErrorItemData;
  v15 = [(ICASPartialCloudErrorItemData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_syncableDataType, a3);
    objc_storeStrong(&v16->_errorCode, a4);
    objc_storeStrong(&v16->_count, a5);
    objc_storeStrong(&v16->_errorString, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"syncableDataType";
  v3 = [(ICASPartialCloudErrorItemData *)self syncableDataType];
  if (v3)
  {
    v4 = [(ICASPartialCloudErrorItemData *)self syncableDataType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"errorCode";
  v6 = [(ICASPartialCloudErrorItemData *)self errorCode];
  if (v6)
  {
    v7 = [(ICASPartialCloudErrorItemData *)self errorCode];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"count";
  v9 = [(ICASPartialCloudErrorItemData *)self count];
  if (v9)
  {
    v10 = [(ICASPartialCloudErrorItemData *)self count];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"errorString";
  v12 = [(ICASPartialCloudErrorItemData *)self errorString];
  if (v12)
  {
    v13 = [(ICASPartialCloudErrorItemData *)self errorString];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v19[3] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end