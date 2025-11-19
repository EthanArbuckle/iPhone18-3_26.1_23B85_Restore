@interface ML3ProtoSyncExportSession
- (ML3ProtoSyncExportSession)initWithLibrary:(id)a3 outputStream:(id)a4 syncType:(int)a5;
- (id)_writSyncPackageToStream:(id)a3;
- (id)begin:(unsigned int)a3;
- (id)end;
- (id)exportAlbumArtistAdded:(unint64_t)a3;
- (id)exportAlbumArtistDeleted:(unint64_t)a3;
- (id)exportAlbumArtistUpdated:(unint64_t)a3;
- (id)exportAlbumUpdated:(unint64_t)a3;
- (id)exportLibraryPinWithCloudItemID:(int64_t)a3 cloudLibraryID:(id)a4 defaultAtion:(int64_t)a5 type:(int64_t)a6 position:(int64_t)a7 positionUUID:(id)a8;
- (id)exportPlaylistAdded:(unint64_t)a3;
- (id)exportPlaylistDeleted:(unint64_t)a3;
- (id)exportPlaylistUpdated:(unint64_t)a3;
- (id)exportTrackAdded:(unint64_t)a3;
- (id)exportTrackDeleted:(unint64_t)a3;
- (id)exportTrackUpdated:(unint64_t)a3;
@end

@implementation ML3ProtoSyncExportSession

- (id)_writSyncPackageToStream:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 data];
  [v4 length];
  v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v19 length:PBDataWriterWriteBareVarint() freeWhenDone:0];
  streamWriter = self->_streamWriter;
  v16 = 0;
  v7 = [(MSVStreamWriter *)streamWriter writeAllData:v5 error:&v16];
  v8 = v16;
  if (v7)
  {
    v9 = self->_streamWriter;
    v15 = v8;
    v10 = [(MSVStreamWriter *)v9 writeAllData:v4 error:&v15];
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
  self->_stats.totalSize += [v4 length] + v13;

  return v11;
}

- (id)exportLibraryPinWithCloudItemID:(int64_t)a3 cloudLibraryID:(id)a4 defaultAtion:(int64_t)a5 type:(int64_t)a6 position:(int64_t)a7 positionUUID:(id)a8
{
  ++self->_stats.pinAdds;
  v13 = a8;
  v14 = a4;
  v15 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v15 setType:4];
  v16 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v16 setOperationType:1];
  v17 = objc_alloc_init(MIPMultiverseIdentifier);
  [(MIPMultiverseIdentifier *)v17 setMediaObjectType:9];
  [(MIPMultiverseIdentifier *)v17 setSagaId:a3];
  [(MIPMultiverseIdentifier *)v17 setCloudLibraryId:v14];
  [(MSPMediaSyncOperation *)v16 setMultiverseId:v17];
  v18 = objc_alloc_init(MIPLibraryPin);
  [(MIPLibraryPin *)v18 setCloudItemID:a3];
  [(MIPLibraryPin *)v18 setCloudLibraryID:v14];

  [(MIPLibraryPin *)v18 setDefaultAction:a5];
  [(MIPLibraryPin *)v18 setPosition:a7];
  [(MIPLibraryPin *)v18 setEntityType:a6];
  [(MIPLibraryPin *)v18 setPositionUUID:v13];

  [(MSPMediaSyncOperation *)v16 setLibraryPin:v18];
  [(MSPMediaSyncPackage *)v15 setSyncOperation:v16];
  v19 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v15];

  return v19;
}

- (id)exportAlbumUpdated:(unint64_t)a3
{
  ++self->_stats.albumUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:2];
  v7 = [ML3Album alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3Album *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setAlbum:v10];

  v11 = [(ML3Album *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v11];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportAlbumArtistUpdated:(unint64_t)a3
{
  ++self->_stats.artistUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:2];
  v7 = [ML3AlbumArtist alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3AlbumArtist *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setArtist:v10];

  v11 = [(ML3AlbumArtist *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v11];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportAlbumArtistDeleted:(unint64_t)a3
{
  ++self->_stats.artistUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:3];
  v7 = [ML3AlbumArtist alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3AlbumArtist *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setArtist:v10];

  v11 = [(ML3AlbumArtist *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v11];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportAlbumArtistAdded:(unint64_t)a3
{
  ++self->_stats.artistAdds;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:1];
  v7 = [ML3AlbumArtist alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3AlbumArtist *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setArtist:v10];

  v11 = [(ML3AlbumArtist *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v11];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportPlaylistUpdated:(unint64_t)a3
{
  ++self->_stats.playlistUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:2];
  v7 = [ML3Container alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3Container *)v9 protocolItemForDynamicUpdate];
  [(MSPMediaSyncOperation *)v6 setPlaylist:v10];

  v11 = [(ML3Container *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v11];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportPlaylistDeleted:(unint64_t)a3
{
  ++self->_stats.playlistDeletes;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:3];
  v7 = [ML3Container alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3Container *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v10];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v11 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v11;
}

- (id)exportPlaylistAdded:(unint64_t)a3
{
  ++self->_stats.playlistAdds;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:1];
  v7 = [ML3Container alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3Container *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setPlaylist:v10];

  v11 = [(ML3Container *)v9 multiverseIdentifier];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v11];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportTrackDeleted:(unint64_t)a3
{
  ++self->_stats.trackDeletes;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:3];
  v7 = [ML3Track alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3Track *)v9 multiverseIdentifierLibraryOnly:1];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v10];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v11 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v11;
}

- (id)exportTrackUpdated:(unint64_t)a3
{
  ++self->_stats.trackUpdates;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:2];
  v7 = [ML3Track alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3Track *)v9 protocolItemForDynamicUpdate];
  [(MSPMediaSyncOperation *)v6 setMediaItem:v10];

  v11 = [(ML3Track *)v9 multiverseIdentifierLibraryOnly:1];
  [(MSPMediaSyncOperation *)v6 setMultiverseId:v11];

  [(MSPMediaSyncPackage *)v5 setSyncOperation:v6];
  v12 = [(ML3ProtoSyncExportSession *)self _writSyncPackageToStream:v5];

  return v12;
}

- (id)exportTrackAdded:(unint64_t)a3
{
  ++self->_stats.trackAdds;
  v5 = objc_alloc_init(MSPMediaSyncPackage);
  [(MSPMediaSyncPackage *)v5 setType:4];
  v6 = objc_alloc_init(MSPMediaSyncOperation);
  [(MSPMediaSyncOperation *)v6 setOperationType:1];
  v7 = [ML3Track alloc];
  v8 = [(ML3ExportSession *)self library];
  v9 = [(ML3Entity *)v7 initWithPersistentID:a3 inLibrary:v8];

  v10 = [(ML3Track *)v9 protocolItem];
  [(MSPMediaSyncOperation *)v6 setMediaItem:v10];

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

- (id)begin:(unsigned int)a3
{
  v3 = *&a3;
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
  v8 = [(ML3ExportSession *)self outputStream];
  v9 = [v7 initWithOutputStream:v8 queue:0];
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

- (ML3ProtoSyncExportSession)initWithLibrary:(id)a3 outputStream:(id)a4 syncType:(int)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = ML3ProtoSyncExportSession;
  v9 = [(ML3ExportSession *)&v13 initWithLibrary:v8 outputStream:a4];
  if (v9)
  {
    v10 = [v8 libraryUID];
    libraryUUID = v9->_libraryUUID;
    v9->_libraryUUID = v10;

    v9->_syncType = a5;
  }

  return v9;
}

@end