@interface DMTConfigurationPrimitive
- (DMTConfigurationPrimitive)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation DMTConfigurationPrimitive

- (DMTConfigurationPrimitive)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = DMTConfigurationPrimitive;
  v7 = [(DMTConfigurationPrimitive *)&v29 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [dictionaryCopy copy];
  rawDictionary = v7->_rawDictionary;
  v7->_rawDictionary = v8;

  v28 = 0;
  v10 = DMTValidateProfileString(dictionaryCopy, @"PayloadDisplayName", 1, &v28);
  v11 = v28;
  displayName = v7->_displayName;
  v7->_displayName = v10;

  v27 = v11;
  v13 = DMTValidateProfileString(dictionaryCopy, @"PayloadIdentifier", 0, &v27);
  v14 = v27;

  identifier = v7->_identifier;
  v7->_identifier = v13;

  v26 = v14;
  v16 = DMTValidateProfileString(dictionaryCopy, @"PayloadType", 0, &v26);
  v17 = v26;

  type = v7->_type;
  v7->_type = v16;

  v25 = v17;
  v19 = DMTValidateProfileString(dictionaryCopy, @"PayloadUUID", 0, &v25);
  v20 = v25;

  uuid = v7->_uuid;
  v7->_uuid = v19;

  if (v20)
  {
    if (error)
    {
      v22 = v20;
      v23 = 0;
      *error = v20;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
LABEL_5:
    v23 = v7;
    v20 = 0;
  }

  return v23;
}

@end