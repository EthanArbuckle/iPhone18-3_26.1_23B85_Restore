@interface ICAttachment(PDFGalleryVersion)
- (uint64_t)docCamPDFVersion;
@end

@implementation ICAttachment(PDFGalleryVersion)

- (uint64_t)docCamPDFVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__ICAttachment_PDFGalleryVersion__docCamPDFVersion__block_invoke;
  v5[3] = &unk_1E8468FA8;
  v5[4] = self;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end