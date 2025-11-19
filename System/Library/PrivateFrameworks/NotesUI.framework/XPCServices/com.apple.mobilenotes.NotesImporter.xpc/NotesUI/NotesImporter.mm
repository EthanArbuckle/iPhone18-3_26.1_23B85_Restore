@interface NotesImporter
- (NotesImporter)init;
- (void)archiveEvernoteNotesFromFileURL:(id)a3 completionBlock:(id)a4;
- (void)cleanupArchiveId:(id)a3 completionBlock:(id)a4;
- (void)countEvernoteNotesFromFileURL:(id)a3 completionBlock:(id)a4;
- (void)parseHTMLStringFromEvernoteContentString:(id)a3 completionBlock:(id)a4;
- (void)parseTitleFromHTMLString:(id)a3 completionBlock:(id)a4;
- (void)unarchiveEvernoteNoteFromArchiveId:(id)a3 noteArchiveId:(id)a4 completionBlock:(id)a5;
- (void)unarchiveEvernoteResourceFromArchiveId:(id)a3 resourceArchiveId:(id)a4 completionBlock:(id)a5;
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

- (void)parseHTMLStringFromEvernoteContentString:(id)a3 completionBlock:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(NotesImporter *)self evernoteContentParser];
  v8 = [v7 htmlStringFromEvernoteContentString:v6];

  if (v9)
  {
    v9[2](v9, v8);
  }
}

- (void)countEvernoteNotesFromFileURL:(id)a3 completionBlock:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(NotesImporter *)self evernoteNoteParser];
  v8 = [v7 countEvernoteNotesFromFileURL:v6];

  v9 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v8);
    v9 = v10;
  }
}

- (void)parseTitleFromHTMLString:(id)a3 completionBlock:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(NotesImporter *)self evernoteContentParser];
  v8 = [v7 titleFromHTMLString:v6];

  if (v9)
  {
    v9[2](v9, v8);
  }
}

- (void)archiveEvernoteNotesFromFileURL:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NotesImporter *)self evernoteNoteParser];
  v11 = 0;
  v9 = [v8 archiveItemsFromFileURL:v7 error:&v11];

  v10 = v11;
  if (v6)
  {
    v6[2](v6, v9, v10);
  }
}

- (void)unarchiveEvernoteNoteFromArchiveId:(id)a3 noteArchiveId:(id)a4 completionBlock:(id)a5
{
  v12 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(NotesImporter *)self evernoteNoteParser];
  v11 = [v10 unarchiveEvernoteNoteFromArchiveId:v9 noteArchiveId:v8];

  if (v12)
  {
    v12[2](v12, v11);
  }
}

- (void)unarchiveEvernoteResourceFromArchiveId:(id)a3 resourceArchiveId:(id)a4 completionBlock:(id)a5
{
  v12 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(NotesImporter *)self evernoteNoteParser];
  v11 = [v10 unarchiveEvernoteResourceFromArchiveId:v9 resourceArchiveId:v8];

  if (v12)
  {
    v12[2](v12, v11);
  }
}

- (void)cleanupArchiveId:(id)a3 completionBlock:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(NotesImporter *)self evernoteNoteParser];
  [v7 cleanupArchiveId:v6];

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

@end