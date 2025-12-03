@interface CDMLVCResponseCommand
- (CDMLVCResponseCommand)initWithITFMResponse:(id)response languageVariantResult:(id)result;
- (id)description;
@end

@implementation CDMLVCResponseCommand

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"languageVariantResult.multilingualVariants: "];
  languageVariantResult = [(CDMLVCResponseCommand *)self languageVariantResult];
  multilingualVariants = [languageVariantResult multilingualVariants];
  v6 = [multilingualVariants count];

  if (v6)
  {
    v7 = 0;
    do
    {
      languageVariantResult2 = [(CDMLVCResponseCommand *)self languageVariantResult];
      multilingualVariants2 = [languageVariantResult2 multilingualVariants];
      v10 = [multilingualVariants2 objectAtIndexedSubscript:v7];

      languageVariantName = [v10 languageVariantName];
      [v10 languageVariantScore];
      [v3 appendFormat:@"[%lu] %@=%.2f, ", v7, languageVariantName, v12];

      ++v7;
      languageVariantResult3 = [(CDMLVCResponseCommand *)self languageVariantResult];
      multilingualVariants3 = [languageVariantResult3 multilingualVariants];
      v15 = [multilingualVariants3 count];
    }

    while (v7 < v15);
  }

  return v3;
}

- (CDMLVCResponseCommand)initWithITFMResponse:(id)response languageVariantResult:(id)result
{
  responseCopy = response;
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = CDMLVCResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itfmResponse, response);
    objc_storeStrong(&v10->_languageVariantResult, result);
  }

  return v10;
}

@end