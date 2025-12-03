@interface BMSiriRemembersInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriRemembersInteraction)initWithIdentifier:(id)identifier type:(id)type domain:(id)domain appBundleId:(id)id status:(int)status direction:(int)direction isDonatedBySiri:(id)siri startDate:(id)self0 durationInSeconds:(id)self1 fields:(id)self2 groupIdentifier:(id)self3 appIntentInteractionIdentifier:(id)self4 interactionSource:(int)self5 contentHash:(id)self6 userDonatorType:(int)self7;
- (BMSiriRemembersInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)startDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriRemembersInteraction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMSiriRemembersInteraction *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMSiriRemembersInteraction *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_54;
      }
    }

    type = [(BMSiriRemembersInteraction *)self type];
    type2 = [v5 type];
    v15 = type2;
    if (type == type2)
    {
    }

    else
    {
      type3 = [(BMSiriRemembersInteraction *)self type];
      type4 = [v5 type];
      v18 = [type3 isEqual:type4];

      if (!v18)
      {
        goto LABEL_54;
      }
    }

    domain = [(BMSiriRemembersInteraction *)self domain];
    domain2 = [v5 domain];
    v21 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMSiriRemembersInteraction *)self domain];
      domain4 = [v5 domain];
      v24 = [domain3 isEqual:domain4];

      if (!v24)
      {
        goto LABEL_54;
      }
    }

    appBundleId = [(BMSiriRemembersInteraction *)self appBundleId];
    appBundleId2 = [v5 appBundleId];
    v27 = appBundleId2;
    if (appBundleId == appBundleId2)
    {
    }

    else
    {
      appBundleId3 = [(BMSiriRemembersInteraction *)self appBundleId];
      appBundleId4 = [v5 appBundleId];
      v30 = [appBundleId3 isEqual:appBundleId4];

      if (!v30)
      {
        goto LABEL_54;
      }
    }

    status = [(BMSiriRemembersInteraction *)self status];
    if (status != [v5 status])
    {
      goto LABEL_54;
    }

    direction = [(BMSiriRemembersInteraction *)self direction];
    if (direction != [v5 direction])
    {
      goto LABEL_54;
    }

    if (-[BMSiriRemembersInteraction hasIsDonatedBySiri](self, "hasIsDonatedBySiri") || [v5 hasIsDonatedBySiri])
    {
      if (![(BMSiriRemembersInteraction *)self hasIsDonatedBySiri])
      {
        goto LABEL_54;
      }

      if (![v5 hasIsDonatedBySiri])
      {
        goto LABEL_54;
      }

      isDonatedBySiri = [(BMSiriRemembersInteraction *)self isDonatedBySiri];
      if (isDonatedBySiri != [v5 isDonatedBySiri])
      {
        goto LABEL_54;
      }
    }

    startDate = [(BMSiriRemembersInteraction *)self startDate];
    startDate2 = [v5 startDate];
    v36 = startDate2;
    if (startDate == startDate2)
    {
    }

    else
    {
      startDate3 = [(BMSiriRemembersInteraction *)self startDate];
      startDate4 = [v5 startDate];
      v39 = [startDate3 isEqual:startDate4];

      if (!v39)
      {
        goto LABEL_54;
      }
    }

    if (-[BMSiriRemembersInteraction hasDurationInSeconds](self, "hasDurationInSeconds") || [v5 hasDurationInSeconds])
    {
      if (![(BMSiriRemembersInteraction *)self hasDurationInSeconds])
      {
        goto LABEL_54;
      }

      if (![v5 hasDurationInSeconds])
      {
        goto LABEL_54;
      }

      [(BMSiriRemembersInteraction *)self durationInSeconds];
      v41 = v40;
      [v5 durationInSeconds];
      if (v41 != v42)
      {
        goto LABEL_54;
      }
    }

    fields = [(BMSiriRemembersInteraction *)self fields];
    fields2 = [v5 fields];
    v45 = fields2;
    if (fields == fields2)
    {
    }

    else
    {
      fields3 = [(BMSiriRemembersInteraction *)self fields];
      fields4 = [v5 fields];
      v48 = [fields3 isEqual:fields4];

      if (!v48)
      {
        goto LABEL_54;
      }
    }

    groupIdentifier = [(BMSiriRemembersInteraction *)self groupIdentifier];
    groupIdentifier2 = [v5 groupIdentifier];
    v51 = groupIdentifier2;
    if (groupIdentifier == groupIdentifier2)
    {
    }

    else
    {
      groupIdentifier3 = [(BMSiriRemembersInteraction *)self groupIdentifier];
      groupIdentifier4 = [v5 groupIdentifier];
      v54 = [groupIdentifier3 isEqual:groupIdentifier4];

      if (!v54)
      {
        goto LABEL_54;
      }
    }

    appIntentInteractionIdentifier = [(BMSiriRemembersInteraction *)self appIntentInteractionIdentifier];
    appIntentInteractionIdentifier2 = [v5 appIntentInteractionIdentifier];
    v57 = appIntentInteractionIdentifier2;
    if (appIntentInteractionIdentifier == appIntentInteractionIdentifier2)
    {
    }

    else
    {
      appIntentInteractionIdentifier3 = [(BMSiriRemembersInteraction *)self appIntentInteractionIdentifier];
      appIntentInteractionIdentifier4 = [v5 appIntentInteractionIdentifier];
      v60 = [appIntentInteractionIdentifier3 isEqual:appIntentInteractionIdentifier4];

      if (!v60)
      {
        goto LABEL_54;
      }
    }

    interactionSource = [(BMSiriRemembersInteraction *)self interactionSource];
    if (interactionSource == [v5 interactionSource])
    {
      if (!-[BMSiriRemembersInteraction hasContentHash](self, "hasContentHash") && ![v5 hasContentHash] || -[BMSiriRemembersInteraction hasContentHash](self, "hasContentHash") && objc_msgSend(v5, "hasContentHash") && (v62 = -[BMSiriRemembersInteraction contentHash](self, "contentHash"), v62 == objc_msgSend(v5, "contentHash")))
      {
        userDonatorType = [(BMSiriRemembersInteraction *)self userDonatorType];
        v12 = userDonatorType == [v5 userDonatorType];
LABEL_55:

        goto LABEL_56;
      }
    }

