@interface BCSDomainItemIdentifier
+ (id)identifierWithType:(int64_t)type domain:(id)domain;
- (BCSDomainItemIdentifier)initWithType:(int64_t)type domain:(id)domain;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation BCSDomainItemIdentifier

+ (id)identifierWithType:(int64_t)type domain:(id)domain
{
  domainCopy = domain;
  v6 = [[BCSDomainItemIdentifier alloc] initWithType:type domain:domainCopy];

  return v6;
}

- (BCSDomainItemIdentifier)initWithType:(int64_t)type domain:(id)domain
{
  domainCopy = domain;
  v11.receiver = self;
  v11.super_class = BCSDomainItemIdentifier;
  v8 = [(BCSDomainItemIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_domain, domain);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  type = [(BCSDomainItemIdentifier *)self type];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __35__BCSDomainItemIdentifier_isEqual___block_invoke;
  v18[3] = &unk_278D38A20;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendInteger:type counterpart:v18];
  domain = [(BCSDomainItemIdentifier *)self domain];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __35__BCSDomainItemIdentifier_isEqual___block_invoke_2;
  v16 = &unk_278D38A48;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendString:domain counterpart:&v13];

  LOBYTE(domain) = [v5 isEqual];
  return domain;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:{-[BCSDomainItemIdentifier type](self, "type")}];
  domain = [(BCSDomainItemIdentifier *)self domain];
  v6 = [builder appendString:domain];

  v7 = [builder hash];
  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:-[BCSDomainItemIdentifier type](self withName:{"type"), @"type"}];
  domain = [(BCSDomainItemIdentifier *)self domain];
  [v3 appendString:domain withName:@"domain"];

  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BCSDomainItemIdentifier allocWithZone:zone];
  type = [(BCSDomainItemIdentifier *)self type];
  domain = [(BCSDomainItemIdentifier *)self domain];
  v7 = [(BCSDomainItemIdentifier *)v4 initWithType:type domain:domain];

  return v7;
}

@end