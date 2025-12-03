@interface LocalItem
- (NSArray)conflictingVersions;
- (NSDictionary)extendedAttributes;
- (NSNumber)hasUnresolvedConflicts;
- (NSPersonNameComponents)mostRecentEditorNameComponents;
- (NSString)description;
- (NSString)filename;
- (NSString)fp_appContainerBundleIdentifier;
- (NSURL)fileURL;
- (UTType)contentType;
- (_TtC18FileProviderDaemon9LocalItem)init;
- (void)setFileURL:(id)l;
@end

@implementation LocalItem

- (NSString)description
{
  selfCopy = self;
  sub_1CF009330();

  v3 = sub_1CF9E6888();

  return v3;
}

- (NSString)filename
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename);
  v3 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename + 8);

  v4 = sub_1CF9E6888();

  return v4;
}

- (UTType)contentType
{
  v3 = sub_1CF9E5FF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentType, v3);
  v8 = sub_1CF9E5F38();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSPersonNameComponents)mostRecentEditorNameComponents
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  sub_1CEFCCBDC(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_mostRecentEditorNameComponents, &v13 - v5, &qword_1EC4C1180, &unk_1CFA18170);
  v7 = sub_1CF9E5748();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1CF9E5728();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (NSURL)fileURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CEFCCBDC(self + v7, v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1CF9E5928();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (NSNumber)hasUnresolvedConflicts
{
  if (*(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_conflictingVersions))
  {
    v3 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_conflictingVersions);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v3 >> 62)
  {
    sub_1CF9E7818();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  selfCopy = self;

  v6 = sub_1CF9E7548();

  return v6;
}

- (NSArray)conflictingVersions
{
  if (*(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_conflictingVersions))
  {
    sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);

    v2 = sub_1CF9E6D28();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSDictionary)extendedAttributes
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_extendedAttributes);

  v3 = sub_1CF9E6618();

  return v3;
}

- (void)setFileURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (l)
  {
    sub_1CF9E59D8();
    v9 = sub_1CF9E5A58();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1CF9E5A58();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  selfCopy = self;
  sub_1CEFDA9E0(v8, self + v11, &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
}

- (NSString)fp_appContainerBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_isContainer) == 1)
  {
    if (*(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_spotlightSubDomainIdentifier + 8))
    {
      v3 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_spotlightSubDomainIdentifier);
      v4 = *(self + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_spotlightSubDomainIdentifier + 8);

      v5 = sub_1CF9E6888();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_TtC18FileProviderDaemon9LocalItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end