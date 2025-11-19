@interface CMAPencilFusionResult
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CMAPencilFusionResult

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, a3, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  *(v12 + 12) = self->_altitudeAngle;
  *(v12 + 16) = self->_azimuthAngle;
  *(v12 + 20) = self->_rollAngle;
  *(v12 + 48) = *self->_position;
  *(v12 + 24) = objc_msgSend_copyWithZone_(self->_estimationUpdateIndex, v13, a3, v14);
  *(v12 + 8) = self->_estimated;
  *(v12 + 32) = self->_timestamp;
  return v12;
}

- (id)description
{
  estimationUpdateIndex = self->_estimationUpdateIndex;
  if (self->_estimated)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"FusionResult index: %@, %s, angles (%.1f, %.1f, %.1f)°, pos (%.1f, %.1f, %.1f) mm, timestamp: %.3f sec", v2, estimationUpdateIndex, "estimated", (self->_altitudeAngle * 57.296), (self->_azimuthAngle * 57.296), (self->_rollAngle * 57.296), COERCE_FLOAT(*self->_position), COERCE_FLOAT(HIDWORD(*self->_position)), COERCE_FLOAT(*&self->_position[8]), *&self->_timestamp);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"FusionResult index: %@, %s, angles (%.1f, %.1f, %.1f)°, pos (%.1f, %.1f, %.1f) mm, timestamp: %.3f sec", v2, estimationUpdateIndex, "real", (self->_altitudeAngle * 57.296), (self->_azimuthAngle * 57.296), (self->_rollAngle * 57.296), COERCE_FLOAT(*self->_position), COERCE_FLOAT(HIDWORD(*self->_position)), COERCE_FLOAT(*&self->_position[8]), *&self->_timestamp);
  }
}

@end