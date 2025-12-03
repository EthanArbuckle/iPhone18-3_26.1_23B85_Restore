@interface CoreDAVXMLElementGenerator
- (BOOL)isExpectedNameSpace:(id)space andElementName:(id)name;
- (BOOL)tracksRootElement;
- (CoreDAVXMLElementGenerator)initWithParser:(id)parser baseURL:(id)l rootElementNameSpace:(id)space elementName:(id)name parseClass:(Class)class;
- (CoreDAVXMLElementGenerator)initWithParser:(id)parser parentGenerator:(id)generator parentElementSetter:(SEL)setter element:(id)element;
- (CoreDAVXMLElementGenerator)parentGenerator;
- (SEL)parentElementSetter;
- (void)noteChildCascadingFailure;
- (void)notifyElement:(id)element ofAttributesFound:(id)found;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCDATA:(id)a;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)resumeParsingWithParser:(id)parser;
- (void)setParentElementSetter:(SEL)setter;
@end

@implementation CoreDAVXMLElementGenerator

- (CoreDAVXMLElementGenerator)initWithParser:(id)parser baseURL:(id)l rootElementNameSpace:(id)space elementName:(id)name parseClass:(Class)class
{
  nameCopy = name;
  spaceCopy = space;
  lCopy = l;
  parserCopy = parser;
  v16 = [[class alloc] initWithNameSpace:spaceCopy andName:nameCopy];

  v17 = [(CoreDAVXMLElementGenerator *)self initWithParser:parserCopy parentGenerator:0 parentElementSetter:0 element:v16];
  v18 = v17;
  [(CoreDAVXMLElementGenerator *)v18 setBaseURL:lCopy];

  return v18;
}

- (CoreDAVXMLElementGenerator)initWithParser:(id)parser parentGenerator:(id)generator parentElementSetter:(SEL)setter element:(id)element
{
  parserCopy = parser;
  generatorCopy = generator;
  elementCopy = element;
  v19.receiver = self;
  v19.super_class = CoreDAVXMLElementGenerator;
  v13 = [(CoreDAVXMLElementGenerator *)&v19 init];
  v14 = v13;
  if (v13)
  {
    *&v13->_checkedElementValidityIfRootElement = 0;
    v13->_parsingState = 1;
    if (setter)
    {
      setterCopy = setter;
    }

    else
    {
      setterCopy = 0;
    }

    v13->_parentElementSetter = setterCopy;
    objc_storeStrong(&v13->_element, element);
    objc_storeWeak(&v14->_parentGenerator, generatorCopy);
    baseURL = [generatorCopy baseURL];
    baseURL = v14->_baseURL;
    v14->_baseURL = baseURL;

    [parserCopy setDelegate:v14];
  }

  return v14;
}

- (BOOL)tracksRootElement
{
  parentGenerator = [(CoreDAVXMLElementGenerator *)self parentGenerator];
  v3 = parentGenerator == 0;

  return v3;
}

