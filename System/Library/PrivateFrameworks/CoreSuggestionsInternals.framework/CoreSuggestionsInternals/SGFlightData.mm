@interface SGFlightData
+ (id)airportNameNoiseKeywords;
+ (id)iataCodeToCityDatabaseDict;
+ (id)sanitizeAirportName:(id)name;
+ (id)sharedInstance;
- (SGFlightData)init;
- (id)airportIataCodes;
- (id)airportIataCodesForDataOffset:(id)offset;
- (id)airportsServicedByCarrier:(id)carrier flightNumber:(unsigned __int16)number withDataOffset:(id)offset andFileHandle:(id)handle;
- (id)bestLocalizedNameForAirport:(id)airport;
- (id)carrierIataCodeForCarrierName:(id)name;
- (id)carrierIataCodes;
- (id)cityForIataCode:(id)code;
- (id)fieldForIataCode:(id)code field:(id)field;
- (id)latitudeAndLongitudeForAirport:(id)airport;
- (id)latitudeAndLongitudeForAirport:(id)airport withDataOffset:(id)offset andFileHandle:(id)handle;
- (id)nameForCarrier:(id)carrier;
- (id)namesForAirport:(id)airport;
- (id)namesForAirport:(id)airport withDataOffset:(id)offset andFileHandle:(id)handle;
- (id)synonymAirportNamesForAirportCode:(id)code;
- (id)timezoneOlsonCodeForAirport:(id)airport;
- (id)timezoneOlsonCodeForAirport:(id)airport withDataOffset:(id)offset andFileHandle:(id)handle;
- (void)dealloc;
- (void)updateAirports;
- (void)updateCarriers;
- (void)updateFlights;
@end

@implementation SGFlightData

- (id)synonymAirportNamesForAirportCode:(id)code
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SGFlightData *)self namesForAirport:code];
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

        second = [*(*(&v14 + 1) + 8 * i) second];
        [v4 addObject:second];
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

