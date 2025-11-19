@interface ECStrings
+ (void)initialize;
@end

@implementation ECStrings

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v14 = TCBundle();
    v2 = [v14 localizedStringForKey:@"h" value:&stru_286EE1130 table:@"TCCompatibility"];
    v3 = sDurationHourShortString;
    sDurationHourShortString = v2;

    v15 = TCBundle();
    v4 = [v15 localizedStringForKey:@"hours" value:&stru_286EE1130 table:@"TCCompatibility"];
    v5 = sDurationHourLongString;
    sDurationHourLongString = v4;

    v16 = TCBundle();
    v6 = [v16 localizedStringForKey:@"m" value:&stru_286EE1130 table:@"TCCompatibility"];
    v7 = sDurationMinuteShortString;
    sDurationMinuteShortString = v6;

    v17 = TCBundle();
    v8 = [v17 localizedStringForKey:@"minutes" value:&stru_286EE1130 table:@"TCCompatibility"];
    v9 = sDurationMinuteLongString;
    sDurationMinuteLongString = v8;

    v18 = TCBundle();
    v10 = [v18 localizedStringForKey:@"s" value:&stru_286EE1130 table:@"TCCompatibility"];
    v11 = sDurationSecondShortString;
    sDurationSecondShortString = v10;

    v19 = TCBundle();
    v12 = [v19 localizedStringForKey:@"seconds" value:&stru_286EE1130 table:@"TCCompatibility"];
    v13 = sDurationSecondLongString;
    sDurationSecondLongString = v12;
  }
}

@end