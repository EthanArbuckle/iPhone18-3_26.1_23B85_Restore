@interface NUStoragePoolStats
- (float)reusedRate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)totalBytes;
- (int64_t)totalCount;
- (void)setNonPurgeableBytes:(int64_t)a3;
- (void)setUsedBytes:(int64_t)a3;
- (void)setVolatileBytes:(int64_t)a3;
@end

@implementation NUStoragePoolStats

- (id)description
{
  [(NUStoragePoolStats *)self usedBytes];
  v22 = NSLocalizedFileSizeDescription();
  [(NUStoragePoolStats *)self peakUsedBytes];
  v21 = NSLocalizedFileSizeDescription();
  [(NUStoragePoolStats *)self nonPurgeableBytes];
  v20 = NSLocalizedFileSizeDescription();
  [(NUStoragePoolStats *)self peakNonPurgeableBytes];
  v19 = NSLocalizedFileSizeDescription();
  [(NUStoragePoolStats *)self volatileBytes];
  v18 = NSLocalizedFileSizeDescription();
  [(NUStoragePoolStats *)self peakVolatileBytes];
  v16 = NSLocalizedFileSizeDescription();
  [(NUStoragePoolStats *)self totalBytes];
  v17 = NSLocalizedFileSizeDescription();
  [(NUStoragePoolStats *)self peakTotalBytes];
  v15 = NSLocalizedFileSizeDescription();
  [(NUStoragePoolStats *)self migrationBytes];
  v12 = NSLocalizedFileSizeDescription();
  [(NUStoragePoolStats *)self purgedBytes];
  v3 = NSLocalizedFileSizeDescription();
  v13 = MEMORY[0x1E696AEC0];
  v11 = [(NUStoragePoolStats *)self totalCount];
  v10 = [(NUStoragePoolStats *)self usedCount];
  v9 = [(NUStoragePoolStats *)self nonPurgeableCount];
  v8 = [(NUStoragePoolStats *)self volatileCount];
  v4 = [(NUStoragePoolStats *)self migrationCount];
  v5 = [(NUStoragePoolStats *)self purgedCount];
  [(NUStoragePoolStats *)self reusedRate];
  v14 = [v13 stringWithFormat:@"\tTotal:     %ld (%@/%@)\n\t Used:     %ld (%@/%@)\n\t   NP:     %ld (%@/%@)\n\t    V:     %ld (%@/%@) migrations: %ld (%@)\n\tPurge:     %ld (%@)\n\tReuse:     %d%% (%ld/%ld) NP: %ld V: %ld\n\tDiscarded: %ld\n", v11, v17, v15, v10, v22, v21, v9, v20, v19, v8, v18, v16, v4, v12, v5, v3, rintf(v6 * 100.0), -[NUStoragePoolStats reusedCount](self, "reusedCount"), -[NUStoragePoolStats requestCount](self, "requestCount"), -[NUStoragePoolStats reusedNonPurgeableCount](self, "reusedNonPurgeableCount"), -[NUStoragePoolStats reusedVolatileCount](self, "reusedVolatileCount"), -[NUStoragePoolStats discardedCount](self, "discardedCount")];

  return v14;
}

- (float)reusedRate
{
  if (![(NUStoragePoolStats *)self requestCount])
  {
    return 0.0;
  }

  v3 = [(NUStoragePoolStats *)self reusedCount];
  return v3 / [(NUStoragePoolStats *)self requestCount];
}

- (int64_t)totalBytes
{
  v3 = [(NUStoragePoolStats *)self usedBytes];
  v4 = [(NUStoragePoolStats *)self volatileBytes]+ v3;
  return v4 + [(NUStoragePoolStats *)self nonPurgeableBytes];
}

- (int64_t)totalCount
{
  v3 = [(NUStoragePoolStats *)self usedCount];
  v4 = [(NUStoragePoolStats *)self volatileCount]+ v3;
  return v4 + [(NUStoragePoolStats *)self nonPurgeableCount];
}

- (void)setVolatileBytes:(int64_t)a3
{
  peakVolatileBytes = self->_peakVolatileBytes;
  if (peakVolatileBytes <= a3)
  {
    peakVolatileBytes = a3;
  }

  self->_volatileBytes = a3;
  self->_peakVolatileBytes = peakVolatileBytes;
  peakTotalBytes = self->_peakTotalBytes;
  v6 = [(NUStoragePoolStats *)self totalBytes];
  if (peakTotalBytes <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = peakTotalBytes;
  }

  self->_peakTotalBytes = v7;
}

- (void)setNonPurgeableBytes:(int64_t)a3
{
  peakNonPurgeableBytes = self->_peakNonPurgeableBytes;
  if (peakNonPurgeableBytes <= a3)
  {
    peakNonPurgeableBytes = a3;
  }

  self->_nonPurgeableBytes = a3;
  self->_peakNonPurgeableBytes = peakNonPurgeableBytes;
  peakTotalBytes = self->_peakTotalBytes;
  v6 = [(NUStoragePoolStats *)self totalBytes];
  if (peakTotalBytes <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = peakTotalBytes;
  }

  self->_peakTotalBytes = v7;
}

- (void)setUsedBytes:(int64_t)a3
{
  peakUsedBytes = self->_peakUsedBytes;
  if (peakUsedBytes <= a3)
  {
    peakUsedBytes = a3;
  }

  self->_usedBytes = a3;
  self->_peakUsedBytes = peakUsedBytes;
  peakTotalBytes = self->_peakTotalBytes;
  v6 = [(NUStoragePoolStats *)self totalBytes];
  if (peakTotalBytes <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = peakTotalBytes;
  }

  self->_peakTotalBytes = v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[NUStoragePoolStats allocWithZone:?]];
  *(result + 1) = self->_peakTotalBytes;
  *(result + 2) = self->_usedCount;
  *(result + 3) = self->_usedBytes;
  *(result + 4) = self->_peakUsedBytes;
  *(result + 5) = self->_nonPurgeableCount;
  *(result + 6) = self->_nonPurgeableBytes;
  *(result + 7) = self->_peakNonPurgeableBytes;
  *(result + 8) = self->_volatileCount;
  *(result + 9) = self->_volatileBytes;
  *(result + 10) = self->_peakVolatileBytes;
  *(result + 11) = self->_discardedCount;
  *(result + 12) = self->_migrationCount;
  *(result + 13) = self->_migrationBytes;
  *(result + 14) = self->_purgedCount;
  *(result + 15) = self->_purgedBytes;
  *(result + 16) = self->_requestCount;
  *(result + 17) = self->_reusedNonPurgeableCount;
  *(result + 18) = self->_reusedVolatileCount;
  return result;
}

@end