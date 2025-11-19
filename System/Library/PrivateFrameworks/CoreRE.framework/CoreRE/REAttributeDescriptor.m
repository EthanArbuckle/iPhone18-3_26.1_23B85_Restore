@interface REAttributeDescriptor
- (BOOL)validateWithPayloadSize:(unint64_t)a3 error:(id *)a4;
- (REAttributeDescriptor)initWithCoder:(id)a3;
- (REAttributeDescriptor)initWithName:(id)a3 buffer:(const void *)a4 elementSize:(unint64_t)a5 payloadLayout:(void *)a6;
- (REAttributeDescriptor)initWithName:(id)a3 payloadOffset:(unsigned int)a4 count:(unsigned int)a5 stride:(unsigned int)a6;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REAttributeDescriptor

- (REAttributeDescriptor)initWithName:(id)a3 buffer:(const void *)a4 elementSize:(unint64_t)a5 payloadLayout:(void *)a6
{
  v10 = a3;

  return v11;
}

- (REAttributeDescriptor)initWithName:(id)a3 payloadOffset:(unsigned int)a4 count:(unsigned int)a5 stride:(unsigned int)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = REAttributeDescriptor;
  v11 = [(REAttributeDescriptor *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    name = v11->_name;
    v11->_name = v12;

    v11->_payloadOffset = a4;
    v11->_count = a5;
    v11->_stride = a6;
  }

  return v11;
}

- (REAttributeDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = self->_name;
  v8 = [v4 decodeIntegerForKey:@"payloadOffset"];
  self->_payloadOffset = v8;
  v9 = [v4 decodeIntegerForKey:@"count"];
  self->_count = v9;
  v10 = [v4 decodeIntegerForKey:@"stride"];
  self->_stride = v10;
  if (HIDWORD(v10) || HIDWORD(v9) || HIDWORD(v8))
    v13 = {;
    [v4 failWithError:v13];
LABEL_8:

    v12 = 0;
    goto LABEL_9;
  }

  if (!v7)
    v13 = {;
    [v4 failWithError:v13];
    goto LABEL_8;
  }

  v12 = self;
LABEL_9:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_payloadOffset forKey:@"payloadOffset"];
  [v4 encodeInt:self->_count forKey:@"count"];
  [v4 encodeInt:self->_stride forKey:@"stride"];
  [v4 encodeObject:self->_name forKey:@"name"];
}

- (BOOL)validateWithPayloadSize:(unint64_t)a3 error:(id *)a4
{
  payloadOffset = self->_payloadOffset;
  v7 = [(REAttributeDescriptor *)self bufferSize];
  if (v7 && !__CFADD__(payloadOffset, v7) && payloadOffset < a3 && payloadOffset + v7 <= a3)
  {
    return 1;
  }

  return 0;
}

- (unint64_t)estimateContainerSize
{
  v3 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v3);
  name = self->_name;
  if (name)
  {
    v6 = objc_opt_class();
    v7 = class_getInstanceSize(v6);
    v8 = self->_name;
    if (v8)
    {
      name = ([(NSString *)v8 lengthOfBytesUsingEncoding:4]+ 1);
    }

    else
    {
      name = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return name + v7 + InstanceSize;
}

@end