@interface SFEffectViewEditorViewController
- (SFEffectViewEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (void)addEditableEffect:(id)a3 title:(id)a4 editHandler:(id)a5;
- (void)addEditablePropertiesWithTitle:(id)a3 builder:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFEffectViewEditorViewController

- (void)addEditableEffect:(id)a3 title:(id)a4 editHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_18BC20BD8();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a3;
  v13 = self;
  sub_18B978100(v12, v8, v10, sub_18B9878C4, v11);
}

- (void)addEditablePropertiesWithTitle:(id)a3 builder:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_18BC20BD8();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_18B984EE8(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)loadView
{
  v2 = self;
  SFEffectViewEditorViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  SFEffectViewEditorViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  SFEffectViewEditorViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SFEffectViewEditorViewController;
  [(SFEffectViewEditorViewController *)&v3 viewWillDisappear:a3];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  v10 = a3;
  v11 = self;
  sub_18B986078();

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  sub_18BC1ED88();
  sub_18BC1ED88();
  sub_18BC1ED88();
  v19 = sub_18BC1EDC8();
  v20 = sub_18BC1EDC8();
  v21 = *(v7 + 8);
  v21(v12, v6);
  if (v19 == v20)
  {
    v22 = v15;
  }

  else
  {
    v22 = v9;
  }

  if (v19 == v20)
  {
    v23 = v9;
  }

  else
  {
    v23 = v15;
  }

  v21(v22, v6);
  (*(v7 + 32))(v18, v23, v6);
  v24 = sub_18BC1ED68();
  v21(v18, v6);

  return v24;
}

- (SFEffectViewEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_18BC20BD8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SFEffectViewEditorViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  sub_18BC1EA98();
  v6 = sub_18BC20D98();
  v7 = a3;
  v8 = self;
  sub_18B986330(v6);
}

@end