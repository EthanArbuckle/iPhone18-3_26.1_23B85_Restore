@interface DCCityMapperURLGenerator
+ (void)generateURLWithMapsLink:(id)link completionHandler:(id)handler;
- (void)populateQueryDictionary;
@end

@implementation DCCityMapperURLGenerator

- (void)populateQueryDictionary
{
  queryDictionary = [(DCMapsURLGenerator *)self queryDictionary];
  mapsLink = [(DCMapsURLGenerator *)self mapsLink];
  startCoordinate = [(DCCityMapperURLGenerator *)self startCoordinate];
  v5 = startCoordinate;
  if (startCoordinate)
  {
    v6 = startCoordinate;
  }

  else
  {
    centerLocation = [mapsLink centerLocation];
    v8 = centerLocation;
    if (centerLocation)
    {
      searchLocation = centerLocation;
    }

    else
    {
      searchLocation = [mapsLink searchLocation];
    }

    v6 = searchLocation;
  }

  if ([v6 length])
  {
    [queryDictionary setObject:v6 forKey:@"startcoord"];
  }

  endCoordinate = [(DCCityMapperURLGenerator *)self endCoordinate];
  v11 = [endCoordinate length];

  if (v11)
  {
    endCoordinate2 = [(DCCityMapperURLGenerator *)self endCoordinate];
    [queryDictionary setObject:endCoordinate2 forKey:@"endcoord"];
  }

  startAddress = [mapsLink startAddress];
  v14 = [startAddress length];

  if (v14)
  {
    startAddress2 = [mapsLink startAddress];
    [queryDictionary setObject:startAddress2 forKey:@"startaddress"];
  }

  destinationAddress = [mapsLink destinationAddress];
  v17 = [destinationAddress length];

  if (v17)
  {
    destinationAddress2 = [mapsLink destinationAddress];
    [queryDictionary setObject:destinationAddress2 forKey:@"endaddress"];
  }
}

+ (void)generateURLWithMapsLink:(id)link completionHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__DCCityMapperURLGenerator_generateURLWithMapsLink_completionHandler___block_invoke;
    v7[3] = &unk_278346928;
    v8 = linkCopy;
    v9 = handlerCopy;
    [v8 geocodeDirectionsEndpointsWithCompletionHandler:v7];
  }
}

void __70__DCCityMapperURLGenerator_generateURLWithMapsLink_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  v6 = [(DCMapsURLGenerator *)[DCCityMapperURLGenerator alloc] initWithMapsLink:*(a1 + 32)];
  if (v23)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [v23 location];
    [v8 coordinate];
    v10 = v9;
    v11 = [v23 location];
    [v11 coordinate];
    v13 = [v7 stringWithFormat:@"%f, %f", v10, v12];
    [(DCCityMapperURLGenerator *)v6 setStartCoordinate:v13];
  }

  if (v5)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [v5 location];
    [v15 coordinate];
    v17 = v16;
    v18 = [v5 location];
    [v18 coordinate];
    v20 = [v14 stringWithFormat:@"%f, %f", v17, v19];
    [(DCCityMapperURLGenerator *)v6 setEndCoordinate:v20];
  }

  v21 = *(a1 + 40);
  v22 = [(DCMapsURLGenerator *)v6 URL];
  (*(v21 + 16))(v21, v22, 0);
}

@end