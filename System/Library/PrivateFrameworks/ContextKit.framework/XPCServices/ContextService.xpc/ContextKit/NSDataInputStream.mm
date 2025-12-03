@interface NSDataInputStream
+ (id)streamWithData:(id)data;
- (NSDataInputStream)initWithData:(id)data;
- (int)read;
- (void)dealloc;
@end

@implementation NSDataInputStream

- (NSDataInputStream)initWithData:(id)data
{
  v6.receiver = self;
  v6.super_class = NSDataInputStream;
  v4 = [(JavaIoInputStream *)&v6 init];
  if (v4)
  {
    v4->data_ = data;
    v4->position_ = 0;
  }

  return v4;
}

+ (id)streamWithData:(id)data
{
  v3 = [[NSDataInputStream alloc] initWithData:data];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSDataInputStream;
  [(NSDataInputStream *)&v3 dealloc];
}

- (int)read
{
  position = self->position_;
  if (position == [(NSData *)self->data_ length])
  {
    return -1;
  }

  bytes = [(NSData *)self->data_ bytes];
  v6 = self->position_;
  self->position_ = v6 + 1;
  return bytes[v6];
}

@end