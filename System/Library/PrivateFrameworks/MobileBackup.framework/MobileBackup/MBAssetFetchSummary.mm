@interface MBAssetFetchSummary
- (id)description;
@end

@implementation MBAssetFetchSummary

- (id)description
{
  v3 = [(MBAssetFetchSummary *)self end];
  v4 = [(MBAssetFetchSummary *)self start];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = [(MBAssetFetchSummary *)self fetchedAssetCount];
  v8 = [(MBAssetFetchSummary *)self fetchedAssetBytes];
  v9 = [NSByteCountFormatter stringFromByteCount:(v8 / v6) countStyle:0];
  v10 = objc_opt_class();
  v11 = [NSString stringWithFormat:@"<%s: %p duration=%.2fs fetchedAssetCount=%llu fetchedAssetBytes=%llu tx=%@/s>", class_getName(v10), self, *&v6, v7, v8, v9];

  return v11;
}

@end