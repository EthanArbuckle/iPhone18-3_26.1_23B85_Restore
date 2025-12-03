@interface FIMutableNodePropertyList
- (BOOL)removeProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsArray:(id)array forProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsBool:(BOOL)bool forProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsData:(id)data forProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsData:(void *)data size:(unsigned int)size forProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsDate:(id)date forProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsInt16:(signed __int16)int16 forProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsInt32:(int)int32 forProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsInt64:(int64_t)int64 forProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsInt8:(char)int8 forProperty:(unsigned int)property error:(id *)error;
- (BOOL)setAsString:(id)string forProperty:(unsigned int)property error:(id *)error;
@end

@implementation FIMutableNodePropertyList

- (BOOL)setAsBool:(BOOL)bool forProperty:(unsigned int)property error:(id *)error
{
  v6 = NodePropertyListSetAsBool(self->super._propertyList.fRef, property, bool);
  v7 = v6;
  if (error)
  {
    *error = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsInt8:(char)int8 forProperty:(unsigned int)property error:(id *)error
{
  v6 = NodePropertyListSetAsByte(self->super._propertyList.fRef, property, int8);
  v7 = v6;
  if (error)
  {
    *error = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsInt16:(signed __int16)int16 forProperty:(unsigned int)property error:(id *)error
{
  v6 = NodePropertyListSetAsInt16(self->super._propertyList.fRef, property, int16);
  v7 = v6;
  if (error)
  {
    *error = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsInt32:(int)int32 forProperty:(unsigned int)property error:(id *)error
{
  v6 = NodePropertyListSetAsInt32(self->super._propertyList.fRef, property, int32);
  v7 = v6;
  if (error)
  {
    *error = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsInt64:(int64_t)int64 forProperty:(unsigned int)property error:(id *)error
{
  v6 = NodePropertyListSetAsInt64(self->super._propertyList.fRef, property, int64);
  v7 = v6;
  if (error)
  {
    *error = ErrorWithOSStatus(v6, 0);
  }

  return v7 == 0;
}

- (BOOL)setAsData:(void *)data size:(unsigned int)size forProperty:(unsigned int)property error:(id *)error
{
  v7 = NodePropertyListSetAsData(self->super._propertyList.fRef, property, size, data);
  v8 = v7;
  if (error)
  {
    *error = ErrorWithOSStatus(v7, 0);
  }

  return v8 == 0;
}

- (BOOL)setAsString:(id)string forProperty:(unsigned int)property error:(id *)error
{
  stringCopy = string;
  v9 = NodePropertyListSetAsCFString(self->super._propertyList.fRef, property, stringCopy);
  v10 = v9;
  if (error)
  {
    *error = ErrorWithOSStatus(v9, 0);
  }

  return v10 == 0;
}

- (BOOL)setAsDate:(id)date forProperty:(unsigned int)property error:(id *)error
{
  dateCopy = date;
  fRef = self->super._propertyList.fRef;
  [dateCopy timeIntervalSinceReferenceDate];
  v11 = NodePropertyListSetAsCFAbsoluteTime(fRef, property, v10);
  v12 = v11;
  if (error)
  {
    *error = ErrorWithOSStatus(v11, 0);
  }

  return v12 == 0;
}

- (BOOL)setAsArray:(id)array forProperty:(unsigned int)property error:(id *)error
{
  arrayCopy = array;
  v9 = NodePropertyListSetAsCFArray(self->super._propertyList.fRef, property, arrayCopy);
  v10 = v9;
  if (error)
  {
    *error = ErrorWithOSStatus(v9, 0);
  }

  return v10 == 0;
}

- (BOOL)setAsData:(id)data forProperty:(unsigned int)property error:(id *)error
{
  dataCopy = data;
  v9 = NodePropertyListSetAsCFData(self->super._propertyList.fRef, property, dataCopy);
  v10 = v9;
  if (error)
  {
    *error = ErrorWithOSStatus(v9, 0);
  }

  return v10 == 0;
}

- (BOOL)removeProperty:(unsigned int)property error:(id *)error
{
  v5 = NodePropertyListRemoveValue(self->super._propertyList.fRef, property);
  v6 = v5;
  if (error)
  {
    *error = ErrorWithOSStatus(v5, 0);
  }

  return v6 == 0;
}

@end