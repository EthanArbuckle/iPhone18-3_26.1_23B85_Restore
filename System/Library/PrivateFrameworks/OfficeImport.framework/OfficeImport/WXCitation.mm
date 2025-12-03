@interface WXCitation
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXCitation

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  wXOOBibliographyNamespace = [stateCopy WXOOBibliographyNamespace];
  v9 = CXChildDefaultStringContent(from, wXOOBibliographyNamespace, "SourceType", 0);

  v36 = v9;
  if (v9)
  {
    [toCopy setSourceType:v9];
  }

  wXOOBibliographyNamespace2 = [stateCopy WXOOBibliographyNamespace];
  v11 = CXChildDefaultStringContent(from, wXOOBibliographyNamespace2, "Year", 0);

  v35 = v11;
  if (v11)
  {
    [toCopy setYear:v11];
  }

  wXOOBibliographyNamespace3 = [stateCopy WXOOBibliographyNamespace];
  v13 = CXChildDefaultStringContent(from, wXOOBibliographyNamespace3, "Pages", 0);

  v34 = v13;
  if (v13)
  {
    [toCopy setPages:v13];
  }

  wXOOBibliographyNamespace4 = [stateCopy WXOOBibliographyNamespace];
  v15 = CXChildDefaultStringContent(from, wXOOBibliographyNamespace4, "Title", 0);

  v37 = v15;
  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v16 addObject:v15];
    [toCopy setTitles:v16];
  }

  wXOOBibliographyNamespace5 = [stateCopy WXOOBibliographyNamespace];
  v18 = CXChildDefaultStringContent(from, wXOOBibliographyNamespace5, "Volume", 0);

  v33 = v18;
  if (v18)
  {
    [toCopy setVolume:v18];
  }

  wXOOBibliographyNamespace6 = [stateCopy WXOOBibliographyNamespace];
  v20 = OCXFindChild(from, wXOOBibliographyNamespace6, "Author");

  wXOOBibliographyNamespace7 = [stateCopy WXOOBibliographyNamespace];
  Child = OCXFindChild(v20, wXOOBibliographyNamespace7, "Author");

  authors = [toCopy authors];
  while (Child)
  {
    wXOOBibliographyNamespace8 = [stateCopy WXOOBibliographyNamespace];
    v24 = OCXFindChild(Child, wXOOBibliographyNamespace8, "NameList");

    wXOOBibliographyNamespace9 = [stateCopy WXOOBibliographyNamespace];
    v26 = OCXFindChild(v24, wXOOBibliographyNamespace9, "Person");

    wXOOBibliographyNamespace10 = [stateCopy WXOOBibliographyNamespace];
    v28 = CXChildDefaultStringContent(v26, wXOOBibliographyNamespace10, "Last", 0);

    wXOOBibliographyNamespace11 = [stateCopy WXOOBibliographyNamespace];
    v30 = CXChildDefaultStringContent(v26, wXOOBibliographyNamespace11, "First", 0);

    if (v28 | v30)
    {
      v31 = [[WDCitationAuthor alloc] initWithFirst:v30 last:v28];
      [authors addObject:v31];
    }

    wXOOBibliographyNamespace12 = [stateCopy WXOOBibliographyNamespace];
    Child = OCXFindNextChild(Child, wXOOBibliographyNamespace12, "Author");
  }
}

@end