@interface BMMessagesCommunicationSafetyResult
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesCommunicationSafetyResult)initWithAbsoluteTimestamp:(id)timestamp childID:(id)d deviceID:(id)iD eventDirection:(int)direction eventType:(int)type contentType:(int)contentType contactHandles:(id)handles contentID:(id)self0 conversationID:(id)self1 imageData:(id)self2 sourceBundleID:(id)self3 senderHandle:(id)self4 contentURL:(id)self5 conversationURL:(id)self6;
- (BMMessagesCommunicationSafetyResult)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_contactHandlesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesCommunicationSafetyResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMMessagesCommunicationSafetyResult *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMMessagesCommunicationSafetyResult *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_44;
      }
    }

    childID = [(BMMessagesCommunicationSafetyResult *)self childID];
    childID2 = [v5 childID];
    v15 = childID2;
    if (childID == childID2)
    {
    }

    else
    {
      childID3 = [(BMMessagesCommunicationSafetyResult *)self childID];
      childID4 = [v5 childID];
      v18 = [childID3 isEqual:childID4];

      if (!v18)
      {
        goto LABEL_44;
      }
    }

    deviceID = [(BMMessagesCommunicationSafetyResult *)self deviceID];
    deviceID2 = [v5 deviceID];
    v21 = deviceID2;
    if (deviceID == deviceID2)
    {
    }

    else
    {
      deviceID3 = [(BMMessagesCommunicationSafetyResult *)self deviceID];
      deviceID4 = [v5 deviceID];
      v24 = [deviceID3 isEqual:deviceID4];

      if (!v24)
      {
        goto LABEL_44;
      }
    }

    eventDirection = [(BMMessagesCommunicationSafetyResult *)self eventDirection];
    if (eventDirection != [v5 eventDirection])
    {
      goto LABEL_44;
    }

    eventType = [(BMMessagesCommunicationSafetyResult *)self eventType];
    if (eventType != [v5 eventType])
    {
      goto LABEL_44;
    }

    contentType = [(BMMessagesCommunicationSafetyResult *)self contentType];
    if (contentType != [v5 contentType])
    {
      goto LABEL_44;
    }

    contactHandles = [(BMMessagesCommunicationSafetyResult *)self contactHandles];
    contactHandles2 = [v5 contactHandles];
    v30 = contactHandles2;
    if (contactHandles == contactHandles2)
    {
    }

    else
    {
      contactHandles3 = [(BMMessagesCommunicationSafetyResult *)self contactHandles];
      contactHandles4 = [v5 contactHandles];
      v33 = [contactHandles3 isEqual:contactHandles4];

      if (!v33)
      {
        goto LABEL_44;
      }
    }

    contentID = [(BMMessagesCommunicationSafetyResult *)self contentID];
    contentID2 = [v5 contentID];
    v36 = contentID2;
    if (contentID == contentID2)
    {
    }

    else
    {
      contentID3 = [(BMMessagesCommunicationSafetyResult *)self contentID];
      contentID4 = [v5 contentID];
      v39 = [contentID3 isEqual:contentID4];

      if (!v39)
      {
        goto LABEL_44;
      }
    }

    conversationID = [(BMMessagesCommunicationSafetyResult *)self conversationID];
    conversationID2 = [v5 conversationID];
    v42 = conversationID2;
    if (conversationID == conversationID2)
    {
    }

    else
    {
      conversationID3 = [(BMMessagesCommunicationSafetyResult *)self conversationID];
      conversationID4 = [v5 conversationID];
      v45 = [conversationID3 isEqual:conversationID4];

      if (!v45)
      {
        goto LABEL_44;
      }
    }

    imageData = [(BMMessagesCommunicationSafetyResult *)self imageData];
    imageData2 = [v5 imageData];
    v48 = imageData2;
    if (imageData == imageData2)
    {
    }

    else
    {
      imageData3 = [(BMMessagesCommunicationSafetyResult *)self imageData];
      imageData4 = [v5 imageData];
      v51 = [imageData3 isEqual:imageData4];

      if (!v51)
      {
        goto LABEL_44;
      }
    }

    sourceBundleID = [(BMMessagesCommunicationSafetyResult *)self sourceBundleID];
    sourceBundleID2 = [v5 sourceBundleID];
    v54 = sourceBundleID2;
    if (sourceBundleID == sourceBundleID2)
    {
    }

    else
    {
      sourceBundleID3 = [(BMMessagesCommunicationSafetyResult *)self sourceBundleID];
      sourceBundleID4 = [v5 sourceBundleID];
      v57 = [sourceBundleID3 isEqual:sourceBundleID4];

      if (!v57)
      {
        goto LABEL_44;
      }
    }

    senderHandle = [(BMMessagesCommunicationSafetyResult *)self senderHandle];
    senderHandle2 = [v5 senderHandle];
    v60 = senderHandle2;
    if (senderHandle == senderHandle2)
    {
    }

    else
    {
      senderHandle3 = [(BMMessagesCommunicationSafetyResult *)self senderHandle];
      senderHandle4 = [v5 senderHandle];
      v63 = [senderHandle3 isEqual:senderHandle4];

      if (!v63)
      {
        goto LABEL_44;
      }
    }

    contentURL = [(BMMessagesCommunicationSafetyResult *)self contentURL];
    contentURL2 = [v5 contentURL];
    v66 = contentURL2;
    if (contentURL == contentURL2)
    {
    }

    else
    {
      contentURL3 = [(BMMessagesCommunicationSafetyResult *)self contentURL];
      contentURL4 = [v5 contentURL];
      v69 = [contentURL3 isEqual:contentURL4];

      if (!v69)
      {
LABEL_44:
        v12 = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    conversationURL = [(BMMessagesCommunicationSafetyResult *)self conversationURL];
    conversationURL2 = [v5 conversationURL];
    if (conversationURL == conversationURL2)
    {
      v12 = 1;
    }

    else
    {
      conversationURL3 = [(BMMessagesCommunicationSafetyResult *)self conversationURL];
      conversationURL4 = [v5 conversationURL];
      v12 = [conversationURL3 isEqual:conversationURL4];
    }

    goto LABEL_45;
  }

  v12 = 0;
LABEL_46:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v56[14] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMMessagesCommunicationSafetyResult *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMMessagesCommunicationSafetyResult *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  childID = [(BMMessagesCommunicationSafetyResult *)self childID];
  deviceID = [(BMMessagesCommunicationSafetyResult *)self deviceID];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesCommunicationSafetyResult eventDirection](self, "eventDirection")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesCommunicationSafetyResult eventType](self, "eventType")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesCommunicationSafetyResult contentType](self, "contentType")}];
  _contactHandlesJSONArray = [(BMMessagesCommunicationSafetyResult *)self _contactHandlesJSONArray];
  contentID = [(BMMessagesCommunicationSafetyResult *)self contentID];
  conversationID = [(BMMessagesCommunicationSafetyResult *)self conversationID];
  imageData = [(BMMessagesCommunicationSafetyResult *)self imageData];
  v53 = [imageData base64EncodedStringWithOptions:0];

  sourceBundleID = [(BMMessagesCommunicationSafetyResult *)self sourceBundleID];
  senderHandle = [(BMMessagesCommunicationSafetyResult *)self senderHandle];
  contentURL = [(BMMessagesCommunicationSafetyResult *)self contentURL];
  conversationURL = [(BMMessagesCommunicationSafetyResult *)self conversationURL];
  v55[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null;
  v56[0] = null;
  v55[1] = @"childID";
  null2 = childID;
  if (!childID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null2;
  v56[1] = null2;
  v55[2] = @"deviceID";
  null3 = deviceID;
  if (!deviceID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null3;
  v56[2] = null3;
  v55[3] = @"eventDirection";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null4;
  v56[3] = null4;
  v55[4] = @"eventType";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null5;
  v56[4] = null5;
  v55[5] = @"contentType";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v10;
  v49 = v9;
  v38 = null6;
  v56[5] = null6;
  v55[6] = @"contactHandles";
  null7 = _contactHandlesJSONArray;
  if (!_contactHandlesJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = _contactHandlesJSONArray;
  v47 = v11;
  v37 = null7;
  v56[6] = null7;
  v55[7] = @"contentID";
  null8 = contentID;
  if (!contentID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = contentID;
  v35 = null8;
  v56[7] = null8;
  v55[8] = @"conversationID";
  null9 = conversationID;
  if (!conversationID)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v56[8] = null9;
  v55[9] = @"imageData";
  null10 = v53;
  if (!v53)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = deviceID;
  v27 = v6;
  v56[9] = null10;
  v55[10] = @"sourceBundleID";
  null11 = sourceBundleID;
  if (!sourceBundleID)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = childID;
  v56[10] = null11;
  v55[11] = @"senderHandle";
  null12 = senderHandle;
  if (!senderHandle)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v56[11] = null12;
  v55[12] = @"contentURL";
  null13 = contentURL;
  if (!contentURL)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v56[12] = null13;
  v55[13] = @"conversationURL";
  null14 = conversationURL;
  if (!conversationURL)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v56[13] = null14;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:{14, v35}];
  if (!conversationURL)
  {
  }

  if (!contentURL)
  {
  }

  if (!senderHandle)
  {
  }

  if (!sourceBundleID)
  {
  }

  if (!v53)
  {
  }

  if (!conversationID)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (v47)
  {
    if (v48)
    {
      goto LABEL_50;
    }
  }

  else
  {

    if (v48)
    {
LABEL_50:
      if (v49)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    }
  }

  if (v49)
  {
LABEL_51:
    if (v26)
    {
      goto LABEL_52;
    }

    goto LABEL_60;
  }

LABEL_59:

  if (v26)
  {
LABEL_52:
    if (v29)
    {
      goto LABEL_53;
    }

LABEL_61:

    if (v27)
    {
      goto LABEL_54;
    }

    goto LABEL_62;
  }

LABEL_60:

  if (!v29)
  {
    goto LABEL_61;
  }

LABEL_53:
  if (v27)
  {
    goto LABEL_54;
  }

LABEL_62:

LABEL_54:
  v33 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)_contactHandlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contactHandles = [(BMMessagesCommunicationSafetyResult *)self contactHandles];
  v5 = [contactHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(contactHandles);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [contactHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMessagesCommunicationSafetyResult)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v229[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x1E695DF00];
      v8 = v5;
      v9 = [v7 alloc];
      [v8 doubleValue];
      v11 = v10;

      v12 = [v9 initWithTimeIntervalSinceReferenceDate:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v6 = [v13 dateFromString:v5];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          v95 = *MEMORY[0x1E698F240];
          v228 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v229[0] = v25;
          v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v229 forKeys:&v228 count:1];
          v97 = v95;
          v14 = v96;
          v6 = 0;
          v26 = 0;
          *error = [v94 initWithDomain:v97 code:2 userInfo:v96];
          goto LABEL_141;
        }

        v6 = 0;
        v26 = 0;
        goto LABEL_142;
      }

      v12 = v5;
    }

    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"childID"];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = v14;
        v21 = *MEMORY[0x1E698F240];
        v226 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"childID"];
        v227 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
        v24 = v21;
        v14 = v20;
        v187 = v23;
        v25 = 0;
        v26 = 0;
        *error = [v19 initWithDomain:v24 code:2 userInfo:?];
        goto LABEL_140;
      }

      v25 = 0;
      v26 = 0;
      goto LABEL_141;
    }

    v186 = v14;
  }

  else
  {
    v186 = 0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"deviceID"];
  v187 = v15;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v22 = 0;
        v26 = 0;
        v25 = v186;
        goto LABEL_140;
      }

      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = v14;
      v29 = *MEMORY[0x1E698F240];
      v224 = *MEMORY[0x1E696A578];
      v30 = v5;
      v31 = objc_alloc(MEMORY[0x1E696AEC0]);
      v154 = objc_opt_class();
      v32 = v31;
      v5 = v30;
      v185 = [v32 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v154, @"deviceID"];
      v225 = v185;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
      v34 = v27;
      v17 = v33;
      v35 = v29;
      v14 = v28;
      v22 = 0;
      v26 = 0;
      *error = [v34 initWithDomain:v35 code:2 userInfo:v33];
      goto LABEL_144;
    }

    v183 = v16;
  }

  else
  {
    v183 = 0;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"eventDirection"];
  v184 = v6;
  v188 = v17;
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
LABEL_30:
        v185 = v18;
        goto LABEL_31;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesCommunicationSafetyResultEventDirectionFromString(v17)];
        goto LABEL_30;
      }

      if (error)
      {
        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = v14;
        v74 = *MEMORY[0x1E698F240];
        v222 = *MEMORY[0x1E696A578];
        v75 = v5;
        v76 = objc_alloc(MEMORY[0x1E696AEC0]);
        v156 = objc_opt_class();
        v77 = v76;
        v5 = v75;
        v182 = [v77 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v156, @"eventDirection"];
        v223 = v182;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];
        v78 = v72;
        v17 = v188;
        v79 = v74;
        v14 = v73;
        v185 = 0;
        v26 = 0;
        *error = [v78 initWithDomain:v79 code:2 userInfo:v36];
        v25 = v186;
        v22 = v183;
        goto LABEL_138;
      }

      v185 = 0;
      v26 = 0;
      v22 = v183;
