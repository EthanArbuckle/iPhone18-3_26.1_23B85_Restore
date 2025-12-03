@interface CNKNoticeRecipe
- (CNKNoticeRecipe)initWithCoder:(id)coder;
- (CNKNoticeRecipe)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image primaryActionTitle:(id)actionTitle secondaryActionTitle:(id)secondaryActionTitle type:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNKNoticeRecipe

- (CNKNoticeRecipe)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image primaryActionTitle:(id)actionTitle secondaryActionTitle:(id)secondaryActionTitle type:(int64_t)type
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  actionTitleCopy = actionTitle;
  secondaryActionTitleCopy = secondaryActionTitle;
  v25.receiver = self;
  v25.super_class = CNKNoticeRecipe;
  v18 = [(CNKNoticeRecipe *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v19->_subtitle, subtitle);
    objc_storeStrong(&v19->_image, image);
    objc_storeStrong(&v19->_primaryActionTitle, actionTitle);
    objc_storeStrong(&v19->_secondaryActionTitle, secondaryActionTitle);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v19->_uuid;
    v19->_uuid = uUID;

    v19->_type = type;
  }

  return v19;
}

- (CNKNoticeRecipe)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = CNKNoticeRecipe;
  v5 = [(CNKNoticeRecipe *)&v34 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_title);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    title = v5->_title;
    v5->_title = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_subtitle);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    subtitle = v5->_subtitle;
    v5->_subtitle = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_image);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

    if (!v16 || (v17 = objc_alloc(MEMORY[0x1E696AFB0]), [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuidString"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "initWithUUIDString:", v18), uuid = v5->_uuid, v5->_uuid = v19, uuid, v18, v21 = objc_msgSend(objc_alloc(MEMORY[0x1E69DCAB8]), "initWithData:", v16), image = v5->_image, v5->_image = v21, image, v23 = objc_opt_class(), NSStringFromSelector(sel_primaryActionTitle), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", v23, v24), v25 = objc_claimAutoreleasedReturnValue(), primaryActionTitle = v5->_primaryActionTitle, v5->_primaryActionTitle = v25, primaryActionTitle, v24, v27 = objc_opt_class(), NSStringFromSelector(sel_secondaryActionTitle), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", v27, v28), v29 = objc_claimAutoreleasedReturnValue(), secondaryActionTitle = v5->_secondaryActionTitle, v5->_secondaryActionTitle = v29, secondaryActionTitle, v28, NSStringFromSelector(sel_type), v31 = objc_claimAutoreleasedReturnValue(), v5->_type = objc_msgSend(coderCopy, "decodeIntegerForKey:", v31), v31, !v5->_title) || !v5->_subtitle || !v5->_uuid || !v5->_image)
    {

      v32 = 0;
      goto LABEL_10;
    }
  }

  v32 = v5;
LABEL_10:

  return v32;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_title);
  [coderCopy encodeObject:title forKey:v6];

  subtitle = self->_subtitle;
  v8 = NSStringFromSelector(sel_subtitle);
  [coderCopy encodeObject:subtitle forKey:v8];

  primaryActionTitle = self->_primaryActionTitle;
  v10 = NSStringFromSelector(sel_primaryActionTitle);
  [coderCopy encodeObject:primaryActionTitle forKey:v10];

  secondaryActionTitle = self->_secondaryActionTitle;
  v12 = NSStringFromSelector(sel_secondaryActionTitle);
  [coderCopy encodeObject:secondaryActionTitle forKey:v12];

  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"uuidString"];

  v14 = UIImagePNGRepresentation(self->_image);
  v15 = NSStringFromSelector(sel_image);
  [coderCopy encodeObject:v14 forKey:v15];

  type = self->_type;
  v17 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v17];
}

@end