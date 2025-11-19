@interface NSMutableDictionary
@end

@implementation NSMutableDictionary

uint64_t __60__NSMutableDictionary_RFC2231Support__mf_fixupRFC2231Values__block_invoke()
{
  mf_fixupRFC2231Values_keyRegex = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"\\*([0-9]+)?(\\*)?$" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

@end