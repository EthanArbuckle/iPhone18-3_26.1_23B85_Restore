@interface JavaIoFile
+ (BOOL)isCaseSensitiveImpl;
+ (void)initialize;
- (BOOL)createNewFile;
- (BOOL)delete__;
- (BOOL)isAbsolute;
- (BOOL)isDirectory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFile;
- (BOOL)isHidden;
- (BOOL)mkdirImplWithNSString:(id)string;
- (BOOL)renameToWithJavaIoFile:(id)file;
- (BOOL)setExecutableWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
- (BOOL)setLastModifiedWithLong:(int64_t)long;
- (BOOL)setReadableWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
- (BOOL)setWritableWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
- (JavaIoFile)initWithJavaIoFile:(id)file withNSString:(id)string;
- (JavaIoFile)initWithNSString:(id)string;
- (__CFString)getAbsoluteName;
- (id)getAbsoluteFile;
- (id)getAbsolutePath;
- (id)getCanonicalFile;
- (id)getCanonicalPath;
- (id)getName;
- (id)getParent;
- (id)getParentFile;
- (id)listFiles;
- (id)listFilesWithJavaIoFileFilter:(id)filter;
- (id)listFilesWithJavaIoFilenameFilter:(id)filter;
- (id)listWithJavaIoFilenameFilter:(id)filter;
- (id)toURI;
- (id)toURL;
- (int)compareToWithId:(id)id;
- (int64_t)getFreeSpace;
- (int64_t)getTotalSpace;
- (int64_t)getUsableSpace;
- (int64_t)lastModified;
- (int64_t)length;
- (uint64_t)mkdirsWithBoolean:(void *)boolean;
- (unint64_t)hash;
- (void)dealloc;
- (void)deleteOnExit;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaIoFile

- (JavaIoFile)initWithJavaIoFile:(id)file withNSString:(id)string
{
  if (file)
  {
    getPath = [file getPath];
  }

  else
  {
    getPath = 0;
  }

  JavaIoFile_initWithNSString_withNSString_(self, getPath, string);
  return self;
}

- (JavaIoFile)initWithNSString:(id)string
{
  v4 = sub_1001AA198(string);
  JreStrongAssign(&self->path_, v4);
  return self;
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (id && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getPath = [(JavaIoFile *)self getPath];
  if (!getPath || !id)
  {
    JreThrowNullPointerException();
  }

  getPath2 = [id getPath];

  return [getPath compareToWithId:getPath2];
}

- (BOOL)delete__
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ removeWithNSString:self->path_];
  return 1;
}

- (void)deleteOnExit
{
  v3 = LibcoreIoDeleteOnExit_getInstance();
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  getAbsolutePath = [(JavaIoFile *)self getAbsolutePath];

  [v4 addFileWithNSString:getAbsolutePath];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  path = self->path_;
  if (byte_100554C60)
  {
    if (path)
    {
      objc_opt_class();
      if (equal)
      {
        if (objc_opt_isKindOfClass())
        {
          getPath = [equal getPath];

          return [(NSString *)path isEqual:getPath];
        }

LABEL_17:
        JreThrowClassCastException();
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!path)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_16;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  getPath2 = [equal getPath];

  return [(NSString *)path equalsIgnoreCase:getPath2];
}

- (id)getAbsolutePath
{
  if ([(JavaIoFile *)self isAbsolute])
  {
    return self->path_;
  }

  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"user.dir");
  path = self->path_;
  if (!path)
  {
    JreThrowNullPointerException();
  }

  if ([(NSString *)path isEmpty])
  {
    return PropertyWithNSString;
  }

  v6 = self->path_;

  return sub_1001AA358(PropertyWithNSString, v6);
}

- (id)getAbsoluteFile
{
  v2 = new_JavaIoFile_initWithNSString_([(JavaIoFile *)self getAbsolutePath]);

  return v2;
}

- (id)getCanonicalPath
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  v3 = LibcoreIoLibcore_os_;
  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  getAbsolutePath = [(JavaIoFile *)self getAbsolutePath];

  return [v3 realpathWithNSString:getAbsolutePath];
}

- (id)getCanonicalFile
{
  v2 = new_JavaIoFile_initWithNSString_([(JavaIoFile *)self getCanonicalPath]);

  return v2;
}

- (id)getName
{
  path = self->path_;
  if (!path)
  {
    JreThrowNullPointerException();
  }

  v4 = [(NSString *)path lastIndexOfString:JavaIoFile_separator_];
  v5 = self->path_;
  if ((v4 & 0x80000000) != 0)
  {
    return v5;
  }

  v6 = v4;
  v7 = [(NSString *)v5 length];

  return [(NSString *)v5 substring:v6 + 1 endIndex:v7];
}

