@interface DTXMachTransport
+ (id)_legacyFileDescriptorHandshakeWithReceivePort:(unsigned int)a3;
+ (id)_legacyFileDescriptorHandshakeWithSendPort:(unsigned int)a3;
+ (id)fileDescriptorHandshakeWithReceivePort:(unsigned int)a3;
+ (id)fileDescriptorHandshakeWithSendPort:(unsigned int)a3;
- (DTXMachTransport)initWithRemoteAddress:(id)a3;
- (DTXMachTransport)initWithXPCRepresentation:(id)a3;
- (id)localAddresses;
- (id)serializedXPCRepresentation;
- (unint64_t)transmit:(const void *)a3 ofLength:(unint64_t)a4;
- (void)dealloc;
- (void)disconnect;
@end

@implementation DTXMachTransport

- (DTXMachTransport)initWithRemoteAddress:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v84.receiver = self;
  v84.super_class = DTXMachTransport;
  v6 = [(DTXTransport *)&v84 initWithRemoteAddress:v5];
  v7 = v6;
  if (v6)
  {
    sub_247F400FC(v6);
    v10 = objc_msgSend_host(v5, v8, v9);
    v13 = objc_msgSend_intValue(v10, v11, v12);

    p_sendPort = &v7->_sendPort;
    v7->_sendPort = 0;
    p_receivePort = &v7->_receivePort;
    v7->_receivePort = 0;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v18 = objc_msgSend_pathComponents(v5, v16, v17);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v80, v87, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v81;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v81 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = objc_msgSend_intValue(*(*(&v80 + 1) + 8 * i), v21, v22);
          if (v26 - 1 <= 0xFFFFFFFD)
          {
            v27 = &v7->_sendPort;
            if (*p_sendPort + 1 < 2 || (v27 = &v7->_receivePort, *p_receivePort + 1 <= 1))
            {
              *v27 = v26;
            }
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v80, v87, 16);
      }

      while (v23);
    }

    if (*p_sendPort + 1 < 2 || *p_receivePort + 1 <= 1)
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      NSLog(&cfstr_InvalidPortsIn.isa, v29, v30, v5);

