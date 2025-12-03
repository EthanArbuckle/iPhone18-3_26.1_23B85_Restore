@interface OfficeImportCompatibility
+ (id)searchableAttributesForOfficeFile:(id)file;
@end

@implementation OfficeImportCompatibility

+ (id)searchableAttributesForOfficeFile:(id)file
{
  v22 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  if (!sub_232CE5334())
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = qword_27DDD4E20;
  v18 = qword_27DDD4E20;
  if (!qword_27DDD4E20)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_232CE5404;
    v20 = &unk_2789A7E60;
    v21 = &v15;
    sub_232CE5404(buf);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  v6 = objc_opt_new();
  v9 = v6;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not load OISpotlightImporter", buf, 2u);
    }

    goto LABEL_11;
  }

  v14 = 0;
  v10 = objc_msgSend_searchableAttributesForOfficeFileAtURL_error_(v6, v7, fileCopy, &v14, v8);
  v11 = v14;
  if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = fileCopy;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not extract metadata from %@: error %@", buf, 0x16u);
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

@end