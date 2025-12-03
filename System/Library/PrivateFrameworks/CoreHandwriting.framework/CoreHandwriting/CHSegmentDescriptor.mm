@interface CHSegmentDescriptor
+ (CGRect)boundingBoxFromSegmentID:(int64_t)d toSegmentID:(int64_t)iD withSegments:(id)segments withSourceDrawing:(id)drawing;
+ (id)generateSegmentsFromDrawing:(id)drawing;
+ (int64_t)indexForSegmentID:(id)d fromSegments:(id)segments;
- (BOOL)isSinglePointSegment;
- (CGRect)contextBounds;
- (CGRect)segmentBounds;
- (CHSegmentDescriptor)initWithSegmentID:(id)d startCutPoint:(id)point endCutPoint:(id)cutPoint referenceDrawing:(id)drawing;
- (id)strokeIndexSet;
@end

@implementation CHSegmentDescriptor

- (CHSegmentDescriptor)initWithSegmentID:(id)d startCutPoint:(id)point endCutPoint:(id)cutPoint referenceDrawing:(id)drawing
{
  dCopy = d;
  pointCopy = point;
  cutPointCopy = cutPoint;
  drawingCopy = drawing;
  v58.receiver = self;
  v58.super_class = CHSegmentDescriptor;
  v15 = [(CHSegmentDescriptor *)&v58 init];
  objc_storeStrong(&v15->_segmentID, d);
  objc_storeStrong(&v15->_startCutPoint, point);
  objc_storeStrong(&v15->_endCutPoint, cutPoint);
  objc_msgSend_isSinglePointSegment(v15, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_strokeIndex(v15->_startCutPoint, v21, v22, v23, v24, v25);
  if (v26 == objc_msgSend_strokeIndex(v15->_endCutPoint, v27, v28, v29, v30, v31) && objc_msgSend_isStartOfStroke(v15->_startCutPoint, v32, v33, v34, v35, v36) && objc_msgSend_isEndOfStroke(v15->_endCutPoint, v37, v38, v39, v40, v41))
  {
    v47 = objc_msgSend_strokeIndex(v15->_startCutPoint, v42, v43, v44, v45, v46);
    objc_msgSend_boundsForStrokeIndex_(drawingCopy, v48, v47, v49, v50, v51);
  }

  else
  {
    v52 = sub_183705AEC(drawingCopy, v15->_startCutPoint, v15->_endCutPoint);
  }

  v15->_segmentBounds.origin.x = v52;
  v15->_segmentBounds.origin.y = v53;
  v15->_segmentBounds.size.width = v54;
  v15->_segmentBounds.size.height = v55;
  size = v15->_segmentBounds.size;
  v15->_contextBounds.origin = v15->_segmentBounds.origin;
  v15->_contextBounds.size = size;

  return v15;
}

- (id)strokeIndexSet
{
  v7 = objc_msgSend_startCutPoint(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_strokeIndex(v7, v8, v9, v10, v11, v12);

  v19 = objc_msgSend_endCutPoint(self, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_strokeIndex(v19, v20, v21, v22, v23, v24) - v13;

  v29 = MEMORY[0x1E696AC90];

  return objc_msgSend_indexSetWithIndexesInRange_(v29, v26, v13, v25 + 1, v27, v28);
}

- (BOOL)isSinglePointSegment
{
  v7 = objc_msgSend_startCutPoint(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_endCutPoint(self, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_compare_(v7, v14, v13, v15, v16, v17) == 0;

  return v18;
}

+ (id)generateSegmentsFromDrawing:(id)drawing
{
  drawingCopy = drawing;
  v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7, v8);
  for (i = 0; i < objc_msgSend_strokeCount(drawingCopy, v9, v10, v11, v12, v13); ++i)
  {
    v16 = [CHCutPoint alloc];
    isEndOfStroke = objc_msgSend_initWithStrokeIndex_pointIndex_isEndOfStroke_(v16, v17, i, 0, 0, v18);
    v20 = [CHCutPoint alloc];
    v25 = objc_msgSend_pointCountForStrokeIndex_(drawingCopy, v21, i, v22, v23, v24);
    v28 = objc_msgSend_initWithStrokeIndex_pointIndex_isEndOfStroke_(v20, v26, i, v25 - 1, 1, v27);
    v29 = [CHSegmentDescriptor alloc];
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v30, i, v31, v32, v33);
    started = objc_msgSend_initWithSegmentID_startCutPoint_endCutPoint_referenceDrawing_(v29, v35, v34, isEndOfStroke, v28, drawingCopy);

    objc_msgSend_addObject_(v14, v37, started, v38, v39, v40);
  }

  return v14;
}

+ (CGRect)boundingBoxFromSegmentID:(int64_t)d toSegmentID:(int64_t)iD withSegments:(id)segments withSourceDrawing:(id)drawing
{
  segmentsCopy = segments;
  drawingCopy = drawing;
  v15 = objc_msgSend_objectAtIndex_(segmentsCopy, v11, d, v12, v13, v14);
  v20 = objc_msgSend_objectAtIndex_(segmentsCopy, v16, iD, v17, v18, v19);
  v26 = objc_msgSend_startCutPoint(v15, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_endCutPoint(v20, v27, v28, v29, v30, v31);
  v33 = sub_183705AEC(drawingCopy, v26, v32);
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = v33;
  v41 = v35;
  v42 = v37;
  v43 = v39;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

+ (int64_t)indexForSegmentID:(id)d fromSegments:(id)segments
{
  dCopy = d;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1837077F0;
  v13[3] = &unk_1E6DDCCA8;
  v14 = dCopy;
  v6 = dCopy;
  v11 = objc_msgSend_indexOfObjectPassingTest_(segments, v7, v13, v8, v9, v10);

  return v11;
}

- (CGRect)segmentBounds
{
  x = self->_segmentBounds.origin.x;
  y = self->_segmentBounds.origin.y;
  width = self->_segmentBounds.size.width;
  height = self->_segmentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contextBounds
{
  x = self->_contextBounds.origin.x;
  y = self->_contextBounds.origin.y;
  width = self->_contextBounds.size.width;
  height = self->_contextBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end