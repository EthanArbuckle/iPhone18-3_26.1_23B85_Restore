@interface BMSiriPostSiriEngagementFeatures
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriPostSiriEngagementFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriPostSiriEngagementFeatures)initWithTaskSuccess:(int)success isUserAbandoned:(id)abandoned isUserCancelled:(id)cancelled isSiriCompleted:(id)completed isPromptInteraction:(id)interaction isConfirmInteraction:(id)confirmInteraction isDisambiguateInteraction:(id)disambiguateInteraction isUnsupportedPromptInteraction:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriPostSiriEngagementFeatures

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    taskSuccess = [(BMSiriPostSiriEngagementFeatures *)self taskSuccess];
    if (taskSuccess != [v5 taskSuccess])
    {
      goto LABEL_39;
    }

    if (-[BMSiriPostSiriEngagementFeatures hasIsUserAbandoned](self, "hasIsUserAbandoned") || [v5 hasIsUserAbandoned])
    {
      if (![(BMSiriPostSiriEngagementFeatures *)self hasIsUserAbandoned])
      {
        goto LABEL_39;
      }

      if (![v5 hasIsUserAbandoned])
      {
        goto LABEL_39;
      }

      isUserAbandoned = [(BMSiriPostSiriEngagementFeatures *)self isUserAbandoned];
      if (isUserAbandoned != [v5 isUserAbandoned])
      {
        goto LABEL_39;
      }
    }

    if (-[BMSiriPostSiriEngagementFeatures hasIsUserCancelled](self, "hasIsUserCancelled") || [v5 hasIsUserCancelled])
    {
      if (![(BMSiriPostSiriEngagementFeatures *)self hasIsUserCancelled])
      {
        goto LABEL_39;
      }

      if (![v5 hasIsUserCancelled])
      {
        goto LABEL_39;
      }

      isUserCancelled = [(BMSiriPostSiriEngagementFeatures *)self isUserCancelled];
      if (isUserCancelled != [v5 isUserCancelled])
      {
        goto LABEL_39;
      }
    }

    if (-[BMSiriPostSiriEngagementFeatures hasIsSiriCompleted](self, "hasIsSiriCompleted") || [v5 hasIsSiriCompleted])
    {
      if (![(BMSiriPostSiriEngagementFeatures *)self hasIsSiriCompleted])
      {
        goto LABEL_39;
      }

      if (![v5 hasIsSiriCompleted])
      {
        goto LABEL_39;
      }

      isSiriCompleted = [(BMSiriPostSiriEngagementFeatures *)self isSiriCompleted];
      if (isSiriCompleted != [v5 isSiriCompleted])
      {
        goto LABEL_39;
      }
    }

    if (-[BMSiriPostSiriEngagementFeatures hasIsPromptInteraction](self, "hasIsPromptInteraction") || [v5 hasIsPromptInteraction])
    {
      if (![(BMSiriPostSiriEngagementFeatures *)self hasIsPromptInteraction])
      {
        goto LABEL_39;
      }

      if (![v5 hasIsPromptInteraction])
      {
        goto LABEL_39;
      }

      isPromptInteraction = [(BMSiriPostSiriEngagementFeatures *)self isPromptInteraction];
      if (isPromptInteraction != [v5 isPromptInteraction])
      {
        goto LABEL_39;
      }
    }

    if (-[BMSiriPostSiriEngagementFeatures hasIsConfirmInteraction](self, "hasIsConfirmInteraction") || [v5 hasIsConfirmInteraction])
    {
      if (![(BMSiriPostSiriEngagementFeatures *)self hasIsConfirmInteraction])
      {
        goto LABEL_39;
      }

      if (![v5 hasIsConfirmInteraction])
      {
        goto LABEL_39;
      }

      isConfirmInteraction = [(BMSiriPostSiriEngagementFeatures *)self isConfirmInteraction];
      if (isConfirmInteraction != [v5 isConfirmInteraction])
      {
        goto LABEL_39;
      }
    }

    if (-[BMSiriPostSiriEngagementFeatures hasIsDisambiguateInteraction](self, "hasIsDisambiguateInteraction") || [v5 hasIsDisambiguateInteraction])
    {
      if (![(BMSiriPostSiriEngagementFeatures *)self hasIsDisambiguateInteraction])
      {
        goto LABEL_39;
      }

      if (![v5 hasIsDisambiguateInteraction])
      {
        goto LABEL_39;
      }

      isDisambiguateInteraction = [(BMSiriPostSiriEngagementFeatures *)self isDisambiguateInteraction];
      if (isDisambiguateInteraction != [v5 isDisambiguateInteraction])
      {
        goto LABEL_39;
      }
    }

    if (!-[BMSiriPostSiriEngagementFeatures hasIsUnsupportedPromptInteraction](self, "hasIsUnsupportedPromptInteraction") && ![v5 hasIsUnsupportedPromptInteraction])
    {
      LOBYTE(v14) = 1;
      goto LABEL_40;
    }

    if (-[BMSiriPostSiriEngagementFeatures hasIsUnsupportedPromptInteraction](self, "hasIsUnsupportedPromptInteraction") && [v5 hasIsUnsupportedPromptInteraction])
    {
      isUnsupportedPromptInteraction = [(BMSiriPostSiriEngagementFeatures *)self isUnsupportedPromptInteraction];
      v14 = isUnsupportedPromptInteraction ^ [v5 isUnsupportedPromptInteraction] ^ 1;
    }

    else
    {
LABEL_39:
      LOBYTE(v14) = 0;
    }

