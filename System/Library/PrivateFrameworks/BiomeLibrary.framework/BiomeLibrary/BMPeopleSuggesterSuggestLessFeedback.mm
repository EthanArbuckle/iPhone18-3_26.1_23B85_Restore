@interface BMPeopleSuggesterSuggestLessFeedback
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPeopleSuggesterSuggestLessFeedback)initWithIdentifier:(id)a3 bundleId:(id)a4 derivedIdentifier:(id)a5 conversationIdentifier:(id)a6 handle:(id)a7 contactIdentifier:(id)a8 itemIdentifier:(id)a9 groupIdentifier:(id)a10 deviceIdentifier:(id)a11 userIdentifier:(id)a12;
- (BMPeopleSuggesterSuggestLessFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPeopleSuggesterSuggestLessFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPeopleSuggesterSuggestLessFeedback *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMPeopleSuggesterSuggestLessFeedback *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_37;
      }
    }

    v13 = [(BMPeopleSuggesterSuggestLessFeedback *)self bundleId];
    v14 = [v5 bundleId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMPeopleSuggesterSuggestLessFeedback *)self bundleId];
      v17 = [v5 bundleId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_37;
      }
    }

    v19 = [(BMPeopleSuggesterSuggestLessFeedback *)self derivedIdentifier];
    v20 = [v5 derivedIdentifier];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMPeopleSuggesterSuggestLessFeedback *)self derivedIdentifier];
      v23 = [v5 derivedIdentifier];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_37;
      }
    }

    v25 = [(BMPeopleSuggesterSuggestLessFeedback *)self conversationIdentifier];
    v26 = [v5 conversationIdentifier];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMPeopleSuggesterSuggestLessFeedback *)self conversationIdentifier];
      v29 = [v5 conversationIdentifier];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_37;
      }
    }

    v31 = [(BMPeopleSuggesterSuggestLessFeedback *)self handle];
    v32 = [v5 handle];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMPeopleSuggesterSuggestLessFeedback *)self handle];
      v35 = [v5 handle];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_37;
      }
    }

    v37 = [(BMPeopleSuggesterSuggestLessFeedback *)self contactIdentifier];
    v38 = [v5 contactIdentifier];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMPeopleSuggesterSuggestLessFeedback *)self contactIdentifier];
      v41 = [v5 contactIdentifier];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_37;
      }
    }

    v43 = [(BMPeopleSuggesterSuggestLessFeedback *)self itemIdentifier];
    v44 = [v5 itemIdentifier];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMPeopleSuggesterSuggestLessFeedback *)self itemIdentifier];
      v47 = [v5 itemIdentifier];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_37;
      }
    }

    v49 = [(BMPeopleSuggesterSuggestLessFeedback *)self groupIdentifier];
    v50 = [v5 groupIdentifier];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMPeopleSuggesterSuggestLessFeedback *)self groupIdentifier];
      v53 = [v5 groupIdentifier];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_37;
      }
    }

    v55 = [(BMPeopleSuggesterSuggestLessFeedback *)self deviceIdentifier];
    v56 = [v5 deviceIdentifier];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMPeopleSuggesterSuggestLessFeedback *)self deviceIdentifier];
      v59 = [v5 deviceIdentifier];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
