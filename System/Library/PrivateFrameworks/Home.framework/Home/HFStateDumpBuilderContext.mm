@interface HFStateDumpBuilderContext
+ (HFStateDumpBuilderContext)contextWithDetailLevel:(unint64_t)level;
- (HFStateDumpBuilderContext)initWithContext:(id)context;
- (HFStateDumpBuilderContext)initWithDetailLevel:(unint64_t)level;
- (NSDictionary)userInfo;
- (NSSet)objectsToExclude;
- (id)copyWithDetailLevel:(unint64_t)level;
- (id)copyWithOutputStyle:(unint64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)derivedOutputStyle;
@end

@implementation HFStateDumpBuilderContext

+ (HFStateDumpBuilderContext)contextWithDetailLevel:(unint64_t)level
{
  v3 = [[self alloc] initWithDetailLevel:level];

  return v3;
}

- (HFStateDumpBuilderContext)initWithDetailLevel:(unint64_t)level
{
  v5.receiver = self;
  v5.super_class = HFStateDumpBuilderContext;
  result = [(HFStateDumpBuilderContext *)&v5 init];
  if (result)
  {
    result->_detailLevel = level;
  }

  return result;
}

- (HFStateDumpBuilderContext)initWithContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = HFStateDumpBuilderContext;
  v5 = [(HFStateDumpBuilderContext *)&v13 init];
  if (v5)
  {
    v5->_detailLevel = [contextCopy detailLevel];
    v5->_outputStyle = [contextCopy outputStyle];
    objectsToExclude = [contextCopy objectsToExclude];
    objectsToExclude = v5->_objectsToExclude;
    v5->_objectsToExclude = objectsToExclude;

    userInfo = [contextCopy userInfo];
    userInfo = v5->_userInfo;
    v5->_userInfo = userInfo;

    multilinePrefix = [contextCopy multilinePrefix];
    multilinePrefix = v5->_multilinePrefix;
    v5->_multilinePrefix = multilinePrefix;

    v5->_excludePrimaryID = [contextCopy excludePrimaryID];
    v5->_includeVolatileObjects = [contextCopy includeVolatileObjects];
  }

  return v5;
}

- (NSSet)objectsToExclude
{
  objectsToExclude = self->_objectsToExclude;
  if (objectsToExclude)
  {
    v3 = objectsToExclude;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  return v3;
}

- (NSDictionary)userInfo
{
  if (self->_userInfo)
  {
    return self->_userInfo;
  }

  else
  {
    return MEMORY[0x277CBEC10];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFStateDumpBuilderContext allocWithZone:zone];

  return [(HFStateDumpBuilderContext *)v4 initWithContext:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HFMutableStateDumpBuilderContext allocWithZone:zone];

  return [(HFStateDumpBuilderContext *)v4 initWithContext:self];
}

- (id)copyWithDetailLevel:(unint64_t)level
{
  v4 = [(HFStateDumpBuilderContext *)self mutableCopy];
  [v4 setDetailLevel:level];
  return v4;
}

- (id)copyWithOutputStyle:(unint64_t)style
{
  v4 = [(HFStateDumpBuilderContext *)self mutableCopy];
  [v4 setOutputStyle:style];
  return v4;
}

- (unint64_t)derivedOutputStyle
{
  if (![(HFStateDumpBuilderContext *)self outputStyle])
  {
    detailLevel = [(HFStateDumpBuilderContext *)self detailLevel];
    if (detailLevel < 3)
    {
      return detailLevel + 1;
    }
  }

  return [(HFStateDumpBuilderContext *)self outputStyle];
}

@end