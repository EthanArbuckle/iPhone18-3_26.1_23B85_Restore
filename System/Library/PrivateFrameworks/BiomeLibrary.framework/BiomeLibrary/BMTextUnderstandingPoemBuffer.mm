@interface BMTextUnderstandingPoemBuffer
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextUnderstandingPoemBuffer)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMTextUnderstandingPoemBuffer)initWithMessageTimestamp:(id)timestamp conversationId:(id)id spotlightId:(id)spotlightId photoAttachment:(id)attachment extractions:(id)extractions continuousFeatures:(id)features rawMessage:(id)message senderId:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSDate)messageTimestamp;
- (NSString)description;
- (id)_continuousFeaturesJSONArray;
- (id)_extractionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextUnderstandingPoemBuffer

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    messageTimestamp = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
    messageTimestamp2 = [v5 messageTimestamp];
    v8 = messageTimestamp2;
    if (messageTimestamp == messageTimestamp2)
    {
    }

    else
    {
      messageTimestamp3 = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
      messageTimestamp4 = [v5 messageTimestamp];
      v11 = [messageTimestamp3 isEqual:messageTimestamp4];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    conversationId = [(BMTextUnderstandingPoemBuffer *)self conversationId];
    conversationId2 = [v5 conversationId];
    v15 = conversationId2;
    if (conversationId == conversationId2)
    {
    }

    else
    {
      conversationId3 = [(BMTextUnderstandingPoemBuffer *)self conversationId];
      conversationId4 = [v5 conversationId];
      v18 = [conversationId3 isEqual:conversationId4];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    spotlightId = [(BMTextUnderstandingPoemBuffer *)self spotlightId];
    spotlightId2 = [v5 spotlightId];
    v21 = spotlightId2;
    if (spotlightId == spotlightId2)
    {
    }

    else
    {
      spotlightId3 = [(BMTextUnderstandingPoemBuffer *)self spotlightId];
      spotlightId4 = [v5 spotlightId];
      v24 = [spotlightId3 isEqual:spotlightId4];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    if (-[BMTextUnderstandingPoemBuffer hasPhotoAttachment](self, "hasPhotoAttachment") || [v5 hasPhotoAttachment])
    {
      if (![(BMTextUnderstandingPoemBuffer *)self hasPhotoAttachment])
      {
        goto LABEL_30;
      }

      if (![v5 hasPhotoAttachment])
      {
        goto LABEL_30;
      }

      photoAttachment = [(BMTextUnderstandingPoemBuffer *)self photoAttachment];
      if (photoAttachment != [v5 photoAttachment])
      {
        goto LABEL_30;
      }
    }

    extractions = [(BMTextUnderstandingPoemBuffer *)self extractions];
    extractions2 = [v5 extractions];
    v28 = extractions2;
    if (extractions == extractions2)
    {
    }

    else
    {
      extractions3 = [(BMTextUnderstandingPoemBuffer *)self extractions];
      extractions4 = [v5 extractions];
      v31 = [extractions3 isEqual:extractions4];

      if (!v31)
      {
        goto LABEL_30;
      }
    }

    continuousFeatures = [(BMTextUnderstandingPoemBuffer *)self continuousFeatures];
    continuousFeatures2 = [v5 continuousFeatures];
    v34 = continuousFeatures2;
    if (continuousFeatures == continuousFeatures2)
    {
    }

    else
    {
      continuousFeatures3 = [(BMTextUnderstandingPoemBuffer *)self continuousFeatures];
      continuousFeatures4 = [v5 continuousFeatures];
      v37 = [continuousFeatures3 isEqual:continuousFeatures4];

      if (!v37)
      {
        goto LABEL_30;
      }
    }

    rawMessage = [(BMTextUnderstandingPoemBuffer *)self rawMessage];
    rawMessage2 = [v5 rawMessage];
    v40 = rawMessage2;
    if (rawMessage == rawMessage2)
    {
    }

    else
    {
      rawMessage3 = [(BMTextUnderstandingPoemBuffer *)self rawMessage];
      rawMessage4 = [v5 rawMessage];
      v43 = [rawMessage3 isEqual:rawMessage4];

      if (!v43)
      {
LABEL_30:
        v12 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    senderId = [(BMTextUnderstandingPoemBuffer *)self senderId];
    senderId2 = [v5 senderId];
    if (senderId == senderId2)
    {
      v12 = 1;
    }

    else
    {
      senderId3 = [(BMTextUnderstandingPoemBuffer *)self senderId];
      senderId4 = [v5 senderId];
      v12 = [senderId3 isEqual:senderId4];
    }

    goto LABEL_31;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (NSDate)messageTimestamp
{
  if (self->_hasRaw_messageTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_messageTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v31[8] = *MEMORY[0x1E69E9840];
  messageTimestamp = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
  if (messageTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    messageTimestamp2 = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
    [messageTimestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  conversationId = [(BMTextUnderstandingPoemBuffer *)self conversationId];
  spotlightId = [(BMTextUnderstandingPoemBuffer *)self spotlightId];
  if ([(BMTextUnderstandingPoemBuffer *)self hasPhotoAttachment])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemBuffer photoAttachment](self, "photoAttachment")}];
  }

  else
  {
    v29 = 0;
  }

  _extractionsJSONArray = [(BMTextUnderstandingPoemBuffer *)self _extractionsJSONArray];
  _continuousFeaturesJSONArray = [(BMTextUnderstandingPoemBuffer *)self _continuousFeaturesJSONArray];
  rawMessage = [(BMTextUnderstandingPoemBuffer *)self rawMessage];
  senderId = [(BMTextUnderstandingPoemBuffer *)self senderId];
  v30[0] = @"messageTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v31[0] = null;
  v30[1] = @"conversationId";
  null2 = conversationId;
  if (!conversationId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v31[1] = null2;
  v30[2] = @"spotlightId";
  null3 = spotlightId;
  if (!spotlightId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null3;
  v31[2] = null3;
  v30[3] = @"photoAttachment";
  null4 = v29;
  if (!v29)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v6;
  v31[3] = null4;
  v30[4] = @"extractions";
  null5 = _extractionsJSONArray;
  if (!_extractionsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = conversationId;
  v31[4] = null5;
  v30[5] = @"continuousFeatures";
  null6 = _continuousFeaturesJSONArray;
  if (!_continuousFeaturesJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31[5] = null6;
  v30[6] = @"rawMessage";
  null7 = rawMessage;
  if (!rawMessage)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = null7;
  v30[7] = @"senderId";
  null8 = senderId;
  if (!senderId)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = null8;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
  if (senderId)
  {
    if (rawMessage)
    {
      goto LABEL_25;
    }

LABEL_36:

    if (_continuousFeaturesJSONArray)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  if (!rawMessage)
  {
    goto LABEL_36;
  }

LABEL_25:
  if (_continuousFeaturesJSONArray)
  {
    goto LABEL_26;
  }

LABEL_37:

LABEL_26:
  if (!_extractionsJSONArray)
  {
  }

  if (v29)
  {
    if (spotlightId)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (spotlightId)
    {
LABEL_30:
      if (v27)
      {
        goto LABEL_31;
      }

LABEL_40:

      if (v28)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }
  }

  if (!v27)
  {
    goto LABEL_40;
  }

LABEL_31:
  if (v28)
  {
    goto LABEL_32;
  }

LABEL_41:

LABEL_32:
  v21 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)_continuousFeaturesJSONArray
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  continuousFeatures = [(BMTextUnderstandingPoemBuffer *)self continuousFeatures];
  v5 = [continuousFeatures countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(continuousFeatures);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [continuousFeatures countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_extractionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  extractions = [(BMTextUnderstandingPoemBuffer *)self extractions];
  v5 = [extractions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(extractions);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [extractions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMTextUnderstandingPoemBuffer)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v167[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"messageTimestamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSince1970:v12];
LABEL_6:
    v7 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v7 = 0;
        selfCopy3 = 0;
        goto LABEL_110;
      }

      v88 = objc_alloc(MEMORY[0x1E696ABC0]);
      v89 = v6;
      v90 = *MEMORY[0x1E698F240];
      v166 = *MEMORY[0x1E696A578];
      selfCopy = self;
      v92 = objc_alloc(MEMORY[0x1E696AEC0]);
      v109 = objc_opt_class();
      v93 = v92;
      self = selfCopy;
      v46 = [v93 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v109, @"messageTimestamp"];
      v167[0] = v46;
      v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v167 forKeys:&v166 count:1];
      v95 = v90;
      v6 = v89;
      v129 = v94;
      v96 = [v88 initWithDomain:v95 code:2 userInfo:?];
      v7 = 0;
      selfCopy3 = 0;
      *error = v96;
      goto LABEL_109;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"conversationId"];
  v129 = v15;
  if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v126 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v126 = v16;
LABEL_12:
    v17 = [dictionaryCopy objectForKeyedSubscript:@"spotlightId"];
    v128 = v17;
    if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
LABEL_15:
      v20 = [dictionaryCopy objectForKeyedSubscript:@"photoAttachment"];
      v124 = v7;
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v121 = v20;
        v122 = v6;
        v125 = 0;
LABEL_18:
        v21 = [dictionaryCopy objectForKeyedSubscript:@"extractions"];
        null = [MEMORY[0x1E695DFB0] null];
        v23 = [v21 isEqual:null];

        selfCopy2 = self;
        if (v23)
        {
          v117 = dictionaryCopy;
          v118 = v19;

          v21 = 0;
LABEL_25:
          v131 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v21 = v21;
          v24 = [v21 countByEnumeratingWithState:&v138 objects:v157 count:16];
          if (!v24)
          {
            goto LABEL_35;
          }

          v25 = v24;
          v26 = *v139;
          while (1)
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v139 != v26)
              {
                objc_enumerationMutation(v21);
              }

              v28 = *(*(&v138 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                errorCopy2 = error;
                if (error)
                {
                  v63 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v64 = *MEMORY[0x1E698F240];
                  v155 = *MEMORY[0x1E696A578];
                  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"extractions"];
                  v156 = v29;
                  v65 = MEMORY[0x1E695DF20];
                  v66 = &v156;
                  v67 = &v155;
LABEL_51:
                  v68 = [v65 dictionaryWithObjects:v66 forKeys:v67 count:1];
                  v69 = [v63 initWithDomain:v64 code:2 userInfo:v68];
                  selfCopy3 = 0;
                  *errorCopy2 = v69;
                  v33 = v21;
                  dictionaryCopy = v117;
                  goto LABEL_86;
                }

LABEL_73:
                selfCopy3 = 0;
                v33 = v21;
                dictionaryCopy = v117;
                self = selfCopy2;
                v46 = v126;
                goto LABEL_74;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                errorCopy2 = error;
                if (error)
                {
                  v63 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v64 = *MEMORY[0x1E698F240];
                  v153 = *MEMORY[0x1E696A578];
                  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"extractions"];
                  v154 = v29;
                  v65 = MEMORY[0x1E695DF20];
                  v66 = &v154;
                  v67 = &v153;
                  goto LABEL_51;
                }

                goto LABEL_73;
              }

              v29 = v28;
              v30 = [BMTextUnderstandingPoemBufferExtraction alloc];
              v137 = 0;
              v31 = [(BMTextUnderstandingPoemBufferExtraction *)v30 initWithJSONDictionary:v29 error:&v137];
              v32 = v137;
              if (v32)
              {
                v68 = v32;
                v55 = v121;
                if (error)
                {
                  v70 = v32;
                  *error = v68;
                }

                selfCopy3 = 0;
                v33 = v21;
                dictionaryCopy = v117;
                v19 = v118;
                self = selfCopy2;
                v46 = v126;
                goto LABEL_103;
              }

              [v131 addObject:v31];
            }

            v25 = [v21 countByEnumeratingWithState:&v138 objects:v157 count:16];
            if (!v25)
            {
LABEL_35:

              dictionaryCopy = v117;
              v33 = [v117 objectForKeyedSubscript:@"continuousFeatures"];
              null2 = [MEMORY[0x1E695DFB0] null];
              v35 = [v33 isEqual:null2];

              if (v35)
              {

                v33 = 0;
                self = selfCopy2;
LABEL_57:
                v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v33, "count")}];
                v133 = 0u;
                v134 = 0u;
                v135 = 0u;
                v136 = 0u;
                v33 = v33;
                v71 = [v33 countByEnumeratingWithState:&v133 objects:v150 count:16];
                if (!v71)
                {
                  goto LABEL_66;
                }

                v72 = v71;
                v73 = *v134;
LABEL_59:
                v74 = 0;
                while (1)
                {
                  if (*v134 != v73)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v75 = *(*(&v133 + 1) + 8 * v74);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    break;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    errorCopy4 = error;
                    if (error)
                    {
                      v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v87 = *MEMORY[0x1E698F240];
                      v146 = *MEMORY[0x1E696A578];
                      v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"continuousFeatures"];
                      v147 = v115;
                      v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
                      v84 = v86;
                      v85 = v87;
                      goto LABEL_81;
                    }

                    goto LABEL_85;
                  }

                  [v29 addObject:v75];
                  if (v72 == ++v74)
                  {
                    v72 = [v33 countByEnumeratingWithState:&v133 objects:v150 count:16];
                    self = selfCopy2;
                    if (v72)
                    {
                      goto LABEL_59;
                    }

LABEL_66:

                    v76 = [v117 objectForKeyedSubscript:@"rawMessage"];
                    v115 = v76;
                    if (!v76)
                    {
                      v68 = 0;
                      v46 = v126;
                      goto LABEL_94;
                    }

                    v77 = v76;
                    objc_opt_class();
                    v46 = v126;
                    if (objc_opt_isKindOfClass())
                    {
                      v68 = 0;
                      goto LABEL_94;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v68 = v77;
LABEL_94:
                      v19 = v118;
                      v99 = [v117 objectForKeyedSubscript:@"senderId"];
                      v111 = v99;
                      if (v99)
                      {
                        v100 = v99;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v99 = 0;
                          goto LABEL_99;
                        }

                        v101 = v118;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v99 = v100;
                          goto LABEL_99;
                        }

                        if (error)
                        {
                          v127 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v120 = *MEMORY[0x1E698F240];
                          v142 = *MEMORY[0x1E696A578];
                          v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"senderId"];
                          v143 = v106;
                          v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
                          *error = [v127 initWithDomain:v120 code:2 userInfo:v107];
                        }

                        v114 = 0;
                        selfCopy3 = 0;
                        v19 = v101;
                      }

                      else
                      {
LABEL_99:
                        v114 = v99;
                        self = [(BMTextUnderstandingPoemBuffer *)self initWithMessageTimestamp:v124 conversationId:v46 spotlightId:v118 photoAttachment:v125 extractions:v131 continuousFeatures:v29 rawMessage:v68 senderId:v99];
                        selfCopy3 = self;
                      }

LABEL_100:
                      v55 = v121;
                    }

                    else
                    {
                      if (error)
                      {
                        v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v110 = *MEMORY[0x1E698F240];
                        v144 = *MEMORY[0x1E696A578];
                        v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"rawMessage"];
                        v145 = v114;
                        v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                        v105 = v112;
                        v111 = v104;
                        v68 = 0;
                        selfCopy3 = 0;
                        *error = [v105 initWithDomain:v110 code:2 userInfo:?];
                        v19 = v118;
                        goto LABEL_100;
                      }

                      v68 = 0;
                      selfCopy3 = 0;
                      v19 = v118;
                      v55 = v121;
                    }

LABEL_102:

LABEL_103:
LABEL_104:

                    v6 = v122;
                    goto LABEL_106;
                  }
                }

                errorCopy4 = error;
                if (error)
                {
                  v81 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v82 = *MEMORY[0x1E698F240];
                  v148 = *MEMORY[0x1E696A578];
                  v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"continuousFeatures"];
                  v149 = v115;
                  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
                  v84 = v81;
                  v85 = v82;
LABEL_81:
                  v113 = v83;
                  self = selfCopy2;
                  v46 = v126;
                  v55 = v121;
                  selfCopy3 = 0;
                  *errorCopy4 = [v84 initWithDomain:v85 code:2 userInfo:?];
                  v68 = v33;
                  v19 = v118;

                  goto LABEL_102;
                }

