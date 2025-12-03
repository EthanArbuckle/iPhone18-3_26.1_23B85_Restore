@interface _DABestMeContactABLegacyPicker
- (BOOL)pickBestMeContactForGivenName:(id)name familyName:(id)familyName primaryEmail:(id)email;
- (_DABestMeContactABLegacyPicker)initWithAddressBook:(void *)book;
- (void)dealloc;
@end

@implementation _DABestMeContactABLegacyPicker

- (_DABestMeContactABLegacyPicker)initWithAddressBook:(void *)book
{
  v6.receiver = self;
  v6.super_class = _DABestMeContactABLegacyPicker;
  v4 = [(_DABestMeContactABLegacyPicker *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(book);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_addressBook);
  v3.receiver = self;
  v3.super_class = _DABestMeContactABLegacyPicker;
  [(_DABestMeContactABLegacyPicker *)&v3 dealloc];
}

- (BOOL)pickBestMeContactForGivenName:(id)name familyName:(id)familyName primaryEmail:(id)email
{
  emailCopy = email;
  familyNameCopy = familyName;
  nameCopy = name;
  [(_DABestMeContactABLegacyPicker *)self addressBook];
  LOBYTE(self) = ABAddressBookSetBestMeIfNeeded();

  return self;
}

@end