- (void)notifyElement:(id)element ofAttributesFound:(id)found
{
  v23 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  foundCopy = found;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [foundCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    v10 = allKeys;
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
        objc_enumerationMutation(allKeys);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      if (!v10)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
      }

      v14 = [CoreDAVXMLElementAttribute alloc];
      v15 = [foundCopy objectForKey:v13];
      v16 = [(CoreDAVXMLElementAttribute *)v14 initWithNameSpace:0 name:v13 value:v15];

      [v10 addObject:v16];
    }

    v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);

  if (v10)
  {
    [elementCopy parserFoundAttributes:v10];
LABEL_13:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)isExpectedNameSpace:(id)space andElementName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  nameCopy = name;
  element = [(CoreDAVXMLElementGenerator *)self element];
  name = [element name];
  if ([nameCopy isEqualToString:name])
  {
    element2 = [(CoreDAVXMLElementGenerator *)self element];
    nameSpace = [element2 nameSpace];
    v12 = [spaceCopy isEqualToString:nameSpace];

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
    element3 = [(CoreDAVXMLElementGenerator *)self element];
    nameSpace2 = [element3 nameSpace];
    element4 = [(CoreDAVXMLElementGenerator *)self element];
    name2 = [element4 name];
    v23 = 138413058;
    v24 = nameSpace2;
    v25 = 2112;
    v26 = name2;
    v27 = 2112;
    v28 = spaceCopy;
    v29 = 2112;
    v30 = nameCopy;
    _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_DEFAULT, "The expected namespace / name (%@ / %@) didn't match my namespace / name (%@ / %@", &v23, 0x2Au);
  }

  v13 = 0;
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v63 = *MEMORY[0x277D85DE8];
  parserCopy = parser;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  attributesCopy = attributes;
  if ([(CoreDAVXMLElementGenerator *)self tracksRootElement])
  {
    currentlyParsingSubItem = [(CoreDAVXMLElementGenerator *)self currentlyParsingSubItem];
    if (currentlyParsingSubItem)
    {
    }

    else if (![(CoreDAVXMLElementGenerator *)self checkedElementValidityIfRootElement])
    {
      v46 = attributesCopy;
      [(CoreDAVXMLElementGenerator *)self setCheckedElementValidityIfRootElement:1];
      v47 = [(CoreDAVXMLElementGenerator *)self isExpectedNameSpace:iCopy andElementName:elementCopy];
      rootErrorGenerator = [parserCopy rootErrorGenerator];
      v49 = rootErrorGenerator;
      if (v47)
      {

        if (v49 != self)
        {
          [parserCopy setRootErrorGenerator:0];
        }

        element = [(CoreDAVXMLElementGenerator *)self element];
        attributesCopy = v46;
        [(CoreDAVXMLElementGenerator *)self notifyElement:element ofAttributesFound:v46];
      }

      else
      {
        if ([(CoreDAVXMLElementGenerator *)rootErrorGenerator isExpectedNameSpace:iCopy andElementName:elementCopy])
        {
          [parserCopy setDelegate:v49];
          [(CoreDAVXMLElementGenerator *)v49 parser:parserCopy didStartElement:elementCopy namespaceURI:iCopy qualifiedName:nameCopy attributes:v46];
        }

        else
        {
          [parserCopy setRootErrorGenerator:0];
          [parserCopy abortParsing];
          [(CoreDAVXMLElementGenerator *)self noteChildCascadingFailure];
        }

        attributesCopy = v46;
      }

      goto LABEL_31;
    }
  }

  cachedElementParseRules = [(CoreDAVXMLElementGenerator *)self cachedElementParseRules];

  if (!cachedElementParseRules)
  {
    element2 = [(CoreDAVXMLElementGenerator *)self element];
    copyParseRules = [element2 copyParseRules];

    [(CoreDAVXMLElementGenerator *)self setCachedElementParseRules:copyParseRules];
  }

  elementCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", iCopy, elementCopy];
  cachedElementParseRules2 = [(CoreDAVXMLElementGenerator *)self cachedElementParseRules];
  v55 = elementCopy;
  v23 = [cachedElementParseRules2 objectForKey:elementCopy];

  if (v23)
  {
    v24 = [objc_alloc(objc_msgSend(v23 "objectClass"))];
    baseURL = [(CoreDAVXMLElementGenerator *)self baseURL];
    [v24 parserSuggestsBaseURL:baseURL];

    v26 = -[CoreDAVXMLElementGenerator initWithParser:parentGenerator:parentElementSetter:element:]([CoreDAVXMLElementGenerator alloc], "initWithParser:parentGenerator:parentElementSetter:element:", parserCopy, self, [v23 setterMethod], v24);
    [(CoreDAVXMLElementGenerator *)self notifyElement:v24 ofAttributesFound:attributesCopy];
    [(CoreDAVXMLElementGenerator *)self setCurrentlyParsingSubItem:v26];
  }

  else
  {
    selfCopy = self;
    v52 = attributesCopy;
    v53 = nameCopy;
    v27 = elementCopy;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = parserCopy;
    parseHints = [parserCopy parseHints];
    v29 = [parseHints countByEnumeratingWithState:&v56 objects:v62 count:16];
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
          objc_enumerationMutation(parseHints);
        }

        v33 = *(*(&v56 + 1) + 8 * v32);
        nameSpace = [v33 nameSpace];
        if ([iCopy isEqualToString:nameSpace])
        {
          name = [v33 name];
          v36 = [v27 isEqualToString:name];

          if (v36)
          {
            v37 = v33;

            if (!v37)
            {
              goto LABEL_28;
            }

            elementCopy = v27;
            nameCopy = v53;
            parserCopy = v54;
            attributesCopy = v52;
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
            baseURL2 = [(CoreDAVXMLElementGenerator *)selfCopy baseURL];
            [(CoreDAVXMLElementGenerator *)v41 parserSuggestsBaseURL:baseURL2];

            v43 = [[CoreDAVXMLElementGenerator alloc] initWithParser:v54 parentGenerator:selfCopy parentElementSetter:0 element:v41];
            [(CoreDAVXMLElementGenerator *)v43 setIsUnrecognized:1];
            [(CoreDAVXMLElementGenerator *)selfCopy notifyElement:v41 ofAttributesFound:v52];
            [(CoreDAVXMLElementGenerator *)selfCopy setCurrentlyParsingSubItem:v43];

            goto LABEL_29;
          }
        }

        else
        {
        }

        if (v30 == ++v32)
        {
          v30 = [parseHints countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (v30)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }

LABEL_28:
    elementCopy = v27;
    v37 = [[CoreDAVItem alloc] initWithNameSpace:iCopy andName:v27];
    baseURL3 = [(CoreDAVXMLElementGenerator *)selfCopy baseURL];
    [(CoreDAVItem *)v37 parserSuggestsBaseURL:baseURL3];

    parserCopy = v54;
    v41 = [[CoreDAVXMLElementGenerator alloc] initWithParser:v54 parentGenerator:selfCopy parentElementSetter:0 element:v37];
    [(CoreDAVXMLElementGenerator *)v41 setIsUnrecognized:1];
    attributesCopy = v52;
    [(CoreDAVXMLElementGenerator *)selfCopy notifyElement:v37 ofAttributesFound:v52];
    [(CoreDAVXMLElementGenerator *)selfCopy setCurrentlyParsingSubItem:v41];
    nameCopy = v53;
LABEL_29:

    v23 = 0;
  }

