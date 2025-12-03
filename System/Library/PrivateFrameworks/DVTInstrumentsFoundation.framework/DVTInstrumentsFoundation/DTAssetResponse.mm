@interface DTAssetResponse
+ (id)completedResponseWithIdentifier:(id)identifier;
+ (id)responseWithIdentifier:(id)identifier data:(id)data;
- (DTAssetResponse)initWithCoder:(id)coder;
- (DTAssetResponse)initWithIdentifier:(id)identifier data:(id)data completed:(BOOL)completed;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DTAssetResponse

+ (id)responseWithIdentifier:(id)identifier data:(id)data
{
  dataCopy = data;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithIdentifier:identifierCopy data:dataCopy completed:0];

  return v8;
}

+ (id)completedResponseWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy data:0 completed:1];

  return v5;
}

- (DTAssetResponse)initWithIdentifier:(id)identifier data:(id)data completed:(BOOL)completed
{
  identifierCopy = identifier;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = DTAssetResponse;
  v10 = [(DTAssetResponse *)&v14 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_data, data);
    v10->_completed = completed;
  }

  return v10;
}

- (DTAssetResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v7 = [coderCopy decodeBoolForKey:@"completed"];

  v8 = [(DTAssetResponse *)self initWithIdentifier:v5 data:v6 completed:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DTAssetResponse *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  data = [(DTAssetResponse *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  [coderCopy encodeBool:-[DTAssetResponse isCompleted](self forKey:{"isCompleted"), @"completed"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(DTAssetResponse *)self identifier];
  data = [(DTAssetResponse *)self data];
  v6 = [data length];
  isCompleted = [(DTAssetResponse *)self isCompleted];
  v8 = "NO";
  if (isCompleted)
  {
    v8 = "YES";
  }

  v9 = [v3 stringWithFormat:@"<DTAssetResponse:%@ dataLength=%lu completed:%s>", identifier, v6, v8];

  return v9;
}

@end