@interface MRMigrationBehaviorResult
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation MRMigrationBehaviorResult

- (id)dictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MRMigrationBehaviorResult *)v2 sourceUID];
  [v3 setObject:v4 forKeyedSubscript:@"sourceUID"];

  v5 = [(MRMigrationBehaviorResult *)v2 destinationUID];
  [v3 setObject:v5 forKeyedSubscript:@"destinationUID"];

  v6 = [(MRMigrationBehaviorResult *)v2 action]- 1;
  if (v6 > 2)
  {
    v7 = @"None";
  }

  else
  {
    v7 = off_1E76A44F0[v6];
  }

  [v3 setObject:v7 forKeyedSubscript:@"action"];
  v8 = [(MRMigrationBehaviorResult *)v2 reason];
  [v3 setObject:v8 forKeyedSubscript:@"reason"];

  v9 = [(MRMigrationBehaviorResult *)v2 error];
  [v3 setObject:v9 forKeyedSubscript:@"error"];

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      sourceUID = self->_sourceUID;
      v7 = [(MRMigrationBehaviorResult *)v5 sourceUID];
      if (sourceUID == v7)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        v8 = [(NSString *)sourceUID isEqual:v7]^ 1;
      }

      destinationUID = self->_destinationUID;
      v11 = [(MRMigrationBehaviorResult *)v5 destinationUID];
      if (destinationUID == v11)
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        v12 = [(NSString *)destinationUID isEqual:v11]^ 1;
      }

      reason = self->_reason;
      v14 = [(MRMigrationBehaviorResult *)v5 reason];
      if (reason == v14)
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = [(NSString *)reason isEqual:v14]^ 1;
      }

      action = self->_action;
      v17 = [(MRMigrationBehaviorResult *)v5 action];
      error = self->_error;
      v19 = [(MRMigrationBehaviorResult *)v5 error];
      if (error == v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = [(NSError *)error isEqual:v19];
      }

      if (((v8 | v12) | v15))
      {
        v9 = 0;
      }

      else
      {
        v9 = (action == v17) & v20;
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
  v5 = [(MRMigrationBehaviorResult *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

@end