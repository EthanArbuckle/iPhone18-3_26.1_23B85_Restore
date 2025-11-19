@interface _ACCMediaLibraryAccessoryInfo
- (_ACCMediaLibraryAccessoryInfo)initWithUID:(id)a3 windowPerLibrary:(unsigned int)a4;
- (void)dealloc;
@end

@implementation _ACCMediaLibraryAccessoryInfo

- (_ACCMediaLibraryAccessoryInfo)initWithUID:(id)a3 windowPerLibrary:(unsigned int)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _ACCMediaLibraryAccessoryInfo;
  v8 = [(_ACCMediaLibraryAccessoryInfo *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessoryUID, a3);
    v9->_windowPerLibrary = a4;
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