@interface MAAsset
- (NSString)assetState;
- (id)compatibilityVersion;
- (id)configurationBundleURLsForType:(id)a3;
- (id)contentVersion;
- (int64_t)db_compareCompatibilityVersionTo:(id)a3;
- (int64_t)db_compareContentRevisionTo:(id)a3;
- (int64_t)db_compareContentVersionTo:(id)a3;
- (int64_t)db_compareIgnoringContentRevisionTo:(id)a3;
- (int64_t)db_comparePlatformScoreTo:(id)a3;
- (int64_t)db_compareTo:(id)a3;
- (uint64_t)contentRevision;
@end

@implementation MAAsset

- (int64_t)db_compareIgnoringContentRevisionTo:(id)a3
{
  v4 = a3;
  v5 = [(MAAsset *)self db_compareContentVersionTo:v4];
  if (!v5)
  {
    [(MAAsset *)self db_compareCompatibilityVersionTo:v4];
    v5 = [(MAAsset *)self db_comparePlatformScoreTo:v4];
  }

  return v5;
}

- (int64_t)db_compareTo:(id)a3
{
  v4 = a3;
  v5 = [(MAAsset *)self db_compareIgnoringContentRevisionTo:v4];
  if (!v5)
  {
    v5 = [(MAAsset *)self db_compareContentRevisionTo:v4];
  }

  return v5;
}

- (NSString)assetState
{
  v2 = [(MAAsset *)self state];
  if ((v2 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100010A30 + (v2 - 1));
  }
}

- (id)compatibilityVersion
{
  if (a1)
  {
    sub_1000094C8(_0, a1);
    a1 = _0[1];
    v1 = _0[3];
  }

  return a1;
}

- (int64_t)db_compareCompatibilityVersionTo:(id)a3
{
  v4 = a3;
  v5 = [MAAsset compatibilityVersion]_0(self);
  v6 = [MAAsset compatibilityVersion]_0(v4);

  v7 = [v5 compare:v6];
  return v7;
}

- (id)contentVersion
{
  if (a1)
  {
    sub_100009530(_0, a1);
    a1 = _0[1];
    v1 = _0[3];
  }

  return a1;
}

- (int64_t)db_compareContentVersionTo:(id)a3
{
  v4 = a3;
  v5 = [MAAsset contentVersion]_0(self);
  v6 = [MAAsset contentVersion]_0(v4);

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

- (int64_t)db_compareContentRevisionTo:(id)a3
{
  v4 = a3;
  v5 = [MAAsset contentRevision]_0(self);
  v6 = [MAAsset contentRevision]_0(v4);

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (int64_t)db_comparePlatformScoreTo:(id)a3
{
  v4 = a3;
  v5 = sub_1000064D8(self);
  v6 = sub_1000064D8(v4);

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (id)configurationBundleURLsForType:(id)a3
{
  v4 = a3;
  v5 = [(MAAsset *)self assetType];
  v6 = [v5 isEqual:@"com.apple.MobileAsset.GameController.DB1"];

  if (v6)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006CC8;
    v13[3] = &unk_100010A10;
    v13[4] = self;
    v14 = v4;
    v7 = [GCFuture futureWithLabel:@"Find configuration bundles in asset" onQueue:0 block:v13];
  }

  else
  {
    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSLocalizedFailureReasonErrorKey;
    v16[0] = @"Invalid asset.";
    v9 = [(MAAsset *)self assetType];
    v10 = [NSString stringWithFormat:@"Asset has incorrect type '%@'.", v9];
    v16[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v12 = sub_10000783C(NSError, 2, v11);
    v7 = [GCFuture futureWithError:v12];
  }

  return v7;
}

@end