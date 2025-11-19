@interface MTLDebugTextureLayout
- (MTLDebugTextureLayout)initWithBaseTextureLayout:(id)a3 device:(id)a4 descriptor:(id)a5;
- (void)dealloc;
@end

@implementation MTLDebugTextureLayout

- (MTLDebugTextureLayout)initWithBaseTextureLayout:(id)a3 device:(id)a4 descriptor:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLDebugTextureLayout;
  v7 = [(MTLToolsObject *)&v10 initWithBaseObject:a3 parent:?];
  v8 = v7;
  if (v7)
  {
    v7->_debugDevice = a4;
    v7->_descriptor = [a5 copy];
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