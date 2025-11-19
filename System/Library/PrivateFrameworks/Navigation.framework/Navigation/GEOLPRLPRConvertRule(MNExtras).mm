@interface GEOLPRLPRConvertRule(MNExtras)
- (id)fillRulesForPlateTypes:()MNExtras atIndexes:;
- (id)mapRulesForPlateTypes:()MNExtras atIndexes:;
- (id)pickupRulesForPlateTypes:()MNExtras atIndexes:;
- (id)rules:()MNExtras forPlateTypes:atIndexes:;
- (id)validDateInterval;
- (uint64_t)hasValidDateInterval;
@end

@implementation GEOLPRLPRConvertRule(MNExtras)

- (id)fillRulesForPlateTypes:()MNExtras atIndexes:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 fillRules];
  v9 = [a1 rules:v8 forPlateTypes:v7 atIndexes:v6];

  return v9;
}

- (id)mapRulesForPlateTypes:()MNExtras atIndexes:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 mapRules];
  v9 = [a1 rules:v8 forPlateTypes:v7 atIndexes:v6];

  return v9;
}

- (id)pickupRulesForPlateTypes:()MNExtras atIndexes:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 pickupRules];
  v9 = [a1 rules:v8 forPlateTypes:v7 atIndexes:v6];

  return v9;
}

- (id)rules:()MNExtras forPlateTypes:atIndexes:
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF70];
  v11 = a3;
  v12 = [v10 arrayWithCapacity:{objc_msgSend(a1, "pickupRulesCount")}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__GEOLPRLPRConvertRule_MNExtras__rules_forPlateTypes_atIndexes___block_invoke;
  v19[3] = &unk_1E842AF00;
  v13 = v12;
  v20 = v13;
  v21 = v9;
  v22 = v8;
  v14 = v8;
  v15 = v9;
  [v11 enumerateObjectsUsingBlock:v19];

  v16 = v22;
  v17 = v13;

  return v13;
}

- (id)validDateInterval
{
  if ([a1 hasValidStartTime])
  {
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(a1, "validStartTime")}];
  }

  else
  {
    [MEMORY[0x1E695DF00] distantPast];
  }
  v2 = ;
  if ([a1 hasValidEndTime])
  {
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(a1, "validEndTime")}];
  }

  else
  {
    [MEMORY[0x1E695DF00] distantFuture];
  }
  v3 = ;
  v4 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v2 endDate:v3];

  return v4;
}

- (uint64_t)hasValidDateInterval
{
  if ([a1 hasValidStartTime] && objc_msgSend(a1, "hasValidEndTime"))
  {
    v2 = [a1 validStartTime];
    return v2 < [a1 validEndTime];
  }

  else if ([a1 hasValidStartTime])
  {
    return 1;
  }

  else
  {

    return [a1 hasValidEndTime];
  }
}

@end