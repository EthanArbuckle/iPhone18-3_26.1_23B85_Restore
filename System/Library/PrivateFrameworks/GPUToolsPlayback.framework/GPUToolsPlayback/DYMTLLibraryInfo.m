@interface DYMTLLibraryInfo
- (DYMTLLibraryInfo)initWithType:(unint64_t)a3 code:(id)a4 compileOptions:(id)a5;
@end

@implementation DYMTLLibraryInfo

- (DYMTLLibraryInfo)initWithType:(unint64_t)a3 code:(id)a4 compileOptions:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DYMTLLibraryInfo;
  v11 = [(DYMTLLibraryInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_code, a4);
    objc_storeStrong(&v12->_compileOptions, a5);
  }

  return v12;
}

@end