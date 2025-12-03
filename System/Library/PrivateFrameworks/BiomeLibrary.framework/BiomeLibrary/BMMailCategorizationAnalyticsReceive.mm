@interface BMMailCategorizationAnalyticsReceive
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMailCategorizationAnalyticsReceive)initWithAccountId:(id)id messageId:(id)messageId senderId:(id)senderId receivingAccountDomain:(id)domain metadataPrimaryKey:(id)key predictedCategory:(id)category currCategoryView:(id)view reasonCodes:(id)self0 receiveTimestamp:(id)self1 isAllInboxesCategoriesEnabled:(id)self2 isMailAccountPersonalAccount:(id)self3 isMailAccountCategoriesEnabled:(id)self4;
- (BMMailCategorizationAnalyticsReceive)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMailCategorizationAnalyticsReceive

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageId" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"senderId" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"receivingAccountDomain" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"metadataPrimaryKey" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictedCategory" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currCategoryView" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reasonCodes" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"receiveTimestamp" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAllInboxesCategoriesEnabled" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMailAccountPersonalAccount" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMailAccountCategoriesEnabled" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v17[6] = v6;
  v17[7] = v7;
  v17[8] = v8;
  v17[9] = v14;
  v17[10] = v9;
  v17[11] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountId" number:1 type:13 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageId" number:2 type:2 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"senderId" number:3 type:2 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"receivingAccountDomain" number:4 type:2 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadataPrimaryKey" number:5 type:13 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictedCategory" number:6 type:2 subMessageClass:0];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currCategoryView" number:7 type:2 subMessageClass:0];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reasonCodes" number:8 type:13 subMessageClass:0];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"receiveTimestamp" number:9 type:2 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAllInboxesCategoriesEnabled" number:10 type:12 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMailAccountPersonalAccount" number:11 type:12 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMailAccountCategoriesEnabled" number:12 type:12 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

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
    accountId = [(BMMailCategorizationAnalyticsReceive *)self accountId];
    accountId2 = [v5 accountId];
    v8 = accountId2;
    if (accountId == accountId2)
    {
    }

    else
    {
      accountId3 = [(BMMailCategorizationAnalyticsReceive *)self accountId];
      accountId4 = [v5 accountId];
      v11 = [accountId3 isEqual:accountId4];

      if (!v11)
      {
        goto LABEL_60;
      }
    }

    if (-[BMMailCategorizationAnalyticsReceive hasMessageId](self, "hasMessageId") || [v5 hasMessageId])
    {
      if (![(BMMailCategorizationAnalyticsReceive *)self hasMessageId])
      {
        goto LABEL_60;
      }

      if (![v5 hasMessageId])
      {
        goto LABEL_60;
      }

      messageId = [(BMMailCategorizationAnalyticsReceive *)self messageId];
      if (messageId != [v5 messageId])
      {
        goto LABEL_60;
      }
    }

    if (-[BMMailCategorizationAnalyticsReceive hasSenderId](self, "hasSenderId") || [v5 hasSenderId])
    {
      if (![(BMMailCategorizationAnalyticsReceive *)self hasSenderId])
      {
        goto LABEL_60;
      }

      if (![v5 hasSenderId])
      {
        goto LABEL_60;
      }

      senderId = [(BMMailCategorizationAnalyticsReceive *)self senderId];
      if (senderId != [v5 senderId])
      {
        goto LABEL_60;
      }
    }

    if (-[BMMailCategorizationAnalyticsReceive hasReceivingAccountDomain](self, "hasReceivingAccountDomain") || [v5 hasReceivingAccountDomain])
    {
      if (![(BMMailCategorizationAnalyticsReceive *)self hasReceivingAccountDomain])
      {
        goto LABEL_60;
      }

      if (![v5 hasReceivingAccountDomain])
      {
        goto LABEL_60;
      }

      receivingAccountDomain = [(BMMailCategorizationAnalyticsReceive *)self receivingAccountDomain];
      if (receivingAccountDomain != [v5 receivingAccountDomain])
      {
        goto LABEL_60;
      }
    }

    metadataPrimaryKey = [(BMMailCategorizationAnalyticsReceive *)self metadataPrimaryKey];
    metadataPrimaryKey2 = [v5 metadataPrimaryKey];
    v18 = metadataPrimaryKey2;
    if (metadataPrimaryKey == metadataPrimaryKey2)
    {
    }

    else
    {
      metadataPrimaryKey3 = [(BMMailCategorizationAnalyticsReceive *)self metadataPrimaryKey];
      metadataPrimaryKey4 = [v5 metadataPrimaryKey];
      v21 = [metadataPrimaryKey3 isEqual:metadataPrimaryKey4];

      if (!v21)
      {
        goto LABEL_60;
      }
    }

    if (-[BMMailCategorizationAnalyticsReceive hasPredictedCategory](self, "hasPredictedCategory") || [v5 hasPredictedCategory])
    {
      if (![(BMMailCategorizationAnalyticsReceive *)self hasPredictedCategory])
      {
        goto LABEL_60;
      }

      if (![v5 hasPredictedCategory])
      {
        goto LABEL_60;
      }

      predictedCategory = [(BMMailCategorizationAnalyticsReceive *)self predictedCategory];
      if (predictedCategory != [v5 predictedCategory])
      {
        goto LABEL_60;
      }
    }

    if (-[BMMailCategorizationAnalyticsReceive hasCurrCategoryView](self, "hasCurrCategoryView") || [v5 hasCurrCategoryView])
    {
      if (![(BMMailCategorizationAnalyticsReceive *)self hasCurrCategoryView])
      {
        goto LABEL_60;
      }

      if (![v5 hasCurrCategoryView])
      {
        goto LABEL_60;
      }

      currCategoryView = [(BMMailCategorizationAnalyticsReceive *)self currCategoryView];
      if (currCategoryView != [v5 currCategoryView])
      {
        goto LABEL_60;
      }
    }

    reasonCodes = [(BMMailCategorizationAnalyticsReceive *)self reasonCodes];
    reasonCodes2 = [v5 reasonCodes];
    v26 = reasonCodes2;
    if (reasonCodes == reasonCodes2)
    {
    }

    else
    {
      reasonCodes3 = [(BMMailCategorizationAnalyticsReceive *)self reasonCodes];
      reasonCodes4 = [v5 reasonCodes];
      v29 = [reasonCodes3 isEqual:reasonCodes4];

      if (!v29)
      {
        goto LABEL_60;
      }
    }

    if (!-[BMMailCategorizationAnalyticsReceive hasReceiveTimestamp](self, "hasReceiveTimestamp") && ![v5 hasReceiveTimestamp] || -[BMMailCategorizationAnalyticsReceive hasReceiveTimestamp](self, "hasReceiveTimestamp") && objc_msgSend(v5, "hasReceiveTimestamp") && (v30 = -[BMMailCategorizationAnalyticsReceive receiveTimestamp](self, "receiveTimestamp"), v30 == objc_msgSend(v5, "receiveTimestamp")))
    {
      if (!-[BMMailCategorizationAnalyticsReceive hasIsAllInboxesCategoriesEnabled](self, "hasIsAllInboxesCategoriesEnabled") && ![v5 hasIsAllInboxesCategoriesEnabled] || -[BMMailCategorizationAnalyticsReceive hasIsAllInboxesCategoriesEnabled](self, "hasIsAllInboxesCategoriesEnabled") && objc_msgSend(v5, "hasIsAllInboxesCategoriesEnabled") && (v31 = -[BMMailCategorizationAnalyticsReceive isAllInboxesCategoriesEnabled](self, "isAllInboxesCategoriesEnabled"), v31 == objc_msgSend(v5, "isAllInboxesCategoriesEnabled")))
      {
        if (!-[BMMailCategorizationAnalyticsReceive hasIsMailAccountPersonalAccount](self, "hasIsMailAccountPersonalAccount") && ![v5 hasIsMailAccountPersonalAccount] || -[BMMailCategorizationAnalyticsReceive hasIsMailAccountPersonalAccount](self, "hasIsMailAccountPersonalAccount") && objc_msgSend(v5, "hasIsMailAccountPersonalAccount") && (v32 = -[BMMailCategorizationAnalyticsReceive isMailAccountPersonalAccount](self, "isMailAccountPersonalAccount"), v32 == objc_msgSend(v5, "isMailAccountPersonalAccount")))
        {
          if (!-[BMMailCategorizationAnalyticsReceive hasIsMailAccountCategoriesEnabled](self, "hasIsMailAccountCategoriesEnabled") && ![v5 hasIsMailAccountCategoriesEnabled])
          {
            LOBYTE(v12) = 1;
            goto LABEL_61;
          }

          if (-[BMMailCategorizationAnalyticsReceive hasIsMailAccountCategoriesEnabled](self, "hasIsMailAccountCategoriesEnabled") && [v5 hasIsMailAccountCategoriesEnabled])
          {
            isMailAccountCategoriesEnabled = [(BMMailCategorizationAnalyticsReceive *)self isMailAccountCategoriesEnabled];
            v12 = isMailAccountCategoriesEnabled ^ [v5 isMailAccountCategoriesEnabled] ^ 1;
LABEL_61:

            goto LABEL_62;
          }
        }
      }
    }

