@interface PKPaymentPassActionGroup
- (BOOL)remoteContentRequiresAppletData;
- (PKPaymentPassActionGroup)initWithCoder:(id)coder;
- (PKPaymentPassActionGroup)initWithDictionary:(id)dictionary localizations:(id)localizations;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentPassActionGroup

- (PKPaymentPassActionGroup)initWithDictionary:(id)dictionary localizations:(id)localizations
{
  v56 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  localizationsCopy = localizations;
  v54.receiver = self;
  v54.super_class = PKPaymentPassActionGroup;
  v8 = [(PKPaymentPassActionGroup *)&v54 init];
  if (v8)
  {
    v9 = [dictionaryCopy PKStringForKey:@"identifier"];
    v10 = [v9 copy];
    identifier = v8->_identifier;
    v8->_identifier = v10;

    v12 = [dictionaryCopy PKStringForKey:@"title"];
    v13 = [v12 copy];
    title = v8->_title;
    v8->_title = v13;

    v15 = [dictionaryCopy PKStringForKey:@"description"];
    v16 = [v15 copy];
    actionGroupDescription = v8->_actionGroupDescription;
    v8->_actionGroupDescription = v16;

    v18 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"actionIdentifiers"];
    v19 = [v18 copy];
    actionIdentifiers = v8->_actionIdentifiers;
    v8->_actionIdentifiers = v19;

    v21 = [PKPaymentPassActionRemoteConfiguration alloc];
    v22 = [dictionaryCopy PKDictionaryForKey:@"remoteContentConfiguration"];
    v23 = [(PKPaymentPassActionRemoteConfiguration *)v21 initWithDictionary:v22];
    remoteContentConfiguration = v8->_remoteContentConfiguration;
    v8->_remoteContentConfiguration = v23;

    if (!v8->_remoteContentConfiguration && [dictionaryCopy PKBoolForKey:@"hasRemoteContent"])
    {
      v25 = -[PKPaymentPassActionRemoteConfiguration initWithRequiresAppletData:appletDataRequiresEncryption:]([PKPaymentPassActionRemoteConfiguration alloc], "initWithRequiresAppletData:appletDataRequiresEncryption:", [dictionaryCopy PKBoolForKey:@"remoteContentRequiresAppletData"], 1);
      v26 = v8->_remoteContentConfiguration;
      v8->_remoteContentConfiguration = v25;
    }

    v27 = [PKPaymentPassActionExternalActionContent alloc];
    v28 = [dictionaryCopy PKDictionaryForKey:@"externalActionContent"];
    v29 = [(PKPaymentPassActionExternalActionContent *)v27 initWithDictionary:v28];
    externalActionContent = v8->_externalActionContent;
    v8->_externalActionContent = v29;

    v31 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"actions"];
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v31 count])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = v31;
      v33 = v31;
      v34 = [v33 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v51;
        do
        {
          v37 = 0;
          do
          {
            if (*v51 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [[PKPaymentPassAction alloc] initWithDictionary:*(*(&v50 + 1) + 8 * v37) localizations:localizationsCopy];
            [v32 safelyAddObject:v38];

            ++v37;
          }

          while (v35 != v37);
          v35 = [v33 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v35);
      }

      v31 = v49;
    }

    v39 = [v32 copy];
    actions = v8->_actions;
    v8->_actions = v39;

    v41 = v8->_actionGroupDescription;
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v43 = [(NSString *)v41 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    v44 = v43;
    if (!v43 || (v45 = [(NSString *)v43 length], v44, !v45))
    {
      v46 = [(NSArray *)v8->_actions count];

      if (v46 != 1)
      {
LABEL_19:

        goto LABEL_20;
      }

      whitespaceCharacterSet = [(NSArray *)v8->_actions firstObject];
      actionDescription = [whitespaceCharacterSet actionDescription];
      v44 = v8->_actionGroupDescription;
      v8->_actionGroupDescription = actionDescription;
    }

    goto LABEL_19;
  }

LABEL_20:

  return v8;
}

- (BOOL)remoteContentRequiresAppletData
{
  remoteContentConfiguration = self->_remoteContentConfiguration;
  if (remoteContentConfiguration)
  {
    LOBYTE(remoteContentConfiguration) = [(PKPaymentPassActionRemoteConfiguration *)remoteContentConfiguration requiresAppletData];
  }

  return remoteContentConfiguration;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_actionGroupDescription forKey:@"description"];
  [coderCopy encodeObject:self->_actionIdentifiers forKey:@"actionIdentifiers"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
  [coderCopy encodeObject:self->_appletData forKey:@"appletData"];
  [coderCopy encodeObject:self->_remoteContentConfiguration forKey:@"remoteContentConfiguration"];
  [coderCopy encodeObject:self->_externalActionContent forKey:@"externalActionContent"];
  [coderCopy encodeBool:-[PKPaymentPassActionGroup hasRemoteContent](self forKey:{"hasRemoteContent"), @"hasRemoteContent"}];
  [coderCopy encodeBool:-[PKPaymentPassActionGroup remoteContentRequiresAppletData](self forKey:{"remoteContentRequiresAppletData"), @"remoteContentRequiresAppletData"}];
}

- (PKPaymentPassActionGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = PKPaymentPassActionGroup;
  v5 = [(PKPaymentPassActionGroup *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v10 = [v9 copy];
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    v13 = [v12 copy];
    actionGroupDescription = v5->_actionGroupDescription;
    v5->_actionGroupDescription = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"actionIdentifiers"];
    v19 = [v18 copy];
    actionIdentifiers = v5->_actionIdentifiers;
    v5->_actionIdentifiers = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletData"];
    appletData = v5->_appletData;
    v5->_appletData = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteContentConfiguration"];
    remoteContentConfiguration = v5->_remoteContentConfiguration;
    v5->_remoteContentConfiguration = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalActionContent"];
    externalActionContent = v5->_externalActionContent;
    v5->_externalActionContent = v30;

    if (!v5->_remoteContentConfiguration)
    {
      if ([coderCopy decodeBoolForKey:@"hasRemoteContent"])
      {
        v32 = -[PKPaymentPassActionRemoteConfiguration initWithRequiresAppletData:appletDataRequiresEncryption:]([PKPaymentPassActionRemoteConfiguration alloc], "initWithRequiresAppletData:appletDataRequiresEncryption:", [coderCopy decodeBoolForKey:@"remoteContentRequiresAppletData"], 1);
        v33 = v5->_remoteContentConfiguration;
        v5->_remoteContentConfiguration = v32;
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_actionGroupDescription copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSArray *)self->_actionIdentifiers copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSArray *)self->_actions copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(PKPaymentPassActionRemoteConfiguration *)self->_remoteContentConfiguration copyWithZone:zone];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(NSDictionary *)self->_appletData copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(PKPaymentPassActionExternalActionContent *)self->_externalActionContent copyWithZone:zone];
  v21 = v5[7];
  v5[7] = v20;

  return v5;
}

@end