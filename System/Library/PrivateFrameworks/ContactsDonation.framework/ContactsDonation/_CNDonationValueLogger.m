@interface _CNDonationValueLogger
- (_CNDonationValueLogger)initWithLog:(id)a3;
- (void)visitDonationValue:(id)a3 emailAddress:(id)a4 label:(id)a5;
- (void)visitDonationValue:(id)a3 imageData:(id)a4;
- (void)visitDonationValue:(id)a3 nameComponents:(id)a4;
- (void)visitDonationValue:(id)a3 phoneNumber:(id)a4 label:(id)a5;
- (void)visitDonationValue:(id)a3 postalAddress:(id)a4 style:(int64_t)a5 label:(id)a6;
@end

@implementation _CNDonationValueLogger

- (_CNDonationValueLogger)initWithLog:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNDonationValueLogger;
  v6 = [(_CNDonationValueLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_log, a3);
    v8 = v7;
  }

  return v7;
}

- (void)visitDonationValue:(id)a3 nameComponents:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCAC08];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [v9 stringFromPersonNameComponents:v8];

  v11 = [v10 length];
  log = self->_log;
  v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = log;
      v15 = [v6 origin];
      v16 = [v15 bundleIdentifier];
      v21 = 138478083;
      v22 = v10;
      v23 = 2114;
      v24 = v16;
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
    v15 = [v6 origin];
    v16 = [v15 bundleIdentifier];
    v21 = 138543362;
    v22 = v16;
    v17 = "Creating donation of empty name from %{public}@";
    v18 = v14;
    v19 = 12;
    goto LABEL_6;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)visitDonationValue:(id)a3 emailAddress:(id)a4 label:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 length])
  {
    v11 = [v10 length];
    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = log;
        v15 = [v8 origin];
        v16 = [v15 bundleIdentifier];
        v22 = 138478339;
        v23 = v9;
        v24 = 2113;
        v25 = v10;
        v26 = 2114;
        v27 = v16;
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
      v15 = [v8 origin];
      v16 = [v15 bundleIdentifier];
      v22 = 138478083;
      v23 = v9;
      v24 = 2114;
      v25 = v16;
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
      v15 = [v8 origin];
      v16 = [v15 bundleIdentifier];
      v22 = 138543362;
      v23 = v16;
      v17 = "Creating donation of empty email address from %{public}@";
      v18 = v14;
      v19 = 12;
      goto LABEL_9;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)visitDonationValue:(id)a3 phoneNumber:(id)a4 label:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 stringValue];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v10 length];
    log = self->_log;
    v15 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = log;
        v17 = [v9 stringValue];
        v18 = [v8 origin];
        v19 = [v18 bundleIdentifier];
        v28 = 138478339;
        v29 = v17;
        v30 = 2113;
        v31 = v10;
        v32 = 2114;
        v33 = v19;
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
      v17 = [v9 stringValue];
      v18 = [v8 origin];
      v19 = [v18 bundleIdentifier];
      v28 = 138478083;
      v29 = v17;
      v30 = 2114;
      v31 = v19;
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
      v25 = [v8 origin];
      v26 = [v25 bundleIdentifier];
      v28 = 138543362;
      v29 = v26;
      _os_log_impl(&dword_2258E5000, v24, OS_LOG_TYPE_DEFAULT, "Creating donation of empty phone number from %{public}@", &v28, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)visitDonationValue:(id)a3 postalAddress:(id)a4 style:(int64_t)a5 label:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [MEMORY[0x277CBDB80] singleLineStringFromPostalAddress:a4 addCountryName:1];
  v13 = @"address";
  if (a5 == 1)
  {
    v13 = @"location";
  }

  v14 = v13;
  if ([v12 length])
  {
    v15 = [v11 length];
    log = self->_log;
    v17 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v18 = log;
        v19 = [v10 origin];
        v20 = [v19 bundleIdentifier];
        v26 = 138544131;
        v27 = v14;
        v28 = 2113;
        v29 = v12;
        v30 = 2113;
        v31 = v11;
        v32 = 2114;
        v33 = v20;
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
      v19 = [v10 origin];
      v20 = [v19 bundleIdentifier];
      v26 = 138543875;
      v27 = v14;
      v28 = 2113;
      v29 = v12;
      v30 = 2114;
      v31 = v20;
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
      v19 = [v10 origin];
      v20 = [v19 bundleIdentifier];
      v26 = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = v20;
      v21 = "Creating donation of empty %{public}@ from %{public}@";
      v22 = v18;
      v23 = 22;
      goto LABEL_11;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)visitDonationValue:(id)a3 imageData:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = log;
    v8 = a3;
    v9 = [a4 length];
    v10 = [v8 origin];

    v11 = [v10 bundleIdentifier];
    v13 = 134218242;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_2258E5000, v7, OS_LOG_TYPE_DEFAULT, "Creating donation of image data (%lu bytes) from %{public}@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end