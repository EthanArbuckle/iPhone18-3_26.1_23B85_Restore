@interface HAP2CoAPIOThread
- (BOOL)_processQueueEntry:(id)a3 context:(coap_context_t *)a4;
- (BOOL)_processQueueWithContext:(coap_context_t *)a3;
- (BOOL)_processSessionBlock:(id)a3 consumer:(id)a4 context:(coap_context_t *)a5;
- (HAP2CoAPIOThread)initWithQualityOfService:(int64_t)a3 delegate:(id)a4;
- (HAP2CoAPIOThread)initWithQualityOfService:(int64_t)a3 delegate:(id)a4 dateProvider:(id)a5;
- (coap_context_t)_createContext;
- (id)completedQueue;
- (id)consumerInfo;
- (id)delegate;
- (id)queue;
- (void)_cleanupWithContext:(coap_context_t *)a3;
- (void)_enqueue:(id)a3;
- (void)_registerConsumer:(id)a3 context:(coap_context_t *)a4;
- (void)_unregisterConsumer:(id)a3;
- (void)_wakeUpThread;
- (void)cancel;
- (void)dealloc;
- (void)main;
- (void)queueSessionBlockForConsumer:(id)a3 sessionBlock:(id)a4 withTimeout:(double)a5 requiresCompletion:(BOOL)a6;
- (void)queueSessionCompletionForConsumer:(id)a3;
- (void)registerConsumer:(id)a3;
- (void)unregisterConsumer:(id)a3;
@end

@implementation HAP2CoAPIOThread

- (BOOL)_processSessionBlock:(id)a3 consumer:(id)a4 context:(coap_context_t *)a5
{
  v8 = a3;
  v9 = a4;
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@ Session Block (IO Thread)", v12];

  v24 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v13];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__HAP2CoAPIOThread__processSessionBlock_consumer_context___block_invoke;
  v17[3] = &unk_2786D5EC8;
  v15 = v9;
  v18 = v15;
  v19 = &v20;
  [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  v8[2](v8, a5, v21[3]);
  [v24 invalidate];
  LOBYTE(a5) = v21[3] != 0;

  _Block_object_dispose(&v20, 8);
  __HMFActivityScopeLeave();

  return a5;
}

- (id)consumerInfo
{
  if (a1)
  {
    v2 = a1;
    [a1 _assertIsCurrentThread];
    a1 = v2[12];
    v1 = vars8;
  }

  return a1;
}

void __58__HAP2CoAPIOThread__processSessionBlock_consumer_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 consumer];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 session];
    *a4 = 1;
  }
}

- (void)_unregisterConsumer:(id)a3
{
  v4 = a3;
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Unregister (IO Thread)", v7];

  v22 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__20180;
  v20 = __Block_byref_object_dispose__20181;
  v21 = 0;
  v9 = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__HAP2CoAPIOThread__unregisterConsumer___block_invoke;
  v12[3] = &unk_2786D5EA0;
  v10 = v4;
  v14 = self;
  v15 = &v16;
  v13 = v10;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  if (v17[5])
  {
    v11 = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
    [v11 removeObjectsAtIndexes:v17[5]];
  }

  [v22 invalidate];

  _Block_object_dispose(&v16, 8);
  __HMFActivityScopeLeave();
}

void __40__HAP2CoAPIOThread__unregisterConsumer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v5 = [v20 consumer];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if ([v20 session])
    {
      v10 = [v20 session];
      if (!v10)
      {
        __assert_rtn("coap_session_set_app_data", "coap_session.c", 86, "session");
      }

      *(v10 + 344) = 0;
      v11 = [HAP2CoAPIOThreadSessionQueueEntry alloc];
      v12 = [v20 session];
      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = *(v13 + 120);
      }

      else
      {
        v14 = 0;
      }

      v15 = [v14 now];
      v16 = [(HAP2CoAPIOThreadSessionQueueEntry *)v11 initWithSession:v12 startTime:v15];

      v17 = *(a1 + 40);
      if (v17)
      {
        v18 = *(v17 + 136);
      }

      else
      {
        v18 = 0;
      }

      [v18 addObject:v16];
      [v20 setSession:0];
      [*(a1 + 32) didCloseSession];
    }

    v19 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) didUnregister];
    }
  }
}

- (void)_registerConsumer:(id)a3 context:(coap_context_t *)a4
{
  v6 = a3;
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@ Register (IO Thread)", v9];

  v14 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v10];
  v11 = [[HAP2CoAPIOConsumerInfo alloc] initWithConsumer:v6];
  v12 = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  [v12 addObject:v11];

  if (objc_opt_respondsToSelector())
  {
    [v6 didRegister];
  }

  if (a4)
  {
    -[HAP2CoAPIOConsumerInfo setSession:](v11, "setSession:", [v6 shouldOpenSessionWithContext:a4]);
    if ([(HAP2CoAPIOConsumerInfo *)v11 session])
    {
      v13 = [(HAP2CoAPIOConsumerInfo *)v11 session];
      if (!v13)
      {
        __assert_rtn("coap_session_set_app_data", "coap_session.c", 86, "session");
      }

      *(v13 + 344) = v6;
    }
  }

  [v14 invalidate];

  __HMFActivityScopeLeave();
}

- (BOOL)_processQueueEntry:(id)a3 context:(coap_context_t *)a4
{
  v6 = a3;
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  if (!v6)
  {
    v7 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v7 = v6[1];
  v8 = v6[2];
  if (v8 == 8)
  {
    if (self)
    {
      lock = self->_lock;
    }

    else
    {
      lock = 0;
    }

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __47__HAP2CoAPIOThread__processQueueEntry_context___block_invoke;
    v16 = &unk_2786D7050;
    v17 = self;
    v18 = v6;
    [(HAP2Lock *)lock performBlock:&v13];

LABEL_11:
    v11 = v6[3];
LABEL_12:
    v9 = [(HAP2CoAPIOThread *)self _processSessionBlock:v11 consumer:v7 context:a4, v13, v14, v15, v16, v17];
    goto LABEL_13;
  }

  if (v8 == 2)
  {
    [(HAP2CoAPIOThread *)self _unregisterConsumer:v7];
    goto LABEL_7;
  }

  if (v8 != 1)
  {
    goto LABEL_11;
  }

  [(HAP2CoAPIOThread *)self _registerConsumer:v7 context:a4];
LABEL_7:
  v9 = 0;
LABEL_13:

  return v9;
}

uint64_t __47__HAP2CoAPIOThread__processQueueEntry_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[16];
  }

  return [v1 addObject:*(a1 + 40)];
}

- (void)_cleanupWithContext:(coap_context_t *)a3
{
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__20180;
  v23 = __Block_byref_object_dispose__20181;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20180;
  v17 = __Block_byref_object_dispose__20181;
  v18 = 0;
  if (self)
  {
    lock = self->_lock;
  }

  else
  {
    lock = 0;
  }

  v6 = lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke;
  v12[3] = &unk_2786D6E60;
  v12[4] = self;
  v12[5] = &v19;
  [(HAP2Lock *)v6 performBlock:v12];

  [v20[5] hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_20202];
  v7 = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_68];

  v8 = [(HAP2CoAPIOThread *)&self->super.super.isa consumerInfo];
  [v8 removeAllObjects];

  if (self)
  {
    v9 = self->_lock;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_4;
  v11[3] = &unk_2786D6E60;
  v11[4] = self;
  v11[5] = &v13;
  [(HAP2Lock *)v10 performBlock:v11];

  [v14[5] hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_70];
  coap_free_context(a3);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
}

void __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke(uint64_t a1)
{
  v2 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
    v5 = [v4 copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
    [v8 removeAllObjects];
  }
}

uint64_t __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 136);
  }

  else
  {
    v3 = 0;
  }

  result = [v3 count];
  if (result)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[17];
    }

    v6 = v5;
    v7 = [v6 copy];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 136);
    }

    else
    {
      v11 = 0;
    }

    return [v11 removeAllObjects];
  }

  return result;
}

void __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 distantFuture];
  [v3 reapSession:v4];
}

void __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 consumer];
  if ([v4 session])
  {
    v3 = [v4 session];
    if (!v3)
    {
      __assert_rtn("coap_session_set_app_data", "coap_session.c", 86, "session");
    }

    *(v3 + 344) = 0;
    coap_session_release([v4 session]);
    [v4 setSession:0];
  }

  if (v2)
  {
    [v2 didCloseSession];
  }
}

uint64_t __40__HAP2CoAPIOThread__cleanupWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0);
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (id)queue
{
  if (a1)
  {
    v2 = a1;
    [a1[13] assertOwner];
    a1 = v2[9];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)_processQueueWithContext:(coap_context_t *)a3
{
  v3 = MEMORY[0x28223BE20](self, a2, a3);
  v5 = v4;
  v6 = v3;
  v411 = *MEMORY[0x277D85DE8];
  [v3 _assertIsCurrentThread];
  v362 = 0;
  v363 = &v362;
  v364 = 0x3032000000;
  v365 = __Block_byref_object_copy__20180;
  v366 = __Block_byref_object_dispose__20181;
  v367 = 0;
  if (v6)
  {
    v7 = *(v6 + 13);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v361[0] = MEMORY[0x277D85DD0];
  v361[1] = 3221225472;
  v361[2] = __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke;
  v361[3] = &unk_2786D6E60;
  v361[4] = v6;
  v361[5] = &v362;
  [v8 performBlock:v361];

  v359[0] = 0;
  v359[1] = v359;
  v359[2] = 0x3032000000;
  v359[3] = __Block_byref_object_copy__20180;
  v359[4] = __Block_byref_object_dispose__20181;
  v360 = 0;
  v9 = v363[5];
  v358[0] = MEMORY[0x277D85DD0];
  v358[1] = 3221225472;
  v358[2] = __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_62;
  v358[3] = &unk_2786D5E18;
  v358[4] = v6;
  v358[5] = v359;
  v358[6] = v5;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v358];
  if (v5)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v347 = [v10 stringWithFormat:@"%@ CoAP Run", v12];

    v357 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v347];
    if (v6)
    {
      v346 = *(v6 + 15);
    }

    else
    {
      v346 = 0;
    }

    memset(&v372, 0, sizeof(v372));
    memset(v374, 0, 512);
    v368 = 0;
    v369 = 0;
    memset(__errnum, 0, sizeof(__errnum));
    gettimeofday(__errnum, 0);
    v351 = __errnum[2];
    v13 = *__errnum;
    v353 = coap_clock_offset;
    v356 = v5;
    v14 = *(v5 + 16);
    p_inst_meths = &OBJC_PROTOCOL___HAP2AccessoryServerPairingDriverDelegate.inst_meths;
    if (v14)
    {
      while (1)
      {
        v16 = v14;
        v14 = *(v14 + 10);
        v17 = *v16;
        if ((*v16 & 4) != 0 && (*v16 & 3) != 0)
        {
          v17 &= ~2u;
          *v16 = v17;
          v18 = *(v16 + 1);
          if (!v18)
          {
            __assert_rtn("coap_notify_observers", "resource.c", 751, "h");
          }

          v19 = *(v16 + 16);
          if (v19)
          {
            break;
          }
        }

LABEL_39:
        *v16 = v17 & 0xFE;
        if (!v14)
        {
          goto LABEL_40;
        }
      }

      memset(__errnum, 0, sizeof(__errnum));
      while (1)
      {
        if ((*v16 & 1) != 0 || (v19[2] & 0x40) != 0)
        {
          v20 = v19[1];
          if (!v20[226])
          {
            v21 = *(v19 + 16);
LABEL_19:
            *(v19 + 16) = v21 & 0xBF;
            v22 = coap_session_max_pdu_size(v20);
            v23 = coap_pdu_init(0, 0, 0, v22);
            if (v23)
            {
              v24 = v23;
              if (coap_add_token(v23, v19[4], v19 + 5))
              {
                *__errnum = v19[4];
                *&__errnum[2] = v19 + 5;
                v25 = v19[1];
                v26 = *(v25 + 224) + 1;
                *(v25 + 224) = v26;
                *(v24 + 6) = v26;
                *(v19 + 9) = v26;
                v27 = (v16[144] & 2) == 0 && (v19[2] & 0xFu) < 5;
                *v24 = v27;
                v28 = v19[6];
                v18(v5, v16);
                v29 = *(v19 + 16);
                v30 = v29 + 1;
                v31 = v29 & 0xF0;
                if (*v24)
                {
                  v32 = v31 & 0xF0 | v30 & 0xF;
                }

                else
                {
                  v32 = v31;
                }

                *(v19 + 16) = v32;
                p_inst_meths = &OBJC_PROTOCOL___HAP2AccessoryServerPairingDriverDelegate.inst_meths;
                if (coap_send(v19[1], v24) == -1)
                {
                  if (maxlog >= 7)
                  {
                    coap_log_impl(7, "coap_check_notify: sending failed, resource stays partially dirty\n");
                  }

                  *(v19 + 16) |= 0x40u;
                  *v16 |= 2u;
                }
              }

              else
              {
                *(v19 + 16) |= 0x40u;
                *v16 |= 2u;
                p_inst_meths = &OBJC_PROTOCOL___HAP2AccessoryServerPairingDriverDelegate.inst_meths;
                if (maxlog >= 7)
                {
                  coap_log_impl(7, "coap_check_notify: cannot add token, resource stays partially dirty\n");
                }

                coap_delete_pdu(v24);
              }
            }

            else
            {
              *(v19 + 16) |= 0x40u;
              *v16 |= 2u;
              if (maxlog >= 7)
              {
                coap_log_impl(7, "coap_check_notify: pdu init failed, resource stays partially dirty\n");
              }
            }

            goto LABEL_37;
          }

          if ((v16[144] & 2) == 0)
          {
            v21 = *(v19 + 16);
            if ((v21 & 0xFu) <= 4)
            {
              goto LABEL_19;
            }
          }
        }

LABEL_37:
        v19 = *v19;
        if (!v19)
        {
          v17 = *v16;
          goto LABEL_39;
        }
      }
    }

LABEL_40:
    v33 = 1000 * (v13 - v353) + ((v351 * 1.024 + 512.0) >> 10);
    v34 = *(v5 + 192);
    if (v34)
    {
      v35 = 1000 * v34;
    }

    else
    {
      v35 = 300000;
    }

    v36 = *(v5 + 56);
    if (!v36)
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_67;
    }

    v37 = 0;
    v38 = 0;
    do
    {
      if ((*(v36 + 14) & 0x70) != 0 && v37 <= 0x1FF)
      {
        *(v374 + v37++) = v36 + 3;
      }

      v39 = v36[10];
      while (v39)
      {
        v40 = v39;
        v39 = *(v39 + 64);
        if (*(v40 + 1) != 2 || *(v40 + 4) || *(v40 + 232))
        {
          goto LABEL_53;
        }

        v41 = *(v40 + 272) + v35;
        v66 = v41 > v33;
        v42 = v41 - v33;
        if (v66 && *(v40 + 2))
        {
          if (v38 - 1 >= v42)
          {
            v38 = v42;
          }

LABEL_53:
          if ((*(v40 + 180) & 0x30) != 0 && v37 <= 0x1FF)
          {
            *(v374 + v37++) = v40 + 176;
          }
        }

        else
        {
          coap_session_free(v40);
        }
      }

      v36 = *v36;
    }

    while (v36);
