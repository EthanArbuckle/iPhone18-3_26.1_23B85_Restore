@interface BMTextUnderstandingPoemAnalyticsFeatures
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextUnderstandingPoemAnalyticsFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMTextUnderstandingPoemAnalyticsFeatures)initWithNumOfFacesInMessages:(id)messages numOfFacesOnDevice:(id)device numOfNamedFacesOnDevice:(id)onDevice numOfConversationThreads:(id)threads numOfNamedEntityMentions:(id)mentions numOfSenderMentions:(id)senderMentions numOfReceiverMentions:(id)receiverMentions numOfPronounMentions:(id)self0 numOfImagesShared:(id)self1 numOfLinguisticMentions:(id)self2;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextUnderstandingPoemAnalyticsFeatures

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfFacesInMessages](self, "hasNumOfFacesInMessages") || [v5 hasNumOfFacesInMessages])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfFacesInMessages])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfFacesInMessages])
      {
        goto LABEL_53;
      }

      numOfFacesInMessages = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfFacesInMessages];
      if (numOfFacesInMessages != [v5 numOfFacesInMessages])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfFacesOnDevice](self, "hasNumOfFacesOnDevice") || [v5 hasNumOfFacesOnDevice])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfFacesOnDevice])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfFacesOnDevice])
      {
        goto LABEL_53;
      }

      numOfFacesOnDevice = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfFacesOnDevice];
      if (numOfFacesOnDevice != [v5 numOfFacesOnDevice])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfNamedFacesOnDevice](self, "hasNumOfNamedFacesOnDevice") || [v5 hasNumOfNamedFacesOnDevice])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfNamedFacesOnDevice])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfNamedFacesOnDevice])
      {
        goto LABEL_53;
      }

      numOfNamedFacesOnDevice = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfNamedFacesOnDevice];
      if (numOfNamedFacesOnDevice != [v5 numOfNamedFacesOnDevice])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfConversationThreads](self, "hasNumOfConversationThreads") || [v5 hasNumOfConversationThreads])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfConversationThreads])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfConversationThreads])
      {
        goto LABEL_53;
      }

      numOfConversationThreads = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfConversationThreads];
      if (numOfConversationThreads != [v5 numOfConversationThreads])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfNamedEntityMentions](self, "hasNumOfNamedEntityMentions") || [v5 hasNumOfNamedEntityMentions])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfNamedEntityMentions])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfNamedEntityMentions])
      {
        goto LABEL_53;
      }

      numOfNamedEntityMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfNamedEntityMentions];
      if (numOfNamedEntityMentions != [v5 numOfNamedEntityMentions])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfSenderMentions](self, "hasNumOfSenderMentions") || [v5 hasNumOfSenderMentions])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfSenderMentions])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfSenderMentions])
      {
        goto LABEL_53;
      }

      numOfSenderMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfSenderMentions];
      if (numOfSenderMentions != [v5 numOfSenderMentions])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfReceiverMentions](self, "hasNumOfReceiverMentions") || [v5 hasNumOfReceiverMentions])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfReceiverMentions])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfReceiverMentions])
      {
        goto LABEL_53;
      }

      numOfReceiverMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfReceiverMentions];
      if (numOfReceiverMentions != [v5 numOfReceiverMentions])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfPronounMentions](self, "hasNumOfPronounMentions") || [v5 hasNumOfPronounMentions])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfPronounMentions])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfPronounMentions])
      {
        goto LABEL_53;
      }

      numOfPronounMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfPronounMentions];
      if (numOfPronounMentions != [v5 numOfPronounMentions])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfImagesShared](self, "hasNumOfImagesShared") || [v5 hasNumOfImagesShared])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfImagesShared])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfImagesShared])
      {
        goto LABEL_53;
      }

      numOfImagesShared = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfImagesShared];
      if (numOfImagesShared != [v5 numOfImagesShared])
      {
        goto LABEL_53;
      }
    }

    if (!-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfLinguisticMentions](self, "hasNumOfLinguisticMentions") && ![v5 hasNumOfLinguisticMentions])
    {
      v16 = 1;
      goto LABEL_54;
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfLinguisticMentions](self, "hasNumOfLinguisticMentions") && [v5 hasNumOfLinguisticMentions])
    {
      numOfLinguisticMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfLinguisticMentions];
      v16 = numOfLinguisticMentions == [v5 numOfLinguisticMentions];
    }

    else
    {
LABEL_53:
      v16 = 0;
    }

