@interface PKPaymentPreferenceCard
- (PKPaymentPreferenceCard)initWithTitle:(id)title preferences:(id)preferences selectedIndex:(unint64_t)index readOnly:(BOOL)only;
- (id)errorsForPreference:(id)preference;
- (void)setErrors:(id)errors forPreference:(id)preference;
@end

@implementation PKPaymentPreferenceCard

- (PKPaymentPreferenceCard)initWithTitle:(id)title preferences:(id)preferences selectedIndex:(unint64_t)index readOnly:(BOOL)only
{
  v7.receiver = self;
  v7.super_class = PKPaymentPreferenceCard;
  return [(PKPaymentPreference *)&v7 initWithTitle:title preferences:preferences selectedIndex:index readOnly:only];
}

- (void)setErrors:(id)errors forPreference:(id)preference
{
  errorsCopy = errors;
  preferenceCopy = preference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pass = preferenceCopy;
  }

  else
  {
    pass = [preferenceCopy pass];
  }

  v9 = pass;
  errors = [(PKPaymentPreference *)self errors];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__PKPaymentPreferenceCard_setErrors_forPreference___block_invoke;
  v17[3] = &unk_1E79C9A40;
  v11 = v9;
  v18 = v11;
  v12 = [errors keysOfEntriesPassingTest:v17];
  anyObject = [v12 anyObject];

  errors2 = [(PKPaymentPreference *)self errors];
  v15 = errors2;
  if (anyObject)
  {
    [errors2 setObject:errorsCopy forKey:anyObject];
  }

  else
  {
    serialNumber = [v11 serialNumber];
    [v15 setObject:errorsCopy forKey:serialNumber];
  }
}

uint64_t __51__PKPaymentPreferenceCard_setErrors_forPreference___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serialNumber];
  v5 = [v4 isEqualToString:v3];

  return v5;
}

- (id)errorsForPreference:(id)preference
{
  preferenceCopy = preference;
  errors = [(PKPaymentPreference *)self errors];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__PKPaymentPreferenceCard_errorsForPreference___block_invoke;
  v12[3] = &unk_1E79C9A40;
  v13 = preferenceCopy;
  v6 = preferenceCopy;
  v7 = [errors keysOfEntriesPassingTest:v12];
  anyObject = [v7 anyObject];

  if (anyObject)
  {
    errors2 = [(PKPaymentPreference *)self errors];
    v10 = [errors2 objectForKey:anyObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __47__PKPaymentPreferenceCard_errorsForPreference___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = *(a1 + 32);
  if (isKindOfClass)
  {
    v6 = [v5 pass];
    v7 = [v6 serialNumber];
    v8 = [v7 isEqualToString:v3];

    v3 = v7;
  }

  else
  {
    v6 = [v5 serialNumber];
    v8 = [v6 isEqualToString:v3];
  }

  return v8;
}

@end