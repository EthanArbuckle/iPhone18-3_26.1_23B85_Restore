@interface HMDHomeActivityStateEventBasedHoldInfo
- (HMDHomeActivityStateEventBasedHoldInfo)initWithHomeActivityState:(unint64_t)a3 activationDate:(id)a4;
@end

@implementation HMDHomeActivityStateEventBasedHoldInfo

- (HMDHomeActivityStateEventBasedHoldInfo)initWithHomeActivityState:(unint64_t)a3 activationDate:(id)a4
{
  v5.receiver = self;
  v5.super_class = HMDHomeActivityStateEventBasedHoldInfo;
  return [(HMDHomeActivityStateHoldInfo *)&v5 initWithHomeActivityState:a3 activationDate:a4];
}

@end