@interface CUStateEvent(HMDStateEvent)
- (id)initWithName:()HMDStateEvent userInfo:completion:;
@end

@implementation CUStateEvent(HMDStateEvent)

- (id)initWithName:()HMDStateEvent userInfo:completion:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
    v12 = [v9 mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
    }

    v15 = v14;

    v16 = _Block_copy(v11);
    [v15 setObject:v16 forKeyedSubscript:@"HMDStateEventCompletionKey"];

    v17 = [v15 copy];
    v18 = [a1 initWithName:v8 userInfo:v17];

    return v18;
  }

  else
  {
    v20 = _HMFPreconditionFailure();
    return +[(HMDHomeActivityComingHomeAggregator *)v20];
  }
}

@end