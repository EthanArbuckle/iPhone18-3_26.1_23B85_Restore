@interface KVEmbeddedProfileWriter
- (BOOL)addItem:(id)a3 error:(id *)a4;
- (BOOL)finishDataset:(id *)a3;
- (BOOL)finishProfile:(id *)a3;
- (KVEmbeddedProfileWriter)initWithOutputStream:(id)a3;
- (id).cxx_construct;
@end

@implementation KVEmbeddedProfileWriter

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 40) = 0;
  *(self + 3) = xmmword_2559D02C0;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 12) = 0;
  *(self + 13) = 1;
  *(self + 56) = 256;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 21) = 0;
  return self;
}

- (BOOL)finishProfile:(id *)a3
{
  begin = self->_datasets.__begin_;
  end = self->_datasets.__end_;
  v7 = (end - begin) >> 2;
  sub_2559AD6E4(&self->_fbb, v7, 4uLL);
  if (end == begin)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v8 = begin - 4;
    v9 = v7;
    do
    {
      v10 = v9 - 1;
      v11 = sub_2559A85F0(&self->_fbb, *&v8[4 * v9]);
      sub_2559A8660(&self->_fbb, v11);
      v9 = v10;
    }

    while (v10);
  }

  v43 = sub_2559AD750(&self->_fbb, v7);
  self->_datasets.__end_ = self->_datasets.__begin_;
  v12 = sub_2559C6264(&self->_fbb, self->_profileInfo, &v43, 0);
  v18 = objc_msgSend_length(v12, v13, v14, v15, v16, v17);
  stream = self->_stream;
  v20 = v12;
  v26 = objc_msgSend_bytes(v20, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_length(v12, v27, v28, v29, v30, v31);
  v40 = objc_msgSend_write_maxLength_(stream, v33, v26, v32, v34, v35);
  if (v18 != v40)
  {
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"profile: %@", v37, v38, v39, v12);
    sub_2559C6434(a3, v41, self->_stream, 1);
  }

  return v18 == v40;
}

- (BOOL)finishDataset:(id *)a3
{
  v7 = objc_msgSend_buffer(self->_datasetInfo, a2, a3, v3, v4, v5);
  v8 = v7;
  v14 = objc_msgSend_bytes(v8, v9, v10, v11, v12, v13);
  v15 = v7;
  v21 = objc_msgSend_bytes(v15, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_length(v7, v22, v23, v24, v25, v26);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  sub_2559C65B0(&v58, v14, v21 + v27, v21 + v27 - v14);
  v28 = v58;
  if (v59 == v58)
  {
    v29 = &unk_27F7DA3D8;
  }

  else
  {
    v29 = v58;
  }

  v30 = sub_2559C664C(&self->_fbb, v29, v59 - v58);
  if (v28)
  {
    operator delete(v28);
  }

  begin = self->_items.__begin_;
  end = self->_items.__end_;
  v33 = end - begin;
  if (end == begin)
  {
    v34 = &unk_2559D045C;
  }

  else
  {
    v34 = self->_items.__begin_;
  }

  v35 = v33 >> 2;
  sub_2559AD6E4(&self->_fbb, v33 >> 2, 4uLL);
  if (begin == end)
  {
    LODWORD(v35) = 0;
  }

  else
  {
    v36 = v34 - 4;
    v37 = v35;
    do
    {
      v38 = sub_2559A85F0(&self->_fbb, *&v36[4 * v37]);
      sub_2559A8660(&self->_fbb, v38);
      --v37;
    }

    while (v37);
  }

  v39 = sub_2559AD750(&self->_fbb, v35);
  self->_items.__end_ = self->_items.__begin_;
  sub_2559A7BAC(&self->_fbb);
  self->_fbb.nested = 1;
  reserved = self->_fbb.buf_.reserved_;
  cur = self->_fbb.buf_.cur_;
  buf = self->_fbb.buf_.buf_;
  sub_2559C66C8(&self->_fbb, v30);
  if (v39)
  {
    v43 = sub_2559A85F0(&self->_fbb, v39);
    sub_2559A8738(&self->_fbb, 6, v43);
  }

  v44 = sub_2559A7D18(&self->_fbb, reserved - cur + buf);
  v46 = self->_datasets.__end_;
  cap = self->_datasets.__cap_;
  if (v46 >= cap)
  {
    v48 = self->_datasets.__begin_;
    v49 = v46 - v48;
    v50 = (v46 - v48) >> 2;
    v51 = v50 + 1;
    if ((v50 + 1) >> 62)
    {
      sub_2559ADF60();
    }

    v52 = cap - v48;
    if (v52 >> 1 > v51)
    {
      v51 = v52 >> 1;
    }

    if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v53 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v53 = v51;
    }

    if (v53)
    {
      if (!(v53 >> 62))
      {
        operator new();
      }

      sub_2559ADFC0();
    }

    v54 = (v46 - v48) >> 2;
    v55 = (4 * v50);
    v56 = (4 * v50 - 4 * v54);
    *v55 = v44;
    v47 = v55 + 1;
    memcpy(v56, v48, v49);
    self->_datasets.__begin_ = v56;
    self->_datasets.__end_ = v47;
    self->_datasets.__cap_ = 0;
    if (v48)
    {
      operator delete(v48);
    }
  }

  else
  {
    *v46 = v44;
    v47 = v46 + 4;
  }

  self->_datasets.__end_ = v47;

  return 1;
}

