@interface BMTextUnderstandingPoemAnalytics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextUnderstandingPoemAnalytics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMTextUnderstandingPoemAnalytics)initWithVisualIdentifier:(id)identifier prediction:(id)prediction named:(id)named shadowMatch:(id)match threshold:(id)threshold predictionConfidence:(id)confidence onboarding:(id)onboarding nameMegadomeIdentifier:(id)self0 nameSource:(int)self1 features:(id)self2 accepted:(id)self3 rejected:(id)self4;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextUnderstandingPoemAnalytics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    visualIdentifier = [(BMTextUnderstandingPoemAnalytics *)self visualIdentifier];
    visualIdentifier2 = [v5 visualIdentifier];
    v8 = visualIdentifier2;
    if (visualIdentifier == visualIdentifier2)
    {
    }

    else
    {
      visualIdentifier3 = [(BMTextUnderstandingPoemAnalytics *)self visualIdentifier];
      visualIdentifier4 = [v5 visualIdentifier];
      v11 = [visualIdentifier3 isEqual:visualIdentifier4];

      if (!v11)
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasPrediction](self, "hasPrediction") || [v5 hasPrediction])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasPrediction])
      {
        goto LABEL_56;
      }

      if (![v5 hasPrediction])
      {
        goto LABEL_56;
      }

      prediction = [(BMTextUnderstandingPoemAnalytics *)self prediction];
      if (prediction != [v5 prediction])
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasNamed](self, "hasNamed") || [v5 hasNamed])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasNamed])
      {
        goto LABEL_56;
      }

      if (![v5 hasNamed])
      {
        goto LABEL_56;
      }

      named = [(BMTextUnderstandingPoemAnalytics *)self named];
      if (named != [v5 named])
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasShadowMatch](self, "hasShadowMatch") || [v5 hasShadowMatch])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasShadowMatch])
      {
        goto LABEL_56;
      }

      if (![v5 hasShadowMatch])
      {
        goto LABEL_56;
      }

      shadowMatch = [(BMTextUnderstandingPoemAnalytics *)self shadowMatch];
      if (shadowMatch != [v5 shadowMatch])
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasThreshold](self, "hasThreshold") || [v5 hasThreshold])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasThreshold])
      {
        goto LABEL_56;
      }

      if (![v5 hasThreshold])
      {
        goto LABEL_56;
      }

      [(BMTextUnderstandingPoemAnalytics *)self threshold];
      v17 = v16;
      [v5 threshold];
      if (v17 != v18)
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasPredictionConfidence](self, "hasPredictionConfidence") || [v5 hasPredictionConfidence])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasPredictionConfidence])
      {
        goto LABEL_56;
      }

      if (![v5 hasPredictionConfidence])
      {
        goto LABEL_56;
      }

      [(BMTextUnderstandingPoemAnalytics *)self predictionConfidence];
      v20 = v19;
      [v5 predictionConfidence];
      if (v20 != v21)
      {
        goto LABEL_56;
      }
    }

    if (-[BMTextUnderstandingPoemAnalytics hasOnboarding](self, "hasOnboarding") || [v5 hasOnboarding])
    {
      if (![(BMTextUnderstandingPoemAnalytics *)self hasOnboarding])
      {
        goto LABEL_56;
      }

      if (![v5 hasOnboarding])
      {
        goto LABEL_56;
      }

      onboarding = [(BMTextUnderstandingPoemAnalytics *)self onboarding];
      if (onboarding != [v5 onboarding])
      {
        goto LABEL_56;
      }
    }

    nameMegadomeIdentifier = [(BMTextUnderstandingPoemAnalytics *)self nameMegadomeIdentifier];
    nameMegadomeIdentifier2 = [v5 nameMegadomeIdentifier];
    v25 = nameMegadomeIdentifier2;
    if (nameMegadomeIdentifier == nameMegadomeIdentifier2)
    {
    }

    else
    {
      nameMegadomeIdentifier3 = [(BMTextUnderstandingPoemAnalytics *)self nameMegadomeIdentifier];
      nameMegadomeIdentifier4 = [v5 nameMegadomeIdentifier];
      v28 = [nameMegadomeIdentifier3 isEqual:nameMegadomeIdentifier4];

      if (!v28)
      {
        goto LABEL_56;
      }
    }

    nameSource = [(BMTextUnderstandingPoemAnalytics *)self nameSource];
    if (nameSource == [v5 nameSource])
    {
      features = [(BMTextUnderstandingPoemAnalytics *)self features];
      features2 = [v5 features];
      v32 = features2;
      if (features == features2)
      {
      }

      else
      {
        features3 = [(BMTextUnderstandingPoemAnalytics *)self features];
        features4 = [v5 features];
        v35 = [features3 isEqual:features4];

        if (!v35)
        {
          goto LABEL_56;
        }
      }

      if (!-[BMTextUnderstandingPoemAnalytics hasAccepted](self, "hasAccepted") && ![v5 hasAccepted] || -[BMTextUnderstandingPoemAnalytics hasAccepted](self, "hasAccepted") && objc_msgSend(v5, "hasAccepted") && (v36 = -[BMTextUnderstandingPoemAnalytics accepted](self, "accepted"), v36 == objc_msgSend(v5, "accepted")))
      {
        if (!-[BMTextUnderstandingPoemAnalytics hasRejected](self, "hasRejected") && ![v5 hasRejected])
        {
          LOBYTE(v12) = 1;
          goto LABEL_57;
        }

        if (-[BMTextUnderstandingPoemAnalytics hasRejected](self, "hasRejected") && [v5 hasRejected])
        {
          rejected = [(BMTextUnderstandingPoemAnalytics *)self rejected];
          v12 = rejected ^ [v5 rejected] ^ 1;
LABEL_57:

          goto LABEL_58;
        }
      }
    }

