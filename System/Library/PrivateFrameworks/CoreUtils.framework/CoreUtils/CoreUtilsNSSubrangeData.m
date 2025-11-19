@interface CoreUtilsNSSubrangeData
- (CoreUtilsNSSubrangeData)init;
- (CoreUtilsNSSubrangeData)initWithData:(id)a3 range:(_NSRange)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)getBytes:(void *)a3 length:(unint64_t)a4;
- (void)getBytes:(void *)a3 range:(_NSRange)a4;
@end

@implementation CoreUtilsNSSubrangeData

- (void)getBytes:(void *)a3 range:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    v8 = [(NSData *)self->_data bytes];
    if (v8)
    {
      v9 = &v8[self->_range.location + location];

      memmove(a3, v9, length);
    }
  }
}

- (void)getBytes:(void *)a3 length:(unint64_t)a4
{
  if (self->_range.length >= a4)
  {
    length = a4;
  }

  else
  {
    length = self->_range.length;
  }

  [(NSData *)self->_data getBytes:a3 range:self->_range.location, length];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = self;

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CoreUtilsNSSubrangeData;
  [(CoreUtilsNSSubrangeData *)&v2 dealloc];
}

- (CoreUtilsNSSubrangeData)initWithData:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    self->_range.location = *(v7 + 2) + location;
    self->_range.length = length;
    v10 = *(v7 + 1);
    v11 = v7;
    data = self->_data;
    self->_data = v10;
  }

  else
  {
    self->_range.location = location;
    self->_range.length = length;
    v13 = v7;
    v11 = self->_data;
    self->_data = v13;
  }

  if (self->_data)
  {
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CoreUtilsNSSubrangeData)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"[CoreUtilsNSSubrangeData init] should never be called"];

  return 0;
}

@end