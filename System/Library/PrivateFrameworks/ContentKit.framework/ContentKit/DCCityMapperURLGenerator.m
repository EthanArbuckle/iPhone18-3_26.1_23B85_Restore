@interface DCCityMapperURLGenerator
+ (void)generateURLWithMapsLink:(id)a3 completionHandler:(id)a4;
- (void)populateQueryDictionary;
@end

@implementation DCCityMapperURLGenerator

- (void)populateQueryDictionary
{
  v19 = [(DCMapsURLGenerator *)self queryDictionary];
  v3 = [(DCMapsURLGenerator *)self mapsLink];
  v4 = [(DCCityMapperURLGenerator *)self startCoordinate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 centerLocation];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v3 searchLocation];
    }

    v6 = v9;
  }

  if ([v6 length])
  {
    [v19 setObject:v6 forKey:@"startcoord"];
  }

  v10 = [(DCCityMapperURLGenerator *)self endCoordinate];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(DCCityMapperURLGenerator *)self endCoordinate];
    [v19 setObject:v12 forKey:@"endcoord"];
  }

  v13 = [v3 startAddress];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [v3 startAddress];
    [v19 setObject:v15 forKey:@"startaddress"];
  }

  v16 = [v3 destinationAddress];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [v3 destinationAddress];
    [v19 setObject:v18 forKey:@"endaddress"];
  }
}

+ (void)generateURLWithMapsLink:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__DCCityMapperURLGenerator_generateURLWithMapsLink_completionHandler___block_invoke;
    v7[3] = &unk_278346928;
    v8 = v5;
    v9 = v6;
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