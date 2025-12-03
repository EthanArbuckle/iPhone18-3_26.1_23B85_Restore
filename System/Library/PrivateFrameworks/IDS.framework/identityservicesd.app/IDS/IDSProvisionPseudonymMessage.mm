@interface IDSProvisionPseudonymMessage
- (BOOL)hasRequiredKeys:(id *)keys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSProvisionPseudonymMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = IDSProvisionPseudonymMessage;
  v4 = [(IDSProvisionPseudonymMessage *)&v11 copyWithZone:zone];
  [v4 setOperation:{-[IDSProvisionPseudonymMessage operation](self, "operation")}];
  pseudonymAlias = [(IDSProvisionPseudonymMessage *)self pseudonymAlias];
  [v4 setPseudonymAlias:pseudonymAlias];

  featureID = [(IDSProvisionPseudonymMessage *)self featureID];
  [v4 setFeatureID:featureID];

  scopeID = [(IDSProvisionPseudonymMessage *)self scopeID];
  [v4 setScopeID:scopeID];

  subservicesByPrimaryService = [(IDSProvisionPseudonymMessage *)self subservicesByPrimaryService];
  [v4 setSubservicesByPrimaryService:subservicesByPrimaryService];

  [(IDSProvisionPseudonymMessage *)self expiryEpoch];
  [v4 setExpiryEpoch:?];
  userVisibleName = [(IDSProvisionPseudonymMessage *)self userVisibleName];
  [v4 setUserVisibleName:userVisibleName];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_alloc_init(NSMutableDictionary);
  featureID = [(IDSProvisionPseudonymMessage *)self featureID];
  if (featureID)
  {
    CFDictionarySetValue(v4, @"featureId", featureID);
  }

  scopeID = [(IDSProvisionPseudonymMessage *)self scopeID];
  if (scopeID)
  {
    CFDictionarySetValue(v4, @"scopeId", scopeID);
  }

  subservicesByPrimaryService = [(IDSProvisionPseudonymMessage *)self subservicesByPrimaryService];
  if (subservicesByPrimaryService)
  {
    CFDictionarySetValue(v4, @"allowedServices", subservicesByPrimaryService);
  }

  [(IDSProvisionPseudonymMessage *)self expiryEpoch];
  v8 = [NSNumber numberWithDouble:?];
  if (v8)
  {
    CFDictionarySetValue(v4, @"expiry-epoch-seconds", v8);
  }

  userVisibleName = [(IDSProvisionPseudonymMessage *)self userVisibleName];
  if (userVisibleName)
  {
    CFDictionarySetValue(v4, @"userVisibleName", userVisibleName);
  }

  pseudonymAlias = [(IDSProvisionPseudonymMessage *)self pseudonymAlias];
  if (pseudonymAlias)
  {
    CFDictionarySetValue(v3, @"alias", pseudonymAlias);
  }

  operation = [(IDSProvisionPseudonymMessage *)self operation];
  if (operation > 2)
  {
    v12 = @"create";
  }

  else
  {
    v12 = off_100BDD010[operation];
  }

  CFDictionarySetValue(v3, @"operation", v12);
  v13 = v4;
  if (v13)
  {
    CFDictionarySetValue(v3, @"attributes", v13);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920864();
  }

  return v3;
}

- (BOOL)hasRequiredKeys:(id *)keys
{
  v5 = objc_alloc_init(NSMutableArray);
  selfURI = [(IDSProvisionPseudonymMessage *)self selfURI];

  if (!selfURI)
  {
    [v5 addObject:@"self URI"];
  }

  if (*keys && [v5 count])
  {
    v7 = v5;
    *keys = v5;
  }

  if ([v5 count])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = IDSProvisionPseudonymMessage;
    v8 = [(IDSProvisionPseudonymMessage *)&v10 hasRequiredKeys:keys];
  }

  return v8;
}

@end