@interface ICNoteUserActivityState
- (ICNoteUserActivityState)initWithNote:(id)a3;
- (_NSRange)selectionRange;
- (_NSRange)visibleRange;
- (void)updateUserActivity:(id)a3;
@end

@implementation ICNoteUserActivityState

- (ICNoteUserActivityState)initWithNote:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICNoteUserActivityState;
  v5 = [(ICNoteBaseUserActivityState *)&v15 initWithNote:v4];
  if (v5)
  {
    v6 = [v4 title];
    [(ICNoteUserActivityState *)v5 setTitle:v6];

    v7 = [v4 identifier];
    [(ICNoteUserActivityState *)v5 setNoteID:v7];

    v8 = [v4 folder];
    v9 = [v8 identifier];
    [(ICNoteUserActivityState *)v5 setFolderID:v9];

    v10 = [v4 folder];
    v11 = [v10 title];
    [(ICNoteUserActivityState *)v5 setFolderName:v11];

    [(ICNoteUserActivityState *)v5 setWantsContinuationStreams:ICNotesSupportsContinuationStreamsForNote(v4)];
    v12 = [v4 modificationDate];
    [(ICNoteUserActivityState *)v5 setModificationDate:v12];

    v13 = [v4 creationDate];
    [(ICNoteUserActivityState *)v5 setCreationDate:v13];
  }

  return v5;
}

- (void)updateUserActivity:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICNoteUserActivityState;
  v4 = a3;
  [(ICNoteBaseUserActivityState *)&v5 updateUserActivity:v4];
  ICNotesUpdateUserActivityForViewingNoteWithState(v4, self);
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