LABEL_16:
LABEL_17:
      v7 = 0;
      goto LABEL_18;
    }

    v33 = getpid();
    v34 = v33;
    v35 = *MEMORY[0x277D85F48];
    task = *MEMORY[0x277D85F48];
    if (v13 == v33)
    {
      v75 = v33;
      v76 = v13;
      v36 = v35;
    }

    else
    {
      if (task_for_pid(v35, v13, &task))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        NSLog(&cfstr_UnableToConnec.isa, v38, v39, v13, v5);

        goto LABEL_16;
      }

      v75 = v34;
      v76 = v13;
      v36 = task;
      LODWORD(v35) = *MEMORY[0x277D85F48];
    }

    v40 = *p_receivePort;
    *p_receivePort = 0;
    *poly = 0;
    name = 0;
    is_self = mach_task_is_self(v36);
    if (is_self)
    {
      v73 = is_self;
      poly[1] = v40;
      v42 = 16;
    }

    else
    {
      v46 = MEMORY[0x24C1C09C0](v36, v40, 16, &poly[1], poly);
      if (v46)
      {
        goto LABEL_45;
      }

      v73 = 0;
      v42 = poly[0];
    }

    if (mach_task_is_self(v35))
    {
      v43 = poly[1];
      name = poly[1];
      if (v42 - 19 > 0xFFFFFFFC)
      {
LABEL_36:
        *p_receivePort = v43;
        if (v43 - 1 <= 0xFFFFFFFD)
        {
          goto LABEL_46;
        }

        v46 = 5;
LABEL_45:
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        v52 = NSStringFromSelector(a2);
        v53 = mach_error_string(v46);
        NSLog(&cfstr_UnableToExtrac.isa, v51, v52, v76, v53, v46);

LABEL_46:
        v54 = task;
        v55 = *MEMORY[0x277D85F48];
        v56 = *p_sendPort;
        *p_sendPort = 0;
        *poly = 0;
        v57 = mach_task_is_self(v54);
        if (v57)
        {
          v74 = v57;
          poly[1] = v56;
          v58 = 17;
        }

        else
        {
          v62 = MEMORY[0x24C1C09C0](v54, v56, 17, &poly[1], poly);
          if (v62)
          {
            goto LABEL_68;
          }

          v74 = 0;
          v58 = poly[0];
        }

        if (mach_task_is_self(v55))
        {
          v59 = poly[1];
          name = poly[1];
          if (v58 - 19 > 0xFFFFFFFC)
          {
LABEL_58:
            *p_sendPort = v59;
            if (v59 - 1 <= 0xFFFFFFFD)
            {
              v65 = v76;
LABEL_69:
              if (v65 != v75)
              {
                mach_port_deallocate(*MEMORY[0x277D85F48], task);
              }

              v77[0] = MEMORY[0x277D85DD0];
              v77[1] = 3221225472;
              v77[2] = sub_247F40868;
              v77[3] = &unk_278EEE708;
              v7 = v7;
              v78 = v7;
              v71 = MEMORY[0x24C1C0D80](v77);
              if (objc_msgSend__setupWithSendPort_receivePort_disconnectBlock_(v7, v72, *p_sendPort, *p_receivePort, v71))
              {

                goto LABEL_18;
              }

              v71[2](v71);

              goto LABEL_17;
            }

            v62 = 5;
LABEL_68:
            v67 = objc_opt_class();
            v68 = NSStringFromClass(v67);
            v69 = NSStringFromSelector(a2);
            v70 = mach_error_string(v62);
            v65 = v76;
            NSLog(&cfstr_UnableToExtrac_0.isa, v68, v69, v76, v70, v62);

            goto LABEL_69;
          }

          v60 = v55;
          v61 = poly[1];
        }

        else
        {
          if (v54 != v55)
          {
            while (1)
            {
              name = 0;
              v66 = mach_port_allocate(v55, 4u, &name);
              if (v66)
              {
                break;
              }

              v66 = mach_port_deallocate(v55, name);
              if (v66)
              {
                break;
              }

              inserted = mach_port_insert_right(v55, name, poly[1], v58);
              if ((inserted & 0xFFFFFFF7) != 5)
              {
                goto LABEL_56;
              }
            }

            v62 = v66;
            v64 = v74;
            goto LABEL_66;
          }

          name = v56;
          v61 = poly[1];
          v60 = v54;
          v59 = v56;
        }

        inserted = mach_port_insert_right(v60, v59, v61, v58);
LABEL_56:
        v62 = inserted;
        v64 = v74;
        if (!inserted)
        {
          v59 = name;
          goto LABEL_58;
        }

LABEL_66:
        if (!v64)
        {
          mach_port_mod_refs(*MEMORY[0x277D85F48], poly[1], poly[0], -1);
        }

        goto LABEL_68;
      }

      v44 = v35;
      v45 = poly[1];
    }

    else
    {
      if (v36 != v35)
      {
        while (1)
        {
          name = 0;
          v49 = mach_port_allocate(v35, 4u, &name);
          if (v49)
          {
            break;
          }

          v49 = mach_port_deallocate(v35, name);
          if (v49)
          {
            break;
          }

          v47 = mach_port_insert_right(v35, name, poly[1], v42);
          if ((v47 & 0xFFFFFFF7) != 5)
          {
            goto LABEL_34;
          }
        }

        v46 = v49;
        v48 = v73;
        goto LABEL_43;
      }

      name = v40;
      v45 = poly[1];
      v44 = v35;
      v43 = v40;
    }

    v47 = mach_port_insert_right(v44, v43, v45, v42);
LABEL_34:
    v46 = v47;
    v48 = v73;
    if (!v47)
    {
      v43 = name;
      goto LABEL_36;
    }

LABEL_43:
    if (!v48)
    {
      mach_port_mod_refs(*MEMORY[0x277D85F48], poly[1], poly[0], -1);
    }

    goto LABEL_45;
  }

LABEL_18:

  v31 = *MEMORY[0x277D85DE8];
  return v7;
}

- (DTXMachTransport)initWithXPCRepresentation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DTXMachTransport;
  v5 = [(DTXTransport *)&v13 initWithXPCRepresentation:v4];
  v6 = v5;
  if (v5)
  {
    sub_247F400FC(v5);
    v6->_sendPort = xpc_dictionary_copy_mach_send();
    v6->_receivePort = xpc_dictionary_extract_mach_recv();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247F40A44;
    v11[3] = &unk_278EEE708;
    v7 = v6;
    v12 = v7;
    v8 = MEMORY[0x24C1C0D80](v11);
    if ((objc_msgSend__setupWithSendPort_receivePort_disconnectBlock_(v7, v9, v6->_sendPort, v6->_receivePort, v8) & 1) == 0)
    {
      v8[2](v8);

      v7 = 0;
    }

    v6 = v7;
  }

  return v6;
}

