@interface BUReadChannelInputStreamAdapter
- (BOOL)canSeek;
- (BUReadChannelInputStreamAdapter)initWithReadChannel:(id)a3;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation BUReadChannelInputStreamAdapter

- (BUReadChannelInputStreamAdapter)initWithReadChannel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BUReadChannelInputStreamAdapter;
  v6 = [(BUReadChannelInputStreamAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readChannel, a3);
    objc_storeStrong(&v7->_leftoverData, MEMORY[0x277D85CC8]);
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend_close(self, a2, v2);
  v4.receiver = self;
  v4.super_class = BUReadChannelInputStreamAdapter;
  [(BUReadChannelInputStreamAdapter *)&v4 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = a4;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = a3;
  leftoverData = self->_leftoverData;
  size = dispatch_data_get_size(leftoverData);
  v8 = a4;
  if (size)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = sub_241DCC918;
    applier[3] = &unk_278D1DD80;
    applier[5] = &v46;
    applier[6] = v45;
    applier[4] = self;
    dispatch_data_apply(leftoverData, applier);
    if (v47[3])
    {
      objc_msgSend_setLeftoverData_(self, v9, MEMORY[0x277D85CC8]);
    }

    else
    {
      v11 = objc_msgSend_leftoverData(self, v9, v10);
      v12 = v47[3];
      v13 = dispatch_data_get_size(self->_leftoverData);
      subrange = dispatch_data_create_subrange(v11, a4 - v12, v13 - a4 - v12);
      objc_msgSend_setLeftoverData_(self, v15, subrange);
    }

    v8 = v47[3];
  }

  if (v8 && self->_readChannel)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_241DCC9BC;
    v42 = sub_241DCC9CC;
    v43 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v16 = dispatch_group_create();
    dispatch_group_enter(v16);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_241DCC9D4;
    v30[3] = &unk_278D1DDD0;
    v32 = &v46;
    v33 = v45;
    v30[4] = self;
    v34 = &v38;
    v35 = v36;
    v17 = v16;
    v31 = v17;
    v18 = MEMORY[0x245D00360](v30);
    v21 = objc_msgSend_readChannel(self, v19, v20);

    if (v21)
    {
      v24 = objc_msgSend_readChannel(self, v22, v23);
      objc_msgSend_readFromOffset_length_handler_(v24, v25, self->_offset, v47[3], v18);
    }

    else
    {
      dispatch_group_leave(v17);
    }

    dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v27 = v39[5];
    if (v27)
    {
      objc_msgSend_bu_raiseWithError_(MEMORY[0x277CBEAD8], v26, v27);
    }

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(&v38, 8);

    v8 = v47[3];
  }

  v28 = a4 - v8;
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v46, 8);
  return v28;
}

- (void)close
{
  v4 = objc_msgSend_readChannel(self, a2, v2);
  objc_msgSend_close(v4, v5, v6);

  MEMORY[0x2821F9670](self, sel_setReadChannel_, 0);
}

- (BOOL)canSeek
{
  v3 = objc_msgSend_readChannel(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (void)seekToOffset:(int64_t)a3
{
  v5 = objc_msgSend_readChannel(self, a2, a3);

  if (v5)
  {
    objc_msgSend_setOffset_(self, v6, a3);
    v8 = MEMORY[0x277D85CC8];

    objc_msgSend_setLeftoverData_(self, v7, v8);
  }
}

@end