LABEL_60:
    LOBYTE(v12) = 0;
    goto LABEL_61;
  }

  LOBYTE(v12) = 0;
LABEL_62:

  return v12;
}

- (id)jsonDictionary
{
  v39[12] = *MEMORY[0x1E69E9840];
  accountId = [(BMMailCategorizationAnalyticsReceive *)self accountId];
  if ([(BMMailCategorizationAnalyticsReceive *)self hasMessageId])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive messageId](self, "messageId")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMMailCategorizationAnalyticsReceive *)self hasSenderId])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive senderId](self, "senderId")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMailCategorizationAnalyticsReceive *)self hasReceivingAccountDomain])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive receivingAccountDomain](self, "receivingAccountDomain")}];
  }

  else
  {
    v6 = 0;
  }

  metadataPrimaryKey = [(BMMailCategorizationAnalyticsReceive *)self metadataPrimaryKey];
  if ([(BMMailCategorizationAnalyticsReceive *)self hasPredictedCategory])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive predictedCategory](self, "predictedCategory")}];
  }

  else
  {
    v36 = 0;
  }

  if ([(BMMailCategorizationAnalyticsReceive *)self hasCurrCategoryView])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive currCategoryView](self, "currCategoryView")}];
  }

  else
  {
    v35 = 0;
  }

  reasonCodes = [(BMMailCategorizationAnalyticsReceive *)self reasonCodes];
  if ([(BMMailCategorizationAnalyticsReceive *)self hasReceiveTimestamp])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive receiveTimestamp](self, "receiveTimestamp")}];
  }

  else
  {
    v33 = 0;
  }

  if ([(BMMailCategorizationAnalyticsReceive *)self hasIsAllInboxesCategoriesEnabled])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorizationAnalyticsReceive isAllInboxesCategoriesEnabled](self, "isAllInboxesCategoriesEnabled")}];
  }

  else
  {
    v32 = 0;
  }

  if ([(BMMailCategorizationAnalyticsReceive *)self hasIsMailAccountPersonalAccount])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorizationAnalyticsReceive isMailAccountPersonalAccount](self, "isMailAccountPersonalAccount")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMailCategorizationAnalyticsReceive *)self hasIsMailAccountCategoriesEnabled])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorizationAnalyticsReceive isMailAccountCategoriesEnabled](self, "isMailAccountCategoriesEnabled")}];
  }

  else
  {
    v8 = 0;
  }

  v38[0] = @"accountId";
  null = accountId;
  if (!accountId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v39[0] = null;
  v38[1] = @"messageId";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v39[1] = null2;
  v38[2] = @"senderId";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null3;
  v39[2] = null3;
  v38[3] = @"receivingAccountDomain";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = accountId;
  v24 = null4;
  v39[3] = null4;
  v38[4] = @"metadataPrimaryKey";
  null5 = metadataPrimaryKey;
  if (!metadataPrimaryKey)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v4;
  v39[4] = null5;
  v38[5] = @"predictedCategory";
  null6 = v36;
  if (!v36)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v39[5] = null6;
  v38[6] = @"currCategoryView";
  null7 = v35;
  if (!v35)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v5;
  v39[6] = null7;
  v38[7] = @"reasonCodes";
  null8 = reasonCodes;
  if (!reasonCodes)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v39[7] = null8;
  v38[8] = @"receiveTimestamp";
  null9 = v33;
  if (!v33)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = null9;
  v38[9] = @"isAllInboxesCategoriesEnabled";
  null10 = v32;
  if (!v32)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null5;
  v39[9] = null10;
  v38[10] = @"isMailAccountPersonalAccount";
  null11 = v7;
  if (!v7)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = null11;
  v38[11] = @"isMailAccountCategoriesEnabled";
  null12 = v8;
  if (!v8)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v39[11] = null12;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:12];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_54;
    }
  }

  else
  {

    if (v7)
    {
      goto LABEL_54;
    }
  }

