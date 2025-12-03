@interface DIAttributeLabel
- (DIAttributeLabel)init;
- (DIAttributeLabel)initWithCoder:(id)coder;
- (NSString)businessChatButtonTitle;
- (NSString)businessChatIdentifier;
- (NSString)businessChatIntentName;
- (NSString)buttonTitle;
- (NSString)defaultValue;
- (NSString)detailBody;
- (NSString)detailSubtitle;
- (NSString)detailTitle;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setBusinessChatButtonTitle:(id)title;
- (void)setBusinessChatIdentifier:(id)identifier;
- (void)setBusinessChatIntentName:(id)name;
- (void)setButtonTitle:(id)title;
- (void)setDefaultValue:(id)value;
- (void)setDetailBody:(id)body;
- (void)setDetailSubtitle:(id)subtitle;
- (void)setDetailTitle:(id)title;
@end

@implementation DIAttributeLabel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->super._lock);
  [coderCopy encodeObject:self->_buttonTitle forKey:@"buttonTitle"];
  [coderCopy encodeObject:self->_detailTitle forKey:@"detailTitle"];
  [coderCopy encodeObject:self->_detailSubtitle forKey:@"detailSubtitle"];
  [coderCopy encodeObject:self->_detailBody forKey:@"detailBody"];
  [coderCopy encodeObject:self->_businessChatButtonTitle forKey:@"businessChatButtonTitle"];
  [coderCopy encodeObject:self->_businessChatIdentifier forKey:@"businessChatIdentifier"];
  [coderCopy encodeObject:self->_businessChatIntentName forKey:@"businessChatIntentName"];
  os_unfair_lock_unlock(&self->super._lock);
  v5.receiver = self;
  v5.super_class = DIAttributeLabel;
  [(DIAttribute *)&v5 encodeWithCoder:coderCopy];
}

- (DIAttributeLabel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = DIAttributeLabel;
  v5 = [(DIAttribute *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buttonTitle"];
    buttonTitle = v5->_buttonTitle;
    v5->_buttonTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailTitle"];
    detailTitle = v5->_detailTitle;
    v5->_detailTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailSubtitle"];
    detailSubtitle = v5->_detailSubtitle;
    v5->_detailSubtitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buttonTitle"];
    detailBody = v5->_detailBody;
    v5->_detailBody = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessChatButtonTitle"];
    businessChatButtonTitle = v5->_businessChatButtonTitle;
    v5->_businessChatButtonTitle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessChatIdentifier"];
    businessChatIdentifier = v5->_businessChatIdentifier;
    v5->_businessChatIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessChatIntentName"];
    businessChatIntentName = v5->_businessChatIntentName;
    v5->_businessChatIntentName = v18;
  }

  return v5;
}

- (DIAttributeLabel)init
{
  v5.receiver = self;
  v5.super_class = DIAttributeLabel;
  v2 = [(DIAttribute *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DIAttribute *)v2 setAttributeType:6];
  }

  return v3;
}

- (void)setDefaultValue:(id)value
{
  v3.receiver = self;
  v3.super_class = DIAttributeLabel;
  [(DIAttribute *)&v3 setDefaultValue:value];
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_buttonTitle != titleCopy)
  {
    v4 = [(NSString *)titleCopy copyWithZone:0];
    buttonTitle = self->_buttonTitle;
    self->_buttonTitle = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setDetailTitle:(id)title
{
  titleCopy = title;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_detailTitle != titleCopy)
  {
    v4 = [(NSString *)titleCopy copyWithZone:0];
    detailTitle = self->_detailTitle;
    self->_detailTitle = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setDetailSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_detailSubtitle != subtitleCopy)
  {
    v4 = [(NSString *)subtitleCopy copyWithZone:0];
    detailSubtitle = self->_detailSubtitle;
    self->_detailSubtitle = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setDetailBody:(id)body
{
  bodyCopy = body;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_detailBody != bodyCopy)
  {
    v4 = [(NSString *)bodyCopy copyWithZone:0];
    detailBody = self->_detailBody;
    self->_detailBody = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setBusinessChatButtonTitle:(id)title
{
  titleCopy = title;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_businessChatButtonTitle != titleCopy)
  {
    v4 = [(NSString *)titleCopy copyWithZone:0];
    businessChatButtonTitle = self->_businessChatButtonTitle;
    self->_businessChatButtonTitle = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setBusinessChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_businessChatIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copyWithZone:0];
    businessChatIdentifier = self->_businessChatIdentifier;
    self->_businessChatIdentifier = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setBusinessChatIntentName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_businessChatIntentName != nameCopy)
  {
    v4 = [(NSString *)nameCopy copyWithZone:0];
    businessChatIntentName = self->_businessChatIntentName;
    self->_businessChatIntentName = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeLabel;
  defaultValue = [(DIAttribute *)&v4 defaultValue];

  return defaultValue;
}

- (NSString)buttonTitle
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_buttonTitle;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (NSString)detailTitle
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_detailTitle;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (NSString)detailSubtitle
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_detailSubtitle;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (NSString)detailBody
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_detailBody;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (NSString)businessChatButtonTitle
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_businessChatButtonTitle;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (NSString)businessChatIdentifier
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_businessChatIdentifier;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (NSString)businessChatIntentName
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_businessChatIntentName;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v7.receiver = self;
  v7.super_class = DIAttributeLabel;
  v4 = [(DIAttribute *)&v7 description];
  [v3 appendFormat:@"%@", v4];

  defaultValue = [(DIAttributeLabel *)self defaultValue];
  [v3 appendFormat:@"defaultValue: '%@'; ", defaultValue];

  os_unfair_lock_lock(&self->super._lock);
  [v3 appendFormat:@"buttonTitle: '%@'; ", self->_buttonTitle];
  [v3 appendFormat:@"detailTitle: '%@'; ", self->_detailTitle];
  [v3 appendFormat:@"detailSubtitle: '%@'; ", self->_detailSubtitle];
  [v3 appendFormat:@"detailBody: '%@'; ", self->_detailBody];
  [v3 appendFormat:@"businessChatButtonTitle: '%@'; ", self->_businessChatButtonTitle];
  [v3 appendFormat:@"businessChatIdentifier: '%@'; ", self->_businessChatIdentifier];
  [v3 appendFormat:@"businessChatIntentName: '%@'; ", self->_businessChatIntentName];
  os_unfair_lock_unlock(&self->super._lock);
  [v3 appendFormat:@">"];

  return v3;
}

@end