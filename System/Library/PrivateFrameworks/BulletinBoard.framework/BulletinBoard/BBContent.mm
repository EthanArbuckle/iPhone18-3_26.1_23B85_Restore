@interface BBContent
+ (BBContent)contentWithTitle:(id)title subtitle:(id)subtitle message:(id)message;
+ (BBContent)contentWithTitle:(id)title subtitle:(id)subtitle message:(id)message attributedMessage:(id)attributedMessage summary:(id)summary;
+ (BBContent)contentWithTitle:(id)title subtitle:(id)subtitle message:(id)message summary:(id)summary;
- (BBContent)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContent:(id)content;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBContent

+ (BBContent)contentWithTitle:(id)title subtitle:(id)subtitle message:(id)message attributedMessage:(id)attributedMessage summary:(id)summary
{
  summaryCopy = summary;
  attributedMessageCopy = attributedMessage;
  messageCopy = message;
  subtitleCopy = subtitle;
  titleCopy = title;
  v16 = objc_alloc_init(BBContent);
  [(BBContent *)v16 setTitle:titleCopy];

  [(BBContent *)v16 setSubtitle:subtitleCopy];
  [(BBContent *)v16 setMessage:messageCopy];

  [(BBContent *)v16 setAttributedMessage:attributedMessageCopy];
  [(BBContent *)v16 setSummary:summaryCopy];

  return v16;
}

+ (BBContent)contentWithTitle:(id)title subtitle:(id)subtitle message:(id)message summary:(id)summary
{
  summaryCopy = summary;
  messageCopy = message;
  subtitleCopy = subtitle;
  titleCopy = title;
  v13 = [objc_opt_class() contentWithTitle:titleCopy subtitle:subtitleCopy message:messageCopy attributedMessage:0 summary:summaryCopy];

  return v13;
}

+ (BBContent)contentWithTitle:(id)title subtitle:(id)subtitle message:(id)message
{
  messageCopy = message;
  subtitleCopy = subtitle;
  titleCopy = title;
  v10 = [objc_opt_class() contentWithTitle:titleCopy subtitle:subtitleCopy message:messageCopy attributedMessage:0 summary:0];

  return v10;
}

- (unint64_t)hash
{
  title = [(BBContent *)self title];
  v4 = [title hash];
  subtitle = [(BBContent *)self subtitle];
  v6 = [subtitle hash] ^ v4;
  message = [(BBContent *)self message];
  v8 = [message hash];
  attributedMessage = [(BBContent *)self attributedMessage];
  v10 = v6 ^ v8 ^ [attributedMessage hash];
  summary = [(BBContent *)self summary];
  v12 = [summary hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(BBContent *)self isEqualToContent:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToContent:(id)content
{
  contentCopy = content;
  v5 = BBLogBulletinLife;
  if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEBUG))
  {
    [(BBContent *)v5 isEqualToContent:contentCopy];
  }

  title = [(BBContent *)self title];
  title2 = [contentCopy title];
  if (BSEqualObjects())
  {
    subtitle = [(BBContent *)self subtitle];
    subtitle2 = [contentCopy subtitle];
    if (BSEqualObjects())
    {
      message = [(BBContent *)self message];
      message2 = [contentCopy message];
      if (BSEqualObjects())
      {
        attributedMessage = [(BBContent *)self attributedMessage];
        attributedMessage2 = [contentCopy attributedMessage];
        if (BSEqualObjects())
        {
          summary = [(BBContent *)self summary];
          [contentCopy summary];
          v14 = v18 = attributedMessage;
          v15 = BSEqualObjects();

          attributedMessage = v18;
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

- (BBContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = BBContent;
  v5 = [(BBContent *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(BBContent *)v5 setTitle:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    [(BBContent *)v5 setSubtitle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    [(BBContent *)v5 setMessage:v8];

    v9 = MEMORY[0x277CCA898];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedMessage"];
    v11 = [v9 _bb_attributedStringWithRTFDData:v10];
    [(BBContent *)v5 setAttributedMessage:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
    [(BBContent *)v5 setSummary:v12];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(BBContent *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(BBContent *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  message = [(BBContent *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  attributedMessage = [(BBContent *)self attributedMessage];
  _bb_RTFDData = [attributedMessage _bb_RTFDData];
  [coderCopy encodeObject:_bb_RTFDData forKey:@"attributedMessage"];

  summary = [(BBContent *)self summary];
  [coderCopy encodeObject:summary forKey:@"summary"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(BBContent *)self title];
  subtitle = [(BBContent *)self subtitle];
  message = [(BBContent *)self message];
  attributedMessage = [(BBContent *)self attributedMessage];
  summary = [(BBContent *)self summary];
  v9 = [v3 stringWithFormat:@"{ title = '%@' : subtitle = '%@' : message = '%@' : attributedMessage = '%@', summary = '%@' }", title, subtitle, message, attributedMessage, summary];

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