@interface PKSecureElementApplet
+ (id)secureElementAppletWithInternalApplet:(id)a3;
- (PKSecureElementApplet)initWithCoder:(id)a3;
- (PKSecureElementApplet)initWithIdentifier:(id)a3 packageIdentifier:(id)a4 lifecycleState:(unint64_t)a5 locked:(BOOL)a6 containsSubKeys:(BOOL)a7;
- (id)jsonDictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSecureElementApplet

+ (id)secureElementAppletWithInternalApplet:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 packageIdentifier];
  v7 = [v4 lifecycleState];
  v8 = 0;
  if (v7 <= 14)
  {
    switch(v7)
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

  else if (v7 > 128)
  {
    if (v7 == 129)
    {
      v8 = 129;
    }

    else if (v7 == 130)
    {
      v8 = 130;
    }
  }

  else if (v7 == 15)
  {
    v8 = 15;
  }

  else if (v7 == 23)
  {
    v8 = 23;
  }

  if ([v5 length])
  {
    v9 = [[a1 alloc] initWithIdentifier:v5 packageIdentifier:v6 lifecycleState:v8 locked:objc_msgSend(v4 containsSubKeys:{"isGPLocked"), objc_msgSend(v4, "containsSubKeys")}];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "INVALID APPLET RECEIVED FROM NEARFIELD! Applet does not contain an identifier: %@", &v12, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (PKSecureElementApplet)initWithIdentifier:(id)a3 packageIdentifier:(id)a4 lifecycleState:(unint64_t)a5 locked:(BOOL)a6 containsSubKeys:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v20.receiver = self;
  v20.super_class = PKSecureElementApplet;
  v14 = [(PKSecureElementApplet *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v13 copy];
    packageIdentifier = v14->_packageIdentifier;
    v14->_packageIdentifier = v17;

    v14->_lifecycleState = a5;
    v14->_locked = a6;
    v14->_containsSubKeys = a7;
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

- (PKSecureElementApplet)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKSecureElementApplet;
  v5 = [(PKSecureElementApplet *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"packageIdentifier"];
    packageIdentifier = v5->_packageIdentifier;
    v5->_packageIdentifier = v8;

    v5->_lifecycleState = [v4 decodeIntegerForKey:@"lifecycleState"];
    v5->_locked = [v4 decodeBoolForKey:@"locked"];
    v5->_containsSubKeys = [v4 decodeBoolForKey:@"containsSubKeys"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_packageIdentifier forKey:@"packageIdentifier"];
  [v5 encodeInteger:self->_lifecycleState forKey:@"lifecycleState"];
  [v5 encodeBool:self->_locked forKey:@"locked"];
  [v5 encodeBool:self->_containsSubKeys forKey:@"containsSubKeys"];
}

@end