@interface LXLexiconChecker
- (BOOL)checkValidityOfString:(id)a3 locales:(id)a4 allowlist:(id)a5 error:(id *)a6;
- (LXLexiconChecker)init;
- (id)_checkValidityOfString:(id)a3 locales:(id)a4 allowlist:(id)a5 error:(id *)a6;
@end

@implementation LXLexiconChecker

- (BOOL)checkValidityOfString:(id)a3 locales:(id)a4 allowlist:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v18 = 0;
  v12 = sub_1B5D22A0C(a4);
  ptr = self->_impl.__ptr_;
  v14 = [v10 precomposedStringWithCanonicalMapping];
  sub_1B5D7E034(&v19, ptr, v14, v12, v11, &v18);
  v15 = v19;
  if (v20 != v19)
  {
    v16 = sub_1B5D33FFC(v19, v20, 0, (v20 - v19) >> 2);
    if (!v15)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0;
  if (v19)
  {
LABEL_3:
    operator delete(v15);
  }

LABEL_4:

  if (a6)
  {
    *a6 = v18;
  }

  return v16;
}

- (LXLexiconChecker)init
{
  v4.receiver = self;
  v4.super_class = LXLexiconChecker;
  if ([(LXLexiconChecker *)&v4 init])
  {
    operator new();
  }

  v2 = 0;

  return v2;
}

- (id)_checkValidityOfString:(id)a3 locales:(id)a4 allowlist:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v29 = 0;
  v28 = a5;
  v12 = sub_1B5D22A0C(v11);
  ptr = self->_impl.__ptr_;
  v14 = [v10 precomposedStringWithCanonicalMapping];
  sub_1B5D7E034(&v30, ptr, v14, v12, v28, &v29);
  v16 = v30;
  v15 = v31;
  v17 = v31 - v30;
  v18 = sub_1B5D33FFC(v30, v31, 0, v17);
  v27 = a6;
  if (v15 == v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if ((v19 & 1) == 0)
  {
    v20 = 0;
    do
    {
      v21 = v16[v20];
      if (!v21)
      {
        if (v20 >= v17)
        {
          v22 = v17;
        }

        else
        {
          v22 = v20;
        }

        v23 = &v16[v22];
        if (v23 != v15)
        {
          v24 = 0;
          while (!*v23)
          {
            ++v23;
            ++v24;
            if (v23 == v15)
            {
              goto LABEL_16;
            }
          }

          if (v24)
          {
LABEL_16:
            sub_1B5D340E0(1uLL);
          }
        }

        __assert_rtn("getUncoveredRanges", "CoverageVector.cpp", 64, "length > 0");
      }

      v17 = (v15 - v16) >> 2;
      v20 = v16[v20];
    }

    while (v21 < v17);
  }

  if (v16)
  {
    v31 = v16;
    operator delete(v16);
  }

  if (v27)
  {
    *v27 = v29;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return v25;
}

@end