LABEL_85:
                selfCopy3 = 0;
                v68 = v33;
LABEL_86:
                self = selfCopy2;
                v46 = v126;
LABEL_87:
                v19 = v118;
                v55 = v121;
                goto LABEL_103;
              }

              self = selfCopy2;
              if (!v33)
              {
                goto LABEL_57;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_57;
              }

              v46 = v126;
              if (error)
              {
                v116 = objc_alloc(MEMORY[0x1E696ABC0]);
                v97 = *MEMORY[0x1E698F240];
                v151 = *MEMORY[0x1E696A578];
                v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"continuousFeatures"];
                v152 = v29;
                v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
                v98 = [v116 initWithDomain:v97 code:2 userInfo:v68];
                selfCopy3 = 0;
                *error = v98;
                goto LABEL_87;
              }

              selfCopy3 = 0;
LABEL_74:
              v19 = v118;
              v55 = v121;
              goto LABEL_104;
            }
          }
        }

        if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v117 = dictionaryCopy;
          v118 = v19;
          goto LABEL_25;
        }

        if (error)
        {
          v78 = objc_alloc(MEMORY[0x1E696ABC0]);
          v79 = *MEMORY[0x1E698F240];
          v158 = *MEMORY[0x1E696A578];
          v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"extractions"];
          v159 = v131;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
          selfCopy3 = 0;
          *error = [v78 initWithDomain:v79 code:2 userInfo:v33];
          v46 = v126;
          v55 = v121;
          goto LABEL_104;
        }

        selfCopy3 = 0;
        v46 = v126;
        v55 = v121;
        v6 = v122;