LABEL_67:
    v350 = v33;
    v44 = *(v356 + 64);
    while (v44)
    {
      while (1)
      {
        v45 = v44;
        v44 = *(v44 + 8);
        if (v45[1] != 1)
        {
          goto LABEL_95;
        }

        if (v45[2] == 4)
        {
          v46 = *(v356 + 204);
          if (v46)
          {
            break;
          }
        }

LABEL_75:
        if (*v45 - 3 <= 1 && v45[2] == 3)
        {
          v49 = *(v356 + 208);
          if (v49)
          {
            v50 = *(v45 + 38);
            if (v50)
            {
              v51 = v50 + 1000 * v49;
              v52 = v33;
              if (v51 <= v33)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v52 = v33;
              *(v45 + 38) = v33;
              v51 = v33 + 1000 * v49;
            }

            v60 = v51 - v52;
            if (v38 - 1 >= v60)
            {
              v38 = v60;
            }
          }
        }

LABEL_95:
        if ((*(v45 + 90) & 0xB0) != 0 && v37 <= 0x1FF)
        {
          *(v374 + v37++) = v45 + 176;
        }

        if (!v44)
        {
          goto LABEL_102;
        }
      }

      v47 = *(v45 + 34) + 1000 * v46;
      v66 = v47 > v33;
      v48 = v47 - v33;
      if (v66)
      {
        if (v38 - 1 >= v48)
        {
          v38 = v48;
        }

        goto LABEL_75;
      }

      v53 = *(v45 + 36);
      if (v53 && *(v45 + 37) < v53)
      {
        goto LABEL_101;
      }

      if (*v45 - 1 > 1)
      {
        v56 = -30;
        v55 = 0;
        v57 = 1;
      }

      else
      {
        v54 = *(v45 + 112) + 1;
        *(v45 + 112) = v54;
        v55 = v54;
        v56 = 0;
        v57 = 0;
      }

      v58 = coap_pdu_init(0, v56, v55, v57);
      if (v58)
      {
        v59 = coap_send(v45, v58);
        *(v45 + 57) = v59;
        if (v59 != -1)
        {
          *(v45 + 34) = v33;
          *(v45 + 36) = v33;
          if (v38 - 1 >= 1000 * *(v356 + 204))
          {
            v38 = 1000 * *(v356 + 204);
          }

          if (v45[1] != 1)
          {
            goto LABEL_95;
          }

          goto LABEL_75;
        }
      }

      else
      {
        *(v45 + 57) = -1;
      }

LABEL_101:
      ++*(v45 + 1);
      coap_session_disconnected(v45, 1);
      coap_session_release(v45);
    }

