@interface CCPersistedKeyValueRecord
+ (id)genSQLCreateStatements;
+ (id)recordFromDatabaseValueRow:(id)row;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMetadataRecord:(id)record;
- (CCPersistedKeyValueRecord)init;
- (CCPersistedKeyValueRecord)initWithDatabaseValueRow:(id)row;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CCPersistedKeyValueRecord

- (CCPersistedKeyValueRecord)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)recordFromDatabaseValueRow:(id)row
{
  rowCopy = row;
  v4 = [objc_alloc(objc_opt_class()) initWithDatabaseValueRow:rowCopy];

  return v4;
}

+ (id)genSQLCreateStatements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ varchar PRIMARY KEY, %@ varchar NULLABLE, %@ integer NULLABLE, %@ blob NULLABLE, CHECK ((CASE WHEN %@ IS NULL THEN 0 ELSE 1 END + CASE WHEN %@ IS NULL THEN 0 ELSE 1 END + CASE WHEN %@ IS NULL THEN 0 ELSE 1 END) = 1))", @"keyvalue", @"key", @"string_value", @"integer_value", @"data_value", @"string_value", @"integer_value", @"data_value"];;
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CCPersistedKeyValueRecord)initWithDatabaseValueRow:(id)row
{
  rowCopy = row;
  v15.receiver = self;
  v15.super_class = CCPersistedKeyValueRecord;
  v5 = [(CCPersistedKeyValueRecord *)&v15 init];
  if (v5)
  {
    v6 = [rowCopy stringValueAtColumnIndex:0];
    key = v5->_key;
    v5->_key = v6;

    v8 = [rowCopy stringValueAtColumnIndex:1];
    stringValue = v5->_stringValue;
    v5->_stringValue = v8;

    v10 = [rowCopy numberValueAtColumnIndex:2];
    integerValue = v5->_integerValue;
    v5->_integerValue = v10;

    v12 = [rowCopy dataValueAtColumnIndex:3];
    dataValue = v5->_dataValue;
    v5->_dataValue = v12;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = CCPersistedKeyValueRecord;
  v3 = [(CCPersistedKeyValueRecord *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" key: %@, stringValue: %@ integerValue: %@ dataValue: %@", self->_key, self->_stringValue, self->_integerValue, self->_dataValue];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCPersistedKeyValueRecord *)self isEqualToMetadataRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToMetadataRecord:(id)record
{
  recordCopy = record;
  v7 = recordCopy;
  if (!recordCopy)
  {
    v12 = 0;
    goto LABEL_43;
  }

  key = self->_key;
  v9 = key;
  if (!key)
  {
    v10 = [recordCopy key];
    if (!v10)
    {
      v34 = 0;
      v11 = 0;
      goto LABEL_10;
    }

    v34 = v10;
    v9 = self->_key;
  }

  v3 = [v7 key];
  if (([(NSString *)v9 isEqual:v3]& 1) == 0)
  {

    v12 = 0;
    goto LABEL_41;
  }

  v11 = 1;
LABEL_10:
  stringValue = self->_stringValue;
  v14 = stringValue;
  if (!stringValue)
  {
    stringValue = [v7 stringValue];
    if (!stringValue)
    {
      v32 = 0;
      v16 = 0;
      goto LABEL_17;
    }

    v32 = stringValue;
    v14 = self->_stringValue;
  }

  stringValue2 = [v7 stringValue];
  if (([(NSString *)v14 isEqual:stringValue2]& 1) == 0)
  {

    v12 = 0;
    goto LABEL_38;
  }

  v16 = 1;
LABEL_17:
  integerValue = self->_integerValue;
  v18 = integerValue;
  if (!integerValue)
  {
    integerValue = [v7 integerValue];
    if (!integerValue)
    {
      v30 = 0;
      v31 = v11;
      v28 = 0;
LABEL_24:
      dataValue = self->_dataValue;
      v21 = dataValue;
      if (!dataValue)
      {
        dataValue = [v7 dataValue];
        if (!dataValue)
        {
          v25 = 0;
          v12 = 1;
          goto LABEL_33;
        }

        v27 = dataValue;
        v21 = self->_dataValue;
      }

      v29 = stringValue2;
      v23 = v16;
      dataValue2 = [v7 dataValue];
      v12 = [(NSData *)v21 isEqual:dataValue2];

      v16 = v23;
      if (dataValue)
      {
        if (!v30)
        {
          v11 = v31;
          stringValue2 = v29;
          goto LABEL_35;
        }

        v11 = v31;
        stringValue2 = v29;
        goto LABEL_34;
      }

      stringValue2 = v29;
      v25 = v27;
LABEL_33:

      v11 = v31;
      if ((v30 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v28 = integerValue;
    v18 = self->_integerValue;
  }

  integerValue2 = [v7 integerValue];
  if ([(NSNumber *)v18 isEqual:?])
  {
    v30 = 1;
    v31 = v11;
    goto LABEL_24;
  }

  v12 = 0;
LABEL_34:

LABEL_35:
  if (integerValue)
  {
    if (!v16)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v16)
  {
LABEL_37:
  }

LABEL_38:
  if (stringValue)
  {
    if (!v11)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v11)
  {
LABEL_40:
  }

LABEL_41:
  if (!key)
  {
  }

LABEL_43:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_stringValue hash]^ v3;
  v5 = [(NSNumber *)self->_integerValue hash];
  return v4 ^ v5 ^ [(NSData *)self->_dataValue hash];
}

@end