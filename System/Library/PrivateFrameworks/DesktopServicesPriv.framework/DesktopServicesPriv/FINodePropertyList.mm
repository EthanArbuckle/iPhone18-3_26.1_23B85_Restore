@interface FINodePropertyList
- (BOOL)asBool:(unsigned int)bool error:(id *)error;
- (BOOL)asData:(void *)data capacity:(unsigned int)capacity length:(unsigned int *)length forProperty:(unsigned int)property error:(id *)error;
- (FINodePropertyList)init;
- (FINodePropertyList)initWithPropertyListRef:(OpaquePropertyListRef *)ref;
- (char)asInt8:(unsigned int)int8 error:(id *)error;
- (id)asArray:(unsigned int)array error:(id *)error;
- (id)asData:(unsigned int)data error:(id *)error;
- (id)asDate:(unsigned int)date error:(id *)error;
- (id)asString:(unsigned int)string error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int)asInt32:(unsigned int)int32 error:(id *)error;
- (int64_t)asInt64:(unsigned int)int64 error:(id *)error;
- (signed)asInt16:(unsigned int)int16 error:(id *)error;
- (void)setPropertyListRef:(OpaquePropertyListRef *)ref;
@end

@implementation FINodePropertyList

- (FINodePropertyList)init
{
  v3.receiver = self;
  v3.super_class = FINodePropertyList;
  [(FINodePropertyList *)&v3 init];
  NodeNewPropertyList();
}

- (FINodePropertyList)initWithPropertyListRef:(OpaquePropertyListRef *)ref
{
  v6.receiver = self;
  v6.super_class = FINodePropertyList;
  v4 = [(FINodePropertyList *)&v6 init];
  if (!ref)
  {
    NodeNewPropertyList();
  }

  NodePropertyListRetain(ref);
  NodePropertyListRelease(*(v4 + 1));
  *(v4 + 1) = ref;
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  Copy = NodePropertyListCreateCopy(self->_propertyList.fRef);
  copy = [[FINodePropertyList allocWithZone:?], "initWithPropertyListRef:", Copy];
  NodePropertyListRelease(Copy);
  return copy;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  Copy = NodePropertyListCreateCopy(self->_propertyList.fRef);
  copy = [(FINodePropertyList *)[FIMutableNodePropertyList allocWithZone:?], "initWithPropertyListRef:", Copy];
  NodePropertyListRelease(Copy);
  return copy;
}

- (void)setPropertyListRef:(OpaquePropertyListRef *)ref
{
  NodePropertyListRetain(ref);
  NodePropertyListRelease(self->_propertyList.fRef);
  self->_propertyList.fRef = ref;
}

- (BOOL)asBool:(unsigned int)bool error:(id *)error
{
  v7 = 0;
  AsBool = NodePropertyListGetAsBool(self->_propertyList.fRef, bool, &v7);
  if (error)
  {
    *error = ErrorWithOSStatus(AsBool, 0);
  }

  return v7;
}

- (char)asInt8:(unsigned int)int8 error:(id *)error
{
  v7 = 0;
  AsByte = NodePropertyListGetAsByte(self->_propertyList.fRef, int8, &v7);
  if (error)
  {
    *error = ErrorWithOSStatus(AsByte, 0);
  }

  return v7;
}

- (signed)asInt16:(unsigned int)int16 error:(id *)error
{
  v7 = 0;
  AsInt16 = NodePropertyListGetAsInt16(self->_propertyList.fRef, int16, &v7);
  if (error)
  {
    *error = ErrorWithOSStatus(AsInt16, 0);
  }

  return v7;
}

- (int)asInt32:(unsigned int)int32 error:(id *)error
{
  v7 = 0;
  AsInt32 = NodePropertyListGetAsInt32(self->_propertyList.fRef, int32, &v7);
  if (error)
  {
    *error = ErrorWithOSStatus(AsInt32, 0);
  }

  return v7;
}

- (int64_t)asInt64:(unsigned int)int64 error:(id *)error
{
  v7 = 0;
  AsInt64 = NodePropertyListGetAsInt64(self->_propertyList.fRef, int64, &v7);
  if (error)
  {
    *error = ErrorWithOSStatus(AsInt64, 0);
  }

  return v7;
}

- (BOOL)asData:(void *)data capacity:(unsigned int)capacity length:(unsigned int *)length forProperty:(unsigned int)property error:(id *)error
{
  AsData = NodePropertyListGetAsData(self->_propertyList.fRef, property, capacity, length, data);
  v9 = AsData;
  if (error)
  {
    *error = ErrorWithOSStatus(AsData, 0);
  }

  return v9 == 0;
}

- (id)asString:(unsigned int)string error:(id *)error
{
  v8 = 0;
  v5 = NodePropertyListCopyAsCFString(self->_propertyList.fRef, string, &v8);
  if (error)
  {
    *error = ErrorWithOSStatus(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v8);

  return v6;
}

- (id)asDate:(unsigned int)date error:(id *)error
{
  v9 = 0.0;
  AsCFAbsoluteTime = NodePropertyListGetAsCFAbsoluteTime(self->_propertyList.fRef, date, &v9);
  if (error)
  {
    *error = ErrorWithOSStatus(AsCFAbsoluteTime, 0);
  }

  v6 = objc_alloc(MEMORY[0x1E695DF00]);
  v7 = [v6 initWithTimeIntervalSinceReferenceDate:v9];

  return v7;
}

- (id)asArray:(unsigned int)array error:(id *)error
{
  v8 = 0;
  v5 = NodePropertyListCopyAsCFArray(self->_propertyList.fRef, array, &v8);
  if (error)
  {
    *error = ErrorWithOSStatus(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&v8);

  return v6;
}

- (id)asData:(unsigned int)data error:(id *)error
{
  v8 = 0;
  v5 = NodePropertyListCopyAsCFData(self->_propertyList.fRef, data, &v8);
  if (error)
  {
    *error = ErrorWithOSStatus(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v8);

  return v6;
}

@end