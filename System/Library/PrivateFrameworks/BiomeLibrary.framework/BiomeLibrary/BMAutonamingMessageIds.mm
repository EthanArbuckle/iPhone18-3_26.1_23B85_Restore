@interface BMAutonamingMessageIds
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAutonamingMessageIds)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAutonamingMessageIds)initWithProtoVersion:(id)version bundleId:(id)id domainId:(id)domainId spotlightId:(id)spotlightId messageId:(id)messageId conversationId:(id)conversationId isDeletion:(id)deletion containsImageAttachment:(id)self0 messageTimestamp:(id)self1;
- (BOOL)isEqual:(id)equal;
- (NSDate)messageTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAutonamingMessageIds

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"protoVersion" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spotlightId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageId" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationId" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDeletion" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsImageAttachment" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageTimestamp" dataType:3 requestOnly:0 fieldNumber:10 protoDataType:0 convertedType:2];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMAutonamingMessageIds hasProtoVersion](self, "hasProtoVersion") || [v5 hasProtoVersion])
    {
      if (![(BMAutonamingMessageIds *)self hasProtoVersion])
      {
        goto LABEL_38;
      }

      if (![v5 hasProtoVersion])
      {
        goto LABEL_38;
      }

      protoVersion = [(BMAutonamingMessageIds *)self protoVersion];
      if (protoVersion != [v5 protoVersion])
      {
        goto LABEL_38;
      }
    }

    bundleId = [(BMAutonamingMessageIds *)self bundleId];
    bundleId2 = [v5 bundleId];
    v9 = bundleId2;
    if (bundleId == bundleId2)
    {
    }

    else
    {
      bundleId3 = [(BMAutonamingMessageIds *)self bundleId];
      bundleId4 = [v5 bundleId];
      v12 = [bundleId3 isEqual:bundleId4];

      if (!v12)
      {
        goto LABEL_38;
      }
    }

    domainId = [(BMAutonamingMessageIds *)self domainId];
    domainId2 = [v5 domainId];
    v16 = domainId2;
    if (domainId == domainId2)
    {
    }

    else
    {
      domainId3 = [(BMAutonamingMessageIds *)self domainId];
      domainId4 = [v5 domainId];
      v19 = [domainId3 isEqual:domainId4];

      if (!v19)
      {
        goto LABEL_38;
      }
    }

    spotlightId = [(BMAutonamingMessageIds *)self spotlightId];
    spotlightId2 = [v5 spotlightId];
    v22 = spotlightId2;
    if (spotlightId == spotlightId2)
    {
    }

    else
    {
      spotlightId3 = [(BMAutonamingMessageIds *)self spotlightId];
      spotlightId4 = [v5 spotlightId];
      v25 = [spotlightId3 isEqual:spotlightId4];

      if (!v25)
      {
        goto LABEL_38;
      }
    }

    messageId = [(BMAutonamingMessageIds *)self messageId];
    messageId2 = [v5 messageId];
    v28 = messageId2;
    if (messageId == messageId2)
    {
    }

    else
    {
      messageId3 = [(BMAutonamingMessageIds *)self messageId];
      messageId4 = [v5 messageId];
      v31 = [messageId3 isEqual:messageId4];

      if (!v31)
      {
        goto LABEL_38;
      }
    }

    conversationId = [(BMAutonamingMessageIds *)self conversationId];
    conversationId2 = [v5 conversationId];
    v34 = conversationId2;
    if (conversationId == conversationId2)
    {
    }

    else
    {
      conversationId3 = [(BMAutonamingMessageIds *)self conversationId];
      conversationId4 = [v5 conversationId];
      v37 = [conversationId3 isEqual:conversationId4];

      if (!v37)
      {
        goto LABEL_38;
      }
    }

    if (!-[BMAutonamingMessageIds hasIsDeletion](self, "hasIsDeletion") && ![v5 hasIsDeletion] || -[BMAutonamingMessageIds hasIsDeletion](self, "hasIsDeletion") && objc_msgSend(v5, "hasIsDeletion") && (v38 = -[BMAutonamingMessageIds isDeletion](self, "isDeletion"), v38 == objc_msgSend(v5, "isDeletion")))
    {
      if (!-[BMAutonamingMessageIds hasContainsImageAttachment](self, "hasContainsImageAttachment") && ![v5 hasContainsImageAttachment] || -[BMAutonamingMessageIds hasContainsImageAttachment](self, "hasContainsImageAttachment") && objc_msgSend(v5, "hasContainsImageAttachment") && (v39 = -[BMAutonamingMessageIds containsImageAttachment](self, "containsImageAttachment"), v39 == objc_msgSend(v5, "containsImageAttachment")))
      {
        messageTimestamp = [(BMAutonamingMessageIds *)self messageTimestamp];
        messageTimestamp2 = [v5 messageTimestamp];
        if (messageTimestamp == messageTimestamp2)
        {
          v13 = 1;
        }

        else
        {
          messageTimestamp3 = [(BMAutonamingMessageIds *)self messageTimestamp];
          messageTimestamp4 = [v5 messageTimestamp];
          v13 = [messageTimestamp3 isEqual:messageTimestamp4];
        }

        goto LABEL_39;
      }
    }

