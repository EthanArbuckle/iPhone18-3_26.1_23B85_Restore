@interface BMUserActivityMetadataEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMUserActivityMetadataEvent)initWithAbsoluteTimestamp:(double)a3 userActivityData:(id)a4 title:(id)a5 activityType:(id)a6 associatedBundleId:(id)a7 associatedURLString:(id)a8 modeIdentifier:(id)a9 topics:(id)a10 hasAssociatedImageRepresentation:(BOOL)a11 uuid:(id)a12;
- (BMUserActivityMetadataEvent)initWithProto:(id)a3;
- (BMUserActivityMetadataEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMUserActivityMetadataEvent

- (BMUserActivityMetadataEvent)initWithAbsoluteTimestamp:(double)a3 userActivityData:(id)a4 title:(id)a5 activityType:(id)a6 associatedBundleId:(id)a7 associatedURLString:(id)a8 modeIdentifier:(id)a9 topics:(id)a10 hasAssociatedImageRepresentation:(BOOL)a11 uuid:(id)a12
{
  v42 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a12;
  v43.receiver = self;
  v43.super_class = BMUserActivityMetadataEvent;
  v27 = [(BMUserActivityMetadataEvent *)&v43 init];
  v28 = v27;
  if (v27)
  {
    v27->_absoluteTimestamp = a3;
    objc_storeStrong(&v27->_userActivityData, a4);
    v29 = [v20 copy];
    title = v28->_title;
    v28->_title = v29;

    v31 = [v21 copy];
    activityType = v28->_activityType;
    v28->_activityType = v31;

    v33 = [v24 copy];
    modeIdentifier = v28->_modeIdentifier;
    v28->_modeIdentifier = v33;

    v35 = [v22 copy];
    associatedBundleId = v28->_associatedBundleId;
    v28->_associatedBundleId = v35;

    v37 = [v23 copy];
    associatedURLString = v28->_associatedURLString;
    v28->_associatedURLString = v37;

    objc_storeStrong(&v28->_topics, a10);
    v28->_hasAssociatedImageRepresentation = a11;
    v39 = [v26 copy];
    uuid = v28->_uuid;
    v28->_uuid = v39;
  }

  return v28;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BMUserActivityMetadataTopic eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v17[10] = *MEMORY[0x1E69E9840];
  v16[0] = @"absoluteTimestamp";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v17[0] = v3;
  v16[1] = @"userActivityDataLength";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSData length](self->_userActivityData, "length")}];
  title = self->_title;
  activityType = self->_activityType;
  v17[1] = v4;
  v17[2] = title;
  v16[2] = @"title";
  v16[3] = @"activityType";
  v7 = @"nil";
  modeIdentifier = self->_modeIdentifier;
  topics = self->_topics;
  if (!modeIdentifier)
  {
    modeIdentifier = @"nil";
  }

  v17[3] = activityType;
  v17[4] = modeIdentifier;
  v16[4] = @"modeIdentifier";
  v16[5] = @"associatedBundleId";
  associatedURLString = self->_associatedURLString;
  if (!associatedURLString)
  {
    associatedURLString = @"nil";
  }

  v17[5] = self->_associatedBundleId;
  v17[6] = associatedURLString;
  v16[6] = @"associatedURLString";
  v16[7] = @"topicIdentifiers";
  if (topics)
  {
    v7 = [(NSArray *)topics _pas_mappedArrayWithTransform:&__block_literal_global_0];
  }

  v17[7] = v7;
  v16[8] = @"hasAssociatedImageRepresentation";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAssociatedImageRepresentation];
  v16[9] = @"uuid";
  uuid = self->_uuid;
  v17[8] = v11;
  v17[9] = uuid;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:10];

  if (topics)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMUserActivityMetadataEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMUserActivityMetadataEvent json];
    }
  }

  return v4;
}

