@interface SGFlightData
+ (id)airportNameNoiseKeywords;
+ (id)iataCodeToCityDatabaseDict;
+ (id)sanitizeAirportName:(id)a3;
+ (id)sharedInstance;
- (SGFlightData)init;
- (id)airportIataCodes;
- (id)airportIataCodesForDataOffset:(id)a3;
- (id)airportsServicedByCarrier:(id)a3 flightNumber:(unsigned __int16)a4 withDataOffset:(id)a5 andFileHandle:(id)a6;
- (id)bestLocalizedNameForAirport:(id)a3;
- (id)carrierIataCodeForCarrierName:(id)a3;
- (id)carrierIataCodes;
- (id)cityForIataCode:(id)a3;
- (id)fieldForIataCode:(id)a3 field:(id)a4;
- (id)latitudeAndLongitudeForAirport:(id)a3;
- (id)latitudeAndLongitudeForAirport:(id)a3 withDataOffset:(id)a4 andFileHandle:(id)a5;
- (id)nameForCarrier:(id)a3;
- (id)namesForAirport:(id)a3;
- (id)namesForAirport:(id)a3 withDataOffset:(id)a4 andFileHandle:(id)a5;
- (id)synonymAirportNamesForAirportCode:(id)a3;
- (id)timezoneOlsonCodeForAirport:(id)a3;
- (id)timezoneOlsonCodeForAirport:(id)a3 withDataOffset:(id)a4 andFileHandle:(id)a5;
- (void)dealloc;
- (void)updateAirports;
- (void)updateCarriers;
- (void)updateFlights;
@end

@implementation SGFlightData

- (id)synonymAirportNamesForAirportCode:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SGFlightData *)self namesForAirport:a3];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) second];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = [v4 copy];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)airportsServicedByCarrier:(id)a3 flightNumber:(unsigned __int16)a4 withDataOffset:(id)a5 andFileHandle:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v10 seekLocationForKey:{objc_msgSend(v9, "UTF8String")}];
  if (v12 && ([v11 seekToFileOffset:v12], v13 = objc_msgSend(v10, "payloadCountForKey:", objc_msgSend(v9, "UTF8String")), v14 = v13 - 1, v13 >= 1))
  {
    v15 = 0;
    while (1)
    {
      v16 = bswap32(*[v11 dataOfLength:2]);
      v17 = v11;
      v18 = v11;
      v19 = *[v18 dataOfLength:2];
      v20 = [v18 dataOfLength:1];

      v15 += HIWORD(v16);
      if (v15 == v8)
      {
        break;
      }

      if (v15 > v8 || v14-- == 0)
      {
        goto LABEL_10;
      }
    }

    [v18 seekToFileOffset:(*v20 | (__rev16(v19) << 8)) + v10[4] + v10[5]];
    v24 = *[v18 dataOfLength:1];
    v22 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v24];
    if (v24)
    {
      v25 = 0;
      do
      {
        v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v18 length:"dataOfLength:" encoding:{3), 3, 1}];
        [v22 addObject:v26];

        ++v25;
      }

      while (v25 < v24);
    }
  }

  else
  {
LABEL_10:
    v22 = objc_opt_new();
  }

  return v22;
}

- (id)nameForCarrier:(id)a3
{
  v4 = a3;
  v5 = [(_PASLazyPurgeableResult *)self->_carrierUpdateNames result];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(_PASLazyPurgeableResult *)self->_carrierNames result];
    v8 = [v9 objectForKeyedSubscript:v4];
  }

  return v8;
}

- (id)carrierIataCodeForCarrierName:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 lowercaseString];
  objc_autoreleasePoolPop(v5);
  v7 = [(_PASLazyPurgeableResult *)self->_carrierUpdateCodesByName result];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(_PASLazyPurgeableResult *)self->_carrierCodesByName result];
    v10 = [v11 objectForKeyedSubscript:v6];
  }

  return v10;
}

- (id)carrierIataCodes
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(_PASLazyPurgeableResult *)self->_carrierUpdateNames result];
  v5 = [v4 allKeys];
  v6 = [(_PASLazyPurgeableResult *)self->_carrierNames result];
  v7 = [v6 allKeys];
  v8 = [v5 arrayByAddingObjectsFromArray:v7];

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (id)fieldForIataCode:(id)a3 field:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_opt_class() iataCodeToCityDatabaseDict];
  v9 = [v8 objectForKeyedSubscript:v5];
  v10 = [v9 objectForKeyedSubscript:v6];

  objc_autoreleasePoolPop(v7);

  return v10;
}