LABEL_38:
    v13 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v13 = 0;
LABEL_40:

  return v13;
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
  v35[9] = *MEMORY[0x1E69E9840];
  if ([(BMAutonamingMessageIds *)self hasProtoVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAutonamingMessageIds protoVersion](self, "protoVersion")}];
  }

  else
  {
    v3 = 0;
  }

  bundleId = [(BMAutonamingMessageIds *)self bundleId];
  domainId = [(BMAutonamingMessageIds *)self domainId];
  spotlightId = [(BMAutonamingMessageIds *)self spotlightId];
  messageId = [(BMAutonamingMessageIds *)self messageId];
  conversationId = [(BMAutonamingMessageIds *)self conversationId];
  if ([(BMAutonamingMessageIds *)self hasIsDeletion])
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAutonamingMessageIds isDeletion](self, "isDeletion")}];
  }

  else
  {
    v31 = 0;
  }

  if ([(BMAutonamingMessageIds *)self hasContainsImageAttachment])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAutonamingMessageIds containsImageAttachment](self, "containsImageAttachment")}];
  }

  else
  {
    v7 = 0;
  }

  messageTimestamp = [(BMAutonamingMessageIds *)self messageTimestamp];
  if (messageTimestamp)
  {
    v9 = MEMORY[0x1E696AD98];
    messageTimestamp2 = [(BMAutonamingMessageIds *)self messageTimestamp];
    [messageTimestamp2 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  v34[0] = @"protoVersion";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v35[0] = null;
  v34[1] = @"bundleId";
  null2 = bundleId;
  if (!bundleId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v35[1] = null2;
  v34[2] = @"domainId";
  null3 = domainId;
  if (!domainId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null3;
  v35[2] = null3;
  v34[3] = @"spotlightId";
  null4 = spotlightId;
  if (!spotlightId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v3;
  v25 = null4;
  v35[3] = null4;
  v34[4] = @"messageId";
  null5 = messageId;
  if (!messageId)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = bundleId;
  v35[4] = null5;
  v34[5] = @"conversationId";
  null6 = conversationId;
  if (!conversationId)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = null6;
  v34[6] = @"isDeletion";
  null7 = v31;
  if (!v31)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = spotlightId;
  v35[6] = null7;
  v34[7] = @"containsImageAttachment";
  null8 = v7;
  if (!v7)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = null8;
  v34[8] = @"messageTimestamp";
  null9 = v11;
  if (!v11)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = null9;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (v11)
  {
    if (v7)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (v7)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  if (!v31)
  {
  }

  if (!conversationId)
  {
  }

  if (!messageId)
  {
  }

  if (v19)
  {
    if (domainId)
    {
      goto LABEL_41;
    }
  }

  else
  {

    if (domainId)
    {
LABEL_41:
      if (v29)
      {
        goto LABEL_42;
      }

LABEL_50:

      if (v30)
      {
        goto LABEL_43;
      }

      goto LABEL_51;
    }
  }

  if (!v29)
  {
    goto LABEL_50;
  }

LABEL_42:
  if (v30)
  {
    goto LABEL_43;
  }

LABEL_51:

LABEL_43:
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BMAutonamingMessageIds)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v107[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"protoVersion"];
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
    v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    selfCopy = self;
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      errorCopy2 = error;
      error = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      errorCopy2 = error;
      error = v9;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"domainId"];
      v88 = v10;
      errorCopy3 = error;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v84 = 0;
LABEL_10:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"spotlightId"];
        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
            {
              v87 = 0;
              v24 = 0;
              v29 = v84;
              goto LABEL_76;
            }

            v40 = objc_alloc(MEMORY[0x1E696ABC0]);
            v41 = v8;
            v42 = *MEMORY[0x1E698F240];
            v100 = *MEMORY[0x1E696A578];
            v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"spotlightId"];
            v101 = v80;
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
            v44 = v40;
            error = errorCopy3;
            v45 = v42;
            v8 = v41;
            v82 = v43;
            v87 = 0;
            v24 = 0;
            *errorCopy2 = [v44 initWithDomain:v45 code:2 userInfo:?];
            goto LABEL_82;
          }

          v87 = v11;
        }

        else
        {
          v87 = 0;
        }

        v12 = [dictionaryCopy objectForKeyedSubscript:@"messageId"];
        v82 = v12;
        if (!v12)
        {
          v75 = v7;
          v13 = v9;
          goto LABEL_27;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = v7;
          v13 = v9;
          v12 = 0;
LABEL_27:
          v14 = [dictionaryCopy objectForKeyedSubscript:@"conversationId"];
          v80 = v12;
          v77 = v14;
          if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy2)
              {
                v83 = 0;
                v24 = 0;
                self = selfCopy;
                v9 = v13;
                v7 = v75;
                v55 = v77;
                goto LABEL_74;
              }

              v58 = objc_alloc(MEMORY[0x1E696ABC0]);
              v59 = *MEMORY[0x1E698F240];
              v96 = *MEMORY[0x1E696A578];
              v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationId"];
              v97 = v79;
              v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
              v60 = v58;
              error = errorCopy3;
              v83 = 0;
              v24 = 0;
              *errorCopy2 = [v60 initWithDomain:v59 code:2 userInfo:v16];
              self = selfCopy;
              v9 = v13;
              v7 = v75;
              goto LABEL_73;
            }

            v83 = v15;
          }

          else
          {
            v83 = 0;
          }

          v16 = [dictionaryCopy objectForKeyedSubscript:@"isDeletion"];
          v9 = v13;
          v78 = v8;
          v74 = v11;
          if (v16)
          {
            objc_opt_class();
            v7 = v75;
            if (objc_opt_isKindOfClass())
            {
              v79 = 0;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy2)
                {
                  v79 = 0;
                  v24 = 0;
                  self = selfCopy;
                  goto LABEL_73;
                }

                v61 = objc_alloc(MEMORY[0x1E696ABC0]);
                v62 = *MEMORY[0x1E698F240];
                v94 = *MEMORY[0x1E696A578];
                v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDeletion"];
                v95 = v34;
                v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
                v63 = v61;
                v8 = v78;
                v64 = [v63 initWithDomain:v62 code:2 userInfo:v33];
                v79 = 0;
                v24 = 0;
                *errorCopy2 = v64;
LABEL_72:

                v10 = v88;
                self = selfCopy;
                error = errorCopy3;
                v11 = v74;
LABEL_73:

                v55 = v77;
                goto LABEL_74;
              }

              v79 = v16;
            }
          }

          else
          {
            v79 = 0;
            v7 = v75;
          }

          v33 = [dictionaryCopy objectForKeyedSubscript:@"containsImageAttachment"];
          if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy2)
              {
                v34 = 0;
                v24 = 0;
                goto LABEL_72;
              }

              v65 = objc_alloc(MEMORY[0x1E696ABC0]);
              v66 = *MEMORY[0x1E698F240];
              v92 = *MEMORY[0x1E696A578];
              v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"containsImageAttachment"];
              v93 = v36;
              v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
              v67 = [v65 initWithDomain:v66 code:2 userInfo:v35];
              v34 = 0;
              v24 = 0;
              *errorCopy2 = v67;
              goto LABEL_71;
            }

            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

          v35 = [dictionaryCopy objectForKeyedSubscript:@"messageTimestamp"];
          if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = MEMORY[0x1E695DF00];
              v47 = v35;
              v48 = [v46 alloc];
              [v47 doubleValue];
              v50 = v49;

              v51 = [v48 initWithTimeIntervalSince1970:v50];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v68 = objc_alloc_init(MEMORY[0x1E696AC80]);
                v36 = [v68 dateFromString:v35];

                goto LABEL_70;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy2)
                {
                  v76 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v73 = *MEMORY[0x1E698F240];
                  v90 = *MEMORY[0x1E696A578];
                  v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"messageTimestamp"];
                  v91 = v71;
                  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
                  *errorCopy2 = [v76 initWithDomain:v73 code:2 userInfo:v72];
                }

                v36 = 0;
                v24 = 0;
                goto LABEL_71;
              }

              v51 = v35;
            }

            v36 = v51;
          }

          else
          {
            v36 = 0;
          }

