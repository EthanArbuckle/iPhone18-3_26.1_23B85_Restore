@interface IDEDataProvider_NetworkStatistics
+ (id)sharedDataProvider;
- (BOOL)captureAttributes:(id)a3 toDictionary:(id)a4 forPID:(id)a5;
- (IDEDataProvider_NetworkStatistics)init;
- (id).cxx_construct;
- (id)captureAttributes:(id)a3 forPIDs:(id)a4;
- (id)supportedAttributes;
- (void)dealloc;
@end

@implementation IDEDataProvider_NetworkStatistics

+ (id)sharedDataProvider
{
  if (qword_15210 != -1)
  {
    sub_80BC();
  }

  v3 = qword_15208;

  return v3;
}

- (IDEDataProvider_NetworkStatistics)init
{
  v8.receiver = self;
  v8.super_class = IDEDataProvider_NetworkStatistics;
  v2 = [(IDEDataProvider_NetworkStatistics *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Lock to protect multithread access during capturing", 0);
    capture_lock = v2->_capture_lock;
    v2->_capture_lock = v3;

    v5 = dispatch_queue_create("Lock to protect _lastResults", 0);
    results_lock = v2->_results_lock;
    v2->_results_lock = v5;
  }

  return v2;
}

- (id)supportedAttributes
{
  if (qword_15220 != -1)
  {
    sub_80D0();
  }

  v3 = qword_15218;

  return v3;
}

- (BOOL)captureAttributes:(id)a3 toDictionary:(id)a4 forPID:(id)a5
{
  v51 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 intValue];
  size = self->_processInfoByPID.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_18;
  }

  v12 = vcnt_s8(size);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v10;
    if (size <= v10)
    {
      v13 = v10 % size;
    }
  }

  else
  {
    v13 = (size - 1) & v10;
  }

  v14 = self->_processInfoByPID.__table_.__bucket_list_.__ptr_[v13];
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v10)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (v16 >= size)
      {
        v16 %= size;
      }
    }

    else
    {
      v16 &= size - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  if (*(v15 + 4) != v10)
  {
    goto LABEL_17;
  }

  v17 = [NSNumber numberWithUnsignedLongLong:v15[17]];
  [v8 setObject:v17 forKeyedSubscript:@"net.rx.bytes"];

  v18 = [NSNumber numberWithUnsignedLongLong:v15[17] - v15[4]];
  [v8 setObject:v18 forKeyedSubscript:@"net.rx.bytes.delta"];

  v19 = [NSNumber numberWithUnsignedLongLong:v15[19]];
  [v8 setObject:v19 forKeyedSubscript:@"net.tx.bytes"];

  v20 = [NSNumber numberWithUnsignedLongLong:v15[19] - v15[6]];
  [v8 setObject:v20 forKeyedSubscript:@"net.tx.bytes.delta"];

  v21 = [NSNumber numberWithUnsignedLongLong:v15[19] + v15[17]];
  [v8 setObject:v21 forKeyedSubscript:@"net.bytes"];

  v22 = [NSNumber numberWithUnsignedLongLong:v15[19] + v15[17] - (v15[4] + v15[6])];
  [v8 setObject:v22 forKeyedSubscript:@"net.bytes.delta"];

  v23 = [NSNumber numberWithUnsignedLongLong:v15[16]];
  [v8 setObject:v23 forKeyedSubscript:@"net.rx.packets"];

  v24 = [NSNumber numberWithUnsignedLongLong:v15[16] - v15[3]];
  [v8 setObject:v24 forKeyedSubscript:@"net.rx.packets.delta"];

  v25 = [NSNumber numberWithUnsignedLongLong:v15[18]];
  [v8 setObject:v25 forKeyedSubscript:@"net.tx.packets"];

  v26 = [NSNumber numberWithUnsignedLongLong:v15[18] - v15[5]];
  [v8 setObject:v26 forKeyedSubscript:@"net.tx.packets.delta"];

  v27 = [NSNumber numberWithUnsignedLongLong:v15[18] + v15[16]];
  [v8 setObject:v27 forKeyedSubscript:@"net.packets"];

  v28 = [NSNumber numberWithUnsignedLongLong:v15[18] + v15[16] - (v15[3] + v15[5])];
  [v8 setObject:v28 forKeyedSubscript:@"net.packets.delta"];

  if ([v51 containsObject:@"net.connections[]"])
  {
    v29 = objc_opt_new();
    for (i = self->_sourceInfosBySrcRef.__table_.__first_node_.__next_; i; i = *i)
    {
      v31 = [*(i + 3) intValue];
      if (v31 == [v9 intValue])
      {
        v32 = objc_opt_new();
        v33 = v32;
        if (*(i + 44))
        {
          v34 = *(i + 44);
        }

        else
        {
          v34 = &stru_10A28;
        }

        [v32 setObject:v34 forKeyedSubscript:@"interface"];
        if (*(i + 45))
        {
          v35 = *(i + 45);
        }

        else
        {
          v35 = &stru_10A28;
        }

        [v33 setObject:v35 forKeyedSubscript:@"protocol"];
        if (*(i + 46))
        {
          v36 = *(i + 46);
        }

        else
        {
          v36 = &stru_10A28;
        }

        [v33 setObject:v36 forKeyedSubscript:@"state"];
        if (*(i + 8))
        {
          v37 = *(i + 8);
        }

        else
        {
          v37 = &stru_10A28;
        }

        [v33 setObject:v37 forKeyedSubscript:@"localAddr"];
        if (*(i + 9))
        {
          v38 = *(i + 9);
        }

        else
        {
          v38 = &stru_10A28;
        }

        [v33 setObject:v38 forKeyedSubscript:@"localPort"];
        if (*(i + 15))
        {
          v39 = *(i + 15);
        }

        else
        {
          v39 = &stru_10A28;
        }

        [v33 setObject:v39 forKeyedSubscript:@"remoteAddr"];
        if (*(i + 16))
        {
          v40 = *(i + 16);
        }

        else
        {
          v40 = &stru_10A28;
        }

        [v33 setObject:v40 forKeyedSubscript:@"remotePort"];
        v41 = *(i + 48);
        if (v41)
        {
          [v33 setObject:v41 forKeyedSubscript:@"connectionDescription"];
        }

        v42 = [NSNumber numberWithUnsignedLongLong:*(i + 32)];
        [v33 setObject:v42 forKeyedSubscript:@"rxBytes"];

        v43 = [NSNumber numberWithUnsignedLongLong:*(i + 32) - *(i + 19)];
        [v33 setObject:v43 forKeyedSubscript:@"rxBytesDelta"];

        v44 = [NSNumber numberWithUnsignedLongLong:*(i + 34)];
        [v33 setObject:v44 forKeyedSubscript:@"txBytes"];

        v45 = [NSNumber numberWithUnsignedLongLong:*(i + 34) - *(i + 21)];
        [v33 setObject:v45 forKeyedSubscript:@"txBytesDelta"];

        v46 = [NSNumber numberWithUnsignedLongLong:*(i + 31)];
        [v33 setObject:v46 forKeyedSubscript:@"rxPackets"];

        v47 = [NSNumber numberWithUnsignedLongLong:*(i + 31) - *(i + 18)];
        [v33 setObject:v47 forKeyedSubscript:@"rxPacketsDelta"];

        v48 = [NSNumber numberWithUnsignedLongLong:*(i + 33)];
        [v33 setObject:v48 forKeyedSubscript:@"txPackets"];

        v49 = [NSNumber numberWithUnsignedLongLong:*(i + 33) - *(i + 20)];
        [v33 setObject:v49 forKeyedSubscript:@"txPacketsDelta"];

        [v29 addObject:v33];
      }
    }

    [v8 setObject:v29 forKeyedSubscript:@"net.connections[]"];
  }

  return 1;
}

- (void)dealloc
{
  if (self->_netstatManager)
  {
    NStatManagerDestroy();
    self->_netstatManager = 0;
  }

  netstatQueue = self->_netstatQueue;
  self->_netstatQueue = 0;

  capture_lock = self->_capture_lock;
  self->_capture_lock = 0;

  results_lock = self->_results_lock;
  self->_results_lock = 0;

  lastResults = self->_lastResults;
  self->_lastResults = 0;

  v7.receiver = self;
  v7.super_class = IDEDataProvider_NetworkStatistics;
  [(IDEDataProvider_NetworkStatistics *)&v7 dealloc];
}

- (id)captureAttributes:(id)a3 forPIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  capture_lock = self->_capture_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2674;
  block[3] = &unk_10470;
  block[4] = self;
  v22 = v7;
  v23 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(capture_lock, block);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_3E4C;
  v19 = sub_3E5C;
  v20 = 0;
  results_lock = self->_results_lock;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_3E64;
  v14[3] = &unk_105C8;
  v14[4] = self;
  v14[5] = &v15;
  dispatch_sync(results_lock, v14);
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  return self;
}

@end