@interface HMDFaceCropModel
+ (HMBModelInfiniteQuery)faceCropsForPersonUUIDQuery;
+ (HMBModelInfiniteQuery)faceCropsWithUnassociatedFaceCropUUIDQuery;
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
+ (id)hmbQueries;
- (CGRect)faceBoundingBox;
- (HMDFaceCropModel)initWithPersonFaceCrop:(id)crop;
- (id)createPersonFaceCrop;
- (int64_t)source;
- (void)setFaceBoundingBox:(CGRect)box;
- (void)setSource:(int64_t)source;
@end

@implementation HMDFaceCropModel

+ (HMBModelInfiniteQuery)faceCropsWithUnassociatedFaceCropUUIDQuery
{
  if (faceCropsWithUnassociatedFaceCropUUIDQuery_onceToken != -1)
  {
    dispatch_once(&faceCropsWithUnassociatedFaceCropUUIDQuery_onceToken, &__block_literal_global_44);
  }

  v3 = faceCropsWithUnassociatedFaceCropUUIDQuery_query;

  return v3;
}

void __62__HMDFaceCropModel_faceCropsWithUnassociatedFaceCropUUIDQuery__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v6 = @"unassociatedFaceCropUUID";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"unassociatedFaceCropUUID"];
  v7[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 queryWithSQLPredicate:@"unassociatedFaceCropUUID == :unassociatedFaceCropUUID" sequenceArgumentName:@"unassociatedFaceCropUUID" indexedProperties:&unk_283E754B8 arguments:v2];
  v4 = faceCropsWithUnassociatedFaceCropUUIDQuery_query;
  faceCropsWithUnassociatedFaceCropUUIDQuery_query = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (HMBModelInfiniteQuery)faceCropsForPersonUUIDQuery
{
  if (faceCropsForPersonUUIDQuery_onceToken != -1)
  {
    dispatch_once(&faceCropsForPersonUUIDQuery_onceToken, &__block_literal_global_37);
  }

  v3 = faceCropsForPersonUUIDQuery_query;

  return v3;
}

void __47__HMDFaceCropModel_faceCropsForPersonUUIDQuery__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v6 = @"personUUID";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"personUUID"];
  v7[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 queryWithSQLPredicate:@"personUUID == :personUUID" sequenceArgumentName:@"personUUID" indexedProperties:&unk_283E754A0 arguments:v2];
  v4 = faceCropsForPersonUUIDQuery_query;
  faceCropsForPersonUUIDQuery_query = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken, &__block_literal_global_32);
  }

  v3 = sentinelParentUUID_sentinelParentUUID;

  return v3;
}

void __38__HMDFaceCropModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C8C08B78-9E10-41CD-AC46-E879D4DF6FFA"];
  v1 = sentinelParentUUID_sentinelParentUUID;
  sentinelParentUUID_sentinelParentUUID = v0;
}

+ (id)hmbQueries
{
  v8[2] = *MEMORY[0x277D85DE8];
  faceCropsForPersonUUIDQuery = [self faceCropsForPersonUUIDQuery];
  v8[0] = faceCropsForPersonUUIDQuery;
  faceCropsWithUnassociatedFaceCropUUIDQuery = [self faceCropsWithUnassociatedFaceCropUUIDQuery];
  v8[1] = faceCropsWithUnassociatedFaceCropUUIDQuery;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken != -1)
  {
    dispatch_once(&hmbProperties_onceToken, &__block_literal_global_553);
  }

  v3 = hmbProperties_properties;

  return v3;
}

void __33__HMDFaceCropModel_hmbProperties__block_invoke()
{
  v27[7] = *MEMORY[0x277D85DE8];
  v26[0] = @"dataRepresentation";
  v22 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v27[0] = v22;
  v26[1] = @"dateCreated";
  v21 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v27[1] = v21;
  v26[2] = @"faceBoundingBoxData";
  v20 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v27[2] = v20;
  v26[3] = @"person";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v19 = [MEMORY[0x277D170C0] externalRecordField:@"r00"];
  v25[0] = v19;
  v18 = [MEMORY[0x277D170C0] queryableField];
  v25[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v16 = [v0 fieldWithClass:v1 options:v17];
  v27[3] = v16;
  v26[4] = @"personUUID";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277D170C0] queryableField];
  v24 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v6 = [v2 fieldWithClass:v3 options:v5];
  v27[4] = v6;
  v26[5] = @"unassociatedFaceCropUUID";
  v7 = MEMORY[0x277D170B8];
  v8 = objc_opt_class();
  v9 = [MEMORY[0x277D170C0] queryableField];
  v23 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v11 = [v7 fieldWithClass:v8 options:v10];
  v27[5] = v11;
  v26[6] = @"sourceField";
  v12 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v27[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];
  v14 = hmbProperties_properties;
  hmbProperties_properties = v13;

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setSource:(int64_t)source
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  [(HMDFaceCropModel *)self setSourceField:v4];
}

