@interface SaveForLaterUIActivity
- (BOOL)canPerformWithTabDocument:(id)document;
- (NSString)activityTitle;
- (SaveForLaterUIActivity)init;
- (id)_systemImageName;
- (void)performActivityWithTabDocument:(id)document;
@end

@implementation SaveForLaterUIActivity

- (NSString)activityTitle
{
  _sSo22SaveForLaterUIActivityC14MobileSafariUIE13activityTitleSSSgvg_0();
  if (v2)
  {
    v3 = sub_215A70500();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_systemImageName
{
  v2 = sub_215A70500();

  return v2;
}

- (BOOL)canPerformWithTabDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  v6 = _sSo22SaveForLaterUIActivityC14MobileSafariUIE10canPerform4withSbSo11TabDocumentC_tF_0(documentCopy);

  return v6 & 1;
}

- (void)performActivityWithTabDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  browserController = [documentCopy browserController];
  if (!browserController)
  {
    goto LABEL_4;
  }

  v6 = browserController;
  if ([browserController showDemoModeFeatureDisabledAlert])
  {

LABEL_4:
    [(_SFActivity *)selfCopy activityDidFinish:0];
    goto LABEL_6;
  }

  [v6 fastAddBookmarkForTabDocument_];
  [(_SFActivity *)selfCopy activityDidFinish:1];

LABEL_6:
}

- (SaveForLaterUIActivity)init
{
  v3.receiver = self;
  v3.super_class = SaveForLaterUIActivity;
  return [(UIActivity *)&v3 init];
}

@end