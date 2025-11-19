@interface CAMLibrarySelectionIdentity
+ (id)identityWithDevice:(id)a3;
+ (id)identityWithPerson:(id)a3;
+ (id)identityWithPhotosIdentity:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CAMLibrarySelectionIdentity)initWithPhoneNumber:(id)a3 emailAddress:(id)a4 contactIdentifiers:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation CAMLibrarySelectionIdentity

+ (id)identityWithPerson:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 contactID];
  v6 = +[CAMCaptureCapabilities capabilities];
  v7 = [v6 librarySelectionMockAutomationModeEnabled];

  if (v7)
  {
    v8 = @"mockContactID";
    if (v5)
    {
      v8 = v5;
    }

    v9 = v8;

    v5 = v9;
LABEL_6:
    v10 = 0;
    if ([(__CFString *)v5 length])
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_6;
  }

  v10 = 1;
LABEL_9:
  v11 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = v4;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityRapportScanner] Person has unresolved contactID: %{private}@", buf, 0xCu);
  }

LABEL_12:
  v12 = [a1 alloc];
  v13 = [v4 identifier];
  v14 = [v4 identifier];
  if (v10)
  {
    v15 = [v12 initWithPhoneNumber:v13 emailAddress:v14 contactIdentifiers:0];
  }

  else
  {
    v18 = v5;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [v12 initWithPhoneNumber:v13 emailAddress:v14 contactIdentifiers:v16];
  }

  return v15;
}

+ (id)identityWithPhotosIdentity:(id)a3
{
  v3 = a3;
  v4 = [CAMLibrarySelectionIdentity alloc];
  v5 = [v3 phoneNumber];
  v6 = [v3 emailAddress];
  v7 = [v3 contactIdentifiers];

  v8 = [(CAMLibrarySelectionIdentity *)v4 initWithPhoneNumber:v5 emailAddress:v6 contactIdentifiers:v7];

  return v8;
}

- (CAMLibrarySelectionIdentity)initWithPhoneNumber:(id)a3 emailAddress:(id)a4 contactIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CAMLibrarySelectionIdentity;
  v11 = [(CAMLibrarySelectionIdentity *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    phoneNumber = v11->_phoneNumber;
    v11->_phoneNumber = v12;

    v14 = [v9 copy];
    emailAddress = v11->_emailAddress;
    v11->_emailAddress = v14;

    v16 = [v10 copy];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(CAMLibrarySelectionIdentity *)self phoneNumber];
      if (v6 || ([(CAMLibrarySelectionIdentity *)v5 phoneNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = [(CAMLibrarySelectionIdentity *)self phoneNumber];
        v8 = [(CAMLibrarySelectionIdentity *)v5 phoneNumber];
        v9 = [v7 isEqualToString:v8];

        if (v6)
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

      v11 = [(CAMLibrarySelectionIdentity *)self emailAddress];
      if (!v11)
      {
        v3 = [(CAMLibrarySelectionIdentity *)v5 emailAddress];
        if (!v3)
        {
LABEL_14:
          v15 = [(CAMLibrarySelectionIdentity *)self contactIdentifiers];
          if (v15 || ([(CAMLibrarySelectionIdentity *)v5 contactIdentifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = [(CAMLibrarySelectionIdentity *)self contactIdentifiers];
            v17 = [(CAMLibrarySelectionIdentity *)v5 contactIdentifiers];
            v10 = [v16 isEqualToArray:v17];

            if (v15)
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

      v12 = [(CAMLibrarySelectionIdentity *)self emailAddress];
      v13 = [(CAMLibrarySelectionIdentity *)v5 emailAddress];
      v14 = [v12 isEqualToString:v13];

      if (v11)
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
  v3 = [(CAMLibrarySelectionIdentity *)self phoneNumber];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(CAMLibrarySelectionIdentity *)self phoneNumber];
    v6 = [v5 hash] + 31;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(CAMLibrarySelectionIdentity *)self emailAddress];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(CAMLibrarySelectionIdentity *)self emailAddress];
    v6 = [v9 hash] - v6 + 32 * v6;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(CAMLibrarySelectionIdentity *)self contactIdentifiers];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v10);
        }

        v6 = [*(*(&v16 + 1) + 8 * v14++) hash] - v6 + 32 * v6;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CAMLibrarySelectionIdentity alloc];
  v5 = [(CAMLibrarySelectionIdentity *)self phoneNumber];
  v6 = [(CAMLibrarySelectionIdentity *)self emailAddress];
  v7 = [(CAMLibrarySelectionIdentity *)self contactIdentifiers];
  v8 = [(CAMLibrarySelectionIdentity *)v4 initWithPhoneNumber:v5 emailAddress:v6 contactIdentifiers:v7];

  return v8;
}

+ (id)identityWithDevice:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 contactIdentifier];
  v6 = +[CAMCaptureCapabilities capabilities];
  v7 = [v6 librarySelectionMockAutomationModeEnabled];

  if (v7)
  {
    v8 = @"mockContactID";
    if (v5)
    {
      v8 = v5;
    }

    v9 = v8;

    v5 = v9;
LABEL_6:
    v10 = 0;
    if ([(__CFString *)v5 length])
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_6;
  }

  v10 = 1;
LABEL_9:
  v11 = os_log_create("com.apple.camera", "SharedLibrary");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = v4;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityDeviceScanner] Device has unresolved contactID: %{private}@", buf, 0xCu);
  }

LABEL_12:
  v12 = [a1 alloc];
  v13 = [v4 accountID];
  v14 = [v4 accountID];
  if (v10)
  {
    v15 = [v12 initWithPhoneNumber:v13 emailAddress:v14 contactIdentifiers:0];
  }

  else
  {
    v18 = v5;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [v12 initWithPhoneNumber:v13 emailAddress:v14 contactIdentifiers:v16];
  }

  return v15;
}

@end