LABEL_54:
    v12 = 0;
    goto LABEL_55;
  }

  v12 = 0;
LABEL_56:

  return v12;
}

- (NSDate)startDate
{
  if (self->_hasRaw_startDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startDate];
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
  v52[15] = *MEMORY[0x1E69E9840];
  identifier = [(BMSiriRemembersInteraction *)self identifier];
  type = [(BMSiriRemembersInteraction *)self type];
  domain = [(BMSiriRemembersInteraction *)self domain];
  appBundleId = [(BMSiriRemembersInteraction *)self appBundleId];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRemembersInteraction status](self, "status")}];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRemembersInteraction direction](self, "direction")}];
  if ([(BMSiriRemembersInteraction *)self hasIsDonatedBySiri])
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRemembersInteraction isDonatedBySiri](self, "isDonatedBySiri")}];
  }

  else
  {
    v47 = 0;
  }

  startDate = [(BMSiriRemembersInteraction *)self startDate];
  if (startDate)
  {
    v7 = MEMORY[0x1E696AD98];
    startDate2 = [(BMSiriRemembersInteraction *)self startDate];
    [startDate2 timeIntervalSince1970];
    v46 = [v7 numberWithDouble:?];
  }

  else
  {
    v46 = 0;
  }

  if (![(BMSiriRemembersInteraction *)self hasDurationInSeconds]|| ([(BMSiriRemembersInteraction *)self durationInSeconds], fabs(v9) == INFINITY))
  {
    v45 = 0;
  }

  else
  {
    [(BMSiriRemembersInteraction *)self durationInSeconds];
    v10 = MEMORY[0x1E696AD98];
    [(BMSiriRemembersInteraction *)self durationInSeconds];
    v45 = [v10 numberWithDouble:?];
  }

  fields = [(BMSiriRemembersInteraction *)self fields];
  groupIdentifier = [(BMSiriRemembersInteraction *)self groupIdentifier];
  appIntentInteractionIdentifier = [(BMSiriRemembersInteraction *)self appIntentInteractionIdentifier];
  v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRemembersInteraction interactionSource](self, "interactionSource")}];
  if ([(BMSiriRemembersInteraction *)self hasContentHash])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriRemembersInteraction contentHash](self, "contentHash")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRemembersInteraction userDonatorType](self, "userDonatorType")}];
  v51[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null;
  v52[0] = null;
  v51[1] = @"type";
  null2 = type;
  if (!type)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null2;
  v52[1] = null2;
  v51[2] = @"domain";
  null3 = domain;
  if (!domain)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null3;
  v52[2] = null3;
  v51[3] = @"appBundleId";
  null4 = appBundleId;
  if (!appBundleId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v52[3] = null4;
  v51[4] = @"status";
  null5 = v49;
  if (!v49)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v52[4] = null5;
  v51[5] = @"direction";
  null6 = v48;
  if (!v48)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = type;
  v52[5] = null6;
  v51[6] = @"isDonatedBySiri";
  null7 = v47;
  if (!v47)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = domain;
  v30 = null7;
  v52[6] = null7;
  v51[7] = @"startDate";
  null8 = v46;
  if (!v46)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = identifier;
  v52[7] = null8;
  v51[8] = @"durationInSeconds";
  null9 = v45;
  if (!v45)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null4;
  v52[8] = null9;
  v51[9] = @"fields";
  null10 = fields;
  if (!fields)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null5;
  v52[9] = null10;
  v51[10] = @"groupIdentifier";
  null11 = groupIdentifier;
  if (!groupIdentifier)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null6;
  v52[10] = null11;
  v51[11] = @"appIntentInteractionIdentifier";
  null12 = appIntentInteractionIdentifier;
  if (!appIntentInteractionIdentifier)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v52[11] = null12;
  v51[12] = @"interactionSource";
  null13 = v41;
  if (!v41)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v52[12] = null13;
  v51[13] = @"contentHash";
  null14 = v11;
  if (!v11)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v52[13] = null14;
  v51[14] = @"userDonatorType";
  null15 = v12;
  if (!v12)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v52[14] = null15;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:15];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_46;
    }
  }

