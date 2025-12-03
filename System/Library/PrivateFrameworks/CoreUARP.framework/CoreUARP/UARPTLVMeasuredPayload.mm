@interface UARPTLVMeasuredPayload
- (UARPTLVMeasuredPayload)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPTLVMeasuredPayload

- (UARPTLVMeasuredPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = UARPTLVMeasuredPayload;
  v5 = [(UARPTLVMeasuredPayload *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload4cc"];
    payload4cc = v5->_payload4cc;
    v5->_payload4cc = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadLongname"];
    payloadLongname = v5->_payloadLongname;
    v5->_payloadLongname = v8;

    v5->_hashAlgorithm = [coderCopy decodeIntegerForKey:@"hashAlgorithm"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectiveSecurityMode"];
    effectiveSecurityMode = v5->_effectiveSecurityMode;
    v5->_effectiveSecurityMode = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectiveProductionMode"];
    effectiveProductionMode = v5->_effectiveProductionMode;
    v5->_effectiveProductionMode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isTrusted"];
    isTrusted = v5->_isTrusted;
    v5->_isTrusted = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"digestListSize"];
    digestListSize = v5->_digestListSize;
    v5->_digestListSize = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadDigest"];
    payloadDigest = v5->_payloadDigest;
    v5->_payloadDigest = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  payload4cc = self->_payload4cc;
  coderCopy = coder;
  [coderCopy encodeObject:payload4cc forKey:@"payload4cc"];
  [coderCopy encodeObject:self->_payloadLongname forKey:@"payloadLongname"];
  [coderCopy encodeInteger:self->_hashAlgorithm forKey:@"hashAlgorithm"];
  [coderCopy encodeObject:self->_effectiveSecurityMode forKey:@"effectiveSecurityMode"];
  [coderCopy encodeObject:self->_effectiveProductionMode forKey:@"effectiveProductionMode"];
  [coderCopy encodeObject:self->_isTrusted forKey:@"isTrusted"];
  [coderCopy encodeObject:self->_digestListSize forKey:@"digestListSize"];
  [coderCopy encodeObject:self->_payloadDigest forKey:@"payloadDigest"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UARPTLVMeasuredPayload);
  v5 = [(NSString *)self->_payload4cc copy];
  payload4cc = v4->_payload4cc;
  v4->_payload4cc = v5;

  v7 = [(NSString *)self->_payloadLongname copy];
  payloadLongname = v4->_payloadLongname;
  v4->_payloadLongname = v7;

  v4->_hashAlgorithm = self->_hashAlgorithm;
  objc_storeStrong(&v4->_effectiveSecurityMode, self->_effectiveSecurityMode);
  objc_storeStrong(&v4->_effectiveProductionMode, self->_effectiveProductionMode);
  objc_storeStrong(&v4->_isTrusted, self->_isTrusted);
  objc_storeStrong(&v4->_digestListSize, self->_digestListSize);
  objc_storeStrong(&v4->_payloadDigest, self->_payloadDigest);
  return v4;
}

@end