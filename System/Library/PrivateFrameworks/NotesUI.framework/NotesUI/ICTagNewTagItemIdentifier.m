@interface ICTagNewTagItemIdentifier
+ (ICTagNewTagItemIdentifier)sharedItemIdentifier;
@end

@implementation ICTagNewTagItemIdentifier

+ (ICTagNewTagItemIdentifier)sharedItemIdentifier
{
  if (sharedItemIdentifier_onceToken_0 != -1)
  {
    +[ICTagNewTagItemIdentifier sharedItemIdentifier];
  }

  v3 = sharedItemIdentifier_itemIdentifier_0;

  return v3;
}

uint64_t __49__ICTagNewTagItemIdentifier_sharedItemIdentifier__block_invoke()
{
  sharedItemIdentifier_itemIdentifier_0 = objc_alloc_init(ICTagNewTagItemIdentifier);

  return MEMORY[0x1EEE66BB8]();
}

@end