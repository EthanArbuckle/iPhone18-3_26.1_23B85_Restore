@interface MTLDebugTextureViewPool
- (MTLDebugTextureViewPool)initWithTextureViewPool:(id)pool device:(id)device;
- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index;
- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index;
- (void)copyResourceStatesFromPool:(id)pool sourceRange:(_NSRange)range destinationLocation:(unint64_t)location;
@end

@implementation MTLDebugTextureViewPool

- (MTLDebugTextureViewPool)initWithTextureViewPool:(id)pool device:(id)device
{
  v5.receiver = self;
  v5.super_class = MTLDebugTextureViewPool;
  return [(MTLToolsTextureViewPool *)&v5 initWithBaseObject:pool parent:device];
}

- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")] <= index)
  {
    [MTLDebugTextureViewPool setTextureView:index atIndex:self];
  }

  if (v10)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MTLDebugTextureViewPool;
    v7 = [(MTLToolsTextureViewPool *)&v9 setTextureView:view atIndex:index];
  }

  _MTLMessageContextEnd();
  return v7;
}

- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")] <= index)
  {
    [MTLDebugTextureViewPool setTextureView:index atIndex:self];
  }

  _validateTextureView(view, [descriptor pixelFormat], objc_msgSend(descriptor, "textureType"));
  if (v12)
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MTLDebugTextureViewPool;
    v9 = [(MTLToolsTextureViewPool *)&v11 setTextureView:view descriptor:descriptor atIndex:index];
  }

  _MTLMessageContextEnd();
  return v9;
}

- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")] <= index)
  {
    [MTLDebugTextureViewPool setTextureView:index atIndex:self];
  }

  if (v16)
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MTLDebugTextureViewPool;
    v13 = [(MTLToolsTextureViewPool *)&v15 setTextureViewFromBuffer:buffer descriptor:descriptor offset:offset bytesPerRow:row atIndex:index];
  }

  _MTLMessageContextEnd();
  return v13;
}

- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [objc_msgSend(pool "baseObject")])
  {
    v13 = length;
    v14 = [objc_msgSend(pool "baseObject")];
    v12 = location;
    _MTLMessageContextPush_();
  }

  if (length + index > [-[MTLToolsObject baseObject](self baseObject])
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
    _MTLMessageContextPush_();
  }

  if (v16)
  {
    index = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MTLDebugTextureViewPool;
    index = [(MTLToolsTextureViewPool *)&v15 copyResourceViewsFromPool:pool sourceRange:location destinationIndex:length, index];
  }

  _MTLMessageContextEnd();
  return index;
}

- (void)copyResourceStatesFromPool:(id)pool sourceRange:(_NSRange)range destinationLocation:(unint64_t)location
{
  v5.receiver = self;
  v5.super_class = MTLDebugTextureViewPool;
  [(MTLToolsTextureViewPool *)&v5 copyResourceStatesFromPool:pool sourceRange:range.location destinationLocation:range.length, location];
}

@end