@interface ICTagContainerItemIdentifier
+ (ICTagContainerItemIdentifier)sharedItemIdentifier;
@end

@implementation ICTagContainerItemIdentifier

+ (ICTagContainerItemIdentifier)sharedItemIdentifier
{
  if (sharedItemIdentifier_onceToken_1 != -1)
  {
    +[ICTagContainerItemIdentifier sharedItemIdentifier];
  }

  v3 = sharedItemIdentifier_itemIdentifier_1;

  return v3;
}

uint64_t __52__ICTagContainerItemIdentifier_sharedItemIdentifier__block_invoke()
{
  v0 = objc_alloc_init(ICTagContainerItemIdentifier);
  sharedItemIdentifier_itemIdentifier_1 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

@end