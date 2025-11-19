@interface NSString(CallHistory)
+ (id)ch_localizedNameOfTimeIntervalType:()CallHistory;
@end

@implementation NSString(CallHistory)

+ (id)ch_localizedNameOfTimeIntervalType:()CallHistory
{
  if (a3 == 2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [CHLocalization localizedStringForKey:@"TIME_INTERVAL_DAYS"];
    v6 = 30;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [CHLocalization localizedStringForKey:@"TIME_INTERVAL_YEARS"];
    v6 = 1;
LABEL_7:
    v3 = [v4 stringWithFormat:v5, v6];

    goto LABEL_9;
  }

  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [CHLocalization localizedStringForKey:@"TIME_INTERVAL_FOREVER"];
  }

LABEL_9:

  return v3;
}

@end