- (id)cityForIataCode:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_opt_class() iataCodeToCityDatabaseDict];
  v6 = [v5 objectForKeyedSubscript:v3];
  v7 = [v6 objectForKeyedSubscript:@"City"];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_284703F00;
  }

  objc_autoreleasePoolPop(v4);

  return v8;
}

- (id)latitudeAndLongitudeForAirport:(id)a3
{
  v4 = a3;
  v5 = [(_PASLazyPurgeableResult *)self->_airportUpdateDataOffsets result];
  v6 = [(SGFlightData *)self latitudeAndLongitudeForAirport:v4 withDataOffset:v5 andFileHandle:self->_airportsUpdateFh];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(_PASLazyPurgeableResult *)self->_airportDataOffsets result];
    v7 = [(SGFlightData *)self latitudeAndLongitudeForAirport:v4 withDataOffset:v8 andFileHandle:self->_airportsFh];
  }

  return v7;
}

- (id)latitudeAndLongitudeForAirport:(id)a3 withDataOffset:(id)a4 andFileHandle:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 seekLocationForKey:{objc_msgSend(a3, "UTF8String")}];

  if (v10)
  {
    [v7 seekToFileOffset:v10];
    v11 = readLengthPrefixedString(v7);
    v12 = readLengthPrefixedString(v7);
    v13 = bswap32(*[v7 dataOfLength:4]) / 10000000.0;
    v14 = bswap32(*[v7 dataOfLength:4]) / 10000000.0;
    if (v13 == 0.0 && v14 == 0.0)
    {
      v10 = 0;
    }

    else
    {
      v15 = MEMORY[0x277D42648];
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      v10 = [v15 tupleWithFirst:v16 second:v17];
    }
  }

  return v10;
}

- (id)timezoneOlsonCodeForAirport:(id)a3
{
  v4 = a3;
  v5 = [(_PASLazyPurgeableResult *)self->_airportUpdateDataOffsets result];
  v6 = [(SGFlightData *)self timezoneOlsonCodeForAirport:v4 withDataOffset:v5 andFileHandle:self->_airportsUpdateFh];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(_PASLazyPurgeableResult *)self->_airportDataOffsets result];
    v7 = [(SGFlightData *)self timezoneOlsonCodeForAirport:v4 withDataOffset:v8 andFileHandle:self->_airportsFh];
  }

  return v7;
}

- (id)timezoneOlsonCodeForAirport:(id)a3 withDataOffset:(id)a4 andFileHandle:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 seekLocationForKey:{objc_msgSend(a3, "UTF8String")}];

  if (v10)
  {
    [v7 seekToFileOffset:v10];
    v11 = readLengthPrefixedString(v7);
    v10 = readLengthPrefixedString(v7);
  }

  return v10;
}

- (id)bestLocalizedNameForAirport:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v4 = [(SGFlightData *)self namesForAirport:?];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [MEMORY[0x277CBEAF8] preferredLanguages];
  v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  v5 = 0;
  if (!v31)
  {
    goto LABEL_25;
  }

  v30 = *v40;
  v28 = v4;
  v29 = *MEMORY[0x277CBE6C8];
  do
  {
    v6 = 0;
    do
    {
      if (*v40 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v7 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:*(*(&v39 + 1) + 8 * v6)];
      v8 = [v7 objectForKeyedSubscript:v29];

      if (v5)
      {

        goto LABEL_25;
      }

      v32 = v6;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = v4;
      v9 = [v34 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (!v9)
      {
        v5 = 0;
        goto LABEL_21;
      }

      v10 = v9;
      v5 = 0;
      v11 = *v36;
      do
      {
        v12 = 0;
        v33 = v10;
        do
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v34);
          }

          v13 = *(*(&v35 + 1) + 8 * v12);
          v14 = [v13 second];
          v15 = [v13 first];
          if (![v8 hasPrefix:v15])
          {
            goto LABEL_15;
          }

          v16 = [v14 length];
          [v5 second];
          v18 = v17 = v5;
          v19 = [v18 length];

          if (v16 > v19)
          {
            v5 = v13;
            v15 = v17;
            v10 = v33;
LABEL_15:

            goto LABEL_17;
          }

          v5 = v17;
          v10 = v33;
LABEL_17:

          ++v12;
        }

        while (v10 != v12);
        v10 = [v34 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v10);
LABEL_21:

      v6 = v32 + 1;
      v4 = v28;
    }

    while (v32 + 1 != v31);
    v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  }

  while (v31);
