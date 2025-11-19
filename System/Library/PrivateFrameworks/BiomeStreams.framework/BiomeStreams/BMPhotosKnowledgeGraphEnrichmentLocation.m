@interface BMPhotosKnowledgeGraphEnrichmentLocation
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithCoder:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithProto:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithProtoData:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithStreet:(id)a3 city:(id)a4 state:(id)a5 country:(id)a6 encodedLocation:(id)a7;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMPhotosKnowledgeGraphEnrichmentLocation

- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithStreet:(id)a3 city:(id)a4 state:(id)a5 country:(id)a6 encodedLocation:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  obj = a7;
  v17 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMPhotosKnowledgeGraphEnrichmentLocation initWithStreet:city:state:country:encodedLocation:];
    if (v14)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [BMPhotosKnowledgeGraphEnrichmentLocation initWithStreet:city:state:country:encodedLocation:];
  if (v15)
  {
LABEL_4:
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_12:
    [BMPhotosKnowledgeGraphEnrichmentLocation initWithStreet:city:state:country:encodedLocation:];
    if (v17)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [BMPhotosKnowledgeGraphEnrichmentLocation initWithStreet:city:state:country:encodedLocation:];
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v17)
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
    objc_storeStrong(&v18->_street, a3);
    objc_storeStrong(&v19->_city, a4);
    objc_storeStrong(&v19->_state, a5);
    objc_storeStrong(&v19->_country, a6);
    objc_storeStrong(&v19->_encodedLocation, obj);
  }

  return v19;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
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
  v3 = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self initWithProtoData:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasStreet]&& [v5 hasCity]&& [v5 hasState]&& ([v5 hasCountry]& 1) != 0)
      {
        v6 = [v5 street];
        v7 = [v5 city];
        v8 = [v5 state];
        v9 = [v5 country];
        v10 = [v5 encodedLocation];
        self = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self initWithStreet:v6 city:v7 state:v8 country:v9 encodedLocation:v10];

        v11 = self;
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

    v11 = 0;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (BMPhotosKnowledgeGraphEnrichmentLocation)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBPhotosKnowledgeGraphEnrichmentLocation alloc] initWithData:v4];

    self = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self street];
  [v3 setStreet:v4];

  v5 = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self city];
  [v3 setCity:v5];

  v6 = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self state];
  [v3 setState:v6];

  v7 = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self country];
  [v3 setCountry:v7];

  v8 = [(BMPhotosKnowledgeGraphEnrichmentLocation *)self encodedLocation];
  [v3 setEncodedLocation:v8];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_street hash];
  v4 = [(NSString *)self->_city hash]^ v3;
  return v4 ^ [(NSString *)self->_state hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    street = self->_street;
    v7 = [v5 street];
    if ([(NSString *)street isEqualToString:v7])
    {
      city = self->_city;
      v9 = [v5 city];
      if ([(NSString *)city isEqualToString:v9])
      {
        state = self->_state;
        v11 = [v5 state];
        if ([(NSString *)state isEqualToString:v11])
        {
          country = self->_country;
          v13 = [v5 country];
          if ([(NSString *)country isEqualToString:v13])
          {
            encodedLocation = self->_encodedLocation;
            v15 = [v5 encodedLocation];
            v16 = [(NSData *)encodedLocation isEqual:v15];
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

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_street && self->_city && self->_state && self->_country && self->_encodedLocation)
  {
    v7 = 1;
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end