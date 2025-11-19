@interface OBPrivacyFlowGroup
+ (id)groupFlowsByCombinedHeader:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5;
- (OBPrivacyFlowGroup)initWithIdentifier:(id)a3 privacyFlows:(id)a4;
@end

@implementation OBPrivacyFlowGroup

- (OBPrivacyFlowGroup)initWithIdentifier:(id)a3 privacyFlows:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OBPrivacyFlowGroup;
  v9 = [(OBPrivacyFlowGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_privacyFlows, a4);
  }

  return v10;
}

+ (id)groupFlowsByCombinedHeader:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32 = a4;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v6;
  v34 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v34)
  {

LABEL_25:
    [v33 removeAllObjects];
    v25 = [[OBPrivacyFlowGroup alloc] initWithIdentifier:0 privacyFlows:v7];
    [v33 addObject:v25];
    goto LABEL_26;
  }

  v8 = 0;
  obj = v7;
  v30 = *v42;
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v42 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v41 + 1) + 8 * i);
      v11 = [v10 enablesGroupingInCombinedList];
      v12 = [v10 localizedCombinedHeaderForLanguage:v32 preferredDeviceType:a5];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = v33;
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
        v36 = v10;
        v35 = v11;
LABEL_8:
        v17 = 0;
        while (1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v37 + 1) + 8 * v17);
          v19 = [v18 identifier];
          if ([v19 isEqualToString:v12])
          {
            break;
          }

          v20 = [v18 identifier];
          v21 = v20 | v12;

          if (!v21)
          {
            goto LABEL_17;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
            v10 = v36;
            v11 = v35;
            if (v15)
            {
              goto LABEL_8;
            }

            goto LABEL_15;
          }
        }

LABEL_17:
        v22 = v18;

        v10 = v36;
        v11 = v35;
        if (v22)
        {
          goto LABEL_19;
        }
      }

      else
      {
LABEL_15:
      }

      v22 = objc_alloc_init(OBPrivacyFlowGroup);
      [(OBPrivacyFlowGroup *)v22 setIdentifier:v12];
      [v13 addObject:v22];
LABEL_19:
      v8 |= v11;
      v23 = [(OBPrivacyFlowGroup *)v22 privacyFlows];
      v24 = [v23 arrayByAddingObject:v10];
      [(OBPrivacyFlowGroup *)v22 setPrivacyFlows:v24];
    }

    v7 = obj;
    v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  }

  while (v34);

  if ((v8 & 1) == 0)
  {
    goto LABEL_25;
  }

  if ([v13 count] != 1)
  {
    goto LABEL_27;
  }

  v25 = [v13 firstObject];
  [(OBPrivacyFlowGroup *)v25 setIdentifier:0];
LABEL_26:

LABEL_27:
  v26 = [v33 copy];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

@end