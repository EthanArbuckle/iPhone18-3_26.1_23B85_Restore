@interface NSString(RecipientUtilities)
- (id)cnaui_copyDisplayableAddressComment;
@end

@implementation NSString(RecipientUtilities)

- (id)cnaui_copyDisplayableAddressComment
{
  v2 = [a1 mf_addressCommentPersonNameComponents];
  v3 = v2;
  if (v2)
  {
    [v2 setNamePrefix:0];
    [v3 setNameSuffix:0];
    v4 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [v4 setStyle:3];
    v5 = [v4 stringFromPersonNameComponents:v3];
  }

  else
  {
    v4 = [a1 mf_copyAddressComment];
    if (![v4 length])
    {
      v6 = 0;
      goto LABEL_6;
    }

    v5 = v4;
    v4 = v5;
  }

  v6 = v5;
LABEL_6:

  return v6;
}

@end