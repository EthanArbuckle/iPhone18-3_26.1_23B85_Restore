@interface PKPaymentCredentialMetadataDate
- (BOOL)_isEqualToMetadata:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPaymentCredentialMetadataDate)initWithConfiguration:(id)a3;
- (id)displayString;
- (unint64_t)hash;
@end

@implementation PKPaymentCredentialMetadataDate

- (PKPaymentCredentialMetadataDate)initWithConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentCredentialMetadataDate;
  v5 = [(PKPaymentCredentialMetadata *)&v11 initWithConfiguration:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"displayFormat"];
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
  v4 = [(PKPaymentCredentialMetadataDate *)self displayFormat];
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v6 = [v3 dateFormatFromTemplate:v4 options:0 locale:v5];

  [_MergedGlobals_227 setDateFormat:v6];
  v7 = [(PKPaymentCredentialMetadata *)self value];
  v8 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v7, 0, 0);

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentCredentialMetadataDate *)self _isEqualToMetadata:v4];
  }

  return v5;
}

- (BOOL)_isEqualToMetadata:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentCredentialMetadataDate;
  if ([(PKPaymentCredentialMetadata *)&v12 _isEqualToMetadata:v4])
  {
    v5 = v4[3];
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