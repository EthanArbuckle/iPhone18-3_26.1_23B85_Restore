@interface DMTEnrollmentStatusViewModel
+ (id)detailTextWithOrganizationName:(id)name organizationType:(int64_t)type localizedDeviceClass:(id)class;
+ (id)statusMessageForEnrollmentState:(int64_t)state networkName:(id)name;
- (DMTEnrollmentStatusViewModel)initWithCoder:(id)coder;
- (DMTEnrollmentStatusViewModel)initWithOrganizationName:(id)name organizationType:(int64_t)type localizedDeviceClass:(id)class enrollmentState:(int64_t)state networkName:(id)networkName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMTEnrollmentStatusViewModel

- (DMTEnrollmentStatusViewModel)initWithOrganizationName:(id)name organizationType:(int64_t)type localizedDeviceClass:(id)class enrollmentState:(int64_t)state networkName:(id)networkName
{
  nameCopy = name;
  classCopy = class;
  networkNameCopy = networkName;
  v23.receiver = self;
  v23.super_class = DMTEnrollmentStatusViewModel;
  v15 = [(DMTEnrollmentStatusViewModel *)&v23 init];
  if (v15)
  {
    v16 = [objc_opt_class() titleWithLocalizedDeviceClass:classCopy];
    title = v15->_title;
    v15->_title = v16;

    v18 = [objc_opt_class() detailTextWithOrganizationName:nameCopy organizationType:type localizedDeviceClass:classCopy];
    detailText = v15->_detailText;
    v15->_detailText = v18;

    v20 = [objc_opt_class() statusMessageForEnrollmentState:state networkName:networkNameCopy];
    statusMessage = v15->_statusMessage;
    v15->_statusMessage = v20;
  }

  return v15;
}

- (DMTEnrollmentStatusViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = DMTEnrollmentStatusViewModel;
  v5 = [(DMTEnrollmentStatusViewModel *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    objc_storeStrong(&v5->_title, v7);
    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"detailText"];
    detailText = v5->_detailText;
    v5->_detailText = v10;

    objc_storeStrong(&v5->_detailText, v10);
    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"statusMessage"];
    statusMessage = v5->_statusMessage;
    v5->_statusMessage = v13;

    objc_storeStrong(&v5->_statusMessage, v13);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(DMTEnrollmentStatusViewModel *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  detailText = [(DMTEnrollmentStatusViewModel *)self detailText];
  [coderCopy encodeObject:detailText forKey:@"detailText"];

  statusMessage = [(DMTEnrollmentStatusViewModel *)self statusMessage];
  [coderCopy encodeObject:statusMessage forKey:@"statusMessage"];
}

+ (id)detailTextWithOrganizationName:(id)name organizationType:(int64_t)type localizedDeviceClass:(id)class
{
  nameCopy = name;
  v8 = DMTDetailTextAddingDeviceBodyFor(class);
  v9 = DMTFormattedEnrollmentOrganizationNameFrom(nameCopy);

  v10 = DMTLocalizedOrganizationMarketingNameForOrganizationType(type);
  v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@%@" error:0, v9, v10];

  return v11;
}

+ (id)statusMessageForEnrollmentState:(int64_t)state networkName:(id)name
{
  nameCopy = name;
  v6 = nameCopy;
  v7 = &stru_285B54748;
  if (state <= 6)
  {
    switch(state)
    {
      case 4:
        v8 = DMTBundle();
        v9 = v8;
        v10 = @"Pairing…";
        break;
      case 5:
        v8 = DMTBundle();
        v9 = v8;
        v10 = @"Receiving organization details…";
        break;
      case 6:
        v8 = DMTBundle();
        v9 = v8;
        v10 = @"Starting enrollment…";
        break;
      default:
        goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (state != 7)
  {
    if (state == 8)
    {
      v8 = DMTBundle();
      v9 = v8;
      v10 = @"Activating…";
    }

    else
    {
      if (state != 9)
      {
        goto LABEL_17;
      }

      v8 = DMTBundle();
      v9 = v8;
      v10 = @"Adding…";
    }

    goto LABEL_15;
  }

  v11 = [nameCopy length];
  v8 = DMTBundle();
  v9 = v8;
  if (!v11)
  {
    v10 = @"Connecting to network…";
LABEL_15:
    v7 = [v8 localizedStringForKey:v10 value:&stru_285B54748 table:0];
    goto LABEL_16;
  }

  v12 = [v8 localizedStringForKey:@"Connecting to network “%@”…" value:&stru_285B54748 table:0];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v12, v6];
  v9 = v12;
LABEL_16:

LABEL_17:

  return v7;
}

@end