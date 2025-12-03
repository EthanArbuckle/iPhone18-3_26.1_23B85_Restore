@interface _ACCMediaLibraryAccessoryInfo
- (_ACCMediaLibraryAccessoryInfo)initWithUID:(id)d windowPerLibrary:(unsigned int)library;
- (void)dealloc;
@end

@implementation _ACCMediaLibraryAccessoryInfo

- (_ACCMediaLibraryAccessoryInfo)initWithUID:(id)d windowPerLibrary:(unsigned int)library
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = _ACCMediaLibraryAccessoryInfo;
  v8 = [(_ACCMediaLibraryAccessoryInfo *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessoryUID, d);
    v9->_windowPerLibrary = library;
    v10 = objc_alloc_init(NSMutableSet);
    nextUpdateStartFull = v9->_nextUpdateStartFull;
    v9->_nextUpdateStartFull = v10;
  }

  return v9;
}

- (void)dealloc
{
  accessoryUID = self->_accessoryUID;
  self->_accessoryUID = 0;

  nextUpdateStartFull = self->_nextUpdateStartFull;
  self->_nextUpdateStartFull = 0;

  v5.receiver = self;
  v5.super_class = _ACCMediaLibraryAccessoryInfo;
  [(_ACCMediaLibraryAccessoryInfo *)&v5 dealloc];
}

@end