LABEL_46:
  if (!v41)
  {
  }

  if (!appIntentInteractionIdentifier)
  {
  }

  if (!groupIdentifier)
  {
  }

  if (!fields)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (!v47)
  {
  }

  if (!v48)
  {
  }

  if (!v49)
  {
  }

  if (appBundleId)
  {
    if (v38)
    {
      goto LABEL_66;
    }
  }

  else
  {

    if (v38)
    {
LABEL_66:
      if (v39)
      {
        goto LABEL_67;
      }

LABEL_75:

      if (v40)
      {
        goto LABEL_68;
      }

      goto LABEL_76;
    }
  }

  if (!v39)
  {
    goto LABEL_75;
  }

LABEL_67:
  if (v40)
  {
    goto LABEL_68;
  }

LABEL_76:

LABEL_68:
  v28 = *MEMORY[0x1E69E9840];

  return v37;
}

- (BMSiriRemembersInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v181[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v148 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v148 = v8;
LABEL_7:
      v9 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
      v149 = v7;
      v150 = v9;
      if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v146 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v146 = v10;
LABEL_10:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"appBundleId"];
        v147 = v11;
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v12 = 0;
LABEL_13:
          v13 = [dictionaryCopy objectForKeyedSubscript:@"status"];
          v144 = v12;
          v140 = v13;
          if (v13 && (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v145 = v14;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v145 = 0;
                  v39 = 0;
                  v37 = v148;
                  v43 = v146;
                  goto LABEL_130;
                }

                v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                v84 = *MEMORY[0x1E698F240];
                v172 = *MEMORY[0x1E696A578];
                v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
                v173 = v143;
                v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
                v85 = [v83 initWithDomain:v84 code:2 userInfo:?];
                v145 = 0;
                v39 = 0;
                *error = v85;
                v11 = v147;
                v37 = v148;
                v43 = v146;
                goto LABEL_129;
              }

              v145 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriRemembersInteractionInteractionStatusFromString(v14)];
            }
          }

          else
          {
            v145 = 0;
          }

          v15 = [dictionaryCopy objectForKeyedSubscript:@"direction"];
          v141 = v15;
          v138 = v8;
          if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v143 = v16;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v143 = 0;
                  v39 = 0;
                  v37 = v148;
                  v43 = v146;
                  v14 = v140;
                  goto LABEL_129;
                }

                v91 = objc_alloc(MEMORY[0x1E696ABC0]);
                v92 = *MEMORY[0x1E698F240];
                v170 = *MEMORY[0x1E696A578];
                v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"direction"];
                v171 = v142;
                v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
                v93 = [v91 initWithDomain:v92 code:2 userInfo:v17];
                v143 = 0;
                v39 = 0;
                *error = v93;
                v11 = v147;
                v37 = v148;
                v43 = v146;
                goto LABEL_115;
              }

              v143 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriRemembersInteractionInteractionDirectionFromString(v16)];
            }
          }

          else
          {
            v143 = 0;
          }

          v17 = [dictionaryCopy objectForKeyedSubscript:@"isDonatedBySiri"];
          if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v134 = v17;
            v142 = 0;
