@interface CLIndoorLocation
- ($146E4FC062DDF4A2C58C04BCAEC0B25D)diagnosticReport;
- ($212FAF0442D7AE76F2FFFF4B46B9FEB9)location;
- (CLIndoorLocation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setDiagnosticReport:(id *)report;
- (void)setLocation:(id *)location;
@end

@implementation CLIndoorLocation

- (CLIndoorLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = CLIndoorLocation;
  v5 = [(CLIndoorLocation *)&v37 init];
  if (v5)
  {
    sub_245A857BC(coderCopy, v36);
    v6 = v36[3];
    *(v5 + 200) = v36[2];
    *(v5 + 216) = v6;
    v7 = v36[5];
    *(v5 + 232) = v36[4];
    *(v5 + 248) = v7;
    v8 = v36[1];
    *(v5 + 168) = v36[0];
    *(v5 + 184) = v8;
    v9 = v36[7];
    *(v5 + 264) = v36[6];
    *(v5 + 280) = v9;
    *(v5 + 296) = v36[8];
    *(v5 + 308) = *(&v36[8] + 12);
    sub_245A85850(coderCopy, v36);
    memcpy(v5 + 328, v36, 0x230uLL);
    v10 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v12, v13, v14, v10, @"locationId");
    v16 = *(v5 + 2);
    *(v5 + 2) = v15;

    v17 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v19, v20, v21, v17, @"locationDescription");
    v23 = *(v5 + 3);
    *(v5 + 3) = v22;

    v5[8] = objc_msgSend_decodeBoolForKey_(coderCopy, v24, v25, v26, v27, @"gpsAssistance");
    sub_245A858E4(coderCopy, v36);
    v28 = *&v36[8];
    v29 = v36[7];
    *(v5 + 8) = v36[6];
    *(v5 + 9) = v29;
    *(v5 + 20) = v28;
    v31 = v36[4];
    v30 = v36[5];
    v32 = v36[3];
    *(v5 + 4) = v36[2];
    *(v5 + 5) = v32;
    *(v5 + 6) = v31;
    *(v5 + 7) = v30;
    v33 = v36[1];
    *(v5 + 2) = v36[0];
    *(v5 + 3) = v33;
    v34 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sub_245A39754(coderCopy, v4, v5, v6);
  sub_245A39740(coderCopy, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v11, v12, v13, self->_locationId, @"locationId");
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v15, v16, v17, self->_locationDescription, @"locationDescription");
  objc_msgSend_encodeBool_forKey_(coderCopy, v18, v19, v20, v21, self->_requestsGpsAssistance, @"gpsAssistance");
  sub_245A85978(coderCopy, v22, v23, v24);
}

- (id)description
{
  objc_msgSend_location(self, a2, v2, v3, v4);
  v6 = MEMORY[0x277CCACA8];
  objc_msgSend_location(self, v7, v8, v9, v10);
  objc_msgSend_location(self, v11, v12, v13, v14);
  v19 = objc_msgSend_locationId(self, v15, v16, v17, v18);
  v24 = objc_msgSend_locationDescription(self, v20, v21, v22, v23);
  objc_msgSend_location(self, v25, v26, v27, v28);
  v33 = objc_msgSend_requestsGpsAssistance(self, v29, v30, v31, v32);
  objc_msgSend_location(self, v34, v35, v36, v37);
  if (v33)
  {
    objc_msgSend_stringWithFormat_(v6, v38, v39, v40, v41, @"lat/lon=[%lf, %lf] on floor %d (%@: %@) +/- %lf meters (gps assistance = %s) with location type %d", v47, v46, v48, v19, v24, v45, "yes", v44);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v6, v38, v39, v40, v41, @"lat/lon=[%lf, %lf] on floor %d (%@: %@) +/- %lf meters (gps assistance = %s) with location type %d", v47, v46, v48, v19, v24, v45, "no", v44);
  }
  v42 = ;

  return v42;
}

- ($212FAF0442D7AE76F2FFFF4B46B9FEB9)location
{
  v3 = *&self[1].var4;
  *&retstr->var3 = *&self[1].var2;
  *&retstr->var5 = v3;
  v4 = *&self[1].var8;
  *&retstr->var7 = *&self[1].var6;
  *&retstr->var9 = v4;
  var1 = self[1].var1;
  *&retstr->var0 = *&self->var21;
  *&retstr->var1.var1 = var1;
  v6 = *&self[1].var12;
  *&retstr->var11 = *&self[1].var10;
  retstr->var13 = v6;
  *&retstr->var14 = *&self[1].var13.var1;
  *&retstr->var16 = *(&self[1].var14 + 4);
  return self;
}

- (void)setLocation:(id *)location
{
  v3 = *&location->var0;
  *&self->_location.coordinate.longitude = *&location->var1.var1;
  *&self->_location.suitability = v3;
  v4 = *&location->var3;
  v5 = *&location->var5;
  v6 = *&location->var7;
  *&self->_location.timestamp = *&location->var9;
  *&self->_location.course = v6;
  *&self->_location.speed = v5;
  *&self->_location.altitude = v4;
  v7 = *&location->var11;
  var13 = location->var13;
  v9 = *&location->var14;
  *&self->_location.integrity = *&location->var16;
  self->_location.rawCoordinate = var13;
  *&self->_location.rawCourse = v9;
  *&self->_location.lifespan = v7;
}

- ($146E4FC062DDF4A2C58C04BCAEC0B25D)diagnosticReport
{
  v3 = *&self[1].var1;
  *&retstr->var8 = *&self->var12;
  *&retstr->var10 = v3;
  *&retstr->var12 = self[1].var3;
  v4 = *&self->var7[3];
  *&retstr->var4 = *&self->var7[1];
  *&retstr->var6 = v4;
  v5 = *&self->var10;
  *&retstr->var7[1] = *&self->var8;
  *&retstr->var7[3] = v5;
  v6 = *&self->var6;
  *&retstr->var0 = *&self->var4;
  *&retstr->var2 = v6;
  return self;
}

- (void)setDiagnosticReport:(id *)report
{
  *&self->_diagnosticReport.yieldType = *&report->var0;
  v3 = *&report->var2;
  v4 = *&report->var4;
  v5 = *&report->var7[1];
  *&self->_diagnosticReport.prbOnFloors = *&report->var6;
  *&self->_diagnosticReport.prbOnFloor[1] = v5;
  *&self->_diagnosticReport.prbCoarseIndoorSaysIndoor = v3;
  *&self->_diagnosticReport.prbGpsSaysIndoor = v4;
  v6 = *&report->var7[3];
  v7 = *&report->var8;
  v8 = *&report->var10;
  *&self->_diagnosticReport.pfYieldStatusBeforeCalculatePose = *&report->var12;
  *&self->_diagnosticReport.prbInlier = v7;
  *&self->_diagnosticReport.prbInjectionOccupancyRetryLimitOk = v8;
  *&self->_diagnosticReport.prbOnFloor[3] = v6;
}

@end