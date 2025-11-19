@interface PKPaymentDeviceCheckinDownloadRecord
- (PKPaymentDeviceCheckinDownloadRecord)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentDeviceCheckinDownloadRecord

- (PKPaymentDeviceCheckinDownloadRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaymentDeviceCheckinDownloadRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    [(PKPaymentDeviceCheckinDownloadRecord *)v5 setRegion:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKPaymentDeviceCheckinDownloadRecord *)v5 setIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseData"];
    [(PKPaymentDeviceCheckinDownloadRecord *)v5 setResponseData:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKPaymentDeviceCheckinDownloadRecord;
  v4 = a3;
  [(PKPaymentBackgroundDownloadRecord *)&v8 encodeWithCoder:v4];
  v5 = [(PKPaymentDeviceCheckinDownloadRecord *)self region:v8.receiver];
  [v4 encodeObject:v5 forKey:@"region"];

  v6 = [(PKPaymentDeviceCheckinDownloadRecord *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(PKPaymentDeviceCheckinDownloadRecord *)self responseData];
  [v4 encodeObject:v7 forKey:@"responseData"];
}

@end