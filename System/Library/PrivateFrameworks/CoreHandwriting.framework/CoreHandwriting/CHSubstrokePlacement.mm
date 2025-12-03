@interface CHSubstrokePlacement
- (CGAffineTransform)orientationTransform;
- (CGPoint)coalescedCenter;
- (CGRect)boundsRotatedAroundPoint:(CGPoint)point byAngle:(double)angle;
- (CGRect)orientedBounds;
- (CGRect)rotatedBounds;
- (CGVector)strokeDeviation;
- (CGVector)writingOrientation;
- (CHSubstrokePlacement)initWithCoder:(id)coder;
- (CHSubstrokePlacement)initWithSubstroke:(id)substroke;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSubstrokePlacement

- (CHSubstrokePlacement)initWithSubstroke:(id)substroke
{
  substrokeCopy = substroke;
  v9.receiver = self;
  v9.super_class = CHSubstrokePlacement;
  v6 = [(CHSubstrokePlacement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_substroke, substroke);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = objc_msgSend_allocWithZone_(CHSubstrokePlacement, a2, zone, v3, v4, v5);
  v13 = objc_msgSend_substroke(self, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_initWithSubstroke_(v7, v14, v13, v15, v16, v17);

  objc_msgSend_writingOrientation(self, v19, v20, v21, v22, v23);
  objc_msgSend_setWritingOrientation_(v18, v24, v25, v26, v27, v28);
  objc_msgSend_strokeDeviation(self, v29, v30, v31, v32, v33);
  objc_msgSend_setStrokeDeviation_(v18, v34, v35, v36, v37, v38);
  v44 = objc_msgSend_originalWritingDirectionIndex(self, v39, v40, v41, v42, v43);
  objc_msgSend_setOriginalWritingDirectionIndex_(v18, v45, v44, v46, v47, v48);
  objc_msgSend_coalescedCenter(self, v49, v50, v51, v52, v53);
  objc_msgSend_setCoalescedCenter_(v18, v54, v55, v56, v57, v58);
  return v18;
}

- (CGRect)rotatedBounds
{
  v7 = objc_msgSend_substroke(self, a2, v2, v3, v4, v5);
  objc_msgSend_bounds(v7, v8, v9, v10, v11, v12);
  MidX = CGRectGetMidX(v69);
  v19 = objc_msgSend_substroke(self, v14, v15, v16, v17, v18);
  objc_msgSend_bounds(v19, v20, v21, v22, v23, v24);
  MidY = CGRectGetMidY(v70);

  objc_msgSend_writingOrientation(self, v26, v27, v28, v29, v30);
  v32 = v31;
  objc_msgSend_writingOrientation(self, v33, v34, v35, v36, v37);
  v39 = v38;
  v45 = objc_msgSend_substroke(self, v40, v41, v42, v43, v44);
  v51 = objc_msgSend_convexHull(v45, v46, v47, v48, v49, v50);
  v52 = atan2(v32, v39);
  objc_msgSend_boundingBoxOfPoints_rotatedAroundPoint_byAngle_(CHStrokeUtilities, v53, v51, v54, v55, v56, MidX, MidY, v52);
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v65 = v58;
  v66 = v60;
  v67 = v62;
  v68 = v64;
  result.size.height = v68;
  result.size.width = v67;
  result.origin.y = v66;
  result.origin.x = v65;
  return result;
}

- (CGRect)boundsRotatedAroundPoint:(CGPoint)point byAngle:(double)angle
{
  y = point.y;
  x = point.x;
  v11 = objc_msgSend_substroke(self, a2, v4, v5, v6, v7);
  v17 = objc_msgSend_convexHull(v11, v12, v13, v14, v15, v16);
  objc_msgSend_boundingBoxOfPoints_rotatedAroundPoint_byAngle_(CHStrokeUtilities, v18, v17, v19, v20, v21, x, y, angle);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGAffineTransform)orientationTransform
{
  objc_msgSend_writingOrientation(self, a3, v3, v4, v5, v6);
  v10 = v9;
  objc_msgSend_writingOrientation(self, v11, v12, v13, v14, v15);
  v17 = atan2(v10, v16);
  objc_msgSend_rotatedBounds(self, v18, v19, v20, v21, v22);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MidY = CGRectGetMidY(v37);
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  CGAffineTransformMakeTranslation(retstr, MidX, MidY);
  v29 = *&retstr->c;
  *&v34.a = *&retstr->a;
  *&v34.c = v29;
  *&v34.tx = *&retstr->tx;
  CGAffineTransformRotate(&v35, &v34, v17);
  v30 = *&v35.c;
  *&retstr->a = *&v35.a;
  *&retstr->c = v30;
  *&retstr->tx = *&v35.tx;
  v31 = *&retstr->c;
  *&v34.a = *&retstr->a;
  *&v34.c = v31;
  *&v34.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v35, &v34, -MidX, -MidY);
  v33 = *&v35.c;
  *&retstr->a = *&v35.a;
  *&retstr->c = v33;
  *&retstr->tx = *&v35.tx;
  return result;
}

- (CGRect)orientedBounds
{
  memset(&v14, 0, sizeof(v14));
  objc_msgSend_orientationTransform(self, a2, v2, v3, v4, v5);
  v12 = v14;
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformInvert(&v13, &v12);
  objc_msgSend_rotatedBounds(self, v7, v8, v9, v10, v11);
  operator new();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->_substroke, @"substroke", v5, v6);
  v10 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v7, &self->_writingOrientation, "{CGPoint=dd}", v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"writingOrientation", v12, v13);
  v17 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v14, &self->_strokeDeviation, "{CGPoint=dd}", v15, v16);
  objc_msgSend_encodeObject_forKey_(coderCopy, v18, v17, @"strokeDeviation", v19, v20);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v21, self->_originalWritingDirectionIndex, @"originalWritingDirectionIndex", v22, v23);
  v27 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v24, &self->_coalescedCenter, "{CGPoint=dd}", v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"coalescedCenter", v29, v30);
}

- (CHSubstrokePlacement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"substroke", v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"writingOrientation", v12, v13);
  objc_msgSend_getValue_size_(v14, v15, v66, 16, v16, v17);
  v18 = objc_opt_class();
  v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"strokeDeviation", v20, v21);
  objc_msgSend_getValue_size_(v22, v23, v65, 16, v24, v25);
  v30 = objc_msgSend_decodeIntegerForKey_(coderCopy, v26, @"originalWritingDirectionIndex", v27, v28, v29);
  v31 = objc_opt_class();
  v35 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"coalescedCenter", v33, v34);
  objc_msgSend_getValue_size_(v35, v36, v64, 16, v37, v38);
  v43 = objc_msgSend_initWithSubstroke_(self, v39, v9, v40, v41, v42);
  objc_msgSend_setWritingOrientation_(v43, v44, v45, v46, v47, v48, v66[0], v66[1]);
  objc_msgSend_setStrokeDeviation_(v43, v49, v50, v51, v52, v53, v65[0], v65[1]);
  objc_msgSend_setOriginalWritingDirectionIndex_(v43, v54, v30, v55, v56, v57);
  objc_msgSend_setCoalescedCenter_(v43, v58, v59, v60, v61, v62, v64[0], v64[1]);

  return v43;
}

- (CGVector)writingOrientation
{
  dx = self->_writingOrientation.dx;
  dy = self->_writingOrientation.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGVector)strokeDeviation
{
  dx = self->_strokeDeviation.dx;
  dy = self->_strokeDeviation.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGPoint)coalescedCenter
{
  x = self->_coalescedCenter.x;
  y = self->_coalescedCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end