LABEL_54:

    goto LABEL_55;
  }

  v16 = 0;
LABEL_55:

  return v16;
}

- (id)jsonDictionary
{
  v37[10] = *MEMORY[0x1E69E9840];
  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfFacesInMessages])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfFacesInMessages](self, "numOfFacesInMessages")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfFacesOnDevice])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfFacesOnDevice](self, "numOfFacesOnDevice")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfNamedFacesOnDevice])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfNamedFacesOnDevice](self, "numOfNamedFacesOnDevice")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfConversationThreads])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfConversationThreads](self, "numOfConversationThreads")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfNamedEntityMentions])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfNamedEntityMentions](self, "numOfNamedEntityMentions")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfSenderMentions])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfSenderMentions](self, "numOfSenderMentions")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfReceiverMentions])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfReceiverMentions](self, "numOfReceiverMentions")}];
  }

  else
  {
    v35 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfPronounMentions])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfPronounMentions](self, "numOfPronounMentions")}];
  }

  else
  {
    v34 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfImagesShared])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfImagesShared](self, "numOfImagesShared")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfLinguisticMentions])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfLinguisticMentions](self, "numOfLinguisticMentions")}];
  }

  else
  {
    v10 = 0;
  }

  v36[0] = @"numOfFacesInMessages";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v37[0] = null;
  v36[1] = @"numOfFacesOnDevice";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v37[1] = null2;
  v36[2] = @"numOfNamedFacesOnDevice";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v3;
  v26 = null3;
  v37[2] = null3;
  v36[3] = @"numOfConversationThreads";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v4;
  v25 = null4;
  v37[3] = null4;
  v36[4] = @"numOfNamedEntityMentions";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v5;
  v37[4] = null5;
  v36[5] = @"numOfSenderMentions";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v6;
  v37[5] = null6;
  v36[6] = @"numOfReceiverMentions";
  null7 = v35;
  if (!v35)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v37[6] = null7;
  v36[7] = @"numOfPronounMentions";
  null8 = v34;
  if (!v34)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v8;
  v37[7] = null8;
  v36[8] = @"numOfImagesShared";
  null9 = v9;
  if (!v9)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v37[8] = null9;
  v36[9] = @"numOfLinguisticMentions";
  null10 = v10;
  if (!v10)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v37[9] = null10;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:10];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_53;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_53;
    }
  }

LABEL_53:
  if (!v34)
  {
  }

  if (!v35)
  {
  }

  if (!v20)
  {
  }

  if (!v18)
  {
  }

  if (!v30)
  {
  }

  if (v31)
  {
    if (v32)
    {
      goto LABEL_65;
    }

LABEL_72:

    if (v33)
    {
      goto LABEL_66;
    }

    goto LABEL_73;
  }

  if (!v32)
  {
    goto LABEL_72;
  }

LABEL_65:
  if (v33)
  {
    goto LABEL_66;
  }

LABEL_73:

LABEL_66:
  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BMTextUnderstandingPoemAnalyticsFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v129[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"numOfFacesInMessages"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v107 = 0;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"numOfFacesOnDevice"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          v24 = 0;
          v23 = v107;
          goto LABEL_64;
        }

        errorCopy = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v126 = *MEMORY[0x1E696A578];
        v23 = v107;
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfFacesOnDevice"];
        v127 = v12;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        v29 = v27;
        v9 = v28;
        v8 = 0;
        v24 = 0;
        *errorCopy = [v26 initWithDomain:v29 code:2 userInfo:v28];
        goto LABEL_63;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numOfNamedFacesOnDevice"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v24 = 0;
          v23 = v107;
          goto LABEL_63;
        }

        v104 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v31 = *MEMORY[0x1E698F240];
        v124 = *MEMORY[0x1E696A578];
        v32 = v8;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v82 = objc_opt_class();
        v34 = v33;
        v8 = v32;
        v106 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v82, @"numOfNamedFacesOnDevice"];
        v125 = v106;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
        v24 = 0;
        *errorCopy2 = [v104 initWithDomain:v31 code:2 userInfo:v35];
        v12 = 0;
        v23 = v107;