LABEL_144:
      v25 = v186;
      goto LABEL_139;
    }
  }

  v185 = 0;
LABEL_31:
  v36 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
  v180 = v36;
  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
          v81 = v14;
          v82 = *MEMORY[0x1E698F240];
          v220 = *MEMORY[0x1E696A578];
          v83 = v5;
          v84 = objc_alloc(MEMORY[0x1E696AEC0]);
          v157 = objc_opt_class();
          v85 = v84;
          v5 = v83;
          v86 = [v85 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v157, @"eventType"];
          v221 = v86;
          v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v221 forKeys:&v220 count:1];
          v88 = v80;
          v17 = v188;
          v89 = v82;
          v14 = v81;
          v179 = v87;
          v182 = 0;
          v26 = 0;
          *error = [v88 initWithDomain:v89 code:2 userInfo:?];
          v40 = v86;
          v25 = v186;
          v22 = v183;
          goto LABEL_137;
        }

        v182 = 0;
        v26 = 0;
        v25 = v186;
        v22 = v183;
        goto LABEL_138;
      }

      v37 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesCommunicationSafetyResultEventTypeFromString(v36)];
    }

    v182 = v37;
  }

  else
  {
    v182 = 0;
  }

  v38 = [dictionaryCopy objectForKeyedSubscript:@"contentType"];
  v177 = v5;
  v178 = v14;
  v179 = v38;
  if (v38 && (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v218 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"contentType"];
          v219 = v41;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v219 forKeys:&v218 count:1];
          v92 = v90;
          v17 = v188;
          v93 = [v92 initWithDomain:v91 code:2 userInfo:v44];
          v40 = 0;
          v26 = 0;
          *error = v93;
          v25 = v186;
          v22 = v183;
          goto LABEL_135;
        }

        v40 = 0;
        v26 = 0;
        v25 = v186;
        v22 = v183;
        goto LABEL_137;
      }

      v40 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesCommunicationSafetyResultContentTypeFromString(v39)];
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = [dictionaryCopy objectForKeyedSubscript:@"contactHandles"];
  null = [MEMORY[0x1E695DFB0] null];
  v43 = [v41 isEqual:null];

  if (v43)
  {
    v175 = v40;

    v41 = 0;
  }

  else
  {
    if (v41)
    {
      objc_opt_class();
      v17 = v188;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v69 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v216 = *MEMORY[0x1E696A578];
          v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"contactHandles"];
          v217 = v44;
          errorCopy5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v217 forKeys:&v216 count:1];
          v71 = v70;
          v17 = v188;
          v26 = 0;
          *error = [v69 initWithDomain:v71 code:2 userInfo:errorCopy5];
          v25 = v186;
          v22 = v183;
          goto LABEL_134;
        }

        v26 = 0;
        v25 = v186;
        v22 = v183;
        goto LABEL_136;
      }

      v175 = v40;
      goto LABEL_51;
    }

    v175 = v40;
  }

  v17 = v188;
