@interface DMCPayloadViewModel
+ (id)accountPayloadClasses;
+ (id)managedAppClasses;
+ (id)managedBookClasses;
+ (id)payloadViewModelsFromPayload:(id)a3;
+ (id)removeDuplicatesFromRestrictionPayloadViewModels:(id)a3;
+ (id)restrictionPayloadClasses;
+ (int64_t)payloadTypeForPayloadClass:(Class)a3;
- (DMCPayloadViewModel)initWithCoder:(id)a3;
- (DMCPayloadViewModel)initWithManagedApp:(id)a3;
- (DMCPayloadViewModel)initWithManagedBook:(id)a3;
- (DMCPayloadViewModel)initWithPayload:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMCPayloadViewModel

+ (id)accountPayloadClasses
{
  v6[8] = *MEMORY[0x277D85DE8];
  v2 = accountPayloadClasses_accountPayloadClasses;
  if (!accountPayloadClasses_accountPayloadClasses)
  {
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v6[2] = objc_opt_class();
    v6[3] = objc_opt_class();
    v6[4] = objc_opt_class();
    v6[5] = objc_opt_class();
    v6[6] = objc_opt_class();
    v6[7] = objc_opt_class();
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:8];
    v4 = accountPayloadClasses_accountPayloadClasses;
    accountPayloadClasses_accountPayloadClasses = v3;

    v2 = accountPayloadClasses_accountPayloadClasses;
  }

  return v2;
}

+ (id)managedAppClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = managedAppClasses_managedAppPayloadClasses;
  if (!managedAppClasses_managedAppPayloadClasses)
  {
    v6[0] = objc_opt_class();
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    v4 = managedAppClasses_managedAppPayloadClasses;
    managedAppClasses_managedAppPayloadClasses = v3;

    v2 = managedAppClasses_managedAppPayloadClasses;
  }

  return v2;
}

+ (id)managedBookClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = managedBookClasses_managedBookPayloadClasses;
  if (!managedBookClasses_managedBookPayloadClasses)
  {
    v6[0] = objc_opt_class();
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    v4 = managedBookClasses_managedBookPayloadClasses;
    managedBookClasses_managedBookPayloadClasses = v3;

    v2 = managedBookClasses_managedBookPayloadClasses;
  }

  return v2;
}

+ (id)restrictionPayloadClasses
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = restrictionPayloadClasses_restrictionPayloadClasses;
  if (!restrictionPayloadClasses_restrictionPayloadClasses)
  {
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v6[2] = objc_opt_class();
    v6[3] = objc_opt_class();
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
    v4 = restrictionPayloadClasses_restrictionPayloadClasses;
    restrictionPayloadClasses_restrictionPayloadClasses = v3;

    v2 = restrictionPayloadClasses_restrictionPayloadClasses;
  }

  return v2;
}

+ (int64_t)payloadTypeForPayloadClass:(Class)a3
{
  v4 = +[DMCPayloadViewModel accountPayloadClasses];
  v5 = [v4 containsObject:a3];

  if (v5)
  {
    return 1;
  }

  v7 = +[DMCPayloadViewModel managedAppClasses];
  v8 = [v7 containsObject:a3];

  if (v8)
  {
    return 2;
  }

  v9 = +[DMCPayloadViewModel managedBookClasses];
  v10 = [v9 containsObject:a3];

  if (v10)
  {
    return 3;
  }

  v11 = +[DMCPayloadViewModel restrictionPayloadClasses];
  v12 = [v11 containsObject:a3];

  if (v12)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

+ (id)payloadViewModelsFromPayload:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = [(DMCPayloadViewModel *)v5 localizedRestrictionStrings];
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            v12 = [[DMCPayloadViewModel alloc] initWithPayload:v5];
            [(DMCPayloadViewModel *)v12 setTitle:v11];
            [(DMCPayloadViewModel *)v12 setSubtitle1Label:0];
            [(DMCPayloadViewModel *)v12 setSubtitle1Description:0];
            [(DMCPayloadViewModel *)v12 setShowIcon:0];
            [v4 addObject:v12];
          }

          v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v5 = [[DMCPayloadViewModel alloc] initWithPayload:v3];
      [v4 addObject:v5];
    }

    v13 = [v4 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)removeDuplicatesFromRestrictionPayloadViewModels:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 title];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 allValues];

  return v12;
}

