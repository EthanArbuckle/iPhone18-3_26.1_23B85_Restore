@interface SFTabSnapshotMetadata
- (BOOL)includesTransparentBorderPadding;
- (CGSize)windowSize;
- (NSDate)dateCreated;
- (NSNumber)includedBannerHeight;
- (NSString)description;
- (NSString)fileName;
- (NSUUID)identifier;
- (NSUUID)windowUUID;
- (SFTabSnapshotMetadata)init;
- (SFTabSnapshotMetadata)initWithIdentifier:(id)identifier;
- (UIEdgeInsets)horizontalObscuredInsets;
- (UIEdgeInsets)horizontalObscuredPercentage;
- (double)topBackdropHeight;
- (id)copyWithZone:(void *)zone;
- (void)setDateCreated:(id)created;
- (void)setFileName:(id)name;
- (void)setHorizontalObscuredInsets:(UIEdgeInsets)insets;
- (void)setIncludedBannerHeight:(id)height;
- (void)setIncludesTransparentBorderPadding:(BOOL)padding;
- (void)setTopBackdropHeight:(double)height;
- (void)setWindowSize:(CGSize)size;
- (void)setWindowUUID:(id)d;
@end

@implementation SFTabSnapshotMetadata

- (NSDate)dateCreated
{
  v3 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7 + 16;
  v9 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v9, v17);
  swift_dynamicCast();
  sub_18B7CA054(v5, v8, &unk_1EA9DB1B0);
  sub_18BC13E34(v5);
  v10 = sub_18BC1EB88();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_18BC1EB18();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

- (void)setDateCreated:(id)created
{
  v5 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  if (created)
  {
    sub_18BC1EB58();
    v11 = sub_18BC1EB88();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_18BC1EB88();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v13, v17);
  selfCopy = self;
  swift_dynamicCast();
  sub_18B7EC8D0(v10, v7, &unk_1EA9DB1B0);
  v18 = v5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v17);
  sub_18BC13E90(v7, boxed_opaque_existential_0Tm);
  sub_18B988BAC(v10, &unk_1EA9DB1B0);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(self + v13);
  sub_18B7B1AD4(v17, (self + v13));
  swift_endAccess();
}

- (NSString)description
{
  selfCopy = self;
  SFTabSnapshotMetadata.description.getter();

  v3 = sub_18BC20B98();

  return v3;
}

- (NSString)fileName
{
  v3 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v6, v11);
  swift_dynamicCast();
  v7 = *&v5[*(v3 + 20) + 8];
  sub_18BC1E3F8();
  sub_18BC13E34(v5);
  if (v7)
  {
    v8 = sub_18BC20B98();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setFileName:(id)name
{
  v5 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (name)
  {
    v8 = sub_18BC20BD8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v11, &v16);
  selfCopy = self;
  swift_dynamicCast();
  v13 = &v7[*(v5 + 20)];
  *v13 = v8;
  v13[1] = v10;

  v17 = v5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v16);
  sub_18BC13E90(v7, boxed_opaque_existential_0Tm);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(self + v11);
  sub_18B7B1AD4(&v16, (self + v11));
  swift_endAccess();
}

- (NSUUID)identifier
{
  v3 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v10, v14);
  swift_dynamicCast();
  (*(v7 + 16))(v9, &v5[*(v3 + 28)], v6);
  sub_18BC13E34(v5);
  v11 = sub_18BC1EBC8();
  (*(v7 + 8))(v9, v6);

  return v11;
}

- (UIEdgeInsets)horizontalObscuredInsets
{
  v3 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v6, v17);
  swift_dynamicCast();
  v7 = &v5[*(v3 + 24)];
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  sub_18BC13E34(v5);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)setHorizontalObscuredInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v11, &v16);
  selfCopy = self;
  swift_dynamicCast();
  v13 = &v10[*(v8 + 24)];
  *v13 = top;
  v13[1] = left;
  v13[2] = bottom;
  v13[3] = right;
  v17 = v8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v16);
  sub_18BC13E90(v10, boxed_opaque_existential_0Tm);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(self + v11);
  sub_18B7B1AD4(&v16, (self + v11));
  swift_endAccess();
}

- (UIEdgeInsets)horizontalObscuredPercentage
{
  selfCopy = self;
  [(SFTabSnapshotMetadata *)selfCopy windowSize];
  if (v3 == 0.0)
  {
    v5 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    [(SFTabSnapshotMetadata *)selfCopy horizontalObscuredInsets];
    v9 = v8;
    [(SFTabSnapshotMetadata *)selfCopy windowSize];
    v4 = v9 / v10;
    [(SFTabSnapshotMetadata *)selfCopy horizontalObscuredInsets];
    v12 = v11;
    [(SFTabSnapshotMetadata *)selfCopy windowSize];
    v14 = v13;

    v5 = 0.0;
    v6 = 0.0;
    v7 = v12 / v14;
  }

  v15 = v5;
  v16 = v4;
  v17 = v6;
  v18 = v7;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (NSNumber)includedBannerHeight
{
  selfCopy = self;
  v3 = sub_18BC12C78();

  return v3;
}

- (void)setIncludedBannerHeight:(id)height
{
  heightCopy = height;
  selfCopy = self;
  sub_18BC12DE0(height);
}

- (BOOL)includesTransparentBorderPadding
{
  v3 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v6, v9);
  swift_dynamicCast();
  LOBYTE(self) = v5[*(v3 + 36)];
  sub_18BC13E34(v5);
  return self;
}

