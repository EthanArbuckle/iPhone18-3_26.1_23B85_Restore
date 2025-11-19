@interface CSEnhancedEndpointerModelTypeAcoustic
- (uint64_t)setEndpointerType:(uint64_t)a3;
- (uint64_t)setFeatureCount:(uint64_t)a3;
@end

@implementation CSEnhancedEndpointerModelTypeAcoustic

- (uint64_t)setFeatureCount:(uint64_t)a3
{
  result = swift_beginAccess();
  *(a1 + 16) = a3;
  return result;
}

- (uint64_t)setEndpointerType:(uint64_t)a3
{
  result = swift_beginAccess();
  *(a1 + 48) = a3;
  return result;
}

@end