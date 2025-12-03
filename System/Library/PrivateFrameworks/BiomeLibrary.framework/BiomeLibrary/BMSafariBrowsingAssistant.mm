@interface BMSafariBrowsingAssistant
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistant)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSafariBrowsingAssistant)initWithWebpageViewStarted:(id)started dimensionContext:(id)context bloomFilterPassed:(id)passed eligible:(id)eligible webpageUrlSent:(id)sent serverRequestContext:(id)requestContext visualComponentPresentationContext:(id)presentationContext userInteractionDetected:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistant

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    webpageViewStarted = [(BMSafariBrowsingAssistant *)self webpageViewStarted];
    webpageViewStarted2 = [v5 webpageViewStarted];
    v8 = webpageViewStarted2;
    if (webpageViewStarted == webpageViewStarted2)
    {
    }

    else
    {
      webpageViewStarted3 = [(BMSafariBrowsingAssistant *)self webpageViewStarted];
      webpageViewStarted4 = [v5 webpageViewStarted];
      v11 = [webpageViewStarted3 isEqual:webpageViewStarted4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    dimensionContext = [(BMSafariBrowsingAssistant *)self dimensionContext];
    dimensionContext2 = [v5 dimensionContext];
    v15 = dimensionContext2;
    if (dimensionContext == dimensionContext2)
    {
    }

    else
    {
      dimensionContext3 = [(BMSafariBrowsingAssistant *)self dimensionContext];
      dimensionContext4 = [v5 dimensionContext];
      v18 = [dimensionContext3 isEqual:dimensionContext4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    bloomFilterPassed = [(BMSafariBrowsingAssistant *)self bloomFilterPassed];
    bloomFilterPassed2 = [v5 bloomFilterPassed];
    v21 = bloomFilterPassed2;
    if (bloomFilterPassed == bloomFilterPassed2)
    {
    }

    else
    {
      bloomFilterPassed3 = [(BMSafariBrowsingAssistant *)self bloomFilterPassed];
      bloomFilterPassed4 = [v5 bloomFilterPassed];
      v24 = [bloomFilterPassed3 isEqual:bloomFilterPassed4];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    eligible = [(BMSafariBrowsingAssistant *)self eligible];
    eligible2 = [v5 eligible];
    v27 = eligible2;
    if (eligible == eligible2)
    {
    }

    else
    {
      eligible3 = [(BMSafariBrowsingAssistant *)self eligible];
      eligible4 = [v5 eligible];
      v30 = [eligible3 isEqual:eligible4];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    webpageUrlSent = [(BMSafariBrowsingAssistant *)self webpageUrlSent];
    webpageUrlSent2 = [v5 webpageUrlSent];
    v33 = webpageUrlSent2;
    if (webpageUrlSent == webpageUrlSent2)
    {
    }

    else
    {
      webpageUrlSent3 = [(BMSafariBrowsingAssistant *)self webpageUrlSent];
      webpageUrlSent4 = [v5 webpageUrlSent];
      v36 = [webpageUrlSent3 isEqual:webpageUrlSent4];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    serverRequestContext = [(BMSafariBrowsingAssistant *)self serverRequestContext];
    serverRequestContext2 = [v5 serverRequestContext];
    v39 = serverRequestContext2;
    if (serverRequestContext == serverRequestContext2)
    {
    }

    else
    {
      serverRequestContext3 = [(BMSafariBrowsingAssistant *)self serverRequestContext];
      serverRequestContext4 = [v5 serverRequestContext];
      v42 = [serverRequestContext3 isEqual:serverRequestContext4];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    visualComponentPresentationContext = [(BMSafariBrowsingAssistant *)self visualComponentPresentationContext];
    visualComponentPresentationContext2 = [v5 visualComponentPresentationContext];
    v45 = visualComponentPresentationContext2;
    if (visualComponentPresentationContext == visualComponentPresentationContext2)
    {
    }

    else
    {
      visualComponentPresentationContext3 = [(BMSafariBrowsingAssistant *)self visualComponentPresentationContext];
      visualComponentPresentationContext4 = [v5 visualComponentPresentationContext];
      v48 = [visualComponentPresentationContext3 isEqual:visualComponentPresentationContext4];

      if (!v48)
      {
LABEL_29:
        v12 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    userInteractionDetected = [(BMSafariBrowsingAssistant *)self userInteractionDetected];
    userInteractionDetected2 = [v5 userInteractionDetected];
    if (userInteractionDetected == userInteractionDetected2)
    {
      v12 = 1;
    }

    else
    {
      userInteractionDetected3 = [(BMSafariBrowsingAssistant *)self userInteractionDetected];
      userInteractionDetected4 = [v5 userInteractionDetected];
      v12 = [userInteractionDetected3 isEqual:userInteractionDetected4];
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (id)jsonDictionary
{
  v38[8] = *MEMORY[0x1E69E9840];
  webpageViewStarted = [(BMSafariBrowsingAssistant *)self webpageViewStarted];
  jsonDictionary = [webpageViewStarted jsonDictionary];

  dimensionContext = [(BMSafariBrowsingAssistant *)self dimensionContext];
  jsonDictionary2 = [dimensionContext jsonDictionary];

  bloomFilterPassed = [(BMSafariBrowsingAssistant *)self bloomFilterPassed];
  jsonDictionary3 = [bloomFilterPassed jsonDictionary];

  eligible = [(BMSafariBrowsingAssistant *)self eligible];
  jsonDictionary4 = [eligible jsonDictionary];

  webpageUrlSent = [(BMSafariBrowsingAssistant *)self webpageUrlSent];
  jsonDictionary5 = [webpageUrlSent jsonDictionary];

  serverRequestContext = [(BMSafariBrowsingAssistant *)self serverRequestContext];
  jsonDictionary6 = [serverRequestContext jsonDictionary];

  visualComponentPresentationContext = [(BMSafariBrowsingAssistant *)self visualComponentPresentationContext];
  jsonDictionary7 = [visualComponentPresentationContext jsonDictionary];

  userInteractionDetected = [(BMSafariBrowsingAssistant *)self userInteractionDetected];
  jsonDictionary8 = [userInteractionDetected jsonDictionary];

  v37[0] = @"webpageViewStarted";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null;
  v38[0] = null;
  v37[1] = @"dimensionContext";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = jsonDictionary;
  v31 = null2;
  v38[1] = null2;
  v37[2] = @"bloomFilterPassed";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = jsonDictionary2;
  v30 = null3;
  v38[2] = null3;
  v37[3] = @"eligible";
  null4 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = jsonDictionary3;
  v38[3] = null4;
  v37[4] = @"webpageUrlSent";
  null5 = jsonDictionary5;
  if (!jsonDictionary5)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = jsonDictionary4;
  v38[4] = null5;
  v37[5] = @"serverRequestContext";
  null6 = jsonDictionary6;
  if (!jsonDictionary6)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v38[5] = null6;
  v37[6] = @"visualComponentPresentationContext";
  null7 = jsonDictionary7;
  if (!jsonDictionary7)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v38[6] = null7;
  v37[7] = @"userInteractionDetected";
  null8 = jsonDictionary8;
  if (!jsonDictionary8)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v38[7] = null8;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:8];
  if (jsonDictionary8)
  {
    if (jsonDictionary7)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (jsonDictionary7)
    {
      goto LABEL_19;
    }
  }

LABEL_19:
  if (!jsonDictionary6)
  {
  }

  if (!jsonDictionary5)
  {
  }

  if (!v33)
  {
  }

  if (!v34)
  {
  }

  if (v35)
  {
    if (v36)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (v36)
    {
      goto LABEL_29;
    }
  }

LABEL_29:
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (BMSafariBrowsingAssistant)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v133[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"webpageViewStarted"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"dimensionContext"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v116 = 0;
      v10 = [[BMSafariBrowsingAssistantDimensionContext alloc] initWithJSONDictionary:v11 error:&v116];
      v26 = v116;
      if (!v26)
      {

LABEL_7:
        v107 = v10;
        v11 = [dictionaryCopy objectForKeyedSubscript:@"bloomFilterPassed"];
        errorCopy = error;
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v106 = 0;
LABEL_10:
          v12 = [dictionaryCopy objectForKeyedSubscript:@"eligible"];
          if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v100 = v9;
            v13 = v12;
            v105 = 0;
            goto LABEL_13;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v12;
            v114 = 0;
            v105 = [[BMSafariBrowsingAssistantEligible alloc] initWithJSONDictionary:v35 error:&v114];
            v36 = v114;
            if (v36)
            {
              v103 = v35;
              v27 = v106;
              if (errorCopy)
              {
                v36 = v36;
                *errorCopy = v36;
              }

              v24 = 0;
              v23 = v107;
              goto LABEL_98;
            }

            v100 = v9;
            v13 = v12;

LABEL_13:
            v14 = [dictionaryCopy objectForKeyedSubscript:@"webpageUrlSent"];
            v103 = v14;
            if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v101 = 0;
LABEL_16:
              v12 = v13;
              v16 = [dictionaryCopy objectForKeyedSubscript:@"serverRequestContext"];
              v9 = v100;
              v98 = v16;
              if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!errorCopy)
                  {
                    v24 = 0;
                    v27 = v106;
                    v23 = v107;
                    goto LABEL_97;
                  }

                  v68 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v95 = *MEMORY[0x1E698F240];
                  v122 = *MEMORY[0x1E696A578];
                  v69 = v8;
                  selfCopy = self;
                  v71 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v87 = objc_opt_class();
                  v72 = v71;
                  self = selfCopy;
                  v8 = v69;
                  v23 = v107;
                  v96 = [v72 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v87, @"serverRequestContext"];
                  v123 = v96;
                  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
                  v74 = v95;
                  v94 = v73;
                  v75 = [v68 initWithDomain:v74 code:2 userInfo:?];
                  v24 = 0;
                  *errorCopy = v75;
                  goto LABEL_95;
                }

                v51 = v17;
                v112 = 0;
                v96 = [[BMSafariBrowsingAssistantServerRequestContext alloc] initWithJSONDictionary:v51 error:&v112];
                v52 = v112;
                if (v52)
                {
                  v94 = v51;
                  v27 = v106;
                  if (errorCopy)
                  {
                    v52 = v52;
                    *errorCopy = v52;
                  }

                  v24 = 0;
                  v23 = v107;
                  goto LABEL_96;
                }
              }

              else
              {
                v96 = 0;
              }

              v18 = [dictionaryCopy objectForKeyedSubscript:@"visualComponentPresentationContext"];
              v94 = v18;
              if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!errorCopy)
                  {
                    v24 = 0;
                    v23 = v107;
                    goto LABEL_95;
                  }

                  v76 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v90 = *MEMORY[0x1E698F240];
                  v120 = *MEMORY[0x1E696A578];
                  v77 = v8;
                  selfCopy2 = self;
                  v79 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v88 = objc_opt_class();
                  v80 = v79;
                  self = selfCopy2;
                  v8 = v77;
                  v23 = v107;
                  v93 = [v80 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v88, @"visualComponentPresentationContext"];
                  v121 = v93;
                  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                  v81 = [v76 initWithDomain:v90 code:2 userInfo:v21];
                  v24 = 0;
                  *errorCopy = v81;
LABEL_94:

LABEL_95:
                  v27 = v106;
LABEL_96:

                  goto LABEL_97;
                }

                v21 = v19;
                v111 = 0;
                v93 = [[BMSafariBrowsingAssistantVisualComponentPresentationContext alloc] initWithJSONDictionary:v21 error:&v111];
                v60 = v111;
                if (v60)
                {
                  if (errorCopy)
                  {
                    v60 = v60;
                    *errorCopy = v60;
                  }

                  v24 = 0;
                  goto LABEL_111;
                }

                v92 = v8;
                selfCopy4 = self;
              }

              else
              {
                v92 = v8;
                v93 = 0;
                selfCopy4 = self;
              }

              v21 = [dictionaryCopy objectForKeyedSubscript:@"userInteractionDetected"];
              if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v22 = 0;
LABEL_25:
                v23 = v107;
                v24 = [(BMSafariBrowsingAssistant *)selfCopy4 initWithWebpageViewStarted:v92 dimensionContext:v107 bloomFilterPassed:v106 eligible:v105 webpageUrlSent:v101 serverRequestContext:v96 visualComponentPresentationContext:v93 userInteractionDetected:v22];
                selfCopy4 = v24;
LABEL_93:

                self = selfCopy4;
                v8 = v92;
                goto LABEL_94;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v66 = v21;
                v110 = 0;
                v22 = [[BMSafariBrowsingAssistantUserInteractionDetected alloc] initWithJSONDictionary:v66 error:&v110];
                v67 = v110;
                if (!v67)
                {

                  goto LABEL_25;
                }

                if (errorCopy)
                {
                  v67 = v67;
                  *errorCopy = v67;
                }

LABEL_92:
                v24 = 0;
                v23 = v107;
                goto LABEL_93;
              }

              if (errorCopy)
              {
                v91 = objc_alloc(MEMORY[0x1E696ABC0]);
                v89 = *MEMORY[0x1E698F240];
                v118 = *MEMORY[0x1E696A578];
                v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"userInteractionDetected"];
                v119 = v22;
                v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
                *errorCopy = [v91 initWithDomain:v89 code:2 userInfo:v66];
                goto LABEL_92;
              }

              v24 = 0;
              self = selfCopy4;
              v8 = v92;
LABEL_111:
              v23 = v107;
              goto LABEL_94;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = v15;
              v113 = 0;
              v101 = [[BMSafariBrowsingAssistantWebpageUrlSent alloc] initWithJSONDictionary:v42 error:&v113];
              v43 = v113;
              if (!v43)
              {

                goto LABEL_16;
              }

              v98 = v42;
              v27 = v106;
              v12 = v13;
              if (errorCopy)
              {
                v43 = v43;
                *errorCopy = v43;
              }

              v24 = 0;
              v23 = v107;
            }

            else
            {
              if (!errorCopy)
              {
                v24 = 0;
                v27 = v106;
                v23 = v107;
                v12 = v13;
                v9 = v100;
                goto LABEL_98;
              }

              v99 = objc_alloc(MEMORY[0x1E696ABC0]);
              v97 = *MEMORY[0x1E698F240];
              v124 = *MEMORY[0x1E696A578];
              selfCopy5 = self;
              v62 = objc_alloc(MEMORY[0x1E696AEC0]);
              v86 = objc_opt_class();
              v63 = v62;
              self = selfCopy5;
              v23 = v107;
              v101 = [v63 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v86, @"webpageUrlSent"];
              v125 = v101;
              v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
              v65 = v99;
              v98 = v64;
              v24 = 0;
              *errorCopy = [v65 initWithDomain:v97 code:2 userInfo:?];
              v27 = v106;
              v12 = v13;
            }

            v9 = v100;
LABEL_97:

            goto LABEL_98;
          }

          if (errorCopy)
          {
            v53 = objc_alloc(MEMORY[0x1E696ABC0]);
            v104 = *MEMORY[0x1E698F240];
            v126 = *MEMORY[0x1E696A578];
            v54 = v8;
            v55 = objc_alloc(MEMORY[0x1E696AEC0]);
            v85 = objc_opt_class();
            v56 = v55;
            v8 = v54;
            v23 = v107;
            v105 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v85, @"eligible"];
            v127 = v105;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
            v58 = v104;
            v103 = v57;
            v59 = [v53 initWithDomain:v58 code:2 userInfo:?];
            v24 = 0;
            *errorCopy = v59;
            v27 = v106;
LABEL_98:

            goto LABEL_99;
          }

          v24 = 0;
          v27 = v106;
          v23 = v107;
LABEL_99:

          goto LABEL_100;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v115 = 0;
          v27 = [[BMSafariBrowsingAssistantBloomFilterPassed alloc] initWithJSONDictionary:v12 error:&v115];
          v28 = v115;
          if (v28)
          {
            if (errorCopy)
            {
              v28 = v28;
              *errorCopy = v28;
            }

            v24 = 0;
            v23 = v107;
            goto LABEL_99;
          }

          v106 = v27;

          goto LABEL_10;
        }

        if (error)
        {
          selfCopy6 = self;
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v128 = *MEMORY[0x1E696A578];
          v46 = v8;
          v47 = objc_alloc(MEMORY[0x1E696AEC0]);
          v84 = objc_opt_class();
          v48 = v47;
          v8 = v46;
          v23 = v10;
          v27 = [v48 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v84, @"bloomFilterPassed"];
          v129 = v27;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
          v49 = v44;
          self = selfCopy6;
          v50 = [v49 initWithDomain:v45 code:2 userInfo:v12];
          v24 = 0;
          *errorCopy = v50;
          goto LABEL_99;
        }

        v24 = 0;
        v23 = v10;
LABEL_100:

        goto LABEL_101;
      }

      if (error)
      {
        v26 = v26;
        *error = v26;
      }

      v24 = 0;
