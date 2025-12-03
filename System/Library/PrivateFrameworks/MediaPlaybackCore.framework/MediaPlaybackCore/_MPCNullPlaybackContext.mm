@interface _MPCNullPlaybackContext
- (_MPCNullPlaybackContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionComponents;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MPCNullPlaybackContext

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _MPCNullPlaybackContext;
  v4 = [(_MPCNullPlaybackContext *)&v7 copyWithZone:zone];
  label = [(_MPCNullPlaybackContext *)self label];
  [v4 setLabel:label];

  return v4;
}

- (id)descriptionComponents
{
  v6.receiver = self;
  v6.super_class = _MPCNullPlaybackContext;
  descriptionComponents = [(_MPCNullPlaybackContext *)&v6 descriptionComponents];
  v4 = [descriptionComponents mutableCopy];

  [v4 setObject:0 forKeyedSubscript:@"actionAfterQueueLoad"];
  [v4 setObject:0 forKeyedSubscript:@"queueEndAction"];
  [v4 setObject:0 forKeyedSubscript:@"repeat/shuffle"];
  [v4 setObject:self->_label forKeyedSubscript:@"label"];
  [v4 setObject:0 forKeyedSubscript:@"featureName"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _MPCNullPlaybackContext;
  coderCopy = coder;
  [(_MPCNullPlaybackContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_label forKey:{@"MPCNullPlaybackContextCodingKeyLabel", v5.receiver, v5.super_class}];
}

- (_MPCNullPlaybackContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _MPCNullPlaybackContext;
  v5 = [(_MPCNullPlaybackContext *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPCNullPlaybackContextCodingKeyLabel"];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

@end