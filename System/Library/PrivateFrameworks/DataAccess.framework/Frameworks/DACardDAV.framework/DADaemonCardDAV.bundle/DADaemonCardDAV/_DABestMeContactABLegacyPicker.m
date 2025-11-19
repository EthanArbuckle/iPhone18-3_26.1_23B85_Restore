@interface _DABestMeContactABLegacyPicker
- (BOOL)pickBestMeContactForGivenName:(id)a3 familyName:(id)a4 primaryEmail:(id)a5;
- (_DABestMeContactABLegacyPicker)initWithAddressBook:(void *)a3;
- (void)dealloc;
@end

@implementation _DABestMeContactABLegacyPicker

- (_DABestMeContactABLegacyPicker)initWithAddressBook:(void *)a3
{
  v6.receiver = self;
  v6.super_class = _DABestMeContactABLegacyPicker;
  v4 = [(_DABestMeContactABLegacyPicker *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(a3);
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

- (BOOL)pickBestMeContactForGivenName:(id)a3 familyName:(id)a4 primaryEmail:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(_DABestMeContactABLegacyPicker *)self addressBook];
  LOBYTE(self) = ABAddressBookSetBestMeIfNeeded();

  return self;
}

@end