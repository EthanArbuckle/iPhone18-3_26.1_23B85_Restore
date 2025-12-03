@interface DADREMXPCPerformerDelegate
- (DADREMXPCPerformerDelegate)initWithAccountID:(id)d;
- (void)finishWithError:(id)error;
@end

@implementation DADREMXPCPerformerDelegate

- (DADREMXPCPerformerDelegate)initWithAccountID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = DADREMXPCPerformerDelegate;
  v5 = [(DADREMXPCPerformerDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(DADREMXPCPerformerDelegate *)v5 setAccountID:dCopy];
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    [(DADREMXPCPerformerDelegate *)v6 setDelegateID:da_newGUID];
  }

  return v6;
}

- (void)finishWithError:(id)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DADREMShareResponseDelegate.m" lineNumber:38 description:@"finishWithError: should be implemented in the subclass"];
}

@end