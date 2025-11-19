@interface WXCitation
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
@end

@implementation WXCitation

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v38 = a4;
  v7 = a5;
  v8 = [v7 WXOOBibliographyNamespace];
  v9 = CXChildDefaultStringContent(a3, v8, "SourceType", 0);

  v36 = v9;
  if (v9)
  {
    [v38 setSourceType:v9];
  }

  v10 = [v7 WXOOBibliographyNamespace];
  v11 = CXChildDefaultStringContent(a3, v10, "Year", 0);

  v35 = v11;
  if (v11)
  {
    [v38 setYear:v11];
  }

  v12 = [v7 WXOOBibliographyNamespace];
  v13 = CXChildDefaultStringContent(a3, v12, "Pages", 0);

  v34 = v13;
  if (v13)
  {
    [v38 setPages:v13];
  }

  v14 = [v7 WXOOBibliographyNamespace];
  v15 = CXChildDefaultStringContent(a3, v14, "Title", 0);

  v37 = v15;
  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v16 addObject:v15];
    [v38 setTitles:v16];
  }

  v17 = [v7 WXOOBibliographyNamespace];
  v18 = CXChildDefaultStringContent(a3, v17, "Volume", 0);

  v33 = v18;
  if (v18)
  {
    [v38 setVolume:v18];
  }

  v19 = [v7 WXOOBibliographyNamespace];
  v20 = OCXFindChild(a3, v19, "Author");

  v21 = [v7 WXOOBibliographyNamespace];
  Child = OCXFindChild(v20, v21, "Author");

  v39 = [v38 authors];
  while (Child)
  {
    v23 = [v7 WXOOBibliographyNamespace];
    v24 = OCXFindChild(Child, v23, "NameList");

    v25 = [v7 WXOOBibliographyNamespace];
    v26 = OCXFindChild(v24, v25, "Person");

    v27 = [v7 WXOOBibliographyNamespace];
    v28 = CXChildDefaultStringContent(v26, v27, "Last", 0);

    v29 = [v7 WXOOBibliographyNamespace];
    v30 = CXChildDefaultStringContent(v26, v29, "First", 0);

    if (v28 | v30)
    {
      v31 = [[WDCitationAuthor alloc] initWithFirst:v30 last:v28];
      [v39 addObject:v31];
    }

    v32 = [v7 WXOOBibliographyNamespace];
    Child = OCXFindNextChild(Child, v32, "Author");
  }
}

@end