@interface HMDDataStreamHAPPendingWrite
- (BOOL)isComplete;
- (HMDDataStreamHAPPendingWrite)initWithData:(id)a3 completion:(id)a4;
- (id)popNextFrameUpToMaxLength:(unint64_t)a3;
@end

@implementation HMDDataStreamHAPPendingWrite

- (id)popNextFrameUpToMaxLength:(unint64_t)a3
{
  v5 = [(HMDDataStreamHAPPendingWrite *)self data];
  v6 = [v5 length];
  v7 = v6 - [(HMDDataStreamHAPPendingWrite *)self bytesWritten];

  if (v7 < a3)
  {
    a3 = v7;
  }

  v8 = [(HMDDataStreamHAPPendingWrite *)self data];
  v9 = [v8 subdataWithRange:{-[HMDDataStreamHAPPendingWrite bytesWritten](self, "bytesWritten"), a3}];

  [(HMDDataStreamHAPPendingWrite *)self setBytesWritten:[(HMDDataStreamHAPPendingWrite *)self bytesWritten]+ a3];

  return v9;
}

- (BOOL)isComplete
{
  v2 = self;
  v3 = [(HMDDataStreamHAPPendingWrite *)self data];
  v4 = [v3 length];
  LOBYTE(v2) = v4 <= [(HMDDataStreamHAPPendingWrite *)v2 bytesWritten];

  return v2;
}

- (HMDDataStreamHAPPendingWrite)initWithData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMDDataStreamHAPPendingWrite;
  v8 = [(HMDDataStreamHAPPendingWrite *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = _Block_copy(v7);
    completion = v8->_completion;
    v8->_completion = v11;
  }

  return v8;
}

@end