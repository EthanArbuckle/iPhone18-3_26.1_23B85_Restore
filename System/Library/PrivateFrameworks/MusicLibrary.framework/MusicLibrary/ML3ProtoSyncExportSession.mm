@interface ML3ProtoSyncExportSession
- (ML3ProtoSyncExportSession)initWithLibrary:(id)library outputStream:(id)stream syncType:(int)type;
- (id)_writSyncPackageToStream:(id)stream;
- (id)begin:(unsigned int)begin;
- (id)end;
- (id)exportAlbumArtistAdded:(unint64_t)added;
- (id)exportAlbumArtistDeleted:(unint64_t)deleted;
- (id)exportAlbumArtistUpdated:(unint64_t)updated;
- (id)exportAlbumUpdated:(unint64_t)updated;
- (id)exportLibraryPinWithCloudItemID:(int64_t)d cloudLibraryID:(id)iD defaultAtion:(int64_t)ation type:(int64_t)type position:(int64_t)position positionUUID:(id)uID;
- (id)exportPlaylistAdded:(unint64_t)added;
- (id)exportPlaylistDeleted:(unint64_t)deleted;
- (id)exportPlaylistUpdated:(unint64_t)updated;
- (id)exportTrackAdded:(unint64_t)added;
- (id)exportTrackDeleted:(unint64_t)deleted;
- (id)exportTrackUpdated:(unint64_t)updated;
@end

@implementation ML3ProtoSyncExportSession

- (id)_writSyncPackageToStream:(id)stream
{
  v20 = *MEMORY[0x277D85DE8];
  data = [stream data];
  [data length];
  v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v19 length:PBDataWriterWriteBareVarint() freeWhenDone:0];
  streamWriter = self->_streamWriter;
  v16 = 0;
  v7 = [(MSVStreamWriter *)streamWriter writeAllData:v5 error:&v16];
  v8 = v16;
  if (v7)
  {
    v9 = self->_streamWriter;
    v15 = v8;
    v10 = [(MSVStreamWriter *)v9 writeAllData:data error:&v15];
    v11 = v15;

    if (v10)
    {
      goto LABEL_9;
    }

    v12 = os_log_create("com.apple.amp.medialibrary", "SyncData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "failed to write package data. err=%{public}@", buf, 0xCu);
    }

    v8 = v11;
  }

  else
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "SyncData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "failed to write package len. err=%{public}@", buf, 0xCu);
    }
  }

  v11 = v8;
LABEL_9:
  v13 = [v5 length];
  self->_stats.totalSize += [data length] + v13;

  return v11;
}

- (id)exportLibraryPinWithCloudItemID:(int64_t)d cloudLibraryID:(id)iD defaultAtion:(int64_t)ation type:(int64_t)type position:(int64_t)position positionUUID:(id)uID
{
  ++self->_stats.pinAdds;
  uIDCopy = uID;
  iDCopy = iD;
  v15 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v15 setType:4];
  v16 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v16 setOperationType:1];
  v17 = objc_alloc_init(MIPMultiverseIdentifier);
  [(MIPMultiverseIdentifier *)v17 setMediaObjectType:9];
  [(MIPMultiverseIdentifier *)v17 setSagaId:d];
  [(MIPMultiverseIdentifier *)v17 setCloudLibraryId:iDCopy];
  [(MSPMediaSyncOperation *)v16 setMultiverseId:v17];
  v18 = objc_alloc_init(MIPLibraryPin);
  [(MIPLibraryPin *)v18 setCloudItemID:d];
  [(MIPLibraryPin *)v18 setCloudLibraryID:iDCopy];

  [(MIPLibraryPin *)v18 setDefaultAction:ation];
  [(MIPLibraryPin *)v18 setPosition:position];
  [(MIPLibraryPin *)v18 setEntityType:type];
  [(MIPLibraryPin *)v18 setPositionUUID:uIDCopy];

  [(MSPMediaSyncOperation *)v16 setLibraryPin:v18];
  [(MSPMediaSyncPackage *)v15 setSyncOperation:v16];
  v19 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v15];

  return v19;
}

