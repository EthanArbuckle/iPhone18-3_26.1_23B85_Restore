@interface ICNoteDateFormatterController
- (BOOL)shouldShowDateModified;
- (ICNote)note;
- (ICNoteDateFormatterController)init;
- (ICNoteDateFormatterControllerDelegate)delegate;
- (id)dateStringForDate:(id)date dateFormatter:(id)formatter;
- (void)dealloc;
- (void)noteDecryptedStatusDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCurrentSortType:(int64_t)type;
- (void)setDate:(id)date;
- (void)setIconHidden:(BOOL)hidden;
- (void)setNote:(id)note;
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

  shouldShowDateModified = [(ICNoteDateFormatterController *)self shouldShowDateModified];
  note = [(ICNoteDateFormatterController *)self note];
  v6 = note;
  if (shouldShowDateModified)
  {
    [note modificationDate];
  }

  else
  {
    [note creationDate];
  }
  v5 = ;
  [(ICNoteDateFormatterController *)self setDate:v5];
}

- (BOOL)shouldShowDateModified
{
  note = [(ICNoteDateFormatterController *)self note];
  isSharedReadOnly = [note isSharedReadOnly];

  if (isSharedReadOnly)
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

  dateFormatter = [(ICNoteDateFormatterController *)self dateFormatter];
  [dateFormatter setDateStyle:3];

  dateFormatter2 = [(ICNoteDateFormatterController *)self dateFormatter];
  [dateFormatter2 setTimeStyle:1];

  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [(ICNoteDateFormatterController *)self setShortDateFormatter:v6];

  shortDateFormatter = [(ICNoteDateFormatterController *)self shortDateFormatter];
  [shortDateFormatter setDateStyle:1];

  shortDateFormatter2 = [(ICNoteDateFormatterController *)self shortDateFormatter];
  [shortDateFormatter2 setTimeStyle:1];

  [(ICNoteDateFormatterController *)self setIconHidden:1];
  -[ICNoteDateFormatterController setCurrentSortType:](self, "setCurrentSortType:", [MEMORY[0x277D36220] currentNoteListSortType]);
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [mEMORY[0x277D36180] ic_addObserver:self forKeyPath:*MEMORY[0x277D36160] context:compoundliteral_142];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = *MEMORY[0x277D35C30];
  mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
  [defaultCenter addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:v11 object:mEMORY[0x277D35E50]];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277D35C38];
  mEMORY[0x277D35E50]2 = [MEMORY[0x277D35E50] sharedState];
  [defaultCenter2 addObserver:self selector:sel_noteDecryptedStatusDidChange_ name:v14 object:mEMORY[0x277D35E50]2];

  if (([MEMORY[0x277D361D0] isRunningUnitTests] & 1) == 0)
  {
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_timeFormatChanged_ name:*MEMORY[0x277CBE620] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_timeFormatChanged_ name:*MEMORY[0x277CBE778] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel_timeFormatChanged_ name:*MEMORY[0x277D766F0] object:0];
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
  delegate = [(ICNoteDateFormatterController *)self delegate];
  argument = ICDynamicCast();

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:v3 value:&stru_282757698 table:0];
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

  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [mEMORY[0x277D36180] ic_removeObserver:self forKeyPath:*MEMORY[0x277D36160] context:compoundliteral_142];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = ICNoteDateFormatterController;
  [(ICNoteDateFormatterController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICNoteDateFormatterController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/Utilities/ICNoteDateFormatterController.m"]& 1) != 0)
  {
    v13 = [(ICNoteDateFormatterController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (v13)
    {
      return;
    }

    if (context != compoundliteral_11)
    {
      if (context != compoundliteral_142)
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
    [(ICNoteDateFormatterController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setCurrentSortType:(int64_t)type
{
  if (self->_currentSortType != type)
  {
    self->_currentSortType = type;
    [(ICNoteDateFormatterController *)self setShowAlternateDateView:0];
    [(ICNoteDateFormatterController *)self setDidManuallyChangeDateType:0];

    [(ICNoteDateFormatterController *)self updateDate];
  }
}

- (void)noteDecryptedStatusDidChange:(id)change
{
  mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
  isBlockingDeauthentication = [mEMORY[0x277D35E50] isBlockingDeauthentication];

  if ((isBlockingDeauthentication & 1) == 0)
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
  note = [(ICNoteDateFormatterController *)self note];
  v6 = [v3 imageForCurrentDecryptedStatusForNote:note];

  delegate = [(ICNoteDateFormatterController *)self delegate];
  [delegate formatter:self iconImageDidChange:v6];
}

- (void)setIconHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_iconHidden = hidden;
  if (!hidden)
  {
    [(ICNoteDateFormatterController *)self updateLockIcon];
  }

  delegate = [(ICNoteDateFormatterController *)self delegate];
  [delegate formatter:self iconHiddenDidChange:hiddenCopy];
}

- (void)setNote:(id)note
{
  obj = note;
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
      managedObjectContext = [obj managedObjectContext];
      concurrencyType = [managedObjectContext concurrencyType];

      v6 = obj;
      if (concurrencyType != 2)
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

- (void)setDate:(id)date
{
  dateCopy = date;
  p_date = &self->_date;
  if (dateCopy | self->_date)
  {
    v21 = dateCopy;
    objc_storeStrong(p_date, date);
    dateFormatter = [(ICNoteDateFormatterController *)self dateFormatter];
    v8 = [(ICNoteDateFormatterController *)self dateStringForDate:v21 dateFormatter:dateFormatter];

    if ([v8 length])
    {
      delegate = [(ICNoteDateFormatterController *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = 0;
LABEL_10:

        goto LABEL_11;
      }

      delegate2 = [(ICNoteDateFormatterController *)self delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        delegate3 = [(ICNoteDateFormatterController *)self delegate];
        dateViewAttributes = [delegate3 dateViewAttributes];
        [v8 sizeWithAttributes:dateViewAttributes];
        v15 = v14;

        delegate4 = [(ICNoteDateFormatterController *)self delegate];
        [delegate4 dateViewMaximumWidth];
        v18 = v17;

        v19 = 0;
        if (v18 == 0.0 || v15 < v18)
        {
          goto LABEL_11;
        }

        delegate = [(ICNoteDateFormatterController *)self shortDateFormatter];
        [(ICNoteDateFormatterController *)self dateStringForDate:v21 dateFormatter:delegate];
        v8 = v19 = v8;
        goto LABEL_10;
      }
    }

    v19 = 0;
LABEL_11:
    delegate5 = [(ICNoteDateFormatterController *)self delegate];
    [delegate5 formatter:self textDidChange:v8 fullText:v19];

    [(ICNoteDateFormatterController *)self updateDateLabelAccessibilityHint];
  }

  MEMORY[0x2821F9730](p_date);
}

- (id)dateStringForDate:(id)date dateFormatter:(id)formatter
{
  dateCopy = date;
  formatterCopy = formatter;
  if ([(ICNoteDateFormatterController *)self didManuallyChangeDateType])
  {
    shouldShowDateModified = [(ICNoteDateFormatterController *)self shouldShowDateModified];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = mainBundle;
    if (shouldShowDateModified)
    {
      v11 = @"Edited: %@";
    }

    else
    {
      v11 = @"Created: %@";
    }

    v12 = [mainBundle localizedStringForKey:v11 value:&stru_282757698 table:0];

    v13 = MEMORY[0x277CCACA8];
    v14 = [formatterCopy stringFromDate:dateCopy];
    v15 = [v13 localizedStringWithFormat:v12, v14];

    goto LABEL_14;
  }

  note = [(ICNoteDateFormatterController *)self note];
  isSharedReadOnly = [note isSharedReadOnly];

  if (isSharedReadOnly)
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = mainBundle2;
    v20 = @"%@ — View Only";
    goto LABEL_8;
  }

  note2 = [(ICNoteDateFormatterController *)self note];
  isSharedViaICloud = [note2 isSharedViaICloud];

  if (isSharedViaICloud)
  {
    if ([(ICNoteDateFormatterController *)self shouldShowSharedNoteTitle])
    {
      note3 = [(ICNoteDateFormatterController *)self note];
      folder = [note3 folder];
      shareDescription = [folder shareDescription];
      goto LABEL_9;
    }

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = mainBundle2;
    v20 = @"%@ — Shared";
LABEL_8:
    note3 = [mainBundle2 localizedStringForKey:v20 value:&stru_282757698 table:0];

    v22 = MEMORY[0x277CCACA8];
    folder = [formatterCopy stringFromDate:dateCopy];
    shareDescription = [v22 localizedStringWithFormat:note3, folder];
LABEL_9:
    v15 = shareDescription;

    goto LABEL_14;
  }

  v15 = [formatterCopy stringFromDate:dateCopy];
LABEL_14:

  return v15;
}

@end