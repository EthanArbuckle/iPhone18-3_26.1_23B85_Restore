@interface BMPhotosKnowledgeGraphEnrichmentLocation
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithCoder:(id)coder;
- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithProto:(id)proto;
- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithProtoData:(id)data;
- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithStreet:(id)street city:(id)city state:(id)state country:(id)country encodedLocation:(id)location;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMPhotosKnowledgeGraphEnrichmentLocation

- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithStreet:(id)street city:(id)city state:(id)state country:(id)country encodedLocation:(id)location
{
  streetCopy = street;
  cityCopy = city;
  stateCopy = state;
  countryCopy = country;
  obj = location;
  locationCopy = location;
  if (streetCopy)
  {
    if (cityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMPhotosKnowledgeGraphEnrichmentLocation initWithStreet:city:state:country:encodedLocation:];
    if (cityCopy)
    {
LABEL_3:
      if (stateCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [BMPhotosKnowledgeGraphEnrichmentLocation initWithStreet:city:state:country:encodedLocation:];
  if (stateCopy)
  {
LABEL_4:
    if (countryCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    [BMPhotosKnowledgeGraphEnrichmentLocation initWithStreet:city:state:country:encodedLocation:];
    if (locationCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [BMPhotosKnowledgeGraphEnrichmentLocation initWithStreet:city:state:country:encodedLocation:];
  if (!countryCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (locationCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  [BMPhotosKnowledgeGraphEnrichmentLocation initWithStreet:city:state:country:encodedLocation:];
LABEL_6:
  v23.receiver = self;
  v23.super_class = BMPhotosKnowledgeGraphEnrichmentLocation;
  v18 = [(BMPhotosKnowledgeGraphEnrichmentLocation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_street, street);
    objc_storeStrong(&v19->_city, city);
    objc_storeStrong(&v19->_state, state);
    objc_storeStrong(&v19->_country, country);
    objc_storeStrong(&v19->_encodedLocation, obj);
  }

  return v19;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 2)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BMPhotosKnowledgeGraphEnrichmentLocation eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v14 = *MEMORY[0x1E69E9840];
  street = self->_street;
  v9[0] = @"street";
  v9[1] = @"city";
  v11 = *&self->_city;
  v9[2] = @"state";
  v9[3] = @"country";
  country = self->_country;
  encodedLocation = self->_encodedLocation;
  v12 = country;
  v9[4] = @"encodedLocation";
  v10 = street;
  v5 = [(NSData *)encodedLocation base64EncodedStringWithOptions:0];
  v13 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:v9 count:5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMPhotosKnowledgeGraphEnrichmentLocation json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self initWithProtoData:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self proto];
  data = [proto data];

  return data;
}

- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasStreet]&& [v5 hasCity]&& [v5 hasState]&& ([v5 hasCountry]& 1) != 0)
      {
        street = [v5 street];
        city = [v5 city];
        state = [v5 state];
        country = [v5 country];
        encodedLocation = [v5 encodedLocation];
        self = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self initWithStreet:street city:city state:state country:country encodedLocation:encodedLocation];

        selfCopy = self;
LABEL_15:

        goto LABEL_16;
      }

      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosKnowledgeGraphEnrichmentLocation initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosKnowledgeGraphEnrichmentLocation initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBPhotosKnowledgeGraphEnrichmentLocation alloc] initWithData:dataCopy];

    self = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  street = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self street];
  [v3 setStreet:street];

  city = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self city];
  [v3 setCity:city];

  state = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self state];
  [v3 setState:state];

  country = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self country];
  [v3 setCountry:country];

  encodedLocation = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self encodedLocation];
  [v3 setEncodedLocation:encodedLocation];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_street hash];
  v4 = [(NSString *)self->_city hash]^ v3;
  return v4 ^ [(NSString *)self->_state hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    street = self->_street;
    street = [v5 street];
    if ([(NSString *)street isEqualToString:street])
    {
      city = self->_city;
      city = [v5 city];
      if ([(NSString *)city isEqualToString:city])
      {
        state = self->_state;
        state = [v5 state];
        if ([(NSString *)state isEqualToString:state])
        {
          country = self->_country;
          country = [v5 country];
          if ([(NSString *)country isEqualToString:country])
          {
            encodedLocation = self->_encodedLocation;
            encodedLocation = [v5 encodedLocation];
            v16 = [(NSData *)encodedLocation isEqual:encodedLocation];
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (self->_street && self->_city && self->_state && self->_country && self->_encodedLocation)
  {
    v7 = 1;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end