@interface CUStateEvent(HMDStateEventInternal)
- (void)completedWithError:()HMDStateEventInternal;
@end

@implementation CUStateEvent(HMDStateEventInternal)

- (void)completedWithError:()HMDStateEventInternal
{
  v8 = a3;
  userInfo = [self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDStateEventCompletionKey"];

  v6 = _Block_copy(v5);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8);
  }
}

@end