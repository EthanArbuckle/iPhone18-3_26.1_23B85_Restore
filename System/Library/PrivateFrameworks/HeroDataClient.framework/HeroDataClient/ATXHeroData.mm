@interface ATXHeroData
+ (BOOL)isClipMetadataEqual:(id)a3 other:(id)a4;
+ (id)copyClipMetadata:(id)a3;
- (ATXHeroData)initWithCoder:(id)a3;
- (ATXHeroData)initWithPredictedAdamId:(unint64_t)a3 bundleId:(id)a4 latitude:(double)a5 longitude:(double)a6 radiusInMeters:(unint64_t)a7 rank:(unint64_t)a8 isTouristApp:(BOOL)a9 score:(double)a10 urlHash:(id)a11 clipMetadata:(id)a12 poiCategory:(id)a13 poiMuid:(id)a14;
- (ATXHeroData)initWithProto:(id)a3;
- (ATXHeroData)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)proto;
@end

@implementation ATXHeroData

- (ATXHeroData)initWithPredictedAdamId:(unint64_t)a3 bundleId:(id)a4 latitude:(double)a5 longitude:(double)a6 radiusInMeters:(unint64_t)a7 rank:(unint64_t)a8 isTouristApp:(BOOL)a9 score:(double)a10 urlHash:(id)a11 clipMetadata:(id)a12 poiCategory:(id)a13 poiMuid:(id)a14
{
  v20 = a4;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v35.receiver = self;
  v35.super_class = ATXHeroData;
  v25 = [(ATXHeroData *)&v35 init];
  v26 = v25;
  if (v25)
  {
    v25->_adamId = a3;
    v27 = [v20 copy];
    bundleId = v26->_bundleId;
    v26->_bundleId = v27;

    v26->_latitude = a5;
    v26->_longitude = a6;
    v26->_radiusInMeters = a7;
    v26->_rank = a8;
    v26->_isTouristApp = a9;
    v26->_score = a10;
    v29 = [v21 copy];
    urlHash = v26->_urlHash;
    v26->_urlHash = v29;

    objc_storeStrong(&v26->_clipMetadata, a12);
    v26->_latitudeAtPredictionTime = 0.0;
    v26->_longitudeAtPredictionTime = 0.0;
    objc_storeStrong(&v26->_poiCategory, a13);
    objc_storeStrong(&v26->_poiMuid, a14);
  }

  return v26;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 0.0)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  latitude = self->_latitude;
  v8 = a3;
  [v8 encodeDouble:@"latitude" forKey:latitude];
  [v8 encodeDouble:@"longitude" forKey:self->_longitude];
  [v8 encodeDouble:@"latitudeAtPrediction" forKey:self->_latitudeAtPredictionTime];
  [v8 encodeDouble:@"longitudeAtPrediction" forKey:self->_longitudeAtPredictionTime];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_radiusInMeters];
  [v8 encodeObject:v5 forKey:@"radius"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_rank];
  [v8 encodeObject:v6 forKey:@"rank"];

  [v8 encodeBool:self->_isTouristApp forKey:@"isTouristApp"];
  [v8 encodeObject:self->_bundleId forKey:@"bundleId"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_adamId];
  [v8 encodeObject:v7 forKey:@"adamId"];

  [v8 encodeDouble:@"score" forKey:self->_score];
  [v8 encodeObject:self->_urlHash forKey:@"urlHash"];
  [v8 encodeObject:self->_clipMetadata forKey:@"clipMetadata"];
  [v8 encodeObject:self->_poiCategory forKey:@"poiCategory"];
  [v8 encodeObject:self->_poiMuid forKey:@"poiMuid"];
}

