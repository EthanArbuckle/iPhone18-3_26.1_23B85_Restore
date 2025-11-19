@interface LibcoreIoStructGroupReq
- (LibcoreIoStructGroupReq)initWithInt:(int)a3 withJavaNetInetAddress:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation LibcoreIoStructGroupReq

- (LibcoreIoStructGroupReq)initWithInt:(int)a3 withJavaNetInetAddress:(id)a4
{
  self->gr_interface_ = a3;
  JreStrongAssign(&self->gr_group_, a4);
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