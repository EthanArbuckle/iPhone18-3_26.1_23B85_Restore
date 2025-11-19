@interface BBContent
+ (BBContent)contentWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5;
+ (BBContent)contentWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 attributedMessage:(id)a6 summary:(id)a7;
+ (BBContent)contentWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 summary:(id)a6;
- (BBContent)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContent:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBContent

+ (BBContent)contentWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 attributedMessage:(id)a6 summary:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(BBContent);
  [(BBContent *)v16 setTitle:v15];

  [(BBContent *)v16 setSubtitle:v14];
  [(BBContent *)v16 setMessage:v13];

  [(BBContent *)v16 setAttributedMessage:v12];
  [(BBContent *)v16 setSummary:v11];

  return v16;
}

+ (BBContent)contentWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5 summary:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() contentWithTitle:v12 subtitle:v11 message:v10 attributedMessage:0 summary:v9];

  return v13;
}

+ (BBContent)contentWithTitle:(id)a3 subtitle:(id)a4 message:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() contentWithTitle:v9 subtitle:v8 message:v7 attributedMessage:0 summary:0];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(BBContent *)self title];
  v4 = [v3 hash];
  v5 = [(BBContent *)self subtitle];
  v6 = [v5 hash] ^ v4;
  v7 = [(BBContent *)self message];
  v8 = [v7 hash];
  v9 = [(BBContent *)self attributedMessage];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(BBContent *)self summary];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(BBContent *)self isEqualToContent:v4];
  }

  return v5;
}

- (BOOL)isEqualToContent:(id)a3
{
  v4 = a3;
  v5 = BBLogBulletinLife;
  if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEBUG))
  {
    [(BBContent *)v5 isEqualToContent:v4];
  }

  v6 = [(BBContent *)self title];
  v7 = [v4 title];
  if (BSEqualObjects())
  {
    v8 = [(BBContent *)self subtitle];
    v9 = [v4 subtitle];
    if (BSEqualObjects())
    {
      v10 = [(BBContent *)self message];
      v11 = [v4 message];
      if (BSEqualObjects())
      {
        v12 = [(BBContent *)self attributedMessage];
        v13 = [v4 attributedMessage];
        if (BSEqualObjects())
        {
          v17 = [(BBContent *)self summary];
          [v4 summary];
          v14 = v18 = v12;
          v15 = BSEqualObjects();

          v12 = v18;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BBContent)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BBContent;
  v5 = [(BBContent *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(BBContent *)v5 setTitle:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    [(BBContent *)v5 setSubtitle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    [(BBContent *)v5 setMessage:v8];

    v9 = MEMORY[0x277CCA898];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributedMessage"];
    v11 = [v9 _bb_attributedStringWithRTFDData:v10];
    [(BBContent *)v5 setAttributedMessage:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
    [(BBContent *)v5 setSummary:v12];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BBContent *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(BBContent *)self subtitle];
  [v4 encodeObject:v6 forKey:@"subtitle"];

  v7 = [(BBContent *)self message];
  [v4 encodeObject:v7 forKey:@"message"];

  v8 = [(BBContent *)self attributedMessage];
  v9 = [v8 _bb_RTFDData];
  [v4 encodeObject:v9 forKey:@"attributedMessage"];

  v10 = [(BBContent *)self summary];
  [v4 encodeObject:v10 forKey:@"summary"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BBContent *)self title];
  v5 = [(BBContent *)self subtitle];
  v6 = [(BBContent *)self message];
  v7 = [(BBContent *)self attributedMessage];
  v8 = [(BBContent *)self summary];
  v9 = [v3 stringWithFormat:@"{ title = '%@' : subtitle = '%@' : message = '%@' : attributedMessage = '%@', summary = '%@' }", v4, v5, v6, v7, v8];

  return v9;
}

- (void)isEqualToContent:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 summary];
  v7 = [a3 summary];
  v8 = BSEqualObjects();
  v9 = [a2 summary];
  v10 = [v9 string];
  v12[0] = 67109378;
  v12[1] = v8;
  v13 = 2112;
  v14 = v10;
  _os_log_debug_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEBUG, "KTH_DEBUG-isEqualToContent %d %@", v12, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

@end