LABEL_22:
            v18 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
            v133 = v18;
            if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = MEMORY[0x1E695DF00];
                v48 = v19;
                v49 = [v47 alloc];
                [v48 doubleValue];
                v51 = v50;

                v11 = v147;
                v139 = [v49 initWithTimeIntervalSince1970:v51];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v69 = objc_alloc_init(MEMORY[0x1E696AC80]);
                  v139 = [v69 dateFromString:v19];
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!error)
                    {
                      v139 = 0;
                      v39 = 0;
                      v37 = v148;
                      v43 = v146;
                      v14 = v140;
                      v68 = v133;
                      v17 = v134;
                      goto LABEL_127;
                    }

                    v109 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v110 = *MEMORY[0x1E698F240];
                    v166 = *MEMORY[0x1E696A578];
                    v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
                    v167 = v137;
                    v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
                    v112 = v109;
                    v11 = v147;
                    v135 = v111;
                    v113 = [v112 initWithDomain:v110 code:2 userInfo:?];
                    v139 = 0;
                    v39 = 0;
                    *error = v113;
                    v68 = v133;
                    v37 = v148;
                    v43 = v146;
                    v14 = v140;
                    v17 = v134;
                    goto LABEL_126;
                  }

                  v139 = v19;
                }
              }
            }

            else
            {
              v139 = 0;
            }

            v20 = [dictionaryCopy objectForKeyedSubscript:@"durationInSeconds"];
            v135 = v20;
            if (v20 && (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v137 = 0;
                  v39 = 0;
                  v37 = v148;
                  v43 = v146;
                  v14 = v140;
                  v68 = v133;
                  v17 = v134;
                  goto LABEL_126;
                }

                v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                v71 = *MEMORY[0x1E698F240];
                v164 = *MEMORY[0x1E696A578];
                v72 = objc_alloc(MEMORY[0x1E696AEC0]);
                v122 = objc_opt_class();
                v73 = v72;
                v12 = v144;
                v136 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v122, @"durationInSeconds"];
                v165 = v136;
                v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
                v75 = v70;
                v11 = v147;
                v132 = v74;
                v76 = [v75 initWithDomain:v71 code:2 userInfo:?];
                v137 = 0;
                v39 = 0;
                *error = v76;
                v37 = v148;
                v43 = v146;
                goto LABEL_137;
              }

              v137 = v21;
            }

            else
            {
              v137 = 0;
            }

            v22 = [dictionaryCopy objectForKeyedSubscript:@"fields"];
            v132 = v22;
            if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v136 = 0;
              goto LABEL_31;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v136 = v23;
LABEL_31:
              v24 = [dictionaryCopy objectForKeyedSubscript:@"groupIdentifier"];
              v129 = v24;
              if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v131 = 0;
                goto LABEL_34;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v131 = v25;
LABEL_34:
                v26 = [dictionaryCopy objectForKeyedSubscript:@"appIntentInteractionIdentifier"];
                v128 = v26;
                if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v130 = 0;
                  goto LABEL_37;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v130 = v27;
LABEL_37:
                  v28 = [dictionaryCopy objectForKeyedSubscript:@"interactionSource"];
                  v126 = v28;
                  if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v30 = 0;
LABEL_40:
                    v31 = [dictionaryCopy objectForKeyedSubscript:@"contentHash"];
                    v125 = v30;
                    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!error)
                        {
                          v127 = 0;
                          v39 = 0;
                          v37 = v148;
                          goto LABEL_121;
                        }

                        v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v100 = *MEMORY[0x1E698F240];
                        v154 = *MEMORY[0x1E696A578];
                        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contentHash"];
                        v155 = v34;
                        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
                        v101 = v100;
                        v12 = v144;
                        v102 = [v99 initWithDomain:v101 code:2 userInfo:v32];
                        v127 = 0;
                        v39 = 0;
                        *error = v102;
                        goto LABEL_151;
                      }

                      v127 = v31;
                    }

                    else
                    {
                      v127 = 0;
                    }

                    v32 = [dictionaryCopy objectForKeyedSubscript:@"userDonatorType"];
                    if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      selfCopy3 = self;
                      v34 = 0;
LABEL_119:
                      intValue = [v145 intValue];
                      intValue2 = [v143 intValue];
                      intValue3 = [v30 intValue];
                      LODWORD(v124) = [v34 intValue];
                      LODWORD(v123) = intValue3;
                      v106 = selfCopy3;
                      v37 = v148;
                      v12 = v144;
                      v39 = [(BMSiriRemembersInteraction *)v106 initWithIdentifier:v149 type:v148 domain:v146 appBundleId:v144 status:intValue direction:intValue2 isDonatedBySiri:v142 startDate:v139 durationInSeconds:v137 fields:v136 groupIdentifier:v131 appIntentInteractionIdentifier:v130 interactionSource:v123 contentHash:v127 userDonatorType:v124, v30];
                      self = v39;
LABEL_120:

LABEL_121:
                      v14 = v140;
                      v68 = v133;
                      v17 = v134;

                      v11 = v147;
LABEL_122:

                      v43 = v146;
LABEL_123:

LABEL_124:
LABEL_125:

LABEL_126:
                      goto LABEL_127;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      selfCopy3 = self;
                      v82 = v32;
