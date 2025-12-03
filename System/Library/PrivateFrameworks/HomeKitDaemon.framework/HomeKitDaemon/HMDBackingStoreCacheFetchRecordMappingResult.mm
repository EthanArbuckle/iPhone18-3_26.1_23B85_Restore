@interface HMDBackingStoreCacheFetchRecordMappingResult
- (HMDBackingStoreCacheFetchRecordMappingResult)initWithGroup:(id)group recordName:(id)name uuid:(id)uuid parentUuid:(id)parentUuid type:(id)type;
- (NSString)description;
@end

@implementation HMDBackingStoreCacheFetchRecordMappingResult

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  group = [(HMDBackingStoreCacheFetchRecordMappingResult *)self group];
  v15 = [group zone];
  zoneName = [v15 zoneName];
  group2 = [(HMDBackingStoreCacheFetchRecordMappingResult *)self group];
  rootRecordName = [group2 rootRecordName];
  recordName = [(HMDBackingStoreCacheFetchRecordMappingResult *)self recordName];
  uuid = [(HMDBackingStoreCacheFetchRecordMappingResult *)self uuid];
  uUIDString = [uuid UUIDString];
  parentUuid = [(HMDBackingStoreCacheFetchRecordMappingResult *)self parentUuid];
  uUIDString2 = [parentUuid UUIDString];
  type = [(HMDBackingStoreCacheFetchRecordMappingResult *)self type];
  v13 = [v3 stringWithFormat:@"<Mapping: zone: %@  group: %@  name: %@  uuid: %@  parent uuid: %@ type: %@>", zoneName, rootRecordName, recordName, uUIDString, uUIDString2, type];

  return v13;
}

- (HMDBackingStoreCacheFetchRecordMappingResult)initWithGroup:(id)group recordName:(id)name uuid:(id)uuid parentUuid:(id)parentUuid type:(id)type
{
  groupCopy = group;
  nameCopy = name;
  uuidCopy = uuid;
  parentUuidCopy = parentUuid;
  typeCopy = type;
  v22.receiver = self;
  v22.super_class = HMDBackingStoreCacheFetchRecordMappingResult;
  v17 = [(HMDBackingStoreCacheFetchRecordMappingResult *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_group, group);
    objc_storeStrong(&v18->_recordName, name);
    objc_storeStrong(&v18->_uuid, uuid);
    objc_storeStrong(&v18->_parentUuid, parentUuid);
    objc_storeStrong(&v18->_type, type);
    v19 = v18;
  }

  return v18;
}

@end