- (id)getParent
{
  path = self->path_;
  if (!path)
  {
    JreThrowNullPointerException();
  }

  v4 = [(NSString *)path length];
  v5 = v4;
  if (JavaIoFile_separatorChar_ != 92 || v4 < 3)
  {
    LOBYTE(v7) = 0;
    v8 = 0;
  }

  else
  {
    v7 = [(NSString *)self->path_ charAtWithInt:1]== 58;
    v8 = (2 * v7);
  }

  v9 = [(NSString *)self->path_ lastIndexOf:?];
  if (v7 && v9 == -1)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == -1)
  {
    return 0;
  }

  v11 = [(NSString *)self->path_ charAtWithInt:(v5 - 1)];
  if (v11 == JavaIoFile_separatorChar_)
  {
    return 0;
  }

  if ([(NSString *)self->path_ indexOf:?]== v10 && (v13 = [(NSString *)self->path_ charAtWithInt:v8], v13 == JavaIoFile_separatorChar_))
  {
    v14 = self->path_;
    v15 = (v10 + 1);
  }

  else
  {
    v14 = self->path_;
    v15 = v10;
  }

  return [(NSString *)v14 substring:0 endIndex:v15];
}

- (id)getParentFile
{
  result = [(JavaIoFile *)self getParent];
  if (result)
  {
    v3 = new_JavaIoFile_initWithNSString_(result);

    return v3;
  }

  return result;
}

- (unint64_t)hash
{
  path = self->path_;
  if (byte_100554C60 == 1)
  {
    if (!path)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!path)
    {
      goto LABEL_9;
    }

    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000458CC();
    }

    path = [(NSString *)path lowercaseStringWithJRELocale:JavaUtilLocale_ENGLISH_];
    if (!path)
    {
LABEL_9:
      JreThrowNullPointerException();
    }
  }

  return [(NSString *)path hash]^ 0x12D591;
}

- (BOOL)isAbsolute
{
  path = self->path_;
  if (!path)
  {
    JreThrowNullPointerException();
  }

  if ([(NSString *)path length]< 1)
  {
    return 0;
  }

  v4 = [(NSString *)self->path_ charAtWithInt:0];
  return v4 == JavaIoFile_separatorChar_;
}

- (BOOL)isDirectory
{
  path = self->path_;
  if (!path)
  {
    return 0;
  }

  v3 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:path, 0];
  if (!v3)
  {
    return 0;
  }

  fileType = [(NSDictionary *)v3 fileType];
  if (!fileType)
  {
    return 0;
  }

  return [(NSString *)fileType isEqualToString:NSFileTypeDirectory];
}

- (BOOL)isFile
{
  path = self->path_;
  if (!path)
  {
    return 0;
  }

  v3 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:path, 0];
  if (!v3)
  {
    return 0;
  }

  fileType = [(NSDictionary *)v3 fileType];
  if (!fileType)
  {
    return 0;
  }

  return [(NSString *)fileType isEqualToString:NSFileTypeRegular];
}

- (BOOL)isHidden
{
  path = self->path_;
  if (!path)
  {
    goto LABEL_8;
  }

  if ([(NSString *)path isEmpty])
  {
    return 0;
  }

  getName = [(JavaIoFile *)self getName];
  if (!getName)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [getName hasPrefix:@"."];
}

- (int64_t)lastModified
{
  if (!self->path_)
  {
    return 0;
  }

  result = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:self->path_, 0];
  if (result)
  {
    result = [result fileModificationDate];
    if (result)
    {
      [result timeIntervalSince1970];
      return 1000 * v3;
    }
  }

  return result;
}

- (BOOL)setLastModifiedWithLong:(int64_t)long
{
  if (long < 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"time < 0");
    objc_exception_throw(v6);
  }

  path = self->path_;

  return sub_1001AAE94(path, long);
}

- (BOOL)setExecutableWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  if (withBoolean)
  {
    v4 = 64;
  }

  else
  {
    v4 = 73;
  }

  return sub_1001AAF8C(self, v4, boolean);
}

- (BOOL)setReadableWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  if (withBoolean)
  {
    v4 = 256;
  }

  else
  {
    v4 = 292;
  }

  return sub_1001AAF8C(self, v4, boolean);
}

- (BOOL)setWritableWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  if (withBoolean)
  {
    v4 = 128;
  }

  else
  {
    v4 = 146;
  }

  return sub_1001AAF8C(self, v4, boolean);
}

