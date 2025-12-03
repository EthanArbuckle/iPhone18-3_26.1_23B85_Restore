@interface CAMLibrarySelectionIdentity
+ (id)identityWithDevice:(id)device;
+ (id)identityWithPerson:(id)person;
+ (id)identityWithPhotosIdentity:(id)identity;
- (BOOL)isEqual:(id)equal;
- (CAMLibrarySelectionIdentity)initWithPhoneNumber:(id)number emailAddress:(id)address contactIdentifiers:(id)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation CAMLibrarySelectionIdentity

+ (id)identityWithPerson:(id)person
{
  v21 = *MEMORY[0x1E69E9840];
  personCopy = person;
  contactID = [personCopy contactID];
  v6 = +[CAMCaptureCapabilities capabilities];
  librarySelectionMockAutomationModeEnabled = [v6 librarySelectionMockAutomationModeEnabled];

  if (librarySelectionMockAutomationModeEnabled)
  {
    v8 = @"mockContactID";
    if (contactID)
    {
      v8 = contactID;
    }

    v9 = v8;

    contactID = v9;
LABEL_6:
    v10 = 0;
    if ([(__CFString *)contactID length])
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (contactID)
  {
    goto LABEL_6;
  }

  v10 = 1;
LABEL_9:
  v11 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = personCopy;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityRapportScanner] Person has unresolved contactID: %{private}@", buf, 0xCu);
  }

LABEL_12:
  v12 = [self alloc];
  identifier = [personCopy identifier];
  identifier2 = [personCopy identifier];
  if (v10)
  {
    v15 = [v12 initWithPhoneNumber:identifier emailAddress:identifier2 contactIdentifiers:0];
  }

  else
  {
    v18 = contactID;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [v12 initWithPhoneNumber:identifier emailAddress:identifier2 contactIdentifiers:v16];
  }

  return v15;
}

+ (id)identityWithPhotosIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [CAMLibrarySelectionIdentity alloc];
  phoneNumber = [identityCopy phoneNumber];
  emailAddress = [identityCopy emailAddress];
  contactIdentifiers = [identityCopy contactIdentifiers];

  v8 = [(CAMLibrarySelectionIdentity *)v4 initWithPhoneNumber:phoneNumber emailAddress:emailAddress contactIdentifiers:contactIdentifiers];

  return v8;
}

