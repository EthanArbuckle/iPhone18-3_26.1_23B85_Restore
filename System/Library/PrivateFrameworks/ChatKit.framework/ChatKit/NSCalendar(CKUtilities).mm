@interface NSCalendar(CKUtilities)
+ (id)__ck_currentCalendar;
+ (void)__ck_setTestCalendar:()CKUtilities;
- (uint64_t)__ck_unitOfDisambiguityFromDate:()CKUtilities toDate:;
@end

@implementation NSCalendar(CKUtilities)

- (uint64_t)__ck_unitOfDisambiguityFromDate:()CKUtilities toDate:
{
  v6 = a3;
  v7 = a4;
  v24 = v6;
  v8 = [self components:30 fromDate:v6];
  v9 = [self components:30 fromDate:v7];
  v10 = [v8 copy];
  v11 = [v9 copy];
  [v10 setDay:0x7FFFFFFFFFFFFFFFLL];
  [v11 setDay:0x7FFFFFFFFFFFFFFFLL];
  v12 = [self dateFromComponents:v10];
  v13 = [self dateFromComponents:v11];
  v14 = 4;
  v15 = [self components:4 fromDate:v12 toDate:v13 options:0];
  if ([v15 year] <= 0)
  {
    v23 = v11;
    v22 = v10;
    v16 = v7;
    v17 = [self dateFromComponents:v8];
    [self dateFromComponents:v9];
    v19 = v18 = v17;
    v20 = [self components:8208 fromDate:v17 toDate:? options:?];
    if ([v20 weekOfYear] <= 0)
    {
      if ([v20 day] <= 0)
      {
        if ([v24 isEqualToDate:v16])
        {
          v14 = 0;
        }

        else
        {
          v14 = 128;
        }
      }

      else
      {
        v14 = 16;
      }
    }

    else
    {
      v14 = 8;
    }

    v7 = v16;
    v10 = v22;
    v11 = v23;
  }

  return v14;
}

+ (id)__ck_currentCalendar
{
  if (__ck_currentCalendar_once != -1)
  {
    +[NSCalendar(CKUtilities) __ck_currentCalendar];
  }

  if (sTestCalendar)
  {
    v1 = sTestCalendar;
  }

  else
  {
    v1 = __ck_currentCalendar_sCalendar;
  }

  return v1;
}

+ (void)__ck_setTestCalendar:()CKUtilities
{
  v4 = a3;
  if (sTestCalendar != v4)
  {
    v5 = v4;
    objc_storeStrong(&sTestCalendar, a3);
    v4 = v5;
  }
}

@end