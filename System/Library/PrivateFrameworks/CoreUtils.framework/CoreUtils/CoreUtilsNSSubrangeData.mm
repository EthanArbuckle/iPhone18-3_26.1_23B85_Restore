@interface CoreUtilsNSSubrangeData
- (CoreUtilsNSSubrangeData)init;
- (CoreUtilsNSSubrangeData)initWithData:(id)data range:(_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)getBytes:(void *)bytes length:(unint64_t)length;
- (void)getBytes:(void *)bytes range:(_NSRange)range;
@end

@implementation CoreUtilsNSSubrangeData

- (void)getBytes:(void *)bytes range:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    bytes = [(NSData *)self->_data bytes];
    if (bytes)
    {
      v9 = &bytes[self->_range.location + location];

      memmove(bytes, v9, length);
    }
  }
}

- (void)getBytes:(void *)bytes length:(unint64_t)length
{
  if (self->_range.length >= length)
  {
    length = length;
  }

  else
  {
    length = self->_range.length;
  }

  [(NSData *)self->_data getBytes:bytes range:self->_range.location, length];
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;

  return selfCopy;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CoreUtilsNSSubrangeData;
  [(CoreUtilsNSSubrangeData *)&v2 dealloc];
}

- (CoreUtilsNSSubrangeData)initWithData:(id)data range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  dataCopy = data;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    self->_range.location = *(dataCopy + 2) + location;
    self->_range.length = length;
    v10 = *(dataCopy + 1);
    v11 = dataCopy;
    data = self->_data;
    self->_data = v10;
  }

  else
  {
    self->_range.location = location;
    self->_range.length = length;
    v13 = dataCopy;
    v11 = self->_data;
    self->_data = v13;
  }

  if (self->_data)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CoreUtilsNSSubrangeData)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"[CoreUtilsNSSubrangeData init] should never be called"];

  return 0;
}

@end