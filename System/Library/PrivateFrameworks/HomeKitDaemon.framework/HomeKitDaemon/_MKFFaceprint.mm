@interface _MKFFaceprint
- (MKFFaceprintDatabaseID)databaseID;
- (id)createHMFaceprint;
- (void)updateWithHMFaceprint:(id)a3;
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
  v3 = [(_MKFFaceprint *)self data];
  v4 = [(_MKFFaceprint *)self modelUUID];
  v5 = [(_MKFFaceprint *)self faceCropUUID];
  v6 = v5;
  if (v3 && v4 && v5)
  {
    v7 = objc_alloc(MEMORY[0x277CD1A38]);
    v8 = [(_MKFFaceprint *)self modelID];
    v9 = [v7 initWithUUID:v8 data:v3 modelUUID:v4 faceCropUUID:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDManagedObject *)v11 debugDescription];
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

- (void)updateWithHMFaceprint:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  [(_MKFFaceprint *)self setData:v5];

  v6 = [v4 modelUUID];
  [(_MKFFaceprint *)self setModelUUID:v6];

  v7 = [v4 faceCropUUID];

  [(_MKFFaceprint *)self setFaceCropUUID:v7];
}

@end