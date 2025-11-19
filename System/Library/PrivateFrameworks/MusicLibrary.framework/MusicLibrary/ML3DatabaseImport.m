@interface ML3DatabaseImport
- (ML3DatabaseImport)initWithCoder:(id)a3;
- (ML3DatabaseImport)initWithLibraryPath:(id)a3 trackData:(id)a4 playlistData:(id)a5;
- (ML3DatabaseImport)initWithLibraryPath:(id)a3 trackData:(id)a4 playlistData:(id)a5 albumArtistData:(id)a6 albumData:(id)a7 libraryPinsData:(id)a8 clientIdentity:(id)a9;
- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3DatabaseImport

- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4
{
  v5 = [[(objc_class *)a4 allocWithZone:a3] initWithLibraryPath:self->_libraryPath trackData:self->_trackData playlistData:self->_playlistData albumArtistData:self->_albumArtistData albumData:self->_albumData libraryPinsData:self->_libraryPinsData clientIdentity:self->_clientIdentity];
  objc_storeStrong(v5 + 7, self->_fileHandle);
  v6 = [(NSString *)self->_syncAnchor copy];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 72) = self->_resetSync;
  *(v5 + 73) = self->_sagaEnabled;
  *(v5 + 10) = self->_storeAccountID;
  *(v5 + 11) = self->_preferredVideoQuality;
  *(v5 + 24) = self->_homeSharingBasePlaylistID;
  *(v5 + 100) = self->_tracksAreLibraryOwnedContent;
  *(v5 + 101) = self->_playlistsAreLibraryOwnedContent;
  *(v5 + 102) = self->_pendingMatch;
  *(v5 + 103) = self->_isServerImport;
  objc_storeStrong(v5 + 14, self->_syncLibraryID);
  *(v5 + 120) = self->_suspendable;
  *(v5 + 104) = self->_pairedDeviceCanProcessStandaloneCollections;
  *(v5 + 121) = self->_clientInitiatedReset;
  return v5;
}

