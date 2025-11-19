@interface ICASPdfCollabIxData
- (ICASPdfCollabIxData)initWithHasCollabView:(id)a3 hasCollabEdit:(id)a4;
- (id)toDict;
@end

@implementation ICASPdfCollabIxData

- (ICASPdfCollabIxData)initWithHasCollabView:(id)a3 hasCollabEdit:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASPdfCollabIxData;
  v9 = [(ICASPdfCollabIxData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hasCollabView, a3);
    objc_storeStrong(&v10->_hasCollabEdit, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"hasCollabView";
  v3 = [(ICASPdfCollabIxData *)self hasCollabView];
  if (v3)
  {
    v4 = [(ICASPdfCollabIxData *)self hasCollabView];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"hasCollabEdit";
  v13[0] = v4;
  v6 = [(ICASPdfCollabIxData *)self hasCollabEdit];
  if (v6)
  {
    v7 = [(ICASPdfCollabIxData *)self hasCollabEdit];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end