LABEL_54:
  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (!reasonCodes)
  {
  }

  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (!metadataPrimaryKey)
  {
  }

  if (v6)
  {
    if (v29)
    {
      goto LABEL_68;
    }
  }

  else
  {

    if (v29)
    {
LABEL_68:
      if (v30)
      {
        goto LABEL_69;
      }

LABEL_77:

      if (v31)
      {
        goto LABEL_70;
      }

      goto LABEL_78;
    }
  }

  if (!v30)
  {
    goto LABEL_77;
  }

LABEL_69:
  if (v31)
  {
    goto LABEL_70;
  }

LABEL_78:

LABEL_70:
  v21 = *MEMORY[0x1E69E9840];

  return v28;
}

- (BMMailCategorizationAnalyticsReceive)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v140[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"accountId"];
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
    v9 = [dictionaryCopy objectForKeyedSubscript:@"messageId"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
LABEL_7:
      v116 = [dictionaryCopy objectForKeyedSubscript:@"senderId"];
      v113 = v10;
      selfCopy = self;
      if (!v116 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v115 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v115 = v116;
LABEL_10:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"receivingAccountDomain"];
        v112 = v11;
        if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          errorCopy2 = error;
          v110 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          errorCopy2 = error;
          v110 = v12;
LABEL_13:
          v14 = [dictionaryCopy objectForKeyedSubscript:@"metadataPrimaryKey"];
          if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v107 = v14;
            v15 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v107 = v14;
            v15 = v14;
LABEL_16:
            v16 = [dictionaryCopy objectForKeyedSubscript:@"predictedCategory"];
            v109 = v16;
            if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v111 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v111 = v17;
LABEL_19:
              [dictionaryCopy objectForKeyedSubscript:@"currCategoryView"];
              v19 = v18 = errorCopy2;
              if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v97 = v18;
                v108 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v97 = v18;
                v108 = v19;
LABEL_22:
                v20 = [dictionaryCopy objectForKeyedSubscript:@"reasonCodes"];
                v102 = v15;
                v99 = v19;
                v105 = v20;
                if (v20)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v21 = v8;
                    v22 = v15;
                    v20 = 0;
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!v97)
                      {
                        v104 = 0;
                        v26 = 0;
                        error = v110;
                        v52 = v107;
                        goto LABEL_100;
                      }

                      v74 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v75 = v8;
                      v76 = *MEMORY[0x1E698F240];
                      v125 = *MEMORY[0x1E696A578];
                      v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"reasonCodes"];
                      v126 = v106;
                      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
                      v78 = v76;
                      v8 = v75;
                      v10 = v113;
                      v100 = v77;
                      v79 = [v74 initWithDomain:v78 code:2 userInfo:?];
                      v104 = 0;
                      v26 = 0;
                      *v97 = v79;
                      error = v110;
                      v52 = v107;
                      goto LABEL_99;
                    }

                    v21 = v8;
                    v20 = v20;
                    v22 = v15;
                  }
                }

                else
                {
                  v21 = v8;
                  v22 = v15;
                }

                v40 = [dictionaryCopy objectForKeyedSubscript:@"receiveTimestamp"];
                v104 = v20;
                v100 = v40;
                if (v40 && (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!v97)
                    {
                      v106 = 0;
                      v26 = 0;
                      error = v110;
                      v52 = v107;
                      v15 = v22;
                      v8 = v21;
                      v10 = v113;
                      goto LABEL_99;
                    }

                    v80 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v81 = *MEMORY[0x1E698F240];
                    v123 = *MEMORY[0x1E696A578];
                    v15 = v22;
                    v101 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"receiveTimestamp"];
                    v124 = v101;
                    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
                    v8 = v21;
                    v95 = v10 = v113;
                    v82 = [v80 initWithDomain:v81 code:2 userInfo:?];
                    v106 = 0;
                    v26 = 0;
                    *v97 = v82;
                    error = v110;
                    goto LABEL_97;
                  }

                  v106 = v41;
                }

                else
                {
                  v106 = 0;
                }

                v42 = [dictionaryCopy objectForKeyedSubscript:@"isAllInboxesCategoriesEnabled"];
                v98 = v21;
                v95 = v42;
                if (v42 && (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v8 = v21;
                  objc_opt_class();
                  v10 = v113;
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!v97)
                    {
                      v101 = 0;
                      v26 = 0;
                      error = v110;
                      v52 = v107;
                      v15 = v102;
                      goto LABEL_98;
                    }

                    v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v84 = *MEMORY[0x1E698F240];
                    v121 = *MEMORY[0x1E696A578];
                    v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isAllInboxesCategoriesEnabled"];
                    v122 = v45;
                    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
                    v85 = v84;
                    v19 = v99;
                    v86 = [v83 initWithDomain:v85 code:2 userInfo:v44];
                    v101 = 0;
                    v26 = 0;
                    *v97 = v86;
                    error = v110;
                    v15 = v102;
                    goto LABEL_96;
                  }

                  v101 = v43;
                }

                else
                {
                  v101 = 0;
                }

                v44 = [dictionaryCopy objectForKeyedSubscript:@"isMailAccountPersonalAccount"];
                v15 = v102;
                if (v44 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!v97)
                    {
                      v45 = 0;
                      v26 = 0;
                      error = v110;
                      goto LABEL_96;
                    }

                    v87 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v88 = *MEMORY[0x1E698F240];
                    v119 = *MEMORY[0x1E696A578];
                    v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isMailAccountPersonalAccount"];
                    v120 = v47;
                    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
                    v89 = [v87 initWithDomain:v88 code:2 userInfo:v46];
                    v45 = 0;
                    v26 = 0;
                    *v97 = v89;
                    goto LABEL_94;
                  }

                  v45 = v44;
                }

                else
                {
                  v45 = 0;
                }

                v46 = [dictionaryCopy objectForKeyedSubscript:@"isMailAccountCategoriesEnabled"];
                if (!v46 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v47 = 0;
LABEL_60:
                  v94 = v20;
                  error = v110;
                  v26 = [(BMMailCategorizationAnalyticsReceive *)selfCopy initWithAccountId:v98 messageId:v113 senderId:v115 receivingAccountDomain:v110 metadataPrimaryKey:v102 predictedCategory:v111 currCategoryView:v108 reasonCodes:v94 receiveTimestamp:v106 isAllInboxesCategoriesEnabled:v101 isMailAccountPersonalAccount:v45 isMailAccountCategoriesEnabled:v47];
                  selfCopy = v26;
LABEL_95:

                  v19 = v99;
LABEL_96:

                  v8 = v98;
                  v10 = v113;
LABEL_97:
                  v52 = v107;
LABEL_98:

LABEL_99:
                  goto LABEL_100;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v47 = v46;
                  goto LABEL_60;
                }

                if (v97)
                {
                  v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v96 = *MEMORY[0x1E698F240];
                  v117 = *MEMORY[0x1E696A578];
                  v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isMailAccountCategoriesEnabled"];
                  v118 = v90;
                  v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
                  *v97 = [v103 initWithDomain:v96 code:2 userInfo:v91];
                }

                v47 = 0;
                v26 = 0;