LABEL_50:
      v23 = v10;
      goto LABEL_100;
    }

    if (error)
    {
      errorCopy2 = error;
      selfCopy7 = self;
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v130 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dimensionContext"];
      v131 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
      v40 = v38;
      self = selfCopy7;
      v41 = [v40 initWithDomain:v39 code:2 userInfo:v11];
      v24 = 0;
      *errorCopy2 = v41;
      goto LABEL_50;
    }

    v24 = 0;
LABEL_101:

    goto LABEL_102;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v117 = 0;
    v8 = [[BMSafariBrowsingAssistantWebpageViewStarted alloc] initWithJSONDictionary:v9 error:&v117];
    v25 = v117;
    if (v25)
    {
      if (error)
      {
        v25 = v25;
        *error = v25;
      }

      v24 = 0;
      goto LABEL_101;
    }

    goto LABEL_4;
  }

  if (error)
  {
    selfCopy8 = self;
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31 = *MEMORY[0x1E698F240];
    v132 = *MEMORY[0x1E696A578];
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"webpageViewStarted"];
    v133[0] = v32;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:&v132 count:1];
    v33 = v30;
    self = selfCopy8;
    v8 = v32;
    v34 = [v33 initWithDomain:v31 code:2 userInfo:v9];
    v24 = 0;
    *error = v34;
    goto LABEL_101;
  }

  v24 = 0;