LABEL_56:
    LOBYTE(v12) = 0;
    goto LABEL_57;
  }

  LOBYTE(v12) = 0;
LABEL_58:

  return v12;
}

- (id)jsonDictionary
{
  v46[12] = *MEMORY[0x1E69E9840];
  visualIdentifier = [(BMTextUnderstandingPoemAnalytics *)self visualIdentifier];
  if ([(BMTextUnderstandingPoemAnalytics *)self hasPrediction])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics prediction](self, "prediction")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalytics *)self hasNamed])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics named](self, "named")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalytics *)self hasShadowMatch])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics shadowMatch](self, "shadowMatch")}];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMTextUnderstandingPoemAnalytics *)self hasThreshold]|| ([(BMTextUnderstandingPoemAnalytics *)self threshold], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMTextUnderstandingPoemAnalytics *)self threshold];
    v8 = MEMORY[0x1E696AD98];
    [(BMTextUnderstandingPoemAnalytics *)self threshold];
    v9 = [v8 numberWithDouble:?];
  }

  if (![(BMTextUnderstandingPoemAnalytics *)self hasPredictionConfidence]|| ([(BMTextUnderstandingPoemAnalytics *)self predictionConfidence], fabs(v10) == INFINITY))
  {
    v44 = 0;
  }

  else
  {
    [(BMTextUnderstandingPoemAnalytics *)self predictionConfidence];
    v11 = MEMORY[0x1E696AD98];
    [(BMTextUnderstandingPoemAnalytics *)self predictionConfidence];
    v44 = [v11 numberWithDouble:?];
  }

  if ([(BMTextUnderstandingPoemAnalytics *)self hasOnboarding])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics onboarding](self, "onboarding")}];
  }

  else
  {
    v43 = 0;
  }

  nameMegadomeIdentifier = [(BMTextUnderstandingPoemAnalytics *)self nameMegadomeIdentifier];
  v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTextUnderstandingPoemAnalytics nameSource](self, "nameSource")}];
  features = [(BMTextUnderstandingPoemAnalytics *)self features];
  jsonDictionary = [features jsonDictionary];

  if ([(BMTextUnderstandingPoemAnalytics *)self hasAccepted])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics accepted](self, "accepted")}];
  }

  else
  {
    v13 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalytics *)self hasRejected])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics rejected](self, "rejected")}];
  }

  else
  {
    v14 = 0;
  }

  v45[0] = @"visualIdentifier";
  null = visualIdentifier;
  if (!visualIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v46[0] = null;
  v45[1] = @"prediction";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null2;
  v46[1] = null2;
  v45[2] = @"named";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null3;
  v46[2] = null3;
  v45[3] = @"shadowMatch";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = visualIdentifier;
  v31 = null4;
  v46[3] = null4;
  v45[4] = @"threshold";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v4;
  v30 = null5;
  v46[4] = null5;
  v45[5] = @"predictionConfidence";
  null6 = v44;
  if (!v44)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v5;
  v46[5] = null6;
  v45[6] = @"onboarding";
  null7 = v43;
  if (!v43)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v6;
  v46[6] = null7;
  v45[7] = @"nameMegadomeIdentifier";
  null8 = nameMegadomeIdentifier;
  if (!nameMegadomeIdentifier)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v9;
  v46[7] = null8;
  v45[8] = @"nameSource";
  null9 = v41;
  if (!v41)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v46[8] = null9;
  v45[9] = @"features";
  null10 = jsonDictionary;
  if (!jsonDictionary)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v46[9] = null10;
  v45[10] = @"accepted";
  null11 = v13;
  if (!v13)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v46[10] = null11;
  v45[11] = @"rejected";
  null12 = v14;
  if (!v14)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v46[11] = null12;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:12];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_53;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_53;
    }
  }

