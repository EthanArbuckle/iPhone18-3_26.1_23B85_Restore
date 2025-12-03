@interface WDClinicalSettingsViewAnalyticsDataCell
- (WDClinicalSettingsViewAnalyticsDataCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation WDClinicalSettingsViewAnalyticsDataCell

- (WDClinicalSettingsViewAnalyticsDataCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDClinicalSettingsViewAnalyticsDataCell;
  v4 = [(WDClinicalSettingsViewAnalyticsDataCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDClinicalSettingsViewAnalyticsDataCell *)v4 setAccessoryType:1];
  }

  return v5;
}

@end