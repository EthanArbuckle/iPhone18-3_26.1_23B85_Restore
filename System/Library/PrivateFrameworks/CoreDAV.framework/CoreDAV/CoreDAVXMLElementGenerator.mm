@interface CoreDAVXMLElementGenerator
- (BOOL)isExpectedNameSpace:(id)a3 andElementName:(id)a4;
- (BOOL)tracksRootElement;
- (CoreDAVXMLElementGenerator)initWithParser:(id)a3 baseURL:(id)a4 rootElementNameSpace:(id)a5 elementName:(id)a6 parseClass:(Class)a7;
- (CoreDAVXMLElementGenerator)initWithParser:(id)a3 parentGenerator:(id)a4 parentElementSetter:(SEL)a5 element:(id)a6;
- (CoreDAVXMLElementGenerator)parentGenerator;
- (SEL)parentElementSetter;
- (void)noteChildCascadingFailure;
- (void)notifyElement:(id)a3 ofAttributesFound:(id)a4;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCDATA:(id)a4;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)resumeParsingWithParser:(id)a3;
- (void)setParentElementSetter:(SEL)a3;
@end

@implementation CoreDAVXMLElementGenerator

- (CoreDAVXMLElementGenerator)initWithParser:(id)a3 baseURL:(id)a4 rootElementNameSpace:(id)a5 elementName:(id)a6 parseClass:(Class)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a7 alloc] initWithNameSpace:v13 andName:v12];

  v17 = [(CoreDAVXMLElementGenerator *)self initWithParser:v15 parentGenerator:0 parentElementSetter:0 element:v16];
  v18 = v17;
  [(CoreDAVXMLElementGenerator *)v18 setBaseURL:v14];

  return v18;
}

- (CoreDAVXMLElementGenerator)initWithParser:(id)a3 parentGenerator:(id)a4 parentElementSetter:(SEL)a5 element:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = CoreDAVXMLElementGenerator;
  v13 = [(CoreDAVXMLElementGenerator *)&v19 init];
  v14 = v13;
  if (v13)
  {
    *&v13->_checkedElementValidityIfRootElement = 0;
    v13->_parsingState = 1;
    if (a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v13->_parentElementSetter = v15;
    objc_storeStrong(&v13->_element, a6);
    objc_storeWeak(&v14->_parentGenerator, v11);
    v16 = [v11 baseURL];
    baseURL = v14->_baseURL;
    v14->_baseURL = v16;

    [v10 setDelegate:v14];
  }

  return v14;
}

- (BOOL)tracksRootElement
{
  v2 = [(CoreDAVXMLElementGenerator *)self parentGenerator];
  v3 = v2 == 0;

  return v3;
}

