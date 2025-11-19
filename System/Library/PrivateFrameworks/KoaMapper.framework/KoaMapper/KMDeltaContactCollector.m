@interface KMDeltaContactCollector
- (KMDeltaContactCollector)init;
- (void)reset;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation KMDeltaContactCollector

- (void)reset
{
  self->_deltaType = 0;
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = 0;
  MEMORY[0x2821F96F8]();
}

- (void)visitDeleteContactEvent:(id)a3
{
  self->_deltaType = 3;
  v4 = [a3 contactIdentifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)visitUpdateContactEvent:(id)a3
{
  self->_deltaType = 2;
  v6 = [a3 contact];
  v4 = [v6 identifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;
}

- (void)visitAddContactEvent:(id)a3
{
  self->_deltaType = 1;
  v6 = [a3 contact];
  v4 = [v6 identifier];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;
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