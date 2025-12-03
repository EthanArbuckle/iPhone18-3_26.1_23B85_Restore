@interface ICNoteUserActivityState
- (ICNoteUserActivityState)initWithNote:(id)note;
- (_NSRange)selectionRange;
- (_NSRange)visibleRange;
- (void)updateUserActivity:(id)activity;
@end

@implementation ICNoteUserActivityState

- (ICNoteUserActivityState)initWithNote:(id)note
{
  noteCopy = note;
  v15.receiver = self;
  v15.super_class = ICNoteUserActivityState;
  v5 = [(ICNoteBaseUserActivityState *)&v15 initWithNote:noteCopy];
  if (v5)
  {
    title = [noteCopy title];
    [(ICNoteUserActivityState *)v5 setTitle:title];

    identifier = [noteCopy identifier];
    [(ICNoteUserActivityState *)v5 setNoteID:identifier];

    folder = [noteCopy folder];
    identifier2 = [folder identifier];
    [(ICNoteUserActivityState *)v5 setFolderID:identifier2];

    folder2 = [noteCopy folder];
    title2 = [folder2 title];
    [(ICNoteUserActivityState *)v5 setFolderName:title2];

    [(ICNoteUserActivityState *)v5 setWantsContinuationStreams:ICNotesSupportsContinuationStreamsForNote(noteCopy)];
    modificationDate = [noteCopy modificationDate];
    [(ICNoteUserActivityState *)v5 setModificationDate:modificationDate];

    creationDate = [noteCopy creationDate];
    [(ICNoteUserActivityState *)v5 setCreationDate:creationDate];
  }

  return v5;
}

- (void)updateUserActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = ICNoteUserActivityState;
  activityCopy = activity;
  [(ICNoteBaseUserActivityState *)&v5 updateUserActivity:activityCopy];
  ICNotesUpdateUserActivityForViewingNoteWithState(activityCopy, self);
}

- (_NSRange)visibleRange
{
  p_visibleRange = &self->_visibleRange;
  location = self->_visibleRange.location;
  length = p_visibleRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)selectionRange
{
  p_selectionRange = &self->_selectionRange;
  location = self->_selectionRange.location;
  length = p_selectionRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end