- (BOOL)addItem:(id)a3 error:(id *)a4
{
  v5 = a3;
  v11 = objc_msgSend_buffer(v5, v6, v7, v8, v9, v10);
  v12 = v11;
  v18 = objc_msgSend_bytes(v12, v13, v14, v15, v16, v17);
  v19 = v11;
  v25 = objc_msgSend_bytes(v19, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_length(v11, v26, v27, v28, v29, v30);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  sub_2559C65B0(&v52, v18, v25 + v31, v25 + v31 - v18);
  v32 = v52;
  if (v53 == v52)
  {
    v33 = &unk_27F7DA3D8;
  }

  else
  {
    v33 = v52;
  }

  v34 = sub_2559C664C(&self->_fbb, v33, v53 - v52);
  if (v32)
  {
    operator delete(v32);
  }

  sub_2559A7BAC(&self->_fbb);
  self->_fbb.nested = 1;
  buf = self->_fbb.buf_.buf_;
  cur = self->_fbb.buf_.cur_;
  reserved = self->_fbb.buf_.reserved_;
  sub_2559C66C8(&self->_fbb, v34);
  v38 = sub_2559A7D18(&self->_fbb, reserved - cur + buf);
  end = self->_items.__end_;
  cap = self->_items.__cap_;
  if (end >= cap)
  {
    begin = self->_items.__begin_;
    v43 = end - begin;
    v44 = (end - begin) >> 2;
    v45 = v44 + 1;
    if ((v44 + 1) >> 62)
    {
      sub_2559ADF60();
    }

    v46 = cap - begin;
    if (v46 >> 1 > v45)
    {
      v45 = v46 >> 1;
    }

    if (v46 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v47 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v47 = v45;
    }

    if (v47)
    {
      if (!(v47 >> 62))
      {
        operator new();
      }

      sub_2559ADFC0();
    }

    v48 = (end - begin) >> 2;
    v49 = (4 * v44);
    v50 = (4 * v44 - 4 * v48);
    *v49 = v38;
    v41 = v49 + 1;
    memcpy(v50, begin, v43);
    self->_items.__begin_ = v50;
    self->_items.__end_ = v41;
    self->_items.__cap_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = v38;
    v41 = end + 4;
  }

  self->_items.__end_ = v41;

  return 1;
}

- (KVEmbeddedProfileWriter)initWithOutputStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KVEmbeddedProfileWriter;
  v6 = [(KVEmbeddedProfileWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, a3);
  }

  return v7;
}

@end