LABEL_102:
    v61 = v356;
    v62 = (v356 + 48);
    v63 = *(v356 + 48);
    if (v63)
    {
      v352 = (v356 + 48);
      v354 = v38;
      do
      {
        v64 = v61[5];
        v65 = *(v63 + 8);
        v66 = v33 < v64 || v65 > v33 - v64;
        if (v66)
        {
          v127 = v64 - v33 + v65;
          if (v38 - 1 >= v127)
          {
            v38 = v127;
          }

          break;
        }

        v67 = *v63;
        *v62 = *v63;
        if (v67)
        {
          *(v67 + 8) += v65;
        }

        *v63 = 0;
        v68 = *(v63 + 16);
        v69 = *(v63 + 24);
        if (*(v69 + 352) <= v68)
        {
          if (*(p_inst_meths + 756) >= 7)
          {
            coap_session_str(*(v63 + 24));
            coap_log_impl(7, "** %s: tid=%d: give up after %d attempts\n", &coap_session_str_szSession, *(v63 + 32), *(v63 + 16));
            v69 = *(v63 + 24);
          }

          v72 = *(v63 + 40);
          if (*(v72 + 1) >= 0x40u)
          {
            v73 = v61[2];
            if (v73)
            {
              v348 = v63;
              v74 = *(v72 + 4);
              v75 = *(v72 + 40);
              do
              {
                v76 = v73;
                v73 = *(v73 + 80);
                v77 = *(v76 + 128);
                if (v77)
                {
                  v78 = *(v76 + 128);
                  while (1)
                  {
                    v79 = v78;
                    v78 = *v78;
                    v80 = v79[1];
                    if (v80 == v69 && v79[4] == v74 && !memcmp(v75, v79 + 5, v74))
                    {
                      break;
                    }

                    if (!v78)
                    {
                      goto LABEL_124;
                    }
                  }

                  v81 = *(v79 + 16);
                  if ((~v81 & 0x30) != 0)
                  {
                    *(v79 + 16) = (v81 + 16) & 0x30 | v81 & 0xCF;
                  }

                  else
                  {
                    if (v77 == v79)
                    {
                      *(v76 + 128) = *v77;
                    }

                    else
                    {
                      do
                      {
                        v82 = v77;
                        v77 = *v77;
                        if (v77)
                        {
                          v83 = v77 == v79;
                        }

                        else
                        {
                          v83 = 1;
                        }
                      }

                      while (!v83);
                      if (v77)
                      {
                        *v82 = v78;
                      }
                    }

                    *(v79 + 16) &= 0xCFu;
                    v84 = v74;
                    if (maxlog >= 7)
                    {
                      if (coap_print_addr(v80 + 104, __errnum, 0x36uLL) && maxlog >= 7)
                      {
                        coap_log_impl(7, "** removed observer %s\n", __errnum);
                      }

                      v80 = v79[1];
                      v84 = v79[4];
                    }

                    coap_cancel_all_messages(v356, v80, v79 + 5, v84);
                    coap_session_release(v79[1]);
                    v85 = v79[6];
                    if (v85)
                    {
                      free(v85);
                    }

                    free(v79);
                  }
                }

LABEL_124:
                ;
              }

              while (v73);
              v63 = v348;
              v69 = *(v348 + 24);
              v61 = v356;
              p_inst_meths = (&OBJC_PROTOCOL___HAP2AccessoryServerPairingDriverDelegate + 24);
            }

            else
            {
              v61 = v356;
            }

            v33 = v350;
          }

          if (*(v69 + 226))
          {
            --*(v69 + 226);
            if (*(v69 + 2) == 4)
            {
              coap_session_connected(v69);
            }
          }

          if (!**(v63 + 40))
          {
            v94 = v61[10];
            if (v94)
            {
              v95 = *(v63 + 32);
              v94(v61, *(v63 + 24));
            }
          }

          coap_delete_node(v63);
          goto LABEL_165;
        }

        *(v63 + 16) = v68 + 1;
        memset(__errnum, 0, sizeof(__errnum));
        gettimeofday(__errnum, 0);
        v70 = 1000 * (*__errnum - coap_clock_offset) + ((__errnum[2] * 1.024 + 512.0) >> 10);
        if (*v62)
        {
          v71 = v70 - v61[5] + (*(v63 + 20) << *(v63 + 16));
        }

        else
        {
          v71 = (*(v63 + 20) << *(v63 + 16));
          v61[5] = v70;
        }

        *(v63 + 8) = v71;
        coap_insert_node(v62, v63);
        if (*(p_inst_meths + 756) >= 7)
        {
          coap_session_str(*(v63 + 24));
          coap_log_impl(7, "** %s: tid=%d: retransmission #%d\n", &coap_session_str_szSession, *(v63 + 32), *(v63 + 16));
        }

        v86 = *(v63 + 24);
        if (v86[226])
        {
          --v86[226];
        }

        v87 = *(v63 + 48);
        v88 = *(v63 + 40);
        if ((v87 - 1) > 0x3E)
        {
          coap_send_pdu(v86, *(v63 + 40), v63);
          goto LABEL_165;
        }

        v349 = v63;
        v89 = *(v88 + 40);
        v90 = *(v88 + 3);
        v91 = *(v88 + 24);
        if (*(p_inst_meths + 756) >= 7)
        {
          coap_log_impl(7, "coap_send_pdu_dscp: Session state = %d\n", v86[2]);
        }

        v92 = *(v86 + 90);
        if (*(v86 + 90))
        {
          v93 = v86 + 176;
        }

        else
        {
          v96 = *(v86 + 25);
          if (!v96)
          {
            __assert_rtn("coap_send_pdu_dscp", "net.c", 953, "session->endpoint != NULL");
          }

          v93 = (v96 + 24);
        }

        if (*v93 == -1)
        {
          v98 = *(p_inst_meths + 756);
          v99 = "Invalid socket file descriptor (fd = -1).\n";
          goto LABEL_185;
        }

        v97 = v86[141];
        if (v97 == 2)
        {
          if ((*(v86 + 36) & 0xF0) == 0xE0)
          {
            goto LABEL_176;
          }
        }

        else if (v97 == 30 && v86[148] == 255)
        {
LABEL_176:
          if (*(v88 + 1) > 0x5Fu)
          {
            goto LABEL_165;
          }
        }

        if (*v88)
        {
          if (v86[2] == 4 && (~v92 & 0x21) != 0)
          {
            goto LABEL_180;
          }
        }

        else
        {
          if ((~v92 & 0x1001) == 0)
          {
            v98 = *(p_inst_meths + 756);
            v99 = "Multicast requests cannot be Confirmable (RFC7252 8.1)\n";
LABEL_185:
            if (v98 > 2)
            {
              coap_log_impl(3, v99);
            }

            goto LABEL_165;
          }

          if (v86[2] == 4 && !v86[226] && (~v92 & 0x21) != 0)
          {
            if (*v86 - 1 <= 1)
            {
              v86[226] = 1;
            }

LABEL_180:
            memset(&v373, 0, sizeof(v373));
            v378[0] = v89 - v90;
            v378[1] = v91 + v90;
            if ((v93[4] & 4) != 0)
            {
              v100 = v93;
              v373.msg_name = 0;
              v373.msg_namelen = 0;
              v101 = "Using connected socket path (msg_name=NULL).\n";
              if (*(p_inst_meths + 756) > 6)
              {
                goto LABEL_192;
              }
            }

            else
            {
              v100 = v93;
              v373.msg_name = v86 + 108;
              v373.msg_namelen = *(v86 + 26);
              v101 = "Using unconnected socket path (msg_name set).\n";
              if (*(p_inst_meths + 756) < 7)
              {
                goto LABEL_193;
              }

LABEL_192:
              coap_log_impl(7, v101);
            }

LABEL_193:
            v373.msg_iov = v378;
            v373.msg_iovlen = 1;
            v373.msg_control = 0;
            v373.msg_controllen = 0;
            v102 = v86[109];
            if (v102 != 30 && v102 != 2)
            {
              if (*(p_inst_meths + 756) >= 7)
              {
                coap_log_impl(7, "Unsupported address family for DSCP/AQM. Sending without it.\n");
              }

              goto LABEL_224;
            }

            v373.msg_control = &v375;
            v373.msg_controllen = 32;
            v375 = 16;
            v377 = 4 * v87;
            if (v102 == 2)
            {
              v376 = 0x300000000;
              v103 = "Setting IP_TOS to 0x%x (DSCP %d)\n";
              if (*(p_inst_meths + 756) <= 6)
              {
LABEL_200:
                v104 = &v375 + ((v375 + 3) & 0x1FFFFFFFCLL);
                if (v104 + 12 > v373.msg_control + v373.msg_controllen)
                {
                  if (*(p_inst_meths + 756) >= 4)
                  {
                    coap_log_impl(4, "Could not get next control message header for AQM.\n");
                  }

                  v105 = 16;
                  goto LABEL_223;
                }

                if (v87 <= 31)
                {
                  if (v87 == 8)
                  {
                    v106 = 100;
                    goto LABEL_220;
                  }
                }

                else if (v87 <= 45)
                {
                  if (v87 == 40)
                  {
                    v106 = 700;
                    goto LABEL_220;
                  }
                }

                else
                {
                  switch(v87)
                  {
                    case '.':
                      goto LABEL_209;
                    case '8':
                      v106 = 900;
                      goto LABEL_220;
                    case '0':
LABEL_209:
                      v106 = 800;
LABEL_220:
                      *v104 = 0xFFFF00000010;
                      *(v104 + 2) = 4230;
                      *(v104 + 3) = v106;
                      if (*(p_inst_meths + 756) >= 7)
                      {
                        coap_log_impl(7, "Also setting SO_TRAFFIC_CLASS to %d (mapped from DSCP %d)\n", v106, v87);
                      }

                      v105 = 32;
LABEL_223:
                      v373.msg_controllen = v105;
LABEL_224:
                      coap_show_pdu(v88);
                      v107 = sendmsg(*v100, &v373, 0);
                      if (*(p_inst_meths + 756) > 6)
                      {
                        coap_log_impl(7, "Chosen sock->fd = %d, flags = %d\n", *v100, *(v100 + 2));
                        if (*(p_inst_meths + 756) >= 7)
                        {
                          coap_log_impl(7, "%s --- msghdr Info ---\n", "TX: ");
                        }
                      }

                      msg_name = v373.msg_name;
                      if (v373.msg_name && v373.msg_namelen)
                      {
                        v109 = *(v373.msg_name + 1);
                        if (v109 == 30)
                        {
                          inet_ntop(30, v373.msg_name + 8, __errnum, 0x36u);
                          if (*(p_inst_meths + 756) >= 7)
                          {
                            v345 = bswap32(msg_name[1]) >> 16;
                            coap_log_impl(7, "%s msg_name: AF_INET6 %s:%d (len %d)\n");
                          }
                        }

                        else if (v109 == 2)
                        {
                          inet_ntop(2, v373.msg_name + 4, __errnum, 0x36u);
                          if (*(p_inst_meths + 756) >= 7)
                          {
                            v344 = bswap32(msg_name[1]) >> 16;
                            coap_log_impl(7, "%s msg_name: AF_INET %s:%d (len %d)\n");
                          }
                        }

                        else if (*(p_inst_meths + 756) >= 7)
                        {
                          v342 = *(v373.msg_name + 1);
                          coap_log_impl(7, "%s msg_name: Unknown Family %d (len %d)\n");
                        }

LABEL_235:
                        v110 = *(p_inst_meths + 756);
                        if (v110 >= 7)
                        {
                          coap_log_impl(7, "%s msg_iovlen: %d\n", "TX: ", v373.msg_iovlen);
                          LOWORD(v110) = *(p_inst_meths + 756);
                        }
                      }

                      else
                      {
                        v110 = *(p_inst_meths + 756);
                        if (v110 >= 7)
                        {
                          coap_log_impl(7, "%s msg_name: NULL (len %d)\n");
                          goto LABEL_235;
                        }
                      }

                      msg_iovlen = v373.msg_iovlen;
                      if (v373.msg_iovlen >= 1)
                      {
                        v112 = 0;
                        v113 = 0;
                        do
                        {
                          if (v110 >= 7)
                          {
                            coap_log_impl(7, "%s   iov[%d]: base=%p, len=%zu\n", "TX: ", v113, v373.msg_iov[v112].iov_base, v373.msg_iov[v112].iov_len);
                            LOWORD(v110) = *(p_inst_meths + 756);
                            msg_iovlen = v373.msg_iovlen;
                          }

                          ++v113;
                          ++v112;
                        }

                        while (v113 < msg_iovlen);
                      }

                      if (v110 > 6)
                      {
                        coap_log_impl(7, "%s msg_controllen: %u\n", "TX: ", v373.msg_controllen);
                      }

                      msg_control = v373.msg_control;
                      if (v373.msg_control && v373.msg_controllen)
                      {
                        if (v373.msg_controllen >= 0xC)
                        {
                          do
                          {
                            if (*(p_inst_meths + 756) >= 7)
                            {
                              coap_log_impl(7, "%s   cmsg: level=%d, type=%d, len=%u\n", "TX: ", msg_control[1], msg_control[2], *msg_control);
                            }

                            v115 = msg_control[1];
                            switch(v115)
                            {
                              case 0xFFFFu:
                                if (msg_control[2] == 4230 && *(p_inst_meths + 756) >= 7)
                                {
                                  v121 = msg_control[3];
                                  coap_log_impl(7, "%s     SO_TRAFFIC_CLASS: %d\n");
                                }

                                break;
                              case 0x29u:
                                v118 = msg_control[2];
                                if (v118 == 36)
                                {
                                  if (*(p_inst_meths + 756) >= 7)
                                  {
                                    v343 = (msg_control[3] >> 2);
                                    coap_log_impl(7, "%s     IPV6_TCLASS: 0x%02x (DSCP 0x%02x)\n");
                                  }
                                }

                                else if (v118 == 46)
                                {
                                  inet_ntop(30, msg_control + 3, __errnum, 0x2Eu);
                                  if (*(p_inst_meths + 756) >= 7)
                                  {
                                    v119 = msg_control[7];
                                    v343 = __errnum;
                                    coap_log_impl(7, "%s     IPV6_PKTINFO: ifindex=%d, addr=%s\n");
                                  }
                                }

                                break;
                              case 0u:
                                v116 = msg_control[2];
                                if (v116 == 3)
                                {
                                  if (*(p_inst_meths + 756) >= 7)
                                  {
                                    v343 = (msg_control[3] >> 2);
                                    coap_log_impl(7, "%s     IP_TOS: 0x%02x (DSCP 0x%02x)\n");
                                  }
                                }

                                else if (v116 == 26)
                                {
                                  inet_ntop(2, msg_control + 5, __errnum, 0x10u);
                                  if (*(p_inst_meths + 756) >= 7)
                                  {
                                    v117 = msg_control[3];
                                    v379[0] = 0;
                                    v379[1] = 0;
                                    v343 = inet_ntop(2, msg_control + 4, v379, 0x10u);
                                    coap_log_impl(7, "%s     IP_PKTINFO: ifindex=%d, ipi_spec_dst=%s, ipi_addr=%s\n");
                                  }
                                }

                                break;
                            }

                            msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
                          }

                          while ((msg_control + 3) <= v373.msg_control + v373.msg_controllen);
                        }

LABEL_273:
                        v122 = *(p_inst_meths + 756);
                        if (v122 > 6)
                        {
                          coap_log_impl(7, "%s msg_flags: 0x%x [", "TX: ", v373.msg_flags);
                          v122 = *(p_inst_meths + 756);
                          msg_flags = v373.msg_flags;
                          if ((v373.msg_flags & 0x20) != 0 && v122 >= 7)
                          {
                            coap_log_impl(7, "MSG_CTRUNC ");
                            msg_flags = v373.msg_flags;
                            LOWORD(v122) = *(p_inst_meths + 756);
                          }

                          if ((msg_flags & 0x10) == 0)
                          {
LABEL_282:
                            if (v122 >= 7)
                            {
                              coap_log_impl(7, "]\n");
                              if (*(p_inst_meths + 756) >= 7)
                              {
                                coap_log_impl(7, "%s --- End msghdr Info ---\n", "TX: ");
                              }
                            }

                            goto LABEL_285;
                          }

LABEL_280:
                          if (v122 >= 7)
                          {
                            coap_log_impl(7, "MSG_TRUNC ");
                            LOWORD(v122) = *(p_inst_meths + 756);
                            goto LABEL_282;
                          }

LABEL_285:
                          if (v107 < 0 && *(p_inst_meths + 756) >= 3)
                          {
                            v124 = __error();
                            v125 = strerror(*v124);
                            v126 = __error();
                            coap_log_impl(3, "coap_send_pdu_dscp failed: %s (%d)\n", v125, *v126);
                          }

                          v61 = v356;
                          v33 = v350;
                          goto LABEL_165;
                        }
                      }

                      else
                      {
                        v122 = *(p_inst_meths + 756);
                        if (v122 >= 7)
                        {
                          coap_log_impl(7, "%s   No control messages.\n", "TX: ");
                          goto LABEL_273;
                        }
                      }

                      if ((v373.msg_flags & 0x10) == 0)
                      {
                        goto LABEL_282;
                      }

                      goto LABEL_280;
                  }
                }

                v106 = 0;
                goto LABEL_220;
              }
            }

            else
            {
              v376 = 0x2400000029;
              v103 = "Setting IPV6_TCLASS to 0x%x (DSCP %d)\n";
              if (*(p_inst_meths + 756) < 7)
              {
                goto LABEL_200;
              }
            }

            coap_log_impl(7, v103, (4 * v87), v87);
            goto LABEL_200;
          }
        }

        coap_session_delay_pdu(v86, v88, v349);
LABEL_165:
        v62 = (v356 + 48);
        v38 = v354;
        v63 = *v352;
      }

      while (*v352);
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v128 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
    {
      __errnum[0] = 67109376;
      __errnum[1] = (1000 * v38 + 999) / 0x3E8uLL;
      LOWORD(__errnum[2]) = 1024;
      *(&__errnum[2] + 2) = 0;
      _os_log_debug_impl(&dword_22AADC000, v128, OS_LOG_TYPE_DEBUG, "Coap_write timeout %u, requested time %u", __errnum, 0xEu);
    }

    v355 = (1000 * v38 + 999) / 0x3E8uLL;
    memset(&v372, 0, sizeof(v372));
    memset(&v371, 0, sizeof(v371));
    memset(&v370, 0, sizeof(v370));
    v129 = 0;
    if (v37)
    {
      v130 = v374;
      v131 = v37;
      do
      {
        v132 = *v130;
        v133 = **v130;
        if (v133 >= v129)
        {
          v129 = v133 + 1;
        }

        if ((v132[1] & 0x10) != 0 && __darwin_check_fd_set_overflow(**v130, &v372, 0))
        {
          *(v372.fds_bits + ((v133 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v133;
        }

        if ((v132[1] & 0x20) != 0)
        {
          v134 = *v132;
          if (__darwin_check_fd_set_overflow(*v132, &v371, 0))
          {
            *(v371.fds_bits + ((v134 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v134;
          }
        }

        if ((v132[1] & 0x40) != 0)
        {
          v135 = *v132;
          if (__darwin_check_fd_set_overflow(*v132, &v372, 0))
          {
            *(v372.fds_bits + ((v135 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v135;
          }
        }

        if ((v132[1] & 0x80) != 0)
        {
          v136 = *v132;
          if (__darwin_check_fd_set_overflow(*v132, &v371, 0))
          {
            *(v371.fds_bits + ((v136 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v136;
          }

          v137 = *v132;
          if (__darwin_check_fd_set_overflow(*v132, &v370, 0))
          {
            *(v370.fds_bits + ((v137 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v137;
          }
        }

        ++v130;
        --v131;
      }

      while (v131);
    }

    if (v355)
    {
      LODWORD(v369) = 1000 * (v355 % 0x3E8);
      v368 = v355 / 0x3E8uLL;
    }

    if ((v346 & 0x80000000) == 0)
    {
      if (__darwin_check_fd_set_overflow(v346, &v372, 0))
      {
        v372.fds_bits[v346 >> 5] |= 1 << v346;
      }

      if (v129 <= v346)
      {
        v129 = v346 + 1;
      }
    }

    if (v355)
    {
      v138 = &v368;
    }

    else
    {
      v138 = 0;
    }

    while (1)
    {
      v139 = select(v129, &v372, &v371, &v370, v138);
      if (v139 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
LABEL_331:
        if (coap_get_log_level() >= 3)
        {
          v140 = __error();
          strerror(*v140);
          coap_log_impl(3, "%s");
        }

        goto LABEL_573;
      }
    }

    if (v139 >= 1 && v37)
    {
      v141 = v374;
      while (1)
      {
        v142 = *v141;
        v143 = *(*v141 + 4);
        if ((v143 & 0x10) == 0)
        {
          goto LABEL_340;
        }

        v144 = *v142;
        if (__darwin_check_fd_set_overflow(*v142, &v372, 0))
        {
          break;
        }

        v143 = *(v142 + 4);
        if ((v143 & 0x40) == 0)
        {
          goto LABEL_341;
        }

LABEL_349:
        v147 = *v142;
        if (__darwin_check_fd_set_overflow(*v142, &v372, 0))
        {
          v143 = *(v142 + 4);
          if (((*(v372.fds_bits + ((v147 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v147) & 1) == 0)
          {
LABEL_341:
            if ((v143 & 0x20) == 0)
            {
              goto LABEL_342;
            }

            goto LABEL_354;
          }

          v143 |= 0x400u;
          *(v142 + 4) = v143;
          if ((v143 & 0x20) == 0)
          {
            goto LABEL_342;
          }
        }

        else
        {
          v143 = *(v142 + 4);
          if ((v143 & 0x20) == 0)
          {
            goto LABEL_342;
          }
        }

LABEL_354:
        v148 = *v142;
        if (__darwin_check_fd_set_overflow(*v142, &v371, 0))
        {
          v143 = *(v142 + 4);
          if (((*(v371.fds_bits + ((v148 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v148) & 1) == 0)
          {
LABEL_342:
            if ((v143 & 0x80) != 0)
            {
              goto LABEL_343;
            }

            goto LABEL_359;
          }

          v149 = v143 | 0x200;
          *(v142 + 4) = v149;
          if ((v149 & 0x80) != 0)
          {
            goto LABEL_343;
          }
        }

        else if ((*(v142 + 4) & 0x80) != 0)
        {
LABEL_343:
          v145 = *v142;
          if (__darwin_check_fd_set_overflow(*v142, &v371, 0) && ((*(v371.fds_bits + ((v145 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v145) & 1) != 0 || (v146 = *v142, __darwin_check_fd_set_overflow(*v142, &v370, 0)) && ((*(v370.fds_bits + ((v146 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v146) & 1) != 0)
          {
            *(v142 + 4) |= 0x800u;
          }
        }

LABEL_359:
        v141 = (v141 + 8);
        if (!--v37)
        {
          goto LABEL_360;
        }
      }

      v143 = *(v142 + 4);
      if ((*(v372.fds_bits + ((v144 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v144))
      {
        v143 |= 0x100u;
        *(v142 + 4) = v143;
      }

LABEL_340:
      if ((v143 & 0x40) == 0)
      {
        goto LABEL_341;
      }

      goto LABEL_349;
    }

LABEL_360:
    v150 = v356;
    if (v346 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v346, &v372, 0) && ((v372.fds_bits[v346 >> 5] >> v346))
    {
      do
      {
        while (1)
        {
          v151 = read(v346, __errnum, 0x20uLL);
          if (v151 != -1)
          {
            break;
          }

          if (*__error() == 35 || *__error() == 35)
          {
            goto LABEL_370;
          }

          if (*__error() != 4)
          {
            goto LABEL_331;
          }
        }
      }

      while (v151);
      log_level = coap_get_log_level();
      if (log_level >= 3)
      {
        coap_log_impl(3, "Pipe closed unexpectedly");
      }

LABEL_573:
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v336 = hap2Log_coap;
      if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__errnum[0]) = 0;
        _os_log_error_impl(&dword_22AADC000, v336, OS_LOG_TYPE_ERROR, "Failed to run coap_run_once", __errnum, 2u);
      }

      v43 = 0;
      goto LABEL_579;
    }

LABEL_370:
    memset(__errnum, 0, sizeof(__errnum));
    gettimeofday(__errnum, 0);
    v152 = 1000 * (*__errnum - coap_clock_offset) + ((__errnum[2] * 1.024 + 512.0) >> 10);
    v153 = *(v356 + 56);
    if (v153)
    {
      v154 = 0uLL;
      while (1)
      {
        v155 = v153;
        v153 = *v153;
        v156 = *(v155 + 28);
        if ((v156 & 0x100) != 0)
        {
          break;
        }

LABEL_481:
        if ((v156 & 0x400) != 0)
        {
          session = coap_make_session(*(v155 + 16), 2, (v155 + 48), 0, 0, 0, v150, v155);
          v154 = 0uLL;
          if (session)
          {
            v256 = session;
            v257 = session + 104;
            __errnum[0] = 1;
            *(v155 + 28) &= ~0x400u;
            v258 = accept(*(v155 + 24), (session + 108), session + 26);
            *(v256 + 44) = v258;
            if (v258 == -1)
            {
              if (maxlog >= 4)
              {
                v289 = __error();
                v290 = strerror(*v289);
                coap_log_impl(4, "coap_socket_accept_tcp: accept: %s\n", v290);
              }

              coap_session_free(v256);
              v150 = v356;
            }

            else
            {
              if (getsockname(v258, (v256 + 140), v256 + 34) < 0 && maxlog >= 4)
              {
                v259 = __error();
                v260 = strerror(*v259);
                coap_log_impl(4, "coap_socket_accept_tcp: getsockname: %s\n", v260);
              }

              if (ioctl(*(v256 + 44), 0x8004667EuLL, __errnum) == -1 && maxlog >= 4)
              {
                v262 = __error();
                v263 = strerror(*v262);
                coap_log_impl(4, "coap_socket_accept_tcp: ioctl FIONBIO: %s\n", v263);
              }

              v264 = 64;
              *(v256 + 90) |= 0x15u;
              *(v256 + 23) = v256;
              v265 = 104;
              v266 = -1640531527;
              v267 = -1640531527;
              v268 = -17973521;
              do
              {
                v269 = *&v256[v265 + 4] + v266;
                v270 = *&v256[v265 + 8] + v268;
                v271 = (*&v256[v265] + v267 - (v269 + v270)) ^ (v270 >> 13);
                v272 = (v269 - v270 - v271) ^ (v271 << 8);
                v273 = (v270 - v271 - v272) ^ (v272 >> 13);
                v274 = (v271 - v272 - v273) ^ (v273 >> 12);
                v275 = (v272 - v273 - v274) ^ (v274 << 16);
                v276 = (v273 - v274 - v275) ^ (v275 >> 5);
                v267 = (v274 - v275 - v276) ^ (v276 >> 3);
                v266 = (v275 - v276 - v267) ^ (v267 << 10);
                v268 = (v276 - v267 - v266) ^ (v266 >> 15);
                v264 -= 12;
                v265 += 12;
              }

              while (v264 > 0xB);
              v277 = (v267 + (v256[167] << 24) + (v256[166] << 16) + (v256[165] << 8) + v256[164] + -64 - v268 - v266) ^ ((v268 + 64) >> 13);
              v278 = (v266 + -64 - v268 - v277) ^ (v277 << 8);
              v279 = (v268 + 64 - v277 - v278) ^ (v278 >> 13);
              v280 = (v277 - v278 - v279) ^ (v279 >> 12);
              v281 = (v278 - v279 - v280) ^ (v280 << 16);
              v282 = (v279 - v280 - v281) ^ (v281 >> 5);
              v283 = (v280 - v281 - v282) ^ (v282 >> 3);
              v284 = (v282 - v283 - ((v281 - v282 - v283) ^ (v283 << 10))) ^ (((v281 - v282 - v283) ^ (v283 << 10)) >> 15);
              v285 = (v256 + 48);
              *(v256 + 11) = v257;
              *(v256 + 24) = 64;
              *(v256 + 25) = v284;
              v286 = *(v155 + 80);
              v154 = 0uLL;
              if (v286)
              {
                v287 = *(v286 + 48);
                *(v256 + 6) = v287;
                *(v256 + 8) = 0;
                v288 = *(v287 + 24);
                *(v256 + 7) = v288 - *(v287 + 32);
                *(v288 + 16) = v256;
                *(v287 + 24) = v285;
                v150 = v356;
              }

              else
              {
                *(v256 + 7) = 0;
                *(v256 + 8) = 0;
                *(v155 + 80) = v256;
                v291 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
                *(*(v155 + 80) + 48) = v291;
                v150 = v356;
                if (!v291)
                {
                  goto LABEL_587;
                }

                v291[2] = 0u;
                v291[3] = 0u;
                *v291 = 0u;
                v291[1] = 0u;
                v292 = *(v155 + 80);
                v293 = *(v292 + 48);
                v293[1] = 0x500000020;
                v293[3] = v292 + 48;
                v293[4] = 48;
                v294 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL);
                **(*(v155 + 80) + 48) = v294;
                if (!v294)
                {
                  goto LABEL_587;
                }

                v154 = 0uLL;
                v294[30] = 0u;
                v294[31] = 0u;
                v294[28] = 0u;
                v294[29] = 0u;
                v294[26] = 0u;
                v294[27] = 0u;
                v294[24] = 0u;
                v294[25] = 0u;
                v294[22] = 0u;
                v294[23] = 0u;
                v294[20] = 0u;
                v294[21] = 0u;
                v294[18] = 0u;
                v294[19] = 0u;
                v294[16] = 0u;
                v294[17] = 0u;
                v294[14] = 0u;
                v294[15] = 0u;
                v294[12] = 0u;
                v294[13] = 0u;
                v294[10] = 0u;
                v294[11] = 0u;
                v294[8] = 0u;
                v294[9] = 0u;
                v294[6] = 0u;
                v294[7] = 0u;
                v294[4] = 0u;
                v294[5] = 0u;
                v294[2] = 0u;
                v294[3] = 0u;
                *v294 = 0u;
                v294[1] = 0u;
                v287 = *(*(v155 + 80) + 48);
                *(v287 + 56) = -1609490463;
              }

              ++*(v287 + 16);
              v295 = *v287 + 16 * ((*(v287 + 8) - 1) & v284);
              v296 = *(v295 + 8) + 1;
              *(v295 + 8) = v296;
              v297 = *v295;
              *(v256 + 9) = 0;
              *(v256 + 10) = v297;
              if (v297)
              {
                *(v297 + 24) = v285;
              }

              *v295 = v285;
              if (v296 >= 10 * *(v295 + 12) + 10 && !(*v285)[6].i32[1])
              {
                v298 = malloc_type_malloc(32 * (*v285)[1].u32[0], 0x1020040EDED9539uLL);
                if (!v298)
                {
                  goto LABEL_587;
                }

                v299 = v298;
                bzero(v298, 32 * (*v285)[1].u32[0]);
                v300 = *v285;
                v301 = (*v285)[2].u32[0];
                v302 = (*v285)[1].u32[0];
                v303 = 2 * v302 - 1;
                if ((v303 & v301) != 0)
                {
                  v304 = (v301 >> ((*v285)[1].i32[1] + 1)) + 1;
                }

                else
                {
                  v304 = v301 >> ((*v285)[1].i32[1] + 1);
                }

                v300[5].i32[0] = v304;
                v300[5].i32[1] = 0;
                v305 = *v300;
                if (v302)
                {
                  v306 = 0;
                  for (i = 0; i != v302; ++i)
                  {
                    v308 = v305[2 * i];
                    if (v308)
                    {
                      do
                      {
                        v309 = *(v308 + 32);
                        v310 = &v299[16 * (*(v308 + 52) & v303)];
                        v311 = *(v310 + 2) + 1;
                        *(v310 + 2) = v311;
                        if (v311 > v304)
                        {
                          v300[5].i32[1] = ++v306;
                          *(v310 + 3) = v311 / v304;
                        }

                        *(v308 + 24) = 0;
                        v312 = *v310;
                        *(v308 + 32) = *v310;
                        if (v312)
                        {
                          *(v312 + 24) = v308;
                        }

                        *v310 = v308;
                        v308 = v309;
                      }

                      while (v309);
                    }
                  }
                }

                free(v305);
                v313 = *v285;
                v314 = (*v285)[1];
                v315.i32[0] = vadd_s32(v314, v314).u32[0];
                v315.i32[1] = vadd_s32(v314, 0x100000001).i32[1];
                v313[1] = v315;
                *v313 = v299;
                if (v313[5].i32[1] <= v313[2].i32[0] >> 1)
                {
                  v313[6].i32[0] = 0;
                  v154 = 0uLL;
                }

                else
                {
                  v316 = v313[6].i32[0] + 1;
                  v313[6].i32[0] = v316;
                  v154 = 0uLL;
                  if (v316 >= 2)
                  {
                    v313[6].i32[1] = 1;
                  }
                }
              }

              if (maxlog >= 7)
              {
                coap_session_str(v256);
                coap_log_impl(7, "***%s: new incoming session\n", &coap_session_str_szSession);
                v154 = 0uLL;
              }

              v317 = *v256;
              if ((v317 - 3) <= 1)
              {
                coap_handle_event(*(v256 + 26), 4097, v256);
                v154 = 0uLL;
                v317 = *v256;
              }

              if (v317 != 4)
              {
                if (v317 == 3)
                {
                  coap_session_send_csm(v256);
                  v154 = 0uLL;
                }

                *(v256 + 34) = v152;
                goto LABEL_533;
              }

              *(v256 + 27) = 0;
              ++*(v256 + 1);
              coap_session_release(v256);
            }

            v154 = 0uLL;
          }
        }

LABEL_533:
        v318 = *(v155 + 80);
        if (v318)
        {
          do
          {
            v319 = *(v318 + 64);
            v320 = *(v318 + 180);
            if ((v320 & 0x100) != 0)
            {
              ++*(v318 + 4);
              coap_read_session();
              coap_session_release(v318);
              v154 = 0uLL;
              v320 = *(v318 + 180);
            }

            if ((v320 & 0x200) != 0)
            {
              ++*(v318 + 4);
              coap_write_session(v318, v152);
              coap_session_release(v318);
              v154 = 0uLL;
            }

            v318 = v319;
          }

          while (v319);
        }

        if (!v153)
        {
          goto LABEL_540;
        }
      }

      if (*(v155 + 16) - 3 <= 0xFFFFFFFD)
      {
        __assert_rtn("coap_read_endpoint", "net.c", 1632, "COAP_PROTO_NOT_RELIABLE(endpoint->proto)");
      }

      if ((v156 & 2) == 0)
      {
        __assert_rtn("coap_read_endpoint", "net.c", 1633, "endpoint->sock.flags & COAP_SOCKET_BOUND");
      }

      v410 = v154;
      v409 = v154;
      v408 = v154;
      v407 = v154;
      v406 = v154;
      v405 = v154;
      v404 = v154;
      v403 = v154;
      v402 = v154;
      v401 = v154;
      v400 = v154;
      v399 = v154;
      v398 = v154;
      v397 = v154;
      v396 = v154;
      v395 = v154;
      v394 = v154;
      v393 = v154;
      v392 = v154;
      v391 = v154;
      v390 = v154;
      v389 = v154;
      v388 = v154;
      v387 = v154;
      v386 = v154;
      v385 = v154;
      v384 = v154;
      v383 = v154;
      *v382 = v154;
      *&v382[16] = v154;
      v157 = *(v155 + 48);
      v381 = v154;
      *__errnum = v154;
      __errnum[0] = 28;
      *v382 = v157;
      v158 = *(v155 + 53);
      if (v158 == 2)
      {
        *&v382[4] = *(v155 + 52);
      }

      else if (v158 == 30)
      {
        v382[5] = 30;
        *&v382[12] = *(v155 + 60);
        *&v382[6] = *(v155 + 54);
        *&v382[28] = *(v155 + 76);
      }

      else
      {
        __memcpy_chk();
      }

      v159 = (*(v150 + 120))(v155 + 24, __errnum);
      if ((v159 & 0x8000000000000000) == 0)
      {
        v160 = v159;
        v154 = 0uLL;
        if (!v159)
        {
          goto LABEL_480;
        }

        v161 = 64;
        v162 = __errnum;
        v163 = -1640531527;
        v164 = -1640531527;
        v165 = -17973521;
        do
        {
          v166 = v162[1] + v163;
          v167 = v162[2] + v165;
          v168 = (*v162 + v164 - (v166 + v167)) ^ (v167 >> 13);
          v169 = (v166 - v167 - v168) ^ (v168 << 8);
          v170 = (v167 - v168 - v169) ^ (v169 >> 13);
          v171 = (v168 - v169 - v170) ^ (v170 >> 12);
          v172 = (v169 - v170 - v171) ^ (v171 << 16);
          v173 = (v170 - v171 - v172) ^ (v172 >> 5);
          v164 = (v171 - v172 - v173) ^ (v173 >> 3);
          v163 = (v172 - v173 - v164) ^ (v164 << 10);
          v165 = (v173 - v164 - v163) ^ (v163 >> 15);
          v162 += 3;
          v161 -= 12;
        }

        while (v161 > 0xB);
        v174 = *(v155 + 80);
        if (!v174)
        {
          v197 = *(v155 + 8);
          goto LABEL_422;
        }

        v175 = (v164 + (v382[31] << 24) + (v382[30] << 16) + (v382[29] << 8) + v382[28] + -64 - v165 - v163) ^ ((v165 + 64) >> 13);
        v176 = (v163 + -64 - v165 - v175) ^ (v175 << 8);
        v177 = (v165 + 64 - v175 - v176) ^ (v176 >> 13);
        v178 = (v175 - v176 - v177) ^ (v177 >> 12);
        v179 = (v176 - v177 - v178) ^ (v178 << 16);
        v180 = (v177 - v178 - v179) ^ (v179 >> 5);
        v181 = (v178 - v179 - v180) ^ (v180 >> 3);
        v182 = (v180 - v181 - ((v179 - v180 - v181) ^ (v181 << 10))) ^ (((v179 - v180 - v181) ^ (v181 << 10)) >> 15);
        v183 = *(v174 + 48);
        v184 = *(*v183 + 16 * ((*(v183 + 8) - 1) & v182));
        if (v184)
        {
          v185 = -*(v183 + 32);
          while (1)
          {
            v186 = v184 + v185;
            if (*(v184 + v185 + 100) == v182 && *(v186 + 96) == 64)
            {
              v187 = memcmp(*(v186 + 88), __errnum, 0x40uLL);
              v154 = 0uLL;
              if (!v187)
              {
                break;
              }
            }

            v184 = *(v186 + 80);
            if (!v184)
            {
              goto LABEL_391;
            }
          }

          *(v186 + 272) = v152;
          goto LABEL_476;
        }

LABEL_391:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        do
        {
          if (!*(v174 + 4) && !*(v174 + 232))
          {
            v192 = *(v174 + 1);
            if (v192 == 3)
            {
              goto LABEL_402;
            }

            if (v192 == 2)
            {
              if (!v189 || *(v174 + 272) < *(v189 + 272))
              {
                v189 = v174;
              }

              ++v191;
              if (*(v174 + 2) == 2)
              {
LABEL_402:
                ++v190;
                v193 = *(v174 + 272);
                if (v193 + 30000 < v152 && (!v188 || v193 < *(v188 + 272)))
                {
                  v188 = v174;
                }
              }
            }
          }

          v174 = *(v174 + 64);
        }

        while (v174);
        if (*(*(v155 + 8) + 196) - 1 >= v191)
        {
          if (!v188)
          {
            goto LABEL_416;
          }

          if (maxlog >= 4)
          {
            coap_session_str(v188);
            coap_log_impl(4, "***%s: Incomplete session timed out\n", &coap_session_str_szSession);
          }

          v189 = v188;
        }

        coap_session_free(v189);
        v154 = 0uLL;
LABEL_416:
        v197 = *(v155 + 8);
        v198 = *(v197 + 200);
        if (!v198)
        {
          v198 = 100;
        }

        if (v190 > v198)
        {
          if (maxlog >= 7)
          {
            coap_log_impl(7, "Oustanding sessions in COAP_SESSION_STATE_HANDSHAKE too large.  New request ignored\n", 0.0, v340, v341, v343);
LABEL_479:
            v154 = 0uLL;
            goto LABEL_480;
          }

          goto LABEL_480;
        }

LABEL_422:
        v199 = *(v155 + 16);
        if (v199 == 2)
        {
          if (*(&v383 + 1) <= 0xDuLL)
          {
            if (maxlog >= 7)
            {
              coap_log_impl(7, "coap_dtls_hello: ContentType %d Short Packet (%zu < %d) dropped\n", 0.0);
              goto LABEL_479;
            }

LABEL_480:
            v156 = *(v155 + 28);
            v150 = v356;
            goto LABEL_481;
          }

          if (v384 == 21)
          {
            goto LABEL_480;
          }

          if (v384 != 22 || BYTE13(v384) != 1)
          {
            if (maxlog >= 7)
            {
              coap_log_impl(7, "coap_dtls_hello: ContentType %d Handshake %d dropped\n", 0.0);
              goto LABEL_479;
            }

            goto LABEL_480;
          }

          v199 = 2;
        }

        v202 = coap_make_session(v199, 2, 0, v382, __errnum, v383, v197, v155);
        v154 = 0uLL;
        if (v202)
        {
          v186 = v202;
          *(v202 + 34) = v152;
          v203 = *(v155 + 16);
          if (v203 == 2)
          {
            v202[1] = 3;
          }

          else if (v203 == 1)
          {
            v202[2] = 4;
          }

          v204 = 64;
          v205 = 104;
          v206 = -1640531527;
          v207 = -1640531527;
          v208 = -17973521;
          do
          {
            v209 = *&v202[v205 + 4] + v206;
            v210 = *&v202[v205 + 8] + v208;
            v211 = (*&v202[v205] + v207 - (v209 + v210)) ^ (v210 >> 13);
            v212 = (v209 - v210 - v211) ^ (v211 << 8);
            v213 = (v210 - v211 - v212) ^ (v212 >> 13);
            v214 = (v211 - v212 - v213) ^ (v213 >> 12);
            v215 = (v212 - v213 - v214) ^ (v214 << 16);
            v216 = (v213 - v214 - v215) ^ (v215 >> 5);
            v207 = (v214 - v215 - v216) ^ (v216 >> 3);
            v206 = (v215 - v216 - v207) ^ (v207 << 10);
            v208 = (v216 - v207 - v206) ^ (v206 >> 15);
            v204 -= 12;
            v205 += 12;
          }

          while (v204 > 0xB);
          v217 = (v207 + (v202[167] << 24) + (v202[166] << 16) + (v202[165] << 8) + v202[164] + -64 - v208 - v206) ^ ((v208 + 64) >> 13);
          v218 = (v206 + -64 - v208 - v217) ^ (v217 << 8);
          v219 = (v208 + 64 - v217 - v218) ^ (v218 >> 13);
          v220 = (v217 - v218 - v219) ^ (v219 >> 12);
          v221 = (v218 - v219 - v220) ^ (v220 << 16);
          v222 = (v219 - v220 - v221) ^ (v221 >> 5);
          v223 = (v220 - v221 - v222) ^ (v222 >> 3);
          v224 = (v222 - v223 - ((v221 - v222 - v223) ^ (v223 << 10))) ^ (((v221 - v222 - v223) ^ (v223 << 10)) >> 15);
          v225 = (v202 + 48);
          *(v202 + 11) = v202 + 104;
          *(v202 + 24) = 64;
          *(v202 + 25) = v224;
          v226 = *(v155 + 80);
          if (v226)
          {
            v227 = *(v226 + 48);
            *(v202 + 6) = v227;
            *(v202 + 8) = 0;
            v228 = *(v227 + 24);
            *(v202 + 7) = v228 - *(v227 + 32);
            *(v228 + 16) = v202;
            *(v227 + 24) = v225;
          }

          else
          {
            *(v202 + 7) = 0;
            *(v202 + 8) = 0;
            *(v155 + 80) = v202;
            v229 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
            *(*(v155 + 80) + 48) = v229;
            if (!v229)
            {
              goto LABEL_587;
            }

            v229[2] = 0u;
            v229[3] = 0u;
            *v229 = 0u;
            v229[1] = 0u;
            v230 = *(v155 + 80);
            v231 = *(v230 + 48);
            v231[1] = 0x500000020;
            v231[3] = v230 + 48;
            v231[4] = 48;
            v232 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL);
            **(*(v155 + 80) + 48) = v232;
            if (!v232)
            {
LABEL_587:
              exit(-1);
            }

            v232[30] = 0u;
            v232[31] = 0u;
            v232[28] = 0u;
            v232[29] = 0u;
            v232[26] = 0u;
            v232[27] = 0u;
            v232[24] = 0u;
            v232[25] = 0u;
            v232[22] = 0u;
            v232[23] = 0u;
            v232[20] = 0u;
            v232[21] = 0u;
            v232[18] = 0u;
            v232[19] = 0u;
            v232[16] = 0u;
            v232[17] = 0u;
            v232[14] = 0u;
            v232[15] = 0u;
            v232[12] = 0u;
            v232[13] = 0u;
            v232[10] = 0u;
            v232[11] = 0u;
            v232[8] = 0u;
            v232[9] = 0u;
            v232[6] = 0u;
            v232[7] = 0u;
            v232[4] = 0u;
            v232[5] = 0u;
            v232[2] = 0u;
            v232[3] = 0u;
            *v232 = 0u;
            v232[1] = 0u;
            v227 = *(*(v155 + 80) + 48);
            *(v227 + 56) = -1609490463;
          }

          ++*(v227 + 16);
          v233 = *v227 + 16 * ((*(v227 + 8) - 1) & v224);
          v234 = *(v233 + 8) + 1;
          *(v233 + 8) = v234;
          v235 = *v233;
          *(v186 + 72) = 0;
          *(v186 + 80) = v235;
          if (v235)
          {
            *(v235 + 24) = v225;
          }

          *v233 = v225;
          if (v234 >= 10 * *(v233 + 12) + 10 && !(*v225)[6].i32[1])
          {
            v236 = malloc_type_malloc(32 * (*v225)[1].u32[0], 0x1020040EDED9539uLL);
            if (!v236)
            {
              goto LABEL_587;
            }

            v237 = v236;
            bzero(v236, 32 * (*v225)[1].u32[0]);
            v238 = *v225;
            v239 = (*v225)[2].u32[0];
            v240 = (*v225)[1].u32[0];
            v241 = 2 * v240 - 1;
            if ((v241 & v239) != 0)
            {
              v242 = (v239 >> ((*v225)[1].i32[1] + 1)) + 1;
            }

            else
            {
              v242 = v239 >> ((*v225)[1].i32[1] + 1);
            }

            v238[5].i32[0] = v242;
            v238[5].i32[1] = 0;
            v243 = *v238;
            if (v240)
            {
              v244 = 0;
              for (j = 0; j != v240; ++j)
              {
                v246 = v243[2 * j];
                if (v246)
                {
                  do
                  {
                    v247 = *(v246 + 32);
                    v248 = &v237[16 * (*(v246 + 52) & v241)];
                    v249 = *(v248 + 2) + 1;
                    *(v248 + 2) = v249;
                    if (v249 > v242)
                    {
                      v238[5].i32[1] = ++v244;
                      *(v248 + 3) = v249 / v242;
                    }

                    *(v246 + 24) = 0;
                    v250 = *v248;
                    *(v246 + 32) = *v248;
                    if (v250)
                    {
                      *(v250 + 24) = v246;
                    }

                    *v248 = v246;
                    v246 = v247;
                  }

                  while (v247);
                }
              }
            }

            free(v243);
            v251 = *v225;
            v252 = (*v225)[1];
            v253.i32[0] = vadd_s32(v252, v252).u32[0];
            v253.i32[1] = vadd_s32(v252, 0x100000001).i32[1];
            v251[1] = v253;
            *v251 = v237;
            if (v251[5].i32[1] <= v251[2].i32[0] >> 1)
            {
              v251[6].i32[0] = 0;
            }

            else
            {
              v254 = v251[6].i32[0] + 1;
              v251[6].i32[0] = v254;
              if (v254 >= 2)
              {
                v251[6].i32[1] = 1;
              }
            }
          }

          if (maxlog < 7)
          {
            goto LABEL_478;
          }

          coap_session_str(v186);
          coap_log_impl(7, "***%s: new incoming session\n", &coap_session_str_szSession);
LABEL_476:
          if (maxlog >= 7)
          {
            coap_session_str(v186);
            coap_log_impl(7, "*  %s: received %zd bytes\n", &coap_session_str_szSession, v160);
          }

LABEL_478:
          coap_handle_dgram_for_proto(v356, v186, __errnum);
          goto LABEL_479;
        }

        goto LABEL_480;
      }

      v154 = 0uLL;
      if (maxlog < 4)
      {
        goto LABEL_480;
      }

      if (coap_print_addr(v155 + 48, &coap_endpoint_str_szEndpoint, 0x80uLL))
      {
        v195 = strlen(&coap_endpoint_str_szEndpoint);
        if (v195 > 121)
        {
LABEL_441:
          coap_log_impl(4, "*  %s: read failed\n", v194);
          goto LABEL_479;
        }

        v196 = (&coap_endpoint_str_szEndpoint + v195);
      }

      else
      {
        v196 = &coap_endpoint_str_szEndpoint;
      }

      v200 = *(v155 + 16);
      if (v200 == 2)
      {
        *(v196 + 2) = 83;
        v201 = 1280590880;
      }

      else if (v200 == 1)
      {
        *(v196 + 4) = 0;
        v201 = 1346655520;
      }

      else
      {
        *(v196 + 2) = 69;
        v201 = 1313820192;
      }

      *v196 = v201;
      goto LABEL_441;
    }

LABEL_540:
    v321 = *(v150 + 64);
    if (!v321)
    {
LABEL_572:
      if ((((((125 * (v152 - v350)) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4) == -1)
      {
        goto LABEL_573;
      }

      v43 = 1;
LABEL_579:
      __HMFActivityScopeLeave();

      goto LABEL_580;
    }

    while (1)
    {
      v322 = *(v321 + 8);
      v323 = *(v321 + 90);
      if ((v323 & 0x800) == 0)
      {
        if ((*(v321 + 90) & 0x100) != 0)
        {
          goto LABEL_560;
        }

        goto LABEL_543;
      }

      ++*(v321 + 1);
      __errnum[0] = 0;
      LODWORD(v373.msg_name) = 4;
      *(v321 + 90) = v323 & 0xF77F;
      if (getsockopt(*(v321 + 44), 0xFFFF, 4103, __errnum, &v373) == -1 && maxlog >= 4)
      {
        v325 = __error();
        v326 = strerror(*v325);
        coap_log_impl(4, "coap_socket_finish_connect_tcp: getsockopt: %s\n", v326);
      }

      if (__errnum[0])
      {
        break;
      }

      if (getsockname(*(v321 + 44), (v321 + 140), v321 + 34) == -1 && maxlog >= 4)
      {
        v331 = __error();
        v332 = strerror(*v331);
        coap_log_impl(4, "coap_socket_connect_tcp: getsockname: %s\n", v332);
      }

      if (getpeername(*(v321 + 44), (v321 + 108), v321 + 26) == -1 && maxlog >= 4)
      {
        v333 = __error();
        v334 = strerror(*v333);
        coap_log_impl(4, "coap_socket_connect_tcp: getpeername: %s\n", v334);
      }

      *(v321 + 34) = v152;
      coap_handle_event(*(v321 + 26), 4097, v321);
      v335 = *v321;
      if (v335 == 4)
      {
        v321[2] = 2;
        *(v321 + 27) = 0;
        coap_handle_event(*(v321 + 26), 512, v321);
        v329 = v321;
        v330 = 3;
LABEL_558:
        coap_session_disconnected(v329, v330);
        goto LABEL_559;
      }

      if (v335 == 3)
      {
        coap_session_send_csm(v321);
      }

LABEL_559:
      coap_session_release(v321);
      v323 = *(v321 + 90);
      if ((v323 & 0x100) != 0)
      {
LABEL_560:
        ++*(v321 + 1);
        coap_read_session();
        coap_session_release(v321);
        if ((*(v321 + 90) & 0x200) == 0)
        {
          goto LABEL_545;
        }

LABEL_544:
        ++*(v321 + 1);
        coap_write_session(v321, v152);
        coap_session_release(v321);
        goto LABEL_545;
      }

LABEL_543:
      if ((v323 & 0x200) != 0)
      {
        goto LABEL_544;
      }

LABEL_545:
      v321 = v322;
      if (!v322)
      {
        goto LABEL_572;
      }
    }

    if (maxlog >= 4)
    {
      v327 = strerror(__errnum[0]);
      coap_log_impl(4, "coap_socket_finish_connect_tcp: connect failed: %s\n", v327);
    }

    v328 = *(v321 + 44);
    if (v328 != -1)
    {
      *(v321 + 23) = 0;
      *(v321 + 24) = 0;
      close(v328);
      *(v321 + 44) = -1;
    }

    *(v321 + 90) = 0;
    coap_handle_event(*(v321 + 26), 4099, v321);
    v329 = v321;
    v330 = 1;
    goto LABEL_558;
  }

  v43 = 0;
LABEL_580:
  _Block_object_dispose(v359, 8);
  __HMFActivityScopeLeave();

  _Block_object_dispose(&v362, 8);
  v337 = *MEMORY[0x277D85DE8];
  return v43;
}

void __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [(HAP2CoAPIOThread *)*(a1 + 32) completedQueue];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_2;
  v56[3] = &unk_2786D5DC8;
  v56[4] = *v2;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v56];

  v4 = [(HAP2CoAPIOThread *)*v2 completedQueue];
  [v4 removeAllObjects];

  v5 = *v2;
  if (*v2)
  {
    v5 = v5[15];
  }

  v6 = v5;
  v7 = [v6 now];

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__20180;
  v54 = __Block_byref_object_dispose__20181;
  v55 = 0;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[17];
  }

  v9 = v8;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_3;
  v47[3] = &unk_2786D5DF0;
  v10 = v7;
  v48 = v10;
  v49 = &v50;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v47];

  v11 = v51;
  if (v51[5])
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = v12[17];
    }

    v13 = v12;
    [v13 removeObjectsAtIndexes:v11[5]];
  }

  v14 = MEMORY[0x277CBEB18];
  v15 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
  v16 = [v14 arrayWithArray:v15];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = [(HAP2CoAPIOThread *)*(a1 + 32) queue];
  [v19 removeAllObjects];

  v20 = *(a1 + 32);
  if (v20)
  {
    v20 = v20[10];
  }

  v21 = v20;
  if (![v21 count])
  {
    goto LABEL_27;
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v22 = v22[16];
  }

  v23 = v22;
  v24 = [v23 count];
  v25 = *(a1 + 32);
  if (!v25)
  {

LABEL_27:
    goto LABEL_28;
  }

  v26 = v24 < *(v25 + 144);

  if (v26)
  {
    v27 = *(a1 + 32);
    if (v27)
    {
      v27 = v27[10];
    }

    v28 = v27;
    v29 = [v28 sortedArrayUsingSelector:sel_compare_];

    v30 = *(a1 + 32);
    if (v30)
    {
      v31 = v30[18];
      v30 = v30[16];
    }

    else
    {
      v31 = 0;
    }

    v32 = v30;
    v33 = [v32 count];

    v34 = [v29 count];
    if (v31 - v33 >= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = v31 - v33;
    }

    v36 = [v29 subarrayWithRange:{0, v35}];
    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v36];
    v37 = *(a1 + 32);
    if (v37)
    {
      v37 = v37[10];
    }

    v38 = v37;
    [v38 removeObjectsInArray:v36];

    goto LABEL_36;
  }

LABEL_28:
  v39 = *(a1 + 32);
  if (v39)
  {
    v39 = v39[16];
  }

  v40 = v39;
  v41 = [v40 count];
  v42 = *(a1 + 32);
  if (v42)
  {
    v42 = *(v42 + 144);
  }

  v43 = v41 == v42;

  if (v43)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v44 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a1 + 32);
      if (v46)
      {
        v46 = *(v46 + 144);
      }

      *buf = 134217984;
      v58 = v46;
      _os_log_debug_impl(&dword_22AADC000, v44, OS_LOG_TYPE_DEBUG, "Coap IO all %lu sliding window slots in use", buf, 0xCu);
    }
  }

LABEL_36:

  _Block_object_dispose(&v50, 8);
  v45 = *MEMORY[0x277D85DE8];
}

void __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_62(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(*(*(a1 + 40) + 8) + 40) end];
  if (v6)
  {
    v3 = v6[5];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  [*(*(*(a1 + 40) + 8) + 40) begin];
  if (([*(a1 + 32) _processQueueEntry:v6 context:*(a1 + 48)] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) end];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

- (id)completedQueue
{
  if (a1)
  {
    v2 = a1;
    [a1[13] assertOwner];
    a1 = v2[11];
    v1 = vars8;
  }

  return a1;
}

void __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(consumer = %@)", v3];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 128);
  }

  else
  {
    v6 = 0;
  }

  v10 = v4;
  v7 = [v6 filteredSetUsingPredicate:v4];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 128);
  }

  else
  {
    v9 = 0;
  }

  [v9 minusSet:v7];
}

uint64_t __45__HAP2CoAPIOThread__processQueueWithContext___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 reapSession:*(a1 + 32)];
  if (result)
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (v8)
    {

      return [v8 addIndex:a3];
    }

    else
    {
      v9 = [MEMORY[0x277CCAB58] indexSetWithIndex:a3];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      return MEMORY[0x2821F96F8]();
    }
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (coap_context_t)_createContext
{
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  coap_startup();
  v3 = malloc_type_malloc(0xE0uLL, 0x5CBEF798uLL);
  if (!v3)
  {
    if ((maxlog & 0x80000000) == 0)
    {
      coap_log_impl(0, "coap_init: malloc: failed\n");
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v25 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "Coap IO thread failed to create context", buf, 2u);
    }

    return 0;
  }

  v4 = v3;
  *&v3->var15 = 0u;
  *&v3->var17 = 0u;
  *&v3->var23 = 0u;
  *&v3->var27 = 0u;
  *&v3->var19 = 0u;
  *&v3->var21 = 0u;
  *&v3->var11 = 0u;
  *&v3->var13 = 0u;
  *&v3->var7 = 0u;
  *&v3->var9 = 0u;
  *&v3->var3 = 0u;
  *&v3->var5 = 0u;
  *v3->var0 = 0u;
  *&v3->var1 = 0u;
  v3->var27 = 30;
  v3->var13 = coap_network_send;
  v3->var14 = coap_network_read;
  v3->var15 = coap_get_session_client_psk;
  v3->var16 = coap_get_context_server_psk;
  v3->var17 = coap_get_context_server_hint;
  if (coap_make_str_const_ofs == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = coap_make_str_const_ofs + 1;
  }

  coap_make_str_const_ofs = v5;
  v6 = (&coap_make_str_const_var + 16 * v5);
  *v6 = 0;
  v6[1] = "";
  v7 = malloc_type_malloc(0xA0uLL, 0x5CBEF798uLL);
  if (!v7)
  {
    if (maxlog >= 7)
    {
      coap_log_impl(7, "coap_resource_init: no memory left\n");
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v26 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
    {
      *v87 = 0;
      _os_log_error_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "Coap IO thread failed to create request resource", v87, 2u);
    }

    coap_free_context(v4);
    return 0;
  }

  v8 = v7;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  *v7 = 0u;
  v7[1] = 0u;
  v11 = v6;
  v9 = *v6;
  v10 = v11[1];
  v12 = coap_new_string(v9);
  if (v12)
  {
    v13 = v12;
    memcpy(v12[1], v10, v9);
    *v13 = v9;
    *(v8 + 17) = v13;
  }

  *(v8 + 36) = 0;
  v4->var28 = self;
  v4->var14 = coapNetworkRead;
  v4->var8 = coapResponseHandler;
  v4->var12 = coapEventHandler;
  v4->var9 = coapNackHandler;
  v4->var11 = coapPongHandler;
  *(v8 + 3) = coapRequestHandler;
  if ((*v8 & 0x10) != 0)
  {
    var2 = v4->var2;
    if (var2)
    {
      coap_free_resource(var2);
    }

    v4->var2 = v8;
    return v4;
  }

  v14 = *(v8 + 17);
  v15 = *v14;
  v16 = v14[1];
  resource_from_uri_path = coap_get_resource_from_uri_path(v4, *v14, v16);
  if (resource_from_uri_path)
  {
    v18 = resource_from_uri_path;
    if (maxlog >= 4)
    {
      coap_log_impl(4, "coap_add_resource: Duplicate uri_path '%*.*s', old resource deleted\n", v15, v15, v16);
    }

    if ((*v18 & 0x10) != 0 && (v19 = v4->var2, v19 == v18))
    {
      coap_free_resource(v19);
      v4->var2 = 0;
    }

    else
    {
      v20 = *(v18 + 72);
      if (v20 || *(v18 + 80))
      {
        p_var1 = &v4->var1;
        var1 = v4->var1;
        var0 = var1->var6.var0;
        if (v18 + 64 == *(var0 + 3))
        {
          *(var0 + 3) = &v20[*(var0 + 4)];
        }

        v24 = *(v18 + 80);
        if (v20)
        {
          p_var1 = &v20[*(var0 + 4) + 16];
        }

        else
        {
          var1 = *(v18 + 80);
        }

        *p_var1 = v24;
        v28 = var1->var6.var0;
        if (v24)
        {
          *(v24->var5 + *(v28 + 4)) = v20;
        }

        v29 = *v28 + 16 * ((*(v28 + 2) - 1) & *(v18 + 116));
        --*(v29 + 8);
        v30 = *(v18 + 96);
        if (*v29 == v18 + 64)
        {
          *v29 = v30;
        }

        v31 = *(v18 + 88);
        if (v31)
        {
          *(v31 + 32) = v30;
        }

        if (v30)
        {
          *(v30 + 24) = v31;
        }

        --*(v28 + 4);
      }

      else
      {
        free(*v4->var1->var6.var0);
        free(v4->var1->var6.var0);
        v4->var1 = 0;
      }

      coap_free_resource(v18);
    }

    v32 = *(v8 + 17);
    v15 = *v32;
    v16 = v32[1];
  }

  v33 = -17973521;
  v34 = -1640531527;
  if (v15 < 0xC)
  {
    v37 = -1640531527;
    v36 = v15;
    v35 = v16;
  }

  else
  {
    v35 = v16;
    v36 = v15;
    v37 = -1640531527;
    do
    {
      v38 = *(v35 + 1) + v34;
      v39 = *(v35 + 2) + v33;
      v40 = (*v35 + v37 - (v38 + v39)) ^ (v39 >> 13);
      v41 = (v38 - v39 - v40) ^ (v40 << 8);
      v42 = (v39 - v40 - v41) ^ (v41 >> 13);
      v43 = (v40 - v41 - v42) ^ (v42 >> 12);
      v44 = (v41 - v42 - v43) ^ (v43 << 16);
      v45 = (v42 - v43 - v44) ^ (v44 >> 5);
      v37 = (v43 - v44 - v45) ^ (v45 >> 3);
      v34 = (v44 - v45 - v37) ^ (v37 << 10);
      v33 = (v45 - v37 - v34) ^ (v34 >> 15);
      v35 += 12;
      v36 -= 12;
    }

    while (v36 > 0xB);
  }

  v46 = v33 + v15;
  if (v36 > 5)
  {
    if (v36 > 8)
    {
      if (v36 != 9)
      {
        if (v36 != 10)
        {
          v46 += v35[10] << 24;
        }

        v46 += v35[9] << 16;
      }

      v46 += v35[8] << 8;
    }

    else
    {
      if (v36 == 6)
      {
LABEL_70:
        v34 += v35[5] << 8;
        goto LABEL_71;
      }

      if (v36 == 7)
      {
LABEL_69:
        v34 += v35[6] << 16;
        goto LABEL_70;
      }
    }

    v34 += v35[7] << 24;
    goto LABEL_69;
  }

  if (v36 > 2)
  {
    if (v36 == 3)
    {
LABEL_73:
      v37 += v35[2] << 16;
      goto LABEL_74;
    }

    if (v36 == 4)
    {
LABEL_72:
      v37 += v35[3] << 24;
      goto LABEL_73;
    }

LABEL_71:
    v34 += v35[4];
    goto LABEL_72;
  }

  if (v36 == 1)
  {
    goto LABEL_75;
  }

  if (v36 != 2)
  {
    goto LABEL_76;
  }

LABEL_74:
  v37 += v35[1] << 8;
LABEL_75:
  v37 += *v35;
LABEL_76:
  v47 = (v37 - v34 - v46) ^ (v46 >> 13);
  v48 = (v34 - v46 - v47) ^ (v47 << 8);
  v49 = (v46 - v47 - v48) ^ (v48 >> 13);
  v50 = (v47 - v48 - v49) ^ (v49 >> 12);
  v51 = (v48 - v49 - v50) ^ (v50 << 16);
  v52 = (v49 - v50 - v51) ^ (v51 >> 5);
  v53 = (v50 - v51 - v52) ^ (v52 >> 3);
  v54 = (v52 - v53 - ((v51 - v52 - v53) ^ (v53 << 10))) ^ (((v51 - v52 - v53) ^ (v53 << 10)) >> 15);
  v55 = (v8 + 4);
  *(v8 + 13) = v16;
  *(v8 + 28) = v15;
  *(v8 + 29) = v54;
  v56 = v4->var1;
  if (v56)
  {
    v57 = v56->var6.var0;
    *(v8 + 10) = 0;
    v58 = *(v57 + 3);
    v59 = v58 - *(v57 + 4);
    *(v8 + 8) = v57;
    *(v8 + 9) = v59;
    *(v58 + 16) = v8;
    *(v57 + 3) = v55;
  }

  else
  {
    *(v8 + 9) = 0;
    *(v8 + 10) = 0;
    v4->var1 = v8;
    v60 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
    v4->var1->var6.var0 = v60;
    if (!v60)
    {
      goto LABEL_108;
    }

    *(v60 + 2) = 0u;
    *(v60 + 3) = 0u;
    *v60 = 0u;
    *(v60 + 1) = 0u;
    v61 = v4->var1;
    v62 = v61->var6.var0;
    *(v62 + 1) = 0x500000020;
    *(v62 + 3) = &v61->var6;
    *(v62 + 4) = 64;
    v63 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL);
    *v4->var1->var6.var0 = v63;
    if (!v63)
    {
      goto LABEL_108;
    }

    v63[30] = 0u;
    v63[31] = 0u;
    v63[28] = 0u;
    v63[29] = 0u;
    v63[26] = 0u;
    v63[27] = 0u;
    v63[24] = 0u;
    v63[25] = 0u;
    v63[22] = 0u;
    v63[23] = 0u;
    v63[20] = 0u;
    v63[21] = 0u;
    v63[18] = 0u;
    v63[19] = 0u;
    v63[16] = 0u;
    v63[17] = 0u;
    v63[14] = 0u;
    v63[15] = 0u;
    v63[12] = 0u;
    v63[13] = 0u;
    v63[10] = 0u;
    v63[11] = 0u;
    v63[8] = 0u;
    v63[9] = 0u;
    v63[6] = 0u;
    v63[7] = 0u;
    v63[4] = 0u;
    v63[5] = 0u;
    v63[2] = 0u;
    v63[3] = 0u;
    *v63 = 0u;
    v63[1] = 0u;
    v57 = v4->var1->var6.var0;
    *(v57 + 14) = -1609490463;
  }

  ++*(v57 + 4);
  v64 = *v57 + 16 * ((*(v57 + 2) - 1) & v54);
  v65 = *(v64 + 8) + 1;
  *(v64 + 8) = v65;
  v66 = *v64;
  *(v8 + 11) = 0;
  *(v8 + 12) = v66;
  if (v66)
  {
    *(v66 + 24) = v55;
  }

  *v64 = v55;
  if (v65 >= 10 * *(v64 + 12) + 10 && !(*v55)[6].i32[1])
  {
    v67 = malloc_type_malloc(32 * (*v55)[1].u32[0], 0x1020040EDED9539uLL);
    if (v67)
    {
      v68 = v67;
      bzero(v67, 32 * (*v55)[1].u32[0]);
      v69 = *v55;
      v70 = (*v55)[2].u32[0];
      v71 = (*v55)[1].u32[0];
      v72 = 2 * v71 - 1;
      if ((v72 & v70) != 0)
      {
        v73 = (v70 >> ((*v55)[1].i32[1] + 1)) + 1;
      }

      else
      {
        v73 = v70 >> ((*v55)[1].i32[1] + 1);
      }

      v69[5].i32[0] = v73;
      v69[5].i32[1] = 0;
      v74 = *v69;
      if (v71)
      {
        v75 = 0;
        for (i = 0; i != v71; ++i)
        {
          v77 = v74[2 * i];
          if (v77)
          {
            do
            {
              v78 = *(v77 + 32);
              v79 = &v68[16 * (*(v77 + 52) & v72)];
              v80 = *(v79 + 2) + 1;
              *(v79 + 2) = v80;
              if (v80 > v73)
              {
                v69[5].i32[1] = ++v75;
                *(v79 + 3) = v80 / v73;
              }

              v81 = *v79;
              *(v77 + 24) = 0;
              *(v77 + 32) = v81;
              if (v81)
              {
                *(v81 + 24) = v77;
              }

              *v79 = v77;
              v77 = v78;
            }

            while (v78);
          }
        }
      }

      free(v74);
      v82 = *v55;
      v83 = (*v55)[1];
      v84.i32[0] = vadd_s32(v83, v83).u32[0];
      v84.i32[1] = vadd_s32(v83, 0x100000001).i32[1];
      v82[1] = v84;
      *v82 = v68;
      if (v82[5].i32[1] <= v82[2].i32[0] >> 1)
      {
        v82[6].i32[0] = 0;
      }

      else
      {
        v85 = v82[6].i32[0] + 1;
        v82[6].i32[0] = v85;
        if (v85 >= 2)
        {
          v82[6].i32[1] = 1;
        }
      }

      return v4;
    }

LABEL_108:
    exit(-1);
  }

  return v4;
}

- (void)_enqueue:(id)a3
{
  v4 = a3;
  if (self)
  {
    lock = self->_lock;
  }

  else
  {
    lock = 0;
  }

  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __29__HAP2CoAPIOThread__enqueue___block_invoke;
  v10 = &unk_2786D7050;
  v11 = v4;
  v12 = self;
  v6 = v4;
  [(HAP2Lock *)lock performBlock:&v7];
  [(HAP2CoAPIOThread *)self _wakeUpThread:v7];
}

void __29__HAP2CoAPIOThread__enqueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *(v2 + 16);
  if (v3 != 8)
  {
    if (v3 == 16)
    {
      v4 = [(HAP2CoAPIOThread *)*(a1 + 40) completedQueue];
LABEL_6:
      v7 = v4;
      [v4 addObject:*(a1 + 32)];

      return;
    }

LABEL_5:
    v4 = [(HAP2CoAPIOThread *)*(a1 + 40) queue];
    goto LABEL_6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 80);
  }

  else
  {
    v6 = 0;
  }

  [v6 addObject:?];
}

- (void)_wakeUpThread
{
  v9 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v3 = self ? self->_wakeupPipeRead : 0;
    if (write(v3, "a", 1uLL) != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v4 = hap2Log_coap;
      if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        v6 = v4;
        v7 = *__error();
        v8[0] = 67109120;
        v8[1] = v7;
        _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "Error attempting to wake up thread %d", v8, 8u);
      }

      break;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)queueSessionCompletionForConsumer:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Session Block Complete", v7];

  v10 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  v9 = [[HAP2CoAPIOThreadQueueEntry alloc] initWithConsumer:v4 operationType:0x10 sessionBlock:0 timeout:v10 activity:0.0];
  [(HAP2CoAPIOThread *)self _enqueue:v9];

  __HMFActivityScopeLeave();
}

- (void)queueSessionBlockForConsumer:(id)a3 sessionBlock:(id)a4 withTimeout:(double)a5 requiresCompletion:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v12 stringWithFormat:@"%@ Session Block", v14];

  v16 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v15];
  v17 = [HAP2CoAPIOThreadQueueEntry alloc];
  if (v6)
  {
    v18 = 8;
  }

  else
  {
    v18 = 4;
  }

  v19 = [(HAP2CoAPIOThreadQueueEntry *)&v17->super.isa initWithConsumer:v10 operationType:v18 sessionBlock:v11 timeout:v16 activity:a5];
  [(HAP2CoAPIOThread *)self _enqueue:v19];

  __HMFActivityScopeLeave();
}

- (void)unregisterConsumer:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Unregister", v7];

  v10 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  v9 = [[HAP2CoAPIOThreadQueueEntry alloc] initWithConsumer:v4 operationType:2 sessionBlock:0 timeout:v10 activity:0.0];
  [(HAP2CoAPIOThread *)self _enqueue:v9];

  __HMFActivityScopeLeave();
}

- (void)registerConsumer:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Register", v7];

  v10 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  v9 = [[HAP2CoAPIOThreadQueueEntry alloc] initWithConsumer:v4 operationType:1 sessionBlock:0 timeout:v10 activity:0.0];
  [(HAP2CoAPIOThread *)self _enqueue:v9];

  __HMFActivityScopeLeave();
}

- (void)main
{
  [(HAP2CoAPIOThread *)self _assertIsCurrentThread];
  v3 = objc_autoreleasePoolPush();
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "Coap IO thread started", buf, 2u);
  }

  v5 = [(HAP2CoAPIOThread *)&self->super.super.isa delegate];
  [v5 didStart];

  log_handler = coapLogHandler;
  coap_set_log_level(7);
  coap_startup();
  v6 = [(HAP2CoAPIOThread *)self _createContext];
  do
  {
    if (([(HAP2CoAPIOThread *)self isCancelled]& 1) != 0)
    {
      break;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = [(HAP2CoAPIOThread *)self _processQueueWithContext:v6];
    objc_autoreleasePoolPop(v7);
  }

  while (v8);
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v9 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_debug_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "Coap IO thread exited main run loop", v13, 2u);
  }

  [(HAP2CoAPIOThread *)self _processQueueWithContext:0];
  if (v6)
  {
    [(HAP2CoAPIOThread *)self _cleanupWithContext:v6];
  }

  v10 = [(HAP2CoAPIOThread *)&self->super.super.isa delegate];
  [v10 didStop];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v11 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "Coap IO thread stopped", v12, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 14);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = HAP2CoAPIOThread;
  [(HAP2CoAPIOThread *)&v3 cancel];
  [(HAP2CoAPIOThread *)self _wakeUpThread];
}

