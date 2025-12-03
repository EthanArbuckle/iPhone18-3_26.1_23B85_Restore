@interface MTLToolsIOScratchBuffer
- (MTLBuffer)buffer;
- (MTLToolsIOScratchBuffer)initWithBaseObject:(id)object parent:(id)parent;
- (void)dealloc;
@end

@implementation MTLToolsIOScratchBuffer

- (MTLToolsIOScratchBuffer)initWithBaseObject:(id)object parent:(id)parent
{
  if (object)
  {
    v5.receiver = self;
    v5.super_class = MTLToolsIOScratchBuffer;
    return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
  }

  else
  {

    return 0;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsIOScratchBuffer;
  [(MTLToolsObject *)&v2 dealloc];
}

- (MTLBuffer)buffer
{
  v2 = [-[MTLToolsObject baseObject](self "baseObject")];

  return [v2 baseObject];
}

@end