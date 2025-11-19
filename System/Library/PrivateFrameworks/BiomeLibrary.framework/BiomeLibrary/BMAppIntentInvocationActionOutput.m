@interface BMAppIntentInvocationActionOutput
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppIntentInvocationActionOutput)initWithIdentifier:(id)a3 showOutputAction:(id)a4 showOutputActionHint:(int)a5 dialog:(id)a6 value:(id)a7 nextAction:(id)a8 confirmationActionName:(id)a9 showPrompt:(id)a10 suggestedFollowUpActions:(id)a11;
- (BMAppIntentInvocationActionOutput)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)identifier;
- (id)_suggestedFollowUpActionsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppIntentInvocationActionOutput

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:14 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"showOutputAction" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"showOutputActionHint" number:3 type:4 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dialog" number:4 type:14 subMessageClass:objc_opt_class()];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:6 type:14 subMessageClass:objc_opt_class()];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nextAction" number:8 type:14 subMessageClass:objc_opt_class()];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confirmationActionName" number:9 type:14 subMessageClass:objc_opt_class()];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"showPrompt" number:10 type:12 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedFollowUpActions" number:11 type:14 subMessageClass:objc_opt_class()];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppIntentInvocationActionOutput *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppIntentInvocationActionOutput *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    v13 = [(BMAppIntentInvocationActionOutput *)self showOutputAction];
    v14 = [v5 showOutputAction];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppIntentInvocationActionOutput *)self showOutputAction];
      v17 = [v5 showOutputAction];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    v19 = [(BMAppIntentInvocationActionOutput *)self showOutputActionHint];
    if (v19 == [v5 showOutputActionHint])
    {
      v20 = [(BMAppIntentInvocationActionOutput *)self dialog];
      v21 = [v5 dialog];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMAppIntentInvocationActionOutput *)self dialog];
        v24 = [v5 dialog];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_33;
        }
      }

      v26 = [(BMAppIntentInvocationActionOutput *)self value];
      v27 = [v5 value];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMAppIntentInvocationActionOutput *)self value];
        v30 = [v5 value];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_33;
        }
      }

      v32 = [(BMAppIntentInvocationActionOutput *)self nextAction];
      v33 = [v5 nextAction];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMAppIntentInvocationActionOutput *)self nextAction];
        v36 = [v5 nextAction];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_33;
        }
      }

      v38 = [(BMAppIntentInvocationActionOutput *)self confirmationActionName];
      v39 = [v5 confirmationActionName];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(BMAppIntentInvocationActionOutput *)self confirmationActionName];
        v42 = [v5 confirmationActionName];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_33;
        }
      }

      if (!-[BMAppIntentInvocationActionOutput hasShowPrompt](self, "hasShowPrompt") && ![v5 hasShowPrompt] || -[BMAppIntentInvocationActionOutput hasShowPrompt](self, "hasShowPrompt") && objc_msgSend(v5, "hasShowPrompt") && (v44 = -[BMAppIntentInvocationActionOutput showPrompt](self, "showPrompt"), v44 == objc_msgSend(v5, "showPrompt")))
      {
        v46 = [(BMAppIntentInvocationActionOutput *)self suggestedFollowUpActions];
        v47 = [v5 suggestedFollowUpActions];
        if (v46 == v47)
        {
          v12 = 1;
        }

        else
        {
          v48 = [(BMAppIntentInvocationActionOutput *)self suggestedFollowUpActions];
          v49 = [v5 suggestedFollowUpActions];
          v12 = [v48 isEqual:v49];
        }

        goto LABEL_34;
      }
    }

