@interface PBUIWallpaperStyleInfo
- ($755C52D8C4C0F578426A77B555D45B12)priorityInfoForPriority:(SEL)a3;
- (PBUIWallpaperStyleInfo)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)highestValidPriority;
- (void)enumerateValidPrioritiesUsingBlock:(id)a3;
- (void)removePriorityInfoForPriority:(int64_t)a3;
- (void)setPriorityInfo:(id *)a3 forPriority:(int64_t)a4;
- (void)setStyleTransitionState:(id *)a3;
@end

@implementation PBUIWallpaperStyleInfo

- (PBUIWallpaperStyleInfo)init
{
  v3.receiver = self;
  v3.super_class = PBUIWallpaperStyleInfo;
  result = [(PBUIWallpaperStyleInfo *)&v3 init];
  if (result)
  {
    result->_styleTransitionState.startStyle = 0;
    result->_styleTransitionState.endStyle = 0;
    result->_styleTransitionState.transitionFraction = 0.0;
  }

  return result;
}

- ($755C52D8C4C0F578426A77B555D45B12)priorityInfoForPriority:(SEL)a3
{
  if (a4 >= 5)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Bad index to priorityInfoAtIndex:" userInfo:{0, v4, v5}];
    objc_exception_throw(v8);
  }

  v6 = &self[a4];
  v7 = *&v6->var1.var2;
  *&retstr->var0 = *&v6->var1.var0;
  *&retstr->var1.var1 = v7;
  return self;
}

- (void)setPriorityInfo:(id *)a3 forPriority:(int64_t)a4
{
  if (a4 >= 5)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Bad index to setPriorityInfo:atIndex:" userInfo:{0, v4, v5}];
    objc_exception_throw(v8);
  }

  v6 = *&a3->var0;
  v7 = self + 32 * a4;
  *(v7 + 24) = *&a3->var1.var1;
  *(v7 + 8) = v6;
}

- (void)removePriorityInfoForPriority:(int64_t)a3
{
  if (a3 >= 5)
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Bad index to removePriorityInfoForPriority:" userInfo:{0, v3, v4}];
    objc_exception_throw(v5);
  }

  self->_priorityInfo[a3].valid = 0;
}

- (void)enumerateValidPrioritiesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = &self->_priorityInfo[4];
  for (i = 4; ; --i)
  {
    valid = v5->valid;
    --v5;
    if (valid)
    {
      break;
    }

    if (i < 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    ;
  }

  v8 = 0;
  v4[2](v4, i, &v8);
  if (i >= 1 && (v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (int64_t)highestValidPriority
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__PBUIWallpaperStyleInfo_highestValidPriority__block_invoke;
  v4[3] = &unk_278362308;
  v4[4] = &v5;
  [(PBUIWallpaperStyleInfo *)self enumerateValidPrioritiesUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __46__PBUIWallpaperStyleInfo_highestValidPriority__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a3 = 1;
  return result;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperStyleInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  styleTransitionState = self->_styleTransitionState;
  v7 = PBUIStringForStyleTransitionState(&styleTransitionState);
  v8 = [v6 appendObject:v7 withName:@"styleTransitionState"];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__PBUIWallpaperStyleInfo_descriptionBuilderWithMultilinePrefix___block_invoke;
  v13[3] = &unk_2783622E0;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  [v9 appendBodySectionWithName:@"priorityInfo" multilinePrefix:v5 block:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __64__PBUIWallpaperStyleInfo_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PBUIWallpaperStyleInfo_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v5[3] = &unk_278362330;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateValidPrioritiesUsingBlock:v5];
}

void __64__PBUIWallpaperStyleInfo_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40) + 32 * a2;
  v5 = *(v4 + 16);
  v10 = *(v4 + 32);
  v9 = v5;
  v6 = PBUIStringForStyleTransitionState(&v9);
  v7 = PBUIStringForWallpaperStylePriority(a2);
  v8 = [v3 appendObject:v6 withName:v7];
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperStyleInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)setStyleTransitionState:(id *)a3
{
  v3 = *&a3->var0;
  self->_styleTransitionState.transitionFraction = a3->var2;
  *&self->_styleTransitionState.startStyle = v3;
}

@end