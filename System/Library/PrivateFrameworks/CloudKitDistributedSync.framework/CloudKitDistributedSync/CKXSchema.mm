@interface CKXSchema
- (CKXSchema)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)newIdentifier;
- (unint64_t)defineFieldForStruct:(unint64_t)struct;
@end

@implementation CKXSchema

- (CKXSchema)init
{
  v3.receiver = self;
  v3.super_class = CKXSchema;
  result = [(CKXSchema *)&v3 init];
  if (result)
  {
    result->_nextIdentifier = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CKXSchema);
  v4->_nextIdentifier = objc_msgSend_nextIdentifier(self, v5, v6, v7, v8, v9, v10);
  if (v4 != self)
  {
    sub_2439879D0(&v4->structTokens.__begin_, self->structTokens.__begin_, self->structTokens.__end_, self->structTokens.__end_ - self->structTokens.__begin_);
    begin = v4->structTokenToStructProperties.__begin_;
    v12 = self->structTokenToStructProperties.__begin_;
    end = self->structTokenToStructProperties.__end_;
    v14 = end - v12;
    cap = v4->structTokenToStructProperties.__cap_;
    if (cap - begin < end - v12)
    {
      v16 = v14 >> 1;
      if (begin)
      {
        v4->structTokenToStructProperties.__end_ = begin;
        operator delete(begin);
        cap = 0;
        v4->structTokenToStructProperties.__begin_ = 0;
        v4->structTokenToStructProperties.__end_ = 0;
        v4->structTokenToStructProperties.__cap_ = 0;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        if (cap <= v16)
        {
          v17 = v14 >> 1;
        }

        else
        {
          v17 = cap;
        }

        if (cap >= 0x7FFFFFFFFFFFFFFELL)
        {
          v18 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        if ((v18 & 0x8000000000000000) == 0)
        {
          sub_243987B14(v18);
        }
      }

      sub_243987AFC();
    }

    v19 = v4->structTokenToStructProperties.__end_;
    v20 = v19 - begin;
    if (v19 - begin >= v14)
    {
      if (end != v12)
      {
        memmove(begin, v12, end - v12);
      }

      v22 = (begin + v14);
    }

    else
    {
      v21 = (v12 + v20);
      if (v19 != begin)
      {
        memmove(v4->structTokenToStructProperties.__begin_, self->structTokenToStructProperties.__begin_, v20);
        v19 = v4->structTokenToStructProperties.__end_;
      }

      if (end != v21)
      {
        memmove(v19, v21, end - v21);
      }

      v22 = (v19 + end - v21);
    }

    v4->structTokenToStructProperties.__end_ = v22;
    p_begin = &v4->structTokenToFieldTokens.__begin_;
    v23 = v4->structTokenToFieldTokens.__begin_;
    v26 = self->structTokenToFieldTokens.__begin_;
    v25 = self->structTokenToFieldTokens.__end_;
    v27 = v25 - v26;
    v28 = v4->structTokenToFieldTokens.__cap_;
    if (v28 - v23 < (v25 - v26))
    {
      v29 = 0xAAAAAAAAAAAAAAABLL * (v27 >> 3);
      if (v23)
      {
        sub_243987D14(&v4->structTokenToFieldTokens);
        operator delete(*p_begin);
        v28 = 0;
        *p_begin = 0;
        v4->structTokenToFieldTokens.__end_ = 0;
        v4->structTokenToFieldTokens.__cap_ = 0;
      }

      if (v29 <= 0xAAAAAAAAAAAAAAALL)
      {
        v30 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
        v31 = 2 * v30;
        if (2 * v30 <= v29)
        {
          v31 = v29;
        }

        if (v30 >= 0x555555555555555)
        {
          v32 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v32 = v31;
        }

        if (v32 <= 0xAAAAAAAAAAAAAAALL)
        {
          sub_243987D6C(v32);
        }
      }

      sub_243987AFC();
    }

    v33 = v4->structTokenToFieldTokens.__end_ - v23;
    if (v33 >= v27)
    {
      v34 = sub_243987CAC(self->structTokenToFieldTokens.__begin_, self->structTokenToFieldTokens.__end_, v23);
      v35 = v4->structTokenToFieldTokens.__end_;
      if (v35 != v34)
      {
        v36 = v4->structTokenToFieldTokens.__end_;
        do
        {
          v38 = *(v36 - 3);
          v36 -= 3;
          v37 = v38;
          if (v38)
          {
            *(v35 - 2) = v37;
            operator delete(v37);
          }

          v35 = v36;
        }

        while (v36 != v34);
      }

      v4->structTokenToFieldTokens.__end_ = v34;
    }

    else
    {
      sub_243987CAC(self->structTokenToFieldTokens.__begin_, &v26[v33], v23);
      v4->structTokenToFieldTokens.__end_ = sub_243987B58(&v4->structTokenToFieldTokens, &v26[v33], v25, v4->structTokenToFieldTokens.__end_);
    }

    v39 = v4->fieldTokenToFieldProperties.__begin_;
    v40 = self->fieldTokenToFieldProperties.__begin_;
    v41 = self->fieldTokenToFieldProperties.__end_;
    v42 = v41 - v40;
    v43 = v4->fieldTokenToFieldProperties.__cap_;
    if (v43 - v39 < (v41 - v40))
    {
      v44 = 0x6DB6DB6DB6DB6DB7 * (v42 >> 3);
      if (v39)
      {
        v4->fieldTokenToFieldProperties.__end_ = v39;
        operator delete(v39);
        v43 = 0;
        v4->fieldTokenToFieldProperties.__begin_ = 0;
        v4->fieldTokenToFieldProperties.__end_ = 0;
        v4->fieldTokenToFieldProperties.__cap_ = 0;
      }

      if (v44 <= 0x492492492492492)
      {
        v45 = 0x6DB6DB6DB6DB6DB7 * (v43 >> 3);
        v46 = 2 * v45;
        if (2 * v45 <= v44)
        {
          v46 = 0x6DB6DB6DB6DB6DB7 * (v42 >> 3);
        }

        if (v45 >= 0x249249249249249)
        {
          v47 = 0x492492492492492;
        }

        else
        {
          v47 = v46;
        }

        if (v47 <= 0x492492492492492)
        {
          sub_243987DC4(v47);
        }
      }

      sub_243987AFC();
    }

    v48 = v4->fieldTokenToFieldProperties.__end_;
    v49 = v48 - v39;
    if (v48 - v39 >= v42)
    {
      if (v41 != v40)
      {
        memmove(v39, v40, v41 - v40);
      }

      v51 = (v39 + v42);
    }

    else
    {
      v50 = (v40 + v49);
      if (v48 != v39)
      {
        memmove(v4->fieldTokenToFieldProperties.__begin_, v40, v49);
        v48 = v4->fieldTokenToFieldProperties.__end_;
      }

      if (v41 != v50)
      {
        memmove(v48, v50, v41 - v50);
      }

      v51 = (v48 + v41 - v50);
    }

    v4->fieldTokenToFieldProperties.__end_ = v51;
  }

  return v4;
}

- (int64_t)newIdentifier
{
  Identifier = objc_msgSend_nextIdentifier(self, a2, v2, v3, v4, v5, v6);
  v15 = objc_msgSend_nextIdentifier(self, v9, v10, v11, v12, v13, v14);
  objc_msgSend_setNextIdentifier_(self, v16, v15 + 1, v17, v18, v19, v20);
  return Identifier;
}

- (unint64_t)defineFieldForStruct:(unint64_t)struct
{
  v20 = objc_msgSend_newIdentifier(self, a2, struct, v3, v4, v5, v6);
  sub_2439867B8(self->structTokenToFieldTokens.__begin_ + 3 * struct, &v20);
  begin = self->fieldTokenToFieldProperties.__begin_;
  end = self->fieldTokenToFieldProperties.__end_;
  v11 = 0x6DB6DB6DB6DB6DB7 * ((end - begin) >> 3);
  if (v20 + 1 > v11)
  {
    v12 = v20 + 1;
  }

  else
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * ((end - begin) >> 3);
  }

  if (v20 + 1 > v11)
  {
    v13 = v12 - v11;
    cap = self->fieldTokenToFieldProperties.__cap_;
    if (0x6DB6DB6DB6DB6DB7 * ((cap - end) >> 3) < v13)
    {
      if (v12 <= 0x492492492492492)
      {
        v15 = 0x6DB6DB6DB6DB6DB7 * ((cap - begin) >> 3);
        v16 = 2 * v15;
        if (2 * v15 <= v12)
        {
          v16 = v12;
        }

        if (v15 >= 0x249249249249249)
        {
          v17 = 0x492492492492492;
        }

        else
        {
          v17 = v16;
        }

        sub_243987DC4(v17);
      }

      sub_243987AFC();
    }

    v18 = 56 * ((56 * v13 - 56) / 0x38) + 56;
    bzero(self->fieldTokenToFieldProperties.__end_, v18);
    self->fieldTokenToFieldProperties.__end_ = (end + v18);
  }

  result = v20;
  *(self->fieldTokenToFieldProperties.__begin_ + 56 * v20) = 1;
  return result;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end