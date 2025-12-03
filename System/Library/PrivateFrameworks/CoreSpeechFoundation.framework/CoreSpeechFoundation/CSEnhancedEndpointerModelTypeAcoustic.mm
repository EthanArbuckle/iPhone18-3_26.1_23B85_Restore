@interface CSEnhancedEndpointerModelTypeAcoustic
- (uint64_t)setEndpointerType:(uint64_t)type;
- (uint64_t)setFeatureCount:(uint64_t)count;
@end

@implementation CSEnhancedEndpointerModelTypeAcoustic

- (uint64_t)setFeatureCount:(uint64_t)count
{
  result = swift_beginAccess();
  *(self + 16) = count;
  return result;
}

- (uint64_t)setEndpointerType:(uint64_t)type
{
  result = swift_beginAccess();
  *(self + 48) = type;
  return result;
}

@end