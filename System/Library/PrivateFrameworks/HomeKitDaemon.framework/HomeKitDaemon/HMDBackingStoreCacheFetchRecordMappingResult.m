@interface HMDBackingStoreCacheFetchRecordMappingResult
- (HMDBackingStoreCacheFetchRecordMappingResult)initWithGroup:(id)a3 recordName:(id)a4 uuid:(id)a5 parentUuid:(id)a6 type:(id)a7;
- (NSString)description;
@end

@implementation HMDBackingStoreCacheFetchRecordMappingResult

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v16 = [(HMDBackingStoreCacheFetchRecordMappingResult *)self group];
  v15 = [v16 zone];
  v4 = [v15 zoneName];
  v5 = [(HMDBackingStoreCacheFetchRecordMappingResult *)self group];
  v6 = [v5 rootRecordName];
  v7 = [(HMDBackingStoreCacheFetchRecordMappingResult *)self recordName];
  v8 = [(HMDBackingStoreCacheFetchRecordMappingResult *)self uuid];
  v9 = [v8 UUIDString];
  v10 = [(HMDBackingStoreCacheFetchRecordMappingResult *)self parentUuid];
  v11 = [v10 UUIDString];
  v12 = [(HMDBackingStoreCacheFetchRecordMappingResult *)self type];
  v13 = [v3 stringWithFormat:@"<Mapping: zone: %@  group: %@  name: %@  uuid: %@  parent uuid: %@ type: %@>", v4, v6, v7, v9, v11, v12];

  return v13;
}

- (HMDBackingStoreCacheFetchRecordMappingResult)initWithGroup:(id)a3 recordName:(id)a4 uuid:(id)a5 parentUuid:(id)a6 type:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = HMDBackingStoreCacheFetchRecordMappingResult;
  v17 = [(HMDBackingStoreCacheFetchRecordMappingResult *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_group, a3);
    objc_storeStrong(&v18->_recordName, a4);
    objc_storeStrong(&v18->_uuid, a5);
    objc_storeStrong(&v18->_parentUuid, a6);
    objc_storeStrong(&v18->_type, a7);
    v19 = v18;
  }

  return v18;
}

@end