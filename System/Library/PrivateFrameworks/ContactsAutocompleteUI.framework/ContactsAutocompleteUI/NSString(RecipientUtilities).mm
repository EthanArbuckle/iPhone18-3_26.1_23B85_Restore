@interface NSString(RecipientUtilities)
- (id)cnaui_copyDisplayableAddressComment;
@end

@implementation NSString(RecipientUtilities)

- (id)cnaui_copyDisplayableAddressComment
{
  mf_addressCommentPersonNameComponents = [self mf_addressCommentPersonNameComponents];
  v3 = mf_addressCommentPersonNameComponents;
  if (mf_addressCommentPersonNameComponents)
  {
    [mf_addressCommentPersonNameComponents setNamePrefix:0];
    [v3 setNameSuffix:0];
    mf_copyAddressComment = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [mf_copyAddressComment setStyle:3];
    v5 = [mf_copyAddressComment stringFromPersonNameComponents:v3];
  }

  else
  {
    mf_copyAddressComment = [self mf_copyAddressComment];
    if (![mf_copyAddressComment length])
    {
      v6 = 0;
      goto LABEL_6;
    }

    v5 = mf_copyAddressComment;
    mf_copyAddressComment = v5;
  }

  v6 = v5;
LABEL_6:

  return v6;
}

@end