- (id)serializedXPCRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_247F40BCC;
  v10 = sub_247F40BDC;
  v11 = 0;
  outputQueue = self->_outputQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F40BE4;
  v5[3] = &unk_278EEE668;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(outputQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  sendBuffer = self->_sendBuffer;
  if (sendBuffer)
  {
    free(sendBuffer);
    self->_sendBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = DTXMachTransport;
  [(DTXTransport *)&v4 dealloc];
}

- (unint64_t)transmit:(const void *)a3 ofLength:(unint64_t)a4
{
  if (self->_sendPort + 1 >= 2)
  {
    v6 = a4;
    v7 = a3;
    v5 = 0;
    bufferedLength = self->_bufferedLength;
    do
    {
      if (v6 >= 32672 - bufferedLength)
      {
        v9 = 32672 - bufferedLength;
      }

      else
      {
        v9 = v6;
      }

      memcpy(&self->_sendBuffer->var1[bufferedLength], v7, v9);
      bufferedLength = self->_bufferedLength + v9;
      self->_bufferedLength = bufferedLength;
      if (!v6 || bufferedLength == 32672)
      {
        sendBuffer = self->_sendBuffer;
        *&sendBuffer->var0.var0.var0 = 0;
        *&sendBuffer->var0.var0.var2 = 0;
        sendBuffer->var0.var1 = 0;
        *&sendBuffer->var0.var0.var4 = 0;
        v11 = self->_sendBuffer;
        v11->msgh_remote_port = self->_sendPort;
        v11->msgh_bits = 19;
        LODWORD(sendBuffer) = self->_bufferedLength;
        v11[1].msgh_bits = sendBuffer;
        if (mach_msg(v11, 1, (sendBuffer + 35) & 0xFFFFFFF8, 0, 0, 0, 0))
        {
          goto LABEL_3;
        }

        bufferedLength = 0;
        self->_bufferedLength = 0;
      }

      v7 += v9;
      v5 += v9;
      v6 -= v9;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
LABEL_3:
    objc_msgSend_disconnect(self, a2, a3, a4);
  }

  return v5;
}

- (void)disconnect
{
  listenSource = self->_listenSource;
  if (listenSource)
  {
    dispatch_source_cancel(listenSource);
  }

  inputQueue = self->_inputQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F40FC4;
  block[3] = &unk_278EEE708;
  block[4] = self;
  dispatch_sync(inputQueue, block);
  v7.receiver = self;
  v7.super_class = DTXMachTransport;
  [(DTXTransport *)&v7 disconnect];
  outputQueue = self->_outputQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247F4102C;
  v6[3] = &unk_278EEE708;
  v6[4] = self;
  dispatch_async(outputQueue, v6);
}

- (id)localAddresses
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = getpid();
  v4 = MEMORY[0x277CBEBC0];
  v6 = objc_msgSend_stringByAppendingFormat_(@"mach", v5, @"://%d/%d/%d", v3, self->_receivePort, self->_sendPort);
  v8 = objc_msgSend_URLWithString_(v4, v7, v6);

  v13[0] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 1);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)fileDescriptorHandshakeWithReceivePort:(unsigned int)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v24 = -1;
  v25 = -1;
  if (a3 - 1 >= 0xFFFFFFFE)
  {
    v6 = 1;
  }

  else
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v27 = sub_247F426CC;
    v28 = &unk_278EEE7C8;
    v29 = &v32;
    v30 = &v25;
    v31 = &v24;
    v5 = v26;
    bzero(&msg, 0x324uLL);
    if (mach_msg(&msg, 2, 0, 0x324u, a3, 0, 0) || msg_20 == 70)
    {
      LODWORD(v39[0]) = 0;
      LODWORD(v38[0]) = 4;
      (v27)(v5, 0, v39, v38, 0);
    }

    else if (v48[191] + msg_4 == 804 && (HIDWORD(msg_20) - 65) > 0xFFFFFFBF)
    {
      v15 = 0;
      v16 = msg;
      memset(v39, 0, sizeof(v39));
      v17 = 4 * HIDWORD(msg_20);
      v18 = v48;
      memset(v38, 0, sizeof(v38));
      while (1)
      {
        v19 = *v18;
        if (HIBYTE(*v18))
        {
          break;
        }

        v20 = v19 - 1441792;
        v21 = v19 & 0xFF0000;
        v22 = v20 >= 0xFFFB0000 || v21 == 0x100000;
        if (v22 && (v16 & 0x80000000) == 0)
        {
          break;
        }

        v23 = 4 * (v20 < 0xFFFB0000);
        if (v21 == 0x100000)
        {
          v23 = 1;
        }

        *(v39 + v15) = *(v18 - 2);
        if (v16 >= 0)
        {
          v23 = 6;
        }

        *(v38 + v15) = v23;
        v15 += 4;
        v18 += 3;
        if (v17 == v15)
        {
          goto LABEL_32;
        }
      }

      v36 = 4;
      v37 = 0;
LABEL_32:
      (v27)(v5);
      mach_msg_destroy(&msg);
    }

    else
    {
      LODWORD(v39[0]) = 0;
      LODWORD(v38[0]) = 4;
      (v27)(v5, 0, v39, v38, 0);
      mach_msg_destroy(&msg);
    }

    v6 = *(v33 + 6);
    _Block_object_dispose(&v32, 8);
    if (!v6)
    {
      v13 = [DTXFileDescriptorTransport alloc];
      v10 = objc_msgSend_initWithIncomingFileDescriptor_outgoingFileDescriptor_disconnectBlock_(v13, v14, v25, MEMORY[0x277D85DD0], 3221225472, sub_247F4161C, &unk_278EEE728, __PAIR64__(v24, v25));
      goto LABEL_13;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = getprogname();
    v8 = getpid();
    Name = sel_getName(a2);
    msg = 136315906;
    msg_4 = v7;
    msg_12 = 1024;
    msg_14 = v8;
    msg_18 = 2082;
    msg_20 = Name;
    v46 = 1024;
    v47 = v6;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s(%d) [error]: '%{public}s' failed: (%d)\n", &msg, 0x22u);
  }

  v10 = 0;
