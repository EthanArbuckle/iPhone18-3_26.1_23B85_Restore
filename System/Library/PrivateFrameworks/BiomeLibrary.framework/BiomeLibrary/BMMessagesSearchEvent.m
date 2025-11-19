@interface BMMessagesSearchEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSearchEvent)initWithDimensionContext:(id)a3 inputDetected:(id)a4 userInteractionDetected:(id)a5 displayContext:(id)a6 searchViewContext:(id)a7 resultReceived:(id)a8 messagesAppViewContext:(id)a9 sessionIdResetContext:(id)a10;
- (BMMessagesSearchEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSearchEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMessagesSearchEvent *)self dimensionContext];
    v7 = [v5 dimensionContext];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMessagesSearchEvent *)self dimensionContext];
      v10 = [v5 dimensionContext];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    v13 = [(BMMessagesSearchEvent *)self inputDetected];
    v14 = [v5 inputDetected];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMessagesSearchEvent *)self inputDetected];
      v17 = [v5 inputDetected];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = [(BMMessagesSearchEvent *)self userInteractionDetected];
    v20 = [v5 userInteractionDetected];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMMessagesSearchEvent *)self userInteractionDetected];
      v23 = [v5 userInteractionDetected];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    v25 = [(BMMessagesSearchEvent *)self displayContext];
    v26 = [v5 displayContext];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMMessagesSearchEvent *)self displayContext];
      v29 = [v5 displayContext];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    v31 = [(BMMessagesSearchEvent *)self searchViewContext];
    v32 = [v5 searchViewContext];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMMessagesSearchEvent *)self searchViewContext];
      v35 = [v5 searchViewContext];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    v37 = [(BMMessagesSearchEvent *)self resultReceived];
    v38 = [v5 resultReceived];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMMessagesSearchEvent *)self resultReceived];
      v41 = [v5 resultReceived];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    v43 = [(BMMessagesSearchEvent *)self messagesAppViewContext];
    v44 = [v5 messagesAppViewContext];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMMessagesSearchEvent *)self messagesAppViewContext];
      v47 = [v5 messagesAppViewContext];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
LABEL_29:
        v12 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v50 = [(BMMessagesSearchEvent *)self sessionIdResetContext];
    v51 = [v5 sessionIdResetContext];
    if (v50 == v51)
    {
      v12 = 1;
    }

    else
    {
      v52 = [(BMMessagesSearchEvent *)self sessionIdResetContext];
      v53 = [v5 sessionIdResetContext];
      v12 = [v52 isEqual:v53];
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
  v3 = [(BMMessagesSearchEvent *)self dimensionContext];
  v4 = [v3 jsonDictionary];

  v5 = [(BMMessagesSearchEvent *)self inputDetected];
  v6 = [v5 jsonDictionary];

  v7 = [(BMMessagesSearchEvent *)self userInteractionDetected];
  v8 = [v7 jsonDictionary];

  v9 = [(BMMessagesSearchEvent *)self displayContext];
  v10 = [v9 jsonDictionary];

  v11 = [(BMMessagesSearchEvent *)self searchViewContext];
  v12 = [v11 jsonDictionary];

  v13 = [(BMMessagesSearchEvent *)self resultReceived];
  v14 = [v13 jsonDictionary];

  v15 = [(BMMessagesSearchEvent *)self messagesAppViewContext];
  v16 = [v15 jsonDictionary];

  v17 = [(BMMessagesSearchEvent *)self sessionIdResetContext];
  v18 = [v17 jsonDictionary];

  v37[0] = @"dimensionContext";
  v19 = v4;
  if (!v4)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v19;
  v38[0] = v19;
  v37[1] = @"inputDetected";
  v20 = v6;
  if (!v6)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v4;
  v31 = v20;
  v38[1] = v20;
  v37[2] = @"userInteractionDetected";
  v21 = v8;
  if (!v8)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v6;
  v30 = v21;
  v38[2] = v21;
  v37[3] = @"displayContext";
  v22 = v10;
  if (!v10)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v8;
  v38[3] = v22;
  v37[4] = @"searchViewContext";
  v23 = v12;
  if (!v12)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v10;
  v38[4] = v23;
  v37[5] = @"resultReceived";
  v24 = v14;
  if (!v14)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v38[5] = v24;
  v37[6] = @"messagesAppViewContext";
  v25 = v16;
  if (!v16)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v38[6] = v25;
  v37[7] = @"sessionIdResetContext";
  v26 = v18;
  if (!v18)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v38[7] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:8];
  if (v18)
  {
    if (v16)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v16)
    {
      goto LABEL_19;
    }
  }

