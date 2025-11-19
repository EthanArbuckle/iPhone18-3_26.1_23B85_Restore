@interface BMIntelligenceEngineInteractionCandidateType
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligenceEngineInteractionCandidateType)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMIntelligenceEngineInteractionCandidateType)initWithUnknown:(id)a3 primitive:(id)a4 device:(id)a5 schema:(id)a6 tool:(id)a7 app:(id)a8 file:(id)a9 person:(id)a10 placemark:(id)a11 custom:(id)a12;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligenceEngineInteractionCandidateType

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligenceEngineInteractionCandidateType *)self unknown];
    v7 = [v5 unknown];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMIntelligenceEngineInteractionCandidateType *)self unknown];
      v10 = [v5 unknown];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_37;
      }
    }

    v13 = [(BMIntelligenceEngineInteractionCandidateType *)self primitive];
    v14 = [v5 primitive];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMIntelligenceEngineInteractionCandidateType *)self primitive];
      v17 = [v5 primitive];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_37;
      }
    }

    v19 = [(BMIntelligenceEngineInteractionCandidateType *)self device];
    v20 = [v5 device];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMIntelligenceEngineInteractionCandidateType *)self device];
      v23 = [v5 device];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_37;
      }
    }

    v25 = [(BMIntelligenceEngineInteractionCandidateType *)self schema];
    v26 = [v5 schema];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMIntelligenceEngineInteractionCandidateType *)self schema];
      v29 = [v5 schema];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_37;
      }
    }

    v31 = [(BMIntelligenceEngineInteractionCandidateType *)self tool];
    v32 = [v5 tool];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMIntelligenceEngineInteractionCandidateType *)self tool];
      v35 = [v5 tool];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_37;
      }
    }

    v37 = [(BMIntelligenceEngineInteractionCandidateType *)self app];
    v38 = [v5 app];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMIntelligenceEngineInteractionCandidateType *)self app];
      v41 = [v5 app];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_37;
      }
    }

    v43 = [(BMIntelligenceEngineInteractionCandidateType *)self file];
    v44 = [v5 file];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMIntelligenceEngineInteractionCandidateType *)self file];
      v47 = [v5 file];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_37;
      }
    }

    v49 = [(BMIntelligenceEngineInteractionCandidateType *)self person];
    v50 = [v5 person];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMIntelligenceEngineInteractionCandidateType *)self person];
      v53 = [v5 person];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_37;
      }
    }

    v55 = [(BMIntelligenceEngineInteractionCandidateType *)self placemark];
    v56 = [v5 placemark];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMIntelligenceEngineInteractionCandidateType *)self placemark];
      v59 = [v5 placemark];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
LABEL_37:
        v12 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    v62 = [(BMIntelligenceEngineInteractionCandidateType *)self custom];
    v63 = [v5 custom];
    if (v62 == v63)
    {
      v12 = 1;
    }

    else
    {
      v64 = [(BMIntelligenceEngineInteractionCandidateType *)self custom];
      v65 = [v5 custom];
      v12 = [v64 isEqual:v65];
    }

    goto LABEL_38;
  }

  v12 = 0;
LABEL_39:

  return v12;
}