LABEL_37:
        v12 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    v62 = [(BMPeopleSuggesterSuggestLessFeedback *)self userIdentifier];
    v63 = [v5 userIdentifier];
    if (v62 == v63)
    {
      v12 = 1;
    }

    else
    {
      v64 = [(BMPeopleSuggesterSuggestLessFeedback *)self userIdentifier];
      v65 = [v5 userIdentifier];
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
  v38[10] = *MEMORY[0x1E69E9840];
  v3 = [(BMPeopleSuggesterSuggestLessFeedback *)self identifier];
  v4 = [(BMPeopleSuggesterSuggestLessFeedback *)self bundleId];
  v5 = [(BMPeopleSuggesterSuggestLessFeedback *)self derivedIdentifier];
  v6 = [(BMPeopleSuggesterSuggestLessFeedback *)self conversationIdentifier];
  v7 = [(BMPeopleSuggesterSuggestLessFeedback *)self handle];
  v8 = [(BMPeopleSuggesterSuggestLessFeedback *)self contactIdentifier];
  v9 = [(BMPeopleSuggesterSuggestLessFeedback *)self itemIdentifier];
  v36 = [(BMPeopleSuggesterSuggestLessFeedback *)self groupIdentifier];
  v10 = [(BMPeopleSuggesterSuggestLessFeedback *)self deviceIdentifier];
  v11 = [(BMPeopleSuggesterSuggestLessFeedback *)self userIdentifier];
  v37[0] = @"identifier";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v12;
  v38[0] = v12;
  v37[1] = @"bundleId";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v13;
  v38[1] = v13;
  v37[2] = @"derivedIdentifier";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v3;
  v28 = v14;
  v38[2] = v14;
  v37[3] = @"conversationIdentifier";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v4;
  v27 = v15;
  v38[3] = v15;
  v37[4] = @"handle";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v5;
  v26 = v16;
  v38[4] = v16;
  v37[5] = @"contactIdentifier";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v6;
  v38[5] = v17;
  v37[6] = @"itemIdentifier";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v7;
  v38[6] = v18;
  v37[7] = @"groupIdentifier";
  v20 = v36;
  if (!v36)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v8;
  v38[7] = v20;
  v37[8] = @"deviceIdentifier";
  v22 = v10;
  if (!v10)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v38[8] = v22;
  v37[9] = @"userIdentifier";
  v23 = v11;
  if (!v11)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v38[9] = v23;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:10];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (!v36)
  {
  }

  if (!v9)
  {
  }

  if (!v21)
  {
  }

  if (!v19)
  {
  }

  if (!v32)
  {
  }

  if (v33)
  {
    if (v34)
    {
      goto LABEL_35;
    }

LABEL_42:

    if (v35)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  if (!v34)
  {
    goto LABEL_42;
  }

LABEL_35:
  if (v35)
  {
    goto LABEL_36;
  }

LABEL_43:

LABEL_36:
  v24 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BMPeopleSuggesterSuggestLessFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v120[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"bundleId"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v9 = 0;
          v22 = 0;
          goto LABEL_59;
        }

        v26 = a4;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v117 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleId"];
        v118 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v31 = v27;
        v10 = v30;
        v32 = [v31 initWithDomain:v28 code:2 userInfo:v30];
        v9 = 0;
        v22 = 0;
        *v26 = v32;
        goto LABEL_58;
      }

      v95 = a4;
      v98 = v8;
      v9 = v8;
    }

    else
    {
      v98 = v8;
      v95 = a4;
      v9 = 0;
    }

    v10 = [v5 objectForKeyedSubscript:@"derivedIdentifier"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v95)
        {
          v29 = 0;
          v22 = 0;
          v8 = v98;
          goto LABEL_58;
        }

        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = v9;
        v44 = *MEMORY[0x1E698F240];
        v115 = *MEMORY[0x1E696A578];
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"derivedIdentifier"];
        v116 = v45;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v46 = v42;
        v11 = v45;
        v47 = v44;
        v9 = v43;
        v29 = 0;
        v22 = 0;
        *v95 = [v46 initWithDomain:v47 code:2 userInfo:v38];
        v8 = v98;
LABEL_57:

