@interface BPSSequence
- (BPSSequence)initWithEnumerator:(id)enumerator;
- (BPSSequence)initWithSequence:(id)sequence;
- (id)bookmark;
- (id)nextEvent;
- (id)validateBookmark:(id)bookmark;
- (void)applyBookmark:(id)bookmark;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSSequence

- (id)nextEvent
{
  enumerator = [(BPSSequence *)self enumerator];
  nextObject = [enumerator nextObject];

  if (nextObject)
  {
    v5 = nextObject;
  }

  else
  {
    [(BPSSequence *)self setFinished:1];
  }

  return nextObject;
}

- (id)bookmark
{
  enumerator = [(BPSSequence *)self enumerator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    enumerator2 = [(BPSSequence *)self enumerator];
    bookmark = [enumerator2 bookmark];
  }

  else
  {
    bookmark = 0;
  }

  return bookmark;
}

- (void)reset
{
  [(BPSSequence *)self setFinished:0];
  enumerator = [(BPSSequence *)self enumerator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    enumerator2 = [(BPSSequence *)self enumerator];
    [enumerator2 reset];
  }
}

- (BPSSequence)initWithSequence:(id)sequence
{
  sequenceCopy = sequence;
  v5 = [[BPSBookmarkableArrayEnumerator alloc] initWithArray:sequenceCopy];

  v6 = [(BPSSequence *)self initWithBookmarkableEnumerator:v5];
  return v6;
}

- (BPSSequence)initWithEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v8.receiver = self;
  v8.super_class = BPSSequence;
  v5 = [(BPSSequence *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BPSSequence *)v5 setEnumerator:enumeratorCopy];
  }

  return v6;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  enumerator = [(BPSSequence *)self enumerator];
  v5 = [[_BPSSequenceInner alloc] initWithDownstream:subscribeCopy enumerator:enumerator];
  if (enumerator)
  {
    [subscribeCopy receiveSubscription:v5];
  }

  else
  {
    v6 = objc_opt_new();
    [subscribeCopy receiveSubscription:v6];

    v7 = +[BPSCompletion success];
    [subscribeCopy receiveCompletion:v7];

    [(_BPSSequenceInner *)v5 cancel];
  }
}

- (id)validateBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  enumerator = [(BPSSequence *)self enumerator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    enumerator2 = [(BPSSequence *)self enumerator];
    v8 = [enumerator2 validateBookmark:bookmarkCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)applyBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  enumerator = [(BPSSequence *)self enumerator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    enumerator2 = [(BPSSequence *)self enumerator];
    [enumerator2 applyBookmark:bookmarkCopy];
  }
}

@end