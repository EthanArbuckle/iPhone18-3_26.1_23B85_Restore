@interface HMCRedirectorChangeItem
- (BOOL)isObjectType:(id)a3;
- (id)description;
@end

@implementation HMCRedirectorChangeItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMCRedirectorChangeItem *)self modelType];
  v5 = NSStringFromProtocol(v4);
  v6 = [(HMCRedirectorChangeItem *)self modelID];
  v7 = [(HMCRedirectorChangeItem *)self changedProperties];
  v8 = [v7 allObjects];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"%@.%@: [%@]", v5, v6, v9];

  return v10;
}

- (BOOL)isObjectType:(id)a3
{
  v4 = a3;
  v5 = [(HMCRedirectorChangeItem *)self modelType];
  isEqual = protocol_isEqual(v5, v4);

  return isEqual;
}

@end