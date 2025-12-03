@interface SGReminderMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReminderMetadata:(id)metadata;
- (SGReminderMetadata)initWithCoder:(id)coder;
- (SGReminderMetadata)initWithRecordId:(id)id sourceUniqueIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGReminderMetadata

- (BOOL)isEqualToReminderMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    goto LABEL_4;
  }

  v5 = self->_recordId;
  v6 = v5;
  if (v5 == metadataCopy[1])
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
  if (v9 == metadataCopy[2])
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGReminderMetadata *)self isEqualToReminderMetadata:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(SGRecordId *)self->_recordId copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_sourceUniqueIdentifier copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (SGReminderMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SGReminderMetadata;
  v6 = [(SGReminderMetadata *)&v15 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"recordId"];

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
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"sourceUniqueIdentifier"];
    sourceUniqueIdentifier = v6->_sourceUniqueIdentifier;
    v6->_sourceUniqueIdentifier = v12;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  recordId = self->_recordId;
  coderCopy = coder;
  [coderCopy encodeObject:recordId forKey:@"recordId"];
  [coderCopy encodeObject:self->_sourceUniqueIdentifier forKey:@"sourceUniqueIdentifier"];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGReminderMetadata recordId: %@ sourceUniqueIdentifier: %@>", self->_recordId, self->_sourceUniqueIdentifier];

  return v2;
}

- (SGReminderMetadata)initWithRecordId:(id)id sourceUniqueIdentifier:(id)identifier
{
  idCopy = id;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SGReminderMetadata;
  v9 = [(SGReminderMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordId, id);
    objc_storeStrong(&v10->_sourceUniqueIdentifier, identifier);
  }

  return v10;
}

@end