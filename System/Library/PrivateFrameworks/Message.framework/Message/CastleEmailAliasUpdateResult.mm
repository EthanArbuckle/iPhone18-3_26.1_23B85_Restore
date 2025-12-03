@interface CastleEmailAliasUpdateResult
- (CastleEmailAliasUpdateResult)initWithReceiveEmailAliasAddresses:(id)addresses emailAddresses:(id)emailAddresses defaultEmailAddress:(id)address entityTag:(id)tag isSuccess:(BOOL)success notModified:(BOOL)modified accountNeedsToUpdateProperties:(BOOL)properties;
@end

@implementation CastleEmailAliasUpdateResult

- (CastleEmailAliasUpdateResult)initWithReceiveEmailAliasAddresses:(id)addresses emailAddresses:(id)emailAddresses defaultEmailAddress:(id)address entityTag:(id)tag isSuccess:(BOOL)success notModified:(BOOL)modified accountNeedsToUpdateProperties:(BOOL)properties
{
  addressesCopy = addresses;
  emailAddressesCopy = emailAddresses;
  addressCopy = address;
  tagCopy = tag;
  v23.receiver = self;
  v23.super_class = CastleEmailAliasUpdateResult;
  v19 = [(CastleEmailAliasUpdateResult *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_receiveEmailAliasAddresses, addresses);
    objc_storeStrong(&v20->_emailAddresses, emailAddresses);
    objc_storeStrong(&v20->_defaultEmailAddress, address);
    objc_storeStrong(&v20->_entityTag, tag);
    v20->_isSuccess = success;
    v20->_notModified = modified;
    v20->_accountNeedsToUpdateProperties = properties;
  }

  return v20;
}

@end