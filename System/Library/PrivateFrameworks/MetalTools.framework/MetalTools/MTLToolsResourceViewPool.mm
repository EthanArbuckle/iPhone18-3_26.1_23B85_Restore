@interface MTLToolsResourceViewPool
- (MTLResourceID)copyResourceViewsFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationIndex:(unint64_t)a5;
- (MTLToolsResourceViewPool)initWithBaseObject:(id)a3 parent:(id)a4;
- (void)copyResourceStatesFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationLocation:(unint64_t)a5;
- (void)dealloc;
@end

@implementation MTLToolsResourceViewPool

- (MTLToolsResourceViewPool)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLToolsResourceViewPool;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsResourceViewPool;
  [(MTLToolsObject *)&v2 dealloc];
}

- (MTLResourceID)copyResourceViewsFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationIndex:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  return [v9 copyResourceViewsFromPool:v10 sourceRange:location destinationIndex:{length, a5}];
}

- (void)copyResourceStatesFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationLocation:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];

  [v9 copyResourceStatesFromPool:v10 sourceRange:location destinationLocation:{length, a5}];
}

@end