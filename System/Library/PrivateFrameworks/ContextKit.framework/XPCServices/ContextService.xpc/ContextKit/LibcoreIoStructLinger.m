@interface LibcoreIoStructLinger
- (LibcoreIoStructLinger)initWithInt:(int)a3 withInt:(int)a4;
- (id)description;
@end

@implementation LibcoreIoStructLinger

- (LibcoreIoStructLinger)initWithInt:(int)a3 withInt:(int)a4
{
  self->l_onoff_ = a3;
  self->l_linger_ = a4;
  return self;
}

- (id)description
{
  l_linger = self->l_linger_;
  l_onoff = self->l_onoff_;
  return JreStrcat("$I$IC", a2, v2, v3, v4, v5, v6, v7, @"StructLinger[l_onoff=");
}

@end