LABEL_62:

LABEL_63:
        goto LABEL_64;
      }

      v10 = v6;
      v11 = v7;
      v12 = v9;
    }

    else
    {
      v10 = v6;
      v11 = v7;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"numOfConversationThreads"];
    v105 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v106 = 0;
          v24 = 0;
          v23 = v107;
          v35 = v13;
          v7 = v11;
          v6 = v10;
          goto LABEL_62;
        }

        v98 = v12;
        errorCopy3 = error;
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = v9;
        v46 = *MEMORY[0x1E698F240];
        v122 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfConversationThreads"];
        v123 = v14;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        v48 = v44;
        v35 = v13;
        v49 = v46;
        v9 = v45;
        v103 = v47;
        v106 = 0;
        v24 = 0;
        *errorCopy3 = [v48 initWithDomain:v49 code:2 userInfo:?];
        v12 = v98;
        v23 = v107;
        v7 = v11;
        v6 = v10;
        goto LABEL_61;
      }

      v96 = v13;
      v106 = v13;
    }

    else
    {
      v96 = v13;
      v106 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"numOfNamedEntityMentions"];
    v7 = v11;
    v103 = v14;
    if (v14)
    {
      objc_opt_class();
      v6 = v10;
      if (objc_opt_isKindOfClass())
      {
        v14 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v14 = 0;
            v24 = 0;
            v23 = v107;
            v35 = v96;
            goto LABEL_61;
          }

          v99 = v12;
          errorCopy4 = error;
          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = v9;
          v53 = *MEMORY[0x1E698F240];
          v120 = *MEMORY[0x1E696A578];
          v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfNamedEntityMentions"];
          v121 = v102;
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
          v55 = v53;
          v9 = v52;
          v15 = v54;
          v14 = 0;
          v24 = 0;
          *errorCopy4 = [v51 initWithDomain:v55 code:2 userInfo:v54];
          v12 = v99;
          goto LABEL_91;
        }

        v14 = v14;
      }
    }

    else
    {
      v6 = v10;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"numOfSenderMentions"];
    errorCopy5 = error;
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v87 = v6;
      v16 = v12;
      v102 = 0;
