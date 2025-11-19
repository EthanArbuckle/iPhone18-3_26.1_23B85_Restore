@interface NSDataOutputStream
+ (id)stream;
- (NSDataOutputStream)init;
- (void)dealloc;
@end

@implementation NSDataOutputStream

- (NSDataOutputStream)init
{
  v4.receiver = self;
  v4.super_class = NSDataOutputStream;
  v2 = [(JavaIoOutputStream *)&v4 init];
  if (v2)
  {
    v2->data_ = objc_alloc_init(NSMutableData);
  }

  return v2;
}

+ (id)stream
{
  v2 = objc_alloc_init(NSDataOutputStream);

  return v2;
}

- (void)dealloc
{
  v3 = self->data_;
  v4.receiver = self;
  v4.super_class = NSDataOutputStream;
  [(NSDataOutputStream *)&v4 dealloc];
}

@end