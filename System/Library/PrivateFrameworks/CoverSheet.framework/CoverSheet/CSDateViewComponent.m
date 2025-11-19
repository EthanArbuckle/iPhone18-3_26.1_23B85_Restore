@interface CSDateViewComponent
- (BOOL)_valueCheckForMask:(void *)a1;
- (CSDateViewComponent)init;
- (NSNumber)pageIndex;
- (id)_pageIndexForInternalPageIndex:(uint64_t)a1;
- (id)combiningWithEquivalent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)_internalPageIndexForPageIndex:(uint64_t)result;
- (void)_internalPageIndex;
- (void)_setValueForInternalPageIndex:(int)a3 hidesTime:(int)a4 constrainsTime:(int)a5 usesCompactTime:;
- (void)setConstrainsTimeHeight:(BOOL)a3;
- (void)setHidesTime:(BOOL)a3;
- (void)setPageIndex:(id)a3;
- (void)setShowCompactTime:(BOOL)a3;
- (void)setVibrantAndCentered:(int64_t)a3;
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
  v3 = [(CSDateViewComponent *)self _internalPageIndex];

  return [(CSDateViewComponent *)self _pageIndexForInternalPageIndex:v3];
}

- (void)_internalPageIndex
{
  if (result)
  {
    v1 = [result value];
    v2 = [v1 unsignedIntegerValue];

    return (v2 & 3);
  }

  return result;
}

- (id)combiningWithEquivalent:(id)a3
{
  v4 = a3;
  if ([v4 hidesTime])
  {
    [(CSDateViewComponent *)self setHidesTime:1];
  }

  if ([v4 constrainsTimeHeight])
  {
    [(CSDateViewComponent *)self setConstrainsTimeHeight:1];
  }

  [v4 vibrantAndCentered];
  if (BSSettingFlagIsYes())
  {
    [(CSDateViewComponent *)self setVibrantAndCentered:1];
  }

  if ([v4 showCompactTime])
  {
    [(CSDateViewComponent *)self setShowCompactTime:1];
  }

  return self;
}

- (void)setPageIndex:(id)a3
{
  v6 = a3;
  v4 = [(CSDateViewComponent *)self pageIndex];
  if ([v6 isEqual:v4])
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

  [(CSDateViewComponent *)self setPageIndex:v6];
LABEL_3:
}

- (void)setHidesTime:(BOOL)a3
{
  if ([(CSDateViewComponent *)self hidesTime]!= a3 || ![(CSComponent *)self hasValueForProperty:4])
  {
    [(CSDateViewComponent *)self setHidesTime:a3];
  }
}

- (void)setConstrainsTimeHeight:(BOOL)a3
{
  if ([(CSDateViewComponent *)self constrainsTimeHeight]!= a3 || ![(CSComponent *)self hasValueForProperty:4])
  {
    [(CSDateViewComponent *)self setConstrainsTimeHeight:a3];
  }
}

- (void)setShowCompactTime:(BOOL)a3
{
  if ([(CSDateViewComponent *)self showCompactTime]!= a3 || ![(CSComponent *)self hasValueForProperty:4])
  {
    [(CSDateViewComponent *)self setShowCompactTime:a3];
  }
}

- (void)setVibrantAndCentered:(int64_t)a3
{
  if ([(CSComponent *)self flag]!= a3)
  {

    [(CSComponent *)self setFlag:a3];
  }
}

- (id)_pageIndexForInternalPageIndex:(uint64_t)a1
{
  v5 = 0;
  if (a1 && (a2 - 4) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{a2 - 2, v2}];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CSDateViewComponent;
  v4 = [(CSComponent *)&v6 copyWithZone:a3];
  [v4 setStretch:{-[CSDateViewComponent stretch](self, "stretch")}];
  return v4;
}

- (uint64_t)_internalPageIndexForPageIndex:(uint64_t)result
{
  if (result)
  {
    v3 = [a2 integerValue];
    if ((v3 - 2) < 0xFFFFFFFFFFFFFFFDLL || a2 == 0)
    {
      return 0;
    }

    else
    {
      return v3 + 2;
    }
  }

  return result;
}

- (void)_setValueForInternalPageIndex:(int)a3 hidesTime:(int)a4 constrainsTime:(int)a5 usesCompactTime:
{
  if (a1)
  {
    v6 = 4;
    if (!a3)
    {
      v6 = 0;
    }

    v7 = 8;
    if (!a4)
    {
      v7 = 0;
    }

    v8 = 16;
    if (!a5)
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6 & 0xFFFFFFFFFFFFFFFCLL | a2 & 3 | v7 | v8];
    [a1 setValue:v9];
  }
}

- (BOOL)_valueCheckForMask:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 value];
  v4 = ([v3 unsignedIntegerValue] & a2) != 0;

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