- (id)jsonDictionary
{
  v49[10] = *MEMORY[0x1E69E9840];
  v3 = [(BMIntelligenceEngineInteractionCandidateType *)self unknown];
  v4 = [v3 jsonDictionary];

  v5 = [(BMIntelligenceEngineInteractionCandidateType *)self primitive];
  v6 = [v5 jsonDictionary];

  v7 = [(BMIntelligenceEngineInteractionCandidateType *)self device];
  v8 = [v7 jsonDictionary];

  v9 = [(BMIntelligenceEngineInteractionCandidateType *)self schema];
  v10 = [v9 jsonDictionary];

  v11 = [(BMIntelligenceEngineInteractionCandidateType *)self tool];
  v12 = [v11 jsonDictionary];

  v13 = [(BMIntelligenceEngineInteractionCandidateType *)self app];
  v14 = [v13 jsonDictionary];

  v15 = [(BMIntelligenceEngineInteractionCandidateType *)self file];
  v16 = [v15 jsonDictionary];

  v17 = [(BMIntelligenceEngineInteractionCandidateType *)self person];
  v47 = [v17 jsonDictionary];

  v18 = [(BMIntelligenceEngineInteractionCandidateType *)self placemark];
  v19 = [v18 jsonDictionary];

  v20 = [(BMIntelligenceEngineInteractionCandidateType *)self custom];
  v21 = [v20 jsonDictionary];

  v48[0] = @"unknown";
  v22 = v4;
  if (!v4)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v22;
  v49[0] = v22;
  v48[1] = @"primitive";
  v23 = v6;
  if (!v6)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v23;
  v49[1] = v23;
  v48[2] = @"device";
  v24 = v8;
  if (!v8)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v4;
  v39 = v24;
  v49[2] = v24;
  v48[3] = @"schema";
  v25 = v10;
  if (!v10)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v6;
  v38 = v25;
  v49[3] = v25;
  v48[4] = @"tool";
  v26 = v12;
  if (!v12)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v8;
  v37 = v26;
  v49[4] = v26;
  v48[5] = @"app";
  v27 = v14;
  if (!v14)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v10;
  v49[5] = v27;
  v48[6] = @"file";
  v28 = v16;
  if (!v16)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v16;
  v30 = v12;
  v49[6] = v28;
  v48[7] = @"person";
  v31 = v47;
  if (!v47)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v14;
  v49[7] = v31;
  v48[8] = @"placemark";
  v33 = v19;
  if (!v19)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v49[8] = v33;
  v48[9] = @"custom";
  v34 = v21;
  if (!v21)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v49[9] = v34;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:10];
  if (v21)
  {
    if (v19)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v19)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (!v47)
  {
  }

  if (!v29)
  {
  }

  if (!v32)
  {
  }

  if (!v30)
  {
  }

  if (!v43)
  {
  }

  if (v44)
  {
    if (v45)
    {
      goto LABEL_35;
    }

LABEL_42:

    if (v46)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  if (!v45)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (v46)
  {
    goto LABEL_36;
  }

LABEL_43:

LABEL_36:
  v35 = *MEMORY[0x1E69E9840];

  return v42;
}

- (BMIntelligenceEngineInteractionCandidateType)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v168[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"unknown"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v138 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v148 = 0;
    v138 = [[BMIntelligenceEngineInteractionEmpty alloc] initWithJSONDictionary:v8 error:&v148];
    v29 = v148;
    if (v29)
    {
      if (a4)
      {
        v29 = v29;
        *a4 = v29;
      }

LABEL_63:
      v27 = 0;
      v28 = v138;
      goto LABEL_82;
    }

LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"primitive"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"device"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v9;
        v134 = 0;
        goto LABEL_10;
      }

      v129 = v7;
      v11 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v10;
        v146 = 0;
        v134 = [[BMIntelligenceEngineInteractionDeviceType alloc] initWithJSONDictionary:v31 error:&v146];
        v32 = v146;
        if (v32)
        {
          v136 = v31;
          v28 = v138;
          if (a4)
          {
            v32 = v32;
            *a4 = v32;
          }

          v27 = 0;
          v26 = v134;
          goto LABEL_80;
        }

LABEL_10:
        v12 = [v6 objectForKeyedSubscript:@"schema"];
        v136 = v12;
        if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v133 = 0;
LABEL_13:
          [v6 objectForKeyedSubscript:@"tool"];
          v14 = v9 = v11;
          v127 = v10;
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v27 = 0;
                v26 = v134;
                v28 = v138;
                goto LABEL_79;
              }

              v124 = objc_alloc(MEMORY[0x1E696ABC0]);
              v64 = *MEMORY[0x1E698F240];
              v159 = *MEMORY[0x1E696A578];
              v121 = v8;
              v65 = self;
              v66 = objc_alloc(MEMORY[0x1E696AEC0]);
              v105 = objc_opt_class();
              v67 = v66;
              self = v65;
              v125 = [v67 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v105, @"tool"];
              v160 = v125;
              v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
              v69 = v124;
              v70 = v64;
              v28 = v138;
              v122 = v68;
              v27 = 0;
              *a4 = [v69 initWithDomain:v70 code:2 userInfo:?];
              v8 = v121;
              v26 = v134;
              goto LABEL_38;
            }

            v48 = v14;
            v144 = 0;
            v125 = [[BMIntelligenceEngineInteractionToolType alloc] initWithJSONDictionary:v48 error:&v144];
            v49 = v144;
            if (v49)
            {
              v122 = v48;
              if (a4)
              {
                v49 = v49;
                *a4 = v49;
              }

              v27 = 0;
              goto LABEL_126;
            }
          }

          else
          {
            v125 = 0;
          }

          v15 = [v6 objectForKeyedSubscript:@"app"];
          v122 = v15;
          if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v120 = 0;
            goto LABEL_19;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = v16;
            v143 = 0;
            v120 = [[BMIntelligenceEngineInteractionAppType alloc] initWithJSONDictionary:v53 error:&v143];
            v54 = v143;
            if (v54)
            {
              v118 = v53;
              if (a4)
              {
                v54 = v54;
                *a4 = v54;
              }

              v27 = 0;
              goto LABEL_131;
            }

