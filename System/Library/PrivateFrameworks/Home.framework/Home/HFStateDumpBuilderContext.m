@interface HFStateDumpBuilderContext
+ (HFStateDumpBuilderContext)contextWithDetailLevel:(unint64_t)a3;
- (HFStateDumpBuilderContext)initWithContext:(id)a3;
- (HFStateDumpBuilderContext)initWithDetailLevel:(unint64_t)a3;
- (NSDictionary)userInfo;
- (NSSet)objectsToExclude;
- (id)copyWithDetailLevel:(unint64_t)a3;
- (id)copyWithOutputStyle:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)derivedOutputStyle;
@end

@implementation HFStateDumpBuilderContext

+ (HFStateDumpBuilderContext)contextWithDetailLevel:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithDetailLevel:a3];

  return v3;
}

- (HFStateDumpBuilderContext)initWithDetailLevel:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HFStateDumpBuilderContext;
  result = [(HFStateDumpBuilderContext *)&v5 init];
  if (result)
  {
    result->_detailLevel = a3;
  }

  return result;
}

- (HFStateDumpBuilderContext)initWithContext:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HFStateDumpBuilderContext;
  v5 = [(HFStateDumpBuilderContext *)&v13 init];
  if (v5)
  {
    v5->_detailLevel = [v4 detailLevel];
    v5->_outputStyle = [v4 outputStyle];
    v6 = [v4 objectsToExclude];
    objectsToExclude = v5->_objectsToExclude;
    v5->_objectsToExclude = v6;

    v8 = [v4 userInfo];
    userInfo = v5->_userInfo;
    v5->_userInfo = v8;

    v10 = [v4 multilinePrefix];
    multilinePrefix = v5->_multilinePrefix;
    v5->_multilinePrefix = v10;

    v5->_excludePrimaryID = [v4 excludePrimaryID];
    v5->_includeVolatileObjects = [v4 includeVolatileObjects];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFStateDumpBuilderContext allocWithZone:a3];

  return [(HFStateDumpBuilderContext *)v4 initWithContext:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HFMutableStateDumpBuilderContext allocWithZone:a3];

  return [(HFStateDumpBuilderContext *)v4 initWithContext:self];
}

- (id)copyWithDetailLevel:(unint64_t)a3
{
  v4 = [(HFStateDumpBuilderContext *)self mutableCopy];
  [v4 setDetailLevel:a3];
  return v4;
}

- (id)copyWithOutputStyle:(unint64_t)a3
{
  v4 = [(HFStateDumpBuilderContext *)self mutableCopy];
  [v4 setOutputStyle:a3];
  return v4;
}

- (unint64_t)derivedOutputStyle
{
  if (![(HFStateDumpBuilderContext *)self outputStyle])
  {
    v3 = [(HFStateDumpBuilderContext *)self detailLevel];
    if (v3 < 3)
    {
      return v3 + 1;
    }
  }

  return [(HFStateDumpBuilderContext *)self outputStyle];
}

@end