LABEL_53:
  if (!jsonDictionary)
  {
  }

  if (!v41)
  {
  }

  if (!nameMegadomeIdentifier)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v23)
  {
  }

  if (v36)
  {
    if (v37)
    {
      goto LABEL_67;
    }
  }

  else
  {

    if (v37)
    {
LABEL_67:
      if (v38)
      {
        goto LABEL_68;
      }

LABEL_76:

      if (v39)
      {
        goto LABEL_69;
      }

      goto LABEL_77;
    }
  }

  if (!v38)
  {
    goto LABEL_76;
  }

LABEL_68:
  if (v39)
  {
    goto LABEL_69;
  }

LABEL_77:

LABEL_69:
  v28 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BMTextUnderstandingPoemAnalytics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v161[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"visualIdentifier"];
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
    v8 = [dictionaryCopy objectForKeyedSubscript:@"prediction"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"named"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        errorCopy2 = error;
        v11 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        v11 = v10;
LABEL_10:
        v12 = [dictionaryCopy objectForKeyedSubscript:@"shadowMatch"];
        error = v7;
        v134 = v11;
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13 = dictionaryCopy;
          v14 = v6;
          v132 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = dictionaryCopy;
          v14 = v6;
          v132 = v12;
LABEL_13:
          v15 = [v13 objectForKeyedSubscript:@"threshold"];
          v127 = v12;
          v130 = v15;
          if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v131 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v131 = v16;
LABEL_16:
            v17 = [v13 objectForKeyedSubscript:@"predictionConfidence"];
            v126 = v17;
            if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v129 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v129 = v18;
LABEL_19:
              v19 = [v13 objectForKeyedSubscript:@"onboarding"];
              v120 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v125 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v125 = v20;
LABEL_22:
                v21 = [v13 objectForKeyedSubscript:@"nameMegadomeIdentifier"];
                v6 = v14;
                v115 = v10;
                v118 = v21;
                if (v21)
                {
                  v22 = v21;
                  objc_opt_class();
                  dictionaryCopy = v13;
                  if (objc_opt_isKindOfClass())
                  {
                    v119 = 0;
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy2)
                      {
                        v119 = 0;
                        v25 = 0;
                        selfCopy22 = self;
                        goto LABEL_105;
                      }

                      v123 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v88 = *MEMORY[0x1E698F240];
                      v146 = *MEMORY[0x1E696A578];
                      v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"nameMegadomeIdentifier"];
                      v147 = v117;
                      v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
                      v119 = 0;
                      v25 = 0;
                      *errorCopy2 = [v123 initWithDomain:v88 code:2 userInfo:v89];
                      selfCopy22 = self;
                      goto LABEL_104;
                    }

                    v119 = v22;
                  }
                }

                else
                {
                  v119 = 0;
                  dictionaryCopy = v13;
                }

                v45 = [dictionaryCopy objectForKeyedSubscript:@"nameSource"];
                v114 = v9;
                v112 = v45;
                if (v45 && (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v117 = v46;
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy2)
                      {
                        v117 = 0;
                        v25 = 0;
                        selfCopy22 = self;
                        v89 = v112;
                        goto LABEL_104;
                      }

                      v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v99 = *MEMORY[0x1E698F240];
                      v144 = *MEMORY[0x1E696A578];
                      v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"nameSource"];
                      v145 = v67;
                      v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
                      v101 = v99;
                      v9 = v114;
                      v113 = v100;
                      v117 = 0;
                      v25 = 0;
                      *errorCopy2 = [v98 initWithDomain:v101 code:2 userInfo:?];
                      selfCopy22 = self;
                      goto LABEL_102;
                    }

                    v117 = [MEMORY[0x1E696AD98] numberWithInt:BMTextUnderstandingPoemAnalyticsSourcesFromString(v46)];
                  }
                }

                else
                {
                  v117 = 0;
                }

                v47 = [dictionaryCopy objectForKeyedSubscript:@"features"];
                if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v49 = dictionaryCopy;
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!errorCopy2)
                    {
                      v25 = 0;
                      selfCopy22 = self;
                      goto LABEL_103;
                    }

                    v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v90 = *MEMORY[0x1E698F240];
                    v142 = *MEMORY[0x1E696A578];
                    v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"features"];
                    v143 = v113;
                    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
                    *errorCopy2 = [v108 initWithDomain:v90 code:2 userInfo:v91];

                    v25 = 0;
                    v67 = v47;
                    selfCopy22 = self;
                    goto LABEL_101;
                  }

                  v67 = v47;
                  v137 = 0;
                  v113 = [[BMTextUnderstandingPoemAnalyticsFeatures alloc] initWithJSONDictionary:v67 error:&v137];
                  v68 = v137;
                  if (v68)
                  {
                    selfCopy22 = self;
                    if (errorCopy2)
                    {
                      v68 = v68;
                      *errorCopy2 = v68;
                    }

                    v25 = 0;
                    goto LABEL_101;
                  }
                }

                else
                {
                  v113 = 0;
                }

                v48 = [dictionaryCopy objectForKeyedSubscript:@"accepted"];
                errorCopy3 = error;
                if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v49 = dictionaryCopy;
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v124 = v8;
                    selfCopy10 = self;
                    if (!errorCopy2)
                    {
                      v51 = 0;
                      v25 = 0;
                      goto LABEL_100;
                    }

                    v109 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v92 = *MEMORY[0x1E698F240];
                    v140 = *MEMORY[0x1E696A578];
                    v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"accepted"];
                    v141 = v53;
                    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
                    v93 = [v109 initWithDomain:v92 code:2 userInfo:v52];
                    v51 = 0;
                    v25 = 0;
                    *errorCopy2 = v93;
                    goto LABEL_98;
                  }

                  selfCopy10 = self;
                  v51 = v48;
                }

                else
                {
                  v49 = dictionaryCopy;
                  selfCopy10 = self;
                  v51 = 0;
                }

                v52 = [v49 objectForKeyedSubscript:@"rejected"];
                if (!v52 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v53 = 0;
LABEL_60:
                  LODWORD(v107) = [v117 intValue];
                  v25 = [(BMTextUnderstandingPoemAnalytics *)selfCopy10 initWithVisualIdentifier:errorCopy3 prediction:v114 named:v134 shadowMatch:v132 threshold:v131 predictionConfidence:v129 onboarding:v125 nameMegadomeIdentifier:v119 nameSource:v107 features:v113 accepted:v51 rejected:v53];
                  selfCopy10 = v25;
LABEL_99:

                  v9 = v114;
LABEL_100:

                  v67 = v47;
                  selfCopy22 = selfCopy10;
                  error = errorCopy3;
LABEL_101:
                  dictionaryCopy = v49;
LABEL_102:

                  v47 = v67;
                  v12 = v127;
LABEL_103:
                  v89 = v112;

LABEL_104:
                  v10 = v115;
                  goto LABEL_105;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v53 = v52;
                  goto LABEL_60;
                }

                v124 = v8;
                if (errorCopy2)
                {
                  v136 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v110 = *MEMORY[0x1E698F240];
                  v138 = *MEMORY[0x1E696A578];
                  v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rejected"];
                  v139 = v94;
                  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
                  *errorCopy2 = [v136 initWithDomain:v110 code:2 userInfo:v95];
                }

                v53 = 0;
                v25 = 0;
