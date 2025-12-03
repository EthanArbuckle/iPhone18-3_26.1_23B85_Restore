@interface MAAsset
- (NSString)assetState;
- (id)compatibilityVersion;
- (id)configurationBundleURLsForType:(id)type;
- (id)contentVersion;
- (int64_t)db_compareCompatibilityVersionTo:(id)to;
- (int64_t)db_compareContentRevisionTo:(id)to;
- (int64_t)db_compareContentVersionTo:(id)to;
- (int64_t)db_compareIgnoringContentRevisionTo:(id)to;
- (int64_t)db_comparePlatformScoreTo:(id)to;
- (int64_t)db_compareTo:(id)to;
- (uint64_t)contentRevision;
@end

@implementation MAAsset

- (int64_t)db_compareIgnoringContentRevisionTo:(id)to
{
  toCopy = to;
  v5 = [(MAAsset *)self db_compareContentVersionTo:toCopy];
  if (!v5)
  {
    [(MAAsset *)self db_compareCompatibilityVersionTo:toCopy];
    v5 = [(MAAsset *)self db_comparePlatformScoreTo:toCopy];
  }

  return v5;
}

- (int64_t)db_compareTo:(id)to
{
  toCopy = to;
  v5 = [(MAAsset *)self db_compareIgnoringContentRevisionTo:toCopy];
  if (!v5)
  {
    v5 = [(MAAsset *)self db_compareContentRevisionTo:toCopy];
  }

  return v5;
}

- (NSString)assetState
{
  state = [(MAAsset *)self state];
  if ((state - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100010A30 + (state - 1));
  }
}

- (id)compatibilityVersion
{
  if (self)
  {
    sub_1000094C8(_0, self);
    self = _0[1];
    v1 = _0[3];
  }

  return self;
}

- (int64_t)db_compareCompatibilityVersionTo:(id)to
{
  toCopy = to;
  v5 = [MAAsset compatibilityVersion]_0(self);
  v6 = [MAAsset compatibilityVersion]_0(toCopy);

  v7 = [v5 compare:v6];
  return v7;
}

- (id)contentVersion
{
  if (self)
  {
    sub_100009530(_0, self);
    self = _0[1];
    v1 = _0[3];
  }

  return self;
}

- (int64_t)db_compareContentVersionTo:(id)to
{
  toCopy = to;
  v5 = [MAAsset contentVersion]_0(self);
  v6 = [MAAsset contentVersion]_0(toCopy);

  v7 = [v5 compare:v6];
  return v7;
}

- (uint64_t)contentRevision
{
  if (result)
  {
    sub_100009598(v1, result);
    return v1[1];
  }

  return result;
}

- (int64_t)db_compareContentRevisionTo:(id)to
{
  toCopy = to;
  v5 = [MAAsset contentRevision]_0(self);
  v6 = [MAAsset contentRevision]_0(toCopy);

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (int64_t)db_comparePlatformScoreTo:(id)to
{
  toCopy = to;
  v5 = sub_1000064D8(self);
  v6 = sub_1000064D8(toCopy);

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (id)configurationBundleURLsForType:(id)type
{
  typeCopy = type;
  assetType = [(MAAsset *)self assetType];
  v6 = [assetType isEqual:@"com.apple.MobileAsset.GameController.DB1"];

  if (v6)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006CC8;
    v13[3] = &unk_100010A10;
    v13[4] = self;
    v14 = typeCopy;
    v7 = [GCFuture futureWithLabel:@"Find configuration bundles in asset" onQueue:0 block:v13];
  }

  else
  {
    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSLocalizedFailureReasonErrorKey;
    v16[0] = @"Invalid asset.";
    assetType2 = [(MAAsset *)self assetType];
    v10 = [NSString stringWithFormat:@"Asset has incorrect type '%@'.", assetType2];
    v16[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v12 = sub_10000783C(NSError, 2, v11);
    v7 = [GCFuture futureWithError:v12];
  }

  return v7;
}

@end