LABEL_30:
      v17 = [dictionaryCopy objectForKeyedSubscript:@"numOfReceiverMentions"];
      v90 = v17;
      if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v95 = 0;
            v24 = 0;
            v35 = v96;
            v12 = v16;
            v6 = v87;
            v41 = v90;
            goto LABEL_59;
          }

          v101 = v16;
          errorCopy6 = error;
          v65 = objc_alloc(MEMORY[0x1E696ABC0]);
          v66 = v15;
          v67 = v9;
          v68 = *MEMORY[0x1E698F240];
          v116 = *MEMORY[0x1E696A578];
          v69 = v14;
          v70 = objc_alloc(MEMORY[0x1E696AEC0]);
          v84 = objc_opt_class();
          v71 = v70;
          v14 = v69;
          v94 = [v71 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v84, @"numOfReceiverMentions"];
          v117 = v94;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v72 = v68;
          v9 = v67;
          v15 = v66;
          v95 = 0;
          v24 = 0;
          *errorCopy6 = [v65 initWithDomain:v72 code:2 userInfo:v19];
          v12 = v101;
          v6 = v87;
          goto LABEL_58;
        }

        v95 = v18;
      }

      else
      {
        v95 = 0;
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"numOfPronounMentions"];
      v12 = v16;
      v91 = v14;
      v86 = v15;
      if (v19)
      {
        objc_opt_class();
        v6 = v87;
        if (objc_opt_isKindOfClass())
        {
          v94 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v94 = 0;
              v24 = 0;
              goto LABEL_58;
            }

            v73 = v9;
            v74 = objc_alloc(MEMORY[0x1E696ABC0]);
            v75 = *MEMORY[0x1E698F240];
            v114 = *MEMORY[0x1E696A578];
            v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfPronounMentions"];
            v115 = v38;
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
            v76 = v74;
            v9 = v73;
            v15 = v86;
            v77 = [v76 initWithDomain:v75 code:2 userInfo:v36];
            v94 = 0;
            v24 = 0;
            *errorCopy5 = v77;
LABEL_57:

            v14 = v91;
LABEL_58:

            v35 = v96;
            v41 = v90;
LABEL_59:

            v23 = v107;
LABEL_60:

LABEL_61:
            v8 = v105;
            goto LABEL_62;
          }

          v94 = v19;
        }
      }

      else
      {
        v94 = 0;
        v6 = v87;
      }

      v36 = [dictionaryCopy objectForKeyedSubscript:@"numOfImagesShared"];
      v85 = v9;
      v97 = v12;
      if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v38 = 0;
            v24 = 0;
            goto LABEL_57;
          }

          selfCopy3 = self;
          v88 = objc_alloc(MEMORY[0x1E696ABC0]);
          v78 = *MEMORY[0x1E698F240];
          v112 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfImagesShared"];
          v113 = v40;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          v79 = [v88 initWithDomain:v78 code:2 userInfo:v39];
          v38 = 0;
          v24 = 0;
          *errorCopy5 = v79;
          goto LABEL_56;
        }

        selfCopy3 = self;
        v38 = v36;
      }

      else
      {
        selfCopy3 = self;
        v38 = 0;
      }

      v39 = [dictionaryCopy objectForKeyedSubscript:@"numOfLinguisticMentions"];
      if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy5)
          {
            v109 = objc_alloc(MEMORY[0x1E696ABC0]);
            v89 = *MEMORY[0x1E698F240];
            v110 = *MEMORY[0x1E696A578];
            v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfLinguisticMentions"];
            v111 = v80;
            v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
            *errorCopy5 = [v109 initWithDomain:v89 code:2 userInfo:v81];
          }

          v40 = 0;
          v24 = 0;
          goto LABEL_56;
        }

        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      v24 = [(BMTextUnderstandingPoemAnalyticsFeatures *)selfCopy3 initWithNumOfFacesInMessages:v107 numOfFacesOnDevice:v105 numOfNamedFacesOnDevice:v97 numOfConversationThreads:v106 numOfNamedEntityMentions:v91 numOfSenderMentions:v102 numOfReceiverMentions:v95 numOfPronounMentions:v94 numOfImagesShared:v38 numOfLinguisticMentions:v40];
      selfCopy3 = v24;
LABEL_56:
      self = selfCopy3;

      v9 = v85;
      v15 = v86;
      v12 = v97;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = v6;
      v16 = v12;
      v102 = v15;
      goto LABEL_30;
    }

    if (error)
    {
      v100 = v12;
      v56 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = v15;
      v58 = v9;
      v59 = *MEMORY[0x1E698F240];
      v118 = *MEMORY[0x1E696A578];
      v60 = v14;
      v61 = objc_alloc(MEMORY[0x1E696AEC0]);
      v83 = objc_opt_class();
      v62 = v61;
      v14 = v60;
      v95 = [v62 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v83, @"numOfSenderMentions"];
      v119 = v95;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
      v63 = v59;
      v9 = v58;
      v15 = v57;
      v102 = 0;
      v24 = 0;
      *errorCopy5 = [v56 initWithDomain:v63 code:2 userInfo:v41];
      v35 = v96;
      v12 = v100;
      goto LABEL_59;
    }

    v102 = 0;
    v24 = 0;
LABEL_91:
    v23 = v107;
    v35 = v96;
    goto LABEL_60;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v107 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v23 = 0;
    v24 = 0;
    goto LABEL_65;
  }

  errorCopy7 = error;
  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v128 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfFacesInMessages"];
  v129[0] = v8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:&v128 count:1];
  v23 = 0;
  v24 = 0;
  *errorCopy7 = [v21 initWithDomain:v22 code:2 userInfo:v7];
