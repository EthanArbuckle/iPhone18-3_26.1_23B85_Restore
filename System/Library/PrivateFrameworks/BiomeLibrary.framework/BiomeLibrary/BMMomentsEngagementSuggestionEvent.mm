@interface BMMomentsEngagementSuggestionEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEngagementSuggestionEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMomentsEngagementSuggestionEvent)initWithType:(int)a3 timestamp:(id)a4 fullBundleOrderedSet:(id)a5 clientIdentifier:(id)a6 viewContainerName:(id)a7 viewVisibleTime:(id)a8 suggestionType:(id)a9 viewVisibleSuggestionsCount:(id)a10 viewTotalSuggestionsCount:(id)a11 notificationInfo:(id)a12;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)_fullBundleOrderedSetJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEngagementSuggestionEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEngagementSuggestionEvent *)self type];
    if (v6 == [v5 type])
    {
      v7 = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
      v8 = [v5 timestamp];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
        v11 = [v5 timestamp];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_41;
        }
      }

      v14 = [(BMMomentsEngagementSuggestionEvent *)self fullBundleOrderedSet];
      v15 = [v5 fullBundleOrderedSet];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMMomentsEngagementSuggestionEvent *)self fullBundleOrderedSet];
        v18 = [v5 fullBundleOrderedSet];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_41;
        }
      }

      v20 = [(BMMomentsEngagementSuggestionEvent *)self clientIdentifier];
      v21 = [v5 clientIdentifier];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMMomentsEngagementSuggestionEvent *)self clientIdentifier];
        v24 = [v5 clientIdentifier];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_41;
        }
      }

      v26 = [(BMMomentsEngagementSuggestionEvent *)self viewContainerName];
      v27 = [v5 viewContainerName];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMMomentsEngagementSuggestionEvent *)self viewContainerName];
        v30 = [v5 viewContainerName];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_41;
        }
      }

      if (-[BMMomentsEngagementSuggestionEvent hasViewVisibleTime](self, "hasViewVisibleTime") || [v5 hasViewVisibleTime])
      {
        if (![(BMMomentsEngagementSuggestionEvent *)self hasViewVisibleTime])
        {
          goto LABEL_41;
        }

        if (![v5 hasViewVisibleTime])
        {
          goto LABEL_41;
        }

        [(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime];
        v33 = v32;
        [v5 viewVisibleTime];
        if (v33 != v34)
        {
          goto LABEL_41;
        }
      }

      v35 = [(BMMomentsEngagementSuggestionEvent *)self suggestionType];
      v36 = [v5 suggestionType];
      v37 = v36;
      if (v35 == v36)
      {
      }

      else
      {
        v38 = [(BMMomentsEngagementSuggestionEvent *)self suggestionType];
        v39 = [v5 suggestionType];
        v40 = [v38 isEqual:v39];

        if (!v40)
        {
          goto LABEL_41;
        }
      }

      if (!-[BMMomentsEngagementSuggestionEvent hasViewVisibleSuggestionsCount](self, "hasViewVisibleSuggestionsCount") && ![v5 hasViewVisibleSuggestionsCount] || -[BMMomentsEngagementSuggestionEvent hasViewVisibleSuggestionsCount](self, "hasViewVisibleSuggestionsCount") && objc_msgSend(v5, "hasViewVisibleSuggestionsCount") && (v41 = -[BMMomentsEngagementSuggestionEvent viewVisibleSuggestionsCount](self, "viewVisibleSuggestionsCount"), v41 == objc_msgSend(v5, "viewVisibleSuggestionsCount")))
      {
        if (!-[BMMomentsEngagementSuggestionEvent hasViewTotalSuggestionsCount](self, "hasViewTotalSuggestionsCount") && ![v5 hasViewTotalSuggestionsCount] || -[BMMomentsEngagementSuggestionEvent hasViewTotalSuggestionsCount](self, "hasViewTotalSuggestionsCount") && objc_msgSend(v5, "hasViewTotalSuggestionsCount") && (v42 = -[BMMomentsEngagementSuggestionEvent viewTotalSuggestionsCount](self, "viewTotalSuggestionsCount"), v42 == objc_msgSend(v5, "viewTotalSuggestionsCount")))
        {
          v43 = [(BMMomentsEngagementSuggestionEvent *)self notificationInfo];
          v44 = [v5 notificationInfo];
          if (v43 == v44)
          {
            v13 = 1;
          }

          else
          {
            v45 = [(BMMomentsEngagementSuggestionEvent *)self notificationInfo];
            v46 = [v5 notificationInfo];
            v13 = [v45 isEqual:v46];
          }

          goto LABEL_42;
        }
      }
    }

