@interface DOCFolderIconCustomizationApplicator
- (_TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator)init;
- (void)nodeChanged:(id)changed for:(unsigned int)for;
@end

@implementation DOCFolderIconCustomizationApplicator

- (void)nodeChanged:(id)changed for:(unsigned int)for
{
  changedCopy = changed;
  selfCopy = self;
  DOCFolderIconCustomizationApplicator.changed(_:for:)(changedCopy, for);
}

- (_TtC26DocumentManagerExecutables36DOCFolderIconCustomizationApplicator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end