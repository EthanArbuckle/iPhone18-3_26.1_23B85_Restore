@interface PKCloudRecordAccountEvent
- (PKCloudRecordAccountEvent)initWithCoder:(id)a3;
- (id)_descriptionWithIncludeItem:(BOOL)a3;
- (id)description;
- (id)descriptionWithItem:(BOOL)a3;
- (int64_t)compare:(id)a3;
- (void)applyCloudRecordObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudRecordAccountEvent

- (PKCloudRecordAccountEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCloudRecordAccountEvent;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    event = v5->_event;
    v5->_event = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordAccountEvent;
  v4 = a3;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_event forKey:{@"event", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)a3
{
  event = self->_event;
  v4 = a3;
  v5 = [(PKAccountEvent *)event identifier];
  v6 = [v4 event];

  v7 = [v6 identifier];
  v8 = [v5 compare:v7];

  return v8;
}

- (id)descriptionWithItem:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKCloudRecordAccountEvent *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordAccountEvent;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:v3];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordAccountEvent *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordAccountEvent;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  event = self->_event;
  if (event)
  {
    if (v3)
    {
      v7 = [(PKAccountEvent *)event identifier];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v5 appendFormat:@"event: id: %@, class: %@\n", v7, v9];
    }
  }

  else
  {
    [v5 appendFormat:@"No associated event in database\n"];
  }

  return v5;
}

- (void)applyCloudRecordObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordAccountEvent;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:v4];
    v5 = v4;
    v6 = v5;
    if (!self->_event)
    {
      v7 = [v5 event];

      if (v7)
      {
        v8 = [v6 event];
        event = self->_event;
        self->_event = v8;
      }
    }
  }
}

@end