- (void)dealloc
{
  v3 = *&self->super._bytes[44];
  if (v3 != -1)
  {
    close(v3);
  }

  wakeupPipeRead = self->_wakeupPipeRead;
  if (wakeupPipeRead != -1)
  {
    close(wakeupPipeRead);
  }

  v5.receiver = self;
  v5.super_class = HAP2CoAPIOThread;
  [(HAP2CoAPIOThread *)&v5 dealloc];
}

- (HAP2CoAPIOThread)initWithQualityOfService:(int64_t)a3 delegate:(id)a4 dateProvider:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v47.receiver = self;
  v47.super_class = HAP2CoAPIOThread;
  v10 = [(HAP2CoAPIOThread *)&v47 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    v12 = [HAP2Lock lockWithName:@"HAP2CoAPIOThread.lock"];
    lock = v11->_lock;
    v11->_lock = v12;

    objc_storeStrong(&v11->_dateProvider, a5);
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    consumerInfo = v11->_consumerInfo;
    v11->_consumerInfo = v14;

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    queue = v11->_queue;
    v11->_queue = v16;

    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    messageQueue = v11->_messageQueue;
    v11->_messageQueue = v18;

    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    completedQueue = v11->_completedQueue;
    v11->_completedQueue = v20;

    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    zombieSessions = v11->_zombieSessions;
    v11->_zombieSessions = v22;

    v24 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v25 = [v24 preferenceForKey:@"COAPDefaultFlowControlMessageCount"];

    v26 = [v25 numberValue];
    v11->_pendingMessagesThreshold = [v26 unsignedIntegerValue];

    v27 = [MEMORY[0x277CBEB58] setWithCapacity:v11->_pendingMessagesThreshold];
    pendingMessages = v11->_pendingMessages;
    v11->_pendingMessages = v27;

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v29 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO))
    {
      pendingMessagesThreshold = v11->_pendingMessagesThreshold;
      *buf = 134217984;
      v51 = pendingMessagesThreshold;
      _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_INFO, "Using a sliding window count of %lu", buf, 0xCu);
    }

    v31 = pipe(buf);
    *&v11->super._bytes[44] = *buf;
    v11->_wakeupPipeRead = v51;
    if (v31)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v32 = hap2Log_coap;
      if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v33 = v32;
      v34 = *__error();
      *v48 = 67109120;
      v49 = v34;
      v35 = "Error opening pipe with code %d";
