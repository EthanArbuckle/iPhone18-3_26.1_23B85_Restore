@interface KVSpanMatchQueryBuilder
- (KVSpanMatchQueryBuilder)initWithLocale:(id)locale;
- (id)build;
@end

@implementation KVSpanMatchQueryBuilder

- (id)build
{
  v6 = objc_msgSend_build(self->_builder, a2, v2, v3, v4, v5);
  v7 = [KVSpanMatchQuery alloc];
  v12 = objc_msgSend_initWithQuery_(v7, v8, v6, v9, v10, v11);

  return v12;
}

- (KVSpanMatchQueryBuilder)initWithLocale:(id)locale
{
  localeCopy = locale;
  v16.receiver = self;
  v16.super_class = KVSpanMatchQueryBuilder;
  v5 = [(KVSpanMatchQueryBuilder *)&v16 init];
  if (v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = qword_27F7DA3C8;
    v21 = qword_27F7DA3C8;
    if (!qword_27F7DA3C8)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2559C3884;
      v17[3] = &unk_279804178;
      v17[4] = &v18;
      sub_2559C3884(v17);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [v6 alloc];
    v13 = objc_msgSend_initWithLocale_(v8, v9, localeCopy, v10, v11, v12);
    builder = v5->_builder;
    v5->_builder = v13;
  }

  return v5;
}

@end