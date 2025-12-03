@interface SFEffectViewEditorViewController
- (SFEffectViewEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (void)addEditableEffect:(id)effect title:(id)title editHandler:(id)handler;
- (void)addEditablePropertiesWithTitle:(id)title builder:(id)builder;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFEffectViewEditorViewController

- (void)addEditableEffect:(id)effect title:(id)title editHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_18BC20BD8();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  effectCopy = effect;
  selfCopy = self;
  sub_18B978100(effectCopy, v8, v10, sub_18B9878C4, v11);
}

- (void)addEditablePropertiesWithTitle:(id)title builder:(id)builder
{
  v5 = _Block_copy(builder);
  v6 = sub_18BC20BD8();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_18B984EE8(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)loadView
{
  selfCopy = self;
  SFEffectViewEditorViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  SFEffectViewEditorViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  SFEffectViewEditorViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = SFEffectViewEditorViewController;
  [(SFEffectViewEditorViewController *)&v3 viewWillDisappear:disappear];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1ED88();
  viewCopy = view;
  selfCopy = self;
  sub_18B986078();

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
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

- (SFEffectViewEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_18BC20BD8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return SFEffectViewEditorViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_18BC1EA98();
  v6 = sub_18BC20D98();
  pickerCopy = picker;
  selfCopy = self;
  sub_18B986330(v6);
}

@end