@interface ML3MusicLibrary_SortMapEntry
- (ML3MusicLibrary_SortMapEntry)initWithName:(id)a3 nameSection:(int)a4 sortKey:(id)a5 nameOrder:(int64_t)a6 dirtyFlag:(BOOL)a7;
@end

@implementation ML3MusicLibrary_SortMapEntry

- (ML3MusicLibrary_SortMapEntry)initWithName:(id)a3 nameSection:(int)a4 sortKey:(id)a5 nameOrder:(int64_t)a6 dirtyFlag:(BOOL)a7
{
  v13 = a3;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = ML3MusicLibrary_SortMapEntry;
  v15 = [(ML3MusicLibrary_SortMapEntry *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_nameSection = a4;
    objc_storeStrong(&v15->_name, a3);
    objc_storeStrong(&v16->_sortKey, a5);
    v16->_nameOrder = a6;
    v16->_dirty = a7;
  }

  return v16;
}

@end