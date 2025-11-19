@interface ICNoteDateFormatterController
- (BOOL)shouldShowDateModified;
- (ICNote)note;
- (ICNoteDateFormatterController)init;
- (ICNoteDateFormatterControllerDelegate)delegate;
- (id)dateStringForDate:(id)a3 dateFormatter:(id)a4;
- (void)dealloc;
- (void)noteDecryptedStatusDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCurrentSortType:(int64_t)a3;
- (void)setDate:(id)a3;
- (void)setIconHidden:(BOOL)a3;
- (void)setNote:(id)a3;
- (void)setUp;
- (void)toggleVisibleDateType;
- (void)updateDate;
- (void)updateDateLabelAccessibilityHint;
- (void)updateLockIcon;
@end

@implementation ICNoteDateFormatterController

- (ICNoteDateFormatterController)init
{
  v5.receiver = self;
  v5.super_class = ICNoteDateFormatterController;
  v2 = [(ICNoteDateFormatterController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICNoteDateFormatterController *)v2 setUp];
  }

  return v3;
}

- (ICNoteDateFormatterControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateDate
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICNoteDateFormatterController updateDate]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v3 = [(ICNoteDateFormatterController *)self shouldShowDateModified];
  v4 = [(ICNoteDateFormatterController *)self note];
  v6 = v4;
  if (v3)
  {
    [v4 modificationDate];
  }

  else
  {
    [v4 creationDate];
  }
  v5 = ;
  [(ICNoteDateFormatterController *)self setDate:v5];
}

- (BOOL)shouldShowDateModified
{
  v3 = [(ICNoteDateFormatterController *)self note];
  v4 = [v3 isSharedReadOnly];

  if (v4)
  {
    return 1;
  }

  v6 = [(ICNoteDateFormatterController *)self currentSortType]!= 1;
  return [(ICNoteDateFormatterController *)self showAlternateDateView]^ v6;
}

- (ICNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (void)setUp
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [(ICNoteDateFormatterController *)self setDateFormatter:v3];

  v4 = [(ICNoteDateFormatterController *)self dateFormatter];
  [v4 setDateStyle:3];

  v5 = [(ICNoteDateFormatterController *)self dateFormatter];
  [v5 setTimeStyle:1];

  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [(ICNoteDateFormatterController *)self setShortDateFormatter:v6];

  v7 = [(ICNoteDateFormatterController *)self shortDateFormatter];
  [v7 setDateStyle:1];

  v8 = [(ICNoteDateFormatterController *)self shortDateFormatter];
  [v8 setTimeStyle:1];

  [(ICNoteDateFormatterController *)self setIconHidden:1];
  -[ICNoteDateFormatterController setCurrentSortType:](self, "setCurrentSortType:", [MEMORY[0x277D36220] currentNoteListSortType]);
  v9 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [v9 ic_addObserver:self forKeyPath:*MEMORY[0x277D36160] context:compoundliteral_142];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = *MEMORY[0x277D35C30];
  v12 = [MEMORY[0x277D35E50] sharedState];
  [v10 addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:v11 object:v12];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277D35C38];
  v15 = [MEMORY[0x277D35E50] sharedState];
  [v13 addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:v14 object:v15];

  if (([MEMORY[0x277D361D0] isRunningUnitTests] & 1) == 0)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:self selector:sel_timeFormatChanged_ name:*MEMORY[0x277CBE620] object:0];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:self selector:sel_timeFormatChanged_ name:*MEMORY[0x277CBE778] object:0];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:self selector:sel_timeFormatChanged_ name:*MEMORY[0x277D766F0] object:0];
  }
}

