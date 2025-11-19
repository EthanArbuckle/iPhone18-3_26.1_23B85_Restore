@interface WFBlockRecoveryAttempter
- (WFBlockRecoveryAttempter)initWithHandlerBlock:(id)a3;
- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 userInterface:(id)a5 completionHandler:(id)a6;
@end

@implementation WFBlockRecoveryAttempter

- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 userInterface:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(WFBlockRecoveryAttempter *)self handlerBlock];
  v13[2](v13, v12, a4, v11, v10);
}

- (WFBlockRecoveryAttempter)initWithHandlerBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFBlockRecoveryAttempter;
  v5 = [(WFBlockRecoveryAttempter *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    handlerBlock = v5->_handlerBlock;
    v5->_handlerBlock = v6;

    v8 = v5;
  }

  return v5;
}

@end