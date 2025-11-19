@interface MSVMutableArtworkColorAnalysis
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MSVMutableArtworkColorAnalysis

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(MSVArtworkColorAnalysis *)self _copyWithClass:v4];
}

@end