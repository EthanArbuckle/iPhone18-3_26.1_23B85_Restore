@interface DIAttributeLabel
- (DIAttributeLabel)init;
- (DIAttributeLabel)initWithCoder:(id)a3;
- (NSString)businessChatButtonTitle;
- (NSString)businessChatIdentifier;
- (NSString)businessChatIntentName;
- (NSString)buttonTitle;
- (NSString)defaultValue;
- (NSString)detailBody;
- (NSString)detailSubtitle;
- (NSString)detailTitle;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setBusinessChatButtonTitle:(id)a3;
- (void)setBusinessChatIdentifier:(id)a3;
- (void)setBusinessChatIntentName:(id)a3;
- (void)setButtonTitle:(id)a3;
- (void)setDefaultValue:(id)a3;
- (void)setDetailBody:(id)a3;
- (void)setDetailSubtitle:(id)a3;
- (void)setDetailTitle:(id)a3;
@end

@implementation DIAttributeLabel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._lock);
  [v4 encodeObject:self->_buttonTitle forKey:@"buttonTitle"];
  [v4 encodeObject:self->_detailTitle forKey:@"detailTitle"];
  [v4 encodeObject:self->_detailSubtitle forKey:@"detailSubtitle"];
  [v4 encodeObject:self->_detailBody forKey:@"detailBody"];
  [v4 encodeObject:self->_businessChatButtonTitle forKey:@"businessChatButtonTitle"];
  [v4 encodeObject:self->_businessChatIdentifier forKey:@"businessChatIdentifier"];
  [v4 encodeObject:self->_businessChatIntentName forKey:@"businessChatIntentName"];
  os_unfair_lock_unlock(&self->super._lock);
  v5.receiver = self;
  v5.super_class = DIAttributeLabel;
  [(DIAttribute *)&v5 encodeWithCoder:v4];
}

- (DIAttributeLabel)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = DIAttributeLabel;
  v5 = [(DIAttribute *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buttonTitle"];
    buttonTitle = v5->_buttonTitle;
    v5->_buttonTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detailTitle"];
    detailTitle = v5->_detailTitle;
    v5->_detailTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detailSubtitle"];
    detailSubtitle = v5->_detailSubtitle;
    v5->_detailSubtitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buttonTitle"];
    detailBody = v5->_detailBody;
    v5->_detailBody = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"businessChatButtonTitle"];
    businessChatButtonTitle = v5->_businessChatButtonTitle;
    v5->_businessChatButtonTitle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"businessChatIdentifier"];
    businessChatIdentifier = v5->_businessChatIdentifier;
    v5->_businessChatIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"businessChatIntentName"];
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

- (void)setDefaultValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeLabel;
  [(DIAttribute *)&v3 setDefaultValue:a3];
}

- (void)setButtonTitle:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_buttonTitle != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    buttonTitle = self->_buttonTitle;
    self->_buttonTitle = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setDetailTitle:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_detailTitle != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    detailTitle = self->_detailTitle;
    self->_detailTitle = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setDetailSubtitle:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_detailSubtitle != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    detailSubtitle = self->_detailSubtitle;
    self->_detailSubtitle = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setDetailBody:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_detailBody != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    detailBody = self->_detailBody;
    self->_detailBody = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setBusinessChatButtonTitle:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_businessChatButtonTitle != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    businessChatButtonTitle = self->_businessChatButtonTitle;
    self->_businessChatButtonTitle = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setBusinessChatIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_businessChatIdentifier != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    businessChatIdentifier = self->_businessChatIdentifier;
    self->_businessChatIdentifier = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setBusinessChatIntentName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_businessChatIntentName != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    businessChatIntentName = self->_businessChatIntentName;
    self->_businessChatIntentName = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeLabel;
  v2 = [(DIAttribute *)&v4 defaultValue];

  return v2;
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

  v5 = [(DIAttributeLabel *)self defaultValue];
  [v3 appendFormat:@"defaultValue: '%@'; ", v5];

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