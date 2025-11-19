@interface HKCDAPDFGenerator
+ (id)PDFTranslator;
- (HKCDAPDFGenerator)init;
- (void)_finishGenerationWithURL:(id)a3 tempFileDescriptor:(int)a4 completionHandler:(id)a5 error:(id)a6;
- (void)_pdfForHTML:(id)a3 completionHandler:(id)a4;
- (void)generatePDFForCDAXML:(id)a3 completionHandler:(id)a4;
@end

@implementation HKCDAPDFGenerator

- (HKCDAPDFGenerator)init
{
  v3.receiver = self;
  v3.super_class = HKCDAPDFGenerator;
  return [(HKCDAPDFGenerator *)&v3 init];
}

- (void)generatePDFForCDAXML:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

void __60__HKCDAPDFGenerator_generatePDFForCDAXML_completionHandler___block_invoke(uint64_t a1)
{
  v3 = +[HKCDAPDFGenerator PDFTranslator];
  v2 = [v3 convertToHTMLFromXML:*(a1 + 32)];
  [*(a1 + 40) _pdfForHTML:v2 completionHandler:*(a1 + 48)];
}

- (void)_pdfForHTML:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__HKCDAPDFGenerator__pdfForHTML_completionHandler___block_invoke;
  block[3] = &unk_1E81B5A60;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__HKCDAPDFGenerator__pdfForHTML_completionHandler___block_invoke(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [[HKCDAPDFPrintPageRenderer alloc] initWithPaperRect:0.0 horizontalMargin:0.0 verticalMargin:612.0, 792.0, 36.0, 72.0];
  v3 = [objc_alloc(MEMORY[0x1E69C5A00]) initWithMarkupText:*(a1 + 32)];
  [(UIPrintPageRenderer *)v2 addPrintFormatter:v3 startingAtPageAtIndex:0];
  v4 = NSTemporaryDirectory();
  v18[0] = v4;
  v18[1] = @"cda_report_XXXXXX.pdf";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v6 = [MEMORY[0x1E696AEC0] pathWithComponents:v5];
  strncpy(__dst, [v6 UTF8String], 0x400uLL);
  __dst[1023] = 0;
  v7 = mkstemps(__dst, 4);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = [MEMORY[0x1E696ABC0] hk_error:3 format:{@"Failed to create temporary file for generating PDF: %@", v6}];
    [*(a1 + 40) _finishGenerationWithURL:0 tempFileDescriptor:v7 completionHandler:*(a1 + 48) error:v8];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__dst];
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v10 = [MEMORY[0x1E69C5A18] sharedPrintController];
    [v10 setPrintPageRenderer:v2];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__HKCDAPDFGenerator__pdfForHTML_completionHandler___block_invoke_2;
    v13[3] = &unk_1E81B8DA0;
    v13[4] = *(a1 + 40);
    v11 = v9;
    v14 = v11;
    v16 = v7;
    v15 = *(a1 + 48);
    if (([v10 savePDFToURL:v11 completionHandler:v13] & 1) == 0)
    {
      v12 = [MEMORY[0x1E696ABC0] hk_error:3 format:@"Failed to generate PDF for Health Report"];
      [*(a1 + 40) _finishGenerationWithURL:0 tempFileDescriptor:v7 completionHandler:*(a1 + 48) error:v12];
    }
  }
}

uint64_t __51__HKCDAPDFGenerator__pdfForHTML_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = 0;
  }

  else
  {
    v9 = a4;
    v6 = *(a1 + 56);
    v8 = *(a1 + 48);
    v7 = 0;
  }

  return [v5 _finishGenerationWithURL:v7 tempFileDescriptor:v6 completionHandler:v8 error:v9];
}

- (void)_finishGenerationWithURL:(id)a3 tempFileDescriptor:(int)a4 completionHandler:(id)a5 error:(id)a6
{
  v11 = a3;
  v9 = a5;
  v10 = a6;
  v9[2](v9, v11 != 0);
  if ((a4 & 0x80000000) == 0)
  {
    close(a4);
  }
}

+ (id)PDFTranslator
{
  if (PDFTranslator_oncePredicate != -1)
  {
    +[HKCDAPDFGenerator PDFTranslator];
  }

  v3 = PDFTranslator_translator;

  return v3;
}

void __34__HKCDAPDFGenerator_PDFTranslator__block_invoke()
{
  v0 = HKHealthUIFrameworkBundle();
  v5 = [v0 pathForResource:@"CDAPDFINTL" ofType:@"xsl"];

  v1 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [v1 contentsAtPath:v5];

  v3 = [objc_alloc(MEMORY[0x1E696C688]) initWithXSL:v2 localizationTableName:@"CDA" localizationOverride:0];
  v4 = PDFTranslator_translator;
  PDFTranslator_translator = v3;
}

@end