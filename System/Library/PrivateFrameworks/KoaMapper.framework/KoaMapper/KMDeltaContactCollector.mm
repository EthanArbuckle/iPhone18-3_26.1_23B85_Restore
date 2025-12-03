@interface KMDeltaContactCollector
- (KMDeltaContactCollector)init;
- (void)reset;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation KMDeltaContactCollector

- (void)reset
{
  self->_deltaType = 0;
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = 0;
  MEMORY[0x2821F96F8]();
}

- (void)visitDeleteContactEvent:(id)event
{
  self->_deltaType = 3;
  contactIdentifier = [event contactIdentifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = contactIdentifier;

  MEMORY[0x2821F96F8]();
}

- (void)visitUpdateContactEvent:(id)event
{
  self->_deltaType = 2;
  contact = [event contact];
  identifier = [contact identifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = identifier;
}

- (void)visitAddContactEvent:(id)event
{
  self->_deltaType = 1;
  contact = [event contact];
  identifier = [contact identifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = identifier;
}

- (KMDeltaContactCollector)init
{
  v3.receiver = self;
  v3.super_class = KMDeltaContactCollector;
  result = [(KMDeltaContactCollector *)&v3 init];
  if (result)
  {
    result->_deltaType = 0;
  }

  return result;
}

@end