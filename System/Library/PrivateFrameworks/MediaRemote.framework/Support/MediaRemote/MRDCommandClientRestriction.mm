@interface MRDCommandClientRestriction
+ (id)restrictedTo:(id)a3 by:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MRDCommandClientRestriction

+ (id)restrictedTo:(id)a3 by:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MRDCommandClientRestriction);
  v8 = +[NSDate date];
  [(MRDCommandClientRestriction *)v7 setDate:v8];

  [(MRDCommandClientRestriction *)v7 setAllowedAuditTokens:v6];
  [(MRDCommandClientRestriction *)v7 setRequester:v5];

  return v7;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRDCommandClientRestriction *)self allowedAuditTokens];
  v8 = [v7 allObjects];
  v9 = [v8 msv_map:&stru_1004BE738];
  [v6 appendFormat:@"allowedAuditTokens: %@", v9];

  v10 = [(MRDCommandClientRestriction *)self requester];
  [v6 appendFormat:@", requester: %@", v10];

  v11 = [(MRDCommandClientRestriction *)self date];
  [v6 appendFormat:@", date: %@", v11];

  [v6 appendString:@">"];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(MRDCommandClientRestriction *)self date];
  v7 = [v6 copyWithZone:a3];
  [v5 setDate:v7];

  v8 = [(MRDCommandClientRestriction *)self allowedAuditTokens];
  v9 = [v8 copyWithZone:a3];
  [v5 setAllowedAuditTokens:v9];

  v10 = [(MRDCommandClientRestriction *)self requester];
  [v5 setRequester:v10];

  return v5;
}

@end