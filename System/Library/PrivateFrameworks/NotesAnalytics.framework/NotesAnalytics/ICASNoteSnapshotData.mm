@interface ICASNoteSnapshotData
- (ICASNoteSnapshotData)initWithNoteSnapshotSummary:(id)summary;
- (id)toDict;
@end

@implementation ICASNoteSnapshotData

- (ICASNoteSnapshotData)initWithNoteSnapshotSummary:(id)summary
{
  summaryCopy = summary;
  v9.receiver = self;
  v9.super_class = ICASNoteSnapshotData;
  v6 = [(ICASNoteSnapshotData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteSnapshotSummary, summary);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"noteSnapshotSummary";
  noteSnapshotSummary = [(ICASNoteSnapshotData *)self noteSnapshotSummary];
  if (noteSnapshotSummary)
  {
    noteSnapshotSummary2 = [(ICASNoteSnapshotData *)self noteSnapshotSummary];
  }

  else
  {
    noteSnapshotSummary2 = objc_opt_new();
  }

  v5 = noteSnapshotSummary2;
  v10[0] = noteSnapshotSummary2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end