@interface CKResolvedBubbleMaterialConfiguration
- (CAFilter)outlineColorMatrixFilter;
- (CKResolvedBubbleMaterialConfiguration)init;
- (NSArray)filters;
- (double)backdropScale;
@end

@implementation CKResolvedBubbleMaterialConfiguration

- (double)backdropScale
{
  v3 = sub_190D56B90();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v3, v5);
  sub_190D56B40();
  v9 = v8;
  (*(v4 + 8))(v7, v3);
  return v9;
}

- (NSArray)filters
{
  v3 = sub_190D56B90();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v3, v5);
  sub_190D56B80();
  (*(v4 + 8))(v7, v3);
  sub_1909515A4();
  v8 = sub_190D57160();

  return v8;
}

- (CAFilter)outlineColorMatrixFilter
{
  v3 = sub_190D56A60();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D56B90();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, self + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v7, v9);
  selfCopy = self;
  sub_190D56B50();
  (*(v8 + 8))(v11, v7);
  v13 = sub_190D56A50();

  (*(v4 + 8))(v6, v3);

  return v13;
}

- (CKResolvedBubbleMaterialConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end