@interface BMAskToBuyEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMAskToBuyEvent)initWithProto:(id)proto;
- (BMAskToBuyEvent)initWithProtoData:(id)data;
- (BMAskToBuyEvent)initWithRequestID:(id)d status:(int)status eventTime:(double)time userID:(id)iD actionUserID:(id)userID itemTitle:(id)title itemDescription:(id)description itemLocalizedPrice:(id)self0 thumbnailPath:(id)self1 ageRating:(id)self2 starRating:(id)self3 productType:(id)self4 isActionUserDevice:(BOOL)self5 storeLink:(id)self6;
- (BOOL)isEqual:(id)equal;
- (BOOL)validNonOptionalProperty:(id)property propertyName:(id)name;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMAskToBuyEvent

- (BOOL)validNonOptionalProperty:(id)property propertyName:(id)name
{
  propertyCopy = property;
  nameCopy = name;
  if (!propertyCopy)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMAskToBuyEvent validNonOptionalProperty:propertyName:];
    }

    goto LABEL_8;
  }

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [propertyCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v9 = [v8 length];

  if (!v9)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMAskToBuyEvent validNonOptionalProperty:propertyName:];
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v10 = 1;
LABEL_9:

  return v10;
}

- (BMAskToBuyEvent)initWithRequestID:(id)d status:(int)status eventTime:(double)time userID:(id)iD actionUserID:(id)userID itemTitle:(id)title itemDescription:(id)description itemLocalizedPrice:(id)self0 thumbnailPath:(id)self1 ageRating:(id)self2 starRating:(id)self3 productType:(id)self4 isActionUserDevice:(BOOL)self5 storeLink:(id)self6
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  userIDCopy = userID;
  userIDCopy2 = userID;
  titleCopy = title;
  descriptionCopy = description;
  priceCopy = price;
  pathCopy = path;
  ratingCopy = rating;
  starRatingCopy = starRating;
  typeCopy = type;
  linkCopy = link;
  v44.receiver = self;
  v44.super_class = BMAskToBuyEvent;
  v22 = [(BMEventBase *)&v44 init];
  v23 = v22;
  if (!v22)
  {
    v24 = dCopy;
LABEL_19:
    v27 = v23;
    goto LABEL_20;
  }

  v24 = dCopy;
  if ([(BMAskToBuyEvent *)v22 validNonOptionalProperty:dCopy propertyName:@"requestID"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:iDCopy2 propertyName:@"userID"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:ratingCopy propertyName:@"ageRating"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:titleCopy propertyName:@"itemTitle"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:priceCopy propertyName:@"localizedPrice"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:pathCopy propertyName:@"thumbnailPath"])
  {
    if (!descriptionCopy)
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [BMAskToBuyEvent initWithRequestID:v25 status:? eventTime:? userID:? actionUserID:? itemTitle:? itemDescription:? itemLocalizedPrice:? thumbnailPath:? ageRating:? starRating:? productType:? isActionUserDevice:? storeLink:?];
      }

      descriptionCopy = &stru_1EF2B2408;
    }

    if (!starRatingCopy)
    {
      v26 = __biome_log_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [BMAskToBuyEvent initWithRequestID:status:eventTime:userID:actionUserID:itemTitle:itemDescription:itemLocalizedPrice:thumbnailPath:ageRating:starRating:productType:isActionUserDevice:storeLink:];
      }
    }

    objc_storeStrong(&v23->_requestID, d);
    v23->_status = status;
    v23->_eventTime = time;
    objc_storeStrong(&v23->_userID, iDCopy);
    objc_storeStrong(&v23->_requestID, d);
    objc_storeStrong(&v23->_actionUserID, userIDCopy);
    objc_storeStrong(&v23->_itemTitle, title);
    objc_storeStrong(&v23->_itemDescription, descriptionCopy);
    objc_storeStrong(&v23->_thumbnailPath, path);
    objc_storeStrong(&v23->_itemLocalizedPrice, price);
    objc_storeStrong(&v23->_itemAgeRating, rating);
    objc_storeStrong(&v23->_itemStarRating, starRating);
    objc_storeStrong(&v23->_productType, type);
    v23->_isActionUserDevice = device;
    objc_storeStrong(&v23->_storeLink, link);
    v24 = dCopy;
    goto LABEL_19;
  }

  v27 = 0;
