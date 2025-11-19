@interface HMIGreedyClustering
+ (BOOL)addFaceObservations:(id)a3 toFaceDescriptorBuffer:(void *)a4 error:(id *)a5;
+ (float)faceDistanceFromDescriptor:(id)a3 toDescriptor:(id)a4;
+ (id)centermostFaceprintInCluster:(id)a3 faceObservations:(id)a4;
- (HMIGreedyClustering)initWithFaceThreshold:(id)a3 singleLinkThreshold:(id)a4 percentConnectionsThreshold:(id)a5 error:(id *)a6;
- (id).cxx_construct;
- (id)convertToClusters:(void *)a3;
- (id)getClustersWithFaces:(id)a3 error:(id *)a4;
@end

@implementation HMIGreedyClustering

+ (BOOL)addFaceObservations:(id)a3 toFaceDescriptorBuffer:(void *)a4 error:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v6 = [v21 objectAtIndex:{0, a5}];
  v7 = [v6 faceprint];
  v8 = [v7 lengthInBytes];

  homeai::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(a4, [v21 count], 1);
  std::vector<long long>::resize(a4 + 1, [v21 count]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v21;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    LODWORD(v11) = 0;
    v12 = *v23;
    do
    {
      v13 = 0;
      v11 = v11;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = [v14 faceprint];
        v16 = [v15 descriptorData];

        DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a4, v11);
        v18 = v16;
        memcpy(DataForKthDescriptor, [v16 bytes], v8);
        homeai::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(a4, v11, [v14 faceId]);

        ++v13;
        ++v11;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  return 1;
}

- (HMIGreedyClustering)initWithFaceThreshold:(id)a3 singleLinkThreshold:(id)a4 percentConnectionsThreshold:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = HMIGreedyClustering;
  v13 = [(HMIGreedyClustering *)&v21 init];
  if (v13)
  {
    [v10 floatValue];
    if (v14 >= 0.0)
    {
      [v11 floatValue];
      if (v15 >= 0.0)
      {
        [v10 floatValue];
        [v11 floatValue];
        [v12 floatValue];
        std::allocate_shared[abi:ne200100]<homeai::clustering::GreedyClusterer,std::allocator<homeai::clustering::GreedyClusterer>,float,float,float,0>();
      }
    }

    v16 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1046];
    v17 = v16;
    if (a6)
    {
      v18 = v16;
      *a6 = v17;
    }

    HMIErrorLog(v13, v17);

    v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)getClustersWithFaces:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v18 = 0;
    __p = 0;
    v13 = 0;
    v14 = 0;
    v8 = [v7 faceprint];
    v9 = [v8 lengthInBytes];
    homeai::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(v15, &__p, &v18, v9, 0, 0);
    v16 = 1;
    v17 = 0;
    v15[0] = &unk_284053C80;
    v15[12] = (v9 >> 2);

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    v16 = 2;
    if ([objc_opt_class() addFaceObservations:v6 toFaceDescriptorBuffer:v15 error:a4])
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      homeai::clustering::GreedyClusterer::performClustering(self->_greedyClusterer.__ptr_, v15);
    }

    v10 = 0;
    v15[0] = &unk_284053C80;
    free(v17);
    homeai::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v15);
  }

  else
  {
    v10 = [MEMORY[0x277CBEA60] array];
  }

  return v10;
}

- (id)convertToClusters:(void *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = *a3; i != *(a3 + 1); i += 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:i[1]];
    v8 = [v5 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:*i];
      [v8 addObject:v9];
    }

    else
    {
      v10 = MEMORY[0x277CBEB18];
      v11 = [MEMORY[0x277CCABB0] numberWithLongLong:*i];
      v8 = [v10 arrayWithObject:v11];

      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:i[1]];
      [v5 setObject:v8 forKeyedSubscript:v9];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v5 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        v17 = objc_alloc_init(MEMORY[0x277CE2C10]);
        v18 = [v5 objectForKeyedSubscript:v16];
        [v17 setObjects:v18];
        [v17 setClusterId:{objc_msgSend(v16, "intValue")}];
        v19 = [v17 objects];
        [v17 setTotalObjectCount:{objc_msgSend(v19, "count")}];

        [v17 setShouldUpdateRepresentative:0];
        [v4 addObject:v17];
      }

      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  return v4;
}

