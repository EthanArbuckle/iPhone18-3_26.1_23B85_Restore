@interface CastleEmailAliasUpdateResult
- (CastleEmailAliasUpdateResult)initWithReceiveEmailAliasAddresses:(id)a3 emailAddresses:(id)a4 defaultEmailAddress:(id)a5 entityTag:(id)a6 isSuccess:(BOOL)a7 notModified:(BOOL)a8 accountNeedsToUpdateProperties:(BOOL)a9;
@end

@implementation CastleEmailAliasUpdateResult

- (CastleEmailAliasUpdateResult)initWithReceiveEmailAliasAddresses:(id)a3 emailAddresses:(id)a4 defaultEmailAddress:(id)a5 entityTag:(id)a6 isSuccess:(BOOL)a7 notModified:(BOOL)a8 accountNeedsToUpdateProperties:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v22 = a6;
  v23.receiver = self;
  v23.super_class = CastleEmailAliasUpdateResult;
  v19 = [(CastleEmailAliasUpdateResult *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_receiveEmailAliasAddresses, a3);
    objc_storeStrong(&v20->_emailAddresses, a4);
    objc_storeStrong(&v20->_defaultEmailAddress, a5);
    objc_storeStrong(&v20->_entityTag, a6);
    v20->_isSuccess = a7;
    v20->_notModified = a8;
    v20->_accountNeedsToUpdateProperties = a9;
  }

  return v20;
}

@end