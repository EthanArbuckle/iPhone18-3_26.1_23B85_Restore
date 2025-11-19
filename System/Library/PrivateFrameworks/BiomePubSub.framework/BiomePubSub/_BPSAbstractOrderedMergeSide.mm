@interface _BPSAbstractOrderedMergeSide
- (_BPSAbstractOrderedMergeSide)initWithIndex:(unint64_t)a3 combiner:(id)a4;
- (int64_t)receiveInput:(id)a3;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation _BPSAbstractOrderedMergeSide

- (_BPSAbstractOrderedMergeSide)initWithIndex:(unint64_t)a3 combiner:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _BPSAbstractOrderedMergeSide;
  v8 = [(_BPSAbstractOrderedMergeSide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_index = a3;
    objc_storeStrong(&v8->_combiner, a4);
  }

  return v9;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = [(_BPSAbstractOrderedMergeSide *)self combiner];
  [v5 receiveSubscription:v4 atIndex:{-[_BPSAbstractOrderedMergeSide index](self, "index")}];
}

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(_BPSAbstractOrderedMergeSide *)v4 combiner];
  v7 = [v6 receiveInput:v5 atIndex:{-[_BPSAbstractOrderedMergeSide index](v4, "index")}];

  return v7;
}

- (void)receiveCompletion:(id)a3
{
  v6 = self;
  v4 = a3;
  v5 = [(_BPSAbstractOrderedMergeSide *)v6 combiner];
  [v5 receiveCompletion:v4 atIndex:{-[_BPSAbstractOrderedMergeSide index](v6, "index")}];
}

@end