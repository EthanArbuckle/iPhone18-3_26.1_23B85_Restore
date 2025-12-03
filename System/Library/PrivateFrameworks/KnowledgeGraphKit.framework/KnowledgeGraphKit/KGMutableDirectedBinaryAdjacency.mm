@interface KGMutableDirectedBinaryAdjacency
- (KGMutableDirectedBinaryAdjacency)init;
- (void)formUnionWith:(id)with;
- (void)insertSource:(unint64_t)source target:(unint64_t)target;
- (void)removeSource:(unint64_t)source target:(unint64_t)target;
- (void)removeTargetsForSource:(unint64_t)source;
- (void)setTargets:(id)targets forSource:(unint64_t)source;
- (void)subtract:(id)subtract;
@end

@implementation KGMutableDirectedBinaryAdjacency

- (void)removeTargetsForSource:(unint64_t)source
{
  mutableUnderlyingObject = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  [mutableUnderlyingObject removeTargetsForSource:source];
}

- (void)setTargets:(id)targets forSource:(unint64_t)source
{
  targetsCopy = targets;
  mutableUnderlyingObject = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  [mutableUnderlyingObject setTargets:targetsCopy forSource:source];
}

- (void)subtract:(id)subtract
{
  subtractCopy = subtract;
  mutableUnderlyingObject = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  v5 = subtractCopy[1];

  [mutableUnderlyingObject subtract:v5];
}

- (void)formUnionWith:(id)with
{
  withCopy = with;
  mutableUnderlyingObject = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  v5 = withCopy[1];

  [mutableUnderlyingObject formUnionWith:v5];
}

- (void)removeSource:(unint64_t)source target:(unint64_t)target
{
  mutableUnderlyingObject = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  [mutableUnderlyingObject removeSource:source target:target];
}

- (void)insertSource:(unint64_t)source target:(unint64_t)target
{
  mutableUnderlyingObject = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  [mutableUnderlyingObject insertSource:source target:target];
}

- (KGMutableDirectedBinaryAdjacency)init
{
  v6.receiver = self;
  v6.super_class = KGMutableDirectedBinaryAdjacency;
  v2 = [(KGDirectedBinaryAdjacency *)&v6 init];
  v3 = objc_opt_new();
  underlyingObject = v2->super._underlyingObject;
  v2->super._underlyingObject = v3;

  return v2;
}

@end