@interface ECEFCoordinate
+ (id)fromLatLon:(id)lon;
- (id)initFromLatLon:(id)lon;
- (point_xy<double,)toBoostEnuWithLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin usingENU:(id)u;
- (void)setFromLatLon:(id)lon;
- (void)setFromX:(double)x y:(double)y z:(double)z;
@end

@implementation ECEFCoordinate

- (void)setFromX:(double)x y:(double)y z:(double)z
{
  self->_x = x;
  self->_y = y;
  self->_z = z;
}

- (id)initFromLatLon:(id)lon
{
  v7 = objc_msgSend_fromLatLon_(ECEFCoordinate, a2, v3, v4, v5, lon);

  return v7;
}

+ (id)fromLatLon:(id)lon
{
  lonCopy = lon;
  v4 = objc_alloc_init(ECEFCoordinate);
  objc_msgSend_setFromLatLon_(v4, v5, v6, v7, v8, lonCopy);

  return v4;
}

- (void)setFromLatLon:(id)lon
{
  lonCopy = lon;
  objc_msgSend_latitude(lonCopy, v4, v5, v6, v7);
  v9 = cos(v8 * 0.0174532925);
  objc_msgSend_latitude(lonCopy, v10, v9, v11, v12);
  v14 = sin(v13 * 0.0174532925);
  objc_msgSend_longitude(lonCopy, v15, v14, v16, v17);
  v19 = cos(v18 * 0.0174532925);
  objc_msgSend_longitude(lonCopy, v20, v19, v21, v22);
  v24 = sin(v23 * 0.0174532925);
  objc_msgSend_altitude(lonCopy, v25, v24, v26, v27);
  v28 = sqrt(v14 * -0.00669437999 * v14 + 1.0);
  v29 = 6378137.0 / v28;
  v31 = v19 * (v9 * (6378137.0 / v28 + v30));
  self->_x = v31;
  objc_msgSend_altitude(lonCopy, v32, v31, v28, 6378137.0);
  v34 = v24 * (v9 * (v29 + v33));
  self->_y = v34;
  objc_msgSend_altitude(lonCopy, v35, v34, v36, v37);
  self->_z = v14 * (v38 + v29 * 0.99330562);
}

- (point_xy<double,)toBoostEnuWithLatLonOrigin:(id)origin andEcefOrigin:(id)ecefOrigin usingENU:(id)u
{
  uCopy = u;
  objc_msgSend_setFromLatLonOrigin_andEcefOrigin_andEcefPoint_(uCopy, v9, v10, v11, v12, origin, ecefOrigin, self);
  objc_msgSend_east(uCopy, v13, v14, v15, v16);
  v18 = v17;
  objc_msgSend_north(uCopy, v19, v17, v20, v21);
  v23 = v22;

  v24 = v18;
  v25 = v23;
  result.var0[1] = v25;
  result.var0[0] = v24;
  return result;
}

@end