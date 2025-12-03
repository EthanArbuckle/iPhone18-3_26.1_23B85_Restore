@interface ICASImportItemData
- (ICASImportItemData)initWithImportFileType:(id)type importItemCount:(id)count;
- (id)toDict;
@end

@implementation ICASImportItemData

- (ICASImportItemData)initWithImportFileType:(id)type importItemCount:(id)count
{
  typeCopy = type;
  countCopy = count;
  v12.receiver = self;
  v12.super_class = ICASImportItemData;
  v9 = [(ICASImportItemData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_importFileType, type);
    objc_storeStrong(&v10->_importItemCount, count);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"importFileType";
  importFileType = [(ICASImportItemData *)self importFileType];
  if (importFileType)
  {
    importFileType2 = [(ICASImportItemData *)self importFileType];
  }

  else
  {
    importFileType2 = objc_opt_new();
  }

  v5 = importFileType2;
  v12[1] = @"importItemCount";
  v13[0] = importFileType2;
  importItemCount = [(ICASImportItemData *)self importItemCount];
  if (importItemCount)
  {
    importItemCount2 = [(ICASImportItemData *)self importItemCount];
  }

  else
  {
    importItemCount2 = objc_opt_new();
  }

  v8 = importItemCount2;
  v13[1] = importItemCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end