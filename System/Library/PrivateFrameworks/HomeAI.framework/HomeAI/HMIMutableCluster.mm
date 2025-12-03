@interface HMIMutableCluster
- (HMIMutableCluster)initWithFaceprint:(id)faceprint;
- (HMIMutableCluster)initWithTorsoprint:(id)torsoprint;
- (NSMutableArray)faceprintUUIDs;
- (NSMutableArray)torsoprintUUIDs;
- (NSMutableSet)linkedEntityUUIDs;
- (void)addFaceprints:(id)faceprints;
- (void)addTorsoprints:(id)torsoprints;
- (void)flushTorsoprints;
@end

@implementation HMIMutableCluster

- (HMIMutableCluster)initWithFaceprint:(id)faceprint
{
  faceprintCopy = faceprint;
  v25.receiver = self;
  v25.super_class = HMIMutableCluster;
  v5 = [(HMIMutableCluster *)&v25 init];
  if (v5)
  {
    v6 = [HMIMutableFloatArray alloc];
    data = [faceprintCopy data];
    v8 = [(HMIMutableFloatArray *)v6 initWithData:data];
    faceCentroid = v5->_faceCentroid;
    v5->_faceCentroid = v8;

    v10 = [HMIMutableFloatArray alloc];
    faceCentroid = [(HMIMutableCluster *)v5 faceCentroid];
    v12 = -[HMIMutableFloatArray initWithValue:count:](v10, "initWithValue:count:", [faceCentroid count], 0.0);
    torsoCentroid = v5->_torsoCentroid;
    v5->_torsoCentroid = v12;

    v14 = MEMORY[0x277CBEB18];
    uUID = [faceprintCopy UUID];
    v16 = [v14 arrayWithObject:uUID];
    faceprintUUIDs = v5->_faceprintUUIDs;
    v5->_faceprintUUIDs = v16;

    array = [MEMORY[0x277CBEB18] array];
    torsoprintUUIDs = v5->_torsoprintUUIDs;
    v5->_torsoprintUUIDs = array;

    v20 = [MEMORY[0x277CBEB58] set];
    linkedEntityUUIDs = v5->_linkedEntityUUIDs;
    v5->_linkedEntityUUIDs = v20;

    array2 = [MEMORY[0x277CBEB18] array];
    torsoprints = v5->_torsoprints;
    v5->_torsoprints = array2;
  }

  return v5;
}

- (HMIMutableCluster)initWithTorsoprint:(id)torsoprint
{
  torsoprintCopy = torsoprint;
  v25.receiver = self;
  v25.super_class = HMIMutableCluster;
  v5 = [(HMIMutableCluster *)&v25 init];
  if (v5)
  {
    v6 = [HMIMutableFloatArray alloc];
    data = [torsoprintCopy data];
    v8 = [(HMIMutableFloatArray *)v6 initWithData:data];
    torsoCentroid = v5->_torsoCentroid;
    v5->_torsoCentroid = v8;

    v10 = [HMIMutableFloatArray alloc];
    torsoCentroid = [(HMIMutableCluster *)v5 torsoCentroid];
    v12 = -[HMIMutableFloatArray initWithValue:count:](v10, "initWithValue:count:", [torsoCentroid count], 0.0);
    faceCentroid = v5->_faceCentroid;
    v5->_faceCentroid = v12;

    array = [MEMORY[0x277CBEB18] array];
    faceprintUUIDs = v5->_faceprintUUIDs;
    v5->_faceprintUUIDs = array;

    v16 = MEMORY[0x277CBEB18];
    uUID = [torsoprintCopy UUID];
    v18 = [v16 arrayWithObject:uUID];
    torsoprintUUIDs = v5->_torsoprintUUIDs;
    v5->_torsoprintUUIDs = v18;

    v20 = [MEMORY[0x277CBEB58] set];
    linkedEntityUUIDs = v5->_linkedEntityUUIDs;
    v5->_linkedEntityUUIDs = v20;

    if ([torsoprintCopy lowQuality] & 1) != 0 || (objc_msgSend(torsoprintCopy, "unrecognizable"))
    {
      array2 = [MEMORY[0x277CBEB18] array];
    }

    else
    {
      array2 = [MEMORY[0x277CBEB18] arrayWithObject:torsoprintCopy];
    }

    torsoprints = v5->_torsoprints;
    v5->_torsoprints = array2;
  }

  return v5;
}

- (NSMutableArray)faceprintUUIDs
{
  v2 = [(NSMutableArray *)self->_faceprintUUIDs copy];

  return v2;
}

- (NSMutableArray)torsoprintUUIDs
{
  v2 = [(NSMutableArray *)self->_torsoprintUUIDs copy];

  return v2;
}

- (NSMutableSet)linkedEntityUUIDs
{
  v2 = [(NSMutableSet *)self->_linkedEntityUUIDs copy];

  return v2;
}

- (void)addFaceprints:(id)faceprints
{
  v26 = *MEMORY[0x277D85DE8];
  faceprintsCopy = faceprints;
  v5 = [(HMIMutableFloatArray *)self->_faceCentroid copy];
  *&v6 = [(HMIMutableCluster *)self faceCount];
  [v5 scale:v6];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = faceprintsCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [HMIMutableFloatArray alloc];
        data = [v11 data];
        v14 = [(HMIMutableFloatArray *)v12 initWithData:data];

        [v5 add:v14];
        faceprintUUIDs = self->_faceprintUUIDs;
        uUID = [v11 UUID];
        [(NSMutableArray *)faceprintUUIDs addObject:uUID];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  *&v17 = 1.0 / [(HMIMutableCluster *)self faceCount];
  v18 = [v5 floatArrayByScaling:v17];
  faceCentroid = self->_faceCentroid;
  self->_faceCentroid = v18;
}

- (void)addTorsoprints:(id)torsoprints
{
  v27 = *MEMORY[0x277D85DE8];
  torsoprintsCopy = torsoprints;
  v5 = [(HMIMutableFloatArray *)self->_torsoCentroid copy];
  *&v6 = [(HMIMutableCluster *)self torsoCount];
  [v5 scale:v6];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = torsoprintsCopy;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [HMIMutableFloatArray alloc];
        data = [v11 data];
        v14 = [(HMIMutableFloatArray *)v12 initWithData:data];

        [v5 add:v14];
        torsoprintUUIDs = self->_torsoprintUUIDs;
        uUID = [v11 UUID];
        [(NSMutableArray *)torsoprintUUIDs addObject:uUID];
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  *&v17 = 1.0 / [(HMIMutableCluster *)self torsoCount];
  v18 = [v5 floatArrayByScaling:v17];
  torsoCentroid = self->_torsoCentroid;
  self->_torsoCentroid = v18;

  v20 = [obj na_filter:&__block_literal_global_0];
  [(NSMutableArray *)self->_torsoprints addObjectsFromArray:v20];
  if ([(NSMutableArray *)self->_torsoprints count]>= 0x15)
  {
    [(NSMutableArray *)self->_torsoprints removeObjectsInRange:0, [(NSMutableArray *)self->_torsoprints count]- 20];
  }
}

uint64_t __36__HMIMutableCluster_addTorsoprints___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 lowQuality])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 unrecognizable] ^ 1;
  }

  return v3;
}

- (void)flushTorsoprints
{
  self->_torsoprints = [MEMORY[0x277CBEB18] array];

  MEMORY[0x2821F96F8]();
}

@end