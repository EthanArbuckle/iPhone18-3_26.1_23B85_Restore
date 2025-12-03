@interface WDClinicalSettingsViewAnalyticsDataViewControllerFileCell
- (WDClinicalSettingsViewAnalyticsDataViewControllerFileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)description;
- (void)setFileURL:(id)l;
@end

@implementation WDClinicalSettingsViewAnalyticsDataViewControllerFileCell

- (WDClinicalSettingsViewAnalyticsDataViewControllerFileCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDClinicalSettingsViewAnalyticsDataViewControllerFileCell;
  v4 = [(WDClinicalSettingsViewAnalyticsDataViewControllerFileCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDClinicalSettingsViewAnalyticsDataViewControllerFileCell *)v4 setAccessoryType:1];
  }

  return v5;
}

- (void)setFileURL:(id)l
{
  objc_storeStrong(&self->_fileURL, l);
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];

  textLabel = [(WDClinicalSettingsViewAnalyticsDataViewControllerFileCell *)self textLabel];
  [textLabel setText:lastPathComponent];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  fileURL = [(WDClinicalSettingsViewAnalyticsDataViewControllerFileCell *)self fileURL];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, fileURL];

  return v7;
}

@end