LABEL_64:

LABEL_65:
  v42 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoemAnalyticsFeatures *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasNumOfFacesInMessages)
  {
    numOfFacesInMessages = self->_numOfFacesInMessages;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfFacesOnDevice)
  {
    numOfFacesOnDevice = self->_numOfFacesOnDevice;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfNamedFacesOnDevice)
  {
    numOfNamedFacesOnDevice = self->_numOfNamedFacesOnDevice;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfConversationThreads)
  {
    numOfConversationThreads = self->_numOfConversationThreads;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfNamedEntityMentions)
  {
    numOfNamedEntityMentions = self->_numOfNamedEntityMentions;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfSenderMentions)
  {
    numOfSenderMentions = self->_numOfSenderMentions;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfReceiverMentions)
  {
    numOfReceiverMentions = self->_numOfReceiverMentions;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfPronounMentions)
  {
    numOfPronounMentions = self->_numOfPronounMentions;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfImagesShared)
  {
    numOfImagesShared = self->_numOfImagesShared;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfLinguisticMentions)
  {
    numOfLinguisticMentions = self->_numOfLinguisticMentions;
    PBDataWriterWriteInt64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v73.receiver = self;
  v73.super_class = BMTextUnderstandingPoemAnalyticsFeatures;
  v5 = [(BMEventBase *)&v73 init];
  if (!v5)
  {
    goto LABEL_140;
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
        v74 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v74 & 0x7F) << v7;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v45 = 0;
            v46 = 0;
            v18 = 0;
            v5->_hasNumOfSenderMentions = 1;
            while (1)
            {
              v74 = 0;
              v47 = [fromCopy position] + 1;
              if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v45) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v22 = v46++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfSenderMentions;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfSenderMentions;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_121:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_139;
              }

              goto LABEL_137;
            }

            v35 = 0;
            v36 = 0;
            v18 = 0;
            v5->_hasNumOfReceiverMentions = 1;
            while (1)
            {
              v74 = 0;
              v37 = [fromCopy position] + 1;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v35) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v22 = v36++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfReceiverMentions;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfReceiverMentions;
          }
        }

        else
        {
          switch(v15)
          {
            case 8:
              v55 = 0;
              v56 = 0;
              v18 = 0;
              v5->_hasNumOfPronounMentions = 1;
              while (1)
              {
                v74 = 0;
                v57 = [fromCopy position] + 1;
                if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
                {
                  data4 = [fromCopy data];
                  [data4 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 = (((v74 & 0x7F) << v55) | v18);
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                v22 = v56++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfPronounMentions;
                  goto LABEL_136;
                }
              }

              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfPronounMentions;
              break;
            case 9:
              v65 = 0;
              v66 = 0;
              v18 = 0;
              v5->_hasNumOfImagesShared = 1;
              while (1)
              {
                v74 = 0;
                v67 = [fromCopy position] + 1;
                if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
                {
                  data5 = [fromCopy data];
                  [data5 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 = (((v74 & 0x7F) << v65) | v18);
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v22 = v66++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfImagesShared;
                  goto LABEL_136;
                }
              }

              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfImagesShared;
              break;
            case 0xA:
              v25 = 0;
              v26 = 0;
              v18 = 0;
              v5->_hasNumOfLinguisticMentions = 1;
              while (1)
              {
                v74 = 0;
                v27 = [fromCopy position] + 1;
                if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
                {
                  data6 = [fromCopy data];
                  [data6 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 = (((v74 & 0x7F) << v25) | v18);
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v22 = v26++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfLinguisticMentions;
                  goto LABEL_136;
                }
              }

              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfLinguisticMentions;
              break;
            default:
              goto LABEL_121;
          }
        }
      }

      else if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v40 = 0;
          v41 = 0;
          v18 = 0;
          v5->_hasNumOfFacesInMessages = 1;
          while (1)
          {
            v74 = 0;
            v42 = [fromCopy position] + 1;
            if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 = (((v74 & 0x7F) << v40) | v18);
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v22 = v41++ > 8;
            if (v22)
            {
              v23 = 0;
              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfFacesInMessages;
              goto LABEL_136;
            }
          }

          v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfFacesInMessages;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_121;
          }

          v30 = 0;
          v31 = 0;
          v18 = 0;
          v5->_hasNumOfFacesOnDevice = 1;
          while (1)
          {
            v74 = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 = (((v74 & 0x7F) << v30) | v18);
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v31++ > 8;
            if (v22)
            {
              v23 = 0;
              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfFacesOnDevice;
              goto LABEL_136;
            }
          }

          v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfFacesOnDevice;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v50 = 0;
            v51 = 0;
            v18 = 0;
            v5->_hasNumOfNamedFacesOnDevice = 1;
            while (1)
            {
              v74 = 0;
              v52 = [fromCopy position] + 1;
              if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
              {
                data9 = [fromCopy data];
                [data9 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v50) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v22 = v51++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfNamedFacesOnDevice;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfNamedFacesOnDevice;
            break;
          case 4:
            v60 = 0;
            v61 = 0;
            v18 = 0;
            v5->_hasNumOfConversationThreads = 1;
            while (1)
            {
              v74 = 0;
              v62 = [fromCopy position] + 1;
              if (v62 >= [fromCopy position] && (v63 = objc_msgSend(fromCopy, "position") + 1, v63 <= objc_msgSend(fromCopy, "length")))
              {
                data10 = [fromCopy data];
                [data10 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v60) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v22 = v61++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfConversationThreads;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfConversationThreads;
            break;
          case 5:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasNumOfNamedEntityMentions = 1;
            while (1)
            {
              v74 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data11 = [fromCopy data];
                [data11 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v16) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfNamedEntityMentions;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfNamedEntityMentions;
            break;
          default:
            goto LABEL_121;
        }
      }

      if ([fromCopy hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v18;
      }

LABEL_136:
      *(&v5->super.super.isa + *v24) = v23;
LABEL_137:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_139:
    v71 = 0;
  }

  else
  {
LABEL_140:
    v71 = v5;
  }

  return v71;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfFacesInMessages](self, "numOfFacesInMessages")}];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfFacesOnDevice](self, "numOfFacesOnDevice")}];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfNamedFacesOnDevice](self, "numOfNamedFacesOnDevice")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfConversationThreads](self, "numOfConversationThreads")}];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfNamedEntityMentions](self, "numOfNamedEntityMentions")}];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfSenderMentions](self, "numOfSenderMentions")}];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfReceiverMentions](self, "numOfReceiverMentions")}];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfPronounMentions](self, "numOfPronounMentions")}];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfImagesShared](self, "numOfImagesShared")}];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfLinguisticMentions](self, "numOfLinguisticMentions")}];
  v15 = [v14 initWithFormat:@"BMTextUnderstandingPoemAnalyticsFeatures with numOfFacesInMessages: %@, numOfFacesOnDevice: %@, numOfNamedFacesOnDevice: %@, numOfConversationThreads: %@, numOfNamedEntityMentions: %@, numOfSenderMentions: %@, numOfReceiverMentions: %@, numOfPronounMentions: %@, numOfImagesShared: %@, numOfLinguisticMentions: %@", v13, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v15;
}

