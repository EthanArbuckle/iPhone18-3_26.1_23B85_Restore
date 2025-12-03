@interface BMMessagesSearchEventResultReceived
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSearchEventResultReceived)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMessagesSearchEventResultReceived)initWithMillisecondsSinceSessionStarted:(id)started sessionId:(id)id queryId:(id)queryId noResultReceived:(id)received totalConversations:(id)conversations totalTokens:(id)tokens totalMessages:(id)messages totalLinks:(id)self0 totalPhotos:(id)self1 totalLocation:(id)self2 totalAttachments:(id)self3 totalWallet:(id)self4 totalCollaboration:(id)self5 totalHighlights:(id)self6;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesSearchEventResultReceived

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMessagesSearchEventResultReceived hasMillisecondsSinceSessionStarted](self, "hasMillisecondsSinceSessionStarted") || [v5 hasMillisecondsSinceSessionStarted])
    {
      if (![(BMMessagesSearchEventResultReceived *)self hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_71;
      }

      if (![v5 hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_71;
      }

      millisecondsSinceSessionStarted = [(BMMessagesSearchEventResultReceived *)self millisecondsSinceSessionStarted];
      if (millisecondsSinceSessionStarted != [v5 millisecondsSinceSessionStarted])
      {
        goto LABEL_71;
      }
    }

    sessionId = [(BMMessagesSearchEventResultReceived *)self sessionId];
    sessionId2 = [v5 sessionId];
    v9 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMMessagesSearchEventResultReceived *)self sessionId];
      sessionId4 = [v5 sessionId];
      v12 = [sessionId3 isEqual:sessionId4];

      if (!v12)
      {
        goto LABEL_71;
      }
    }

    queryId = [(BMMessagesSearchEventResultReceived *)self queryId];
    queryId2 = [v5 queryId];
    v16 = queryId2;
    if (queryId == queryId2)
    {
    }

    else
    {
      queryId3 = [(BMMessagesSearchEventResultReceived *)self queryId];
      queryId4 = [v5 queryId];
      v19 = [queryId3 isEqual:queryId4];

      if (!v19)
      {
        goto LABEL_71;
      }
    }

    if (!-[BMMessagesSearchEventResultReceived hasNoResultReceived](self, "hasNoResultReceived") && ![v5 hasNoResultReceived] || -[BMMessagesSearchEventResultReceived hasNoResultReceived](self, "hasNoResultReceived") && objc_msgSend(v5, "hasNoResultReceived") && (v20 = -[BMMessagesSearchEventResultReceived noResultReceived](self, "noResultReceived"), v20 == objc_msgSend(v5, "noResultReceived")))
    {
      if (!-[BMMessagesSearchEventResultReceived hasTotalConversations](self, "hasTotalConversations") && ![v5 hasTotalConversations] || -[BMMessagesSearchEventResultReceived hasTotalConversations](self, "hasTotalConversations") && objc_msgSend(v5, "hasTotalConversations") && (v21 = -[BMMessagesSearchEventResultReceived totalConversations](self, "totalConversations"), v21 == objc_msgSend(v5, "totalConversations")))
      {
        if (!-[BMMessagesSearchEventResultReceived hasTotalTokens](self, "hasTotalTokens") && ![v5 hasTotalTokens] || -[BMMessagesSearchEventResultReceived hasTotalTokens](self, "hasTotalTokens") && objc_msgSend(v5, "hasTotalTokens") && (v22 = -[BMMessagesSearchEventResultReceived totalTokens](self, "totalTokens"), v22 == objc_msgSend(v5, "totalTokens")))
        {
          if (!-[BMMessagesSearchEventResultReceived hasTotalMessages](self, "hasTotalMessages") && ![v5 hasTotalMessages] || -[BMMessagesSearchEventResultReceived hasTotalMessages](self, "hasTotalMessages") && objc_msgSend(v5, "hasTotalMessages") && (v23 = -[BMMessagesSearchEventResultReceived totalMessages](self, "totalMessages"), v23 == objc_msgSend(v5, "totalMessages")))
          {
            if (!-[BMMessagesSearchEventResultReceived hasTotalLinks](self, "hasTotalLinks") && ![v5 hasTotalLinks] || -[BMMessagesSearchEventResultReceived hasTotalLinks](self, "hasTotalLinks") && objc_msgSend(v5, "hasTotalLinks") && (v24 = -[BMMessagesSearchEventResultReceived totalLinks](self, "totalLinks"), v24 == objc_msgSend(v5, "totalLinks")))
            {
              if (!-[BMMessagesSearchEventResultReceived hasTotalPhotos](self, "hasTotalPhotos") && ![v5 hasTotalPhotos] || -[BMMessagesSearchEventResultReceived hasTotalPhotos](self, "hasTotalPhotos") && objc_msgSend(v5, "hasTotalPhotos") && (v25 = -[BMMessagesSearchEventResultReceived totalPhotos](self, "totalPhotos"), v25 == objc_msgSend(v5, "totalPhotos")))
              {
                if (!-[BMMessagesSearchEventResultReceived hasTotalLocation](self, "hasTotalLocation") && ![v5 hasTotalLocation] || -[BMMessagesSearchEventResultReceived hasTotalLocation](self, "hasTotalLocation") && objc_msgSend(v5, "hasTotalLocation") && (v26 = -[BMMessagesSearchEventResultReceived totalLocation](self, "totalLocation"), v26 == objc_msgSend(v5, "totalLocation")))
                {
                  if (!-[BMMessagesSearchEventResultReceived hasTotalAttachments](self, "hasTotalAttachments") && ![v5 hasTotalAttachments] || -[BMMessagesSearchEventResultReceived hasTotalAttachments](self, "hasTotalAttachments") && objc_msgSend(v5, "hasTotalAttachments") && (v27 = -[BMMessagesSearchEventResultReceived totalAttachments](self, "totalAttachments"), v27 == objc_msgSend(v5, "totalAttachments")))
                  {
                    if (!-[BMMessagesSearchEventResultReceived hasTotalWallet](self, "hasTotalWallet") && ![v5 hasTotalWallet] || -[BMMessagesSearchEventResultReceived hasTotalWallet](self, "hasTotalWallet") && objc_msgSend(v5, "hasTotalWallet") && (v28 = -[BMMessagesSearchEventResultReceived totalWallet](self, "totalWallet"), v28 == objc_msgSend(v5, "totalWallet")))
                    {
                      if (!-[BMMessagesSearchEventResultReceived hasTotalCollaboration](self, "hasTotalCollaboration") && ![v5 hasTotalCollaboration] || -[BMMessagesSearchEventResultReceived hasTotalCollaboration](self, "hasTotalCollaboration") && objc_msgSend(v5, "hasTotalCollaboration") && (v29 = -[BMMessagesSearchEventResultReceived totalCollaboration](self, "totalCollaboration"), v29 == objc_msgSend(v5, "totalCollaboration")))
                      {
                        if (!-[BMMessagesSearchEventResultReceived hasTotalHighlights](self, "hasTotalHighlights") && ![v5 hasTotalHighlights])
                        {
                          v13 = 1;
                          goto LABEL_72;
                        }

                        if (-[BMMessagesSearchEventResultReceived hasTotalHighlights](self, "hasTotalHighlights") && [v5 hasTotalHighlights])
                        {
                          totalHighlights = [(BMMessagesSearchEventResultReceived *)self totalHighlights];
                          v13 = totalHighlights == [v5 totalHighlights];
LABEL_72:

                          goto LABEL_73;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_71:
    v13 = 0;
    goto LABEL_72;
  }

  v13 = 0;
LABEL_73:

  return v13;
}

- (id)jsonDictionary
{
  v47[14] = *MEMORY[0x1E69E9840];
  if ([(BMMessagesSearchEventResultReceived *)self hasMillisecondsSinceSessionStarted])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  }

  else
  {
    v3 = 0;
  }

  sessionId = [(BMMessagesSearchEventResultReceived *)self sessionId];
  queryId = [(BMMessagesSearchEventResultReceived *)self queryId];
  if ([(BMMessagesSearchEventResultReceived *)self hasNoResultReceived])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSearchEventResultReceived noResultReceived](self, "noResultReceived")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalConversations])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalConversations](self, "totalConversations")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalTokens])
  {
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalTokens](self, "totalTokens")}];
  }

  else
  {
    v45 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalMessages])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalMessages](self, "totalMessages")}];
  }

  else
  {
    v44 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalLinks])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalLinks](self, "totalLinks")}];
  }

  else
  {
    v43 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalPhotos])
  {
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalPhotos](self, "totalPhotos")}];
  }

  else
  {
    v42 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalLocation])
  {
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalLocation](self, "totalLocation")}];
  }

  else
  {
    v41 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalAttachments])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalAttachments](self, "totalAttachments")}];
  }

  else
  {
    v40 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalWallet])
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalWallet](self, "totalWallet")}];
  }

  else
  {
    v39 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalCollaboration])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalCollaboration](self, "totalCollaboration")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMessagesSearchEventResultReceived *)self hasTotalHighlights])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalHighlights](self, "totalHighlights")}];
  }

  else
  {
    v9 = 0;
  }

  v46[0] = @"millisecondsSinceSessionStarted";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null;
  v47[0] = null;
  v46[1] = @"sessionId";
  null2 = sessionId;
  if (!sessionId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null2;
  v47[1] = null2;
  v46[2] = @"queryId";
  null3 = queryId;
  if (!queryId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null3;
  v47[2] = null3;
  v46[3] = @"noResultReceived";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null4;
  v47[3] = null4;
  v46[4] = @"totalConversations";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null5;
  v47[4] = null5;
  v46[5] = @"totalTokens";
  null6 = v45;
  if (!v45)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = queryId;
  v47[5] = null6;
  v46[6] = @"totalMessages";
  null7 = v44;
  if (!v44)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = sessionId;
  v47[6] = null7;
  v46[7] = @"totalLinks";
  null8 = v43;
  if (!v43)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v7;
  v47[7] = null8;
  v46[8] = @"totalPhotos";
  null9 = v42;
  if (!v42)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null7;
  v36 = v6;
  v47[8] = null9;
  v46[9] = @"totalLocation";
  null10 = v41;
  if (!v41)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v3;
  v47[9] = null10;
  v46[10] = @"totalAttachments";
  null11 = v40;
  if (!v40)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null6;
  v47[10] = null11;
  v46[11] = @"totalWallet";
  null12 = v39;
  if (!v39)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v47[11] = null12;
  v46[12] = @"totalCollaboration";
  null13 = v8;
  if (!v8)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v47[12] = null13;
  v46[13] = @"totalHighlights";
  null14 = v9;
  if (!v9)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v47[13] = null14;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:14];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_67;
    }
  }

  else
  {

    if (v8)
    {
      goto LABEL_67;
    }
  }

