@interface SaveForLaterUIActivity
- (BOOL)canPerformWithTabDocument:(id)a3;
- (NSString)activityTitle;
- (SaveForLaterUIActivity)init;
- (id)_systemImageName;
- (void)performActivityWithTabDocument:(id)a3;
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

- (BOOL)canPerformWithTabDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo22SaveForLaterUIActivityC14MobileSafariUIE10canPerform4withSbSo11TabDocumentC_tF_0(v4);

  return v6 & 1;
}

- (void)performActivityWithTabDocument:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [v4 browserController];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  if ([v5 showDemoModeFeatureDisabledAlert])
  {

LABEL_4:
    [(_SFActivity *)v7 activityDidFinish:0];
    goto LABEL_6;
  }

  [v6 fastAddBookmarkForTabDocument_];
  [(_SFActivity *)v7 activityDidFinish:1];

LABEL_6:
}

- (SaveForLaterUIActivity)init
{
  v3.receiver = self;
  v3.super_class = SaveForLaterUIActivity;
  return [(UIActivity *)&v3 init];
}

@end