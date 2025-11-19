@interface SFTabIconPool
- (SFTabIconPool)init;
- (SFTabIconPool)initWithSiteMetadataManager:(id)a3;
- (id)existingIconProvider;
- (id)extensionIconProvider;
- (id)makeRegistrationForIdentifier:(id)a3;
- (id)urlProvider;
- (void)iconDidChangeForIdentifier:(id)a3;
- (void)setExistingIconProvider:(id)a3;
- (void)setExtensionIconProvider:(id)a3;
- (void)setUrlProvider:(id)a3;
@end

@implementation SFTabIconPool

- (SFTabIconPool)initWithSiteMetadataManager:(id)a3
{
  v3 = a3;
  v4 = sub_18B7B0E34(v3);

  return v4;
}

- (void)setExistingIconProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___SFTabIconPool_wrapped);
  *(v6 + 16) = sub_18B8572D8;
  *(v6 + 24) = v5;
}

- (void)setUrlProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___SFTabIconPool_wrapped);
  *(v6 + 48) = sub_18B999A2C;
  *(v6 + 56) = v5;
}

- (void)setExtensionIconProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___SFTabIconPool_wrapped);
  *(v6 + 32) = sub_18B999A34;
  *(v6 + 40) = v5;
}

- (void)iconDidChangeForIdentifier:(id)a3
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EBE8();
  v8 = self;
  sub_18BC1E1A8();
  sub_18B80F8C4(v7);
  if (sub_18B80FBA8(v7))
  {

    sub_18BA61EC0(v7);
  }

  (*(v5 + 8))(v7, v4);
}

- (id)existingIconProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabIconPool_wrapped);
  v3 = *(v2 + 24);
  v6[4] = *(v2 + 16);
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_18B998A8C;
  v6[3] = &block_descriptor_22;
  v4 = _Block_copy(v6);
  sub_18BC1E1A8();

  return v4;
}

- (id)extensionIconProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabIconPool_wrapped);
  v3 = *(v2 + 40);
  v6[4] = *(v2 + 32);
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_18B998C50;
  v6[3] = &block_descriptor_16;
  v4 = _Block_copy(v6);
  sub_18BC1E1A8();

  return v4;
}

- (id)urlProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFTabIconPool_wrapped);
  v3 = *(v2 + 56);
  v6[4] = *(v2 + 48);
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_18B998F40;
  v6[3] = &block_descriptor_10;
  v4 = _Block_copy(v6);
  sub_18BC1E1A8();

  return v4;
}

- (id)makeRegistrationForIdentifier:(id)a3
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EBE8();
  v8 = self;
  v9 = sub_18B9991F4(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (SFTabIconPool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end