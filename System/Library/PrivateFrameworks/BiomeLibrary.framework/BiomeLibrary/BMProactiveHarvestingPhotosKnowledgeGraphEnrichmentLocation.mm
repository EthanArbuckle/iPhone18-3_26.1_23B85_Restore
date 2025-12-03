@interface BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation)initWithStreet:(id)street city:(id)city state:(id)state country:(id)country encodedLocation:(id)location;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    street = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self street];
    street2 = [v5 street];
    v8 = street2;
    if (street == street2)
    {
    }

    else
    {
      street3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self street];
      street4 = [v5 street];
      v11 = [street3 isEqual:street4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    city = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self city];
    city2 = [v5 city];
    v15 = city2;
    if (city == city2)
    {
    }

    else
    {
      city3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self city];
      city4 = [v5 city];
      v18 = [city3 isEqual:city4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    state = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self state];
    state2 = [v5 state];
    v21 = state2;
    if (state == state2)
    {
    }

    else
    {
      state3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self state];
      state4 = [v5 state];
      v24 = [state3 isEqual:state4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    country = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self country];
    country2 = [v5 country];
    v27 = country2;
    if (country == country2)
    {
    }

    else
    {
      country3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self country];
      country4 = [v5 country];
      v30 = [country3 isEqual:country4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    encodedLocation = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self encodedLocation];
    encodedLocation2 = [v5 encodedLocation];
    if (encodedLocation == encodedLocation2)
    {
      v12 = 1;
    }

    else
    {
      encodedLocation3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self encodedLocation];
      encodedLocation4 = [v5 encodedLocation];
      v12 = [encodedLocation3 isEqual:encodedLocation4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v24[5] = *MEMORY[0x1E69E9840];
  street = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self street];
  city = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self city];
  state = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self state];
  country = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self country];
  encodedLocation = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self encodedLocation];
  v8 = [encodedLocation base64EncodedStringWithOptions:0];

  v19 = @"street";
  null = street;
  if (!street)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v24[0] = null;
  v20 = @"city";
  null2 = city;
  if (!city)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  v21 = @"state";
  null3 = state;
  if (!state)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  v22 = @"country";
  null4 = country;
  if (!country)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23 = @"encodedLocation";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (v8)
  {
    if (country)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (country)
    {
LABEL_13:
      if (state)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (state)
  {
LABEL_14:
    if (city)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (street)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!city)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (street)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"street"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"city"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v41 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        errorCopy = error;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"city"];
        v51 = v39;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v41 = 0;
        v16 = 0;
        *errorCopy = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v41 = v9;
    }

    else
    {
      v41 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    v38 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v39 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        errorCopy2 = error;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v48 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"state"];
        v49 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v39 = 0;
        v16 = 0;
        *errorCopy2 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_18:

        self = selfCopy;
        v8 = v38;
LABEL_19:

        goto LABEL_20;
      }

      v39 = v10;
    }

    else
    {
      v39 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"country"];
    errorCopy3 = error;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_18;
        }

        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"country"];
        v47 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v28 = [v36 initWithDomain:v27 code:2 userInfo:v14];
        v13 = 0;
        v16 = 0;
        *errorCopy3 = v28;
        goto LABEL_17;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"encodedLocation"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
LABEL_16:
      v16 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)selfCopy initWithStreet:v38 city:v41 state:v39 country:v13 encodedLocation:v15];
      selfCopy = v16;
LABEL_17:

      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:0];
      if (v15)
      {
        goto LABEL_16;
      }

      if (errorCopy3)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"encodedLocation"];
        v45 = v29;
        v30 = MEMORY[0x1E695DF20];
        v31 = &v45;
        v32 = &v44;
LABEL_49:
        v33 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
        *errorCopy3 = [v37 initWithDomain:v34 code:2 userInfo:v33];
      }
    }

    else if (errorCopy3)
    {
      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E698F240];
      v42 = *MEMORY[0x1E696A578];
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"encodedLocation"];
      v43 = v29;
      v30 = MEMORY[0x1E695DF20];
      v31 = &v43;
      v32 = &v42;
      goto LABEL_49;
    }

    v15 = 0;
    v16 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v16 = 0;
    goto LABEL_21;
  }

  errorCopy4 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v52 = *MEMORY[0x1E696A578];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"street"];
  v53[0] = v41;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v8 = 0;
  v16 = 0;
  *errorCopy4 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_street)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_state)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_encodedLocation)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_36;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v16 = PBReaderReadString();
          v17 = &OBJC_IVAR___BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation__street;
          goto LABEL_29;
        }

        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = &OBJC_IVAR___BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation__city;
          goto LABEL_29;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v16 = PBReaderReadString();
            v17 = &OBJC_IVAR___BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation__state;
            goto LABEL_29;
          case 4:
            v16 = PBReaderReadString();
            v17 = &OBJC_IVAR___BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation__country;
            goto LABEL_29;
          case 5:
            v16 = PBReaderReadData();
            v17 = &OBJC_IVAR___BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation__encodedLocation;
LABEL_29:
            v18 = *v17;
            v19 = *(&v5->super.super.isa + v18);
            *(&v5->super.super.isa + v18) = v16;

            goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_30:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_35:
    v21 = 0;
  }

  else
  {
LABEL_36:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  street = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self street];
  city = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self city];
  state = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self state];
  country = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self country];
  encodedLocation = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)self encodedLocation];
  v9 = [v3 initWithFormat:@"BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation with street: %@, city: %@, state: %@, country: %@, encodedLocation: %@", street, city, state, country, encodedLocation];

  return v9;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation)initWithStreet:(id)street city:(id)city state:(id)state country:(id)country encodedLocation:(id)location
{
  streetCopy = street;
  cityCopy = city;
  stateCopy = state;
  countryCopy = country;
  locationCopy = location;
  v20.receiver = self;
  v20.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_street, street);
    objc_storeStrong(&v17->_city, city);
    objc_storeStrong(&v17->_state, state);
    objc_storeStrong(&v17->_country, country);
    objc_storeStrong(&v17->_encodedLocation, location);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"street" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"city" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"state" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"country" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"encodedLocation" number:5 type:14 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"street" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"city" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"state" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"country" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"encodedLocation" dataType:4 requestOnly:0 fieldNumber:5 protoDataType:14 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[4] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end