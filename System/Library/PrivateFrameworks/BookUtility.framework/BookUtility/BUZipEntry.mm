@interface BUZipEntry
- (BOOL)extractFromArchive:(id)a3 destinationURL:(id)a4 error:(id *)a5;
- (_xmlDoc)xmlDocumentFromArchive:(id)a3;
- (id)_dataFromArchive:(id)a3 error:(id *)a4;
- (id)_extractFromArchiveData:(id)a3 destinationURL:(id)a4 allowEntriesOutsideRoot:(BOOL)a5 error:(id *)a6;
- (id)dataFromArchive:(id)a3;
- (id)description;
- (id)extractFromArchive:(id)a3;
- (id)plistFromArchive:(id)a3;
- (id)stringFromArchive:(id)a3;
- (id)usableName;
- (void)_beginStreamingWriteForArchive:(id)a3 forDestinationURL:(id)a4 completion:(id)a5;
@end

@implementation BUZipEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = BUObjectReferenceDescription(self);
  v7 = objc_msgSend_name(self, v5, v6);
  v10 = objc_msgSend_collapsedName(self, v8, v9);
  v13 = objc_msgSend_size(self, v11, v12);
  v16 = objc_msgSend_compressedSize(self, v14, v15);
  v19 = objc_msgSend_CRC(self, v17, v18);
  v22 = objc_msgSend_offset(self, v20, v21);
  v25 = objc_msgSend_extraFieldsLength(self, v23, v24);
  v27 = objc_msgSend_stringWithFormat_(v3, v26, @"<%@> %@ (%@) size=%qu compressedSize=%qu CRC=0x%X offset=%qu extraFieldLength=%hu", v4, v7, v10, v13, v16, v19, v22, v25);

  return v27;
}

- (id)usableName
{
  v4 = objc_msgSend_collapsedName(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_name(self, v5, v6);
  }

  v9 = v8;

  return v9;
}

- (id)_dataFromArchive:(id)a3 error:(id *)a4
{
  v6 = a3;
  v8 = objc_msgSend_readChannelForEntry_(v6, v7, self);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_241DC8E2C;
  v30 = sub_241DC8E3C;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_241DC8E2C;
  v24 = sub_241DC8E3C;
  v25 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241DC8E44;
  v16[3] = &unk_278D1DCB8;
  v18 = &v26;
  v19 = &v20;
  v10 = v9;
  v17 = v10;
  objc_msgSend_readWithHandler_(v8, v11, v16);
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_close(v8, v12, v13);
  if (a4)
  {
    *a4 = v21[5];
  }

  v14 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

- (id)stringFromArchive:(id)a3
{
  v13 = 0;
  v3 = objc_msgSend__dataFromArchive_error_(self, a2, a3, &v13);
  v4 = v13;
  if (v3)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(v3, &buffer_ptr, &size_ptr);
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = objc_msgSend_initWithBytes_length_encoding_(v6, v7, buffer_ptr, size_ptr, 4);
  }

  else
  {
    v9 = BUZipLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_241DD139C();
    }

    v8 = 0;
  }

  return v8;
}

- (id)dataFromArchive:(id)a3
{
  v13 = 0;
  v3 = objc_msgSend__dataFromArchive_error_(self, a2, a3, &v13);
  v4 = v13;
  if (v3)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(v3, &buffer_ptr, &size_ptr);
    v6 = objc_alloc(MEMORY[0x277CBEA90]);
    v8 = objc_msgSend_initWithData_(v6, v7, v5);
  }

  else
  {
    v9 = BUZipLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_241DD139C();
    }

    v8 = 0;
  }

  return v8;
}

- (id)plistFromArchive:(id)a3
{
  v15 = 0;
  v3 = objc_msgSend__dataFromArchive_error_(self, a2, a3, &v15);
  v4 = v15;
  if (v3)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(v3, &buffer_ptr, &size_ptr);
    v12 = 0;
    v7 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v6, v5, 0, 0, &v12);
    v8 = v12;
    if (v8)
    {
      v9 = BUZipLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1404();
      }

      v7 = 0;
    }
  }

  else
  {
    v10 = BUZipLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_241DD139C();
    }

    v7 = 0;
  }

  return v7;
}