LABEL_58:
        goto LABEL_59;
      }

      v97 = v10;
    }

    else
    {
      v97 = 0;
    }

    v11 = [v5 objectForKeyedSubscript:@"conversationIdentifier"];
    v94 = v11;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v95)
          {
            v11 = 0;
            v22 = 0;
            v29 = v97;
            v8 = v98;
            v38 = v94;
            goto LABEL_57;
          }

          v84 = v10;
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = v9;
          v50 = *MEMORY[0x1E698F240];
          v113 = *MEMORY[0x1E696A578];
          v38 = v11;
          v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationIdentifier"];
          v114 = v96;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
          v52 = v48;
          v10 = v84;
          v53 = v50;
          v9 = v49;
          v93 = v51;
          v11 = 0;
          v22 = 0;
          *v95 = [v52 initWithDomain:v53 code:2 userInfo:?];
          v29 = v97;
          v8 = v98;
          goto LABEL_56;
        }

        v11 = v11;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"handle"];
    v92 = v6;
    v93 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v95)
        {
          v96 = 0;
          v22 = 0;
          v29 = v97;
          v8 = v98;
          v38 = v94;
          goto LABEL_56;
        }

        v87 = v11;
        v54 = v10;
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = v9;
        v57 = *MEMORY[0x1E698F240];
        v111 = *MEMORY[0x1E696A578];
        v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"handle"];
        v112 = v89;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v59 = v55;
        v10 = v54;
        v11 = v87;
        v60 = v57;
        v9 = v56;
        v91 = v58;
        v96 = 0;
        v22 = 0;
        *v95 = [v59 initWithDomain:v60 code:2 userInfo:?];
        v29 = v97;
        v8 = v98;
        v38 = v94;
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }

      v96 = v13;
    }

    else
    {
      v96 = 0;
    }

    v14 = [v5 objectForKeyedSubscript:@"contactIdentifier"];
    v91 = v14;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v11;
        v16 = v7;
        v14 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v95)
          {
            v89 = 0;
            v22 = 0;
            v29 = v97;
            v8 = v98;
            v38 = v94;
            goto LABEL_55;
          }

          v88 = v11;
          v61 = v10;
          v62 = objc_alloc(MEMORY[0x1E696ABC0]);
          v63 = v9;
          v64 = *MEMORY[0x1E698F240];
          v109 = *MEMORY[0x1E696A578];
          v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactIdentifier"];
          v110 = v90;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
          v65 = v62;
          v10 = v61;
          v11 = v88;
          v66 = v64;
          v9 = v63;
          v89 = 0;
          v22 = 0;
          *v95 = [v65 initWithDomain:v66 code:2 userInfo:v39];
          v8 = v98;
          v38 = v94;
          goto LABEL_54;
        }

        v15 = v11;
        v16 = v7;
        v14 = v14;
      }
    }

    else
    {
      v15 = v11;
      v16 = v7;
    }

    v23 = [v5 objectForKeyedSubscript:@"itemIdentifier"];
    v83 = v10;
    v89 = v14;
    v81 = v23;
    if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v95)
        {
          v90 = 0;
          v22 = 0;
          v8 = v98;
          v38 = v94;
          v39 = v81;
          v7 = v16;
          v11 = v15;
          v6 = v92;
          goto LABEL_54;
        }

        v67 = objc_alloc(MEMORY[0x1E696ABC0]);
        v68 = v9;
        v69 = *MEMORY[0x1E698F240];
        v107 = *MEMORY[0x1E696A578];
        v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemIdentifier"];
        v108 = v85;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v70 = v69;
        v9 = v68;
        v90 = 0;
        v22 = 0;
        *v95 = [v67 initWithDomain:v70 code:2 userInfo:v25];
        v8 = v98;
        v7 = v16;
        v11 = v15;
        v6 = v92;
LABEL_53:

        v10 = v83;
        v38 = v94;
        v39 = v81;
LABEL_54:

        v29 = v97;
        goto LABEL_55;
      }

      v90 = v24;
    }

    else
    {
      v90 = 0;
    }

    v25 = [v5 objectForKeyedSubscript:@"groupIdentifier"];
    v7 = v16;
    v82 = v9;
    if (v25)
    {
      objc_opt_class();
      v11 = v15;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v6 = v92;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v95)
          {
            v85 = 0;
            v22 = 0;
            v8 = v98;
            goto LABEL_53;
          }

          v71 = objc_alloc(MEMORY[0x1E696ABC0]);
          v72 = *MEMORY[0x1E698F240];
          v105 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupIdentifier"];
          v106 = v35;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
          v73 = [v71 initWithDomain:v72 code:2 userInfo:v33];
          v85 = 0;
          v22 = 0;
          *v95 = v73;
          goto LABEL_95;
        }

        v85 = v25;
LABEL_44:
        v33 = [v5 objectForKeyedSubscript:@"deviceIdentifier"];
        v80 = v7;
        v86 = v11;
        if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v34 = self;
          v35 = 0;
          goto LABEL_47;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = self;
          v35 = v33;
LABEL_47:
          v36 = [v5 objectForKeyedSubscript:@"userIdentifier"];
          if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (v95)
              {
                v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                v79 = *MEMORY[0x1E698F240];
                v101 = *MEMORY[0x1E696A578];
                v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userIdentifier"];
                v102 = v76;
                v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
                *v95 = [v100 initWithDomain:v79 code:2 userInfo:v77];
              }

              v37 = 0;
              v22 = 0;
              goto LABEL_51;
            }

            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          v22 = [(BMPeopleSuggesterSuggestLessFeedback *)v34 initWithIdentifier:v80 bundleId:v82 derivedIdentifier:v97 conversationIdentifier:v86 handle:v96 contactIdentifier:v14 itemIdentifier:v90 groupIdentifier:v85 deviceIdentifier:v35 userIdentifier:v37];
          v34 = v22;
LABEL_51:
          v8 = v98;
          self = v34;

          v7 = v80;
          v11 = v86;
