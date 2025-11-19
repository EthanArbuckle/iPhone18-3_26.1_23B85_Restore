@interface CDMWarmupRequestCommand
- (CDMWarmupRequestCommand)initWithCoder:(id)a3;
- (CDMWarmupRequestCommand)initWithDynamicConfig:(id)a3 selfMetadata:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDMWarmupRequestCommand

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CDMWarmupRequestCommand;
  v4 = a3;
  [(CDMServiceGraphCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_selfMetadata forKey:{@"CDMWarmupRequestCommandSelfMetadata", v5.receiver, v5.super_class}];
}

- (CDMWarmupRequestCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDMWarmupRequestCommand;
  v5 = [(CDMServiceGraphCommand *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CDMWarmupRequestCommandSelfMetadata"];
    selfMetadata = v5->_selfMetadata;
    v5->_selfMetadata = v6;
  }

  return v5;
}

- (CDMWarmupRequestCommand)initWithDynamicConfig:(id)a3 selfMetadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMWarmupRequestCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dynamicConfig, a3);
    objc_storeStrong(&v10->_selfMetadata, a4);
  }

  return v10;
}

@end