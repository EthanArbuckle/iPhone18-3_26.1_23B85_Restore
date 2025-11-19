@interface PBUIExternalDisplayConfiguration
+ (id)defaultConfiguration;
- (BOOL)isEqual:(id)a3;
- (PBUIExternalDisplayConfiguration)initWithIdentifier:(id)a3 mirrorsEmbeddedDisplay:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation PBUIExternalDisplayConfiguration

+ (id)defaultConfiguration
{
  v3 = [MEMORY[0x277CD9E40] mainDisplay];
  v4 = [v3 uniqueId];
  v5 = v4;
  v6 = @"default";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [a1 alloc];
  v9 = [MEMORY[0x277CCAD78] pf_UUIDFromArbitraryString:v7];

  v10 = [v8 initWithIdentifier:v9 mirrorsEmbeddedDisplay:0];

  return v10;
}

- (PBUIExternalDisplayConfiguration)initWithIdentifier:(id)a3 mirrorsEmbeddedDisplay:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PBUIExternalDisplayConfiguration;
  v8 = [(PBUIExternalDisplayConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_mirrorsEmbeddedDisplay = a4;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_identifier];
  v5 = [v3 hash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(PBUIExternalDisplayConfiguration *)self identifier];
  v10 = [v9 UUIDString];
  v11 = [v8 identifier];

  v12 = [v11 UUIDString];
  v13 = [v10 isEqualToString:v12];

  return v13;
}

@end