LABEL_41:
    v13 = 0;
LABEL_42:

    goto LABEL_43;
  }

  v13 = 0;
LABEL_43:

  return v13;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
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
  v41[10] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent type](self, "type")}];
  v4 = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMMomentsEngagementSuggestionEvent *)self _fullBundleOrderedSetJSONArray];
  v9 = [(BMMomentsEngagementSuggestionEvent *)self clientIdentifier];
  v10 = [(BMMomentsEngagementSuggestionEvent *)self viewContainerName];
  if (![(BMMomentsEngagementSuggestionEvent *)self hasViewVisibleTime]|| ([(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime], fabs(v11) == INFINITY))
  {
    v39 = 0;
  }

  else
  {
    [(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime];
    v12 = MEMORY[0x1E696AD98];
    [(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime];
    v39 = [v12 numberWithDouble:?];
  }

  v38 = [(BMMomentsEngagementSuggestionEvent *)self suggestionType];
  if ([(BMMomentsEngagementSuggestionEvent *)self hasViewVisibleSuggestionsCount])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent viewVisibleSuggestionsCount](self, "viewVisibleSuggestionsCount")}];
  }

  else
  {
    v37 = 0;
  }

  if ([(BMMomentsEngagementSuggestionEvent *)self hasViewTotalSuggestionsCount])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent viewTotalSuggestionsCount](self, "viewTotalSuggestionsCount")}];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(BMMomentsEngagementSuggestionEvent *)self notificationInfo];
  v15 = [v14 jsonDictionary];

  v40[0] = @"type";
  v16 = v3;
  if (!v3)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v16;
  v41[0] = v16;
  v40[1] = @"timestamp";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v17;
  v41[1] = v17;
  v40[2] = @"fullBundleOrderedSet";
  v18 = v8;
  if (!v8)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v18;
  v41[2] = v18;
  v40[3] = @"clientIdentifier";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v3;
  v29 = v19;
  v41[3] = v19;
  v40[4] = @"viewContainerName";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v7;
  v41[4] = v20;
  v40[5] = @"viewVisibleTime";
  v21 = v39;
  if (!v39)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v8;
  v41[5] = v21;
  v40[6] = @"suggestionType";
  v22 = v38;
  if (!v38)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v41[6] = v22;
  v40[7] = @"viewVisibleSuggestionsCount";
  v23 = v37;
  if (!v37)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v10;
  v41[7] = v23;
  v40[8] = @"viewTotalSuggestionsCount";
  v25 = v13;
  if (!v13)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v41[8] = v25;
  v40[9] = @"notificationInfo";
  v26 = v15;
  if (!v15)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v41[9] = v26;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:10];
  if (v15)
  {
    if (v13)
    {
      goto LABEL_36;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_36;
    }
  }

LABEL_36:
  if (!v37)
  {
  }

  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v24)
  {
  }

  if (v9)
  {
    if (v34)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (v34)
    {
LABEL_46:
      if (v35)
      {
        goto LABEL_47;
      }

LABEL_55:

      if (v36)
      {
        goto LABEL_48;
      }

      goto LABEL_56;
    }
  }

  if (!v35)
  {
    goto LABEL_55;
  }

