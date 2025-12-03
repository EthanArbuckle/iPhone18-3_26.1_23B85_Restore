@interface MCSignpost
- (MCSignpost)initWithProcess:(id)process type:(unint64_t)type feature:(id)feature timestamp:(id)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MCSignpost

- (MCSignpost)initWithProcess:(id)process type:(unint64_t)type feature:(id)feature timestamp:(id)timestamp
{
  processCopy = process;
  featureCopy = feature;
  timestampCopy = timestamp;
  v21.receiver = self;
  v21.super_class = MCSignpost;
  v13 = [(MCSignpost *)&v21 init];
  if (v13)
  {
    v14 = [processCopy copy];
    process = v13->_process;
    v13->_process = v14;

    v13->_type = type;
    v16 = [featureCopy copy];
    feature = v13->_feature;
    v13->_feature = v16;

    v18 = [timestampCopy copy];
    timestamp = v13->_timestamp;
    v13->_timestamp = v18;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MCSignpost alloc];
  process = [(MCSignpost *)self process];
  type = [(MCSignpost *)self type];
  feature = [(MCSignpost *)self feature];
  timestamp = [(MCSignpost *)self timestamp];
  v9 = [(MCSignpost *)v4 initWithProcess:process type:type feature:feature timestamp:timestamp];

  return v9;
}

@end