LABEL_25:

  v20 = [v5 second];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v23 = [v4 firstObject];
    v22 = [v23 second];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)namesForAirport:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_PASLazyPurgeableResult *)self->_airportUpdateDataOffsets result];
  v7 = [(SGFlightData *)self namesForAirport:v4 withDataOffset:v6 andFileHandle:self->_airportsUpdateFh];
  v8 = [(_PASLazyPurgeableResult *)self->_airportDataOffsets result];
  v9 = [(SGFlightData *)self namesForAirport:v4 withDataOffset:v8 andFileHandle:self->_airportsFh];
  v10 = [v7 arrayByAddingObjectsFromArray:v9];

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)namesForAirport:(id)a3 withDataOffset:(id)a4 andFileHandle:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 seekLocationForKey:{objc_msgSend(v7, "UTF8String")}];
  if (v10)
  {
    [v9 seekToFileOffset:v10];
    v11 = objc_autoreleasePoolPush();
    v28 = v9;
    v12 = readLengthPrefixedString(v9);
    v13 = [v12 componentsSeparatedByString:@"|"];

    objc_autoreleasePoolPop(v11);
    v14 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          if ([v20 length] >= 3)
          {
            v21 = MEMORY[0x277D42648];
            v22 = [v20 substringToIndex:2];
            v23 = [v20 substringFromIndex:2];
            v24 = [v21 tupleWithFirst:v22 second:v23];
            [v14 addObject:v24];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    v25 = [v14 copy];
    v9 = v28;
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)airportIataCodes
{
  v3 = [(_PASLazyPurgeableResult *)self->_airportDataOffsets result];
  v4 = [(_PASLazyPurgeableResult *)self->_airportUpdateDataOffsets result];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4[4] + v3[4]];
  v6 = [(SGFlightData *)self airportIataCodesForDataOffset:v4];
  [v5 addObjectsFromArray:v6];

  v7 = [(SGFlightData *)self airportIataCodesForDataOffset:v3];
  [v5 addObjectsFromArray:v7];

  return v5;
}

- (id)airportIataCodesForDataOffset:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(v3 + 4)];
  if (*(v3 + 4))
  {
    v5 = 0;
    v6 = 10;
    do
    {
      v7 = objCStringForCarrierKey(v3[2] + v6);
      [v4 setObject:v7 atIndexedSubscript:v5];

      ++v5;
      v6 += 16;
    }

    while (v5 < *(v3 + 4));
  }

  return v4;
}

- (void)updateCarriers
{
  v3 = +[SGAsset asset];
  v4 = [v3 filesystemPathForAssetDataRelativePath:@"carrierNamesUpdate.dat"];

  v5 = [[SGSeekableData alloc] initWithMemoryMappedPath:v4];
  v6 = objc_alloc(MEMORY[0x277D425E8]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __30__SGFlightData_updateCarriers__block_invoke;
  v15[3] = &unk_27894D558;
  v16 = v5;
  v7 = v5;
  v8 = [v6 initWithBlock:v15];
  objc_storeStrong(&self->_carrierUpdateNames, v8);
  v9 = objc_alloc(MEMORY[0x277D425E8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __30__SGFlightData_updateCarriers__block_invoke_2;
  v13[3] = &unk_27894D558;
  v14 = v8;
  v10 = v8;
  v11 = [v9 initWithBlock:v13];
  carrierUpdateCodesByName = self->_carrierUpdateCodesByName;
  self->_carrierUpdateCodesByName = v11;
}

id __30__SGFlightData_updateCarriers__block_invoke(uint64_t a1)
{
  v2 = [[SGOffsetDictionary alloc] initWithFilehandle:*(a1 + 32) sizeFactor:1 keyLength:3 singleByteOffset:1];
  v3 = [(SGOffsetDictionary *)v2 fullMappingFromFile:*(a1 + 32)];

  return v3;
}

id __30__SGFlightData_updateCarriers__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) result];
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__SGFlightData_updateCarriers__block_invoke_3;
  v6[3] = &unk_27894D580;
  v7 = v2;
  v3 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

void __30__SGFlightData_updateCarriers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = [v5 lowercaseString];
  [v7 setObject:v9 forKeyedSubscript:v8];

  objc_autoreleasePoolPop(v6);
}