LABEL_47:
  if (v36)
  {
    goto LABEL_48;
  }

LABEL_56:

LABEL_48:
  v27 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_fullBundleOrderedSetJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMomentsEngagementSuggestionEvent *)self fullBundleOrderedSet];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMomentsEngagementSuggestionEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v152[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"type"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v118 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v43 = a4;
        if (a4)
        {
          v47 = v6;
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v151 = *MEMORY[0x1E696A578];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v152[0] = v50;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:&v151 count:1];
          v52 = v48;
          v6 = v47;
          v9 = v50;
          v53 = [v52 initWithDomain:v49 code:2 userInfo:v51];
          v43 = 0;
          v41 = 0;
          *a4 = v53;
          v8 = v51;
          goto LABEL_85;
        }

        v41 = 0;
        goto LABEL_86;
      }

      v118 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementSuggestionTypeFromString(v6)];
    }
  }

  else
  {
    v118 = 0;
  }

  v7 = [v5 objectForKeyedSubscript:@"timestamp"];
  v117 = v7;
  if (!v7 || (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E695DF00];
    v11 = v6;
    v12 = v8;
    v13 = [v10 alloc];
    [v12 doubleValue];
    v15 = v14;

    v6 = v11;
    v16 = [v13 initWithTimeIntervalSince1970:v15];
LABEL_11:
    v9 = v16;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v9 = [v17 dateFromString:v8];

LABEL_16:
    v18 = [v5 objectForKeyedSubscript:@"fullBundleOrderedSet"];
    v19 = [MEMORY[0x1E695DFB0] null];
    v20 = [v18 isEqual:v19];

    v116 = v9;
    if (v20)
    {
      v112 = v6;
      v113 = self;

      v18 = 0;
    }

    else
    {
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v41 = 0;
            v43 = v118;
            goto LABEL_84;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v147 = *MEMORY[0x1E696A578];
          v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"fullBundleOrderedSet"];
          v148 = v120;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v46 = [v44 initWithDomain:v45 code:2 userInfo:v30];
          v41 = 0;
          *a4 = v46;
          goto LABEL_49;
        }
      }

      v112 = v6;
      v113 = self;
    }

    v120 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v18 = v18;
    v21 = [v18 countByEnumeratingWithState:&v124 objects:v146 count:16];
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = v21;
    v23 = *v125;
    v111 = v5;
LABEL_23:
    v24 = 0;
    while (1)
    {
      if (*v125 != v23)
      {
        objc_enumerationMutation(v18);
      }

      v25 = *(*(&v124 + 1) + 8 * v24);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v34 = a4;
        if (a4)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v142 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fullBundleOrderedSet"];
          v143 = v26;
          v37 = MEMORY[0x1E695DF20];
          v38 = &v143;
          v39 = &v142;
          goto LABEL_41;
        }

        goto LABEL_48;
      }

      v26 = v25;
      v27 = [BMMomentsEngagementBundleSummary alloc];
      v123 = 0;
      v28 = [(BMMomentsEngagementBundleSummary *)v27 initWithJSONDictionary:v26 error:&v123];
      v29 = v123;
      if (v29)
      {
        v33 = v29;
        if (a4)
        {
          v42 = v29;
          *a4 = v33;
        }

        v41 = 0;
        goto LABEL_45;
      }

      [v120 addObject:v28];

      if (v22 == ++v24)
      {
        v22 = [v18 countByEnumeratingWithState:&v124 objects:v146 count:16];
        v5 = v111;
        if (v22)
        {
          goto LABEL_23;
        }

LABEL_31:

        v26 = [v5 objectForKeyedSubscript:@"clientIdentifier"];
        if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v30 = 0;
          goto LABEL_34;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v26;
LABEL_34:
          v31 = [v5 objectForKeyedSubscript:@"viewContainerName"];
          v9 = v116;
          v110 = v31;
          if (!v31)
          {
            v33 = 0;
            self = v113;
            goto LABEL_57;
          }

          v32 = v31;
          objc_opt_class();
          self = v113;
          if (objc_opt_isKindOfClass())
          {
            v33 = 0;
LABEL_57:
            v54 = [v5 objectForKeyedSubscript:@"viewVisibleTime"];
            v107 = v54;
            v108 = v30;
            if (v54)
            {
              v55 = v54;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v109 = v55;
                  goto LABEL_60;
                }

                if (a4)
                {
                  v84 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v85 = *MEMORY[0x1E698F240];
                  v136 = *MEMORY[0x1E696A578];
                  v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewVisibleTime"];
                  v137 = v114;
                  v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
                  v87 = v85;
                  v30 = v108;
                  v105 = v86;
                  v109 = 0;
                  v41 = 0;
                  *a4 = [v84 initWithDomain:v87 code:2 userInfo:?];
                  v6 = v112;
                  v43 = v118;
                  goto LABEL_77;
                }

                v109 = 0;
                v41 = 0;
                v6 = v112;
                v43 = v118;
                goto LABEL_78;
              }
            }

            v109 = 0;
