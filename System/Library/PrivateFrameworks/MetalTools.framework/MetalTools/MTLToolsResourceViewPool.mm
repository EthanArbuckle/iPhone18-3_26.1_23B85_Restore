@interface MTLToolsResourceViewPool
- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index;
- (MTLToolsResourceViewPool)initWithBaseObject:(id)object parent:(id)parent;
- (void)copyResourceStatesFromPool:(id)pool sourceRange:(_NSRange)range destinationLocation:(unint64_t)location;
- (void)dealloc;
@end

@implementation MTLToolsResourceViewPool

- (MTLToolsResourceViewPool)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLToolsResourceViewPool;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsResourceViewPool;
  [(MTLToolsObject *)&v2 dealloc];
}

- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [pool baseObject];

  return [baseObject copyResourceViewsFromPool:baseObject2 sourceRange:location destinationIndex:{length, index}];
}

- (void)copyResourceStatesFromPool:(id)pool sourceRange:(_NSRange)range destinationLocation:(unint64_t)location
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [pool baseObject];

  [baseObject copyResourceStatesFromPool:baseObject2 sourceRange:location destinationLocation:{length, location}];
}

@end