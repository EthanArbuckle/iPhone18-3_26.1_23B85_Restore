@interface NTKCompanionFaceViewController
- (NTKCompanionFaceViewController)initWithFace:(id)face forEditing:(BOOL)editing;
@end

@implementation NTKCompanionFaceViewController

- (NTKCompanionFaceViewController)initWithFace:(id)face forEditing:(BOOL)editing
{
  faceCopy = face;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__NTKCompanionFaceViewController_initWithFace_forEditing___block_invoke;
  v13[3] = &unk_278789648;
  editingCopy = editing;
  v7 = faceCopy;
  v14 = v7;
  v12.receiver = self;
  v12.super_class = NTKCompanionFaceViewController;
  v8 = [(NTKFaceViewController *)&v12 initWithFace:v7 configuration:v13];
  v9 = v8;
  if (v8)
  {
    view = [(NTKCompanionFaceViewController *)v8 view];
    [view setUserInteractionEnabled:0];
  }

  return v9;
}

void __58__NTKCompanionFaceViewController_initWithFace_forEditing___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 setDataMode:3];
  [v8 setShouldShowSnapshot:*(a1 + 40) == 0];
  [v8 setShowsCanonicalContent:1];
  [v8 setShouldUseSampleTemplate:1];
  [v8 freeze];
  v3 = [*(a1 + 32) device];
  if ([v3 deviceCategory] != 1)
  {
    [v3 screenCornerRadius];
    v5 = v4;
    v6 = [v8 faceView];
    [v6 _setContinuousCornerRadius:v5];

    v7 = [v8 faceView];
    [v7 setClipsToBounds:1];
  }
}

@end