LABEL_60:
            v56 = [v5 objectForKeyedSubscript:@"suggestionType"];
            v105 = v56;
            if (v56)
            {
              v57 = v56;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v114 = v57;
                  goto LABEL_63;
                }

                if (a4)
                {
                  v115 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v88 = *MEMORY[0x1E698F240];
                  v134 = *MEMORY[0x1E696A578];
                  v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionType"];
                  v135 = v106;
                  v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
                  v89 = [v115 initWithDomain:v88 code:2 userInfo:?];
                  v114 = 0;
                  v41 = 0;
                  *a4 = v89;
                  v6 = v112;
                  v43 = v118;
                  goto LABEL_76;
                }

                v114 = 0;
                v41 = 0;
                v6 = v112;
                v43 = v118;
                goto LABEL_77;
              }
            }

            v114 = 0;
LABEL_63:
            v58 = [v5 objectForKeyedSubscript:@"viewVisibleSuggestionsCount"];
            v102 = v58;
            if (v58 && (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v106 = v59;
                goto LABEL_66;
              }

              if (!a4)
              {
                v106 = 0;
                v41 = 0;
                v6 = v112;
                v43 = v118;
                goto LABEL_76;
              }

              v90 = objc_alloc(MEMORY[0x1E696ABC0]);
              v91 = *MEMORY[0x1E698F240];
              v132 = *MEMORY[0x1E696A578];
              v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewVisibleSuggestionsCount"];
              v133 = v103;
              v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
              v93 = v91;
              v30 = v108;
              v101 = v92;
              v106 = 0;
              v41 = 0;
              *a4 = [v90 initWithDomain:v93 code:2 userInfo:?];
            }

            else
            {
              v106 = 0;
LABEL_66:
              v60 = [v5 objectForKeyedSubscript:@"viewTotalSuggestionsCount"];
              v101 = v60;
              if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v103 = 0;
LABEL_69:
                v62 = [v5 objectForKeyedSubscript:@"notificationInfo"];
                if (!v62 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v63 = 0;
                  v43 = v118;
                  goto LABEL_72;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v81 = v62;
                  v82 = [BMMomentsEngagementNotificationInfo alloc];
                  v122 = 0;
                  v99 = v81;
                  v63 = [(BMMomentsEngagementNotificationInfo *)v82 initWithJSONDictionary:v81 error:&v122];
                  v83 = v122;
                  v43 = v118;
                  v9 = v116;
                  if (v83)
                  {
                    v62 = v99;
                    if (a4)
                    {
                      v83 = v83;
                      *a4 = v83;
                    }

                    v41 = 0;
                  }

                  else
                  {

LABEL_72:
                    self = -[BMMomentsEngagementSuggestionEvent initWithType:timestamp:fullBundleOrderedSet:clientIdentifier:viewContainerName:viewVisibleTime:suggestionType:viewVisibleSuggestionsCount:viewTotalSuggestionsCount:notificationInfo:](self, "initWithType:timestamp:fullBundleOrderedSet:clientIdentifier:viewContainerName:viewVisibleTime:suggestionType:viewVisibleSuggestionsCount:viewTotalSuggestionsCount:notificationInfo:", [v43 intValue], v9, v120, v108, v33, v109, v114, v106, v103, v63);
                    v41 = self;
                  }

LABEL_73:
                }

                else
                {
                  v43 = v118;
                  if (a4)
                  {
                    v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v98 = *MEMORY[0x1E698F240];
                    v128 = *MEMORY[0x1E696A578];
                    v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"notificationInfo"];
                    v129 = v63;
                    v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
                    *a4 = [v100 initWithDomain:v98 code:2 userInfo:v96];

                    v41 = 0;
                    v9 = v116;
                    goto LABEL_73;
                  }

                  v41 = 0;
                  v9 = v116;
                }

                v6 = v112;
                v30 = v108;
