@interface DOCSBFolderState
- (BOOL)compareOrderedFilesToOtherOrderedFiles:(id)files;
- (DOCSBFolderState)init;
- (DOCSBFolderState)initWithIdentifier:(id)identifier fileURL:(id)l;
- (NSArray)orderedFiles;
- (NSString)folderIdentifier;
- (NSURL)folderURL;
- (void)setFolderIdentifier:(id)identifier;
- (void)setFolderURL:(id)l;
- (void)setOrderedFiles:(id)files;
- (void)set_folderURL:(id)l;
@end

@implementation DOCSBFolderState

- (NSString)folderIdentifier
{
  v2 = *(self + OBJC_IVAR___DOCSBFolderState_folderIdentifier);
  v3 = *(self + OBJC_IVAR___DOCSBFolderState_folderIdentifier + 8);

  v4 = sub_24938A42C();

  return v4;
}

- (void)setFolderIdentifier:(id)identifier
{
  v4 = sub_24938A45C();
  v5 = (self + OBJC_IVAR___DOCSBFolderState_folderIdentifier);
  v6 = *(self + OBJC_IVAR___DOCSBFolderState_folderIdentifier + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (NSArray)orderedFiles
{
  v2 = *(self + OBJC_IVAR___DOCSBFolderState_orderedFiles);
  sub_24938A2FC();

  v3 = sub_24938A4EC();

  return v3;
}

- (void)setOrderedFiles:(id)files
{
  sub_24938A2FC();
  v4 = sub_24938A4FC();
  v5 = *(self + OBJC_IVAR___DOCSBFolderState_orderedFiles);
  *(self + OBJC_IVAR___DOCSBFolderState_orderedFiles) = v4;
  selfCopy = self;

  sub_24937D1BC();
}

- (NSURL)folderURL
{
  v3 = sub_24938A2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  _folderURL = [(DOCSBFolderState *)selfCopy _folderURL];
  sub_24938A2DC();

  v10 = sub_24938A2CC();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (void)setFolderURL:(id)l
{
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24938A2DC();
  selfCopy = self;
  v10 = sub_24938A2CC();
  [(DOCSBFolderState *)selfCopy set_folderURL:v10];

  (*(v5 + 8))(v8, v4);
}

- (void)set_folderURL:(id)l
{
  v4 = *(self + OBJC_IVAR___DOCSBFolderState__folderURL);
  *(self + OBJC_IVAR___DOCSBFolderState__folderURL) = l;
  lCopy = l;
}

- (DOCSBFolderState)initWithIdentifier:(id)identifier fileURL:(id)l
{
  v5 = sub_24938A2FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24938A45C();
  v12 = v11;
  sub_24938A2DC();
  v13 = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs) = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___DOCSBFolderState_orderedFiles) = v13;
  v14 = (self + OBJC_IVAR___DOCSBFolderState_folderIdentifier);
  *v14 = v10;
  v14[1] = v12;
  *(self + OBJC_IVAR___DOCSBFolderState__folderURL) = sub_24938A2CC();
  v17.receiver = self;
  v17.super_class = DOCSBFolderState;
  v15 = [(DOCSBFolderState *)&v17 init];
  (*(v6 + 8))(v9, v5);
  return v15;
}

- (BOOL)compareOrderedFilesToOtherOrderedFiles:(id)files
{
  sub_24938A2FC();
  v4 = sub_24938A4FC();
  selfCopy = self;
  v6 = sub_24937DB50(v4);

  return v6 & 1;
}

- (DOCSBFolderState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end