@interface HMIGreedyClustering
+ (BOOL)addFaceObservations:(id)observations toFaceDescriptorBuffer:(void *)buffer error:(id *)error;
+ (float)faceDistanceFromDescriptor:(id)descriptor toDescriptor:(id)toDescriptor;
+ (id)centermostFaceprintInCluster:(id)cluster faceObservations:(id)observations;
- (HMIGreedyClustering)initWithFaceThreshold:(id)threshold singleLinkThreshold:(id)linkThreshold percentConnectionsThreshold:(id)connectionsThreshold error:(id *)error;
- (id).cxx_construct;
- (id)convertToClusters:(void *)clusters;
- (id)getClustersWithFaces:(id)faces error:(id *)error;
@end

@implementation HMIGreedyClustering

+ (BOOL)addFaceObservations:(id)observations toFaceDescriptorBuffer:(void *)buffer error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  observationsCopy = observations;
  v6 = [observationsCopy objectAtIndex:{0, error}];
  faceprint = [v6 faceprint];
  lengthInBytes = [faceprint lengthInBytes];

  homeai::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(buffer, [observationsCopy count], 1);
  std::vector<long long>::resize(buffer + 1, [observationsCopy count]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = observationsCopy;
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
        faceprint2 = [v14 faceprint];
        descriptorData = [faceprint2 descriptorData];

        DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(buffer, v11);
        v18 = descriptorData;
        memcpy(DataForKthDescriptor, [descriptorData bytes], lengthInBytes);
        homeai::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(buffer, v11, [v14 faceId]);

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

- (HMIGreedyClustering)initWithFaceThreshold:(id)threshold singleLinkThreshold:(id)linkThreshold percentConnectionsThreshold:(id)connectionsThreshold error:(id *)error
{
  thresholdCopy = threshold;
  linkThresholdCopy = linkThreshold;
  connectionsThresholdCopy = connectionsThreshold;
  v21.receiver = self;
  v21.super_class = HMIGreedyClustering;
  v13 = [(HMIGreedyClustering *)&v21 init];
  if (v13)
  {
    [thresholdCopy floatValue];
    if (v14 >= 0.0)
    {
      [linkThresholdCopy floatValue];
      if (v15 >= 0.0)
      {
        [thresholdCopy floatValue];
        [linkThresholdCopy floatValue];
        [connectionsThresholdCopy floatValue];
        std::allocate_shared[abi:ne200100]<homeai::clustering::GreedyClusterer,std::allocator<homeai::clustering::GreedyClusterer>,float,float,float,0>();
      }
    }

    v16 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1046];
    v17 = v16;
    if (error)
    {
      v18 = v16;
      *error = v17;
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

- (id)getClustersWithFaces:(id)faces error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  facesCopy = faces;
  if ([facesCopy count])
  {
    v7 = [facesCopy objectAtIndexedSubscript:0];
    v18 = 0;
    __p = 0;
    v13 = 0;
    v14 = 0;
    faceprint = [v7 faceprint];
    lengthInBytes = [faceprint lengthInBytes];
    homeai::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(v15, &__p, &v18, lengthInBytes, 0, 0);
    v16 = 1;
    v17 = 0;
    v15[0] = &unk_284053C80;
    v15[12] = (lengthInBytes >> 2);

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    v16 = 2;
    if ([objc_opt_class() addFaceObservations:facesCopy toFaceDescriptorBuffer:v15 error:error])
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      homeai::clustering::GreedyClusterer::performClustering(self->_greedyClusterer.__ptr_, v15);
    }

    array = 0;
    v15[0] = &unk_284053C80;
    free(v17);
    homeai::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v15);
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (id)convertToClusters:(void *)clusters
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = *clusters; i != *(clusters + 1); i += 2)
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
  allKeys = [v5 allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        v17 = objc_alloc_init(MEMORY[0x277CE2C10]);
        v18 = [v5 objectForKeyedSubscript:v16];
        [v17 setObjects:v18];
        [v17 setClusterId:{objc_msgSend(v16, "intValue")}];
        objects = [v17 objects];
        [v17 setTotalObjectCount:{objc_msgSend(objects, "count")}];

        [v17 setShouldUpdateRepresentative:0];
        [v4 addObject:v17];
      }

      v13 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  return v4;
}

