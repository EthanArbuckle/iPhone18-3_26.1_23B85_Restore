@interface HMTimerTrigger
@end

@implementation HMTimerTrigger

BOOL __125__HMTimerTrigger_NaturalLanguage__hf_recurrenceNaturalLanguageStringKeyWithOptions_recurrences_intendedForTimeTriggerEditor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 weekday] >= 1 && objc_msgSend(v2, "weekday") != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

id __125__HMTimerTrigger_NaturalLanguage__hf_recurrenceNaturalLanguageStringKeyWithOptions_recurrences_intendedForTimeTriggerEditor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 weekday] < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "weekday") - 1}];
  }

  return v3;
}

uint64_t __125__HMTimerTrigger_NaturalLanguage__hf_recurrenceNaturalLanguageStringKeyWithOptions_recurrences_intendedForTimeTriggerEditor___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF7798];
  v3 = ([a2 intValue] + 1);

  return [v2 weekdayIsWeekend:v3];
}

id __125__HMTimerTrigger_NaturalLanguage__hf_recurrenceNaturalLanguageStringKeyWithOptions_recurrences_intendedForTimeTriggerEditor___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 integerValue] < 0 || (v4 = objc_msgSend(v3, "integerValue"), v4 >= objc_msgSend(*(a1 + 32), "count")))
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "integerValue")}];
  }

  return v5;
}

void __102__HMTimerTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_timeString_fireDate_recurrences___block_invoke_2()
{
  v0 = qword_280E02DF8;
  qword_280E02DF8 = @"timeString";
}

void __102__HMTimerTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_timeString_fireDate_recurrences___block_invoke_4()
{
  v0 = qword_280E02E08;
  qword_280E02E08 = @"weekdays";
}

void __102__HMTimerTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_timeString_fireDate_recurrences___block_invoke_6()
{
  v0 = qword_280E02E18;
  qword_280E02E18 = @"actionsDescription";
}

id __102__HMTimerTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_timeString_fireDate_recurrences___block_invoke_7(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__HMTimerTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_timeString_fireDate_recurrences___block_invoke_8;
  block[3] = &unk_277DF3D38;
  block[4] = *(a1 + 32);
  if (qword_280E02E20 != -1)
  {
    dispatch_once(&qword_280E02E20, block);
  }

  return qword_280E02E28;
}

void __102__HMTimerTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_timeString_fireDate_recurrences___block_invoke_8(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 32);
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = qword_280E02E28;
  qword_280E02E28 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void __102__HMTimerTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_timeString_fireDate_recurrences___block_invoke_10()
{
  v0 = qword_280E02E38;
  qword_280E02E38 = &unk_282525950;
}

void __88__HMTimerTrigger_NaturalLanguage__hf_naturalLanguageDetailsWithRecurrences_withOptions___block_invoke_2()
{
  v0 = objc_alloc_init(HFListFormatter);
  v1 = qword_280E02E48;
  qword_280E02E48 = v0;
}

@end