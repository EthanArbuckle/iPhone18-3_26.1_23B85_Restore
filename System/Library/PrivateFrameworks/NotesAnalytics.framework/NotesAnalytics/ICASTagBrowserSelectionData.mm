@interface ICASTagBrowserSelectionData
- (ICASTagBrowserSelectionData)initWithCountOfSelectedTags:(id)tags isAllTagsSelected:(id)selected;
- (id)toDict;
@end

@implementation ICASTagBrowserSelectionData

- (ICASTagBrowserSelectionData)initWithCountOfSelectedTags:(id)tags isAllTagsSelected:(id)selected
{
  tagsCopy = tags;
  selectedCopy = selected;
  v12.receiver = self;
  v12.super_class = ICASTagBrowserSelectionData;
  v9 = [(ICASTagBrowserSelectionData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countOfSelectedTags, tags);
    objc_storeStrong(&v10->_isAllTagsSelected, selected);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"countOfSelectedTags";
  countOfSelectedTags = [(ICASTagBrowserSelectionData *)self countOfSelectedTags];
  if (countOfSelectedTags)
  {
    countOfSelectedTags2 = [(ICASTagBrowserSelectionData *)self countOfSelectedTags];
  }

  else
  {
    countOfSelectedTags2 = objc_opt_new();
  }

  v5 = countOfSelectedTags2;
  v12[1] = @"isAllTagsSelected";
  v13[0] = countOfSelectedTags2;
  isAllTagsSelected = [(ICASTagBrowserSelectionData *)self isAllTagsSelected];
  if (isAllTagsSelected)
  {
    isAllTagsSelected2 = [(ICASTagBrowserSelectionData *)self isAllTagsSelected];
  }

  else
  {
    isAllTagsSelected2 = objc_opt_new();
  }

  v8 = isAllTagsSelected2;
  v13[1] = isAllTagsSelected2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end