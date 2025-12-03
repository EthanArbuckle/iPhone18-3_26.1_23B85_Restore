@interface CKMutableMessageContext
- (void)setChatContext:(id)context;
- (void)setFromMe:(BOOL)me;
- (void)setServiceName:(id)name;
@end

@implementation CKMutableMessageContext

- (void)setChatContext:(id)context
{
  v4 = [context copy];
  chatContext = self->super._chatContext;
  self->super._chatContext = v4;
}

- (void)setServiceName:(id)name
{
  v4 = [name copy];
  serviceName = self->super._serviceName;
  self->super._serviceName = v4;
}

- (void)setFromMe:(BOOL)me
{
  self->super._fromMe = me;
  if (me)
  {
    *&self->super._spam = 0;
    self->super._senderUnauthenticated = 0;
  }
}

@end