LABEL_40:

    goto LABEL_41;
  }

  LOBYTE(v14) = 0;
LABEL_41:

  return v14;
}

- (id)jsonDictionary
{
  v30[8] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriPostSiriEngagementFeatures taskSuccess](self, "taskSuccess")}];
  if ([(BMSiriPostSiriEngagementFeatures *)self hasIsUserAbandoned])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isUserAbandoned](self, "isUserAbandoned")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriPostSiriEngagementFeatures *)self hasIsUserCancelled])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isUserCancelled](self, "isUserCancelled")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriPostSiriEngagementFeatures *)self hasIsSiriCompleted])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isSiriCompleted](self, "isSiriCompleted")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriPostSiriEngagementFeatures *)self hasIsPromptInteraction])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isPromptInteraction](self, "isPromptInteraction")}];
  }

  else
  {
    v28 = 0;
  }

  if ([(BMSiriPostSiriEngagementFeatures *)self hasIsConfirmInteraction])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isConfirmInteraction](self, "isConfirmInteraction")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriPostSiriEngagementFeatures *)self hasIsDisambiguateInteraction])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isDisambiguateInteraction](self, "isDisambiguateInteraction")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriPostSiriEngagementFeatures *)self hasIsUnsupportedPromptInteraction])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isUnsupportedPromptInteraction](self, "isUnsupportedPromptInteraction")}];
  }

  else
  {
    v9 = 0;
  }

  v29[0] = @"taskSuccess";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v30[0] = null;
  v29[1] = @"isUserAbandoned";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v3;
  v23 = null2;
  v30[1] = null2;
  v29[2] = @"isUserCancelled";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v4;
  v22 = null3;
  v30[2] = null3;
  v29[3] = @"isSiriCompleted";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v5;
  v30[3] = null4;
  v29[4] = @"isPromptInteraction";
  null5 = v28;
  if (!v28)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v15 = v6;
  v30[4] = null5;
  v29[5] = @"isConfirmInteraction";
  null6 = v7;
  if (!v7)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = null6;
  v29[6] = @"isDisambiguateInteraction";
  null7 = v8;
  if (!v8)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = null7;
  v29[7] = @"isUnsupportedPromptInteraction";
  null8 = v9;
  if (!v9)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v30[7] = null8;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_40;
    }

LABEL_53:

    if (v7)
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

  if (!v8)
  {
    goto LABEL_53;
  }

LABEL_40:
  if (v7)
  {
    goto LABEL_41;
  }

LABEL_54:

LABEL_41:
  if (!v28)
  {
  }

  if (!v15)
  {
  }

  if (!v25)
  {
  }

  if (v26)
  {
    if (v27)
    {
      goto LABEL_49;
    }
  }

  else
  {

    if (v27)
    {
      goto LABEL_49;
    }
  }