LABEL_67:
  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (v45)
  {
    if (v35)
    {
      goto LABEL_81;
    }
  }

  else
  {

    if (v35)
    {
LABEL_81:
      if (v36)
      {
        goto LABEL_82;
      }

      goto LABEL_92;
    }
  }

  if (v36)
  {
LABEL_82:
    if (v37)
    {
      goto LABEL_83;
    }

    goto LABEL_93;
  }

LABEL_92:

  if (v37)
  {
LABEL_83:
    if (v38)
    {
      goto LABEL_84;
    }

LABEL_94:

    if (v20)
    {
      goto LABEL_85;
    }

    goto LABEL_95;
  }

LABEL_93:

  if (!v38)
  {
    goto LABEL_94;
  }

LABEL_84:
  if (v20)
  {
    goto LABEL_85;
  }

LABEL_95:

LABEL_85:
  v25 = *MEMORY[0x1E69E9840];

  return v34;
}

- (BMMessagesSearchEventResultReceived)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v191[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"millisecondsSinceSessionStarted"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v163 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
    if (!v163 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v162 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v162 = v163;
LABEL_7:
      v9 = [dictionaryCopy objectForKeyedSubscript:@"queryId"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v161 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v161 = v9;
LABEL_10:
        v10 = [dictionaryCopy objectForKeyedSubscript:@"noResultReceived"];
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v158 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v158 = v10;
LABEL_13:
          v11 = [dictionaryCopy objectForKeyedSubscript:@"totalConversations"];
          if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v155 = v11;
            v160 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v155 = v11;
            v160 = v11;
LABEL_16:
            v12 = [dictionaryCopy objectForKeyedSubscript:@"totalTokens"];
            v157 = v12;
            if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v159 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v159 = v13;
LABEL_19:
              v14 = [dictionaryCopy objectForKeyedSubscript:@"totalMessages"];
              v154 = v14;
              if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v156 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v156 = v15;
LABEL_22:
                v16 = [dictionaryCopy objectForKeyedSubscript:@"totalLinks"];
                v152 = v16;
                if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v153 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v153 = v17;
LABEL_25:
                  v18 = [dictionaryCopy objectForKeyedSubscript:@"totalPhotos"];
                  v139 = v18;
                  if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v140 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v140 = v19;
LABEL_28:
                    v20 = [dictionaryCopy objectForKeyedSubscript:@"totalLocation"];
                    v137 = v20;
                    if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v138 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v138 = v21;
LABEL_31:
                      v22 = [dictionaryCopy objectForKeyedSubscript:@"totalAttachments"];
                      v130 = v22;
                      if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v136 = 0;
                        goto LABEL_34;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v136 = v23;
LABEL_34:
                        v24 = [dictionaryCopy objectForKeyedSubscript:@"totalWallet"];
                        v128 = v9;
                        v129 = v24;
                        if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v131 = 0;
                          goto LABEL_37;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v131 = v25;
LABEL_37:
                          v26 = [dictionaryCopy objectForKeyedSubscript:@"totalCollaboration"];
                          v132 = v8;
                          if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            selfCopy3 = self;
                            v28 = 0;
                            goto LABEL_40;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            selfCopy3 = self;
                            v28 = v26;
LABEL_40:
                            v29 = [dictionaryCopy objectForKeyedSubscript:@"totalHighlights"];
                            if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v30 = 0;
LABEL_43:
                              error = v158;
                              v31 = [(BMMessagesSearchEventResultReceived *)selfCopy3 initWithMillisecondsSinceSessionStarted:v132 sessionId:v162 queryId:v161 noResultReceived:v158 totalConversations:v160 totalTokens:v159 totalMessages:v156 totalLinks:v153 totalPhotos:v140 totalLocation:v138 totalAttachments:v136 totalWallet:v131 totalCollaboration:v28 totalHighlights:v30];
                              selfCopy3 = v31;
LABEL_112:

                              self = selfCopy3;
                              v8 = v132;
LABEL_113:

                              v9 = v128;
LABEL_114:
                              v56 = v155;

LABEL_115:
LABEL_116:

LABEL_117:
                              goto LABEL_118;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v30 = v29;
                              goto LABEL_43;
                            }

                            if (error)
                            {
                              v151 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v135 = *MEMORY[0x1E698F240];
                              v164 = *MEMORY[0x1E696A578];
                              v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalHighlights"];
                              v165 = v123;
                              v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
                              *error = [v151 initWithDomain:v135 code:2 userInfo:v124];
                            }

                            v30 = 0;
                            v31 = 0;
LABEL_111:
                            error = v158;
                            goto LABEL_112;
                          }

                          if (error)
                          {
                            selfCopy3 = self;
                            v121 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v150 = *MEMORY[0x1E698F240];
                            v166 = *MEMORY[0x1E696A578];
                            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalCollaboration"];
                            v167 = v30;
                            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
                            v122 = [v121 initWithDomain:v150 code:2 userInfo:v29];
                            v28 = 0;
                            v31 = 0;
                            *error = v122;
                            goto LABEL_111;
                          }

                          v28 = 0;
                          v31 = 0;
LABEL_135:
                          error = v158;
                          goto LABEL_113;
                        }

                        if (error)
                        {
                          v134 = v10;
                          v116 = v8;
                          selfCopy4 = self;
                          v118 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v119 = *MEMORY[0x1E698F240];
                          v168 = *MEMORY[0x1E696A578];
                          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalWallet"];
                          v169 = v28;
                          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
                          v120 = v118;
                          self = selfCopy4;
                          v8 = v116;
                          v10 = v134;
                          v131 = 0;
                          v31 = 0;
                          *error = [v120 initWithDomain:v119 code:2 userInfo:v26];
                          goto LABEL_135;
                        }

                        v131 = 0;
                        v31 = 0;
