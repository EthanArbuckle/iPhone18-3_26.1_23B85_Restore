@interface DOCPDFMetadataProvider
+ (id)pdfMetadataProviderWithNode:(id)node levelOfDetail:(int64_t)detail URL:(id)l;
- (NSDictionary)metadataValues;
- (id)fullMetadataValues;
- (void)addPagesToDictionary:(id)dictionary;
- (void)addSecureToDictionary:(id)dictionary;
- (void)addSizeToDictionary:(id)dictionary;
- (void)addVersionToDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation DOCPDFMetadataProvider

+ (id)pdfMetadataProviderWithNode:(id)node levelOfDetail:(int64_t)detail URL:(id)l
{
  nodeCopy = node;
  lCopy = l;
  if (lCopy)
  {
    contentType = [nodeCopy contentType];
    identifier = [contentType identifier];
    identifier2 = [*MEMORY[0x277CE1E08] identifier];
    v12 = [identifier isEqualToString:identifier2];

    if (v12)
    {
      v13 = CGPDFDocumentCreateWithURL(lCopy);
      if (v13)
      {
        v14 = v13;
        Info = CGPDFDocumentGetInfo(v13);
        if (Info)
        {
          v16 = Info;
          v17 = objc_opt_new();
          v17[2] = v16;
          v17[3] = detail;
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
      fullMetadataValues = [(DOCPDFMetadataProvider *)self fullMetadataValues];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"DOCPDFMetadataProvider.m" lineNumber:78 description:{@"Unhandled DOCMetadataLevelOfDetail %lu", self->_levelOfDetail}];
    }
  }

  else
  {
    fullMetadataValues = [(DOCPDFMetadataProvider *)self compactMetadataValues];
  }

  return fullMetadataValues;
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

- (void)addPagesToDictionary:(id)dictionary
{
  v3 = MEMORY[0x277CCABB8];
  v4 = MEMORY[0x277CCABB0];
  pdfDocument = self->_pdfDocument;
  dictionaryCopy = dictionary;
  v8 = [v4 numberWithUnsignedLong:CGPDFDocumentGetNumberOfPages(pdfDocument)];
  v7 = [v3 localizedStringFromNumber:v8 numberStyle:0];
  [dictionaryCopy setObject:v7 forKeyedSubscript:@"Pages"];
}

- (void)addSecureToDictionary:(id)dictionary
{
  pdfDocument = self->_pdfDocument;
  dictionaryCopy = dictionary;
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

  [dictionaryCopy setObject:v10 forKeyedSubscript:@"Security"];
}

- (void)addVersionToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  majorVersion = 0;
  minorVersion = 0;
  CGPDFDocumentGetVersion(self->_pdfDocument, &majorVersion, &minorVersion);
  if (majorVersion >= 1)
  {
    minorVersion = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d", majorVersion, minorVersion];
    [dictionaryCopy setObject:minorVersion forKeyedSubscript:@"Version"];
  }
}

- (void)addSizeToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (CGPDFDocumentGetNumberOfPages(self->_pdfDocument))
  {
    Page = CGPDFDocumentGetPage(self->_pdfDocument, 1uLL);
    if (Page)
    {
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
      v5 = DOCLocalizedMetadataStringForWidthByHeight(BoxRect.size.width, BoxRect.size.height);
      [dictionaryCopy setObject:v5 forKeyedSubscript:@"Resolution"];
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