LABEL_33:
    v12 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (NSUUID)identifier
{
  raw_identifier = self->_raw_identifier;
  if (raw_identifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_identifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v40[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppIntentInvocationActionOutput *)self identifier];
  v4 = [v3 UUIDString];

  v5 = [(BMAppIntentInvocationActionOutput *)self showOutputAction];
  v6 = [v5 jsonDictionary];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationActionOutput showOutputActionHint](self, "showOutputActionHint")}];
  v8 = [(BMAppIntentInvocationActionOutput *)self dialog];
  v9 = [v8 jsonDictionary];

  v10 = [(BMAppIntentInvocationActionOutput *)self value];
  v11 = [v10 jsonDictionary];

  v12 = [(BMAppIntentInvocationActionOutput *)self nextAction];
  v38 = [v12 jsonDictionary];

  v13 = [(BMAppIntentInvocationActionOutput *)self confirmationActionName];
  v37 = [v13 jsonDictionary];

  if ([(BMAppIntentInvocationActionOutput *)self hasShowPrompt])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntentInvocationActionOutput showPrompt](self, "showPrompt")}];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(BMAppIntentInvocationActionOutput *)self _suggestedFollowUpActionsJSONArray];
  v39[0] = @"identifier";
  v16 = v4;
  if (!v4)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v16;
  v40[0] = v16;
  v39[1] = @"showOutputAction";
  v17 = v6;
  if (!v6)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v17;
  v40[1] = v17;
  v39[2] = @"showOutputActionHint";
  v18 = v7;
  if (!v7)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v4;
  v31 = v18;
  v40[2] = v18;
  v39[3] = @"dialog";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v6;
  v30 = v19;
  v40[3] = v19;
  v39[4] = @"value";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v7;
  v40[4] = v20;
  v39[5] = @"nextAction";
  v21 = v38;
  if (!v38)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v9;
  v40[5] = v21;
  v39[6] = @"confirmationActionName";
  v23 = v37;
  if (!v37)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v11;
  v40[6] = v23;
  v39[7] = @"showPrompt";
  v25 = v14;
  if (!v14)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v40[7] = v25;
  v39[8] = @"suggestedFollowUpActions";
  v26 = v15;
  if (!v15)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v40[8] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:9];
  if (v15)
  {
    if (v14)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  if (!v37)
  {
  }

  if (!v38)
  {
  }

  if (!v24)
  {
  }

  if (!v22)
  {
  }

  if (v34)
  {
    if (v35)
    {
      goto LABEL_34;
    }

LABEL_41:

    if (v36)
    {
      goto LABEL_35;
    }

    goto LABEL_42;
  }

  if (!v35)
  {
    goto LABEL_41;
  }

LABEL_34:
  if (v36)
  {
    goto LABEL_35;
  }

LABEL_42:

LABEL_35:
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)_suggestedFollowUpActionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMAppIntentInvocationActionOutput *)self suggestedFollowUpActions];
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

