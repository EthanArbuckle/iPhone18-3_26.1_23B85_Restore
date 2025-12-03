@interface IOSLocaleData
+ (void)initLocaleDataImplWithNSString:(id)string withLibcoreIcuLocaleData:(id)data;
@end

@implementation IOSLocaleData

+ (void)initLocaleDataImplWithNSString:(id)string withLibcoreIcuLocaleData:(id)data
{
  v5 = [[NSLocale alloc] initWithLocaleIdentifier:string];
  v6 = objc_alloc_init(NSDateFormatter);
  [v6 setLocale:v5];
  v7 = NSString_class_();
  v8 = [IOSObjectArray arrayWithLength:2 type:v7];
  -[IOSObjectArray replaceObjectAtIndex:withObject:](v8, "replaceObjectAtIndex:withObject:", 0, [v6 AMSymbol]);
  -[IOSObjectArray replaceObjectAtIndex:withObject:](v8, "replaceObjectAtIndex:withObject:", 1, [v6 PMSymbol]);
  JreStrongAssign(data + 3, v8);
  JreStrongAssign(data + 4, +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", [v6 eraSymbols], v7));
  JreStrongAssign(data + 5, +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", [v6 monthSymbols], v7));
  JreStrongAssign(data + 6, +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", [v6 shortMonthSymbols], v7));
  JreStrongAssign(data + 7, +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", [v6 veryShortMonthSymbols], v7));
  JreStrongAssign(data + 8, +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", [v6 standaloneMonthSymbols], v7));
  JreStrongAssign(data + 9, +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", [v6 shortStandaloneMonthSymbols], v7));
  JreStrongAssign(data + 10, +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", [v6 veryShortStandaloneMonthSymbols], v7));
  v9 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v6 weekdaySymbols]);
  [(NSMutableArray *)v9 insertObject:&stru_100484358 atIndex:0];
  JreStrongAssign(data + 11, [IOSObjectArray arrayWithNSArray:v9 type:v7]);
  v10 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v6 shortWeekdaySymbols]);
  [(NSMutableArray *)v10 insertObject:&stru_100484358 atIndex:0];
  JreStrongAssign(data + 12, [IOSObjectArray arrayWithNSArray:v10 type:v7]);
  v11 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v6 veryShortWeekdaySymbols]);
  [(NSMutableArray *)v11 insertObject:&stru_100484358 atIndex:0];
  JreStrongAssign(data + 13, [IOSObjectArray arrayWithNSArray:v11 type:v7]);
  v12 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v6 standaloneWeekdaySymbols]);
  [(NSMutableArray *)v12 insertObject:&stru_100484358 atIndex:0];
  JreStrongAssign(data + 14, [IOSObjectArray arrayWithNSArray:v12 type:v7]);
  v13 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v6 shortStandaloneWeekdaySymbols]);
  [(NSMutableArray *)v13 insertObject:&stru_100484358 atIndex:0];
  JreStrongAssign(data + 15, [IOSObjectArray arrayWithNSArray:v13 type:v7]);
  v14 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v6 veryShortStandaloneWeekdaySymbols]);
  [(NSMutableArray *)v14 insertObject:&stru_100484358 atIndex:0];
  JreStrongAssign(data + 16, [IOSObjectArray arrayWithNSArray:v14 type:v7]);
  [v6 setTimeStyle:0];
  [v6 setDateStyle:2];
  [v6 setDoesRelativeDateFormatting:1];
  v15 = +[NSDate date];
  JreStrongAssign(data + 18, [v6 stringFromDate:v15]);
  JreStrongAssign(data + 17, [v6 stringFromDate:{+[NSDate dateWithTimeInterval:sinceDate:](NSDate, "dateWithTimeInterval:sinceDate:", v15, -86400.0)}]);
  JreStrongAssign(data + 19, [v6 stringFromDate:{+[NSDate dateWithTimeInterval:sinceDate:](NSDate, "dateWithTimeInterval:sinceDate:", v15, 86400.0)}]);
  [v6 setDoesRelativeDateFormatting:0];
  [v6 setDateStyle:0];
  [v6 setTimeStyle:4];
  JreStrongAssign(data + 20, [v6 dateFormat]);
  [v6 setTimeStyle:3];
  JreStrongAssign(data + 21, [v6 dateFormat]);
  [v6 setTimeStyle:2];
  JreStrongAssign(data + 22, [v6 dateFormat]);
  [v6 setTimeStyle:1];
  JreStrongAssign(data + 23, [v6 dateFormat]);
  [v6 setTimeStyle:0];
  [v6 setDateStyle:4];
  JreStrongAssign(data + 24, [v6 dateFormat]);
  [v6 setDateStyle:3];
  JreStrongAssign(data + 25, [v6 dateFormat]);
  [v6 setDateStyle:2];
  JreStrongAssign(data + 26, [v6 dateFormat]);
  [v6 setDateStyle:1];
  JreStrongAssign(data + 27, [v6 dateFormat]);
  v20 = objc_alloc_init(NSNumberFormatter);
  [v20 setNumberStyle:0];
  [v20 setLocale:v5];
  *(data + 112) = [objc_msgSend(v20 "zeroSymbol")];
  if (!*(data + 112))
  {
    *(data + 112) = 48;
  }

  *(data + 113) = [objc_msgSend(v20 "decimalSeparator")];
  *(data + 114) = [objc_msgSend(v20 "groupingSeparator")];
  *(data + 116) = [objc_msgSend(v20 "percentSymbol")];
  *(data + 117) = [objc_msgSend(v20 "perMillSymbol")];
  *(data + 118) = [objc_msgSend(v20 "currencyGroupingSeparator")];
  *(data + 119) = [objc_msgSend(v20 "minusSign")];
  JreStrongAssign(data + 30, [v20 exponentSymbol]);
  JreStrongAssign(data + 31, [v20 positiveInfinitySymbol]);
  JreStrongAssign(data + 32, [v20 notANumberSymbol]);
  JreStrongAssign(data + 33, [v20 currencySymbol]);
  JreStrongAssign(data + 34, [v20 internationalCurrencySymbol]);
  [v20 setNumberStyle:1];
  [v20 setAllowsFloats:0];
  JreStrongAssign(data + 36, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@;%@", [v20 positiveFormat], objc_msgSend(v20, "negativeFormat")));
  [v20 setAllowsFloats:1];
  JreStrongAssign(data + 35, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@;%@", [v20 positiveFormat], objc_msgSend(v20, "negativeFormat")));
  [v20 setNumberStyle:2];
  JreStrongAssign(data + 37, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@;%@", [v20 positiveFormat], objc_msgSend(v20, "negativeFormat")));
  [v20 setNumberStyle:3];
  JreStrongAssign(data + 38, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@;%@", [v20 positiveFormat], objc_msgSend(v20, "negativeFormat")));
  v16 = +[NSCalendar currentCalendar];
  locale = [(NSCalendar *)v16 locale];
  [(NSCalendar *)v16 setLocale:v5];
  v18 = JavaLangInteger_valueOfWithInt_([(NSCalendar *)v16 firstWeekday]);
  JreStrongAssign(data + 1, v18);
  v19 = JavaLangInteger_valueOfWithInt_([(NSCalendar *)v16 minimumDaysInFirstWeek]);
  JreStrongAssign(data + 2, v19);
  [(NSCalendar *)v16 setLocale:locale];
}

@end