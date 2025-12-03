@interface SMTKaldiVocab
+ (void)initialize;
- (SMTKaldiVocab)initWithContentsOfUrl:(id)url outError:(id *)error;
- (id).cxx_construct;
- (unint64_t)indexForWord:(id)word;
@end

@implementation SMTKaldiVocab

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 18) = 1065353216;
  return self;
}

- (unint64_t)indexForWord:(id)word
{
  wordCopy = word;
  sub_10001D0D8(__p, [wordCopy UTF8String]);
  v5 = sub_10001795C(__p);
  size = self->_w2i.__table_.__bucket_list_.__deleter_.__size_;
  if (size)
  {
    v7 = v5;
    v8 = vcnt_s8(size);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= size)
      {
        v10 = v5 % size;
      }
    }

    else
    {
      v10 = (size - 1) & v5;
    }

    v11 = self->_w2i.__table_.__bucket_list_.__ptr_[v10];
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v7)
          {
            if (sub_10001D408(v12 + 2, __p))
            {
              v19 = __p;
              p_unkIndex = sub_10001D190(&self->_w2i.__table_.__bucket_list_.__ptr_, __p) + 5;
              goto LABEL_18;
            }
          }

          else
          {
            if (v9 > 1)
            {
              if (v13 >= size)
              {
                v13 %= size;
              }
            }

            else
            {
              v13 &= size - 1;
            }

            if (v13 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  p_unkIndex = &self->_unkIndex;
LABEL_18:
  v14 = *p_unkIndex;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v14;
}

- (SMTKaldiVocab)initWithContentsOfUrl:(id)url outError:(id *)error
{
  urlCopy = url;
  v63.receiver = self;
  v63.super_class = SMTKaldiVocab;
  v6 = [(SMTKaldiVocab *)&v63 init];
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = [NSString stringWithContentsOfURL:urlCopy encoding:4 error:error];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = +[NSCharacterSet newlineCharacterSet];
  v24 = [v7 componentsSeparatedByCharactersInSet:v8];

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_10001DDE4;
  v61 = sub_10001DDF4;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_10001DDE4;
  v55 = sub_10001DDF4;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_10001DDE4;
  v49 = sub_10001DDF4;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_10001DDE4;
  v43 = sub_10001DDF4;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001DDFC;
  v28[3] = &unk_100039128;
  v30 = &v39;
  v31 = &v35;
  v32 = &v45;
  v33 = &v57;
  v34 = &v51;
  v9 = v6;
  v29 = v9;
  [v24 enumerateObjectsUsingBlock:v28];
  v10 = v36[3];
  size = v9->_w2i.__table_.__size_;
  if (v10 != size)
  {
    v67 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithFormat:@"VocabSize in the file %lu does not match total vocabulary in file %lu", v10, size];
    v68 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v13];
    v15 = v40[5];
    v40[5] = v14;
  }

  if (!v46[5] || !v58[5] || !v52[5])
  {
    v65 = NSLocalizedDescriptionKey;
    urlCopy = [NSString stringWithFormat:@"One of <UnknownWord>, <BeginOfSentenceWord> or <EndOfSentenceWord> symbols are missing from file:%@", urlCopy];
    v66 = urlCopy;
    v17 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v18 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:151 userInfo:v17];
    v19 = v40[5];
    v40[5] = v18;
  }

  v20 = v40[5];
  if (v20)
  {
    if (error)
    {
      v21 = v20;
      *error = v20;
    }
  }

  else
  {
    sub_10001D0D8(__p, [v46[5] UTF8String]);
    v64 = __p;
    v9->_unkIndex = sub_10001E12C(&v9->_w2i.__table_.__bucket_list_.__ptr_, __p)[5];
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10001D0D8(__p, [v52[5] UTF8String]);
    v64 = __p;
    v9->_eosIndex = sub_10001E12C(&v9->_w2i.__table_.__bucket_list_.__ptr_, __p)[5];
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10001D0D8(__p, [v58[5] UTF8String]);
    v64 = __p;
    v9->_bosIndex = sub_10001E12C(&v9->_w2i.__table_.__bucket_list_.__ptr_, __p)[5];
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    objc_storeStrong(&v9->_eosToken, v52[5]);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  if (v20)
  {
LABEL_20:
    v22 = 0;
  }

  else
  {
LABEL_21:
    v22 = v6;
  }

  return v22;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10003FF70 = os_log_create("com.apple.speech.speechmodeltraining", "SMTKaldiVocab");

    _objc_release_x1();
  }
}

@end