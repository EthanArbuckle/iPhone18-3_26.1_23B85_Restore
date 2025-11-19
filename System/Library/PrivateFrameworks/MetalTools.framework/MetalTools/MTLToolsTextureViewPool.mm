@interface MTLToolsTextureViewPool
- (MTLResourceID)baseResourceID;
- (MTLResourceID)copyResourceViewsFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationIndex:(unint64_t)a5;
- (MTLResourceID)setTextureView:(id)a3 atIndex:(unint64_t)a4;
- (MTLResourceID)setTextureView:(id)a3 descriptor:(id)a4 atIndex:(unint64_t)a5;
- (MTLResourceID)setTextureViewFromBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6 atIndex:(unint64_t)a7;
- (MTLToolsTextureViewPool)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSString)label;
- (unint64_t)resourceViewCount;
- (void)copyResourceStatesFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationLocation:(unint64_t)a5;
- (void)dealloc;
@end

@implementation MTLToolsTextureViewPool

- (MTLToolsTextureViewPool)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLToolsTextureViewPool;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsTextureViewPool;
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

- (MTLResourceID)baseResourceID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 baseResourceID];
}

- (unint64_t)resourceViewCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceViewCount];
}

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (MTLResourceID)setTextureView:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  return [v6 setTextureView:v7 atIndex:a4];
}

- (MTLResourceID)setTextureView:(id)a3 descriptor:(id)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  return [v8 setTextureView:v9 descriptor:a4 atIndex:a5];
}

- (MTLResourceID)setTextureViewFromBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6 atIndex:(unint64_t)a7
{
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];

  return [v12 setTextureViewFromBuffer:v13 descriptor:a4 offset:a5 bytesPerRow:a6 atIndex:a7];
}

@end