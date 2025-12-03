@interface CKDateUtilities
+ (id)relativeDateFormatterFromDate:(id)date toDate:(id)toDate;
+ (id)relativeDateOnlyFormatterFromDate:(id)date toDate:(id)toDate;
+ (id)relativeFullDateOnlyFormatterFromDate:(id)date toDate:(id)toDate;
+ (id)thePastDateFormatter;
+ (id)thePastDateFormatterNoTime;
+ (id)thePastFullDateFormatterNoTime;
+ (id)theRelativeStandaloneDateFormatter;
+ (id)theShortDateNoTimeInSentenceDateFormatter;
+ (id)thisWeekRelativeDateFormatter;
+ (id)thisWeekRelativeDateFormatterNoTime;
+ (id)thisYearDateFormatter;
+ (id)thisYearDateFormatterNoTime;
+ (id)thisYearFullDateFormatterNoTime;
+ (id)timestampDateFormatter;
@end

@implementation CKDateUtilities

+ (id)relativeDateFormatterFromDate:(id)date toDate:(id)toDate
{
  v6 = MEMORY[0x1E695DEE8];
  toDateCopy = toDate;
  dateCopy = date;
  __ck_currentCalendar = [v6 __ck_currentCalendar];
  v10 = [__ck_currentCalendar __ck_unitOfDisambiguityFromDate:dateCopy toDate:toDateCopy];

  if (v10 == 8)
  {
    thisYearDateFormatter = [self thisYearDateFormatter];
  }

  else
  {
    if (v10 == 4)
    {
      [self thePastDateFormatter];
    }

    else
    {
      [self thisWeekRelativeDateFormatter];
    }
    thisYearDateFormatter = ;
  }

  return thisYearDateFormatter;
}

+ (id)relativeDateOnlyFormatterFromDate:(id)date toDate:(id)toDate
{
  v6 = MEMORY[0x1E695DEE8];
  toDateCopy = toDate;
  dateCopy = date;
  __ck_currentCalendar = [v6 __ck_currentCalendar];
  v10 = [__ck_currentCalendar __ck_unitOfDisambiguityFromDate:dateCopy toDate:toDateCopy];

  if (v10 == 8)
  {
    thisYearDateFormatterNoTime = [self thisYearDateFormatterNoTime];
  }

  else
  {
    if (v10 == 4)
    {
      [self thePastDateFormatterNoTime];
    }

    else
    {
      [self thisWeekRelativeDateFormatterNoTime];
    }
    thisYearDateFormatterNoTime = ;
  }

  return thisYearDateFormatterNoTime;
}

+ (id)relativeFullDateOnlyFormatterFromDate:(id)date toDate:(id)toDate
{
  v6 = MEMORY[0x1E695DEE8];
  toDateCopy = toDate;
  dateCopy = date;
  __ck_currentCalendar = [v6 __ck_currentCalendar];
  v10 = [__ck_currentCalendar __ck_unitOfDisambiguityFromDate:dateCopy toDate:toDateCopy];

  if (v10 == 8)
  {
    thisYearFullDateFormatterNoTime = [self thisYearFullDateFormatterNoTime];
  }

  else
  {
    if (v10 == 4)
    {
      [self thePastFullDateFormatterNoTime];
    }

    else
    {
      [self thisWeekRelativeDateFormatterNoTime];
    }
    thisYearFullDateFormatterNoTime = ;
  }

  return thisYearFullDateFormatterNoTime;
}

+ (id)thisWeekRelativeDateFormatter
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:7];

  return v3;
}

+ (id)thisWeekRelativeDateFormatterNoTime
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:6];

  return v3;
}

+ (id)thisYearDateFormatterNoTime
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:5];

  return v3;
}

+ (id)thisYearFullDateFormatterNoTime
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:4];

  return v3;
}

+ (id)thisYearDateFormatter
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:3];

  return v3;
}

+ (id)thePastFullDateFormatterNoTime
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:2];

  return v3;
}

+ (id)thePastDateFormatterNoTime
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:1];

  return v3;
}

+ (id)thePastDateFormatter
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:0];

  return v3;
}

+ (id)theShortDateNoTimeInSentenceDateFormatter
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:8];

  return v3;
}

+ (id)timestampDateFormatter
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:9];

  return v3;
}

+ (id)theRelativeStandaloneDateFormatter
{
  v2 = +[CKDateFormatterHelper sharedInstance];
  v3 = [v2 getDateFormatterFor:10];

  return v3;
}

@end