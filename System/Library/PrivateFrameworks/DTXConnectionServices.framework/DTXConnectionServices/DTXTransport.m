@interface DTXTransport
+ (BOOL)recognizesURL:(id)a3;
- (DTXTransport)init;
- (DTXTransport)initWithRemoteAddress:(id)a3;
- (DTXTransport)initWithXPCRepresentation:(id)a3;
- (id)dataReceivedHandler;
- (void)dealloc;
- (void)disconnect;
- (void)received:(const char *)a3 ofLength:(unint64_t)a4 destructor:(id)a5;
- (void)serializedDisconnect:(id)a3;
- (void)setDataReceivedHandler:(id)a3;
@end

@implementation DTXTransport

+ (BOOL)recognizesURL:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_schemes(a1, v5, v6);
  v10 = objc_msgSend_scheme(v4, v8, v9);

  LOBYTE(v4) = objc_msgSend_containsObject_(v7, v11, v10);
  return v4;
}

- (DTXTransport)init
{
  v5.receiver = self;
  v5.super_class = DTXTransport;
  v2 = [(DTXTransport *)&v5 init];
  v3 = v2;
  if (v2)
  {
    sub_247F42BE0(v2);
  }

  return v3;
}

- (DTXTransport)initWithXPCRepresentation:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DTXTransport;
  v5 = [(DTXTransport *)&v18 init];
  v6 = v5;
  if (v5)
  {
    sub_247F42BE0(v5);
    if (!v4)
    {
      v11 = 0;
      goto LABEL_8;
    }

    length = 0;
    data = xpc_dictionary_get_data(v4, "__DTXTransport_preflightdata", &length);
    if (data)
    {
      v8 = data;
      if (length)
      {
        v9 = malloc_type_malloc(length, 0x67FCDFCuLL);
        memcpy(v9, v8, length);
        serializer = v6->_serializer;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = sub_247F42E04;
        v13[3] = &unk_278EEE840;
        v14 = v6;
        v15 = v9;
        v16 = length;
        dispatch_async(serializer, v13);
      }
    }
  }

  v11 = v6;
LABEL_8:

  return v11;
}

- (void)dealloc
{
  if (!self->_resumed)
  {
    dispatch_resume(self->_serializer);
  }

  v3.receiver = self;
  v3.super_class = DTXTransport;
  [(DTXTransport *)&v3 dealloc];
}

- (DTXTransport)initWithRemoteAddress:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = DTXTransport;
  v6 = [(DTXTransport *)&v14 init];
  v7 = v6;
  if (v6)
  {
    sub_247F42BE0(v6);
    v8 = objc_opt_class();
    if ((objc_msgSend_recognizesURL_(v8, v9, v5) & 1) == 0)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      NSLog(&cfstr_UnrecognizedUr.isa, v11, v12, v5);

      v7 = 0;
    }
  }

  return v7;
}

- (void)received:(const char *)a3 ofLength:(unint64_t)a4 destructor:(id)a5
{
  v9 = a5;
  if (a4)
  {
    objc_msgSend_acquireSize_(self->_tracker, v8, a4);
  }

  serializer = self->_serializer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247F43068;
  v12[3] = &unk_278EEE868;
  v14 = a3;
  v15 = a4;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(serializer, v12);
}

- (void)disconnect
{
  handlerGuard = self->_handlerGuard;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F431A4;
  block[3] = &unk_278EEE708;
  block[4] = self;
  dispatch_sync(handlerGuard, block);
  objc_msgSend_received_ofLength_destructor_(self, v4, 0, 0, 0);
  objc_msgSend_setStatus_(self, v5, 3);
}

- (void)serializedDisconnect:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    sub_247F59B08(a2, self, v5);
  }

  v7 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_serializedXPCRepresentation(self, v8, v9);
  objc_msgSend_disconnect(self, v11, v12);
  serializer = self->_serializer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_247F432C0;
  v16[3] = &unk_278EEE890;
  v14 = v6;
  v17 = v10;
  v18 = v14;
  v15 = v10;
  dispatch_async(serializer, v16);

  objc_autoreleasePoolPop(v7);
}

- (void)setDataReceivedHandler:(id)a3
{
  v4 = a3;
  handlerGuard = self->_handlerGuard;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F4336C;
  v7[3] = &unk_278EEE5F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(handlerGuard, v7);
}

- (id)dataReceivedHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_247F43544;
  v10 = sub_247F43570;
  v11 = 0;
  handlerGuard = self->_handlerGuard;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F43578;
  v5[3] = &unk_278EEE8B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(handlerGuard, v5);
  v3 = MEMORY[0x24C1C0D80](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end