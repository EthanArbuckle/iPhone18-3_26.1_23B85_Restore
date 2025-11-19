@interface GKSupplementaryViewMetrics
+ (id)supplementaryMetrics;
- (CGSize)sizeForCollectionView:(id)a3;
- (GKSupplementaryViewMetrics)init;
- (SEL)configurator;
- (_NSRange)globalSectionRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localDescription;
- (void)setConfigurator:(SEL)a3;
@end

@implementation GKSupplementaryViewMetrics

+ (id)supplementaryMetrics
{
  v2 = objc_alloc_init(GKSupplementaryViewMetrics);

  return v2;
}

- (GKSupplementaryViewMetrics)init
{
  v3.receiver = self;
  v3.super_class = GKSupplementaryViewMetrics;
  result = [(GKSupplementaryViewMetrics *)&v3 init];
  if (result)
  {
    *&result->_desiredWidth = xmmword_24E367630;
    result->_animateWithSection = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setDesiredWidth:self->_desiredWidth];
    [v5 setDesiredHeight:self->_desiredHeight];
    [v5 setShouldPin:self->_shouldPin];
    [v5 setShouldPinGlobal:self->_shouldPinGlobal];
    [v5 setKind:self->_kind];
    [v5 setReusableViewClass:self->_reusableViewClass];
    if (self->_configurator)
    {
      configurator = self->_configurator;
    }

    else
    {
      configurator = 0;
    }

    [v5 setConfigurator:configurator];
    [v5 setTarget:self->_target];
    [v5 setHidden:self->_hidden];
    [v5 setGlobalSectionRange:{self->_globalSectionRange.location, self->_globalSectionRange.length}];
    [v5 setAnimateWithSection:self->_animateWithSection];
    [v5 setShouldUseGlobalIndexing:self->_shouldUseGlobalIndexing];
  }

  return v5;
}

- (id)localDescription
{
  if (self->_desiredWidth == 1.79769313e308)
  {
    v3 = @"*";
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  if (self->_desiredHeight == 1.79769313e308)
  {
    v4 = @"*";
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  if (self->_target)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@" <%@:%p>", objc_opt_class(), self->_target];
  }

  else
  {
    v5 = &stru_28612D290;
  }

  if (self->_reusableViewClass)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", self->_reusableViewClass];
  }

  else
  {
    v6 = &stru_28612D290;
  }

  configurator = self->_configurator;
  if (configurator)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" %s", sel_getName(configurator)];
  }

  else
  {
    v8 = &stru_28612D290;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = _gkRangeFromToDescription(@" sect:", self->_globalSectionRange.location, self->_globalSectionRange.length);
  v12 = v11;
  if (self->_shouldPin)
  {
    v13 = @" pin";
  }

  else
  {
    v13 = &stru_28612D290;
  }

  if (self->_hidden)
  {
    v14 = @" hidden";
  }

  else
  {
    v14 = &stru_28612D290;
  }

  v15 = [v9 stringWithFormat:@"<%@:%p%@ %@%@ size:{%@, %@} kind:%@%@%@%@", v10, self, v11, v13, v14, v3, v4, self->_kind, v6, v5, v8];

  return v15;
}

- (CGSize)sizeForCollectionView:(id)a3
{
  desiredWidth = self->_desiredWidth;
  desiredHeight = self->_desiredHeight;
  [a3 bounds];
  if (desiredWidth == 1.79769313e308)
  {
    v7 = v5;
  }

  else
  {
    v7 = desiredWidth;
  }

  if (desiredHeight == 1.79769313e308)
  {
    v8 = v6;
  }

  else
  {
    v8 = desiredHeight;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (SEL)configurator
{
  if (self->_configurator)
  {
    return self->_configurator;
  }

  else
  {
    return 0;
  }
}

- (void)setConfigurator:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_configurator = v3;
}

- (_NSRange)globalSectionRange
{
  length = self->_globalSectionRange.length;
  location = self->_globalSectionRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end