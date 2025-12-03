@interface OISpotlightImporter
- (OISpotlightImporter)init;
- (id)searchableAttributesForOfficeFileAtURL:(id)l error:(id *)error;
- (id)searchableAttributesForXMLOfficeFileOfType:(unint64_t)type atURL:(id)l error:(id *)error;
- (id)sheetNamesFromWorkbookPart:(id)part;
- (id)textContentForReader:(id)reader withType:(unint64_t)type;
- (id)textContentFromExcelReader:(id)reader;
- (id)textContentFromPowerPointReader:(id)reader;
- (id)textContentFromWordReader:(id)reader;
- (id)textFromElementsNamed:(const char *)named skippingElementsNamed:(const char *)elementsNamed insertingNewlinesOnElementsNamed:(const char *)onElementsNamed tabulationsOnElementsNamed:(const char *)tabulationsOnElementsNamed inNamespaces:(const char *)namespaces inPackagePart:(id)part;
- (void)addPackagePropertiesFromReader:(id)reader toSearchableAttributes:(id)attributes;
@end

@implementation OISpotlightImporter

- (OISpotlightImporter)init
{
  if ([OISpotlightImporter init]::once != -1)
  {
    dispatch_once(&[OISpotlightImporter init]::once, &__block_literal_global_108);
  }

  v4.receiver = self;
  v4.super_class = OISpotlightImporter;
  return [(OISpotlightImporter *)&v4 init];
}

uint64_t __27__OISpotlightImporter_init__block_invoke()
{
  objc_opt_class();

  return objc_opt_class();
}

- (void)addPackagePropertiesFromReader:(id)reader toSearchableAttributes:(id)attributes
{
  v32[1] = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  attributesCopy = attributes;
  zipPackage = [readerCopy zipPackage];
  properties = [zipPackage properties];
  creator = [properties creator];
  v10 = [creator length];

  if (v10)
  {
    creator2 = [properties creator];
    v32[0] = creator2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [attributesCopy setAuthorNames:v12];
  }

  v13 = [properties description];
  v14 = [v13 length] == 0;

  if (!v14)
  {
    v15 = [properties description];
    [attributesCopy setContentDescription:v15];
  }

  keywords = [properties keywords];
  v17 = [keywords length] == 0;

  if (!v17)
  {
    keywords2 = [properties keywords];
    v31 = keywords2;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    [attributesCopy setKeywords:v19];
  }

  title = [properties title];
  v21 = [title length] == 0;

  if (!v21)
  {
    title2 = [properties title];
    [attributesCopy setTitle:title2];
  }

  company = [properties company];
  v24 = [company length] == 0;

  if (!v24)
  {
    company2 = [properties company];
    v30 = company2;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [attributesCopy setOrganizations:v26];
  }

  subject = [properties subject];
  v28 = [subject length] == 0;

  if (!v28)
  {
    subject2 = [properties subject];
    [attributesCopy setSubject:subject2];
  }
}

- (id)textFromElementsNamed:(const char *)named skippingElementsNamed:(const char *)elementsNamed insertingNewlinesOnElementsNamed:(const char *)onElementsNamed tabulationsOnElementsNamed:(const char *)tabulationsOnElementsNamed inNamespaces:(const char *)namespaces inPackagePart:(id)part
{
  partCopy = part;
  v14 = objc_alloc_init(MEMORY[0x277CCAB68]);
  xmlReader = [partCopy xmlReader];
  v16 = 0;
  while (xmlTextReaderRead(xmlReader) == 1)
  {
    if (xmlTextReaderNodeType(xmlReader) == 1)
    {
      v17 = xmlTextReaderConstLocalName(xmlReader);
      if (xmlStrcmp(v17, named))
      {
        if (elementsNamed && !xmlStrcmp(v17, elementsNamed) && isCurrentTextReaderElementInNamespaces(xmlReader, namespaces))
        {
            ;
          }
        }

        else if (onElementsNamed == 0 || !v16 || xmlStrcmp(v17, onElementsNamed) || !isCurrentTextReaderElementInNamespaces(xmlReader, namespaces))
        {
          if (tabulationsOnElementsNamed != 0 && v16)
          {
            v16 = 1;
            if (!xmlStrcmp(v17, tabulationsOnElementsNamed) && isCurrentTextReaderElementInNamespaces(xmlReader, namespaces))
            {
              [v14 appendString:@"\t"];
            }
          }
        }

        else
        {
          [v14 appendString:@"\n"];
          v16 = 0;
        }
      }

      else if (isCurrentTextReaderElementInNamespaces(xmlReader, namespaces))
      {
        v18 = xmlTextReaderExpand(xmlReader);
        Content = xmlNodeGetContent(v18);
        if (Content)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:Content];
          [v14 appendString:v20];

          if (!onElementsNamed)
          {
            [v14 appendString:@"\n"];
          }

          free(Content);
          v16 = onElementsNamed != 0;
        }
      }
    }
  }

  xmlFreeTextReader(xmlReader);

  return v14;
}

