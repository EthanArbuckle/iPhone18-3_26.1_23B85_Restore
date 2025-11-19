@interface PKApplicationMessageContentDefault
+ (id)createWithGroup:(id)a3 action:(id)a4 icon:(id)a5 title:(id)a6 body:(id)a7;
- (PKApplicationMessageContentDefault)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplicationMessageContentDefault

+ (id)createWithGroup:(id)a3 action:(id)a4 icon:(id)a5 title:(id)a6 body:(id)a7
{
  v12 = a5;
  v13 = 0;
  if (a3 && a6)
  {
    v14 = a7;
    v15 = a6;
    v16 = a3;
    v17 = a4;
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

    objc_storeStrong(v13 + 2, a3);
    objc_storeStrong(v13 + 3, a4);

    objc_storeStrong(v13 + 5, a5);
    v21 = [v15 copy];

    v22 = v13[6];
    v13[6] = v21;

    v23 = [v14 copy];
    v24 = v13[7];
    v13[7] = v23;
  }

  return v13;
}

- (PKApplicationMessageContentDefault)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKApplicationMessageContentDefault;
  v5 = [(PKApplicationMessageContent *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v7;

    v9 = [v4 decodeObjectOfClass:v6 forKey:@"title"];
    title = v5->_title;
    v5->_title = v9;

    if (!v5->_title)
    {
      v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKApplicationMessageContentDefault" code:0 userInfo:0];
      [v4 failWithError:v14];

      v13 = 0;
      goto LABEL_6;
    }

    v11 = [v4 decodeObjectOfClass:v6 forKey:@"body"];
    body = v5->_body;
    v5->_body = v11;

    v5->_parseEmphasisInBody = [v4 decodeBoolForKey:@"parseEmphasisInBody"];
  }

  v13 = v5;
LABEL_6:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplicationMessageContentDefault;
  v4 = a3;
  [(PKApplicationMessageContent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_icon forKey:{@"icon", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_title forKey:@"title"];
  [v4 encodeObject:self->_body forKey:@"body"];
  [v4 encodeBool:self->_parseEmphasisInBody forKey:@"parseEmphasisInBody"];
}

@end