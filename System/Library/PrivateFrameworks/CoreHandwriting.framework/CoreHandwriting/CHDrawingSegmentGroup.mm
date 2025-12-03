@interface CHDrawingSegmentGroup
- (CGRect)bounds;
- (CHDrawingSegmentGroup)initWithSegmentGroupIndex:(int64_t)index segments:(id)segments;
@end

@implementation CHDrawingSegmentGroup

- (CHDrawingSegmentGroup)initWithSegmentGroupIndex:(int64_t)index segments:(id)segments
{
  segmentsCopy = segments;
  v11.receiver = self;
  v11.super_class = CHDrawingSegmentGroup;
  v8 = [(CHDrawingSegmentGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_segmentGroupIndex = index;
    objc_storeStrong(&v8->_segments, segments);
  }

  return v9;
}

- (CGRect)bounds
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (objc_msgSend_count(self->_segments, a2, v2, v3, v4, v5))
  {
    v15 = 0;
    do
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v11, v15, v12, v13, v14);
      objc_msgSend_segmentBounds(v16, v17, v18, v19, v20, v21);
      v38.origin.x = v22;
      v38.origin.y = v23;
      v38.size.width = v24;
      v38.size.height = v25;
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v36 = CGRectUnion(v35, v38);
      x = v36.origin.x;
      y = v36.origin.y;
      width = v36.size.width;
      height = v36.size.height;

      ++v15;
    }

    while (v15 < objc_msgSend_count(self->_segments, v26, v27, v28, v29, v30));
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

@end