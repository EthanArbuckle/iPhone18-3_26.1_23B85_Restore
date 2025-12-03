@interface PBAnimationCacheState
- (BOOL)isValid:(id)valid;
- (PBAnimationCacheState)init;
@end

@implementation PBAnimationCacheState

- (PBAnimationCacheState)init
{
  v8.receiver = self;
  v8.super_class = PBAnimationCacheState;
  v2 = [(PDAnimationCacheState *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mEntranceDrawables = v2->mEntranceDrawables;
    v2->mEntranceDrawables = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mExitDrawables = v2->mExitDrawables;
    v2->mExitDrawables = v5;
  }

  return v2;
}

- (BOOL)isValid:(id)valid
{
  validCopy = valid;
  if ([validCopy presetClass] == 1)
  {
    v5 = &OBJC_IVAR___PBAnimationCacheState_mEntranceDrawables;
LABEL_5:
    v6 = *(&self->super.super.isa + *v5);
    goto LABEL_7;
  }

  if ([validCopy presetClass] == 2)
  {
    v5 = &OBJC_IVAR___PBAnimationCacheState_mExitDrawables;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  target = [validCopy target];
  if (target)
  {
    target2 = [validCopy target];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      target3 = [validCopy target];
      drawable = [target3 drawable];

      if (v6)
      {
        LODWORD(target) = [v6 containsObject:drawable] ^ 1;
        if (!target)
        {
          goto LABEL_17;
        }
      }

      else
      {
        LODWORD(target) = [validCopy presetClass] == 6;
        if (!target)
        {
          goto LABEL_17;
        }
      }

      if (drawable)
      {
        [v6 addObject:drawable];
        LOBYTE(target) = 1;
      }
    }

    else
    {
      drawable = 0;
      LOBYTE(target) = 0;
    }
  }

  else
  {
    drawable = 0;
  }

LABEL_17:

  return target;
}

@end