@interface PBUIExternalDisplayConfiguration
+ (id)defaultConfiguration;
- (BOOL)isEqual:(id)equal;
- (PBUIExternalDisplayConfiguration)initWithIdentifier:(id)identifier mirrorsEmbeddedDisplay:(BOOL)display;
- (unint64_t)hash;
@end

@implementation PBUIExternalDisplayConfiguration

+ (id)defaultConfiguration
{
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  uniqueId = [mainDisplay uniqueId];
  v5 = uniqueId;
  v6 = @"default";
  if (uniqueId)
  {
    v6 = uniqueId;
  }

  v7 = v6;

  v8 = [self alloc];
  v9 = [MEMORY[0x277CCAD78] pf_UUIDFromArbitraryString:v7];

  v10 = [v8 initWithIdentifier:v9 mirrorsEmbeddedDisplay:0];

  return v10;
}

- (PBUIExternalDisplayConfiguration)initWithIdentifier:(id)identifier mirrorsEmbeddedDisplay:(BOOL)display
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PBUIExternalDisplayConfiguration;
  v8 = [(PBUIExternalDisplayConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_mirrorsEmbeddedDisplay = display;
  }

  return v9;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_identifier];
  v5 = [builder hash];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
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

  identifier = [(PBUIExternalDisplayConfiguration *)self identifier];
  uUIDString = [identifier UUIDString];
  identifier2 = [v8 identifier];

  uUIDString2 = [identifier2 UUIDString];
  v13 = [uUIDString isEqualToString:uUIDString2];

  return v13;
}

@end