- (ML3DatabaseImport)initWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = NSStringFromSelector(a2);
    [v21 handleFailureInMethod:a2 object:self file:@"ML3DatabaseImport.m" lineNumber:164 description:{@"%@: coder must support keyed coding", v22}];
  }

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"libraryPath"];
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"trackData"];
  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"playlistData"];
  v9 = [v5 decodeTCCIdentityForKey:@"clientIdentity"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"albumArtistData"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"albumData"];
  v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"libraryPinsData"];
  v13 = [(ML3DatabaseImport *)self initWithLibraryPath:v6 trackData:v7 playlistData:v8 albumArtistData:v10 albumData:v11 libraryPinsData:v12 clientIdentity:v9];
  if (v13)
  {
    v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"fileHandle"];
    fileHandle = v13->_fileHandle;
    v13->_fileHandle = v14;

    v16 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"syncAnchor"];
    syncAnchor = v13->_syncAnchor;
    v13->_syncAnchor = v16;

    v13->_resetSync = [v5 decodeBoolForKey:@"resetSync"];
    v13->_sagaEnabled = [v5 decodeBoolForKey:@"sagaEnabled"];
    v13->_storeAccountID = [v5 decodeInt64ForKey:@"storeAccountID"];
    v13->_preferredVideoQuality = [v5 decodeInt64ForKey:@"preferredVideoQuality"];
    v13->_homeSharingBasePlaylistID = [v5 decodeInt32ForKey:@"homeSharingBasePlaylistID"];
    v13->_tracksAreLibraryOwnedContent = [v5 decodeBoolForKey:@"tracksAreLibraryOwnedContent"];
    v13->_playlistsAreLibraryOwnedContent = [v5 decodeBoolForKey:@"playlistsAreLibraryOwnedContent"];
    v13->_pendingMatch = [v5 decodeBoolForKey:@"pendingMatch"];
    v13->_isServerImport = [v5 decodeBoolForKey:@"isServerImport"];
    v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"syncLibraryUUID"];
    syncLibraryID = v13->_syncLibraryID;
    v13->_syncLibraryID = v18;

    v13->_suspendable = [v5 decodeBoolForKey:@"suspendable"];
    v13->_pairedDeviceCanProcessStandaloneCollections = [v5 decodeBoolForKey:@"pairedDeviceCanProcessStandaloneCollections"];
    v13->_clientInitiatedReset = [v5 decodeBoolForKey:@"clientInitiatedResetSync"];
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  if (([v7 allowsKeyedCoding] & 1) == 0)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = NSStringFromSelector(a2);
    [v5 handleFailureInMethod:a2 object:self file:@"ML3DatabaseImport.m" lineNumber:136 description:{@"%@: coder must support keyed coding", v6}];
  }

  [v7 encodeObject:self->_libraryPath forKey:@"libraryPath"];
  [v7 encodeObject:self->_trackData forKey:@"trackData"];
  [v7 encodeObject:self->_playlistData forKey:@"playlistData"];
  [v7 encodeObject:self->_albumArtistData forKey:@"albumArtistData"];
  [v7 encodeObject:self->_albumData forKey:@"albumData"];
  [v7 encodeObject:self->_libraryPinsData forKey:@"libraryPinsData"];
  [v7 encodeObject:self->_fileHandle forKey:@"fileHandle"];
  [v7 encodeObject:self->_syncAnchor forKey:@"syncAnchor"];
  [v7 encodeBool:self->_resetSync forKey:@"resetSync"];
  [v7 encodeBool:self->_sagaEnabled forKey:@"sagaEnabled"];
  [v7 encodeInt64:self->_storeAccountID forKey:@"storeAccountID"];
  [v7 encodeInt64:self->_preferredVideoQuality forKey:@"preferredVideoQuality"];
  [v7 encodeInt32:self->_homeSharingBasePlaylistID forKey:@"homeSharingBasePlaylistID"];
  [v7 encodeBool:self->_tracksAreLibraryOwnedContent forKey:@"tracksAreLibraryOwnedContent"];
  [v7 encodeBool:self->_playlistsAreLibraryOwnedContent forKey:@"playlistsAreLibraryOwnedContent"];
  [v7 encodeBool:self->_pendingMatch forKey:@"pendingMatch"];
  [v7 encodeBool:self->_isServerImport forKey:@"isServerImport"];
  [v7 encodeObject:self->_syncLibraryID forKey:@"syncLibraryUUID"];
  [v7 encodeBool:self->_suspendable forKey:@"suspendable"];
  [v7 encodeBool:self->_pairedDeviceCanProcessStandaloneCollections forKey:@"pairedDeviceCanProcessStandaloneCollections"];
  [v7 encodeBool:self->_clientInitiatedReset forKey:@"clientInitiatedResetSync"];
  [v7 encodeTCCIdentity:self->_clientIdentity forKey:@"clientIdentity"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ML3DatabaseImport *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ML3DatabaseImport *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = @"NO";
  if (self->_tracksAreLibraryOwnedContent)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_playlistsAreLibraryOwnedContent)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_pendingMatch)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_clientInitiatedReset)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_pairedDeviceCanProcessStandaloneCollections)
  {
    v5 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@ %p libraryOwnedTracks=%@ libraryOwnedPlaylists=%@ pendingMatch=%@ _clientInitiatedReset=%@ pairedDeviceCanProcessStandaloneCollections=%@ libraryPath=%@>", v4, self, v6, v7, v8, v9, v5, self->_libraryPath];
}

- (ML3DatabaseImport)initWithLibraryPath:(id)a3 trackData:(id)a4 playlistData:(id)a5 albumArtistData:(id)a6 albumData:(id)a7 libraryPinsData:(id)a8 clientIdentity:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v36.receiver = self;
  v36.super_class = ML3DatabaseImport;
  v22 = [(ML3DatabaseImport *)&v36 init];
  if (v22)
  {
    v23 = [v15 copy];
    libraryPath = v22->_libraryPath;
    v22->_libraryPath = v23;

    v25 = [v16 copy];
    trackData = v22->_trackData;
    v22->_trackData = v25;

    v27 = [v17 copy];
    playlistData = v22->_playlistData;
    v22->_playlistData = v27;

    v29 = [v18 copy];
    albumArtistData = v22->_albumArtistData;
    v22->_albumArtistData = v29;

    v31 = [v19 copy];
    albumData = v22->_albumData;
    v22->_albumData = v31;

    v33 = [v20 copy];
    libraryPinsData = v22->_libraryPinsData;
    v22->_libraryPinsData = v33;

    *&v22->_tracksAreLibraryOwnedContent = 257;
    v22->_pairedDeviceCanProcessStandaloneCollections = 0;
    v22->_suspendable = 1;
    objc_storeStrong(&v22->_clientIdentity, a9);
    v22->_clientInitiatedReset = 0;
    v22->_resetSync = 0;
  }

  return v22;
}

- (ML3DatabaseImport)initWithLibraryPath:(id)a3 trackData:(id)a4 playlistData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = MSVTCCIdentityForCurrentProcess();
  v12 = [(ML3DatabaseImport *)self initWithLibraryPath:v10 trackData:v9 playlistData:v8 clientIdentity:v11];

  return v12;
}

@end