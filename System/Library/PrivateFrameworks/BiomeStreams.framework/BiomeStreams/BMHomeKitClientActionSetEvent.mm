@interface BMHomeKitClientActionSetEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMHomeKitClientActionSetEvent)initWithBase:(id)base actionSetUniqueIdentifier:(id)identifier actionSetType:(id)type associatedAccessoryUniqueIdentifiers:(id)identifiers actionSetName:(id)name homeName:(id)homeName;
- (BMHomeKitClientActionSetEvent)initWithProto:(id)proto;
- (BMHomeKitClientActionSetEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMHomeKitClientActionSetEvent

- (BMHomeKitClientActionSetEvent)initWithBase:(id)base actionSetUniqueIdentifier:(id)identifier actionSetType:(id)type associatedAccessoryUniqueIdentifiers:(id)identifiers actionSetName:(id)name homeName:(id)homeName
{
  baseCopy = base;
  identifierCopy = identifier;
  typeCopy = type;
  identifiersCopy = identifiers;
  nameCopy = name;
  homeNameCopy = homeName;
  v24.receiver = self;
  v24.super_class = BMHomeKitClientActionSetEvent;
  v18 = [(BMEventBase *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_base, base);
    objc_storeStrong(&v19->_actionSetUniqueIdentifier, identifier);
    objc_storeStrong(&v19->_actionSetType, type);
    objc_storeStrong(&v19->_associatedAccessoryUniqueIdentifiers, identifiers);
    objc_storeStrong(&v19->_actionSetName, name);
    objc_storeStrong(&v19->_homeName, homeName);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
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
    v8 = [[self alloc] initWithProtoData:dataCopy];
  }

  return v8;
}

- (id)encodeAsProto
{
  proto = [(BMHomeKitClientActionSetEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMHomeKitClientActionSetEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
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

  v5 = protoCopy;
  v6 = [BMHomeKitClientBase alloc];
  base = [v5 base];
  v8 = [(BMHomeKitClientBase *)v6 initWithProto:base];
  actionSetUniqueIdentifier = [v5 actionSetUniqueIdentifier];
  actionSetType = [v5 actionSetType];
  associatedAccessoryUniqueIdentifiers = [v5 associatedAccessoryUniqueIdentifiers];
  actionSetName = [v5 actionSetName];
  homeName = [v5 homeName];

  self = [(BMHomeKitClientActionSetEvent *)self initWithBase:v8 actionSetUniqueIdentifier:actionSetUniqueIdentifier actionSetType:actionSetType associatedAccessoryUniqueIdentifiers:associatedAccessoryUniqueIdentifiers actionSetName:actionSetName homeName:homeName];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMHomeKitClientActionSetEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBHomeKitClientActionSetEvent alloc] initWithData:dataCopy];

    self = [(BMHomeKitClientActionSetEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  base = [(BMHomeKitClientActionSetEvent *)self base];
  proto = [base proto];
  [v3 setBase:proto];

  actionSetUniqueIdentifier = [(BMHomeKitClientActionSetEvent *)self actionSetUniqueIdentifier];
  [v3 setActionSetUniqueIdentifier:actionSetUniqueIdentifier];

  actionSetType = [(BMHomeKitClientActionSetEvent *)self actionSetType];
  [v3 setActionSetType:actionSetType];

  v8 = MEMORY[0x1E695DF70];
  associatedAccessoryUniqueIdentifiers = [(BMHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiers];
  v10 = [v8 arrayWithArray:associatedAccessoryUniqueIdentifiers];
  [v3 setAssociatedAccessoryUniqueIdentifiers:v10];

  actionSetName = [(BMHomeKitClientActionSetEvent *)self actionSetName];
  [v3 setActionSetName:actionSetName];

  homeName = [(BMHomeKitClientActionSetEvent *)self homeName];
  [v3 setHomeName:homeName];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = equalCopy;
    base = [(BMHomeKitClientActionSetEvent *)self base];
    if (base || ([v10 base], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      base2 = [(BMHomeKitClientActionSetEvent *)self base];
      base3 = [v10 base];
      v29 = [base2 isEqual:base3];

      if (base)
      {
LABEL_9:

        actionSetUniqueIdentifier = [(BMHomeKitClientActionSetEvent *)self actionSetUniqueIdentifier];
        if (actionSetUniqueIdentifier || ([v10 actionSetUniqueIdentifier], (base2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          base3 = [(BMHomeKitClientActionSetEvent *)self actionSetUniqueIdentifier];
          actionSetUniqueIdentifier2 = [v10 actionSetUniqueIdentifier];
          v28 = [base3 isEqual:actionSetUniqueIdentifier2];

          if (actionSetUniqueIdentifier)
          {
LABEL_15:

            actionSetType = [(BMHomeKitClientActionSetEvent *)self actionSetType];
            if (actionSetType || ([v10 actionSetType], (base3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              actionSetUniqueIdentifier2 = [(BMHomeKitClientActionSetEvent *)self actionSetType];
              actionSetType2 = [v10 actionSetType];
              v15 = [actionSetUniqueIdentifier2 isEqual:actionSetType2];

              if (actionSetType)
              {
LABEL_21:

                associatedAccessoryUniqueIdentifiers = [(BMHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiers];
                if (associatedAccessoryUniqueIdentifiers || ([v10 associatedAccessoryUniqueIdentifiers], (actionSetUniqueIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  actionSetType2 = [(BMHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiers];
                  associatedAccessoryUniqueIdentifiers2 = [v10 associatedAccessoryUniqueIdentifiers];
                  v18 = [actionSetType2 isEqual:associatedAccessoryUniqueIdentifiers2];

                  if (associatedAccessoryUniqueIdentifiers)
                  {
LABEL_27:

                    actionSetName = [(BMHomeKitClientActionSetEvent *)self actionSetName];
                    if (actionSetName || ([v10 actionSetName], (actionSetType2 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      actionSetName2 = [(BMHomeKitClientActionSetEvent *)self actionSetName];
                      actionSetName3 = [v10 actionSetName];
                      v22 = [actionSetName2 isEqual:actionSetName3];

                      if (actionSetName)
                      {
LABEL_33:

                        homeName = [(BMHomeKitClientActionSetEvent *)self homeName];
                        if (homeName || ([v10 homeName], (actionSetType2 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          homeName2 = [(BMHomeKitClientActionSetEvent *)self homeName];
                          homeName3 = [v10 homeName];
                          v26 = [homeName2 isEqual:homeName3];

                          if (homeName)
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