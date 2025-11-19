@interface HKTextBlockClosestToPoint
@end

@implementation HKTextBlockClosestToPoint

uint64_t ___HKTextBlockClosestToPoint_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 boundingBox];
  MidX = CGRectGetMidX(v32);
  [v6 boundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v33.origin.x = v9;
  v33.origin.y = v11;
  v33.size.width = v13;
  v33.size.height = v15;
  MidY = CGRectGetMidY(v33);
  [v5 boundingBox];
  v17 = CGRectGetMidX(v34);
  [v5 boundingBox];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v35.origin.x = v19;
  v35.origin.y = v21;
  v35.size.width = v23;
  v35.size.height = v25;
  v26 = CGRectGetMidY(v35);
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  v29 = (MidY - v28) * (MidY - v28) + (MidX - v27) * (MidX - v27);
  v30 = (v26 - v28) * (v26 - v28) + (v17 - v27) * (v17 - v27);
  if (v29 < v30)
  {
    return -1;
  }

  else
  {
    return v30 < v29;
  }
}

@end