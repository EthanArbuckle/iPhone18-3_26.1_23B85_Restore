@interface HMMRTCSessionVoucher
- (HMMRTCSessionVoucher)initWithCoder:(id)coder;
- (HMMRTCSessionVoucher)initWithUUID:(id)d serviceName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMMRTCSessionVoucher

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMMRTCSessionVoucher *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  serviceName = [(HMMRTCSessionVoucher *)self serviceName];
  [coderCopy encodeObject:serviceName forKey:@"service"];
}

- (HMMRTCSessionVoucher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];

  v7 = [(HMMRTCSessionVoucher *)self initWithUUID:v5 serviceName:v6];
  return v7;
}

- (HMMRTCSessionVoucher)initWithUUID:(id)d serviceName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HMMRTCSessionVoucher;
  v9 = [(HMMRTCSessionVoucher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    objc_storeStrong(&v10->_serviceName, name);
  }

  return v10;
}

@end