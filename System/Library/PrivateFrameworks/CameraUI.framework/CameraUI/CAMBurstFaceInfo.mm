@interface CAMBurstFaceInfo
- (CAMBurstFaceInfo)init;
- (CGPoint)hwCenter;
- (CGPoint)swCenter;
- (CGRect)hwFaceRect;
- (CGRect)swFaceRect;
- (CGSize)hwSize;
- (CGSize)swSize;
- (float)overlapWithHwRect:(CGRect)rect;
- (float)overlapWithSwRect:(CGRect)rect;
@end

@implementation CAMBurstFaceInfo

- (CAMBurstFaceInfo)init
{
  v9.receiver = self;
  v9.super_class = CAMBurstFaceInfo;
  v2 = [(CAMBurstFaceInfo *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(CAMBurstFaceInfo *)v2 setSwFaceId:0xFFFFFFFFLL];
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
    [(CAMBurstFaceInfo *)v3 setSwCenter:*MEMORY[0x1E695EFF8], v5];
    v6 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
    [(CAMBurstFaceInfo *)v3 setSwSize:*MEMORY[0x1E695F060], v7];
    [(CAMBurstFaceInfo *)v3 setSwLastFrameSeen:0xFFFFFFFFLL];
    [(CAMBurstFaceInfo *)v3 setHwFaceId:0xFFFFFFFFLL];
    [(CAMBurstFaceInfo *)v3 setHwCenter:v4, v5];
    [(CAMBurstFaceInfo *)v3 setHwSize:v6, v7];
    [(CAMBurstFaceInfo *)v3 setHwLastFrameSeen:0xFFFFFFFFLL];
  }

  return v3;
}

- (CGRect)hwFaceRect
{
  [(CAMBurstFaceInfo *)self hwCenter];
  v4 = v3;
  [(CAMBurstFaceInfo *)self hwSize];
  v6 = v4 - v5 * 0.5;
  [(CAMBurstFaceInfo *)self hwCenter];
  v8 = v7;
  [(CAMBurstFaceInfo *)self hwSize];
  v10 = v8 - v9 * 0.5;
  [(CAMBurstFaceInfo *)self hwSize];
  v12 = v11;
  [(CAMBurstFaceInfo *)self hwSize];
  v14 = v13;
  v15 = v6;
  v16 = v10;
  v17 = v12;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)swFaceRect
{
  [(CAMBurstFaceInfo *)self swCenter];
  v4 = v3;
  [(CAMBurstFaceInfo *)self swSize];
  v6 = v4 - v5 * 0.5;
  [(CAMBurstFaceInfo *)self swCenter];
  v8 = v7;
  [(CAMBurstFaceInfo *)self swSize];
  v10 = v8 - v9 * 0.5;
  [(CAMBurstFaceInfo *)self swSize];
  v12 = v11;
  [(CAMBurstFaceInfo *)self swSize];
  v14 = v13;
  v15 = v6;
  v16 = v10;
  v17 = v12;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (float)overlapWithHwRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(CAMBurstFaceInfo *)self hwFaceId]== -1)
  {
    return 0.0;
  }

  [(CAMBurstFaceInfo *)self hwFaceRect];
  v8 = v11.size.width;
  v9 = v11.size.height;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v12 = CGRectIntersection(v11, v13);
  *&v12.origin.y = v12.size.width * v12.size.height / (width * height);
  result = v12.size.width * v12.size.height / (v8 * v9);
  if (*&v12.origin.y >= result)
  {
    return v12.size.width * v12.size.height / (width * height);
  }

  return result;
}

- (float)overlapWithSwRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(CAMBurstFaceInfo *)self swFaceId]== -1)
  {
    return 0.0;
  }

  [(CAMBurstFaceInfo *)self swFaceRect];
  v8 = v11.size.width;
  v9 = v11.size.height;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v12 = CGRectIntersection(v11, v13);
  *&v12.origin.y = v12.size.width * v12.size.height / (width * height);
  result = v12.size.width * v12.size.height / (v8 * v9);
  if (*&v12.origin.y >= result)
  {
    return v12.size.width * v12.size.height / (width * height);
  }

  return result;
}

- (CGPoint)swCenter
{
  objc_copyStruct(v4, &self->swCenter, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)swSize
{
  objc_copyStruct(v4, &self->swSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)hwCenter
{
  objc_copyStruct(v4, &self->hwCenter, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)hwSize
{
  objc_copyStruct(v4, &self->hwSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end