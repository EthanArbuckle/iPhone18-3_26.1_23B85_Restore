@interface IMCoreSpotlightRejectedItem
- (IMCoreSpotlightRejectedItem)initWithDomain:(id)a3 identifier:(id)a4 reason:(int64_t)a5;
@end

@implementation IMCoreSpotlightRejectedItem

- (IMCoreSpotlightRejectedItem)initWithDomain:(id)a3 identifier:(id)a4 reason:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IMCoreSpotlightRejectedItem;
  v11 = [(IMCoreSpotlightRejectedItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_proposedDomain, a3);
    objc_storeStrong(&v12->_proposedIdentifier, a4);
    v12->_reason = a5;
  }

  return v12;
}

@end