@interface BMAskToBuyEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMAskToBuyEvent)initWithProto:(id)a3;
- (BMAskToBuyEvent)initWithProtoData:(id)a3;
- (BMAskToBuyEvent)initWithRequestID:(id)a3 status:(int)a4 eventTime:(double)a5 userID:(id)a6 actionUserID:(id)a7 itemTitle:(id)a8 itemDescription:(id)a9 itemLocalizedPrice:(id)a10 thumbnailPath:(id)a11 ageRating:(id)a12 starRating:(id)a13 productType:(id)a14 isActionUserDevice:(BOOL)a15 storeLink:(id)a16;
- (BOOL)isEqual:(id)a3;
- (BOOL)validNonOptionalProperty:(id)a3 propertyName:(id)a4;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMAskToBuyEvent

- (BOOL)validNonOptionalProperty:(id)a3 propertyName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMAskToBuyEvent validNonOptionalProperty:propertyName:];
    }

    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [v5 stringByTrimmingCharactersInSet:v7];
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

- (BMAskToBuyEvent)initWithRequestID:(id)a3 status:(int)a4 eventTime:(double)a5 userID:(id)a6 actionUserID:(id)a7 itemTitle:(id)a8 itemDescription:(id)a9 itemLocalizedPrice:(id)a10 thumbnailPath:(id)a11 ageRating:(id)a12 starRating:(id)a13 productType:(id)a14 isActionUserDevice:(BOOL)a15 storeLink:(id)a16
{
  v34 = a3;
  v30 = a6;
  v43 = a6;
  v32 = a7;
  v36 = a7;
  v41 = a8;
  v39 = a9;
  v40 = a10;
  v38 = a11;
  v42 = a12;
  v37 = a13;
  v35 = a14;
  v21 = a16;
  v44.receiver = self;
  v44.super_class = BMAskToBuyEvent;
  v22 = [(BMEventBase *)&v44 init];
  v23 = v22;
  if (!v22)
  {
    v24 = v34;
LABEL_19:
    v27 = v23;
    goto LABEL_20;
  }

  v24 = v34;
  if ([(BMAskToBuyEvent *)v22 validNonOptionalProperty:v34 propertyName:@"requestID"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:v43 propertyName:@"userID"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:v42 propertyName:@"ageRating"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:v41 propertyName:@"itemTitle"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:v40 propertyName:@"localizedPrice"]&& [(BMAskToBuyEvent *)v23 validNonOptionalProperty:v38 propertyName:@"thumbnailPath"])
  {
    if (!v39)
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [BMAskToBuyEvent initWithRequestID:v25 status:? eventTime:? userID:? actionUserID:? itemTitle:? itemDescription:? itemLocalizedPrice:? thumbnailPath:? ageRating:? starRating:? productType:? isActionUserDevice:? storeLink:?];
      }

      v39 = &stru_1EF2B2408;
    }

    if (!v37)
    {
      v26 = __biome_log_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [BMAskToBuyEvent initWithRequestID:status:eventTime:userID:actionUserID:itemTitle:itemDescription:itemLocalizedPrice:thumbnailPath:ageRating:starRating:productType:isActionUserDevice:storeLink:];
      }
    }

    objc_storeStrong(&v23->_requestID, a3);
    v23->_status = a4;
    v23->_eventTime = a5;
    objc_storeStrong(&v23->_userID, v30);
    objc_storeStrong(&v23->_requestID, a3);
    objc_storeStrong(&v23->_actionUserID, v32);
    objc_storeStrong(&v23->_itemTitle, a8);
    objc_storeStrong(&v23->_itemDescription, v39);
    objc_storeStrong(&v23->_thumbnailPath, a11);
    objc_storeStrong(&v23->_itemLocalizedPrice, a10);
    objc_storeStrong(&v23->_itemAgeRating, a12);
    objc_storeStrong(&v23->_itemStarRating, a13);
    objc_storeStrong(&v23->_productType, a14);
    v23->_isActionUserDevice = a15;
    objc_storeStrong(&v23->_storeLink, a16);
    v24 = v34;
    goto LABEL_19;
  }

  v27 = 0;
