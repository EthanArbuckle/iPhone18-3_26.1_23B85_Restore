@interface FindMyTheftAndLossDisclaimerContext
- (FindMyTheftAndLossDisclaimerContext)initWithUseCase:(id)a3 serialNumber:(id)a4;
@end

@implementation FindMyTheftAndLossDisclaimerContext

- (FindMyTheftAndLossDisclaimerContext)initWithUseCase:(id)a3 serialNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FindMyTheftAndLossDisclaimerContext;
  v8 = [(FindMyTheftAndLossDisclaimerContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    useCase = v8->_useCase;
    v8->_useCase = v9;

    v11 = [v7 copy];
    serialNumber = v8->_serialNumber;
    v8->_serialNumber = v11;
  }

  return v8;
}

@end