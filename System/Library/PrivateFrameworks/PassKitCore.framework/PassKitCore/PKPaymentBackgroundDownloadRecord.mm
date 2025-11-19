@interface PKPaymentBackgroundDownloadRecord
+ (id)taskWithType:(int64_t)a3;
- (PKPaymentBackgroundDownloadRecord)initWithCoder:(id)a3;
- (id)_init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentBackgroundDownloadRecord

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPaymentBackgroundDownloadRecord;
  return [(PKPaymentBackgroundDownloadRecord *)&v3 init];
}

- (PKPaymentBackgroundDownloadRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPaymentBackgroundDownloadRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v7 init];
  if (v5)
  {
    -[PKPaymentBackgroundDownloadRecord setTaskType:](v5, "setTaskType:", [v4 decodeIntegerForKey:@"taskType"]);
    -[PKPaymentBackgroundDownloadRecord setRetryCount:](v5, "setRetryCount:", [v4 decodeIntegerForKey:@"retryCount"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[PKPaymentBackgroundDownloadRecord taskType](self forKey:{"taskType"), @"taskType"}];
  [v4 encodeInteger:-[PKPaymentBackgroundDownloadRecord retryCount](self forKey:{"retryCount"), @"retryCount"}];
}

+ (id)taskWithType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  v5 = [[v4 alloc] _init];
  [v5 setTaskType:a3];
  return v5;
}

@end