- (void)setIncludesTransparentBorderPadding:(BOOL)padding
{
  v5 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v8, &v12);
  selfCopy = self;
  swift_dynamicCast();
  v7[*(v5 + 36)] = padding;
  v13 = v5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v12);
  sub_18BC13E90(v7, boxed_opaque_existential_0Tm);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(self + v8);
  sub_18B7B1AD4(&v12, (self + v8));
  swift_endAccess();
}

- (double)topBackdropHeight
{
  v3 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v6, v10);
  swift_dynamicCast();
  v7 = *&v5[*(v3 + 40)];
  sub_18BC13E34(v5);
  return v7;
}

- (void)setTopBackdropHeight:(double)height
{
  v5 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v8, &v12);
  selfCopy = self;
  swift_dynamicCast();
  *&v7[*(v5 + 40)] = height;
  v13 = v5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v12);
  sub_18BC13E90(v7, boxed_opaque_existential_0Tm);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(self + v8);
  sub_18B7B1AD4(&v12, (self + v8));
  swift_endAccess();
}

- (CGSize)windowSize
{
  v3 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v6, v13);
  swift_dynamicCast();
  v7 = &v5[*(v3 + 44)];
  v8 = *v7;
  v9 = v7[1];
  sub_18BC13E34(v5);
  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v9, &v14);
  selfCopy = self;
  swift_dynamicCast();
  v11 = &v8[*(v6 + 44)];
  *v11 = width;
  v11[1] = height;
  v15 = v6;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v14);
  sub_18BC13E90(v8, boxed_opaque_existential_0Tm);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(self + v9);
  sub_18B7B1AD4(&v14, (self + v9));
  swift_endAccess();
}

- (NSUUID)windowUUID
{
  v3 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7 + 16;
  v9 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v9, v17);
  swift_dynamicCast();
  sub_18B7CA054(&v5[*(v3 + 48)], v8, &unk_1EA9D3AE0);
  sub_18BC13E34(v5);
  v10 = sub_18BC1EC08();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_18BC1EBC8();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

- (void)setWindowUUID:(id)d
{
  v5 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  if (d)
  {
    sub_18BC1EBE8();
    v11 = sub_18BC1EC08();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_18BC1EC08();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v13, v17);
  selfCopy = self;
  swift_dynamicCast();
  sub_18B7EC8D0(v10, &v7[*(v5 + 48)], &unk_1EA9D3AE0);
  v18 = v5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v17);
  sub_18BC13E90(v7, boxed_opaque_existential_0Tm);
  sub_18B988BAC(v10, &unk_1EA9D3AE0);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(self + v13);
  sub_18B7B1AD4(v17, (self + v13));
  swift_endAccess();
}

- (SFTabSnapshotMetadata)initWithIdentifier:(id)identifier
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EBE8();
  v8 = (self + OBJC_IVAR___SFTabSnapshotMetadata__wrapped);
  v9 = _s8MetadataVMa();
  v8[3] = v9;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v8);
  v11 = sub_18BC1EB88();
  (*(*(v11 - 8) + 56))(boxed_opaque_existential_0Tm, 1, 1, v11);
  (*(v5 + 16))(boxed_opaque_existential_0Tm + v9[7], v7, v4);
  (*(v5 + 56))(boxed_opaque_existential_0Tm + v9[12], 1, 1, v4);
  v12 = (boxed_opaque_existential_0Tm + v9[5]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (boxed_opaque_existential_0Tm + v9[6]);
  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  *v13 = *MEMORY[0x1E69DDCE0];
  v13[1] = v14;
  v15 = boxed_opaque_existential_0Tm + v9[8];
  *v15 = 0;
  v15[8] = 0;
  *(boxed_opaque_existential_0Tm + v9[9]) = 0;
  *(boxed_opaque_existential_0Tm + v9[10]) = 0;
  v16 = (boxed_opaque_existential_0Tm + v9[11]);
  *v16 = 0;
  v16[1] = 0;
  v19.receiver = self;
  v19.super_class = SFTabSnapshotMetadata;
  v17 = [(SFTabSnapshotMetadata *)&v19 init];
  (*(v5 + 8))(v7, v4);
  return v17;
}

- (id)copyWithZone:(void *)zone
{
  v4 = _s8MetadataVMa();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___SFTabSnapshotMetadata__wrapped;
  swift_beginAccess();
  sub_18B7B193C(self + v7, v16);
  selfCopy = self;
  swift_dynamicCast();
  v9 = objc_allocWithZone(SFTabSnapshotMetadata);
  v10 = &v9[OBJC_IVAR___SFTabSnapshotMetadata__wrapped];
  v10[3] = v4;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v10);
  sub_18BBB641C(v6, boxed_opaque_existential_0Tm);
  v15.receiver = v9;
  v15.super_class = SFTabSnapshotMetadata;
  v12 = [(SFTabSnapshotMetadata *)&v15 init];
  sub_18BC13E34(v6);

  return v12;
}

- (SFTabSnapshotMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end