LABEL_70:
          v24 = [(BMAutonamingMessageIds *)selfCopy initWithProtoVersion:v78 bundleId:errorCopy3 domainId:v84 spotlightId:v87 messageId:v12 conversationId:v83 isDeletion:v79 containsImageAttachment:v34 messageTimestamp:v36];
          selfCopy = v24;
LABEL_71:

          v8 = v78;
          goto LABEL_72;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = v7;
          v13 = v9;
          v12 = v12;
          goto LABEL_27;
        }

        if (errorCopy2)
        {
          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = v8;
          v54 = *MEMORY[0x1E698F240];
          v98 = *MEMORY[0x1E696A578];
          v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageId"];
          v99 = v83;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
          v56 = v52;
          error = errorCopy3;
          v57 = v54;
          v8 = v53;
          v80 = 0;
          v24 = 0;
          *errorCopy2 = [v56 initWithDomain:v57 code:2 userInfo:v55];
          self = selfCopy;
LABEL_74:

          v29 = v84;
LABEL_75:

          goto LABEL_76;
        }

        v80 = 0;
        v24 = 0;
LABEL_82:
        v29 = v84;
        self = selfCopy;
        goto LABEL_75;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v84 = v10;
        goto LABEL_10;
      }

      if (errorCopy2)
      {
        v85 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = v8;
        v38 = *MEMORY[0x1E698F240];
        v102 = *MEMORY[0x1E696A578];
        v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainId"];
        v103 = v87;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v39 = v38;
        v8 = v37;
        v29 = 0;
        v24 = 0;
        *errorCopy2 = [v85 initWithDomain:v39 code:2 userInfo:v11];
LABEL_76:

        goto LABEL_77;
      }

      v29 = 0;
      v24 = 0;
