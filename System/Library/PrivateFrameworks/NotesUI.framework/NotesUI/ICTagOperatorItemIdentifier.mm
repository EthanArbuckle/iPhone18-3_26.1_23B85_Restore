@interface ICTagOperatorItemIdentifier
+ (ICTagOperatorItemIdentifier)sharedItemIdentifier;
@end

@implementation ICTagOperatorItemIdentifier

+ (ICTagOperatorItemIdentifier)sharedItemIdentifier
{
  if (sharedItemIdentifier_onceToken != -1)
  {
    +[ICTagOperatorItemIdentifier sharedItemIdentifier];
  }

  v3 = sharedItemIdentifier_itemIdentifier;

  return v3;
}

uint64_t __51__ICTagOperatorItemIdentifier_sharedItemIdentifier__block_invoke()
{
  sharedItemIdentifier_itemIdentifier = objc_alloc_init(ICTagOperatorItemIdentifier);

  return MEMORY[0x1EEE66BB8]();
}

@end