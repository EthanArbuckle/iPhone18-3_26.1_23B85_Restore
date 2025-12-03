@interface DYMTLLibraryInfo
- (DYMTLLibraryInfo)initWithType:(unint64_t)type code:(id)code compileOptions:(id)options;
@end

@implementation DYMTLLibraryInfo

- (DYMTLLibraryInfo)initWithType:(unint64_t)type code:(id)code compileOptions:(id)options
{
  codeCopy = code;
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = DYMTLLibraryInfo;
  v11 = [(DYMTLLibraryInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_code, code);
    objc_storeStrong(&v12->_compileOptions, options);
  }

  return v12;
}

@end