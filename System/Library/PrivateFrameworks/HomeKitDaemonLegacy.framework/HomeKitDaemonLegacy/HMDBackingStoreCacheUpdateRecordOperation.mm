@interface HMDBackingStoreCacheUpdateRecordOperation
- (HMDBackingStoreCacheUpdateRecordOperation)initWithGroup:(id)group name:(id)name record:(id)record data:(id)data encoding:(unint64_t)encoding model:(id)model resultBlock:(id)block;
- (HMDBackingStoreCacheUpdateRecordOperation)initWithGroup:(id)group record:(id)record resultBlock:(id)block;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheUpdateRecordOperation

- (id)mainReturningError
{
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  store2 = [(HMDBackingStoreOperation *)self store];
  uuid = [store2 uuid];
  uUIDString = [uuid UUIDString];
  v19 = 0;
  v8 = [local _fetchIDForStore:uUIDString error:&v19];
  v9 = v19;

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    record = [(HMDBackingStoreCacheUpdateRecordOperation *)self record];

    store3 = [(HMDBackingStoreOperation *)self store];
    local2 = [store3 local];
    group = [(HMDBackingStoreCacheUpdateRecordOperation *)self group];
    groupID = [group groupID];
    if (record)
    {
      record2 = [(HMDBackingStoreCacheUpdateRecordOperation *)self record];
      data = [(HMDBackingStoreCacheUpdateRecordOperation *)self data];
      [local2 _updateRecordWithGroupID:groupID store:v8 record:record2 data:data encoding:{-[HMDBackingStoreCacheUpdateRecordOperation encoding](self, "encoding")}];
    }

    else
    {
      record2 = [(HMDBackingStoreCacheUpdateRecordOperation *)self recordName];
      data = [(HMDBackingStoreCacheUpdateRecordOperation *)self model];
      [local2 _updateRecordWithGroupID:groupID store:v8 name:record2 model:data];
    }
    v10 = ;
  }

  return v10;
}

- (HMDBackingStoreCacheUpdateRecordOperation)initWithGroup:(id)group record:(id)record resultBlock:(id)block
{
  groupCopy = group;
  recordCopy = record;
  blockCopy = block;
  v11 = [recordCopy objectForKey:@"k00"];
  selfCopy = [v11 integerValue];

  if (selfCopy)
  {
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"k%02lu", selfCopy];
    v14 = [recordCopy objectForKey:selfCopy];

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
      self = [(HMDBackingStoreCacheUpdateRecordOperation *)self initWithGroup:groupCopy name:0 record:recordCopy data:v16 encoding:selfCopy model:0 resultBlock:blockCopy];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (HMDBackingStoreCacheUpdateRecordOperation)initWithGroup:(id)group name:(id)name record:(id)record data:(id)data encoding:(unint64_t)encoding model:(id)model resultBlock:(id)block
{
  groupCopy = group;
  nameCopy = name;
  recordCopy = record;
  dataCopy = data;
  modelCopy = model;
  v31.receiver = self;
  v31.super_class = HMDBackingStoreCacheUpdateRecordOperation;
  v20 = [(HMDBackingStoreOperation *)&v31 initWithResultBlock:block];
  group = v20->_group;
  v20->_group = groupCopy;
  v22 = groupCopy;

  recordName = v20->_recordName;
  v20->_recordName = nameCopy;
  v24 = nameCopy;

  record = v20->_record;
  v20->_record = recordCopy;
  v26 = recordCopy;

  data = v20->_data;
  v20->_data = dataCopy;
  v28 = dataCopy;

  v20->_encoding = encoding;
  model = v20->_model;
  v20->_model = modelCopy;

  return v20;
}

@end