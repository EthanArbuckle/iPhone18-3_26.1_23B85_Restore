@interface ECEFCoordinate
+ (id)fromLatLon:(id)a3;
- (id)initFromLatLon:(id)a3;
- (point_xy<double,)toBoostEnuWithLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 usingENU:(id)a5;
- (void)setFromLatLon:(id)a3;
- (void)setFromX:(double)a3 y:(double)a4 z:(double)a5;
@end

@implementation ECEFCoordinate

- (void)setFromX:(double)a3 y:(double)a4 z:(double)a5
{
  self->_x = a3;
  self->_y = a4;
  self->_z = a5;
}

- (id)initFromLatLon:(id)a3
{
  v7 = objc_msgSend_fromLatLon_(ECEFCoordinate, a2, v3, v4, v5, a3);

  return v7;
}

+ (id)fromLatLon:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ECEFCoordinate);
  objc_msgSend_setFromLatLon_(v4, v5, v6, v7, v8, v3);

  return v4;
}

- (void)setFromLatLon:(id)a3
{
  v39 = a3;
  objc_msgSend_latitude(v39, v4, v5, v6, v7);
  v9 = cos(v8 * 0.0174532925);
  objc_msgSend_latitude(v39, v10, v9, v11, v12);
  v14 = sin(v13 * 0.0174532925);
  objc_msgSend_longitude(v39, v15, v14, v16, v17);
  v19 = cos(v18 * 0.0174532925);
  objc_msgSend_longitude(v39, v20, v19, v21, v22);
  v24 = sin(v23 * 0.0174532925);
  objc_msgSend_altitude(v39, v25, v24, v26, v27);
  v28 = sqrt(v14 * -0.00669437999 * v14 + 1.0);
  v29 = 6378137.0 / v28;
  v31 = v19 * (v9 * (6378137.0 / v28 + v30));
  self->_x = v31;
  objc_msgSend_altitude(v39, v32, v31, v28, 6378137.0);
  v34 = v24 * (v9 * (v29 + v33));
  self->_y = v34;
  objc_msgSend_altitude(v39, v35, v34, v36, v37);
  self->_z = v14 * (v38 + v29 * 0.99330562);
}

- (point_xy<double,)toBoostEnuWithLatLonOrigin:(id)a3 andEcefOrigin:(id)a4 usingENU:(id)a5
{
  v8 = a5;
  objc_msgSend_setFromLatLonOrigin_andEcefOrigin_andEcefPoint_(v8, v9, v10, v11, v12, a3, a4, self);
  objc_msgSend_east(v8, v13, v14, v15, v16);
  v18 = v17;
  objc_msgSend_north(v8, v19, v17, v20, v21);
  v23 = v22;

  v24 = v18;
  v25 = v23;
  result.var0[1] = v25;
  result.var0[0] = v24;
  return result;
}

@end