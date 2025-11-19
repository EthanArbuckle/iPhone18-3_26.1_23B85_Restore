@interface SoftLinkImageIO
@end

@implementation SoftLinkImageIO

uint64_t (*__SoftLinkImageIO_block_invoke())(void)
{
  v0 = SUUIImageIOFramework();
  if (!v0)
  {
    __SoftLinkImageIO_block_invoke_cold_7();
  }

  v1 = v0;
  weak_kCGImagePropertyEncoder = *SUUIWeakLinkedSymbolForString("kCGImagePropertyEncoder", v0);
  if (!weak_kCGImagePropertyEncoder)
  {
    __SoftLinkImageIO_block_invoke_cold_6();
  }

  weak_kCGImagePropertyASTCBlockSize = *SUUIWeakLinkedSymbolForString("kCGImagePropertyASTCBlockSize", v1);
  if (!weak_kCGImagePropertyASTCBlockSize)
  {
    __SoftLinkImageIO_block_invoke_cold_5();
  }

  weak_kCGImagePropertyASTCEncoder = *SUUIWeakLinkedSymbolForString("kCGImagePropertyASTCEncoder", v1);
  if (!weak_kCGImagePropertyASTCEncoder)
  {
    __SoftLinkImageIO_block_invoke_cold_4();
  }

  weak_CGImageDestinationCreateWithData = SUUIWeakLinkedSymbolForString("CGImageDestinationCreateWithData", v1);
  if (!weak_CGImageDestinationCreateWithData)
  {
    __SoftLinkImageIO_block_invoke_cold_3();
  }

  weak_CGImageDestinationAddImage = SUUIWeakLinkedSymbolForString("CGImageDestinationAddImage", v1);
  if (!weak_CGImageDestinationAddImage)
  {
    __SoftLinkImageIO_block_invoke_cold_2();
  }

  result = SUUIWeakLinkedSymbolForString("CGImageDestinationFinalize", v1);
  weak_CGImageDestinationFinalize = result;
  if (!result)
  {
    __SoftLinkImageIO_block_invoke_cold_1();
  }

  return result;
}

@end