- (BMAppIntentInvocationActionOutput)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v190[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v20 = v6;
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = a4;
        v23 = *MEMORY[0x1E698F240];
        v187 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v188 = v24;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
        v25 = v21;
        v6 = v20;
        v7 = v24;
        v26 = [v25 initWithDomain:v23 code:2 userInfo:v8];
        a4 = 0;
        *v22 = v26;
        goto LABEL_130;
      }

      goto LABEL_132;
    }

    v12 = a4;
    v13 = v6;
    v14 = v6;
    v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v14];
    if (!v15)
    {
      v84 = v14;
      if (v12)
      {
        v85 = objc_alloc(MEMORY[0x1E696ABC0]);
        v86 = *MEMORY[0x1E698F240];
        v189 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
        v190[0] = v8;
        v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v190 forKeys:&v189 count:1];
        *v12 = [v85 initWithDomain:v86 code:2 userInfo:v87];

        a4 = 0;
        v6 = v13;
        v7 = v84;
        goto LABEL_130;
      }

      a4 = 0;
      v7 = v84;
      goto LABEL_131;
    }

    v16 = v15;

    v17 = v16;
    a4 = v12;
    v6 = v13;
    v7 = v17;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"showOutputAction"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v27 = v7;
        v28 = v6;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = a4;
        v31 = *MEMORY[0x1E698F240];
        v185 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"showOutputAction"];
        v186 = v32;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
        v33 = v29;
        v6 = v28;
        v7 = v27;
        v9 = v32;
        v34 = [v33 initWithDomain:v31 code:2 userInfo:v11];
        a4 = 0;
        *v30 = v34;
        goto LABEL_129;
      }

      goto LABEL_130;
    }

    v11 = v8;
    v165 = 0;
    v9 = [[BMAppIntentInvocationAction alloc] initWithJSONDictionary:v11 error:&v165];
    v18 = v165;
    if (v18)
    {
      if (a4)
      {
        v18 = v18;
        *a4 = v18;
      }

      a4 = 0;
      goto LABEL_129;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:@"showOutputActionHint"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v10;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v95 = v7;
          v96 = v6;
          v97 = objc_alloc(MEMORY[0x1E696ABC0]);
          v134 = a4;
          v98 = *MEMORY[0x1E698F240];
          v183 = *MEMORY[0x1E696A578];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"showOutputActionHint"];
          v184 = v50;
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
          v99 = v97;
          v6 = v96;
          v7 = v95;
          v100 = [v99 initWithDomain:v98 code:2 userInfo:v62];
          v11 = 0;
          a4 = 0;
          *v134 = v100;
          goto LABEL_126;
        }

        v11 = 0;
        goto LABEL_128;
      }

      v19 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationActionOutputHintFromString(v10)];
    }

    v11 = v19;
  }

  else
  {
    v11 = 0;
  }

  v35 = [v5 objectForKeyedSubscript:@"dialog"];
  v153 = v11;
  if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v138 = v10;
        v143 = v9;
        v57 = v7;
        v58 = v6;
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v133 = a4;
        v60 = *MEMORY[0x1E698F240];
        v181 = *MEMORY[0x1E696A578];
        v61 = v35;
        v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dialog"];
        v182 = v62;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
        v64 = v59;
        v6 = v58;
        v7 = v57;
        v10 = v138;
        *v133 = [v64 initWithDomain:v60 code:2 userInfo:v63];

        a4 = 0;
        v50 = v61;
        v9 = v143;
        goto LABEL_126;
      }

      goto LABEL_127;
    }

    v50 = v35;
    v164 = 0;
    v152 = [[BMAppIntentInvocationActionOutputDialog alloc] initWithJSONDictionary:v50 error:&v164];
    v51 = v164;
    if (v51)
    {
      if (a4)
      {
        v51 = v51;
        *a4 = v51;
      }

      a4 = 0;
      goto LABEL_125;
    }

    v151 = v7;
    v36 = v5;
    v37 = v9;
  }

  else
  {
    v151 = v7;
    v152 = 0;
    v36 = v5;
    v37 = v9;
  }

  v38 = [v36 objectForKeyedSubscript:@"value"];
  v154 = v35;
  v150 = v38;
  if (v38 && (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v9 = v37;
        v5 = v36;
        goto LABEL_124;
      }

      v144 = v37;
      v78 = objc_alloc(MEMORY[0x1E696ABC0]);
      v139 = v10;
      v79 = a4;
      v80 = *MEMORY[0x1E698F240];
      v179 = *MEMORY[0x1E696A578];
      v81 = objc_alloc(MEMORY[0x1E696AEC0]);
      v127 = objc_opt_class();
      v82 = v81;
      v35 = v154;
      v53 = [v82 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v127, @"value"];
      v180 = v53;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
      v149 = v9 = v144;
      v83 = [v78 initWithDomain:v80 code:2 userInfo:?];
      a4 = 0;
      *v79 = v83;
      v10 = v139;
LABEL_122:
      v5 = v36;
      goto LABEL_123;
    }

    v52 = v39;
    v163 = 0;
    v53 = [[BMAppIntentInvocationValue alloc] initWithJSONDictionary:v52 error:&v163];
    v54 = v163;
    if (v54)
    {
      v149 = v52;
      v11 = v153;
      if (a4)
      {
        v54 = v54;
        *a4 = v54;
      }

      a4 = 0;
LABEL_121:
      v9 = v37;
      goto LABEL_122;
    }

    v147 = v53;

    v11 = v153;
  }

  else
  {
    v147 = 0;
  }

  v40 = [v36 objectForKeyedSubscript:@"nextAction"];
  v149 = v40;
  if (v40)
  {
    v41 = v40;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = v41;
        v162 = 0;
        v148 = [[BMAppIntentInvocationAction alloc] initWithJSONDictionary:v55 error:&v162];
        v56 = v162;
        if (!v56)
        {

          v11 = v153;
          goto LABEL_36;
        }

        v146 = v55;
        v11 = v153;
        v53 = v147;
        if (a4)
        {
          v56 = v56;
          *a4 = v56;
        }

        a4 = 0;
        v9 = v37;
LABEL_88:
        v5 = v36;
        goto LABEL_113;
      }

      if (a4)
      {
        v145 = v37;
        v88 = v6;
        v89 = objc_alloc(MEMORY[0x1E696ABC0]);
        v140 = v10;
        v90 = a4;
        v91 = *MEMORY[0x1E698F240];
        v177 = *MEMORY[0x1E696A578];
        v148 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"nextAction"];
        v178 = v148;
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
        v93 = v89;
        v6 = v88;
        v9 = v145;
        v146 = v92;
        v94 = [v93 initWithDomain:v91 code:2 userInfo:?];
        a4 = 0;
        *v90 = v94;
        v10 = v140;
        v11 = v153;
        v53 = v147;
        goto LABEL_88;
      }

      v11 = v153;
      v53 = v147;
      goto LABEL_121;
    }
  }

  v148 = 0;
