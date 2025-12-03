@interface HMDBackingStoreCacheFetchRecordResult
- (HMDBackingStoreCacheFetchRecordResult)initWithGroup:(id)group record:(id)record data:(id)data encoding:(unint64_t)encoding uuid:(id)uuid;
- (id)description;
@end

@implementation HMDBackingStoreCacheFetchRecordResult

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  group = [(HMDBackingStoreCacheFetchRecordResult *)self group];
  v4 = [group zone];
  zoneName = [v4 zoneName];
  group2 = [(HMDBackingStoreCacheFetchRecordResult *)self group];
  rootRecordName = [group2 rootRecordName];
  record = [(HMDBackingStoreCacheFetchRecordResult *)self record];
  recordID = [record recordID];
  recordName = [recordID recordName];
  encoding = [(HMDBackingStoreCacheFetchRecordResult *)self encoding];
  data = [(HMDBackingStoreCacheFetchRecordResult *)self data];
  v13 = [v15 stringWithFormat:@"<Record: zone: %@  group: %@  record.recordName: %@  encoding: %lu data: <%lu bytes>>", zoneName, rootRecordName, recordName, encoding, objc_msgSend(data, "length")];

  return v13;
}

- (HMDBackingStoreCacheFetchRecordResult)initWithGroup:(id)group record:(id)record data:(id)data encoding:(unint64_t)encoding uuid:(id)uuid
{
  groupCopy = group;
  recordCopy = record;
  dataCopy = data;
  uuidCopy = uuid;
  v21.receiver = self;
  v21.super_class = HMDBackingStoreCacheFetchRecordResult;
  v17 = [(HMDBackingStoreCacheFetchRecordResult *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_group, group);
    objc_storeStrong(&v18->_record, record);
    objc_storeStrong(&v18->_data, data);
    v18->_encoding = encoding;
    objc_storeStrong(&v18->_uuid, uuid);
    v19 = v18;
  }

  return v18;
}

@end