LABEL_23:
      _os_log_error_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, v35, v48, 8u);

LABEL_24:
      *&v11->super._bytes[44] = -1;
      v11->_wakeupPipeRead = -1;

      v40 = 0;
      goto LABEL_25;
    }

    if (!fd_set_flag(*&v11->super._bytes[44]))
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v41 = hap2Log_coap;
      if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v33 = v41;
      v42 = *__error();
      *v48 = 67109120;
      v49 = v42;
      v35 = "Error setting O_NONBLOCK | O_CLOEXEC flag on read pipe  %d";
      goto LABEL_23;
    }

    if (!fd_set_flag(v11->_wakeupPipeRead))
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v43 = hap2Log_coap;
      if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v33 = v43;
      v44 = *__error();
      *v48 = 67109120;
      v49 = v44;
      v35 = "Error setting O_NONBLOCK | O_CLOEXEC flag on write pipe  %d";
      goto LABEL_23;
    }

    v36 = MEMORY[0x277CCACA8];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v36 stringWithFormat:@"com.apple.CoreHAP.%@", v38];
    [(HAP2CoAPIOThread *)v11 setName:v39];

    [(HAP2CoAPIOThread *)v11 setQualityOfService:a3];
  }

  v40 = v11;
LABEL_25:

  v45 = *MEMORY[0x277D85DE8];
  return v40;
}

- (HAP2CoAPIOThread)initWithQualityOfService:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [(HAP2CoAPIOThread *)self initWithQualityOfService:a3 delegate:v6 dateProvider:v7];

  return v8;
}

@end