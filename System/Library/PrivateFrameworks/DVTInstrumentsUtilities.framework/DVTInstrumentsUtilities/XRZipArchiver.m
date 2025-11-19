@interface XRZipArchiver
+ (BOOL)flatArchiveFilesAtURLs:(id)a3 toURL:(id)a4 error:(id *)a5;
+ (id)flatUnarchiveFileAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
@end

@implementation XRZipArchiver

+ (id)flatUnarchiveFileAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10, v11, v12);
  v18 = objc_msgSend_path(v8, v14, v15, v16, v17);
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v13, v19, v18, 1, 0, 0);

  v85[5] = 0;
  v20 = archive_read_new();
  archive_read_support_format_all();
  archive_read_support_filter_all();
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = sub_2480896F8;
  v85[3] = &unk_278EFA278;
  v85[4] = v20;
  v21 = MEMORY[0x24C1C5B20](v85);
  v26 = objc_msgSend_path(v7, v22, v23, v24, v25);
  v27 = v26;
  objc_msgSend_UTF8String(v27, v28, v29, v30, v31);
  open_filename = archive_read_open_filename();

  if (open_filename)
  {
    v34 = archive_error_string();
    if (v34)
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v33, v34, 1, v36);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"Failed to open archive at URL: %@ with code: %d", v35, v36, v7, open_filename);
    }
    v37 = ;
    if (a5)
    {
      objc_msgSend_dvtiuErrorWithFormat_(MEMORY[0x277CCA9B8], v65, @"%@", v66, v67, v37);
      *a5 = LABEL_16:;
    }

LABEL_17:
    v21[2](v21);
LABEL_28:
  }

  else
  {
    v37 = 0;
    v38 = 1;
    while (1)
    {
      next_header = archive_read_next_header();
      if (next_header == 1)
      {
        break;
      }

      v40 = next_header;
      if (v38)
      {
        v41 = MEMORY[0x277CCACA8];
        v42 = archive_entry_pathname();
        v45 = objc_msgSend_stringWithCString_encoding_(v41, v43, v42, 1, v44);
        v50 = objc_msgSend_lastPathComponent(v45, v46, v47, v48, v49);
        v54 = objc_msgSend_URLByAppendingPathComponent_(v8, v51, v50, v52, v53);

        v55 = v54;
        objc_msgSend_fileSystemRepresentation(v55, v56, v57, v58, v59);
        archive_entry_set_pathname();

        v37 = v54;
      }

      if (v40 < 0)
      {
        v71 = MEMORY[0x277CCACA8];
        v72 = archive_error_string();
        objc_msgSend_stringWithCString_encoding_(v71, v73, v72, 1, v74);
        goto LABEL_24;
      }

      v60 = archive_read_extract();
      v64 = v60;
      if ((v60 & 0x80000000) != 0)
      {
        v76 = archive_error_string();
        if (v76)
        {
          objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v75, v76, 1, v78);
          v79 = LABEL_24:;
        }

        else
        {
          v79 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v75, @"Failed to extract archive at URL: %@ with code: %d", v77, v78, v7, v64);
        }

        v83 = v79;
        if (a5)
        {
          *a5 = objc_msgSend_dvtiuErrorWithFormat_(MEMORY[0x277CCA9B8], v80, @"%@", v81, v82, v79);
        }

        v21[2](v21);

        goto LABEL_28;
      }

      v38 = 0;
      if (v60 == 1)
      {
        if (!a5)
        {
          goto LABEL_17;
        }

        objc_msgSend_dvtiuErrorWithFormat_(MEMORY[0x277CCA9B8], v61, @"Encountered end of file when extracting archive at URL: %@", v62, v63, v7);
        goto LABEL_16;
      }
    }

    v21[2](v21);
    if (v37)
    {
      goto LABEL_30;
    }

    if (a5)
    {
      objc_msgSend_dvtiuErrorWithFormat_(MEMORY[0x277CCA9B8], v68, @"Unarchiving file failed at URL: %@", v69, v70, v7);
      *a5 = v37 = 0;
      goto LABEL_30;
    }
  }

  v37 = 0;
LABEL_30:

  return v37;
}

+ (BOOL)flatArchiveFilesAtURLs:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  memset(&v86, 0, sizeof(v86));
  v9 = archive_write_new();
  archive_write_set_format_zip();
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = sub_248089B40;
  v85[3] = &unk_278EFA278;
  v85[4] = v9;
  v10 = MEMORY[0x24C1C5B20](v85);
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_248089B48;
  v82[3] = &unk_278EFA2A0;
  v11 = v10;
  v84 = v11;
  v12 = v8;
  v83 = v12;
  v13 = MEMORY[0x24C1C5B20](v82);
  v18 = objc_msgSend_path(v12, v14, v15, v16, v17);
  v19 = v18;
  objc_msgSend_UTF8String(v19, v20, v21, v22, v23);
  v24 = archive_write_open_filename();

  if (v24)
  {
    v26 = archive_error_string();
    if (v26)
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v25, v26, 1, v28);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"Failed to open archive for write at URL: %@ with code: %d", v27, v28, v12, v24);
    }
    v72 = ;
    if (a5)
    {
      *a5 = objc_msgSend_dvtiuErrorWithFormat_(MEMORY[0x277CCA9B8], v69, @"%@", v70, v71, v72);
    }

    v11[2](v11);

    v68 = 0;
  }

  else
  {
    v77 = v13;
    v75 = a5;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v29 = v7;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v78, v87, 16);
    if (v31)
    {
      v36 = v31;
      v37 = *v79;
      v76 = v7;
      while (2)
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v79 != v37)
          {
            objc_enumerationMutation(v29);
          }

          v39 = *(*(&v78 + 1) + 8 * i);
          v40 = objc_msgSend_path(v39, v32, v33, v34, v35);
          v41 = v40;
          v46 = objc_msgSend_UTF8String(v41, v42, v43, v44, v45);
          if (stat(v46, &v86))
          {
            if (v75)
            {
              *v75 = objc_msgSend_dvtiuErrorWithFormat_(MEMORY[0x277CCA9B8], v47, @"Cannot access information about file at URL: %@", v48, v49, v39);
            }

LABEL_22:
            v13 = v77;
            v77[2](v77);

            v68 = 0;
            v7 = v76;
            goto LABEL_23;
          }

          archive_entry_new();
          v54 = objc_msgSend_lastPathComponent(v40, v50, v51, v52, v53);
          v55 = v54;
          objc_msgSend_UTF8String(v55, v56, v57, v58, v59);
          archive_entry_set_pathname();

          archive_entry_set_size();
          archive_entry_set_filetype();
          archive_entry_set_perm();
          archive_write_header();
          v60 = v40;
          v65 = objc_msgSend_UTF8String(v60, v61, v62, v63, v64);
          v66 = open(v65, 0x1000000);
          if (v66 == -1)
          {
            goto LABEL_22;
          }

          v67 = v66;
          if (read(v66, v88, 0x2000uLL) >= 1)
          {
            do
            {
              archive_write_data();
            }

            while (read(v67, v88, 0x2000uLL) > 0);
          }

          close(v67);
          archive_entry_free();
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v78, v87, 16);
        v7 = v76;
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v11[2](v11);
    v68 = 1;
    v13 = v77;
  }

LABEL_23:

  v73 = *MEMORY[0x277D85DE8];
  return v68;
}

@end