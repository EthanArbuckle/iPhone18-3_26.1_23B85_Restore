@interface CHCornerDetector
- (CHCornerDetector)init;
- (id).cxx_construct;
@end

@implementation CHCornerDetector

- (CHCornerDetector)init
{
  v21.receiver = self;
  v21.super_class = CHCornerDetector;
  v2 = [(CHCornerDetector *)&v21 init];
  v3 = v2;
  if (v2)
  {
    drawing = v2->_drawing;
    v2->_drawing = 0;

    resampledDrawing = v3->_resampledDrawing;
    v3->_resampledDrawing = 0;

    v3->_minimumSignificantSegmentLength = 35.0;
    v3->_shouldUseDynamicSampling = 1;
    v3->__strawSize = 3;
    v11 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7, v8, v9, v10);
    cornerIndexSet = v3->__cornerIndexSet;
    v3->__cornerIndexSet = v11;

    v18 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v13, v14, v15, v16, v17);
    directionChangeCornerIndexes = v3->__directionChangeCornerIndexes;
    v3->__directionChangeCornerIndexes = v18;

    v3->_directionChangeCount = 0;
    v3->_highestDirectionChangeCount = 0;
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

@end