- (void)updateDateLabelAccessibilityHint
{
  v3 = @"Double tap to show creation date.";
  if ([(ICNoteDateFormatterController *)self didManuallyChangeDateType]&& ![(ICNoteDateFormatterController *)self shouldShowDateModified])
  {
    v3 = @"Double tap to show last edited date.";
  }

  objc_opt_class();
  v4 = [(ICNoteDateFormatterController *)self delegate];
  argument = ICDynamicCast();

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:v3 value:&stru_282757698 table:0];
  [argument setAccessibilityHint:v6];

  if ([argument accessibilityElementIsFocused])
  {
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], argument);
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_note);
  [WeakRetained ic_removeObserver:self forKeyPath:@"modificationDate" context:compoundliteral_11];

  v4 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [v4 ic_removeObserver:self forKeyPath:*MEMORY[0x277D36160] context:compoundliteral_142];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = ICNoteDateFormatterController;
  [(ICNoteDateFormatterController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICNoteDateFormatterController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/Utilities/ICNoteDateFormatterController.m"]& 1) != 0)
  {
    v13 = [(ICNoteDateFormatterController *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (v13)
    {
      return;
    }

    if (a6 != compoundliteral_11)
    {
      if (a6 != compoundliteral_142)
      {
        return;
      }

      -[ICNoteDateFormatterController setCurrentSortType:](self, "setCurrentSortType:", [MEMORY[0x277D36220] currentNoteListSortType]);
    }

    [(ICNoteDateFormatterController *)self updateDate];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICNoteDateFormatterController;
    [(ICNoteDateFormatterController *)&v14 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
  }
}

- (void)setCurrentSortType:(int64_t)a3
{
  if (self->_currentSortType != a3)
  {
    self->_currentSortType = a3;
    [(ICNoteDateFormatterController *)self setShowAlternateDateView:0];
    [(ICNoteDateFormatterController *)self setDidManuallyChangeDateType:0];

    [(ICNoteDateFormatterController *)self updateDate];
  }
}

- (void)noteDecryptedStatusDidChange:(id)a3
{
  v3 = [MEMORY[0x277D35E50] sharedState];
  v4 = [v3 isBlockingDeauthentication];

  if ((v4 & 1) == 0)
  {
    performBlockOnMainThread();
  }
}

- (void)toggleVisibleDateType
{
  [(ICNoteDateFormatterController *)self setDidManuallyChangeDateType:1];
  [(ICNoteDateFormatterController *)self setShowAlternateDateView:[(ICNoteDateFormatterController *)self showAlternateDateView]^ 1];
  [(ICNoteDateFormatterController *)self updateDate];

  [(ICNoteDateFormatterController *)self updateDateLabelAccessibilityHint];
}

- (void)updateLockIcon
{
  v3 = MEMORY[0x277D368A0];
  v4 = [(ICNoteDateFormatterController *)self note];
  v6 = [v3 imageForCurrentDecryptedStatusForNote:v4];

  v5 = [(ICNoteDateFormatterController *)self delegate];
  [v5 formatter:self iconImageDidChange:v6];
}

- (void)setIconHidden:(BOOL)a3
{
  v3 = a3;
  self->_iconHidden = a3;
  if (!a3)
  {
    [(ICNoteDateFormatterController *)self updateLockIcon];
  }

  v5 = [(ICNoteDateFormatterController *)self delegate];
  [v5 formatter:self iconHiddenDidChange:v3];
}

- (void)setNote:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_note);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICNoteDateFormatterController setNote:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
    }

    v6 = obj;
    if (obj)
    {
      v7 = [obj managedObjectContext];
      v8 = [v7 concurrencyType];

      v6 = obj;
      if (v8 != 2)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!note || note.managedObjectContext.concurrencyType == NSMainQueueConcurrencyType" functionName:"-[ICNoteDateFormatterController setNote:]" simulateCrash:1 showAlert:0 format:@"Background note set on date formatter"];
        v6 = obj;
      }
    }

    -[ICNoteDateFormatterController setShouldShowSharedNoteTitle:](self, "setShouldShowSharedNoteTitle:", [v6 isSharedAndEmpty]);
    v9 = objc_loadWeakRetained(&self->_note);
    [v9 ic_removeObserver:self forKeyPath:@"modificationDate" context:compoundliteral_11];

    v10 = objc_storeWeak(&self->_note, obj);
    [obj ic_addObserver:self forKeyPath:@"modificationDate" context:compoundliteral_11];

    [(ICNoteDateFormatterController *)self setDidManuallyChangeDateType:0];
    [(ICNoteDateFormatterController *)self setShowAlternateDateView:0];
    if (obj)
    {
      v11 = objc_loadWeakRetained(&self->_note);
      -[ICNoteDateFormatterController setIconHidden:](self, "setIconHidden:", [v11 isPasswordProtected] ^ 1);
    }

    else
    {
      [(ICNoteDateFormatterController *)self setIconHidden:1];
    }

    [(ICNoteDateFormatterController *)self updateDate];
    v5 = obj;
  }
}

