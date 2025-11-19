@interface DCTransitURLGenerator
- (void)populateQueryDictionary;
@end

@implementation DCTransitURLGenerator

- (void)populateQueryDictionary
{
  v7 = [(DCMapsURLGenerator *)self queryDictionary];
  v3 = [(DCMapsURLGenerator *)self mapsLink];
  v4 = [v3 destinationAddress];
  if (v4 || ([v3 centerLocation], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
LABEL_4:
    [v7 setObject:v5 forKey:@"to"];

    goto LABEL_5;
  }

  v6 = [v3 searchQuery];
  if (v6)
  {
    v5 = v6;

    goto LABEL_4;
  }

  v5 = [v3 searchLocation];
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
}

@end