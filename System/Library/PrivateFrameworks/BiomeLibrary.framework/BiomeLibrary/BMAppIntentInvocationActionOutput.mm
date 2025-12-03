@interface BMAppIntentInvocationActionOutput
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppIntentInvocationActionOutput)initWithIdentifier:(id)identifier showOutputAction:(id)action showOutputActionHint:(int)hint dialog:(id)dialog value:(id)value nextAction:(id)nextAction confirmationActionName:(id)name showPrompt:(id)self0 suggestedFollowUpActions:(id)self1;
- (BMAppIntentInvocationActionOutput)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)identifier;
- (id)_suggestedFollowUpActionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMAppIntentInvocationActionOutput *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMAppIntentInvocationActionOutput *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    showOutputAction = [(BMAppIntentInvocationActionOutput *)self showOutputAction];
    showOutputAction2 = [v5 showOutputAction];
    v15 = showOutputAction2;
    if (showOutputAction == showOutputAction2)
    {
    }

    else
    {
      showOutputAction3 = [(BMAppIntentInvocationActionOutput *)self showOutputAction];
      showOutputAction4 = [v5 showOutputAction];
      v18 = [showOutputAction3 isEqual:showOutputAction4];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    showOutputActionHint = [(BMAppIntentInvocationActionOutput *)self showOutputActionHint];
    if (showOutputActionHint == [v5 showOutputActionHint])
    {
      dialog = [(BMAppIntentInvocationActionOutput *)self dialog];
      dialog2 = [v5 dialog];
      v22 = dialog2;
      if (dialog == dialog2)
      {
      }

      else
      {
        dialog3 = [(BMAppIntentInvocationActionOutput *)self dialog];
        dialog4 = [v5 dialog];
        v25 = [dialog3 isEqual:dialog4];

        if (!v25)
        {
          goto LABEL_33;
        }
      }

      value = [(BMAppIntentInvocationActionOutput *)self value];
      value2 = [v5 value];
      v28 = value2;
      if (value == value2)
      {
      }

      else
      {
        value3 = [(BMAppIntentInvocationActionOutput *)self value];
        value4 = [v5 value];
        v31 = [value3 isEqual:value4];

        if (!v31)
        {
          goto LABEL_33;
        }
      }

      nextAction = [(BMAppIntentInvocationActionOutput *)self nextAction];
      nextAction2 = [v5 nextAction];
      v34 = nextAction2;
      if (nextAction == nextAction2)
      {
      }

      else
      {
        nextAction3 = [(BMAppIntentInvocationActionOutput *)self nextAction];
        nextAction4 = [v5 nextAction];
        v37 = [nextAction3 isEqual:nextAction4];

        if (!v37)
        {
          goto LABEL_33;
        }
      }

      confirmationActionName = [(BMAppIntentInvocationActionOutput *)self confirmationActionName];
      confirmationActionName2 = [v5 confirmationActionName];
      v40 = confirmationActionName2;
      if (confirmationActionName == confirmationActionName2)
      {
      }

      else
      {
        confirmationActionName3 = [(BMAppIntentInvocationActionOutput *)self confirmationActionName];
        confirmationActionName4 = [v5 confirmationActionName];
        v43 = [confirmationActionName3 isEqual:confirmationActionName4];

        if (!v43)
        {
          goto LABEL_33;
        }
      }

      if (!-[BMAppIntentInvocationActionOutput hasShowPrompt](self, "hasShowPrompt") && ![v5 hasShowPrompt] || -[BMAppIntentInvocationActionOutput hasShowPrompt](self, "hasShowPrompt") && objc_msgSend(v5, "hasShowPrompt") && (v44 = -[BMAppIntentInvocationActionOutput showPrompt](self, "showPrompt"), v44 == objc_msgSend(v5, "showPrompt")))
      {
        suggestedFollowUpActions = [(BMAppIntentInvocationActionOutput *)self suggestedFollowUpActions];
        suggestedFollowUpActions2 = [v5 suggestedFollowUpActions];
        if (suggestedFollowUpActions == suggestedFollowUpActions2)
        {
          v12 = 1;
        }

        else
        {
          suggestedFollowUpActions3 = [(BMAppIntentInvocationActionOutput *)self suggestedFollowUpActions];
          suggestedFollowUpActions4 = [v5 suggestedFollowUpActions];
          v12 = [suggestedFollowUpActions3 isEqual:suggestedFollowUpActions4];
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
  identifier = [(BMAppIntentInvocationActionOutput *)self identifier];
  uUIDString = [identifier UUIDString];

  showOutputAction = [(BMAppIntentInvocationActionOutput *)self showOutputAction];
  jsonDictionary = [showOutputAction jsonDictionary];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationActionOutput showOutputActionHint](self, "showOutputActionHint")}];
  dialog = [(BMAppIntentInvocationActionOutput *)self dialog];
  jsonDictionary2 = [dialog jsonDictionary];

  value = [(BMAppIntentInvocationActionOutput *)self value];
  jsonDictionary3 = [value jsonDictionary];

  nextAction = [(BMAppIntentInvocationActionOutput *)self nextAction];
  jsonDictionary4 = [nextAction jsonDictionary];

  confirmationActionName = [(BMAppIntentInvocationActionOutput *)self confirmationActionName];
  jsonDictionary5 = [confirmationActionName jsonDictionary];

  if ([(BMAppIntentInvocationActionOutput *)self hasShowPrompt])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntentInvocationActionOutput showPrompt](self, "showPrompt")}];
  }

  else
  {
    v14 = 0;
  }

  _suggestedFollowUpActionsJSONArray = [(BMAppIntentInvocationActionOutput *)self _suggestedFollowUpActionsJSONArray];
  v39[0] = @"identifier";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null;
  v40[0] = null;
  v39[1] = @"showOutputAction";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null2;
  v40[1] = null2;
  v39[2] = @"showOutputActionHint";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = uUIDString;
  v31 = null3;
  v40[2] = null3;
  v39[3] = @"dialog";
  null4 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = jsonDictionary;
  v30 = null4;
  v40[3] = null4;
  v39[4] = @"value";
  null5 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v7;
  v40[4] = null5;
  v39[5] = @"nextAction";
  null6 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = jsonDictionary2;
  v40[5] = null6;
  v39[6] = @"confirmationActionName";
  null7 = jsonDictionary5;
  if (!jsonDictionary5)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = jsonDictionary3;
  v40[6] = null7;
  v39[7] = @"showPrompt";
  null8 = v14;
  if (!v14)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v40[7] = null8;
  v39[8] = @"suggestedFollowUpActions";
  null9 = _suggestedFollowUpActionsJSONArray;
  if (!_suggestedFollowUpActionsJSONArray)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v40[8] = null9;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:9];
  if (_suggestedFollowUpActionsJSONArray)
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
  if (!jsonDictionary5)
  {
  }

  if (!jsonDictionary4)
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
  suggestedFollowUpActions = [(BMAppIntentInvocationActionOutput *)self suggestedFollowUpActions];
  v5 = [suggestedFollowUpActions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(suggestedFollowUpActions);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [suggestedFollowUpActions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMAppIntentInvocationActionOutput)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v190[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v20 = v6;
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v23 = *MEMORY[0x1E698F240];
        v187 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v188 = v24;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
        v25 = v21;
        v6 = v20;
        v7 = v24;
        v26 = [v25 initWithDomain:v23 code:2 userInfo:v8];
        error = 0;
        *errorCopy = v26;
        goto LABEL_130;
      }

      goto LABEL_132;
    }

    errorCopy2 = error;
    v13 = v6;
    v14 = v6;
    v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v14];
    if (!v15)
    {
      v84 = v14;
      if (errorCopy2)
      {
        v85 = objc_alloc(MEMORY[0x1E696ABC0]);
        v86 = *MEMORY[0x1E698F240];
        v189 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
        v190[0] = v8;
        v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v190 forKeys:&v189 count:1];
        *errorCopy2 = [v85 initWithDomain:v86 code:2 userInfo:v87];

        error = 0;
        v6 = v13;
        v7 = v84;
        goto LABEL_130;
      }

      error = 0;
      v7 = v84;
      goto LABEL_131;
    }

    v16 = v15;

    v17 = v16;
    error = errorCopy2;
    v6 = v13;
    v7 = v17;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"showOutputAction"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v27 = v7;
        v28 = v6;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
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
        error = 0;
        *errorCopy3 = v34;
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
      if (error)
      {
        v18 = v18;
        *error = v18;
      }

      error = 0;
      goto LABEL_129;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"showOutputActionHint"];
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
        if (error)
        {
          v95 = v7;
          v96 = v6;
          v97 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy4 = error;
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
          error = 0;
          *errorCopy4 = v100;
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

  v35 = [dictionaryCopy objectForKeyedSubscript:@"dialog"];
  v153 = v11;
  if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v138 = v10;
        v143 = v9;
        v57 = v7;
        v58 = v6;
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy5 = error;
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
        *errorCopy5 = [v64 initWithDomain:v60 code:2 userInfo:v63];

        error = 0;
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
      if (error)
      {
        v51 = v51;
        *error = v51;
      }

      error = 0;
      goto LABEL_125;
    }

    v151 = v7;
    v36 = dictionaryCopy;
    v37 = v9;
  }

  else
  {
    v151 = v7;
    v152 = 0;
    v36 = dictionaryCopy;
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
      if (!error)
      {
        v9 = v37;
        dictionaryCopy = v36;
        goto LABEL_124;
      }

      v144 = v37;
      v78 = objc_alloc(MEMORY[0x1E696ABC0]);
      v139 = v10;
      errorCopy6 = error;
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
      error = 0;
      *errorCopy6 = v83;
      v10 = v139;
LABEL_122:
      dictionaryCopy = v36;
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
      if (error)
      {
        v54 = v54;
        *error = v54;
      }

      error = 0;
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
        if (error)
        {
          v56 = v56;
          *error = v56;
        }

        error = 0;
        v9 = v37;
LABEL_88:
        dictionaryCopy = v36;
        goto LABEL_113;
      }

      if (error)
      {
        v145 = v37;
        v88 = v6;
        v89 = objc_alloc(MEMORY[0x1E696ABC0]);
        v140 = v10;
        errorCopy7 = error;
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
        error = 0;
        *errorCopy7 = v94;
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
      dictionaryCopy = v36;
      if (error)
      {
        v101 = v6;
        v102 = objc_alloc(MEMORY[0x1E696ABC0]);
        v141 = v10;
        errorCopy8 = error;
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
        error = 0;
        *errorCopy8 = v109;
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
    dictionaryCopy = v36;
    if (v77)
    {
      v135 = v76;
      v11 = v153;
      v53 = v147;
      if (error)
      {
        v77 = v77;
        *error = v77;
      }

      error = 0;
      goto LABEL_112;
    }

    v11 = v153;
  }

  else
  {
    v136 = 0;
    dictionaryCopy = v36;
  }

  v44 = [dictionaryCopy objectForKeyedSubscript:@"showPrompt"];
  v131 = v6;
  errorCopy9 = error;
  v130 = v44;
  if (v44 && (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
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
      error = 0;
      *errorCopy9 = v113;
      goto LABEL_108;
    }

    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v47 = [dictionaryCopy objectForKeyedSubscript:@"suggestedFollowUpActions"];
  null = [MEMORY[0x1E695DFB0] null];
  v49 = [v47 isEqual:null];

  v135 = v46;
  if (!v49)
  {
    if (!v47 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v129 = dictionaryCopy;
      v137 = v10;
      v142 = v9;
      goto LABEL_64;
    }

    if (!errorCopy9)
    {
      error = 0;
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
    *errorCopy9 = [v122 initWithDomain:v123 code:2 userInfo:v124];

    v35 = v154;
    error = 0;
LABEL_108:
    v11 = v153;
    v53 = v147;
    goto LABEL_109;
  }

  v129 = dictionaryCopy;
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
        v114 = errorCopy9;
        v10 = v137;
        dictionaryCopy = v129;
        if (errorCopy9)
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

        error = 0;
        v9 = v142;
        goto LABEL_108;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v114 = errorCopy9;
        v10 = v137;
        dictionaryCopy = v129;
        if (errorCopy9)
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
        if (errorCopy9)
        {
          v121 = v75;
          *errorCopy9 = v120;
        }

        v10 = v137;
        dictionaryCopy = v129;
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
  error = -[BMAppIntentInvocationActionOutput initWithIdentifier:showOutputAction:showOutputActionHint:dialog:value:nextAction:confirmationActionName:showPrompt:suggestedFollowUpActions:](self, "initWithIdentifier:showOutputAction:showOutputActionHint:dialog:value:nextAction:confirmationActionName:showPrompt:suggestedFollowUpActions:", v151, v142, [v153 intValue], v152, v147, v148, v136, v135, v65);
  self = error;
  v10 = v137;
  dictionaryCopy = v129;
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
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationActionOutput *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_raw_identifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_showOutputAction)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationAction *)self->_showOutputAction writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  showOutputActionHint = self->_showOutputActionHint;
  PBDataWriterWriteUint32Field();
  if (self->_dialog)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationActionOutputDialog *)self->_dialog writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_value)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValue *)self->_value writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_nextAction)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationAction *)self->_nextAction writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_confirmationActionName)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationActionOutputConfirmationActionName *)self->_confirmationActionName writeTo:toCopy];
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
        [v12 writeTo:{toCopy, v14}];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v44.receiver = self;
  v44.super_class = BMAppIntentInvocationActionOutput;
  v5 = [(BMEventBase *)&v44 init];
  if (!v5)
  {
    goto LABEL_80;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
              v26 = [fromCopy position] + 1;
              if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v25 > 3)
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

            v19 = [[BMAppIntentInvocationActionOutputDialog alloc] initByReadFrom:fromCopy];
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

            v19 = [[BMAppIntentInvocationAction alloc] initByReadFrom:fromCopy];
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

            v19 = [[BMAppIntentInvocationValue alloc] initByReadFrom:fromCopy];
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

            v19 = [[BMAppIntentInvocationAction alloc] initByReadFrom:fromCopy];
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

          v19 = [[BMAppIntentInvocationActionOutputConfirmationActionName alloc] initByReadFrom:fromCopy];
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
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v38 = (v34 != 0) & ~[fromCopy hasError];
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

        v17 = [[BMAppIntentInvocationAction alloc] initByReadFrom:fromCopy];
        if (!v17)
        {
          goto LABEL_82;
        }

        v18 = v17;
        [v6 addObject:v17];
        PBReaderRecallMark();
      }

