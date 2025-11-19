@interface DADREMXPCPerformerDelegate
- (DADREMXPCPerformerDelegate)initWithAccountID:(id)a3;
- (void)finishWithError:(id)a3;
@end

@implementation DADREMXPCPerformerDelegate

- (DADREMXPCPerformerDelegate)initWithAccountID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DADREMXPCPerformerDelegate;
  v5 = [(DADREMXPCPerformerDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(DADREMXPCPerformerDelegate *)v5 setAccountID:v4];
    v7 = [MEMORY[0x277CCACA8] da_newGUID];
    [(DADREMXPCPerformerDelegate *)v6 setDelegateID:v7];
  }

  return v6;
}

- (void)finishWithError:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"DADREMShareResponseDelegate.m" lineNumber:38 description:@"finishWithError: should be implemented in the subclass"];
}

@end