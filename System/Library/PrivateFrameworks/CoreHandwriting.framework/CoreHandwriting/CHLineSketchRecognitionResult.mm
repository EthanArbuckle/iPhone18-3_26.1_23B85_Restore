@interface CHLineSketchRecognitionResult
- (CGPoint)controlPoint;
- (CGPoint)endLocation;
- (CGPoint)midpointLocation;
- (CGPoint)startLocation;
- (CHLineSketchRecognitionResult)initWithCoder:(id)coder;
- (CHLineSketchRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation startLocation:(CGPoint)location startEndpointType:(int)type endLocation:(CGPoint)endLocation endEndpointType:(int)endpointType midPointLocation:(CGPoint)self0 controlPointLocation:(CGPoint)self1 pathPoints:(id)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHLineSketchRecognitionResult

- (CHLineSketchRecognitionResult)initWithString:(id)string score:(double)score rotation:(double)rotation startLocation:(CGPoint)location startEndpointType:(int)type endLocation:(CGPoint)endLocation endEndpointType:(int)endpointType midPointLocation:(CGPoint)self0 controlPointLocation:(CGPoint)self1 pathPoints:(id)self2
{
  x = controlPointLocation.x;
  y = pointLocation.y;
  v14 = pointLocation.x;
  v16 = endLocation.y;
  v17 = endLocation.x;
  v19 = location.y;
  v20 = location.x;
  v25 = *&controlPointLocation.x;
  v29.receiver = self;
  v29.super_class = CHLineSketchRecognitionResult;
  v26 = [(CHSketchRecognitionResult *)&v29 initWithString:string score:score rotation:rotation];
  v27 = v26;
  if (v26)
  {
    v26->_startLocation.x = v20;
    v26->_startLocation.y = v19;
    v26->_startEndpointType = type;
    v26->_endLocation.x = v17;
    v26->_endLocation.y = v16;
    v26->_endEndpointType = endpointType;
    v26->_midpointLocation.x = v14;
    v26->_midpointLocation.y = y;
    v26->_controlPoint.x = v30;
    v26->_controlPoint.y = v31;
    objc_storeStrong(&v26->_pathPoints, *&x);
  }

  return v27;
}

- (CHLineSketchRecognitionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = CHLineSketchRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v49 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"starLocation", v8, v9);
    sub_1837A97C4(v10, &v50);
    if (v51 - v50 == 8)
    {
      v11 = *v50;
      v12 = v50[1];
    }

    else
    {
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v50)
      {
        goto LABEL_6;
      }
    }

    operator delete(v50);
LABEL_6:
    v5->_startLocation.x = v11;
    v5->_startLocation.y = v12;

    v5->_startEndpointType = objc_msgSend_decodeIntegerForKey_(coderCopy, v13, @"startEndpointType", v14, v15, v16);
    v17 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v17, @"endLocation", v19, v20);
    sub_1837A97C4(v21, &v50);
    if (v51 - v50 == 8)
    {
      v22 = *v50;
      v23 = v50[1];
    }

    else
    {
      v22 = *MEMORY[0x1E695EFF8];
      v23 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v50)
      {
        goto LABEL_10;
      }
    }

    operator delete(v50);
LABEL_10:
    v5->_endLocation.x = v22;
    v5->_endLocation.y = v23;

    v5->_endEndpointType = objc_msgSend_decodeIntegerForKey_(coderCopy, v24, @"endEndpointType", v25, v26, v27);
    v28 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v29, v28, @"midLocation", v30, v31);
    sub_1837A97C4(v32, &v50);
    if (v51 - v50 == 8)
    {
      v33 = *v50;
      v34 = v50[1];
    }

    else
    {
      v33 = *MEMORY[0x1E695EFF8];
      v34 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v50)
      {
        goto LABEL_14;
      }
    }

    operator delete(v50);
LABEL_14:
    v5->_midpointLocation.x = v33;
    v5->_midpointLocation.y = v34;

    v35 = objc_opt_class();
    v39 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v35, @"controlPoint", v37, v38);
    sub_1837A97C4(v39, &v50);
    if (v51 - v50 == 8)
    {
      v40 = *v50;
      v41 = v50[1];
    }

    else
    {
      v40 = *MEMORY[0x1E695EFF8];
      v41 = *(MEMORY[0x1E695EFF8] + 8);
      if (!v50)
      {
LABEL_18:
        v5->_controlPoint.x = v40;
        v5->_controlPoint.y = v41;

        v42 = objc_opt_class();
        v46 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coderCopy, v43, v42, @"pathPoints", v44, v45);
        pathPoints = v5->_pathPoints;
        v5->_pathPoints = v46;

        goto LABEL_19;
      }
    }

    operator delete(v50);
    goto LABEL_18;
  }

LABEL_19:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v54.receiver = self;
  v54.super_class = CHLineSketchRecognitionResult;
  v5 = [(CHSketchRecognitionResult *)&v54 encodeWithCoder:coderCopy];
  v11 = sub_1837A9A94(self->_startLocation.x, self->_startLocation.y, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"starLocation", v13, v14);

  v18 = objc_msgSend_encodeInteger_forKey_(coderCopy, v15, self->_startEndpointType, @"startEndpointType", v16, v17);
  v24 = sub_1837A9A94(self->_endLocation.x, self->_endLocation.y, v18, v19, v20, v21, v22, v23);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, v24, @"endLocation", v26, v27);

  v31 = objc_msgSend_encodeInteger_forKey_(coderCopy, v28, self->_endEndpointType, @"endEndpointType", v29, v30);
  v37 = sub_1837A9A94(self->_midpointLocation.x, self->_midpointLocation.y, v31, v32, v33, v34, v35, v36);
  objc_msgSend_encodeObject_forKey_(coderCopy, v38, v37, @"midLocation", v39, v40);

  v47 = sub_1837A9A94(self->_controlPoint.x, self->_controlPoint.y, v41, v42, v43, v44, v45, v46);
  objc_msgSend_encodeObject_forKey_(coderCopy, v48, v47, @"controlPoint", v49, v50);

  objc_msgSend_encodeObject_forKey_(coderCopy, v51, self->_pathPoints, @"pathPoints", v52, v53);
}

- (CGPoint)startLocation
{
  objc_copyStruct(v4, &self->_startLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)endLocation
{
  objc_copyStruct(v4, &self->_endLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)midpointLocation
{
  objc_copyStruct(v4, &self->_midpointLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)controlPoint
{
  objc_copyStruct(v4, &self->_controlPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end