@interface ML3MusicLibrary_SortMapEntry
- (ML3MusicLibrary_SortMapEntry)initWithName:(id)name nameSection:(int)section sortKey:(id)key nameOrder:(int64_t)order dirtyFlag:(BOOL)flag;
@end

@implementation ML3MusicLibrary_SortMapEntry

- (ML3MusicLibrary_SortMapEntry)initWithName:(id)name nameSection:(int)section sortKey:(id)key nameOrder:(int64_t)order dirtyFlag:(BOOL)flag
{
  nameCopy = name;
  keyCopy = key;
  v18.receiver = self;
  v18.super_class = ML3MusicLibrary_SortMapEntry;
  v15 = [(ML3MusicLibrary_SortMapEntry *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_nameSection = section;
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_sortKey, key);
    v16->_nameOrder = order;
    v16->_dirty = flag;
  }

  return v16;
}

@end