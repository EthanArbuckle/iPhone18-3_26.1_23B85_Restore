@interface BMHomeKitClientActionSetEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMHomeKitClientActionSetEvent)initWithBase:(id)a3 actionSetUniqueIdentifier:(id)a4 actionSetType:(id)a5 associatedAccessoryUniqueIdentifiers:(id)a6 actionSetName:(id)a7 homeName:(id)a8;
- (BMHomeKitClientActionSetEvent)initWithProto:(id)a3;
- (BMHomeKitClientActionSetEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHomeKitClientActionSetEvent

- (BMHomeKitClientActionSetEvent)initWithBase:(id)a3 actionSetUniqueIdentifier:(id)a4 actionSetType:(id)a5 associatedAccessoryUniqueIdentifiers:(id)a6 actionSetName:(id)a7 homeName:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = BMHomeKitClientActionSetEvent;
  v18 = [(BMEventBase *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_base, a3);
    objc_storeStrong(&v19->_actionSetUniqueIdentifier, a4);
    objc_storeStrong(&v19->_actionSetType, a5);
    objc_storeStrong(&v19->_associatedAccessoryUniqueIdentifiers, a6);
    objc_storeStrong(&v19->_actionSetName, a7);
    objc_storeStrong(&v19->_homeName, a8);
  }

  return v19;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  base = self->_base;
  actionSetName = self->_actionSetName;
  v6 = [v3 initWithFormat:@"BMHomeKitClientActionSetEvent event with base: %@, actionSetUniqueIdentifier: %@, actionSetType: %@, associatedAccessoryUniqueIdentifiers: %@, actionSetName: %@, homeName: %@", base, self->_actionSetUniqueIdentifier, self->_actionSetType, self->_associatedAccessoryUniqueIdentifiers, actionSetName, self->_homeName];

  return v6;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMHomeKitClientActionSetEvent eventWithData:v7 dataVersion:?];
    }

    v8 = 0;
  }

  else
  {
    v8 = [[a1 alloc] initWithProtoData:v6];
  }

  return v8;
}

- (id)encodeAsProto
{
  v2 = [(BMHomeKitClientActionSetEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMHomeKitClientActionSetEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(BMHomeKitClientActionSetEvent *)self initWithProto:v15];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [BMHomeKitClientBase alloc];
  v7 = [v5 base];
  v8 = [(BMHomeKitClientBase *)v6 initWithProto:v7];
  v9 = [v5 actionSetUniqueIdentifier];
  v10 = [v5 actionSetType];
  v11 = [v5 associatedAccessoryUniqueIdentifiers];
  v12 = [v5 actionSetName];
  v13 = [v5 homeName];

  self = [(BMHomeKitClientActionSetEvent *)self initWithBase:v8 actionSetUniqueIdentifier:v9 actionSetType:v10 associatedAccessoryUniqueIdentifiers:v11 actionSetName:v12 homeName:v13];
  v14 = self;
LABEL_8:

  return v14;
}

- (BMHomeKitClientActionSetEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBHomeKitClientActionSetEvent alloc] initWithData:v4];

    self = [(BMHomeKitClientActionSetEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMHomeKitClientActionSetEvent *)self base];
  v5 = [v4 proto];
  [v3 setBase:v5];

  v6 = [(BMHomeKitClientActionSetEvent *)self actionSetUniqueIdentifier];
  [v3 setActionSetUniqueIdentifier:v6];

  v7 = [(BMHomeKitClientActionSetEvent *)self actionSetType];
  [v3 setActionSetType:v7];

  v8 = MEMORY[0x1E695DF70];
  v9 = [(BMHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiers];
  v10 = [v8 arrayWithArray:v9];
  [v3 setAssociatedAccessoryUniqueIdentifiers:v10];

  v11 = [(BMHomeKitClientActionSetEvent *)self actionSetName];
  [v3 setActionSetName:v11];

  v12 = [(BMHomeKitClientActionSetEvent *)self homeName];
  [v3 setHomeName:v12];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [(BMHomeKitClientActionSetEvent *)self base];
    if (v11 || ([v10 base], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = [(BMHomeKitClientActionSetEvent *)self base];
      v5 = [v10 base];
      v29 = [v4 isEqual:v5];

      if (v11)
      {
LABEL_9:

        v13 = [(BMHomeKitClientActionSetEvent *)self actionSetUniqueIdentifier];
        if (v13 || ([v10 actionSetUniqueIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v5 = [(BMHomeKitClientActionSetEvent *)self actionSetUniqueIdentifier];
          v6 = [v10 actionSetUniqueIdentifier];
          v28 = [v5 isEqual:v6];

          if (v13)
          {
LABEL_15:

            v14 = [(BMHomeKitClientActionSetEvent *)self actionSetType];
            if (v14 || ([v10 actionSetType], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v6 = [(BMHomeKitClientActionSetEvent *)self actionSetType];
              v7 = [v10 actionSetType];
              v15 = [v6 isEqual:v7];

              if (v14)
              {
LABEL_21:

                v16 = [(BMHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiers];
                if (v16 || ([v10 associatedAccessoryUniqueIdentifiers], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v7 = [(BMHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiers];
                  v17 = [v10 associatedAccessoryUniqueIdentifiers];
                  v18 = [v7 isEqual:v17];

                  if (v16)
                  {
LABEL_27:

                    v19 = [(BMHomeKitClientActionSetEvent *)self actionSetName];
                    if (v19 || ([v10 actionSetName], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v20 = [(BMHomeKitClientActionSetEvent *)self actionSetName];
                      v21 = [v10 actionSetName];
                      v22 = [v20 isEqual:v21];

                      if (v19)
                      {
LABEL_33:

                        v23 = [(BMHomeKitClientActionSetEvent *)self homeName];
                        if (v23 || ([v10 homeName], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          v24 = [(BMHomeKitClientActionSetEvent *)self homeName];
                          v25 = [v10 homeName];
                          v26 = [v24 isEqual:v25];

                          if (v23)
                          {
LABEL_39:

                            v12 = v29 & v28 & v15 & v18 & v22 & v26;
                            goto LABEL_40;
                          }
                        }

                        else
                        {
                          v26 = 1;
                        }

                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      v22 = 1;
                    }

                    goto LABEL_33;
                  }
                }

                else
                {
                  v18 = 1;
                }

                goto LABEL_27;
              }
            }

            else
            {
              v15 = 1;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v28 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v29 = 1;
    }

    goto LABEL_9;
  }

  v12 = 0;
LABEL_40:

  return v12;
}

@end