LABEL_19:
            v17 = [v6 objectForKeyedSubscript:@"file"];
            v118 = v17;
            if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v117 = 0;
              goto LABEL_22;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v62 = v18;
              v142 = 0;
              v117 = [[BMIntelligenceEngineInteractionFileType alloc] initWithJSONDictionary:v62 error:&v142];
              v63 = v142;
              if (v63)
              {
                v115 = v62;
                if (a4)
                {
                  v63 = v63;
                  *a4 = v63;
                }

                v27 = 0;
                goto LABEL_134;
              }

LABEL_22:
              v19 = [v6 objectForKeyedSubscript:@"person"];
              v115 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v114 = 0;
LABEL_25:
                v21 = [v6 objectForKeyedSubscript:@"placemark"];
                v112 = v21;
                if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v23 = self;
                  v128 = 0;
LABEL_28:
                  v24 = [v6 objectForKeyedSubscript:@"custom"];
                  if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v25 = 0;
LABEL_31:
                    v26 = v134;
                    v27 = [(BMIntelligenceEngineInteractionCandidateType *)v23 initWithUnknown:v138 primitive:v9 device:v134 schema:v133 tool:v125 app:v120 file:v117 person:v114 placemark:v128 custom:v25];
                    v23 = v27;
LABEL_32:

LABEL_33:
                    v28 = v138;
LABEL_34:

                    self = v23;
                    v10 = v127;
LABEL_35:

LABEL_36:
LABEL_37:

LABEL_38:
LABEL_79:

                    goto LABEL_80;
                  }

                  v111 = v14;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v90 = v24;
                    v139 = 0;
                    v25 = [[BMIntelligenceEngineInteractionCustomType alloc] initWithJSONDictionary:v90 error:&v139];
                    v91 = v139;
                    if (v91)
                    {
                      if (a4)
                      {
                        v91 = v91;
                        *a4 = v91;
                      }

                      v27 = 0;
                      v26 = v134;
                      goto LABEL_32;
                    }

                    goto LABEL_31;
                  }

                  if (a4)
                  {
                    v110 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v109 = *MEMORY[0x1E698F240];
                    v149 = *MEMORY[0x1E696A578];
                    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"custom"];
                    v150 = v25;
                    v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
                    *a4 = [v110 initWithDomain:v109 code:2 userInfo:v103];

                    v27 = 0;
                    v26 = v134;
                    goto LABEL_32;
                  }

                  v27 = 0;
                  v28 = v138;
LABEL_140:
                  v26 = v134;
                  v14 = v111;
                  goto LABEL_34;
                }

                v111 = v14;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = self;
                  v24 = v22;
                  v140 = 0;
                  v128 = [[BMIntelligenceEngineInteractionPlacemarkType alloc] initWithJSONDictionary:v24 error:&v140];
                  v81 = v140;
                  if (v81)
                  {
                    if (a4)
                    {
                      v81 = v81;
                      *a4 = v81;
                    }

                    v27 = 0;
                    v26 = v134;
                    goto LABEL_33;
                  }

                  goto LABEL_28;
                }

                if (a4)
                {
                  v23 = self;
                  v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v101 = *MEMORY[0x1E698F240];
                  v151 = *MEMORY[0x1E696A578];
                  v128 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"placemark"];
                  v152 = v128;
                  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
                  v102 = [v100 initWithDomain:v101 code:2 userInfo:v24];
                  v27 = 0;
                  *a4 = v102;
                  v28 = v138;
                  goto LABEL_140;
                }

                v27 = 0;
                v28 = v138;
