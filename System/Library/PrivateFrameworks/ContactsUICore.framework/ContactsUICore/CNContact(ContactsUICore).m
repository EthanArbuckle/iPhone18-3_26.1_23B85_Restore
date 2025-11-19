@interface CNContact(ContactsUICore)
- (CNUIBackgroundColors)backgroundColors;
- (__CFString)cnui_posterFallbackDisplayName;
- (id)cnui_posterName;
@end

@implementation CNContact(ContactsUICore)

- (CNUIBackgroundColors)backgroundColors
{
  v2 = [CNUIBackgroundColors alloc];
  v3 = [a1 imageBackgroundColorsData];
  v4 = [(CNUIBackgroundColors *)v2 initWithData:v3];

  return v4;
}

- (id)cnui_posterName
{
  v2 = [MEMORY[0x1E695CD80] posterNameComponentsForContact:a1];
  if ([v2 singleNameComponentIndex])
  {
    [v2 secondNameComponent];
  }

  else
  {
    [v2 firstNameComponent];
  }
  v3 = ;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v4 = [a1 cnui_posterFallbackDisplayName];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (__CFString)cnui_posterFallbackDisplayName
{
  v2 = [a1 phoneNumbers];
  v3 = [v2 firstObject];
  v4 = [v3 value];
  v5 = [v4 formattedStringValue];

  v6 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v5))
  {
    v7 = [a1 emailAddresses];
    v8 = [v7 firstObject];
    v9 = [v8 value];

    if ((*(v6 + 16))(v6, v9))
    {
      v10 = [a1 organizationName];
      if ((*(v6 + 16))(v6, v10))
      {
        v11 = &stru_1F162C170;
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

@end