LABEL_49:
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BMSiriPostSiriEngagementFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v103[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"taskSuccess"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"isUserAbandoned"];
    errorCopy = error;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v24 = 0;
          goto LABEL_43;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v100 = *MEMORY[0x1E696A578];
        v31 = v10;
        v32 = objc_alloc(MEMORY[0x1E696AEC0]);
        v71 = objc_opt_class();
        v33 = v32;
        v10 = v31;
        v26 = [v33 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v71, @"isUserAbandoned"];
        v101 = v26;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v34 = [v29 initWithDomain:v30 code:2 userInfo:v12];
        v11 = 0;
        v24 = 0;
        *errorCopy = v34;
        goto LABEL_42;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isUserCancelled"];
    v87 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v26 = 0;
          v24 = 0;
          goto LABEL_42;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v81 = v11;
        v36 = *MEMORY[0x1E698F240];
        v98 = *MEMORY[0x1E696A578];
        v37 = v10;
        v38 = objc_alloc(MEMORY[0x1E696AEC0]);
        v72 = objc_opt_class();
        v39 = v38;
        v10 = v37;
        v86 = [v39 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v72, @"isUserCancelled"];
        v99 = v86;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        v41 = v35;
        v25 = v40;
        v42 = v36;
        v11 = v81;
        v26 = 0;
        v24 = 0;
        *errorCopy = [v41 initWithDomain:v42 code:2 userInfo:v40];
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v17 = v12;
      selfCopy2 = self;
      v13 = v17;
      v85 = v17;
    }

    else
    {
      v13 = v12;
      selfCopy2 = self;
      v85 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isSiriCompleted"];
    v84 = v8;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v86 = 0;
          v24 = 0;
          v26 = v85;
          v25 = v15;
          self = selfCopy2;
          v12 = v13;
          v7 = v87;
          goto LABEL_41;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = v11;
        v45 = *MEMORY[0x1E698F240];
        v96 = *MEMORY[0x1E696A578];
        v46 = v10;
        v47 = objc_alloc(MEMORY[0x1E696AEC0]);
        v73 = objc_opt_class();
        v48 = v47;
        v10 = v46;
        v83 = [v48 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v73, @"isSiriCompleted"];
        v97 = v83;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        v49 = v43;
        v25 = v15;
        v50 = v45;
        v11 = v44;
        v86 = 0;
        v24 = 0;
        *errorCopy = [v49 initWithDomain:v50 code:2 userInfo:v16];
        self = selfCopy2;
        v12 = v13;
        v7 = v87;
        goto LABEL_40;
      }

      v78 = v15;
      v86 = v15;
    }

    else
    {
      v78 = v15;
      v86 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"isPromptInteraction"];
    self = selfCopy2;
    v80 = v11;
    if (v16)
    {
      objc_opt_class();
      v12 = v13;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v7 = v87;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v83 = 0;
            v24 = 0;
            v25 = v78;
            goto LABEL_40;
          }

          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v53 = v10;
          v54 = objc_alloc(MEMORY[0x1E696AEC0]);
          v74 = objc_opt_class();
          v55 = v54;
          v10 = v53;
          v79 = [v55 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v74, @"isPromptInteraction"];
          v95 = v79;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v56 = v52;
          v11 = v80;
          v83 = 0;
          v24 = 0;
          *errorCopy = [v51 initWithDomain:v56 code:2 userInfo:v18];
LABEL_39:
          v25 = v78;

LABEL_40:
          v8 = v84;
          v26 = v85;
          goto LABEL_41;
        }

        v83 = v16;