LABEL_106:

        v7 = v124;
        goto LABEL_107;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v121 = v20;
        v122 = v6;
        v125 = v20;
        goto LABEL_18;
      }

      if (error)
      {
        v119 = v19;
        v56 = v6;
        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = *MEMORY[0x1E698F240];
        v160 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"photoAttachment"];
        v161 = v21;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
        v60 = v57;
        v6 = v56;
        v19 = v119;
        v132 = v59;
        v61 = [v60 initWithDomain:v58 code:2 userInfo:?];
        v125 = 0;
        selfCopy3 = 0;
        *error = v61;
        v55 = v20;
        v46 = v126;

        goto LABEL_106;
      }

      v125 = 0;
      selfCopy3 = 0;
      v46 = v126;
      v55 = v20;
LABEL_107:

      goto LABEL_108;
    }

    if (error)
    {
      v48 = v7;
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = v6;
      v51 = *MEMORY[0x1E698F240];
      v162 = *MEMORY[0x1E696A578];
      v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"spotlightId"];
      v163 = v125;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
      v53 = v49;
      v7 = v48;
      v54 = v51;
      v6 = v50;
      v55 = v52;
      v19 = 0;
      selfCopy3 = 0;
      *error = [v53 initWithDomain:v54 code:2 userInfo:v52];
      v46 = v126;
      goto LABEL_107;
    }

    v19 = 0;
    selfCopy3 = 0;
    v46 = v126;
