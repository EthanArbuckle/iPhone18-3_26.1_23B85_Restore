@interface LNActionConfigurationSwitch(LinkServices)
- (id)actionConfigurationByEvaluatingAction:()LinkServices context:;
- (id)valueForAction:()LinkServices context:;
@end

@implementation LNActionConfigurationSwitch(LinkServices)

- (id)valueForAction:()LinkServices context:
{
  v6 = a3;
  v7 = a4;
  parameterIdentifier = [self parameterIdentifier];
  if ([parameterIdentifier isEqualToString:*MEMORY[0x1E69AC180]])
  {
    widgetFamily = [v7 widgetFamily];

    if (widgetFamily)
    {
      v10 = objc_alloc(MEMORY[0x1E69ACA88]);
      widgetFamily2 = [v7 widgetFamily];
      stringValueType = [MEMORY[0x1E69AC940] stringValueType];
      value = [v10 initWithValue:widgetFamily2 valueType:stringValueType];

      goto LABEL_11;
    }
  }

  else
  {
  }

  parameterIdentifier2 = [self parameterIdentifier];
  v15 = [parameterIdentifier2 isEqualToString:*MEMORY[0x1E69AC148]];

  if (v15)
  {
    origin = [v7 origin];
    v17 = origin;
    v18 = *MEMORY[0x1E69AC150];
    if (origin)
    {
      v18 = origin;
    }

    v19 = v18;

    v20 = objc_alloc(MEMORY[0x1E69ACA88]);
    stringValueType2 = [MEMORY[0x1E69AC940] stringValueType];
    value = [v20 initWithValue:v19 valueType:stringValueType2];
  }

  else
  {
    parameters = [v6 parameters];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__LNActionConfigurationSwitch_LinkServices__valueForAction_context___block_invoke;
    v24[3] = &unk_1E74B26A8;
    v24[4] = self;
    stringValueType2 = [parameters if_firstObjectPassingTest:v24];

    value = [stringValueType2 value];
  }

LABEL_11:

  return value;
}

- (id)actionConfigurationByEvaluatingAction:()LinkServices context:
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v37 = v6;
  v8 = [self valueForAction:v6 context:v7];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  cases = [self cases];
  v10 = [cases countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v43;
    v14 = 0x1E695D000uLL;
    v34 = v7;
    v36 = cases;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v43 != v13)
      {
        objc_enumerationMutation(cases);
      }

      v16 = *(*(&v42 + 1) + 8 * v15);
      if ([v16 isDefaultCase])
      {
        v17 = v12;
        v12 = v16;
      }

      else
      {
        value = [v16 value];
        v18Value = [value value];

        if (!v18Value || (v20 = *(v14 + 3784), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          if (!v8)
          {
            value2 = [v16 value];
            if (!value2)
            {
LABEL_36:
              v18Value = [v16 configuration];
              v29 = v37;
              v7 = v34;
              v30 = [v18Value actionConfigurationByEvaluatingAction:v37 context:v34];
LABEL_38:

              goto LABEL_39;
            }
          }

          value3 = [v16 value];
          v27 = [v8 isEqual:value3];

          if (v8)
          {
            if (v27)
            {
              goto LABEL_36;
            }
          }

          else
          {

            if (v27)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_30;
        }

        if ([v18Value count])
        {
          v21 = 0;
        }

        else
        {
          v21 = v8 == 0;
        }

        if (v21)
        {
          configuration = [v16 configuration];
          v29 = v37;
          v7 = v34;
          v30 = [configuration actionConfigurationByEvaluatingAction:v37 context:v34];

          goto LABEL_38;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v17 = v18Value;
        v22 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v39;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v39 != v24)
              {
                objc_enumerationMutation(v17);
              }

              if ([v8 isEqual:*(*(&v38 + 1) + 8 * i)])
              {
                configuration2 = [v16 configuration];
                v29 = v37;
                v7 = v34;
                v30 = [configuration2 actionConfigurationByEvaluatingAction:v37 context:v34];

                cases = v36;
                goto LABEL_39;
              }
            }

            v23 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        cases = v36;
        v14 = 0x1E695D000;
      }

LABEL_30:
      if (++v15 == v11)
      {
        v11 = [cases countByEnumeratingWithState:&v42 objects:v47 count:16];
        v7 = v34;
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_35;
      }
    }
  }

  v12 = 0;
LABEL_35:

  cases = [v12 configuration];
  v29 = v37;
  v30 = [cases actionConfigurationByEvaluatingAction:v37 context:v7];
LABEL_39:

  v32 = *MEMORY[0x1E69E9840];

  return v30;
}

@end