- (int64_t)source
{
  sourceField = [(HMDFaceCropModel *)self sourceField];
  if (sourceField)
  {
    sourceField2 = [(HMDFaceCropModel *)self sourceField];
    integerValue = [sourceField2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setFaceBoundingBox:(CGRect)box
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAE60] valueWithRect:{box.origin.x, box.origin.y, box.size.width, box.size.height}];
  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (v5)
  {
    [(HMDFaceCropModel *)self setFaceBoundingBoxData:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not serialize face bounding box value %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (CGRect)faceBoundingBox
{
  v28 = *MEMORY[0x277D85DE8];
  faceBoundingBoxData = [(HMDFaceCropModel *)self faceBoundingBoxData];
  if (faceBoundingBoxData)
  {
    v23 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:faceBoundingBoxData error:&v23];
    v5 = v23;
    if (v4)
    {
      [v4 rectValue];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v17;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not deserialize face bounding box value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v7 = *MEMORY[0x277CBF3A0];
      v9 = *(MEMORY[0x277CBF3A0] + 8);
      v11 = *(MEMORY[0x277CBF3A0] + 16);
      v13 = *(MEMORY[0x277CBF3A0] + 24);
    }
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v18 = *MEMORY[0x277D85DE8];
  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)createPersonFaceCrop
{
  v25 = *MEMORY[0x277D85DE8];
  dataRepresentation = [(HMDFaceCropModel *)self dataRepresentation];
  dateCreated = [(HMDFaceCropModel *)self dateCreated];
  personUUID = [(HMDFaceCropModel *)self personUUID];
  v6 = personUUID;
  if (personUUID)
  {
    hmbModelID = personUUID;
  }

  else
  {
    person = [(HMDFaceCropModel *)self person];
    hmbModelID = [person hmbModelID];
  }

  if (dataRepresentation && dateCreated && hmbModelID)
  {
    v9 = objc_alloc(MEMORY[0x277CD1C78]);
    hmbModelID2 = [(HMBModel *)self hmbModelID];
    [(HMDFaceCropModel *)self faceBoundingBox];
    v11 = [v9 initWithUUID:hmbModelID2 dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:hmbModelID personUUID:?];

    unassociatedFaceCropUUID = [(HMDFaceCropModel *)self unassociatedFaceCropUUID];
    [v11 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

    [v11 setSource:{-[HMDFaceCropModel source](self, "source")}];
    v13 = [v11 copy];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [(HMBModel *)selfCopy debugDescription];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot create person face crop from model: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMDFaceCropModel)initWithPersonFaceCrop:(id)crop
{
  cropCopy = crop;
  uUID = [cropCopy UUID];
  sentinelParentUUID = [objc_opt_class() sentinelParentUUID];
  v7 = [(HMBModel *)self initWithModelID:uUID parentModelID:sentinelParentUUID];

  dataRepresentation = [cropCopy dataRepresentation];
  [(HMDFaceCropModel *)v7 setDataRepresentation:dataRepresentation];

  dateCreated = [cropCopy dateCreated];
  [(HMDFaceCropModel *)v7 setDateCreated:dateCreated];

  [cropCopy faceBoundingBox];
  [(HMDFaceCropModel *)v7 setFaceBoundingBox:?];
  personUUID = [cropCopy personUUID];
  [(HMDFaceCropModel *)v7 setPersonUUID:personUUID];

  unassociatedFaceCropUUID = [cropCopy unassociatedFaceCropUUID];
  [(HMDFaceCropModel *)v7 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

  source = [cropCopy source];
  [(HMDFaceCropModel *)v7 setSource:source];

  return v7;
}

@end