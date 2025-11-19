@interface NSURL
@end

@implementation NSURL

void __44__NSURL_DAVExtensions__initWithDirtyString___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:{@";?:@&=+$, |"}];
  v1 = [v3 copy];
  v2 = initWithDirtyString__allowedCharacterSet;
  initWithDirtyString__allowedCharacterSet = v1;
}

@end