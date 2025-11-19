@interface BLLibraryUtility
+ (BOOL)_isMultiUser;
+ (BOOL)writeBinaryPropertyList:(id)a3 toPath:(id)a4 error:(id *)a5;
+ (id)_dcIdentifierFromOpfPath:(id)a3 isEPUB:(BOOL)a4;
+ (id)_storeIdFromiTunesMetadataPath:(id)a3 error:(id *)a4;
+ (id)dcIdentifierFromBookPath:(id)a3;
+ (id)generateFileUniqueIdFromPath:(id)a3;
+ (id)identifierFromBookContainer:(id)a3 allowHash:(BOOL)a4 allowStoreID:(BOOL)a5 error:(id *)a6;
+ (id)identifierFromBookZipArchive:(id)a3 allowHash:(BOOL)a4 allowStoreID:(BOOL)a5 error:(id *)a6;
+ (id)md5FromPath:(id)a3;
+ (id)opfPathFromEpubPath:(id)a3;
+ (id)opfPathFromFullOpfContainerPath:(id)a3;
+ (id)p_opfPathFromContainerXmlDoc:(_xmlDoc *)a3 epubPath:(id)a4;
+ (id)p_opfPathFromContainerXmlPath:(id)a3 epubPath:(id)a4;
+ (id)uniqueIdFromEpubPath:(id)a3;
@end

@implementation BLLibraryUtility

+ (id)p_opfPathFromContainerXmlPath:(id)a3 epubPath:(id)a4
{
  v6 = MEMORY[0x277CBEA90];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithContentsOfFile:v8];

  Memory = xmlReadMemory([v9 bytes], objc_msgSend(v9, "length"), 0, "UTF-8", 2049);
  v11 = [a1 p_opfPathFromContainerXmlDoc:Memory epubPath:v7];

  return v11;
}

