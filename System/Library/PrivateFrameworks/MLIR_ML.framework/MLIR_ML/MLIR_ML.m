int main(int argc, const char **argv, const char **envp)
{
  *&v18[0] = "Path to the input MLIR bytecode file.";
  *(&v18[0] + 1) = 37;
  LODWORD(v29[0]) = 2;
  llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<char [11],llvm::cl::desc,llvm::cl::NumOccurrencesFlag>(v33, "input-file", v18, v29);
  *&v18[0] = "Alias for -input-file";
  *(&v18[0] + 1) = 21;
  *&v14[0] = v33;
  llvm::cl::alias::alias<char [2],llvm::cl::desc,llvm::cl::aliasopt>(v29, "i", v18, v14);
  *&v14[0] = "Path to write the output MLIR-ML json file.";
  *(&v14[0] + 1) = 43;
  LODWORD(v13) = 2;
  llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<char [12],llvm::cl::desc,llvm::cl::NumOccurrencesFlag>(v18, "output-file", v14, &v13);
  *&v13 = "Alias for -output-file";
  *(&v13 + 1) = 22;
  v12 = v18;
  llvm::cl::alias::alias<char [2],llvm::cl::desc,llvm::cl::aliasopt>(v14, "o", &v13, &v12);
  llvm::cl::ParseCommandLineOptions();
  if (v38 >= 0)
  {
    v3 = &v37;
  }

  else
  {
    v3 = v37;
  }

  v4 = [NSString stringWithUTF8String:v3];
  if (v23 >= 0)
  {
    v5 = &v22;
  }

  else
  {
    v5 = v22;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [NSData dataWithContentsOfFile:v4];
  if (!v7)
  {
    NSLog(@"Could not read file at %@", v4);
    exit(1);
  }

  v8 = [MLViewerGraphSPI newGraphWithMLIRByteCode:v7 signature:@"graph"];
  if (!v8)
  {
    NSLog(@"Failed to load bytecode from path: %@ into an MLIR context.", v4);
    exit(1);
  }

  v9 = [v8 jsonDictionary];
  *&v13 = 0;
  v10 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:&v13];
  if (v13)
  {
    NSLog(@"%@", [v13 localizedDescription]);
    exit(1);
  }

  [(NSData *)v10 writeToFile:v6 atomically:1];
  NSLog(@"Wrote MLIR_ML graph to %@", v6);
  if (v17 != v16[1])
  {
    free(v17);
  }

  if (v15 != v16)
  {
    free(v15);
  }

  *&v18[0] = &unk_100004108;
  if (v28 == &v27)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))();
  }

  v24 = &off_100004110;
  if (v26 < 0)
  {
    operator delete(__p);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v22);
LABEL_20:
  if (v21 != v20[1])
  {
    free(v21);
  }

  if (v19 != v20)
  {
    free(v19);
  }

  if (v32 != v31[1])
  {
    free(v32);
  }

  if (v30 != v31)
  {
    free(v30);
  }

  v33[0] = &unk_100004108;
  if (v43 == &v42)
  {
    (*(*v43 + 32))(v43);
  }

  else if (v43)
  {
    (*(*v43 + 40))();
  }

  v39 = &off_100004110;
  if (v41 < 0)
  {
    operator delete(v40);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((v38 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v37);
LABEL_36:
  if (v36 != v35[1])
  {
    free(v36);
  }

  if (v34 != v35)
  {
    free(v34);
  }

  return 0;
}

void sub_1000025E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  llvm::cl::alias::~alias(&a14);
  llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(&a31);
  llvm::cl::alias::~alias(&a60);
  llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t llvm::cl::alias::alias<char [2],llvm::cl::desc,llvm::cl::aliasopt>(uint64_t a1, const char *a2, _OWORD *a3, uint64_t *a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 1);
  v8[16] = 0;
  strlen(a2);
  v9 = llvm::cl::Option::setArgStr();
  *(a1 + 32) = *a3;
  v10 = *a4;
  if (*(a1 + 128))
  {
    llvm::errs(v9);
    llvm::cl::Option::error();
  }

  *(a1 + 128) = v10;
  llvm::cl::alias::done(a1);
  return a1;
}