- (_xmlDoc)xmlDocumentFromArchive:(id)a3
{
  v4 = a3;
  v38 = 0;
  v6 = objc_msgSend__dataFromArchive_error_(self, v5, v4, &v38);
  v7 = v38;
  if (v6)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v8 = dispatch_data_create_map(v6, &buffer_ptr, &size_ptr);
    v11 = objc_msgSend_length(v8, v9, v10);
    v13 = v11;
    if (v11 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v11;
    }

    if (size_ptr >> 31)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v12, @"BUDataRepresentationError", @"Overflow in xmlDocument %ld", size_ptr);
    }

    v15 = v8;
    v18 = objc_msgSend_bytes(v15, v16, v17);
    PushParserCtxt = xmlCreatePushParserCtxt(0, 0, v18, v14, 0);
    if (!PushParserCtxt)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v19, @"BUDataRepresentationError", @"xmlCreatePushParserCtxt() failed");
    }

    if (size_ptr)
    {
      v21 = v8;
      v24 = objc_msgSend_bytes(v21, v22, v23);
      v25 = xmlParseChunk(PushParserCtxt, (v24 + v14), v13 - v14, 0);
      if (v25)
      {
        objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v26, @"BUDataRepresentationError", @"xmlParseChunk() failed: %d", v25);
      }
    }

    v27 = v8;
    v30 = objc_msgSend_bytes(v27, v28, v29);
    v31 = xmlParseChunk(PushParserCtxt, v30, 0, 1);
    if (v31)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v32, @"BUDataRepresentationError", @"xmlParseChunk() failed: %d", v31);
    }

    myDoc = PushParserCtxt->myDoc;
    if (!PushParserCtxt->wellFormed)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v32, @"BUDataRepresentationError", @"XML document is not well formed.");
    }

    xmlFreeParserCtxt(PushParserCtxt);
  }

  else
  {
    v34 = BUZipLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_241DD139C();
    }

    myDoc = 0;
  }

  return myDoc;
}

- (id)extractFromArchive:(id)a3
{
  v4 = a3;
  v5 = [BUTemporaryDirectory alloc];
  v46 = 0;
  v7 = objc_msgSend_initWithError_(v5, v6, &v46);
  v10 = v46;
  if (v7)
  {
    v11 = objc_msgSend_URL(v7, v8, v9);
    v14 = objc_msgSend_options(v4, v12, v13);
    v15 = MEMORY[0x277CBEBC0];
    v18 = objc_msgSend_usableName(self, v16, v17);
    v20 = objc_msgSend_fileURLWithPath_relativeToURL_(v15, v19, v18, v11);

    if ((v14 & 0x10) != 0 || objc_msgSend_bu_isContainedWithinFileURL_(v20, v21, v11))
    {
      v45 = v10;
      v22 = objc_msgSend__dataFromArchive_error_(self, v21, v4, &v45);
      v23 = v45;

      if (v22)
      {
        v42 = v23;
        v26 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v24, v25);
        v43 = v20;
        v29 = objc_msgSend_URLByDeletingLastPathComponent(v20, v27, v28);
        v44 = 0;
        v31 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v26, v30, v29, 1, 0, &v44);
        v32 = v44;

        if (v31)
        {
          v34 = objc_msgSend__extractFromArchiveData_destinationURL_allowEntriesOutsideRoot_error_(self, v33, v22, v11, (v14 >> 4) & 1, 0);

          if (v34)
          {
            objc_msgSend_leakTemporaryDirectory(v7, v35, v36);
          }

          v20 = v43;
        }

        else
        {
          v40 = BUZipLog();
          v20 = v43;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_241DD1560(v43, v32, v40);
          }

          v34 = 0;
        }

        v23 = v42;
      }

      else
      {
        v37 = BUZipLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_241DD139C();
        }

        v34 = 0;
      }
    }

    else
    {
      v38 = BUZipLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_241DD14D4(self, v38, v39);
      }

      v34 = 0;
      v23 = v10;
    }

    v10 = v23;
  }

  else
  {
    v11 = BUZipLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_241DD160C();
    }

    v34 = 0;
  }

  return v34;
}

