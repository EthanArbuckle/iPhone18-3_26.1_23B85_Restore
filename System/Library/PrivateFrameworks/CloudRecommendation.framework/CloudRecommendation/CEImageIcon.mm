@interface CEImageIcon
- (CEImageIcon)initWithCoder:(id)coder;
- (CEImageIcon)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEImageIcon

- (CEImageIcon)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = CEImageIcon;
  v5 = [(CEIcon *)&v17 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"iconUrls"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKeyedSubscript:@"1x"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
        URL1x = v5->_URL1x;
        v5->_URL1x = v8;
      }

      v10 = [v6 objectForKeyedSubscript:@"2x"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
        URL2x = v5->_URL2x;
        v5->_URL2x = v11;
      }

      v13 = [v6 objectForKeyedSubscript:@"3x"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
        URL3x = v5->_URL3x;
        v5->_URL3x = v14;
      }
    }

    else
    {
      v7 = _CELogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [CEImageIcon initWithDictionary:];
      }
    }
  }

  return v5;
}

- (CEImageIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CEImageIcon;
  v5 = [(CEIcon *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url1x"];
    URL1x = v5->_URL1x;
    v5->_URL1x = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url2x"];
    URL2x = v5->_URL2x;
    v5->_URL2x = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url3x"];
    URL3x = v5->_URL3x;
    v5->_URL3x = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CEImageIcon;
  v4 = [(CEIcon *)&v6 copyWithZone:zone];
  [v4 setURL1x:self->_URL1x];
  [v4 setURL2x:self->_URL2x];
  [v4 setURL3x:self->_URL3x];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CEImageIcon;
  coderCopy = coder;
  [(CEIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_URL1x forKey:{@"url1x", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_URL2x forKey:@"url2x"];
  [coderCopy encodeObject:self->_URL3x forKey:@"url3x"];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CEImageIcon;
  v3 = [(CEIcon *)&v7 description];
  URL2x = self->_URL2x;
  v5 = [v3 stringByAppendingFormat:@" url1x: %@ url2x: %@ url3x: %@", self->_URL1x, URL2x, self->_URL3x];

  return v5;
}

- (void)initWithDictionary:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v2, v3, "%@ Unable to parse urls from dictionary", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end