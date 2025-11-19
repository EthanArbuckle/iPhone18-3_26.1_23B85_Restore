@interface GTSwizzleMTLTrackerLibraryWrapper
+ (id)libraryWrapperWithLibrary:(Library *)a3;
- (GTSwizzleMTLTrackerLibraryWrapper)initWithLibrary:(Library *)a3;
- (Library)library;
- (id).cxx_construct;
- (void)setLibrary:(Library *)a3;
@end

@implementation GTSwizzleMTLTrackerLibraryWrapper

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)setLibrary:(Library *)a3
{
  objc_storeStrong(&self->_library.Path, a3->Path);
  objc_storeStrong(&self->_library.Metallib, a3->Metallib);
  objc_storeStrong(&self->_library.Source, a3->Source);
  *&self->_library.isDefaultMetallib = *&a3->isDefaultMetallib;

  Path = a3->Path;
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

- (GTSwizzleMTLTrackerLibraryWrapper)initWithLibrary:(Library *)a3
{
  v7.receiver = self;
  v7.super_class = GTSwizzleMTLTrackerLibraryWrapper;
  v4 = [(GTSwizzleMTLTrackerLibraryWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_library.Path, a3->Path);
    objc_storeStrong(&v5->_library.Metallib, a3->Metallib);
    objc_storeStrong(&v5->_library.Source, a3->Source);
    *&v5->_library.isDefaultMetallib = *&a3->isDefaultMetallib;
  }

  return v5;
}

+ (id)libraryWrapperWithLibrary:(Library *)a3
{
  v4 = [a1 alloc];
  v5 = a3->Path;
  v10[0] = v5;
  v6 = a3->Metallib;
  v10[1] = v6;
  v7 = a3->Source;
  v8 = *&a3->isDefaultMetallib;
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