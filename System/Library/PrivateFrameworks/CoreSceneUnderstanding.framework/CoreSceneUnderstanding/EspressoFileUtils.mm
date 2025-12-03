@interface EspressoFileUtils
+ (EspressoTensor)createEspressoTensorFromTextFile:(SEL)file channels:(id)channels height:(unint64_t)height width:(unint64_t)width;
+ (void)writeEspressoBufferToBinFile:(id)file FromBuffer:(id)buffer;
+ (void)writeEspressoBufferToTextFile:(id)file FromBuffer:(id)buffer;
+ (void)writeIKFloatTensorBuffer:(const void *)buffer ToBinFile:(id)file;
@end

@implementation EspressoFileUtils

+ (void)writeEspressoBufferToTextFile:(id)file FromBuffer:(id)buffer
{
  v42[19] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  bufferCopy = buffer;
  if (!bufferCopy)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer instance is nil.");
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer is not an instance of CSUEspressoBuffer.");
LABEL_37:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = objc_msgSend_espressoBuffer(bufferCopy, v6, v7, v8, v9);
  v36 = bufferCopy;

  v11 = *v10;
  v42[6] = 0;
  v12 = MEMORY[0x1E69E5530] + 64;
  v42[0] = MEMORY[0x1E69E5530] + 64;
  v13 = *(MEMORY[0x1E69E54D0] + 16);
  v40 = *(MEMORY[0x1E69E54D0] + 8);
  *&v41[*(v40 - 24) - 8] = v13;
  v14 = &v41[*(v40 - 24) - 8];
  std::ios_base::init(v14, v41);
  v15 = MEMORY[0x1E69E5530] + 24;
  v14[1].__vftable = 0;
  v14[1].__fmtflags_ = -1;
  v40 = v15;
  v42[0] = v12;
  MEMORY[0x1AC5AC0F0](v41);
  v16 = fileCopy;
  v21 = objc_msgSend_UTF8String(v16, v17, v18, v19, v20);
  v22 = strlen(v21);
  if (v22 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  v39 = v22;
  if (v22)
  {
    memmove(&__dst, v21, v22);
  }

  *(&__dst + v23) = 0;
  std::ofstream::open();
  v24 = v10[12];
  if (v24)
  {
    v25 = v10[11];
    if (v25)
    {
      v26 = 0;
      v27 = v10[11];
      while (!v27 || !v10[10])
      {
LABEL_13:
        if (++v26 >= v24)
        {
          goto LABEL_30;
        }
      }

      v28 = 0;
      v29 = 1;
      while (1)
      {
        v30 = v28 + 1;
        if (v29)
        {
          break;
        }

LABEL_18:
        ++v28;
        if (v30 >= v25)
        {
          v24 = v10[12];
          v27 = v25;
          goto LABEL_13;
        }
      }

      v31 = 0;
      while (1)
      {
        while (1)
        {
          v32 = *(v11 + 4 * v10[17] * v26 + 4 * v10[16] * v28 + 4 * v10[15] * v31);
          std::ostream::operator<<();
          v33 = v10[12];
          if (v33 >= 2)
          {
            break;
          }

          if (v33 == 1 && !((v31 + 1) % v10[10]))
          {
            goto LABEL_21;
          }

LABEL_28:
          sub_1AC084190(&v40, " ", 1);
          ++v31;
          v29 = v10[10];
          if (v31 >= v29)
          {
LABEL_17:
            v25 = v10[11];
            goto LABEL_18;
          }
        }

        if (v30 % v10[11] || (v31 + 1) % v10[10])
        {
          goto LABEL_28;
        }

LABEL_21:
        sub_1AC084190(&v40, "\n", 1);
        ++v31;
        v29 = v10[10];
        if (v31 >= v29)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_30:
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v41[*(v40 - 24) - 8], *&v41[*(v40 - 24) + 24] | 4);
  }

  if (v39 < 0)
  {
    operator delete(__dst);
  }

  v40 = *MEMORY[0x1E69E54D0];
  *&v41[*(v40 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1AC5AC100](v41);
  std::ostream::~ostream();
  MEMORY[0x1AC5AC380](v42);

  v34 = *MEMORY[0x1E69E9840];
}

+ (EspressoTensor)createEspressoTensorFromTextFile:(SEL)file channels:(id)channels height:(unint64_t)height width:(unint64_t)width
{
  v8 = *MEMORY[0x1E69E9840];
  channels;
  operator new();
}

+ (void)writeEspressoBufferToBinFile:(id)file FromBuffer:(id)buffer
{
  fileCopy = file;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AC083AAC;
  v10[3] = &unk_1E7967EC8;
  v11 = fileCopy;
  v6 = fileCopy;
  objc_msgSend_accessDataUsingBlock_(buffer, v7, v10, v8, v9);
}

+ (void)writeIKFloatTensorBuffer:(const void *)buffer ToBinFile:(id)file
{
  v21[19] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v21[6] = 0;
  v6 = MEMORY[0x1E69E5530] + 64;
  v21[0] = MEMORY[0x1E69E5530] + 64;
  v7 = MEMORY[0x1E69E54D0];
  v8 = *(MEMORY[0x1E69E54D0] + 16);
  v19 = *(MEMORY[0x1E69E54D0] + 8);
  *&v20[*(v19 - 24) - 8] = v8;
  v9 = &v20[*(v19 - 24) - 8];
  std::ios_base::init(v9, v20);
  v10 = MEMORY[0x1E69E5530] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v19 = v10;
  v21[0] = v6;
  MEMORY[0x1AC5AC0F0](v20);
  v11 = fileCopy;
  objc_msgSend_UTF8String(fileCopy, v12, v13, v14, v15);
  std::ofstream::open();
  v16 = *buffer;
  v17 = *(buffer + 1);
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v20[*(v19 - 24) - 8], *&v20[*(v19 - 24) + 24] | 4);
  }

  v19 = *v7;
  *&v20[*(v19 - 24) - 8] = v7[3];
  MEMORY[0x1AC5AC100](v20);
  std::ostream::~ostream();
  MEMORY[0x1AC5AC380](v21);

  v18 = *MEMORY[0x1E69E9840];
}

@end