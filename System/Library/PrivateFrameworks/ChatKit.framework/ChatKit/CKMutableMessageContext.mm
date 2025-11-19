@interface CKMutableMessageContext
- (void)setChatContext:(id)a3;
- (void)setFromMe:(BOOL)a3;
- (void)setServiceName:(id)a3;
@end

@implementation CKMutableMessageContext

- (void)setChatContext:(id)a3
{
  v4 = [a3 copy];
  chatContext = self->super._chatContext;
  self->super._chatContext = v4;
}

- (void)setServiceName:(id)a3
{
  v4 = [a3 copy];
  serviceName = self->super._serviceName;
  self->super._serviceName = v4;
}

- (void)setFromMe:(BOOL)a3
{
  self->super._fromMe = a3;
  if (a3)
  {
    *&self->super._spam = 0;
    self->super._senderUnauthenticated = 0;
  }
}

@end