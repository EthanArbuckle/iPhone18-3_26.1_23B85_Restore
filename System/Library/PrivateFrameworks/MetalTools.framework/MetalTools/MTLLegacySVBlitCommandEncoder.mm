@interface MTLLegacySVBlitCommandEncoder
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
@end

@implementation MTLLegacySVBlitCommandEncoder

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  if ([buffer internalICBBuffer])
  {
    commandByteStride = [buffer commandByteStride];
    v13 = commandByteStride * location + 40;
    v22 = commandByteStride * index + 40;
    indexCopy = index;
    v14 = commandByteStride * length;
    baseObject = self->super.super.super._baseObject;
    internalICBBuffer = [buffer internalICBBuffer];
    internalICBBuffer2 = [destination internalICBBuffer];
    v18 = v14;
    index = indexCopy;
    [(MTLToolsObject *)baseObject copyFromBuffer:internalICBBuffer sourceOffset:v13 toBuffer:internalICBBuffer2 destinationOffset:v22 size:v18];
  }

  v19 = self->super.super.super._baseObject;
  baseObject = [buffer baseObject];
  baseObject2 = [destination baseObject];

  [(MTLToolsObject *)v19 copyIndirectCommandBuffer:baseObject sourceRange:location destination:length destinationIndex:baseObject2, index];
}

@end