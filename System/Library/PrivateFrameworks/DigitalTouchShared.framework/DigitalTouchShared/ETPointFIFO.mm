@interface ETPointFIFO
- (ETPointFIFO)initWithFIFO:(id)o;
@end

@implementation ETPointFIFO

- (ETPointFIFO)initWithFIFO:(id)o
{
  oCopy = o;
  v7.receiver = self;
  v7.super_class = ETPointFIFO;
  v5 = [(ETPointFIFO *)&v7 init];
  if (v5)
  {
    [oCopy setNextFIFO:v5];
  }

  return v5;
}

@end