LABEL_118:
                      v34 = v82;
                      goto LABEL_119;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      selfCopy3 = self;
                      v82 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriRemembersInteractionUserDonatorTypeFromString(v32)];
                      goto LABEL_118;
                    }

                    if (error)
                    {
                      v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v118 = *MEMORY[0x1E698F240];
                      v152 = *MEMORY[0x1E696A578];
                      v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userDonatorType"];
                      v153 = v119;
                      v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
                      *error = [v117 initWithDomain:v118 code:2 userInfo:v120];
                    }

                    v34 = 0;
                    v39 = 0;
LABEL_151:
                    v37 = v148;
                    goto LABEL_120;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v30 = v29;
                    goto LABEL_40;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v30 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriRemembersInteractionInteractionSourceFromString(v29)];
                    goto LABEL_40;
                  }

                  if (error)
                  {
                    v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v115 = *MEMORY[0x1E698F240];
                    v156 = *MEMORY[0x1E696A578];
                    v127 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interactionSource"];
                    v157 = v127;
                    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
                    v116 = [v114 initWithDomain:v115 code:2 userInfo:v31];
                    v125 = 0;
                    v39 = 0;
                    *error = v116;
                    v37 = v148;
                    goto LABEL_121;
                  }

                  v125 = 0;
                  v39 = 0;
                  v11 = v147;
                  v37 = v148;
LABEL_155:
                  v14 = v140;
                  v68 = v133;
                  v17 = v134;
                  goto LABEL_122;
                }

                if (error)
                {
                  v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v95 = *MEMORY[0x1E698F240];
                  v158 = *MEMORY[0x1E696A578];
                  v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appIntentInteractionIdentifier"];
                  v159 = v125;
                  v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
                  v97 = v94;
                  v11 = v147;
                  v126 = v96;
                  v98 = [v97 initWithDomain:v95 code:2 userInfo:?];
                  v130 = 0;
                  v39 = 0;
                  *error = v98;
                  v37 = v148;
                  goto LABEL_155;
                }

                v130 = 0;
                v39 = 0;
LABEL_147:
                v37 = v148;
                v43 = v146;
                v14 = v140;
                v68 = v133;
                v17 = v134;
                goto LABEL_123;
              }

              if (error)
              {
                v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                v87 = *MEMORY[0x1E698F240];
                v160 = *MEMORY[0x1E696A578];
                v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupIdentifier"];
                v161 = v130;
                v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
                v89 = v86;
                v11 = v147;
                v128 = v88;
                v90 = [v89 initWithDomain:v87 code:2 userInfo:?];
                v131 = 0;
                v39 = 0;
                *error = v90;
                goto LABEL_147;
              }

              v131 = 0;
              v39 = 0;
LABEL_140:
              v37 = v148;
              v43 = v146;
              v14 = v140;
              v68 = v133;
              v17 = v134;
              goto LABEL_124;
            }

            if (error)
            {
              v77 = objc_alloc(MEMORY[0x1E696ABC0]);
              v78 = *MEMORY[0x1E698F240];
              v162 = *MEMORY[0x1E696A578];
              v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fields"];
              v163 = v131;
              v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
              v80 = v77;
              v11 = v147;
              v129 = v79;
              v81 = [v80 initWithDomain:v78 code:2 userInfo:?];
              v136 = 0;
              v39 = 0;
              *error = v81;
              goto LABEL_140;
            }

            v136 = 0;
            v39 = 0;
            v37 = v148;
            v43 = v146;
LABEL_137:
            v14 = v140;
            v68 = v133;
            v17 = v134;
            goto LABEL_125;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v134 = v17;
            v142 = v17;
            goto LABEL_22;
          }

          if (error)
          {
            v61 = objc_alloc(MEMORY[0x1E696ABC0]);
            v62 = *MEMORY[0x1E698F240];
            v168 = *MEMORY[0x1E696A578];
            v63 = objc_alloc(MEMORY[0x1E696AEC0]);
            v121 = objc_opt_class();
            v64 = v63;
            v12 = v144;
            v139 = [v64 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v121, @"isDonatedBySiri"];
            v169 = v139;
            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
            v66 = v61;
            v11 = v147;
            v67 = [v66 initWithDomain:v62 code:2 userInfo:v65];
            v142 = 0;
            v39 = 0;
            *error = v67;
            v68 = v65;
            v37 = v148;
            v43 = v146;
            v14 = v140;
LABEL_127:

            goto LABEL_128;
          }

          v142 = 0;
          v39 = 0;
          v37 = v148;
          v43 = v146;
LABEL_115:
          v14 = v140;
LABEL_128:

          v8 = v138;