- (void)notifyElement:(id)a3 ofAttributesFound:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    v10 = v7;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v19;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      if (!v10)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
      }

      v14 = [CoreDAVXMLElementAttribute alloc];
      v15 = [v6 objectForKey:v13];
      v16 = [(CoreDAVXMLElementAttribute *)v14 initWithNameSpace:0 name:v13 value:v15];

      [v10 addObject:v16];
    }

    v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);

  if (v10)
  {
    [v5 parserFoundAttributes:v10];
LABEL_13:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)isExpectedNameSpace:(id)a3 andElementName:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CoreDAVXMLElementGenerator *)self element];
  v9 = [v8 name];
  if ([v7 isEqualToString:v9])
  {
    v10 = [(CoreDAVXMLElementGenerator *)self element];
    v11 = [v10 nameSpace];
    v12 = [v6 isEqualToString:v11];

    if (v12)
    {
      v13 = 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = +[CoreDAVLogging sharedLogging];
  v15 = [v14 logHandleForAccountInfoProvider:0];
  v16 = v15;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CoreDAVXMLElementGenerator *)self element];
    v18 = [v17 nameSpace];
    v19 = [(CoreDAVXMLElementGenerator *)self element];
    v20 = [v19 name];
    v23 = 138413058;
    v24 = v18;
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_DEFAULT, "The expected namespace / name (%@ / %@) didn't match my namespace / name (%@ / %@", &v23, 0x2Au);
  }

  v13 = 0;
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v63 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(CoreDAVXMLElementGenerator *)self tracksRootElement])
  {
    v17 = [(CoreDAVXMLElementGenerator *)self currentlyParsingSubItem];
    if (v17)
    {
    }

    else if (![(CoreDAVXMLElementGenerator *)self checkedElementValidityIfRootElement])
    {
      v46 = v16;
      [(CoreDAVXMLElementGenerator *)self setCheckedElementValidityIfRootElement:1];
      v47 = [(CoreDAVXMLElementGenerator *)self isExpectedNameSpace:v14 andElementName:v13];
      v48 = [v12 rootErrorGenerator];
      v49 = v48;
      if (v47)
      {

        if (v49 != self)
        {
          [v12 setRootErrorGenerator:0];
        }

        v50 = [(CoreDAVXMLElementGenerator *)self element];
        v16 = v46;
        [(CoreDAVXMLElementGenerator *)self notifyElement:v50 ofAttributesFound:v46];
      }

      else
      {
        if ([(CoreDAVXMLElementGenerator *)v48 isExpectedNameSpace:v14 andElementName:v13])
        {
          [v12 setDelegate:v49];
          [(CoreDAVXMLElementGenerator *)v49 parser:v12 didStartElement:v13 namespaceURI:v14 qualifiedName:v15 attributes:v46];
        }

        else
        {
          [v12 setRootErrorGenerator:0];
          [v12 abortParsing];
          [(CoreDAVXMLElementGenerator *)self noteChildCascadingFailure];
        }

        v16 = v46;
      }

      goto LABEL_31;
    }
  }

  v18 = [(CoreDAVXMLElementGenerator *)self cachedElementParseRules];

  if (!v18)
  {
    v19 = [(CoreDAVXMLElementGenerator *)self element];
    v20 = [v19 copyParseRules];

    [(CoreDAVXMLElementGenerator *)self setCachedElementParseRules:v20];
  }

  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", v14, v13];
  v22 = [(CoreDAVXMLElementGenerator *)self cachedElementParseRules];
  v55 = v21;
  v23 = [v22 objectForKey:v21];

  if (v23)
  {
    v24 = [objc_alloc(objc_msgSend(v23 "objectClass"))];
    v25 = [(CoreDAVXMLElementGenerator *)self baseURL];
    [v24 parserSuggestsBaseURL:v25];

    v26 = -[CoreDAVXMLElementGenerator initWithParser:parentGenerator:parentElementSetter:element:]([CoreDAVXMLElementGenerator alloc], "initWithParser:parentGenerator:parentElementSetter:element:", v12, self, [v23 setterMethod], v24);
    [(CoreDAVXMLElementGenerator *)self notifyElement:v24 ofAttributesFound:v16];
    [(CoreDAVXMLElementGenerator *)self setCurrentlyParsingSubItem:v26];
  }

  else
  {
    v51 = self;
    v52 = v16;
    v53 = v15;
    v27 = v13;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = v12;
    v28 = [v12 parseHints];
    v29 = [v28 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v57;
LABEL_11:
      v32 = 0;
      while (1)
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v56 + 1) + 8 * v32);
        v34 = [v33 nameSpace];
        if ([v14 isEqualToString:v34])
        {
          v35 = [v33 name];
          v36 = [v27 isEqualToString:v35];

          if (v36)
          {
            v37 = v33;

            if (!v37)
            {
              goto LABEL_28;
            }

            v13 = v27;
            v15 = v53;
            v12 = v54;
            v16 = v52;
            if (![(CoreDAVItem *)v37 parseClass])
            {
              v38 = +[CoreDAVLogging sharedLogging];
              v39 = [v38 logHandleForAccountInfoProvider:0];
              v40 = v39;
              if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v61 = v37;
                _os_log_impl(&dword_2452FB000, v40, OS_LOG_TYPE_ERROR, "\n\n\nHEY YOU GUYS! This parse rule is missing a parse class.  This parse will go poorly. Parse rule %@\n\n\n", buf, 0xCu);
              }
            }

            v41 = [objc_alloc(-[CoreDAVItem parseClass](v37 "parseClass"))];
            v42 = [(CoreDAVXMLElementGenerator *)v51 baseURL];
            [(CoreDAVXMLElementGenerator *)v41 parserSuggestsBaseURL:v42];

            v43 = [[CoreDAVXMLElementGenerator alloc] initWithParser:v54 parentGenerator:v51 parentElementSetter:0 element:v41];
            [(CoreDAVXMLElementGenerator *)v43 setIsUnrecognized:1];
            [(CoreDAVXMLElementGenerator *)v51 notifyElement:v41 ofAttributesFound:v52];
            [(CoreDAVXMLElementGenerator *)v51 setCurrentlyParsingSubItem:v43];

            goto LABEL_29;
          }
        }

        else
        {
        }

        if (v30 == ++v32)
        {
          v30 = [v28 countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (v30)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }

LABEL_28:
    v13 = v27;
    v37 = [[CoreDAVItem alloc] initWithNameSpace:v14 andName:v27];
    v44 = [(CoreDAVXMLElementGenerator *)v51 baseURL];
    [(CoreDAVItem *)v37 parserSuggestsBaseURL:v44];

    v12 = v54;
    v41 = [[CoreDAVXMLElementGenerator alloc] initWithParser:v54 parentGenerator:v51 parentElementSetter:0 element:v37];
    [(CoreDAVXMLElementGenerator *)v41 setIsUnrecognized:1];
    v16 = v52;
    [(CoreDAVXMLElementGenerator *)v51 notifyElement:v37 ofAttributesFound:v52];
    [(CoreDAVXMLElementGenerator *)v51 setCurrentlyParsingSubItem:v41];
    v15 = v53;
LABEL_29:

    v23 = 0;
  }

