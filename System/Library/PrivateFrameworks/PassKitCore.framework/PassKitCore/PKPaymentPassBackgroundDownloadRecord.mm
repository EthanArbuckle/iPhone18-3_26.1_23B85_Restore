@interface PKPaymentPassBackgroundDownloadRecord
- (PKPaymentPassBackgroundDownloadRecord)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentPassBackgroundDownloadRecord

- (PKPaymentPassBackgroundDownloadRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentPassBackgroundDownloadRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushTopic"];
    pushTopic = v5->_pushTopic;
    v5->_pushTopic = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentPassBackgroundDownloadRecord;
  coderCopy = coder;
  [(PKPaymentBackgroundDownloadRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_pushTopic forKey:{@"pushTopic", v5.receiver, v5.super_class}];
}

@end