LABEL_20:

  return v27;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version - 3 > 0xFFFFFFFD)
  {
    v8 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[BMAskToBuyEvent eventWithData:dataVersion:];
    }

    v8 = 0;
  }

  return v8;
}

- (id)encodeAsProto
{
  proto = [(BMAskToBuyEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMAskToBuyEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBAskToBuyEvent alloc] initWithData:dataCopy];

    self = [(BMAskToBuyEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMAskToBuyEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(BMAskToBuyEvent *)self initWithProto:v16];
    }

    goto LABEL_10;
  }

  v5 = protoCopy;
  status = [v5 status];
  if (status - 1 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = status;
  }

  v25 = v7;
  requestID = [v5 requestID];
  [v5 eventTime];
  v9 = v8;
  userID = [v5 userID];
  actionUserID = [v5 actionUserID];
  itemTitle = [v5 itemTitle];
  itemDescription = [v5 itemDescription];
  itemLocalizedPrice = [v5 itemLocalizedPrice];
  thumbnailPath = [v5 thumbnailPath];
  ageRating = [v5 ageRating];
  v10 = MEMORY[0x1E696AD98];
  [v5 starRating];
  v11 = [v10 numberWithFloat:?];
  productType = [v5 productType];
  isActionUserDevice = [v5 isActionUserDevice];
  storeLink = [v5 storeLink];

  LOBYTE(v18) = isActionUserDevice;
  self = [(BMAskToBuyEvent *)self initWithRequestID:requestID status:v25 eventTime:userID userID:actionUserID actionUserID:itemTitle itemTitle:itemDescription itemDescription:v9 itemLocalizedPrice:itemLocalizedPrice thumbnailPath:thumbnailPath ageRating:ageRating starRating:v11 productType:productType isActionUserDevice:v18 storeLink:storeLink];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (id)proto
{
  status = self->_status;
  if (status - 1 >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = status;
  }

  v5 = objc_opt_new();
  [v5 setRequestID:self->_requestID];
  [v5 setStatus:v4];
  [v5 setEventTime:self->_eventTime];
  [v5 setItemTitle:self->_itemTitle];
  [v5 setItemDescription:self->_itemDescription];
  [v5 setItemLocalizedPrice:self->_itemLocalizedPrice];
  [v5 setThumbnailPath:self->_thumbnailPath];
  [v5 setUserID:self->_userID];
  [v5 setActionUserID:self->_actionUserID];
  [(NSNumber *)self->_itemStarRating floatValue];
  [v5 setStarRating:?];
  [v5 setAgeRating:self->_itemAgeRating];
  [v5 setProductType:self->_productType];
  [v5 setIsActionUserDevice:self->_isActionUserDevice];
  [v5 setStoreLink:self->_storeLink];

  return v5;
}