LABEL_108:

    goto LABEL_109;
  }

  if (error)
  {
    v36 = v7;
    v37 = objc_alloc(MEMORY[0x1E696ABC0]);
    v38 = v6;
    v39 = *MEMORY[0x1E698F240];
    v164 = *MEMORY[0x1E696A578];
    v40 = dictionaryCopy;
    v41 = objc_alloc(MEMORY[0x1E696AEC0]);
    v108 = objc_opt_class();
    v42 = v41;
    dictionaryCopy = v40;
    v19 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v108, @"conversationId"];
    v165 = v19;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v44 = v37;
    v7 = v36;
    v45 = v39;
    v6 = v38;
    v128 = v43;
    v46 = 0;
    selfCopy3 = 0;
    *error = [v44 initWithDomain:v45 code:2 userInfo:?];
    goto LABEL_108;
  }

  v46 = 0;
  selfCopy3 = 0;
LABEL_109:

LABEL_110:
  v102 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoemBuffer *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_messageTimestamp)
  {
    raw_messageTimestamp = self->_raw_messageTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spotlightId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPhotoAttachment)
  {
    photoAttachment = self->_photoAttachment;
    PBDataWriterWriteBOOLField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_extractions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v23 = 0;
        PBDataWriterPlaceMark();
        [v12 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = self->_continuousFeatures;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * v17) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v15);
  }

  if (self->_rawMessage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_senderId)
  {
    PBDataWriterWriteStringField();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v46.receiver = self;
  v46.super_class = BMTextUnderstandingPoemBuffer;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_65;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v47[0]) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v47 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (LOBYTE(v47[0]) & 0x7F) << v9;
        if ((LOBYTE(v47[0]) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 4)
      {
        if (v17 > 6)
        {
          if (v17 == 7)
          {
            v18 = PBReaderReadString();
            v19 = 72;
            goto LABEL_51;
          }

          if (v17 == 8)
          {
            v18 = PBReaderReadString();
            v19 = 80;
            goto LABEL_51;
          }
        }

        else
        {
          if (v17 == 5)
          {
            v47[0] = 0.0;
            v47[1] = 0.0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v32 = [[BMTextUnderstandingPoemBufferExtraction alloc] initByReadFrom:fromCopy];
            if (!v32)
            {
              goto LABEL_67;
            }

            v33 = v32;
            [v6 addObject:v32];
            PBReaderRecallMark();
LABEL_61:

            goto LABEL_62;
          }

          if (v17 == 6)
          {
            v20 = MEMORY[0x1E696AD98];
            v47[0] = 0.0;
            v21 = [fromCopy position] + 8;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 8, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v47 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 = [v20 numberWithDouble:v47[0]];
            if (!v37)
            {
LABEL_67:

              goto LABEL_64;
            }

            v33 = v37;
            [v7 addObject:v37];
            goto LABEL_61;
          }
        }
      }

      else if (v17 > 2)
      {
        if (v17 == 3)
        {
          v18 = PBReaderReadString();
          v19 = 48;
          goto LABEL_51;
        }

        if (v17 == 4)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasPhotoAttachment = 1;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v47 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (LOBYTE(v47[0]) & 0x7F) << v23;
            if ((LOBYTE(v47[0]) & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v15 = v24++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_55;
            }
          }

          v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_55:
          v5->_photoAttachment = v29;
          goto LABEL_62;
        }
      }

      else
      {
        if (v17 == 1)
        {
          v5->_hasRaw_messageTimestamp = 1;
          v47[0] = 0.0;
          v30 = [fromCopy position] + 8;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v47 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_messageTimestamp = v47[0];
          goto LABEL_62;
        }

        if (v17 == 2)
        {
          v18 = PBReaderReadString();
          v19 = 40;
LABEL_51:
          v34 = *(&v5->super.super.isa + v19);
          *(&v5->super.super.isa + v19) = v18;

          goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_62:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v39 = [v6 copy];
  extractions = v5->_extractions;
  v5->_extractions = v39;

  v41 = [v7 copy];
  continuousFeatures = v5->_continuousFeatures;
  v5->_continuousFeatures = v41;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_64:
    v44 = 0;
  }

  else
  {
LABEL_65:
    v44 = v5;
  }

  return v44;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  messageTimestamp = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
  conversationId = [(BMTextUnderstandingPoemBuffer *)self conversationId];
  spotlightId = [(BMTextUnderstandingPoemBuffer *)self spotlightId];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemBuffer photoAttachment](self, "photoAttachment")}];
  extractions = [(BMTextUnderstandingPoemBuffer *)self extractions];
  continuousFeatures = [(BMTextUnderstandingPoemBuffer *)self continuousFeatures];
  rawMessage = [(BMTextUnderstandingPoemBuffer *)self rawMessage];
  senderId = [(BMTextUnderstandingPoemBuffer *)self senderId];
  v12 = [v3 initWithFormat:@"BMTextUnderstandingPoemBuffer with messageTimestamp: %@, conversationId: %@, spotlightId: %@, photoAttachment: %@, extractions: %@, continuousFeatures: %@, rawMessage: %@, senderId: %@", messageTimestamp, conversationId, spotlightId, v7, extractions, continuousFeatures, rawMessage, senderId];

  return v12;
}

