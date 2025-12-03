@interface HMDDataStreamFragmentAssembler
- (BOOL)addFragmentChunk:(id)chunk error:(id *)error;
- (HMDDataStreamFragmentAssembler)initWithSequenceNumber:(id)number type:(id)type;
- (id)attributeDescriptions;
@end

@implementation HMDDataStreamFragmentAssembler

- (BOOL)addFragmentChunk:(id)chunk error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  chunkCopy = chunk;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v42 = 138543618;
    v43 = v10;
    v44 = 2112;
    v45 = chunkCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Adding chunk: %@", &v42, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  assembledFragment = [(HMDDataStreamFragmentAssembler *)selfCopy assembledFragment];

  if (assembledFragment)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v42 = 138543618;
      v43 = v15;
      v44 = 2112;
      v45 = chunkCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Asked to add fragment chunk %@ but the last data chunk has already been received", &v42, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = 1;
LABEL_18:
      [v16 errorWithDomain:@"HMDDataStreamFragmentAssemblerErrorDomain" code:v17 userInfo:0];
      *error = v30 = 0;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  currentChunkSequenceNumber = [(HMDDataStreamFragmentAssembler *)selfCopy currentChunkSequenceNumber];
  unsignedLongLongValue = [currentChunkSequenceNumber unsignedLongLongValue];

  sequenceNumber = [chunkCopy sequenceNumber];
  unsignedLongLongValue2 = [sequenceNumber unsignedLongLongValue];

  if (unsignedLongLongValue2 != unsignedLongLongValue + 1)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      currentChunkSequenceNumber2 = [(HMDDataStreamFragmentAssembler *)v32 currentChunkSequenceNumber];
      v42 = 138543874;
      v43 = v34;
      v44 = 2112;
      v45 = chunkCopy;
      v46 = 2112;
      v47 = currentChunkSequenceNumber2;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Asked to add fragment chunk %@ with non-sequential sequence number compared to current stream data chunk sequence number %@", &v42, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    if (error)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = 2;
      goto LABEL_18;
    }

LABEL_23:
    v30 = 0;
    goto LABEL_24;
  }

  if (unsignedLongLongValue2 == -1 && ([chunkCopy isLast] & 1) == 0)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      v42 = 138543618;
      v43 = v39;
      v44 = 2112;
      v45 = chunkCopy;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Asked to add non-last fragment chunk with maximum allowed sequence number: %@", &v42, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    if (error)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = 3;
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  sequenceNumber2 = [chunkCopy sequenceNumber];
  [(HMDDataStreamFragmentAssembler *)selfCopy setCurrentChunkSequenceNumber:sequenceNumber2];

  data = [(HMDDataStreamFragmentAssembler *)selfCopy data];
  data2 = [chunkCopy data];
  [data appendData:data2];

  if ([chunkCopy isLast])
  {
    v25 = [HMDDataStreamFragment alloc];
    data3 = [(HMDDataStreamFragmentAssembler *)selfCopy data];
    sequenceNumber3 = [(HMDDataStreamFragmentAssembler *)selfCopy sequenceNumber];
    type = [(HMDDataStreamFragmentAssembler *)selfCopy type];
    v29 = [(HMDDataStreamFragment *)v25 initWithData:data3 sequenceNumber:sequenceNumber3 type:type];
    [(HMDDataStreamFragmentAssembler *)selfCopy setAssembledFragment:v29];
  }

  v30 = 1;
LABEL_24:

  v40 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)attributeDescriptions
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  sequenceNumber = [(HMDDataStreamFragmentAssembler *)self sequenceNumber];
  v21 = [v3 initWithName:@"Sequence Number" value:sequenceNumber];
  v23[0] = v21;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  type = [(HMDDataStreamFragmentAssembler *)self type];
  v6 = [v4 initWithName:@"Type" value:type];
  v23[1] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCABB0];
  data = [(HMDDataStreamFragmentAssembler *)self data];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(data, "length")}];
  v11 = [v7 initWithName:@"Data Length" value:v10];
  v23[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  currentChunkSequenceNumber = [(HMDDataStreamFragmentAssembler *)self currentChunkSequenceNumber];
  v14 = [v12 initWithName:@"Current Chunk Sequence Number" value:currentChunkSequenceNumber];
  v23[3] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  assembledFragment = [(HMDDataStreamFragmentAssembler *)self assembledFragment];
  v17 = [v15 initWithName:@"Assembled Fragment" value:assembledFragment];
  v23[4] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDDataStreamFragmentAssembler)initWithSequenceNumber:(id)number type:(id)type
{
  v30 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  typeCopy = type;
  if (!numberCopy)
  {
    _HMFPreconditionFailure();
LABEL_9:
    _HMFPreconditionFailure();
  }

  v9 = typeCopy;
  if (!typeCopy)
  {
    goto LABEL_9;
  }

  v23.receiver = self;
  v23.super_class = HMDDataStreamFragmentAssembler;
  v10 = [(HMDDataStreamFragmentAssembler *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sequenceNumber, number);
    v12 = [v9 copy];
    type = v11->_type;
    v11->_type = v12;

    data = [MEMORY[0x277CBEB28] data];
    data = v11->_data;
    v11->_data = data;

    currentChunkSequenceNumber = v11->_currentChunkSequenceNumber;
    v11->_currentChunkSequenceNumber = &unk_2866279B8;

    v17 = objc_autoreleasePoolPush();
    v18 = v11;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v25 = v20;
      v26 = 2112;
      v27 = numberCopy;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Initialized data chunk assembler with sequence number: %@ type: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

@end