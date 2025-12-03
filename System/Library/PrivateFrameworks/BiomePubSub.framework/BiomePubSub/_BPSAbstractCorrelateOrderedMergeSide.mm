@interface _BPSAbstractCorrelateOrderedMergeSide
- (_BPSAbstractCorrelateOrderedMergeSide)initWithIndex:(unint64_t)index combiner:(id)combiner;
- (int64_t)receiveInput:(id)input;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSAbstractCorrelateOrderedMergeSide

- (_BPSAbstractCorrelateOrderedMergeSide)initWithIndex:(unint64_t)index combiner:(id)combiner
{
  combinerCopy = combiner;
  v11.receiver = self;
  v11.super_class = _BPSAbstractCorrelateOrderedMergeSide;
  v8 = [(_BPSAbstractCorrelateOrderedMergeSide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_index = index;
    objc_storeStrong(&v8->_combiner, combiner);
  }

  return v9;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  combiner = [(_BPSAbstractCorrelateOrderedMergeSide *)self combiner];
  [combiner receiveSubscription:subscriptionCopy atIndex:{-[_BPSAbstractCorrelateOrderedMergeSide index](self, "index")}];
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  inputCopy = input;
  combiner = [(_BPSAbstractCorrelateOrderedMergeSide *)selfCopy combiner];
  v7 = [combiner receiveInput:inputCopy atIndex:{-[_BPSAbstractCorrelateOrderedMergeSide index](selfCopy, "index")}];

  return v7;
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  combiner = [(_BPSAbstractCorrelateOrderedMergeSide *)selfCopy combiner];
  [combiner receiveCompletion:completionCopy atIndex:{-[_BPSAbstractCorrelateOrderedMergeSide index](selfCopy, "index")}];
}

@end