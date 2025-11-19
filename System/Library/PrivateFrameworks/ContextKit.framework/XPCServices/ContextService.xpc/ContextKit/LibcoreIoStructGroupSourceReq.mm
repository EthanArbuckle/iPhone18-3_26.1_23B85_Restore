@interface LibcoreIoStructGroupSourceReq
- (LibcoreIoStructGroupSourceReq)initWithInt:(int)a3 withJavaNetInetAddress:(id)a4 withJavaNetInetAddress:(id)a5;
- (id)description;
- (void)dealloc;
@end

@implementation LibcoreIoStructGroupSourceReq

- (LibcoreIoStructGroupSourceReq)initWithInt:(int)a3 withJavaNetInetAddress:(id)a4 withJavaNetInetAddress:(id)a5
{
  self->gsr_interface_ = a3;
  JreStrongAssign(&self->gsr_group_, a4);
  JreStrongAssign(&self->gsr_source_, a5);
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