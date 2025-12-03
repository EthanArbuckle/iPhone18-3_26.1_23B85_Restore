@interface ATXHeroData
+ (BOOL)isClipMetadataEqual:(id)equal other:(id)other;
+ (id)copyClipMetadata:(id)metadata;
- (ATXHeroData)initWithCoder:(id)coder;
- (ATXHeroData)initWithPredictedAdamId:(unint64_t)id bundleId:(id)bundleId latitude:(double)latitude longitude:(double)longitude radiusInMeters:(unint64_t)meters rank:(unint64_t)rank isTouristApp:(BOOL)app score:(double)self0 urlHash:(id)self1 clipMetadata:(id)self2 poiCategory:(id)self3 poiMuid:(id)self4;
- (ATXHeroData)initWithProto:(id)proto;
- (ATXHeroData)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)l key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)proto;
@end

@implementation ATXHeroData

- (ATXHeroData)initWithPredictedAdamId:(unint64_t)id bundleId:(id)bundleId latitude:(double)latitude longitude:(double)longitude radiusInMeters:(unint64_t)meters rank:(unint64_t)rank isTouristApp:(BOOL)app score:(double)self0 urlHash:(id)self1 clipMetadata:(id)self2 poiCategory:(id)self3 poiMuid:(id)self4
{
  bundleIdCopy = bundleId;
  hashCopy = hash;
  metadataCopy = metadata;
  categoryCopy = category;
  muidCopy = muid;
  v35.receiver = self;
  v35.super_class = ATXHeroData;
  v25 = [(ATXHeroData *)&v35 init];
  v26 = v25;
  if (v25)
  {
    v25->_adamId = id;
    v27 = [bundleIdCopy copy];
    bundleId = v26->_bundleId;
    v26->_bundleId = v27;

    v26->_latitude = latitude;
    v26->_longitude = longitude;
    v26->_radiusInMeters = meters;
    v26->_rank = rank;
    v26->_isTouristApp = app;
    v26->_score = score;
    v29 = [hashCopy copy];
    urlHash = v26->_urlHash;
    v26->_urlHash = v29;

    objc_storeStrong(&v26->_clipMetadata, metadata);
    v26->_latitudeAtPredictionTime = 0.0;
    v26->_longitudeAtPredictionTime = 0.0;
    objc_storeStrong(&v26->_poiCategory, category);
    objc_storeStrong(&v26->_poiMuid, muid);
  }

  return v26;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)l key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!l)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (fordouble == 0.0)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  latitude = self->_latitude;
  coderCopy = coder;
  [coderCopy encodeDouble:@"latitude" forKey:latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"latitudeAtPrediction" forKey:self->_latitudeAtPredictionTime];
  [coderCopy encodeDouble:@"longitudeAtPrediction" forKey:self->_longitudeAtPredictionTime];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_radiusInMeters];
  [coderCopy encodeObject:v5 forKey:@"radius"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_rank];
  [coderCopy encodeObject:v6 forKey:@"rank"];

  [coderCopy encodeBool:self->_isTouristApp forKey:@"isTouristApp"];
  [coderCopy encodeObject:self->_bundleId forKey:@"bundleId"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_adamId];
  [coderCopy encodeObject:v7 forKey:@"adamId"];

  [coderCopy encodeDouble:@"score" forKey:self->_score];
  [coderCopy encodeObject:self->_urlHash forKey:@"urlHash"];
  [coderCopy encodeObject:self->_clipMetadata forKey:@"clipMetadata"];
  [coderCopy encodeObject:self->_poiCategory forKey:@"poiCategory"];
  [coderCopy encodeObject:self->_poiMuid forKey:@"poiMuid"];
}

