@interface CNContact(ContactsUICore)
- (CNUIBackgroundColors)backgroundColors;
- (__CFString)cnui_posterFallbackDisplayName;
- (id)cnui_posterName;
@end

@implementation CNContact(ContactsUICore)

- (CNUIBackgroundColors)backgroundColors
{
  v2 = [CNUIBackgroundColors alloc];
  imageBackgroundColorsData = [self imageBackgroundColorsData];
  v4 = [(CNUIBackgroundColors *)v2 initWithData:imageBackgroundColorsData];

  return v4;
}

- (id)cnui_posterName
{
  v2 = [MEMORY[0x1E695CD80] posterNameComponentsForContact:self];
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
    cnui_posterFallbackDisplayName = [self cnui_posterFallbackDisplayName];
  }

  else
  {
    cnui_posterFallbackDisplayName = v3;
  }

  v5 = cnui_posterFallbackDisplayName;

  return v5;
}

- (__CFString)cnui_posterFallbackDisplayName
{
  phoneNumbers = [self phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  value = [firstObject value];
  formattedStringValue = [value formattedStringValue];

  v6 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], formattedStringValue))
  {
    emailAddresses = [self emailAddresses];
    firstObject2 = [emailAddresses firstObject];
    value2 = [firstObject2 value];

    if ((*(v6 + 16))(v6, value2))
    {
      organizationName = [self organizationName];
      if ((*(v6 + 16))(v6, organizationName))
      {
        v11 = &stru_1F162C170;
      }

      else
      {
        v11 = organizationName;
      }
    }

    else
    {
      v11 = value2;
    }
  }

  else
  {
    v11 = formattedStringValue;
  }

  return v11;
}

@end