LABEL_98:
                v8 = v124;
                goto LABEL_99;
              }

              v122 = v8;
              if (errorCopy2)
              {
                v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                errorCopy4 = error;
                v80 = v10;
                v81 = *MEMORY[0x1E698F240];
                v148 = *MEMORY[0x1E696A578];
                v82 = v9;
                v83 = objc_alloc(MEMORY[0x1E696AEC0]);
                v106 = objc_opt_class();
                v84 = v83;
                v9 = v82;
                v119 = [v84 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v106, @"onboarding"];
                v149 = v119;
                v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
                v86 = v78;
                v12 = v127;
                v87 = v81;
                v10 = v80;
                error = errorCopy4;
                v118 = v85;
                v125 = 0;
                v25 = 0;
                *errorCopy2 = [v86 initWithDomain:v87 code:2 userInfo:?];
                selfCopy22 = self;
                v6 = v14;
                dictionaryCopy = v13;
LABEL_105:

LABEL_106:
                goto LABEL_107;
              }

              v125 = 0;
              v25 = 0;
LABEL_114:
              v8 = v122;
              selfCopy22 = self;
              v6 = v14;
              dictionaryCopy = v13;
              goto LABEL_106;
            }

            v122 = v8;
            if (errorCopy2)
            {
              v69 = objc_alloc(MEMORY[0x1E696ABC0]);
              v70 = v10;
              v71 = *MEMORY[0x1E698F240];
              v150 = *MEMORY[0x1E696A578];
              v72 = v9;
              v73 = objc_alloc(MEMORY[0x1E696AEC0]);
              v105 = objc_opt_class();
              v74 = v73;
              v9 = v72;
              v125 = [v74 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v105, @"predictionConfidence"];
              v151 = v125;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
              v76 = v69;
              v12 = v127;
              v77 = v71;
              v10 = v70;
              v120 = v75;
              v129 = 0;
              v25 = 0;
              *errorCopy2 = [v76 initWithDomain:v77 code:2 userInfo:?];
              goto LABEL_114;
            }

            v129 = 0;
            v25 = 0;
