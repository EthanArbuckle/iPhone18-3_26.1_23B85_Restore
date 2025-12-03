@interface _MFFlagChangeEntry
- (_MFFlagChangeEntry)initWithPath:(id)path UID:(unsigned int)d changes:(id)changes;
- (void)dealloc;
@end

@implementation _MFFlagChangeEntry

- (_MFFlagChangeEntry)initWithPath:(id)path UID:(unsigned int)d changes:(id)changes
{
  v10.receiver = self;
  v10.super_class = _MFFlagChangeEntry;
  v8 = [(_MFFlagChangeEntry *)&v10 init];
  if (v8)
  {
    v8->path = path;
    v8->uid = d;
    v8->changes = changes;
    v8->commitTime = 0.0;
    v8->connectionTag = -1;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFFlagChangeEntry;
  [(_MFFlagChangeEntry *)&v3 dealloc];
}

@end