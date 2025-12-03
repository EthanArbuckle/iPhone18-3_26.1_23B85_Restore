@interface LNTranscriptMatchingPredicate
- (LNTranscriptMatchingPredicate)initWithBundleIdentifier:(id)identifier type:(int64_t)type executionUUID:(id)d entityIdentifier:(id)entityIdentifier actionType:(id)actionType entityType:(id)entityType;
- (LNTranscriptMatchingPredicate)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNTranscriptMatchingPredicate

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(LNTranscriptMatchingPredicate *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeInteger:-[LNTranscriptMatchingPredicate type](self forKey:{"type"), @"type"}];
  executionUUID = [(LNTranscriptMatchingPredicate *)self executionUUID];
  [coderCopy encodeObject:executionUUID forKey:@"executionUUID"];

  entityIdentifier = [(LNTranscriptMatchingPredicate *)self entityIdentifier];
  [coderCopy encodeObject:entityIdentifier forKey:@"entityIdentifier"];

  actionType = [(LNTranscriptMatchingPredicate *)self actionType];
  [coderCopy encodeObject:actionType forKey:@"actionType"];

  entityType = [(LNTranscriptMatchingPredicate *)self entityType];
  [coderCopy encodeObject:entityType forKey:@"entityType"];
}

- (LNTranscriptMatchingPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executionUUID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionType"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityType"];

  v11 = [(LNTranscriptMatchingPredicate *)self initWithBundleIdentifier:v5 type:v6 executionUUID:v7 entityIdentifier:v8 actionType:v9 entityType:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(LNTranscriptMatchingPredicate *)self bundleIdentifier];
  v7 = [(LNTranscriptMatchingPredicate *)self type]- 1;
  if (v7 > 2)
  {
    v8 = @"Donation Record";
  }

  else
  {
    v8 = off_1E74B2610[v7];
  }

  executionUUID = [(LNTranscriptMatchingPredicate *)self executionUUID];
  entityIdentifier = [(LNTranscriptMatchingPredicate *)self entityIdentifier];
  actionType = [(LNTranscriptMatchingPredicate *)self actionType];
  entityType = [(LNTranscriptMatchingPredicate *)self entityType];
  v13 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, type: %@, executionUUID: %@, entityIdentifier: %@, actionType: %@, entityType: %@>", v5, self, bundleIdentifier, v8, executionUUID, entityIdentifier, actionType, entityType];

  return v13;
}

- (LNTranscriptMatchingPredicate)initWithBundleIdentifier:(id)identifier type:(int64_t)type executionUUID:(id)d entityIdentifier:(id)entityIdentifier actionType:(id)actionType entityType:(id)entityType
{
  identifierCopy = identifier;
  dCopy = d;
  entityIdentifierCopy = entityIdentifier;
  actionTypeCopy = actionType;
  entityTypeCopy = entityType;
  v32.receiver = self;
  v32.super_class = LNTranscriptMatchingPredicate;
  v19 = [(LNTranscriptMatchingPredicate *)&v32 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    bundleIdentifier = v19->_bundleIdentifier;
    v19->_bundleIdentifier = v20;

    v19->_type = type;
    v22 = [dCopy copy];
    executionUUID = v19->_executionUUID;
    v19->_executionUUID = v22;

    v24 = [entityIdentifierCopy copy];
    entityIdentifier = v19->_entityIdentifier;
    v19->_entityIdentifier = v24;

    v26 = [actionTypeCopy copy];
    actionType = v19->_actionType;
    v19->_actionType = v26;

    v28 = [entityTypeCopy copy];
    entityType = v19->_entityType;
    v19->_entityType = v28;

    v30 = v19;
  }

  return v19;
}

@end