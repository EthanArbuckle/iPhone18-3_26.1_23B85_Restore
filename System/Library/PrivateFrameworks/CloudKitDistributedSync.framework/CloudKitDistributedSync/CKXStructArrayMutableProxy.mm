@interface CKXStructArrayMutableProxy
- (void)appendWithProxyBlock:(id)a3;
- (void)reset;
@end

@implementation CKXStructArrayMutableProxy

- (void)reset
{
  v3.receiver = self;
  v3.super_class = CKXStructArrayMutableProxy;
  [(CKXArrayProxyBase *)&v3 reset];
  self->_index = -1;
}

- (void)appendWithProxyBlock:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v11 = objc_msgSend_backingStore(self, v4, v5, v6, v7, v8, v9);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_243985858;
    v17[3] = &unk_278DDB4F0;
    v17[4] = self;
    v18 = v10;
    objc_msgSend_proxyScope_(v11, v12, v17, v13, v14, v15, v16);
  }
}

@end