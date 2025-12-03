@interface PKApplicationMessageContentDefault
+ (id)createWithGroup:(id)group action:(id)action icon:(id)icon title:(id)title body:(id)body;
- (PKApplicationMessageContentDefault)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationMessageContentDefault

+ (id)createWithGroup:(id)group action:(id)action icon:(id)icon title:(id)title body:(id)body
{
  iconCopy = icon;
  v13 = 0;
  if (group && title)
  {
    bodyCopy = body;
    titleCopy = title;
    groupCopy = group;
    actionCopy = action;
    objc_opt_self();
    v18 = [PKApplicationMessageContentDefault alloc];
    v19 = v18;
    if (v18)
    {
      v26.receiver = v18;
      v26.super_class = PKApplicationMessageContent;
      v20 = objc_msgSendSuper2(&v26, sel_init);
      v13 = v20;
      if (v20)
      {
        v20[1] = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(v13 + 2, group);
    objc_storeStrong(v13 + 3, action);

    objc_storeStrong(v13 + 5, icon);
    v21 = [titleCopy copy];

    v22 = v13[6];
    v13[6] = v21;

    v23 = [bodyCopy copy];
    v24 = v13[7];
    v13[7] = v23;
  }

  return v13;
}

- (PKApplicationMessageContentDefault)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKApplicationMessageContentDefault;
  v5 = [(PKApplicationMessageContent *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v7;

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v9;

    if (!v5->_title)
    {
      v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessageContentDefault" code:0 userInfo:0];
      [coderCopy failWithError:v14];

      v13 = 0;
      goto LABEL_6;
    }

    v11 = [coderCopy decodeObjectOfClass:v6 forKey:@"body"];
    body = v5->_body;
    v5->_body = v11;

    v5->_parseEmphasisInBody = [coderCopy decodeBoolForKey:@"parseEmphasisInBody"];
  }

  v13 = v5;
LABEL_6:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplicationMessageContentDefault;
  coderCopy = coder;
  [(PKApplicationMessageContent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_icon forKey:{@"icon", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeBool:self->_parseEmphasisInBody forKey:@"parseEmphasisInBody"];
}

@end