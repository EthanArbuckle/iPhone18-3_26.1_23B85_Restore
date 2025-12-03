@interface _CNDonationValueLogger
- (_CNDonationValueLogger)initWithLog:(id)log;
- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label;
- (void)visitDonationValue:(id)value imageData:(id)data;
- (void)visitDonationValue:(id)value nameComponents:(id)components;
- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label;
- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label;
@end

@implementation _CNDonationValueLogger

- (_CNDonationValueLogger)initWithLog:(id)log
{
  logCopy = log;
  v10.receiver = self;
  v10.super_class = _CNDonationValueLogger;
  v6 = [(_CNDonationValueLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, log);
    v8 = v7;
  }

  return v7;
}

- (void)visitDonationValue:(id)value nameComponents:(id)components
{
  v25 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = MEMORY[0x277CCAC08];
  componentsCopy = components;
  v9 = objc_alloc_init(v7);
  v10 = [v9 stringFromPersonNameComponents:componentsCopy];

  v11 = [v10 length];
  log = self->_log;
  v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = log;
      origin = [valueCopy origin];
      bundleIdentifier = [origin bundleIdentifier];
      v21 = 138478083;
      v22 = v10;
      v23 = 2114;
      v24 = bundleIdentifier;
      v17 = "Creating donation of name %{private}@ from %{public}@";
      v18 = v14;
      v19 = 22;
LABEL_6:
      _os_log_impl(&dword_2258E5000, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
    }
  }

  else if (v13)
  {
    v14 = log;
    origin = [valueCopy origin];
    bundleIdentifier = [origin bundleIdentifier];
    v21 = 138543362;
    v22 = bundleIdentifier;
    v17 = "Creating donation of empty name from %{public}@";
    v18 = v14;
    v19 = 12;
    goto LABEL_6;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)visitDonationValue:(id)value emailAddress:(id)address label:(id)label
{
  v28 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  addressCopy = address;
  labelCopy = label;
  if ([addressCopy length])
  {
    v11 = [labelCopy length];
    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = log;
        origin = [valueCopy origin];
        bundleIdentifier = [origin bundleIdentifier];
        v22 = 138478339;
        v23 = addressCopy;
        v24 = 2113;
        v25 = labelCopy;
        v26 = 2114;
        v27 = bundleIdentifier;
        v17 = "Creating donation of email address %{private}@ with label %{private}@ from %{public}@";
        v18 = v14;
        v19 = 32;
LABEL_9:
        _os_log_impl(&dword_2258E5000, v18, OS_LOG_TYPE_DEFAULT, v17, &v22, v19);
      }
    }

    else if (v13)
    {
      v14 = log;
      origin = [valueCopy origin];
      bundleIdentifier = [origin bundleIdentifier];
      v22 = 138478083;
      v23 = addressCopy;
      v24 = 2114;
      v25 = bundleIdentifier;
      v17 = "Creating donation of email address %{private}@ from %{public}@";
      v18 = v14;
      v19 = 22;
      goto LABEL_9;
    }
  }

  else
  {
    v20 = self->_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v20;
      origin = [valueCopy origin];
      bundleIdentifier = [origin bundleIdentifier];
      v22 = 138543362;
      v23 = bundleIdentifier;
      v17 = "Creating donation of empty email address from %{public}@";
      v18 = v14;
      v19 = 12;
      goto LABEL_9;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)visitDonationValue:(id)value phoneNumber:(id)number label:(id)label
{
  v34 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  numberCopy = number;
  labelCopy = label;
  stringValue = [numberCopy stringValue];
  v12 = [stringValue length];

  if (v12)
  {
    v13 = [labelCopy length];
    log = self->_log;
    v15 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = log;
        stringValue2 = [numberCopy stringValue];
        origin = [valueCopy origin];
        bundleIdentifier = [origin bundleIdentifier];
        v28 = 138478339;
        v29 = stringValue2;
        v30 = 2113;
        v31 = labelCopy;
        v32 = 2114;
        v33 = bundleIdentifier;
        v20 = "Creating donation of phone number %{private}@ with label %{private}@ from %{public}@";
        v21 = v16;
        v22 = 32;
LABEL_9:
        _os_log_impl(&dword_2258E5000, v21, OS_LOG_TYPE_DEFAULT, v20, &v28, v22);
      }
    }

    else if (v15)
    {
      v16 = log;
      stringValue2 = [numberCopy stringValue];
      origin = [valueCopy origin];
      bundleIdentifier = [origin bundleIdentifier];
      v28 = 138478083;
      v29 = stringValue2;
      v30 = 2114;
      v31 = bundleIdentifier;
      v20 = "Creating donation of phone number %{private}@ from %{public}@";
      v21 = v16;
      v22 = 22;
      goto LABEL_9;
    }
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      origin2 = [valueCopy origin];
      bundleIdentifier2 = [origin2 bundleIdentifier];
      v28 = 138543362;
      v29 = bundleIdentifier2;
      _os_log_impl(&dword_2258E5000, v24, OS_LOG_TYPE_DEFAULT, "Creating donation of empty phone number from %{public}@", &v28, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)visitDonationValue:(id)value postalAddress:(id)address style:(int64_t)style label:(id)label
{
  v34 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  labelCopy = label;
  v12 = [MEMORY[0x277CBDB80] singleLineStringFromPostalAddress:address addCountryName:1];
  v13 = @"address";
  if (style == 1)
  {
    v13 = @"location";
  }

  v14 = v13;
  if ([v12 length])
  {
    v15 = [labelCopy length];
    log = self->_log;
    v17 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v18 = log;
        origin = [valueCopy origin];
        bundleIdentifier = [origin bundleIdentifier];
        v26 = 138544131;
        v27 = v14;
        v28 = 2113;
        v29 = v12;
        v30 = 2113;
        v31 = labelCopy;
        v32 = 2114;
        v33 = bundleIdentifier;
        v21 = "Creating donation of %{public}@ %{private}@ with label %{private}@ from %{public}@";
        v22 = v18;
        v23 = 42;
LABEL_11:
        _os_log_impl(&dword_2258E5000, v22, OS_LOG_TYPE_DEFAULT, v21, &v26, v23);
      }
    }

    else if (v17)
    {
      v18 = log;
      origin = [valueCopy origin];
      bundleIdentifier = [origin bundleIdentifier];
      v26 = 138543875;
      v27 = v14;
      v28 = 2113;
      v29 = v12;
      v30 = 2114;
      v31 = bundleIdentifier;
      v21 = "Creating donation of %{public}@ %{private}@ from %{public}@";
      v22 = v18;
      v23 = 32;
      goto LABEL_11;
    }
  }

  else
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v24;
      origin = [valueCopy origin];
      bundleIdentifier = [origin bundleIdentifier];
      v26 = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = bundleIdentifier;
      v21 = "Creating donation of empty %{public}@ from %{public}@";
      v22 = v18;
      v23 = 22;
      goto LABEL_11;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)visitDonationValue:(id)value imageData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = log;
    valueCopy = value;
    v9 = [data length];
    origin = [valueCopy origin];

    bundleIdentifier = [origin bundleIdentifier];
    v13 = 134218242;
    v14 = v9;
    v15 = 2114;
    v16 = bundleIdentifier;
    _os_log_impl(&dword_2258E5000, v7, OS_LOG_TYPE_DEFAULT, "Creating donation of image data (%lu bytes) from %{public}@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end