LABEL_94:
            v8 = v122;
            selfCopy22 = self;
            v6 = v14;
            dictionaryCopy = v13;
LABEL_107:

            goto LABEL_108;
          }

          v122 = v8;
          if (errorCopy2)
          {
            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v116 = v10;
            v63 = *MEMORY[0x1E698F240];
            v152 = *MEMORY[0x1E696A578];
            v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"threshold"];
            v153 = v129;
            v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
            v65 = v62;
            v12 = v127;
            v66 = v63;
            v10 = v116;
            v126 = v64;
            v131 = 0;
            v25 = 0;
            *errorCopy2 = [v65 initWithDomain:v66 code:2 userInfo:?];
            goto LABEL_94;
          }

          v131 = 0;
          v25 = 0;
          selfCopy22 = self;
          v6 = v14;
          dictionaryCopy = v13;
LABEL_108:

          goto LABEL_109;
        }

        if (errorCopy2)
        {
          v133 = objc_alloc(MEMORY[0x1E696ABC0]);
          v54 = v10;
          v55 = *MEMORY[0x1E698F240];
          v154 = *MEMORY[0x1E696A578];
          v56 = v9;
          v57 = objc_alloc(MEMORY[0x1E696AEC0]);
          v104 = objc_opt_class();
          v58 = v57;
          v9 = v56;
          v131 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v104, @"shadowMatch"];
          v155 = v131;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
          v60 = v55;
          v10 = v54;
          error = v7;
          v130 = v59;
          v61 = [v133 initWithDomain:v60 code:2 userInfo:?];
          v132 = 0;
          v25 = 0;
          *errorCopy2 = v61;
          selfCopy22 = self;
          goto LABEL_108;
        }

        v132 = 0;
        v25 = 0;
        selfCopy22 = self;
LABEL_109:

        goto LABEL_110;
      }

      if (error)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v121 = v8;
        errorCopy5 = error;
        v39 = *MEMORY[0x1E698F240];
        v156 = *MEMORY[0x1E696A578];
        v40 = v9;
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v103 = objc_opt_class();
        v42 = v41;
        v9 = v40;
        v132 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v103, @"named"];
        v157 = v132;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
        v44 = v37;
        v12 = v43;
        v134 = 0;
        v25 = 0;
        *errorCopy5 = [v44 initWithDomain:v39 code:2 userInfo:v43];
        v8 = v121;
        selfCopy22 = self;
        error = v7;
        goto LABEL_109;
      }

      v134 = 0;
      v25 = 0;
      selfCopy22 = self;
      error = v7;
