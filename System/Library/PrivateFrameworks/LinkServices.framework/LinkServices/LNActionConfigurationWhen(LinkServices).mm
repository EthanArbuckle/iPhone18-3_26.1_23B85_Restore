@interface LNActionConfigurationWhen(LinkServices)
- (id)actionConfigurationByEvaluatingAction:()LinkServices context:;
- (id)valueForAction:()LinkServices context:;
@end

@implementation LNActionConfigurationWhen(LinkServices)

- (id)valueForAction:()LinkServices context:
{
  v6 = a3;
  v7 = a4;
  condition = [self condition];
  parameterIdentifier = [condition parameterIdentifier];
  if ([parameterIdentifier isEqualToString:*MEMORY[0x1E69AC180]])
  {
    widgetFamily = [v7 widgetFamily];

    if (widgetFamily)
    {
      v11 = objc_alloc(MEMORY[0x1E69ACA88]);
      widgetFamily2 = [v7 widgetFamily];
      stringValueType = [MEMORY[0x1E69AC940] stringValueType];
      value = [v11 initWithValue:widgetFamily2 valueType:stringValueType];

LABEL_28:
      goto LABEL_29;
    }
  }

  else
  {
  }

  condition2 = [self condition];
  parameterIdentifier2 = [condition2 parameterIdentifier];
  v17 = [parameterIdentifier2 isEqualToString:*MEMORY[0x1E69AC148]];

  if (!v17)
  {
    parameters = [v6 parameters];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __66__LNActionConfigurationWhen_LinkServices__valueForAction_context___block_invoke;
    v53[3] = &unk_1E74B26A8;
    v53[4] = self;
    widgetFamily2 = [parameters if_firstObjectPassingTest:v53];

    value = [widgetFamily2 value];
    if (widgetFamily2)
    {
      v52 = v6;
      value2 = [widgetFamily2 value];
      valueType = [value2 valueType];
      condition3 = [self condition];
      value3 = [condition3 value];
      valueType2 = [value3 valueType];
      v30 = [valueType isEqual:valueType2];

      if (v30)
      {
        v6 = v52;
      }

      else
      {
        value4 = [widgetFamily2 value];
        v31Value = [value4 value];

        if (v31Value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          condition4 = [self condition];
          value5 = [condition4 value];
          valueType3 = [value5 valueType];

          if (valueType3)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = valueType3;
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

          memberValueType = [v37 memberValueType];

          if (memberValueType)
          {
            valueType4 = memberValueType;
          }

          else
          {
            condition5 = [self condition];
            value6 = [condition5 value];
            valueType4 = [value6 valueType];
          }

          intValueType = [MEMORY[0x1E69AC940] intValueType];
          v43 = [valueType4 isEqual:intValueType];

          v44 = objc_alloc(MEMORY[0x1E69ACA88]);
          if (v43)
          {
            v45 = MEMORY[0x1E696AD98];
            identifier = [v31Value identifier];
            instanceIdentifier = [identifier instanceIdentifier];
            stringValueType2 = [v45 numberWithInteger:{objc_msgSend(instanceIdentifier, "integerValue")}];
            intValueType2 = [MEMORY[0x1E69AC940] intValueType];
            v50 = [v44 initWithValue:stringValueType2 valueType:intValueType2];

            value = intValueType2;
          }

          else
          {
            identifier = [v31Value identifier];
            instanceIdentifier = [identifier instanceIdentifier];
            stringValueType2 = [MEMORY[0x1E69AC940] stringValueType];
            v50 = [v44 initWithValue:instanceIdentifier valueType:stringValueType2];
          }

          v6 = v52;

          value = v50;
        }

        else
        {
          v6 = v52;
        }
      }
    }

    goto LABEL_28;
  }

  origin = [v7 origin];
  v19 = origin;
  v20 = *MEMORY[0x1E69AC150];
  if (origin)
  {
    v20 = origin;
  }

  v21 = v20;

  v22 = objc_alloc(MEMORY[0x1E69ACA88]);
  stringValueType3 = [MEMORY[0x1E69AC940] stringValueType];
  value = [v22 initWithValue:v21 valueType:stringValueType3];

LABEL_29:

  return value;
}

- (id)actionConfigurationByEvaluatingAction:()LinkServices context:
{
  v6 = a3;
  v7 = a4;
  v8 = [self valueForAction:v6 context:v7];
  condition = [self condition];
  comparisonOperator = [condition comparisonOperator];

  switch(comparisonOperator)
  {
    case 0:
      if (v8)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    case 1:
      condition2 = [self condition];
      value = [condition2 value];
      if (![v8 isEqual:value])
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    case 2:
      condition2 = [self condition];
      value = [condition2 value];
      if ([v8 isEqual:value])
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    case 3:
      if (!v8)
      {
        goto LABEL_54;
      }

      condition2 = [self condition];
      value = [condition2 value];
      if ([v8 compare:value] == -1)
      {
        goto LABEL_35;
      }

LABEL_31:
      otherwise = [self otherwise];
      goto LABEL_36;
    case 4:
      if (!v8)
      {
        goto LABEL_54;
      }

      condition2 = [self condition];
      value = [condition2 value];
      if ([v8 compare:value] == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    case 5:
      condition2 = [self condition];
      value = [condition2 value];
      if ([v8 compare:value] != 1)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    case 6:
      if (!v8)
      {
        goto LABEL_42;
      }

      condition2 = [self condition];
      value = [condition2 value];
      if ([v8 compare:value] == 1)
      {
LABEL_35:
        otherwise = [self when];
LABEL_36:
        v24 = otherwise;
      }

      else
      {
LABEL_43:
        condition3 = [self condition];
        value2 = [condition3 value];
        if ([v8 compare:value2])
        {
          [self otherwise];
        }

        else
        {
          [self when];
        }
        v24 = ;

LABEL_61:
      }

LABEL_63:
      v39 = [v24 actionConfigurationByEvaluatingAction:v6 context:v7];

      return v39;
    case 7:
      condition4 = [self condition];
      value3 = [condition4 value];
      v20Value = [value3 value];

      if (v20Value)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v20Value;
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
        otherwise2 = [self otherwise];
      }

      else
      {
LABEL_54:
        otherwise2 = [self when];
      }

      v24 = otherwise2;
      goto LABEL_63;
    case 9:
      value4 = [v8 value];
      if (value4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = value4;
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

      condition2 = [self condition];
      value = [condition2 value];
      condition3 = [value value];
      v33 = [v32 containsString:condition3];

      selfCopy2 = self;
      if (!v33)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    case 10:
      value5 = [v8 value];
      if (value5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = value5;
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

      condition2 = [self condition];
      value = [condition2 value];
      condition3 = [value value];
      v31 = [v30 containsString:condition3];
      goto LABEL_58;
    case 11:
      value6 = [v8 value];
      if (value6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = value6;
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

      condition2 = [self condition];
      value = [condition2 value];
      condition3 = [value value];
      v31 = [v30 hasPrefix:condition3];
      goto LABEL_58;
    case 12:
      value7 = [v8 value];
      if (value7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = value7;
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

      condition2 = [self condition];
      value = [condition2 value];
      condition3 = [value value];
      v31 = [v30 hasSuffix:condition3];
LABEL_58:
      v38 = v31;

      selfCopy2 = self;
      if (v38)
      {
LABEL_51:
        when = [selfCopy2 when];
      }

      else
      {
LABEL_59:
        when = [selfCopy2 otherwise];
      }

      v24 = when;
      goto LABEL_61;
    default:
      v24 = 0;
      goto LABEL_63;
  }
}

@end