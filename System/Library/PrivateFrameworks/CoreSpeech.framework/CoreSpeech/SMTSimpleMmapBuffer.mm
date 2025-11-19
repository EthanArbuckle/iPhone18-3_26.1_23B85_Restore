@interface SMTSimpleMmapBuffer
- (SMTSimpleMmapBuffer)initWithData:(const void *)a3 ofSize:(unint64_t)a4;
- (void)dealloc;
@end

@implementation SMTSimpleMmapBuffer

- (void)dealloc
{
  if ([(SMTSimpleMmapBuffer *)self dataPointer]&& [(SMTSimpleMmapBuffer *)self dataPointer]!= -1)
  {
    munmap([(SMTSimpleMmapBuffer *)self dataPointer], [(SMTSimpleMmapBuffer *)self size]);
  }

  v3.receiver = self;
  v3.super_class = SMTSimpleMmapBuffer;
  [(SMTSimpleMmapBuffer *)&v3 dealloc];
}

- (SMTSimpleMmapBuffer)initWithData:(const void *)a3 ofSize:(unint64_t)a4
{
  v6 = [(SMTSimpleMmapBuffer *)self init];
  if (!v6)
  {
    goto LABEL_59;
  }

  v7 = NSTemporaryDirectory();
  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 stringByAppendingPathComponent:v9];
  v11 = [v10 UTF8String];
  v12 = strlen(v11);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100017944();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v38 = v12;
  if (v12)
  {
    memmove(&__dst, v11, v12);
  }

  *(&__dst + v13) = 0;

  v44 = 0;
  *&v42[*(v41 - 3) - 8] = v14;
  v15 = &v42[*(v41 - 3) - 8];
  std::ios_base::init(v15, v42);
  v15[1].__vftable = 0;
  v15[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  v16 = a4;
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&v42[*(v41 - 3) - 8], *&v42[*(v41 - 3) + 24] | 4);
  }

  if (!a3)
  {
    std::ostream::sentry::sentry();
    v18 = &v42[*(v41 - 3) - 8];
    if ((v18[32] & 5) == 0)
    {
      v19 = *(v18 + 5);
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      *&__b[0].__locale_ = 0u;
      v47 = 0u;
      v54 = a4;
      (*(*v19 + 40))(v45);
      if (v45[16] == -1)
      {
        std::ios_base::clear(&v42[*(v41 - 3) - 8], *&v42[*(v41 - 3) + 24] | 4);
      }
    }

    std::ostream::sentry::~sentry();
    v39 = 0;
    std::ostream::sentry::sentry();
    if (LOBYTE(v45[0]) == 1)
    {
      v20 = &v42[*(v41 - 3) - 8];
      v21 = *(v20 + 5);
      v22 = *(v20 + 2);
      v23 = *(v20 + 36);
      if (v23 == -1)
      {
        std::ios_base::getloc(&v42[*(v41 - 3) - 8]);
        v24 = std::locale::use_facet(__b, &std::ctype<char>::id);
        v23 = (v24->__vftable[2].~facet_0)(v24, 32);
        std::locale::~locale(__b);
        *(v20 + 36) = v23;
      }

      if ((v22 & 0xB0) == 0x20)
      {
        v25 = v40;
      }

      else
      {
        v25 = &v39;
      }

      if (!v21)
      {
        goto LABEL_45;
      }

      v26 = *(v20 + 3);
      v27 = v26 <= 1;
      v28 = v26 - 1;
      v29 = v27 ? 0 : v28;
      if (v25 - &v39 >= 1 && (*(*v21 + 96))(v21, &v39, v25 - &v39) != v25 - &v39)
      {
        goto LABEL_45;
      }

      if (v29 >= 1)
      {
        if (v29 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_100017944();
        }

        if (v29 >= 0x17)
        {
          operator new();
        }

        BYTE7(v47) = v29;
        memset(__b, v23, v29);
        *(&__b[0].__locale_ + v29) = 0;
        if ((SBYTE7(v47) & 0x80u) == 0)
        {
          locale = __b;
        }

        else
        {
          locale = __b[0].__locale_;
        }

        v31 = (*(*v21 + 96))(v21, locale, v29);
        if (SBYTE7(v47) < 0)
        {
          operator delete(__b[0].__locale_);
        }

        if (v31 != v29)
        {
          goto LABEL_45;
        }
      }

      if (v40 - v25 < 1 || (*(*v21 + 96))(v21, v25, v40 - v25) == v40 - v25)
      {
        *(v20 + 3) = 0;
        v16 = a4;
      }

      else
      {
LABEL_45:
        v16 = a4;
        std::ios_base::clear(&v42[*(v41 - 3) - 8], *&v42[*(v41 - 3) + 24] | 5);
      }
    }

    std::ostream::sentry::~sentry();
    goto LABEL_47;
  }

  std::ostream::write();
  if ((v42[*(v41 - 3) + 24] & 5) == 0)
  {
LABEL_47:
    if (!std::filebuf::close())
    {
      std::ios_base::clear(&v42[*(v41 - 3) - 8], *&v42[*(v41 - 3) + 24] | 4);
    }

    if (v38 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v33 = open(p_dst, 514, 384);
    if (v33 < 0)
    {
      goto LABEL_60;
    }

    [(SMTSimpleMmapBuffer *)v6 setDataPointer:mmap(0, v16, 3, 1, v33, 0)];
    close(v33);
    v34 = v38 >= 0 ? &__dst : __dst;
    unlink(v34);
    if ([(SMTSimpleMmapBuffer *)v6 dataPointer]== -1)
    {
      goto LABEL_60;
    }

    [(SMTSimpleMmapBuffer *)v6 setSize:v16];
    std::filebuf::~filebuf();
    std::ostream::~ostream();
    std::ios::~ios();
    if (v38 < 0)
    {
      operator delete(__dst);
    }

LABEL_59:
    v35 = v6;
    goto LABEL_63;
  }

  if (v38 >= 0)
  {
    v17 = &__dst;
  }

  else
  {
    v17 = __dst;
  }

  unlink(v17);
LABEL_60:
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  if (v38 < 0)
  {
    operator delete(__dst);
  }

  v35 = 0;
LABEL_63:

  return v35;
}

@end