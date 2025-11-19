@interface HDInsertOrUpdateSharingRelationshipOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDInsertOrUpdateSharingRelationshipOperation)initWithCodableSharingRelationships:(id)a3 syncProvenance:(int64_t)a4;
- (HDInsertOrUpdateSharingRelationshipOperation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDInsertOrUpdateSharingRelationshipOperation

- (HDInsertOrUpdateSharingRelationshipOperation)initWithCodableSharingRelationships:(id)a3 syncProvenance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDInsertOrUpdateSharingRelationshipOperation;
  v7 = [(HDInsertOrUpdateSharingRelationshipOperation *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    relationships = v7->_relationships;
    v7->_relationships = v8;

    v7->_syncProvenance = a4;
  }

  return v7;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = [a3 sharingAuthorizationManager];
  LOBYTE(a5) = [v7 insertOrUpdateCodableRelationships:self->_relationships syncProvenance:self->_syncProvenance error:a5];

  return a5;
}

- (HDInsertOrUpdateSharingRelationshipOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"relationships"];
  v6 = [v4 decodeInt64ForKey:@"syncProvenance"];

  v7 = [(HDInsertOrUpdateSharingRelationshipOperation *)self initWithCodableSharingRelationships:v5 syncProvenance:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  relationships = self->_relationships;
  v5 = a3;
  [v5 encodeObject:relationships forKey:@"relationships"];
  [v5 encodeInt64:self->_syncProvenance forKey:@"syncProvenance"];
}

@end