LABEL_51:
  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v41, "count")}];
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v41 = v41;
  v45 = [v41 countByEnumeratingWithState:&v191 objects:v215 count:16];
  if (!v45)
  {
    goto LABEL_60;
  }

  v46 = v45;
  v47 = *v192;
  while (2)
  {
    for (i = 0; i != v46; ++i)
    {
      if (*v192 != v47)
      {
        objc_enumerationMutation(v41);
      }

      v49 = *(*(&v191 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = *MEMORY[0x1E698F240];
          v213 = *MEMORY[0x1E696A578];
          v172 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"contactHandles"];
          v214 = v172;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
          v62 = v59;
          v63 = v60;
LABEL_77:
          v174 = v61;
          v25 = v186;
          v22 = v183;
          v40 = v175;
          v26 = 0;
          *errorCopy2 = [v62 initWithDomain:v63 code:2 userInfo:?];
          errorCopy5 = v41;
          v17 = v188;

          goto LABEL_133;
        }

LABEL_78:
        v26 = 0;
        errorCopy5 = v41;
        v25 = v186;
        v22 = v183;
        v17 = v188;
        v40 = v175;
        goto LABEL_134;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v211 = *MEMORY[0x1E696A578];
          v66 = objc_alloc(MEMORY[0x1E696AEC0]);
          v155 = objc_opt_class();
          v67 = v66;
          errorCopy2 = error;
          v172 = [v67 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v155, @"contactHandles"];
          v212 = v172;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
          v62 = v64;
          v63 = v65;
          goto LABEL_77;
        }

        goto LABEL_78;
      }

      [v44 addObject:v49];
    }

    v46 = [v41 countByEnumeratingWithState:&v191 objects:v215 count:16];
    v17 = v188;
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_60:

  v50 = [dictionaryCopy objectForKeyedSubscript:@"contentID"];
  v172 = v50;
  if (!v50 || (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v171 = 0;
LABEL_63:
    v52 = [dictionaryCopy objectForKeyedSubscript:@"conversationID"];
    v169 = v52;
    if (v52 && (v53 = v52, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v173 = v53;
        goto LABEL_66;
      }

      if (!error)
      {
        v173 = 0;
        v26 = 0;
        v25 = v186;
        v22 = v183;
        errorCopy5 = v171;
        v40 = v175;
        goto LABEL_131;
      }

      v111 = objc_alloc(MEMORY[0x1E696ABC0]);
      v112 = *MEMORY[0x1E698F240];
      v207 = *MEMORY[0x1E696A578];
      v113 = objc_alloc(MEMORY[0x1E696AEC0]);
      v159 = objc_opt_class();
      v114 = v113;
      v40 = v175;
      v168 = [v114 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v159, @"conversationID"];
      v208 = v168;
      v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
      v116 = v111;
      v17 = v188;
      v166 = v115;
      v173 = 0;
      v26 = 0;
      *error = [v116 initWithDomain:v112 code:2 userInfo:?];
      v25 = v186;
      v22 = v183;
    }

    else
    {
      v173 = 0;
LABEL_66:
      v54 = [dictionaryCopy objectForKeyedSubscript:@"imageData"];
      v166 = v54;
      if (!v54 || (v55 = v54, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v168 = 0;
        goto LABEL_69;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v168 = v55;
LABEL_69:
        v40 = v175;
LABEL_70:
        v56 = [dictionaryCopy objectForKeyedSubscript:@"sourceBundleID"];
        v165 = v56;
        if (!v56)
        {
          v167 = 0;
          v36 = v180;
          goto LABEL_104;
        }

        v57 = v56;
        objc_opt_class();
        v36 = v180;
        if (objc_opt_isKindOfClass())
        {
          v167 = 0;
LABEL_104:
          v98 = [dictionaryCopy objectForKeyedSubscript:@"senderHandle"];
          v164 = v98;
          if (!v98 || (v99 = v98, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v176 = 0;
LABEL_107:
            v100 = [dictionaryCopy objectForKeyedSubscript:@"contentURL"];
            v163 = v100;
            if (!v100 || (v101 = v100, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v181 = 0;
              goto LABEL_110;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v181 = v101;
LABEL_110:
              v102 = [dictionaryCopy objectForKeyedSubscript:@"conversationURL"];
              if (!v102)
              {
                v103 = 0;
                goto LABEL_125;
              }

              objc_opt_class();
              v103 = v102;
              if (objc_opt_isKindOfClass())
              {
                v102 = 0;
                goto LABEL_125;
              }

              v117 = v102;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v102 = v102;
                v103 = v117;
LABEL_125:
                v26 = -[BMMessagesCommunicationSafetyResult initWithAbsoluteTimestamp:childID:deviceID:eventDirection:eventType:contentType:contactHandles:contentID:conversationID:imageData:sourceBundleID:senderHandle:contentURL:conversationURL:](self, "initWithAbsoluteTimestamp:childID:deviceID:eventDirection:eventType:contentType:contactHandles:contentID:conversationID:imageData:sourceBundleID:senderHandle:contentURL:conversationURL:", v184, v186, v183, [v185 intValue], objc_msgSend(v182, "intValue"), objc_msgSend(v40, "intValue"), v44, v171, v173, v168, v167, v176, v181, v102);
                self = v26;
                v17 = v188;
              }

              else if (error)
              {
                v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                v147 = *MEMORY[0x1E698F240];
                v195 = *MEMORY[0x1E696A578];
                v148 = v40;
                v103 = v102;
                v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationURL"];
                v196 = v149;
                v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
                v151 = v146;
                v17 = v188;
                *error = [v151 initWithDomain:v147 code:2 userInfo:v150];

                v40 = v148;
                v102 = 0;
                v26 = 0;
              }

              else
              {
                v26 = 0;
                v103 = v102;
                v102 = 0;
              }

LABEL_126:
            }

            else
            {
              if (error)
              {
                v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                v141 = *MEMORY[0x1E698F240];
                v197 = *MEMORY[0x1E696A578];
                v142 = v40;
                v143 = objc_alloc(MEMORY[0x1E696AEC0]);
                v162 = objc_opt_class();
                v144 = v143;
                v40 = v142;
                v102 = [v144 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v162, @"contentURL"];
                v198 = v102;
                v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
                v145 = v140;
                v17 = v188;
                v181 = 0;
                v26 = 0;
                *error = [v145 initWithDomain:v141 code:2 userInfo:v103];
                goto LABEL_126;
              }

              v181 = 0;
              v26 = 0;
            }

LABEL_127:
            v25 = v186;
            v22 = v183;
            errorCopy5 = v171;

LABEL_128:
LABEL_129:

LABEL_130:
LABEL_131:

LABEL_132:
            goto LABEL_133;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v176 = v99;
            goto LABEL_107;
          }

          if (error)
          {
            v133 = objc_alloc(MEMORY[0x1E696ABC0]);
            v134 = *MEMORY[0x1E698F240];
            v199 = *MEMORY[0x1E696A578];
            v135 = v40;
            v136 = objc_alloc(MEMORY[0x1E696AEC0]);
            v161 = objc_opt_class();
            v137 = v136;
            v40 = v135;
            v181 = [v137 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v161, @"senderHandle"];
            v200 = v181;
            v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
            v139 = v133;
            v17 = v188;
            v163 = v138;
            v176 = 0;
            v26 = 0;
            *error = [v139 initWithDomain:v134 code:2 userInfo:?];
            goto LABEL_127;
          }

          v176 = 0;
          v26 = 0;
LABEL_168:
          v25 = v186;
          v22 = v183;
          errorCopy5 = v171;
          goto LABEL_128;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v167 = v57;
          goto LABEL_104;
        }

        if (error)
        {
          v126 = objc_alloc(MEMORY[0x1E696ABC0]);
          v127 = *MEMORY[0x1E698F240];
          v201 = *MEMORY[0x1E696A578];
          v128 = v40;
          v129 = objc_alloc(MEMORY[0x1E696AEC0]);
          v160 = objc_opt_class();
          v130 = v129;
          v40 = v128;
          v176 = [v130 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v160, @"sourceBundleID"];
          v202 = v176;
          v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
          v132 = v126;
          v17 = v188;
          v164 = v131;
          v167 = 0;
          v26 = 0;
          *error = [v132 initWithDomain:v127 code:2 userInfo:?];
          goto LABEL_168;
        }

        v167 = 0;
        v26 = 0;
        v25 = v186;
        v22 = v183;
LABEL_166:
        errorCopy5 = v171;
        goto LABEL_129;
      }

      objc_opt_class();
      v40 = v175;
      if (objc_opt_isKindOfClass())
      {
        v168 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v55 options:0];
        if (v168)
        {
          goto LABEL_70;
        }

        errorCopy4 = error;
        if (error)
        {
          v121 = objc_alloc(MEMORY[0x1E696ABC0]);
          v122 = *MEMORY[0x1E698F240];
          v205 = *MEMORY[0x1E696A578];
          v167 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"imageData"];
          v206 = v167;
          v123 = MEMORY[0x1E695DF20];
          v124 = &v206;
          v125 = &v205;
LABEL_163:
          v152 = [v123 dictionaryWithObjects:v124 forKeys:v125 count:1];
          v153 = v122;
          v17 = v188;
          v165 = v152;
          v168 = 0;
          v26 = 0;
          *errorCopy4 = [v121 initWithDomain:v153 code:2 userInfo:?];
          v25 = v186;
          v22 = v183;
          v36 = v180;
          goto LABEL_166;
        }
      }

      else
      {
        errorCopy4 = error;
        if (error)
        {
          v121 = objc_alloc(MEMORY[0x1E696ABC0]);
          v122 = *MEMORY[0x1E698F240];
          v203 = *MEMORY[0x1E696A578];
          v167 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"imageData"];
          v204 = v167;
          v123 = MEMORY[0x1E695DF20];
          v124 = &v204;
          v125 = &v203;
          goto LABEL_163;
        }
      }

      v168 = 0;
      v26 = 0;
      v25 = v186;
      v22 = v183;
      v36 = v180;
    }

    errorCopy5 = v171;
    goto LABEL_130;
  }

  objc_opt_class();
  v40 = v175;
  if (objc_opt_isKindOfClass())
  {
    v171 = v51;
    goto LABEL_63;
  }

  errorCopy5 = error;
  if (error)
  {
    v104 = objc_alloc(MEMORY[0x1E696ABC0]);
    v105 = *MEMORY[0x1E698F240];
    v209 = *MEMORY[0x1E696A578];
    v106 = objc_alloc(MEMORY[0x1E696AEC0]);
    v158 = objc_opt_class();
    v107 = v106;
    v40 = v175;
    v173 = [v107 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v158, @"contentID"];
    v210 = v173;
    v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
    v109 = v104;
    v17 = v188;
    v170 = v108;
    v110 = [v109 initWithDomain:v105 code:2 userInfo:?];
    errorCopy5 = 0;
    v26 = 0;
    *error = v110;
    v25 = v186;
    v22 = v183;

    goto LABEL_132;
  }

  v26 = 0;
  v25 = v186;
  v22 = v183;