LABEL_129:

          goto LABEL_130;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          goto LABEL_13;
        }

        if (error)
        {
          v57 = objc_alloc(MEMORY[0x1E696ABC0]);
          v58 = *MEMORY[0x1E698F240];
          v174 = *MEMORY[0x1E696A578];
          v145 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appBundleId"];
          v175 = v145;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
          v59 = v57;
          v11 = v147;
          v60 = [v59 initWithDomain:v58 code:2 userInfo:v14];
          v12 = 0;
          v39 = 0;
          *error = v60;
          v37 = v148;
          v43 = v146;
LABEL_130:

          goto LABEL_131;
        }

        v12 = 0;
        v39 = 0;
        v37 = v148;
        v43 = v146;
LABEL_131:

        v7 = v149;
        goto LABEL_132;
      }

      if (error)
      {
        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = *MEMORY[0x1E698F240];
        v176 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
        v177 = v12;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
        v55 = v52;
        v11 = v54;
        v56 = [v55 initWithDomain:v53 code:2 userInfo:v54];
        v43 = 0;
        v39 = 0;
        *error = v56;
        v37 = v148;
        goto LABEL_131;
      }

      v43 = 0;
      v39 = 0;
      v37 = v148;
LABEL_132:

      goto LABEL_133;
    }

    if (error)
    {
      v40 = v7;
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = *MEMORY[0x1E698F240];
      v178 = *MEMORY[0x1E696A578];
      v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"type"];
      v179 = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
      v45 = v41;
      v7 = v40;
      v150 = v44;
      v46 = [v45 initWithDomain:v42 code:2 userInfo:?];
      v37 = 0;
      v39 = 0;
      *error = v46;
      goto LABEL_132;
    }

    v37 = 0;
    v39 = 0;
LABEL_133:

    goto LABEL_134;
  }

  if (error)
  {
    v35 = objc_alloc(MEMORY[0x1E696ABC0]);
    v36 = *MEMORY[0x1E698F240];
    v180 = *MEMORY[0x1E696A578];
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v181[0] = v37;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v181 forKeys:&v180 count:1];
    v38 = [v35 initWithDomain:v36 code:2 userInfo:v8];
    v7 = 0;
    v39 = 0;
    *error = v38;
    goto LABEL_133;
  }

  v7 = 0;
  v39 = 0;
LABEL_134:

  v107 = *MEMORY[0x1E69E9840];
  return v39;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRemembersInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appBundleId)
  {
    PBDataWriterWriteStringField();
  }

  status = self->_status;
  PBDataWriterWriteUint32Field();
  direction = self->_direction;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsDonatedBySiri)
  {
    isDonatedBySiri = self->_isDonatedBySiri;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_startDate)
  {
    raw_startDate = self->_raw_startDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasDurationInSeconds)
  {
    durationInSeconds = self->_durationInSeconds;
    PBDataWriterWriteDoubleField();
  }

  if (self->_fields)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appIntentInteractionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  interactionSource = self->_interactionSource;
  PBDataWriterWriteUint32Field();
  if (self->_hasContentHash)
  {
    contentHash = self->_contentHash;
    PBDataWriterWriteInt64Field();
  }

  userDonatorType = self->_userDonatorType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v66.receiver = self;
  v66.super_class = BMSiriRemembersInteraction;
  v5 = [(BMEventBase *)&v66 init];
  if (!v5)
  {
    goto LABEL_120;
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
        LOBYTE(v67) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v67 & 0x7F) << v7;
        if ((v67 & 0x80) == 0)
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
          v15 = PBReaderReadString();
          v16 = 56;
          goto LABEL_85;
        case 2u:
          v15 = PBReaderReadString();
          v16 = 64;
          goto LABEL_85;
        case 3u:
          v15 = PBReaderReadString();
          v16 = 72;
          goto LABEL_85;
        case 4u:
          v15 = PBReaderReadString();
          v16 = 80;
          goto LABEL_85;
        case 5u:
          v50 = 0;
          v51 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v67) = 0;
            v52 = [fromCopy position] + 1;
            if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v26 |= (v67 & 0x7F) << v50;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v30 = v51++ > 8;
            if (v30)
            {
              goto LABEL_109;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v26 > 7)
          {
LABEL_109:
            LODWORD(v26) = 0;
          }

          v58 = 40;
          goto LABEL_111;
        case 6u:
          v31 = 0;
          v32 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v67) = 0;
            v33 = [fromCopy position] + 1;
            if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v26 |= (v67 & 0x7F) << v31;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v30 = v32++ > 8;
            if (v30)
            {
              goto LABEL_99;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v26 > 3)
          {
LABEL_99:
            LODWORD(v26) = 0;
          }

          v58 = 44;
          goto LABEL_111;
        case 7u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v5->_hasIsDonatedBySiri = 1;
          while (1)
          {
            LOBYTE(v67) = 0;
            v39 = [fromCopy position] + 1;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v38 |= (v67 & 0x7F) << v36;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v13 = v37++ >= 9;
            if (v13)
            {
              LOBYTE(v42) = 0;
              goto LABEL_102;
            }
          }

          v42 = (v38 != 0) & ~[fromCopy hasError];
