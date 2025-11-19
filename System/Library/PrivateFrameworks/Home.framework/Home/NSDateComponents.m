@interface NSDateComponents
@end

@implementation NSDateComponents

void __64__NSDateComponents_Additions__hf_dailyWeekdayIntervalComponents__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v2 = [v1 hf_dailyWeekdayIntervalComponentsWithCalendar:v4];
  v3 = _MergedGlobals_230;
  _MergedGlobals_230 = v2;
}

id __77__NSDateComponents_Additions__hf_dailyWeekdayIntervalComponentsWithCalendar___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v2 setWeekday:(*(*(*(a1 + 32) + 8) + 24))++];

  return v2;
}

uint64_t __57__NSDateComponents_Additions__hf_dailyIntervalComponents__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v1 = qword_280E02D00;
  qword_280E02D00 = v0;

  v2 = qword_280E02D00;

  return [v2 setDay:1];
}

uint64_t __58__NSDateComponents_Additions__hf_weeklyIntervalComponents__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v1 = qword_280E02D10;
  qword_280E02D10 = v0;

  v2 = qword_280E02D10;

  return [v2 setWeekOfYear:1];
}

uint64_t __60__NSDateComponents_Additions__hf_biweeklyIntervalComponents__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v1 = qword_280E02D20;
  qword_280E02D20 = v0;

  v2 = qword_280E02D20;

  return [v2 setWeekOfYear:2];
}

uint64_t __59__NSDateComponents_Additions__hf_monthlyIntervalComponents__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v1 = qword_280E02D30;
  qword_280E02D30 = v0;

  v2 = qword_280E02D30;

  return [v2 setMonth:1];
}

uint64_t __58__NSDateComponents_Additions__hf_yearlyIntervalComponents__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v1 = qword_280E02D40;
  qword_280E02D40 = v0;

  v2 = qword_280E02D40;

  return [v2 setYear:1];
}

uint64_t __47__NSDateComponents_Additions__hf_absoluteValue__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) valueForComponent:a2];
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return [v3 setValue:v5 forComponent:a2];
}

uint64_t __47__NSDateComponents_Additions__hf_negativeValue__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = -[*(a1 + 40) valueForComponent:a2];

  return [v3 setValue:v4 forComponent:a2];
}

id __71__NSDateComponents_Additions__hf_compareNextMatchingDate_withCalendar___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqual:*(a1 + 32)])
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = [*(a1 + 48) nextDateAfterDate:*(a1 + 40) matchingComponents:v3 options:1024];
  }

  v5 = v4;

  return v5;
}

uint64_t __76__NSDateComponents_Additions__hf_zeroDateComponentsWithComponents_calendar___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) minimumRangeOfUnit:a2];

  return [v3 setValue:v4 forComponent:a2];
}

uint64_t __49__NSDateComponents_Additions__hf_validComponents__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) valueForComponent:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) |= a2;
  }

  return result;
}

@end