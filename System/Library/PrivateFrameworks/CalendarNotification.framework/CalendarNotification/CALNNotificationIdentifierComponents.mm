@interface CALNNotificationIdentifierComponents
- (CALNNotificationIdentifierComponents)initWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier;
- (id)description;
@end

@implementation CALNNotificationIdentifierComponents

- (CALNNotificationIdentifierComponents)initWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  v14.receiver = self;
  v14.super_class = CALNNotificationIdentifierComponents;
  v8 = [(CALNNotificationIdentifierComponents *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    sourceIdentifier = v8->_sourceIdentifier;
    v8->_sourceIdentifier = v9;

    v11 = [clientIdentifierCopy copy];
    sourceClientIdentifier = v8->_sourceClientIdentifier;
    v8->_sourceClientIdentifier = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  sourceIdentifier = [(CALNNotificationIdentifierComponents *)self sourceIdentifier];
  sourceClientIdentifier = [(CALNNotificationIdentifierComponents *)self sourceClientIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p>(sourceIdentifier = %@, sourceClientIdentifier = %@)", v4, self, sourceIdentifier, sourceClientIdentifier];

  return v7;
}

@end