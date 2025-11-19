@interface CKDOperationInfoDelegateWrapper
- (CKDOperationInfoDelegate)delegate;
- (CKDOperationInfoDelegateWrapper)initWithDelegate:(id)a3;
- (void)performWithDelegate:(id)a3;
@end

@implementation CKDOperationInfoDelegateWrapper

- (CKDOperationInfoDelegateWrapper)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKDOperationInfoDelegateWrapper;
  v5 = [(CKDOperationInfoDelegateWrapper *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v9 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v7, v8);
    persona = v6->_persona;
    v6->_persona = v9;
  }

  return v6;
}

- (void)performWithDelegate:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_persona(self, v5, v6);
  v8 = v4;
  CKPersonaPerformBlock();
}

- (CKDOperationInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end