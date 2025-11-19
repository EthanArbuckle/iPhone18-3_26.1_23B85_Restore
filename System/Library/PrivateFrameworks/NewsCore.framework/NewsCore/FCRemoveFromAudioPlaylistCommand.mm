@interface FCRemoveFromAudioPlaylistCommand
- (FCRemoveFromAudioPlaylistCommand)initWithArticleID:(id)a3;
- (FCRemoveFromAudioPlaylistCommand)initWithItemID:(id)a3;
@end

@implementation FCRemoveFromAudioPlaylistCommand

- (FCRemoveFromAudioPlaylistCommand)initWithItemID:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695BA90];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:@"AudioPlaylist" ownerName:*MEMORY[0x1E695B728]];
  v8 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v5 zoneID:v7];

  if (v8)
  {
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(FCRemoveRecordsCommand *)self initWithRecordIDs:v9];
  }

  else
  {
    v10 = [(FCRemoveRecordsCommand *)self initWithRecordIDs:MEMORY[0x1E695E0F0]];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (FCRemoveFromAudioPlaylistCommand)initWithArticleID:(id)a3
{
  v4 = [MEMORY[0x1E69B6D18] identifierFromArticleID:a3];
  v5 = [(FCRemoveFromAudioPlaylistCommand *)self initWithItemID:v4];

  return v5;
}

@end