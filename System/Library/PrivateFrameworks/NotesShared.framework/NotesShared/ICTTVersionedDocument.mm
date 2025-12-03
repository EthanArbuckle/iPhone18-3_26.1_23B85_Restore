@interface ICTTVersionedDocument
- (ICTTVersionedDocument)initWithArchive:(const void *)archive replicaID:(id)d;
- (ICTTVersionedDocument)initWithData:(id)data replicaID:(id)d;
- (id)serialize;
- (unint64_t)mergeWithVersionedDocument:(id)document;
- (unsigned)maxDocumentVersion;
- (void)dealloc;
- (void)loadData:(id)data;
- (void)loadDocumentArchive:(void *)archive;
- (void)saveCurrentVersion:(void *)version;
- (void)saveToArchive:(void *)archive;
@end

@implementation ICTTVersionedDocument

- (ICTTVersionedDocument)initWithData:(id)data replicaID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ICTTVersionedDocument;
  v8 = [(ICTTVersionedDocument *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replicaID, d);
    [(ICTTVersionedDocument *)v9 loadData:dataCopy];
  }

  return v9;
}

- (ICTTVersionedDocument)initWithArchive:(const void *)archive replicaID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ICTTVersionedDocument;
  v8 = [(ICTTVersionedDocument *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replicaID, d);
    [(ICTTVersionedDocument *)v9 loadArchive:archive];
  }

  return v9;
}

- (void)loadData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__ICTTVersionedDocument_loadData___block_invoke;
  v6[3] = &unk_278197130;
  v6[4] = self;
  v7 = dataCopy;
  v5 = dataCopy;
  _os_activity_initiate(&dword_214D51000, "Loading versioned document", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)loadDocumentArchive:(void *)archive
{
  v57 = *MEMORY[0x277D85DE8];
  serializationVersion = [objc_opt_class() serializationVersion];
  v6 = *(archive + 12);
  if (!v6)
  {
    v10 = -1;
    goto LABEL_36;
  }

  v7 = serializationVersion;
  v8 = 0;
  v9 = -1;
  v10 = -1;
  do
  {
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(archive + 40, v8);
    versioned_document::Version::Version(v47, v11);
    if (v10 < 0 && v48 <= v7)
    {
      v10 = v8;
    }

    if (v48 < v7)
    {
      if (v9 < 0)
      {
        v9 = v8;
      }

      versioned_document::Version::~Version(v47);
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_36:
      v30 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(ICTTVersionedDocument *)v30 loadDocumentArchive:v31, v32, v33, v34, v35, v36, v37];
      }

      goto LABEL_39;
    }

    if (v49 <= v7)
    {
      v9 = v8;
    }

    versioned_document::Version::~Version(v47);
    ++v8;
  }

  while (v6 != v8);
  if (v9 < 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if (v9 >= v6)
  {
LABEL_39:
    if (v10 < 0)
    {
      return;
    }

    goto LABEL_40;
  }

  v14 = "com.apple.notes";
  v15 = 0x277CBE000uLL;
  *&v13 = 67109632;
  v45 = v13;
  archiveCopy = archive;
  while (1)
  {
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(archive + 40, v9);
    versioned_document::Version::Version(v47, v16);
    v17 = v50;
    v18 = *(v50 + 23);
    if (v18 < 0)
    {
      v17 = *v50;
      v18 = v50[1];
    }

    v19 = [*(v15 + 2704) dataWithBytesNoCopy:v17 length:v18 freeWhenDone:{0, v45}];
    if (v48 < v7)
    {
      v20 = os_log_create(v14, "Topotext");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v52 = v48;
        v53 = 1024;
        v54 = v7;
        v21 = v20;
        v22 = "Loading old version %d < %d";
        v23 = 14;
LABEL_29:
        _os_log_debug_impl(&dword_214D51000, v21, OS_LOG_TYPE_DEBUG, v22, buf, v23);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    if (v48 != v7)
    {
      break;
    }

    v20 = os_log_create(v14, "Topotext");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v52 = v7;
      v21 = v20;
      v22 = "Loading current version %d";
      v23 = 8;
      goto LABEL_29;
    }

LABEL_34:

    [(ICTTVersionedDocument *)self mergeVersion:v48 fromData:v19];
    versioned_document::Version::~Version(v47);
    if (v6 == ++v9)
    {
      goto LABEL_39;
    }
  }

  selfCopy = self;
  v25 = v15;
  v26 = v14;
  v27 = v49;
  v28 = v26;
  v29 = os_log_create(v26, "Topotext");
  v20 = v29;
  if (v27 <= v7)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = v45;
      v52 = v48;
      v53 = 1024;
      v54 = v7;
      v55 = 1024;
      v56 = v49;
      _os_log_debug_impl(&dword_214D51000, v20, OS_LOG_TYPE_DEBUG, "Loading future version %d > %d where min-supported %d", buf, 0x14u);
    }

    v14 = v28;
    v15 = v25;
    self = selfCopy;
    archive = archiveCopy;
    goto LABEL_34;
  }

  archive = archiveCopy;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [(ICTTVersionedDocument *)v20 loadDocumentArchive:v38, v39, v40, v41, v42, v43, v44];
  }

  versioned_document::Version::~Version(v47);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_40:
    google::protobuf::RepeatedPtrField<versioned_document::Version>::DeleteSubrange((archive + 40), v10, *(archive + 12) - v10);
  }
}