+ (float)faceDistanceFromDescriptor:(id)a3 toDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  if (v7 == [v6 length])
  {
    __C = 0.0;
    vDSP_dotpr([v5 bytes], 1, objc_msgSend(v6, "bytes"), 1, &__C, 0x80uLL);
    v8 = 1.0 - __C;

    return v8;
  }

  else
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

+ (id)centermostFaceprintInCluster:(id)a3 faceObservations:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v54 = a4;
  v50 = v5;
  v6 = [v5 objects];
  v7 = [v6 count];

  if (!v7 || ![v54 count] || (objc_msgSend(v54, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "faceprint"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    _HMFPreconditionFailure();
LABEL_33:
    __break(1u);
  }

  v10 = [v54 firstObject];
  v11 = [v10 faceprint];
  v12 = [v11 lengthInBytes];

  v52 = v12 >> 2;
  v53 = v48 - (((v12 & 0x3FFFFFFFCLL) + 15) & 0x7FFFFFFF0);
  v49 = 4 * (v12 >> 2);
  bzero(v53, v49);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = [v50 objects];
  v48[1] = v48;
  v51 = v13;
  v14 = [v13 countByEnumeratingWithState:&v59 objects:v64 count:16];
  v15 = (v12 >> 2) & 0x7FFFFFFF;
  if (!v14)
  {
    goto LABEL_14;
  }

  v16 = v12 >> 2;
  v17 = *v60;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v60 != v17)
      {
        objc_enumerationMutation(v51);
      }

      v19 = [*(*(&v59 + 1) + 8 * i) intValue];
      v20 = [v54 objectAtIndexedSubscript:v19];
      v21 = [v20 faceprint];
      v22 = [v21 descriptorData];
      v23 = v22;
      v24 = [v22 bytes];

      v25 = [v20 faceprint];
      LODWORD(v21) = v16 == [v25 lengthInBytes] >> 2;

      if (!v21)
      {
        _HMFPreconditionFailure();
        goto LABEL_33;
      }

      v26 = v15;
      v27 = v53;
      if (v52 >= 1)
      {
        do
        {
          v28 = *v24++;
          *v27 = v28 + *v27;
          ++v27;
          --v26;
        }

        while (v26);
      }
    }

    v14 = [v51 countByEnumeratingWithState:&v59 objects:v64 count:16];
  }

  while (v14);
LABEL_14:

  if (v52 >= 1)
  {
    v29 = v53;
    do
    {
      v30 = *v29;
      v31 = [v50 objects];
      *v29 = v30 / [v31 count];

      ++v29;
      --v15;
    }

    while (v15);
  }

  v32 = [MEMORY[0x277CBEA90] dataWithBytes:v53 length:v49];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = [v50 objects];
  v33 = [v53 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v33)
  {
    v34 = *v56;
    v35 = -1;
    v36 = 100000.0;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(v53);
        }

        v38 = *(*(&v55 + 1) + 8 * j);
        v39 = [v38 intValue];
        v40 = [v54 objectAtIndexedSubscript:v39];
        v41 = [v40 faceprint];
        v42 = [v41 descriptorData];

        [HMIGreedyClustering faceDistanceFromDescriptor:v42 toDescriptor:v32];
        v44 = v43;
        if (v43 < v36)
        {
          v35 = [v38 intValue];
          v36 = v44;
        }
      }

      v33 = [v53 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v33);
    v45 = v35;
  }

  else
  {
    v45 = -1;
  }

  v46 = [v54 objectAtIndexedSubscript:v45];

  return v46;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end