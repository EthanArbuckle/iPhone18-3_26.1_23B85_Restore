@interface ICNoteEditorBaseViewController
- (ICNoteEditorBaseViewController)initWithCoder:(id)a3;
- (ICNoteEditorBaseViewController)initWithIdentifier:(int64_t)add options:(unint64_t)a4 nibName:(id)a5 bundle:(id)a6;
- (NSString)identifierDescription;
- (id)description;
- (void)noteDidAppear:(id)a3;
- (void)noteDidDisappear:(id)a3;
- (void)noteWillAppear:(id)a3;
- (void)noteWillDisappear:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICNoteEditorBaseViewController

- (ICNoteEditorBaseViewController)initWithIdentifier:(int64_t)add options:(unint64_t)a4 nibName:(id)a5 bundle:(id)a6
{
  v10.receiver = self;
  v10.super_class = ICNoteEditorBaseViewController;
  v8 = [(ICNoteEditorBaseViewController *)&v10 initWithNibName:a5 bundle:a6];
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
    v8->_options = a4;
    v8->_viewAppearanceState = 0;
  }

  return v8;
}

- (ICNoteEditorBaseViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  result = [(ICNoteEditorBaseViewController *)&v4 initWithCoder:a3];
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
  v6 = [(ICNoteEditorBaseViewController *)self identifierDescription];
  v7 = [v3 stringWithFormat:@"%@[%@]", v5, v6];

  return v7;
}

- (NSString)identifierDescription
{
  v3 = [(ICNoteEditorBaseViewController *)self editorIdentifier];
  v4 = [(ICNoteEditorBaseViewController *)self options];

  return ICNoteEditorIdentifierString(v3, v4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  [(ICNoteEditorBaseViewController *)&v4 viewWillAppear:a3];
  [(ICNoteEditorBaseViewController *)self setViewAppearanceState:2];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  [(ICNoteEditorBaseViewController *)&v4 viewDidAppear:a3];
  [(ICNoteEditorBaseViewController *)self setViewAppearanceState:3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  [(ICScrollViewDelegateViewController *)&v4 viewWillDisappear:a3];
  [(ICNoteEditorBaseViewController *)self setViewAppearanceState:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICNoteEditorBaseViewController;
  [(ICNoteEditorBaseViewController *)&v4 viewDidDisappear:a3];
  [(ICNoteEditorBaseViewController *)self setViewAppearanceState:0];
}

- (void)noteWillAppear:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v8 = @"note";
  v9[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v6 postNotificationName:@"ICNoteEditorNoteWillAppear" object:self userInfo:v7];
}

- (void)noteDidAppear:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v8 = @"note";
  v9[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v6 postNotificationName:@"ICNoteEditorNoteDidAppear" object:self userInfo:v7];
}

- (void)noteWillDisappear:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v8 = @"note";
  v9[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v6 postNotificationName:@"ICNoteEditorNoteWillDisappear" object:self userInfo:v7];
}

- (void)noteDidDisappear:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v8 = @"note";
  v9[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v6 postNotificationName:@"ICNoteEditorNoteDidDisappear" object:self userInfo:v7];
}

@end