LABEL_133:

LABEL_134:
LABEL_135:

  v5 = v177;
LABEL_136:

  v14 = v178;
LABEL_137:

LABEL_138:
  v6 = v184;
LABEL_139:

LABEL_140:
LABEL_141:

LABEL_142:
  v118 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesCommunicationSafetyResult *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_childID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
  }

  eventDirection = self->_eventDirection;
  PBDataWriterWriteUint32Field();
  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  contentType = self->_contentType;
  PBDataWriterWriteUint32Field();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_contactHandles;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        PBDataWriterWriteStringField();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if (self->_contentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sourceBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_senderHandle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationURL)
  {
    PBDataWriterWriteStringField();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v48.receiver = self;
  v48.super_class = BMMessagesCommunicationSafetyResult;
  v5 = [(BMEventBase *)&v48 init];
  if (!v5)
  {
    goto LABEL_81;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v49) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v49) & 0x7F) << v8;
        if ((LOBYTE(v49) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      switch((v15 >> 3))
      {
        case 1u:
          v5->_hasRaw_absoluteTimestamp = 1;
          v49 = 0.0;
          v16 = [fromCopy position] + 8;
          if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_absoluteTimestamp = v49;
          goto LABEL_78;
        case 2u:
          v18 = PBReaderReadString();
          v19 = 48;
          goto LABEL_60;
        case 3u:
          v18 = PBReaderReadString();
          v19 = 56;
          goto LABEL_60;
        case 4u:
          v27 = 0;
          v28 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v49) = 0;
            v29 = [fromCopy position] + 1;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v22 |= (LOBYTE(v49) & 0x7F) << v27;
            if ((LOBYTE(v49) & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v26 = v28++ > 8;
            if (v26)
            {
              goto LABEL_69;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v22 > 3)
          {
LABEL_69:
            LODWORD(v22) = 0;
          }

          v40 = 36;
          goto LABEL_75;
        case 5u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v49) = 0;
            v23 = [fromCopy position] + 1;
            if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v22 |= (LOBYTE(v49) & 0x7F) << v20;
            if ((LOBYTE(v49) & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v26 = v21++ > 8;
            if (v26)
            {
              goto LABEL_65;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v22 > 4)
          {
LABEL_65:
            LODWORD(v22) = 0;
          }

          v40 = 40;
          goto LABEL_75;
        case 6u:
          v32 = 0;
          v33 = 0;
          v22 = 0;
          break;
        case 7u:
          v37 = PBReaderReadString();
          if (!v37)
          {
            goto LABEL_83;
          }

          v38 = v37;
          [v6 addObject:v37];

          goto LABEL_78;
        case 8u:
          v18 = PBReaderReadString();
          v19 = 72;
          goto LABEL_60;
        case 9u:
          v18 = PBReaderReadString();
          v19 = 80;
          goto LABEL_60;
        case 0xAu:
          v18 = PBReaderReadData();
          v19 = 88;
          goto LABEL_60;
        case 0xBu:
          v18 = PBReaderReadString();
          v19 = 96;
          goto LABEL_60;
        case 0xCu:
          v18 = PBReaderReadString();
          v19 = 104;
          goto LABEL_60;
        case 0xDu:
          v18 = PBReaderReadString();
          v19 = 112;
          goto LABEL_60;
        case 0xEu:
          v18 = PBReaderReadString();
          v19 = 120;
LABEL_60:
          v39 = *(&v5->super.super.isa + v19);
          *(&v5->super.super.isa + v19) = v18;

          goto LABEL_78;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_78;
          }

LABEL_83:

          goto LABEL_80;
      }

      while (1)
      {
        LOBYTE(v49) = 0;
        v34 = [fromCopy position] + 1;
        if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v49 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v22 |= (LOBYTE(v49) & 0x7F) << v32;
        if ((LOBYTE(v49) & 0x80) == 0)
        {
          break;
        }

        v32 += 7;
        v26 = v33++ > 8;
        if (v26)
        {
          goto LABEL_73;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v22 > 3)
      {
LABEL_73:
        LODWORD(v22) = 0;
      }

      v40 = 44;
LABEL_75:
      *(&v5->super.super.isa + v40) = v22;
LABEL_78:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v43 = [v6 copy];
  contactHandles = v5->_contactHandles;
  v5->_contactHandles = v43;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_80:
    v46 = 0;
  }

  else
  {
LABEL_81:
    v46 = v5;
  }

  return v46;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMMessagesCommunicationSafetyResult *)self absoluteTimestamp];
  childID = [(BMMessagesCommunicationSafetyResult *)self childID];
  deviceID = [(BMMessagesCommunicationSafetyResult *)self deviceID];
  v17 = BMMessagesCommunicationSafetyResultEventDirectionAsString([(BMMessagesCommunicationSafetyResult *)self eventDirection]);
  v3 = BMMessagesCommunicationSafetyResultEventTypeAsString([(BMMessagesCommunicationSafetyResult *)self eventType]);
  v13 = BMMessagesCommunicationSafetyResultContentTypeAsString([(BMMessagesCommunicationSafetyResult *)self contentType]);
  contactHandles = [(BMMessagesCommunicationSafetyResult *)self contactHandles];
  contentID = [(BMMessagesCommunicationSafetyResult *)self contentID];
  conversationID = [(BMMessagesCommunicationSafetyResult *)self conversationID];
  imageData = [(BMMessagesCommunicationSafetyResult *)self imageData];
  sourceBundleID = [(BMMessagesCommunicationSafetyResult *)self sourceBundleID];
  senderHandle = [(BMMessagesCommunicationSafetyResult *)self senderHandle];
  contentURL = [(BMMessagesCommunicationSafetyResult *)self contentURL];
  conversationURL = [(BMMessagesCommunicationSafetyResult *)self conversationURL];
  v16 = [v15 initWithFormat:@"BMMessagesCommunicationSafetyResult with absoluteTimestamp: %@, childID: %@, deviceID: %@, eventDirection: %@, eventType: %@, contentType: %@, contactHandles: %@, contentID: %@, conversationID: %@, imageData: %@, sourceBundleID: %@, senderHandle: %@, contentURL: %@, conversationURL: %@", absoluteTimestamp, childID, deviceID, v17, v3, v13, contactHandles, contentID, conversationID, imageData, sourceBundleID, senderHandle, contentURL, conversationURL];

  return v16;
}