LABEL_102:
          v5->_isDonatedBySiri = v42;
          goto LABEL_117;
        case 8u:
          v5->_hasRaw_startDate = 1;
          v67 = 0;
          v43 = [fromCopy position] + 8;
          if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 8, v44 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v60 = v67;
          v61 = 24;
          goto LABEL_116;
        case 9u:
          v5->_hasDurationInSeconds = 1;
          v67 = 0;
          v56 = [fromCopy position] + 8;
          if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 8, v57 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v60 = v67;
          v61 = 88;
LABEL_116:
          *(&v5->super.super.isa + v61) = v60;
          goto LABEL_117;
        case 0xBu:
          v15 = PBReaderReadString();
          v16 = 96;
          goto LABEL_85;
        case 0xCu:
          v15 = PBReaderReadString();
          v16 = 104;
          goto LABEL_85;
        case 0xDu:
          v15 = PBReaderReadString();
          v16 = 112;
LABEL_85:
          v55 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          goto LABEL_117;
        case 0xEu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v67) = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v26 |= (v67 & 0x7F) << v24;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v30 = v25++ > 8;
            if (v30)
            {
              goto LABEL_95;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v26 > 2)
          {
LABEL_95:
            LODWORD(v26) = 0;
          }

          v58 = 48;
          goto LABEL_111;
        case 0xFu:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v5->_hasContentHash = 1;
          while (1)
          {
            LOBYTE(v67) = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v67 & 0x7F) << v17;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v13 = v18++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_92;
            }
          }

          if ([fromCopy hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_92:
          v5->_contentHash = v23;
          goto LABEL_117;
        case 0x10u:
          v45 = 0;
          v46 = 0;
          v26 = 0;
          break;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_119;
          }

          goto LABEL_117;
      }

      while (1)
      {
        LOBYTE(v67) = 0;
        v47 = [fromCopy position] + 1;
        if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
        {
          data9 = [fromCopy data];
          [data9 getBytes:&v67 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v26 |= (v67 & 0x7F) << v45;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v45 += 7;
        v30 = v46++ > 8;
        if (v30)
        {
          goto LABEL_105;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v26 > 3)
      {
LABEL_105:
        LODWORD(v26) = 0;
      }

      v58 = 52;
LABEL_111:
      *(&v5->super.super.isa + v58) = v26;
LABEL_117:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_119:
    v64 = 0;
  }

  else
  {
LABEL_120:
    v64 = v5;
  }

  return v64;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMSiriRemembersInteraction *)self identifier];
  type = [(BMSiriRemembersInteraction *)self type];
  domain = [(BMSiriRemembersInteraction *)self domain];
  appBundleId = [(BMSiriRemembersInteraction *)self appBundleId];
  v14 = BMSiriRemembersInteractionInteractionStatusAsString([(BMSiriRemembersInteraction *)self status]);
  v19 = BMSiriRemembersInteractionInteractionDirectionAsString([(BMSiriRemembersInteraction *)self direction]);
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriRemembersInteraction isDonatedBySiri](self, "isDonatedBySiri")}];
  startDate = [(BMSiriRemembersInteraction *)self startDate];
  v3 = MEMORY[0x1E696AD98];
  [(BMSiriRemembersInteraction *)self durationInSeconds];
  v11 = [v3 numberWithDouble:?];
  fields = [(BMSiriRemembersInteraction *)self fields];
  groupIdentifier = [(BMSiriRemembersInteraction *)self groupIdentifier];
  appIntentInteractionIdentifier = [(BMSiriRemembersInteraction *)self appIntentInteractionIdentifier];
  v7 = BMSiriRemembersInteractionInteractionSourceAsString([(BMSiriRemembersInteraction *)self interactionSource]);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMSiriRemembersInteraction contentHash](self, "contentHash")}];
  v9 = BMSiriRemembersInteractionUserDonatorTypeAsString([(BMSiriRemembersInteraction *)self userDonatorType]);
  v18 = [v17 initWithFormat:@"BMSiriRemembersInteraction with identifier: %@, type: %@, domain: %@, appBundleId: %@, status: %@, direction: %@, isDonatedBySiri: %@, startDate: %@, durationInSeconds: %@, fields: %@, groupIdentifier: %@, appIntentInteractionIdentifier: %@, interactionSource: %@, contentHash: %@, userDonatorType: %@", identifier, type, domain, appBundleId, v14, v19, v12, startDate, v11, fields, groupIdentifier, appIntentInteractionIdentifier, v7, v8, v9];

  return v18;
}