+ (id)p_opfPathFromContainerXmlDoc:(_xmlDoc *)a3 epubPath:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (a3)
  {
    v6 = xmlXPathNewContext(a3);
    v7 = xmlXPathRegisterNs(v6, "a", "urn:oasis:names:tc:opendocument:xmlns:container");
    if (v7)
    {
      v8 = v7;
      v9 = BLDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v18[0] = 67109120;
        v18[1] = v8;
        _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "Error xmlXPathRegisterNs: %d", v18, 8u);
      }
    }

    if (v6)
    {
      v10 = MEMORY[0x245CFF870]("/a:container/a:rootfiles/a:rootfile[@media-type='application/oebps-package+xml']", v6);
      xmlXPathFreeContext(v6);
      if (v10)
      {
        p_nodeNr = &v10->nodesetval->nodeNr;
        if (p_nodeNr && *p_nodeNr && *(p_nodeNr + 1))
        {
          if (*p_nodeNr < 1)
          {
LABEL_15:
            v6 = 0;
          }

          else
          {
            v12 = 0;
            while (1)
            {
              Prop = xmlGetProp(*(*(p_nodeNr + 1) + 8 * v12), "full-path");
              if (Prop)
              {
                break;
              }

              if (++v12 >= *p_nodeNr)
              {
                goto LABEL_15;
              }
            }

            v14 = Prop;
            v15 = [MEMORY[0x277CCACA8] stringWithCString:Prop encoding:4];
            v6 = [v5 stringByAppendingPathComponent:v15];
            free(v14);
          }

          xmlXPathFreeObject(v10);
          v10 = 0;
        }

        else
        {
          v6 = 0;
        }

        xmlXPathFreeObject(v10);
      }

      else
      {
        v6 = 0;
      }
    }

    xmlFreeDoc(a3);
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)opfPathFromFullOpfContainerPath:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:@"META-INF/container.xml" withString:&stru_2853E2EC8];
    v6 = [a1 p_opfPathFromContainerXmlPath:v4 epubPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)opfPathFromEpubPath:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 stringByAppendingPathComponent:@"META-INF/container.xml"];
    v6 = [a1 p_opfPathFromContainerXmlPath:v5 epubPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_dcIdentifierFromOpfPath:(id)a3 isEPUB:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = xmlNewTextReaderFilename([v5 UTF8String]);
  if (v6)
  {
    v7 = v6;
    v8 = xmlTextReaderDepth(v6);
    if (xmlTextReaderRead(v7) == 1)
    {
      Attribute = 0;
      v10 = v8;
      v11 = v8 + 1;
      while (1)
      {
        v12 = xmlTextReaderDepth(v7);
        v13 = xmlTextReaderNodeType(v7);
        if (v12 != v10 || v13 != 1)
        {
          break;
        }

        Attribute = xmlTextReaderGetAttribute(v7, UNIQUE_IDENTIFIER_ATTR);
LABEL_9:
        if (xmlTextReaderRead(v7) != 1)
        {
          goto LABEL_10;
        }
      }

      if (v11 != v12 || v13 != 1)
      {
        goto LABEL_9;
      }

      v19 = xmlTextReaderConstLocalName(v7);
      if (xmlStrEqual(METADATA_ELEMENT, v19) && xmlTextReaderRead(v7) == 1)
      {
        v15 = 0;
        v14 = 0;
        v20 = v10 + 2;
        while (1)
        {
          v21 = xmlTextReaderDepth(v7);
          v22 = xmlTextReaderNodeType(v7);
          if (v21 == v12 && v22 == 15)
          {
            goto LABEL_11;
          }

          if (v20 == v21 && v22 == 1)
          {
            v23 = xmlTextReaderConstNamespaceUri(v7);
            if (xmlStrEqual(v23, DC_TERMS_NAMESPACE))
            {
              v24 = xmlTextReaderConstLocalName(v7);
              if (v15 || !xmlStrEqual(IDENTIFIER_ELEMENT, v24))
              {
                if (!v14)
                {
                  if (!xmlStrEqual(CONTRIBUTOR_ELEMENT, v24) || (v25 = xmlTextReaderGetAttribute(v7, ID_ATTR)) == 0)
                  {
                    v14 = 0;
                    goto LABEL_49;
                  }

                  v26 = v25;
                  if (xmlStrEqual(v25, BOOK_PRODUCER))
                  {
                    v14 = sub_241D4C9E4(v7);
                  }

                  else
                  {
                    v14 = 0;
                  }

                  free(v26);
                }
              }

              else
              {
                v27 = xmlTextReaderGetAttribute(v7, ID_ATTR);
                if (!v27)
                {
                  v15 = 0;
                  goto LABEL_49;
                }

                v28 = v27;
                if (Attribute && xmlStrEqual(v27, Attribute))
                {
                  v15 = sub_241D4C9E4(v7);
                }

                else
                {
                  v15 = 0;
                }

                free(v28);
                if (!v4)
                {
                  goto LABEL_11;
                }
              }

              if (v15 && v14)
              {
                goto LABEL_11;
              }
            }
          }

LABEL_49:
          if (xmlTextReaderRead(v7) != 1)
          {
            goto LABEL_11;
          }
        }
      }

LABEL_10:
      v14 = 0;
      v15 = 0;
LABEL_11:
      if (Attribute)
      {
        free(Attribute);
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    xmlFreeTextReader(v7);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (![v14 hasPrefix:@"iBooks Author"])
  {
    v16 = 0;
    goto LABEL_20;
  }

LABEL_18:
  v16 = v15;
LABEL_20:
  v17 = v16;

  return v16;
}

+ (id)dcIdentifierFromBookPath:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  v5 = [v4 lowercaseString];
  v6 = [@"epub" isEqualToString:v5];

  v7 = [v3 pathExtension];
  v8 = [v7 lowercaseString];
  v9 = [@"ibooks" isEqualToString:v8];

  if ((v6 & 1) != 0 || v9)
  {
    v11 = [BLLibraryUtility opfPathFromEpubPath:v3];
    v10 = [BLLibraryUtility _dcIdentifierFromOpfPath:v11 isEPUB:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)md5FromPath:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v9 = 0;
    v4 = IMStreamingHashStringWithFilePathSync(v3, 0, &v9);
    v5 = v9;
    if (!v4)
    {
      v6 = BLDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "Error hashing file: %@ --  %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)uniqueIdFromEpubPath:(id)a3
{
  v3 = [BLLibraryUtility opfPathFromEpubPath:a3];
  v4 = [BLLibraryUtility md5FromPath:v3];

  return v4;
}

+ (id)generateFileUniqueIdFromPath:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 pathExtension];
    v5 = BLBookTypeFromPathExtension(v4);

    if (v5 > 1)
    {
      [BLLibraryUtility uniqueIdFromPdfPath:v3];
    }

    else
    {
      [BLLibraryUtility uniqueIdFromEpubPath:v3];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  if ([v6 length] <= 1)
  {

    v6 = 0;
  }

  return v6;
}

+ (id)_storeIdFromiTunesMetadataPath:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEA90];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  v7 = [v5 dataWithContentsOfURL:v6 options:1 error:a4];

  if (v7)
  {
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:STORE_ID_KEY];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 stringValue];

  return v11;
}

+ (id)identifierFromBookZipArchive:(id)a3 allowHash:(BOOL)a4 allowStoreID:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v40 = a4;
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_241D4D4C0;
  v50 = sub_241D4D4D0;
  v51 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = dispatch_get_global_queue(-2, 0);
  v11 = MEMORY[0x277CF3308];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_241D4D4D8;
  v42[3] = &unk_278D17990;
  v43 = v8;
  v45 = &v46;
  v13 = v9;
  v44 = v13;
  [v11 readArchiveFromURL:v12 options:4 queue:v10 completion:v42];

  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = v47[5];
  if (v14)
  {
    v15 = [v14 entryForName:@"iTunesMetadata.plist"];
    v16 = v15;
    if (!v6)
    {
      goto LABEL_5;
    }

    if (!v15)
    {
      goto LABEL_5;
    }

    v17 = [v15 plistFromArchive:v47[5]];
    objc_opt_class();
    v18 = [v17 objectForKeyedSubscript:STORE_ID_KEY];
    v19 = BUDynamicCast();

    if (!v19)
    {
LABEL_5:
      v20 = [v47[5] entryForName:@"META-INF/container.xml"];
      v21 = v20;
      if (v20)
      {
        v39 = [a1 p_opfPathFromContainerXmlDoc:objc_msgSend(v20 epubPath:{"xmlDocumentFromArchive:", v47[5]), &stru_2853E2EC8}];
        v22 = [v47[5] entryForName:?];
        v23 = v22;
        if (v22)
        {
          v24 = [v22 extractFromArchive:v47[5]];
          v25 = [v8 pathExtension];
          v26 = [v25 lowercaseString];
          v27 = [@"epub" isEqualToString:v26];

          v28 = [v24 path];
          v19 = [BLLibraryUtility _dcIdentifierFromOpfPath:v28 isEPUB:v27];

          if (!v19 && v40)
          {
            v29 = [v24 path];
            v19 = [BLLibraryUtility md5FromPath:v29];
          }

          v30 = [MEMORY[0x277CCAA00] defaultManager];
          v31 = [v24 path];
          v41 = 0;
          v32 = [v30 removeItemAtPath:v31 error:&v41];
          v33 = v41;

          if ((v32 & 1) == 0)
          {
            v34 = BLDefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = [v24 path];
              *buf = 138412546;
              v53 = v35;
              v54 = 2112;
              v55 = v33;
              _os_log_impl(&dword_241D1F000, v34, OS_LOG_TYPE_ERROR, "Failed to remove {%@} file. Error:  %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      if (!v19 && v40)
      {
        v36 = BLDefaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_241D1F000, v36, OS_LOG_TYPE_ERROR, "Warning: using a completely temporary NSUUID to add the book to the bookshelf", buf, 2u);
        }

        v19 = [v8 bl_md5Hash];
      }
    }
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v46, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)identifierFromBookContainer:(id)a3 allowHash:(BOOL)a4 allowStoreID:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (v7)
  {
    v10 = [BLLibraryUtility _iTunesMetadataPathForEpubPath:v9];
    v25 = 0;
    v11 = [BLLibraryUtility _storeIdFromiTunesMetadataPath:v10 error:&v25];
    v12 = v25;

    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 == 0;
    }

    if (v13)
    {
      if (v11)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    v14 = [v12 userInfo];
    v15 = [v14 objectForKey:*MEMORY[0x277CCA7E8]];

    v16 = [v15 domain];
    if ([v16 isEqualToString:*MEMORY[0x277CCA5B8]])
    {
      v18 = [v15 code];

      if (v18 == 2)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    v19 = BLDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "Error attempting to read store id. Error:  %@", buf, 0xCu);
    }

    if (a6)
    {
      v20 = v12;
      *a6 = v12;
    }

    goto LABEL_18;
  }

  v12 = 0;
LABEL_19:
  v21 = [BLLibraryUtility dcIdentifierFromBookPath:v9];
  v11 = v21;
  if (v8 && !v21)
  {
    v22 = [BLLibraryUtility uniqueIdFromEpubPath:v9];
    if (!v22)
    {
      v22 = [v9 bl_md5Hash];
    }

    v11 = v22;
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)writeBinaryPropertyList:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v20 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:&v20];
  v9 = v20;
  v10 = v9;
  if (!v8)
  {
    v14 = BLDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_241D1F000, v14, OS_LOG_TYPE_ERROR, "DownloadInstaller: Could not serialize plist:  %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v19 = v9;
  v11 = [v8 writeToFile:v7 options:1 error:&v19];
  v12 = v19;

  v13 = BLDefaultLog();
  v14 = v13;
  if (!v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&dword_241D1F000, v14, OS_LOG_TYPE_ERROR, "DownloadInstaller: Could not write plist:  %@", buf, 0xCu);
    }

    v10 = v12;
LABEL_11:

    if (a5)
    {
      v16 = v10;
      v15 = 0;
      *a5 = v10;
    }

    else
    {
      v15 = 0;
    }

    v12 = v10;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_241D1F000, v14, OS_LOG_TYPE_DEFAULT, "DownloadInstaller: Wrote plist to: %@", buf, 0xCu);
  }

  v15 = 1;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (BOOL)_isMultiUser
{
  if (qword_280BC59A0 != -1)
  {
    sub_241D7706C();
  }

  v2 = byte_280BC57D8;
  if ((BUIsRunningTests() & 1) == 0)
  {
    return v2;
  }

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 valueForKey:@"BLLibrarySimulateMultiUser"];

  if (!v4)
  {
    return v2;
  }

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"BLLibrarySimulateMultiUser"];

  return v6;
}

@end