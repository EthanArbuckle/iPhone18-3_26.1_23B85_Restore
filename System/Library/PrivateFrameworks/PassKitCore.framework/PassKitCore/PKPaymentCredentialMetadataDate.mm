@interface PKPaymentCredentialMetadataDate
- (BOOL)_isEqualToMetadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (PKPaymentCredentialMetadataDate)initWithConfiguration:(id)configuration;
- (id)displayString;
- (unint64_t)hash;
@end

@implementation PKPaymentCredentialMetadataDate

- (PKPaymentCredentialMetadataDate)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PKPaymentCredentialMetadataDate;
  v5 = [(PKPaymentCredentialMetadata *)&v11 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = [configurationCopy objectForKey:@"displayFormat"];
    displayFormat = v5->_displayFormat;
    v5->_displayFormat = v6;

    if (!v5->_displayFormat)
    {

      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "No Display format in configuration could not create metadata", v10, 2u);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)displayString
{
  if (qword_1ED6D1B00 != -1)
  {
    dispatch_once(&qword_1ED6D1B00, &__block_literal_global_114);
  }

  v3 = MEMORY[0x1E696AB78];
  displayFormat = [(PKPaymentCredentialMetadataDate *)self displayFormat];
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v6 = [v3 dateFormatFromTemplate:displayFormat options:0 locale:autoupdatingCurrentLocale];

  [_MergedGlobals_227 setDateFormat:v6];
  value = [(PKPaymentCredentialMetadata *)self value];
  v8 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(value, 0, 0);

  v9 = [_MergedGlobals_227 stringFromDate:v8];

  return v9;
}

void __48__PKPaymentCredentialMetadataDate_displayString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_227;
  _MergedGlobals_227 = v0;

  v2 = _MergedGlobals_227;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentCredentialMetadataDate *)self _isEqualToMetadata:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToMetadata:(id)metadata
{
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = PKPaymentCredentialMetadataDate;
  if ([(PKPaymentCredentialMetadata *)&v12 _isEqualToMetadata:metadataCopy])
  {
    v5 = metadataCopy[3];
    v6 = self->_displayFormat;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(NSString *)v6 isEqualToString:v7];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_displayFormat];
  v7.receiver = self;
  v7.super_class = PKPaymentCredentialMetadataDate;
  v4 = [(PKPaymentCredentialMetadata *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

@end