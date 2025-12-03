@interface _BPSAbstractZipSide
- (_BPSAbstractZipSide)initWithIndex:(int64_t)index zip:(id)zip;
- (int64_t)receiveInput:(id)input;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSAbstractZipSide

- (_BPSAbstractZipSide)initWithIndex:(int64_t)index zip:(id)zip
{
  zipCopy = zip;
  v11.receiver = self;
  v11.super_class = _BPSAbstractZipSide;
  v8 = [(_BPSAbstractZipSide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_index = index;
    objc_storeStrong(&v8->_zip, zip);
  }

  return v9;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v5 = [(_BPSAbstractZipSide *)self zip];
  [v5 receiveSubscription:subscriptionCopy index:{-[_BPSAbstractZipSide index](self, "index")}];
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  inputCopy = input;
  v6 = [(_BPSAbstractZipSide *)selfCopy zip];
  v7 = [v6 receiveInput:inputCopy index:{-[_BPSAbstractZipSide index](selfCopy, "index")}];

  return v7;
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  v5 = [(_BPSAbstractZipSide *)selfCopy zip];
  [v5 receiveCompletion:completionCopy index:{-[_BPSAbstractZipSide index](selfCopy, "index")}];
}

@end