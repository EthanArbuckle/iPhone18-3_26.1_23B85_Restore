@interface PKSecureElementApplet
+ (id)secureElementAppletWithInternalApplet:(id)applet;
- (PKSecureElementApplet)initWithCoder:(id)coder;
- (PKSecureElementApplet)initWithIdentifier:(id)identifier packageIdentifier:(id)packageIdentifier lifecycleState:(unint64_t)state locked:(BOOL)locked containsSubKeys:(BOOL)keys;
- (id)jsonDictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSecureElementApplet

+ (id)secureElementAppletWithInternalApplet:(id)applet
{
  v14 = *MEMORY[0x1E69E9840];
  appletCopy = applet;
  identifier = [appletCopy identifier];
  packageIdentifier = [appletCopy packageIdentifier];
  lifecycleState = [appletCopy lifecycleState];
  v8 = 0;
  if (lifecycleState <= 14)
  {
    switch(lifecycleState)
    {
      case 1:
        v8 = 1;
        break;
      case 3:
        v8 = 3;
        break;
      case 7:
        v8 = 7;
        break;
    }
  }

  else if (lifecycleState > 128)
  {
    if (lifecycleState == 129)
    {
      v8 = 129;
    }

    else if (lifecycleState == 130)
    {
      v8 = 130;
    }
  }

  else if (lifecycleState == 15)
  {
    v8 = 15;
  }

  else if (lifecycleState == 23)
  {
    v8 = 23;
  }

  if ([identifier length])
  {
    v9 = [[self alloc] initWithIdentifier:identifier packageIdentifier:packageIdentifier lifecycleState:v8 locked:objc_msgSend(appletCopy containsSubKeys:{"isGPLocked"), objc_msgSend(appletCopy, "containsSubKeys")}];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = appletCopy;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "INVALID APPLET RECEIVED FROM NEARFIELD! Applet does not contain an identifier: %@", &v12, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (PKSecureElementApplet)initWithIdentifier:(id)identifier packageIdentifier:(id)packageIdentifier lifecycleState:(unint64_t)state locked:(BOOL)locked containsSubKeys:(BOOL)keys
{
  identifierCopy = identifier;
  packageIdentifierCopy = packageIdentifier;
  v20.receiver = self;
  v20.super_class = PKSecureElementApplet;
  v14 = [(PKSecureElementApplet *)&v20 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [packageIdentifierCopy copy];
    packageIdentifier = v14->_packageIdentifier;
    v14->_packageIdentifier = v17;

    v14->_lifecycleState = state;
    v14->_locked = locked;
    v14->_containsSubKeys = keys;
  }

  return v14;
}

- (id)jsonDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKey:@"appletAid"];
  [v3 setObject:self->_packageIdentifier forKey:@"packageAid"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lifecycleState];
  [v3 setObject:v4 forKey:@"lifeCycleState"];

  v5 = [v3 copy];

  return v5;
}

- (PKSecureElementApplet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKSecureElementApplet;
  v5 = [(PKSecureElementApplet *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"packageIdentifier"];
    packageIdentifier = v5->_packageIdentifier;
    v5->_packageIdentifier = v8;

    v5->_lifecycleState = [coderCopy decodeIntegerForKey:@"lifecycleState"];
    v5->_locked = [coderCopy decodeBoolForKey:@"locked"];
    v5->_containsSubKeys = [coderCopy decodeBoolForKey:@"containsSubKeys"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_packageIdentifier forKey:@"packageIdentifier"];
  [coderCopy encodeInteger:self->_lifecycleState forKey:@"lifecycleState"];
  [coderCopy encodeBool:self->_locked forKey:@"locked"];
  [coderCopy encodeBool:self->_containsSubKeys forKey:@"containsSubKeys"];
}

@end