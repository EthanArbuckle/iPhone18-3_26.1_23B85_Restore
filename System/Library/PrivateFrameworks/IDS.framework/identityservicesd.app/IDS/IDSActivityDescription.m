@interface IDSActivityDescription
- (IDSActivityDescription)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSActivityDescription

- (void)encodeWithCoder:(id)a3
{
  timeSubscribed = self->_timeSubscribed;
  v5 = a3;
  [v5 encodeDouble:@"time" forKey:timeSubscribed];
  [v5 encodeObject:self->_activity forKey:@"activity"];
  [v5 encodeObject:self->_subActivity forKey:@"subactivity"];
}

- (IDSActivityDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IDSActivityDescription;
  v5 = [(IDSActivityDescription *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activity"];
    activity = v5->_activity;
    v5->_activity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subactivity"];
    subActivity = v5->_subActivity;
    v5->_subActivity = v8;

    [v4 decodeDoubleForKey:@"time"];
    v5->_timeSubscribed = v10;
  }

  return v5;
}

@end