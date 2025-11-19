@interface HKCDADocumentShareItemSource
- (HKCDADocumentShareItemSource)initWithDocumentSample:(id)a3 healthStore:(id)a4;
- (id)_simpleError:(id)a3;
- (id)item;
- (void)_buildZipArchiveWithCDA:(id)a3 generatedPDF:(id)a4 completion:(id)a5;
- (void)_generatePDFforCDA:(id)a3 completion:(id)a4;
- (void)_loadShareDataWithHealthStore:(id)a3 completion:(id)a4;
- (void)dealloc;
@end

@implementation HKCDADocumentShareItemSource

- (HKCDADocumentShareItemSource)initWithDocumentSample:(id)a3 healthStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"CDA_EXPORT_ARCHIVE_FOLDER_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v12 = [v9 stringWithFormat:@"http://localhost/%@.zip", v11];

  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
  v24.receiver = self;
  v24.super_class = HKCDADocumentShareItemSource;
  v14 = [(UIActivityItemProvider *)&v24 initWithPlaceholderItem:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_documentSample, a3);
    objc_storeStrong(&v15->_healthStore, a4);
    v16 = [(HKCDADocumentSample *)v15->_documentSample document];

    if (v16)
    {
      v17 = [(HKCDADocumentSample *)v15->_documentSample document];
      v18 = [v17 documentData];
      shareData = v15->_shareData;
      v15->_shareData = v18;
    }

    else
    {
      v17 = v15->_shareData;
      v15->_shareData = 0;
    }

    v20 = objc_alloc_init(HKCDAPDFGenerator);
    generator = v15->_generator;
    v15->_generator = v20;

    exportArchiveURL = v15->_exportArchiveURL;
    v15->_exportArchiveURL = 0;
  }

  return v15;
}

- (void)dealloc
{
  if (self->_exportArchiveURL)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [(NSURL *)self->_exportArchiveURL path];
    [v3 removeItemAtPath:v4 error:0];
    v5 = [v4 stringByDeletingLastPathComponent];
    [v3 removeItemAtPath:v5 error:0];
  }

  v6.receiver = self;
  v6.super_class = HKCDADocumentShareItemSource;
  [(HKCDADocumentShareItemSource *)&v6 dealloc];
}

- (id)_simpleError:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = a3;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ExportHealthReport" code:100 userInfo:v5];

  return v6;
}

- (void)_buildZipArchiveWithCDA:(id)a3 generatedPDF:(id)a4 completion:(id)a5
{
  v44[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSTemporaryDirectory();
  v44[0] = v11;
  v44[1] = @"ccd_export_dir_XXXXXX";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];

  v13 = [MEMORY[0x1E696AEC0] pathWithComponents:v12];
  strncpy(__dst, [v13 UTF8String], 0x400uLL);
  __dst[1023] = 0;
  v14 = mkdtemp(__dst);
  if (v14)
  {
    v41 = v12;
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"CDA_EXPORT_ARCHIVE_FOLDER_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v40 = v15;
    v42[0] = v15;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.zip", v17];
    v42[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];

    v39 = [MEMORY[0x1E696AEC0] pathWithComponents:v19];
    v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
    exportArchiveURL = self->_exportArchiveURL;
    self->_exportArchiveURL = v20;

    v22 = [objc_alloc(MEMORY[0x1E696C600]) initWithURL:self->_exportArchiveURL archiveType:0];
    if ([v22 archiveIsValid])
    {
      v36 = v19;
      [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v37 = v9;
      v24 = v23 = v8;
      v25 = [v24 localizedStringForKey:@"CDA_EXPORT_FILE_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v17, v25];
      v27 = MEMORY[0x1E695DFF8];
      v28 = [v26 stringByAppendingString:@".xml"];
      v29 = [v27 fileURLWithPath:v28];
      v38 = v23;
      v30 = v23;
      v9 = v37;
      [v22 addDataToArchive:v30 pathInArchive:v29];

      v31 = MEMORY[0x1E695DFF8];
      v32 = [v26 stringByAppendingString:@".pdf"];
      v33 = [v31 fileURLWithPath:v32];
      [v22 addFileToArchive:v37 pathInArchive:v33];

      if ([v22 archiveIsValid])
      {
        [v22 closeArchive];
        v10[2](v10, 1, 0);
      }

      else
      {
        v35 = [(HKCDADocumentShareItemSource *)self _simpleError:@"Unable to add files to archive for Clinical Document export"];
        (v10)[2](v10, 0, v35);
      }

      v8 = v38;
      v19 = v36;
    }

    else
    {
      v25 = [(HKCDADocumentShareItemSource *)self _simpleError:@"Unable to create archive for Clinical Document export."];
      (v10)[2](v10, 0, v25);
    }

    v34 = v40;
    v12 = v41;
  }

  else
  {
    v34 = [(HKCDADocumentShareItemSource *)self _simpleError:@"Unable to create temporary directory for exported Health Report."];
    (v10)[2](v10, 0, v34);
  }
}

- (void)_generatePDFforCDA:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  generator = self->_generator;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__HKCDADocumentShareItemSource__generatePDFforCDA_completion___block_invoke;
  v11[3] = &unk_1E81BAFA0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(HKCDAPDFGenerator *)generator generatePDFForCDAXML:v10 completionHandler:v11];
}

uint64_t __62__HKCDADocumentShareItemSource__generatePDFforCDA_completion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    return [*(a1 + 32) _buildZipArchiveWithCDA:*(a1 + 40) generatedPDF:a3 completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)_loadShareDataWithHealthStore:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  shareData = self->_shareData;
  if (shareData)
  {
    [(HKCDADocumentShareItemSource *)self _generatePDFforCDA:shareData completion:v6];
  }

  else
  {
    documentSample = self->_documentSample;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__HKCDADocumentShareItemSource__loadShareDataWithHealthStore_completion___block_invoke;
    v10[3] = &unk_1E81BAFC8;
    v10[4] = self;
    v11 = v6;
    [(HKCDADocumentSample *)documentSample fetchDetailedReportWithHealthStore:a3 reportDataBlock:v10];
  }
}

void __73__HKCDADocumentShareItemSource__loadShareDataWithHealthStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 288), a2);
    [*(a1 + 32) _generatePDFforCDA:v4 completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)item
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  healthStore = self->_healthStore;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __36__HKCDADocumentShareItemSource_item__block_invoke;
  v12 = &unk_1E81BAFF0;
  v14 = &v15;
  v5 = v3;
  v13 = v5;
  [(HKCDADocumentShareItemSource *)self _loadShareDataWithHealthStore:healthStore completion:&v9];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v16 + 24) == 1)
  {
    v6 = self->_exportArchiveURL;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:{&stru_1F42FFBE0, v9, v10, v11, v12}];
  }

  v7 = v6;

  _Block_object_dispose(&v15, 8);

  return v7;
}

@end