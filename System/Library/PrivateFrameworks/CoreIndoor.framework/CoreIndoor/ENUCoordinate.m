@interface ENUCoordinate
+ (id)fromLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 andEcefPoint:(id)a5;
- (ENUCoordinate)initWithEast:(double)a3 north:(double)a4 up:(double)a5;
- (void)setFromLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 andEcefPoint:(id)a5;
@end

@implementation ENUCoordinate

- (ENUCoordinate)initWithEast:(double)a3 north:(double)a4 up:(double)a5
{
  self->_east = a3;
  self->_north = a4;
  self->_up = a5;
  return self;
}

+ (id)fromLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 andEcefPoint:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(ENUCoordinate);
  objc_msgSend_setFromLatLonOrigin_andEcefOrigin_andEcefPoint_(v10, v11, v12, v13, v14, v7, v8, v9);

  return v10;
}

- (void)setFromLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 andEcefPoint:(id)a5
{
  v69 = a3;
  v8 = a4;
  v9 = a5;
  objc_msgSend_latitude(v69, v10, v11, v12, v13);
  v15 = v14;
  objc_msgSend_latitude(v69, v16, v14, v17, v18);
  v20 = v19;
  objc_msgSend_longitude(v69, v21, v19, v22, v23);
  v25 = v24;
  objc_msgSend_longitude(v69, v26, v24, v27, v28);
  v30 = v29;
  objc_msgSend_x(v9, v31, v29, v32, v33);
  v35 = v34;
  objc_msgSend_x(v8, v36, v34, v37, v38);
  v40 = v39;
  v67 = v25;
  v68 = v20;
  objc_msgSend_y(v9, v41, v39, v42, v43);
  v45 = v44;
  objc_msgSend_y(v8, v46, v44, v47, v48);
  v50 = v49;
  objc_msgSend_z(v9, v51, v49, v52, v53);
  v66 = v54;
  objc_msgSend_z(v8, v55, v54, v56, v57);
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