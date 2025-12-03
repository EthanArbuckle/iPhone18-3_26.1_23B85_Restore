@interface _MKFFaceprint
- (MKFFaceprintDatabaseID)databaseID;
- (id)createHMFaceprint;
- (void)updateWithHMFaceprint:(id)faceprint;
@end

@implementation _MKFFaceprint

- (MKFFaceprintDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFFaceprintDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)createHMFaceprint
{
  v21 = *MEMORY[0x277D85DE8];
  data = [(_MKFFaceprint *)self data];
  modelUUID = [(_MKFFaceprint *)self modelUUID];
  faceCropUUID = [(_MKFFaceprint *)self faceCropUUID];
  v6 = faceCropUUID;
  if (data && modelUUID && faceCropUUID)
  {
    v7 = objc_alloc(MEMORY[0x277CD1A38]);
    modelID = [(_MKFFaceprint *)self modelID];
    v9 = [v7 initWithUUID:modelID data:data modelUUID:modelUUID faceCropUUID:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDManagedObject *)selfCopy debugDescription];
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot create faceprint from _MKFFaceprint: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)updateWithHMFaceprint:(id)faceprint
{
  faceprintCopy = faceprint;
  data = [faceprintCopy data];
  [(_MKFFaceprint *)self setData:data];

  modelUUID = [faceprintCopy modelUUID];
  [(_MKFFaceprint *)self setModelUUID:modelUUID];

  faceCropUUID = [faceprintCopy faceCropUUID];

  [(_MKFFaceprint *)self setFaceCropUUID:faceCropUUID];
}

@end