- (void)updateAirports
{
  v3 = +[SGAsset asset];
  v4 = [v3 filesystemPathForAssetDataRelativePath:@"airportsUpdate.dat"];

  v5 = [[SGSeekableData alloc] initWithMemoryMappedPath:v4];
  objc_storeStrong(&self->_airportsUpdateFh, v5);
  v6 = objc_alloc(MEMORY[0x277D425E8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__SGFlightData_updateAirports__block_invoke;
  v10[3] = &unk_27894D530;
  v11 = v5;
  v7 = v5;
  v8 = [v6 initWithBlock:v10];
  airportUpdateDataOffsets = self->_airportUpdateDataOffsets;
  self->_airportUpdateDataOffsets = v8;
}

SGOffsetDictionary *__30__SGFlightData_updateAirports__block_invoke(uint64_t a1)
{
  v1 = [[SGOffsetDictionary alloc] initWithFilehandle:*(a1 + 32) sizeFactor:1 keyLength:3 singleByteOffset:0];

  return v1;
}

- (void)updateFlights
{
  v3 = +[SGAsset asset];
  v4 = [v3 filesystemPathForAssetDataRelativePath:@"flightsUpdate.dat"];

  v5 = [[SGSeekableData alloc] initWithMemoryMappedPath:v4];
  objc_storeStrong(&self->_flightsUpdateFh, v5);
  v6 = objc_alloc(MEMORY[0x277D425E8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__SGFlightData_updateFlights__block_invoke;
  v10[3] = &unk_27894D530;
  v11 = v5;
  v7 = v5;
  v8 = [v6 initWithBlock:v10];
  flightUpdateDataOffsets = self->_flightUpdateDataOffsets;
  self->_flightUpdateDataOffsets = v8;
}

SGOffsetDictionary *__29__SGFlightData_updateFlights__block_invoke(uint64_t a1)
{
  v1 = [[SGOffsetDictionary alloc] initWithFilehandle:*(a1 + 32) sizeFactor:5 keyLength:3 singleByteOffset:0];

  return v1;
}

- (void)dealloc
{
  v3 = +[SGAsset asset];
  [v3 deregisterUpdateHandlerAsyncWithToken:self->_assetUpdateToken];

  v4.receiver = self;
  v4.super_class = SGFlightData;
  [(SGFlightData *)&v4 dealloc];
}

- (SGFlightData)init
{
  v51.receiver = self;
  v51.super_class = SGFlightData;
  v2 = [(SGFlightData *)&v51 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [SGSeekableData alloc];
    v5 = [v3 pathForResource:@"flights" ofType:@"dat"];
    v6 = [(SGSeekableData *)v4 initWithMemoryMappedPath:v5];

    objc_storeStrong(&v2->_flightsFh, v6);
    v7 = objc_alloc(MEMORY[0x277D425E8]);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __20__SGFlightData_init__block_invoke;
    v49[3] = &unk_27894D530;
    v8 = v6;
    v50 = v8;
    v9 = [v7 initWithBlock:v49];
    flightDataOffsets = v2->_flightDataOffsets;
    v2->_flightDataOffsets = v9;

    [(SGFlightData *)v2 updateFlights];
    v11 = [SGSeekableData alloc];
    v12 = [v3 pathForResource:@"airports" ofType:@"dat"];
    v13 = [(SGSeekableData *)v11 initWithMemoryMappedPath:v12];

    objc_storeStrong(&v2->_airportsFh, v13);
    v14 = objc_alloc(MEMORY[0x277D425E8]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __20__SGFlightData_init__block_invoke_2;
    v47[3] = &unk_27894D530;
    v15 = v13;
    v48 = v15;
    v16 = [v14 initWithBlock:v47];
    airportDataOffsets = v2->_airportDataOffsets;
    v2->_airportDataOffsets = v16;

    [(SGFlightData *)v2 updateAirports];
    v18 = [SGSeekableData alloc];
    v19 = [v3 pathForResource:@"carrierNames" ofType:@"dat"];
    v20 = [(SGSeekableData *)v18 initWithMemoryMappedPath:v19];

    v21 = objc_alloc(MEMORY[0x277D425E8]);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __20__SGFlightData_init__block_invoke_3;
    v45[3] = &unk_27894D558;
    v22 = v20;
    v46 = v22;
    v23 = [v21 initWithBlock:v45];
    objc_storeStrong(&v2->_carrierNames, v23);
    v24 = objc_alloc(MEMORY[0x277D425E8]);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __20__SGFlightData_init__block_invoke_4;
    v43[3] = &unk_27894D558;
    v25 = v23;
    v44 = v25;
    v26 = [v24 initWithBlock:v43];
    carrierCodesByName = v2->_carrierCodesByName;
    v2->_carrierCodesByName = v26;

    [(SGFlightData *)v2 updateCarriers];
    objc_initWeak(&location, v2);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __20__SGFlightData_init__block_invoke_6;
    v40[3] = &unk_278955AC0;
    objc_copyWeak(&v41, &location);
    v28 = MEMORY[0x2383809F0](v40);
    v29 = +[SGAsset asset];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __20__SGFlightData_init__block_invoke_7;
    v38 = &unk_27894D5A8;
    v30 = v28;
    v39 = v30;
    v31 = [v29 registerUpdateHandler:&v35];
    assetUpdateToken = v2->_assetUpdateToken;
    v2->_assetUpdateToken = v31;

    v33 = [SGAsset notificationQueue:v35];
    dispatch_sync(v33, v30);

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v2;
}

SGOffsetDictionary *__20__SGFlightData_init__block_invoke(uint64_t a1)
{
  v1 = [[SGOffsetDictionary alloc] initWithFilehandle:*(a1 + 32) sizeFactor:5 keyLength:3 singleByteOffset:0];

  return v1;
}

SGOffsetDictionary *__20__SGFlightData_init__block_invoke_2(uint64_t a1)
{
  v1 = [[SGOffsetDictionary alloc] initWithFilehandle:*(a1 + 32) sizeFactor:1 keyLength:3 singleByteOffset:0];

  return v1;
}

id __20__SGFlightData_init__block_invoke_3(uint64_t a1)
{
  v2 = [[SGOffsetDictionary alloc] initWithFilehandle:*(a1 + 32) sizeFactor:1 keyLength:3 singleByteOffset:1];
  v3 = [(SGOffsetDictionary *)v2 fullMappingFromFile:*(a1 + 32)];

  return v3;
}

id __20__SGFlightData_init__block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) result];
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__SGFlightData_init__block_invoke_5;
  v6[3] = &unk_27894D580;
  v7 = v2;
  v3 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

void __20__SGFlightData_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFlights];
  [WeakRetained updateAirports];
  [WeakRetained updateCarriers];
}

void __20__SGFlightData_init__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = [v5 lowercaseString];
  [v7 setObject:v9 forKeyedSubscript:v8];

  objc_autoreleasePoolPop(v6);
}

+ (id)iataCodeToCityDatabaseDict
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SGFlightData_iataCodeToCityDatabaseDict__block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = a1;
  if (iataCodeToCityDatabaseDict_onceToken != -1)
  {
    dispatch_once(&iataCodeToCityDatabaseDict_onceToken, block);
  }

  pthread_mutex_lock(&iataCodeToCityDatabaseDict_lock);
  v4 = iataCodeToCityDatabaseDict_iataCodeDatabaseDict;
  if (!iataCodeToCityDatabaseDict_iataCodeDatabaseDict)
  {
    v5 = +[SGAsset asset];
    v6 = [v5 filesystemPathForAssetDataRelativePath:@"IataCodeToCity.plplist"];

    if (!v6)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:a1 file:@"SGFlightData.m" lineNumber:257 description:@"failed to get asset path for IATA_CITY_DB_IDENT."];
    }

    v13 = 0;
    v7 = [MEMORY[0x277D425E0] dictionaryWithPath:v6 error:&v13];
    v8 = v13;
    v9 = iataCodeToCityDatabaseDict_iataCodeDatabaseDict;
    iataCodeToCityDatabaseDict_iataCodeDatabaseDict = v7;

    v4 = iataCodeToCityDatabaseDict_iataCodeDatabaseDict;
  }

  v10 = v4;
  pthread_mutex_unlock(&iataCodeToCityDatabaseDict_lock);

  return v10;
}

