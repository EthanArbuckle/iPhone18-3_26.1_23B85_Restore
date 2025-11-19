@interface BCSDomainItemIdentifier
+ (id)identifierWithType:(int64_t)a3 domain:(id)a4;
- (BCSDomainItemIdentifier)initWithType:(int64_t)a3 domain:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation BCSDomainItemIdentifier

+ (id)identifierWithType:(int64_t)a3 domain:(id)a4
{
  v5 = a4;
  v6 = [[BCSDomainItemIdentifier alloc] initWithType:a3 domain:v5];

  return v6;
}

- (BCSDomainItemIdentifier)initWithType:(int64_t)a3 domain:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BCSDomainItemIdentifier;
  v8 = [(BCSDomainItemIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_domain, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(BCSDomainItemIdentifier *)self type];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __35__BCSDomainItemIdentifier_isEqual___block_invoke;
  v18[3] = &unk_278D38A20;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendInteger:v6 counterpart:v18];
  v9 = [(BCSDomainItemIdentifier *)self domain];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __35__BCSDomainItemIdentifier_isEqual___block_invoke_2;
  v16 = &unk_278D38A48;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendString:v9 counterpart:&v13];

  LOBYTE(v9) = [v5 isEqual];
  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:{-[BCSDomainItemIdentifier type](self, "type")}];
  v5 = [(BCSDomainItemIdentifier *)self domain];
  v6 = [v3 appendString:v5];

  v7 = [v3 hash];
  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:-[BCSDomainItemIdentifier type](self withName:{"type"), @"type"}];
  v5 = [(BCSDomainItemIdentifier *)self domain];
  [v3 appendString:v5 withName:@"domain"];

  v6 = [v3 build];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BCSDomainItemIdentifier allocWithZone:a3];
  v5 = [(BCSDomainItemIdentifier *)self type];
  v6 = [(BCSDomainItemIdentifier *)self domain];
  v7 = [(BCSDomainItemIdentifier *)v4 initWithType:v5 domain:v6];

  return v7;
}

@end