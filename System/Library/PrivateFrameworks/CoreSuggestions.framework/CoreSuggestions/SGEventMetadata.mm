@interface SGEventMetadata
+ (id)describeType:(unsigned __int8)a3;
+ (id)eventMetadataFromEKEvent:(id)a3;
+ (unsigned)eventTypeFromString:(id)a3;
- (SGEventMetadata)initWithType:(unsigned __int8)a3 categoryDescription:(id)a4 originBundleId:(id)a5 confidence:(double)a6 schemaOrg:(id)a7 participants:(id)a8 eventActivities:(id)a9;
- (id)jsonObject;
- (id)toJsonString;
@end

@implementation SGEventMetadata

- (id)jsonObject
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_eventActivities;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v20 + 1) + 8 * i) jsonObject];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v24[0] = @"SGEventMetadataTypeKey";
  v10 = [objc_opt_class() describeType:self->_type];
  categoryDescription = self->_categoryDescription;
  originBundleId = self->_originBundleId;
  v25[0] = v10;
  v25[1] = categoryDescription;
  v24[1] = @"SGEventMetadataCategoryDescriptionKey";
  v24[2] = @"SGEventMetadataBundleIdKey";
  v25[2] = originBundleId;
  v24[3] = @"SGEventMetadataConfidenceKey";
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  schemaOrg = self->_schemaOrg;
  participants = self->_participants;
  v25[3] = v13;
  v25[4] = schemaOrg;
  v24[4] = @"SGEventMetadataSchemaOrgKey";
  v24[5] = @"SGEventMetadataParticipantsKey";
  v24[6] = @"SGEventMetadataEventActivitiesKey";
  v25[5] = participants;
  v25[6] = v3;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  DeepCopy = CFPropertyListCreateDeepCopy(0, v16, 0);

  v18 = *MEMORY[0x1E69E9840];

  return DeepCopy;
}

- (id)toJsonString
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696ACB0];
  v5 = [(SGEventMetadata *)self jsonObject];
  v10 = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:&v10];
  v7 = v10;

  objc_autoreleasePoolPop(v3);
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SGEventMetadata)initWithType:(unsigned __int8)a3 categoryDescription:(id)a4 originBundleId:(id)a5 confidence:(double)a6 schemaOrg:(id)a7 participants:(id)a8 eventActivities:(id)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v30.receiver = self;
  v30.super_class = SGEventMetadata;
  v21 = [(SGEventMetadata *)&v30 init];
  v22 = v21;
  if (v21)
  {
    v21->_type = a3;
    if (v16)
    {
      v23 = v16;
    }

    else
    {
      v23 = @"Unknown";
    }

    objc_storeStrong(&v21->_categoryDescription, v23);
    if (v17)
    {
      v24 = v17;
    }

    else
    {
      v24 = @"Unknown";
    }

    objc_storeStrong(&v22->_originBundleId, v24);
    v22->_confidence = a6;
    v25 = MEMORY[0x1E695E0F0];
    if (v18)
    {
      v26 = v18;
    }

    else
    {
      v26 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v22->_schemaOrg, v26);
    if (v19)
    {
      v27 = v19;
    }

    else
    {
      v27 = v25;
    }

    objc_storeStrong(&v22->_participants, v27);
    if (v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = v25;
    }

    objc_storeStrong(&v22->_eventActivities, v28);
  }

  return v22;
}

+ (unsigned)eventTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"StructuredEvent"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NLEvent"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)describeType:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7EFC668[a3];
  }
}

+ (id)eventMetadataFromEKEvent:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 customObjectForKey:@"SGEventMetadataKey"];
  objc_autoreleasePoolPop(v5);
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = objc_autoreleasePoolPush();
    v7 = [v4 customObjectForKey:@"SuggestionsSchemaOrg"];

    v28 = [v4 customObjectForKey:@"SuggestionsNLEventDictionaryKey"];
    v29 = [v4 customObjectForKey:@"SuggestionsOriginBundleId"];
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v30 = v29;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = 0;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v7;
      v26 = [[SGEventMetadata alloc] initWithType:1 categoryDescription:0 originBundleId:v30 confidence:v31 schemaOrg:0 participants:1.0];
      goto LABEL_28;
    }

LABEL_20:
    if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v26 = 0;
LABEL_29:

      objc_autoreleasePoolPop(v27);
      goto LABEL_30;
    }

    v42 = v4;
    v31 = v28;
    v32 = [v31 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryEventTypeKey"];
    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = [v31 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryEventConfidenceScoreKey"];
    [v34 doubleValue];
    v36 = v35;

    v26 = [[SGEventMetadata alloc] initWithType:2 categoryDescription:v33 originBundleId:v30 confidence:0 schemaOrg:0 participants:v36];
    v4 = v42;
LABEL_28:

    goto LABEL_29;
  }

  v41 = v4;
  context = objc_autoreleasePoolPush();
  v7 = v6;
  v39 = [v7 objectForKeyedSubscript:@"SGEventMetadataConfidenceKey"];
  [v39 doubleValue];
  v9 = v8;
  v10 = objc_opt_new();
  [v7 objectForKeyedSubscript:@"SGEventMetadataEventActivitiesKey"];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = v46 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [[SGEventActivity alloc] initWithDictionary:v16];
        if (v18)
        {
          [v10 addObject:v18];
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v13);
  }

  v19 = [SGEventMetadata alloc];
  v20 = [v7 objectForKeyedSubscript:@"SGEventMetadataTypeKey"];
  v21 = [a1 eventTypeFromString:v20];
  v22 = [v7 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
  v23 = [v7 objectForKeyedSubscript:@"SGEventMetadataBundleIdKey"];
  v24 = [v7 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
  v25 = [v7 objectForKeyedSubscript:@"SGEventMetadataParticipantsKey"];
  v26 = [(SGEventMetadata *)v19 initWithType:v21 categoryDescription:v22 originBundleId:v23 confidence:v24 schemaOrg:v25 participants:v10 eventActivities:v9];

  objc_autoreleasePoolPop(context);
  v4 = v41;
LABEL_30:

  v37 = *MEMORY[0x1E69E9840];

  return v26;
}

@end