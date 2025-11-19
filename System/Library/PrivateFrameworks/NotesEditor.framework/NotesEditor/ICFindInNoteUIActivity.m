@interface ICFindInNoteUIActivity
- (ICFindInNoteUIActivity)initWithDelegate:(id)a3;
- (ICFindInNoteUIActivityDelegate)delegate;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation ICFindInNoteUIActivity

- (ICFindInNoteUIActivity)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICFindInNoteUIActivity;
  v5 = [(UIActivity *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = v6;
  }

  return v6;
}

- (id)activityTitle
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Find in Note" value:&stru_282757698 table:0];

  return v3;
}

- (void)performActivity
{
  v3 = [(ICFindInNoteUIActivity *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICFindInNoteUIActivity *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(ICFindInNoteUIActivity *)self delegate];
      [v7 performFindInNoteUIActivity:self];
    }
  }
}

- (ICFindInNoteUIActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end