- (id)jsonDict
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_requestID forKeyedSubscript:@"requestID"];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_status];
  [dictionary setObject:v4 forKeyedSubscript:@"status"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTime];
  [dictionary setObject:v5 forKeyedSubscript:@"eventTime"];

  [dictionary setObject:self->_itemTitle forKeyedSubscript:@"itemTitle"];
  [dictionary setObject:self->_itemDescription forKeyedSubscript:@"itemDescription"];
  [dictionary setObject:self->_thumbnailPath forKeyedSubscript:@"thumbnailPath"];
  [dictionary setObject:self->_itemLocalizedPrice forKeyedSubscript:@"itemLocalizedPrice"];
  [dictionary setObject:self->_userID forKeyedSubscript:@"userID"];
  [dictionary setObject:self->_actionUserID forKeyedSubscript:@"actionUserID"];
  [dictionary setObject:self->_itemStarRating forKeyedSubscript:@"starRating"];
  [dictionary setObject:self->_itemAgeRating forKeyedSubscript:@"ageRating"];
  [dictionary setObject:self->_productType forKeyedSubscript:@"productType"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActionUserDevice];
  [dictionary setObject:v6 forKeyedSubscript:@"isActionUserDevice"];

  [dictionary setObject:self->_storeLink forKeyedSubscript:@"storeLink"];

  return dictionary;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMAskToBuyEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMAskToBuyEvent json];
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = MEMORY[0x1E696AD98];
    [(BMAskToBuyEvent *)self eventTime];
    v7 = [v6 numberWithDouble:?];
    longValue = [v7 longValue];

    v9 = MEMORY[0x1E696AD98];
    [v5 eventTime];
    v10 = [v9 numberWithDouble:?];
    longValue2 = [v10 longValue];

    requestID = [(BMAskToBuyEvent *)self requestID];
    requestID2 = [v5 requestID];
    v14 = [requestID isEqualToString:requestID2];

    LODWORD(requestID) = [(BMAskToBuyEvent *)self status];
    if (requestID == [v5 status])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (longValue == longValue2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    userID = [(BMAskToBuyEvent *)self userID];
    userID2 = [v5 userID];
    v19 = [userID isEqualToString:userID2];

    actionUserID = [(BMAskToBuyEvent *)self actionUserID];
    if (actionUserID)
    {
      actionUserID2 = [(BMAskToBuyEvent *)self actionUserID];
    }

    else
    {
      actionUserID2 = @"___";
    }

    v23 = v16 & v19;

    actionUserID3 = [v5 actionUserID];
    if (actionUserID3)
    {
      actionUserID4 = [v5 actionUserID];
    }

    else
    {
      actionUserID4 = @"___";
    }

    v26 = [(__CFString *)actionUserID2 isEqualToString:actionUserID4];
    itemAgeRating = [(BMAskToBuyEvent *)self itemAgeRating];
    itemAgeRating2 = [v5 itemAgeRating];
    v29 = v23 & v26 & [itemAgeRating isEqualToString:itemAgeRating2];

    v30 = MEMORY[0x1E696AD98];
    itemStarRating = [(BMAskToBuyEvent *)self itemStarRating];
    [itemStarRating floatValue];
    v33 = [v30 numberWithInteger:(v32 * 100.0)];
    longValue3 = [v33 longValue];

    v35 = MEMORY[0x1E696AD98];
    itemStarRating2 = [v5 itemStarRating];
    [itemStarRating2 floatValue];
    v38 = [v35 numberWithInteger:(v37 * 100.0)];
    longValue4 = [v38 longValue];

    if (longValue3 == longValue4)
    {
      v40 = v29;
    }

    else
    {
      v40 = 0;
    }

    itemAgeRating3 = [(BMAskToBuyEvent *)self itemAgeRating];
    itemAgeRating4 = [v5 itemAgeRating];
    v43 = [itemAgeRating3 isEqualToString:itemAgeRating4];

    itemTitle = [(BMAskToBuyEvent *)self itemTitle];
    itemTitle2 = [v5 itemTitle];
    v46 = v43 & [itemTitle isEqualToString:itemTitle2];

    itemDescription = [(BMAskToBuyEvent *)self itemDescription];
    itemDescription2 = [v5 itemDescription];
    v49 = v46 & [itemDescription isEqualToString:itemDescription2];

    itemLocalizedPrice = [(BMAskToBuyEvent *)self itemLocalizedPrice];
    itemLocalizedPrice2 = [v5 itemLocalizedPrice];
    v52 = v49 & [itemLocalizedPrice isEqualToString:itemLocalizedPrice2];

    thumbnailPath = [(BMAskToBuyEvent *)self thumbnailPath];
    thumbnailPath2 = [v5 thumbnailPath];
    v55 = v52 & [thumbnailPath isEqualToString:thumbnailPath2];

    productType = [(BMAskToBuyEvent *)self productType];
    productType2 = [v5 productType];
    v58 = v55 & [productType isEqualToString:productType2];

    LODWORD(productType) = [(BMAskToBuyEvent *)self isActionUserDevice];
    v59 = v58 & (productType ^ [v5 isActionUserDevice] ^ 1);
    storeLink = [(BMAskToBuyEvent *)self storeLink];
    if (storeLink)
    {
      storeLink2 = [(BMAskToBuyEvent *)self storeLink];
    }

    else
    {
      storeLink2 = @"___";
    }

    v62 = v40 & v59;

    storeLink3 = [v5 storeLink];
    if (storeLink3)
    {
      storeLink4 = [v5 storeLink];
    }

    else
    {
      storeLink4 = @"___";
    }

    v22 = v62 & [(__CFString *)storeLink2 isEqualToString:storeLink4];
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22;
}

@end