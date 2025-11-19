@interface CAMBurstClusterDivider
- (int64_t)compareActionAmounts:(id)a3;
- (int64_t)compareDividers:(id)a3;
- (int64_t)compareIndices:(id)a3;
@end

@implementation CAMBurstClusterDivider

- (int64_t)compareDividers:(id)a3
{
  [a3 dividerScore];
  v6 = v5;
  [(CAMBurstClusterDivider *)self dividerScore];
  if (v6 > v7)
  {
    return 1;
  }

  [a3 dividerScore];
  v10 = v9;
  [(CAMBurstClusterDivider *)self dividerScore];
  if (v10 >= v11)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (int64_t)compareIndices:(id)a3
{
  v5 = [a3 leftImage];
  if (v5 > [(CAMBurstClusterDivider *)self leftImage])
  {
    return -1;
  }

  v7 = [a3 leftImage];
  return v7 < [(CAMBurstClusterDivider *)self leftImage];
}

- (int64_t)compareActionAmounts:(id)a3
{
  [a3 actionAmount];
  v6 = v5;
  [(CAMBurstClusterDivider *)self actionAmount];
  if (v6 > v7)
  {
    return 1;
  }

  [a3 actionAmount];
  v10 = v9;
  [(CAMBurstClusterDivider *)self actionAmount];
  if (v10 >= v11)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

@end