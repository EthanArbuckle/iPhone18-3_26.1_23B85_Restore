@interface IDSMessageSendEnforcementMetric
- (BOOL)isEqual:(id)a3;
- (IDSMessageSendEnforcementMetric)initWithCoder:(id)a3;
- (IDSMessageSendEnforcementMetric)initWithState:(int64_t)a3;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSMessageSendEnforcementMetric

- (IDSMessageSendEnforcementMetric)initWithState:(int64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = IDSMessageSendEnforcementMetric;
    v4 = [(IDSMessageSendEnforcementMetric *)&v7 init];
    v5 = v4;
    if (v4)
    {
      [(IDSMessageSendEnforcementMetric *)v4 setState:v3];
    }

    self = v5;
    v3 = self;
  }

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendEnforcementMetric state](self, "state")}];
  [v3 setObject:v4 forKeyedSubscript:@"IDSMessageSendEnforcementMetricStateKey"];

  if ([(IDSMessageSendEnforcementMetric *)self code])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendEnforcementMetric code](self, "code")}];
    [v3 setObject:v5 forKeyedSubscript:@"IDSMessageSendEnforcementMetricCodeKey"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[IDSMessageSendEnforcementMetric state](self, "state"), v5 == [v4 state]))
  {
    v6 = [(IDSMessageSendEnforcementMetric *)self code];
    v7 = v6 == [v4 code];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (IDSMessageSendEnforcementMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSMessageSendEnforcementMetric;
  v5 = [(IDSMessageSendEnforcementMetric *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"IDSMessageSendEnforcementMetricStateKey"];
    v5->_state = v6;
    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5->_code = [v4 decodeIntegerForKey:@"IDSMessageSendEnforcementMetricCodeKey"];
  }

  v7 = v5;
LABEL_6:

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"IDSMessageSendEnforcementMetricStateKey"];
  [v5 encodeInteger:self->_code forKey:@"IDSMessageSendEnforcementMetricCodeKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[IDSMessageSendEnforcementMetric allocWithZone:?], "initWithState:", [(IDSMessageSendEnforcementMetric *)self state]];
  [(IDSMessageSendEnforcementMetric *)v4 setCode:[(IDSMessageSendEnforcementMetric *)self code]];
  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p> state: %ld code: %ld", v5, self, -[IDSMessageSendEnforcementMetric state](self, "state"), -[IDSMessageSendEnforcementMetric code](self, "code")];

  return v6;
}

@end