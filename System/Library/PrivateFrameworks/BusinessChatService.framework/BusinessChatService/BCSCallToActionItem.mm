@interface BCSCallToActionItem
- (BCSCallToActionItem)initWithCallToAction:(id)action;
- (BCSCallToActionItem)initWithCoder:(id)coder;
- (BCSCallToActionItem)initWithTitle:(id)title subtitle:(id)subtitle language:(id)language body:(id)body isDefault:(BOOL)default;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSCallToActionItem

- (BCSCallToActionItem)initWithCallToAction:(id)action
{
  actionCopy = action;
  title = [actionCopy title];
  subtitle = [actionCopy subtitle];
  language = [actionCopy language];
  body = [actionCopy body];
  isDefault = [actionCopy isDefault];

  v10 = [(BCSCallToActionItem *)self initWithTitle:title subtitle:subtitle language:language body:body isDefault:isDefault];
  return v10;
}

- (BCSCallToActionItem)initWithTitle:(id)title subtitle:(id)subtitle language:(id)language body:(id)body isDefault:(BOOL)default
{
  titleCopy = title;
  subtitleCopy = subtitle;
  languageCopy = language;
  bodyCopy = body;
  v26.receiver = self;
  v26.super_class = BCSCallToActionItem;
  v16 = [(BCSCallToActionItem *)&v26 init];
  if (v16)
  {
    v17 = [titleCopy copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [subtitleCopy copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [languageCopy copy];
    language = v16->_language;
    v16->_language = v21;

    v23 = [bodyCopy copy];
    body = v16->_body;
    v16->_body = v23;

    v16->_isDefault = default;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = BCSCallToActionItem;
  v4 = [(BCSCallToActionItem *)&v11 description];
  title = [(BCSCallToActionItem *)self title];
  subtitle = [(BCSCallToActionItem *)self subtitle];
  language = [(BCSCallToActionItem *)self language];
  body = [(BCSCallToActionItem *)self body];
  v9 = [v3 stringWithFormat:@"%@ - title:%@ - subtitle:%@ - language:%@ - body:%@ - isDefault:%d", v4, title, subtitle, language, body, -[BCSCallToActionItem isDefault](self, "isDefault")];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"BCSCallToActionTitleKey"];
  [coderCopy encodeObject:self->_subtitle forKey:@"BCSCallToActionSubtitleKey"];
  [coderCopy encodeObject:self->_language forKey:@"BCSCallToActionLangaugeKey"];
  [coderCopy encodeObject:self->_body forKey:@"BCSCallToActionBodyKey"];
  [coderCopy encodeBool:self->_isDefault forKey:@"BCSCallToActionIsDefaultKey"];
}

- (BCSCallToActionItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSCallToActionTitleKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSCallToActionSubtitleKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSCallToActionLangaugeKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSCallToActionBodyKey"];
  v9 = [coderCopy decodeBoolForKey:@"BCSCallToActionIsDefaultKey"];

  v10 = [(BCSCallToActionItem *)self initWithTitle:v5 subtitle:v6 language:v7 body:v8 isDefault:v9];
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    title = [(BCSCallToActionItem *)self title];
    v7 = [title copyWithZone:zone];
    v8 = *(v5 + 32);
    *(v5 + 32) = v7;

    subtitle = [(BCSCallToActionItem *)self subtitle];
    v10 = [subtitle copyWithZone:zone];
    v11 = *(v5 + 24);
    *(v5 + 24) = v10;

    language = [(BCSCallToActionItem *)self language];
    v13 = [language copyWithZone:zone];
    v14 = *(v5 + 16);
    *(v5 + 16) = v13;

    body = [(BCSCallToActionItem *)self body];
    v16 = [body copyWithZone:zone];
    v17 = *(v5 + 40);
    *(v5 + 40) = v16;

    *(v5 + 8) = [(BCSCallToActionItem *)self isDefault];
  }

  return v5;
}

@end