- (ATXHeroData)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"latitude"];
  v6 = v5;
  v39 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"latitude" key:v4 coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  [v4 decodeDoubleForKey:@"longitude"];
  v8 = v7;
  v38 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"longitude" key:v4 coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  [v4 decodeDoubleForKey:@"latitudeAtPrediction"];
  v10 = v9;
  v37 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"latitudeAtPrediction" key:v4 coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  [v4 decodeDoubleForKey:@"longitudeAtPrediction"];
  v12 = v11;
  v36 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"longitudeAtPrediction" key:v4 coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"radius"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v13 key:@"radius" coder:v4 errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:70];

    v13 = v14;
  }

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rank"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v15 key:@"rank" coder:v4 errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];

    v15 = v16;
  }

  v33 = [v4 decodeBoolForKey:@"isTouristApp"];
  v32 = [ATXHeroData checkAndReportDecodingFailureIfNeededForBOOL:"checkAndReportDecodingFailureIfNeededForBOOL:key:coder:errorDomain:errorCode:" key:? coder:? errorDomain:? errorCode:?];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v17 key:@"bundleId" coder:v4 errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {
    v18 = &stru_28647D6B8;

    v17 = v18;
  }

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adamId"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v19 key:@"adamId" coder:v4 errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:-1];

    v34 = v20;
  }

  else
  {
    v34 = v19;
  }

  [v4 decodeDoubleForKey:@"score"];
  v22 = v21;
  v30 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"score" key:v4 coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlHash"];
  v35 = v17;
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v23 key:@"urlHash" coder:v4 errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {

    v23 = 0;
  }

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipMetadata"];
  v31 = v23;
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v24 key:@"clipMetadata" coder:v4 errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {

    v24 = 0;
  }

  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v25 key:@"poiCategory" coder:v4 errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {

    v25 = 0;
  }

  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"poiMuid"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v26 key:@"poiMuid" coder:v4 errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {

    v26 = 0;
  }

  if (v30)
  {
    v22 = 0.0;
  }

  if (v32)
  {
    v27 = kATXHeroAppDefaultIsTouristApp;
  }

  else
  {
    v27 = v33;
  }

  if (v36)
  {
    v12 = 0.0;
  }

  if (v37)
  {
    v10 = 0.0;
  }

  if (v38)
  {
    v8 = 0.0;
  }

  if (v39)
  {
    v6 = 0.0;
  }

  v28 = -[ATXHeroData initWithPredictedAdamId:bundleId:latitude:longitude:radiusInMeters:rank:isTouristApp:score:urlHash:clipMetadata:](self, "initWithPredictedAdamId:bundleId:latitude:longitude:radiusInMeters:rank:isTouristApp:score:urlHash:clipMetadata:", [v34 unsignedIntegerValue], v35, objc_msgSend(v13, "unsignedIntegerValue"), objc_msgSend(v15, "unsignedIntegerValue"), v27 & 1, v31, v6, v8, v22, v24);
  [(ATXHeroData *)v28 setLatitudeAtPredictionTime:v10];
  [(ATXHeroData *)v28 setLongitudeAtPredictionTime:v12];
  [(ATXHeroData *)v28 setPoiCategory:v25];
  [(ATXHeroData *)v28 setPoiMuid:v26];

  return v28;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    v7 = v6;
    if (self == v7)
    {
      v21 = 1;
LABEL_39:

      goto LABEL_40;
    }

    v46 = [(ATXHeroData *)self adamId];
    v45 = [(ATXHeroData *)v7 adamId];
    v8 = [(ATXHeroData *)self isTouristApp];
    v9 = [(ATXHeroData *)v7 isTouristApp];
    [(ATXHeroData *)self latitude];
    v11 = v10;
    [(ATXHeroData *)v7 latitude];
    v13 = v12;
    [(ATXHeroData *)self longitude];
    v15 = v14;
    [(ATXHeroData *)v7 longitude];
    v17 = v16;
    v18 = [(ATXHeroData *)self urlHash];
    if (v18 || ([(ATXHeroData *)v7 urlHash], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = [(ATXHeroData *)v7 urlHash];
      if (v4)
      {
        v19 = [(ATXHeroData *)self urlHash];
        v20 = [(ATXHeroData *)v7 urlHash];
        v44 = [v19 isEqualToString:v20];
      }

      else
      {
        v44 = 0;
      }

      if (v18)
      {
LABEL_14:

        v22 = [(ATXHeroData *)self rank];
        v43 = [(ATXHeroData *)v7 rank];
        v23 = [(ATXHeroData *)self poiCategory];
        if (v23 || ([(ATXHeroData *)v7 poiCategory], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v24 = [(ATXHeroData *)v7 poiCategory];
          if (v24)
          {
            [(ATXHeroData *)self poiCategory];
            v4 = v22;
            v25 = v8;
            v27 = v26 = v9;
            v28 = [(ATXHeroData *)v7 poiCategory];
            v42 = [v27 isEqualToString:v28];

            v9 = v26;
            v8 = v25;
            v22 = v4;
          }

          else
          {
            v42 = 0;
          }

          if (v23)
          {
LABEL_23:
            v29 = v8 ^ v9;
            v30 = vabdd_f64(v11, v13);
            v31 = vabdd_f64(v15, v17);

            v32 = [(ATXHeroData *)self poiMuid];
            if (v32 || ([(ATXHeroData *)v7 poiMuid], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v33 = [(ATXHeroData *)v7 poiMuid];
              if (v33)
              {
                v34 = [(ATXHeroData *)self poiMuid];
                v35 = [(ATXHeroData *)v7 poiMuid];
                v36 = [v34 isEqualToNumber:v35];
              }

              else
              {
                v36 = 0;
              }

              if (v32)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v36 = 1;
            }

LABEL_32:
            v37 = (v46 == v45) & ~v29;
            if (v30 >= 2.22044605e-16)
            {
              v37 = 0;
            }

            if (v31 >= 2.22044605e-16)
            {
              v37 = 0;
            }

            v38 = v37 & v44;
            if (v22 != v43)
            {
              v38 = 0;
            }

            v21 = v38 & v42 & v36;
            goto LABEL_39;
          }
        }

        else
        {
          v41 = 0;
          v42 = 1;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v44 = 1;
    }

    goto LABEL_14;
  }

  v21 = 0;
LABEL_40:

  return v21;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATXHeroData *)self adamId];
  v5 = [(ATXHeroData *)self bundleId];
  v6 = [(ATXHeroData *)self urlHash];
  v7 = [(ATXHeroData *)self poiCategory];
  [(ATXHeroData *)self latitude];
  v9 = v8;
  [(ATXHeroData *)self longitude];
  v11 = v10;
  [(ATXHeroData *)self score];
  v13 = v12;
  v14 = [(ATXHeroData *)self rank];
  v15 = [(ATXHeroData *)self radiusInMeters];
  v16 = [(ATXHeroData *)self poiMuid];
  v17 = [v3 stringWithFormat:@"HeroApp with adamId: %ld bundleId: %@ urlHash: %@ poiCategory: %@ latitude: %f longitude: %f score: %lf rank: %lu radius: %lu poiMuid: %@", v4, v5, v6, v7, v9, v11, v13, v14, v15, v16];

  return v17;
}

- (unint64_t)hash
{
  v3 = [(ATXHeroData *)self adamId];
  v4 = [(ATXHeroData *)self urlHash];
  v5 = [v4 hash] - v3 + 32 * v3;

  v6 = [(ATXHeroData *)self poiCategory];
  v7 = [v6 hash] - v5 + 32 * v5;

  v8 = [(ATXHeroData *)self poiMuid];
  v9 = [v8 hash] - v7 + 32 * v7;

  v10 = objc_alloc(MEMORY[0x277CCABB0]);
  [(ATXHeroData *)self latitude];
  *&v11 = v11;
  v12 = [v10 initWithFloat:v11];
  v13 = [v12 hash] - v9 + 32 * v9;

  v14 = objc_alloc(MEMORY[0x277CCABB0]);
  [(ATXHeroData *)self longitude];
  *&v15 = v15;
  v16 = [v14 initWithFloat:v15];
  v17 = [v16 hash] - v13 + 32 * v13;

  return v17;
}

- (ATXHeroData)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBHeroAppPrediction alloc] initWithData:v4];

    self = [(ATXHeroData *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXHeroData)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_10:
    v21 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [ATXHeroData initWithProto:];
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v5 clipMetadata];
  v7 = [v6 length];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_opt_class();
    v11 = [v5 clipMetadata];
    v37 = 0;
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:v11 error:&v37];
    v13 = v37;

    objc_autoreleasePoolPop(v8);
    if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [(ATXHeroData *)v13 initWithProto:v14, v15, v16, v17, v18, v19, v20];
    }
  }

  else
  {
    v12 = 0;
  }

  v22 = [v5 adamId];
  v23 = [v5 bundleId];
  [v5 latitude];
  v25 = v24;
  [v5 longitude];
  v27 = v26;
  v28 = [v5 radius];
  v29 = [v5 rank];
  v30 = [v5 isTouristApp];
  [v5 score];
  v32 = v31;
  v33 = [v5 urlHash];
  self = [(ATXHeroData *)self initWithPredictedAdamId:v22 bundleId:v23 latitude:v28 longitude:v29 radiusInMeters:v30 rank:v33 isTouristApp:v25 score:v27 urlHash:v32 clipMetadata:v12];

  [v5 latitudeAtPredictionTime];
  [(ATXHeroData *)self setLatitudeAtPredictionTime:?];
  [v5 longitudeAtPredictionTime];
  [(ATXHeroData *)self setLongitudeAtPredictionTime:?];
  v34 = [v5 poiCategory];
  [(ATXHeroData *)self setPoiCategory:v34];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "poiMuid")}];
  [(ATXHeroData *)self setPoiMuid:v35];

  v21 = self;
