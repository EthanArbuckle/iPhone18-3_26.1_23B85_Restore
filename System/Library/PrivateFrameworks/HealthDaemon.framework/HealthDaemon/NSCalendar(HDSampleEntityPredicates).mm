@interface NSCalendar(HDSampleEntityPredicates)
- (id)hd_predicateForSamplesWithTypes:()HDSampleEntityPredicates endingAfterDate:minusDays:;
- (id)hd_predicateForSamplesWithTypes:()HDSampleEntityPredicates endingBeforeDate:minusDays:;
@end

@implementation NSCalendar(HDSampleEntityPredicates)

- (id)hd_predicateForSamplesWithTypes:()HDSampleEntityPredicates endingAfterDate:minusDays:
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSCalendar(HDSampleEntityPredicates) hd_predicateForSamplesWithTypes:endingAfterDate:minusDays:]"];
    [v15 handleFailureInFunction:v16 file:@"HDSampleEntity.m" lineNumber:1029 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
  }

  v10 = [a1 hk_dateBySubtractingDays:a5 fromDate:v9];
  if ([v8 count])
  {
    v11 = HDSampleEntityPredicateForDataTypes(v8);
  }

  else
  {
    v11 = 0;
  }

  v12 = HDSampleEntityPredicateForEndDate(6);
  v13 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v11 otherPredicate:v12];

  return v13;
}

- (id)hd_predicateForSamplesWithTypes:()HDSampleEntityPredicates endingBeforeDate:minusDays:
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSCalendar(HDSampleEntityPredicates) hd_predicateForSamplesWithTypes:endingBeforeDate:minusDays:]"];
    [v15 handleFailureInFunction:v16 file:@"HDSampleEntity.m" lineNumber:1042 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
  }

  v10 = [a1 hk_dateBySubtractingDays:a5 fromDate:v9];
  if ([v8 count])
  {
    v11 = HDSampleEntityPredicateForDataTypes(v8);
  }

  else
  {
    v11 = 0;
  }

  v12 = HDSampleEntityPredicateForEndDate(4);
  v13 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v11 otherPredicate:v12];

  return v13;
}

@end