- (BMTextUnderstandingPoemAnalyticsFeatures)initWithNumOfFacesInMessages:(id)messages numOfFacesOnDevice:(id)device numOfNamedFacesOnDevice:(id)onDevice numOfConversationThreads:(id)threads numOfNamedEntityMentions:(id)mentions numOfSenderMentions:(id)senderMentions numOfReceiverMentions:(id)receiverMentions numOfPronounMentions:(id)self0 numOfImagesShared:(id)self1 numOfLinguisticMentions:(id)self2
{
  messagesCopy = messages;
  deviceCopy = device;
  onDeviceCopy = onDevice;
  threadsCopy = threads;
  mentionsCopy = mentions;
  senderMentionsCopy = senderMentions;
  receiverMentionsCopy = receiverMentions;
  pronounMentionsCopy = pronounMentions;
  sharedCopy = shared;
  linguisticMentionsCopy = linguisticMentions;
  v40.receiver = self;
  v40.super_class = BMTextUnderstandingPoemAnalyticsFeatures;
  v26 = [(BMEventBase *)&v40 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    if (messagesCopy)
    {
      v26->_hasNumOfFacesInMessages = 1;
      longLongValue = [messagesCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfFacesInMessages = 0;
      longLongValue = -1;
    }

    v26->_numOfFacesInMessages = longLongValue;
    if (deviceCopy)
    {
      v26->_hasNumOfFacesOnDevice = 1;
      longLongValue2 = [deviceCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfFacesOnDevice = 0;
      longLongValue2 = -1;
    }

    v26->_numOfFacesOnDevice = longLongValue2;
    if (onDeviceCopy)
    {
      v26->_hasNumOfNamedFacesOnDevice = 1;
      longLongValue3 = [onDeviceCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfNamedFacesOnDevice = 0;
      longLongValue3 = -1;
    }

    v26->_numOfNamedFacesOnDevice = longLongValue3;
    if (threadsCopy)
    {
      v26->_hasNumOfConversationThreads = 1;
      longLongValue4 = [threadsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfConversationThreads = 0;
      longLongValue4 = -1;
    }

    v26->_numOfConversationThreads = longLongValue4;
    if (mentionsCopy)
    {
      v26->_hasNumOfNamedEntityMentions = 1;
      longLongValue5 = [mentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfNamedEntityMentions = 0;
      longLongValue5 = -1;
    }

    v26->_numOfNamedEntityMentions = longLongValue5;
    if (senderMentionsCopy)
    {
      v26->_hasNumOfSenderMentions = 1;
      longLongValue6 = [senderMentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfSenderMentions = 0;
      longLongValue6 = -1;
    }

    v26->_numOfSenderMentions = longLongValue6;
    if (receiverMentionsCopy)
    {
      v26->_hasNumOfReceiverMentions = 1;
      longLongValue7 = [receiverMentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfReceiverMentions = 0;
      longLongValue7 = -1;
    }

    v26->_numOfReceiverMentions = longLongValue7;
    if (pronounMentionsCopy)
    {
      v26->_hasNumOfPronounMentions = 1;
      longLongValue8 = [pronounMentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfPronounMentions = 0;
      longLongValue8 = -1;
    }

    v26->_numOfPronounMentions = longLongValue8;
    if (sharedCopy)
    {
      v26->_hasNumOfImagesShared = 1;
      longLongValue9 = [sharedCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfImagesShared = 0;
      longLongValue9 = -1;
    }

    v26->_numOfImagesShared = longLongValue9;
    if (linguisticMentionsCopy)
    {
      v26->_hasNumOfLinguisticMentions = 1;
      longLongValue10 = [linguisticMentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfLinguisticMentions = 0;
      longLongValue10 = -1;
    }

    v26->_numOfLinguisticMentions = longLongValue10;
  }

  return v26;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfFacesInMessages" number:1 type:3 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfFacesOnDevice" number:2 type:3 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfNamedFacesOnDevice" number:3 type:3 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfConversationThreads" number:4 type:3 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfNamedEntityMentions" number:5 type:3 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfSenderMentions" number:6 type:3 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfReceiverMentions" number:7 type:3 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfPronounMentions" number:8 type:3 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfImagesShared" number:9 type:3 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfLinguisticMentions" number:10 type:3 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfFacesInMessages" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:3 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfFacesOnDevice" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:3 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfNamedFacesOnDevice" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:3 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfConversationThreads" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:3 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfNamedEntityMentions" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:3 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfSenderMentions" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:3 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfReceiverMentions" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:3 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfPronounMentions" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:3 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfImagesShared" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:3 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfLinguisticMentions" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:3 convertedType:0];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v7;
  v15[6] = v8;
  v15[7] = v9;
  v15[8] = v10;
  v15[9] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
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

    v8 = [[BMTextUnderstandingPoemAnalyticsFeatures alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end