LABEL_110:

      goto LABEL_111;
    }

    if (error)
    {
      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v158 = *MEMORY[0x1E696A578];
      v29 = v7;
      v30 = dictionaryCopy;
      v31 = objc_alloc(MEMORY[0x1E696AEC0]);
      v102 = objc_opt_class();
      v32 = v31;
      dictionaryCopy = v30;
      v33 = v8;
      errorCopy6 = error;
      error = v29;
      v134 = [v32 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v102, @"prediction"];
      v159 = v134;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
      v36 = v28;
      v10 = v35;
      v9 = 0;
      v25 = 0;
      *errorCopy6 = [v27 initWithDomain:v36 code:2 userInfo:v35];
      v8 = v33;
      selfCopy22 = self;
      goto LABEL_110;
    }

    v9 = 0;
    v25 = 0;
    selfCopy22 = self;
    error = v7;
LABEL_111:

    goto LABEL_112;
  }

  if (error)
  {
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E698F240];
    v160 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"visualIdentifier"];
    v161[0] = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:&v160 count:1];
    v25 = 0;
    *error = [v23 initWithDomain:v24 code:2 userInfo:v8];
    error = 0;
    selfCopy22 = self;
    goto LABEL_111;
  }

  v25 = 0;
  selfCopy22 = self;