- (id)_extractFromArchiveData:(id)a3 destinationURL:(id)a4 allowEntriesOutsideRoot:(BOOL)a5 error:(id *)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v10 = a4;
  size_ptr = 0;
  buffer_ptr = 0;
  v11 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  v12 = MEMORY[0x277CBEBC0];
  v15 = objc_msgSend_usableName(self, v13, v14);
  v17 = objc_msgSend_fileURLWithPath_relativeToURL_(v12, v16, v15, v10);

  if (objc_msgSend_isSymLink(self, v18, v19))
  {
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = objc_msgSend_initWithData_encoding_(v21, v22, v11, 4);
    if (objc_msgSend_length(v23, v24, v25))
    {
      v28 = objc_msgSend_URLByDeletingLastPathComponent(v17, v26, v27);
      v30 = objc_msgSend_fileURLWithPath_relativeToURL_(MEMORY[0x277CBEBC0], v29, v23, v28);
      v33 = v30;
      if (a5 || objc_msgSend_bu_isContainedWithinFileURL_(v30, v31, v10))
      {
        v61 = v33;
        v34 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v31, v32);
        v37 = objc_msgSend_path(v17, v35, v36);
        v63 = 0;
        v39 = objc_msgSend_createSymbolicLinkAtPath_withDestinationPath_error_(v34, v38, v37, v23, &v63);
        v40 = v63;

        if (v39)
        {
          v41 = v17;
          v42 = 0;
        }

        else
        {
          v53 = BUZipLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v60 = objc_msgSend_path(v17, v54, v55);
            *buf = 138412802;
            v67 = v60;
            v68 = 2112;
            v69 = v23;
            v70 = 2112;
            v71 = v40;
            _os_log_error_impl(&dword_241DA6000, v53, OS_LOG_TYPE_ERROR, "Error creating symlink at %@ with destination %@: %@", buf, 0x20u);
          }

          v40 = v40;
          v41 = 0;
          v42 = v40;
        }

        v33 = v61;
      }

      else
      {
        v56 = BUZipLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_241DD16DC(self, v23, v56);
        }

        v40 = 0;
        v42 = 0;
        v41 = 0;
      }
    }

    else
    {
      v28 = BUZipLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1778(v28, v46, v47, v48, v49, v50, v51, v52);
      }

      v40 = 0;
      v42 = 0;
      v41 = 0;
    }

    v44 = 0;
  }

  else
  {
    v62 = 0;
    v43 = objc_msgSend_writeToURL_options_error_(v11, v20, v17, 268435457, &v62);
    v44 = v62;
    if (v43)
    {
      v41 = v17;
      v42 = 0;
    }

    else
    {
      v45 = BUZipLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1674();
      }

      v42 = v44;
      v41 = 0;
      v44 = v42;
    }
  }

  if (a6)
  {
    v57 = v42;
    *a6 = v42;
  }

  v58 = v41;

  return v58;
}

