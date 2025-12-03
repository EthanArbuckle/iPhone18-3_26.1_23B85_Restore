@interface IMCoreSpotlightRejectedItem
- (IMCoreSpotlightRejectedItem)initWithDomain:(id)domain identifier:(id)identifier reason:(int64_t)reason;
@end

@implementation IMCoreSpotlightRejectedItem

- (IMCoreSpotlightRejectedItem)initWithDomain:(id)domain identifier:(id)identifier reason:(int64_t)reason
{
  domainCopy = domain;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = IMCoreSpotlightRejectedItem;
  v11 = [(IMCoreSpotlightRejectedItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_proposedDomain, domain);
    objc_storeStrong(&v12->_proposedIdentifier, identifier);
    v12->_reason = reason;
  }

  return v12;
}

@end