- (BMMessagesCommunicationSafetyResult)initWithAbsoluteTimestamp:(id)timestamp childID:(id)d deviceID:(id)iD eventDirection:(int)direction eventType:(int)type contentType:(int)contentType contactHandles:(id)handles contentID:(id)self0 conversationID:(id)self1 imageData:(id)self2 sourceBundleID:(id)self3 senderHandle:(id)self4 contentURL:(id)self5 conversationURL:(id)self6
{
  timestampCopy = timestamp;
  obj = d;
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  v20 = timestampCopy;
  v39 = iDCopy2;
  handlesCopy = handles;
  handlesCopy2 = handles;
  contentIDCopy = contentID;
  conversationIDCopy = conversationID;
  dataCopy = data;
  bundleIDCopy = bundleID;
  handleCopy = handle;
  lCopy = l;
  rLCopy = rL;
  v41.receiver = self;
  v41.super_class = BMMessagesCommunicationSafetyResult;
  v25 = [(BMEventBase *)&v41 init];
  if (v25)
  {
    v25->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v20)
    {
      v25->_hasRaw_absoluteTimestamp = 1;
      [v20 timeIntervalSinceReferenceDate];
    }

    else
    {
      v20 = 0;
      v25->_hasRaw_absoluteTimestamp = 0;
      v26 = -1.0;
    }

    v25->_raw_absoluteTimestamp = v26;
    objc_storeStrong(&v25->_childID, obj);
    objc_storeStrong(&v25->_deviceID, iDCopy);
    v25->_eventDirection = direction;
    v25->_eventType = type;
    v25->_contentType = contentType;
    objc_storeStrong(&v25->_contactHandles, handlesCopy);
    objc_storeStrong(&v25->_contentID, contentID);
    objc_storeStrong(&v25->_conversationID, conversationID);
    objc_storeStrong(&v25->_imageData, data);
    objc_storeStrong(&v25->_sourceBundleID, bundleID);
    objc_storeStrong(&v25->_senderHandle, handle);
    objc_storeStrong(&v25->_contentURL, l);
    objc_storeStrong(&v25->_conversationURL, rL);
  }

  return v25;
}