- (ATXHeroData)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"latitude"];
  v6 = v5;
  v39 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"latitude" key:coderCopy coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  [coderCopy decodeDoubleForKey:@"longitude"];
  v8 = v7;
  v38 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"longitude" key:coderCopy coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  [coderCopy decodeDoubleForKey:@"latitudeAtPrediction"];
  v10 = v9;
  v37 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"latitudeAtPrediction" key:coderCopy coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  [coderCopy decodeDoubleForKey:@"longitudeAtPrediction"];
  v12 = v11;
  v36 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"longitudeAtPrediction" key:coderCopy coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"radius"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v13 key:@"radius" coder:coderCopy errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:70];

    v13 = v14;
  }

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rank"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v15 key:@"rank" coder:coderCopy errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];

    v15 = v16;
  }

  v33 = [coderCopy decodeBoolForKey:@"isTouristApp"];
  v32 = [ATXHeroData checkAndReportDecodingFailureIfNeededForBOOL:"checkAndReportDecodingFailureIfNeededForBOOL:key:coder:errorDomain:errorCode:" key:? coder:? errorDomain:? errorCode:?];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v17 key:@"bundleId" coder:coderCopy errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {
    v18 = &stru_28647D6B8;

    v17 = v18;
  }

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adamId"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v19 key:@"adamId" coder:coderCopy errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:-1];

    v34 = v20;
  }

  else
  {
    v34 = v19;
  }

  [coderCopy decodeDoubleForKey:@"score"];
  v22 = v21;
  v30 = [(ATXHeroData *)self checkAndReportDecodingFailureIfNeededFordouble:@"score" key:coderCopy coder:@"com.apple.proactive.hero" errorDomain:-1 errorCode:?];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlHash"];
  v35 = v17;
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v23 key:@"urlHash" coder:coderCopy errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {

    v23 = 0;
  }

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipMetadata"];
  v31 = v23;
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v24 key:@"clipMetadata" coder:coderCopy errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {

    v24 = 0;
  }

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v25 key:@"poiCategory" coder:coderCopy errorDomain:@"com.apple.proactive.hero" errorCode:-1])
  {

    v25 = 0;
  }

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poiMuid"];
  if ([(ATXHeroData *)self checkAndReportDecodingFailureIfNeededForid:v26 key:@"poiMuid" coder:coderCopy errorDomain:@"com.apple.proactive.hero" errorCode:-1])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v7 = equalCopy;
    if (self == v7)
    {
      v21 = 1;
LABEL_39:

      goto LABEL_40;
    }

    adamId = [(ATXHeroData *)self adamId];
    adamId2 = [(ATXHeroData *)v7 adamId];
    isTouristApp = [(ATXHeroData *)self isTouristApp];
    isTouristApp2 = [(ATXHeroData *)v7 isTouristApp];
    [(ATXHeroData *)self latitude];
    v11 = v10;
    [(ATXHeroData *)v7 latitude];
    v13 = v12;
    [(ATXHeroData *)self longitude];
    v15 = v14;
    [(ATXHeroData *)v7 longitude];
    v17 = v16;
    urlHash = [(ATXHeroData *)self urlHash];
    if (urlHash || ([(ATXHeroData *)v7 urlHash], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      urlHash2 = [(ATXHeroData *)v7 urlHash];
      if (urlHash2)
      {
        urlHash3 = [(ATXHeroData *)self urlHash];
        urlHash4 = [(ATXHeroData *)v7 urlHash];
        v44 = [urlHash3 isEqualToString:urlHash4];
      }

      else
      {
        v44 = 0;
      }

      if (urlHash)
      {
LABEL_14:

        rank = [(ATXHeroData *)self rank];
        rank2 = [(ATXHeroData *)v7 rank];
        poiCategory = [(ATXHeroData *)self poiCategory];
        if (poiCategory || ([(ATXHeroData *)v7 poiCategory], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          poiCategory2 = [(ATXHeroData *)v7 poiCategory];
          if (poiCategory2)
          {
            [(ATXHeroData *)self poiCategory];
            urlHash2 = rank;
            v25 = isTouristApp;
            v27 = v26 = isTouristApp2;
            poiCategory3 = [(ATXHeroData *)v7 poiCategory];
            v42 = [v27 isEqualToString:poiCategory3];

            isTouristApp2 = v26;
            isTouristApp = v25;
            rank = urlHash2;
          }

          else
          {
            v42 = 0;
          }

          if (poiCategory)
          {
LABEL_23:
            v29 = isTouristApp ^ isTouristApp2;
            v30 = vabdd_f64(v11, v13);
            v31 = vabdd_f64(v15, v17);

            poiMuid = [(ATXHeroData *)self poiMuid];
            if (poiMuid || ([(ATXHeroData *)v7 poiMuid], (urlHash2 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              poiMuid2 = [(ATXHeroData *)v7 poiMuid];
              if (poiMuid2)
              {
                poiMuid3 = [(ATXHeroData *)self poiMuid];
                poiMuid4 = [(ATXHeroData *)v7 poiMuid];
                v36 = [poiMuid3 isEqualToNumber:poiMuid4];
              }

              else
              {
                v36 = 0;
              }

              if (poiMuid)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v36 = 1;
            }

LABEL_32:
            v37 = (adamId == adamId2) & ~v29;
            if (v30 >= 2.22044605e-16)
            {
              v37 = 0;
            }

            if (v31 >= 2.22044605e-16)
            {
              v37 = 0;
            }

            v38 = v37 & v44;
            if (rank != rank2)
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
  adamId = [(ATXHeroData *)self adamId];
  bundleId = [(ATXHeroData *)self bundleId];
  urlHash = [(ATXHeroData *)self urlHash];
  poiCategory = [(ATXHeroData *)self poiCategory];
  [(ATXHeroData *)self latitude];
  v9 = v8;
  [(ATXHeroData *)self longitude];
  v11 = v10;
  [(ATXHeroData *)self score];
  v13 = v12;
  rank = [(ATXHeroData *)self rank];
  radiusInMeters = [(ATXHeroData *)self radiusInMeters];
  poiMuid = [(ATXHeroData *)self poiMuid];
  v17 = [v3 stringWithFormat:@"HeroApp with adamId: %ld bundleId: %@ urlHash: %@ poiCategory: %@ latitude: %f longitude: %f score: %lf rank: %lu radius: %lu poiMuid: %@", adamId, bundleId, urlHash, poiCategory, v9, v11, v13, rank, radiusInMeters, poiMuid];

  return v17;
}

- (unint64_t)hash
{
  adamId = [(ATXHeroData *)self adamId];
  urlHash = [(ATXHeroData *)self urlHash];
  v5 = [urlHash hash] - adamId + 32 * adamId;

  poiCategory = [(ATXHeroData *)self poiCategory];
  v7 = [poiCategory hash] - v5 + 32 * v5;

  poiMuid = [(ATXHeroData *)self poiMuid];
  v9 = [poiMuid hash] - v7 + 32 * v7;

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

- (ATXHeroData)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBHeroAppPrediction alloc] initWithData:dataCopy];

    self = [(ATXHeroData *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXHeroData)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_10:
    selfCopy = 0;
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

  v5 = protoCopy;
  clipMetadata = [v5 clipMetadata];
  v7 = [clipMetadata length];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_opt_class();
    clipMetadata2 = [v5 clipMetadata];
    v37 = 0;
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:clipMetadata2 error:&v37];
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

  adamId = [v5 adamId];
  bundleId = [v5 bundleId];
  [v5 latitude];
  v25 = v24;
  [v5 longitude];
  v27 = v26;
  radius = [v5 radius];
  rank = [v5 rank];
  isTouristApp = [v5 isTouristApp];
  [v5 score];
  v32 = v31;
  urlHash = [v5 urlHash];
  self = [(ATXHeroData *)self initWithPredictedAdamId:adamId bundleId:bundleId latitude:radius longitude:rank radiusInMeters:isTouristApp rank:urlHash isTouristApp:v25 score:v27 urlHash:v32 clipMetadata:v12];

  [v5 latitudeAtPredictionTime];
  [(ATXHeroData *)self setLatitudeAtPredictionTime:?];
  [v5 longitudeAtPredictionTime];
  [(ATXHeroData *)self setLongitudeAtPredictionTime:?];
  poiCategory = [v5 poiCategory];
  [(ATXHeroData *)self setPoiCategory:poiCategory];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "poiMuid")}];
  [(ATXHeroData *)self setPoiMuid:v35];

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  bundleId = [(ATXHeroData *)self bundleId];
  [v3 setBundleId:bundleId];

  [(ATXHeroData *)self latitude];
  [v3 setLatitude:?];
  [(ATXHeroData *)self longitude];
  [v3 setLongitude:?];
  [v3 setRadius:{-[ATXHeroData radiusInMeters](self, "radiusInMeters")}];
  [v3 setRank:{-[ATXHeroData rank](self, "rank")}];
  [v3 setAdamId:{-[ATXHeroData adamId](self, "adamId")}];
  urlHash = [(ATXHeroData *)self urlHash];
  [v3 setUrlHash:urlHash];

  [(ATXHeroData *)self score];
  [v3 setScore:?];
  [v3 setIsTouristApp:{-[ATXHeroData isTouristApp](self, "isTouristApp")}];
  [(ATXHeroData *)self latitudeAtPredictionTime];
  [v3 setLatitudeAtPredictionTime:?];
  [(ATXHeroData *)self longitudeAtPredictionTime];
  [v3 setLongitudeAtPredictionTime:?];
  poiCategory = [(ATXHeroData *)self poiCategory];
  [v3 setPoiCategory:poiCategory];

  poiMuid = [(ATXHeroData *)self poiMuid];
  [v3 setPoiMuid:{objc_msgSend(poiMuid, "unsignedIntegerValue")}];

  clipMetadata = [(ATXHeroData *)self clipMetadata];

  if (clipMetadata)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = MEMORY[0x277CCAAB0];
    clipMetadata2 = [(ATXHeroData *)self clipMetadata];
    v22 = 0;
    v12 = [v10 archivedDataWithRootObject:clipMetadata2 requiringSecureCoding:1 error:&v22];
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
  proto = [(ATXHeroData *)self proto];
  data = [proto data];

  return data;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = [ATXHeroData allocWithZone:zone];
  adamId = [(ATXHeroData *)self adamId];
  bundleId = [(ATXHeroData *)self bundleId];
  [(ATXHeroData *)self latitude];
  v7 = v6;
  [(ATXHeroData *)self longitude];
  v9 = v8;
  radiusInMeters = [(ATXHeroData *)self radiusInMeters];
  rank = [(ATXHeroData *)self rank];
  isTouristApp = [(ATXHeroData *)self isTouristApp];
  [(ATXHeroData *)self score];
  v14 = v13;
  urlHash = [(ATXHeroData *)self urlHash];
  v16 = objc_opt_class();
  clipMetadata = [(ATXHeroData *)self clipMetadata];
  v18 = [v16 copyClipMetadata:clipMetadata];
  poiCategory = [(ATXHeroData *)self poiCategory];
  poiMuid = [(ATXHeroData *)self poiMuid];
  v21 = [(ATXHeroData *)v23 initWithPredictedAdamId:adamId bundleId:bundleId latitude:radiusInMeters longitude:rank radiusInMeters:isTouristApp rank:urlHash isTouristApp:v7 score:v9 urlHash:v14 clipMetadata:v18 poiCategory:poiCategory poiMuid:poiMuid];

  return v21;
}

+ (id)copyClipMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isClipMetadataEqual:(id)equal other:(id)other
{
  equalCopy = equal;
  otherCopy = other;
  clipBundleID = [equalCopy clipBundleID];
  clipBundleID2 = [otherCopy clipBundleID];
  if (clipBundleID == clipBundleID2)
  {
    clipURL = [equalCopy clipURL];
    clipURL2 = [otherCopy clipURL];
    v9 = clipURL == clipURL2;
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