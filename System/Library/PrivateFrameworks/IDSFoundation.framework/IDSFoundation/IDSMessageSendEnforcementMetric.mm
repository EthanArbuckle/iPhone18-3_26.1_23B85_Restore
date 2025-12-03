@interface IDSMessageSendEnforcementMetric
- (BOOL)isEqual:(id)equal;
- (IDSMessageSendEnforcementMetric)initWithCoder:(id)coder;
- (IDSMessageSendEnforcementMetric)initWithState:(int64_t)state;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSMessageSendEnforcementMetric

- (IDSMessageSendEnforcementMetric)initWithState:(int64_t)state
{
  selfCopy = state;
  if (state)
  {
    v7.receiver = self;
    v7.super_class = IDSMessageSendEnforcementMetric;
    v4 = [(IDSMessageSendEnforcementMetric *)&v7 init];
    v5 = v4;
    if (v4)
    {
      [(IDSMessageSendEnforcementMetric *)v4 setState:selfCopy];
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendEnforcementMetric state](self, "state")}];
  [dictionary setObject:v4 forKeyedSubscript:@"IDSMessageSendEnforcementMetricStateKey"];

  if ([(IDSMessageSendEnforcementMetric *)self code])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendEnforcementMetric code](self, "code")}];
    [dictionary setObject:v5 forKeyedSubscript:@"IDSMessageSendEnforcementMetricCodeKey"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = -[IDSMessageSendEnforcementMetric state](self, "state"), v5 == [equalCopy state]))
  {
    code = [(IDSMessageSendEnforcementMetric *)self code];
    v7 = code == [equalCopy code];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (IDSMessageSendEnforcementMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IDSMessageSendEnforcementMetric;
  v5 = [(IDSMessageSendEnforcementMetric *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"IDSMessageSendEnforcementMetricStateKey"];
    v5->_state = v6;
    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5->_code = [coderCopy decodeIntegerForKey:@"IDSMessageSendEnforcementMetricCodeKey"];
  }

  v7 = v5;
LABEL_6:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"IDSMessageSendEnforcementMetricStateKey"];
  [coderCopy encodeInteger:self->_code forKey:@"IDSMessageSendEnforcementMetricCodeKey"];
}

- (id)copyWithZone:(_NSZone *)zone
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