- (DMCPayloadViewModel)initWithManagedApp:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = DMCPayloadViewModel;
  v6 = [(DMCPayloadViewModel *)&v16 init];
  if (v6)
  {
    v7 = [v5 bundleID];
    title = v6->_title;
    v6->_title = v7;

    v9 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APPS_SINGULAR");
    localizedSingularForm = v6->_localizedSingularForm;
    v6->_localizedSingularForm = v9;

    v11 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APPS_PLURAL");
    localizedPluralForm = v6->_localizedPluralForm;
    v6->_localizedPluralForm = v11;

    typeStrings = v6->_typeStrings;
    v6->_typeStrings = &unk_285A0E448;

    payloadDescriptionKeyValueSections = v6->_payloadDescriptionKeyValueSections;
    v6->_payloadDescriptionKeyValueSections = 0;

    v6->_showIcon = 1;
    objc_storeStrong(&v6->_managedApp, a3);
    v6->_isManagedAppPayload = 1;
    v6->_hasDetails = 1;
  }

  return v6;
}

- (DMCPayloadViewModel)initWithManagedBook:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = DMCPayloadViewModel;
  v6 = [(DMCPayloadViewModel *)&v16 init];
  if (v6)
  {
    v7 = [v5 friendlyName];
    title = v6->_title;
    v6->_title = v7;

    v9 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_BOOKS_SINGULAR");
    localizedSingularForm = v6->_localizedSingularForm;
    v6->_localizedSingularForm = v9;

    v11 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APPS_PLURAL");
    localizedPluralForm = v6->_localizedPluralForm;
    v6->_localizedPluralForm = v11;

    typeStrings = v6->_typeStrings;
    v6->_typeStrings = &unk_285A0E460;

    payloadDescriptionKeyValueSections = v6->_payloadDescriptionKeyValueSections;
    v6->_payloadDescriptionKeyValueSections = 0;

    v6->_showIcon = 1;
    objc_storeStrong(&v6->_managedBook, a3);
    v6->_isManagedBookPayload = 1;
    v6->_hasDetails = 1;
  }

  return v6;
}

