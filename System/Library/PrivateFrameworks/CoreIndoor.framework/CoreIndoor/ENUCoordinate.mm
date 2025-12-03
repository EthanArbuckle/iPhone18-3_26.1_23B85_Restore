@interface ENUCoordinate
+ (id)fromLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin andEcefPoint:(id)point;
- (ENUCoordinate)initWithEast:(double)east north:(double)north up:(double)up;
- (void)setFromLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin andEcefPoint:(id)point;
@end

@implementation ENUCoordinate

- (ENUCoordinate)initWithEast:(double)east north:(double)north up:(double)up
{
  self->_east = east;
  self->_north = north;
  self->_up = up;
  return self;
}

+ (id)fromLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin andEcefPoint:(id)point
{
  originCopy = origin;
  ecefOriginCopy = ecefOrigin;
  pointCopy = point;
  v10 = objc_alloc_init(ENUCoordinate);
  objc_msgSend_setFromLatLonOrigin_andEcefOrigin_andEcefPoint_(v10, v11, v12, v13, v14, originCopy, ecefOriginCopy, pointCopy);

  return v10;
}

- (void)setFromLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin andEcefPoint:(id)point
{
  originCopy = origin;
  ecefOriginCopy = ecefOrigin;
  pointCopy = point;
  objc_msgSend_latitude(originCopy, v10, v11, v12, v13);
  v15 = v14;
  objc_msgSend_latitude(originCopy, v16, v14, v17, v18);
  v20 = v19;
  objc_msgSend_longitude(originCopy, v21, v19, v22, v23);
  v25 = v24;
  objc_msgSend_longitude(originCopy, v26, v24, v27, v28);
  v30 = v29;
  objc_msgSend_x(pointCopy, v31, v29, v32, v33);
  v35 = v34;
  objc_msgSend_x(ecefOriginCopy, v36, v34, v37, v38);
  v40 = v39;
  v67 = v25;
  v68 = v20;
  objc_msgSend_y(pointCopy, v41, v39, v42, v43);
  v45 = v44;
  objc_msgSend_y(ecefOriginCopy, v46, v44, v47, v48);
  v50 = v49;
  objc_msgSend_z(pointCopy, v51, v49, v52, v53);
  v66 = v54;
  objc_msgSend_z(ecefOriginCopy, v55, v54, v56, v57);
  v59 = v58;
  v60 = v45 - v50;
  v61 = v35 - v40;
  v62 = sin(v30 * 0.0174532925);
  v63 = cos(v67 * 0.0174532925);
  v64 = sin(v68 * 0.0174532925);
  v65 = cos(v15 * 0.0174532925);
  self->_east = v63 * v60 - v62 * v61;
  self->_north = -(v64 * v62) * v60 + -(v64 * v63) * v61 + v65 * (v66 - v59);
  self->_up = v65 * v62 * v60 + v65 * v63 * v61 + v64 * (v66 - v59);
}

@end