LABEL_19:
  if (!v14)
  {
  }

  if (!v12)
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

- (BMMessagesSearchEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v133[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"dimensionContext"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"inputDetected"];
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
      v10 = [[BMMessagesSearchEventInputDetected alloc] initWithJSONDictionary:v11 error:&v116];
      v26 = v116;
      if (!v26)
      {

LABEL_7:
        v107 = v10;
        v11 = [v6 objectForKeyedSubscript:@"userInteractionDetected"];
        v108 = a4;
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v106 = 0;
LABEL_10:
          v12 = [v6 objectForKeyedSubscript:@"displayContext"];
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
            v105 = [[BMMessagesSearchEventDisplayContext alloc] initWithJSONDictionary:v35 error:&v114];
            v36 = v114;
            if (v36)
            {
              v103 = v35;
              v27 = v106;
              if (v108)
              {
                v36 = v36;
                *v108 = v36;
              }

              v24 = 0;
              v23 = v107;
              goto LABEL_98;
            }

            v100 = v9;
            v13 = v12;

LABEL_13:
            v14 = [v6 objectForKeyedSubscript:@"searchViewContext"];
            v103 = v14;
            if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v101 = 0;
LABEL_16:
              v12 = v13;
              v16 = [v6 objectForKeyedSubscript:@"resultReceived"];
              v9 = v100;
              v98 = v16;
              if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!v108)
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
                  v70 = self;
                  v71 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v87 = objc_opt_class();
                  v72 = v71;
                  self = v70;
                  v8 = v69;
                  v23 = v107;
                  v96 = [v72 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v87, @"resultReceived"];
                  v123 = v96;
                  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
                  v74 = v95;
                  v94 = v73;
                  v75 = [v68 initWithDomain:v74 code:2 userInfo:?];
                  v24 = 0;
                  *v108 = v75;
                  goto LABEL_95;
                }

                v51 = v17;
                v112 = 0;
                v96 = [[BMMessagesSearchEventResultReceived alloc] initWithJSONDictionary:v51 error:&v112];
                v52 = v112;
                if (v52)
                {
                  v94 = v51;
                  v27 = v106;
                  if (v108)
                  {
                    v52 = v52;
                    *v108 = v52;
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

              v18 = [v6 objectForKeyedSubscript:@"messagesAppViewContext"];
              v94 = v18;
              if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!v108)
                  {
                    v24 = 0;
                    v23 = v107;
                    goto LABEL_95;
                  }

                  v76 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v90 = *MEMORY[0x1E698F240];
                  v120 = *MEMORY[0x1E696A578];
                  v77 = v8;
                  v78 = self;
                  v79 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v88 = objc_opt_class();
                  v80 = v79;
                  self = v78;
                  v8 = v77;
                  v23 = v107;
                  v93 = [v80 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v88, @"messagesAppViewContext"];
                  v121 = v93;
                  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                  v81 = [v76 initWithDomain:v90 code:2 userInfo:v21];
                  v24 = 0;
                  *v108 = v81;
LABEL_94:

LABEL_95:
                  v27 = v106;
LABEL_96:

                  goto LABEL_97;
                }

                v21 = v19;
                v111 = 0;
                v93 = [[BMMessagesSearchEventMessagesAppViewContext alloc] initWithJSONDictionary:v21 error:&v111];
                v60 = v111;
                if (v60)
                {
                  if (v108)
                  {
                    v60 = v60;
                    *v108 = v60;
                  }

                  v24 = 0;
                  goto LABEL_111;
                }

                v92 = v8;
                v20 = self;
              }

              else
              {
                v92 = v8;
                v93 = 0;
                v20 = self;
              }

              v21 = [v6 objectForKeyedSubscript:@"sessionIdResetContext"];
              if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v22 = 0;
LABEL_25:
                v23 = v107;
                v24 = [(BMMessagesSearchEvent *)v20 initWithDimensionContext:v92 inputDetected:v107 userInteractionDetected:v106 displayContext:v105 searchViewContext:v101 resultReceived:v96 messagesAppViewContext:v93 sessionIdResetContext:v22];
                v20 = v24;
LABEL_93:

                self = v20;
                v8 = v92;
                goto LABEL_94;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v66 = v21;
                v110 = 0;
                v22 = [[BMMessagesSearchEventSessionIdResetContext alloc] initWithJSONDictionary:v66 error:&v110];
                v67 = v110;
                if (!v67)
                {

                  goto LABEL_25;
                }

                if (v108)
                {
                  v67 = v67;
                  *v108 = v67;
                }

