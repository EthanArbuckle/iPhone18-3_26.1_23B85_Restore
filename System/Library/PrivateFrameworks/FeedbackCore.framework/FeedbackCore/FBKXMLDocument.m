@interface FBKXMLDocument
- (FBKXMLDocument)initWithHTMLData:(id)a3;
- (FBKXMLDocument)initWithHTMLString:(id)a3;
- (FBKXMLDocument)initWithXMLData:(id)a3;
- (FBKXMLDocument)initWithXMLString:(id)a3;
- (id)performXPathQuery:(id)a3;
- (void)dealloc;
@end

@implementation FBKXMLDocument

- (FBKXMLDocument)initWithXMLString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4 allowLossyConversion:1];
  v5 = [(FBKXMLDocument *)self initWithXMLData:v4];

  return v5;
}

- (FBKXMLDocument)initWithXMLData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FBKXMLDocument;
  v5 = [(FBKXMLDocument *)&v7 init];
  if (v5)
  {
    v5->_document = xmlReadMemory([v4 bytes], objc_msgSend(v4, "length"), "", 0, 18529);
  }

  return v5;
}

- (FBKXMLDocument)initWithHTMLString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4 allowLossyConversion:1];
  v5 = [(FBKXMLDocument *)self initWithHTMLData:v4];

  return v5;
}

- (FBKXMLDocument)initWithHTMLData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FBKXMLDocument;
  v5 = [(FBKXMLDocument *)&v7 init];
  if (v5)
  {
    v5->_document = htmlReadMemory([v4 bytes], objc_msgSend(v4, "length"), "", 0, 10337);
  }

  return v5;
}

- (void)dealloc
{
  xmlFreeDoc(self->_document);
  v3.receiver = self;
  v3.super_class = FBKXMLDocument;
  [(FBKXMLDocument *)&v3 dealloc];
}

- (id)performXPathQuery:(id)a3
{
  v4 = a3;
  document = self->_document;
  if (document)
  {
    v6 = xmlXPathNewContext(document);
    v7 = xmlCharStrdup([v4 cStringUsingEncoding:4]);
    v8 = v7;
    if (v6 && v7)
    {
      v9 = MEMORY[0x1E692BD60](v7, v6);
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 8);
        if (v11)
        {
          v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*v11];
          if (*v11 >= 1)
          {
            v13 = 0;
            do
            {
              v14 = [[FBKXMLNode alloc] initWithXMLNodePtr:*(*(v11 + 1) + 8 * v13)];
              [v12 addObject:v14];

              ++v13;
            }

            while (v13 < *v11);
          }

          v15 = [v12 copy];

          goto LABEL_20;
        }
      }

      v18 = +[FBKLog appHandle];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1E54BE000, v18, OS_LOG_TYPE_DEFAULT, "Failed to evaluate XPath", v20, 2u);
      }
    }

    else
    {
      v17 = +[FBKLog appHandle];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1E54BE000, v17, OS_LOG_TYPE_DEFAULT, "Failed to create XPath context, or parse provided query", v21, 2u);
      }

      v10 = 0;
    }

    v15 = 0;
LABEL_20:
    free(v8);
    xmlXPathFreeContext(v6);
    xmlXPathFreeObject(v10);
    goto LABEL_21;
  }

  v16 = +[FBKLog appHandle];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E54BE000, v16, OS_LOG_TYPE_DEFAULT, "Attempted to XPath query an empty/null document", buf, 2u);
  }

  v15 = 0;
LABEL_21:

  return v15;
}

@end