void __42__SGFlightData_iataCodeToCityDatabaseDict__block_invoke(uint64_t a1)
{
  v2 = +[SGAsset asset];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SGFlightData_iataCodeToCityDatabaseDict__block_invoke_2;
  v4[3] = &__block_descriptor_48_e20_v16__0___PASAsset2_8l;
  v5 = *(a1 + 32);
  v3 = [v2 registerUpdateHandler:v4];
}

void __42__SGFlightData_iataCodeToCityDatabaseDict__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  pthread_mutex_lock(&iataCodeToCityDatabaseDict_lock);
  v4 = [v3 filesystemPathForAssetDataRelativePath:@"IataCodeToCity.plplist"];

  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGFlightData.m" lineNumber:245 description:@"failed to get asset path for IATA_CITY_DB_IDENT."];
  }

  v9 = 0;
  v5 = [MEMORY[0x277D425E0] dictionaryWithPath:v4 error:&v9];
  v6 = v9;
  v7 = iataCodeToCityDatabaseDict_iataCodeDatabaseDict;
  iataCodeToCityDatabaseDict_iataCodeDatabaseDict = v5;

  pthread_mutex_unlock(&iataCodeToCityDatabaseDict_lock);
}

+ (id)airportNameNoiseKeywords
{
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __40__SGFlightData_airportNameNoiseKeywords__block_invoke;
  v15 = &__block_descriptor_48_e5_v8__0l;
  v16 = a2;
  v17 = a1;
  if (airportNameNoiseKeywords_onceToken != -1)
  {
    dispatch_once(&airportNameNoiseKeywords_onceToken, &v12);
  }

  pthread_mutex_lock(&airportNameNoiseKeywords_lock);
  v4 = airportNameNoiseKeywords_airportNameNoiseKeywords;
  if (!airportNameNoiseKeywords_airportNameNoiseKeywords)
  {
    v5 = [SGAsset asset:v12];
    v6 = [v5 filesystemPathForAssetDataRelativePath:@"AirportNameNoise.plist"];

    if (!v6)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"SGFlightData.m" lineNumber:220 description:@"failed to get asset path for AIRPORT_NAME_IDENT."];
    }

    v7 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v6];
    v8 = airportNameNoiseKeywords_airportNameNoiseKeywords;
    airportNameNoiseKeywords_airportNameNoiseKeywords = v7;

    v4 = airportNameNoiseKeywords_airportNameNoiseKeywords;
  }

  v9 = v4;
  pthread_mutex_unlock(&airportNameNoiseKeywords_lock);

  return v9;
}

