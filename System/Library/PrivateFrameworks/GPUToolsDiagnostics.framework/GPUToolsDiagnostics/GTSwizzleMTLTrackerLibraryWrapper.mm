@interface GTSwizzleMTLTrackerLibraryWrapper
+ (id)libraryWrapperWithLibrary:(Library *)library;
- (GTSwizzleMTLTrackerLibraryWrapper)initWithLibrary:(Library *)library;
- (Library)library;
- (id).cxx_construct;
- (void)setLibrary:(Library *)library;
@end

@implementation GTSwizzleMTLTrackerLibraryWrapper

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)setLibrary:(Library *)library
{
  objc_storeStrong(&self->_library.Path, library->Path);
  objc_storeStrong(&self->_library.Metallib, library->Metallib);
  objc_storeStrong(&self->_library.Source, library->Source);
  *&self->_library.isDefaultMetallib = *&library->isDefaultMetallib;

  Path = library->Path;
}

- (Library)library
{
  retstr->Path = self->_library.Path;
  retstr->Metallib = self->_library.Metallib;
  result = self->_library.Source;
  v6 = *&self->_library.isDefaultMetallib;
  retstr->Source = &result->Path;
  *&retstr->isDefaultMetallib = v6;
  return result;
}

- (GTSwizzleMTLTrackerLibraryWrapper)initWithLibrary:(Library *)library
{
  v7.receiver = self;
  v7.super_class = GTSwizzleMTLTrackerLibraryWrapper;
  v4 = [(GTSwizzleMTLTrackerLibraryWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_library.Path, library->Path);
    objc_storeStrong(&v5->_library.Metallib, library->Metallib);
    objc_storeStrong(&v5->_library.Source, library->Source);
    *&v5->_library.isDefaultMetallib = *&library->isDefaultMetallib;
  }

  return v5;
}

+ (id)libraryWrapperWithLibrary:(Library *)library
{
  v4 = [self alloc];
  v5 = library->Path;
  v10[0] = v5;
  v6 = library->Metallib;
  v10[1] = v6;
  v7 = library->Source;
  v8 = *&library->isDefaultMetallib;
  v10[2] = v7;
  v10[3] = v8;
  if (v4)
  {
    v4 = [v4 initWithLibrary:v10];
  }

  else
  {
  }

  return v4;
}

@end