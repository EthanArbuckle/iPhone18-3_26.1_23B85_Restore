@interface _BPSFlatMapSide
- (_BPSFlatMapSide)initWithIndex:(int64_t)a3 outer:(id)a4;
- (int64_t)receiveInput:(id)a3;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation _BPSFlatMapSide

- (_BPSFlatMapSide)initWithIndex:(int64_t)a3 outer:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _BPSFlatMapSide;
  v8 = [(_BPSFlatMapSide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outer, a4);
    v9->_index = a3;
  }

  return v9;
}

- (void)receiveSubscription:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(_BPSFlatMapSide *)self outer];
  [v5 receiveInnerSubscription:v6 index:{-[_BPSFlatMapSide index](self, "index")}];

  objc_autoreleasePoolPop(v4);
}

- (int64_t)receiveInput:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = objc_autoreleasePoolPush();
  v7 = [(_BPSFlatMapSide *)v5 outer];
  v8 = [v7 receiveInnerInput:v4 index:{-[_BPSFlatMapSide index](v5, "index")}];

  objc_autoreleasePoolPop(v6);
  return v8;
}

- (void)receiveCompletion:(id)a3
{
  v7 = a3;
  v4 = self;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_BPSFlatMapSide *)v4 outer];
  [v6 receiveInnerCompletion:v7 index:{-[_BPSFlatMapSide index](v4, "index")}];

  objc_autoreleasePoolPop(v5);
}

@end