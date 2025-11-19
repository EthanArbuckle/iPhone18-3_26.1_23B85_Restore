@interface BCSCallToActionItem
- (BCSCallToActionItem)initWithCallToAction:(id)a3;
- (BCSCallToActionItem)initWithCoder:(id)a3;
- (BCSCallToActionItem)initWithTitle:(id)a3 subtitle:(id)a4 language:(id)a5 body:(id)a6 isDefault:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSCallToActionItem

- (BCSCallToActionItem)initWithCallToAction:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [v4 subtitle];
  v7 = [v4 language];
  v8 = [v4 body];
  v9 = [v4 isDefault];

  v10 = [(BCSCallToActionItem *)self initWithTitle:v5 subtitle:v6 language:v7 body:v8 isDefault:v9];
  return v10;
}

- (BCSCallToActionItem)initWithTitle:(id)a3 subtitle:(id)a4 language:(id)a5 body:(id)a6 isDefault:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = BCSCallToActionItem;
  v16 = [(BCSCallToActionItem *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    title = v16->_title;
    v16->_title = v17;

    v19 = [v13 copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v19;

    v21 = [v14 copy];
    language = v16->_language;
    v16->_language = v21;

    v23 = [v15 copy];
    body = v16->_body;
    v16->_body = v23;

    v16->_isDefault = a7;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = BCSCallToActionItem;
  v4 = [(BCSCallToActionItem *)&v11 description];
  v5 = [(BCSCallToActionItem *)self title];
  v6 = [(BCSCallToActionItem *)self subtitle];
  v7 = [(BCSCallToActionItem *)self language];
  v8 = [(BCSCallToActionItem *)self body];
  v9 = [v3 stringWithFormat:@"%@ - title:%@ - subtitle:%@ - language:%@ - body:%@ - isDefault:%d", v4, v5, v6, v7, v8, -[BCSCallToActionItem isDefault](self, "isDefault")];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"BCSCallToActionTitleKey"];
  [v5 encodeObject:self->_subtitle forKey:@"BCSCallToActionSubtitleKey"];
  [v5 encodeObject:self->_language forKey:@"BCSCallToActionLangaugeKey"];
  [v5 encodeObject:self->_body forKey:@"BCSCallToActionBodyKey"];
  [v5 encodeBool:self->_isDefault forKey:@"BCSCallToActionIsDefaultKey"];
}

- (BCSCallToActionItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSCallToActionTitleKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSCallToActionSubtitleKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSCallToActionLangaugeKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSCallToActionBodyKey"];
  v9 = [v4 decodeBoolForKey:@"BCSCallToActionIsDefaultKey"];

  v10 = [(BCSCallToActionItem *)self initWithTitle:v5 subtitle:v6 language:v7 body:v8 isDefault:v9];
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSCallToActionItem *)self title];
    v7 = [v6 copyWithZone:a3];
    v8 = *(v5 + 32);
    *(v5 + 32) = v7;

    v9 = [(BCSCallToActionItem *)self subtitle];
    v10 = [v9 copyWithZone:a3];
    v11 = *(v5 + 24);
    *(v5 + 24) = v10;

    v12 = [(BCSCallToActionItem *)self language];
    v13 = [v12 copyWithZone:a3];
    v14 = *(v5 + 16);
    *(v5 + 16) = v13;

    v15 = [(BCSCallToActionItem *)self body];
    v16 = [v15 copyWithZone:a3];
    v17 = *(v5 + 40);
    *(v5 + 40) = v16;

    *(v5 + 8) = [(BCSCallToActionItem *)self isDefault];
  }

  return v5;
}

@end