LABEL_60:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v39 = [v6 copy];
  suggestedFollowUpActions = v5->_suggestedFollowUpActions;
  v5->_suggestedFollowUpActions = v39;

  hasError = [fromCopy hasError];
  if (hasError)
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
  identifier = [(BMAppIntentInvocationActionOutput *)self identifier];
  showOutputAction = [(BMAppIntentInvocationActionOutput *)self showOutputAction];
  v6 = BMAppIntentInvocationActionOutputHintAsString([(BMAppIntentInvocationActionOutput *)self showOutputActionHint]);
  dialog = [(BMAppIntentInvocationActionOutput *)self dialog];
  value = [(BMAppIntentInvocationActionOutput *)self value];
  nextAction = [(BMAppIntentInvocationActionOutput *)self nextAction];
  confirmationActionName = [(BMAppIntentInvocationActionOutput *)self confirmationActionName];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntentInvocationActionOutput showPrompt](self, "showPrompt")}];
  suggestedFollowUpActions = [(BMAppIntentInvocationActionOutput *)self suggestedFollowUpActions];
  v13 = [v3 initWithFormat:@"BMAppIntentInvocationActionOutput with identifier: %@, showOutputAction: %@, showOutputActionHint: %@, dialog: %@, value: %@, nextAction: %@, confirmationActionName: %@, showPrompt: %@, suggestedFollowUpActions: %@", identifier, showOutputAction, v6, dialog, value, nextAction, confirmationActionName, v11, suggestedFollowUpActions];

  return v13;
}