LABEL_27:
        v18 = [dictionaryCopy objectForKeyedSubscript:@"isConfirmInteraction"];
        v77 = v10;
        if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v79 = 0;
              v24 = 0;
              goto LABEL_39;
            }

            selfCopy5 = self;
            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E698F240];
            v92 = *MEMORY[0x1E696A578];
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isConfirmInteraction"];
            v93 = v21;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
            v64 = v62;
            v10 = v77;
            v65 = [v64 initWithDomain:v63 code:2 userInfo:v19];
            v79 = 0;
            v24 = 0;
            *error = v65;
            goto LABEL_38;
          }

          v79 = v18;
        }

        else
        {
          v79 = 0;
        }

        v19 = [dictionaryCopy objectForKeyedSubscript:@"isDisambiguateInteraction"];
        if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          selfCopy5 = self;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v21 = 0;
              v24 = 0;
              goto LABEL_38;
            }

            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v67 = *MEMORY[0x1E698F240];
            v90 = *MEMORY[0x1E696A578];
            v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDisambiguateInteraction"];
            v91 = v23;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            v68 = [v66 initWithDomain:v67 code:2 userInfo:v22];
            v21 = 0;
            v24 = 0;
            *errorCopy = v68;
            goto LABEL_37;
          }

          v21 = v19;
        }

        else
        {
          selfCopy5 = self;
          v21 = 0;
        }

        v22 = [dictionaryCopy objectForKeyedSubscript:@"isUnsupportedPromptInteraction"];
        if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy)
            {
              v76 = objc_alloc(MEMORY[0x1E696ABC0]);
              v75 = *MEMORY[0x1E698F240];
              v88 = *MEMORY[0x1E696A578];
              v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUnsupportedPromptInteraction"];
              v89 = v69;
              v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
              *errorCopy = [v76 initWithDomain:v75 code:2 userInfo:v70];
            }

            v23 = 0;
            v24 = 0;
            goto LABEL_37;
          }

          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = -[BMSiriPostSiriEngagementFeatures initWithTaskSuccess:isUserAbandoned:isUserCancelled:isSiriCompleted:isPromptInteraction:isConfirmInteraction:isDisambiguateInteraction:isUnsupportedPromptInteraction:](selfCopy5, "initWithTaskSuccess:isUserAbandoned:isUserCancelled:isSiriCompleted:isPromptInteraction:isConfirmInteraction:isDisambiguateInteraction:isUnsupportedPromptInteraction:", [v84 intValue], v80, v85, v86, v83, v79, v21, v23);
        selfCopy5 = v24;
LABEL_37:

        v10 = v77;
LABEL_38:

        self = selfCopy5;
        v7 = v87;
        v11 = v80;
        goto LABEL_39;
      }

      v83 = 0;
    }

    else
    {
      v83 = 0;
      v12 = v13;
    }

    v7 = v87;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriPostSiriEngagementFeaturesTaskSuccessFromString(v7)];
    goto LABEL_8;
  }

  if (!error)
  {
    v8 = 0;
    v24 = 0;
    goto LABEL_44;
  }

  errorCopy2 = error;
  v58 = objc_alloc(MEMORY[0x1E696ABC0]);
  v59 = *MEMORY[0x1E698F240];
  v102 = *MEMORY[0x1E696A578];
  v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"taskSuccess"];
  v103[0] = v60;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:&v102 count:1];
  v61 = v59;
  v11 = v60;
  v8 = 0;
  v24 = 0;
  *errorCopy2 = [v58 initWithDomain:v61 code:2 userInfo:v10];
LABEL_43:

LABEL_44:
  v27 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriPostSiriEngagementFeatures *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  taskSuccess = self->_taskSuccess;
  v13 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsUserAbandoned)
  {
    isUserAbandoned = self->_isUserAbandoned;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsUserCancelled)
  {
    isUserCancelled = self->_isUserCancelled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSiriCompleted)
  {
    isSiriCompleted = self->_isSiriCompleted;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPromptInteraction)
  {
    isPromptInteraction = self->_isPromptInteraction;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsConfirmInteraction)
  {
    isConfirmInteraction = self->_isConfirmInteraction;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDisambiguateInteraction)
  {
    isDisambiguateInteraction = self->_isDisambiguateInteraction;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsUnsupportedPromptInteraction)
  {
    isUnsupportedPromptInteraction = self->_isUnsupportedPromptInteraction;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v70.receiver = self;
  v70.super_class = BMSiriPostSiriEngagementFeatures;
  v5 = [(BMEventBase *)&v70 init];
  if (!v5)
  {
    goto LABEL_125;
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
        v71 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v71 & 0x7F) << v7;
        if ((v71 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v5->_hasIsDisambiguateInteraction = 1;
            while (1)
            {
              v71 = 0;
              v63 = [fromCopy position] + 1;
              if (v63 >= [fromCopy position] && (v64 = objc_msgSend(fromCopy, "position") + 1, v64 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v62 |= (v71 & 0x7F) << v60;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v13 = v61++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_112;
              }
            }

            v22 = (v62 != 0) & ~[fromCopy hasError];
LABEL_112:
            v66 = 26;
          }

          else
          {
            if (v15 != 8)
            {
LABEL_101:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_124;
              }

              goto LABEL_122;
            }

            v35 = 0;
            v36 = 0;
            v37 = 0;
            v5->_hasIsUnsupportedPromptInteraction = 1;
            while (1)
            {
              v71 = 0;
              v38 = [fromCopy position] + 1;
              if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v37 |= (v71 & 0x7F) << v35;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v13 = v36++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_120;
              }
            }

            v22 = (v37 != 0) & ~[fromCopy hasError];
LABEL_120:
            v66 = 28;
          }
        }

        else if (v15 == 5)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v5->_hasIsPromptInteraction = 1;
          while (1)
          {
            v71 = 0;
            v51 = [fromCopy position] + 1;
            if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v50 |= (v71 & 0x7F) << v48;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v13 = v49++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_108;
            }
          }

          v22 = (v50 != 0) & ~[fromCopy hasError];
LABEL_108:
          v66 = 22;
        }

        else
        {
          if (v15 != 6)
          {
            goto LABEL_101;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasIsConfirmInteraction = 1;
          while (1)
          {
            v71 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v71 & 0x7F) << v23;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_116;
            }
          }

          v22 = (v25 != 0) & ~[fromCopy hasError];
LABEL_116:
          v66 = 24;
        }
      }

      else if (v15 > 2)
      {
        if (v15 == 3)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v5->_hasIsUserCancelled = 1;
          while (1)
          {
            v71 = 0;
            v57 = [fromCopy position] + 1;
            if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v56 |= (v71 & 0x7F) << v54;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v13 = v55++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_110;
            }
          }

          v22 = (v56 != 0) & ~[fromCopy hasError];
