@interface KVTokenizer
- (KVTokenizer)initWithLocale:(id)locale;
- (id)queryFromText:(id)text;
@end

@implementation KVTokenizer

- (id)queryFromText:(id)text
{
  textCopy = text;
  v5 = [KVSpanMatchQuery alloc];
  v10 = objc_msgSend_queryFromText_(self->_tokenizer, v6, textCopy, v7, v8, v9);
  v15 = objc_msgSend_initWithQuery_(v5, v11, v10, v12, v13, v14);

  return v15;
}

- (KVTokenizer)initWithLocale:(id)locale
{
  localeCopy = locale;
  v16.receiver = self;
  v16.super_class = KVTokenizer;
  v5 = [(KVTokenizer *)&v16 init];
  if (v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = qword_27F7DA3B8;
    v21 = qword_27F7DA3B8;
    if (!qword_27F7DA3B8)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2559B3D70;
      v17[3] = &unk_279804178;
      v17[4] = &v18;
      sub_2559B3D70(v17);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [v6 alloc];
    v13 = objc_msgSend_initWithLocale_(v8, v9, localeCopy, v10, v11, v12);
    tokenizer = v5->_tokenizer;
    v5->_tokenizer = v13;
  }

  return v5;
}

@end