void llvm::cl::alias::~alias(llvm::cl::alias *this)
{
  v2 = *(this + 12);
  if (v2 != *(this + 11))
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != this + 80)
  {
    free(v3);
  }
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_100004108;
  v2 = a1 + 200;
  v3 = *(a1 + 224);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 + 152) = &off_100004110;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
    if ((*(a1 + 151) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(a1 + 151) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
LABEL_7:
  v4 = *(a1 + 96);
  if (v4 != *(a1 + 88))
  {
    free(v4);
  }

  v5 = *(a1 + 64);
  if (v5 != (a1 + 80))
  {
    free(v5);
  }

  return a1;
}

uint64_t std::function<void ()(std::string const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t llvm::cl::opt_storage<std::string,false,true>::~opt_storage(uint64_t a1)
{
  *(a1 + 24) = &off_100004110;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_5:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_5;
  }

  return a1;
}

BOOL llvm::cl::OptionValueCopy<std::string>::compare(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1 || *(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  v9 = (a2 + 8);
  if (v2 < 0)
  {
    v6 = v7;
  }

  v10 = *v9;
  if (v5 >= 0)
  {
    v11 = (a2 + 8);
  }

  else
  {
    v11 = *v9;
  }

  return memcmp(v6, v11, v3) == 0;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<char [11],llvm::cl::desc,llvm::cl::NumOccurrencesFlag>(uint64_t a1, const char *a2, _OWORD *a3, _WORD *a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 168) = 0;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 160) = 0;
  *v8 = &unk_100004108;
  *(v8 + 200) = &off_100004130;
  *(v8 + 224) = v8 + 200;
  strlen(a2);
  llvm::cl::Option::setArgStr();
  *(a1 + 32) = *a3;
  *(a1 + 10) = *(a1 + 10) & 0xFFF8 | *a4 & 7;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void sub_100002B54(_Unwind_Exception *a1)
{
  std::function<void ()(std::string const&)>::~function(v3);
  llvm::cl::opt_storage<std::string,false,true>::~opt_storage(v2);
  llvm::cl::alias::~alias(v1);
  _Unwind_Resume(a1);
}

uint64_t llvm::cl::Option::Option(uint64_t a1, char a2, char a3)
{
  *(a1 + 8) = 0;
  *(a1 + 10) = a2 & 7 | (32 * (a3 & 3)) | *(a1 + 10) & 0x8000;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v5 = *(a1 + 72);
  if (v5 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v5) = GeneralCategory;
  ++*(a1 + 72);
  return a1;
}

void sub_100002C64(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 96);
  if (v5 != *(v1 + 88))
  {
    free(v5);
  }

  if (*v3 != v2)
  {
    free(*v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::cl::alias::done(llvm::cl::alias *this)
{
  v1 = this;
  if (*(this + 3))
  {
    if (*(this + 16))
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::errs(this);
    this = llvm::cl::Option::error();
    if (*(v1 + 16))
    {
      goto LABEL_3;
    }
  }

  llvm::errs(this);
  this = llvm::cl::Option::error();
LABEL_3:
  if (*(v1 + 27) != *(v1 + 28))
  {
    llvm::errs(this);
    llvm::cl::Option::error();
  }

  v2 = *(v1 + 16);
  if (v2 != v1)
  {
    llvm::SmallPtrSetImplBase::CopyFrom();
    v2 = *(v1 + 16);
  }

  if (v2 != v1)
  {
    v3 = *(v2 + 72);
    v4 = *(v1 + 18);
    if (v4 >= v3)
    {
      if (v3)
      {
        memmove(*(v1 + 8), *(v2 + 64), 8 * v3);
      }
    }

    else
    {
      if (*(v1 + 19) < v3)
      {
        *(v1 + 18) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v4)
      {
        memmove(*(v1 + 8), *(v2 + 64), 8 * v4);
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v2 + 72) - v4;
      if (v5)
      {
        memcpy((*(v1 + 8) + 8 * v4), (*(v2 + 64) + 8 * v4), 8 * v5);
      }
    }

    *(v1 + 18) = v3;
  }

  return llvm::cl::Option::addArgument(v1);
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<char [12],llvm::cl::desc,llvm::cl::NumOccurrencesFlag>(uint64_t a1, const char *a2, _OWORD *a3, _WORD *a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 168) = 0;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 160) = 0;
  *v8 = &unk_100004108;
  *(v8 + 200) = &off_100004130;
  *(v8 + 224) = v8 + 200;
  strlen(a2);
  llvm::cl::Option::setArgStr();
  *(a1 + 32) = *a3;
  *(a1 + 10) = *(a1 + 10) & 0xFFF8 | *a4 & 7;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void sub_100002FE0(_Unwind_Exception *a1)
{
  std::function<void ()(std::string const&)>::~function(v3);
  llvm::cl::opt_storage<std::string,false,true>::~opt_storage(v2);
  llvm::cl::alias::~alias(v1);
  _Unwind_Resume(a1);
}

void llvm::SmallVectorBase<unsigned int>::grow_pod()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}