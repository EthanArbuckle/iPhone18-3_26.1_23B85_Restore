@interface PHMediaFormatConversionJob
- (id)description;
@end

@implementation PHMediaFormatConversionJob

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  conversionRequest = [(PHMediaFormatConversionJob *)self conversionRequest];
  identifier = [conversionRequest identifier];
  v8 = [v3 stringWithFormat:@"<%@ %p request identifier=%@>", v5, self, identifier];

  return v8;
}

@end