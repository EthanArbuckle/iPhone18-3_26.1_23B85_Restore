@interface CEGraphicIcon
- (CEGraphicIcon)initWithCoder:(id)coder;
- (CEGraphicIcon)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEGraphicIcon

- (CEGraphicIcon)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CEGraphicIcon;
  v5 = [(CEIcon *)&v10 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
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

- (CEGraphicIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CEGraphicIcon;
  v5 = [(CEIcon *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CEGraphicIcon;
  v4 = [(CEIcon *)&v6 copyWithZone:zone];
  [v4 setIdentifier:self->_identifier];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CEGraphicIcon;
  coderCopy = coder;
  [(CEIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"id", v5.receiver, v5.super_class}];
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