@interface CNKNoticeRecipe
- (CNKNoticeRecipe)initWithCoder:(id)a3;
- (CNKNoticeRecipe)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 primaryActionTitle:(id)a6 secondaryActionTitle:(id)a7 type:(int64_t)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNKNoticeRecipe

- (CNKNoticeRecipe)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 primaryActionTitle:(id)a6 secondaryActionTitle:(id)a7 type:(int64_t)a8
{
  v24 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = CNKNoticeRecipe;
  v18 = [(CNKNoticeRecipe *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, a3);
    objc_storeStrong(&v19->_subtitle, a4);
    objc_storeStrong(&v19->_image, a5);
    objc_storeStrong(&v19->_primaryActionTitle, a6);
    objc_storeStrong(&v19->_secondaryActionTitle, a7);
    v20 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v19->_uuid;
    v19->_uuid = v20;

    v19->_type = a8;
  }

  return v19;
}

- (CNKNoticeRecipe)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = CNKNoticeRecipe;
  v5 = [(CNKNoticeRecipe *)&v34 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_title);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    title = v5->_title;
    v5->_title = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_subtitle);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    subtitle = v5->_subtitle;
    v5->_subtitle = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_image);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

    if (!v16 || (v17 = objc_alloc(MEMORY[0x1E696AFB0]), [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuidString"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "initWithUUIDString:", v18), uuid = v5->_uuid, v5->_uuid = v19, uuid, v18, v21 = objc_msgSend(objc_alloc(MEMORY[0x1E69DCAB8]), "initWithData:", v16), image = v5->_image, v5->_image = v21, image, v23 = objc_opt_class(), NSStringFromSelector(sel_primaryActionTitle), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "decodeObjectOfClass:forKey:", v23, v24), v25 = objc_claimAutoreleasedReturnValue(), primaryActionTitle = v5->_primaryActionTitle, v5->_primaryActionTitle = v25, primaryActionTitle, v24, v27 = objc_opt_class(), NSStringFromSelector(sel_secondaryActionTitle), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "decodeObjectOfClass:forKey:", v27, v28), v29 = objc_claimAutoreleasedReturnValue(), secondaryActionTitle = v5->_secondaryActionTitle, v5->_secondaryActionTitle = v29, secondaryActionTitle, v28, NSStringFromSelector(sel_type), v31 = objc_claimAutoreleasedReturnValue(), v5->_type = objc_msgSend(v4, "decodeIntegerForKey:", v31), v31, !v5->_title) || !v5->_subtitle || !v5->_uuid || !v5->_image)
    {

      v32 = 0;
      goto LABEL_10;
    }
  }

  v32 = v5;
LABEL_10:

  return v32;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  v6 = NSStringFromSelector(sel_title);
  [v5 encodeObject:title forKey:v6];

  subtitle = self->_subtitle;
  v8 = NSStringFromSelector(sel_subtitle);
  [v5 encodeObject:subtitle forKey:v8];

  primaryActionTitle = self->_primaryActionTitle;
  v10 = NSStringFromSelector(sel_primaryActionTitle);
  [v5 encodeObject:primaryActionTitle forKey:v10];

  secondaryActionTitle = self->_secondaryActionTitle;
  v12 = NSStringFromSelector(sel_secondaryActionTitle);
  [v5 encodeObject:secondaryActionTitle forKey:v12];

  v13 = [(NSUUID *)self->_uuid UUIDString];
  [v5 encodeObject:v13 forKey:@"uuidString"];

  v14 = UIImagePNGRepresentation(self->_image);
  v15 = NSStringFromSelector(sel_image);
  [v5 encodeObject:v14 forKey:v15];

  type = self->_type;
  v17 = NSStringFromSelector(sel_type);
  [v5 encodeInteger:type forKey:v17];
}

@end