@interface PKCloudRecordAccountEvent
- (PKCloudRecordAccountEvent)initWithCoder:(id)coder;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (int64_t)compare:(id)compare;
- (void)applyCloudRecordObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordAccountEvent

- (PKCloudRecordAccountEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordAccountEvent;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    event = v5->_event;
    v5->_event = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordAccountEvent;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_event forKey:{@"event", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)compare
{
  event = self->_event;
  compareCopy = compare;
  identifier = [(PKAccountEvent *)event identifier];
  event = [compareCopy event];

  identifier2 = [event identifier];
  v8 = [identifier compare:identifier2];

  return v8;
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordAccountEvent *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordAccountEvent;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
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

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  event = self->_event;
  if (event)
  {
    if (itemCopy)
    {
      identifier = [(PKAccountEvent *)event identifier];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [string appendFormat:@"event: id: %@, class: %@\n", identifier, v9];
    }
  }

  else
  {
    [string appendFormat:@"No associated event in database\n"];
  }

  return string;
}

- (void)applyCloudRecordObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordAccountEvent;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:objectCopy];
    v5 = objectCopy;
    v6 = v5;
    if (!self->_event)
    {
      event = [v5 event];

      if (event)
      {
        event2 = [v6 event];
        event = self->_event;
        self->_event = event2;
      }
    }
  }
}

@end