LABEL_102:

  v82 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistant *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_webpageViewStarted)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantWebpageViewStarted *)self->_webpageViewStarted writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_dimensionContext)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantDimensionContext *)self->_dimensionContext writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_bloomFilterPassed)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantBloomFilterPassed *)self->_bloomFilterPassed writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_eligible)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantEligible *)self->_eligible writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_webpageUrlSent)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantWebpageUrlSent *)self->_webpageUrlSent writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_serverRequestContext)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantServerRequestContext *)self->_serverRequestContext writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_visualComponentPresentationContext)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentPresentationContext *)self->_visualComponentPresentationContext writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_userInteractionDetected)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantUserInteractionDetected *)self->_userInteractionDetected writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMSafariBrowsingAssistant;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_60;
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
        LOBYTE(v23) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v23 & 0x7F) << v7;
        if ((v23 & 0x80) == 0)
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
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_59;
            }

            v16 = [[BMSafariBrowsingAssistantVisualComponentPresentationContext alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_59;
            }

            v17 = 72;
            goto LABEL_53;
          }

          if (v15 == 8)
          {
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_59;
            }

            v16 = [[BMSafariBrowsingAssistantUserInteractionDetected alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_59;
            }

            v17 = 80;
            goto LABEL_53;
          }
        }

        else
        {
          if (v15 == 5)
          {
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_59;
            }

            v16 = [[BMSafariBrowsingAssistantWebpageUrlSent alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_59;
            }

            v17 = 56;
            goto LABEL_53;
          }

          if (v15 == 6)
          {
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_59;
            }

            v16 = [[BMSafariBrowsingAssistantServerRequestContext alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_59;
            }

            v17 = 64;
            goto LABEL_53;
          }
        }
      }

      else if (v15 > 2)
      {
        if (v15 == 3)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_59;
          }

          v16 = [[BMSafariBrowsingAssistantBloomFilterPassed alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_59;
          }

          v17 = 40;
          goto LABEL_53;
        }

        if (v15 == 4)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_59;
          }

          v16 = [[BMSafariBrowsingAssistantEligible alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_59;
          }

          v17 = 48;
          goto LABEL_53;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_59;
          }

          v16 = [[BMSafariBrowsingAssistantWebpageViewStarted alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_59;
          }

          v17 = 24;
          goto LABEL_53;
        }

        if (v15 == 2)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_59;
          }

          v16 = [[BMSafariBrowsingAssistantDimensionContext alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_59;
          }

          v17 = 32;
LABEL_53:
          v18 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          PBReaderRecallMark();
          goto LABEL_54;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_54:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_59:
    v20 = 0;
  }

  else
  {
LABEL_60:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  webpageViewStarted = [(BMSafariBrowsingAssistant *)self webpageViewStarted];
  dimensionContext = [(BMSafariBrowsingAssistant *)self dimensionContext];
  bloomFilterPassed = [(BMSafariBrowsingAssistant *)self bloomFilterPassed];
  eligible = [(BMSafariBrowsingAssistant *)self eligible];
  webpageUrlSent = [(BMSafariBrowsingAssistant *)self webpageUrlSent];
  serverRequestContext = [(BMSafariBrowsingAssistant *)self serverRequestContext];
  visualComponentPresentationContext = [(BMSafariBrowsingAssistant *)self visualComponentPresentationContext];
  userInteractionDetected = [(BMSafariBrowsingAssistant *)self userInteractionDetected];
  v12 = [v3 initWithFormat:@"BMSafariBrowsingAssistant with webpageViewStarted: %@, dimensionContext: %@, bloomFilterPassed: %@, eligible: %@, webpageUrlSent: %@, serverRequestContext: %@, visualComponentPresentationContext: %@, userInteractionDetected: %@", webpageViewStarted, dimensionContext, bloomFilterPassed, eligible, webpageUrlSent, serverRequestContext, visualComponentPresentationContext, userInteractionDetected];

  return v12;
}