LABEL_13:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)fileDescriptorHandshakeWithSendPort:(unsigned int)a3
{
  v57 = *MEMORY[0x277D85DE8];
  if (a3 - 1 >= 0xFFFFFFFE)
  {
    v5 = 1;
    goto LABEL_21;
  }

  *v39 = -1;
  *v40 = -1;
  if (pipe(v39) || pipe(v40))
  {
    *name = 0;
    v5 = 6;
    goto LABEL_5;
  }

  *name = 0;
  if (fileport_makeport() || fileport_makeport())
  {
    v17 = 6;
  }

  else
  {
    v17 = 0;
  }

  if (name[0] - 1 >= 0xFFFFFFFE || name[1] - 1 >= 0xFFFFFFFE)
  {
    v5 = 15;
  }

  else
  {
    v5 = v17;
  }

  if (v39[0] < 0)
  {
    v5 = 29;
LABEL_7:
    v6 = 0xFFFFFFFFLL;
    v7 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if (fcntl(v39[0], 2, 1) == -1 || v39[1] < 0 || fcntl(v39[1], 2, 1) == -1)
  {
    v5 = 29;
LABEL_5:
    if ((v39[0] & 0x80000000) == 0)
    {
      close(v39[0]);
    }

    goto LABEL_7;
  }

  if (v5)
  {
    goto LABEL_5;
  }

  v20 = name[0];
  v19 = name[1];
  v36 = 19;
  v37 = 19;
  bzero(buf, 0x31CuLL);
  v21 = 0;
  LODWORD(v50) = 796;
  HIDWORD(v50) = a3;
  HIDWORD(v54) = 2;
  v22 = 5139;
  v23 = &v37;
  v24 = 1;
  do
  {
    v25 = v24;
    v26 = &v55 + 6 * v21;
    *v26 = v20;
    v27 = *v23;
    if (v27)
    {
      v22 |= 0x80000000;
    }

    v26[5] = v27;
    v23 = &v36;
    v20 = v19;
    v21 = 1;
    v24 = 0;
  }

  while ((v25 & 1) != 0);
  *buf = v22;
  v28 = mach_msg_send(buf);
  if (v28)
  {
    v29 = v28;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v30 = getprogname();
      v31 = getpid();
      v32 = mach_error_string(v29);
      *v41 = 136315906;
      v42 = v30;
      v43 = 1024;
      v44 = v31;
      v45 = 2080;
      v46 = v32;
      v47 = 1024;
      v48 = v29;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_msg_send' failed: %s (%d)\n", v41, 0x22u);
    }

    v5 = 5;
    goto LABEL_5;
  }

  v5 = 0;
  v6 = v39[0];
  v7 = v40[1];
  v39[0] = -1;
  v40[1] = -1;
LABEL_8:
  if ((v39[1] & 0x80000000) == 0)
  {
    close(v39[1]);
  }

  if ((v40[0] & 0x80000000) == 0)
  {
    close(v40[0]);
  }

  if ((v40[1] & 0x80000000) == 0)
  {
    close(v40[1]);
  }

  v8 = MEMORY[0x277D85F48];
  if (name[1] - 1 <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], name[1]);
  }

  if (name[0] - 1 <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*v8, name[0]);
  }

  if (!v5)
  {
    v9 = [DTXFileDescriptorTransport alloc];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_247F41A54;
    v33[3] = &unk_278EEE728;
    v34 = v6;
    v35 = v7;
    v11 = objc_msgSend_initWithIncomingFileDescriptor_outgoingFileDescriptor_disconnectBlock_(v9, v10, v6, v7, v33);
    goto LABEL_24;
  }

