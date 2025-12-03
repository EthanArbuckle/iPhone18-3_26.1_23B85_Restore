@interface CAMBurstClusterDivider
- (int64_t)compareActionAmounts:(id)amounts;
- (int64_t)compareDividers:(id)dividers;
- (int64_t)compareIndices:(id)indices;
@end

@implementation CAMBurstClusterDivider

- (int64_t)compareDividers:(id)dividers
{
  [dividers dividerScore];
  v6 = v5;
  [(CAMBurstClusterDivider *)self dividerScore];
  if (v6 > v7)
  {
    return 1;
  }

  [dividers dividerScore];
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

- (int64_t)compareIndices:(id)indices
{
  leftImage = [indices leftImage];
  if (leftImage > [(CAMBurstClusterDivider *)self leftImage])
  {
    return -1;
  }

  leftImage2 = [indices leftImage];
  return leftImage2 < [(CAMBurstClusterDivider *)self leftImage];
}

- (int64_t)compareActionAmounts:(id)amounts
{
  [amounts actionAmount];
  v6 = v5;
  [(CAMBurstClusterDivider *)self actionAmount];
  if (v6 > v7)
  {
    return 1;
  }

  [amounts actionAmount];
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