LABEL_94:
                error = v110;
                goto LABEL_95;
              }

              if (v18)
              {
                v68 = objc_alloc(MEMORY[0x1E696ABC0]);
                v69 = v8;
                v70 = *MEMORY[0x1E698F240];
                v127 = *MEMORY[0x1E696A578];
                v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"currCategoryView"];
                v128 = v104;
                v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
                v72 = v70;
                v8 = v69;
                v10 = v113;
                v105 = v71;
                v73 = [v68 initWithDomain:v72 code:2 userInfo:?];
                v108 = 0;
                v26 = 0;
                *v18 = v73;
                error = v110;
                v52 = v107;
LABEL_100:

LABEL_101:
                goto LABEL_102;
              }

              v108 = 0;
              v26 = 0;
LABEL_109:
              error = v110;
              v52 = v107;
              goto LABEL_101;
            }

            if (errorCopy2)
            {
              v62 = objc_alloc(MEMORY[0x1E696ABC0]);
              v63 = v8;
              v64 = *MEMORY[0x1E698F240];
              v129 = *MEMORY[0x1E696A578];
              v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predictedCategory"];
              v130 = v108;
              v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
              v66 = v64;
              v8 = v63;
              v10 = v113;
              v67 = [v62 initWithDomain:v66 code:2 userInfo:v65];
              v111 = 0;
              v26 = 0;
              *errorCopy2 = v67;
              v19 = v65;
              goto LABEL_109;
            }

            v111 = 0;
            v26 = 0;
            error = v110;
            v52 = v107;
