@interface OISpotlightImporter
- (OISpotlightImporter)init;
- (id)searchableAttributesForOfficeFileAtURL:(id)a3 error:(id *)a4;
- (id)searchableAttributesForXMLOfficeFileOfType:(unint64_t)a3 atURL:(id)a4 error:(id *)a5;
- (id)sheetNamesFromWorkbookPart:(id)a3;
- (id)textContentForReader:(id)a3 withType:(unint64_t)a4;
- (id)textContentFromExcelReader:(id)a3;
- (id)textContentFromPowerPointReader:(id)a3;
- (id)textContentFromWordReader:(id)a3;
- (id)textFromElementsNamed:(const char *)a3 skippingElementsNamed:(const char *)a4 insertingNewlinesOnElementsNamed:(const char *)a5 tabulationsOnElementsNamed:(const char *)a6 inNamespaces:(const char *)a7 inPackagePart:(id)a8;
- (void)addPackagePropertiesFromReader:(id)a3 toSearchableAttributes:(id)a4;
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

- (void)addPackagePropertiesFromReader:(id)a3 toSearchableAttributes:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 zipPackage];
  v8 = [v7 properties];
  v9 = [v8 creator];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v8 creator];
    v32[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [v6 setAuthorNames:v12];
  }

  v13 = [v8 description];
  v14 = [v13 length] == 0;

  if (!v14)
  {
    v15 = [v8 description];
    [v6 setContentDescription:v15];
  }

  v16 = [v8 keywords];
  v17 = [v16 length] == 0;

  if (!v17)
  {
    v18 = [v8 keywords];
    v31 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    [v6 setKeywords:v19];
  }

  v20 = [v8 title];
  v21 = [v20 length] == 0;

  if (!v21)
  {
    v22 = [v8 title];
    [v6 setTitle:v22];
  }

  v23 = [v8 company];
  v24 = [v23 length] == 0;

  if (!v24)
  {
    v25 = [v8 company];
    v30 = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [v6 setOrganizations:v26];
  }

  v27 = [v8 subject];
  v28 = [v27 length] == 0;

  if (!v28)
  {
    v29 = [v8 subject];
    [v6 setSubject:v29];
  }
}

- (id)textFromElementsNamed:(const char *)a3 skippingElementsNamed:(const char *)a4 insertingNewlinesOnElementsNamed:(const char *)a5 tabulationsOnElementsNamed:(const char *)a6 inNamespaces:(const char *)a7 inPackagePart:(id)a8
{
  v13 = a8;
  v14 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15 = [v13 xmlReader];
  v16 = 0;
  while (xmlTextReaderRead(v15) == 1)
  {
    if (xmlTextReaderNodeType(v15) == 1)
    {
      v17 = xmlTextReaderConstLocalName(v15);
      if (xmlStrcmp(v17, a3))
      {
        if (a4 && !xmlStrcmp(v17, a4) && isCurrentTextReaderElementInNamespaces(v15, a7))
        {
            ;
          }
        }

        else if (a5 == 0 || !v16 || xmlStrcmp(v17, a5) || !isCurrentTextReaderElementInNamespaces(v15, a7))
        {
          if (a6 != 0 && v16)
          {
            v16 = 1;
            if (!xmlStrcmp(v17, a6) && isCurrentTextReaderElementInNamespaces(v15, a7))
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

      else if (isCurrentTextReaderElementInNamespaces(v15, a7))
      {
        v18 = xmlTextReaderExpand(v15);
        Content = xmlNodeGetContent(v18);
        if (Content)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:Content];
          [v14 appendString:v20];

          if (!a5)
          {
            [v14 appendString:@"\n"];
          }

          free(Content);
          v16 = a5 != 0;
        }
      }
    }
  }

  xmlFreeTextReader(v15);

  return v14;
}

