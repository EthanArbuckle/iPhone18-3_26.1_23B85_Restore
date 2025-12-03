@interface EBPageProperties
+ (void)readWithState:(id)state;
@end

@implementation EBPageProperties

+ (void)readWithState:(id)state
{
  stateCopy = state;
  XlPageProperties::XlPageProperties(&v20);
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 512))(xlReader, &v20);
  v6 = objc_alloc_init(EDHeaderFooter);
  v7 = [MEMORY[0x277CCACA8] stringWithOcText:XlPageProperties::getHeaderString(&v20)];
  v8 = v7;
  if (v7 && [v7 length])
  {
    [(EDHeaderFooter *)v6 setHeaderString:v8];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithOcText:XlPageProperties::getFooterString(&v20)];
  v10 = v9;
  if (v9 && [v9 length])
  {
    [(EDHeaderFooter *)v6 setFooterString:v10];
  }

  edSheet = [stateCopy edSheet];
  [edSheet setHeaderFooter:v6];

  v12 = +[EDPageSetup pageSetup];
  [v12 setOrientation:{objc_msgSend(self, "convertXlPageOrientationEnumToED:", v30)}];
  [v12 setOrder:v29];
  [v12 setFirstPageNumber:v26];
  [v12 setCustomFirstPageNumber:v32];
  [v12 setFitToHeight:v28];
  [v12 setFitToWidth:v27];
  HIDWORD(v13) = HIDWORD(v23);
  *&v13 = v23;
  [v12 setLeftMargin:v13];
  HIDWORD(v14) = HIDWORD(v24);
  *&v14 = v24;
  [v12 setRightMargin:v14];
  HIDWORD(v15) = HIDWORD(v22);
  *&v15 = v22;
  [v12 setTopMargin:v15];
  HIDWORD(v16) = HIDWORD(v21);
  *&v16 = v21;
  [v12 setBottomMargin:v16];
  HIDWORD(v17) = HIDWORD(v33);
  *&v17 = v33;
  [v12 setHeaderMargin:v17];
  HIDWORD(v18) = HIDWORD(v34);
  *&v18 = v34;
  [v12 setFooterMargin:v18];
  if ((v31 & 1) == 0 && v25)
  {
    [v12 setScale:?];
  }

  edSheet2 = [stateCopy edSheet];
  [edSheet2 setPageSetup:v12];

  XlPageProperties::~XlPageProperties(&v20);
}

@end