- (id)textContentFromPowerPointReader:(id)reader
{
  v41[3] = *MEMORY[0x277D85DE8];
  zipPackage = [reader zipPackage];
  mainDocumentPart = [zipPackage mainDocumentPart];
  v5 = [mainDocumentPart relationshipsByType:@"http://purl.oclc.org/ooxml/officeDocument/relationships/slide"];
  v6 = v5;
  if (v5)
  {
    v23 = v5;
  }

  else
  {
    v23 = [mainDocumentPart relationshipsByType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide"];
  }

  v41[0] = "http://schemas.openxmlformats.org/drawingml/2006/main";
  v41[1] = "http://purl.oclc.org/ooxml/drawingml/main";
  v41[2] = 0;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v23;
  v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v26)
  {
    v7 = 0;
    v25 = *v36;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        targetLocation = [*(*(&v35 + 1) + 8 * i) targetLocation];
        v29 = [zipPackage partForLocation:targetLocation];

        v27 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:"p" tabulationsOnElementsNamed:0 inNamespaces:v41 inPackagePart:v29];
        if ([v27 length])
        {
          if (v7)
          {
            [v30 addObject:@"\n"];
          }

          [v30 addObject:v27];
          v7 = 1;
        }

        v9 = [v29 relationshipsByType:@"http://purl.oclc.org/ooxml/officeDocument/relationships/notesSlide"];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = [v29 relationshipsByType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesSlide"];
        }

        v12 = v11;

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v14)
        {
          v15 = *v32;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v13);
              }

              targetLocation2 = [*(*(&v31 + 1) + 8 * j) targetLocation];
              v18 = [zipPackage partForLocation:targetLocation2];

              v19 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:"fld" insertingNewlinesOnElementsNamed:"p" tabulationsOnElementsNamed:0 inNamespaces:v41 inPackagePart:v18];
              if ([v19 length])
              {
                [v30 addObject:v19];
                v7 = 1;
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v14);
        }
      }

      v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v26);
  }

  v20 = [v30 componentsJoinedByString:@"\n"];

  return v20;
}