LABEL_21:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = getprogname();
    v13 = getpid();
    v14 = sel_getName(a2);
    *buf = 136315906;
    v50 = v12;
    v51 = 1024;
    v52 = v13;
    v53 = 2082;
    v54 = v14;
    v55 = 1024;
    v56 = v5;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s(%d) [error]: '%{public}s' failed: (%d)\n", buf, 0x22u);
  }

  v11 = 0;
LABEL_24:
  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_legacyFileDescriptorHandshakeWithReceivePort:(unsigned int)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F41DFC;
  v13[3] = &unk_278EEE750;
  v13[4] = &v14;
  v3 = sub_247F41C04(a3, v13);
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    if ((v15[3] & 0x80000000) == 0)
    {
      v5 = [DTXFileDescriptorTransport alloc];
      v6 = *(v15 + 6);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_247F420C4;
      v11[3] = &unk_278EEE778;
      v11[4] = &v14;
      v12 = v4;
      v8 = objc_msgSend_initWithIncomingFileDescriptor_outgoingFileDescriptor_disconnectBlock_(v5, v7, v6, v4, v11);
      goto LABEL_8;
    }

    close(v3);
  }

  v9 = *(v15 + 6);
  if ((v9 & 0x80000000) == 0)
  {
    close(v9);
  }

  v8 = 0;
LABEL_8:
  _Block_object_dispose(&v14, 8);

  return v8;
}

+ (id)_legacyFileDescriptorHandshakeWithSendPort:(unsigned int)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_247F40BCC;
  v31 = sub_247F40BDC;
  v32 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_247F424F4;
  v25[3] = &unk_278EEE7A0;
  v26 = a3;
  v25[4] = &v27;
  v4 = v25;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v34 = sub_247F42878;
  v35 = &unk_278EEE818;
  v37 = a3;
  v5 = v4;
  v36 = v5;
  v6 = v33;
  name[0] = 0;
  v7 = MEMORY[0x277D85F48];
  v8 = mach_port_allocate(*MEMORY[0x277D85F48], 1u, name);
  if (v8)
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = getprogname();
      v12 = getpid();
      v13 = mach_error_string(v8);
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 2080;
      *&buf[20] = v13;
      *&buf[28] = 1024;
      *&buf[30] = v8;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_allocate' failed: %s (%d)\n", buf, 0x22u);
    }
  }

  inserted = mach_port_insert_right(*v7, name[0], name[0], 0x14u);
  if (inserted)
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = getprogname();
      v18 = getpid();
      v19 = mach_error_string(inserted);
      *buf = 136315906;
      *&buf[4] = v17;
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2080;
      *&buf[20] = v19;
      *&buf[28] = 1024;
      *&buf[30] = inserted;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_insert_right' failed: %s (%d)\n", buf, 0x22u);
    }
  }

  v20 = name[0];
  *name = 0;
  v39 = name;
  v40 = 0x2020000000;
  v41 = 0;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_247F42940;
  *&buf[24] = &unk_278EEE778;
  *&buf[32] = name;
  v43 = v20;
  v21 = MEMORY[0x24C1C0D80](buf);
  v34(v6, v20, v21);
  v21[2](v21);

  _Block_object_dispose(name, 8);
  v22 = v28[5];
  _Block_object_dispose(&v27, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end