LABEL_77:

      goto LABEL_78;
    }

    if (error)
    {
      errorCopy4 = error;
      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = v8;
      v28 = *MEMORY[0x1E698F240];
      v104 = *MEMORY[0x1E696A578];
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleId"];
      v105 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v31 = v28;
      v8 = v27;
      v10 = v30;
      v32 = [v26 initWithDomain:v31 code:2 userInfo:v30];
      error = 0;
      v24 = 0;
      *errorCopy4 = v32;
      goto LABEL_77;
    }

    v24 = 0;
LABEL_78:

    goto LABEL_79;
  }

  if (error)
  {
    selfCopy2 = self;
    errorCopy5 = error;
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E698F240];
    v106 = *MEMORY[0x1E696A578];
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"protoVersion"];
    v107[0] = v21;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:&v106 count:1];
    v22 = v19;
    error = v21;
    v23 = [v22 initWithDomain:v20 code:2 userInfo:v9];
    v8 = 0;
    v24 = 0;
    *errorCopy5 = v23;
    self = selfCopy2;
    goto LABEL_78;
  }

  v8 = 0;
  v24 = 0;
LABEL_79:

  v69 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAutonamingMessageIds *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasProtoVersion)
  {
    protoVersion = self->_protoVersion;
    PBDataWriterWriteInt32Field();
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spotlightId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsDeletion)
  {
    isDeletion = self->_isDeletion;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsImageAttachment)
  {
    containsImageAttachment = self->_containsImageAttachment;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_messageTimestamp)
  {
    raw_messageTimestamp = self->_raw_messageTimestamp;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v46.receiver = self;
  v46.super_class = BMAutonamingMessageIds;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_82;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_80;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v47) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v47) & 0x7F) << v7;
        if ((LOBYTE(v47) & 0x80) == 0)
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
        goto LABEL_80;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 5)
      {
        break;
      }

      if (v15 <= 7)
      {
        if (v15 == 6)
        {
          v18 = PBReaderReadString();
          v19 = 72;
        }

        else
        {
          if (v15 != 7)
          {
LABEL_66:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_81;
            }

            goto LABEL_79;
          }

          v18 = PBReaderReadString();
          v19 = 80;
        }

