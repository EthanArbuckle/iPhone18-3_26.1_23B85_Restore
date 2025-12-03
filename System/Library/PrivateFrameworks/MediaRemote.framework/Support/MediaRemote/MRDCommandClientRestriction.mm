@interface MRDCommandClientRestriction
+ (id)restrictedTo:(id)to by:(id)by;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MRDCommandClientRestriction

+ (id)restrictedTo:(id)to by:(id)by
{
  byCopy = by;
  toCopy = to;
  v7 = objc_alloc_init(MRDCommandClientRestriction);
  v8 = +[NSDate date];
  [(MRDCommandClientRestriction *)v7 setDate:v8];

  [(MRDCommandClientRestriction *)v7 setAllowedAuditTokens:toCopy];
  [(MRDCommandClientRestriction *)v7 setRequester:byCopy];

  return v7;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  allowedAuditTokens = [(MRDCommandClientRestriction *)self allowedAuditTokens];
  allObjects = [allowedAuditTokens allObjects];
  v9 = [allObjects msv_map:&stru_1004BE738];
  [v6 appendFormat:@"allowedAuditTokens: %@", v9];

  requester = [(MRDCommandClientRestriction *)self requester];
  [v6 appendFormat:@", requester: %@", requester];

  date = [(MRDCommandClientRestriction *)self date];
  [v6 appendFormat:@", date: %@", date];

  [v6 appendString:@">"];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  date = [(MRDCommandClientRestriction *)self date];
  v7 = [date copyWithZone:zone];
  [v5 setDate:v7];

  allowedAuditTokens = [(MRDCommandClientRestriction *)self allowedAuditTokens];
  v9 = [allowedAuditTokens copyWithZone:zone];
  [v5 setAllowedAuditTokens:v9];

  requester = [(MRDCommandClientRestriction *)self requester];
  [v5 setRequester:requester];

  return v5;
}

@end