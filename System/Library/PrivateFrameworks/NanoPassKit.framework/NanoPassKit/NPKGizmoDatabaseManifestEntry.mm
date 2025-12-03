@interface NPKGizmoDatabaseManifestEntry
- (id)description;
@end

@implementation NPKGizmoDatabaseManifestEntry

- (id)description
{
  v9.receiver = self;
  v9.super_class = NPKGizmoDatabaseManifestEntry;
  v3 = [(NPKGizmoDatabaseManifestEntry *)&v9 description];
  uniqueID = [(NPKGizmoDatabaseManifestEntry *)self uniqueID];
  localManifestHashes = [(NPKGizmoDatabaseManifestEntry *)self localManifestHashes];
  remoteManifestHashes = [(NPKGizmoDatabaseManifestEntry *)self remoteManifestHashes];
  v7 = [v3 stringByAppendingFormat:@"(uniqueID %@ localHashes %@ remoteHashes %@)", uniqueID, localManifestHashes, remoteManifestHashes];

  return v7;
}

@end