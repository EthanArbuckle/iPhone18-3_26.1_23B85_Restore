@interface CHPhoneNumber
- (CHPhoneNumber)initWithDigits:(id)a3 isoCountryCode:(id)a4;
- (NSString)formattedRepresentation;
- (NSString)normalizedRepresentation;
@end

@implementation CHPhoneNumber

- (NSString)formattedRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  if (![(CHPhoneNumber *)self formattedRepresentationAttempted])
  {
    v3 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CHPhoneNumber *)self digits];
      v5 = [(CHPhoneNumber *)self isoCountryCode];
      v15 = 138412546;
      v16 = v4;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_1C3E90000, v3, OS_LOG_TYPE_DEFAULT, "Not formatted. So let's create a CFPhoneNumberRef. Num: %@, iso: %{public}@", &v15, 0x16u);
    }

    v6 = *MEMORY[0x1E695E480];
    v7 = [(CHPhoneNumber *)self digits];
    v8 = [(CHPhoneNumber *)self isoCountryCode];
    v9 = CFPhoneNumberCreate();

    if (v9)
    {
      String = CFPhoneNumberCreateString();
      formattedRepresentation = self->_formattedRepresentation;
      self->_formattedRepresentation = String;

      CFRelease(v9);
    }

    [(CHPhoneNumber *)self setFormattedRepresentationAttempted:1];
  }

  v12 = self->_formattedRepresentation;
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (CHPhoneNumber)initWithDigits:(id)a3 isoCountryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CHPhoneNumber;
  v8 = [(CHLogger *)&v14 initWithDomain:"CHPhoneNumber"];
  if (v8)
  {
    v9 = [v6 copy];
    digits = v8->_digits;
    v8->_digits = v9;

    v11 = [v7 copy];
    isoCountryCode = v8->_isoCountryCode;
    v8->_isoCountryCode = v11;
  }

  return v8;
}

- (NSString)normalizedRepresentation
{
  if (![(CHPhoneNumber *)self normalizedRepresentationAttempted])
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = [(CHPhoneNumber *)self digits];
    v5 = [(CHPhoneNumber *)self isoCountryCode];
    v6 = CFPhoneNumberCreate();

    if (v6)
    {
      String = CFPhoneNumberCreateString();
      normalizedRepresentation = self->_normalizedRepresentation;
      self->_normalizedRepresentation = String;

      CFRelease(v6);
    }

    [(CHPhoneNumber *)self setNormalizedRepresentationAttempted:1];
  }

  v9 = self->_normalizedRepresentation;

  return v9;
}

@end