LABEL_133:
                        error = v158;
                        goto LABEL_114;
                      }

                      if (error)
                      {
                        v108 = v8;
                        selfCopy5 = self;
                        v110 = objc_alloc(MEMORY[0x1E696ABC0]);
                        errorCopy = error;
                        v111 = v9;
                        v112 = *MEMORY[0x1E698F240];
                        v170 = *MEMORY[0x1E696A578];
                        v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalAttachments"];
                        v171 = v131;
                        v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
                        v114 = v110;
                        self = selfCopy5;
                        v8 = v108;
                        v115 = v112;
                        v9 = v111;
                        v129 = v113;
                        v136 = 0;
                        v31 = 0;
                        *errorCopy = [v114 initWithDomain:v115 code:2 userInfo:?];
                        goto LABEL_133;
                      }

                      v136 = 0;
                      v31 = 0;
LABEL_131:
                      error = v158;
                      v56 = v155;
                      goto LABEL_115;
                    }

                    if (error)
                    {
                      v100 = v8;
                      selfCopy6 = self;
                      v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                      errorCopy2 = error;
                      v103 = v9;
                      v104 = *MEMORY[0x1E698F240];
                      v172 = *MEMORY[0x1E696A578];
                      v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalLocation"];
                      v173 = v136;
                      v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
                      v106 = v102;
                      self = selfCopy6;
                      v8 = v100;
                      v107 = v104;
                      v9 = v103;
                      v130 = v105;
                      v138 = 0;
                      v31 = 0;
                      *errorCopy2 = [v106 initWithDomain:v107 code:2 userInfo:?];
                      goto LABEL_131;
                    }

                    v138 = 0;
                    v31 = 0;
