@interface DOCFolderIconCustomizationApplicator
- (_TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator)init;
- (void)nodeChanged:(id)a3 for:(unsigned int)a4;
@end

@implementation DOCFolderIconCustomizationApplicator

- (void)nodeChanged:(id)a3 for:(unsigned int)a4
{
  v6 = a3;
  v7 = self;
  DOCFolderIconCustomizationApplicator.changed(_:for:)(v6, a4);
}

- (_TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end