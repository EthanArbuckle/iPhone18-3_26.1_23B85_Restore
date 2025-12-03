@interface ML3DatabaseImport
- (ML3DatabaseImport)initWithCoder:(id)coder;
- (ML3DatabaseImport)initWithLibraryPath:(id)path trackData:(id)data playlistData:(id)playlistData;
- (ML3DatabaseImport)initWithLibraryPath:(id)path trackData:(id)data playlistData:(id)playlistData albumArtistData:(id)artistData albumData:(id)albumData libraryPinsData:(id)pinsData clientIdentity:(id)identity;
- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3DatabaseImport

- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class
{
  v5 = [[(objc_class *)class allocWithZone:zone] initWithLibraryPath:self->_libraryPath trackData:self->_trackData playlistData:self->_playlistData albumArtistData:self->_albumArtistData albumData:self->_albumData libraryPinsData:self->_libraryPinsData clientIdentity:self->_clientIdentity];
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

- (ML3DatabaseImport)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v22 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseImport.m" lineNumber:164 description:{@"%@: coder must support keyed coding", v22}];
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryPath"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackData"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playlistData"];
  v9 = [coderCopy decodeTCCIdentityForKey:@"clientIdentity"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"albumArtistData"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"albumData"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryPinsData"];
  v13 = [(ML3DatabaseImport *)self initWithLibraryPath:v6 trackData:v7 playlistData:v8 albumArtistData:v10 albumData:v11 libraryPinsData:v12 clientIdentity:v9];
  if (v13)
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileHandle"];
    fileHandle = v13->_fileHandle;
    v13->_fileHandle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syncAnchor"];
    syncAnchor = v13->_syncAnchor;
    v13->_syncAnchor = v16;

    v13->_resetSync = [coderCopy decodeBoolForKey:@"resetSync"];
    v13->_sagaEnabled = [coderCopy decodeBoolForKey:@"sagaEnabled"];
    v13->_storeAccountID = [coderCopy decodeInt64ForKey:@"storeAccountID"];
    v13->_preferredVideoQuality = [coderCopy decodeInt64ForKey:@"preferredVideoQuality"];
    v13->_homeSharingBasePlaylistID = [coderCopy decodeInt32ForKey:@"homeSharingBasePlaylistID"];
    v13->_tracksAreLibraryOwnedContent = [coderCopy decodeBoolForKey:@"tracksAreLibraryOwnedContent"];
    v13->_playlistsAreLibraryOwnedContent = [coderCopy decodeBoolForKey:@"playlistsAreLibraryOwnedContent"];
    v13->_pendingMatch = [coderCopy decodeBoolForKey:@"pendingMatch"];
    v13->_isServerImport = [coderCopy decodeBoolForKey:@"isServerImport"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syncLibraryUUID"];
    syncLibraryID = v13->_syncLibraryID;
    v13->_syncLibraryID = v18;

    v13->_suspendable = [coderCopy decodeBoolForKey:@"suspendable"];
    v13->_pairedDeviceCanProcessStandaloneCollections = [coderCopy decodeBoolForKey:@"pairedDeviceCanProcessStandaloneCollections"];
    v13->_clientInitiatedReset = [coderCopy decodeBoolForKey:@"clientInitiatedResetSync"];
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v6 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseImport.m" lineNumber:136 description:{@"%@: coder must support keyed coding", v6}];
  }

  [coderCopy encodeObject:self->_libraryPath forKey:@"libraryPath"];
  [coderCopy encodeObject:self->_trackData forKey:@"trackData"];
  [coderCopy encodeObject:self->_playlistData forKey:@"playlistData"];
  [coderCopy encodeObject:self->_albumArtistData forKey:@"albumArtistData"];
  [coderCopy encodeObject:self->_albumData forKey:@"albumData"];
  [coderCopy encodeObject:self->_libraryPinsData forKey:@"libraryPinsData"];
  [coderCopy encodeObject:self->_fileHandle forKey:@"fileHandle"];
  [coderCopy encodeObject:self->_syncAnchor forKey:@"syncAnchor"];
  [coderCopy encodeBool:self->_resetSync forKey:@"resetSync"];
  [coderCopy encodeBool:self->_sagaEnabled forKey:@"sagaEnabled"];
  [coderCopy encodeInt64:self->_storeAccountID forKey:@"storeAccountID"];
  [coderCopy encodeInt64:self->_preferredVideoQuality forKey:@"preferredVideoQuality"];
  [coderCopy encodeInt32:self->_homeSharingBasePlaylistID forKey:@"homeSharingBasePlaylistID"];
  [coderCopy encodeBool:self->_tracksAreLibraryOwnedContent forKey:@"tracksAreLibraryOwnedContent"];
  [coderCopy encodeBool:self->_playlistsAreLibraryOwnedContent forKey:@"playlistsAreLibraryOwnedContent"];
  [coderCopy encodeBool:self->_pendingMatch forKey:@"pendingMatch"];
  [coderCopy encodeBool:self->_isServerImport forKey:@"isServerImport"];
  [coderCopy encodeObject:self->_syncLibraryID forKey:@"syncLibraryUUID"];
  [coderCopy encodeBool:self->_suspendable forKey:@"suspendable"];
  [coderCopy encodeBool:self->_pairedDeviceCanProcessStandaloneCollections forKey:@"pairedDeviceCanProcessStandaloneCollections"];
  [coderCopy encodeBool:self->_clientInitiatedReset forKey:@"clientInitiatedResetSync"];
  [coderCopy encodeTCCIdentity:self->_clientIdentity forKey:@"clientIdentity"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ML3DatabaseImport *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ML3DatabaseImport *)self _copyWithZone:zone usingConcreteClass:v5];
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

- (ML3DatabaseImport)initWithLibraryPath:(id)path trackData:(id)data playlistData:(id)playlistData albumArtistData:(id)artistData albumData:(id)albumData libraryPinsData:(id)pinsData clientIdentity:(id)identity
{
  pathCopy = path;
  dataCopy = data;
  playlistDataCopy = playlistData;
  artistDataCopy = artistData;
  albumDataCopy = albumData;
  pinsDataCopy = pinsData;
  identityCopy = identity;
  v36.receiver = self;
  v36.super_class = ML3DatabaseImport;
  v22 = [(ML3DatabaseImport *)&v36 init];
  if (v22)
  {
    v23 = [pathCopy copy];
    libraryPath = v22->_libraryPath;
    v22->_libraryPath = v23;

    v25 = [dataCopy copy];
    trackData = v22->_trackData;
    v22->_trackData = v25;

    v27 = [playlistDataCopy copy];
    playlistData = v22->_playlistData;
    v22->_playlistData = v27;

    v29 = [artistDataCopy copy];
    albumArtistData = v22->_albumArtistData;
    v22->_albumArtistData = v29;

    v31 = [albumDataCopy copy];
    albumData = v22->_albumData;
    v22->_albumData = v31;

    v33 = [pinsDataCopy copy];
    libraryPinsData = v22->_libraryPinsData;
    v22->_libraryPinsData = v33;

    *&v22->_tracksAreLibraryOwnedContent = 257;
    v22->_pairedDeviceCanProcessStandaloneCollections = 0;
    v22->_suspendable = 1;
    objc_storeStrong(&v22->_clientIdentity, identity);
    v22->_clientInitiatedReset = 0;
    v22->_resetSync = 0;
  }

  return v22;
}

- (ML3DatabaseImport)initWithLibraryPath:(id)path trackData:(id)data playlistData:(id)playlistData
{
  playlistDataCopy = playlistData;
  dataCopy = data;
  pathCopy = path;
  v11 = MSVTCCIdentityForCurrentProcess();
  v12 = [(ML3DatabaseImport *)self initWithLibraryPath:pathCopy trackData:dataCopy playlistData:playlistDataCopy clientIdentity:v11];

  return v12;
}

@end