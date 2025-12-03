@interface LibcoreIoStructGroupSourceReq
- (LibcoreIoStructGroupSourceReq)initWithInt:(int)int withJavaNetInetAddress:(id)address withJavaNetInetAddress:(id)inetAddress;
- (id)description;
- (void)dealloc;
@end

@implementation LibcoreIoStructGroupSourceReq

- (LibcoreIoStructGroupSourceReq)initWithInt:(int)int withJavaNetInetAddress:(id)address withJavaNetInetAddress:(id)inetAddress
{
  self->gsr_interface_ = int;
  JreStrongAssign(&self->gsr_group_, address);
  JreStrongAssign(&self->gsr_source_, inetAddress);
  return self;
}

- (id)description
{
  gsr_source = self->gsr_source_;
  gsr_group = self->gsr_group_;
  gsr_interface = self->gsr_interface_;
  return JreStrcat("$I$@$@C", a2, v2, v3, v4, v5, v6, v7, @"StructGroupSourceReq[gsr_interface=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIoStructGroupSourceReq;
  [(LibcoreIoStructGroupSourceReq *)&v3 dealloc];
}

@end