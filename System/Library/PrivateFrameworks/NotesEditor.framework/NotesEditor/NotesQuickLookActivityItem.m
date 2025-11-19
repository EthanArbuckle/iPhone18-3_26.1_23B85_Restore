@interface NotesQuickLookActivityItem
- (NotesQuickLookActivityItemDelegate)delegate;
@end

@implementation NotesQuickLookActivityItem

- (NotesQuickLookActivityItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end