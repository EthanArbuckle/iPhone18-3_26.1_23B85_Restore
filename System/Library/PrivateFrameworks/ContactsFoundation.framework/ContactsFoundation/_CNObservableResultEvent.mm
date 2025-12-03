@interface _CNObservableResultEvent
- (BOOL)hasValue;
- (BOOL)isEqual:(id)equal;
- (_CNObservableResultEvent)initWithResult:(id)result;
- (id)description;
- (unint64_t)hash;
- (void)dematerializeWithObserver:(id)observer;
@end

@implementation _CNObservableResultEvent

- (BOOL)hasValue
{
  value = [(_CNObservableResultEvent *)self value];
  v3 = value != 0;

  return v3;
}

- (_CNObservableResultEvent)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = _CNObservableResultEvent;
  v6 = [(_CNObservableResultEvent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
    v8 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  value = [(_CNObservableResultEvent *)self value];
  v5 = [v3 appendName:@"value" object:value];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36___CNObservableResultEvent_isEqual___block_invoke;
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
  v3[2] = __32___CNObservableResultEvent_hash__block_invoke;
  v3[3] = &unk_1E6ED5F00;
  v3[4] = self;
  return [CNHashBuilder hashWithBlocks:v3, 0];
}

- (void)dematerializeWithObserver:(id)observer
{
  observerCopy = observer;
  if ([(_CNObservableResultEvent *)self hasValue])
  {
    value = [(_CNObservableResultEvent *)self value];
    [observerCopy observerDidReceiveResult:value];
  }
}

@end