- (void)dealloc
{
  documentArchive = self->_documentArchive;
  if (documentArchive)
  {
    (*(*documentArchive + 8))(documentArchive, a2);
  }

  v4.receiver = self;
  v4.super_class = ICTTVersionedDocument;
  [(ICTTVersionedDocument *)&v4 dealloc];
}

- (void)saveCurrentVersion:(void *)version
{
  minimumSupportedVersion = [objc_opt_class() minimumSupportedVersion];
  v12 = 0;
  v6 = [(ICTTVersionedDocument *)self serializeCurrentVersion:&v12];
  v7 = v12;
  *(version + 8) |= 3u;
  *(version + 10) = v7;
  *(version + 11) = minimumSupportedVersion;
  bytes = [v6 bytes];
  v9 = [v6 length];
  *(version + 8) |= 4u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v10 = v9;
  v11 = *(version + 6);
  if (v11 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v11, bytes, v10);
}

- (unint64_t)mergeWithVersionedDocument:(id)document
{
  documentCopy = document;
  documentArchive = [(ICTTVersionedDocument *)self documentArchive];
  documentArchive2 = [documentCopy documentArchive];
  if (documentArchive2 != documentArchive)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>((documentArchive + 40));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>((documentArchive + 40), (documentArchive2 + 40));
  }

  return 1;
}

- (unsigned)maxDocumentVersion
{
  if (*([(ICTTVersionedDocument *)self documentArchive]+ 48) < 1)
  {
    v6 = objc_opt_class();

    return [v6 serializationVersion];
  }

  else
  {
    documentArchive = [(ICTTVersionedDocument *)self documentArchive];
    if (documentArchive[12] <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
      google::protobuf::internal::LogFinisher::operator=(&v7, v4);
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    return *(**(documentArchive + 5) + 40);
  }
}

- (id)serialize
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Topotext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    serializationVersion = [objc_opt_class() serializationVersion];
    [[(ICTTVersionedDocument *)self documentArchive] serialize];
  }

  documentArchive = [(ICTTVersionedDocument *)self documentArchive];
  v6 = +[ICTTVersionedDocument versionedDocumentSerializationVersion];
  documentArchive[8] |= 1u;
  documentArchive[16] = v6;
  documentArchive2 = [(ICTTVersionedDocument *)self documentArchive];
  v8 = documentArchive2[13];
  v9 = documentArchive2[12];
  if (v9 >= v8)
  {
    if (v8 == documentArchive2[14])
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((documentArchive2 + 10), v8 + 1);
    }

    google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
  }

  v10 = *(documentArchive2 + 5);
  documentArchive2[12] = v9 + 1;
  [(ICTTVersionedDocument *)self saveCurrentVersion:*(v10 + 8 * v9)];
  v11 = objc_alloc(MEMORY[0x277CBEB28]);
  documentArchive3 = [(ICTTVersionedDocument *)self documentArchive];
  v13 = [v11 initWithLength:(*(*documentArchive3 + 72))(documentArchive3)];
  documentArchive4 = [(ICTTVersionedDocument *)self documentArchive];
  v15 = v13;
  google::protobuf::MessageLite::SerializeToArray(documentArchive4, [v13 mutableBytes], objc_msgSend(v13, "length"));
  documentArchive5 = [(ICTTVersionedDocument *)self documentArchive];
  v17 = documentArchive5;
  v18 = documentArchive5[12];
  if (v18 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 913);
    v19 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v24, v19);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    v18 = v17[12];
  }

  v20 = *(v17 + 5);
  v21 = v18 - 1;
  v17[12] = v21;
  (*(**(v20 + 8 * v21) + 32))(*(v20 + 8 * v21));
  ic_gzipDeflate = [v13 ic_gzipDeflate];

  return ic_gzipDeflate;
}

- (void)saveToArchive:(void *)archive
{
  v12[3] = *MEMORY[0x277D85DE8];
  v5 = os_log_create("com.apple.notes", "Topotext");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    serializationVersion = [objc_opt_class() serializationVersion];
    [[(ICTTVersionedDocument *)self documentArchive] serialize];
  }

  v7 = +[ICTTVersionedDocument versionedDocumentSerializationVersion];
  *(archive + 8) |= 1u;
  *(archive + 16) = v7;
  documentArchive = [(ICTTVersionedDocument *)self documentArchive];
  if (documentArchive != archive)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(archive + 40);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>((archive + 40), (documentArchive + 40));
  }

  v9 = *(archive + 13);
  v10 = *(archive + 12);
  if (v10 >= v9)
  {
    if (v9 == *(archive + 14))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 40, v9 + 1);
    }

    google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
  }

  v11 = *(archive + 5);
  *(archive + 12) = v10 + 1;
  [(ICTTVersionedDocument *)self saveCurrentVersion:*(v11 + 8 * v10)];
}

void __34__ICTTVersionedDocument_loadData___block_invoke_cold_1(uint8_t *buf, int a2, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 1024;
  *(buf + 10) = a3;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "ICTTVersionedDocument is wrong versionedDocumentSerializationVersion %d != %d.", buf, 0xEu);
}

@end