- (BMTextUnderstandingPoemBuffer)initWithMessageTimestamp:(id)timestamp conversationId:(id)id spotlightId:(id)spotlightId photoAttachment:(id)attachment extractions:(id)extractions continuousFeatures:(id)features rawMessage:(id)message senderId:(id)self0
{
  timestampCopy = timestamp;
  idCopy = id;
  spotlightIdCopy = spotlightId;
  attachmentCopy = attachment;
  extractionsCopy = extractions;
  featuresCopy = features;
  messageCopy = message;
  senderIdCopy = senderId;
  v27.receiver = self;
  v27.super_class = BMTextUnderstandingPoemBuffer;
  v18 = [(BMEventBase *)&v27 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v18->_hasRaw_messageTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v18->_hasRaw_messageTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_messageTimestamp = v19;
    objc_storeStrong(&v18->_conversationId, id);
    objc_storeStrong(&v18->_spotlightId, spotlightId);
    if (attachmentCopy)
    {
      v18->_hasPhotoAttachment = 1;
      v18->_photoAttachment = [attachmentCopy BOOLValue];
    }

    else
    {
      v18->_hasPhotoAttachment = 0;
      v18->_photoAttachment = 0;
    }

    objc_storeStrong(&v18->_extractions, extractions);
    objc_storeStrong(&v18->_continuousFeatures, features);
    objc_storeStrong(&v18->_rawMessage, message);
    objc_storeStrong(&v18->_senderId, senderId);
  }

  return v18;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageTimestamp" number:1 type:0 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationId" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spotlightId" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoAttachment" number:4 type:12 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"extractions" number:5 type:14 subMessageClass:objc_opt_class()];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"continuousFeatures" number:6 type:0 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMessage" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"senderId" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spotlightId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photoAttachment" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"extractions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_245];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"continuousFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_247];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMessage" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"senderId" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __40__BMTextUnderstandingPoemBuffer_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _continuousFeaturesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __40__BMTextUnderstandingPoemBuffer_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _extractionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMTextUnderstandingPoemBuffer alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end