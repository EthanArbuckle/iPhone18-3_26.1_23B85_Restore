@interface RTPredictedContextAnalyticsRolledLOIResult
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextAnalyticsRolledLOIResult)initWithCoder:(id)coder;
- (RTPredictedContextAnalyticsRolledLOIResult)initWithIdentifier:(id)identifier loiIsMissingFromCurrentVisitHistory:(BOOL)history isHome:(BOOL)home isWork:(BOOL)work;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextAnalyticsRolledLOIResult

- (RTPredictedContextAnalyticsRolledLOIResult)initWithIdentifier:(id)identifier loiIsMissingFromCurrentVisitHistory:(BOOL)history isHome:(BOOL)home isWork:(BOOL)work
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v16.receiver = self;
    v16.super_class = RTPredictedContextAnalyticsRolledLOIResult;
    v11 = [(RTPredictedContextAnalyticsRolledLOIResult *)&v16 init];
    if (v11)
    {
      v12 = [identifierCopy copy];
      identifier = v11->_identifier;
      v11->_identifier = v12;

      v11->_loiIsMissingFromCurrentVisitHistory = history;
      v11->_isHome = home;
      v11->_isWork = work;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_loiIsMissingFromCurrentVisitHistory forKey:@"loiMissing"];
  [coderCopy encodeBool:self->_isHome forKey:@"isHome"];
  [coderCopy encodeBool:self->_isWork forKey:@"isWork"];
}

- (RTPredictedContextAnalyticsRolledLOIResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeBoolForKey:@"loiMissing"];
  v7 = [coderCopy decodeBoolForKey:@"isHome"];
  v8 = [coderCopy decodeBoolForKey:@"isWork"];

  v9 = [(RTPredictedContextAnalyticsRolledLOIResult *)self initWithIdentifier:v5 loiIsMissingFromCurrentVisitHistory:v6 isHome:v7 isWork:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = [(RTPredictedContextAnalyticsRolledLOIResult *)self identifier];
    identifier2 = [(RTPredictedContextAnalyticsRolledLOIResult *)v6 identifier];
    if ([identifier isEqual:identifier2] && (v9 = -[RTPredictedContextAnalyticsRolledLOIResult loiIsMissingFromCurrentVisitHistory](self, "loiIsMissingFromCurrentVisitHistory"), v9 == -[RTPredictedContextAnalyticsRolledLOIResult loiIsMissingFromCurrentVisitHistory](v6, "loiIsMissingFromCurrentVisitHistory")) && (v10 = -[RTPredictedContextAnalyticsRolledLOIResult isHome](self, "isHome"), v10 == -[RTPredictedContextAnalyticsRolledLOIResult isHome](v6, "isHome")))
    {
      isWork = [(RTPredictedContextAnalyticsRolledLOIResult *)self isWork];
      v11 = isWork ^ [(RTPredictedContextAnalyticsRolledLOIResult *)v6 isWork]^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPredictedContextAnalyticsRolledLOIResult allocWithZone:zone];
  identifier = [(RTPredictedContextAnalyticsRolledLOIResult *)self identifier];
  v6 = [(RTPredictedContextAnalyticsRolledLOIResult *)v4 initWithIdentifier:identifier loiIsMissingFromCurrentVisitHistory:[(RTPredictedContextAnalyticsRolledLOIResult *)self loiIsMissingFromCurrentVisitHistory] isHome:[(RTPredictedContextAnalyticsRolledLOIResult *)self isHome] isWork:[(RTPredictedContextAnalyticsRolledLOIResult *)self isWork]];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(RTPredictedContextAnalyticsRolledLOIResult *)self identifier];
  v5 = [v3 stringWithFormat:@"identifier, %@, loiIsMissingFromCurrentVisitHistory, %lu, isHome, %lu, isWork, %lu", identifier, -[RTPredictedContextAnalyticsRolledLOIResult loiIsMissingFromCurrentVisitHistory](self, "loiIsMissingFromCurrentVisitHistory"), -[RTPredictedContextAnalyticsRolledLOIResult isHome](self, "isHome"), -[RTPredictedContextAnalyticsRolledLOIResult isWork](self, "isWork")];

  return v5;
}

@end