@interface DCBaiduMapsURLGenerator
- (id)directionsMode;
- (void)populateQueryDictionary;
@end

@implementation DCBaiduMapsURLGenerator

- (id)directionsMode
{
  v2 = [(DCMapsURLGenerator *)self mapsLink];
  v3 = [v2 directionsMode];

  if ((v3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_27834A0D8 + v3 - 1);
  }
}

- (void)populateQueryDictionary
{
  v9 = [(DCMapsURLGenerator *)self mapsLink];
  v3 = [(DCBaiduMapsURLGenerator *)self directionsMode];
  [(DCMapsURLGenerator *)self setString:v3 forQueryKey:@"mode"];

  v4 = [v9 destinationAddress];
  if (v4 || ([v9 centerLocation], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
LABEL_4:
    [(DCMapsURLGenerator *)self setString:v5 forQueryKey:@"destination"];

    goto LABEL_5;
  }

  v8 = [v9 searchQuery];
  if (v8)
  {
    v5 = v8;

    goto LABEL_4;
  }

  v5 = [v9 searchLocation];
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
  v6 = [v9 startAddress];

  if (v6)
  {
    v7 = [v9 startAddress];
    [(DCMapsURLGenerator *)self setString:v7 forQueryKey:@"origin"];
  }
}

@end