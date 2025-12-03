@interface IDSVMRequest
- (IDSVMRequest)initWithCoder:(id)coder;
- (IDSVMRequest)initWithDataRepresentation:(id)representation;
- (IDSVMRequest)initWithPurpose:(unint64_t)purpose version:(unint64_t)version;
- (NSData)dataRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSVMRequest

- (IDSVMRequest)initWithPurpose:(unint64_t)purpose version:(unint64_t)version
{
  v7.receiver = self;
  v7.super_class = IDSVMRequest;
  result = [(IDSVMRequest *)&v7 init];
  if (result)
  {
    result->_version = version;
    result->_purpose = purpose;
  }

  return result;
}

- (IDSVMRequest)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v9 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = +[IMRGLog vm];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100921BB8(representationCopy, v6, v7);
    }
  }

  return v5;
}

- (NSData)dataRepresentation
{
  v6 = 0;
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (!v2)
  {
    v4 = +[IMRGLog vm];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10091D1A4(v3, v4);
    }
  }

  return v2;
}

- (IDSVMRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  v6 = [coderCopy decodeIntegerForKey:@"purpose"];

  if ([(IDSVMRequest *)self isValidVMRequestPurpose:v6])
  {
    self = [(IDSVMRequest *)self initWithPurpose:v6 version:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"version"];
  [coderCopy encodeInteger:self->_purpose forKey:@"purpose"];
}

@end