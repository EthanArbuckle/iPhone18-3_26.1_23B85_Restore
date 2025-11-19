@interface NSPredicate(MediaGroupsDaemon)
- (BOOL)mg_containsContainment;
- (uint64_t)mg_containsCurrentDevice;
- (uint64_t)mg_evaluateConstraint:()MediaGroupsDaemon;
@end

@implementation NSPredicate(MediaGroupsDaemon)

- (uint64_t)mg_containsCurrentDevice
{
  v1 = [a1 predicateFormat];
  v2 = [v1 containsString:@"$CURRENT_"];

  return v2;
}

- (BOOL)mg_containsContainment
{
  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\ASUBQUERY\\(\\$CONTAINMENT_MAP\\[.+?\\] options:\\$container error:{identifier IN \\$container\\)\\[SIZE\\] > 0\\z", 0, 0}];
  v3 = [a1 predicateFormat];
  v4 = [v2 numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}] == 1;

  return v4;
}

- (uint64_t)mg_evaluateConstraint:()MediaGroupsDaemon
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = v4[2](v4, a1);
    goto LABEL_12;
  }

  v5 = a1;
  v6 = [v5 compoundPredicateType];
  v7 = [v5 subpredicates];
  v8 = 0;
  v9 = 0;
  v10 = v6 == 2;
  while (1)
  {
    v11 = v8;
    v8 = [v7 objectAtIndex:v9];

    v12 = [v8 mg_evaluateConstraint:v4];
    if (v6 != 2)
    {
      break;
    }

    if ((v12 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_11;
    }

LABEL_7:
    if (++v9 >= [v7 count])
    {
      goto LABEL_11;
    }
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  v10 = 1;
LABEL_11:

LABEL_12:
  return v10;
}

@end