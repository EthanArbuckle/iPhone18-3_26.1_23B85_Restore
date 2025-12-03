@interface VCPTextTokenizerT5
- (VCPTextTokenizerT5)init;
- (id)encode:(id)encode;
@end

@implementation VCPTextTokenizerT5

- (VCPTextTokenizerT5)init
{
  v4.receiver = self;
  v4.super_class = VCPTextTokenizerT5;
  if ([(VCPTextTokenizer *)&v4 init])
  {
    operator new();
  }

  v2 = 0;

  return v2;
}

- (id)encode:(id)encode
{
  encodeCopy = encode;
  if ([encodeCopy hasPrefix:@"<s>"] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Input text should not contain BOS token!", buf, 2u);
  }

  lowercaseString = [encodeCopy lowercaseString];
  *buf = 0;
  v21 = 0;
  v22 = 0;
  ptr = self->_processor.__ptr_;
  uTF8String = [lowercaseString UTF8String];
  v8 = strlen(uTF8String);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(__p, uTF8String, v8);
  }

  *(__p + v9) = 0;
  if ((v18 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v11 = v18;
  }

  else
  {
    v11 = __p[1];
  }

  (*(*ptr + 144))(&v19, ptr, v10, v11, buf);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  array = [MEMORY[0x1E695DF70] array];
  if (!v19)
  {
    v13 = *buf;
    for (i = v21; v13 != i; ++v13)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:*v13];
      [array addObject:v15];
    }
  }

  [array insertObject:&unk_1F49BBDE8 atIndex:0];
  sentencepiece::util::Status::~Status(&v19);
  if (*buf)
  {
    v21 = *buf;
    operator delete(*buf);
  }

  return array;
}

@end