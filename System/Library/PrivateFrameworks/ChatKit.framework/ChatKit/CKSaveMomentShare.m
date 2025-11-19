@interface CKSaveMomentShare
@end

@implementation CKSaveMomentShare

void ___CKSaveMomentShare_block_invoke(void *a1, __int128 *a2)
{
  v4 = a1[4];
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v6 = [v4 assetAtItemIndexPath:&v11];
  v7 = a1[5];
  v8 = [v6 uuid];
  LODWORD(v7) = [v7 containsObject:v8];

  if (v7)
  {
    v9 = a1[6];
    v10 = a2[1];
    v11 = *a2;
    v12 = v10;
    [v9 addIndexPath:&v11];
  }
}

@end