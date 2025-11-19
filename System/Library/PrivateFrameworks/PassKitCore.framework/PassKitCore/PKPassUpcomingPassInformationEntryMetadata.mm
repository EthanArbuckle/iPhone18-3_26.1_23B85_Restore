@interface PKPassUpcomingPassInformationEntryMetadata
+ (id)_createMetadataForType:(unint64_t)a3 identifier:(id)a4 semantics:(id)a5;
+ (id)createFromDictionary:(id)a3 bundle:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMetadata:(id)a3;
- (BOOL)populateFromDictionary:(id)a3 bundle:(id)a4 semantics:(id)a5;
- (PKPassUpcomingPassInformationEntryMetadata)initWithCoder:(id)a3;
- (PKPassUpcomingPassInformationEntryMetadataEvent)eventMetadata;
- (id)_initWithIdentifier:(id)a3 type:(unint64_t)a4 semantics:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpcomingPassInformationEntryMetadata

+ (id)createFromDictionary:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5)
  {
    if (v6)
    {
      v22 = 0;
      v9 = [v5 objectForKeyedSubscript:@"type"];
      v10 = PKPassUpcomingPassInformationEntryTypeFromString(v9, &v22);

      v8 = 0;
      if (v10)
      {
        v11 = [v5 PKStringForKey:@"identifier"];
        v12 = v11;
        if (v11 && (v13 = [v11 length], v12, v13))
        {
          v14 = [v5 objectForKeyedSubscript:@"semantics"];
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
          if (v19 && [v19 populateFromDictionary:v5 bundle:v7 semantics:v18])
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

+ (id)_createMetadataForType:(unint64_t)a3 identifier:(id)a4 semantics:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 > 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_opt_class();
  }

  v10 = [[v9 alloc] _initWithIdentifier:v7 type:a3 semantics:v8];

  return v10;
}

- (id)_initWithIdentifier:(id)a3 type:(unint64_t)a4 semantics:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    v15.receiver = self;
    v15.super_class = PKPassUpcomingPassInformationEntryMetadata;
    v11 = [(PKPassUpcomingPassInformationEntryMetadata *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_identifier, a3);
      v12->_type = a4;
      objc_storeStrong(&v12->_semantics, a5);
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)populateFromDictionary:(id)a3 bundle:(id)a4 semantics:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 PKStringForKey:@"name"];
  v10 = PKLocalizedPassStringForPassBundle(v9, v8, 0);

  name = self->_name;
  self->_name = v10;

  v12 = self->_name;
  if (v12)
  {
    v13 = [v7 PKDictionaryForKey:@"dateInformation"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPassUpcomingPassInformationEntryMetadata *)self isEqualToMetadata:v4];
  }

  return v5;
}

- (BOOL)isEqualToMetadata:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type != *(v4 + 4))
  {
    goto LABEL_14;
  }

  v6 = *(v4 + 2);
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

- (PKPassUpcomingPassInformationEntryMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v19 = 0;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = PKPassUpcomingPassInformationEntryTypeFromString(v5, &v19);

  if (v6 & 1) != 0 && v19 <= 1 && objc_opt_class() && (objc_opt_isKindOfClass())
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"semantics"];
    v10 = [(PKPassUpcomingPassInformationEntryMetadata *)self _initWithIdentifier:v7 type:v19 semantics:v9];
    if (v10)
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      v12 = v10[3];
      v10[3] = v11;

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
      v14 = v10[5];
      v10[5] = v13;

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
      v16 = v10[6];
      v10[6] = v15;

      *(v10 + 8) = [v4 decodeBoolForKey:@"ignoreTimeComponents"];
    }

    self = v10;

    v17 = self;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassUpcomingPassInformationEntryMetadata" code:0 userInfo:0];
    [v4 failWithError:v7];
    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v8 = a3;
  [v8 encodeObject:identifier forKey:@"identifier"];
  [v8 encodeObject:self->_name forKey:@"name"];
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

  [v8 encodeObject:v7 forKey:@"type"];
  [v8 encodeObject:self->_semantics forKey:@"semantics"];
  [v8 encodeObject:self->_date forKey:@"date"];
  [v8 encodeObject:self->_timeZone forKey:@"timeZone"];
  [v8 encodeBool:self->_ignoreTimeComponents forKey:@"ignoreTimeComponents"];
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