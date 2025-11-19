@interface DOCPDFMetadataProvider
+ (id)pdfMetadataProviderWithNode:(id)a3 levelOfDetail:(int64_t)a4 URL:(id)a5;
- (NSDictionary)metadataValues;
- (id)fullMetadataValues;
- (void)addPagesToDictionary:(id)a3;
- (void)addSecureToDictionary:(id)a3;
- (void)addSizeToDictionary:(id)a3;
- (void)addVersionToDictionary:(id)a3;
- (void)dealloc;
@end

@implementation DOCPDFMetadataProvider

+ (id)pdfMetadataProviderWithNode:(id)a3 levelOfDetail:(int64_t)a4 URL:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v9 = [v7 contentType];
    v10 = [v9 identifier];
    v11 = [*MEMORY[0x277CE1E08] identifier];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      v13 = CGPDFDocumentCreateWithURL(v8);
      if (v13)
      {
        v14 = v13;
        Info = CGPDFDocumentGetInfo(v13);
        if (Info)
        {
          v16 = Info;
          v17 = objc_opt_new();
          v17[2] = v16;
          v17[3] = a4;
          v17[1] = v14;
          goto LABEL_8;
        }

        CGPDFDocumentRelease(v14);
      }
    }
  }

  v17 = 0;
LABEL_8:

  return v17;
}

- (NSDictionary)metadataValues
{
  levelOfDetail = self->_levelOfDetail;
  if (levelOfDetail)
  {
    if (levelOfDetail == 1)
    {
      v4 = [(DOCPDFMetadataProvider *)self fullMetadataValues];
    }

    else
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"DOCPDFMetadataProvider.m" lineNumber:78 description:{@"Unhandled DOCMetadataLevelOfDetail %lu", self->_levelOfDetail}];
    }
  }

  else
  {
    v4 = [(DOCPDFMetadataProvider *)self compactMetadataValues];
  }

  return v4;
}

- (id)fullMetadataValues
{
  v3 = objc_opt_new();
  v4 = [&unk_285CEA010 mutableCopy];
  [(DOCPDFMetadataProvider *)self addVersionToDictionary:v3];
  [(DOCPDFMetadataProvider *)self addPagesToDictionary:v3];
  [(DOCPDFMetadataProvider *)self addSizeToDictionary:v3];
  [(DOCPDFMetadataProvider *)self addSecureToDictionary:v3];
  if (CGPDFDocumentIsUnlocked(self->_pdfDocument))
  {
    pdfInfo = self->_pdfInfo;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__DOCPDFMetadataProvider_fullMetadataValues__block_invoke;
    v10[3] = &unk_278FA26E8;
    v11 = v4;
    v6 = v3;
    v12 = v6;
    CGPDFDictionaryApplyBlock(pdfInfo, v10, 0);
    v7 = v12;
    v8 = v6;
  }

  return v3;
}

BOOL __44__DOCPDFMetadataProvider_fullMetadataValues__block_invoke(uint64_t a1, uint64_t a2, CGPDFObject *a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithCString:a2 encoding:134217984];
  if ([*(a1 + 32) containsObject:v5])
  {
    if (CGPDFObjectGetType(a3) == kCGPDFObjectTypeString)
    {
      value = 0;
      if (CGPDFObjectGetValue(a3, kCGPDFObjectTypeString, &value))
      {
        v6 = CGPDFStringCopyTextString(value);
        [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
      }
    }

    [*(a1 + 32) removeObject:v5];
  }

  v7 = [*(a1 + 32) count] != 0;

  return v7;
}

- (void)addPagesToDictionary:(id)a3
{
  v3 = MEMORY[0x277CCABB8];
  v4 = MEMORY[0x277CCABB0];
  pdfDocument = self->_pdfDocument;
  v6 = a3;
  v8 = [v4 numberWithUnsignedLong:CGPDFDocumentGetNumberOfPages(pdfDocument)];
  v7 = [v3 localizedStringFromNumber:v8 numberStyle:0];
  [v6 setObject:v7 forKeyedSubscript:@"Pages"];
}

- (void)addSecureToDictionary:(id)a3
{
  pdfDocument = self->_pdfDocument;
  v4 = a3;
  IsEncrypted = CGPDFDocumentIsEncrypted(pdfDocument);
  v6 = _DocumentManagerBundle();
  v7 = v6;
  if (IsEncrypted)
  {
    v8 = @"Metadata File Encryption Status [Encrypted With Password]";
    v9 = @"Password";
  }

  else
  {
    v8 = @"Metadata File Encryption Status [Not Encrypted]";
    v9 = @"None";
  }

  v10 = [v6 localizedStringForKey:v8 value:v9 table:@"Localizable"];

  [v4 setObject:v10 forKeyedSubscript:@"Security"];
}

- (void)addVersionToDictionary:(id)a3
{
  v4 = a3;
  majorVersion = 0;
  minorVersion = 0;
  CGPDFDocumentGetVersion(self->_pdfDocument, &majorVersion, &minorVersion);
  if (majorVersion >= 1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d", majorVersion, minorVersion];
    [v4 setObject:v5 forKeyedSubscript:@"Version"];
  }
}

- (void)addSizeToDictionary:(id)a3
{
  v6 = a3;
  if (CGPDFDocumentGetNumberOfPages(self->_pdfDocument))
  {
    Page = CGPDFDocumentGetPage(self->_pdfDocument, 1uLL);
    if (Page)
    {
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
      v5 = DOCLocalizedMetadataStringForWidthByHeight(BoxRect.size.width, BoxRect.size.height);
      [v6 setObject:v5 forKeyedSubscript:@"Resolution"];
    }
  }
}

- (void)dealloc
{
  CGPDFDocumentRelease(self->_pdfDocument);
  v3.receiver = self;
  v3.super_class = DOCPDFMetadataProvider;
  [(DOCPDFMetadataProvider *)&v3 dealloc];
}

@end