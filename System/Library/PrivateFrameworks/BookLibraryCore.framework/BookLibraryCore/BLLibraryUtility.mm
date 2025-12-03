@interface BLLibraryUtility
+ (BOOL)_isMultiUser;
+ (BOOL)writeBinaryPropertyList:(id)list toPath:(id)path error:(id *)error;
+ (id)_dcIdentifierFromOpfPath:(id)path isEPUB:(BOOL)b;
+ (id)_storeIdFromiTunesMetadataPath:(id)path error:(id *)error;
+ (id)dcIdentifierFromBookPath:(id)path;
+ (id)generateFileUniqueIdFromPath:(id)path;
+ (id)identifierFromBookContainer:(id)container allowHash:(BOOL)hash allowStoreID:(BOOL)d error:(id *)error;
+ (id)identifierFromBookZipArchive:(id)archive allowHash:(BOOL)hash allowStoreID:(BOOL)d error:(id *)error;
+ (id)md5FromPath:(id)path;
+ (id)opfPathFromEpubPath:(id)path;
+ (id)opfPathFromFullOpfContainerPath:(id)path;
+ (id)p_opfPathFromContainerXmlDoc:(_xmlDoc *)doc epubPath:(id)path;
+ (id)p_opfPathFromContainerXmlPath:(id)path epubPath:(id)epubPath;
+ (id)uniqueIdFromEpubPath:(id)path;
@end

@implementation BLLibraryUtility

+ (id)p_opfPathFromContainerXmlPath:(id)path epubPath:(id)epubPath
{
  v6 = MEMORY[0x277CBEA90];
  epubPathCopy = epubPath;
  pathCopy = path;
  v9 = [[v6 alloc] initWithContentsOfFile:pathCopy];

  Memory = xmlReadMemory([v9 bytes], objc_msgSend(v9, "length"), 0, "UTF-8", 2049);
  v11 = [self p_opfPathFromContainerXmlDoc:Memory epubPath:epubPathCopy];

  return v11;
}