LABEL_20:

  return v27;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 - 3 > 0xFFFFFFFD)
  {
    v8 = [[a1 alloc] initWithProtoData:v6];
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
  v2 = [(BMAskToBuyEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMAskToBuyEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBAskToBuyEvent alloc] initWithData:v4];

    self = [(BMAskToBuyEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BMAskToBuyEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_10:
    v15 = 0;
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

  v5 = v4;
  v6 = [v5 status];
  if (v6 - 1 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v25 = v7;
  v27 = [v5 requestID];
  [v5 eventTime];
  v9 = v8;
  v26 = [v5 userID];
  v24 = [v5 actionUserID];
  v23 = [v5 itemTitle];
  v22 = [v5 itemDescription];
  v21 = [v5 itemLocalizedPrice];
  v20 = [v5 thumbnailPath];
  v19 = [v5 ageRating];
  v10 = MEMORY[0x1E696AD98];
  [v5 starRating];
  v11 = [v10 numberWithFloat:?];
  v12 = [v5 productType];
  v13 = [v5 isActionUserDevice];
  v14 = [v5 storeLink];

  LOBYTE(v18) = v13;
  self = [(BMAskToBuyEvent *)self initWithRequestID:v27 status:v25 eventTime:v26 userID:v24 actionUserID:v23 itemTitle:v22 itemDescription:v9 itemLocalizedPrice:v21 thumbnailPath:v20 ageRating:v19 starRating:v11 productType:v12 isActionUserDevice:v18 storeLink:v14];

  v15 = self;
LABEL_11:

  return v15;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_requestID forKeyedSubscript:@"requestID"];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_status];
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTime];
  [v3 setObject:v5 forKeyedSubscript:@"eventTime"];

  [v3 setObject:self->_itemTitle forKeyedSubscript:@"itemTitle"];
  [v3 setObject:self->_itemDescription forKeyedSubscript:@"itemDescription"];
  [v3 setObject:self->_thumbnailPath forKeyedSubscript:@"thumbnailPath"];
  [v3 setObject:self->_itemLocalizedPrice forKeyedSubscript:@"itemLocalizedPrice"];
  [v3 setObject:self->_userID forKeyedSubscript:@"userID"];
  [v3 setObject:self->_actionUserID forKeyedSubscript:@"actionUserID"];
  [v3 setObject:self->_itemStarRating forKeyedSubscript:@"starRating"];
  [v3 setObject:self->_itemAgeRating forKeyedSubscript:@"ageRating"];
  [v3 setObject:self->_productType forKeyedSubscript:@"productType"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActionUserDevice];
  [v3 setObject:v6 forKeyedSubscript:@"isActionUserDevice"];

  [v3 setObject:self->_storeLink forKeyedSubscript:@"storeLink"];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMAskToBuyEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = MEMORY[0x1E696AD98];
    [(BMAskToBuyEvent *)self eventTime];
    v7 = [v6 numberWithDouble:?];
    v8 = [v7 longValue];

    v9 = MEMORY[0x1E696AD98];
    [v5 eventTime];
    v10 = [v9 numberWithDouble:?];
    v11 = [v10 longValue];

    v12 = [(BMAskToBuyEvent *)self requestID];
    v13 = [v5 requestID];
    v14 = [v12 isEqualToString:v13];

    LODWORD(v12) = [(BMAskToBuyEvent *)self status];
    if (v12 == [v5 status])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 == v11)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [(BMAskToBuyEvent *)self userID];
    v18 = [v5 userID];
    v19 = [v17 isEqualToString:v18];

    v20 = [(BMAskToBuyEvent *)self actionUserID];
    if (v20)
    {
      v21 = [(BMAskToBuyEvent *)self actionUserID];
    }

    else
    {
      v21 = @"___";
    }

    v23 = v16 & v19;

    v24 = [v5 actionUserID];
    if (v24)
    {
      v25 = [v5 actionUserID];
    }

    else
    {
      v25 = @"___";
    }

    v26 = [(__CFString *)v21 isEqualToString:v25];
    v27 = [(BMAskToBuyEvent *)self itemAgeRating];
    v28 = [v5 itemAgeRating];
    v29 = v23 & v26 & [v27 isEqualToString:v28];

    v30 = MEMORY[0x1E696AD98];
    v31 = [(BMAskToBuyEvent *)self itemStarRating];
    [v31 floatValue];
    v33 = [v30 numberWithInteger:(v32 * 100.0)];
    v34 = [v33 longValue];

    v35 = MEMORY[0x1E696AD98];
    v36 = [v5 itemStarRating];
    [v36 floatValue];
    v38 = [v35 numberWithInteger:(v37 * 100.0)];
    v39 = [v38 longValue];

    if (v34 == v39)
    {
      v40 = v29;
    }

    else
    {
      v40 = 0;
    }

    v41 = [(BMAskToBuyEvent *)self itemAgeRating];
    v42 = [v5 itemAgeRating];
    v43 = [v41 isEqualToString:v42];

    v44 = [(BMAskToBuyEvent *)self itemTitle];
    v45 = [v5 itemTitle];
    v46 = v43 & [v44 isEqualToString:v45];

    v47 = [(BMAskToBuyEvent *)self itemDescription];
    v48 = [v5 itemDescription];
    v49 = v46 & [v47 isEqualToString:v48];

    v50 = [(BMAskToBuyEvent *)self itemLocalizedPrice];
    v51 = [v5 itemLocalizedPrice];
    v52 = v49 & [v50 isEqualToString:v51];

    v53 = [(BMAskToBuyEvent *)self thumbnailPath];
    v54 = [v5 thumbnailPath];
    v55 = v52 & [v53 isEqualToString:v54];

    v56 = [(BMAskToBuyEvent *)self productType];
    v57 = [v5 productType];
    v58 = v55 & [v56 isEqualToString:v57];

    LODWORD(v56) = [(BMAskToBuyEvent *)self isActionUserDevice];
    v59 = v58 & (v56 ^ [v5 isActionUserDevice] ^ 1);
    v60 = [(BMAskToBuyEvent *)self storeLink];
    if (v60)
    {
      v61 = [(BMAskToBuyEvent *)self storeLink];
    }

    else
    {
      v61 = @"___";
    }

    v62 = v40 & v59;

    v63 = [v5 storeLink];
    if (v63)
    {
      v64 = [v5 storeLink];
    }

    else
    {
      v64 = @"___";
    }

    v22 = v62 & [(__CFString *)v61 isEqualToString:v64];
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22;
}

@end