LABEL_13:

  return v21;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXHeroData *)self bundleId];
  [v3 setBundleId:v4];

  [(ATXHeroData *)self latitude];
  [v3 setLatitude:?];
  [(ATXHeroData *)self longitude];
  [v3 setLongitude:?];
  [v3 setRadius:{-[ATXHeroData radiusInMeters](self, "radiusInMeters")}];
  [v3 setRank:{-[ATXHeroData rank](self, "rank")}];
  [v3 setAdamId:{-[ATXHeroData adamId](self, "adamId")}];
  v5 = [(ATXHeroData *)self urlHash];
  [v3 setUrlHash:v5];

  [(ATXHeroData *)self score];
  [v3 setScore:?];
  [v3 setIsTouristApp:{-[ATXHeroData isTouristApp](self, "isTouristApp")}];
  [(ATXHeroData *)self latitudeAtPredictionTime];
  [v3 setLatitudeAtPredictionTime:?];
  [(ATXHeroData *)self longitudeAtPredictionTime];
  [v3 setLongitudeAtPredictionTime:?];
  v6 = [(ATXHeroData *)self poiCategory];
  [v3 setPoiCategory:v6];

  v7 = [(ATXHeroData *)self poiMuid];
  [v3 setPoiMuid:{objc_msgSend(v7, "unsignedIntegerValue")}];

  v8 = [(ATXHeroData *)self clipMetadata];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = MEMORY[0x277CCAAB0];
    v11 = [(ATXHeroData *)self clipMetadata];
    v22 = 0;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v22];
    v13 = v22;
    [v3 setClipMetadata:v12];

    objc_autoreleasePoolPop(v9);
    if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [(ATXHeroData *)v13 proto:v14];
    }
  }

  return v3;
}

