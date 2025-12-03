@interface ICASPdfCollabIxData
- (ICASPdfCollabIxData)initWithHasCollabView:(id)view hasCollabEdit:(id)edit;
- (id)toDict;
@end

@implementation ICASPdfCollabIxData

- (ICASPdfCollabIxData)initWithHasCollabView:(id)view hasCollabEdit:(id)edit
{
  viewCopy = view;
  editCopy = edit;
  v12.receiver = self;
  v12.super_class = ICASPdfCollabIxData;
  v9 = [(ICASPdfCollabIxData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hasCollabView, view);
    objc_storeStrong(&v10->_hasCollabEdit, edit);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"hasCollabView";
  hasCollabView = [(ICASPdfCollabIxData *)self hasCollabView];
  if (hasCollabView)
  {
    hasCollabView2 = [(ICASPdfCollabIxData *)self hasCollabView];
  }

  else
  {
    hasCollabView2 = objc_opt_new();
  }

  v5 = hasCollabView2;
  v12[1] = @"hasCollabEdit";
  v13[0] = hasCollabView2;
  hasCollabEdit = [(ICASPdfCollabIxData *)self hasCollabEdit];
  if (hasCollabEdit)
  {
    hasCollabEdit2 = [(ICASPdfCollabIxData *)self hasCollabEdit];
  }

  else
  {
    hasCollabEdit2 = objc_opt_new();
  }

  v8 = hasCollabEdit2;
  v13[1] = hasCollabEdit2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end