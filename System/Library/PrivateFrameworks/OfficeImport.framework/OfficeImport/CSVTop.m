@interface CSVTop
+ (CGSize)_improveSize:(CGSize)result;
+ (void)fillHTMLArchiveForCSVData:(id)a3 fileName:(id)a4 archiver:(id)a5;
+ (void)fillHTMLArchiveForCSVString:(id)a3 fileName:(id)a4 archiver:(id)a5;
+ (void)fillHTMLArchiveForOfficeFile:(id)a3 orData:(id)a4 dataFileName:(id)a5 dataFormat:(unint64_t)a6 archiver:(id)a7;
@end

@implementation CSVTop

+ (CGSize)_improveSize:(CGSize)result
{
  if (result.height / result.width <= 10.0)
  {
    if (result.height / result.width < 0.1)
    {
      result.width = result.height * 10.0;
    }
  }

  else
  {
    result.height = result.width * 10.0;
  }

  if (result.height > 2000.0)
  {
    result.height = 2000.0;
  }

  if (result.width > 2000.0)
  {
    result.width = 2000.0;
  }

  return result;
}

+ (void)fillHTMLArchiveForCSVString:(id)a3 fileName:(id)a4 archiver:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v22 = 0;
  v11 = [a3 copyCsvRows:&v22 rowLimit:10000];
  v12 = +[CMXmlUtils copyXhtmlDocument];
  v13 = objc_alloc_init(CMState);
  [(CMState *)v13 setSourceFormat:7];
  -[CMState setIsThumbnail:](v13, "setIsThumbnail:", [v9 isThumbnail]);
  v14 = [CSVMapper alloc];
  v15 = [(CSVMapper *)v14 initWithRows:v11 fileName:v8 columnCount:v22 archiver:v9];
  v16 = [v12 rootElement];
  [(CSVMapper *)v15 mapAt:v16 withState:v13];

  [(CSVMapper *)v15 pageSize];
  [a1 _improveSize:?];
  v18 = v17;
  v20 = v19;
  v21 = [v12 XMLString];
  [v9 setHTMLWidth:v18];
  [v9 setHTMLHeight:v20];
  [v9 pushText:v21 toPath:0];
  [v9 commitDataAtPath:0];
  [v9 closeResourceAtPath:0];

  objc_autoreleasePoolPop(v10);
}

+ (void)fillHTMLArchiveForOfficeFile:(id)a3 orData:(id)a4 dataFileName:(id)a5 dataFormat:(unint64_t)a6 archiver:(id)a7
{
  v16 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  if (v16 && !v11)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v16 options:1 error:0];
  }

  if (v11)
  {
    v14 = v16;
    if (!v16)
    {
      v14 = v12;
    }

    v15 = [v14 lastPathComponent];
    [a1 fillHTMLArchiveForCSVData:v11 fileName:v15 archiver:v13];
  }
}

+ (void)fillHTMLArchiveForCSVData:(id)a3 fileName:(id)a4 archiver:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 isThumbnail] && objc_msgSend(v16, "length") > 0x4000)
  {
    v10 = [v16 subdataWithRange:{0, 0x4000}];

    v16 = v10;
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4];
  if (!v11)
  {
    v12 = QLGuessEncodingForTextFileFromData();
    if (v12 == -1)
    {
      v13 = 513;
    }

    else
    {
      v13 = v12;
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:CFStringConvertEncodingToNSStringEncoding(v13)];
    v11 = v14;
    if (v13 != 513 && !v14)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:5];
    }

    if (!v11)
    {
      v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA040] reason:0 userInfo:0];
      objc_exception_throw(v15);
    }
  }

  [a1 fillHTMLArchiveForCSVString:v11 fileName:v8 archiver:v9];
}

@end