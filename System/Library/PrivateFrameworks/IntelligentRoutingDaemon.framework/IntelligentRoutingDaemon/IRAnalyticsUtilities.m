@interface IRAnalyticsUtilities
+ (id)candidateModelTypeForCandidate:(id)a3;
+ (id)candidateTypeForCandidate:(id)a3;
+ (int64_t)getRedactedBundleID:(id)a3;
@end

@implementation IRAnalyticsUtilities

+ (int64_t)getRedactedBundleID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqual:@"com.apple.Music"])
    {
      v5 = 1;
    }

    else if ([v4 isEqual:@"com.apple.tv"])
    {
      v5 = 2;
    }

    else if ([v4 isEqual:@"com.apple.music.classical"])
    {
      v5 = 3;
    }

    else if ([v4 isEqual:@"com.apple.mobilesafari"])
    {
      v5 = 4;
    }

    else if ([v4 isEqual:@"com.apple.podcasts"])
    {
      v5 = 5;
    }

    else if ([v4 hasPrefix:@"com.apple."])
    {
      v5 = 6;
    }

    else
    {
      v5 = 7;
    }
  }

  else
  {
    v5 = 8;
  }

  return v5;
}

+ (id)candidateTypeForCandidate:(id)a3
{
  v3 = a3;
  v4 = [v3 nodes];
  v5 = [v4 count];

  if (v5 <= 1)
  {
    v7 = [v3 nodes];
    v8 = [v7 allObjects];
    v9 = [v8 firstObject];
    v10 = [v9 avOutputDevice];

    if (v10)
    {
      v11 = [v3 nodes];
      v12 = [v11 allObjects];
      v13 = [v12 firstObject];
      v14 = [v13 avOutputDevice];
      v6 = IRAVOutputDeviceTypeToString([v14 deviceType]);
    }

    else
    {
      v6 = @"Invalid";
    }
  }

  else
  {
    v6 = @"Group";
  }

  return v6;
}

+ (id)candidateModelTypeForCandidate:(id)a3
{
  v3 = a3;
  v4 = [v3 nodes];
  v5 = [v4 count];

  if (v5 <= 1)
  {
    v7 = [v3 nodes];
    v8 = [v7 allObjects];
    v9 = [v8 firstObject];
    v10 = [v9 avOutputDevice];

    if (v10)
    {
      v11 = [v3 nodes];
      v12 = [v11 allObjects];
      v13 = [v12 firstObject];
      v14 = [v13 avOutputDevice];
      v6 = IRAVOutputDeviceSubTypeToString([v14 deviceSubType]);
    }

    else
    {
      v6 = @"Invalid";
    }
  }

  else
  {
    v6 = @"Cluster";
  }

  return v6;
}

@end