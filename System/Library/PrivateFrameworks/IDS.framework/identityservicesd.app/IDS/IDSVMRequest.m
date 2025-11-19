@interface IDSVMRequest
- (IDSVMRequest)initWithCoder:(id)a3;
- (IDSVMRequest)initWithDataRepresentation:(id)a3;
- (IDSVMRequest)initWithPurpose:(unint64_t)a3 version:(unint64_t)a4;
- (NSData)dataRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSVMRequest

- (IDSVMRequest)initWithPurpose:(unint64_t)a3 version:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = IDSVMRequest;
  result = [(IDSVMRequest *)&v7 init];
  if (result)
  {
    result->_version = a4;
    result->_purpose = a3;
  }

  return result;
}

- (IDSVMRequest)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = +[IMRGLog vm];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100921BB8(v4, v6, v7);
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

- (IDSVMRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"version"];
  v6 = [v4 decodeIntegerForKey:@"purpose"];

  if ([(IDSVMRequest *)self isValidVMRequestPurpose:v6])
  {
    self = [(IDSVMRequest *)self initWithPurpose:v6 version:v5];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"version"];
  [v5 encodeInteger:self->_purpose forKey:@"purpose"];
}

@end