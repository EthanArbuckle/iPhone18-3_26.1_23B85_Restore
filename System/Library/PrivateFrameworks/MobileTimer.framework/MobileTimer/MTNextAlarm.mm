@interface MTNextAlarm
- (NSURL)clockAppSectionURL;
- (id)description;
@end

@implementation MTNextAlarm

- (NSURL)clockAppSectionURL
{
  v2 = MEMORY[0x1E695DFF8];
  if ([(MTNextAlarm *)self isSleepAlarm])
  {
    v3 = @"clock-sleep-alarm";
  }

  else
  {
    v3 = @"clock-alarm";
  }

  return [v2 mtURLForScheme:v3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MTNextAlarm;
  v4 = [(MTNextAlarm *)&v11 description];
  v5 = [(MTNextAlarm *)self title];
  v6 = [(MTNextAlarm *)self fireDate];
  v7 = [(MTNextAlarm *)self identifier];
  v8 = [(MTNextAlarm *)self clockAppSectionURL];
  v9 = [v3 stringWithFormat:@"[%@] title: [%@] fireDate: [%@] identifier: [%@] clockAppSectionURL: [%@]", v4, v5, v6, v7, v8];

  return v9;
}

@end