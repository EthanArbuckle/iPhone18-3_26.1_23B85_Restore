@interface PKPaymentPassBackgroundDownloadRecord
- (PKPaymentPassBackgroundDownloadRecord)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentPassBackgroundDownloadRecord

- (PKPaymentPassBackgroundDownloadRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentPassBackgroundDownloadRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushTopic"];
    pushTopic = v5->_pushTopic;
    v5->_pushTopic = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentPassBackgroundDownloadRecord;
  v4 = a3;
  [(PKPaymentBackgroundDownloadRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_pushTopic forKey:{@"pushTopic", v5.receiver, v5.super_class}];
}

@end