@interface MTLToolsTextureViewPool
- (MTLResourceID)baseResourceID;
- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index;
- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index;
- (MTLToolsTextureViewPool)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (unint64_t)resourceViewCount;
- (void)copyResourceStatesFromPool:(id)pool sourceRange:(_NSRange)range destinationLocation:(unint64_t)location;
- (void)dealloc;
@end

@implementation MTLToolsTextureViewPool

- (MTLToolsTextureViewPool)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLToolsTextureViewPool;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsTextureViewPool;
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

- (MTLResourceID)baseResourceID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject baseResourceID];
}

- (unint64_t)resourceViewCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceViewCount];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [view baseObject];

  return [baseObject setTextureView:baseObject2 atIndex:index];
}

- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [view baseObject];

  return [baseObject setTextureView:baseObject2 descriptor:descriptor atIndex:index];
}

- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  return [baseObject setTextureViewFromBuffer:baseObject2 descriptor:descriptor offset:offset bytesPerRow:row atIndex:index];
}

@end