- (DMCPayloadViewModel)initWithPayload:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = DMCPayloadViewModel;
  v5 = [(DMCPayloadViewModel *)&v37 init];
  if (v5)
  {
    v5->_type = [DMCPayloadViewModel payloadTypeForPayloadClass:objc_opt_class()];
    v6 = [v4 title];
    title = v5->_title;
    v5->_title = v6;

    v8 = [objc_opt_class() localizedSingularForm];
    localizedSingularForm = v5->_localizedSingularForm;
    v5->_localizedSingularForm = v8;

    v10 = [objc_opt_class() localizedPluralForm];
    localizedPluralForm = v5->_localizedPluralForm;
    v5->_localizedPluralForm = v10;

    v12 = [objc_opt_class() typeStrings];
    typeStrings = v5->_typeStrings;
    v5->_typeStrings = v12;

    v14 = [v4 payloadDescriptionKeyValueSections];
    payloadDescriptionKeyValueSections = v5->_payloadDescriptionKeyValueSections;
    v5->_payloadDescriptionKeyValueSections = v14;

    v16 = [v4 friendlyName];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = v16;

    v18 = [v4 title];
    v19 = v5->_title;
    v5->_title = v18;

    v20 = [v4 subtitle1Label];
    subtitle1Label = v5->_subtitle1Label;
    v5->_subtitle1Label = v20;

    v22 = [v4 subtitle1Description];
    subtitle1Description = v5->_subtitle1Description;
    v5->_subtitle1Description = v22;

    v24 = [v4 subtitle2Label];
    subtitle2Label = v5->_subtitle2Label;
    v5->_subtitle2Label = v24;

    v26 = [v4 subtitle2Description];
    subtitle2Description = v5->_subtitle2Description;
    v5->_subtitle2Description = v26;

    objc_opt_class();
    v5->_isCertificate = objc_opt_isKindOfClass() & 1;
    objc_opt_class();
    v5->_isManagedAppPayload = objc_opt_isKindOfClass() & 1;
    objc_opt_class();
    v5->_isManagedBookPayload = objc_opt_isKindOfClass() & 1;
    if (v5->_isCertificate || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v28 = [v4 copyCertificate];
      if (v28)
      {
        v29 = v28;
        v30 = SecCertificateCopyProperties();
        if (v30)
        {
          v31 = v30;
          objc_storeStrong(&v5->_certificateProperties, v30);
          CFRelease(v31);
        }

        SecCertificateNotValidAfter();
        v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
        certificateExpirationDate = v5->_certificateExpirationDate;
        v5->_certificateExpirationDate = v32;

        CFRelease(v29);
      }
    }

    v5->_showIcon = 1;
    v34 = v5->_payloadDescriptionKeyValueSections;
    v35 = v34 && [(NSArray *)v34 count]|| v5->_isManagedAppPayload || v5->_isManagedBookPayload || v5->_certificateProperties != 0;
    v5->_hasDetails = v35;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMCPayloadViewModel *)self typeStrings];
  [v4 encodeObject:v5 forKey:@"typeStrings"];

  v6 = [(DMCPayloadViewModel *)self localizedSingularForm];
  [v4 encodeObject:v6 forKey:@"localizedSingularForm"];

  v7 = [(DMCPayloadViewModel *)self localizedPluralForm];
  [v4 encodeObject:v7 forKey:@"localizedPluralForm"];

  v8 = [(DMCPayloadViewModel *)self payloadDescriptionKeyValueSections];
  [v4 encodeObject:v8 forKey:@"payloadDescriptionKeyValueSections"];

  v9 = [(DMCPayloadViewModel *)self friendlyName];
  [v4 encodeObject:v9 forKey:@"friendlyName"];

  v10 = [(DMCPayloadViewModel *)self title];
  [v4 encodeObject:v10 forKey:@"title"];

  v11 = [(DMCPayloadViewModel *)self subtitle1Label];
  [v4 encodeObject:v11 forKey:@"subtitle1Label"];

  v12 = [(DMCPayloadViewModel *)self subtitle1Description];
  [v4 encodeObject:v12 forKey:@"subtitle1Description"];

  v13 = [(DMCPayloadViewModel *)self subtitle2Label];
  [v4 encodeObject:v13 forKey:@"subtitle2Label"];

  v14 = [(DMCPayloadViewModel *)self subtitle2Description];
  [v4 encodeObject:v14 forKey:@"subtitle2Description"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCPayloadViewModel showIcon](self, "showIcon")}];
  [v4 encodeObject:v15 forKey:@"showIcon"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCPayloadViewModel hasDetails](self, "hasDetails")}];
  [v4 encodeObject:v16 forKey:@"hasDetails"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCPayloadViewModel isCertificate](self, "isCertificate")}];
  [v4 encodeObject:v17 forKey:@"isCertificate"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCPayloadViewModel isManagedAppPayload](self, "isManagedAppPayload")}];
  [v4 encodeObject:v18 forKey:@"isManagedAppPayload"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCPayloadViewModel isManagedBookPayload](self, "isManagedBookPayload")}];
  [v4 encodeObject:v19 forKey:@"isManagedBookPayload"];

  v20 = [(DMCPayloadViewModel *)self managedApp];
  [v4 encodeObject:v20 forKey:@"managedApp"];

  v21 = [(DMCPayloadViewModel *)self managedBook];
  [v4 encodeObject:v21 forKey:@"managedBook"];

  v22 = [(DMCPayloadViewModel *)self certificateExpirationDate];
  [v4 encodeObject:v22 forKey:@"certificateExpirationDate"];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMCPayloadViewModel type](self, "type")}];
  [v4 encodeObject:v23 forKey:@"type"];

  v24 = [(DMCPayloadViewModel *)self _sendableCertificateProperties];
  [v4 encodeObject:v24 forKey:@"certificateProperties"];
}

