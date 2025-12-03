@interface FPItem(BRAdditions)
- (BOOL)br_isDocumentsFolder;
@end

@implementation FPItem(BRAdditions)

- (BOOL)br_isDocumentsFolder
{
  providerItemIdentifier = [self providerItemIdentifier];
  v2 = [BRFileObjectID fileObjectIDWithString:providerItemIdentifier];

  if (v2)
  {
    v3 = [v2 type] == 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end