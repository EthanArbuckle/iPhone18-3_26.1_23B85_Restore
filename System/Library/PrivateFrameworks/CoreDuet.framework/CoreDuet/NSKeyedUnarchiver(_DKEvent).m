@interface NSKeyedUnarchiver(_DKEvent)
- (uint64_t)dk_shouldSkipDecodingMetadata;
- (void)setDk_shouldSkipDecodingMetadata:()_DKEvent;
@end

@implementation NSKeyedUnarchiver(_DKEvent)

- (void)setDk_shouldSkipDecodingMetadata:()_DKEvent
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, sel_dk_shouldSkipDecodingMetadata, v2, 1);
}

- (uint64_t)dk_shouldSkipDecodingMetadata
{
  v1 = objc_getAssociatedObject(a1, sel_dk_shouldSkipDecodingMetadata);
  v2 = [v1 BOOLValue];

  return v2;
}

@end