LABEL_31:
  v45 = *MEMORY[0x277D85DE8];
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v25 = a3;
  if ([(CoreDAVXMLElementGenerator *)self isExpectedNameSpace:a5 andElementName:a4])
  {
    [(CoreDAVXMLElementGenerator *)self setParsingState:2];
    v9 = [(CoreDAVXMLElementGenerator *)self cDATA];

    if (v9)
    {
      [(CoreDAVXMLElementGenerator *)self setParsingState:2];
      v10 = [(CoreDAVXMLElementGenerator *)self element];
      v11 = [(CoreDAVXMLElementGenerator *)self cDATA];
    }

    else
    {
      v13 = [(CoreDAVXMLElementGenerator *)self characters];

      if (!v13)
      {
        goto LABEL_8;
      }

      [(CoreDAVXMLElementGenerator *)self setParsingState:2];
      v10 = [(CoreDAVXMLElementGenerator *)self element];
      v11 = [(CoreDAVXMLElementGenerator *)self characters];
    }

    v14 = v11;
    [v10 parserFoundPayload:v11];

LABEL_8:
    v12 = [(CoreDAVXMLElementGenerator *)self tracksRootElement];
    v15 = v25;
    if (v12)
    {
      goto LABEL_16;
    }

    v16 = [(CoreDAVXMLElementGenerator *)self isUnrecognized];
    v17 = [(CoreDAVXMLElementGenerator *)self parentGenerator];
    v18 = [v17 element];
    if (v16)
    {
      v19 = [(CoreDAVXMLElementGenerator *)self element];
      [v18 parserFoundUnrecognizedElement:v19];

      v20 = v18;
      v18 = v17;
    }

    else
    {

      v21 = [v18 methodForSelector:{-[CoreDAVXMLElementGenerator parentElementSetter](self, "parentElementSetter")}];
      if (!v21)
      {
LABEL_14:

        v24 = [(CoreDAVXMLElementGenerator *)self parentGenerator];
        [v25 setDelegate:v24];

        goto LABEL_15;
      }

      v22 = v21;
      v23 = [(CoreDAVXMLElementGenerator *)self parentElementSetter];
      v20 = [(CoreDAVXMLElementGenerator *)self element];
      v22(v18, v23, v20);
    }

    goto LABEL_14;
  }

  [v25 abortParsing];
  v12 = [(CoreDAVXMLElementGenerator *)self noteChildCascadingFailure];
LABEL_15:
  v15 = v25;
LABEL_16:

  MEMORY[0x2821F96F8](v12, v15);
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = a4;
  v6 = [(CoreDAVXMLElementGenerator *)self characters];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [(CoreDAVXMLElementGenerator *)self setCharacters:v7];
  }

  v9 = [(CoreDAVXMLElementGenerator *)self characters];
  v8 = [v5 dataUsingEncoding:4];

  [v9 appendData:v8];
}

- (void)parser:(id)a3 foundCDATA:(id)a4
{
  v5 = a4;
  v6 = [(CoreDAVXMLElementGenerator *)self cDATA];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [(CoreDAVXMLElementGenerator *)self setCDATA:v7];
  }

  v8 = [(CoreDAVXMLElementGenerator *)self cDATA];
  [v8 appendData:v5];
}

- (void)noteChildCascadingFailure
{
  [(CoreDAVXMLElementGenerator *)self setParsingState:4];
  v3 = [(CoreDAVXMLElementGenerator *)self parentGenerator];
  [v3 noteChildCascadingFailure];
}

- (void)resumeParsingWithParser:(id)a3
{
  v6 = a3;
  if ([(CoreDAVXMLElementGenerator *)self parsingState]== 1)
  {
    v4 = [(CoreDAVXMLElementGenerator *)self currentlyParsingSubItem];

    if (v4)
    {
      v5 = [(CoreDAVXMLElementGenerator *)self currentlyParsingSubItem];
      [v5 resumeParsingWithParser:v6];
    }

    else
    {
      [v6 setDelegate:self];
    }
  }
}

- (SEL)parentElementSetter
{
  if (self->_parentElementSetter)
  {
    return self->_parentElementSetter;
  }

  else
  {
    return 0;
  }
}

- (void)setParentElementSetter:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_parentElementSetter = v3;
}

- (CoreDAVXMLElementGenerator)parentGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGenerator);

  return WeakRetained;
}

@end