LABEL_56:
        v34 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;

        goto LABEL_79;
      }

      if (v15 == 8)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v5->_hasIsDeletion = 1;
        while (1)
        {
          LOBYTE(v47) = 0;
          v30 = [fromCopy position] + 1;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v29 |= (LOBYTE(v47) & 0x7F) << v27;
          if ((LOBYTE(v47) & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v13 = v28++ >= 9;
          if (v13)
          {
            LOBYTE(v33) = 0;
            goto LABEL_73;
          }
        }

        v33 = (v29 != 0) & ~[fromCopy hasError];
LABEL_73:
        v41 = 33;
        goto LABEL_76;
      }

      if (v15 == 9)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v5->_hasContainsImageAttachment = 1;
        while (1)
        {
          LOBYTE(v47) = 0;
          v38 = [fromCopy position] + 1;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v37 |= (LOBYTE(v47) & 0x7F) << v35;
          if ((LOBYTE(v47) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v13 = v36++ >= 9;
          if (v13)
          {
            LOBYTE(v33) = 0;
            goto LABEL_75;
          }
        }

        v33 = (v37 != 0) & ~[fromCopy hasError];
LABEL_75:
        v41 = 35;
LABEL_76:
        *(&v5->super.super.isa + v41) = v33;
        goto LABEL_79;
      }

      if (v15 != 10)
      {
        goto LABEL_66;
      }

      v5->_hasRaw_messageTimestamp = 1;
      v47 = 0.0;
      v16 = [fromCopy position] + 8;
      if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
      {
        data4 = [fromCopy data];
        [data4 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v5->_raw_messageTimestamp = v47;
LABEL_79:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_80;
      }
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v18 = PBReaderReadString();
        v19 = 56;
      }

      else
      {
        if (v15 != 4)
        {
          goto LABEL_66;
        }

        v18 = PBReaderReadString();
        v19 = 64;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasProtoVersion = 1;
        while (1)
        {
          LOBYTE(v47) = 0;
          v23 = [fromCopy position] + 1;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v22 |= (LOBYTE(v47) & 0x7F) << v20;
          if ((LOBYTE(v47) & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            v26 = 0;
            goto LABEL_71;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_71:
        v5->_protoVersion = v26;
        goto LABEL_79;
      }

      if (v15 != 2)
      {
        goto LABEL_66;
      }

      v18 = PBReaderReadString();
      v19 = 48;
    }

    goto LABEL_56;
  }

LABEL_80:
  if ([fromCopy hasError])
  {
LABEL_81:
    v44 = 0;
  }

  else
  {
LABEL_82:
    v44 = v5;
  }

  return v44;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAutonamingMessageIds protoVersion](self, "protoVersion")}];
  bundleId = [(BMAutonamingMessageIds *)self bundleId];
  domainId = [(BMAutonamingMessageIds *)self domainId];
  spotlightId = [(BMAutonamingMessageIds *)self spotlightId];
  messageId = [(BMAutonamingMessageIds *)self messageId];
  conversationId = [(BMAutonamingMessageIds *)self conversationId];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAutonamingMessageIds isDeletion](self, "isDeletion")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAutonamingMessageIds containsImageAttachment](self, "containsImageAttachment")}];
  messageTimestamp = [(BMAutonamingMessageIds *)self messageTimestamp];
  v13 = [v3 initWithFormat:@"BMAutonamingMessageIds with protoVersion: %@, bundleId: %@, domainId: %@, spotlightId: %@, messageId: %@, conversationId: %@, isDeletion: %@, containsImageAttachment: %@, messageTimestamp: %@", v4, bundleId, domainId, spotlightId, messageId, conversationId, v10, v11, messageTimestamp];

  return v13;
}

