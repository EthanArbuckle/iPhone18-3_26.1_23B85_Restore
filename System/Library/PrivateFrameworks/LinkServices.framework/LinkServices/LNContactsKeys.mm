@interface LNContactsKeys
+ (id)contactsEmailAddressesKey;
+ (id)contactsInstantMessageAddressesKey;
+ (id)contactsPhoneNumbersKey;
@end

@implementation LNContactsKeys

+ (id)contactsInstantMessageAddressesKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr;
  v11 = getCNContactInstantMessageAddressesKeySymbolLoc_ptr;
  if (!getCNContactInstantMessageAddressesKeySymbolLoc_ptr)
  {
    v3 = ContactsLibrary();
    v9[3] = dlsym(v3, "CNContactInstantMessageAddressesKey");
    getCNContactInstantMessageAddressesKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactInstantMessageAddressesKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"LNContactsKeys.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)contactsPhoneNumbersKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
  v11 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr)
  {
    v3 = ContactsLibrary();
    v9[3] = dlsym(v3, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactPhoneNumbersKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"LNContactsKeys.m" lineNumber:14 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)contactsEmailAddressesKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  v11 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr)
  {
    v3 = ContactsLibrary();
    v9[3] = dlsym(v3, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactEmailAddressesKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"LNContactsKeys.m" lineNumber:15 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

@end