LABEL_102:

            goto LABEL_103;
          }

          v55 = v14;
          if (errorCopy2)
          {
            v56 = objc_alloc(MEMORY[0x1E696ABC0]);
            v57 = v8;
            v58 = *MEMORY[0x1E698F240];
            v131 = *MEMORY[0x1E696A578];
            v52 = v14;
            v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"metadataPrimaryKey"];
            v132 = v111;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
            v60 = v58;
            v8 = v57;
            v10 = v113;
            v109 = v59;
            v61 = [v56 initWithDomain:v60 code:2 userInfo:?];
            v15 = 0;
            v26 = 0;
            *errorCopy2 = v61;
            error = v110;
            goto LABEL_102;
          }

          v26 = 0;
          error = v110;
          v52 = v55;
          v15 = 0;
LABEL_103:

          v12 = v112;
          goto LABEL_104;
        }

        if (error)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = v8;
          v50 = *MEMORY[0x1E698F240];
          v133 = *MEMORY[0x1E696A578];
          errorCopy3 = error;
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"receivingAccountDomain"];
          v134 = v15;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
          v53 = v50;
          v8 = v49;
          v10 = v113;
          v54 = [v48 initWithDomain:v53 code:2 userInfo:v52];
          error = 0;
          v26 = 0;
          *errorCopy3 = v54;
          goto LABEL_103;
        }

        v26 = 0;
