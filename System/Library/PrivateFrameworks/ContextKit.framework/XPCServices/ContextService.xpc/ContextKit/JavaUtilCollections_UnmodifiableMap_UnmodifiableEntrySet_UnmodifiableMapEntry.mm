@interface JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_UnmodifiableMapEntry
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)getKey;
- (id)getValue;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_UnmodifiableMapEntry

- (BOOL)isEqual:(id)equal
{
  mapEntry = self->mapEntry_;
  if (!mapEntry)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)mapEntry isEqual:equal];
}

- (id)getKey
{
  mapEntry = self->mapEntry_;
  if (!mapEntry)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)mapEntry getKey];
}

- (id)getValue
{
  mapEntry = self->mapEntry_;
  if (!mapEntry)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)mapEntry getValue];
}

- (unint64_t)hash
{
  mapEntry = self->mapEntry_;
  if (!mapEntry)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)mapEntry hash];
}

- (NSString)description
{
  mapEntry = self->mapEntry_;
  if (!mapEntry)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap_Entry *)mapEntry description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_UnmodifiableMapEntry;
  [(JavaUtilCollections_UnmodifiableMap_UnmodifiableEntrySet_UnmodifiableMapEntry *)&v3 dealloc];
}

@end