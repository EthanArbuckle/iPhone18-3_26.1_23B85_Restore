@interface HMDDataStreamHAPPendingWrite
- (BOOL)isComplete;
- (HMDDataStreamHAPPendingWrite)initWithData:(id)data completion:(id)completion;
- (id)popNextFrameUpToMaxLength:(unint64_t)length;
@end

@implementation HMDDataStreamHAPPendingWrite

- (id)popNextFrameUpToMaxLength:(unint64_t)length
{
  data = [(HMDDataStreamHAPPendingWrite *)self data];
  v6 = [data length];
  v7 = v6 - [(HMDDataStreamHAPPendingWrite *)self bytesWritten];

  if (v7 < length)
  {
    length = v7;
  }

  data2 = [(HMDDataStreamHAPPendingWrite *)self data];
  v9 = [data2 subdataWithRange:{-[HMDDataStreamHAPPendingWrite bytesWritten](self, "bytesWritten"), length}];

  [(HMDDataStreamHAPPendingWrite *)self setBytesWritten:[(HMDDataStreamHAPPendingWrite *)self bytesWritten]+ length];

  return v9;
}

- (BOOL)isComplete
{
  selfCopy = self;
  data = [(HMDDataStreamHAPPendingWrite *)self data];
  v4 = [data length];
  LOBYTE(selfCopy) = v4 <= [(HMDDataStreamHAPPendingWrite *)selfCopy bytesWritten];

  return selfCopy;
}

- (HMDDataStreamHAPPendingWrite)initWithData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = HMDDataStreamHAPPendingWrite;
  v8 = [(HMDDataStreamHAPPendingWrite *)&v14 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = _Block_copy(completionCopy);
    completion = v8->_completion;
    v8->_completion = v11;
  }

  return v8;
}

@end