LABEL_104:

        self = selfCopy;
        goto LABEL_105;
      }

      if (error)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = v8;
        v35 = *MEMORY[0x1E698F240];
        v135 = *MEMORY[0x1E696A578];
        errorCopy4 = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"senderId"];
        errorCopy5 = error;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy5 forKeys:&v135 count:1];
        v38 = v35;
        v8 = v34;
        v10 = v113;
        v39 = [v33 initWithDomain:v38 code:2 userInfo:v37];
        v115 = 0;
        v26 = 0;
        *errorCopy4 = v39;
        v12 = v37;
        goto LABEL_104;
      }

      v115 = 0;
      v26 = 0;
LABEL_105:

      goto LABEL_106;
    }

    if (error)
    {
      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = v8;
      v29 = *MEMORY[0x1E698F240];
      v137 = *MEMORY[0x1E696A578];
      v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"messageId"];
      v138 = v115;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      v31 = v29;
      v8 = v28;
      v116 = v30;
      v32 = [v27 initWithDomain:v31 code:2 userInfo:?];
      v10 = 0;
      v26 = 0;
      *error = v32;
      goto LABEL_105;
    }

    v10 = 0;
    v26 = 0;
LABEL_106:

    goto LABEL_107;
  }

  if (error)
  {
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E698F240];
    v139 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountId"];
    v140[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:&v139 count:1];
    v25 = [v23 initWithDomain:v24 code:2 userInfo:v9];
    v8 = 0;
    v26 = 0;
    *error = v25;
    goto LABEL_106;
  }

  v8 = 0;
  v26 = 0;
