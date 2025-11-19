@interface SUUIOffscreenRenderOperationPushRenderingContext
@end

@implementation SUUIOffscreenRenderOperationPushRenderingContext

unint64_t ___SUUIOffscreenRenderOperationPushRenderingContext_block_invoke(uint64_t a1)
{
  v2 = sRendererStackArray;
  if (!sRendererStackArray)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v4 = sRendererStackArray;
    sRendererStackArray = v3;

    v2 = sRendererStackArray;
  }

  result = [v2 count];
  if (result <= 5)
  {
    [sRendererStackArray addObject:*(a1 + 32)];
    v6 = sRendererStackArray;
    v7 = *(a1 + 40);

    return [v6 addObject:v7];
  }

  return result;
}

@end