@interface LibcoreIoStructGroupReq
- (LibcoreIoStructGroupReq)initWithInt:(int)int withJavaNetInetAddress:(id)address;
- (id)description;
- (void)dealloc;
@end

@implementation LibcoreIoStructGroupReq

- (LibcoreIoStructGroupReq)initWithInt:(int)int withJavaNetInetAddress:(id)address
{
  self->gr_interface_ = int;
  JreStrongAssign(&self->gr_group_, address);
  return self;
}

- (id)description
{
  gr_group = self->gr_group_;
  gr_interface = self->gr_interface_;
  return JreStrcat("$I$@C", a2, v2, v3, v4, v5, v6, v7, @"StructGroupReq[gr_interface=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIoStructGroupReq;
  [(LibcoreIoStructGroupReq *)&v3 dealloc];
}

@end