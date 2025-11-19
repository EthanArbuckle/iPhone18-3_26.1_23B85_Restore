@interface ICTagAllTagsItemIdentifier
+ (ICTagAllTagsItemIdentifier)sharedItemIdentifier;
@end

@implementation ICTagAllTagsItemIdentifier

+ (ICTagAllTagsItemIdentifier)sharedItemIdentifier
{
  if (sharedItemIdentifier_onceToken_2 != -1)
  {
    +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
  }

  v3 = sharedItemIdentifier_itemIdentifier_2;

  return v3;
}

uint64_t __50__ICTagAllTagsItemIdentifier_sharedItemIdentifier__block_invoke()
{
  v0 = objc_alloc_init(ICTagAllTagsItemIdentifier);
  sharedItemIdentifier_itemIdentifier_2 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

@end