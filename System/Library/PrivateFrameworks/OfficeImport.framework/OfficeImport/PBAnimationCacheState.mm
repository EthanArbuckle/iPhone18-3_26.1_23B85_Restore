@interface PBAnimationCacheState
- (BOOL)isValid:(id)a3;
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

- (BOOL)isValid:(id)a3
{
  v4 = a3;
  if ([v4 presetClass] == 1)
  {
    v5 = &OBJC_IVAR___PBAnimationCacheState_mEntranceDrawables;
LABEL_5:
    v6 = *(&self->super.super.isa + *v5);
    goto LABEL_7;
  }

  if ([v4 presetClass] == 2)
  {
    v5 = &OBJC_IVAR___PBAnimationCacheState_mExitDrawables;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  v7 = [v4 target];
  if (v7)
  {
    v8 = [v4 target];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v4 target];
      v11 = [v10 drawable];

      if (v6)
      {
        LODWORD(v7) = [v6 containsObject:v11] ^ 1;
        if (!v7)
        {
          goto LABEL_17;
        }
      }

      else
      {
        LODWORD(v7) = [v4 presetClass] == 6;
        if (!v7)
        {
          goto LABEL_17;
        }
      }

      if (v11)
      {
        [v6 addObject:v11];
        LOBYTE(v7) = 1;
      }
    }

    else
    {
      v11 = 0;
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_17:

  return v7;
}

@end