- (id)encodeAsProto
{
  v2 = [(ATXHeroData *)self proto];
  v3 = [v2 data];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = [ATXHeroData allocWithZone:a3];
  v4 = [(ATXHeroData *)self adamId];
  v5 = [(ATXHeroData *)self bundleId];
  [(ATXHeroData *)self latitude];
  v7 = v6;
  [(ATXHeroData *)self longitude];
  v9 = v8;
  v10 = [(ATXHeroData *)self radiusInMeters];
  v11 = [(ATXHeroData *)self rank];
  v12 = [(ATXHeroData *)self isTouristApp];
  [(ATXHeroData *)self score];
  v14 = v13;
  v15 = [(ATXHeroData *)self urlHash];
  v16 = objc_opt_class();
  v17 = [(ATXHeroData *)self clipMetadata];
  v18 = [v16 copyClipMetadata:v17];
  v19 = [(ATXHeroData *)self poiCategory];
  v20 = [(ATXHeroData *)self poiMuid];
  v21 = [(ATXHeroData *)v23 initWithPredictedAdamId:v4 bundleId:v5 latitude:v10 longitude:v11 radiusInMeters:v12 rank:v15 isTouristApp:v7 score:v9 urlHash:v14 clipMetadata:v18 poiCategory:v19 poiMuid:v20];

  return v21;
}

+ (id)copyClipMetadata:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:0];
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isClipMetadataEqual:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 clipBundleID];
  v8 = [v6 clipBundleID];
  if (v7 == v8)
  {
    v10 = [v5 clipURL];
    v11 = [v6 clipURL];
    v9 = v10 == v11;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initWithProto:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0(&dword_252300000, MEMORY[0x277D86220], v2, "%@: tried to initialize with an incompatible proto", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithProto:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_252300000, MEMORY[0x277D86220], a3, "Could not de-serialize clip metadata from recently engaged protobufs: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)proto
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_252300000, MEMORY[0x277D86220], a3, "Could not serialize clip metadata via protobufs: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end