@interface HKDataMetadataReportAccessSection
- (HKDataMetadataReportAccessSection)initWithSample:(id)sample healthStore:(id)store delegate:(id)delegate;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
@end

@implementation HKDataMetadataReportAccessSection

- (HKDataMetadataReportAccessSection)initWithSample:(id)sample healthStore:(id)store delegate:(id)delegate
{
  sampleCopy = sample;
  storeCopy = store;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = HKDataMetadataReportAccessSection;
  v11 = [(HKDataMetadataReportAccessSection *)&v17 init];
  if (!v11)
  {
LABEL_6:
    v13 = v11;
    goto LABEL_7;
  }

  hasAssociatedReport = [sampleCopy hasAssociatedReport];
  v13 = 0;
  if (storeCopy && delegateCopy && hasAssociatedReport)
  {
    v14 = [delegateCopy accessViewControllerForSample:sampleCopy healthStore:storeCopy];
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

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"access"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"access"];
  }

  [v4 setAccessoryType:1];
  textLabel = [v4 textLabel];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"SHARE_DATA_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [textLabel setText:v7];

  textLabel2 = [v4 textLabel];
  v9 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [textLabel2 setFont:v9];

  return v4;
}

@end