@interface MKFLocalBulletinMatterRegistration
+ (id)fetchAllMatterRegistrationsForEndpointID:(id)d accessoryModelID:(id)iD managedObjectContext:(id)context;
+ (id)fetchMatterRegistrationForEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID eventID:(id)eventID accessoryModelID:(id)modelID managedObjectContext:(id)context;
@end

@implementation MKFLocalBulletinMatterRegistration

+ (id)fetchAllMatterRegistrationsForEndpointID:(id)d accessoryModelID:(id)iD managedObjectContext:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  if (!iDCopy)
  {
    goto LABEL_12;
  }

  v11 = contextCopy;
  [contextCopy hmd_assertIsExecuting];
  v12 = +[MKFLocalBulletinMatterRegistration fetchRequest];
  iDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) && (%K == %@)", @"endpointID", dCopy, @"accessoryModelID", iDCopy];
  [v12 setPredicate:iDCopy];

  v23 = 0;
  v14 = [v11 executeFetchRequest:v12 error:&v23];
  v15 = v23;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      v25 = v20;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = iDCopy;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local Matter registration for endpointID: %@ accessoryModelID: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)fetchMatterRegistrationForEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID eventID:(id)eventID accessoryModelID:(id)modelID managedObjectContext:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  eventIDCopy = eventID;
  modelIDCopy = modelID;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!iDCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!(attributeIDCopy | eventIDCopy))
  {
    goto LABEL_16;
  }

  if (!modelIDCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    _HMFPreconditionFailure();
  }

  v20 = contextCopy;
  [contextCopy hmd_assertIsExecuting];
  v21 = +[MKFLocalBulletinMatterRegistration fetchRequest];
  modelIDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@) && (%K == %@) && (%K == %@)", @"endpointID", dCopy, @"clusterID", iDCopy, @"attributeID", attributeIDCopy, @"eventID", eventIDCopy, @"accessoryModelID", modelIDCopy];
  [v21 setPredicate:modelIDCopy];

  v32 = 0;
  v23 = [v20 executeFetchRequest:v21 error:&v32];
  v24 = v32;
  if (v23)
  {
    firstObject = [v23 firstObject];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138544898;
      v34 = v29;
      v35 = 2112;
      v36 = dCopy;
      v37 = 2112;
      v38 = iDCopy;
      v39 = 2112;
      v40 = attributeIDCopy;
      v41 = 2112;
      v42 = eventIDCopy;
      v43 = 2112;
      v44 = modelIDCopy;
      v45 = 2112;
      v46 = v24;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local Matter registration for endpointID: %@ clusterID: %@ attributeID: %@ eventID: %@ accessoryModelID: %@ error: %@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(context);
    firstObject = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return firstObject;
}

@end