LABEL_36:
  v42 = [v36 objectForKeyedSubscript:@"confirmationActionName"];
  v9 = v37;
  v146 = v42;
  if (v42 && (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = v36;
      if (a4)
      {
        v101 = v6;
        v102 = objc_alloc(MEMORY[0x1E696ABC0]);
        v141 = v10;
        v103 = a4;
        v104 = *MEMORY[0x1E698F240];
        v175 = *MEMORY[0x1E696A578];
        v105 = objc_alloc(MEMORY[0x1E696AEC0]);
        v128 = objc_opt_class();
        v106 = v105;
        v35 = v154;
        v136 = [v106 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v128, @"confirmationActionName"];
        v176 = v136;
        v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
        v108 = v102;
        v6 = v101;
        v135 = v107;
        v109 = [v108 initWithDomain:v104 code:2 userInfo:?];
        a4 = 0;
        *v103 = v109;
        v10 = v141;
        v11 = v153;
        v53 = v147;
        goto LABEL_112;
      }

      v11 = v153;
      v53 = v147;
      goto LABEL_113;
    }

    v76 = v43;
    v161 = 0;
    v136 = [[BMAppIntentInvocationActionOutputConfirmationActionName alloc] initWithJSONDictionary:v76 error:&v161];
    v77 = v161;
    v5 = v36;
    if (v77)
    {
      v135 = v76;
      v11 = v153;
      v53 = v147;
      if (a4)
      {
        v77 = v77;
        *a4 = v77;
      }

      a4 = 0;
      goto LABEL_112;
    }

    v11 = v153;
  }

  else
  {
    v136 = 0;
    v5 = v36;
  }

  v44 = [v5 objectForKeyedSubscript:@"showPrompt"];
  v131 = v6;
  v132 = a4;
  v130 = v44;
  if (v44 && (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v135 = 0;
        v53 = v147;
        goto LABEL_111;
      }

      v110 = objc_alloc(MEMORY[0x1E696ABC0]);
      v111 = *MEMORY[0x1E698F240];
      v173 = *MEMORY[0x1E696A578];
      v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"showPrompt"];
      v174 = v47;
      v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
      v112 = v111;
      v35 = v154;
      v113 = [v110 initWithDomain:v112 code:2 userInfo:v65];
      v135 = 0;
      a4 = 0;
      *v132 = v113;
      goto LABEL_108;
    }

    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v47 = [v5 objectForKeyedSubscript:@"suggestedFollowUpActions"];
  v48 = [MEMORY[0x1E695DFB0] null];
  v49 = [v47 isEqual:v48];

  v135 = v46;
  if (!v49)
  {
    if (!v47 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v129 = v5;
      v137 = v10;
      v142 = v9;
      goto LABEL_64;
    }

    if (!v132)
    {
      a4 = 0;
      v11 = v153;
      v53 = v147;
      goto LABEL_110;
    }

    v122 = objc_alloc(MEMORY[0x1E696ABC0]);
    v123 = *MEMORY[0x1E698F240];
    v171 = *MEMORY[0x1E696A578];
    v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"suggestedFollowUpActions"];
    v172 = v65;
    v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
    *v132 = [v122 initWithDomain:v123 code:2 userInfo:v124];

    v35 = v154;
    a4 = 0;