LABEL_92:
                v24 = 0;
                v23 = v107;
                goto LABEL_93;
              }

              if (v108)
              {
                v91 = objc_alloc(MEMORY[0x1E696ABC0]);
                v89 = *MEMORY[0x1E698F240];
                v118 = *MEMORY[0x1E696A578];
                v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"sessionIdResetContext"];
                v119 = v22;
                v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
                *v108 = [v91 initWithDomain:v89 code:2 userInfo:v66];
                goto LABEL_92;
              }

              v24 = 0;
              self = v20;
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
              v101 = [[BMMessagesSearchEventSearchViewContext alloc] initWithJSONDictionary:v42 error:&v113];
              v43 = v113;
              if (!v43)
              {

                goto LABEL_16;
              }

              v98 = v42;
              v27 = v106;
              v12 = v13;
              if (v108)
              {
                v43 = v43;
                *v108 = v43;
              }

              v24 = 0;
              v23 = v107;
            }

            else
            {
              if (!v108)
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
              v61 = self;
              v62 = objc_alloc(MEMORY[0x1E696AEC0]);
              v86 = objc_opt_class();
              v63 = v62;
              self = v61;
              v23 = v107;
              v101 = [v63 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v86, @"searchViewContext"];
              v125 = v101;
              v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
              v65 = v99;
              v98 = v64;
              v24 = 0;
              *v108 = [v65 initWithDomain:v97 code:2 userInfo:?];
              v27 = v106;
              v12 = v13;
            }

            v9 = v100;
LABEL_97:

            goto LABEL_98;
          }

          if (v108)
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
            v105 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v85, @"displayContext"];
            v127 = v105;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
            v58 = v104;
            v103 = v57;
            v59 = [v53 initWithDomain:v58 code:2 userInfo:?];
            v24 = 0;
            *v108 = v59;
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
          v27 = [[BMMessagesSearchEventUserInteractionDetected alloc] initWithJSONDictionary:v12 error:&v115];
          v28 = v115;
          if (v28)
          {
            if (v108)
            {
              v28 = v28;
              *v108 = v28;
            }

            v24 = 0;
            v23 = v107;
            goto LABEL_99;
          }

          v106 = v27;

          goto LABEL_10;
        }

        if (a4)
        {
          v102 = self;
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v128 = *MEMORY[0x1E696A578];
          v46 = v8;
          v47 = objc_alloc(MEMORY[0x1E696AEC0]);
          v84 = objc_opt_class();
          v48 = v47;
          v8 = v46;
          v23 = v10;
          v27 = [v48 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v84, @"userInteractionDetected"];
          v129 = v27;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
          v49 = v44;
          self = v102;
          v50 = [v49 initWithDomain:v45 code:2 userInfo:v12];
          v24 = 0;
          *v108 = v50;
          goto LABEL_99;
        }

        v24 = 0;
        v23 = v10;
LABEL_100:

        goto LABEL_101;
      }

      if (a4)
      {
        v26 = v26;
        *a4 = v26;
      }

      v24 = 0;