LABEL_75:

LABEL_76:
LABEL_77:

LABEL_78:
LABEL_79:

LABEL_80:
LABEL_81:

LABEL_82:
LABEL_84:

                v8 = v117;
                goto LABEL_85;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v103 = v61;
                goto LABEL_69;
              }

              if (a4)
              {
                v104 = objc_alloc(MEMORY[0x1E696ABC0]);
                v94 = *MEMORY[0x1E698F240];
                v130 = *MEMORY[0x1E696A578];
                v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewTotalSuggestionsCount"];
                v131 = v62;
                v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
                v95 = [v104 initWithDomain:v94 code:2 userInfo:v63];
                v103 = 0;
                v41 = 0;
                *a4 = v95;
                v43 = v118;
                goto LABEL_73;
              }

              v103 = 0;
              v41 = 0;
            }

            v6 = v112;
            v43 = v118;
            goto LABEL_75;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
            v9 = v116;
            goto LABEL_57;
          }

          if (a4)
          {
            v69 = objc_alloc(MEMORY[0x1E696ABC0]);
            v70 = *MEMORY[0x1E698F240];
            v138 = *MEMORY[0x1E696A578];
            v71 = v30;
            v72 = objc_alloc(MEMORY[0x1E696AEC0]);
            v97 = objc_opt_class();
            v73 = v72;
            v30 = v71;
            v109 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v97, @"viewContainerName"];
            v139 = v109;
            v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
            v74 = [v69 initWithDomain:v70 code:2 userInfo:?];
            v33 = 0;
            v41 = 0;
            *a4 = v74;
            v6 = v112;
            v43 = v118;
            v9 = v116;
            goto LABEL_78;
          }

          v33 = 0;
          v41 = 0;
        }

        else
        {
          self = v113;
          if (!a4)
          {
            v30 = 0;
            v41 = 0;
            v6 = v112;
            v43 = v118;
            v9 = v116;
            goto LABEL_81;
          }

          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = *MEMORY[0x1E698F240];
          v140 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
          v141 = v33;
          v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
          v68 = [v66 initWithDomain:v67 code:2 userInfo:?];
          v30 = 0;
          v41 = 0;
          *a4 = v68;
        }

        v6 = v112;
        v43 = v118;
        v9 = v116;
        goto LABEL_79;
      }
    }

    v34 = a4;
    if (a4)
    {
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v144 = *MEMORY[0x1E696A578];
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"fullBundleOrderedSet"];
      v145 = v26;
      v37 = MEMORY[0x1E695DF20];
      v38 = &v145;
      v39 = &v144;
LABEL_41:
      v33 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
      v40 = [v35 initWithDomain:v36 code:2 userInfo:v33];
      v41 = 0;
      *v34 = v40;