- (DMCPayloadViewModel)initWithCoder:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v73.receiver = self;
  v73.super_class = DMCPayloadViewModel;
  v5 = [(DMCPayloadViewModel *)&v73 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"typeStrings"];
    typeStrings = v5->_typeStrings;
    v5->_typeStrings = v9;

    v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"localizedSingularForm"];
    localizedSingularForm = v5->_localizedSingularForm;
    v5->_localizedSingularForm = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"localizedPluralForm"];
    localizedPluralForm = v5->_localizedPluralForm;
    v5->_localizedPluralForm = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"payloadDescriptionKeyValueSections"];
    payloadDescriptionKeyValueSections = v5->_payloadDescriptionKeyValueSections;
    v5->_payloadDescriptionKeyValueSections = v20;

    v22 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"friendlyName"];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = v23;

    v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"title"];
    title = v5->_title;
    v5->_title = v26;

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"subtitle1Label"];
    subtitle1Label = v5->_subtitle1Label;
    v5->_subtitle1Label = v29;

    v31 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"subtitle1Description"];
    subtitle1Description = v5->_subtitle1Description;
    v5->_subtitle1Description = v32;

    v34 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"subtitle2Label"];
    subtitle2Label = v5->_subtitle2Label;
    v5->_subtitle2Label = v35;

    v37 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"subtitle2Description"];
    subtitle2Description = v5->_subtitle2Description;
    v5->_subtitle2Description = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"showIcon"];
    v5->_showIcon = [v40 BOOLValue];

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasDetails"];
    v5->_hasDetails = [v41 BOOLValue];

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isCertificate"];
    v5->_isCertificate = [v42 BOOLValue];

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isManagedAppPayload"];
    v5->_isManagedAppPayload = [v43 BOOLValue];

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isManagedBookPayload"];
    v5->_isManagedBookPayload = [v44 BOOLValue];

    v45 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"managedApp"];
    managedApp = v5->_managedApp;
    v5->_managedApp = v46;

    v48 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"managedBook"];
    managedBook = v5->_managedBook;
    v5->_managedBook = v49;

    v51 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v52 = [v4 decodeObjectOfClasses:v51 forKey:@"certificateExpirationDate"];
    certificateExpirationDate = v5->_certificateExpirationDate;
    v5->_certificateExpirationDate = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v54 integerValue];

    v72 = MEMORY[0x277CBEB98];
    v71 = objc_opt_class();
    v70 = objc_opt_class();
    v55 = objc_opt_class();
    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = [v72 setWithObjects:{v71, v70, v55, v56, v57, v58, v59, v60, v61, v62, objc_opt_class(), 0}];
    v64 = [v4 decodeObjectOfClasses:v63 forKey:@"certificateProperties"];
    certificateProperties = v5->_certificateProperties;
    v5->_certificateProperties = v64;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v66 = *DMCLogObjects();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = v5->_certificateProperties;
        *buf = 138543362;
        v75 = v67;
        _os_log_impl(&dword_247E7D000, v66, OS_LOG_TYPE_ERROR, "DMCPayloadViewModel decoder encountered invalid certificateProperties array: %{public}@", buf, 0xCu);
      }

      v68 = v5->_certificateProperties;
      v5->_certificateProperties = MEMORY[0x277CBEBF8];
    }
  }

  return v5;
}

@end