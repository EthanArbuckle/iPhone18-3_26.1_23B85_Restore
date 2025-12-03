@interface PKPaymentBackgroundDownloadRecord
+ (id)taskWithType:(int64_t)type;
- (PKPaymentBackgroundDownloadRecord)initWithCoder:(id)coder;
- (id)_init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentBackgroundDownloadRecord

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPaymentBackgroundDownloadRecord;
  return [(PKPaymentBackgroundDownloadRecord *)&v3 init];
}

- (PKPaymentBackgroundDownloadRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPaymentBackgroundDownloadRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v7 init];
  if (v5)
  {
    -[PKPaymentBackgroundDownloadRecord setTaskType:](v5, "setTaskType:", [coderCopy decodeIntegerForKey:@"taskType"]);
    -[PKPaymentBackgroundDownloadRecord setRetryCount:](v5, "setRetryCount:", [coderCopy decodeIntegerForKey:@"retryCount"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PKPaymentBackgroundDownloadRecord taskType](self forKey:{"taskType"), @"taskType"}];
  [coderCopy encodeInteger:-[PKPaymentBackgroundDownloadRecord retryCount](self forKey:{"retryCount"), @"retryCount"}];
}

+ (id)taskWithType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  _init = [[v4 alloc] _init];
  [_init setTaskType:type];
  return _init;
}

@end