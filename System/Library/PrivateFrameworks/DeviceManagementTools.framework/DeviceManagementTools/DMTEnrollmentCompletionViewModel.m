@interface DMTEnrollmentCompletionViewModel
+ (id)detailTextForSuccessfulEnrollmentWithLocalizedDeviceClass:(id)a3 organizationName:(id)a4 organizationType:(int64_t)a5 mdmServerName:(id)a6;
+ (id)linkButtonTitle;
- (BOOL)hasVerboseDescription;
- (DMTEnrollmentCompletionViewModel)initWithCoder:(id)a3;
- (id)initForEnrollmentFailureWithError:(id)a3 localizedDeviceClass:(id)a4;
- (id)initSuccessfulEnrollmentInOrganizationName:(id)a3 organizationType:(int64_t)a4 mdmServerName:(id)a5 localizedDeviceClass:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMTEnrollmentCompletionViewModel

- (id)initSuccessfulEnrollmentInOrganizationName:(id)a3 organizationType:(int64_t)a4 mdmServerName:(id)a5 localizedDeviceClass:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = DMTEnrollmentCompletionViewModel;
  v13 = [(DMTEnrollmentCompletionViewModel *)&v23 init];
  if (v13)
  {
    v14 = +[DMTEnrollmentCompletionViewModel symbolNameForSuccessfulEnrollment];
    symbolName = v13->_symbolName;
    v13->_symbolName = v14;

    v16 = DMTSuccessfulEnrollmentTitleTextForDeviceClass(v12);
    title = v13->_title;
    v13->_title = v16;

    v18 = [DMTEnrollmentCompletionViewModel detailTextForSuccessfulEnrollmentWithLocalizedDeviceClass:v12 organizationName:v10 organizationType:a4 mdmServerName:v11];
    detailText = v13->_detailText;
    v13->_detailText = v18;

    v20 = DMTCompletionButtonTitleForDeviceClass(v12);
    buttonTitle = v13->_buttonTitle;
    v13->_buttonTitle = v20;
  }

  return v13;
}

- (id)initForEnrollmentFailureWithError:(id)a3 localizedDeviceClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = DMTEnrollmentCompletionViewModel;
  v8 = [(DMTEnrollmentCompletionViewModel *)&v22 init];
  if (v8)
  {
    v9 = +[DMTEnrollmentCompletionViewModel symbolNameForEnrollmentFailure];
    symbolName = v8->_symbolName;
    v8->_symbolName = v9;

    v11 = [DMTEnrollmentCompletionViewModel titleForEnrollmentFailureWithLocalizedDeviceClass:v7];
    title = v8->_title;
    v8->_title = v11;

    v13 = [DMTEnrollmentCompletionViewModel detailTextForEnrollmentFailureWithLocalizedDeviceClass:v7];
    detailText = v8->_detailText;
    v8->_detailText = v13;

    v15 = [DMTEnrollmentCompletionViewModel verboseDescriptionTextForError:v6];
    verboseDescriptionText = v8->_verboseDescriptionText;
    v8->_verboseDescriptionText = v15;

    v17 = +[DMTEnrollmentCompletionViewModel linkButtonTitle];
    linkButtonTitle = v8->_linkButtonTitle;
    v8->_linkButtonTitle = v17;

    v19 = DMTCompletionButtonTitleForDeviceClass(v7);
    buttonTitle = v8->_buttonTitle;
    v8->_buttonTitle = v19;
  }

  return v8;
}

- (DMTEnrollmentCompletionViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DMTEnrollmentCompletionViewModel;
  v5 = [(DMTEnrollmentCompletionViewModel *)&v25 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"symbolName"];
    symbolName = v5->_symbolName;
    v5->_symbolName = v7;

    objc_storeStrong(&v5->_symbolName, v7);
    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    objc_storeStrong(&v5->_title, v10);
    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"detailText"];
    detailText = v5->_detailText;
    v5->_detailText = v13;

    objc_storeStrong(&v5->_detailText, v13);
    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"verboseDescriptionText"];
    verboseDescriptionText = v5->_verboseDescriptionText;
    v5->_verboseDescriptionText = v16;

    objc_storeStrong(&v5->_verboseDescriptionText, v16);
    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"linkButtonTitle"];
    linkButtonTitle = v5->_linkButtonTitle;
    v5->_linkButtonTitle = v19;

    objc_storeStrong(&v5->_linkButtonTitle, v19);
    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"buttonTitle"];
    buttonTitle = v5->_buttonTitle;
    v5->_buttonTitle = v22;

    objc_storeStrong(&v5->_buttonTitle, v22);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMTEnrollmentCompletionViewModel *)self symbolName];
  [v4 encodeObject:v5 forKey:@"symbolName"];

  v6 = [(DMTEnrollmentCompletionViewModel *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(DMTEnrollmentCompletionViewModel *)self detailText];
  [v4 encodeObject:v7 forKey:@"detailText"];

  v8 = [(DMTEnrollmentCompletionViewModel *)self verboseDescriptionText];
  [v4 encodeObject:v8 forKey:@"verboseDescriptionText"];

  v9 = [(DMTEnrollmentCompletionViewModel *)self linkButtonTitle];
  [v4 encodeObject:v9 forKey:@"linkButtonTitle"];

  v10 = [(DMTEnrollmentCompletionViewModel *)self buttonTitle];
  [v4 encodeObject:v10 forKey:@"buttonTitle"];
}

- (BOOL)hasVerboseDescription
{
  v3 = [(DMTEnrollmentCompletionViewModel *)self verboseDescriptionText];
  if ([v3 length])
  {
    v4 = [(DMTEnrollmentCompletionViewModel *)self linkButtonTitle];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)linkButtonTitle
{
  v2 = DMTBundle();
  v3 = [v2 localizedStringForKey:@"View Details…" value:&stru_285B54748 table:0];

  return v3;
}

+ (id)detailTextForSuccessfulEnrollmentWithLocalizedDeviceClass:(id)a3 organizationName:(id)a4 organizationType:(int64_t)a5 mdmServerName:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = DMTFormattedEnrollmentOrganizationNameFrom(a4);
  v12 = DMTLocalizedOrganizationMarketingNameForOrganizationType(a5);
  if ([v9 length])
  {
    v13 = DMTDetailTextSuccessfulEnrollmentWithMDMServerFor(v10);

    [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@%@%@" error:0, v11, v9, v12];
  }

  else
  {
    v13 = DMTDetailTextSuccessfulEnrollmentFor(v10);

    [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@%@" error:0, v11, v12, v16];
  }
  v14 = ;

  return v14;
}

@end