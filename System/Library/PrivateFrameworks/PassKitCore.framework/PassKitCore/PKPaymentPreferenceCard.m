@interface PKPaymentPreferenceCard
- (PKPaymentPreferenceCard)initWithTitle:(id)a3 preferences:(id)a4 selectedIndex:(unint64_t)a5 readOnly:(BOOL)a6;
- (id)errorsForPreference:(id)a3;
- (void)setErrors:(id)a3 forPreference:(id)a4;
@end

@implementation PKPaymentPreferenceCard

- (PKPaymentPreferenceCard)initWithTitle:(id)a3 preferences:(id)a4 selectedIndex:(unint64_t)a5 readOnly:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = PKPaymentPreferenceCard;
  return [(PKPaymentPreference *)&v7 initWithTitle:a3 preferences:a4 selectedIndex:a5 readOnly:a6];
}

- (void)setErrors:(id)a3 forPreference:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = [v7 pass];
  }

  v9 = v8;
  v10 = [(PKPaymentPreference *)self errors];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__PKPaymentPreferenceCard_setErrors_forPreference___block_invoke;
  v17[3] = &unk_1E79C9A40;
  v11 = v9;
  v18 = v11;
  v12 = [v10 keysOfEntriesPassingTest:v17];
  v13 = [v12 anyObject];

  v14 = [(PKPaymentPreference *)self errors];
  v15 = v14;
  if (v13)
  {
    [v14 setObject:v6 forKey:v13];
  }

  else
  {
    v16 = [v11 serialNumber];
    [v15 setObject:v6 forKey:v16];
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

- (id)errorsForPreference:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPreference *)self errors];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__PKPaymentPreferenceCard_errorsForPreference___block_invoke;
  v12[3] = &unk_1E79C9A40;
  v13 = v4;
  v6 = v4;
  v7 = [v5 keysOfEntriesPassingTest:v12];
  v8 = [v7 anyObject];

  if (v8)
  {
    v9 = [(PKPaymentPreference *)self errors];
    v10 = [v9 objectForKey:v8];
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