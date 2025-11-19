@interface _BPSMergedSide
- (_BPSMergedSide)initWithIndex:(int64_t)a3 merger:(id)a4;
- (int64_t)receiveInput:(id)a3;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation _BPSMergedSide

- (_BPSMergedSide)initWithIndex:(int64_t)a3 merger:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _BPSMergedSide;
  v8 = [(_BPSMergedSide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_index = a3;
    objc_storeStrong(&v8->_merger, a4);
  }

  return v9;
}

- (void)receiveCompletion:(id)a3
{
  v6 = self;
  v4 = a3;
  v5 = [(_BPSMergedSide *)v6 merger];
  [v5 receiveCompletion:v4 atIndex:{-[_BPSMergedSide index](v6, "index")}];
}

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(_BPSMergedSide *)v4 merger];
  v7 = [v6 receiveInput:v5 atIndex:{-[_BPSMergedSide index](v4, "index")}];

  return v7;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = [(_BPSMergedSide *)self merger];
  [v5 receiveSubscription:v4 atIndex:{-[_BPSMergedSide index](self, "index")}];
}

@end