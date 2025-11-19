@interface PXCommentAuthor
+ (void)readCommentAuthors:(id)a3 presentation:(id)a4 state:(id)a5;
@end

@implementation PXCommentAuthor

+ (void)readCommentAuthors:(id)a3 presentation:(id)a4 state:(id)a5
{
  v23 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v23 xmlDocument];
  if (!v9)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v10 = OCXGetRootElement(v9);
  v11 = v10;
  if (!v10 || !xmlStrEqual(v10->name, "cmAuthorLst"))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v12 = [v8 PXPresentationMLNamespace];
  Child = OCXFindChild(v11, v12, "cmAuthor");

  while (Child)
  {
    v14 = objc_alloc_init(PDCommentAuthor);
    v15 = CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "id");
    v16 = [v7 commentAuthorCount];
    v17 = [v8 commentAuthorIdToIndexMap];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
    [v17 setObject:v18 forKey:v19];

    [(PDCommentAuthor *)v14 setId:v16];
    v20 = CXRequiredStringAttribute(Child, CXNoNamespace, "name");
    [(PDCommentAuthor *)v14 setName:v20];
    v21 = CXRequiredStringAttribute(Child, CXNoNamespace, "initials");
    [(PDCommentAuthor *)v14 setInitials:v21];
    [(PDCommentAuthor *)v14 setLastCommentIndex:CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "lastIdx") - 1];
    [(PDCommentAuthor *)v14 setColorIndex:CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "clrIdx")];
    [v7 addCommentAuthor:v14];

    v22 = [v8 PXPresentationMLNamespace];
    Child = OCXFindNextChild(Child, v22, "cmAuthor");
  }
}

@end