- (id)encodeAsProto
{
  v2 = [(BMUserActivityMetadataEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMUserActivityMetadataEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasAbsoluteTimestamp]&& [v5 hasUserActivityData]&& [v5 hasTitle]&& [v5 hasActivityType]&& [v5 hasAssociatedBundleId]&& ([v5 hasUuid]& 1) != 0)
      {
        [v5 absoluteTimestamp];
        v7 = v6;
        v21 = [v5 userActivityData];
        v19 = [v5 title];
        v8 = [v5 activityType];
        v18 = [v5 associatedBundleId];
        v9 = [v5 associatedURLString];
        v10 = [v5 modeIdentifier];
        v20 = [v5 topics];
        v11 = [v20 _pas_mappedArrayWithTransform:&__block_literal_global_154];
        v12 = [v5 hasAssociatedImageRepresentation];
        v13 = [v5 uuid];
        LOBYTE(v17) = v12;
        self = [(BMUserActivityMetadataEvent *)self initWithAbsoluteTimestamp:v21 userActivityData:v19 title:v8 activityType:v18 associatedBundleId:v9 associatedURLString:v10 modeIdentifier:v7 topics:v11 hasAssociatedImageRepresentation:v17 uuid:v13];

        v14 = self;
LABEL_17:

        goto LABEL_18;
      }

      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [BMUserActivityMetadataEvent initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(BMUserActivityMetadataEvent *)self initWithProto:v5];
      }
    }

    v14 = 0;
    goto LABEL_17;
  }

  v14 = 0;
LABEL_18:

  return v14;
}

BMUserActivityMetadataTopic *__45__BMUserActivityMetadataEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMUserActivityMetadataTopic alloc] initWithProto:v2];

  return v3;
}

- (BMUserActivityMetadataEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBUserActivityMetadataEvent alloc] initWithData:v4];

    self = [(BMUserActivityMetadataEvent *)self initWithProto:v5];
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
  v3 = objc_alloc_init(BMPBUserActivityMetadataEvent);
  [(BMPBUserActivityMetadataEvent *)v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  [(BMPBUserActivityMetadataEvent *)v3 setUserActivityData:self->_userActivityData];
  [(BMPBUserActivityMetadataEvent *)v3 setTitle:self->_title];
  [(BMPBUserActivityMetadataEvent *)v3 setActivityType:self->_activityType];
  [(BMPBUserActivityMetadataEvent *)v3 setAssociatedBundleId:self->_associatedBundleId];
  [(BMPBUserActivityMetadataEvent *)v3 setAssociatedURLString:self->_associatedURLString];
  [(BMPBUserActivityMetadataEvent *)v3 setModeIdentifier:self->_modeIdentifier];
  v4 = [(NSArray *)self->_topics _pas_mappedArrayWithTransform:&__block_literal_global_156];
  v5 = [v4 mutableCopy];
  [(BMPBUserActivityMetadataEvent *)v3 setTopics:v5];

  [(BMPBUserActivityMetadataEvent *)v3 setHasAssociatedImageRepresentation:self->_hasAssociatedImageRepresentation];
  [(BMPBUserActivityMetadataEvent *)v3 setUuid:self->_uuid];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_associatedBundleId hash]^ v3;
  return v4 ^ [(NSString *)self->_associatedURLString hash];
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v7 absoluteTimestamp];
    if (absoluteTimestamp != v9)
    {
      v14 = 0;
LABEL_77:

      goto LABEL_78;
    }

    userActivityData = self->_userActivityData;
    v11 = userActivityData;
    if (!userActivityData)
    {
      v12 = [v7 userActivityData];
      if (!v12)
      {
        v60 = 0;
        v13 = 0;
        goto LABEL_12;
      }

      v60 = v12;
      v11 = self->_userActivityData;
    }

    v3 = [v7 userActivityData];
    if (![(NSData *)v11 isEqualToData:v3])
    {

      v14 = 0;
      goto LABEL_75;
    }

    v13 = 1;
LABEL_12:
    title = self->_title;
    v16 = title;
    if (!title)
    {
      v17 = [v7 title];
      if (!v17)
      {
        v57 = 0;
        v59 = 0;
        goto LABEL_19;
      }

      v57 = v17;
      v16 = self->_title;
    }

    v4 = [v7 title];
    if (![(NSString *)v16 isEqualToString:v4])
    {
      v14 = 0;
      goto LABEL_71;
    }

    v59 = 1;
LABEL_19:
    activityType = self->_activityType;
    v19 = activityType;
    if (!activityType)
    {
      v20 = [v7 activityType];
      if (!v20)
      {
        v55 = 0;
        v56 = v13;
        v53 = 0;
        goto LABEL_26;
      }

      v53 = v20;
      v19 = self->_activityType;
    }

    v58 = [v7 activityType];
    if (![(NSString *)v19 isEqualToString:?])
    {
      v14 = 0;
      v21 = v59;
      goto LABEL_69;
    }

    v55 = 1;
    v56 = v13;
