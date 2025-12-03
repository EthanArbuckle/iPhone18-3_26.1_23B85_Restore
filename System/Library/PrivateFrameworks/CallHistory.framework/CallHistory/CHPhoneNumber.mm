@interface CHPhoneNumber
- (CHPhoneNumber)initWithDigits:(id)digits isoCountryCode:(id)code;
- (NSString)formattedRepresentation;
- (NSString)normalizedRepresentation;
@end

@implementation CHPhoneNumber

- (NSString)formattedRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  if (![(CHPhoneNumber *)self formattedRepresentationAttempted])
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      digits = [(CHPhoneNumber *)self digits];
      isoCountryCode = [(CHPhoneNumber *)self isoCountryCode];
      v15 = 138412546;
      v16 = digits;
      v17 = 2114;
      v18 = isoCountryCode;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Not formatted. So let's create a CFPhoneNumberRef. Num: %@, iso: %{public}@", &v15, 0x16u);
    }

    v6 = *MEMORY[0x1E695E480];
    digits2 = [(CHPhoneNumber *)self digits];
    isoCountryCode2 = [(CHPhoneNumber *)self isoCountryCode];
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

- (CHPhoneNumber)initWithDigits:(id)digits isoCountryCode:(id)code
{
  digitsCopy = digits;
  codeCopy = code;
  v14.receiver = self;
  v14.super_class = CHPhoneNumber;
  v8 = [(CHLogger *)&v14 initWithDomain:"CHPhoneNumber"];
  if (v8)
  {
    v9 = [digitsCopy copy];
    digits = v8->_digits;
    v8->_digits = v9;

    v11 = [codeCopy copy];
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
    digits = [(CHPhoneNumber *)self digits];
    isoCountryCode = [(CHPhoneNumber *)self isoCountryCode];
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