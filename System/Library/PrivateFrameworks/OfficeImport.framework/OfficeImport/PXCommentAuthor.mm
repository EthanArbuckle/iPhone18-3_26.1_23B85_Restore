@interface PXCommentAuthor
+ (void)readCommentAuthors:(id)authors presentation:(id)presentation state:(id)state;
@end

@implementation PXCommentAuthor

+ (void)readCommentAuthors:(id)authors presentation:(id)presentation state:(id)state
{
  authorsCopy = authors;
  presentationCopy = presentation;
  stateCopy = state;
  xmlDocument = [authorsCopy xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v10 = OCXGetRootElement(xmlDocument);
  v11 = v10;
  if (!v10 || !xmlStrEqual(v10->name, "cmAuthorLst"))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  pXPresentationMLNamespace = [stateCopy PXPresentationMLNamespace];
  Child = OCXFindChild(v11, pXPresentationMLNamespace, "cmAuthor");

  while (Child)
  {
    v14 = objc_alloc_init(PDCommentAuthor);
    v15 = CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "id");
    commentAuthorCount = [presentationCopy commentAuthorCount];
    commentAuthorIdToIndexMap = [stateCopy commentAuthorIdToIndexMap];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:commentAuthorCount];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
    [commentAuthorIdToIndexMap setObject:v18 forKey:v19];

    [(PDCommentAuthor *)v14 setId:commentAuthorCount];
    v20 = CXRequiredStringAttribute(Child, CXNoNamespace, "name");
    [(PDCommentAuthor *)v14 setName:v20];
    v21 = CXRequiredStringAttribute(Child, CXNoNamespace, "initials");
    [(PDCommentAuthor *)v14 setInitials:v21];
    [(PDCommentAuthor *)v14 setLastCommentIndex:CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "lastIdx") - 1];
    [(PDCommentAuthor *)v14 setColorIndex:CXRequiredUnsignedLongAttribute(Child, CXNoNamespace, "clrIdx")];
    [presentationCopy addCommentAuthor:v14];

    pXPresentationMLNamespace2 = [stateCopy PXPresentationMLNamespace];
    Child = OCXFindNextChild(Child, pXPresentationMLNamespace2, "cmAuthor");
  }
}

@end