LABEL_26:
    associatedBundleId = self->_associatedBundleId;
    v23 = associatedBundleId;
    if (!associatedBundleId)
    {
      v24 = [v7 associatedBundleId];
      if (!v24)
      {
        v49 = 0;
        v52 = 0;
        goto LABEL_33;
      }

      v49 = v24;
      v23 = self->_associatedBundleId;
    }

    v54 = [v7 associatedBundleId];
    if (![(NSString *)v23 isEqualToString:?])
    {
      v14 = 0;
      v21 = v59;
      goto LABEL_65;
    }

    v52 = 1;
LABEL_33:
    associatedURLString = self->_associatedURLString;
    v51 = associatedURLString;
    if (!associatedURLString)
    {
      v26 = [v7 associatedURLString];
      if (!v26)
      {
        v46 = 0;
        v47 = 0;
        goto LABEL_40;
      }

      v46 = v26;
      associatedURLString = self->_associatedURLString;
    }

    v50 = [v7 associatedURLString];
    if (![(NSString *)associatedURLString isEqualToString:?])
    {
      v14 = 0;
      v21 = v59;
      goto LABEL_62;
    }

    v47 = 1;
LABEL_40:
    modeIdentifier = self->_modeIdentifier;
    v48 = modeIdentifier;
    if (!modeIdentifier)
    {
      v28 = [v7 modeIdentifier];
      if (!v28)
      {
        v44 = 0;
        v45 = 0;
        goto LABEL_47;
      }

      v44 = v28;
      modeIdentifier = self->_modeIdentifier;
    }

    v29 = [v7 modeIdentifier];
    v30 = modeIdentifier;
    v31 = v29;
    if (![(NSString *)v30 isEqualToString:v29])
    {

      v14 = 0;
      v21 = v59;
      goto LABEL_60;
    }

    v43 = v31;
    v45 = 1;
LABEL_47:
    hasAssociatedImageRepresentation = self->_hasAssociatedImageRepresentation;
    if (hasAssociatedImageRepresentation != [v7 hasAssociatedImageRepresentation])
    {
      v14 = 0;
      v21 = v59;
      goto LABEL_58;
    }

    uuid = self->_uuid;
    v34 = uuid;
    if (!uuid)
    {
      v35 = [v7 uuid];
      if (!v35)
      {
        v38 = 0;
        v14 = 1;
        v21 = v59;
LABEL_57:

LABEL_58:
        if ((v45 & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      v40 = v35;
      v34 = self->_uuid;
    }

    v36 = v34;
    [v7 uuid];
    v37 = v42 = uuid;
    v14 = [(NSString *)v36 isEqual:v37];

    if (v42)
    {
      v21 = v59;
      if (!v45)
      {
LABEL_60:
        if (v48)
        {
          if (!v47)
          {
            goto LABEL_63;
          }
        }

        else
        {

          if ((v47 & 1) == 0)
          {
LABEL_63:
            if (v51)
            {
              if (!v52)
              {
                goto LABEL_66;
              }
            }

            else
            {

              if ((v52 & 1) == 0)
              {
LABEL_66:
                if (associatedBundleId)
                {
                  if (v55)
                  {
LABEL_68:
                    v13 = v56;
LABEL_69:

                    if (activityType)
                    {
                      goto LABEL_70;
                    }

LABEL_83:

                    if ((v21 & 1) == 0)
                    {
LABEL_72:
                      if (title)
                      {
                        if (!v13)
                        {
                          goto LABEL_75;
                        }
                      }

                      else
                      {

                        if ((v13 & 1) == 0)
                        {
LABEL_75:
                          if (!userActivityData)
                          {
                          }

                          goto LABEL_77;
                        }
                      }

                      goto LABEL_75;
                    }

LABEL_71:

                    goto LABEL_72;
                  }
                }

                else
                {

                  if (v55)
                  {
                    goto LABEL_68;
                  }
                }

                v13 = v56;
                if (activityType)
                {
LABEL_70:
                  if (!v21)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_71;
                }

                goto LABEL_83;
              }
            }

LABEL_65:

            goto LABEL_66;
          }
        }

LABEL_62:

        goto LABEL_63;
      }

LABEL_59:

      goto LABEL_60;
    }

    v21 = v59;
    v38 = v41;
    goto LABEL_57;
  }

  v14 = 0;
LABEL_78:

  return v14;
}

@end