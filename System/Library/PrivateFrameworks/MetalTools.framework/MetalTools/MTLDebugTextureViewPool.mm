@interface MTLDebugTextureViewPool
- (MTLDebugTextureViewPool)initWithTextureViewPool:(id)a3 device:(id)a4;
- (MTLResourceID)copyResourceViewsFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationIndex:(unint64_t)a5;
- (MTLResourceID)setTextureView:(id)a3 atIndex:(unint64_t)a4;
- (MTLResourceID)setTextureView:(id)a3 descriptor:(id)a4 atIndex:(unint64_t)a5;
- (MTLResourceID)setTextureViewFromBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6 atIndex:(unint64_t)a7;
- (void)copyResourceStatesFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationLocation:(unint64_t)a5;
@end

@implementation MTLDebugTextureViewPool

- (MTLDebugTextureViewPool)initWithTextureViewPool:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLDebugTextureViewPool;
  return [(MTLToolsTextureViewPool *)&v5 initWithBaseObject:a3 parent:a4];
}

- (MTLResourceID)setTextureView:(id)a3 atIndex:(unint64_t)a4
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")] <= a4)
  {
    [MTLDebugTextureViewPool setTextureView:a4 atIndex:self];
  }

  if (v10)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MTLDebugTextureViewPool;
    v7 = [(MTLToolsTextureViewPool *)&v9 setTextureView:a3 atIndex:a4];
  }

  _MTLMessageContextEnd();
  return v7;
}

- (MTLResourceID)setTextureView:(id)a3 descriptor:(id)a4 atIndex:(unint64_t)a5
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")] <= a5)
  {
    [MTLDebugTextureViewPool setTextureView:a5 atIndex:self];
  }

  _validateTextureView(a3, [a4 pixelFormat], objc_msgSend(a4, "textureType"));
  if (v12)
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MTLDebugTextureViewPool;
    v9 = [(MTLToolsTextureViewPool *)&v11 setTextureView:a3 descriptor:a4 atIndex:a5];
  }

  _MTLMessageContextEnd();
  return v9;
}

- (MTLResourceID)setTextureViewFromBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6 atIndex:(unint64_t)a7
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")] <= a7)
  {
    [MTLDebugTextureViewPool setTextureView:a7 atIndex:self];
  }

  if (v16)
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MTLDebugTextureViewPool;
    v13 = [(MTLToolsTextureViewPool *)&v15 setTextureViewFromBuffer:a3 descriptor:a4 offset:a5 bytesPerRow:a6 atIndex:a7];
  }

  _MTLMessageContextEnd();
  return v13;
}

- (MTLResourceID)copyResourceViewsFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationIndex:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
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

  if (location + length > [objc_msgSend(a3 "baseObject")])
  {
    v13 = length;
    v14 = [objc_msgSend(a3 "baseObject")];
    v12 = location;
    _MTLMessageContextPush_();
  }

  if (length + a5 > [-[MTLToolsObject baseObject](self baseObject])
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
    _MTLMessageContextPush_();
  }

  if (v16)
  {
    v10 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MTLDebugTextureViewPool;
    v10 = [(MTLToolsTextureViewPool *)&v15 copyResourceViewsFromPool:a3 sourceRange:location destinationIndex:length, a5];
  }

  _MTLMessageContextEnd();
  return v10;
}

- (void)copyResourceStatesFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationLocation:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = MTLDebugTextureViewPool;
  [(MTLToolsTextureViewPool *)&v5 copyResourceStatesFromPool:a3 sourceRange:a4.location destinationLocation:a4.length, a5];
}

@end