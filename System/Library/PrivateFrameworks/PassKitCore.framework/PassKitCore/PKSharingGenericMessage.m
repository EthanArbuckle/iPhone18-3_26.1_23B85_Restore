@interface PKSharingGenericMessage
+ (id)_contentForGenericSharingDict:(id)a3 appleSharingDict:(id)a4 format:(unint64_t)a5;
- (BOOL)configureWithContent:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSharingGenericMessage:(id)a3;
- (PKSharingGenericMessage)initWithFormat:(unint64_t)a3 type:(unint64_t)a4 genericSharingDict:(id)a5 appleSharingDict:(id)a6 displayInformation:(id)a7;
- (PKSharingGenericMessage)initWithVertical:(unint64_t)a3 type:(unint64_t)a4 genericSharingDict:(id)a5 appleSharingDict:(id)a6;
- (id)description;
- (id)embeddedMessageURLs;
- (unint64_t)hash;
- (void)addEmbeddedMessages:(id)a3;
@end

@implementation PKSharingGenericMessage

- (PKSharingGenericMessage)initWithVertical:(unint64_t)a3 type:(unint64_t)a4 genericSharingDict:(id)a5 appleSharingDict:(id)a6
{
  if (a3 == 2)
  {
    self = [(PKSharingGenericMessage *)self initWithFormat:2 type:a4 genericSharingDict:a5 appleSharingDict:a6 displayInformation:0];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PKSharingGenericMessage)initWithFormat:(unint64_t)a3 type:(unint64_t)a4 genericSharingDict:(id)a5 appleSharingDict:(id)a6 displayInformation:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [a5 mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v17 = v16;

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v17 setObject:v18 forKeyedSubscript:@"sharingDataType"];

  v19 = [objc_opt_class() _contentForGenericSharingDict:v17 appleSharingDict:v13 format:a3];

  v20 = [(PKSharingMessage *)self initWithContent:v19 format:a3 type:a4 displayInformation:v12];
  return v20;
}

- (BOOL)configureWithContent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKSharingGenericMessage;
  v5 = [(PKSharingMessage *)&v12 configureWithContent:v4];
  if (v5)
  {
    v6 = PKSharingMessageGenericDataKeyForFormat([(PKSharingMessage *)self format]);
    v7 = [v4 PKDictionaryForKey:v6];
    genericSharingDict = self->_genericSharingDict;
    self->_genericSharingDict = v7;

    v9 = [v4 PKDictionaryForKey:@"apple"];
    appleSharingDict = self->_appleSharingDict;
    self->_appleSharingDict = v9;
  }

  return v5;
}

+ (id)_contentForGenericSharingDict:(id)a3 appleSharingDict:(id)a4 format:(unint64_t)a5
{
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = PKSharingMessageGenericDataKeyForFormat(a5);
  [v10 setObject:v9 forKey:v11];

  [v10 safelySetObject:v8 forKey:@"apple"];
  v12 = [v10 copy];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = [(PKSharingMessage *)self identifier];
  [v6 appendFormat:@"identifier: '%@'; ", v7];

  v8 = PKSharingMessageTypeToString([(PKSharingMessage *)self type]);
  [v6 appendFormat:@"type: '%@'; ", v8];

  v9 = PKSharingMessageFormatToString([(PKSharingMessage *)self format]);
  [v6 appendFormat:@"format: '%@'; ", v9];

  [v6 appendFormat:@"genericSharingDict: '%@'; ", self->_genericSharingDict];
  [v6 appendFormat:@"appleSharingDict: '%@'; ", self->_appleSharingDict];
  v10 = [(PKSharingMessage *)self displayInformation];
  [v6 appendFormat:@"displayInformation: '%@'; ", v10];

  [v6 appendFormat:@">"];
  v11 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_genericSharingDict)
  {
    [v3 addObject:?];
  }

  if (self->_appleSharingDict)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSharingGenericMessage *)self isEqualToSharingGenericMessage:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharingGenericMessage:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKSharingGenericMessage;
  if (![(PKSharingGenericMessage *)&v13 isEqual:v4])
  {
    goto LABEL_8;
  }

  genericSharingDict = self->_genericSharingDict;
  v6 = v4[6];
  if (genericSharingDict)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSDictionary *)genericSharingDict isEqual:?]& 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (genericSharingDict != v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  appleSharingDict = self->_appleSharingDict;
  v11 = v4[7];
  if (appleSharingDict)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v8 = appleSharingDict == v11;
  }

  else
  {
    v8 = [(NSDictionary *)appleSharingDict isEqual:?];
  }

LABEL_9:

  return v8;
}

- (void)addEmbeddedMessages:(id)a3
{
  appleSharingDict = self->_appleSharingDict;
  v5 = a3;
  v6 = [(NSDictionary *)appleSharingDict mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = v8;

  [v12 setObject:v5 forKeyedSubscript:@"embededMessages"];
  v9 = [v12 copy];
  v10 = self->_appleSharingDict;
  self->_appleSharingDict = v9;

  v11 = [objc_opt_class() _contentForGenericSharingDict:self->_genericSharingDict appleSharingDict:v12 format:{-[PKSharingMessage format](self, "format")}];
  [(PKSharingMessage *)self updateMessageContentTo:v11];
}

- (id)embeddedMessageURLs
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_appleSharingDict PKArrayContaining:objc_opt_class() forKey:@"embededMessages"];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 PKURLForKey:@"address"];
          v11 = [v9 PKStringForKey:@"targetDeviceType"];
          v12 = v11;
          if (v10)
          {
            v13 = v11 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v14 = [MEMORY[0x1E696AD98] numberWithInteger:PKPassCredentialShareTargetDeviceFromString(v11)];
            [v3 setObject:v10 forKeyedSubscript:v14];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v15 = [v3 copy];
    v2 = v17;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end