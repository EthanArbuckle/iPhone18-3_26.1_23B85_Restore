@interface DTAssetResponse
+ (id)completedResponseWithIdentifier:(id)a3;
+ (id)responseWithIdentifier:(id)a3 data:(id)a4;
- (DTAssetResponse)initWithCoder:(id)a3;
- (DTAssetResponse)initWithIdentifier:(id)a3 data:(id)a4 completed:(BOOL)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DTAssetResponse

+ (id)responseWithIdentifier:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdentifier:v7 data:v6 completed:0];

  return v8;
}

+ (id)completedResponseWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4 data:0 completed:1];

  return v5;
}

- (DTAssetResponse)initWithIdentifier:(id)a3 data:(id)a4 completed:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = DTAssetResponse;
  v10 = [(DTAssetResponse *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_data, a4);
    v10->_completed = a5;
  }

  return v10;
}

- (DTAssetResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v7 = [v4 decodeBoolForKey:@"completed"];

  v8 = [(DTAssetResponse *)self initWithIdentifier:v5 data:v6 completed:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DTAssetResponse *)self identifier];
  [v6 encodeObject:v4 forKey:@"identifier"];

  v5 = [(DTAssetResponse *)self data];
  [v6 encodeObject:v5 forKey:@"data"];

  [v6 encodeBool:-[DTAssetResponse isCompleted](self forKey:{"isCompleted"), @"completed"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DTAssetResponse *)self identifier];
  v5 = [(DTAssetResponse *)self data];
  v6 = [v5 length];
  v7 = [(DTAssetResponse *)self isCompleted];
  v8 = "NO";
  if (v7)
  {
    v8 = "YES";
  }

  v9 = [v3 stringWithFormat:@"<DTAssetResponse:%@ dataLength=%lu completed:%s>", v4, v6, v8];

  return v9;
}

@end