@interface JavaNetInetUnixAddress
- (id)description;
@end

@implementation JavaNetInetUnixAddress

- (id)description
{
  ipaddress = self->super.ipaddress_;
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  [NSString stringWithBytes:ipaddress charset:JavaNioCharsetStandardCharsets_UTF_8_];
  return JreStrcat("$$C", v3, v4, v5, v6, v7, v8, v9, @"InetUnixAddress[");
}

@end