- (id)textContentFromWordReader:(id)reader
{
  v37[5] = *MEMORY[0x277D85DE8];
  v37[0] = "http://purl.oclc.org/ooxml/wordprocessingml/main";
  v37[1] = "http://schemas.openxmlformats.org/wordprocessingml/2006/main";
  v37[2] = "http://schemas.microsoft.com/office/word/2012/wordml";
  v37[3] = "http://schemas.microsoft.com/office/word/2010/wordml";
  v37[4] = 0;
  zipPackage = [reader zipPackage];
  mainDocumentPart = [zipPackage mainDocumentPart];
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [mainDocumentPart relationshipsByType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/header"];
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        targetLocation = [*(*(&v31 + 1) + 8 * i) targetLocation];
        v9 = [zipPackage partForLocation:targetLocation];

        v10 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:"p" tabulationsOnElementsNamed:"tab" inNamespaces:v37 inPackagePart:v9];
        [v4 appendString:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v11 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:"p" tabulationsOnElementsNamed:"tab" inNamespaces:v37 inPackagePart:mainDocumentPart];
  [v4 appendString:v11];

  v12 = [mainDocumentPart firstPartWithRelationshipOfType:@"http://purl.oclc.org/ooxml/officeDocument/relationships/footnotes"];
  if (v12 || ([mainDocumentPart firstPartWithRelationshipOfType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/footnotes"], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:"p" tabulationsOnElementsNamed:"tab" inNamespaces:v37 inPackagePart:v12];
    [v4 appendString:v13];
  }

  else
  {
    v21 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obja = [mainDocumentPart relationshipsByType:{@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/footer", v21}];
  v14 = [obja countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obja);
        }

        targetLocation2 = [*(*(&v27 + 1) + 8 * j) targetLocation];
        v18 = [zipPackage partForLocation:targetLocation2];

        v19 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:"p" tabulationsOnElementsNamed:"tab" inNamespaces:v37 inPackagePart:v18];
        [v4 appendString:v19];
      }

      v14 = [obja countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v14);
  }

  return v4;
}

- (id)sheetNamesFromWorkbookPart:(id)part
{
  v19 = *MEMORY[0x277D85DE8];
  partCopy = part;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  xmlReader = [partCopy xmlReader];
  v6 = 0;
  v16 = "http://schemas.openxmlformats.org/spreadsheetml/2006/main";
  v17 = "http://purl.oclc.org/ooxml/spreadsheetml/main";
  v18 = 0;
  while (xmlTextReaderRead(xmlReader) == 1)
  {
    if ((v6 & 1) != 0 && xmlTextReaderNodeType(xmlReader) == 15)
    {
      v7 = xmlTextReaderConstLocalName(xmlReader);
      if (xmlStrEqual(v7, "sheets"))
      {
        if (isCurrentTextReaderElementInNamespaces(xmlReader, &v16))
        {
          break;
        }
      }
    }

    if (xmlTextReaderNodeType(xmlReader) == 1)
    {
      v8 = xmlTextReaderConstLocalName(xmlReader);
      if (xmlStrEqual(v8, "sheet"))
      {
        if (isCurrentTextReaderElementInNamespaces(xmlReader, &v16))
        {
          v9 = xmlTextReaderExpand(xmlReader);
          if (v9)
          {
            properties = v9->properties;
            v6 = 1;
            if (properties)
            {
              while (1)
              {
                name = properties->name;
                if (name)
                {
                  if (xmlStrEqual(name, "name"))
                  {
                    break;
                  }
                }

                properties = properties->next;
                if (!properties)
                {
                  goto LABEL_17;
                }
              }

              v12 = objc_alloc(MEMORY[0x277CCACA8]);
              v13 = [v12 tc_initWithValueOfXmlAttribute:{properties, v16, v17, v18, v19}];
              [v4 addObject:v13];

LABEL_17:
              v6 = 1;
            }
          }
        }
      }
    }
  }

  xmlFreeTextReader(xmlReader);
  v14 = [v4 componentsJoinedByString:{@"\n", v16, v17, v18, v19}];

  return v14;
}

- (id)textContentFromExcelReader:(id)reader
{
  v15[4] = *MEMORY[0x277D85DE8];
  v15[0] = "http://purl.oclc.org/ooxml/spreadsheetml/main";
  v15[1] = "http://schemas.openxmlformats.org/spreadsheetml/2006/main";
  v15[2] = "http://schemas.openxmlformats.org/spreadsheetml/2006/7/main";
  v15[3] = 0;
  zipPackage = [reader zipPackage];
  mainDocumentPart = [zipPackage mainDocumentPart];
  v6 = [(OISpotlightImporter *)self sheetNamesFromWorkbookPart:mainDocumentPart];
  v7 = [mainDocumentPart firstPartWithRelationshipOfType:@"http://purl.oclc.org/ooxml/officeDocument/relationships/sharedStrings"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [mainDocumentPart firstPartWithRelationshipOfType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/sharedStrings"];
  }

  v10 = v9;

  v11 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:0 tabulationsOnElementsNamed:0 inNamespaces:v15 inPackagePart:v10];
  v12 = [v6 stringByAppendingString:@"\n"];
  v13 = [v12 stringByAppendingString:v11];

  return v13;
}

- (id)textContentForReader:(id)reader withType:(unint64_t)type
{
  readerCopy = reader;
  switch(type)
  {
    case 2uLL:
      v8 = [(OISpotlightImporter *)self textContentFromWordReader:readerCopy];
      goto LABEL_7;
    case 6uLL:
      v8 = [(OISpotlightImporter *)self textContentFromPowerPointReader:readerCopy];
      goto LABEL_7;
    case 4uLL:
      v8 = [(OISpotlightImporter *)self textContentFromExcelReader:readerCopy];
LABEL_7:
      v9 = v8;
      goto LABEL_9;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"OISpotlightImporter.mm" lineNumber:387 description:@"Unknown file type"];

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)searchableAttributesForXMLOfficeFileOfType:(unint64_t)type atURL:(id)l error:(id *)error
{
  lCopy = l;
  v8 = [(OCDReader *)[OCXReader alloc] initWithCancelDelegate:0];
  path = [lCopy path];
  [(OCDReader *)v8 setFileName:path];

  if ([(OCXReader *)v8 start])
  {
    v10 = objc_alloc_init(MEMORY[0x277CC34B8]);
    [(OISpotlightImporter *)self addPackagePropertiesFromReader:v8 toSearchableAttributes:v10];
    v11 = [(OISpotlightImporter *)self textContentForReader:v8 withType:type];
    [v10 setTextContent:v11];

    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)searchableAttributesForOfficeFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  path = [lCopy path];
  v8 = [CMFileManager getFileTypeFromPath:path];

  if (v8 <= 6)
  {
    if (((1 << v8) & 0x2A) != 0)
    {
      v9 = [QLTop searchableAttributesForBinaryOfficeFileAtURL:lCopy error:error];
      goto LABEL_6;
    }

    if (((1 << v8) & 0x54) != 0)
    {
      v9 = [(OISpotlightImporter *)self searchableAttributesForXMLOfficeFileOfType:v8 atURL:lCopy error:error];
LABEL_6:
      v10 = v9;
      goto LABEL_7;
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"OIErrorDomain" code:2 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

@end