LABEL_137:
                v26 = v134;
                goto LABEL_35;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v71 = v20;
                v141 = 0;
                v114 = [[BMIntelligenceEngineInteractionPersonType alloc] initWithJSONDictionary:v71 error:&v141];
                v72 = v141;
                if (v72)
                {
                  v112 = v71;
                  v10 = v127;
                  if (a4)
                  {
                    v72 = v72;
                    *a4 = v72;
                  }

                  v27 = 0;
                  v26 = v134;
                  v28 = v138;
                  goto LABEL_35;
                }

                v10 = v127;
                goto LABEL_25;
              }

              if (a4)
              {
                v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                v92 = *MEMORY[0x1E698F240];
                v153 = *MEMORY[0x1E696A578];
                v132 = v7;
                v93 = v8;
                v94 = self;
                v95 = objc_alloc(MEMORY[0x1E696AEC0]);
                v108 = objc_opt_class();
                v96 = v95;
                self = v94;
                v114 = [v96 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v108, @"person"];
                v154 = v114;
                v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
                v98 = v113;
                v99 = v92;
                v28 = v138;
                v112 = v97;
                v27 = 0;
                *a4 = [v98 initWithDomain:v99 code:2 userInfo:?];
                v8 = v93;
                v7 = v132;
                goto LABEL_137;
              }

              v27 = 0;
LABEL_134:
              v26 = v134;
              v28 = v138;
              goto LABEL_36;
            }

            if (a4)
            {
              v116 = objc_alloc(MEMORY[0x1E696ABC0]);
              v82 = *MEMORY[0x1E698F240];
              v155 = *MEMORY[0x1E696A578];
              v131 = v7;
              v83 = v8;
              v84 = self;
              v85 = objc_alloc(MEMORY[0x1E696AEC0]);
              v107 = objc_opt_class();
              v86 = v85;
              self = v84;
              v117 = [v86 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v107, @"file"];
              v156 = v117;
              v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
              v88 = v116;
              v89 = v82;
              v28 = v138;
              v115 = v87;
              v27 = 0;
              *a4 = [v88 initWithDomain:v89 code:2 userInfo:?];
              v8 = v83;
              v7 = v131;
              v26 = v134;
              goto LABEL_36;
            }

            v27 = 0;
LABEL_131:
            v26 = v134;
            v28 = v138;
            goto LABEL_37;
          }

          if (a4)
          {
            v119 = objc_alloc(MEMORY[0x1E696ABC0]);
            v73 = *MEMORY[0x1E698F240];
            v157 = *MEMORY[0x1E696A578];
            v130 = v7;
            v74 = v8;
            v75 = self;
            v76 = objc_alloc(MEMORY[0x1E696AEC0]);
            v106 = objc_opt_class();
            v77 = v76;
            self = v75;
            v120 = [v77 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v106, @"app"];
            v158 = v120;
            v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
            v79 = v119;
            v80 = v73;
            v28 = v138;
            v118 = v78;
            v27 = 0;
            *a4 = [v79 initWithDomain:v80 code:2 userInfo:?];
            v8 = v74;
            v7 = v130;
            v26 = v134;
            goto LABEL_37;
          }

          v27 = 0;
LABEL_126:
          v26 = v134;
          v28 = v138;
          goto LABEL_38;
        }

        v126 = self;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v13;
          v145 = 0;
          v133 = [[BMIntelligenceEngineInteractionSchemaType alloc] initWithJSONDictionary:v39 error:&v145];
          v40 = v145;
          if (!v40)
          {

            goto LABEL_13;
          }

          v41 = v39;
          if (a4)
          {
            v40 = v40;
            *a4 = v40;
          }

          v27 = 0;
        }

        else
        {
          if (!a4)
          {
            v27 = 0;
            v28 = v138;
            v26 = v134;
            v9 = v11;
            goto LABEL_80;
          }

          v123 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v161 = *MEMORY[0x1E696A578];
          v56 = a4;
          v57 = v10;
          v58 = objc_alloc(MEMORY[0x1E696AEC0]);
          v104 = objc_opt_class();
          v59 = v58;
          v10 = v57;
          v133 = [v59 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v104, @"schema"];
          v162 = v133;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
          v27 = 0;
          *v56 = [v123 initWithDomain:v55 code:2 userInfo:v41];
        }

        v28 = v138;
        v26 = v134;
        v9 = v11;
        v14 = v41;
        self = v126;
        goto LABEL_79;
      }

      if (a4)
      {
        v50 = a4;
        v137 = objc_alloc(MEMORY[0x1E696ABC0]);
        v135 = *MEMORY[0x1E698F240];
        v163 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"device"];
        v164 = v26;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
        v52 = v137;
        v136 = v51;
        v27 = 0;
        *v50 = [v52 initWithDomain:v135 code:2 userInfo:?];
        v28 = v138;
