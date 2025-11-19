@interface CPLPlaceholderRecord
- (CPLPlaceholderRecord)initWithRecord:(id)a3;
- (CPLPlaceholderRecord)initWithRecordClass:(Class)a3 scopedIdentifier:(id)a4 relatedRecordClass:(Class)a5 relatedIdentifier:(id)a6;
- (CPLScopedIdentifier)relatedScopedIdentifier;
- (id)description;
- (id)translateToClientRecordUsingIDMapping:(id)a3;
- (id)translateToCloudRecordUsingIDMapping:(id)a3;
@end

@implementation CPLPlaceholderRecord

- (id)translateToClientRecordUsingIDMapping:(id)a3
{
  v4 = a3;
  v16 = 0;
  v5 = [(CPLPlaceholderRecord *)self scopedIdentifier];
  v6 = [v4 localScopedIdentifierForCloudScopedIdentifier:v5 isFinal:&v16];
  v7 = [(CPLPlaceholderRecord *)self relatedScopedIdentifier];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v6 = [v5 copy];
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = [v4 localScopedIdentifierForCloudScopedIdentifier:0 isFinal:&v16];
  if (!v9)
  {
    v9 = [v8 copy];
  }

LABEL_7:
  v10 = objc_alloc(objc_opt_class());
  v11 = [(CPLPlaceholderRecord *)self recordClass];
  v12 = [(CPLPlaceholderRecord *)self relatedRecordClass];
  v13 = [v9 identifier];
  v14 = [v10 initWithRecordClass:v11 scopedIdentifier:v6 relatedRecordClass:v12 relatedIdentifier:v13];

  return v14;
}

- (id)translateToCloudRecordUsingIDMapping:(id)a3
{
  v4 = a3;
  v16 = 0;
  v5 = [(CPLPlaceholderRecord *)self scopedIdentifier];
  v6 = [v4 cloudScopedIdentifierForLocalScopedIdentifier:v5 isFinal:&v16];
  v7 = [(CPLPlaceholderRecord *)self relatedScopedIdentifier];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v6 = [v5 copy];
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = [v4 cloudScopedIdentifierForLocalScopedIdentifier:v8 isFinal:&v16];
  if (!v9)
  {
    v9 = [v8 copy];
  }

LABEL_7:
  v10 = objc_alloc(objc_opt_class());
  v11 = [(CPLPlaceholderRecord *)self recordClass];
  v12 = [(CPLPlaceholderRecord *)self relatedRecordClass];
  v13 = [v9 identifier];
  v14 = [v10 initWithRecordClass:v11 scopedIdentifier:v6 relatedRecordClass:v12 relatedIdentifier:v13];

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
    v6 = [(CPLPlaceholderRecord *)self scopedIdentifier];
    v7 = [(CPLScopedIdentifier *)v5 initRelativeToScopedIdentifier:v6 identifier:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CPLPlaceholderRecord)initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 relatedIdentifier];
  v6 = objc_opt_class();
  v7 = [v4 scopedIdentifier];
  if (v5)
  {
    v8 = [v4 relatedRecordClass];

    v9 = self;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v5;
  }

  else
  {

    v9 = self;
    v10 = v6;
    v11 = v7;
    v12 = 0;
    v13 = 0;
  }

  v14 = [(CPLPlaceholderRecord *)v9 initWithRecordClass:v10 scopedIdentifier:v11 relatedRecordClass:v12 relatedIdentifier:v13];

  return v14;
}

- (CPLPlaceholderRecord)initWithRecordClass:(Class)a3 scopedIdentifier:(id)a4 relatedRecordClass:(Class)a5 relatedIdentifier:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CPLPlaceholderRecord;
  v13 = [(CPLPlaceholderRecord *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_recordClass, a3);
    objc_storeStrong(&v14->_scopedIdentifier, a4);
    if (v12)
    {
      objc_storeStrong(&v14->_relatedIdentifier, a6);
      objc_storeStrong(&v14->_relatedRecordClass, a5);
    }
  }

  return v14;
}

@end