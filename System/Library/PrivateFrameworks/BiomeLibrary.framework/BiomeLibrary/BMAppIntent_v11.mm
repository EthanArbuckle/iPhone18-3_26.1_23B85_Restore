@interface BMAppIntent_v11
- (int)handlingStatus;
@end

@implementation BMAppIntent_v11

- (int)handlingStatus
{
  v4.receiver = self;
  v4.super_class = BMAppIntent_v11;
  handlingStatus = [(BMAppIntent *)&v4 handlingStatus];
  if (handlingStatus < 7)
  {
    return handlingStatus + 1;
  }

  else
  {
    return 0;
  }
}

@end