LABEL_110:
          v66 = 18;
        }

        else
        {
          if (v15 != 4)
          {
            goto LABEL_101;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          v5->_hasIsSiriCompleted = 1;
          while (1)
          {
            v71 = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v31 |= (v71 & 0x7F) << v29;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v13 = v30++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_118;
            }
          }

          v22 = (v31 != 0) & ~[fromCopy hasError];
LABEL_118:
          v66 = 20;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          while (1)
          {
            v71 = 0;
            v44 = [fromCopy position] + 1;
            if (v44 >= [fromCopy position] && (v45 = objc_msgSend(fromCopy, "position") + 1, v45 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v43 |= (v71 & 0x7F) << v41;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            if (v42++ > 8)
            {
              goto LABEL_105;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v43 > 4)
          {
LABEL_105:
            LODWORD(v43) = 0;
          }

          v5->_taskSuccess = v43;
          goto LABEL_122;
        }

        if (v15 != 2)
        {
          goto LABEL_101;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasIsUserAbandoned = 1;
        while (1)
        {
          v71 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v71 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v71 & 0x7F) << v16;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_114;
          }
        }

        v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_114:
        v66 = 16;
      }

      *(&v5->super.super.isa + v66) = v22;
LABEL_122:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_124:
    v68 = 0;
  }

  else
  {
LABEL_125:
    v68 = v5;
  }

  return v68;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMSiriPostSiriEngagementFeaturesTaskSuccessAsString([(BMSiriPostSiriEngagementFeatures *)self taskSuccess]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isUserAbandoned](self, "isUserAbandoned")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isUserCancelled](self, "isUserCancelled")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isSiriCompleted](self, "isSiriCompleted")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isPromptInteraction](self, "isPromptInteraction")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isConfirmInteraction](self, "isConfirmInteraction")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isDisambiguateInteraction](self, "isDisambiguateInteraction")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriPostSiriEngagementFeatures isUnsupportedPromptInteraction](self, "isUnsupportedPromptInteraction")}];
  v12 = [v3 initWithFormat:@"BMSiriPostSiriEngagementFeatures with taskSuccess: %@, isUserAbandoned: %@, isUserCancelled: %@, isSiriCompleted: %@, isPromptInteraction: %@, isConfirmInteraction: %@, isDisambiguateInteraction: %@, isUnsupportedPromptInteraction: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMSiriPostSiriEngagementFeatures)initWithTaskSuccess:(int)success isUserAbandoned:(id)abandoned isUserCancelled:(id)cancelled isSiriCompleted:(id)completed isPromptInteraction:(id)interaction isConfirmInteraction:(id)confirmInteraction isDisambiguateInteraction:(id)disambiguateInteraction isUnsupportedPromptInteraction:(id)self0
{
  abandonedCopy = abandoned;
  cancelledCopy = cancelled;
  completedCopy = completed;
  interactionCopy = interaction;
  confirmInteractionCopy = confirmInteraction;
  disambiguateInteractionCopy = disambiguateInteraction;
  promptInteractionCopy = promptInteraction;
  v25.receiver = self;
  v25.super_class = BMSiriPostSiriEngagementFeatures;
  v23 = [(BMEventBase *)&v25 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    v23->_taskSuccess = success;
    if (abandonedCopy)
    {
      v23->_hasIsUserAbandoned = 1;
      v23->_isUserAbandoned = [abandonedCopy BOOLValue];
    }

    else
    {
      v23->_hasIsUserAbandoned = 0;
      v23->_isUserAbandoned = 0;
    }

    if (cancelledCopy)
    {
      v23->_hasIsUserCancelled = 1;
      v23->_isUserCancelled = [cancelledCopy BOOLValue];
    }

    else
    {
      v23->_hasIsUserCancelled = 0;
      v23->_isUserCancelled = 0;
    }

    if (completedCopy)
    {
      v23->_hasIsSiriCompleted = 1;
      v23->_isSiriCompleted = [completedCopy BOOLValue];
    }

    else
    {
      v23->_hasIsSiriCompleted = 0;
      v23->_isSiriCompleted = 0;
    }

    if (interactionCopy)
    {
      v23->_hasIsPromptInteraction = 1;
      v23->_isPromptInteraction = [interactionCopy BOOLValue];
    }

    else
    {
      v23->_hasIsPromptInteraction = 0;
      v23->_isPromptInteraction = 0;
    }

    if (confirmInteractionCopy)
    {
      v23->_hasIsConfirmInteraction = 1;
      v23->_isConfirmInteraction = [confirmInteractionCopy BOOLValue];
    }

    else
    {
      v23->_hasIsConfirmInteraction = 0;
      v23->_isConfirmInteraction = 0;
    }

    if (disambiguateInteractionCopy)
    {
      v23->_hasIsDisambiguateInteraction = 1;
      v23->_isDisambiguateInteraction = [disambiguateInteractionCopy BOOLValue];
    }

    else
    {
      v23->_hasIsDisambiguateInteraction = 0;
      v23->_isDisambiguateInteraction = 0;
    }

    if (promptInteractionCopy)
    {
      v23->_hasIsUnsupportedPromptInteraction = 1;
      v23->_isUnsupportedPromptInteraction = [promptInteractionCopy BOOLValue];
    }

    else
    {
      v23->_hasIsUnsupportedPromptInteraction = 0;
      v23->_isUnsupportedPromptInteraction = 0;
    }
  }

  return v23;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskSuccess" number:1 type:4 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUserAbandoned" number:2 type:12 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUserCancelled" number:3 type:12 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSiriCompleted" number:4 type:12 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPromptInteraction" number:5 type:12 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isConfirmInteraction" number:6 type:12 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDisambiguateInteraction" number:7 type:12 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUnsupportedPromptInteraction" number:8 type:12 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskSuccess" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUserAbandoned" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUserCancelled" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSiriCompleted" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPromptInteraction" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isConfirmInteraction" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDisambiguateInteraction" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUnsupportedPromptInteraction" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMSiriPostSiriEngagementFeatures alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end