- (BMSafariBrowsingAssistant)initWithWebpageViewStarted:(id)started dimensionContext:(id)context bloomFilterPassed:(id)passed eligible:(id)eligible webpageUrlSent:(id)sent serverRequestContext:(id)requestContext visualComponentPresentationContext:(id)presentationContext userInteractionDetected:(id)self0
{
  startedCopy = started;
  contextCopy = context;
  passedCopy = passed;
  eligibleCopy = eligible;
  sentCopy = sent;
  requestContextCopy = requestContext;
  presentationContextCopy = presentationContext;
  detectedCopy = detected;
  v27.receiver = self;
  v27.super_class = BMSafariBrowsingAssistant;
  v18 = [(BMEventBase *)&v27 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_webpageViewStarted, started);
    objc_storeStrong(&v18->_dimensionContext, context);
    objc_storeStrong(&v18->_bloomFilterPassed, passed);
    objc_storeStrong(&v18->_eligible, eligible);
    objc_storeStrong(&v18->_webpageUrlSent, sent);
    objc_storeStrong(&v18->_serverRequestContext, requestContext);
    objc_storeStrong(&v18->_visualComponentPresentationContext, presentationContext);
    objc_storeStrong(&v18->_userInteractionDetected, detected);
  }

  return v18;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageViewStarted" number:1 type:14 subMessageClass:objc_opt_class()];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dimensionContext" number:2 type:14 subMessageClass:objc_opt_class()];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bloomFilterPassed" number:3 type:14 subMessageClass:objc_opt_class()];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eligible" number:4 type:14 subMessageClass:objc_opt_class()];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageUrlSent" number:5 type:14 subMessageClass:objc_opt_class()];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serverRequestContext" number:6 type:14 subMessageClass:objc_opt_class()];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponentPresentationContext" number:7 type:14 subMessageClass:objc_opt_class()];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInteractionDetected" number:8 type:14 subMessageClass:objc_opt_class()];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"webpageViewStarted_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1028];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dimensionContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1030];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bloomFilterPassed_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1032];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"eligible_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1034];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"webpageUrlSent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1036];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"serverRequestContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1038];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponentPresentationContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1040];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userInteractionDetected_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1042];
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

id __36__BMSafariBrowsingAssistant_columns__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 userInteractionDetected];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMSafariBrowsingAssistant_columns__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 visualComponentPresentationContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMSafariBrowsingAssistant_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 serverRequestContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMSafariBrowsingAssistant_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 webpageUrlSent];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMSafariBrowsingAssistant_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 eligible];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMSafariBrowsingAssistant_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 bloomFilterPassed];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMSafariBrowsingAssistant_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 dimensionContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMSafariBrowsingAssistant_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 webpageViewStarted];
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

    v8 = [[BMSafariBrowsingAssistant alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end