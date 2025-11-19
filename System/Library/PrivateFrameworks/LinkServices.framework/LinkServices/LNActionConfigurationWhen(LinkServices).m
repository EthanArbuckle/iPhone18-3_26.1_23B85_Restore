@interface LNActionConfigurationWhen(LinkServices)
- (id)actionConfigurationByEvaluatingAction:()LinkServices context:;
- (id)valueForAction:()LinkServices context:;
@end

@implementation LNActionConfigurationWhen(LinkServices)

- (id)valueForAction:()LinkServices context:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 condition];
  v9 = [v8 parameterIdentifier];
  if ([v9 isEqualToString:*MEMORY[0x1E69AC180]])
  {
    v10 = [v7 widgetFamily];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E69ACA88]);
      v12 = [v7 widgetFamily];
      v13 = [MEMORY[0x1E69AC940] stringValueType];
      v14 = [v11 initWithValue:v12 valueType:v13];

LABEL_28:
      goto LABEL_29;
    }
  }

  else
  {
  }

  v15 = [a1 condition];
  v16 = [v15 parameterIdentifier];
  v17 = [v16 isEqualToString:*MEMORY[0x1E69AC148]];

  if (!v17)
  {
    v24 = [v6 parameters];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __66__LNActionConfigurationWhen_LinkServices__valueForAction_context___block_invoke;
    v53[3] = &unk_1E74B26A8;
    v53[4] = a1;
    v12 = [v24 if_firstObjectPassingTest:v53];

    v14 = [v12 value];
    if (v12)
    {
      v52 = v6;
      v25 = [v12 value];
      v26 = [v25 valueType];
      v27 = [a1 condition];
      v28 = [v27 value];
      v29 = [v28 valueType];
      v30 = [v26 isEqual:v29];

      if (v30)
      {
        v6 = v52;
      }

      else
      {
        v31 = [v12 value];
        v32 = [v31 value];

        if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v33 = [a1 condition];
          v34 = [v33 value];
          v35 = [v34 valueType];

          if (v35)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = v35;
            }

            else
            {
              v36 = 0;
            }
          }

          else
          {
            v36 = 0;
          }

          v37 = v36;

          v38 = [v37 memberValueType];

          if (v38)
          {
            v39 = v38;
          }

          else
          {
            v40 = [a1 condition];
            v41 = [v40 value];
            v39 = [v41 valueType];
          }

          v42 = [MEMORY[0x1E69AC940] intValueType];
          v43 = [v39 isEqual:v42];

          v44 = objc_alloc(MEMORY[0x1E69ACA88]);
          if (v43)
          {
            v45 = MEMORY[0x1E696AD98];
            v46 = [v32 identifier];
            v47 = [v46 instanceIdentifier];
            v48 = [v45 numberWithInteger:{objc_msgSend(v47, "integerValue")}];
            v49 = [MEMORY[0x1E69AC940] intValueType];
            v50 = [v44 initWithValue:v48 valueType:v49];

            v14 = v49;
          }

          else
          {
            v46 = [v32 identifier];
            v47 = [v46 instanceIdentifier];
            v48 = [MEMORY[0x1E69AC940] stringValueType];
            v50 = [v44 initWithValue:v47 valueType:v48];
          }

          v6 = v52;

          v14 = v50;
        }

        else
        {
          v6 = v52;
        }
      }
    }

    goto LABEL_28;
  }

  v18 = [v7 origin];
  v19 = v18;
  v20 = *MEMORY[0x1E69AC150];
  if (v18)
  {
    v20 = v18;
  }

  v21 = v20;

  v22 = objc_alloc(MEMORY[0x1E69ACA88]);
  v23 = [MEMORY[0x1E69AC940] stringValueType];
  v14 = [v22 initWithValue:v21 valueType:v23];

LABEL_29:

  return v14;
}

- (id)actionConfigurationByEvaluatingAction:()LinkServices context:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 valueForAction:v6 context:v7];
  v9 = [a1 condition];
  v10 = [v9 comparisonOperator];

  switch(v10)
  {
    case 0:
      if (v8)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    case 1:
      v13 = [a1 condition];
      v14 = [v13 value];
      if (![v8 isEqual:v14])
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    case 2:
      v13 = [a1 condition];
      v14 = [v13 value];
      if ([v8 isEqual:v14])
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    case 3:
      if (!v8)
      {
        goto LABEL_54;
      }

      v13 = [a1 condition];
      v14 = [v13 value];
      if ([v8 compare:v14] == -1)
      {
        goto LABEL_35;
      }

LABEL_31:
      v23 = [a1 otherwise];
      goto LABEL_36;
    case 4:
      if (!v8)
      {
        goto LABEL_54;
      }

      v13 = [a1 condition];
      v14 = [v13 value];
      if ([v8 compare:v14] == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    case 5:
      v13 = [a1 condition];
      v14 = [v13 value];
      if ([v8 compare:v14] != 1)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    case 6:
      if (!v8)
      {
        goto LABEL_42;
      }

      v13 = [a1 condition];
      v14 = [v13 value];
      if ([v8 compare:v14] == 1)
      {
LABEL_35:
        v23 = [a1 when];
LABEL_36:
        v24 = v23;
      }

      else
      {
LABEL_43:
        v28 = [a1 condition];
        v29 = [v28 value];
        if ([v8 compare:v29])
        {
          [a1 otherwise];
        }

        else
        {
          [a1 when];
        }
        v24 = ;

LABEL_61:
      }

LABEL_63:
      v39 = [v24 actionConfigurationByEvaluatingAction:v6 context:v7];

      return v39;
    case 7:
      v19 = [a1 condition];
      v20 = [v19 value];
      v21 = [v20 value];

      if (v21)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v36 = v22;

      v37 = [v36 containsObject:v8];
      if (v37)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    case 8:
      if (v8)
      {
LABEL_42:
        v27 = [a1 otherwise];
      }

      else
      {
LABEL_54:
        v27 = [a1 when];
      }

      v24 = v27;
      goto LABEL_63;
    case 9:
      v17 = [v8 value];
      if (v17)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v32 = v18;

      v13 = [a1 condition];
      v14 = [v13 value];
      v28 = [v14 value];
      v33 = [v32 containsString:v28];

      v34 = a1;
      if (!v33)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    case 10:
      v25 = [v8 value];
      if (v25)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v30 = v26;

      v13 = [a1 condition];
      v14 = [v13 value];
      v28 = [v14 value];
      v31 = [v30 containsString:v28];
      goto LABEL_58;
    case 11:
      v11 = [v8 value];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v30 = v12;

      v13 = [a1 condition];
      v14 = [v13 value];
      v28 = [v14 value];
      v31 = [v30 hasPrefix:v28];
      goto LABEL_58;
    case 12:
      v15 = [v8 value];
      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v30 = v16;

      v13 = [a1 condition];
      v14 = [v13 value];
      v28 = [v14 value];
      v31 = [v30 hasSuffix:v28];
LABEL_58:
      v38 = v31;

      v34 = a1;
      if (v38)
      {
LABEL_51:
        v35 = [v34 when];
      }

      else
      {
LABEL_59:
        v35 = [v34 otherwise];
      }

      v24 = v35;
      goto LABEL_61;
    default:
      v24 = 0;
      goto LABEL_63;
  }
}

@end