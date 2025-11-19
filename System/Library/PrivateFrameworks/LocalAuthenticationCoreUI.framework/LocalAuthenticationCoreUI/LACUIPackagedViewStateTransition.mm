@interface LACUIPackagedViewStateTransition
- (LACUIPackagedViewStateTransition)initWithFromState:(id)a3 toState:(id)a4 completion:(id)a5;
- (void)dealloc;
@end

@implementation LACUIPackagedViewStateTransition

- (LACUIPackagedViewStateTransition)initWithFromState:(id)a3 toState:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = LACUIPackagedViewStateTransition;
  v12 = [(LACUIPackagedViewStateTransition *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fromState, a3);
    objc_storeStrong(&v13->_toState, a4);
    v14 = [v11 copy];
    handler = v13->_handler;
    v13->_handler = v14;
  }

  return v13;
}

- (void)dealloc
{
  [(LACUIPackagedViewStateTransition *)self complete:0];
  v3.receiver = self;
  v3.super_class = LACUIPackagedViewStateTransition;
  [(LACUIPackagedViewStateTransition *)&v3 dealloc];
}

@end