- (BMSiriRemembersInteraction)initWithIdentifier:(id)identifier type:(id)type domain:(id)domain appBundleId:(id)id status:(int)status direction:(int)direction isDonatedBySiri:(id)siri startDate:(id)self0 durationInSeconds:(id)self1 fields:(id)self2 groupIdentifier:(id)self3 appIntentInteractionIdentifier:(id)self4 interactionSource:(int)self5 contentHash:(id)self6 userDonatorType:(int)self7
{
  identifierCopy = identifier;
  typeCopy = type;
  typeCopy2 = type;
  domainCopy = domain;
  idCopy = id;
  siriCopy = siri;
  dateCopy = date;
  secondsCopy = seconds;
  fieldsCopy = fields;
  groupIdentifierCopy = groupIdentifier;
  interactionIdentifierCopy = interactionIdentifier;
  hashCopy = hash;
  v41.receiver = self;
  v41.super_class = BMSiriRemembersInteraction;
  v26 = [(BMEventBase *)&v41 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v26->_identifier, identifier);
    objc_storeStrong(&v26->_type, typeCopy);
    objc_storeStrong(&v26->_domain, domain);
    objc_storeStrong(&v26->_appBundleId, id);
    v26->_status = status;
    v26->_direction = direction;
    if (siriCopy)
    {
      v26->_hasIsDonatedBySiri = 1;
      v26->_isDonatedBySiri = [siriCopy BOOLValue];
    }

    else
    {
      v26->_hasIsDonatedBySiri = 0;
      v26->_isDonatedBySiri = 0;
    }

    if (dateCopy)
    {
      v26->_hasRaw_startDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v26->_hasRaw_startDate = 0;
      v27 = -1.0;
    }

    v26->_raw_startDate = v27;
    if (secondsCopy)
    {
      v26->_hasDurationInSeconds = 1;
      [secondsCopy doubleValue];
    }

    else
    {
      v26->_hasDurationInSeconds = 0;
      v28 = -1.0;
    }

    v26->_durationInSeconds = v28;
    objc_storeStrong(&v26->_fields, fields);
    objc_storeStrong(&v26->_groupIdentifier, groupIdentifier);
    objc_storeStrong(&v26->_appIntentInteractionIdentifier, interactionIdentifier);
    v26->_interactionSource = source;
    if (hashCopy)
    {
      v26->_hasContentHash = 1;
      longLongValue = [hashCopy longLongValue];
    }

    else
    {
      v26->_hasContentHash = 0;
      longLongValue = -1;
    }

    v26->_contentHash = longLongValue;
    v26->_userDonatorType = donatorType;
  }

  return v26;
}

+ (id)protoFields
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v21[0] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:2 type:13 subMessageClass:0];
  v21[1] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:3 type:13 subMessageClass:0];
  v21[2] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appBundleId" number:4 type:13 subMessageClass:0];
  v21[3] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"status" number:5 type:4 subMessageClass:0];
  v21[4] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"direction" number:6 type:4 subMessageClass:0];
  v21[5] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDonatedBySiri" number:7 type:12 subMessageClass:0];
  v21[6] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:8 type:0 subMessageClass:0];
  v21[7] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"durationInSeconds" number:9 type:0 subMessageClass:0];
  v21[8] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionFields" number:10 type:14 subMessageClass:objc_opt_class()];
  v21[9] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fields" number:11 type:13 subMessageClass:0];
  v21[10] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupIdentifier" number:12 type:13 subMessageClass:0];
  v21[11] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appIntentInteractionIdentifier" number:13 type:13 subMessageClass:0];
  v21[12] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionSource" number:14 type:4 subMessageClass:0];
  v21[13] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentHash" number:15 type:3 subMessageClass:0];
  v21[14] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userDonatorType" number:16 type:4 subMessageClass:0];
  v21[15] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:16];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appBundleId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"status" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"direction" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDonatedBySiri" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"durationInSeconds" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"interactionFields_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_133];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fields" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupIdentifier" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appIntentInteractionIdentifier" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionSource" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentHash" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:3 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userDonatorType" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v21[0] = v20;
  v21[1] = v19;
  v21[2] = v18;
  v21[3] = v17;
  v21[4] = v16;
  v21[5] = v15;
  v21[6] = v2;
  v21[7] = v3;
  v21[8] = v4;
  v21[9] = v5;
  v21[10] = v14;
  v21[11] = v6;
  v21[12] = v7;
  v21[13] = v13;
  v21[14] = v8;
  v21[15] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:16];

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

    v8 = [[BMSiriRemembersInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end