LABEL_108:
    v11 = v153;
    v53 = v147;
    goto LABEL_109;
  }

  v129 = v5;
  v137 = v10;
  v142 = v9;

  v47 = 0;
LABEL_64:
  v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v47, "count")}];
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v47 = v47;
  v66 = [v47 countByEnumeratingWithState:&v157 objects:v170 count:16];
  if (!v66)
  {
    goto LABEL_74;
  }

  v67 = v66;
  v68 = *v158;
  v69 = v8;
  while (2)
  {
    for (i = 0; i != v67; ++i)
    {
      if (*v158 != v68)
      {
        objc_enumerationMutation(v47);
      }

      v71 = *(*(&v157 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v114 = v132;
        v10 = v137;
        v5 = v129;
        if (v132)
        {
          v115 = objc_alloc(MEMORY[0x1E696ABC0]);
          v116 = *MEMORY[0x1E698F240];
          v168 = *MEMORY[0x1E696A578];
          v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"suggestedFollowUpActions"];
          v169 = v72;
          v117 = MEMORY[0x1E695DF20];
          v118 = &v169;
          v119 = &v168;
LABEL_102:
          v120 = [v117 dictionaryWithObjects:v118 forKeys:v119 count:1];
          *v114 = [v115 initWithDomain:v116 code:2 userInfo:v120];
LABEL_106:

          v8 = v69;
          v35 = v154;
        }

LABEL_107:

        a4 = 0;
        v9 = v142;
        goto LABEL_108;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v114 = v132;
        v10 = v137;
        v5 = v129;
        if (v132)
        {
          v115 = objc_alloc(MEMORY[0x1E696ABC0]);
          v116 = *MEMORY[0x1E698F240];
          v166 = *MEMORY[0x1E696A578];
          v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"suggestedFollowUpActions"];
          v167 = v72;
          v117 = MEMORY[0x1E695DF20];
          v118 = &v167;
          v119 = &v166;
          goto LABEL_102;
        }

        goto LABEL_107;
      }

      v72 = v71;
      v73 = [BMAppIntentInvocationAction alloc];
      v156 = 0;
      v74 = [(BMAppIntentInvocationAction *)v73 initWithJSONDictionary:v72 error:&v156];
      v75 = v156;
      if (v75)
      {
        v120 = v75;
        if (v132)
        {
          v121 = v75;
          *v132 = v120;
        }

        v10 = v137;
        v5 = v129;
        goto LABEL_106;
      }

      [v65 addObject:v74];

      v8 = v69;
      v35 = v154;
    }

    v67 = [v47 countByEnumeratingWithState:&v157 objects:v170 count:16];
    if (v67)
    {
      continue;
    }

    break;
  }

LABEL_74:

  v11 = v153;
  v9 = v142;
  v53 = v147;
  a4 = -[BMAppIntentInvocationActionOutput initWithIdentifier:showOutputAction:showOutputActionHint:dialog:value:nextAction:confirmationActionName:showPrompt:suggestedFollowUpActions:](self, "initWithIdentifier:showOutputAction:showOutputActionHint:dialog:value:nextAction:confirmationActionName:showPrompt:suggestedFollowUpActions:", v151, v142, [v153 intValue], v152, v147, v148, v136, v135, v65);
  self = a4;
  v10 = v137;
  v5 = v129;
LABEL_109:

LABEL_110:
  v45 = v130;
  v6 = v131;
LABEL_111:

LABEL_112:
LABEL_113:

LABEL_123:
LABEL_124:

  v50 = v35;
  v7 = v151;
LABEL_125:
  v62 = v152;
LABEL_126:

  v35 = v50;
LABEL_127:

LABEL_128:
LABEL_129:

LABEL_130:
LABEL_131:

LABEL_132:
  v125 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationActionOutput *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_raw_identifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_showOutputAction)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationAction *)self->_showOutputAction writeTo:v4];
    PBDataWriterRecallMark();
  }

  showOutputActionHint = self->_showOutputActionHint;
  PBDataWriterWriteUint32Field();
  if (self->_dialog)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationActionOutputDialog *)self->_dialog writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_value)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValue *)self->_value writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_nextAction)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationAction *)self->_nextAction writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_confirmationActionName)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationActionOutputConfirmationActionName *)self->_confirmationActionName writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasShowPrompt)
  {
    showPrompt = self->_showPrompt;
    PBDataWriterWriteBOOLField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_suggestedFollowUpActions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v18 = 0;
        PBDataWriterPlaceMark();
        [v12 writeTo:{v4, v14}];
        PBDataWriterRecallMark();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = BMAppIntentInvocationActionOutput;
  v5 = [(BMEventBase *)&v44 init];
  if (!v5)
  {
    goto LABEL_80;
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
        LOBYTE(v45) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v45 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v45 & 0x7F) << v8;
        if ((v45 & 0x80) == 0)
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
      if ((v15 >> 3) <= 5)
      {
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v26 = [v4 position] + 1;
              if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
              {
                v28 = [v4 data];
                [v28 getBytes:&v45 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v25 |= (v45 & 0x7F) << v23;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              if (v24++ > 8)
              {
                goto LABEL_75;
              }
            }

            if (([v4 hasError] & 1) != 0 || v25 > 3)
            {
LABEL_75:
              LODWORD(v25) = 0;
            }

            v5->_showOutputActionHint = v25;
            goto LABEL_60;
          }

          if (v16 == 4)
          {
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_82;
            }

            v19 = [[BMAppIntentInvocationActionOutputDialog alloc] initByReadFrom:v4];
            if (!v19)
            {
              goto LABEL_82;
            }

            v20 = 48;
            goto LABEL_59;
          }

LABEL_71:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_82;
          }

          goto LABEL_60;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_82;
            }

            v19 = [[BMAppIntentInvocationAction alloc] initByReadFrom:v4];
            if (!v19)
            {
              goto LABEL_82;
            }

            v20 = 40;
            goto LABEL_59;
          }

          goto LABEL_71;
        }

        v21 = PBReaderReadData();
        if ([(NSData *)v21 length]!= 16)
        {

LABEL_82:
          goto LABEL_83;
        }

        raw_identifier = v5->_raw_identifier;
        v5->_raw_identifier = v21;
      }

      else
      {
        if (v16 <= 8)
        {
          if (v16 == 6)
          {
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_82;
            }

            v19 = [[BMAppIntentInvocationValue alloc] initByReadFrom:v4];
            if (!v19)
            {
              goto LABEL_82;
            }

            v20 = 56;
            goto LABEL_59;
          }

          if (v16 == 8)
          {
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_82;
            }

            v19 = [[BMAppIntentInvocationAction alloc] initByReadFrom:v4];
            if (!v19)
            {
              goto LABEL_82;
            }

            v20 = 64;
            goto LABEL_59;
          }

          goto LABEL_71;
        }

        if (v16 == 9)
        {
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_82;
          }

          v19 = [[BMAppIntentInvocationActionOutputConfirmationActionName alloc] initByReadFrom:v4];
          if (!v19)
          {
            goto LABEL_82;
          }

          v20 = 72;
LABEL_59:
          v30 = *(&v5->super.super.isa + v20);
          *(&v5->super.super.isa + v20) = v19;

          PBReaderRecallMark();
          goto LABEL_60;
        }

        if (v16 == 10)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasShowPrompt = 1;
          while (1)
          {
            LOBYTE(v45) = 0;
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:&v45 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v34 |= (v45 & 0x7F) << v32;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v14 = v33++ >= 9;
            if (v14)
            {
              LOBYTE(v38) = 0;
              goto LABEL_78;
            }
          }

          v38 = (v34 != 0) & ~[v4 hasError];
