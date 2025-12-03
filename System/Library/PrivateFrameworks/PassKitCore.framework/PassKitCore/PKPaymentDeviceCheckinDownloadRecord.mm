@interface PKPaymentDeviceCheckinDownloadRecord
- (PKPaymentDeviceCheckinDownloadRecord)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentDeviceCheckinDownloadRecord

- (PKPaymentDeviceCheckinDownloadRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPaymentDeviceCheckinDownloadRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    [(PKPaymentDeviceCheckinDownloadRecord *)v5 setRegion:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKPaymentDeviceCheckinDownloadRecord *)v5 setIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseData"];
    [(PKPaymentDeviceCheckinDownloadRecord *)v5 setResponseData:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = PKPaymentDeviceCheckinDownloadRecord;
  coderCopy = coder;
  [(PKPaymentBackgroundDownloadRecord *)&v8 encodeWithCoder:coderCopy];
  v5 = [(PKPaymentDeviceCheckinDownloadRecord *)self region:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"region"];

  identifier = [(PKPaymentDeviceCheckinDownloadRecord *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  responseData = [(PKPaymentDeviceCheckinDownloadRecord *)self responseData];
  [coderCopy encodeObject:responseData forKey:@"responseData"];
}

@end