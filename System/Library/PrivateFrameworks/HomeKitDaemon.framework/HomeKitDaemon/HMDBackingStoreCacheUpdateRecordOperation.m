@interface HMDBackingStoreCacheUpdateRecordOperation
- (HMDBackingStoreCacheUpdateRecordOperation)initWithGroup:(id)a3 name:(id)a4 record:(id)a5 data:(id)a6 encoding:(unint64_t)a7 model:(id)a8 resultBlock:(id)a9;
- (HMDBackingStoreCacheUpdateRecordOperation)initWithGroup:(id)a3 record:(id)a4 resultBlock:(id)a5;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheUpdateRecordOperation

- (id)mainReturningError
{
  v3 = [(HMDBackingStoreOperation *)self store];
  v4 = [v3 local];
  v5 = [(HMDBackingStoreOperation *)self store];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  v19 = 0;
  v8 = [v4 _fetchIDForStore:v7 error:&v19];
  v9 = v19;

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [(HMDBackingStoreCacheUpdateRecordOperation *)self record];

    v12 = [(HMDBackingStoreOperation *)self store];
    v13 = [v12 local];
    v14 = [(HMDBackingStoreCacheUpdateRecordOperation *)self group];
    v15 = [v14 groupID];
    if (v11)
    {
      v16 = [(HMDBackingStoreCacheUpdateRecordOperation *)self record];
      v17 = [(HMDBackingStoreCacheUpdateRecordOperation *)self data];
      [v13 _updateRecordWithGroupID:v15 store:v8 record:v16 data:v17 encoding:{-[HMDBackingStoreCacheUpdateRecordOperation encoding](self, "encoding")}];
    }

    else
    {
      v16 = [(HMDBackingStoreCacheUpdateRecordOperation *)self recordName];
      v17 = [(HMDBackingStoreCacheUpdateRecordOperation *)self model];
      [v13 _updateRecordWithGroupID:v15 store:v8 name:v16 model:v17];
    }
    v10 = ;
  }

  return v10;
}

- (HMDBackingStoreCacheUpdateRecordOperation)initWithGroup:(id)a3 record:(id)a4 resultBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKey:@"k00"];
  v12 = [v11 integerValue];

  if (v12)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", v12];
    v14 = [v9 objectForKey:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      self = [(HMDBackingStoreCacheUpdateRecordOperation *)self initWithGroup:v8 name:0 record:v9 data:v16 encoding:v12 model:0 resultBlock:v10];
      v12 = self;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (HMDBackingStoreCacheUpdateRecordOperation)initWithGroup:(id)a3 name:(id)a4 record:(id)a5 data:(id)a6 encoding:(unint64_t)a7 model:(id)a8 resultBlock:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v31.receiver = self;
  v31.super_class = HMDBackingStoreCacheUpdateRecordOperation;
  v20 = [(HMDBackingStoreOperation *)&v31 initWithResultBlock:a9];
  group = v20->_group;
  v20->_group = v15;
  v22 = v15;

  recordName = v20->_recordName;
  v20->_recordName = v16;
  v24 = v16;

  record = v20->_record;
  v20->_record = v17;
  v26 = v17;

  data = v20->_data;
  v20->_data = v18;
  v28 = v18;

  v20->_encoding = a7;
  model = v20->_model;
  v20->_model = v19;

  return v20;
}

@end