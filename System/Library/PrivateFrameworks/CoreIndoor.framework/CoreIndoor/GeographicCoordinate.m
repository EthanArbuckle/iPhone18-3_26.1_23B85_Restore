@interface GeographicCoordinate
+ (id)fromECEFCoordinate:(id)a3;
- (GeographicCoordinate)init;
- (id)initFromECEFCoordinate:(id)a3;
- (void)setFromECEFCoordinate:(id)a3;
- (void)setFromLatitude:(double)a3 longitude:(double)a4 andAltitude:(double)a5;
@end

@implementation GeographicCoordinate

- (GeographicCoordinate)init
{
  v5.receiver = self;
  v5.super_class = GeographicCoordinate;
  v2 = [(GeographicCoordinate *)&v5 init];
  return objc_msgSend_initWithLatitude_longitude_andAltitude_(v2, v3, NAN, NAN, NAN);
}

- (void)setFromLatitude:(double)a3 longitude:(double)a4 andAltitude:(double)a5
{
  self->_latitude = a3;
  self->_longitude = a4;
  self->_altitude = a5;
}

+ (id)fromECEFCoordinate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(GeographicCoordinate);
  objc_msgSend_setFromECEFCoordinate_(v4, v5, v6, v7, v8, v3);

  return v4;
}

- (id)initFromECEFCoordinate:(id)a3
{
  v7 = objc_msgSend_fromECEFCoordinate_(GeographicCoordinate, a2, v3, v4, v5, a3);

  return v7;
}

- (void)setFromECEFCoordinate:(id)a3
{
  v51 = a3;
  objc_msgSend_x(v51, v4, v5, v6, v7);
  v9 = v8;
  objc_msgSend_x(v51, v10, v8, v11, v12);
  v14 = v13;
  objc_msgSend_y(v51, v15, v13, v16, v17);
  v19 = v18;
  objc_msgSend_y(v51, v20, v18, v21, v22);
  v24 = v23;
  objc_msgSend_y(v51, v25, v23, v26, v27);
  v29 = v28;
  objc_msgSend_x(v51, v30, v28, v31, v32);
  v33 = sqrt(v19 * v24 + v9 * v14);
  self->_longitude = atan2(v29, v34) / 0.0174532925;
  v37 = v33 * 0.99330562;
  v38 = 0.0;
  v39 = 1.57079633;
  if (v33 * 0.99330562 == 0.0)
  {
    v40 = v51;
  }

  else
  {
    v41 = 0;
    v42 = 0.0;
    v43 = 0.0;
    objc_msgSend_z(v51, v35, 0.001, 0.0174532925, v36, 0x3FF921FB54442D18);
    while (1)
    {
      v39 = atan2(v44, v37);
      v47 = __sincos_stret(v39);
      v48 = 6378137.0 / sqrt(v47.__sinval * -0.00669437999 * v47.__sinval + 1.0);
      v38 = v33 / v47.__cosval - v48;
      if (vabdd_f64(v43, v39) >= 0.000001)
      {
        v40 = v51;
        if (v41 > 8)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v49 = vabdd_f64(v42, v38) < 0.001 || v41 >= 9;
        v40 = v51;
        if (v49)
        {
          goto LABEL_15;
        }
      }

      ++v41;
      v45 = v48 / (v38 + v48) * -0.00669437999 + 1.0;
      v37 = v33 * v45;
      v42 = v33 / v47.__cosval - v48;
      v43 = v39;
      if (v33 * v45 == 0.0)
      {
        break;
      }

      objc_msgSend_z(v40, v46, v38, v45, 1.0, *&v50);
    }

    v39 = v50;
  }

LABEL_15:
  self->_latitude = v39 / 0.0174532925;
  self->_altitude = v38;
}

@end