- (int64_t)length
{
  if (!self->path_)
  {
    return 0;
  }

  v2 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:self->path_, 0];
  if (!v2)
  {
    return 0;
  }

  return [(NSDictionary *)v2 fileSize];
}

- (id)listWithJavaIoFilenameFilter:(id)filter
{
  result = [(JavaIoFile *)self list];
  v6 = result;
  if (filter && result)
  {
    v7 = new_JavaUtilArrayList_initWithInt_(*(result + 2));
    v8 = (v6 + 24);
    v9 = &v6[8 * *(v6 + 2) + 24];
    while (v8 < v9)
    {
      v11 = *v8++;
      v10 = v11;
      if ([filter acceptWithJavaIoFile:self withNSString:v11])
      {
        [(JavaUtilArrayList *)v7 addWithId:v10];
      }
    }

    v12 = [IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v7 size] type:NSString_class_()];

    return [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:v12];
  }

  return result;
}

- (id)listFiles
{
  list = [(JavaIoFile *)self list];

  return sub_1001AB300(self, list);
}

- (id)listFilesWithJavaIoFilenameFilter:(id)filter
{
  v4 = [(JavaIoFile *)self listWithJavaIoFilenameFilter:filter];

  return sub_1001AB300(self, v4);
}

- (id)listFilesWithJavaIoFileFilter:(id)filter
{
  result = [(JavaIoFile *)self listFiles];
  v5 = result;
  if (filter && result)
  {
    v6 = new_JavaUtilArrayList_initWithInt_(*(result + 2));
    v7 = (v5 + 24);
    v8 = &v5[8 * *(v5 + 2) + 24];
    while (v7 < v8)
    {
      v10 = *v7++;
      v9 = v10;
      if ([filter acceptWithJavaIoFile:v10])
      {
        [(JavaUtilArrayList *)v6 addWithId:v9];
      }
    }

    v11 = [IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v6 size] type:JavaIoFile_class_()];

    return [(JavaUtilArrayList *)v6 toArrayWithNSObjectArray:v11];
  }

  return result;
}

- (BOOL)mkdirImplWithNSString:(id)string
{
  v4 = +[NSFileManager defaultManager];

  return [(NSFileManager *)v4 createDirectoryAtPath:string withIntermediateDirectories:0 attributes:0 error:0];
}

- (uint64_t)mkdirsWithBoolean:(void *)boolean
{
  if ([boolean exists])
  {
    return 0;
  }

  if ([boolean mkdir])
  {
    return 1;
  }

  result = [boolean getParent];
  if (result)
  {
    result = [new_JavaIoFile_initWithNSString_(result) mkdirs];
    if (result)
    {

      return [boolean mkdir];
    }
  }

  return result;
}

- (BOOL)createNewFile
{
  path = self->path_;
  if (!path)
  {
    JreThrowNullPointerException();
  }

  if (![(NSString *)path length])
  {
    v12 = @"No such file or directory";
    goto LABEL_12;
  }

  if ([(JavaIoFile *)self isDirectory])
  {
    v14 = self->path_;
    v12 = JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, @"Cannot create: ");
LABEL_12:
    v13 = new_JavaIoIOException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  LibcoreIoIoUtils_closeWithJavaIoFileDescriptor_([LibcoreIoLibcore_os_ openWithNSString:self->path_ withInt:2562 withInt:384]);
  return 1;
}

- (BOOL)renameToWithJavaIoFile:(id)file
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (LibcoreIoLibcore_os_)
  {
    v5 = file == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ renameWithNSString:self->path_ withNSString:*(file + 1)];
  return 1;
}

- (id)toURI
{
  v2 = [JavaIoFile getAbsoluteName]_0(self);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  if (([(__CFString *)v2 hasPrefix:@"/"]& 1) != 0)
  {
    if ([(__CFString *)v3 hasPrefix:@"//"])
    {
      v11 = new_JavaNetURI_initWithNSString_withNSString_withNSString_withNSString_(@"file", &stru_100484358, v3, 0);
    }

    else
    {
      v11 = new_JavaNetURI_initWithNSString_withNSString_withNSString_withNSString_withNSString_(@"file", 0, v3, 0, 0);
    }
  }

  else
  {
    v12 = JreStrcat("C$", v4, v5, v6, v7, v8, v9, v10, 47);
    v11 = new_JavaNetURI_initWithNSString_withNSString_withNSString_withNSString_withNSString_(@"file", 0, v12, 0, 0);
  }

  return v11;
}

