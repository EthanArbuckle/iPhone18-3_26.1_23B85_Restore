@interface MTLLegacySVBlitCommandEncoder
- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6;
@end

@implementation MTLLegacySVBlitCommandEncoder

- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  if ([a3 internalICBBuffer])
  {
    v12 = [a3 commandByteStride];
    v13 = v12 * location + 40;
    v22 = v12 * a6 + 40;
    v23 = a6;
    v14 = v12 * length;
    baseObject = self->super.super.super._baseObject;
    v16 = [a3 internalICBBuffer];
    v17 = [a5 internalICBBuffer];
    v18 = v14;
    a6 = v23;
    [(MTLToolsObject *)baseObject copyFromBuffer:v16 sourceOffset:v13 toBuffer:v17 destinationOffset:v22 size:v18];
  }

  v19 = self->super.super.super._baseObject;
  v20 = [a3 baseObject];
  v21 = [a5 baseObject];

  [(MTLToolsObject *)v19 copyIndirectCommandBuffer:v20 sourceRange:location destination:length destinationIndex:v21, a6];
}

@end