@interface LibcoreIoStructLinger
- (LibcoreIoStructLinger)initWithInt:(int)int withInt:(int)withInt;
- (id)description;
@end

@implementation LibcoreIoStructLinger

- (LibcoreIoStructLinger)initWithInt:(int)int withInt:(int)withInt
{
  self->l_onoff_ = int;
  self->l_linger_ = withInt;
  return self;
}

- (id)description
{
  l_linger = self->l_linger_;
  l_onoff = self->l_onoff_;
  return JreStrcat("$I$IC", a2, v2, v3, v4, v5, v6, v7, @"StructLinger[l_onoff=");
}

@end