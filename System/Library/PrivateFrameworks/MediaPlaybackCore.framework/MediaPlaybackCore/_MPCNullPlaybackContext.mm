@interface _MPCNullPlaybackContext
- (_MPCNullPlaybackContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionComponents;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MPCNullPlaybackContext

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _MPCNullPlaybackContext;
  v4 = [(_MPCNullPlaybackContext *)&v7 copyWithZone:a3];
  v5 = [(_MPCNullPlaybackContext *)self label];
  [v4 setLabel:v5];

  return v4;
}

- (id)descriptionComponents
{
  v6.receiver = self;
  v6.super_class = _MPCNullPlaybackContext;
  v3 = [(_MPCNullPlaybackContext *)&v6 descriptionComponents];
  v4 = [v3 mutableCopy];

  [v4 setObject:0 forKeyedSubscript:@"actionAfterQueueLoad"];
  [v4 setObject:0 forKeyedSubscript:@"queueEndAction"];
  [v4 setObject:0 forKeyedSubscript:@"repeat/shuffle"];
  [v4 setObject:self->_label forKeyedSubscript:@"label"];
  [v4 setObject:0 forKeyedSubscript:@"featureName"];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _MPCNullPlaybackContext;
  v4 = a3;
  [(_MPCNullPlaybackContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_label forKey:{@"MPCNullPlaybackContextCodingKeyLabel", v5.receiver, v5.super_class}];
}

- (_MPCNullPlaybackContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MPCNullPlaybackContext;
  v5 = [(_MPCNullPlaybackContext *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPCNullPlaybackContextCodingKeyLabel"];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

@end