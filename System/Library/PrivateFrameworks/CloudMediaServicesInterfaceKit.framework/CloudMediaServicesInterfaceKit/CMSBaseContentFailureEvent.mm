@interface CMSBaseContentFailureEvent
- (CMSBaseContentFailureEvent)initWithServiceID:(id)d sessionIdentifier:(id)identifier;
- (id)encoded;
@end

@implementation CMSBaseContentFailureEvent

- (CMSBaseContentFailureEvent)initWithServiceID:(id)d sessionIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CMSBaseContentFailureEvent;
  v9 = [(CMSBaseContentFailureEvent *)&v14 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (dCopy && identifierCopy)
  {
    eventName = v9->_eventName;
    v9->_eventName = &stru_2856A7BB0;

    objc_storeStrong(p_isa + 2, d);
    objc_storeStrong(p_isa + 3, identifier);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (id)encoded
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"service";
  v6[1] = @"sessionIdentifier";
  sessionIdentifier = self->_sessionIdentifier;
  v7[0] = self->_serviceID;
  v7[1] = sessionIdentifier;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end