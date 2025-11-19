@interface DCMapsURLGenerator
+ (id)URLWithMapsLink:(id)a3;
- (DCMapsURLGenerator)initWithMapsLink:(id)a3;
- (NSMutableDictionary)queryDictionary;
- (id)URL;
- (id)directionsMode;
- (id)mapType;
- (id)query;
- (void)populateQueryDictionary;
- (void)setString:(id)a3 forQueryKey:(id)a4;
@end

@implementation DCMapsURLGenerator

- (void)setString:(id)a3 forQueryKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 length])
  {
    v7 = [(DCMapsURLGenerator *)self queryDictionary];
    [v7 setValue:v8 forKey:v6];
  }
}

- (id)mapType
{
  v3 = [(DCMapsURLGenerator *)self mapsLink];
  v4 = [v3 showsStreetView];

  if (v4)
  {
    v5 = DCStandardMapsLinkMapTypeHybrid;
LABEL_5:
    v8 = *v5;
    goto LABEL_7;
  }

  v6 = [(DCMapsURLGenerator *)self mapsLink];
  v7 = [v6 mapType];

  if ((v7 - 1) <= 2)
  {
    v5 = off_278345308[v7 - 1];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)directionsMode
{
  v2 = [(DCMapsURLGenerator *)self mapsLink];
  v3 = [v2 directionsMode];

  if ((v3 - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_2783452E0[v3 - 1];
  }

  return v4;
}

- (void)populateQueryDictionary
{
  v12 = [(DCMapsURLGenerator *)self mapsLink];
  v3 = [v12 searchQuery];
  [(DCMapsURLGenerator *)self setString:v3 forQueryKey:@"q"];

  v4 = [v12 searchNearQuery];
  [(DCMapsURLGenerator *)self setString:v4 forQueryKey:@"near"];

  v5 = [v12 searchLocation];
  [(DCMapsURLGenerator *)self setString:v5 forQueryKey:@"sll"];

  v6 = [v12 startAddress];
  [(DCMapsURLGenerator *)self setString:v6 forQueryKey:@"saddr"];

  v7 = [v12 destinationAddress];
  [(DCMapsURLGenerator *)self setString:v7 forQueryKey:@"daddr"];

  v8 = [(DCMapsURLGenerator *)self directionsMode];
  [(DCMapsURLGenerator *)self setString:v8 forQueryKey:@"dirflg"];

  v9 = [v12 centerLocation];
  [(DCMapsURLGenerator *)self setString:v9 forQueryKey:@"ll"];

  v10 = [(DCMapsURLGenerator *)self mapType];
  [(DCMapsURLGenerator *)self setString:v10 forQueryKey:@"t"];

  if ([v12 zoomLevel])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v12, "zoomLevel")];
    [(DCMapsURLGenerator *)self setString:v11 forQueryKey:@"z"];
  }

  if ([v12 showsTraffic])
  {
    [(DCMapsURLGenerator *)self setString:@"t" forQueryKey:@"layer"];
  }
}

- (NSMutableDictionary)queryDictionary
{
  queryDictionary = self->_queryDictionary;
  if (!queryDictionary)
  {
    v4 = objc_opt_new();
    v5 = self->_queryDictionary;
    self->_queryDictionary = v4;

    [(DCMapsURLGenerator *)self populateQueryDictionary];
    queryDictionary = self->_queryDictionary;
  }

  return queryDictionary;
}

- (id)URL
{
  v3 = [(DCMapsURLGenerator *)self queryDictionary];
  v4 = [v3 count];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = DCMapsURLGenerator;
    v5 = [(DCURLGenerator *)&v7 URL];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)query
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(DCMapsURLGenerator *)self queryDictionary];
  v4 = [v2 dc_queryStringWithQueryDictionary:v3];

  return v4;
}

- (DCMapsURLGenerator)initWithMapsLink:(id)a3
{
  v5 = a3;
  v6 = [(DCMapsURLGenerator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapsLink, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)URLWithMapsLink:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMapsLink:v4];

  v6 = [v5 URL];

  return v6;
}

@end