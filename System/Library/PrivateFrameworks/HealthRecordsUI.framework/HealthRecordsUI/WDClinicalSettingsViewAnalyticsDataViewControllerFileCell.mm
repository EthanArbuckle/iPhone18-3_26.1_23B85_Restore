@interface WDClinicalSettingsViewAnalyticsDataViewControllerFileCell
- (WDClinicalSettingsViewAnalyticsDataViewControllerFileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)description;
- (void)setFileURL:(id)a3;
@end

@implementation WDClinicalSettingsViewAnalyticsDataViewControllerFileCell

- (WDClinicalSettingsViewAnalyticsDataViewControllerFileCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDClinicalSettingsViewAnalyticsDataViewControllerFileCell;
  v4 = [(WDClinicalSettingsViewAnalyticsDataViewControllerFileCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(WDClinicalSettingsViewAnalyticsDataViewControllerFileCell *)v4 setAccessoryType:1];
  }

  return v5;
}

- (void)setFileURL:(id)a3
{
  objc_storeStrong(&self->_fileURL, a3);
  v5 = a3;
  v7 = [v5 lastPathComponent];

  v6 = [(WDClinicalSettingsViewAnalyticsDataViewControllerFileCell *)self textLabel];
  [v6 setText:v7];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WDClinicalSettingsViewAnalyticsDataViewControllerFileCell *)self fileURL];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v6];

  return v7;
}

@end