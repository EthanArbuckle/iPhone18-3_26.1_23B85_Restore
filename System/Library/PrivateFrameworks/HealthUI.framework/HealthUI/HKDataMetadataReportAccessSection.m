@interface HKDataMetadataReportAccessSection
- (HKDataMetadataReportAccessSection)initWithSample:(id)a3 healthStore:(id)a4 delegate:(id)a5;
- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4;
@end

@implementation HKDataMetadataReportAccessSection

- (HKDataMetadataReportAccessSection)initWithSample:(id)a3 healthStore:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HKDataMetadataReportAccessSection;
  v11 = [(HKDataMetadataReportAccessSection *)&v17 init];
  if (!v11)
  {
LABEL_6:
    v13 = v11;
    goto LABEL_7;
  }

  v12 = [v8 hasAssociatedReport];
  v13 = 0;
  if (v9 && v10 && v12)
  {
    v14 = [v10 accessViewControllerForSample:v8 healthStore:v9];
    accessViewController = v11->_accessViewController;
    v11->_accessViewController = v14;

    if (!v11->_accessViewController)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v13;
}

- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4
{
  v4 = [a4 dequeueReusableCellWithIdentifier:@"access"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"access"];
  }

  [v4 setAccessoryType:1];
  v5 = [v4 textLabel];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"SHARE_DATA_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v5 setText:v7];

  v8 = [v4 textLabel];
  v9 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v8 setFont:v9];

  return v4;
}

@end