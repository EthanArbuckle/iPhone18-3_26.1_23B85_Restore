@interface CSDateViewComponent
- (BOOL)_valueCheckForMask:(void *)mask;
- (CSDateViewComponent)init;
- (NSNumber)pageIndex;
- (id)_pageIndexForInternalPageIndex:(uint64_t)index;
- (id)combiningWithEquivalent:(id)equivalent;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)_internalPageIndexForPageIndex:(uint64_t)result;
- (void)_internalPageIndex;
- (void)_setValueForInternalPageIndex:(int)index hidesTime:(int)time constrainsTime:(int)constrainsTime usesCompactTime:;
- (void)setConstrainsTimeHeight:(BOOL)height;
- (void)setHidesTime:(BOOL)time;
- (void)setPageIndex:(id)index;
- (void)setShowCompactTime:(BOOL)time;
- (void)setVibrantAndCentered:(int64_t)centered;
@end

@implementation CSDateViewComponent

- (CSDateViewComponent)init
{
  v5.receiver = self;
  v5.super_class = CSDateViewComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:1];
    [(CSDateViewComponent *)v3 setVibrantAndCentered:0x7FFFFFFFFFFFFFFFLL];
  }

  return v3;
}

- (NSNumber)pageIndex
{
  _internalPageIndex = [(CSDateViewComponent *)self _internalPageIndex];

  return [(CSDateViewComponent *)self _pageIndexForInternalPageIndex:_internalPageIndex];
}

- (void)_internalPageIndex
{
  if (result)
  {
    value = [result value];
    unsignedIntegerValue = [value unsignedIntegerValue];

    return (unsignedIntegerValue & 3);
  }

  return result;
}

- (id)combiningWithEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if ([equivalentCopy hidesTime])
  {
    [(CSDateViewComponent *)self setHidesTime:1];
  }

  if ([equivalentCopy constrainsTimeHeight])
  {
    [(CSDateViewComponent *)self setConstrainsTimeHeight:1];
  }

  [equivalentCopy vibrantAndCentered];
  if (BSSettingFlagIsYes())
  {
    [(CSDateViewComponent *)self setVibrantAndCentered:1];
  }

  if ([equivalentCopy showCompactTime])
  {
    [(CSDateViewComponent *)self setShowCompactTime:1];
  }

  return self;
}

- (void)setPageIndex:(id)index
{
  indexCopy = index;
  pageIndex = [(CSDateViewComponent *)self pageIndex];
  if ([indexCopy isEqual:pageIndex])
  {
    v5 = [(CSComponent *)self hasValueForProperty:4];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  [(CSDateViewComponent *)self setPageIndex:indexCopy];
LABEL_3:
}

- (void)setHidesTime:(BOOL)time
{
  if ([(CSDateViewComponent *)self hidesTime]!= time || ![(CSComponent *)self hasValueForProperty:4])
  {
    [(CSDateViewComponent *)self setHidesTime:time];
  }
}

- (void)setConstrainsTimeHeight:(BOOL)height
{
  if ([(CSDateViewComponent *)self constrainsTimeHeight]!= height || ![(CSComponent *)self hasValueForProperty:4])
  {
    [(CSDateViewComponent *)self setConstrainsTimeHeight:height];
  }
}

- (void)setShowCompactTime:(BOOL)time
{
  if ([(CSDateViewComponent *)self showCompactTime]!= time || ![(CSComponent *)self hasValueForProperty:4])
  {
    [(CSDateViewComponent *)self setShowCompactTime:time];
  }
}

- (void)setVibrantAndCentered:(int64_t)centered
{
  if ([(CSComponent *)self flag]!= centered)
  {

    [(CSComponent *)self setFlag:centered];
  }
}

- (id)_pageIndexForInternalPageIndex:(uint64_t)index
{
  v5 = 0;
  if (index && (a2 - 4) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{a2 - 2, v2}];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CSDateViewComponent;
  v4 = [(CSComponent *)&v6 copyWithZone:zone];
  [v4 setStretch:{-[CSDateViewComponent stretch](self, "stretch")}];
  return v4;
}

- (uint64_t)_internalPageIndexForPageIndex:(uint64_t)result
{
  if (result)
  {
    integerValue = [a2 integerValue];
    if ((integerValue - 2) < 0xFFFFFFFFFFFFFFFDLL || a2 == 0)
    {
      return 0;
    }

    else
    {
      return integerValue + 2;
    }
  }

  return result;
}

- (void)_setValueForInternalPageIndex:(int)index hidesTime:(int)time constrainsTime:(int)constrainsTime usesCompactTime:
{
  if (self)
  {
    v6 = 4;
    if (!index)
    {
      v6 = 0;
    }

    v7 = 8;
    if (!time)
    {
      v7 = 0;
    }

    v8 = 16;
    if (!constrainsTime)
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6 & 0xFFFFFFFFFFFFFFFCLL | a2 & 3 | v7 | v8];
    [self setValue:v9];
  }
}

- (BOOL)_valueCheckForMask:(void *)mask
{
  if (!mask)
  {
    return 0;
  }

  value = [mask value];
  v4 = ([value unsignedIntegerValue] & a2) != 0;

  return v4;
}

- (void)setPageIndex:(void *)a1 .cold.1(void *a1, void *a2)
{
  if (a1)
  {
    v4 = [a2 integerValue];
    if ((v4 - 2) < 0xFFFFFFFFFFFFFFFDLL || a2 == 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 + 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 hidesTime];
  v8 = [a1 constrainsTimeHeight];
  v9 = [a1 showCompactTime];

  [(CSDateViewComponent *)a1 _setValueForInternalPageIndex:v6 hidesTime:v7 constrainsTime:v8 usesCompactTime:v9];
}

- (void)setHidesTime:(void *)a1 .cold.1(void *a1, char a2)
{
  v4 = [(CSDateViewComponent *)a1 _internalPageIndex];
  v5 = [a1 constrainsTimeHeight];
  v6 = [a1 showCompactTime];

  [(CSDateViewComponent *)a1 _setValueForInternalPageIndex:v4 hidesTime:a2 & 1 constrainsTime:v5 usesCompactTime:v6];
}

- (void)setConstrainsTimeHeight:(void *)a1 .cold.1(void *a1, char a2)
{
  v4 = [(CSDateViewComponent *)a1 _internalPageIndex];
  v5 = [a1 hidesTime];
  v6 = [a1 showCompactTime];

  [(CSDateViewComponent *)a1 _setValueForInternalPageIndex:v4 hidesTime:v5 constrainsTime:a2 & 1 usesCompactTime:v6];
}

- (void)setShowCompactTime:(void *)a1 .cold.1(void *a1, char a2)
{
  v4 = [(CSDateViewComponent *)a1 _internalPageIndex];
  v5 = [a1 hidesTime];
  v6 = [a1 constrainsTimeHeight];

  [(CSDateViewComponent *)a1 _setValueForInternalPageIndex:v4 hidesTime:v5 constrainsTime:v6 usesCompactTime:a2 & 1];
}

@end