void __40__SGFlightData_airportNameNoiseKeywords__block_invoke(uint64_t a1)
{
  v2 = +[SGAsset asset];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SGFlightData_airportNameNoiseKeywords__block_invoke_2;
  v4[3] = &__block_descriptor_48_e20_v16__0___PASAsset2_8l;
  v5 = *(a1 + 32);
  v3 = [v2 registerUpdateHandler:v4];
}

void __40__SGFlightData_airportNameNoiseKeywords__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  pthread_mutex_lock(&airportNameNoiseKeywords_lock);
  v8 = [v3 filesystemPathForAssetDataRelativePath:@"AirportNameNoise.plist"];

  v4 = v8;
  if (!v8)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGFlightData.m" lineNumber:209 description:@"failed to get asset path for AIRPORT_NAME_IDENT."];

    v4 = 0;
  }

  v5 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v4];
  v6 = airportNameNoiseKeywords_airportNameNoiseKeywords;
  airportNameNoiseKeywords_airportNameNoiseKeywords = v5;

  pthread_mutex_unlock(&airportNameNoiseKeywords_lock);
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_12310 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_12310, &__block_literal_global_12311);
  }

  v3 = sharedInstance__pasExprOnceResult_12312;

  return v3;
}

void __30__SGFlightData_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_12312;
  sharedInstance__pasExprOnceResult_12312 = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)sanitizeAirportName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_opt_class() airportNameNoiseKeywords];
  v6 = [v3 lowercaseString];
  v7 = [v6 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 replaceOccurrencesOfString:*(*(&v16 + 1) + 8 * i) withString:@" " options:0 range:{0, objc_msgSend(v7, "length", v16)}];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = _PASCollapseWhitespaceAndStrip();

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end