@interface BPSSequence
- (BPSSequence)initWithEnumerator:(id)a3;
- (BPSSequence)initWithSequence:(id)a3;
- (id)bookmark;
- (id)nextEvent;
- (id)validateBookmark:(id)a3;
- (void)applyBookmark:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSSequence

- (id)nextEvent
{
  v3 = [(BPSSequence *)self enumerator];
  v4 = [v3 nextObject];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    [(BPSSequence *)self setFinished:1];
  }

  return v4;
}

- (id)bookmark
{
  v3 = [(BPSSequence *)self enumerator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(BPSSequence *)self enumerator];
    v6 = [v5 bookmark];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)reset
{
  [(BPSSequence *)self setFinished:0];
  v3 = [(BPSSequence *)self enumerator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(BPSSequence *)self enumerator];
    [v5 reset];
  }
}

- (BPSSequence)initWithSequence:(id)a3
{
  v4 = a3;
  v5 = [[BPSBookmarkableArrayEnumerator alloc] initWithArray:v4];

  v6 = [(BPSSequence *)self initWithBookmarkableEnumerator:v5];
  return v6;
}

- (BPSSequence)initWithEnumerator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BPSSequence;
  v5 = [(BPSSequence *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BPSSequence *)v5 setEnumerator:v4];
  }

  return v6;
}

- (void)subscribe:(id)a3
{
  v8 = a3;
  v4 = [(BPSSequence *)self enumerator];
  v5 = [[_BPSSequenceInner alloc] initWithDownstream:v8 enumerator:v4];
  if (v4)
  {
    [v8 receiveSubscription:v5];
  }

  else
  {
    v6 = objc_opt_new();
    [v8 receiveSubscription:v6];

    v7 = +[BPSCompletion success];
    [v8 receiveCompletion:v7];

    [(_BPSSequenceInner *)v5 cancel];
  }
}

- (id)validateBookmark:(id)a3
{
  v4 = a3;
  v5 = [(BPSSequence *)self enumerator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(BPSSequence *)self enumerator];
    v8 = [v7 validateBookmark:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)applyBookmark:(id)a3
{
  v7 = a3;
  v4 = [(BPSSequence *)self enumerator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(BPSSequence *)self enumerator];
    [v6 applyBookmark:v7];
  }
}

@end