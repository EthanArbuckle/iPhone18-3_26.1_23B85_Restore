@interface NSPredicate(MediaGroupsDaemon)
- (BOOL)mg_containsContainment;
- (uint64_t)mg_containsCurrentDevice;
- (uint64_t)mg_evaluateConstraint:()MediaGroupsDaemon;
@end

@implementation NSPredicate(MediaGroupsDaemon)

- (uint64_t)mg_containsCurrentDevice
{
  predicateFormat = [self predicateFormat];
  v2 = [predicateFormat containsString:@"$CURRENT_"];

  return v2;
}

- (BOOL)mg_containsContainment
{
  v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\ASUBQUERY\\(\\$CONTAINMENT_MAP\\[.+?\\] options:\\$container error:{identifier IN \\$container\\)\\[SIZE\\] > 0\\z", 0, 0}];
  predicateFormat = [self predicateFormat];
  v4 = [v2 numberOfMatchesInString:predicateFormat options:0 range:{0, objc_msgSend(predicateFormat, "length")}] == 1;

  return v4;
}

- (uint64_t)mg_evaluateConstraint:()MediaGroupsDaemon
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = v4[2](v4, self);
    goto LABEL_12;
  }

  selfCopy = self;
  compoundPredicateType = [selfCopy compoundPredicateType];
  subpredicates = [selfCopy subpredicates];
  v8 = 0;
  v9 = 0;
  v10 = compoundPredicateType == 2;
  while (1)
  {
    v11 = v8;
    v8 = [subpredicates objectAtIndex:v9];

    v12 = [v8 mg_evaluateConstraint:v4];
    if (compoundPredicateType != 2)
    {
      break;
    }

    if ((v12 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_11;
    }

LABEL_7:
    if (++v9 >= [subpredicates count])
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