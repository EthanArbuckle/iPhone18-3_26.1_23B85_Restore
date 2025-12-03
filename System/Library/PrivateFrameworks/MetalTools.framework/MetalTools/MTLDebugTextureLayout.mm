@interface MTLDebugTextureLayout
- (MTLDebugTextureLayout)initWithBaseTextureLayout:(id)layout device:(id)device descriptor:(id)descriptor;
- (void)dealloc;
@end

@implementation MTLDebugTextureLayout

- (MTLDebugTextureLayout)initWithBaseTextureLayout:(id)layout device:(id)device descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLDebugTextureLayout;
  v7 = [(MTLToolsObject *)&v10 initWithBaseObject:layout parent:?];
  v8 = v7;
  if (v7)
  {
    v7->_debugDevice = device;
    v7->_descriptor = [descriptor copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugTextureLayout;
  [(MTLToolsObject *)&v3 dealloc];
}

@end