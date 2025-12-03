@interface REAttributeDescriptor
- (BOOL)validateWithPayloadSize:(unint64_t)size error:(id *)error;
- (REAttributeDescriptor)initWithCoder:(id)coder;
- (REAttributeDescriptor)initWithName:(id)name buffer:(const void *)buffer elementSize:(unint64_t)size payloadLayout:(void *)layout;
- (REAttributeDescriptor)initWithName:(id)name payloadOffset:(unsigned int)offset count:(unsigned int)count stride:(unsigned int)stride;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REAttributeDescriptor

- (REAttributeDescriptor)initWithName:(id)name buffer:(const void *)buffer elementSize:(unint64_t)size payloadLayout:(void *)layout
{
  nameCopy = name;

  return v11;
}

- (REAttributeDescriptor)initWithName:(id)name payloadOffset:(unsigned int)offset count:(unsigned int)count stride:(unsigned int)stride
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = REAttributeDescriptor;
  v11 = [(REAttributeDescriptor *)&v15 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v11->_payloadOffset = offset;
    v11->_count = count;
    v11->_stride = stride;
  }

  return v11;
}

- (REAttributeDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = self->_name;
  v8 = [coderCopy decodeIntegerForKey:@"payloadOffset"];
  self->_payloadOffset = v8;
  v9 = [coderCopy decodeIntegerForKey:@"count"];
  self->_count = v9;
  v10 = [coderCopy decodeIntegerForKey:@"stride"];
  self->_stride = v10;
  if (HIDWORD(v10) || HIDWORD(v9) || HIDWORD(v8))
    v13 = {;
    [coderCopy failWithError:v13];
LABEL_8:

    selfCopy = 0;
    goto LABEL_9;
  }

  if (!v7)
    v13 = {;
    [coderCopy failWithError:v13];
    goto LABEL_8;
  }

  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_payloadOffset forKey:@"payloadOffset"];
  [coderCopy encodeInt:self->_count forKey:@"count"];
  [coderCopy encodeInt:self->_stride forKey:@"stride"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
}

- (BOOL)validateWithPayloadSize:(unint64_t)size error:(id *)error
{
  payloadOffset = self->_payloadOffset;
  bufferSize = [(REAttributeDescriptor *)self bufferSize];
  if (bufferSize && !__CFADD__(payloadOffset, bufferSize) && payloadOffset < size && payloadOffset + bufferSize <= size)
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