@interface NSDateComponents(Additions)
+ (id)hf_biweeklyIntervalComponents;
+ (id)hf_componentsWithHour:()Additions minute:;
+ (id)hf_dailyIntervalComponents;
+ (id)hf_dailyWeekdayIntervalComponents;
+ (id)hf_dailyWeekdayIntervalComponentsWithCalendar:()Additions;
+ (id)hf_monthlyIntervalComponents;
+ (id)hf_weeklyIntervalComponents;
+ (id)hf_yearlyIntervalComponents;
+ (id)hf_zeroDateComponentsWithComponents:()Additions calendar:;
- (double)hf_timeInterval;
- (id)hf_absoluteValue;
- (id)hf_negativeValue;
- (uint64_t)hf_compareNextMatchingDate:()Additions;
- (uint64_t)hf_compareNextMatchingDate:()Additions withCalendar:;
- (uint64_t)hf_isEqualToHomeKitRecurrence:()Additions;
- (uint64_t)hf_validComponents;
@end

@implementation NSDateComponents(Additions)

+ (id)hf_dailyWeekdayIntervalComponents
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__NSDateComponents_Additions__hf_dailyWeekdayIntervalComponents__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280E02CF8 != -1)
  {
    dispatch_once(&qword_280E02CF8, block);
  }

  v1 = _MergedGlobals_230;

  return v1;
}

+ (id)hf_dailyWeekdayIntervalComponentsWithCalendar:()Additions
{
  v3 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 1;
  v4 = MEMORY[0x277CBEA60];
  weekdaySymbols = [v3 weekdaySymbols];
  v6 = [weekdaySymbols count];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__NSDateComponents_Additions__hf_dailyWeekdayIntervalComponentsWithCalendar___block_invoke;
  v9[3] = &unk_277DF5850;
  v9[4] = v10;
  v7 = [v4 na_arrayByRepeatingWithCount:v6 generatorBlock:v9];

  _Block_object_dispose(v10, 8);

  return v7;
}

+ (id)hf_dailyIntervalComponents
{
  if (qword_280E02D08 != -1)
  {
    dispatch_once(&qword_280E02D08, &__block_literal_global_39);
  }

  v1 = qword_280E02D00;

  return v1;
}

+ (id)hf_weeklyIntervalComponents
{
  if (qword_280E02D18 != -1)
  {
    dispatch_once(&qword_280E02D18, &__block_literal_global_5_0);
  }

  v1 = qword_280E02D10;

  return v1;
}

+ (id)hf_biweeklyIntervalComponents
{
  if (qword_280E02D28 != -1)
  {
    dispatch_once(&qword_280E02D28, &__block_literal_global_7);
  }

  v1 = qword_280E02D20;

  return v1;
}

+ (id)hf_monthlyIntervalComponents
{
  if (qword_280E02D38 != -1)
  {
    dispatch_once(&qword_280E02D38, &__block_literal_global_9_0);
  }

  v1 = qword_280E02D30;

  return v1;
}

+ (id)hf_yearlyIntervalComponents
{
  if (qword_280E02D48 != -1)
  {
    dispatch_once(&qword_280E02D48, &__block_literal_global_11_0);
  }

  v1 = qword_280E02D40;

  return v1;
}

+ (id)hf_componentsWithHour:()Additions minute:
{
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setHour:a3];
  [v6 setMinute:a4];

  return v6;
}

- (uint64_t)hf_isEqualToHomeKitRecurrence:()Additions
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (([self isEqual:v4] & 1) == 0)
    {
      v6 = [self copy];
      [v6 setNanosecond:0x7FFFFFFFFFFFFFFFLL];
      [v6 setSecond:0x7FFFFFFFFFFFFFFFLL];
      v7 = [v4 copy];
      [v7 setNanosecond:0x7FFFFFFFFFFFFFFFLL];
      [v7 setSecond:0x7FFFFFFFFFFFFFFFLL];
      v5 = [v6 isEqual:v7];

      goto LABEL_7;
    }
  }

  v5 = 1;
LABEL_7:

  return v5;
}

- (double)hf_timeInterval
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [currentCalendar dateByAddingComponents:self toDate:v2 options:0];

  [v4 timeIntervalSinceDate:v2];
  v6 = v5;

  return v6;
}

