@interface _CNObservableFailureEvent
- (BOOL)isEqual:(id)equal;
- (_CNObservableFailureEvent)initWithError:(id)error;
- (unint64_t)hash;
- (void)dematerializeWithObserver:(id)observer;
@end

@implementation _CNObservableFailureEvent

- (_CNObservableFailureEvent)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = _CNObservableFailureEvent;
  v5 = [(_CNObservableFailureEvent *)&v10 init];
  if (v5)
  {
    v6 = [errorCopy copy];
    error = v5->_error;
    v5->_error = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37___CNObservableFailureEvent_isEqual___block_invoke;
  v7[3] = &unk_1E6ED60C8;
  v7[4] = self;
  v8 = equalCopy;
  v5 = equalCopy;
  LOBYTE(self) = [CNEqualsBuilder isObject:v5 memberOfSameClassAndEqualTo:self withBlocks:v7, 0];

  return self;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33___CNObservableFailureEvent_hash__block_invoke;
  v3[3] = &unk_1E6ED5F00;
  v3[4] = self;
  return [CNHashBuilder hashWithBlocks:v3, 0];
}

- (void)dematerializeWithObserver:(id)observer
{
  observerCopy = observer;
  error = [(_CNObservableFailureEvent *)self error];
  [observerCopy observerDidFailWithError:error];
}

@end