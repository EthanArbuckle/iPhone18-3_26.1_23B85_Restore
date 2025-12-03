@interface EMAccount
- (BOOL)isEqual:(id)equal;
- (id)ef_publicDescription;
@end

@implementation EMAccount

- (id)ef_publicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v5 = [(EMObject *)self debugDescription];
  }

  else
  {
    objectID = [(EMObject *)self objectID];
    stringHash = [objectID stringHash];

    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    ef_publicDescription = [stringHash ef_publicDescription];
    v5 = [v8 stringWithFormat:@"<%@: %p>\n\tObjectID:%@", v9, self, ef_publicDescription];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()] & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = equalCopy;
    objectID = [(EMObject *)self objectID];
    objectID2 = [v6 objectID];
    v9 = [objectID isEqual:objectID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end