LABEL_129:
                    error = v158;
                    v56 = v155;
                    goto LABEL_116;
                  }

                  if (error)
                  {
                    v92 = v8;
                    selfCopy7 = self;
                    v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                    errorCopy3 = error;
                    v95 = v9;
                    v96 = *MEMORY[0x1E698F240];
                    v174 = *MEMORY[0x1E696A578];
                    v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalPhotos"];
                    v175 = v138;
                    v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
                    v98 = v94;
                    self = selfCopy7;
                    v8 = v92;
                    v99 = v96;
                    v9 = v95;
                    v137 = v97;
                    v140 = 0;
                    v31 = 0;
                    *errorCopy3 = [v98 initWithDomain:v99 code:2 userInfo:?];
                    goto LABEL_129;
                  }

                  v140 = 0;
                  v31 = 0;
LABEL_127:
                  error = v158;
                  v56 = v155;
                  goto LABEL_117;
                }

                if (error)
                {
                  v84 = v8;
                  selfCopy8 = self;
                  v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                  errorCopy4 = error;
                  v87 = v9;
                  v88 = *MEMORY[0x1E698F240];
                  v176 = *MEMORY[0x1E696A578];
                  v140 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalLinks"];
                  v177 = v140;
                  v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
                  v90 = v86;
                  self = selfCopy8;
                  v8 = v84;
                  v91 = v88;
                  v9 = v87;
                  v139 = v89;
                  v153 = 0;
                  v31 = 0;
                  *errorCopy4 = [v90 initWithDomain:v91 code:2 userInfo:?];
                  goto LABEL_127;
                }

                v153 = 0;
                v31 = 0;
