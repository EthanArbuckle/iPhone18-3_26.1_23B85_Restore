@interface WeatherSettingsManager
+ (id)sharedManager;
- (id)initSharedManager;
- (void)_postWeatherConditionsSettingsUpdatedNotification;
- (void)setShouldShowAirQualityConditions:(BOOL)a3;
- (void)setShouldShowWeatherConditions:(BOOL)a3;
@end

@implementation WeatherSettingsManager

+ (id)sharedManager
{
  if (qword_1000855B0 != -1)
  {
    sub_10004CD74();
  }

  v3 = qword_1000855A8;

  return v3;
}

- (id)initSharedManager
{
  v6.receiver = self;
  v6.super_class = WeatherSettingsManager;
  v2 = [(WeatherSettingsManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"countryConfigurationDidChange:" name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"countryConfigurationDidChange:" name:GEOCountryConfigurationProvidersDidChangeNotification object:0];
  }

  return v2;
}

- (void)setShouldShowAirQualityConditions:(BOOL)a3
{
  GEOConfigSetBOOL();

  [(WeatherSettingsManager *)self _postWeatherConditionsSettingsUpdatedNotification];
}

- (void)setShouldShowWeatherConditions:(BOOL)a3
{
  GEOConfigSetBOOL();

  [(WeatherSettingsManager *)self _postWeatherConditionsSettingsUpdatedNotification];
}

- (void)_postWeatherConditionsSettingsUpdatedNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"WeatherConditionsNeedsUpdatedNotification" object:self];
}

@end