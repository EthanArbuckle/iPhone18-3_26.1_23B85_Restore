@interface HRNoGatewaysFoundTableViewCell
+ (NSString)defaultReuseIdentifier;
- (HRNoGatewaysFoundTableViewCell)initWithCoder:(id)a3;
- (HRNoGatewaysFoundTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HRNoGatewaysFoundTableViewCell

+ (NSString)defaultReuseIdentifier
{
  v2 = sub_1D139012C();

  return v2;
}

- (HRNoGatewaysFoundTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D115FF4C(a3, a4, v6);
}

- (HRNoGatewaysFoundTableViewCell)initWithCoder:(id)a3
{
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

@end