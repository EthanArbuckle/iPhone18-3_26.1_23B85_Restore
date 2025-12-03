@interface _EntitlementCheckResult
- (_EntitlementCheckResult)initWithEntitlement:(id)entitlement group:(id)group;
@end

@implementation _EntitlementCheckResult

- (_EntitlementCheckResult)initWithEntitlement:(id)entitlement group:(id)group
{
  entitlementCopy = entitlement;
  groupCopy = group;
  v14.receiver = self;
  v14.super_class = _EntitlementCheckResult;
  v8 = [(_EntitlementCheckResult *)&v14 init];
  if (v8)
  {
    v9 = [entitlementCopy copy];
    entitlement = v8->_entitlement;
    v8->_entitlement = v9;

    v11 = [groupCopy copy];
    group = v8->_group;
    v8->_group = v11;
  }

  return v8;
}

@end