LABEL_78:
          v5->_showPrompt = v38;
          goto LABEL_60;
        }

        if (v16 != 11)
        {
          goto LABEL_71;
        }

        v45 = 0;
        v46 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_82;
        }

        v17 = [[BMAppIntentInvocationAction alloc] initByReadFrom:v4];
        if (!v17)
        {
          goto LABEL_82;
        }

        v18 = v17;
        [v6 addObject:v17];
        PBReaderRecallMark();
      }

LABEL_60:
      v31 = [v4 position];
    }

    while (v31 < [v4 length]);
  }

  v39 = [v6 copy];
  suggestedFollowUpActions = v5->_suggestedFollowUpActions;
  v5->_suggestedFollowUpActions = v39;

  v41 = [v4 hasError];
  if (v41)
  {
LABEL_83:
    v42 = 0;
  }

  else
  {
LABEL_80:
    v42 = v5;
  }

  return v42;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAppIntentInvocationActionOutput *)self identifier];
  v5 = [(BMAppIntentInvocationActionOutput *)self showOutputAction];
  v6 = BMAppIntentInvocationActionOutputHintAsString([(BMAppIntentInvocationActionOutput *)self showOutputActionHint]);
  v7 = [(BMAppIntentInvocationActionOutput *)self dialog];
  v8 = [(BMAppIntentInvocationActionOutput *)self value];
  v9 = [(BMAppIntentInvocationActionOutput *)self nextAction];
  v10 = [(BMAppIntentInvocationActionOutput *)self confirmationActionName];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntentInvocationActionOutput showPrompt](self, "showPrompt")}];
  v12 = [(BMAppIntentInvocationActionOutput *)self suggestedFollowUpActions];
  v13 = [v3 initWithFormat:@"BMAppIntentInvocationActionOutput with identifier: %@, showOutputAction: %@, showOutputActionHint: %@, dialog: %@, value: %@, nextAction: %@, confirmationActionName: %@, showPrompt: %@, suggestedFollowUpActions: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMAppIntentInvocationActionOutput)initWithIdentifier:(id)a3 showOutputAction:(id)a4 showOutputActionHint:(int)a5 dialog:(id)a6 value:(id)a7 nextAction:(id)a8 confirmationActionName:(id)a9 showPrompt:(id)a10 suggestedFollowUpActions:(id)a11
{
  v31[2] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v29 = a4;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v25 = a9;
  v17 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = BMAppIntentInvocationActionOutput;
  v19 = [(BMEventBase *)&v30 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v16)
    {
      v31[0] = 0;
      v31[1] = 0;
      [v16 getUUIDBytes:v31];
      v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v31 length:16];
      raw_identifier = v19->_raw_identifier;
      v19->_raw_identifier = v20;
    }

    else
    {
      raw_identifier = v19->_raw_identifier;
      v19->_raw_identifier = 0;
    }

    objc_storeStrong(&v19->_showOutputAction, a4);
    v19->_showOutputActionHint = a5;
    objc_storeStrong(&v19->_dialog, a6);
    objc_storeStrong(&v19->_value, a7);
    objc_storeStrong(&v19->_nextAction, a8);
    objc_storeStrong(&v19->_confirmationActionName, a9);
    if (v17)
    {
      v19->_hasShowPrompt = 1;
      v19->_showPrompt = [v17 BOOLValue];
    }

    else
    {
      v19->_hasShowPrompt = 0;
      v19->_showPrompt = 0;
    }

    objc_storeStrong(&v19->_suggestedFollowUpActions, a11);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"showOutputAction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1023];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"showOutputActionHint" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dialog_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1025];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1027];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"nextAction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1029];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"confirmationActionName_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1031];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"showPrompt" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"suggestedFollowUpActions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1033];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __44__BMAppIntentInvocationActionOutput_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _suggestedFollowUpActionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __44__BMAppIntentInvocationActionOutput_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 confirmationActionName];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMAppIntentInvocationActionOutput_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 nextAction];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMAppIntentInvocationActionOutput_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 value];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMAppIntentInvocationActionOutput_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 dialog];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMAppIntentInvocationActionOutput_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 showOutputAction];
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

    v8 = [[BMAppIntentInvocationActionOutput alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end