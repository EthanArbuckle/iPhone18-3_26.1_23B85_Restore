@interface CKXArrayProxyBase
- ($3CC19D079FD0B010EE84973AA846B91B)listInstance;
- (void)associateWithListInstance:(id *)instance;
- (void)reset;
@end

@implementation CKXArrayProxyBase

- (void)associateWithListInstance:(id *)instance
{
  v3 = *&instance->var2;
  *&self->_listInstance.structToken = *&instance->var0;
  *&self->_listInstance.page = v3;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = CKXArrayProxyBase;
  [(CKXProxyBase *)&v3 reset];
  self->_listInstance.structToken = -1;
}

- ($3CC19D079FD0B010EE84973AA846B91B)listInstance
{
  v3 = *&self[1].var2;
  *&retstr->var0 = *&self[1].var0;
  *&retstr->var2 = v3;
  return self;
}

@end