LABEL_112:

  v96 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoemAnalytics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_visualIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPrediction)
  {
    prediction = self->_prediction;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNamed)
  {
    named = self->_named;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasShadowMatch)
  {
    shadowMatch = self->_shadowMatch;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasThreshold)
  {
    threshold = self->_threshold;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasPredictionConfidence)
  {
    predictionConfidence = self->_predictionConfidence;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasOnboarding)
  {
    onboarding = self->_onboarding;
    PBDataWriterWriteBOOLField();
  }

  if (self->_nameMegadomeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  nameSource = self->_nameSource;
  PBDataWriterWriteUint32Field();
  if (self->_features)
  {
    PBDataWriterPlaceMark();
    [(BMTextUnderstandingPoemAnalyticsFeatures *)self->_features writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasAccepted)
  {
    accepted = self->_accepted;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRejected)
  {
    rejected = self->_rejected;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v77.receiver = self;
  v77.super_class = BMTextUnderstandingPoemAnalytics;
  v5 = [(BMEventBase *)&v77 init];
  if (!v5)
  {
    goto LABEL_135;
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
        LOBYTE(v78[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v78[0] & 0x7F) << v7;
        if ((v78[0] & 0x80) == 0)
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
      if ((v14 >> 3) > 6)
      {
        if (v15 > 9)
        {
          if (v15 != 10)
          {
            if (v15 == 11)
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v5->_hasAccepted = 1;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v66 = [fromCopy position] + 1;
                if (v66 >= [fromCopy position] && (v67 = objc_msgSend(fromCopy, "position") + 1, v67 <= objc_msgSend(fromCopy, "length")))
                {
                  data2 = [fromCopy data];
                  [data2 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v65 |= (v78[0] & 0x7F) << v63;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v13 = v64++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_125;
                }
              }

              v22 = (v65 != 0) & ~[fromCopy hasError];
LABEL_125:
              v69 = 26;
            }

            else
            {
              if (v15 != 12)
              {
LABEL_108:
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_134;
                }

                goto LABEL_132;
              }

              v32 = 0;
              v33 = 0;
              v34 = 0;
              v5->_hasRejected = 1;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v35 = [fromCopy position] + 1;
                if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
                {
                  data3 = [fromCopy data];
                  [data3 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v34 |= (v78[0] & 0x7F) << v32;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v13 = v33++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_117;
                }
              }

              v22 = (v34 != 0) & ~[fromCopy hasError];
LABEL_117:
              v69 = 28;
            }

            goto LABEL_126;
          }

          v78[0] = 0;
          v78[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_134;
          }

          v52 = [[BMTextUnderstandingPoemAnalyticsFeatures alloc] initByReadFrom:fromCopy];
          if (!v52)
          {
            goto LABEL_134;
          }

          features = v5->_features;
          v5->_features = v52;

          PBReaderRecallMark();
        }

        else
        {
          if (v15 == 7)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v5->_hasOnboarding = 1;
            while (1)
            {
              LOBYTE(v78[0]) = 0;
              v43 = [fromCopy position] + 1;
              if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v42 |= (v78[0] & 0x7F) << v40;
              if ((v78[0] & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v13 = v41++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_119;
              }
            }

            v22 = (v42 != 0) & ~[fromCopy hasError];
LABEL_119:
            v69 = 24;
            goto LABEL_126;
          }

          if (v15 == 8)
          {
            v38 = PBReaderReadString();
            v39 = 64;
LABEL_95:
            v60 = *(&v5->super.super.isa + v39);
            *(&v5->super.super.isa + v39) = v38;

            goto LABEL_132;
          }

          if (v15 != 9)
          {
            goto LABEL_108;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v78[0]) = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v78[0] & 0x7F) << v23;
            if ((v78[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            if (v24++ > 8)
            {
              goto LABEL_114;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v25 > 5)
          {
LABEL_114:
            LODWORD(v25) = 0;
          }

          v5->_nameSource = v25;
        }
      }

      else
      {
        if (v15 <= 3)
        {
          if (v15 != 1)
          {
            if (v15 == 2)
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v5->_hasPrediction = 1;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v57 = [fromCopy position] + 1;
                if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
                {
                  data6 = [fromCopy data];
                  [data6 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v56 |= (v78[0] & 0x7F) << v54;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v13 = v55++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_123;
                }
              }

              v22 = (v56 != 0) & ~[fromCopy hasError];
LABEL_123:
              v69 = 16;
            }

            else
            {
              if (v15 != 3)
              {
                goto LABEL_108;
              }

              v16 = 0;
              v17 = 0;
              v18 = 0;
              v5->_hasNamed = 1;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v19 = [fromCopy position] + 1;
                if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
                {
                  data7 = [fromCopy data];
                  [data7 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 |= (v78[0] & 0x7F) << v16;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v13 = v17++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_111;
                }
              }

              v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_111:
              v69 = 18;
            }

            goto LABEL_126;
          }

          v38 = PBReaderReadString();
          v39 = 40;
          goto LABEL_95;
        }

        switch(v15)
        {
          case 4:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v5->_hasShadowMatch = 1;
            while (1)
            {
              LOBYTE(v78[0]) = 0;
              v49 = [fromCopy position] + 1;
              if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
              {
                data8 = [fromCopy data];
                [data8 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v48 |= (v78[0] & 0x7F) << v46;
              if ((v78[0] & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v13 = v47++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_121;
              }
            }

            v22 = (v48 != 0) & ~[fromCopy hasError];
LABEL_121:
            v69 = 20;
LABEL_126:
            *(&v5->super.super.isa + v69) = v22;
            goto LABEL_132;
          case 5:
            v5->_hasThreshold = 1;
            v78[0] = 0;
            v61 = [fromCopy position] + 8;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 8, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v71 = v78[0];
            v72 = 48;
            break;
          case 6:
            v5->_hasPredictionConfidence = 1;
            v78[0] = 0;
            v30 = [fromCopy position] + 8;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:v78 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v71 = v78[0];
            v72 = 56;
            break;
          default:
            goto LABEL_108;
        }

        *(&v5->super.super.isa + v72) = v71;
      }

LABEL_132:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_134:
    v75 = 0;
  }

  else
  {
LABEL_135:
    v75 = v5;
  }

  return v75;
}

- (NSString)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  visualIdentifier = [(BMTextUnderstandingPoemAnalytics *)self visualIdentifier];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics prediction](self, "prediction")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics named](self, "named")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics shadowMatch](self, "shadowMatch")}];
  v4 = MEMORY[0x1E696AD98];
  [(BMTextUnderstandingPoemAnalytics *)self threshold];
  v5 = [v4 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMTextUnderstandingPoemAnalytics *)self predictionConfidence];
  v14 = [v6 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics onboarding](self, "onboarding")}];
  nameMegadomeIdentifier = [(BMTextUnderstandingPoemAnalytics *)self nameMegadomeIdentifier];
  v9 = BMTextUnderstandingPoemAnalyticsSourcesAsString([(BMTextUnderstandingPoemAnalytics *)self nameSource]);
  features = [(BMTextUnderstandingPoemAnalytics *)self features];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics accepted](self, "accepted")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemAnalytics rejected](self, "rejected")}];
  v17 = [v16 initWithFormat:@"BMTextUnderstandingPoemAnalytics with visualIdentifier: %@, prediction: %@, named: %@, shadowMatch: %@, threshold: %@, predictionConfidence: %@, onboarding: %@, nameMegadomeIdentifier: %@, nameSource: %@, features: %@, accepted: %@, rejected: %@", visualIdentifier, v19, v18, v3, v5, v14, v7, nameMegadomeIdentifier, v9, features, v11, v12];

  return v17;
}

