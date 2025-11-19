@interface IDSProvisionPseudonymMessage
- (BOOL)hasRequiredKeys:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSProvisionPseudonymMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = IDSProvisionPseudonymMessage;
  v4 = [(IDSProvisionPseudonymMessage *)&v11 copyWithZone:a3];
  [v4 setOperation:{-[IDSProvisionPseudonymMessage operation](self, "operation")}];
  v5 = [(IDSProvisionPseudonymMessage *)self pseudonymAlias];
  [v4 setPseudonymAlias:v5];

  v6 = [(IDSProvisionPseudonymMessage *)self featureID];
  [v4 setFeatureID:v6];

  v7 = [(IDSProvisionPseudonymMessage *)self scopeID];
  [v4 setScopeID:v7];

  v8 = [(IDSProvisionPseudonymMessage *)self subservicesByPrimaryService];
  [v4 setSubservicesByPrimaryService:v8];

  [(IDSProvisionPseudonymMessage *)self expiryEpoch];
  [v4 setExpiryEpoch:?];
  v9 = [(IDSProvisionPseudonymMessage *)self userVisibleName];
  [v4 setUserVisibleName:v9];

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
  v5 = [(IDSProvisionPseudonymMessage *)self featureID];
  if (v5)
  {
    CFDictionarySetValue(v4, @"featureId", v5);
  }

  v6 = [(IDSProvisionPseudonymMessage *)self scopeID];
  if (v6)
  {
    CFDictionarySetValue(v4, @"scopeId", v6);
  }

  v7 = [(IDSProvisionPseudonymMessage *)self subservicesByPrimaryService];
  if (v7)
  {
    CFDictionarySetValue(v4, @"allowedServices", v7);
  }

  [(IDSProvisionPseudonymMessage *)self expiryEpoch];
  v8 = [NSNumber numberWithDouble:?];
  if (v8)
  {
    CFDictionarySetValue(v4, @"expiry-epoch-seconds", v8);
  }

  v9 = [(IDSProvisionPseudonymMessage *)self userVisibleName];
  if (v9)
  {
    CFDictionarySetValue(v4, @"userVisibleName", v9);
  }

  v10 = [(IDSProvisionPseudonymMessage *)self pseudonymAlias];
  if (v10)
  {
    CFDictionarySetValue(v3, @"alias", v10);
  }

  v11 = [(IDSProvisionPseudonymMessage *)self operation];
  if (v11 > 2)
  {
    v12 = @"create";
  }

  else
  {
    v12 = off_100BDD010[v11];
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

- (BOOL)hasRequiredKeys:(id *)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(IDSProvisionPseudonymMessage *)self selfURI];

  if (!v6)
  {
    [v5 addObject:@"self URI"];
  }

  if (*a3 && [v5 count])
  {
    v7 = v5;
    *a3 = v5;
  }

  if ([v5 count])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = IDSProvisionPseudonymMessage;
    v8 = [(IDSProvisionPseudonymMessage *)&v10 hasRequiredKeys:a3];
  }

  return v8;
}

@end