- (id)airportsServicedByCarrier:(id)carrier flightNumber:(unsigned __int16)number withDataOffset:(id)offset andFileHandle:(id)handle
{
  numberCopy = number;
  carrierCopy = carrier;
  offsetCopy = offset;
  handleCopy = handle;
  v12 = [offsetCopy seekLocationForKey:{objc_msgSend(carrierCopy, "UTF8String")}];
  if (v12 && ([handleCopy seekToFileOffset:v12], v13 = objc_msgSend(offsetCopy, "payloadCountForKey:", objc_msgSend(carrierCopy, "UTF8String")), v14 = v13 - 1, v13 >= 1))
  {
    v15 = 0;
    while (1)
    {
      v16 = bswap32(*[handleCopy dataOfLength:2]);
      v17 = handleCopy;
      v18 = handleCopy;
      v19 = *[v18 dataOfLength:2];
      v20 = [v18 dataOfLength:1];

      v15 += HIWORD(v16);
      if (v15 == numberCopy)
      {
        break;
      }

      if (v15 > numberCopy || v14-- == 0)
      {
        goto LABEL_10;
      }
    }

    [v18 seekToFileOffset:(*v20 | (__rev16(v19) << 8)) + offsetCopy[4] + offsetCopy[5]];
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

- (id)nameForCarrier:(id)carrier
{
  carrierCopy = carrier;
  result = [(_PASLazyPurgeableResult *)self->_carrierUpdateNames result];
  v6 = [result objectForKeyedSubscript:carrierCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    result2 = [(_PASLazyPurgeableResult *)self->_carrierNames result];
    v8 = [result2 objectForKeyedSubscript:carrierCopy];
  }

  return v8;
}

- (id)carrierIataCodeForCarrierName:(id)name
{
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  lowercaseString = [nameCopy lowercaseString];
  objc_autoreleasePoolPop(v5);
  result = [(_PASLazyPurgeableResult *)self->_carrierUpdateCodesByName result];
  v8 = [result objectForKeyedSubscript:lowercaseString];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    result2 = [(_PASLazyPurgeableResult *)self->_carrierCodesByName result];
    v10 = [result2 objectForKeyedSubscript:lowercaseString];
  }

  return v10;
}

- (id)carrierIataCodes
{
  v3 = objc_autoreleasePoolPush();
  result = [(_PASLazyPurgeableResult *)self->_carrierUpdateNames result];
  allKeys = [result allKeys];
  result2 = [(_PASLazyPurgeableResult *)self->_carrierNames result];
  allKeys2 = [result2 allKeys];
  v8 = [allKeys arrayByAddingObjectsFromArray:allKeys2];

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (id)fieldForIataCode:(id)code field:(id)field
{
  codeCopy = code;
  fieldCopy = field;
  v7 = objc_autoreleasePoolPush();
  iataCodeToCityDatabaseDict = [objc_opt_class() iataCodeToCityDatabaseDict];
  v9 = [iataCodeToCityDatabaseDict objectForKeyedSubscript:codeCopy];
  v10 = [v9 objectForKeyedSubscript:fieldCopy];

  objc_autoreleasePoolPop(v7);

  return v10;
}

- (id)cityForIataCode:(id)code
{
  codeCopy = code;
  v4 = objc_autoreleasePoolPush();
  iataCodeToCityDatabaseDict = [objc_opt_class() iataCodeToCityDatabaseDict];
  v6 = [iataCodeToCityDatabaseDict objectForKeyedSubscript:codeCopy];
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

- (id)latitudeAndLongitudeForAirport:(id)airport
{
  airportCopy = airport;
  result = [(_PASLazyPurgeableResult *)self->_airportUpdateDataOffsets result];
  v6 = [(SGFlightData *)self latitudeAndLongitudeForAirport:airportCopy withDataOffset:result andFileHandle:self->_airportsUpdateFh];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    result2 = [(_PASLazyPurgeableResult *)self->_airportDataOffsets result];
    v7 = [(SGFlightData *)self latitudeAndLongitudeForAirport:airportCopy withDataOffset:result2 andFileHandle:self->_airportsFh];
  }

  return v7;
}

- (id)latitudeAndLongitudeForAirport:(id)airport withDataOffset:(id)offset andFileHandle:(id)handle
{
  handleCopy = handle;
  airportCopy = airport;
  offsetCopy = offset;
  v10 = [offsetCopy seekLocationForKey:{objc_msgSend(airport, "UTF8String")}];

  if (v10)
  {
    [handleCopy seekToFileOffset:v10];
    v11 = readLengthPrefixedString(handleCopy);
    v12 = readLengthPrefixedString(handleCopy);
    v13 = bswap32(*[handleCopy dataOfLength:4]) / 10000000.0;
    v14 = bswap32(*[handleCopy dataOfLength:4]) / 10000000.0;
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

- (id)timezoneOlsonCodeForAirport:(id)airport
{
  airportCopy = airport;
  result = [(_PASLazyPurgeableResult *)self->_airportUpdateDataOffsets result];
  v6 = [(SGFlightData *)self timezoneOlsonCodeForAirport:airportCopy withDataOffset:result andFileHandle:self->_airportsUpdateFh];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    result2 = [(_PASLazyPurgeableResult *)self->_airportDataOffsets result];
    v7 = [(SGFlightData *)self timezoneOlsonCodeForAirport:airportCopy withDataOffset:result2 andFileHandle:self->_airportsFh];
  }

  return v7;
}

- (id)timezoneOlsonCodeForAirport:(id)airport withDataOffset:(id)offset andFileHandle:(id)handle
{
  handleCopy = handle;
  airportCopy = airport;
  offsetCopy = offset;
  v10 = [offsetCopy seekLocationForKey:{objc_msgSend(airport, "UTF8String")}];

  if (v10)
  {
    [handleCopy seekToFileOffset:v10];
    v11 = readLengthPrefixedString(handleCopy);
    v10 = readLengthPrefixedString(handleCopy);
  }

  return v10;
}

- (id)bestLocalizedNameForAirport:(id)airport
{
  v45 = *MEMORY[0x277D85DE8];
  airportCopy = airport;
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
          second = [v13 second];
          first = [v13 first];
          if (![v8 hasPrefix:first])
          {
            goto LABEL_15;
          }

          v16 = [second length];
          [v5 second];
          v18 = v17 = v5;
          v19 = [v18 length];

          if (v16 > v19)
          {
            v5 = v13;
            first = v17;
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

  second2 = [v5 second];
  v21 = second2;
  if (second2)
  {
    second3 = second2;
  }

  else
  {
    firstObject = [v4 firstObject];
    second3 = [firstObject second];
  }

  v24 = *MEMORY[0x277D85DE8];

  return second3;
}

- (id)namesForAirport:(id)airport
{
  airportCopy = airport;
  v5 = objc_autoreleasePoolPush();
  result = [(_PASLazyPurgeableResult *)self->_airportUpdateDataOffsets result];
  v7 = [(SGFlightData *)self namesForAirport:airportCopy withDataOffset:result andFileHandle:self->_airportsUpdateFh];
  result2 = [(_PASLazyPurgeableResult *)self->_airportDataOffsets result];
  v9 = [(SGFlightData *)self namesForAirport:airportCopy withDataOffset:result2 andFileHandle:self->_airportsFh];
  v10 = [v7 arrayByAddingObjectsFromArray:v9];

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)namesForAirport:(id)airport withDataOffset:(id)offset andFileHandle:(id)handle
{
  v34 = *MEMORY[0x277D85DE8];
  airportCopy = airport;
  offsetCopy = offset;
  handleCopy = handle;
  v10 = [offsetCopy seekLocationForKey:{objc_msgSend(airportCopy, "UTF8String")}];
  if (v10)
  {
    [handleCopy seekToFileOffset:v10];
    v11 = objc_autoreleasePoolPush();
    v28 = handleCopy;
    v12 = readLengthPrefixedString(handleCopy);
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
    handleCopy = v28;
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
  result = [(_PASLazyPurgeableResult *)self->_airportDataOffsets result];
  result2 = [(_PASLazyPurgeableResult *)self->_airportUpdateDataOffsets result];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:result2[4] + result[4]];
  v6 = [(SGFlightData *)self airportIataCodesForDataOffset:result2];
  [v5 addObjectsFromArray:v6];

  v7 = [(SGFlightData *)self airportIataCodesForDataOffset:result];
  [v5 addObjectsFromArray:v7];

  return v5;
}

- (id)airportIataCodesForDataOffset:(id)offset
{
  offsetCopy = offset;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(offsetCopy + 4)];
  if (*(offsetCopy + 4))
  {
    v5 = 0;
    v6 = 10;
    do
    {
      v7 = objCStringForCarrierKey(offsetCopy[2] + v6);
      [v4 setObject:v7 atIndexedSubscript:v5];

      ++v5;
      v6 += 16;
    }

    while (v5 < *(offsetCopy + 4));
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
  block[5] = self;
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGFlightData.m" lineNumber:257 description:@"failed to get asset path for IATA_CITY_DB_IDENT."];
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
  selfCopy = self;
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGFlightData.m" lineNumber:220 description:@"failed to get asset path for AIRPORT_NAME_IDENT."];
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

+ (id)sanitizeAirportName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = objc_autoreleasePoolPush();
  airportNameNoiseKeywords = [objc_opt_class() airportNameNoiseKeywords];
  lowercaseString = [nameCopy lowercaseString];
  v7 = [lowercaseString mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = airportNameNoiseKeywords;
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