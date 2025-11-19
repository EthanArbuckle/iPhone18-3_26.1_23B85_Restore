@interface LNTranscriptMatchingPredicate
- (LNTranscriptMatchingPredicate)initWithBundleIdentifier:(id)a3 type:(int64_t)a4 executionUUID:(id)a5 entityIdentifier:(id)a6 actionType:(id)a7 entityType:(id)a8;
- (LNTranscriptMatchingPredicate)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNTranscriptMatchingPredicate

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNTranscriptMatchingPredicate *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  [v4 encodeInteger:-[LNTranscriptMatchingPredicate type](self forKey:{"type"), @"type"}];
  v6 = [(LNTranscriptMatchingPredicate *)self executionUUID];
  [v4 encodeObject:v6 forKey:@"executionUUID"];

  v7 = [(LNTranscriptMatchingPredicate *)self entityIdentifier];
  [v4 encodeObject:v7 forKey:@"entityIdentifier"];

  v8 = [(LNTranscriptMatchingPredicate *)self actionType];
  [v4 encodeObject:v8 forKey:@"actionType"];

  v9 = [(LNTranscriptMatchingPredicate *)self entityType];
  [v4 encodeObject:v9 forKey:@"entityType"];
}

- (LNTranscriptMatchingPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"type"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executionUUID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionType"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityType"];

  v11 = [(LNTranscriptMatchingPredicate *)self initWithBundleIdentifier:v5 type:v6 executionUUID:v7 entityIdentifier:v8 actionType:v9 entityType:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNTranscriptMatchingPredicate *)self bundleIdentifier];
  v7 = [(LNTranscriptMatchingPredicate *)self type]- 1;
  if (v7 > 2)
  {
    v8 = @"Donation Record";
  }

  else
  {
    v8 = off_1E74B2610[v7];
  }

  v9 = [(LNTranscriptMatchingPredicate *)self executionUUID];
  v10 = [(LNTranscriptMatchingPredicate *)self entityIdentifier];
  v11 = [(LNTranscriptMatchingPredicate *)self actionType];
  v12 = [(LNTranscriptMatchingPredicate *)self entityType];
  v13 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, type: %@, executionUUID: %@, entityIdentifier: %@, actionType: %@, entityType: %@>", v5, self, v6, v8, v9, v10, v11, v12];

  return v13;
}

- (LNTranscriptMatchingPredicate)initWithBundleIdentifier:(id)a3 type:(int64_t)a4 executionUUID:(id)a5 entityIdentifier:(id)a6 actionType:(id)a7 entityType:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v32.receiver = self;
  v32.super_class = LNTranscriptMatchingPredicate;
  v19 = [(LNTranscriptMatchingPredicate *)&v32 init];
  if (v19)
  {
    v20 = [v14 copy];
    bundleIdentifier = v19->_bundleIdentifier;
    v19->_bundleIdentifier = v20;

    v19->_type = a4;
    v22 = [v15 copy];
    executionUUID = v19->_executionUUID;
    v19->_executionUUID = v22;

    v24 = [v16 copy];
    entityIdentifier = v19->_entityIdentifier;
    v19->_entityIdentifier = v24;

    v26 = [v17 copy];
    actionType = v19->_actionType;
    v19->_actionType = v26;

    v28 = [v18 copy];
    entityType = v19->_entityType;
    v19->_entityType = v28;

    v30 = v19;
  }

  return v19;
}

@end