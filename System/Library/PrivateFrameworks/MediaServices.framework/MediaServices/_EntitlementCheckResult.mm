@interface _EntitlementCheckResult
- (_EntitlementCheckResult)initWithEntitlement:(id)a3 group:(id)a4;
@end

@implementation _EntitlementCheckResult

- (_EntitlementCheckResult)initWithEntitlement:(id)a3 group:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _EntitlementCheckResult;
  v8 = [(_EntitlementCheckResult *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    entitlement = v8->_entitlement;
    v8->_entitlement = v9;

    v11 = [v7 copy];
    group = v8->_group;
    v8->_group = v11;
  }

  return v8;
}

@end