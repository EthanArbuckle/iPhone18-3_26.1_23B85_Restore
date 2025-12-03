@interface HMDDataStreamFrameReader
+ (id)logCategory;
- (HMDDataStreamFrameReader)init;
- (id)popRawFrame;
- (unint64_t)_getCurrentFrameSize;
- (unint64_t)bytesNeededForCurrentFrame;
- (void)_readFrameHeaderIfPossible;
- (void)pushFrameData:(id)data;
- (void)reset;
@end

@implementation HMDDataStreamFrameReader

- (id)popRawFrame
{
  if ([(HMDDataStreamFrameReader *)self hasCompleteFrame])
  {
    _getCurrentFrameSize = [(HMDDataStreamFrameReader *)self _getCurrentFrameSize];
    subrange = dispatch_data_create_subrange(self->_partialFrame, 0, _getCurrentFrameSize);
    partialFrame = self->_partialFrame;
    size = dispatch_data_get_size(partialFrame);
    v7 = size - _getCurrentFrameSize;
    if (size == _getCurrentFrameSize)
    {
      [(HMDDataStreamFrameReader *)self reset];
    }

    else
    {
      v8 = dispatch_data_create_subrange(partialFrame, _getCurrentFrameSize, v7);
      [(HMDDataStreamFrameReader *)self reset];
      [(HMDDataStreamFrameReader *)self pushFrameData:v8];
    }
  }

  else
  {
    subrange = 0;
  }

  return subrange;
}

- (void)reset
{
  partialFrame = self->_partialFrame;
  self->_partialFrame = 0;

  *&self->_headerInfoRead = 0;
}

- (void)_readFrameHeaderIfPossible
{
  if (!self->_headerInfoRead)
  {
    v3 = [HMDDataStreamMessageCoder readHeaderFromPartialData:self->_partialFrame frameType:&self->_currentframeType payloadLength:&self->_payloadLength];
    self->_headerInfoRead = v3;
    if (v3)
    {
      if (self->_payloadLength - 1048572 <= 0xFFFFFFFFFFEFFFFFLL)
      {
        partialFrame = self->_partialFrame;
        self->_partialFrame = 0;

        self->_streamFailed = 1;
      }

      if (self->_currentframeType - 1 >= 3)
      {
        v5 = self->_partialFrame;
        self->_partialFrame = 0;

        self->_streamFailed = 1;
      }
    }
  }
}

- (void)pushFrameData:(id)data
{
  data2 = data;
  if (![(HMDDataStreamFrameReader *)self hasFailed])
  {
    partialFrame = self->_partialFrame;
    if (partialFrame)
    {
      concat = dispatch_data_create_concat(partialFrame, data2);
    }

    else
    {
      concat = data2;
    }

    v6 = self->_partialFrame;
    self->_partialFrame = concat;

    [(HMDDataStreamFrameReader *)self _readFrameHeaderIfPossible];
  }
}

- (unint64_t)bytesNeededForCurrentFrame
{
  if ([(HMDDataStreamFrameReader *)self hasFailed])
  {
    return 0;
  }

  partialFrame = self->_partialFrame;
  if (!partialFrame)
  {
    return 4;
  }

  size = dispatch_data_get_size(partialFrame);
  v6 = size;
  if (!self->_headerInfoRead)
  {
    return 4 - size;
  }

  _getCurrentFrameSize = [(HMDDataStreamFrameReader *)self _getCurrentFrameSize];
  if (_getCurrentFrameSize >= v6)
  {
    return _getCurrentFrameSize - v6;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_getCurrentFrameSize
{
  if (self->_currentframeType - 1 > 2)
  {
    return 0;
  }

  else
  {
    return self->_payloadLength + qword_22A587170[(self->_currentframeType - 1)];
  }
}

- (HMDDataStreamFrameReader)init
{
  v3.receiver = self;
  v3.super_class = HMDDataStreamFrameReader;
  result = [(HMDDataStreamFrameReader *)&v3 init];
  if (result)
  {
    *&result->_headerInfoRead = 0;
    result->_payloadLength = 0;
    result->_currentframeType = 0;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_54246 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_54246, &__block_literal_global_54247);
  }

  v3 = logCategory__hmf_once_v1_54248;

  return v3;
}

void __39__HMDDataStreamFrameReader_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_54248;
  logCategory__hmf_once_v1_54248 = v1;
}

@end