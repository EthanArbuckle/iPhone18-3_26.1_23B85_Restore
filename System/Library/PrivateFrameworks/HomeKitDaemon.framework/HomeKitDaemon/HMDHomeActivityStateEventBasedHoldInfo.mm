@interface HMDHomeActivityStateEventBasedHoldInfo
- (HMDHomeActivityStateEventBasedHoldInfo)initWithHomeActivityState:(unint64_t)state activationDate:(id)date;
@end

@implementation HMDHomeActivityStateEventBasedHoldInfo

- (HMDHomeActivityStateEventBasedHoldInfo)initWithHomeActivityState:(unint64_t)state activationDate:(id)date
{
  v5.receiver = self;
  v5.super_class = HMDHomeActivityStateEventBasedHoldInfo;
  return [(HMDHomeActivityStateHoldInfo *)&v5 initWithHomeActivityState:state activationDate:date];
}

@end