LABEL_31:
  v45 = *MEMORY[0x277D85DE8];
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  parserCopy = parser;
  if ([(CoreDAVXMLElementGenerator *)self isExpectedNameSpace:i andElementName:element])
  {
    [(CoreDAVXMLElementGenerator *)self setParsingState:2];
    cDATA = [(CoreDAVXMLElementGenerator *)self cDATA];

    if (cDATA)
    {
      [(CoreDAVXMLElementGenerator *)self setParsingState:2];
      element = [(CoreDAVXMLElementGenerator *)self element];
      cDATA2 = [(CoreDAVXMLElementGenerator *)self cDATA];
    }

    else
    {
      characters = [(CoreDAVXMLElementGenerator *)self characters];

      if (!characters)
      {
        goto LABEL_8;
      }

      [(CoreDAVXMLElementGenerator *)self setParsingState:2];
      element = [(CoreDAVXMLElementGenerator *)self element];
      cDATA2 = [(CoreDAVXMLElementGenerator *)self characters];
    }

    v14 = cDATA2;
    [element parserFoundPayload:cDATA2];

LABEL_8:
    tracksRootElement = [(CoreDAVXMLElementGenerator *)self tracksRootElement];
    v15 = parserCopy;
    if (tracksRootElement)
    {
      goto LABEL_16;
    }

    isUnrecognized = [(CoreDAVXMLElementGenerator *)self isUnrecognized];
    parentGenerator = [(CoreDAVXMLElementGenerator *)self parentGenerator];
    element2 = [parentGenerator element];
    if (isUnrecognized)
    {
      element3 = [(CoreDAVXMLElementGenerator *)self element];
      [element2 parserFoundUnrecognizedElement:element3];

      element4 = element2;
      element2 = parentGenerator;
    }

    else
    {

      v21 = [element2 methodForSelector:{-[CoreDAVXMLElementGenerator parentElementSetter](self, "parentElementSetter")}];
      if (!v21)
      {
LABEL_14:

        parentGenerator2 = [(CoreDAVXMLElementGenerator *)self parentGenerator];
        [parserCopy setDelegate:parentGenerator2];

        goto LABEL_15;
      }

      v22 = v21;
      parentElementSetter = [(CoreDAVXMLElementGenerator *)self parentElementSetter];
      element4 = [(CoreDAVXMLElementGenerator *)self element];
      v22(element2, parentElementSetter, element4);
    }

    goto LABEL_14;
  }

  [parserCopy abortParsing];
  tracksRootElement = [(CoreDAVXMLElementGenerator *)self noteChildCascadingFailure];
LABEL_15:
  v15 = parserCopy;
LABEL_16:

  MEMORY[0x2821F96F8](tracksRootElement, v15);
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  characters = [(CoreDAVXMLElementGenerator *)self characters];

  if (!characters)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [(CoreDAVXMLElementGenerator *)self setCharacters:v7];
  }

  characters2 = [(CoreDAVXMLElementGenerator *)self characters];
  v8 = [charactersCopy dataUsingEncoding:4];

  [characters2 appendData:v8];
}

- (void)parser:(id)parser foundCDATA:(id)a
{
  aCopy = a;
  cDATA = [(CoreDAVXMLElementGenerator *)self cDATA];

  if (!cDATA)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [(CoreDAVXMLElementGenerator *)self setCDATA:v7];
  }

  cDATA2 = [(CoreDAVXMLElementGenerator *)self cDATA];
  [cDATA2 appendData:aCopy];
}

- (void)noteChildCascadingFailure
{
  [(CoreDAVXMLElementGenerator *)self setParsingState:4];
  parentGenerator = [(CoreDAVXMLElementGenerator *)self parentGenerator];
  [parentGenerator noteChildCascadingFailure];
}

- (void)resumeParsingWithParser:(id)parser
{
  parserCopy = parser;
  if ([(CoreDAVXMLElementGenerator *)self parsingState]== 1)
  {
    currentlyParsingSubItem = [(CoreDAVXMLElementGenerator *)self currentlyParsingSubItem];

    if (currentlyParsingSubItem)
    {
      currentlyParsingSubItem2 = [(CoreDAVXMLElementGenerator *)self currentlyParsingSubItem];
      [currentlyParsingSubItem2 resumeParsingWithParser:parserCopy];
    }

    else
    {
      [parserCopy setDelegate:self];
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

- (void)setParentElementSetter:(SEL)setter
{
  if (setter)
  {
    setterCopy = setter;
  }

  else
  {
    setterCopy = 0;
  }

  self->_parentElementSetter = setterCopy;
}

- (CoreDAVXMLElementGenerator)parentGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGenerator);

  return WeakRetained;
}

@end