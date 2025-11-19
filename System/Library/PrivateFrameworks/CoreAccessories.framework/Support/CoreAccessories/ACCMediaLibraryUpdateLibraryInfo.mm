@interface ACCMediaLibraryUpdateLibraryInfo
- (ACCMediaLibraryUpdateLibraryInfo)initWithDict:(id)a3;
- (ACCMediaLibraryUpdateLibraryInfo)initWithMediaLibrary:(id)a3 dict:(id)a4;
- (ACCMediaLibraryUpdateLibraryInfo)initWithMediaLibrary:(id)a3 name:(id)a4 type:(int)a5;
- (id)copyDict;
- (void)fillStruct:(id *)a3;
@end

@implementation ACCMediaLibraryUpdateLibraryInfo

- (ACCMediaLibraryUpdateLibraryInfo)initWithMediaLibrary:(id)a3 name:(id)a4 type:(int)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ACCMediaLibraryUpdateLibraryInfo;
  v11 = [(ACCMediaLibraryUpdateLibraryInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaLibraryUID, a3);
    objc_storeStrong(&v12->_name, a4);
    v12->_type = a5;
  }

  return v12;
}

- (ACCMediaLibraryUpdateLibraryInfo)initWithMediaLibrary:(id)a3 dict:(id)a4
{
  v5 = a4;
  v13.receiver = self;
  v13.super_class = ACCMediaLibraryUpdateLibraryInfo;
  v6 = [(ACCMediaLibraryUpdateLibraryInfo *)&v13 init];
  if (v6)
  {
    v7 = [v5 objectForKey:@"ACCMediaLibraryUIDKey"];
    mediaLibraryUID = v6->_mediaLibraryUID;
    v6->_mediaLibraryUID = v7;

    v9 = [v5 objectForKey:@"ACCMediaLibraryNameKey"];
    name = v6->_name;
    v6->_name = v9;

    v11 = [v5 objectForKey:@"ACCMediaLibraryTypeKey"];
    v6->_type = [v11 unsignedCharValue];
  }

  return v6;
}

- (ACCMediaLibraryUpdateLibraryInfo)initWithDict:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ACCMediaLibraryUpdateLibraryInfo;
  v5 = [(ACCMediaLibraryUpdateLibraryInfo *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"ACCMediaLibraryUIDKey"];
    mediaLibraryUID = v5->_mediaLibraryUID;
    v5->_mediaLibraryUID = v6;

    v8 = [v4 objectForKey:@"ACCMediaLibraryNameKey"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 objectForKey:@"ACCMediaLibraryTypeKey"];
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

- (void)fillStruct:(id *)a3
{
  a3->var0 = 0;
  a3->var1 = 0;
  *&a3->var2 = 0;
  a3->var1 = [(NSString *)self->_mediaLibraryUID UTF8String];
  a3->var0 = [(NSString *)self->_name UTF8String];
  a3->var2 = self->_type;
}

@end