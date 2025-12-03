@interface MRMigrationBehaviorResult
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation MRMigrationBehaviorResult

- (id)dictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sourceUID = [(MRMigrationBehaviorResult *)selfCopy sourceUID];
  [v3 setObject:sourceUID forKeyedSubscript:@"sourceUID"];

  destinationUID = [(MRMigrationBehaviorResult *)selfCopy destinationUID];
  [v3 setObject:destinationUID forKeyedSubscript:@"destinationUID"];

  v6 = [(MRMigrationBehaviorResult *)selfCopy action]- 1;
  if (v6 > 2)
  {
    v7 = @"None";
  }

  else
  {
    v7 = off_1E76A44F0[v6];
  }

  [v3 setObject:v7 forKeyedSubscript:@"action"];
  reason = [(MRMigrationBehaviorResult *)selfCopy reason];
  [v3 setObject:reason forKeyedSubscript:@"reason"];

  error = [(MRMigrationBehaviorResult *)selfCopy error];
  [v3 setObject:error forKeyedSubscript:@"error"];

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sourceUID = self->_sourceUID;
      sourceUID = [(MRMigrationBehaviorResult *)v5 sourceUID];
      if (sourceUID == sourceUID)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        v8 = [(NSString *)sourceUID isEqual:sourceUID]^ 1;
      }

      destinationUID = self->_destinationUID;
      destinationUID = [(MRMigrationBehaviorResult *)v5 destinationUID];
      if (destinationUID == destinationUID)
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        v12 = [(NSString *)destinationUID isEqual:destinationUID]^ 1;
      }

      reason = self->_reason;
      reason = [(MRMigrationBehaviorResult *)v5 reason];
      if (reason == reason)
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = [(NSString *)reason isEqual:reason]^ 1;
      }

      action = self->_action;
      action = [(MRMigrationBehaviorResult *)v5 action];
      error = self->_error;
      error = [(MRMigrationBehaviorResult *)v5 error];
      if (error == error)
      {
        v20 = 1;
      }

      else
      {
        v20 = [(NSError *)error isEqual:error];
      }

      if (((v8 | v12) | v15))
      {
        v9 = 0;
      }

      else
      {
        v9 = (action == action) & v20;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceUID hash];
  v4 = [(NSString *)self->_destinationUID hash]^ v3;
  return v4 ^ [(NSString *)self->_reason hash];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRMigrationBehaviorResult *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

@end