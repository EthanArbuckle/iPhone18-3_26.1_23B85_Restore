@interface KGMutableDirectedBinaryAdjacency
- (KGMutableDirectedBinaryAdjacency)init;
- (void)formUnionWith:(id)a3;
- (void)insertSource:(unint64_t)a3 target:(unint64_t)a4;
- (void)removeSource:(unint64_t)a3 target:(unint64_t)a4;
- (void)removeTargetsForSource:(unint64_t)a3;
- (void)setTargets:(id)a3 forSource:(unint64_t)a4;
- (void)subtract:(id)a3;
@end

@implementation KGMutableDirectedBinaryAdjacency

- (void)removeTargetsForSource:(unint64_t)a3
{
  v4 = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  [v4 removeTargetsForSource:a3];
}

- (void)setTargets:(id)a3 forSource:(unint64_t)a4
{
  v6 = a3;
  v7 = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  [v7 setTargets:v6 forSource:a4];
}

- (void)subtract:(id)a3
{
  v4 = a3;
  v6 = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  v5 = v4[1];

  [v6 subtract:v5];
}

- (void)formUnionWith:(id)a3
{
  v4 = a3;
  v6 = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  v5 = v4[1];

  [v6 formUnionWith:v5];
}

- (void)removeSource:(unint64_t)a3 target:(unint64_t)a4
{
  v6 = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  [v6 removeSource:a3 target:a4];
}

- (void)insertSource:(unint64_t)a3 target:(unint64_t)a4
{
  v6 = [(KGMutableDirectedBinaryAdjacency *)self mutableUnderlyingObject];
  [v6 insertSource:a3 target:a4];
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