- (BOOL)extractFromArchive:(id)a3 destinationURL:(id)a4 error:(id *)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_241DC8E2C;
  v48 = sub_241DC8E3C;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v10 = MEMORY[0x277CBEBC0];
  v13 = objc_msgSend_path(v9, v11, v12);
  v15 = objc_msgSend_fileURLWithPath_isDirectory_(v10, v14, v13, 1);

  LOBYTE(v13) = objc_msgSend_options(v8, v16, v17);
  v18 = objc_alloc(MEMORY[0x277CBEBC0]);
  v21 = objc_msgSend_usableName(self, v19, v20);
  inited = objc_msgSend_initFileURLWithPath_relativeToURL_(v18, v22, v21, v15);
  v24 = v13 & 0x10;

  if (v13 & 0x10) != 0 || (objc_msgSend_bu_isContainedWithinFileURL_(inited, v25, v15))
  {
    v26 = BUZipLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v8;
      _os_log_impl(&dword_241DA6000, v26, OS_LOG_TYPE_DEFAULT, "Beginning streaming extraction for archive %@", buf, 0xCu);
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_241DC9E94;
    v34[3] = &unk_278D1DCE0;
    v37 = &v44;
    v34[4] = self;
    v35 = inited;
    v39 = v24 >> 4;
    v36 = v15;
    v38 = &v40;
    objc_msgSend__beginStreamingWriteForArchive_forDestinationURL_completion_(self, v27, v8, v35, v34);
    if (a5)
    {
      *a5 = v45[5];
    }

    v28 = *(v41 + 24);
  }

  else
  {
    v29 = BUZipLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_msgSend_name(self, v30, v31);
      *buf = 138412290;
      v51 = v32;
      _os_log_impl(&dword_241DA6000, v29, OS_LOG_TYPE_DEFAULT, "Skipping entry because it is outside the root of the zip: %@", buf, 0xCu);
    }

    v28 = 0;
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v28 & 1;
}

- (void)_beginStreamingWriteForArchive:(id)a3 forDestinationURL:(id)a4 completion:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [BUTemporaryDirectory alloc];
  v63 = 0;
  v13 = objc_msgSend_initForWritingToURL_error_(v11, v12, v9, &v63);
  v16 = v63;
  if (v13)
  {
    v17 = objc_msgSend_URL(v13, v14, v15);
    v20 = objc_msgSend_lastPathComponent(v9, v18, v19);
    v22 = objc_msgSend_URLByAppendingPathComponent_(v17, v21, v20);

    v24 = objc_msgSend_readChannelForEntry_(v8, v23, self);
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = sub_241DC8E2C;
    v61 = sub_241DC8E3C;
    v25 = [BUFileIOChannel alloc];
    v56 = 0;
    v27 = objc_msgSend_initForStreamWritingURL_error_(v25, v26, v22, &v56);
    v28 = v56;
    v62 = v27;
    if (v58[5])
    {
      v50 = 0;
      v51 = &v50;
      v52 = 0x3032000000;
      v53 = sub_241DC8E2C;
      v54 = sub_241DC8E3C;
      v55 = 0;
      v29 = dispatch_group_create();
      dispatch_group_enter(v29);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_241DCA6B8;
      v46[3] = &unk_278D1DD08;
      v48 = &v50;
      v30 = v29;
      v47 = v30;
      v49 = &v57;
      objc_msgSend_readWithHandler_(v24, v31, v46);
      dispatch_group_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
      objc_msgSend_close(v24, v32, v33);
      objc_msgSend_close(v58[5], v34, v35);
      if (v51[5])
      {
        v36 = BUZipLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v45 = v51[5];
          *buf = 138412802;
          v65 = v8;
          v66 = 2112;
          v67 = v22;
          v68 = 2112;
          v69 = v45;
          _os_log_error_impl(&dword_241DA6000, v36, OS_LOG_TYPE_ERROR, "Failed to write archive %@ to URL %@. Error: %@", buf, 0x20u);
        }

        v37 = MEMORY[0x245D00360](v10);
        v38 = v37;
        if (v37)
        {
          (*(v37 + 16))(v37, 0, v51[5]);
        }
      }

      else
      {
        v44 = MEMORY[0x245D00360](v10);
        v38 = v44;
        if (v44)
        {
          (*(v44 + 16))(v44, v22, 0);
        }
      }

      _Block_object_dispose(&v50, 8);
    }

    else
    {
      v41 = BUZipLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_241DD18F4();
      }

      v42 = MEMORY[0x245D00360](v10);
      v43 = v42;
      if (v42)
      {
        (*(v42 + 16))(v42, 0, v28);
      }
    }

    _Block_object_dispose(&v57, 8);
  }

  else
  {
    v39 = BUZipLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1960();
    }

    v40 = MEMORY[0x245D00360](v10);
    v22 = v40;
    if (v40)
    {
      (*(v40 + 16))(v40, 0, v16);
    }
  }
}

@end