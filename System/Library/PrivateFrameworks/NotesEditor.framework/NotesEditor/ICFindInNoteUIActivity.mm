@interface ICFindInNoteUIActivity
- (ICFindInNoteUIActivity)initWithDelegate:(id)delegate;
- (ICFindInNoteUIActivityDelegate)delegate;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation ICFindInNoteUIActivity

- (ICFindInNoteUIActivity)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ICFindInNoteUIActivity;
  v5 = [(UIActivity *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (id)activityTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Find in Note" value:&stru_282757698 table:0];

  return v3;
}

- (void)performActivity
{
  delegate = [(ICFindInNoteUIActivity *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(ICFindInNoteUIActivity *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(ICFindInNoteUIActivity *)self delegate];
      [delegate3 performFindInNoteUIActivity:self];
    }
  }
}

- (ICFindInNoteUIActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end