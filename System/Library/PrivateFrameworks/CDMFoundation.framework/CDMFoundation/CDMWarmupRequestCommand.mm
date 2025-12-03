@interface CDMWarmupRequestCommand
- (CDMWarmupRequestCommand)initWithCoder:(id)coder;
- (CDMWarmupRequestCommand)initWithDynamicConfig:(id)config selfMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMWarmupRequestCommand

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CDMWarmupRequestCommand;
  coderCopy = coder;
  [(CDMServiceGraphCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_selfMetadata forKey:{@"CDMWarmupRequestCommandSelfMetadata", v5.receiver, v5.super_class}];
}

- (CDMWarmupRequestCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CDMWarmupRequestCommand;
  v5 = [(CDMServiceGraphCommand *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CDMWarmupRequestCommandSelfMetadata"];
    selfMetadata = v5->_selfMetadata;
    v5->_selfMetadata = v6;
  }

  return v5;
}

- (CDMWarmupRequestCommand)initWithDynamicConfig:(id)config selfMetadata:(id)metadata
{
  configCopy = config;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = CDMWarmupRequestCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dynamicConfig, config);
    objc_storeStrong(&v10->_selfMetadata, metadata);
  }

  return v10;
}

@end