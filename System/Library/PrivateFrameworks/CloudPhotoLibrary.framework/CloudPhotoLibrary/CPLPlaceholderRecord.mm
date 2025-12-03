@interface CPLPlaceholderRecord
- (CPLPlaceholderRecord)initWithRecord:(id)record;
- (CPLPlaceholderRecord)initWithRecordClass:(Class)class scopedIdentifier:(id)identifier relatedRecordClass:(Class)recordClass relatedIdentifier:(id)relatedIdentifier;
- (CPLScopedIdentifier)relatedScopedIdentifier;
- (id)description;
- (id)translateToClientRecordUsingIDMapping:(id)mapping;
- (id)translateToCloudRecordUsingIDMapping:(id)mapping;
@end

@implementation CPLPlaceholderRecord

- (id)translateToClientRecordUsingIDMapping:(id)mapping
{
  mappingCopy = mapping;
  v16 = 0;
  scopedIdentifier = [(CPLPlaceholderRecord *)self scopedIdentifier];
  v6 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier isFinal:&v16];
  relatedScopedIdentifier = [(CPLPlaceholderRecord *)self relatedScopedIdentifier];
  v8 = relatedScopedIdentifier;
  if (v6)
  {
    if (relatedScopedIdentifier)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v6 = [scopedIdentifier copy];
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:0 isFinal:&v16];
  if (!v9)
  {
    v9 = [v8 copy];
  }

LABEL_7:
  v10 = objc_alloc(objc_opt_class());
  recordClass = [(CPLPlaceholderRecord *)self recordClass];
  relatedRecordClass = [(CPLPlaceholderRecord *)self relatedRecordClass];
  identifier = [v9 identifier];
  v14 = [v10 initWithRecordClass:recordClass scopedIdentifier:v6 relatedRecordClass:relatedRecordClass relatedIdentifier:identifier];

  return v14;
}

- (id)translateToCloudRecordUsingIDMapping:(id)mapping
{
  mappingCopy = mapping;
  v16 = 0;
  scopedIdentifier = [(CPLPlaceholderRecord *)self scopedIdentifier];
  v6 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:scopedIdentifier isFinal:&v16];
  relatedScopedIdentifier = [(CPLPlaceholderRecord *)self relatedScopedIdentifier];
  v8 = relatedScopedIdentifier;
  if (v6)
  {
    if (relatedScopedIdentifier)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v6 = [scopedIdentifier copy];
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:v8 isFinal:&v16];
  if (!v9)
  {
    v9 = [v8 copy];
  }

LABEL_7:
  v10 = objc_alloc(objc_opt_class());
  recordClass = [(CPLPlaceholderRecord *)self recordClass];
  relatedRecordClass = [(CPLPlaceholderRecord *)self relatedRecordClass];
  identifier = [v9 identifier];
  v14 = [v10 initWithRecordClass:recordClass scopedIdentifier:v6 relatedRecordClass:relatedRecordClass relatedIdentifier:identifier];

  return v14;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[(%@ %@)]", self->_recordClass, self->_scopedIdentifier];

  return v2;
}

- (CPLScopedIdentifier)relatedScopedIdentifier
{
  relatedIdentifier = self->_relatedIdentifier;
  if (relatedIdentifier)
  {
    v4 = relatedIdentifier;
    v5 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLPlaceholderRecord *)self scopedIdentifier];
    v7 = [(CPLScopedIdentifier *)v5 initRelativeToScopedIdentifier:scopedIdentifier identifier:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CPLPlaceholderRecord)initWithRecord:(id)record
{
  recordCopy = record;
  relatedIdentifier = [recordCopy relatedIdentifier];
  v6 = objc_opt_class();
  scopedIdentifier = [recordCopy scopedIdentifier];
  if (relatedIdentifier)
  {
    relatedRecordClass = [recordCopy relatedRecordClass];

    selfCopy2 = self;
    v10 = v6;
    v11 = scopedIdentifier;
    v12 = relatedRecordClass;
    v13 = relatedIdentifier;
  }

  else
  {

    selfCopy2 = self;
    v10 = v6;
    v11 = scopedIdentifier;
    v12 = 0;
    v13 = 0;
  }

  v14 = [(CPLPlaceholderRecord *)selfCopy2 initWithRecordClass:v10 scopedIdentifier:v11 relatedRecordClass:v12 relatedIdentifier:v13];

  return v14;
}

- (CPLPlaceholderRecord)initWithRecordClass:(Class)class scopedIdentifier:(id)identifier relatedRecordClass:(Class)recordClass relatedIdentifier:(id)relatedIdentifier
{
  identifierCopy = identifier;
  relatedIdentifierCopy = relatedIdentifier;
  v16.receiver = self;
  v16.super_class = CPLPlaceholderRecord;
  v13 = [(CPLPlaceholderRecord *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_recordClass, class);
    objc_storeStrong(&v14->_scopedIdentifier, identifier);
    if (relatedIdentifierCopy)
    {
      objc_storeStrong(&v14->_relatedIdentifier, relatedIdentifier);
      objc_storeStrong(&v14->_relatedRecordClass, recordClass);
    }
  }

  return v14;
}

@end