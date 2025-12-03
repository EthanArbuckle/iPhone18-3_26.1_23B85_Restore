@interface MBAssetFetchSummary
- (id)description;
@end

@implementation MBAssetFetchSummary

- (id)description
{
  v3 = [(MBAssetFetchSummary *)self end];
  start = [(MBAssetFetchSummary *)self start];
  [v3 timeIntervalSinceDate:start];
  v6 = v5;

  fetchedAssetCount = [(MBAssetFetchSummary *)self fetchedAssetCount];
  fetchedAssetBytes = [(MBAssetFetchSummary *)self fetchedAssetBytes];
  v9 = [NSByteCountFormatter stringFromByteCount:(fetchedAssetBytes / v6) countStyle:0];
  v10 = objc_opt_class();
  v11 = [NSString stringWithFormat:@"<%s: %p duration=%.2fs fetchedAssetCount=%llu fetchedAssetBytes=%llu tx=%@/s>", class_getName(v10), self, *&v6, fetchedAssetCount, fetchedAssetBytes, v9];

  return v11;
}

@end