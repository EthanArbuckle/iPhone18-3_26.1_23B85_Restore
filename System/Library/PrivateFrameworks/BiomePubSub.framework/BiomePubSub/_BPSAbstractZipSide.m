@interface _BPSAbstractZipSide
- (_BPSAbstractZipSide)initWithIndex:(int64_t)a3 zip:(id)a4;
- (int64_t)receiveInput:(id)a3;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation _BPSAbstractZipSide

- (_BPSAbstractZipSide)initWithIndex:(int64_t)a3 zip:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _BPSAbstractZipSide;
  v8 = [(_BPSAbstractZipSide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_index = a3;
    objc_storeStrong(&v8->_zip, a4);
  }

  return v9;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = [(_BPSAbstractZipSide *)self zip];
  [v5 receiveSubscription:v4 index:{-[_BPSAbstractZipSide index](self, "index")}];
}

- (int64_t)receiveInput:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(_BPSAbstractZipSide *)v4 zip];
  v7 = [v6 receiveInput:v5 index:{-[_BPSAbstractZipSide index](v4, "index")}];

  return v7;
}

- (void)receiveCompletion:(id)a3
{
  v6 = self;
  v4 = a3;
  v5 = [(_BPSAbstractZipSide *)v6 zip];
  [v5 receiveCompletion:v4 index:{-[_BPSAbstractZipSide index](v6, "index")}];
}

@end