@interface IRAnalyticsUtilities
+ (id)candidateModelTypeForCandidate:(id)candidate;
+ (id)candidateTypeForCandidate:(id)candidate;
+ (int64_t)getRedactedBundleID:(id)d;
@end

@implementation IRAnalyticsUtilities

+ (int64_t)getRedactedBundleID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    if ([dCopy isEqual:@"com.apple.Music"])
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

+ (id)candidateTypeForCandidate:(id)candidate
{
  candidateCopy = candidate;
  nodes = [candidateCopy nodes];
  v5 = [nodes count];

  if (v5 <= 1)
  {
    nodes2 = [candidateCopy nodes];
    allObjects = [nodes2 allObjects];
    firstObject = [allObjects firstObject];
    avOutputDevice = [firstObject avOutputDevice];

    if (avOutputDevice)
    {
      nodes3 = [candidateCopy nodes];
      allObjects2 = [nodes3 allObjects];
      firstObject2 = [allObjects2 firstObject];
      avOutputDevice2 = [firstObject2 avOutputDevice];
      v6 = IRAVOutputDeviceTypeToString([avOutputDevice2 deviceType]);
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

+ (id)candidateModelTypeForCandidate:(id)candidate
{
  candidateCopy = candidate;
  nodes = [candidateCopy nodes];
  v5 = [nodes count];

  if (v5 <= 1)
  {
    nodes2 = [candidateCopy nodes];
    allObjects = [nodes2 allObjects];
    firstObject = [allObjects firstObject];
    avOutputDevice = [firstObject avOutputDevice];

    if (avOutputDevice)
    {
      nodes3 = [candidateCopy nodes];
      allObjects2 = [nodes3 allObjects];
      firstObject2 = [allObjects2 firstObject];
      avOutputDevice2 = [firstObject2 avOutputDevice];
      v6 = IRAVOutputDeviceSubTypeToString([avOutputDevice2 deviceSubType]);
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