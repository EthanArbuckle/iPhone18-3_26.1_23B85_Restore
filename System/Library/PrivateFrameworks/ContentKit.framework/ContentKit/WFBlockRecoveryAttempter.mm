@interface WFBlockRecoveryAttempter
- (WFBlockRecoveryAttempter)initWithHandlerBlock:(id)block;
- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler;
@end

@implementation WFBlockRecoveryAttempter

- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  interfaceCopy = interface;
  errorCopy = error;
  handlerBlock = [(WFBlockRecoveryAttempter *)self handlerBlock];
  handlerBlock[2](handlerBlock, errorCopy, index, interfaceCopy, handlerCopy);
}

- (WFBlockRecoveryAttempter)initWithHandlerBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = WFBlockRecoveryAttempter;
  v5 = [(WFBlockRecoveryAttempter *)&v10 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    handlerBlock = v5->_handlerBlock;
    v5->_handlerBlock = v6;

    v8 = v5;
  }

  return v5;
}

@end