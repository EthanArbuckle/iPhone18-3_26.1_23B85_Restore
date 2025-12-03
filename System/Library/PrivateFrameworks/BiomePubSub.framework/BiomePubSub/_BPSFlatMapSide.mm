@interface _BPSFlatMapSide
- (_BPSFlatMapSide)initWithIndex:(int64_t)index outer:(id)outer;
- (int64_t)receiveInput:(id)input;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSFlatMapSide

- (_BPSFlatMapSide)initWithIndex:(int64_t)index outer:(id)outer
{
  outerCopy = outer;
  v11.receiver = self;
  v11.super_class = _BPSFlatMapSide;
  v8 = [(_BPSFlatMapSide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outer, outer);
    v9->_index = index;
  }

  return v9;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v4 = objc_autoreleasePoolPush();
  outer = [(_BPSFlatMapSide *)self outer];
  [outer receiveInnerSubscription:subscriptionCopy index:{-[_BPSFlatMapSide index](self, "index")}];

  objc_autoreleasePoolPop(v4);
}

- (int64_t)receiveInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  v6 = objc_autoreleasePoolPush();
  outer = [(_BPSFlatMapSide *)selfCopy outer];
  v8 = [outer receiveInnerInput:inputCopy index:{-[_BPSFlatMapSide index](selfCopy, "index")}];

  objc_autoreleasePoolPop(v6);
  return v8;
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  v5 = objc_autoreleasePoolPush();
  outer = [(_BPSFlatMapSide *)selfCopy outer];
  [outer receiveInnerCompletion:completionCopy index:{-[_BPSFlatMapSide index](selfCopy, "index")}];

  objc_autoreleasePoolPop(v5);
}

@end