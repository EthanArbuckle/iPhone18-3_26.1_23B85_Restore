@interface SGMonochrome
+ (id)stringByExtractingPlainTextFromHTML:(id)a3 tableDelimiters:(BOOL)a4 stripLinks:(BOOL)a5;
@end

@implementation SGMonochrome

+ (id)stringByExtractingPlainTextFromHTML:(id)a3 tableDelimiters:(BOOL)a4 stripLinks:(BOOL)a5
{
  v7 = a3;
  if (!v7)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v8 = v7;
  v9 = objc_autoreleasePoolPush();
  if (stringByExtractingPlainTextFromHTML_tableDelimiters_stripLinks__onceToken != -1)
  {
    dispatch_once(&stringByExtractingPlainTextFromHTML_tableDelimiters_stripLinks__onceToken, &__block_literal_global_3367);
  }

  v10 = [stringByExtractingPlainTextFromHTML_tableDelimiters_stripLinks__htmlNodeRegex matchesInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
  if (![v10 count] || objc_msgSend(v10, "count") >= 2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [@"<html>" stringByAppendingString:v8];

    objc_autoreleasePoolPop(v11);
    v8 = v12;
  }

  v13 = v8;
  CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
  if (CStringPtr)
  {
    v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:CStringPtr length:strlen(CStringPtr) freeWhenDone:0];
  }

  else
  {
    v15 = [(__CFString *)v13 dataUsingEncoding:4];
  }

  v17 = v15;
  v18 = [v15 bytes];
  v19 = [v17 length];
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v20 = malloc_type_malloc(0x400uLL, 0x6F5E0255uLL);
  if (!v20)
  {
    v30 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v30);
  }

  v21 = v20;
  bytes = v20;
  v32 = 0x40000000000;
  v33 = 2;
  v35 = 0;
  v34 = 0;
  v36 = 0;
  memset(v37 + 4, 255, 20);
  memset(&v37[1] + 12, 0, 20);
  LOBYTE(v38) = a4;
  BYTE1(v38) = a5;
  if (v18)
  {
    PushParserCtxt = htmlCreatePushParserCtxt(0, 0, 0, 0, 0, XML_CHAR_ENCODING_UTF8);
    if (PushParserCtxt)
    {
      v23 = PushParserCtxt;
      htmlCtxtUseOptions(PushParserCtxt, 2165089);
      htmlParseChunk(v23, v18, v19, 1);
      myDoc = v23->myDoc;
      if (myDoc)
      {
        RootElement = xmlDocGetRootElement(v23->myDoc);
        if (RootElement)
        {
          processTree(&bytes, RootElement);
        }

        else
        {
          DWORD2(v37[2]) = 2;
        }

        xmlFreeDoc(myDoc);
      }

      else
      {
        DWORD2(v37[2]) = 1;
      }

      MEMORY[0x238380570](v23);
      if (DWORD2(v37[2]))
      {
        v21 = bytes;
        goto LABEL_25;
      }

      v28 = v33;
      v29 = v32;
      if (v33 == 2)
      {
        if (v32 < 2)
        {
          v28 = v32;
        }
      }

      else
      {
        if (v33 != 1)
        {
LABEL_38:
          v16 = CFStringCreateWithBytesNoCopy(0, bytes, v29, 0x8000100u, 0, *MEMORY[0x277CBECF0]);
          goto LABEL_26;
        }

        if (v32 >= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v32;
        }
      }

      v29 = v32 - v28;
      LODWORD(v32) = v32 - v28;
      goto LABEL_38;
    }

    v26 = 4;
  }

  else
  {
    v26 = 5;
  }

  DWORD2(v37[2]) = v26;
LABEL_25:
  free(v21);
  v16 = 0;
LABEL_26:
  free(*&v37[2]);
  CFRelease(v13);

  objc_autoreleasePoolPop(v9);
LABEL_27:

  return v16;
}

uint64_t __79__SGMonochrome_stringByExtractingPlainTextFromHTML_tableDelimiters_stripLinks___block_invoke()
{
  stringByExtractingPlainTextFromHTML_tableDelimiters_stripLinks__htmlNodeRegex = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"<html.*?>" options:1 error:0];

  return MEMORY[0x2821F96F8]();
}

@end