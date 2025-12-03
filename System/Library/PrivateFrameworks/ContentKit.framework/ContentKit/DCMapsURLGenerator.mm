@interface DCMapsURLGenerator
+ (id)URLWithMapsLink:(id)link;
- (DCMapsURLGenerator)initWithMapsLink:(id)link;
- (NSMutableDictionary)queryDictionary;
- (id)URL;
- (id)directionsMode;
- (id)mapType;
- (id)query;
- (void)populateQueryDictionary;
- (void)setString:(id)string forQueryKey:(id)key;
@end

@implementation DCMapsURLGenerator

- (void)setString:(id)string forQueryKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if ([stringCopy length])
  {
    queryDictionary = [(DCMapsURLGenerator *)self queryDictionary];
    [queryDictionary setValue:stringCopy forKey:keyCopy];
  }
}

- (id)mapType
{
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  showsStreetView = [mapsLink showsStreetView];

  if (showsStreetView)
  {
    v5 = DCStandardMapsLinkMapTypeHybrid;
LABEL_5:
    v8 = *v5;
    goto LABEL_7;
  }

  mapsLink2 = [(DCMapsURLGenerator *)self mapsLink];
  mapType = [mapsLink2 mapType];

  if ((mapType - 1) <= 2)
  {
    v5 = off_278345308[mapType - 1];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)directionsMode
{
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  directionsMode = [mapsLink directionsMode];

  if ((directionsMode - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_2783452E0[directionsMode - 1];
  }

  return v4;
}

- (void)populateQueryDictionary
{
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  searchQuery = [mapsLink searchQuery];
  [(DCMapsURLGenerator *)self setString:searchQuery forQueryKey:@"q"];

  searchNearQuery = [mapsLink searchNearQuery];
  [(DCMapsURLGenerator *)self setString:searchNearQuery forQueryKey:@"near"];

  searchLocation = [mapsLink searchLocation];
  [(DCMapsURLGenerator *)self setString:searchLocation forQueryKey:@"sll"];

  startAddress = [mapsLink startAddress];
  [(DCMapsURLGenerator *)self setString:startAddress forQueryKey:@"saddr"];

  destinationAddress = [mapsLink destinationAddress];
  [(DCMapsURLGenerator *)self setString:destinationAddress forQueryKey:@"daddr"];

  directionsMode = [(DCMapsURLGenerator *)self directionsMode];
  [(DCMapsURLGenerator *)self setString:directionsMode forQueryKey:@"dirflg"];

  centerLocation = [mapsLink centerLocation];
  [(DCMapsURLGenerator *)self setString:centerLocation forQueryKey:@"ll"];

  mapType = [(DCMapsURLGenerator *)self mapType];
  [(DCMapsURLGenerator *)self setString:mapType forQueryKey:@"t"];

  if ([mapsLink zoomLevel])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(mapsLink, "zoomLevel")];
    [(DCMapsURLGenerator *)self setString:v11 forQueryKey:@"z"];
  }

  if ([mapsLink showsTraffic])
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
  queryDictionary = [(DCMapsURLGenerator *)self queryDictionary];
  v4 = [queryDictionary count];

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
  queryDictionary = [(DCMapsURLGenerator *)self queryDictionary];
  v4 = [v2 dc_queryStringWithQueryDictionary:queryDictionary];

  return v4;
}

- (DCMapsURLGenerator)initWithMapsLink:(id)link
{
  linkCopy = link;
  v6 = [(DCMapsURLGenerator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapsLink, link);
    v8 = v7;
  }

  return v7;
}

+ (id)URLWithMapsLink:(id)link
{
  linkCopy = link;
  v5 = [[self alloc] initWithMapsLink:linkCopy];

  v6 = [v5 URL];

  return v6;
}

@end