+ (id)protoFields
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v19[0] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"childID" number:2 type:13 subMessageClass:0];
  v19[1] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceID" number:3 type:13 subMessageClass:0];
  v19[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventDirection" number:4 type:4 subMessageClass:0];
  v19[3] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:5 type:4 subMessageClass:0];
  v19[4] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentType" number:6 type:4 subMessageClass:0];
  v19[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactHandles" number:7 type:13 subMessageClass:0];
  v19[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentID" number:8 type:13 subMessageClass:0];
  v19[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationID" number:9 type:13 subMessageClass:0];
  v19[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"imageData" number:10 type:14 subMessageClass:0];
  v19[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleID" number:11 type:13 subMessageClass:0];
  v19[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"senderHandle" number:12 type:13 subMessageClass:0];
  v19[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentURL" number:13 type:13 subMessageClass:0];
  v19[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationURL" number:14 type:13 subMessageClass:0];
  v19[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"childID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventDirection" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentType" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contactHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_126];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationID" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"imageData" dataType:4 requestOnly:0 fieldNumber:10 protoDataType:14 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleID" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"senderHandle" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentURL" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationURL" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v19[0] = v18;
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v2;
  v19[5] = v3;
  v19[6] = v4;
  v19[7] = v5;
  v19[8] = v6;
  v19[9] = v14;
  v19[10] = v7;
  v19[11] = v13;
  v19[12] = v8;
  v19[13] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __46__BMMessagesCommunicationSafetyResult_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _contactHandlesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMMessagesCommunicationSafetyResult_v1;
  }

  else
  {
    if (version != 2)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMMessagesCommunicationSafetyResult;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 32) = version;
  }

LABEL_9:

  return v9;
}

@end