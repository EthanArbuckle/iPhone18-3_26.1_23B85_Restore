@interface FindMyTheftAndLossDisclaimerContext
- (FindMyTheftAndLossDisclaimerContext)initWithUseCase:(id)case serialNumber:(id)number;
@end

@implementation FindMyTheftAndLossDisclaimerContext

- (FindMyTheftAndLossDisclaimerContext)initWithUseCase:(id)case serialNumber:(id)number
{
  caseCopy = case;
  numberCopy = number;
  v14.receiver = self;
  v14.super_class = FindMyTheftAndLossDisclaimerContext;
  v8 = [(FindMyTheftAndLossDisclaimerContext *)&v14 init];
  if (v8)
  {
    v9 = [caseCopy copy];
    useCase = v8->_useCase;
    v8->_useCase = v9;

    v11 = [numberCopy copy];
    serialNumber = v8->_serialNumber;
    v8->_serialNumber = v11;
  }

  return v8;
}

@end