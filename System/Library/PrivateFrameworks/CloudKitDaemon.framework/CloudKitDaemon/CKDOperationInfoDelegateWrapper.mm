@interface CKDOperationInfoDelegateWrapper
- (CKDOperationInfoDelegate)delegate;
- (CKDOperationInfoDelegateWrapper)initWithDelegate:(id)delegate;
- (void)performWithDelegate:(id)delegate;
@end

@implementation CKDOperationInfoDelegateWrapper

- (CKDOperationInfoDelegateWrapper)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CKDOperationInfoDelegateWrapper;
  v5 = [(CKDOperationInfoDelegateWrapper *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v9 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v7, v8);
    persona = v6->_persona;
    v6->_persona = v9;
  }

  return v6;
}

- (void)performWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = objc_msgSend_persona(self, v5, v6);
  v8 = delegateCopy;
  CKPersonaPerformBlock();
}

- (CKDOperationInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end