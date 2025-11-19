@interface NSAttributedString(MailUI)
+ (id)mui_attributedStringWithAttributedString:()MailUI attributes:;
+ (id)mui_attributedStringWithString:()MailUI attributes:;
+ (id)mui_attributedStringWithSystemImage:()MailUI string:keyword:;
- (double)mui_boundingHeightForWidth:()MailUI font:;
@end

@implementation NSAttributedString(MailUI)

+ (id)mui_attributedStringWithString:()MailUI attributes:
{
  v4 = a3;
  if (a3)
  {
    v5 = MEMORY[0x277CCA898];
    v6 = a4;
    v7 = v4;
    v4 = [[v5 alloc] initWithString:v7 attributes:v6];
  }

  return v4;
}

+ (id)mui_attributedStringWithAttributedString:()MailUI attributes:
{
  v4 = a3;
  if (a3)
  {
    v5 = MEMORY[0x277CCAB48];
    v6 = a4;
    v7 = v4;
    v4 = [[v5 alloc] initWithAttributedString:v7];
    v8 = [v7 length];

    [v4 addAttributes:v6 range:{0, v8}];
  }

  return v4;
}

- (double)mui_boundingHeightForWidth:()MailUI font:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA898];
  v14 = *MEMORY[0x277D740A8];
  v15[0] = a4;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [v6 mui_attributedStringWithAttributedString:a1 attributes:v9];

  [v10 boundingRectWithSize:3 options:0 context:{a2, 3.40282347e38}];
  v12 = v11;

  return ceil(v12);
}

+ (id)mui_attributedStringWithSystemImage:()MailUI string:keyword:
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 componentsSeparatedByString:a5];
  v10 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v11 = [v9 count];
  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = v12;
  if (v11 == 2)
  {
    v14 = [v9 firstObject];
    v15 = [v13 initWithString:v14];

    [v10 appendAttributedString:v15];
    v16 = [MEMORY[0x277D74270] mui_textAttachmentWithSystemImage:v7 systemImageColor:0];
    v17 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v16];
    [v10 appendAttributedString:v17];
    v18 = objc_alloc(MEMORY[0x277CCA898]);
    v19 = [v9 objectAtIndexedSubscript:1];
    v20 = [v18 initWithString:v19];

    [v10 appendAttributedString:v20];
  }

  else
  {
    v15 = [v12 initWithString:v8];
    [v10 appendAttributedString:v15];
  }

  return v10;
}

@end