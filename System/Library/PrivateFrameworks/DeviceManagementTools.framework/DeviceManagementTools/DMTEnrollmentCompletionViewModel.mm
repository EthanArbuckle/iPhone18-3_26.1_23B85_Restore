@interface DMTEnrollmentCompletionViewModel
+ (id)detailTextForSuccessfulEnrollmentWithLocalizedDeviceClass:(id)class organizationName:(id)name organizationType:(int64_t)type mdmServerName:(id)serverName;
+ (id)linkButtonTitle;
- (BOOL)hasVerboseDescription;
- (DMTEnrollmentCompletionViewModel)initWithCoder:(id)coder;
- (id)initForEnrollmentFailureWithError:(id)error localizedDeviceClass:(id)class;
- (id)initSuccessfulEnrollmentInOrganizationName:(id)name organizationType:(int64_t)type mdmServerName:(id)serverName localizedDeviceClass:(id)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMTEnrollmentCompletionViewModel

- (id)initSuccessfulEnrollmentInOrganizationName:(id)name organizationType:(int64_t)type mdmServerName:(id)serverName localizedDeviceClass:(id)class
{
  nameCopy = name;
  serverNameCopy = serverName;
  classCopy = class;
  v23.receiver = self;
  v23.super_class = DMTEnrollmentCompletionViewModel;
  v13 = [(DMTEnrollmentCompletionViewModel *)&v23 init];
  if (v13)
  {
    v14 = +[DMTEnrollmentCompletionViewModel symbolNameForSuccessfulEnrollment];
    symbolName = v13->_symbolName;
    v13->_symbolName = v14;

    v16 = DMTSuccessfulEnrollmentTitleTextForDeviceClass(classCopy);
    title = v13->_title;
    v13->_title = v16;

    v18 = [DMTEnrollmentCompletionViewModel detailTextForSuccessfulEnrollmentWithLocalizedDeviceClass:classCopy organizationName:nameCopy organizationType:type mdmServerName:serverNameCopy];
    detailText = v13->_detailText;
    v13->_detailText = v18;

    v20 = DMTCompletionButtonTitleForDeviceClass(classCopy);
    buttonTitle = v13->_buttonTitle;
    v13->_buttonTitle = v20;
  }

  return v13;
}

- (id)initForEnrollmentFailureWithError:(id)error localizedDeviceClass:(id)class
{
  errorCopy = error;
  classCopy = class;
  v22.receiver = self;
  v22.super_class = DMTEnrollmentCompletionViewModel;
  v8 = [(DMTEnrollmentCompletionViewModel *)&v22 init];
  if (v8)
  {
    v9 = +[DMTEnrollmentCompletionViewModel symbolNameForEnrollmentFailure];
    symbolName = v8->_symbolName;
    v8->_symbolName = v9;

    v11 = [DMTEnrollmentCompletionViewModel titleForEnrollmentFailureWithLocalizedDeviceClass:classCopy];
    title = v8->_title;
    v8->_title = v11;

    v13 = [DMTEnrollmentCompletionViewModel detailTextForEnrollmentFailureWithLocalizedDeviceClass:classCopy];
    detailText = v8->_detailText;
    v8->_detailText = v13;

    v15 = [DMTEnrollmentCompletionViewModel verboseDescriptionTextForError:errorCopy];
    verboseDescriptionText = v8->_verboseDescriptionText;
    v8->_verboseDescriptionText = v15;

    v17 = +[DMTEnrollmentCompletionViewModel linkButtonTitle];
    linkButtonTitle = v8->_linkButtonTitle;
    v8->_linkButtonTitle = v17;

    v19 = DMTCompletionButtonTitleForDeviceClass(classCopy);
    buttonTitle = v8->_buttonTitle;
    v8->_buttonTitle = v19;
  }

  return v8;
}

- (DMTEnrollmentCompletionViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = DMTEnrollmentCompletionViewModel;
  v5 = [(DMTEnrollmentCompletionViewModel *)&v25 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"symbolName"];
    symbolName = v5->_symbolName;
    v5->_symbolName = v7;

    objc_storeStrong(&v5->_symbolName, v7);
    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    objc_storeStrong(&v5->_title, v10);
    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"detailText"];
    detailText = v5->_detailText;
    v5->_detailText = v13;

    objc_storeStrong(&v5->_detailText, v13);
    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"verboseDescriptionText"];
    verboseDescriptionText = v5->_verboseDescriptionText;
    v5->_verboseDescriptionText = v16;

    objc_storeStrong(&v5->_verboseDescriptionText, v16);
    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"linkButtonTitle"];
    linkButtonTitle = v5->_linkButtonTitle;
    v5->_linkButtonTitle = v19;

    objc_storeStrong(&v5->_linkButtonTitle, v19);
    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"buttonTitle"];
    buttonTitle = v5->_buttonTitle;
    v5->_buttonTitle = v22;

    objc_storeStrong(&v5->_buttonTitle, v22);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  symbolName = [(DMTEnrollmentCompletionViewModel *)self symbolName];
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];

  title = [(DMTEnrollmentCompletionViewModel *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  detailText = [(DMTEnrollmentCompletionViewModel *)self detailText];
  [coderCopy encodeObject:detailText forKey:@"detailText"];

  verboseDescriptionText = [(DMTEnrollmentCompletionViewModel *)self verboseDescriptionText];
  [coderCopy encodeObject:verboseDescriptionText forKey:@"verboseDescriptionText"];

  linkButtonTitle = [(DMTEnrollmentCompletionViewModel *)self linkButtonTitle];
  [coderCopy encodeObject:linkButtonTitle forKey:@"linkButtonTitle"];

  buttonTitle = [(DMTEnrollmentCompletionViewModel *)self buttonTitle];
  [coderCopy encodeObject:buttonTitle forKey:@"buttonTitle"];
}

- (BOOL)hasVerboseDescription
{
  verboseDescriptionText = [(DMTEnrollmentCompletionViewModel *)self verboseDescriptionText];
  if ([verboseDescriptionText length])
  {
    linkButtonTitle = [(DMTEnrollmentCompletionViewModel *)self linkButtonTitle];
    v5 = [linkButtonTitle length] != 0;
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

+ (id)detailTextForSuccessfulEnrollmentWithLocalizedDeviceClass:(id)class organizationName:(id)name organizationType:(int64_t)type mdmServerName:(id)serverName
{
  serverNameCopy = serverName;
  classCopy = class;
  v11 = DMTFormattedEnrollmentOrganizationNameFrom(name);
  v12 = DMTLocalizedOrganizationMarketingNameForOrganizationType(type);
  if ([serverNameCopy length])
  {
    v13 = DMTDetailTextSuccessfulEnrollmentWithMDMServerFor(classCopy);

    [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@%@%@" error:0, v11, serverNameCopy, v12];
  }

  else
  {
    v13 = DMTDetailTextSuccessfulEnrollmentFor(classCopy);

    [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@%@" error:0, v11, v12, v16];
  }
  v14 = ;

  return v14;
}

@end