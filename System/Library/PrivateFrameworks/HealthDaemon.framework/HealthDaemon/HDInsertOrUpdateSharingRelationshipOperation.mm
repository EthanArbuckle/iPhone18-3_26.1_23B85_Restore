@interface HDInsertOrUpdateSharingRelationshipOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertOrUpdateSharingRelationshipOperation)initWithCodableSharingRelationships:(id)relationships syncProvenance:(int64_t)provenance;
- (HDInsertOrUpdateSharingRelationshipOperation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDInsertOrUpdateSharingRelationshipOperation

- (HDInsertOrUpdateSharingRelationshipOperation)initWithCodableSharingRelationships:(id)relationships syncProvenance:(int64_t)provenance
{
  relationshipsCopy = relationships;
  v11.receiver = self;
  v11.super_class = HDInsertOrUpdateSharingRelationshipOperation;
  v7 = [(HDInsertOrUpdateSharingRelationshipOperation *)&v11 init];
  if (v7)
  {
    v8 = [relationshipsCopy copy];
    relationships = v7->_relationships;
    v7->_relationships = v8;

    v7->_syncProvenance = provenance;
  }

  return v7;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  sharingAuthorizationManager = [profile sharingAuthorizationManager];
  LOBYTE(error) = [sharingAuthorizationManager insertOrUpdateCodableRelationships:self->_relationships syncProvenance:self->_syncProvenance error:error];

  return error;
}

- (HDInsertOrUpdateSharingRelationshipOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"relationships"];
  v6 = [coderCopy decodeInt64ForKey:@"syncProvenance"];

  v7 = [(HDInsertOrUpdateSharingRelationshipOperation *)self initWithCodableSharingRelationships:v5 syncProvenance:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  relationships = self->_relationships;
  coderCopy = coder;
  [coderCopy encodeObject:relationships forKey:@"relationships"];
  [coderCopy encodeInt64:self->_syncProvenance forKey:@"syncProvenance"];
}

@end