@interface FINodePropertyList
- (BOOL)asBool:(unsigned int)a3 error:(id *)a4;
- (BOOL)asData:(void *)a3 capacity:(unsigned int)a4 length:(unsigned int *)a5 forProperty:(unsigned int)a6 error:(id *)a7;
- (FINodePropertyList)init;
- (FINodePropertyList)initWithPropertyListRef:(OpaquePropertyListRef *)a3;
- (char)asInt8:(unsigned int)a3 error:(id *)a4;
- (id)asArray:(unsigned int)a3 error:(id *)a4;
- (id)asData:(unsigned int)a3 error:(id *)a4;
- (id)asDate:(unsigned int)a3 error:(id *)a4;
- (id)asString:(unsigned int)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int)asInt32:(unsigned int)a3 error:(id *)a4;
- (int64_t)asInt64:(unsigned int)a3 error:(id *)a4;
- (signed)asInt16:(unsigned int)a3 error:(id *)a4;
- (void)setPropertyListRef:(OpaquePropertyListRef *)a3;
@end

@implementation FINodePropertyList

- (FINodePropertyList)init
{
  v3.receiver = self;
  v3.super_class = FINodePropertyList;
  [(FINodePropertyList *)&v3 init];
  NodeNewPropertyList();
}

- (FINodePropertyList)initWithPropertyListRef:(OpaquePropertyListRef *)a3
{
  v6.receiver = self;
  v6.super_class = FINodePropertyList;
  v4 = [(FINodePropertyList *)&v6 init];
  if (!a3)
  {
    NodeNewPropertyList();
  }

  NodePropertyListRetain(a3);
  NodePropertyListRelease(*(v4 + 1));
  *(v4 + 1) = a3;
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  Copy = NodePropertyListCreateCopy(self->_propertyList.fRef);
  v5 = [[FINodePropertyList allocWithZone:?], "initWithPropertyListRef:", Copy];
  NodePropertyListRelease(Copy);
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  Copy = NodePropertyListCreateCopy(self->_propertyList.fRef);
  v5 = [(FINodePropertyList *)[FIMutableNodePropertyList allocWithZone:?], "initWithPropertyListRef:", Copy];
  NodePropertyListRelease(Copy);
  return v5;
}

- (void)setPropertyListRef:(OpaquePropertyListRef *)a3
{
  NodePropertyListRetain(a3);
  NodePropertyListRelease(self->_propertyList.fRef);
  self->_propertyList.fRef = a3;
}

- (BOOL)asBool:(unsigned int)a3 error:(id *)a4
{
  v7 = 0;
  AsBool = NodePropertyListGetAsBool(self->_propertyList.fRef, a3, &v7);
  if (a4)
  {
    *a4 = ErrorWithOSStatus(AsBool, 0);
  }

  return v7;
}

- (char)asInt8:(unsigned int)a3 error:(id *)a4
{
  v7 = 0;
  AsByte = NodePropertyListGetAsByte(self->_propertyList.fRef, a3, &v7);
  if (a4)
  {
    *a4 = ErrorWithOSStatus(AsByte, 0);
  }

  return v7;
}

- (signed)asInt16:(unsigned int)a3 error:(id *)a4
{
  v7 = 0;
  AsInt16 = NodePropertyListGetAsInt16(self->_propertyList.fRef, a3, &v7);
  if (a4)
  {
    *a4 = ErrorWithOSStatus(AsInt16, 0);
  }

  return v7;
}

- (int)asInt32:(unsigned int)a3 error:(id *)a4
{
  v7 = 0;
  AsInt32 = NodePropertyListGetAsInt32(self->_propertyList.fRef, a3, &v7);
  if (a4)
  {
    *a4 = ErrorWithOSStatus(AsInt32, 0);
  }

  return v7;
}

- (int64_t)asInt64:(unsigned int)a3 error:(id *)a4
{
  v7 = 0;
  AsInt64 = NodePropertyListGetAsInt64(self->_propertyList.fRef, a3, &v7);
  if (a4)
  {
    *a4 = ErrorWithOSStatus(AsInt64, 0);
  }

  return v7;
}

- (BOOL)asData:(void *)a3 capacity:(unsigned int)a4 length:(unsigned int *)a5 forProperty:(unsigned int)a6 error:(id *)a7
{
  AsData = NodePropertyListGetAsData(self->_propertyList.fRef, a6, a4, a5, a3);
  v9 = AsData;
  if (a7)
  {
    *a7 = ErrorWithOSStatus(AsData, 0);
  }

  return v9 == 0;
}

- (id)asString:(unsigned int)a3 error:(id *)a4
{
  v8 = 0;
  v5 = NodePropertyListCopyAsCFString(self->_propertyList.fRef, a3, &v8);
  if (a4)
  {
    *a4 = ErrorWithOSStatus(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v8);

  return v6;
}

- (id)asDate:(unsigned int)a3 error:(id *)a4
{
  v9 = 0.0;
  AsCFAbsoluteTime = NodePropertyListGetAsCFAbsoluteTime(self->_propertyList.fRef, a3, &v9);
  if (a4)
  {
    *a4 = ErrorWithOSStatus(AsCFAbsoluteTime, 0);
  }

  v6 = objc_alloc(MEMORY[0x1E695DF00]);
  v7 = [v6 initWithTimeIntervalSinceReferenceDate:v9];

  return v7;
}

- (id)asArray:(unsigned int)a3 error:(id *)a4
{
  v8 = 0;
  v5 = NodePropertyListCopyAsCFArray(self->_propertyList.fRef, a3, &v8);
  if (a4)
  {
    *a4 = ErrorWithOSStatus(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&v8);

  return v6;
}

- (id)asData:(unsigned int)a3 error:(id *)a4
{
  v8 = 0;
  v5 = NodePropertyListCopyAsCFData(self->_propertyList.fRef, a3, &v8);
  if (a4)
  {
    *a4 = ErrorWithOSStatus(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v8);

  return v6;
}

@end