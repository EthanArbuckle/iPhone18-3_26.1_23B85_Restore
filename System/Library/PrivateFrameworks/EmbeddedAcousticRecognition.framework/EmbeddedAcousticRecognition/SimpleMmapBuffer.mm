@interface SimpleMmapBuffer
- (SimpleMmapBuffer)initWithData:(const void *)a3 ofSize:(unint64_t)a4;
- (void)dealloc;
@end

@implementation SimpleMmapBuffer

- (SimpleMmapBuffer)initWithData:(const void *)a3 ofSize:(unint64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = [(SimpleMmapBuffer *)self init];
  v7 = v6;
  if (!v6)
  {
LABEL_26:
    v20 = v7;
    goto LABEL_30;
  }

  v22 = v6;
  v8 = NSTemporaryDirectory();
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  v11 = [v8 stringByAppendingPathComponent:v10];
  v12 = [v11 UTF8String];
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  v24 = v13;
  if (v13)
  {
    memmove(&__dst, v12, v13);
  }

  *(&__dst + v14) = 0;

  std::ofstream::basic_ofstream(&v26);
  v7 = v22;
  if (a3)
  {
    std::ostream::write();
  }

  else
  {
    MEMORY[0x1B8C84B80](v25, &v26);
    v15 = &v27[*(v26 - 24) - 8];
    if ((v15[32] & 5) == 0)
    {
      v16 = *(v15 + 5);
      memset(v30, 0, sizeof(v30));
      v31 = a4;
      (*(*v16 + 40))(v29);
      if (v29[16] == -1)
      {
        std::ios_base::clear(&v27[*(v26 - 24) - 8], *&v27[*(v26 - 24) + 24] | 4);
      }
    }

    MEMORY[0x1B8C84B90](v25);
    v30[0] = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v30, 1);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v27[*(v26 - 24) - 8], *&v27[*(v26 - 24) + 24] | 4);
  }

  if (v24 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v18 = open(p_dst, 514, 384);
  if ((v18 & 0x80000000) == 0)
  {
    [(SimpleMmapBuffer *)v22 setDataPointer:mmap(0, a4, 3, 1, v18, 0)];
    close(v18);
    v19 = v24 >= 0 ? &__dst : __dst;
    unlink(v19);
    if ([(SimpleMmapBuffer *)v22 dataPointer]!= -1)
    {
      [(SimpleMmapBuffer *)v22 setSize:a4];
      v26 = *MEMORY[0x1E69E54D0];
      *&v27[*(v26 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1B8C84A00](v27);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v28);
      if (v24 < 0)
      {
        operator delete(__dst);
      }

      goto LABEL_26;
    }
  }

  v26 = *MEMORY[0x1E69E54D0];
  *&v27[*(v26 - 24) - 8] = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1B8C84A00](v27);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](v28);
  if (v24 < 0)
  {
    operator delete(__dst);
  }

  v20 = 0;
LABEL_30:

  return v20;
}

- (void)dealloc
{
  if ([(SimpleMmapBuffer *)self dataPointer]&& [(SimpleMmapBuffer *)self dataPointer]!= -1)
  {
    munmap([(SimpleMmapBuffer *)self dataPointer], [(SimpleMmapBuffer *)self size]);
  }

  v3.receiver = self;
  v3.super_class = SimpleMmapBuffer;
  [(SimpleMmapBuffer *)&v3 dealloc];
}

@end