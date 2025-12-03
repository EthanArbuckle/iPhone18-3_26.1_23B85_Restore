@interface MSVMutableArtworkColorAnalysis
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MSVMutableArtworkColorAnalysis

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(MSVArtworkColorAnalysis *)self _copyWithClass:v4];
}

@end