- (id)hf_absoluteValue
{
  v2 = [self copy];
  hf_validComponents = [self hf_validComponents];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __47__NSDateComponents_Additions__hf_absoluteValue__block_invoke;
  v13 = &unk_277DF5878;
  v4 = v2;
  v14 = v4;
  selfCopy = self;
  v5 = v11;
  if (hf_validComponents)
  {
    v6 = 0;
    v16 = 0;
    v7 = vcnt_s8(hf_validComponents);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.i32[0];
    do
    {
      if ((*&hf_validComponents & (1 << v6)) != 0)
      {
        (v12)(v5);
        if (v16)
        {
          break;
        }

        --v8;
      }

      if (v6 > 0x3E)
      {
        break;
      }

      ++v6;
    }

    while (v8 > 0);
  }

  v9 = v4;
  return v4;
}

- (id)hf_negativeValue
{
  v2 = [self copy];
  hf_validComponents = [self hf_validComponents];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __47__NSDateComponents_Additions__hf_negativeValue__block_invoke;
  v13 = &unk_277DF5878;
  v4 = v2;
  v14 = v4;
  selfCopy = self;
  v5 = v11;
  if (hf_validComponents)
  {
    v6 = 0;
    v16 = 0;
    v7 = vcnt_s8(hf_validComponents);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.i32[0];
    do
    {
      if ((*&hf_validComponents & (1 << v6)) != 0)
      {
        (v12)(v5);
        if (v16)
        {
          break;
        }

        --v8;
      }

      if (v6 > 0x3E)
      {
        break;
      }

      ++v6;
    }

    while (v8 > 0);
  }

  v9 = v4;
  return v4;
}

- (uint64_t)hf_compareNextMatchingDate:()Additions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [self hf_compareNextMatchingDate:v5 withCalendar:currentCalendar];

  return v7;
}

- (uint64_t)hf_compareNextMatchingDate:()Additions withCalendar:
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() hf_zeroDateComponentsWithComponents:objc_msgSend(v7 calendar:{"hf_validComponents") | objc_msgSend(self, "hf_validComponents"), v6}];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v10 = [v6 nextDateAfterDate:v9 matchingComponents:v8 options:1024];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__NSDateComponents_Additions__hf_compareNextMatchingDate_withCalendar___block_invoke;
  aBlock[3] = &unk_277DF58A0;
  v11 = v8;
  v22 = v11;
  v12 = v10;
  v23 = v12;
  v13 = v6;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  v15 = v14[2](v14, self);
  v16 = v14[2](v14, v7);

  distantFuture2 = v15;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_7:
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v18 = [distantFuture2 compare:distantFuture];

    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_3:
  v18 = [distantFuture2 compare:v16];
  if (!v15)
  {
LABEL_4:
  }

LABEL_5:

  return v18;
}

+ (id)hf_zeroDateComponentsWithComponents:()Additions calendar:
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v17 = __76__NSDateComponents_Additions__hf_zeroDateComponentsWithComponents_calendar___block_invoke;
  v18 = &unk_277DF5878;
  v7 = v6;
  v19 = v7;
  v8 = v5;
  v20 = v8;
  v9 = v16;
  if (a3)
  {
    v10 = 0;
    v21 = 0;
    v11 = vcnt_s8(a3);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.i32[0];
    do
    {
      if (((1 << v10) & a3) != 0)
      {
        (v17)(v9);
        if (v21)
        {
          break;
        }

        --v12;
      }

      if (v10 > 0x3E)
      {
        break;
      }

      ++v10;
    }

    while (v12 > 0);
  }

  v13 = v20;
  v14 = v7;

  return v7;
}

- (uint64_t)hf_validComponents
{
  _hf_allPossibleComponents = [objc_opt_class() _hf_allPossibleComponents];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __49__NSDateComponents_Additions__hf_validComponents__block_invoke;
  v11 = &unk_277DF58C8;
  selfCopy = self;
  v13 = &v14;
  v3 = v9;
  if (_hf_allPossibleComponents)
  {
    v4 = 0;
    v18 = 0;
    v5 = vcnt_s8(_hf_allPossibleComponents);
    v5.i16[0] = vaddlv_u8(v5);
    v6 = v5.i32[0];
    do
    {
      if ((*&_hf_allPossibleComponents & (1 << v4)) != 0)
      {
        (v10)(v3);
        if (v18)
        {
          break;
        }

        --v6;
      }

      if (v4 > 0x3E)
      {
        break;
      }

      ++v4;
    }

    while (v6 > 0);
  }

  v7 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v7;
}

@end