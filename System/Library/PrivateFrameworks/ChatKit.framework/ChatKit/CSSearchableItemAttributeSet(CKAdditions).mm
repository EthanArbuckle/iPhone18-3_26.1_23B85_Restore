@interface CSSearchableItemAttributeSet(CKAdditions)
- (id)__ck_itemContentCreationDate;
- (id)__ck_privateMutableAttributesDictionary;
- (id)__ck_spotlightItemSnippet;
@end

@implementation CSSearchableItemAttributeSet(CKAdditions)

- (id)__ck_itemContentCreationDate
{
  __ck_privateMutableAttributesDictionary = [self __ck_privateMutableAttributesDictionary];
  v2 = [__ck_privateMutableAttributesDictionary objectForKey:@"kMDItemContentCreationDate"];

  return v2;
}

- (id)__ck_spotlightItemSnippet
{
  __ck_privateMutableAttributesDictionary = [self __ck_privateMutableAttributesDictionary];
  v2 = [__ck_privateMutableAttributesDictionary objectForKey:*MEMORY[0x1E6964B18]];

  return v2;
}

- (id)__ck_privateMutableAttributesDictionary
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [self performSelector:sel_mutableAttributes];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end