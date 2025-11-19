@interface MFCreateStringFromHeaderBytes
@end

@implementation MFCreateStringFromHeaderBytes

uint64_t ___MFCreateStringFromHeaderBytes_block_invoke()
{
  _MFCreateStringFromHeaderBytes_mimeRegex = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"\\=\\?([^?]*)\\?(q|b)\\?([^?]*)\\?\\=" options:1 error:0];

  return MEMORY[0x1EEE66BB8]();
}

@end