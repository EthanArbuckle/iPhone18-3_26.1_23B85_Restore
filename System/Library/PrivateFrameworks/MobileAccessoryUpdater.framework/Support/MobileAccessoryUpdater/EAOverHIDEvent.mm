@interface EAOverHIDEvent
- (EAOverHIDEvent)initWithName:(id)name info:(id)info;
- (void)dealloc;
@end

@implementation EAOverHIDEvent

- (void)dealloc
{
  filterName = self->_filterName;
  if (filterName)
  {
  }

  info = self->_info;
  if (info)
  {
  }

  v5.receiver = self;
  v5.super_class = EAOverHIDEvent;
  [(EAOverHIDEvent *)&v5 dealloc];
}

- (EAOverHIDEvent)initWithName:(id)name info:(id)info
{
  v8.receiver = self;
  v8.super_class = EAOverHIDEvent;
  v6 = [(EAOverHIDEvent *)&v8 init];
  if (v6)
  {
    [(EAOverHIDEvent *)v6 setFilterName:name];
    [(EAOverHIDEvent *)v6 setInfo:info];
  }

  return v6;
}

@end