LABEL_50:
      v23 = v10;
      goto LABEL_100;
    }

    if (a4)
    {
      v109 = a4;
      v37 = self;
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v130 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"inputDetected"];
      v131 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
      v40 = v38;
      self = v37;
      v41 = [v40 initWithDomain:v39 code:2 userInfo:v11];
      v24 = 0;
      *v109 = v41;
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
    v8 = [[BMMessagesSearchEventDimensionContext alloc] initWithJSONDictionary:v9 error:&v117];
    v25 = v117;
    if (v25)
    {
      if (a4)
      {
        v25 = v25;
        *a4 = v25;
      }

      v24 = 0;
      goto LABEL_101;
    }

    goto LABEL_4;
  }

  if (a4)
  {
    v29 = self;
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31 = *MEMORY[0x1E698F240];
    v132 = *MEMORY[0x1E696A578];
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dimensionContext"];
    v133[0] = v32;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:&v132 count:1];
    v33 = v30;
    self = v29;
    v8 = v32;
    v34 = [v33 initWithDomain:v31 code:2 userInfo:v9];
    v24 = 0;
    *a4 = v34;
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
  [(BMMessagesSearchEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_dimensionContext)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventDimensionContext *)self->_dimensionContext writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_inputDetected)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventInputDetected *)self->_inputDetected writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_userInteractionDetected)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventUserInteractionDetected *)self->_userInteractionDetected writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_displayContext)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventDisplayContext *)self->_displayContext writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_searchViewContext)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventSearchViewContext *)self->_searchViewContext writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_resultReceived)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventResultReceived *)self->_resultReceived writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_messagesAppViewContext)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventMessagesAppViewContext *)self->_messagesAppViewContext writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_sessionIdResetContext)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventSessionIdResetContext *)self->_sessionIdResetContext writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BMMessagesSearchEvent;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_60;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v23) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v23 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

            v16 = [[BMMessagesSearchEventMessagesAppViewContext alloc] initByReadFrom:v4];
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

            v16 = [[BMMessagesSearchEventSessionIdResetContext alloc] initByReadFrom:v4];
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

            v16 = [[BMMessagesSearchEventSearchViewContext alloc] initByReadFrom:v4];
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

            v16 = [[BMMessagesSearchEventResultReceived alloc] initByReadFrom:v4];
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

          v16 = [[BMMessagesSearchEventUserInteractionDetected alloc] initByReadFrom:v4];
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

          v16 = [[BMMessagesSearchEventDisplayContext alloc] initByReadFrom:v4];
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

          v16 = [[BMMessagesSearchEventDimensionContext alloc] initByReadFrom:v4];
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

          v16 = [[BMMessagesSearchEventInputDetected alloc] initByReadFrom:v4];
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
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMMessagesSearchEvent *)self dimensionContext];
  v5 = [(BMMessagesSearchEvent *)self inputDetected];
  v6 = [(BMMessagesSearchEvent *)self userInteractionDetected];
  v7 = [(BMMessagesSearchEvent *)self displayContext];
  v8 = [(BMMessagesSearchEvent *)self searchViewContext];
  v9 = [(BMMessagesSearchEvent *)self resultReceived];
  v10 = [(BMMessagesSearchEvent *)self messagesAppViewContext];
  v11 = [(BMMessagesSearchEvent *)self sessionIdResetContext];
  v12 = [v3 initWithFormat:@"BMMessagesSearchEvent with dimensionContext: %@, inputDetected: %@, userInteractionDetected: %@, displayContext: %@, searchViewContext: %@, resultReceived: %@, messagesAppViewContext: %@, sessionIdResetContext: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMMessagesSearchEvent)initWithDimensionContext:(id)a3 inputDetected:(id)a4 userInteractionDetected:(id)a5 displayContext:(id)a6 searchViewContext:(id)a7 resultReceived:(id)a8 messagesAppViewContext:(id)a9 sessionIdResetContext:(id)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a8;
  v20 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = BMMessagesSearchEvent;
  v18 = [(BMEventBase *)&v27 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_dimensionContext, a3);
    objc_storeStrong(&v18->_inputDetected, a4);
    objc_storeStrong(&v18->_userInteractionDetected, a5);
    objc_storeStrong(&v18->_displayContext, a6);
    objc_storeStrong(&v18->_searchViewContext, a7);
    objc_storeStrong(&v18->_resultReceived, a8);
    objc_storeStrong(&v18->_messagesAppViewContext, a9);
    objc_storeStrong(&v18->_sessionIdResetContext, a10);
  }

  return v18;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dimensionContext" number:1 type:14 subMessageClass:objc_opt_class()];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inputDetected" number:2 type:14 subMessageClass:objc_opt_class()];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInteractionDetected" number:3 type:14 subMessageClass:objc_opt_class()];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayContext" number:4 type:14 subMessageClass:objc_opt_class()];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"searchViewContext" number:5 type:14 subMessageClass:objc_opt_class()];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resultReceived" number:6 type:14 subMessageClass:objc_opt_class()];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messagesAppViewContext" number:7 type:14 subMessageClass:objc_opt_class()];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionIdResetContext" number:8 type:14 subMessageClass:objc_opt_class()];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dimensionContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1122];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"inputDetected_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1124];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"userInteractionDetected_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1126];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"displayContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1128];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"searchViewContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1130];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"resultReceived_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1132];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"messagesAppViewContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1134];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"sessionIdResetContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1136];
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

id __32__BMMessagesSearchEvent_columns__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 sessionIdResetContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMMessagesSearchEvent_columns__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 messagesAppViewContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMMessagesSearchEvent_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 resultReceived];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMMessagesSearchEvent_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 searchViewContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMMessagesSearchEvent_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 displayContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMMessagesSearchEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 userInteractionDetected];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMMessagesSearchEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 inputDetected];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMMessagesSearchEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 dimensionContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMMessagesSearchEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end