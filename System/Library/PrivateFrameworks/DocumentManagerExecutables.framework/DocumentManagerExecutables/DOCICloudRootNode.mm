@interface DOCICloudRootNode
- (FINode)fileParent;
- (FINode)parent;
- (FPItem)fpfs_fpItem;
- (NSArray)itemDecorations;
- (NSArray)tags;
- (NSNumber)childItemCount;
- (NSNumber)fileSize;
- (NSPersonNameComponents)ownerNameComponents;
- (NSProgress)copyingProgress;
- (NSProgress)downloadingProgress;
- (NSProgress)uploadingProgress;
- (NSString)displayName;
- (NSString)filename;
- (NSString)typeIdentifier;
- (NSURL)fileURL;
- (_TtC26DocumentManagerExecutables17DOCICloudRootNode)init;
- (_TtC26DocumentManagerExecutables17DOCICloudRootNode)initWithCoder:(id)coder;
- (char)source;
- (id)identifier;
- (unint64_t)nodeIs:(unint64_t)is error:(id *)error;
- (unsigned)nodePermissions:(unsigned int)permissions error:(id *)error;
- (unsigned)volumeIs:(unsigned int)is error:(id *)error;
@end

@implementation DOCICloudRootNode

- (NSURL)fileURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  selfCopy = self;
  DOCICloudRootNode.fileURL.getter(v6);

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

- (FPItem)fpfs_fpItem
{
  fpfs_fpItem = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) fpfs_fpItem];

  return fpfs_fpItem;
}

- (NSString)displayName
{
  selfCopy = self;
  v3 = DOCICloudRootNode.displayName.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (unint64_t)nodeIs:(unint64_t)is error:(id *)error
{
  result = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (result)
  {
    return [result nodeIs:is error:error];
  }

  return result;
}

- (unsigned)nodePermissions:(unsigned int)permissions error:(id *)error
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v4)
  {
    LODWORD(v4) = [v4 nodePermissions:*&permissions error:error] & 0xFFEDDC04;
  }

  return v4;
}

- (char)source
{
  v1 = *&self[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer];
  if (v1)
  {
    selfCopy = *&self[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer];
  }

  else
  {
    selfCopy = self;
    v1 = 0;
  }

  v3 = v1;

  return selfCopy;
}

- (_TtC26DocumentManagerExecutables17DOCICloudRootNode)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_deferredCreationNode) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_observerBlock);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer) = 0;
  type metadata accessor for DOCICloudRootNode();
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtC26DocumentManagerExecutables17DOCICloudRootNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (FINode)fileParent
{
  fileParent = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) fileParent];

  return fileParent;
}

- (FINode)parent
{
  parent = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) parent];

  return parent;
}

- (id)identifier
{
  selfCopy = self;
  DOCICloudRootNode.identifier.getter(v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v5);

  return v3;
}

- (NSString)typeIdentifier
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v2)
  {
    selfCopy = self;
    typeIdentifier = [v2 typeIdentifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xEB000000006D6574;
    v5 = 0x692E63696C627570;
  }

  v8 = MEMORY[0x24C1FAD20](v5, v7);

  return v8;
}

- (NSNumber)fileSize
{
  fileSize = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) fileSize];

  return fileSize;
}

- (NSNumber)childItemCount
{
  childItemCount = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) childItemCount];

  return childItemCount;
}

- (NSString)filename
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v2)
  {
    selfCopy = self;
    filename = [v2 filename];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = MEMORY[0x24C1FAD20](v5, v7);

  return v8;
}

- (NSProgress)downloadingProgress
{
  downloadingProgress = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) downloadingProgress];

  return downloadingProgress;
}

- (NSProgress)uploadingProgress
{
  uploadingProgress = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) uploadingProgress];

  return uploadingProgress;
}

- (NSProgress)copyingProgress
{
  copyingProgress = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) copyingProgress];

  return copyingProgress;
}

- (NSPersonNameComponents)ownerNameComponents
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  selfCopy = self;
  DOCICloudRootNode.ownerNameComponents.getter(v6);

  v8 = type metadata accessor for PersonNameComponents();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (NSArray)itemDecorations
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v2)
  {
    selfCopy2 = self;
    itemDecorations = [v2 itemDecorations];
    if (itemDecorations)
    {
      v5 = itemDecorations;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemDecoration);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      selfCopy2 = v5;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemDecoration);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (NSArray)tags
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v2)
  {
    selfCopy = self;
    tags = [v2 tags];
    if (tags)
    {
      v5 = tags;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Array._bridgeToObjectiveC()().super.isa;

      v7 = isa;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (unsigned)volumeIs:(unsigned int)is error:(id *)error
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v4)
  {
    LODWORD(v4) = [v4 volumeIs:*&is error:error];
  }

  return v4;
}

@end