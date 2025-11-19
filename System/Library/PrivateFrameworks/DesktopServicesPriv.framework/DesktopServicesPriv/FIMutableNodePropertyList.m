@interface FIMutableNodePropertyList
- (BOOL)removeProperty:(unsigned int)a3 error:(id *)a4;
- (BOOL)setAsArray:(id)a3 forProperty:(unsigned int)a4 error:(id *)a5;
- (BOOL)setAsBool:(BOOL)a3 forProperty:(unsigned int)a4 error:(id *)a5;
- (BOOL)setAsData:(id)a3 forProperty:(unsigned int)a4 error:(id *)a5;
- (BOOL)setAsData:(void *)a3 size:(unsigned int)a4 forProperty:(unsigned int)a5 error:(id *)a6;
- (BOOL)setAsDate:(id)a3 forProperty:(unsigned int)a4 error:(id *)a5;
- (BOOL)setAsInt16:(signed __int16)a3 forProperty:(unsigned int)a4 error:(id *)a5;
- (BOOL)setAsInt32:(int)a3 forProperty:(unsigned int)a4 error:(id *)a5;
- (BOOL)setAsInt64:(int64_t)a3 forProperty:(unsigned int)a4 error:(id *)a5;
- (BOOL)setAsInt8:(char)a3 forProperty:(unsigned int)a4 error:(id *)a5;
- (BOOL)setAsString:(id)a3 forProperty:(unsigned int)a4 error:(id *)a5;
@end

@implementation FIMutableNodePropertyList

- (BOOL)setAsBool:(BOOL)a3 forProperty:(unsigned int)a4 error:(id *)a5
{
  v6 = NodePropertyListSetAsBool(self->super._propertyList.fRef, a4, a3);
  v7 = v6;
  if (a5)
  {
    *a5 = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsInt8:(char)a3 forProperty:(unsigned int)a4 error:(id *)a5
{
  v6 = NodePropertyListSetAsByte(self->super._propertyList.fRef, a4, a3);
  v7 = v6;
  if (a5)
  {
    *a5 = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsInt16:(signed __int16)a3 forProperty:(unsigned int)a4 error:(id *)a5
{
  v6 = NodePropertyListSetAsInt16(self->super._propertyList.fRef, a4, a3);
  v7 = v6;
  if (a5)
  {
    *a5 = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsInt32:(int)a3 forProperty:(unsigned int)a4 error:(id *)a5
{
  v6 = NodePropertyListSetAsInt32(self->super._propertyList.fRef, a4, a3);
  v7 = v6;
  if (a5)
  {
    *a5 = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsInt64:(int64_t)a3 forProperty:(unsigned int)a4 error:(id *)a5
{
  v6 = NodePropertyListSetAsInt64(self->super._propertyList.fRef, a4, a3);
  v7 = v6;
  if (a5)
  {
    *a5 = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsData:(void *)a3 size:(unsigned int)a4 forProperty:(unsigned int)a5 error:(id *)a6
{
  v7 = NodePropertyListSetAsData(self->super._propertyList.fRef, a5, a4, a3);
  v8 = v7;
  if (a6)
  {
    *a6 = ErrorWithOSStatus(v7, 0);
  }

  return v8 == 0;
}

- (BOOL)setAsString:(id)a3 forProperty:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = NodePropertyListSetAsCFString(self->super._propertyList.fRef, a4, v8);
  v10 = v9;
  if (a5)
  {
    *a5 = ErrorWithOSStatus(v9, 0);
  }

  return v10 == 0;
}

- (BOOL)setAsDate:(id)a3 forProperty:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  fRef = self->super._propertyList.fRef;
  [v8 timeIntervalSinceReferenceDate];
  v11 = NodePropertyListSetAsCFAbsoluteTime(fRef, a4, v10);
  v12 = v11;
  if (a5)
  {
    *a5 = ErrorWithOSStatus(v11, 0);
  }

  return v12 == 0;
}

- (BOOL)setAsArray:(id)a3 forProperty:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = NodePropertyListSetAsCFArray(self->super._propertyList.fRef, a4, v8);
  v10 = v9;
  if (a5)
  {
    *a5 = ErrorWithOSStatus(v9, 0);
  }

  return v10 == 0;
}

- (BOOL)setAsData:(id)a3 forProperty:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = NodePropertyListSetAsCFData(self->super._propertyList.fRef, a4, v8);
  v10 = v9;
  if (a5)
  {
    *a5 = ErrorWithOSStatus(v9, 0);
  }

  return v10 == 0;
}

- (BOOL)removeProperty:(unsigned int)a3 error:(id *)a4
{
  v5 = NodePropertyListRemoveValue(self->super._propertyList.fRef, a3);
  v6 = v5;
  if (a4)
  {
    *a4 = ErrorWithOSStatus(v5, 0);
  }

  return v6 == 0;
}

@end