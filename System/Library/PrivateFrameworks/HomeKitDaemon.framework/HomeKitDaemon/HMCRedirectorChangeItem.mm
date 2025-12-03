@interface HMCRedirectorChangeItem
- (BOOL)isObjectType:(id)type;
- (id)description;
@end

@implementation HMCRedirectorChangeItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  modelType = [(HMCRedirectorChangeItem *)self modelType];
  v5 = NSStringFromProtocol(modelType);
  modelID = [(HMCRedirectorChangeItem *)self modelID];
  changedProperties = [(HMCRedirectorChangeItem *)self changedProperties];
  allObjects = [changedProperties allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"%@.%@: [%@]", v5, modelID, v9];

  return v10;
}

- (BOOL)isObjectType:(id)type
{
  typeCopy = type;
  modelType = [(HMCRedirectorChangeItem *)self modelType];
  isEqual = protocol_isEqual(modelType, typeCopy);

  return isEqual;
}

@end