LABEL_80:

LABEL_81:
        goto LABEL_82;
      }

      v27 = 0;
      v28 = v138;
LABEL_103:
      v7 = v129;
      goto LABEL_81;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v147 = 0;
      v9 = [[BMIntelligenceEngineInteractionEmpty alloc] initWithJSONDictionary:v10 error:&v147];
      v30 = v147;
      if (v30)
      {
        if (a4)
        {
          v30 = v30;
          *a4 = v30;
        }

        v27 = 0;
        v28 = v138;
        goto LABEL_81;
      }

      goto LABEL_7;
    }

    if (a4)
    {
      v42 = self;
      v43 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = *MEMORY[0x1E698F240];
      v165 = *MEMORY[0x1E696A578];
      v129 = v7;
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"primitive"];
      v166 = v45;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
      v46 = v43;
      self = v42;
      v9 = v45;
      v47 = v44;
      v28 = v138;
      v27 = 0;
      *a4 = [v46 initWithDomain:v47 code:2 userInfo:v10];
      goto LABEL_103;
    }

    goto LABEL_63;
  }

  if (!a4)
  {
    v27 = 0;
    goto LABEL_83;
  }

  v33 = self;
  v34 = objc_alloc(MEMORY[0x1E696ABC0]);
  v35 = *MEMORY[0x1E698F240];
  v167 = *MEMORY[0x1E696A578];
  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"unknown"];
  v168[0] = v36;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v168 forKeys:&v167 count:1];
  v37 = v34;
  self = v33;
  v38 = v35;
  v28 = v36;
  v27 = 0;
  *a4 = [v37 initWithDomain:v38 code:2 userInfo:v8];
LABEL_82:

LABEL_83:
  v60 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceEngineInteractionCandidateType *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_unknown)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionEmpty *)self->_unknown writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_primitive)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionEmpty *)self->_primitive writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_device)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionDeviceType *)self->_device writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_schema)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionSchemaType *)self->_schema writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_tool)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionToolType *)self->_tool writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_app)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionAppType *)self->_app writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_file)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionFileType *)self->_file writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_person)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionPersonType *)self->_person writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_placemark)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionPlacemarkType *)self->_placemark writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_custom)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionCustomType *)self->_custom writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BMIntelligenceEngineInteractionCandidateType;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_68;
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
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionAppType alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 64;
            goto LABEL_61;
          }

          if (v15 == 7)
          {
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionFileType alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 72;
            goto LABEL_61;
          }
        }

        else
        {
          switch(v15)
          {
            case 8:
              v23 = 0;
              v24 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_67;
              }

              v16 = [[BMIntelligenceEngineInteractionPersonType alloc] initByReadFrom:v4];
              if (!v16)
              {
                goto LABEL_67;
              }

              v17 = 80;
              goto LABEL_61;
            case 9:
              v23 = 0;
              v24 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_67;
              }

              v16 = [[BMIntelligenceEngineInteractionPlacemarkType alloc] initByReadFrom:v4];
              if (!v16)
              {
                goto LABEL_67;
              }

              v17 = 88;
              goto LABEL_61;
            case 0xA:
              v23 = 0;
              v24 = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_67;
              }

              v16 = [[BMIntelligenceEngineInteractionCustomType alloc] initByReadFrom:v4];
              if (!v16)
              {
                goto LABEL_67;
              }

              v17 = 96;
              goto LABEL_61;
          }
        }
      }

      else if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_67;
          }

          v16 = [[BMIntelligenceEngineInteractionEmpty alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_67;
          }

          v17 = 24;
          goto LABEL_61;
        }

        if (v15 == 2)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_67;
          }

          v16 = [[BMIntelligenceEngineInteractionEmpty alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_67;
          }

          v17 = 32;
          goto LABEL_61;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionDeviceType alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 40;
            goto LABEL_61;
          case 4:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionSchemaType alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 48;
            goto LABEL_61;
          case 5:
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v16 = [[BMIntelligenceEngineInteractionToolType alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_67;
            }

            v17 = 56;
LABEL_61:
            v18 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            PBReaderRecallMark();
            goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_62:
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_67:
    v20 = 0;
  }

  else
  {
LABEL_68:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(BMIntelligenceEngineInteractionCandidateType *)self unknown];
  v3 = [(BMIntelligenceEngineInteractionCandidateType *)self primitive];
  v4 = [(BMIntelligenceEngineInteractionCandidateType *)self device];
  v5 = [(BMIntelligenceEngineInteractionCandidateType *)self schema];
  v6 = [(BMIntelligenceEngineInteractionCandidateType *)self tool];
  v7 = [(BMIntelligenceEngineInteractionCandidateType *)self app];
  v8 = [(BMIntelligenceEngineInteractionCandidateType *)self file];
  v9 = [(BMIntelligenceEngineInteractionCandidateType *)self person];
  v10 = [(BMIntelligenceEngineInteractionCandidateType *)self placemark];
  v11 = [(BMIntelligenceEngineInteractionCandidateType *)self custom];
  v12 = [v15 initWithFormat:@"BMIntelligenceEngineInteractionCandidateType with unknown: %@, primitive: %@, device: %@, schema: %@, tool: %@, app: %@, file: %@, person: %@, placemark: %@, custom: %@", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMIntelligenceEngineInteractionCandidateType)initWithUnknown:(id)a3 primitive:(id)a4 device:(id)a5 schema:(id)a6 tool:(id)a7 app:(id)a8 file:(id)a9 person:(id)a10 placemark:(id)a11 custom:(id)a12
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v25 = a6;
  v29 = a6;
  v26 = a7;
  v28 = a7;
  v27 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v33.receiver = self;
  v33.super_class = BMIntelligenceEngineInteractionCandidateType;
  v22 = [(BMEventBase *)&v33 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_unknown, a3);
    objc_storeStrong(&v22->_primitive, a4);
    objc_storeStrong(&v22->_device, a5);
    objc_storeStrong(&v22->_schema, v25);
    objc_storeStrong(&v22->_tool, v26);
    objc_storeStrong(&v22->_app, a8);
    objc_storeStrong(&v22->_file, a9);
    objc_storeStrong(&v22->_person, a10);
    objc_storeStrong(&v22->_placemark, a11);
    objc_storeStrong(&v22->_custom, a12);
  }

  return v22;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unknown" number:1 type:14 subMessageClass:objc_opt_class()];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"primitive" number:2 type:14 subMessageClass:objc_opt_class()];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"device" number:3 type:14 subMessageClass:objc_opt_class()];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"schema" number:4 type:14 subMessageClass:objc_opt_class()];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tool" number:5 type:14 subMessageClass:objc_opt_class()];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"app" number:6 type:14 subMessageClass:objc_opt_class()];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"file" number:7 type:14 subMessageClass:objc_opt_class()];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"person" number:8 type:14 subMessageClass:objc_opt_class()];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"placemark" number:9 type:14 subMessageClass:objc_opt_class()];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"custom" number:10 type:14 subMessageClass:objc_opt_class()];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v17[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"unknown_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_388];
  v16 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"primitive_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_390];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"device_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_392];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"schema_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_394];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tool_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_396];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"app_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_398];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"file_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_400];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"person_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_402];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"placemark_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_404];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"custom_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_406];
  v17[0] = v2;
  v17[1] = v16;
  v17[2] = v3;
  v17[3] = v4;
  v11 = v4;
  v12 = v5;
  v17[4] = v5;
  v17[5] = v6;
  v17[6] = v7;
  v17[7] = v8;
  v17[8] = v9;
  v17[9] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:10];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 custom];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 placemark];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 person];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 file];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 app];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 tool];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 schema];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 device];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 primitive];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMIntelligenceEngineInteractionCandidateType_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 unknown];
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

    v8 = [[BMIntelligenceEngineInteractionCandidateType alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end