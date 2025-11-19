@interface CSSearchableItemAttributeSet(CKAdditions)
- (id)__ck_itemContentCreationDate;
- (id)__ck_privateMutableAttributesDictionary;
- (id)__ck_spotlightItemSnippet;
@end

@implementation CSSearchableItemAttributeSet(CKAdditions)

- (id)__ck_itemContentCreationDate
{
  v1 = [a1 __ck_privateMutableAttributesDictionary];
  v2 = [v1 objectForKey:@"kMDItemContentCreationDate"];

  return v2;
}

- (id)__ck_spotlightItemSnippet
{
  v1 = [a1 __ck_privateMutableAttributesDictionary];
  v2 = [v1 objectForKey:*MEMORY[0x1E6964B18]];

  return v2;
}

- (id)__ck_privateMutableAttributesDictionary
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_mutableAttributes];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end