LABEL_107:
                error = v158;
                v56 = v155;
LABEL_118:

                goto LABEL_119;
              }

              if (error)
              {
                v76 = v8;
                selfCopy9 = self;
                v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                errorCopy5 = error;
                v79 = v9;
                v80 = *MEMORY[0x1E698F240];
                v178 = *MEMORY[0x1E696A578];
                v153 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalMessages"];
                v179 = v153;
                v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
                v82 = v78;
                self = selfCopy9;
                v8 = v76;
                v83 = v80;
                v9 = v79;
                v152 = v81;
                v156 = 0;
                v31 = 0;
                *errorCopy5 = [v82 initWithDomain:v83 code:2 userInfo:?];
                goto LABEL_107;
              }

              v156 = 0;
              v31 = 0;
LABEL_103:
              error = v158;
              v56 = v155;
LABEL_119:

              goto LABEL_120;
            }

            if (error)
            {
              v68 = v8;
              selfCopy10 = self;
              v70 = objc_alloc(MEMORY[0x1E696ABC0]);
              errorCopy6 = error;
              v71 = v9;
              v72 = *MEMORY[0x1E698F240];
              v180 = *MEMORY[0x1E696A578];
              v156 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalTokens"];
              v181 = v156;
              v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
              v74 = v70;
              self = selfCopy10;
              v8 = v68;
              v75 = v72;
              v9 = v71;
              v154 = v73;
              v159 = 0;
              v31 = 0;
              *errorCopy6 = [v74 initWithDomain:v75 code:2 userInfo:?];
              goto LABEL_103;
            }

            v159 = 0;
            v31 = 0;
            error = v158;
            v56 = v155;
LABEL_120:

            goto LABEL_121;
          }

          if (error)
          {
            v133 = v8;
            selfCopy11 = self;
            v60 = objc_alloc(MEMORY[0x1E696ABC0]);
            errorCopy7 = error;
            v61 = v9;
            v62 = *MEMORY[0x1E698F240];
            v182 = *MEMORY[0x1E696A578];
            v63 = objc_alloc(MEMORY[0x1E696AEC0]);
            v127 = objc_opt_class();
            v64 = v63;
            v56 = v11;
            v159 = [v64 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v127, @"totalConversations"];
            v183 = v159;
            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
            v66 = v60;
            self = selfCopy11;
            v8 = v133;
            v67 = v62;
            v9 = v61;
            v157 = v65;
            v160 = 0;
            v31 = 0;
            *errorCopy7 = [v66 initWithDomain:v67 code:2 userInfo:?];
            error = v158;
            goto LABEL_120;
          }

          v160 = 0;
          v31 = 0;
          error = v158;
          v56 = v11;
LABEL_121:

          goto LABEL_122;
        }

        if (error)
        {
          v51 = v8;
          selfCopy12 = self;
          v53 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy8 = error;
          v54 = v9;
          v55 = *MEMORY[0x1E698F240];
          v184 = *MEMORY[0x1E696A578];
          v160 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"noResultReceived"];
          v185 = v160;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
          v57 = v53;
          self = selfCopy12;
          v8 = v51;
          v58 = v55;
          v9 = v54;
          error = 0;
          v31 = 0;
          *errorCopy8 = [v57 initWithDomain:v58 code:2 userInfo:v56];
          goto LABEL_121;
        }

        v31 = 0;
LABEL_122:

        goto LABEL_123;
      }

      if (error)
      {
        v43 = v8;
        selfCopy13 = self;
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy9 = error;
        v46 = *MEMORY[0x1E698F240];
        v186 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"queryId"];
        v187 = v47;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        v49 = v45;
        self = selfCopy13;
        v8 = v43;
        v10 = v48;
        v50 = v46;
        error = v47;
        v161 = 0;
        v31 = 0;
        *errorCopy9 = [v49 initWithDomain:v50 code:2 userInfo:v48];
        goto LABEL_122;
      }

      v161 = 0;
      v31 = 0;
LABEL_123:

      goto LABEL_124;
    }

    if (error)
    {
      selfCopy14 = self;
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v188 = *MEMORY[0x1E696A578];
      v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
      v189 = v161;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
      v41 = v38;
      self = selfCopy14;
      v42 = v39;
      v9 = v40;
      v162 = 0;
      v31 = 0;
      *error = [v41 initWithDomain:v42 code:2 userInfo:v40];
      goto LABEL_123;
    }

    v162 = 0;
    v31 = 0;
LABEL_124:

    goto LABEL_125;
  }

  if (error)
  {
    selfCopy15 = self;
    v33 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34 = *MEMORY[0x1E698F240];
    v190 = *MEMORY[0x1E696A578];
    v162 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"millisecondsSinceSessionStarted"];
    v191[0] = v162;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v191 forKeys:&v190 count:1];
    v36 = v33;
    self = selfCopy15;
    v163 = v35;
    v8 = 0;
    v31 = 0;
    *error = [v36 initWithDomain:v34 code:2 userInfo:?];
    goto LABEL_124;
  }

  v8 = 0;
  v31 = 0;