- (BMTextUnderstandingPoemAnalytics)initWithVisualIdentifier:(id)identifier prediction:(id)prediction named:(id)named shadowMatch:(id)match threshold:(id)threshold predictionConfidence:(id)confidence onboarding:(id)onboarding nameMegadomeIdentifier:(id)self0 nameSource:(int)self1 features:(id)self2 accepted:(id)self3 rejected:(id)self4
{
  identifierCopy = identifier;
  predictionCopy = prediction;
  namedCopy = named;
  matchCopy = match;
  thresholdCopy = threshold;
  confidenceCopy = confidence;
  v23 = predictionCopy;
  onboardingCopy = onboarding;
  megadomeIdentifierCopy = megadomeIdentifier;
  featuresCopy = features;
  acceptedCopy = accepted;
  rejectedCopy = rejected;
  v37.receiver = self;
  v37.super_class = BMTextUnderstandingPoemAnalytics;
  v27 = [(BMEventBase *)&v37 init];
  if (v27)
  {
    v27->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v27->_visualIdentifier, identifier);
    if (v23)
    {
      v27->_hasPrediction = 1;
      v27->_prediction = [v23 BOOLValue];
    }

    else
    {
      v27->_hasPrediction = 0;
      v27->_prediction = 0;
    }

    if (namedCopy)
    {
      v27->_hasNamed = 1;
      v27->_named = [namedCopy BOOLValue];
    }

    else
    {
      v27->_hasNamed = 0;
      v27->_named = 0;
    }

    if (matchCopy)
    {
      v27->_hasShadowMatch = 1;
      v27->_shadowMatch = [matchCopy BOOLValue];
    }

    else
    {
      v27->_hasShadowMatch = 0;
      v27->_shadowMatch = 0;
    }

    if (thresholdCopy)
    {
      v27->_hasThreshold = 1;
      [thresholdCopy doubleValue];
    }

    else
    {
      v27->_hasThreshold = 0;
      v28 = -1.0;
    }

    v27->_threshold = v28;
    if (confidenceCopy)
    {
      v27->_hasPredictionConfidence = 1;
      [confidenceCopy doubleValue];
    }

    else
    {
      v27->_hasPredictionConfidence = 0;
      v29 = -1.0;
    }

    v27->_predictionConfidence = v29;
    if (onboardingCopy)
    {
      v27->_hasOnboarding = 1;
      v27->_onboarding = [onboardingCopy BOOLValue];
    }

    else
    {
      v27->_hasOnboarding = 0;
      v27->_onboarding = 0;
    }

    objc_storeStrong(&v27->_nameMegadomeIdentifier, megadomeIdentifier);
    v27->_nameSource = source;
    objc_storeStrong(&v27->_features, features);
    if (acceptedCopy)
    {
      v27->_hasAccepted = 1;
      v27->_accepted = [acceptedCopy BOOLValue];
    }

    else
    {
      v27->_hasAccepted = 0;
      v27->_accepted = 0;
    }

    if (rejectedCopy)
    {
      v27->_hasRejected = 1;
      v27->_rejected = [rejectedCopy BOOLValue];
    }

    else
    {
      v27->_hasRejected = 0;
      v27->_rejected = 0;
    }
  }

  return v27;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualIdentifier" number:1 type:13 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prediction" number:2 type:12 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"named" number:3 type:12 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shadowMatch" number:4 type:12 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"threshold" number:5 type:0 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictionConfidence" number:6 type:0 subMessageClass:0];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onboarding" number:7 type:12 subMessageClass:0];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nameMegadomeIdentifier" number:8 type:13 subMessageClass:0];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nameSource" number:9 type:4 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"features" number:10 type:14 subMessageClass:objc_opt_class()];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accepted" number:11 type:12 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rejected" number:12 type:12 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visualIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prediction" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"named" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shadowMatch" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"threshold" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictionConfidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"onboarding" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nameMegadomeIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nameSource" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"features_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_288];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accepted" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rejected" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
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

id __43__BMTextUnderstandingPoemAnalytics_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 features];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMTextUnderstandingPoemAnalytics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end