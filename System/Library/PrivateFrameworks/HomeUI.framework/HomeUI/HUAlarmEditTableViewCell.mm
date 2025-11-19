@interface HUAlarmEditTableViewCell
- (HUAlarmEditTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HUAlarmEditTableViewCell

- (HUAlarmEditTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = HUAlarmEditTableViewCell;
  return [(HUAlarmEditTableViewCell *)&v5 initWithStyle:1 reuseIdentifier:a4];
}

@end