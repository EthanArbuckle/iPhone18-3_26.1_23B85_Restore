@interface ACCMediaLibraryUpdateLibraryInfo
- (ACCMediaLibraryUpdateLibraryInfo)initWithDict:(id)dict;
- (ACCMediaLibraryUpdateLibraryInfo)initWithMediaLibrary:(id)library dict:(id)dict;
- (ACCMediaLibraryUpdateLibraryInfo)initWithMediaLibrary:(id)library name:(id)name type:(int)type;
- (id)copyDict;
- (void)fillStruct:(id *)struct;
@end

@implementation ACCMediaLibraryUpdateLibraryInfo

- (ACCMediaLibraryUpdateLibraryInfo)initWithMediaLibrary:(id)library name:(id)name type:(int)type
{
  libraryCopy = library;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ACCMediaLibraryUpdateLibraryInfo;
  v11 = [(ACCMediaLibraryUpdateLibraryInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaLibraryUID, library);
    objc_storeStrong(&v12->_name, name);
    v12->_type = type;
  }

  return v12;
}

- (ACCMediaLibraryUpdateLibraryInfo)initWithMediaLibrary:(id)library dict:(id)dict
{
  dictCopy = dict;
  v13.receiver = self;
  v13.super_class = ACCMediaLibraryUpdateLibraryInfo;
  v6 = [(ACCMediaLibraryUpdateLibraryInfo *)&v13 init];
  if (v6)
  {
    v7 = [dictCopy objectForKey:@"ACCMediaLibraryUIDKey"];
    mediaLibraryUID = v6->_mediaLibraryUID;
    v6->_mediaLibraryUID = v7;

    v9 = [dictCopy objectForKey:@"ACCMediaLibraryNameKey"];
    name = v6->_name;
    v6->_name = v9;

    v11 = [dictCopy objectForKey:@"ACCMediaLibraryTypeKey"];
    v6->_type = [v11 unsignedCharValue];
  }

  return v6;
}

- (ACCMediaLibraryUpdateLibraryInfo)initWithDict:(id)dict
{
  dictCopy = dict;
  v12.receiver = self;
  v12.super_class = ACCMediaLibraryUpdateLibraryInfo;
  v5 = [(ACCMediaLibraryUpdateLibraryInfo *)&v12 init];
  if (v5)
  {
    v6 = [dictCopy objectForKey:@"ACCMediaLibraryUIDKey"];
    mediaLibraryUID = v5->_mediaLibraryUID;
    v5->_mediaLibraryUID = v6;

    v8 = [dictCopy objectForKey:@"ACCMediaLibraryNameKey"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [dictCopy objectForKey:@"ACCMediaLibraryTypeKey"];
    v5->_type = [v10 unsignedCharValue];
  }

  return v5;
}

- (id)copyDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:self->_mediaLibraryUID forKey:@"ACCMediaLibraryUIDKey"];
  [v3 setObject:self->_name forKey:@"ACCMediaLibraryNameKey"];
  v4 = [NSNumber numberWithUnsignedChar:LOBYTE(self->_type)];
  [v3 setObject:v4 forKey:@"ACCMediaLibraryTypeKey"];

  return v3;
}

- (void)fillStruct:(id *)struct
{
  struct->var0 = 0;
  struct->var1 = 0;
  *&struct->var2 = 0;
  struct->var1 = [(NSString *)self->_mediaLibraryUID UTF8String];
  struct->var0 = [(NSString *)self->_name UTF8String];
  struct->var2 = self->_type;
}

@end