- (BMAutonamingMessageIds)initWithProtoVersion:(id)version bundleId:(id)id domainId:(id)domainId spotlightId:(id)spotlightId messageId:(id)messageId conversationId:(id)conversationId isDeletion:(id)deletion containsImageAttachment:(id)self0 messageTimestamp:(id)self1
{
  versionCopy = version;
  idCopy = id;
  domainIdCopy = domainId;
  spotlightIdCopy = spotlightId;
  messageIdCopy = messageId;
  conversationIdCopy = conversationId;
  deletionCopy = deletion;
  attachmentCopy = attachment;
  timestampCopy = timestamp;
  v30.receiver = self;
  v30.super_class = BMAutonamingMessageIds;
  v21 = [(BMEventBase *)&v30 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    if (versionCopy)
    {
      v21->_hasProtoVersion = 1;
      intValue = [versionCopy intValue];
    }

    else
    {
      v21->_hasProtoVersion = 0;
      intValue = -1;
    }

    v21->_protoVersion = intValue;
    objc_storeStrong(&v21->_bundleId, id);
    objc_storeStrong(&v21->_domainId, domainId);
    objc_storeStrong(&v21->_spotlightId, spotlightId);
    objc_storeStrong(&v21->_messageId, messageId);
    objc_storeStrong(&v21->_conversationId, conversationId);
    if (deletionCopy)
    {
      v21->_hasIsDeletion = 1;
      v21->_isDeletion = [deletionCopy BOOLValue];
    }

    else
    {
      v21->_hasIsDeletion = 0;
      v21->_isDeletion = 0;
    }

    if (attachmentCopy)
    {
      v21->_hasContainsImageAttachment = 1;
      v21->_containsImageAttachment = [attachmentCopy BOOLValue];
    }

    else
    {
      v21->_hasContainsImageAttachment = 0;
      v21->_containsImageAttachment = 0;
    }

    if (timestampCopy)
    {
      v21->_hasRaw_messageTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v21->_hasRaw_messageTimestamp = 0;
      v23 = -1.0;
    }

    v21->_raw_messageTimestamp = v23;
  }

  return v21;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"protoVersion" number:1 type:2 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleId" number:2 type:13 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainId" number:3 type:13 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spotlightId" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageId" number:6 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationId" number:7 type:13 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDeletion" number:8 type:12 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsImageAttachment" number:9 type:12 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageTimestamp" number:10 type:0 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMAutonamingMessageIds alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end