LABEL_107:

  v92 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMailCategorizationAnalyticsReceive *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_accountId)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  if (self->_hasMessageId)
  {
    messageId = self->_messageId;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

  if (self->_hasSenderId)
  {
    senderId = self->_senderId;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

  if (self->_hasReceivingAccountDomain)
  {
    receivingAccountDomain = self->_receivingAccountDomain;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

  if (self->_metadataPrimaryKey)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  if (self->_hasPredictedCategory)
  {
    predictedCategory = self->_predictedCategory;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

  if (self->_hasCurrCategoryView)
  {
    currCategoryView = self->_currCategoryView;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

  if (self->_reasonCodes)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  if (self->_hasReceiveTimestamp)
  {
    receiveTimestamp = self->_receiveTimestamp;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

  if (self->_hasIsAllInboxesCategoriesEnabled)
  {
    isAllInboxesCategoriesEnabled = self->_isAllInboxesCategoriesEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }

  if (self->_hasIsMailAccountPersonalAccount)
  {
    isMailAccountPersonalAccount = self->_isMailAccountPersonalAccount;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }

  if (self->_hasIsMailAccountCategoriesEnabled)
  {
    isMailAccountCategoriesEnabled = self->_isMailAccountCategoriesEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v80.receiver = self;
  v80.super_class = BMMailCategorizationAnalyticsReceive;
  v5 = [(BMEventBase *)&v80 init];
  if (!v5)
  {
    goto LABEL_155;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_153;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v81 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v81 & 0x7F) << v7;
        if ((v81 & 0x80) == 0)
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
        goto LABEL_153;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 6)
      {
        break;
      }

      if (v15 <= 9)
      {
        if (v15 == 7)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v5->_hasCurrCategoryView = 1;
          while (1)
          {
            v81 = 0;
            v47 = [fromCopy position] + 1;
            if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v46 |= (v81 & 0x7F) << v44;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v13 = v45++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_137;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v46;
          }

LABEL_137:
          v75 = 48;
          goto LABEL_148;
        }

        if (v15 != 8)
        {
          if (v15 != 9)
          {
            goto LABEL_118;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasReceiveTimestamp = 1;
          while (1)
          {
            v81 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v81 & 0x7F) << v23;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_127;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_127:
          v75 = 52;
          goto LABEL_148;
        }

        v42 = PBReaderReadString();
        v43 = 72;
        goto LABEL_108;
      }

      switch(v15)
      {
        case 0xA:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v5->_hasIsAllInboxesCategoriesEnabled = 1;
          while (1)
          {
            v81 = 0;
            v59 = [fromCopy position] + 1;
            if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 1, v60 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v58 |= (v81 & 0x7F) << v56;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v13 = v57++ >= 9;
            if (v13)
            {
              LOBYTE(v41) = 0;
              goto LABEL_143;
            }
          }

          v41 = (v58 != 0) & ~[fromCopy hasError];
LABEL_143:
          v76 = 22;
          break;
        case 0xB:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v5->_hasIsMailAccountPersonalAccount = 1;
          while (1)
          {
            v81 = 0;
            v72 = [fromCopy position] + 1;
            if (v72 >= [fromCopy position] && (v73 = objc_msgSend(fromCopy, "position") + 1, v73 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v71 |= (v81 & 0x7F) << v69;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v13 = v70++ >= 9;
            if (v13)
            {
              LOBYTE(v41) = 0;
              goto LABEL_150;
            }
          }

          v41 = (v71 != 0) & ~[fromCopy hasError];
LABEL_150:
          v76 = 24;
          break;
        case 0xC:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v5->_hasIsMailAccountCategoriesEnabled = 1;
          while (1)
          {
            v81 = 0;
            v38 = [fromCopy position] + 1;
            if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 |= (v81 & 0x7F) << v35;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v13 = v36++ >= 9;
            if (v13)
            {
              LOBYTE(v41) = 0;
              goto LABEL_133;
            }
          }

          v41 = (v37 != 0) & ~[fromCopy hasError];
LABEL_133:
          v76 = 26;
          break;
        default:
LABEL_118:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_154;
          }

          goto LABEL_152;
      }

      *(&v5->super.super.isa + v76) = v41;
LABEL_152:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_153;
      }
    }

    if (v15 > 3)
    {
      if (v15 == 4)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasReceivingAccountDomain = 1;
        while (1)
        {
          v81 = 0;
          v53 = [fromCopy position] + 1;
          if (v53 >= [fromCopy position] && (v54 = objc_msgSend(fromCopy, "position") + 1, v54 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v52 |= (v81 & 0x7F) << v50;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v13 = v51++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_141;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v52;
        }

LABEL_141:
        v75 = 40;
LABEL_148:
        *(&v5->super.super.isa + v75) = v22;
        goto LABEL_152;
      }

      if (v15 != 5)
      {
        if (v15 != 6)
        {
          goto LABEL_118;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasPredictedCategory = 1;
        while (1)
        {
          v81 = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (v81 & 0x7F) << v29;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v13 = v30++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_131;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_131:
        v75 = 44;
        goto LABEL_148;
      }

      v42 = PBReaderReadString();
      v43 = 64;
    }

    else
    {
      if (v15 != 1)
      {
        if (v15 == 2)
        {
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v5->_hasMessageId = 1;
          while (1)
          {
            v81 = 0;
            v65 = [fromCopy position] + 1;
            if (v65 >= [fromCopy position] && (v66 = objc_msgSend(fromCopy, "position") + 1, v66 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v64 |= (v81 & 0x7F) << v62;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v13 = v63++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_147;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v64;
          }

LABEL_147:
          v75 = 32;
        }

        else
        {
          if (v15 != 3)
          {
            goto LABEL_118;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          v5->_hasSenderId = 1;
          while (1)
          {
            v81 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v81 & 0x7F) << v16;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v13 = v17++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_123;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_123:
          v75 = 36;
        }

        goto LABEL_148;
      }

      v42 = PBReaderReadString();
      v43 = 56;
    }

LABEL_108:
    v68 = *(&v5->super.super.isa + v43);
    *(&v5->super.super.isa + v43) = v42;

    goto LABEL_152;
  }

LABEL_153:
  if ([fromCopy hasError])
  {
LABEL_154:
    v78 = 0;
  }

  else
  {
LABEL_155:
    v78 = v5;
  }

  return v78;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  accountId = [(BMMailCategorizationAnalyticsReceive *)self accountId];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive messageId](self, "messageId")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive senderId](self, "senderId")}];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive receivingAccountDomain](self, "receivingAccountDomain")}];
  metadataPrimaryKey = [(BMMailCategorizationAnalyticsReceive *)self metadataPrimaryKey];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive predictedCategory](self, "predictedCategory")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive currCategoryView](self, "currCategoryView")}];
  reasonCodes = [(BMMailCategorizationAnalyticsReceive *)self reasonCodes];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsReceive receiveTimestamp](self, "receiveTimestamp")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorizationAnalyticsReceive isAllInboxesCategoriesEnabled](self, "isAllInboxesCategoriesEnabled")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorizationAnalyticsReceive isMailAccountPersonalAccount](self, "isMailAccountPersonalAccount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorizationAnalyticsReceive isMailAccountCategoriesEnabled](self, "isMailAccountCategoriesEnabled")}];
  v15 = [v14 initWithFormat:@"BMMailCategorizationAnalyticsReceive with accountId: %@, messageId: %@, senderId: %@, receivingAccountDomain: %@, metadataPrimaryKey: %@, predictedCategory: %@, currCategoryView: %@, reasonCodes: %@, receiveTimestamp: %@, isAllInboxesCategoriesEnabled: %@, isMailAccountPersonalAccount: %@, isMailAccountCategoriesEnabled: %@", accountId, v17, v16, v3, metadataPrimaryKey, v5, v6, reasonCodes, v8, v9, v10, v11];

  return v15;
}