+ (float)faceDistanceFromDescriptor:(id)descriptor toDescriptor:(id)toDescriptor
{
  descriptorCopy = descriptor;
  toDescriptorCopy = toDescriptor;
  v7 = [descriptorCopy length];
  if (v7 == [toDescriptorCopy length])
  {
    __C = 0.0;
    vDSP_dotpr([descriptorCopy bytes], 1, objc_msgSend(toDescriptorCopy, "bytes"), 1, &__C, 0x80uLL);
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

+ (id)centermostFaceprintInCluster:(id)cluster faceObservations:(id)observations
{
  v65 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  observationsCopy = observations;
  v50 = clusterCopy;
  objects = [clusterCopy objects];
  v7 = [objects count];

  if (!v7 || ![observationsCopy count] || (objc_msgSend(observationsCopy, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "faceprint"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    _HMFPreconditionFailure();
LABEL_33:
    __break(1u);
  }

  firstObject = [observationsCopy firstObject];
  faceprint = [firstObject faceprint];
  lengthInBytes = [faceprint lengthInBytes];

  v52 = lengthInBytes >> 2;
  objects4 = v48 - (((lengthInBytes & 0x3FFFFFFFCLL) + 15) & 0x7FFFFFFF0);
  v49 = 4 * (lengthInBytes >> 2);
  bzero(objects4, v49);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  objects2 = [v50 objects];
  v48[1] = v48;
  v51 = objects2;
  v14 = [objects2 countByEnumeratingWithState:&v59 objects:v64 count:16];
  v15 = (lengthInBytes >> 2) & 0x7FFFFFFF;
  if (!v14)
  {
    goto LABEL_14;
  }

  v16 = lengthInBytes >> 2;
  v17 = *v60;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v60 != v17)
      {
        objc_enumerationMutation(v51);
      }

      intValue = [*(*(&v59 + 1) + 8 * i) intValue];
      v20 = [observationsCopy objectAtIndexedSubscript:intValue];
      faceprint2 = [v20 faceprint];
      descriptorData = [faceprint2 descriptorData];
      v23 = descriptorData;
      bytes = [descriptorData bytes];

      faceprint3 = [v20 faceprint];
      LODWORD(faceprint2) = v16 == [faceprint3 lengthInBytes] >> 2;

      if (!faceprint2)
      {
        _HMFPreconditionFailure();
        goto LABEL_33;
      }

      v26 = v15;
      v27 = objects4;
      if (v52 >= 1)
      {
        do
        {
          v28 = *bytes++;
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
    v29 = objects4;
    do
    {
      v30 = *v29;
      objects3 = [v50 objects];
      *v29 = v30 / [objects3 count];

      ++v29;
      --v15;
    }

    while (v15);
  }

  v32 = [MEMORY[0x277CBEA90] dataWithBytes:objects4 length:v49];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  objects4 = [v50 objects];
  v33 = [objects4 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v33)
  {
    v34 = *v56;
    intValue3 = -1;
    v36 = 100000.0;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(objects4);
        }

        v38 = *(*(&v55 + 1) + 8 * j);
        intValue2 = [v38 intValue];
        v40 = [observationsCopy objectAtIndexedSubscript:intValue2];
        faceprint4 = [v40 faceprint];
        descriptorData2 = [faceprint4 descriptorData];

        [HMIGreedyClustering faceDistanceFromDescriptor:descriptorData2 toDescriptor:v32];
        v44 = v43;
        if (v43 < v36)
        {
          intValue3 = [v38 intValue];
          v36 = v44;
        }
      }

      v33 = [objects4 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v33);
    v45 = intValue3;
  }

  else
  {
    v45 = -1;
  }

  v46 = [observationsCopy objectAtIndexedSubscript:v45];

  return v46;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end