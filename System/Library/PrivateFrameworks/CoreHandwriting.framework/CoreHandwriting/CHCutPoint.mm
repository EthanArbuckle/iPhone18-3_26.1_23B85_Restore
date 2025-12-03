@interface CHCutPoint
+ (id)sortedCHCutPointArray:(id)array;
- (CHCutPoint)initWithStrokeIndex:(int64_t)index pointIndex:(int64_t)pointIndex isEndOfStroke:(BOOL)stroke;
- (int64_t)compare:(id)compare;
@end

@implementation CHCutPoint

- (CHCutPoint)initWithStrokeIndex:(int64_t)index pointIndex:(int64_t)pointIndex isEndOfStroke:(BOOL)stroke
{
  v9.receiver = self;
  v9.super_class = CHCutPoint;
  result = [(CHCutPoint *)&v9 init];
  result->_strokeIndex = index;
  result->_pointIndex = pointIndex;
  result->_isEndOfStroke = stroke;
  return result;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v10 = objc_msgSend_strokeIndex(self, v5, v6, v7, v8, v9);
  if (v10 > objc_msgSend_strokeIndex(compareCopy, v11, v12, v13, v14, v15))
  {
    goto LABEL_2;
  }

  v22 = objc_msgSend_strokeIndex(self, v16, v17, v18, v19, v20);
  if (v22 >= objc_msgSend_strokeIndex(compareCopy, v23, v24, v25, v26, v27))
  {
    v33 = objc_msgSend_pointIndex(self, v28, v29, v30, v31, v32);
    if (v33 > objc_msgSend_pointIndex(compareCopy, v34, v35, v36, v37, v38))
    {
LABEL_2:

      return 1;
    }

    v44 = objc_msgSend_pointIndex(self, v39, v40, v41, v42, v43);
    if (v44 >= objc_msgSend_pointIndex(compareCopy, v45, v46, v47, v48, v49))
    {
      v50 = 0;
    }

    else
    {
      v50 = -1;
    }

    return v50;
  }

  else
  {

    return -1;
  }
}

+ (id)sortedCHCutPointArray:(id)array
{
  v6 = objc_msgSend_sortedArrayUsingComparator_(array, a2, &unk_1EF1BC4B0, v3, v4, v5);

  return v6;
}

@end