- (BMMailCategorizationAnalyticsReceive)initWithAccountId:(id)id messageId:(id)messageId senderId:(id)senderId receivingAccountDomain:(id)domain metadataPrimaryKey:(id)key predictedCategory:(id)category currCategoryView:(id)view reasonCodes:(id)self0 receiveTimestamp:(id)self1 isAllInboxesCategoriesEnabled:(id)self2 isMailAccountPersonalAccount:(id)self3 isMailAccountCategoriesEnabled:(id)self4
{
  idCopy = id;
  messageIdCopy = messageId;
  senderIdCopy = senderId;
  domainCopy = domain;
  keyCopy = key;
  keyCopy2 = key;
  categoryCopy = category;
  v23 = domainCopy;
  viewCopy = view;
  codesCopy = codes;
  v25 = senderIdCopy;
  timestampCopy = timestamp;
  enabledCopy = enabled;
  accountCopy = account;
  categoriesEnabledCopy = categoriesEnabled;
  v44.receiver = self;
  v44.super_class = BMMailCategorizationAnalyticsReceive;
  v30 = [(BMEventBase *)&v44 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v30->_accountId, id);
    if (messageIdCopy)
    {
      v30->_hasMessageId = 1;
      intValue = [messageIdCopy intValue];
    }

    else
    {
      v30->_hasMessageId = 0;
      intValue = -1;
    }

    v30->_messageId = intValue;
    if (v25)
    {
      v30->_hasSenderId = 1;
      intValue2 = [v25 intValue];
    }

    else
    {
      v30->_hasSenderId = 0;
      intValue2 = -1;
    }

    v30->_senderId = intValue2;
    if (v23)
    {
      v30->_hasReceivingAccountDomain = 1;
      intValue3 = [v23 intValue];
    }

    else
    {
      v30->_hasReceivingAccountDomain = 0;
      intValue3 = -1;
    }

    v30->_receivingAccountDomain = intValue3;
    objc_storeStrong(&v30->_metadataPrimaryKey, keyCopy);
    if (categoryCopy)
    {
      v30->_hasPredictedCategory = 1;
      intValue4 = [categoryCopy intValue];
    }

    else
    {
      v30->_hasPredictedCategory = 0;
      intValue4 = -1;
    }

    v30->_predictedCategory = intValue4;
    if (viewCopy)
    {
      v30->_hasCurrCategoryView = 1;
      intValue5 = [viewCopy intValue];
    }

    else
    {
      v30->_hasCurrCategoryView = 0;
      intValue5 = -1;
    }

    v30->_currCategoryView = intValue5;
    objc_storeStrong(&v30->_reasonCodes, codes);
    if (timestampCopy)
    {
      v30->_hasReceiveTimestamp = 1;
      intValue6 = [timestampCopy intValue];
    }

    else
    {
      v30->_hasReceiveTimestamp = 0;
      intValue6 = -1;
    }

    v30->_receiveTimestamp = intValue6;
    if (enabledCopy)
    {
      v30->_hasIsAllInboxesCategoriesEnabled = 1;
      v30->_isAllInboxesCategoriesEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v30->_hasIsAllInboxesCategoriesEnabled = 0;
      v30->_isAllInboxesCategoriesEnabled = 0;
    }

    if (accountCopy)
    {
      v30->_hasIsMailAccountPersonalAccount = 1;
      v30->_isMailAccountPersonalAccount = [accountCopy BOOLValue];
    }

    else
    {
      v30->_hasIsMailAccountPersonalAccount = 0;
      v30->_isMailAccountPersonalAccount = 0;
    }

    if (categoriesEnabledCopy)
    {
      v30->_hasIsMailAccountCategoriesEnabled = 1;
      v30->_isMailAccountCategoriesEnabled = [categoriesEnabledCopy BOOLValue];
    }

    else
    {
      v30->_hasIsMailAccountCategoriesEnabled = 0;
      v30->_isMailAccountCategoriesEnabled = 0;
    }
  }

  return v30;
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

    v8 = [[BMMailCategorizationAnalyticsReceive alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end