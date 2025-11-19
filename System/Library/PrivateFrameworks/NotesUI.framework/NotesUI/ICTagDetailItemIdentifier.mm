@interface ICTagDetailItemIdentifier
+ (ICTagDetailItemIdentifier)sharedItemIdentifier;
@end

@implementation ICTagDetailItemIdentifier

+ (ICTagDetailItemIdentifier)sharedItemIdentifier
{
  if (sharedItemIdentifier_onceToken_3 != -1)
  {
    +[ICTagDetailItemIdentifier sharedItemIdentifier];
  }

  v3 = sharedItemIdentifier_itemIdentifier_3;

  return v3;
}

uint64_t __49__ICTagDetailItemIdentifier_sharedItemIdentifier__block_invoke()
{
  v0 = objc_alloc_init(ICTagDetailItemIdentifier);
  sharedItemIdentifier_itemIdentifier_3 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

@end