@interface DMTConfigurationPrimitive
- (DMTConfigurationPrimitive)initWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation DMTConfigurationPrimitive

- (DMTConfigurationPrimitive)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v29.receiver = self;
  v29.super_class = DMTConfigurationPrimitive;
  v7 = [(DMTConfigurationPrimitive *)&v29 init];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 copy];
  rawDictionary = v7->_rawDictionary;
  v7->_rawDictionary = v8;

  v28 = 0;
  v10 = DMTValidateProfileString(v6, @"PayloadDisplayName", 1, &v28);
  v11 = v28;
  displayName = v7->_displayName;
  v7->_displayName = v10;

  v27 = v11;
  v13 = DMTValidateProfileString(v6, @"PayloadIdentifier", 0, &v27);
  v14 = v27;

  identifier = v7->_identifier;
  v7->_identifier = v13;

  v26 = v14;
  v16 = DMTValidateProfileString(v6, @"PayloadType", 0, &v26);
  v17 = v26;

  type = v7->_type;
  v7->_type = v16;

  v25 = v17;
  v19 = DMTValidateProfileString(v6, @"PayloadUUID", 0, &v25);
  v20 = v25;

  uuid = v7->_uuid;
  v7->_uuid = v19;

  if (v20)
  {
    if (a4)
    {
      v22 = v20;
      v23 = 0;
      *a4 = v20;
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