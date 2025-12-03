@interface NSAttributedString(BulletinBoard)
+ (id)_bb_attributedStringWithRTFDData:()BulletinBoard;
- (id)_bb_RTFDData;
@end

@implementation NSAttributedString(BulletinBoard)

+ (id)_bb_attributedStringWithRTFDData:()BulletinBoard
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v14[0] = @"DocumentType";
    v14[1] = @"DefaultAttributes";
    v15[0] = @"NSRTFD";
    v15[1] = MEMORY[0x277CBEC10];
    v3 = MEMORY[0x277CBEAC0];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAB48]) initWithData:v4 options:v5 documentAttributes:0 error:&v13];

    v7 = v13;
    if (v7)
    {
      v8 = BBLogGeneral;
      if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [NSAttributedString(BulletinBoard) _bb_attributedStringWithRTFDData:v8];
      }
    }

    v9 = [v6 length];
    [v6 removeAttribute:@"NSFont" range:{0, v9}];
    [v6 removeAttribute:@"NSParagraphStyle" range:{0, v9}];
    v10 = [v6 copy];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_bb_RTFDData
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [self length];
  v10 = @"DocumentType";
  v11[0] = @"NSRTFD";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = 0;
  v4 = [self dataFromRange:0 documentAttributes:v2 error:{v3, &v9}];
  v5 = v9;
  if (v5)
  {
    v6 = BBLogGeneral;
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [(NSAttributedString(BulletinBoard) *)v6 _bb_RTFDData];
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

@end