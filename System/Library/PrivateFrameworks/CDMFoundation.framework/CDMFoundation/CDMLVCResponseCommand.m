@interface CDMLVCResponseCommand
- (CDMLVCResponseCommand)initWithITFMResponse:(id)a3 languageVariantResult:(id)a4;
- (id)description;
@end

@implementation CDMLVCResponseCommand

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"languageVariantResult.multilingualVariants: "];
  v4 = [(CDMLVCResponseCommand *)self languageVariantResult];
  v5 = [v4 multilingualVariants];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(CDMLVCResponseCommand *)self languageVariantResult];
      v9 = [v8 multilingualVariants];
      v10 = [v9 objectAtIndexedSubscript:v7];

      v11 = [v10 languageVariantName];
      [v10 languageVariantScore];
      [v3 appendFormat:@"[%lu] %@=%.2f, ", v7, v11, v12];

      ++v7;
      v13 = [(CDMLVCResponseCommand *)self languageVariantResult];
      v14 = [v13 multilingualVariants];
      v15 = [v14 count];
    }

    while (v7 < v15);
  }

  return v3;
}

- (CDMLVCResponseCommand)initWithITFMResponse:(id)a3 languageVariantResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMLVCResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itfmResponse, a3);
    objc_storeStrong(&v10->_languageVariantResult, a4);
  }

  return v10;
}

@end