LABEL_125:

  v125 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventResultReceived *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasMillisecondsSinceSessionStarted)
  {
    millisecondsSinceSessionStarted = self->_millisecondsSinceSessionStarted;
    PBDataWriterWriteUint64Field();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_queryId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasNoResultReceived)
  {
    noResultReceived = self->_noResultReceived;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasTotalConversations)
  {
    totalConversations = self->_totalConversations;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTotalTokens)
  {
    totalTokens = self->_totalTokens;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTotalMessages)
  {
    totalMessages = self->_totalMessages;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTotalLinks)
  {
    totalLinks = self->_totalLinks;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTotalPhotos)
  {
    totalPhotos = self->_totalPhotos;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTotalLocation)
  {
    totalLocation = self->_totalLocation;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTotalAttachments)
  {
    totalAttachments = self->_totalAttachments;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTotalWallet)
  {
    totalWallet = self->_totalWallet;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTotalCollaboration)
  {
    totalCollaboration = self->_totalCollaboration;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTotalHighlights)
  {
    totalHighlights = self->_totalHighlights;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v96.receiver = self;
  v96.super_class = BMMessagesSearchEventResultReceived;
  v5 = [(BMEventBase *)&v96 init];
  if (!v5)
  {
    goto LABEL_182;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v97 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v97 & 0x7F) << v7;
        if ((v97 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v5->_hasMillisecondsSinceSessionStarted = 1;
          while (1)
          {
            v97 = 0;
            v18 = [fromCopy position] + 1;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 = (((v97 & 0x7F) << v15) | v17);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v13 = v16++ >= 9;
            if (v13)
            {
              v21 = 0;
LABEL_157:
              v92 = 40;
              goto LABEL_178;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

          goto LABEL_157;
        case 2u:
          v46 = PBReaderReadString();
          v47 = 48;
          goto LABEL_84;
        case 3u:
          v46 = PBReaderReadString();
          v47 = 56;
LABEL_84:
          v61 = *(&v5->super.super.isa + v47);
          *(&v5->super.super.isa + v47) = v46;

          goto LABEL_179;
        case 4u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v5->_hasNoResultReceived = 1;
          while (1)
          {
            v97 = 0;
            v51 = [fromCopy position] + 1;
            if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v50 |= (v97 & 0x7F) << v48;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v13 = v49++ >= 9;
            if (v13)
            {
              LOBYTE(v54) = 0;
              goto LABEL_149;
            }
          }

          v54 = (v50 != 0) & ~[fromCopy hasError];
LABEL_149:
          v5->_noResultReceived = v54;
          goto LABEL_179;
        case 5u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v5->_hasTotalConversations = 1;
          while (1)
          {
            v97 = 0;
            v31 = [fromCopy position] + 1;
            if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v30 = (((v97 & 0x7F) << v28) | v30);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v13 = v29++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_139;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v30;
          }

LABEL_139:
          v92 = 64;
          goto LABEL_178;
        case 6u:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v5->_hasTotalTokens = 1;
          while (1)
          {
            v97 = 0;
            v65 = [fromCopy position] + 1;
            if (v65 >= [fromCopy position] && (v66 = objc_msgSend(fromCopy, "position") + 1, v66 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v64 = (((v97 & 0x7F) << v62) | v64);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v13 = v63++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_161;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v64;
          }

LABEL_161:
          v92 = 72;
          goto LABEL_178;
        case 7u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v5->_hasTotalMessages = 1;
          while (1)
          {
            v97 = 0;
            v77 = [fromCopy position] + 1;
            if (v77 >= [fromCopy position] && (v78 = objc_msgSend(fromCopy, "position") + 1, v78 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v76 = (((v97 & 0x7F) << v74) | v76);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v13 = v75++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_169;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v76;
          }

LABEL_169:
          v92 = 80;
          goto LABEL_178;
        case 8u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v5->_hasTotalLinks = 1;
          while (1)
          {
            v97 = 0;
            v58 = [fromCopy position] + 1;
            if (v58 >= [fromCopy position] && (v59 = objc_msgSend(fromCopy, "position") + 1, v59 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v57 = (((v97 & 0x7F) << v55) | v57);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v13 = v56++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_153;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v57;
          }

LABEL_153:
          v92 = 88;
          goto LABEL_178;
        case 9u:
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v5->_hasTotalPhotos = 1;
          while (1)
          {
            v97 = 0;
            v89 = [fromCopy position] + 1;
            if (v89 >= [fromCopy position] && (v90 = objc_msgSend(fromCopy, "position") + 1, v90 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v88 = (((v97 & 0x7F) << v86) | v88);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            v13 = v87++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_177;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v88;
          }

LABEL_177:
          v92 = 96;
          goto LABEL_178;
        case 0xAu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v5->_hasTotalLocation = 1;
          while (1)
          {
            v97 = 0;
            v43 = [fromCopy position] + 1;
            if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v42 = (((v97 & 0x7F) << v40) | v42);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v13 = v41++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_147;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v42;
          }

LABEL_147:
          v92 = 104;
          goto LABEL_178;
        case 0xBu:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v5->_hasTotalAttachments = 1;
          while (1)
          {
            v97 = 0;
            v83 = [fromCopy position] + 1;
            if (v83 >= [fromCopy position] && (v84 = objc_msgSend(fromCopy, "position") + 1, v84 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v82 = (((v97 & 0x7F) << v80) | v82);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v13 = v81++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_173;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v82;
          }

LABEL_173:
          v92 = 112;
          goto LABEL_178;
        case 0xCu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v5->_hasTotalWallet = 1;
          while (1)
          {
            v97 = 0;
            v25 = [fromCopy position] + 1;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v24 = (((v97 & 0x7F) << v22) | v24);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v13 = v23++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_135;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_135:
          v92 = 120;
          goto LABEL_178;
        case 0xDu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v5->_hasTotalCollaboration = 1;
          while (1)
          {
            v97 = 0;
            v37 = [fromCopy position] + 1;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data12 = [fromCopy data];
              [data12 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v36 = (((v97 & 0x7F) << v34) | v36);
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v13 = v35++ >= 9;
            if (v13)
            {
              v21 = 0;
              goto LABEL_143;
            }
          }

          if ([fromCopy hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v36;
          }

LABEL_143:
          v92 = 128;
          goto LABEL_178;
        case 0xEu:
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v5->_hasTotalHighlights = 1;
          break;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_181;
          }

          goto LABEL_179;
      }

      while (1)
      {
        v97 = 0;
        v71 = [fromCopy position] + 1;
        if (v71 >= [fromCopy position] && (v72 = objc_msgSend(fromCopy, "position") + 1, v72 <= objc_msgSend(fromCopy, "length")))
        {
          data13 = [fromCopy data];
          [data13 getBytes:&v97 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v70 |= (v97 & 0x7F) << v68;
        if ((v97 & 0x80) == 0)
        {
          break;
        }

        v68 += 7;
        v13 = v69++ >= 9;
        if (v13)
        {
          v21 = 0;
          goto LABEL_165;
        }
      }

      v21 = [fromCopy hasError] ? 0 : v70;
LABEL_165:
      v92 = 136;
LABEL_178:
      *(&v5->super.super.isa + v92) = v21;
LABEL_179:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_181:
    v94 = 0;
  }

  else
  {
LABEL_182:
    v94 = v5;
  }

  return v94;
}

- (NSString)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  sessionId = [(BMMessagesSearchEventResultReceived *)self sessionId];
  queryId = [(BMMessagesSearchEventResultReceived *)self queryId];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSearchEventResultReceived noResultReceived](self, "noResultReceived")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalConversations](self, "totalConversations")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalTokens](self, "totalTokens")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalMessages](self, "totalMessages")}];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalLinks](self, "totalLinks")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalPhotos](self, "totalPhotos")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalLocation](self, "totalLocation")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalAttachments](self, "totalAttachments")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalWallet](self, "totalWallet")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalCollaboration](self, "totalCollaboration")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventResultReceived totalHighlights](self, "totalHighlights")}];
  v17 = [v16 initWithFormat:@"BMMessagesSearchEventResultReceived with millisecondsSinceSessionStarted: %@, sessionId: %@, queryId: %@, noResultReceived: %@, totalConversations: %@, totalTokens: %@, totalMessages: %@, totalLinks: %@, totalPhotos: %@, totalLocation: %@, totalAttachments: %@, totalWallet: %@, totalCollaboration: %@, totalHighlights: %@", v15, sessionId, queryId, v18, v11, v13, v12, v3, v10, v4, v5, v6, v7, v8];

  return v17;
}

