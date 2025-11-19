@interface MapsSuggestionsTrip
- (BOOL)isInternational;
- (MapsSuggestionsTrip)initWithPlacemark:(id)a3 startDate:(id)a4 endDate:(id)a5;
@end

@implementation MapsSuggestionsTrip

- (MapsSuggestionsTrip)initWithPlacemark:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MapsSuggestionsTrip;
  v12 = [(MapsSuggestionsTrip *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_placemark, a3);
    objc_storeStrong(&v13->_startDate, a4);
    objc_storeStrong(&v13->_endDate, a5);
  }

  return v13;
}

- (BOOL)isInternational
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 objectForKey:*MEMORY[0x1E695D978]];

  v5 = [(CLPlacemark *)self->_placemark ISOcountryCode];
  LOBYTE(v3) = [v4 isEqualToString:v5];

  return v3 ^ 1;
}

@end