- (void)setDate:(id)a3
{
  v5 = a3;
  p_date = &self->_date;
  if (v5 | self->_date)
  {
    v21 = v5;
    objc_storeStrong(p_date, a3);
    v7 = [(ICNoteDateFormatterController *)self dateFormatter];
    v8 = [(ICNoteDateFormatterController *)self dateStringForDate:v21 dateFormatter:v7];

    if ([v8 length])
    {
      v9 = [(ICNoteDateFormatterController *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = 0;
LABEL_10:

        goto LABEL_11;
      }

      v10 = [(ICNoteDateFormatterController *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [(ICNoteDateFormatterController *)self delegate];
        v13 = [v12 dateViewAttributes];
        [v8 sizeWithAttributes:v13];
        v15 = v14;

        v16 = [(ICNoteDateFormatterController *)self delegate];
        [v16 dateViewMaximumWidth];
        v18 = v17;

        v19 = 0;
        if (v18 == 0.0 || v15 < v18)
        {
          goto LABEL_11;
        }

        v9 = [(ICNoteDateFormatterController *)self shortDateFormatter];
        [(ICNoteDateFormatterController *)self dateStringForDate:v21 dateFormatter:v9];
        v8 = v19 = v8;
        goto LABEL_10;
      }
    }

    v19 = 0;
LABEL_11:
    v20 = [(ICNoteDateFormatterController *)self delegate];
    [v20 formatter:self textDidChange:v8 fullText:v19];

    [(ICNoteDateFormatterController *)self updateDateLabelAccessibilityHint];
  }

  MEMORY[0x2821F9730](p_date);
}

- (id)dateStringForDate:(id)a3 dateFormatter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICNoteDateFormatterController *)self didManuallyChangeDateType])
  {
    v8 = [(ICNoteDateFormatterController *)self shouldShowDateModified];
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = v9;
    if (v8)
    {
      v11 = @"Edited: %@";
    }

    else
    {
      v11 = @"Created: %@";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_282757698 table:0];

    v13 = MEMORY[0x277CCACA8];
    v14 = [v7 stringFromDate:v6];
    v15 = [v13 localizedStringWithFormat:v12, v14];

    goto LABEL_14;
  }

  v16 = [(ICNoteDateFormatterController *)self note];
  v17 = [v16 isSharedReadOnly];

  if (v17)
  {
    v18 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = v18;
    v20 = @"%@ — View Only";
    goto LABEL_8;
  }

  v25 = [(ICNoteDateFormatterController *)self note];
  v26 = [v25 isSharedViaICloud];

  if (v26)
  {
    if ([(ICNoteDateFormatterController *)self shouldShowSharedNoteTitle])
    {
      v21 = [(ICNoteDateFormatterController *)self note];
      v23 = [v21 folder];
      v24 = [v23 shareDescription];
      goto LABEL_9;
    }

    v18 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = v18;
    v20 = @"%@ — Shared";
LABEL_8:
    v21 = [v18 localizedStringForKey:v20 value:&stru_282757698 table:0];

    v22 = MEMORY[0x277CCACA8];
    v23 = [v7 stringFromDate:v6];
    v24 = [v22 localizedStringWithFormat:v21, v23];
LABEL_9:
    v15 = v24;

    goto LABEL_14;
  }

  v15 = [v7 stringFromDate:v6];
LABEL_14:

  return v15;
}

@end