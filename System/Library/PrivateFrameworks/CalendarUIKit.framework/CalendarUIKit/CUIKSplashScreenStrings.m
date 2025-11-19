@interface CUIKSplashScreenStrings
+ (id)configurationText;
+ (id)continueButtonText;
+ (id)monthViewScaleText;
+ (id)monthViewScaleTitle;
+ (id)reminderIntegrationText;
+ (id)reminderIntegrationTitle;
+ (id)suggestedEventsFeatureText;
+ (id)suggestedEventsTitleText;
+ (id)timeToLeaveAndAutomaticGeocodingFeatureText;
+ (id)timeToLeaveAndAutomaticGeocodingTitleText;
+ (id)title;
@end

@implementation CUIKSplashScreenStrings

+ (id)title
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"What’s New in Calendar" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)continueButtonText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Continue" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)configurationText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"You can configure Calendar features in Settings." value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)reminderIntegrationTitle
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Scheduled Reminders" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)reminderIntegrationText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"View and create scheduled reminders in calendar. View your day with all the things you need to get done." value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)monthViewScaleTitle
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Customizable Month View" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)monthViewScaleText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Pinch to customize your view on month view to make it easier to see your month at a glance." value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)suggestedEventsTitleText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Suggested Events and Locations" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)suggestedEventsFeatureText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Add events like hotel bookings found in Mail value:Messages table:{and Safari. Calendar will also suggest locations based on your past events.", &stru_1F4AA8958, 0}];

  return v3;
}

+ (id)timeToLeaveAndAutomaticGeocodingTitleText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Location" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)timeToLeaveAndAutomaticGeocodingFeatureText
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Calendar uses your location to suggest nearby locations and update travel time accuracy." value:&stru_1F4AA8958 table:0];

  return v3;
}

@end