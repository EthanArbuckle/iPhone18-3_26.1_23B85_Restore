@interface PHAssetResource
@end

@implementation PHAssetResource

uint64_t __61__PHAssetResource_MediaAnalysis__vcp_ascendingSizeComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 pixelWidth];
  v7 = [v4 pixelHeight];
  v8 = [v5 pixelWidth];
  v9 = [v5 pixelHeight];
  v10 = v7 * v6;
  if (v7 * v6)
  {
    v11 = v9 * v8;
    if (v9 * v8)
    {
      if (v10 > v11)
      {
        v12 = 1;
        goto LABEL_13;
      }

      if (v10 < v11)
      {
        v12 = -1;
        goto LABEL_13;
      }

LABEL_12:
      v15 = [v4 assetLocalIdentifier];
      v16 = [v5 assetLocalIdentifier];
      v12 = [v15 compare:v16];

      goto LABEL_13;
    }
  }

  v13 = [v5 type];
  v14 = [v4 type];
  if (v13 > v14)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  if (v13 == v14)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v12;
}

uint64_t __62__PHAssetResource_MediaAnalysis__vcp_descendingSizeComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 pixelWidth];
  v7 = [v4 pixelHeight];
  v8 = [v5 pixelWidth];
  v9 = [v5 pixelHeight];
  v10 = v7 * v6;
  if (v7 * v6)
  {
    v11 = v9 * v8;
    if (v9 * v8)
    {
      if (v10 > v11)
      {
        v12 = -1;
        goto LABEL_13;
      }

      if (v10 < v11)
      {
        v12 = 1;
        goto LABEL_13;
      }

LABEL_12:
      v15 = [v4 assetLocalIdentifier];
      v16 = [v5 assetLocalIdentifier];
      v12 = [v15 compare:v16];

      goto LABEL_13;
    }
  }

  v13 = [v5 type];
  v14 = [v4 type];
  if (v13 > v14)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v13 == v14)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v12;
}

@end