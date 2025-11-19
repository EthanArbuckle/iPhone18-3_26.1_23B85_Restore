@interface _MFFlagChangeEntry
- (_MFFlagChangeEntry)initWithPath:(id)a3 UID:(unsigned int)a4 changes:(id)a5;
- (void)dealloc;
@end

@implementation _MFFlagChangeEntry

- (_MFFlagChangeEntry)initWithPath:(id)a3 UID:(unsigned int)a4 changes:(id)a5
{
  v10.receiver = self;
  v10.super_class = _MFFlagChangeEntry;
  v8 = [(_MFFlagChangeEntry *)&v10 init];
  if (v8)
  {
    v8->path = a3;
    v8->uid = a4;
    v8->changes = a5;
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