- (CAMLibrarySelectionIdentity)initWithPhoneNumber:(id)number emailAddress:(id)address contactIdentifiers:(id)identifiers
{
  numberCopy = number;
  addressCopy = address;
  identifiersCopy = identifiers;
  v19.receiver = self;
  v19.super_class = CAMLibrarySelectionIdentity;
  v11 = [(CAMLibrarySelectionIdentity *)&v19 init];
  if (v11)
  {
    v12 = [numberCopy copy];
    phoneNumber = v11->_phoneNumber;
    v11->_phoneNumber = v12;

    v14 = [addressCopy copy];
    emailAddress = v11->_emailAddress;
    v11->_emailAddress = v14;

    v16 = [identifiersCopy copy];
    contactIdentifiers = v11->_contactIdentifiers;
    v11->_contactIdentifiers = v16;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = CAMLibrarySelectionIdentityDescription(self);
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v6];;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      phoneNumber = [(CAMLibrarySelectionIdentity *)self phoneNumber];
      if (phoneNumber || ([(CAMLibrarySelectionIdentity *)equalCopy phoneNumber], (emailAddress2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        phoneNumber2 = [(CAMLibrarySelectionIdentity *)self phoneNumber];
        phoneNumber3 = [(CAMLibrarySelectionIdentity *)equalCopy phoneNumber];
        v9 = [phoneNumber2 isEqualToString:phoneNumber3];

        if (phoneNumber)
        {

          if (!v9)
          {
            goto LABEL_19;
          }
        }

        else
        {

          if ((v9 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      emailAddress = [(CAMLibrarySelectionIdentity *)self emailAddress];
      if (!emailAddress)
      {
        emailAddress2 = [(CAMLibrarySelectionIdentity *)equalCopy emailAddress];
        if (!emailAddress2)
        {
LABEL_14:
          contactIdentifiers = [(CAMLibrarySelectionIdentity *)self contactIdentifiers];
          if (contactIdentifiers || ([(CAMLibrarySelectionIdentity *)equalCopy contactIdentifiers], (emailAddress2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            contactIdentifiers2 = [(CAMLibrarySelectionIdentity *)self contactIdentifiers];
            contactIdentifiers3 = [(CAMLibrarySelectionIdentity *)equalCopy contactIdentifiers];
            v10 = [contactIdentifiers2 isEqualToArray:contactIdentifiers3];

            if (contactIdentifiers)
            {
LABEL_23:

              goto LABEL_20;
            }
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_23;
        }
      }

      emailAddress3 = [(CAMLibrarySelectionIdentity *)self emailAddress];
      emailAddress4 = [(CAMLibrarySelectionIdentity *)equalCopy emailAddress];
      v14 = [emailAddress3 isEqualToString:emailAddress4];

      if (emailAddress)
      {

        if (v14)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v10 = 1;
LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  v21 = *MEMORY[0x1E69E9840];
  phoneNumber = [(CAMLibrarySelectionIdentity *)self phoneNumber];
  v4 = [phoneNumber length];

  if (v4)
  {
    phoneNumber2 = [(CAMLibrarySelectionIdentity *)self phoneNumber];
    v6 = [phoneNumber2 hash] + 31;
  }

  else
  {
    v6 = 1;
  }

  emailAddress = [(CAMLibrarySelectionIdentity *)self emailAddress];
  v8 = [emailAddress length];

  if (v8)
  {
    emailAddress2 = [(CAMLibrarySelectionIdentity *)self emailAddress];
    v6 = [emailAddress2 hash] - v6 + 32 * v6;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  contactIdentifiers = [(CAMLibrarySelectionIdentity *)self contactIdentifiers];
  v11 = [contactIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(contactIdentifiers);
        }

        v6 = [*(*(&v16 + 1) + 8 * v14++) hash] - v6 + 32 * v6;
      }

      while (v12 != v14);
      v12 = [contactIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CAMLibrarySelectionIdentity alloc];
  phoneNumber = [(CAMLibrarySelectionIdentity *)self phoneNumber];
  emailAddress = [(CAMLibrarySelectionIdentity *)self emailAddress];
  contactIdentifiers = [(CAMLibrarySelectionIdentity *)self contactIdentifiers];
  v8 = [(CAMLibrarySelectionIdentity *)v4 initWithPhoneNumber:phoneNumber emailAddress:emailAddress contactIdentifiers:contactIdentifiers];

  return v8;
}

+ (id)identityWithDevice:(id)device
{
  v21 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  contactIdentifier = [deviceCopy contactIdentifier];
  v6 = +[CAMCaptureCapabilities capabilities];
  librarySelectionMockAutomationModeEnabled = [v6 librarySelectionMockAutomationModeEnabled];

  if (librarySelectionMockAutomationModeEnabled)
  {
    v8 = @"mockContactID";
    if (contactIdentifier)
    {
      v8 = contactIdentifier;
    }

    v9 = v8;

    contactIdentifier = v9;
LABEL_6:
    v10 = 0;
    if ([(__CFString *)contactIdentifier length])
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (contactIdentifier)
  {
    goto LABEL_6;
  }

  v10 = 1;
LABEL_9:
  v11 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = deviceCopy;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityDeviceScanner] Device has unresolved contactID: %{private}@", buf, 0xCu);
  }

LABEL_12:
  v12 = [self alloc];
  accountID = [deviceCopy accountID];
  accountID2 = [deviceCopy accountID];
  if (v10)
  {
    v15 = [v12 initWithPhoneNumber:accountID emailAddress:accountID2 contactIdentifiers:0];
  }

  else
  {
    v18 = contactIdentifier;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [v12 initWithPhoneNumber:accountID emailAddress:accountID2 contactIdentifiers:v16];
  }

  return v15;
}

@end