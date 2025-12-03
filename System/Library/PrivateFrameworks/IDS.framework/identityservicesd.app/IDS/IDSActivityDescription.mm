@interface IDSActivityDescription
- (IDSActivityDescription)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSActivityDescription

- (void)encodeWithCoder:(id)coder
{
  timeSubscribed = self->_timeSubscribed;
  coderCopy = coder;
  [coderCopy encodeDouble:@"time" forKey:timeSubscribed];
  [coderCopy encodeObject:self->_activity forKey:@"activity"];
  [coderCopy encodeObject:self->_subActivity forKey:@"subactivity"];
}

- (IDSActivityDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IDSActivityDescription;
  v5 = [(IDSActivityDescription *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activity"];
    activity = v5->_activity;
    v5->_activity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subactivity"];
    subActivity = v5->_subActivity;
    v5->_subActivity = v8;

    [coderCopy decodeDoubleForKey:@"time"];
    v5->_timeSubscribed = v10;
  }

  return v5;
}

@end