- (id)textContentFromPowerPointReader:(id)a3
{
  v41[3] = *MEMORY[0x277D85DE8];
  v4 = [a3 zipPackage];
  v22 = [v4 mainDocumentPart];
  v5 = [v22 relationshipsByType:@"http://purl.oclc.org/ooxml/officeDocument/relationships/slide"];
  v6 = v5;
  if (v5)
  {
    v23 = v5;
  }

  else
  {
    v23 = [v22 relationshipsByType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide"];
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

        v8 = [*(*(&v35 + 1) + 8 * i) targetLocation];
        v29 = [v4 partForLocation:v8];

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

              v17 = [*(*(&v31 + 1) + 8 * j) targetLocation];
              v18 = [v4 partForLocation:v17];

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

- (id)textContentFromWordReader:(id)a3
{
  v37[5] = *MEMORY[0x277D85DE8];
  v37[0] = "http://purl.oclc.org/ooxml/wordprocessingml/main";
  v37[1] = "http://schemas.openxmlformats.org/wordprocessingml/2006/main";
  v37[2] = "http://schemas.microsoft.com/office/word/2012/wordml";
  v37[3] = "http://schemas.microsoft.com/office/word/2010/wordml";
  v37[4] = 0;
  v26 = [a3 zipPackage];
  v23 = [v26 mainDocumentPart];
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v23 relationshipsByType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/header"];
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

        v8 = [*(*(&v31 + 1) + 8 * i) targetLocation];
        v9 = [v26 partForLocation:v8];

        v10 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:"p" tabulationsOnElementsNamed:"tab" inNamespaces:v37 inPackagePart:v9];
        [v4 appendString:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  v11 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:"p" tabulationsOnElementsNamed:"tab" inNamespaces:v37 inPackagePart:v23];
  [v4 appendString:v11];

  v12 = [v23 firstPartWithRelationshipOfType:@"http://purl.oclc.org/ooxml/officeDocument/relationships/footnotes"];
  if (v12 || ([v23 firstPartWithRelationshipOfType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/footnotes"], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
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
  obja = [v23 relationshipsByType:{@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/footer", v21}];
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

        v17 = [*(*(&v27 + 1) + 8 * j) targetLocation];
        v18 = [v26 partForLocation:v17];

        v19 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:"p" tabulationsOnElementsNamed:"tab" inNamespaces:v37 inPackagePart:v18];
        [v4 appendString:v19];
      }

      v14 = [obja countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v14);
  }

  return v4;
}

- (id)sheetNamesFromWorkbookPart:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v3 xmlReader];
  v6 = 0;
  v16 = "http://schemas.openxmlformats.org/spreadsheetml/2006/main";
  v17 = "http://purl.oclc.org/ooxml/spreadsheetml/main";
  v18 = 0;
  while (xmlTextReaderRead(v5) == 1)
  {
    if ((v6 & 1) != 0 && xmlTextReaderNodeType(v5) == 15)
    {
      v7 = xmlTextReaderConstLocalName(v5);
      if (xmlStrEqual(v7, "sheets"))
      {
        if (isCurrentTextReaderElementInNamespaces(v5, &v16))
        {
          break;
        }
      }
    }

    if (xmlTextReaderNodeType(v5) == 1)
    {
      v8 = xmlTextReaderConstLocalName(v5);
      if (xmlStrEqual(v8, "sheet"))
      {
        if (isCurrentTextReaderElementInNamespaces(v5, &v16))
        {
          v9 = xmlTextReaderExpand(v5);
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

  xmlFreeTextReader(v5);
  v14 = [v4 componentsJoinedByString:{@"\n", v16, v17, v18, v19}];

  return v14;
}

- (id)textContentFromExcelReader:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v15[0] = "http://purl.oclc.org/ooxml/spreadsheetml/main";
  v15[1] = "http://schemas.openxmlformats.org/spreadsheetml/2006/main";
  v15[2] = "http://schemas.openxmlformats.org/spreadsheetml/2006/7/main";
  v15[3] = 0;
  v4 = [a3 zipPackage];
  v5 = [v4 mainDocumentPart];
  v6 = [(OISpotlightImporter *)self sheetNamesFromWorkbookPart:v5];
  v7 = [v5 firstPartWithRelationshipOfType:@"http://purl.oclc.org/ooxml/officeDocument/relationships/sharedStrings"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 firstPartWithRelationshipOfType:@"http://schemas.openxmlformats.org/officeDocument/2006/relationships/sharedStrings"];
  }

  v10 = v9;

  v11 = [(OISpotlightImporter *)self textFromElementsNamed:"t" skippingElementsNamed:0 insertingNewlinesOnElementsNamed:0 tabulationsOnElementsNamed:0 inNamespaces:v15 inPackagePart:v10];
  v12 = [v6 stringByAppendingString:@"\n"];
  v13 = [v12 stringByAppendingString:v11];

  return v13;
}

- (id)textContentForReader:(id)a3 withType:(unint64_t)a4
{
  v7 = a3;
  switch(a4)
  {
    case 2uLL:
      v8 = [(OISpotlightImporter *)self textContentFromWordReader:v7];
      goto LABEL_7;
    case 6uLL:
      v8 = [(OISpotlightImporter *)self textContentFromPowerPointReader:v7];
      goto LABEL_7;
    case 4uLL:
      v8 = [(OISpotlightImporter *)self textContentFromExcelReader:v7];
LABEL_7:
      v9 = v8;
      goto LABEL_9;
  }

  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"OISpotlightImporter.mm" lineNumber:387 description:@"Unknown file type"];

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)searchableAttributesForXMLOfficeFileOfType:(unint64_t)a3 atURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(OCDReader *)[OCXReader alloc] initWithCancelDelegate:0];
  v9 = [v7 path];
  [(OCDReader *)v8 setFileName:v9];

  if ([(OCXReader *)v8 start])
  {
    v10 = objc_alloc_init(MEMORY[0x277CC34B8]);
    [(OISpotlightImporter *)self addPackagePropertiesFromReader:v8 toSearchableAttributes:v10];
    v11 = [(OISpotlightImporter *)self textContentForReader:v8 withType:a3];
    [v10 setTextContent:v11];

    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)searchableAttributesForOfficeFileAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 path];
  v8 = [CMFileManager getFileTypeFromPath:v7];

  if (v8 <= 6)
  {
    if (((1 << v8) & 0x2A) != 0)
    {
      v9 = [QLTop searchableAttributesForBinaryOfficeFileAtURL:v6 error:a4];
      goto LABEL_6;
    }

    if (((1 << v8) & 0x54) != 0)
    {
      v9 = [(OISpotlightImporter *)self searchableAttributesForXMLOfficeFileOfType:v8 atURL:v6 error:a4];
LABEL_6:
      v10 = v9;
      goto LABEL_7;
    }
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"OIErrorDomain" code:2 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

@end