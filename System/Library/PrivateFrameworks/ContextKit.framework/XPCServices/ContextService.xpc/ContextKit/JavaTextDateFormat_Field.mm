@interface JavaTextDateFormat_Field
+ (void)initialize;
@end

@implementation JavaTextDateFormat_Field

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilHashtable_init();
    JreStrongAssignAndConsume(&qword_100556F58, v2);
    v3 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v3, @"era", 0);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_ERA_, v3);
    v4 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v4, @"year", 1);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_YEAR_, v4);
    v5 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v5, @"month", 2);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_MONTH_, v5);
    v6 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v6, @"hour of day", 11);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_HOUR_OF_DAY0_, v6);
    v7 = [JavaTextDateFormat_Field alloc];
    JavaTextFormat_Field_initWithNSString_(v7, @"hour of day 1");
    v7->calendarField_ = -1;
    v7->calendarField_ = -1;
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_HOUR_OF_DAY1_, v7);
    v8 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v8, @"minute", 12);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_MINUTE_, v8);
    v9 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v9, @"second", 13);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_SECOND_, v9);
    v10 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v10, @"millisecond", 14);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_MILLISECOND_, v10);
    v11 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v11, @"day of week", 7);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_DAY_OF_WEEK_, v11);
    v12 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v12, @"day of month", 5);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_DAY_OF_MONTH_, v12);
    v13 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v13, @"day of year", 6);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_DAY_OF_YEAR_, v13);
    v14 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v14, @"day of week in month", 8);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_DAY_OF_WEEK_IN_MONTH_, v14);
    v15 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v15, @"week of year", 3);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_WEEK_OF_YEAR_, v15);
    v16 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v16, @"week of month", 4);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_WEEK_OF_MONTH_, v16);
    v17 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v17, @"am pm", 9);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_AM_PM_, v17);
    v18 = [JavaTextDateFormat_Field alloc];
    JavaTextDateFormat_Field_initWithNSString_withInt_(v18, @"hour", 10);
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_HOUR0_, v18);
    v19 = [JavaTextDateFormat_Field alloc];
    JavaTextFormat_Field_initWithNSString_(v19, @"hour 1");
    v19->calendarField_ = -1;
    v19->calendarField_ = -1;
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_HOUR1_, v19);
    v20 = [JavaTextDateFormat_Field alloc];
    JavaTextFormat_Field_initWithNSString_(v20, @"time zone");
    v20->calendarField_ = -1;
    v20->calendarField_ = -1;
    JreStrongAssignAndConsume(&JavaTextDateFormat_Field_TIME_ZONE_, v20);
    atomic_store(1u, JavaTextDateFormat_Field__initialized);
  }
}

@end