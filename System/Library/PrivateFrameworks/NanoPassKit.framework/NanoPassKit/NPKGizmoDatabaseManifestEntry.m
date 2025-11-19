@interface NPKGizmoDatabaseManifestEntry
- (id)description;
@end

@implementation NPKGizmoDatabaseManifestEntry

- (id)description
{
  v9.receiver = self;
  v9.super_class = NPKGizmoDatabaseManifestEntry;
  v3 = [(NPKGizmoDatabaseManifestEntry *)&v9 description];
  v4 = [(NPKGizmoDatabaseManifestEntry *)self uniqueID];
  v5 = [(NPKGizmoDatabaseManifestEntry *)self localManifestHashes];
  v6 = [(NPKGizmoDatabaseManifestEntry *)self remoteManifestHashes];
  v7 = [v3 stringByAppendingFormat:@"(uniqueID %@ localHashes %@ remoteHashes %@)", v4, v5, v6];

  return v7;
}

@end