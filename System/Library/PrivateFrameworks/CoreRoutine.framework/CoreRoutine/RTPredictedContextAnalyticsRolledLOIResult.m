@interface RTPredictedContextAnalyticsRolledLOIResult
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextAnalyticsRolledLOIResult)initWithCoder:(id)a3;
- (RTPredictedContextAnalyticsRolledLOIResult)initWithIdentifier:(id)a3 loiIsMissingFromCurrentVisitHistory:(BOOL)a4 isHome:(BOOL)a5 isWork:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextAnalyticsRolledLOIResult

- (RTPredictedContextAnalyticsRolledLOIResult)initWithIdentifier:(id)a3 loiIsMissingFromCurrentVisitHistory:(BOOL)a4 isHome:(BOOL)a5 isWork:(BOOL)a6
{
  v10 = a3;
  if (v10)
  {
    v16.receiver = self;
    v16.super_class = RTPredictedContextAnalyticsRolledLOIResult;
    v11 = [(RTPredictedContextAnalyticsRolledLOIResult *)&v16 init];
    if (v11)
    {
      v12 = [v10 copy];
      identifier = v11->_identifier;
      v11->_identifier = v12;

      v11->_loiIsMissingFromCurrentVisitHistory = a4;
      v11->_isHome = a5;
      v11->_isWork = a6;
    }

    self = v11;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeBool:self->_loiIsMissingFromCurrentVisitHistory forKey:@"loiMissing"];
  [v5 encodeBool:self->_isHome forKey:@"isHome"];
  [v5 encodeBool:self->_isWork forKey:@"isWork"];
}

- (RTPredictedContextAnalyticsRolledLOIResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeBoolForKey:@"loiMissing"];
  v7 = [v4 decodeBoolForKey:@"isHome"];
  v8 = [v4 decodeBoolForKey:@"isWork"];

  v9 = [(RTPredictedContextAnalyticsRolledLOIResult *)self initWithIdentifier:v5 loiIsMissingFromCurrentVisitHistory:v6 isHome:v7 isWork:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTPredictedContextAnalyticsRolledLOIResult *)self identifier];
    v8 = [(RTPredictedContextAnalyticsRolledLOIResult *)v6 identifier];
    if ([v7 isEqual:v8] && (v9 = -[RTPredictedContextAnalyticsRolledLOIResult loiIsMissingFromCurrentVisitHistory](self, "loiIsMissingFromCurrentVisitHistory"), v9 == -[RTPredictedContextAnalyticsRolledLOIResult loiIsMissingFromCurrentVisitHistory](v6, "loiIsMissingFromCurrentVisitHistory")) && (v10 = -[RTPredictedContextAnalyticsRolledLOIResult isHome](self, "isHome"), v10 == -[RTPredictedContextAnalyticsRolledLOIResult isHome](v6, "isHome")))
    {
      v13 = [(RTPredictedContextAnalyticsRolledLOIResult *)self isWork];
      v11 = v13 ^ [(RTPredictedContextAnalyticsRolledLOIResult *)v6 isWork]^ 1;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContextAnalyticsRolledLOIResult allocWithZone:a3];
  v5 = [(RTPredictedContextAnalyticsRolledLOIResult *)self identifier];
  v6 = [(RTPredictedContextAnalyticsRolledLOIResult *)v4 initWithIdentifier:v5 loiIsMissingFromCurrentVisitHistory:[(RTPredictedContextAnalyticsRolledLOIResult *)self loiIsMissingFromCurrentVisitHistory] isHome:[(RTPredictedContextAnalyticsRolledLOIResult *)self isHome] isWork:[(RTPredictedContextAnalyticsRolledLOIResult *)self isWork]];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTPredictedContextAnalyticsRolledLOIResult *)self identifier];
  v5 = [v3 stringWithFormat:@"identifier, %@, loiIsMissingFromCurrentVisitHistory, %lu, isHome, %lu, isWork, %lu", v4, -[RTPredictedContextAnalyticsRolledLOIResult loiIsMissingFromCurrentVisitHistory](self, "loiIsMissingFromCurrentVisitHistory"), -[RTPredictedContextAnalyticsRolledLOIResult isHome](self, "isHome"), -[RTPredictedContextAnalyticsRolledLOIResult isWork](self, "isWork")];

  return v5;
}

@end