- (id)exportAlbumUpdated:(unint64_t)updated
{
  ++self->_stats.albumUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:2];
  v7 = [ML3Album alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:updated inLibrary:library];

  protocolItem = [(ML3Album *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setAlbum:protocolItem];

  multiverseIdentifier = [(ML3Album *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:multiverseIdentifier];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportAlbumArtistUpdated:(unint64_t)updated
{
  ++self->_stats.artistUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:2];
  v7 = [ML3AlbumArtist alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:updated inLibrary:library];

  protocolItem = [(ML3AlbumArtist *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setArtist:protocolItem];

  multiverseIdentifier = [(ML3AlbumArtist *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:multiverseIdentifier];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportAlbumArtistDeleted:(unint64_t)deleted
{
  ++self->_stats.artistUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:3];
  v7 = [ML3AlbumArtist alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:deleted inLibrary:library];

  protocolItem = [(ML3AlbumArtist *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setArtist:protocolItem];

  multiverseIdentifier = [(ML3AlbumArtist *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:multiverseIdentifier];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportAlbumArtistAdded:(unint64_t)added
{
  ++self->_stats.artistAdds;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:1];
  v7 = [ML3AlbumArtist alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:added inLibrary:library];

  protocolItem = [(ML3AlbumArtist *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setArtist:protocolItem];

  multiverseIdentifier = [(ML3AlbumArtist *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:multiverseIdentifier];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportPlaylistUpdated:(unint64_t)updated
{
  ++self->_stats.playlistUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:2];
  v7 = [ML3Container alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:updated inLibrary:library];

  protocolItemForDynamicUpdate = [(ML3Container *)v9 protocolItemForDynamicUpdate];
  [(MSPMediaSyncOperation *)v6 setPlaylist:protocolItemForDynamicUpdate];

  multiverseIdentifier = [(ML3Container *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:multiverseIdentifier];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportPlaylistDeleted:(unint64_t)deleted
{
  ++self->_stats.playlistDeletes;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:3];
  v7 = [ML3Container alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:deleted inLibrary:library];

  multiverseIdentifier = [(ML3Container *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:multiverseIdentifier];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v11 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v11;
}

- (id)exportPlaylistAdded:(unint64_t)added
{
  ++self->_stats.playlistAdds;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:1];
  v7 = [ML3Container alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:added inLibrary:library];

  protocolItem = [(ML3Container *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setPlaylist:protocolItem];

  multiverseIdentifier = [(ML3Container *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:multiverseIdentifier];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportTrackDeleted:(unint64_t)deleted
{
  ++self->_stats.trackDeletes;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:3];
  v7 = [ML3Track alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:deleted inLibrary:library];

  v10 = [(ML3Track *)v9 multiverseIdentifierLibraryOnly:1];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v10];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v11 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v11;
}

- (id)exportTrackUpdated:(unint64_t)updated
{
  ++self->_stats.trackUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:2];
  v7 = [ML3Track alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:updated inLibrary:library];

  protocolItemForDynamicUpdate = [(ML3Track *)v9 protocolItemForDynamicUpdate];
  [(MSPMediaSyncOperation *)v6 setMediaItem:protocolItemForDynamicUpdate];

  v11 = [(ML3Track *)v9 multiverseIdentifierLibraryOnly:1];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v11];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportTrackAdded:(unint64_t)added
{
  ++self->_stats.trackAdds;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:1];
  v7 = [ML3Track alloc];
  library = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:added inLibrary:library];

  protocolItem = [(ML3Track *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setMediaItem:protocolItem];

  v11 = [(ML3Track *)v9 multiverseIdentifierLibraryOnly:1];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v11];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)end
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v3 setType:1];
  [(MSPMediaSyncPackage *)v3 setLastPackage:1];
  v4 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v3];
  [(MSVStreamWriter *)self->_streamWriter stop];
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    totalSize = self->_stats.totalSize;
    trackAdds = self->_stats.trackAdds;
    trackUpdates = self->_stats.trackUpdates;
    trackDeletes = self->_stats.trackDeletes;
    playlistAdds = self->_stats.playlistAdds;
    v19 = v4;
    playlistDeletes = self->_stats.playlistDeletes;
    playlistUpdates = self->_stats.playlistUpdates;
    artistAdds = self->_stats.artistAdds;
    artistUpdates = self->_stats.artistUpdates;
    albumUpdates = self->_stats.albumUpdates;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v14 = v13 - self->_sessionStartTime;
    *buf = 67111680;
    v21 = totalSize;
    v22 = 1024;
    v23 = trackAdds;
    v24 = 1024;
    v25 = trackDeletes;
    v26 = 1024;
    v27 = trackUpdates;
    v28 = 1024;
    v29 = playlistAdds;
    v30 = 1024;
    v31 = playlistDeletes;
    v32 = 1024;
    v33 = playlistUpdates;
    v4 = v19;
    v34 = 1024;
    v35 = artistAdds;
    v36 = 1024;
    v37 = artistUpdates;
    v38 = 1024;
    v39 = albumUpdates;
    v40 = 2048;
    v41 = v14;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "finished export session: %d bytes, %d add_tracks, %d delete_tracks, %d update_tracks, %d add_playlists, %d delete_playlists, %d update_playlists, %d add_artists, %d update_artists, %d update_albums in %.2f seconds", buf, 0x48u);
  }

  return v4;
}

- (id)begin:(unsigned int)begin
{
  v3 = *&begin;
  v16 = *MEMORY[0x277D85DE8];
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = v3;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "starting proto export session. numOperations=%d", v15, 8u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_sessionStartTime = v6;
  v7 = objc_alloc(MEMORY[0x277D27F28]);
  outputStream = [(ML3ExportSession *)self outputStream];
  v9 = [v7 initWithOutputStream:outputStream queue:0];
  streamWriter = self->_streamWriter;
  self->_streamWriter = v9;

  [(MSVStreamWriter *)self->_streamWriter start];
  v11 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v11 setType:2];
  [(MSPMediaSyncPackage *)v11 setLastPackage:0];
  v12 = objc_alloc_init(MSPMediaSyncHeader);
  [(MSPMediaSyncHeader *)v12 setTotalPackages:v3];
  [(MSPMediaSyncHeader *)v12 setSyncType:self->_syncType];
  [(MSPMediaSyncPackage *)v11 setHeader:v12];
  v13 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v11];

  return v13;
}

- (ML3ProtoSyncExportSession)initWithLibrary:(id)library outputStream:(id)stream syncType:(int)type
{
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = ML3ProtoSyncExportSession;
  v9 = [(ML3ExportSession *)&v13 initWithLibrary:libraryCopy outputStream:stream];
  if (v9)
  {
    libraryUID = [libraryCopy libraryUID];
    libraryUUID = v9->_libraryUUID;
    v9->_libraryUUID = libraryUID;

    v9->_syncType = type;
  }

  return v9;
}

@end