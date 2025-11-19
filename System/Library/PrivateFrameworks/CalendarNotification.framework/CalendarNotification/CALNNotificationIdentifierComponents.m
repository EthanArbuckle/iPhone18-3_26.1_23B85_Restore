@interface CALNNotificationIdentifierComponents
- (CALNNotificationIdentifierComponents)initWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4;
- (id)description;
@end

@implementation CALNNotificationIdentifierComponents

- (CALNNotificationIdentifierComponents)initWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CALNNotificationIdentifierComponents;
  v8 = [(CALNNotificationIdentifierComponents *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    sourceIdentifier = v8->_sourceIdentifier;
    v8->_sourceIdentifier = v9;

    v11 = [v7 copy];
    sourceClientIdentifier = v8->_sourceClientIdentifier;
    v8->_sourceClientIdentifier = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CALNNotificationIdentifierComponents *)self sourceIdentifier];
  v6 = [(CALNNotificationIdentifierComponents *)self sourceClientIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p>(sourceIdentifier = %@, sourceClientIdentifier = %@)", v4, self, v5, v6];

  return v7;
}

@end