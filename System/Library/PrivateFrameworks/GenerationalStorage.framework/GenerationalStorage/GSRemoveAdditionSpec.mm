@interface GSRemoveAdditionSpec
+ (id)GSRemoveAdditionSpecWithAdditionDictionary:(id)a3;
+ (id)calculateSpecForAdditionRemovalUnderPath:(id)a3;
- (GSRemoveAdditionSpec)initWithAdditionDictionary:(id)a3;
@end

@implementation GSRemoveAdditionSpec

- (GSRemoveAdditionSpec)initWithAdditionDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GSRemoveAdditionSpec;
  v5 = [(GSRemoveAdditionSpec *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"u"];
    v7 = [v6 lastPathComponent];
    name = v5->_name;
    v5->_name = v7;

    v9 = [v4 objectForKey:@"ns"];
    nameSpace = v5->_nameSpace;
    v5->_nameSpace = v9;

    v11 = [v4 objectForKey:@"sID"];
    storageID = v5->_storageID;
    v5->_storageID = v11;
  }

  return v5;
}

+ (id)GSRemoveAdditionSpecWithAdditionDictionary:(id)a3
{
  v3 = a3;
  v4 = [[GSRemoveAdditionSpec alloc] initWithAdditionDictionary:v3];

  return v4;
}

+ (id)calculateSpecForAdditionRemovalUnderPath:(id)a3
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    v7 = &MKBDeviceFormattedForContentProtection_ptr;
    v26 = *v36;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = v7[308];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_30:

          v18 = 0;
          goto LABEL_31;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          while (2)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_29;
              }

              v17 = [v11 objectForKeyedSubscript:v16];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

LABEL_29:
                    goto LABEL_30;
                  }
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v6 = v26;
        v7 = &MKBDeviceFormattedForContentProtection_ptr;
      }

      v5 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v18 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v3;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [GSRemoveAdditionSpec GSRemoveAdditionSpecWithAdditionDictionary:*(*(&v27 + 1) + 8 * k)];
        [v18 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }

LABEL_31:

  return v18;
}

@end