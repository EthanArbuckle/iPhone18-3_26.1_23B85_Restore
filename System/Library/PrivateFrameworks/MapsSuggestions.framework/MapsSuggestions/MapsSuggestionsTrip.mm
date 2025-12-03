@interface MapsSuggestionsTrip
- (BOOL)isInternational;
- (MapsSuggestionsTrip)initWithPlacemark:(id)placemark startDate:(id)date endDate:(id)endDate;
@end

@implementation MapsSuggestionsTrip

- (MapsSuggestionsTrip)initWithPlacemark:(id)placemark startDate:(id)date endDate:(id)endDate
{
  placemarkCopy = placemark;
  dateCopy = date;
  endDateCopy = endDate;
  v15.receiver = self;
  v15.super_class = MapsSuggestionsTrip;
  v12 = [(MapsSuggestionsTrip *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_placemark, placemark);
    objc_storeStrong(&v13->_startDate, date);
    objc_storeStrong(&v13->_endDate, endDate);
  }

  return v13;
}

- (BOOL)isInternational
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

  iSOcountryCode = [(CLPlacemark *)self->_placemark ISOcountryCode];
  LOBYTE(currentLocale) = [v4 isEqualToString:iSOcountryCode];

  return currentLocale ^ 1;
}

@end