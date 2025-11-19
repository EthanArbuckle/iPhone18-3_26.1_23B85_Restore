@interface DMTEnrollmentStatusViewModel
+ (id)detailTextWithOrganizationName:(id)a3 organizationType:(int64_t)a4 localizedDeviceClass:(id)a5;
+ (id)statusMessageForEnrollmentState:(int64_t)a3 networkName:(id)a4;
- (DMTEnrollmentStatusViewModel)initWithCoder:(id)a3;
- (DMTEnrollmentStatusViewModel)initWithOrganizationName:(id)a3 organizationType:(int64_t)a4 localizedDeviceClass:(id)a5 enrollmentState:(int64_t)a6 networkName:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMTEnrollmentStatusViewModel

- (DMTEnrollmentStatusViewModel)initWithOrganizationName:(id)a3 organizationType:(int64_t)a4 localizedDeviceClass:(id)a5 enrollmentState:(int64_t)a6 networkName:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = DMTEnrollmentStatusViewModel;
  v15 = [(DMTEnrollmentStatusViewModel *)&v23 init];
  if (v15)
  {
    v16 = [objc_opt_class() titleWithLocalizedDeviceClass:v13];
    title = v15->_title;
    v15->_title = v16;

    v18 = [objc_opt_class() detailTextWithOrganizationName:v12 organizationType:a4 localizedDeviceClass:v13];
    detailText = v15->_detailText;
    v15->_detailText = v18;

    v20 = [objc_opt_class() statusMessageForEnrollmentState:a6 networkName:v14];
    statusMessage = v15->_statusMessage;
    v15->_statusMessage = v20;
  }

  return v15;
}

- (DMTEnrollmentStatusViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DMTEnrollmentStatusViewModel;
  v5 = [(DMTEnrollmentStatusViewModel *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    objc_storeStrong(&v5->_title, v7);
    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"detailText"];
    detailText = v5->_detailText;
    v5->_detailText = v10;

    objc_storeStrong(&v5->_detailText, v10);
    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"statusMessage"];
    statusMessage = v5->_statusMessage;
    v5->_statusMessage = v13;

    objc_storeStrong(&v5->_statusMessage, v13);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMTEnrollmentStatusViewModel *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(DMTEnrollmentStatusViewModel *)self detailText];
  [v4 encodeObject:v6 forKey:@"detailText"];

  v7 = [(DMTEnrollmentStatusViewModel *)self statusMessage];
  [v4 encodeObject:v7 forKey:@"statusMessage"];
}

+ (id)detailTextWithOrganizationName:(id)a3 organizationType:(int64_t)a4 localizedDeviceClass:(id)a5
{
  v7 = a3;
  v8 = DMTDetailTextAddingDeviceBodyFor(a5);
  v9 = DMTFormattedEnrollmentOrganizationNameFrom(v7);

  v10 = DMTLocalizedOrganizationMarketingNameForOrganizationType(a4);
  v11 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@%@" error:0, v9, v10];

  return v11;
}

+ (id)statusMessageForEnrollmentState:(int64_t)a3 networkName:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = &stru_285B54748;
  if (a3 <= 6)
  {
    switch(a3)
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

  if (a3 != 7)
  {
    if (a3 == 8)
    {
      v8 = DMTBundle();
      v9 = v8;
      v10 = @"Activating…";
    }

    else
    {
      if (a3 != 9)
      {
        goto LABEL_17;
      }

      v8 = DMTBundle();
      v9 = v8;
      v10 = @"Adding…";
    }

    goto LABEL_15;
  }

  v11 = [v5 length];
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