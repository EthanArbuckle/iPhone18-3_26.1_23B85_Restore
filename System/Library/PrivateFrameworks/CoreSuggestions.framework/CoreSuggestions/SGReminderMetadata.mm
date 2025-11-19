@interface SGReminderMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReminderMetadata:(id)a3;
- (SGReminderMetadata)initWithCoder:(id)a3;
- (SGReminderMetadata)initWithRecordId:(id)a3 sourceUniqueIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGReminderMetadata

- (BOOL)isEqualToReminderMetadata:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_recordId;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(SGRecordId *)v5 isEqual:?];

    if (!v7)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_sourceUniqueIdentifier;
  v10 = v9;
  if (v9 == v4[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_10:
  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGReminderMetadata *)self isEqualToReminderMetadata:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(SGRecordId *)self->_recordId copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_sourceUniqueIdentifier copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (SGReminderMetadata)initWithCoder:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SGReminderMetadata;
  v6 = [(SGReminderMetadata *)&v15 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"recordId"];

    if (v8)
    {
      v9 = v8;
      recordId = v6->_recordId;
      v6->_recordId = v9;
    }

    else
    {
      recordId = [MEMORY[0x1E696AAA8] currentHandler];
      [recordId handleFailureInMethod:a2 object:v6 file:@"SGReminderMetadata.m" lineNumber:54 description:{@"nonnull property %s *%s was null when decoded", "SGRecordId", "recordId"}];
    }

    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [v5 decodeObjectOfClasses:v11 forKey:@"sourceUniqueIdentifier"];
    sourceUniqueIdentifier = v6->_sourceUniqueIdentifier;
    v6->_sourceUniqueIdentifier = v12;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  recordId = self->_recordId;
  v5 = a3;
  [v5 encodeObject:recordId forKey:@"recordId"];
  [v5 encodeObject:self->_sourceUniqueIdentifier forKey:@"sourceUniqueIdentifier"];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGReminderMetadata recordId: %@ sourceUniqueIdentifier: %@>", self->_recordId, self->_sourceUniqueIdentifier];

  return v2;
}

- (SGReminderMetadata)initWithRecordId:(id)a3 sourceUniqueIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SGReminderMetadata;
  v9 = [(SGReminderMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordId, a3);
    objc_storeStrong(&v10->_sourceUniqueIdentifier, a4);
  }

  return v10;
}

@end