LABEL_52:

          v9 = v82;
          goto LABEL_53;
        }

        if (v95)
        {
          v34 = self;
          v78 = objc_alloc(MEMORY[0x1E696ABC0]);
          v74 = *MEMORY[0x1E698F240];
          v103 = *MEMORY[0x1E696A578];
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
          v104 = v37;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
          v75 = [v78 initWithDomain:v74 code:2 userInfo:v36];
          v35 = 0;
          v22 = 0;
          *v95 = v75;
          goto LABEL_51;
        }

        v35 = 0;
        v22 = 0;
LABEL_95:
        v8 = v98;
        goto LABEL_52;
      }

      v85 = 0;
    }

    else
    {
      v85 = 0;
      v11 = v15;
    }

    v6 = v92;
    goto LABEL_44;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (!a4)
  {
    v7 = 0;
    v22 = 0;
    goto LABEL_60;
  }

  v17 = a4;
  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v119 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v120[0] = v20;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:&v119 count:1];
  v21 = v19;
  v9 = v20;
  v7 = 0;
  v22 = 0;
  *v17 = [v18 initWithDomain:v21 code:2 userInfo:v8];
LABEL_59:

LABEL_60:
  v40 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPeopleSuggesterSuggestLessFeedback *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_derivedIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_conversationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_handle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_userIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMPeopleSuggesterSuggestLessFeedback;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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

      v15 = (v14 >> 3) - 1;
      if (v15 >= 0xA)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E9D150[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(BMPeopleSuggesterSuggestLessFeedback *)self identifier];
  v3 = [(BMPeopleSuggesterSuggestLessFeedback *)self bundleId];
  v4 = [(BMPeopleSuggesterSuggestLessFeedback *)self derivedIdentifier];
  v5 = [(BMPeopleSuggesterSuggestLessFeedback *)self conversationIdentifier];
  v6 = [(BMPeopleSuggesterSuggestLessFeedback *)self handle];
  v7 = [(BMPeopleSuggesterSuggestLessFeedback *)self contactIdentifier];
  v8 = [(BMPeopleSuggesterSuggestLessFeedback *)self itemIdentifier];
  v9 = [(BMPeopleSuggesterSuggestLessFeedback *)self groupIdentifier];
  v10 = [(BMPeopleSuggesterSuggestLessFeedback *)self deviceIdentifier];
  v11 = [(BMPeopleSuggesterSuggestLessFeedback *)self userIdentifier];
  v12 = [v15 initWithFormat:@"BMPeopleSuggesterSuggestLessFeedback with identifier: %@, bundleId: %@, derivedIdentifier: %@, conversationIdentifier: %@, handle: %@, contactIdentifier: %@, itemIdentifier: %@, groupIdentifier: %@, deviceIdentifier: %@, userIdentifier: %@", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMPeopleSuggesterSuggestLessFeedback)initWithIdentifier:(id)a3 bundleId:(id)a4 derivedIdentifier:(id)a5 conversationIdentifier:(id)a6 handle:(id)a7 contactIdentifier:(id)a8 itemIdentifier:(id)a9 groupIdentifier:(id)a10 deviceIdentifier:(id)a11 userIdentifier:(id)a12
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
  v33.super_class = BMPeopleSuggesterSuggestLessFeedback;
  v22 = [(BMEventBase *)&v33 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_identifier, a3);
    objc_storeStrong(&v22->_bundleId, a4);
    objc_storeStrong(&v22->_derivedIdentifier, a5);
    objc_storeStrong(&v22->_conversationIdentifier, v25);
    objc_storeStrong(&v22->_handle, v26);
    objc_storeStrong(&v22->_contactIdentifier, a8);
    objc_storeStrong(&v22->_itemIdentifier, a9);
    objc_storeStrong(&v22->_groupIdentifier, a10);
    objc_storeStrong(&v22->_deviceIdentifier, a11);
    objc_storeStrong(&v22->_userIdentifier, a12);
  }

  return v22;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleId" number:2 type:13 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"derivedIdentifier" number:3 type:13 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationIdentifier" number:4 type:13 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handle" number:5 type:13 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactIdentifier" number:6 type:13 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:7 type:13 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupIdentifier" number:8 type:13 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdentifier" number:9 type:13 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userIdentifier" number:10 type:13 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"derivedIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"handle" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdentifier" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userIdentifier" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
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

    v8 = [[BMPeopleSuggesterSuggestLessFeedback alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end