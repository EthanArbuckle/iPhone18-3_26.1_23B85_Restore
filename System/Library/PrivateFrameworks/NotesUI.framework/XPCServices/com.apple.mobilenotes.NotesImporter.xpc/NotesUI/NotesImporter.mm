@interface NotesImporter
- (NotesImporter)init;
- (void)archiveEvernoteNotesFromFileURL:(id)l completionBlock:(id)block;
- (void)cleanupArchiveId:(id)id completionBlock:(id)block;
- (void)countEvernoteNotesFromFileURL:(id)l completionBlock:(id)block;
- (void)parseHTMLStringFromEvernoteContentString:(id)string completionBlock:(id)block;
- (void)parseTitleFromHTMLString:(id)string completionBlock:(id)block;
- (void)unarchiveEvernoteNoteFromArchiveId:(id)id noteArchiveId:(id)archiveId completionBlock:(id)block;
- (void)unarchiveEvernoteResourceFromArchiveId:(id)id resourceArchiveId:(id)archiveId completionBlock:(id)block;
@end

@implementation NotesImporter

- (NotesImporter)init
{
  v8.receiver = self;
  v8.super_class = NotesImporter;
  v2 = [(NotesImporter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICEvernoteNoteParser);
    evernoteNoteParser = v2->_evernoteNoteParser;
    v2->_evernoteNoteParser = v3;

    v5 = objc_alloc_init(ICEvernoteContentParser);
    evernoteContentParser = v2->_evernoteContentParser;
    v2->_evernoteContentParser = v5;
  }

  return v2;
}

- (void)parseHTMLStringFromEvernoteContentString:(id)string completionBlock:(id)block
{
  blockCopy = block;
  stringCopy = string;
  evernoteContentParser = [(NotesImporter *)self evernoteContentParser];
  v8 = [evernoteContentParser htmlStringFromEvernoteContentString:stringCopy];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v8);
  }
}

- (void)countEvernoteNotesFromFileURL:(id)l completionBlock:(id)block
{
  blockCopy = block;
  lCopy = l;
  evernoteNoteParser = [(NotesImporter *)self evernoteNoteParser];
  v8 = [evernoteNoteParser countEvernoteNotesFromFileURL:lCopy];

  v9 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, v8);
    v9 = blockCopy;
  }
}

- (void)parseTitleFromHTMLString:(id)string completionBlock:(id)block
{
  blockCopy = block;
  stringCopy = string;
  evernoteContentParser = [(NotesImporter *)self evernoteContentParser];
  v8 = [evernoteContentParser titleFromHTMLString:stringCopy];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v8);
  }
}

- (void)archiveEvernoteNotesFromFileURL:(id)l completionBlock:(id)block
{
  blockCopy = block;
  lCopy = l;
  evernoteNoteParser = [(NotesImporter *)self evernoteNoteParser];
  v11 = 0;
  v9 = [evernoteNoteParser archiveItemsFromFileURL:lCopy error:&v11];

  v10 = v11;
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v9, v10);
  }
}

- (void)unarchiveEvernoteNoteFromArchiveId:(id)id noteArchiveId:(id)archiveId completionBlock:(id)block
{
  blockCopy = block;
  archiveIdCopy = archiveId;
  idCopy = id;
  evernoteNoteParser = [(NotesImporter *)self evernoteNoteParser];
  v11 = [evernoteNoteParser unarchiveEvernoteNoteFromArchiveId:idCopy noteArchiveId:archiveIdCopy];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v11);
  }
}

- (void)unarchiveEvernoteResourceFromArchiveId:(id)id resourceArchiveId:(id)archiveId completionBlock:(id)block
{
  blockCopy = block;
  archiveIdCopy = archiveId;
  idCopy = id;
  evernoteNoteParser = [(NotesImporter *)self evernoteNoteParser];
  v11 = [evernoteNoteParser unarchiveEvernoteResourceFromArchiveId:idCopy resourceArchiveId:archiveIdCopy];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v11);
  }
}

- (void)cleanupArchiveId:(id)id completionBlock:(id)block
{
  blockCopy = block;
  idCopy = id;
  evernoteNoteParser = [(NotesImporter *)self evernoteNoteParser];
  [evernoteNoteParser cleanupArchiveId:idCopy];

  v8 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
    v8 = blockCopy;
  }
}

@end