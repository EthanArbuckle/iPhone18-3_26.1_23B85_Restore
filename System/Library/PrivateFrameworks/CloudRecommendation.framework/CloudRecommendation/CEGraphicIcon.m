@interface CEGraphicIcon
- (CEGraphicIcon)initWithCoder:(id)a3;
- (CEGraphicIcon)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CEGraphicIcon

- (CEGraphicIcon)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CEGraphicIcon;
  v5 = [(CEIcon *)&v10 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      identifier = v5->_identifier;
      v5->_identifier = v7;
    }

    else
    {
      identifier = _CELogSystem();
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:];
      }
    }
  }

  return v5;
}

- (CEGraphicIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CEGraphicIcon;
  v5 = [(CEIcon *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CEGraphicIcon;
  v4 = [(CEIcon *)&v6 copyWithZone:a3];
  [v4 setIdentifier:self->_identifier];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CEGraphicIcon;
  v4 = a3;
  [(CEIcon *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{@"id", v5.receiver, v5.super_class}];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CEGraphicIcon;
  v3 = [(CEIcon *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" id: %@", self->_identifier];

  return v4;
}

@end