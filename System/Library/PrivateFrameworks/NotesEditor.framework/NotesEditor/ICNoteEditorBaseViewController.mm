@interface ICNoteEditorBaseViewController
- (ICNoteEditorBaseViewController)initWithCoder:(id)coder;
- (ICNoteEditorBaseViewController)initWithIdentifier:(int64_t)add options:(unint64_t)options nibName:(id)name bundle:(id)bundle;
- (NSString)identifierDescription;
- (id)description;
- (void)noteDidAppear:(id)appear;
- (void)noteDidDisappear:(id)disappear;
- (void)noteWillAppear:(id)appear;
- (void)noteWillDisappear:(id)disappear;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICNoteEditorBaseViewController

- (ICNoteEditorBaseViewController)initWithIdentifier:(int64_t)add options:(unint64_t)options nibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = ICNoteEditorBaseViewController;
  v8 = [(ICNoteEditorBaseViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v8)
  {
    if (add >= 10)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"identifier < ICNoteEditorDynamicIdentifiers" functionName:"-[ICNoteEditorBaseViewController initWithIdentifier:options:nibName:bundle:]" simulateCrash:1 showAlert:0 format:{@"Identifiers in the dynamic range (>=%ld) cannot be passed explicitly: pass ICNoteEditorGenerateNewIdentifier to generate a new dynamic identifier.", 10}];
    }

    else if (add < 0)
    {
      add = atomic_fetch_add(ICNoteEditorControllerGenerateIdentifier_sequenceNumber, 1u);
    }

    v8->_editorIdentifier = add;
    v8->_options = options;
    v8->_viewAppearanceState = 0;
  }

  return v8;
}

- (ICNoteEditorBaseViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  result = [(ICNoteEditorBaseViewController *)&v4 initWithCoder:coder];
  if (result)
  {
    result->_editorIdentifier = atomic_fetch_add(ICNoteEditorControllerGenerateIdentifier_sequenceNumber, 1u);
    result->_options = 0;
    result->_viewAppearanceState = 0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifierDescription = [(ICNoteEditorBaseViewController *)self identifierDescription];
  v7 = [v3 stringWithFormat:@"%@[%@]", v5, identifierDescription];

  return v7;
}

- (NSString)identifierDescription
{
  editorIdentifier = [(ICNoteEditorBaseViewController *)self editorIdentifier];
  options = [(ICNoteEditorBaseViewController *)self options];

  return ICNoteEditorIdentifierString(editorIdentifier, options);
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  [(ICNoteEditorBaseViewController *)&v4 viewWillAppear:appear];
  [(ICNoteEditorBaseViewController *)self setViewAppearanceState:2];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  [(ICNoteEditorBaseViewController *)&v4 viewDidAppear:appear];
  [(ICNoteEditorBaseViewController *)self setViewAppearanceState:3];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  [(ICScrollViewDelegateViewController *)&v4 viewWillDisappear:disappear];
  [(ICNoteEditorBaseViewController *)self setViewAppearanceState:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  [(ICNoteEditorBaseViewController *)&v4 viewDidDisappear:disappear];
  [(ICNoteEditorBaseViewController *)self setViewAppearanceState:0];
}

- (void)noteWillAppear:(id)appear
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  appearCopy = appear;
  defaultCenter = [v4 defaultCenter];
  v8 = @"note";
  v9[0] = appearCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"ICNoteEditorNoteWillAppear" object:self userInfo:v7];
}

- (void)noteDidAppear:(id)appear
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  appearCopy = appear;
  defaultCenter = [v4 defaultCenter];
  v8 = @"note";
  v9[0] = appearCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"ICNoteEditorNoteDidAppear" object:self userInfo:v7];
}

- (void)noteWillDisappear:(id)disappear
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  disappearCopy = disappear;
  defaultCenter = [v4 defaultCenter];
  v8 = @"note";
  v9[0] = disappearCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"ICNoteEditorNoteWillDisappear" object:self userInfo:v7];
}

- (void)noteDidDisappear:(id)disappear
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  disappearCopy = disappear;
  defaultCenter = [v4 defaultCenter];
  v8 = @"note";
  v9[0] = disappearCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"ICNoteEditorNoteDidDisappear" object:self userInfo:v7];
}

@end