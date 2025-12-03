@interface ICASPartialCloudErrorItemData
- (ICASPartialCloudErrorItemData)initWithSyncableDataType:(id)type errorCode:(id)code count:(id)count errorString:(id)string;
- (id)toDict;
@end

@implementation ICASPartialCloudErrorItemData

- (ICASPartialCloudErrorItemData)initWithSyncableDataType:(id)type errorCode:(id)code count:(id)count errorString:(id)string
{
  typeCopy = type;
  codeCopy = code;
  countCopy = count;
  stringCopy = string;
  v18.receiver = self;
  v18.super_class = ICASPartialCloudErrorItemData;
  v15 = [(ICASPartialCloudErrorItemData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_syncableDataType, type);
    objc_storeStrong(&v16->_errorCode, code);
    objc_storeStrong(&v16->_count, count);
    objc_storeStrong(&v16->_errorString, string);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"syncableDataType";
  syncableDataType = [(ICASPartialCloudErrorItemData *)self syncableDataType];
  if (syncableDataType)
  {
    syncableDataType2 = [(ICASPartialCloudErrorItemData *)self syncableDataType];
  }

  else
  {
    syncableDataType2 = objc_opt_new();
  }

  v5 = syncableDataType2;
  v19[0] = syncableDataType2;
  v18[1] = @"errorCode";
  errorCode = [(ICASPartialCloudErrorItemData *)self errorCode];
  if (errorCode)
  {
    errorCode2 = [(ICASPartialCloudErrorItemData *)self errorCode];
  }

  else
  {
    errorCode2 = objc_opt_new();
  }

  v8 = errorCode2;
  v19[1] = errorCode2;
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
  errorString = [(ICASPartialCloudErrorItemData *)self errorString];
  if (errorString)
  {
    errorString2 = [(ICASPartialCloudErrorItemData *)self errorString];
  }

  else
  {
    errorString2 = objc_opt_new();
  }

  v14 = errorString2;
  v19[3] = errorString2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end