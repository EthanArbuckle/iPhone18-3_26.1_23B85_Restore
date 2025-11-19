@interface MCSignpost
- (MCSignpost)initWithProcess:(id)a3 type:(unint64_t)a4 feature:(id)a5 timestamp:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MCSignpost

- (MCSignpost)initWithProcess:(id)a3 type:(unint64_t)a4 feature:(id)a5 timestamp:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = MCSignpost;
  v13 = [(MCSignpost *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    process = v13->_process;
    v13->_process = v14;

    v13->_type = a4;
    v16 = [v11 copy];
    feature = v13->_feature;
    v13->_feature = v16;

    v18 = [v12 copy];
    timestamp = v13->_timestamp;
    v13->_timestamp = v18;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MCSignpost alloc];
  v5 = [(MCSignpost *)self process];
  v6 = [(MCSignpost *)self type];
  v7 = [(MCSignpost *)self feature];
  v8 = [(MCSignpost *)self timestamp];
  v9 = [(MCSignpost *)v4 initWithProcess:v5 type:v6 feature:v7 timestamp:v8];

  return v9;
}

@end