LABEL_45:
      v30 = v18;
      v5 = v111;
      v6 = v112;
      self = v113;
      v9 = v116;
      v43 = v118;
      goto LABEL_80;
    }

LABEL_48:
    v41 = 0;
    v30 = v18;
    v5 = v111;
    v6 = v112;
    self = v113;
    v9 = v116;
LABEL_49:
    v43 = v118;
    goto LABEL_82;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v8;
    goto LABEL_11;
  }

  if (a4)
  {
    v75 = v6;
    v76 = objc_alloc(MEMORY[0x1E696ABC0]);
    v77 = *MEMORY[0x1E698F240];
    v149 = *MEMORY[0x1E696A578];
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
    v150 = v18;
    v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
    v79 = v76;
    v6 = v75;
    v121 = v78;
    v80 = [v79 initWithDomain:v77 code:2 userInfo:?];
    v9 = 0;
    v41 = 0;
    *a4 = v80;
    v43 = v118;

    goto LABEL_84;
  }

  v9 = 0;
  v41 = 0;
  v43 = v118;
LABEL_85:

LABEL_86:
  v64 = *MEMORY[0x1E69E9840];
  return v41;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementSuggestionEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_fullBundleOrderedSet;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_viewContainerName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasViewVisibleTime)
  {
    viewVisibleTime = self->_viewVisibleTime;
    PBDataWriterWriteFloatField();
  }

  if (self->_suggestionType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasViewVisibleSuggestionsCount)
  {
    viewVisibleSuggestionsCount = self->_viewVisibleSuggestionsCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasViewTotalSuggestionsCount)
  {
    viewTotalSuggestionsCount = self->_viewTotalSuggestionsCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_notificationInfo)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementNotificationInfo *)self->_notificationInfo writeTo:v4];
    PBDataWriterRecallMark();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v59.receiver = self;
  v59.super_class = BMMomentsEngagementSuggestionEvent;
  v5 = [(BMEventBase *)&v59 init];
  if (!v5)
  {
    goto LABEL_97;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v60) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v60) & 0x7F) << v8;
        if ((LOBYTE(v60) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 5)
      {
        if (v16 <= 7)
        {
          if (v16 == 6)
          {
            v5->_hasViewVisibleTime = 1;
            LODWORD(v60) = 0;
            v30 = [v4 position] + 4;
            if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 4, v31 <= objc_msgSend(v4, "length")))
            {
              v52 = [v4 data];
              [v52 getBytes:&v60 range:{objc_msgSend(v4, "position"), 4}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
            }

            else
            {
              [v4 _setError];
            }

            v50 = *&v60;
            v51 = 80;
            goto LABEL_93;
          }

          if (v16 == 7)
          {
            v17 = PBReaderReadString();
            v18 = 88;
            goto LABEL_64;
          }

          goto LABEL_74;
        }

        if (v16 == 8)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v5->_hasViewVisibleSuggestionsCount = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v37 = [v4 position] + 1;
            if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
            {
              v39 = [v4 data];
              [v39 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v36 |= (LOBYTE(v60) & 0x7F) << v34;
            if ((LOBYTE(v60) & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v14 = v35++ >= 9;
            if (v14)
            {
              v40 = 0;
              goto LABEL_83;
            }
          }

          if ([v4 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_83:
          v48 = 44;
          goto LABEL_88;
        }

        if (v16 == 9)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v5->_hasViewTotalSuggestionsCount = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v45 = [v4 position] + 1;
            if (v45 >= [v4 position] && (v46 = objc_msgSend(v4, "position") + 1, v46 <= objc_msgSend(v4, "length")))
            {
              v47 = [v4 data];
              [v47 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v44 |= (LOBYTE(v60) & 0x7F) << v42;
            if ((LOBYTE(v60) & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v14 = v43++ >= 9;
            if (v14)
            {
              v40 = 0;
              goto LABEL_87;
            }
          }

          if ([v4 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v44;
          }

LABEL_87:
          v48 = 48;
LABEL_88:
          *(&v5->super.super.isa + v48) = v40;
          goto LABEL_94;
        }

        if (v16 != 10)
        {
          goto LABEL_74;
        }

        v60 = 0.0;
        v61 = 0;
        if (!PBReaderPlaceMark() || (v19 = [[BMMomentsEngagementNotificationInfo alloc] initByReadFrom:v4]) == 0)
        {
LABEL_99:

          goto LABEL_96;
        }

        notificationInfo = v5->_notificationInfo;
        v5->_notificationInfo = v19;

        PBReaderRecallMark();
      }

      else
      {
        if (v16 <= 2)
        {
          if (v16 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v60) = 0;
              v26 = [v4 position] + 1;
              if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
              {
                v28 = [v4 data];
                [v28 getBytes:&v60 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v25 |= (LOBYTE(v60) & 0x7F) << v23;
              if ((LOBYTE(v60) & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              if (v24++ > 8)
              {
                goto LABEL_78;
              }
            }

            if (([v4 hasError] & 1) != 0 || v25 > 0x1F)
            {
LABEL_78:
              LODWORD(v25) = 0;
            }

            v5->_type = v25;
            goto LABEL_94;
          }

          if (v16 == 2)
          {
            v5->_hasRaw_timestamp = 1;
            v60 = 0.0;
            v21 = [v4 position] + 8;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 8, v22 <= objc_msgSend(v4, "length")))
            {
              v49 = [v4 data];
              [v49 getBytes:&v60 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v50 = v60;
            v51 = 24;
LABEL_93:
            *(&v5->super.super.isa + v51) = v50;
            goto LABEL_94;
          }

LABEL_74:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_99;
          }

          goto LABEL_94;
        }

        if (v16 != 3)
        {
          if (v16 == 4)
          {
            v17 = PBReaderReadString();
            v18 = 64;
            goto LABEL_64;
          }

          if (v16 == 5)
          {
            v17 = PBReaderReadString();
            v18 = 72;
LABEL_64:
            v41 = *(&v5->super.super.isa + v18);
            *(&v5->super.super.isa + v18) = v17;

            goto LABEL_94;
          }

          goto LABEL_74;
        }

        v60 = 0.0;
        v61 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_99;
        }

        v32 = [[BMMomentsEngagementBundleSummary alloc] initByReadFrom:v4];
        if (!v32)
        {
          goto LABEL_99;
        }

        v33 = v32;
        [v6 addObject:v32];
        PBReaderRecallMark();
      }

LABEL_94:
      v53 = [v4 position];
    }

    while (v53 < [v4 length]);
  }

  v54 = [v6 copy];
  fullBundleOrderedSet = v5->_fullBundleOrderedSet;
  v5->_fullBundleOrderedSet = v54;

  v56 = [v4 hasError];
  if (v56)
  {
LABEL_96:
    v57 = 0;
  }

  else
  {
LABEL_97:
    v57 = v5;
  }

  return v57;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = BMMomentsEngagementSuggestionTypeAsString([(BMMomentsEngagementSuggestionEvent *)self type]);
  v3 = [(BMMomentsEngagementSuggestionEvent *)self timestamp];
  v4 = [(BMMomentsEngagementSuggestionEvent *)self fullBundleOrderedSet];
  v5 = [(BMMomentsEngagementSuggestionEvent *)self clientIdentifier];
  v6 = [(BMMomentsEngagementSuggestionEvent *)self viewContainerName];
  v7 = MEMORY[0x1E696AD98];
  [(BMMomentsEngagementSuggestionEvent *)self viewVisibleTime];
  v8 = [v7 numberWithDouble:?];
  v9 = [(BMMomentsEngagementSuggestionEvent *)self suggestionType];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent viewVisibleSuggestionsCount](self, "viewVisibleSuggestionsCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementSuggestionEvent viewTotalSuggestionsCount](self, "viewTotalSuggestionsCount")}];
  v12 = [(BMMomentsEngagementSuggestionEvent *)self notificationInfo];
  v16 = [v15 initWithFormat:@"BMMomentsEngagementSuggestionEvent with type: %@, timestamp: %@, fullBundleOrderedSet: %@, clientIdentifier: %@, viewContainerName: %@, viewVisibleTime: %@, suggestionType: %@, viewVisibleSuggestionsCount: %@, viewTotalSuggestionsCount: %@, notificationInfo: %@", v14, v3, v4, v5, v6, v8, v9, v10, v11, v12];

  return v16;
}

- (BMMomentsEngagementSuggestionEvent)initWithType:(int)a3 timestamp:(id)a4 fullBundleOrderedSet:(id)a5 clientIdentifier:(id)a6 viewContainerName:(id)a7 viewVisibleTime:(id)a8 suggestionType:(id)a9 viewVisibleSuggestionsCount:(id)a10 viewTotalSuggestionsCount:(id)a11 notificationInfo:(id)a12
{
  v17 = a4;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  v18 = a8;
  v31 = a9;
  v19 = a10;
  v20 = a11;
  v21 = v17;
  v22 = a12;
  v35.receiver = self;
  v35.super_class = BMMomentsEngagementSuggestionEvent;
  v23 = [(BMEventBase *)&v35 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    v23->_type = a3;
    if (v21)
    {
      v23->_hasRaw_timestamp = 1;
      [v21 timeIntervalSince1970];
    }

    else
    {
      v23->_hasRaw_timestamp = 0;
      v24 = -1.0;
    }

    v23->_raw_timestamp = v24;
    objc_storeStrong(&v23->_fullBundleOrderedSet, a5);
    objc_storeStrong(&v23->_clientIdentifier, a6);
    objc_storeStrong(&v23->_viewContainerName, a7);
    if (v18)
    {
      v23->_hasViewVisibleTime = 1;
      [v18 floatValue];
      v26 = v25;
    }

    else
    {
      v23->_hasViewVisibleTime = 0;
      v26 = -1.0;
    }

    v23->_viewVisibleTime = v26;
    objc_storeStrong(&v23->_suggestionType, a9);
    if (v19)
    {
      v23->_hasViewVisibleSuggestionsCount = 1;
      v27 = [v19 intValue];
    }

    else
    {
      v23->_hasViewVisibleSuggestionsCount = 0;
      v27 = -1;
    }

    v23->_viewVisibleSuggestionsCount = v27;
    if (v20)
    {
      v23->_hasViewTotalSuggestionsCount = 1;
      v28 = [v20 intValue];
    }

    else
    {
      v23->_hasViewTotalSuggestionsCount = 0;
      v28 = -1;
    }

    v23->_viewTotalSuggestionsCount = v28;
    objc_storeStrong(&v23->_notificationInfo, a12);
  }

  return v23;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:2 type:0 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullBundleOrderedSet" number:3 type:14 subMessageClass:objc_opt_class()];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:4 type:13 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewContainerName" number:5 type:13 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewVisibleTime" number:6 type:1 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionType" number:7 type:13 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewVisibleSuggestionsCount" number:8 type:2 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewTotalSuggestionsCount" number:9 type:2 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationInfo" number:10 type:14 subMessageClass:objc_opt_class()];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fullBundleOrderedSet_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_624];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewContainerName" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewVisibleTime" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:1 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionType" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewVisibleSuggestionsCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewTotalSuggestionsCount" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"notificationInfo_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_626];
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

id __45__BMMomentsEngagementSuggestionEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 notificationInfo];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMMomentsEngagementSuggestionEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _fullBundleOrderedSetJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMMomentsEngagementSuggestionEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end