- (BMMessagesSearchEventResultReceived)initWithMillisecondsSinceSessionStarted:(id)started sessionId:(id)id queryId:(id)queryId noResultReceived:(id)received totalConversations:(id)conversations totalTokens:(id)tokens totalMessages:(id)messages totalLinks:(id)self0 totalPhotos:(id)self1 totalLocation:(id)self2 totalAttachments:(id)self3 totalWallet:(id)self4 totalCollaboration:(id)self5 totalHighlights:(id)self6
{
  startedCopy = started;
  obj = id;
  idCopy = id;
  queryIdCopy = queryId;
  receivedCopy = received;
  conversationsCopy = conversations;
  tokensCopy = tokens;
  messagesCopy = messages;
  linksCopy = links;
  photosCopy = photos;
  locationCopy = location;
  v24 = tokensCopy;
  attachmentsCopy = attachments;
  walletCopy = wallet;
  collaborationCopy = collaboration;
  highlightsCopy = highlights;
  v51.receiver = self;
  v51.super_class = BMMessagesSearchEventResultReceived;
  v29 = [(BMEventBase *)&v51 init];
  if (v29)
  {
    v29->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startedCopy)
    {
      v29->_hasMillisecondsSinceSessionStarted = 1;
      unsignedLongLongValue = [startedCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v29->_hasMillisecondsSinceSessionStarted = 0;
    }

    v29->_millisecondsSinceSessionStarted = unsignedLongLongValue;
    objc_storeStrong(&v29->_sessionId, obj);
    objc_storeStrong(&v29->_queryId, queryId);
    if (receivedCopy)
    {
      v29->_hasNoResultReceived = 1;
      v29->_noResultReceived = [receivedCopy BOOLValue];
    }

    else
    {
      v29->_hasNoResultReceived = 0;
      v29->_noResultReceived = 0;
    }

    if (conversationsCopy)
    {
      v29->_hasTotalConversations = 1;
      unsignedLongLongValue2 = [conversationsCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
      v29->_hasTotalConversations = 0;
    }

    v29->_totalConversations = unsignedLongLongValue2;
    if (v24)
    {
      v29->_hasTotalTokens = 1;
      unsignedLongLongValue3 = [v24 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue3 = 0;
      v29->_hasTotalTokens = 0;
    }

    v29->_totalTokens = unsignedLongLongValue3;
    unsignedLongLongValue4 = messagesCopy;
    if (messagesCopy)
    {
      v29->_hasTotalMessages = 1;
      unsignedLongLongValue4 = [messagesCopy unsignedLongLongValue];
    }

    else
    {
      v29->_hasTotalMessages = 0;
    }

    v29->_totalMessages = unsignedLongLongValue4;
    unsignedLongLongValue5 = linksCopy;
    if (linksCopy)
    {
      v29->_hasTotalLinks = 1;
      unsignedLongLongValue5 = [linksCopy unsignedLongLongValue];
    }

    else
    {
      v29->_hasTotalLinks = 0;
    }

    v29->_totalLinks = unsignedLongLongValue5;
    unsignedLongLongValue6 = photosCopy;
    if (photosCopy)
    {
      v29->_hasTotalPhotos = 1;
      unsignedLongLongValue6 = [photosCopy unsignedLongLongValue];
    }

    else
    {
      v29->_hasTotalPhotos = 0;
    }

    v29->_totalPhotos = unsignedLongLongValue6;
    if (locationCopy)
    {
      v29->_hasTotalLocation = 1;
      unsignedLongLongValue7 = [locationCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue7 = 0;
      v29->_hasTotalLocation = 0;
    }

    v29->_totalLocation = unsignedLongLongValue7;
    if (attachmentsCopy)
    {
      v29->_hasTotalAttachments = 1;
      unsignedLongLongValue8 = [attachmentsCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue8 = 0;
      v29->_hasTotalAttachments = 0;
    }

    v29->_totalAttachments = unsignedLongLongValue8;
    if (walletCopy)
    {
      v29->_hasTotalWallet = 1;
      unsignedLongLongValue9 = [walletCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue9 = 0;
      v29->_hasTotalWallet = 0;
    }

    v29->_totalWallet = unsignedLongLongValue9;
    if (collaborationCopy)
    {
      v29->_hasTotalCollaboration = 1;
      unsignedLongLongValue10 = [collaborationCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue10 = 0;
      v29->_hasTotalCollaboration = 0;
    }

    v29->_totalCollaboration = unsignedLongLongValue10;
    if (highlightsCopy)
    {
      v29->_hasTotalHighlights = 1;
      unsignedLongLongValue11 = [highlightsCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue11 = 0;
      v29->_hasTotalHighlights = 0;
    }

    v29->_totalHighlights = unsignedLongLongValue11;
  }

  return v29;
}

+ (id)protoFields
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"millisecondsSinceSessionStarted" number:1 type:5 subMessageClass:0];
  v19[0] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:13 subMessageClass:0];
  v19[1] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryId" number:3 type:13 subMessageClass:0];
  v19[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"noResultReceived" number:4 type:12 subMessageClass:0];
  v19[3] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalConversations" number:5 type:5 subMessageClass:0];
  v19[4] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalTokens" number:6 type:5 subMessageClass:0];
  v19[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalMessages" number:7 type:5 subMessageClass:0];
  v19[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalLinks" number:8 type:5 subMessageClass:0];
  v19[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalPhotos" number:9 type:5 subMessageClass:0];
  v19[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalLocation" number:10 type:5 subMessageClass:0];
  v19[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalAttachments" number:11 type:5 subMessageClass:0];
  v19[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalWallet" number:12 type:5 subMessageClass:0];
  v19[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalCollaboration" number:13 type:5 subMessageClass:0];
  v19[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalHighlights" number:14 type:5 subMessageClass:0];
  v19[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"millisecondsSinceSessionStarted" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"noResultReceived" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalConversations" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalTokens" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:5 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalMessages" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:5 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalLinks" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:5 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalPhotos" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:5 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalLocation" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:5 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalAttachments" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:5 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalWallet" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:5 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalCollaboration" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:5 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalHighlights" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:5 convertedType:0];
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

    v8 = [[BMMessagesSearchEventResultReceived alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end