- (__CFString)getAbsoluteName
{
  getAbsoluteFile = [self getAbsoluteFile];
  if (!getAbsoluteFile)
  {
    goto LABEL_14;
  }

  v2 = getAbsoluteFile;
  getPath = [getAbsoluteFile getPath];
  if ([v2 isDirectory])
  {
    if (!getPath)
    {
      goto LABEL_14;
    }

    v4 = [(__CFString *)getPath charAtWithInt:[(__CFString *)getPath length]- 1];
    if (v4 == JavaIoFile_separatorChar_)
    {
      v12 = v4;
      goto LABEL_8;
    }

    getPath = JreStrcat("$C", v5, v6, v7, v8, v9, v10, v11, getPath);
  }

  v12 = JavaIoFile_separatorChar_;
LABEL_8:
  if (v12 == 47)
  {
    return getPath;
  }

  if (!getPath)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  return [__CFString replace:getPath withChar:"replace:withChar:"];
}

- (id)toURL
{
  v2 = [JavaIoFile getAbsoluteName]_0(self);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  if (([(__CFString *)v2 hasPrefix:@"/"]& 1) != 0)
  {
    if ([(__CFString *)v3 hasPrefix:@"//"])
    {
      v18 = JreStrcat("$$", v11, v12, v13, v14, v15, v16, v17, @"file:");
      v19 = new_JavaNetURL_initWithNSString_(v18);
      goto LABEL_8;
    }

    v20 = v3;
  }

  else
  {
    v20 = JreStrcat("C$", v4, v5, v6, v7, v8, v9, v10, 47);
  }

  v19 = new_JavaNetURL_initWithNSString_withNSString_withInt_withNSString_withJavaNetURLStreamHandler_(@"file", &stru_100484358, 0xFFFFFFFFLL, v20, 0);
LABEL_8:

  return v19;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultWriteObject];
  v4 = JavaIoFile_separatorChar_;

  [stream writeCharWithInt:v4];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream || ([stream defaultReadObject], v5 = objc_msgSend(stream, "readChar"), path = self->path_, p_path = &self->path_, (v6 = path) == 0))
  {
    JreThrowNullPointerException();
  }

  v9 = sub_1001AA198([(NSString *)v6 replace:v5 withChar:JavaIoFile_separatorChar_]);

  JreStrongAssign(p_path, v9);
}

- (int64_t)getTotalSpace
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (v3 = [LibcoreIoLibcore_os_ statvfsWithNSString:self->path_]) == 0)
  {
    JreThrowNullPointerException();
  }

  return v3[1] * v3[3];
}

- (int64_t)getUsableSpace
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (v3 = [LibcoreIoLibcore_os_ statvfsWithNSString:self->path_]) == 0)
  {
    JreThrowNullPointerException();
  }

  return v3[1] * v3[5];
}

- (int64_t)getFreeSpace
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (v3 = [LibcoreIoLibcore_os_ statvfsWithNSString:self->path_]) == 0)
  {
    JreThrowNullPointerException();
  }

  return v3[1] * v3[4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoFile;
  [(JavaIoFile *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilRandom_init();
    JreStrongAssignAndConsume(&qword_100554C68, v2);
    PropertyWithNSString_withNSString = JavaLangSystem_getPropertyWithNSString_withNSString_(@"file.separator", @"/");
    if (!PropertyWithNSString_withNSString || (JavaIoFile_separatorChar_ = [PropertyWithNSString_withNSString charAtWithInt:0], (v4 = JavaLangSystem_getPropertyWithNSString_withNSString_(@"path.separator", @":")) == 0))
    {
      JreThrowNullPointerException();
    }

    JavaIoFile_pathSeparatorChar_ = [v4 charAtWithInt:0];
    v5 = NSString_valueOfChar_(JavaIoFile_separatorChar_);
    JreStrongAssign(&JavaIoFile_separator_, v5);
    v6 = NSString_valueOfChar_(JavaIoFile_pathSeparatorChar_);
    JreStrongAssign(&JavaIoFile_pathSeparator_, v6);
    byte_100554C60 = +[JavaIoFile isCaseSensitiveImpl]_0();
    atomic_store(1u, JavaIoFile__initialized);
  }
}

+ (BOOL)isCaseSensitiveImpl
{
  if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8E4();
  }

  memset(&v2, 0, 512);
  uname(&v2);
  if (!(*v2.machine ^ 0x36383369 | v2.machine[4]))
  {
    return 0;
  }

  return *v2.machine != 14456 || v2.machine[2] != 54;
}

@end