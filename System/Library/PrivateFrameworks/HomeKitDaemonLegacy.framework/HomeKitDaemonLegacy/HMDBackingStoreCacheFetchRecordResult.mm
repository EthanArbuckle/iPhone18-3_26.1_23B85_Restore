@interface HMDBackingStoreCacheFetchRecordResult
- (HMDBackingStoreCacheFetchRecordResult)initWithGroup:(id)a3 record:(id)a4 data:(id)a5 encoding:(unint64_t)a6 uuid:(id)a7;
- (id)description;
@end

@implementation HMDBackingStoreCacheFetchRecordResult

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = [(HMDBackingStoreCacheFetchRecordResult *)self group];
  v4 = [v3 zone];
  v5 = [v4 zoneName];
  v6 = [(HMDBackingStoreCacheFetchRecordResult *)self group];
  v7 = [v6 rootRecordName];
  v8 = [(HMDBackingStoreCacheFetchRecordResult *)self record];
  v9 = [v8 recordID];
  v10 = [v9 recordName];
  v11 = [(HMDBackingStoreCacheFetchRecordResult *)self encoding];
  v12 = [(HMDBackingStoreCacheFetchRecordResult *)self data];
  v13 = [v15 stringWithFormat:@"<Record: zone: %@  group: %@  record.recordName: %@  encoding: %lu data: <%lu bytes>>", v5, v7, v10, v11, objc_msgSend(v12, "length")];

  return v13;
}

- (HMDBackingStoreCacheFetchRecordResult)initWithGroup:(id)a3 record:(id)a4 data:(id)a5 encoding:(unint64_t)a6 uuid:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HMDBackingStoreCacheFetchRecordResult;
  v17 = [(HMDBackingStoreCacheFetchRecordResult *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_group, a3);
    objc_storeStrong(&v18->_record, a4);
    objc_storeStrong(&v18->_data, a5);
    v18->_encoding = a6;
    objc_storeStrong(&v18->_uuid, a7);
    v19 = v18;
  }

  return v18;
}

@end