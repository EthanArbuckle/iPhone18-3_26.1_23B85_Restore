@interface DOCSBFolderState
- (BOOL)compareOrderedFilesToOtherOrderedFiles:(id)a3;
- (DOCSBFolderState)init;
- (DOCSBFolderState)initWithIdentifier:(id)a3 fileURL:(id)a4;
- (NSArray)orderedFiles;
- (NSString)folderIdentifier;
- (NSURL)folderURL;
- (void)setFolderIdentifier:(id)a3;
- (void)setFolderURL:(id)a3;
- (void)setOrderedFiles:(id)a3;
- (void)set_folderURL:(id)a3;
@end

@implementation DOCSBFolderState

- (NSString)folderIdentifier
{
  v2 = *(self + OBJC_IVAR___DOCSBFolderState_folderIdentifier);
  v3 = *(self + OBJC_IVAR___DOCSBFolderState_folderIdentifier + 8);

  v4 = sub_24938A42C();

  return v4;
}

- (void)setFolderIdentifier:(id)a3
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

- (void)setOrderedFiles:(id)a3
{
  sub_24938A2FC();
  v4 = sub_24938A4FC();
  v5 = *(self + OBJC_IVAR___DOCSBFolderState_orderedFiles);
  *(self + OBJC_IVAR___DOCSBFolderState_orderedFiles) = v4;
  v6 = self;

  sub_24937D1BC();
}

- (NSURL)folderURL
{
  v3 = sub_24938A2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  v9 = [(DOCSBFolderState *)v8 _folderURL];
  sub_24938A2DC();

  v10 = sub_24938A2CC();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (void)setFolderURL:(id)a3
{
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24938A2DC();
  v9 = self;
  v10 = sub_24938A2CC();
  [(DOCSBFolderState *)v9 set_folderURL:v10];

  (*(v5 + 8))(v8, v4);
}

- (void)set_folderURL:(id)a3
{
  v4 = *(self + OBJC_IVAR___DOCSBFolderState__folderURL);
  *(self + OBJC_IVAR___DOCSBFolderState__folderURL) = a3;
  v3 = a3;
}

- (DOCSBFolderState)initWithIdentifier:(id)a3 fileURL:(id)a4
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

- (BOOL)compareOrderedFilesToOtherOrderedFiles:(id)a3
{
  sub_24938A2FC();
  v4 = sub_24938A4FC();
  v5 = self;
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