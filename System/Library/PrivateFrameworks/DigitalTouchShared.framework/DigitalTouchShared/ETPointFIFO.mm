@interface ETPointFIFO
- (ETPointFIFO)initWithFIFO:(id)a3;
@end

@implementation ETPointFIFO

- (ETPointFIFO)initWithFIFO:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ETPointFIFO;
  v5 = [(ETPointFIFO *)&v7 init];
  if (v5)
  {
    [v4 setNextFIFO:v5];
  }

  return v5;
}

@end