+ (id)p_opfPathFromContainerXmlDoc:(_xmlDoc *)doc epubPath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (doc)
  {
    v6 = xmlXPathNewContext(doc);
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
            v6 = [pathCopy stringByAppendingPathComponent:v15];
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

    xmlFreeDoc(doc);
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)opfPathFromFullOpfContainerPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    v5 = [pathCopy stringByReplacingOccurrencesOfString:@"META-INF/container.xml" withString:&stru_2853E2EC8];
    v6 = [self p_opfPathFromContainerXmlPath:pathCopy epubPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)opfPathFromEpubPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    v5 = [pathCopy stringByAppendingPathComponent:@"META-INF/container.xml"];
    v6 = [self p_opfPathFromContainerXmlPath:v5 epubPath:pathCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_dcIdentifierFromOpfPath:(id)path isEPUB:(BOOL)b
{
  bCopy = b;
  pathCopy = path;
  v6 = xmlNewTextReaderFilename([pathCopy UTF8String]);
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
                if (!bCopy)
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
    if (!bCopy)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (!bCopy)
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

+ (id)dcIdentifierFromBookPath:(id)path
{
  pathCopy = path;
  pathExtension = [pathCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v6 = [@"epub" isEqualToString:lowercaseString];

  pathExtension2 = [pathCopy pathExtension];
  lowercaseString2 = [pathExtension2 lowercaseString];
  v9 = [@"ibooks" isEqualToString:lowercaseString2];

  if ((v6 & 1) != 0 || v9)
  {
    v11 = [BLLibraryUtility opfPathFromEpubPath:pathCopy];
    v10 = [BLLibraryUtility _dcIdentifierFromOpfPath:v11 isEPUB:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)md5FromPath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([pathCopy length])
  {
    v9 = 0;
    v4 = IMStreamingHashStringWithFilePathSync(pathCopy, 0, &v9);
    v5 = v9;
    if (!v4)
    {
      v6 = BLDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = pathCopy;
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

+ (id)uniqueIdFromEpubPath:(id)path
{
  v3 = [BLLibraryUtility opfPathFromEpubPath:path];
  v4 = [BLLibraryUtility md5FromPath:v3];

  return v4;
}

+ (id)generateFileUniqueIdFromPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    pathExtension = [pathCopy pathExtension];
    v5 = BLBookTypeFromPathExtension(pathExtension);

    if (v5 > 1)
    {
      [BLLibraryUtility uniqueIdFromPdfPath:pathCopy];
    }

    else
    {
      [BLLibraryUtility uniqueIdFromEpubPath:pathCopy];
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

+ (id)_storeIdFromiTunesMetadataPath:(id)path error:(id *)error
{
  v5 = MEMORY[0x277CBEA90];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  v7 = [v5 dataWithContentsOfURL:v6 options:1 error:error];

  if (v7)
  {
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:error];
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

  stringValue = [v10 stringValue];

  return stringValue;
}

+ (id)identifierFromBookZipArchive:(id)archive allowHash:(BOOL)hash allowStoreID:(BOOL)d error:(id *)error
{
  dCopy = d;
  hashCopy = hash;
  v56 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
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
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:archiveCopy];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_241D4D4D8;
  v42[3] = &unk_278D17990;
  v43 = archiveCopy;
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
    if (!dCopy)
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
    bl_md5Hash = BUDynamicCast();

    if (!bl_md5Hash)
    {
LABEL_5:
      v20 = [v47[5] entryForName:@"META-INF/container.xml"];
      v21 = v20;
      if (v20)
      {
        v39 = [self p_opfPathFromContainerXmlDoc:objc_msgSend(v20 epubPath:{"xmlDocumentFromArchive:", v47[5]), &stru_2853E2EC8}];
        v22 = [v47[5] entryForName:?];
        v23 = v22;
        if (v22)
        {
          v24 = [v22 extractFromArchive:v47[5]];
          pathExtension = [archiveCopy pathExtension];
          lowercaseString = [pathExtension lowercaseString];
          v27 = [@"epub" isEqualToString:lowercaseString];

          path = [v24 path];
          bl_md5Hash = [BLLibraryUtility _dcIdentifierFromOpfPath:path isEPUB:v27];

          if (!bl_md5Hash && hashCopy)
          {
            path2 = [v24 path];
            bl_md5Hash = [BLLibraryUtility md5FromPath:path2];
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          path3 = [v24 path];
          v41 = 0;
          v32 = [defaultManager removeItemAtPath:path3 error:&v41];
          v33 = v41;

          if ((v32 & 1) == 0)
          {
            v34 = BLDefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              path4 = [v24 path];
              *buf = 138412546;
              v53 = path4;
              v54 = 2112;
              v55 = v33;
              _os_log_impl(&dword_241D1F000, v34, OS_LOG_TYPE_ERROR, "Failed to remove {%@} file. Error:  %@", buf, 0x16u);
            }
          }
        }

        else
        {
          bl_md5Hash = 0;
        }
      }

      else
      {
        bl_md5Hash = 0;
      }

      if (!bl_md5Hash && hashCopy)
      {
        v36 = BLDefaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_241D1F000, v36, OS_LOG_TYPE_ERROR, "Warning: using a completely temporary NSUUID to add the book to the bookshelf", buf, 2u);
        }

        bl_md5Hash = [archiveCopy bl_md5Hash];
      }
    }
  }

  else
  {
    bl_md5Hash = 0;
  }

  _Block_object_dispose(&v46, 8);

  v37 = *MEMORY[0x277D85DE8];

  return bl_md5Hash;
}

+ (id)identifierFromBookContainer:(id)container allowHash:(BOOL)hash allowStoreID:(BOOL)d error:(id *)error
{
  dCopy = d;
  hashCopy = hash;
  v28 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  if (dCopy)
  {
    v10 = [BLLibraryUtility _iTunesMetadataPathForEpubPath:containerCopy];
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

    userInfo = [v12 userInfo];
    v15 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

    domain = [v15 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA5B8]])
    {
      code = [v15 code];

      if (code == 2)
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

    if (error)
    {
      v20 = v12;
      *error = v12;
    }

    goto LABEL_18;
  }

  v12 = 0;
LABEL_19:
  v21 = [BLLibraryUtility dcIdentifierFromBookPath:containerCopy];
  v11 = v21;
  if (hashCopy && !v21)
  {
    bl_md5Hash = [BLLibraryUtility uniqueIdFromEpubPath:containerCopy];
    if (!bl_md5Hash)
    {
      bl_md5Hash = [containerCopy bl_md5Hash];
    }

    v11 = bl_md5Hash;
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)writeBinaryPropertyList:(id)list toPath:(id)path error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v20 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:list format:200 options:0 error:&v20];
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
  v11 = [v8 writeToFile:pathCopy options:1 error:&v19];
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

    if (error)
    {
      v16 = v10;
      v15 = 0;
      *error = v10;
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
    v22 = pathCopy;
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

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults valueForKey:@"BLLibrarySimulateMultiUser"];

  if (!v4)
  {
    return v2;
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults2 BOOLForKey:@"BLLibrarySimulateMultiUser"];

  return v6;
}

@end