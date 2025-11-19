@interface CNContact
@end

@implementation CNContact

uint64_t __59__CNContact_CKAdditions__identifierForKey_withDestination___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x1E695C208]])
  {
    v4 = [v3 value];
    v5 = [v4 isEqualToString:*(a1 + 40)];
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:*MEMORY[0x1E695C330]])
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = [v3 value];
    v5 = [v4 isLikePhoneNumber:*(a1 + 48)];
  }

  v6 = v5;

LABEL_7:
  return v6;
}

@end