- (BMAppIntentInvocationActionOutput)initWithIdentifier:(id)identifier showOutputAction:(id)action showOutputActionHint:(int)hint dialog:(id)dialog value:(id)value nextAction:(id)nextAction confirmationActionName:(id)name showPrompt:(id)self0 suggestedFollowUpActions:(id)self1
{
  v31[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  actionCopy = action;
  dialogCopy = dialog;
  valueCopy = value;
  nextActionCopy = nextAction;
  nameCopy = name;
  promptCopy = prompt;
  actionsCopy = actions;
  v30.receiver = self;
  v30.super_class = BMAppIntentInvocationActionOutput;
  v19 = [(BMEventBase *)&v30 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (identifierCopy)
    {
      v31[0] = 0;
      v31[1] = 0;
      [identifierCopy getUUIDBytes:v31];
      v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v31 length:16];
      raw_identifier = v19->_raw_identifier;
      v19->_raw_identifier = v20;
    }

    else
    {
      raw_identifier = v19->_raw_identifier;
      v19->_raw_identifier = 0;
    }

    objc_storeStrong(&v19->_showOutputAction, action);
    v19->_showOutputActionHint = hint;
    objc_storeStrong(&v19->_dialog, dialog);
    objc_storeStrong(&v19->_value, value);
    objc_storeStrong(&v19->_nextAction, nextAction);
    objc_storeStrong(&v19->_confirmationActionName, name);
    if (promptCopy)
    {
      v19->_hasShowPrompt = 1;
      v19->_showPrompt = [promptCopy BOOLValue];
    }

    else
    {
      v19->_hasShowPrompt = 0;
      v19->_showPrompt = 0;
    }

    objc_storeStrong(&v19->_suggestedFollowUpActions, actions);
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