@interface PKPassUpcomingPassInformationEntryMetadata
+ (id)_createMetadataForType:(unint64_t)type identifier:(id)identifier semantics:(id)semantics;
+ (id)createFromDictionary:(id)dictionary bundle:(id)bundle;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMetadata:(id)metadata;
- (BOOL)populateFromDictionary:(id)dictionary bundle:(id)bundle semantics:(id)semantics;
- (PKPassUpcomingPassInformationEntryMetadata)initWithCoder:(id)coder;
- (PKPassUpcomingPassInformationEntryMetadataEvent)eventMetadata;
- (id)_initWithIdentifier:(id)identifier type:(unint64_t)type semantics:(id)semantics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpcomingPassInformationEntryMetadata

+ (id)createFromDictionary:(id)dictionary bundle:(id)bundle
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v7 = bundleCopy;
  v8 = 0;
  if (dictionaryCopy)
  {
    if (bundleCopy)
    {
      v22 = 0;
      v9 = [dictionaryCopy objectForKeyedSubscript:@"type"];
      v10 = PKPassUpcomingPassInformationEntryTypeFromString(v9, &v22);

      v8 = 0;
      if (v10)
      {
        v11 = [dictionaryCopy PKStringForKey:@"identifier"];
        v12 = v11;
        if (v11 && (v13 = [v11 length], v12, v13))
        {
          v14 = [dictionaryCopy objectForKeyedSubscript:@"semantics"];
          v15 = v14;
          v16 = MEMORY[0x1E695E0F8];
          if (v14)
          {
            v16 = v14;
          }

          v17 = v16;

          v18 = PKPassSemanticsFromDictionary(v17, 0, v7, 0);

          v19 = [PKPassUpcomingPassInformationEntryMetadata _createMetadataForType:v22 identifier:v12 semantics:v18];
          v20 = v19;
          if (v19 && [v19 populateFromDictionary:dictionaryCopy bundle:v7 semantics:v18])
          {
            v8 = v20;
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

  return v8;
}

+ (id)_createMetadataForType:(unint64_t)type identifier:(id)identifier semantics:(id)semantics
{
  identifierCopy = identifier;
  semanticsCopy = semantics;
  if (type > 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_opt_class();
  }

  v10 = [[v9 alloc] _initWithIdentifier:identifierCopy type:type semantics:semanticsCopy];

  return v10;
}

- (id)_initWithIdentifier:(id)identifier type:(unint64_t)type semantics:(id)semantics
{
  identifierCopy = identifier;
  semanticsCopy = semantics;
  if (identifierCopy)
  {
    v15.receiver = self;
    v15.super_class = PKPassUpcomingPassInformationEntryMetadata;
    v11 = [(PKPassUpcomingPassInformationEntryMetadata *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_identifier, identifier);
      v12->_type = type;
      objc_storeStrong(&v12->_semantics, semantics);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)populateFromDictionary:(id)dictionary bundle:(id)bundle semantics:(id)semantics
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v9 = [dictionaryCopy PKStringForKey:@"name"];
  v10 = PKLocalizedPassStringForPassBundle(v9, bundleCopy, 0);

  name = self->_name;
  self->_name = v10;

  v12 = self->_name;
  if (v12)
  {
    v13 = [dictionaryCopy PKDictionaryForKey:@"dateInformation"];
    v14 = [v13 PKDateForKey:@"date"];
    date = self->_date;
    self->_date = v14;

    self->_ignoreTimeComponents = [v13 PKBoolForKey:@"ignoreTimeComponents"];
    v16 = [v13 PKStringForKey:@"timeZone"];
    v17 = [MEMORY[0x1E695DFE8] timeZoneWithName:v16];
    timeZone = self->_timeZone;
    self->_timeZone = v17;
  }

  return v12 != 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPassUpcomingPassInformationEntryMetadata *)self isEqualToMetadata:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (self->_type != *(metadataCopy + 4))
  {
    goto LABEL_14;
  }

  v6 = *(metadataCopy + 2);
  v7 = self->_identifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_13;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11 = *(v5 + 3);
  v7 = self->_name;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {

    goto LABEL_17;
  }

  if (!v7 || !v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  v13 = [(NSString *)v7 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_17:
  date = self->_date;
  v17 = *(v5 + 5);
  if (date && v17)
  {
    if (([(NSDate *)date isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (date != v17)
  {
    goto LABEL_14;
  }

  timeZone = self->_timeZone;
  v19 = *(v5 + 6);
  if (!timeZone || !v19)
  {
    if (timeZone == v19)
    {
      goto LABEL_27;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (([(NSTimeZone *)timeZone isEqual:?]& 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_27:
  if (self->_ignoreTimeComponents != v5[8])
  {
    goto LABEL_14;
  }

  semantics = self->_semantics;
  v21 = *(v5 + 7);
  if (semantics && v21)
  {
    v14 = [(NSDictionary *)semantics isEqual:?];
  }

  else
  {
    v14 = semantics == v21;
  }

LABEL_15:

  return v14;
}

- (PKPassUpcomingPassInformationEntryMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19 = 0;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = PKPassUpcomingPassInformationEntryTypeFromString(v5, &v19);

  if (v6 & 1) != 0 && v19 <= 1 && objc_opt_class() && (objc_opt_isKindOfClass())
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v8 = objc_opt_class();
    v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"semantics"];
    v10 = [(PKPassUpcomingPassInformationEntryMetadata *)self _initWithIdentifier:v7 type:v19 semantics:v9];
    if (v10)
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      v12 = v10[3];
      v10[3] = v11;

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
      v14 = v10[5];
      v10[5] = v13;

      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
      v16 = v10[6];
      v10[6] = v15;

      *(v10 + 8) = [coderCopy decodeBoolForKey:@"ignoreTimeComponents"];
    }

    self = v10;

    selfCopy = self;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassUpcomingPassInformationEntryMetadata" code:0 userInfo:0];
    [coderCopy failWithError:v7];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  type = self->_type;
  v6 = @"event";
  if (type != 1)
  {
    v6 = 0;
  }

  if (type)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"generic";
  }

  [coderCopy encodeObject:v7 forKey:@"type"];
  [coderCopy encodeObject:self->_semantics forKey:@"semantics"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
  [coderCopy encodeBool:self->_ignoreTimeComponents forKey:@"ignoreTimeComponents"];
}

- (PKPassUpcomingPassInformationEntryMetadataEvent)eventMetadata
{
  if (self->_type != 1)
  {
    self = 0;
  }

  return self;
}

@end