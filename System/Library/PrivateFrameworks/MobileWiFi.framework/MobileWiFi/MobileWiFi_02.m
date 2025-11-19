uint64_t wifi_manager_set_background_scan_networks(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BDD0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_bgscan_cache_state(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BDE0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_scan_backoff_report(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69757;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_test_params(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BDF0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_copy_test_params(int a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16[16] = 0x1AAAAAAAALL;
  *v20 = -1431655766;
  *&v20[4] = v8;
  *v16 = v8;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  *v20 = *MEMORY[0x277D85EF8];
  *&v20[8] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v16[4] = a1;
  *&v16[8] = special_reply_port;
  v15 = -2147478253;
  *&v16[12] = 0x1107F00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    v10 = *&v16[8];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(&v15, 3162115, 0x38u, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (*&v16[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&v16[16] == 69859)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if (*v16 == 36)
          {
            v12 = 4294966996;
            if (HIDWORD(v17))
            {
              if (*&v16[4])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = HIDWORD(v17);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_24;
        }

        v12 = 4294966996;
        if (*&v16[20] == 1 && *v16 == 56 && HIBYTE(v18) == 1)
        {
          v13 = v19;
          if (v19 == *&v20[8])
          {
            v12 = 0;
            *a4 = v17;
            *a5 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  return v12;
}

uint64_t wifi_manager_copy_version_info(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1108000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69860)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_copy_client_names(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1108100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69861)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_merge_known_networks(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a2;
  v16 = 27918592;
  v17 = a3;
  v18 = *MEMORY[0x277D85EF8];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 0xAAAAAAAA80001513;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x1108200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 69862)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t wifi_device_gas_start_async(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int *a8)
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = 3;
  v19 = a2;
  v20 = 27918592;
  v21 = a3;
  v22 = a4;
  v23 = 27918592;
  v24 = a5;
  v25 = a6;
  v26 = 27918592;
  v27 = a7;
  v28 = *MEMORY[0x277D85EF8];
  v29 = a3;
  v30 = a5;
  v31 = a7;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1108300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x60u, 0x30u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 69863)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v13 = HIDWORD(v19);
              if (!HIDWORD(v19))
              {
                *a8 = v20;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v14 = 1;
            }

            else
            {
              v14 = HIDWORD(v19) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v19);
            }

            goto LABEL_23;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t wifi_device_set_rangeable(mach_port_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 2;
  v18 = a2;
  v19 = 27918592;
  v20 = a3;
  v21 = a5;
  v22 = 27918592;
  v23 = a6;
  v24 = *MEMORY[0x277D85EF8];
  v25 = a3;
  v26 = a4;
  v27 = a6;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1108400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&msg, 3162115, 0x50u, 0x30u, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (msg.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (msg.msgh_id == 69864)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v12 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a7 = v19;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = HIDWORD(v18) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = HIDWORD(v18);
            }

            goto LABEL_23;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t wifi_device_set_ranging_identifier(mach_port_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 2;
  v18 = a2;
  v19 = 27918592;
  v20 = a3;
  v21 = a5;
  v22 = 27918592;
  v23 = a6;
  v24 = *MEMORY[0x277D85EF8];
  v25 = a3;
  v26 = a4;
  v27 = a6;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1108500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&msg, 3162115, 0x50u, 0x30u, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (msg.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (msg.msgh_id == 69865)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v12 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a7 = v19;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = HIDWORD(v18) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = HIDWORD(v18);
            }

            goto LABEL_23;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t wifi_device_ranging_start_async(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 2;
  v18 = a2;
  v19 = 27918592;
  v20 = a3;
  v21 = a4;
  v22 = 27918592;
  v23 = a5;
  v24 = *MEMORY[0x277D85EF8];
  v25 = a3;
  v26 = a5;
  v27 = a6;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1108600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&msg, 3162115, 0x50u, 0x30u, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (msg.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (msg.msgh_id == 69866)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v12 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a7 = v19;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = HIDWORD(v18) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = HIDWORD(v18);
            }

            goto LABEL_23;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t wifi_device_debug_command(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7, _DWORD *a8)
{
  v19 = 2;
  v20 = a2;
  v21 = 27918592;
  v22 = a3;
  v23 = a4;
  v24 = 27918592;
  v25 = a5;
  v26 = *MEMORY[0x277D85EF8];
  v27 = a3;
  v28 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v18.msgh_bits = 0xAAAAAAAA80001513;
  v18.msgh_remote_port = a1;
  v18.msgh_local_port = special_reply_port;
  *&v18.msgh_voucher_port = 0x1108700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v18);
    msgh_local_port = v18.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&v18, 3162115, 0x4Cu, 0x44u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v18.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (v18.msgh_id == 69867)
      {
        if ((v18.msgh_bits & 0x80000000) == 0)
        {
          if (v18.msgh_size == 36)
          {
            v15 = 4294966996;
            if (HIDWORD(v20))
            {
              if (v18.msgh_remote_port)
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = HIDWORD(v20);
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_24;
        }

        v15 = 4294966996;
        if (v19 == 1 && *&v18.msgh_size == 60 && HIBYTE(v21) == 1)
        {
          v16 = v22;
          if (v22 == v24)
          {
            v15 = 0;
            *a6 = v20;
            *a7 = v16;
            *a8 = v25;
            return v15;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  return v15;
}

uint64_t wifi_device_copy_roam_stats(int a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16[16] = 0x1AAAAAAAALL;
  *v20 = -1431655766;
  *&v20[4] = v8;
  *v16 = v8;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  *v20 = *MEMORY[0x277D85EF8];
  *&v20[8] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v16[4] = a1;
  *&v16[8] = special_reply_port;
  v15 = -2147478253;
  *&v16[12] = 0x1108800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    v10 = *&v16[8];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(&v15, 3162115, 0x38u, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (*&v16[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&v16[16] == 69868)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if (*v16 == 36)
          {
            v12 = 4294966996;
            if (HIDWORD(v17))
            {
              if (*&v16[4])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = HIDWORD(v17);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_24;
        }

        v12 = 4294966996;
        if (*&v16[20] == 1 && *v16 == 56 && HIBYTE(v18) == 1)
        {
          v13 = v19;
          if (v19 == *&v20[8])
          {
            v12 = 0;
            *a4 = v17;
            *a5 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  return v12;
}

uint64_t wifi_device_set_trgdisc_params(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = 2;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  v20 = a4;
  v21 = 27918592;
  v22 = a5;
  v23 = *MEMORY[0x277D85EF8];
  v24 = a3;
  v25 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1108900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&msg, 3162115, 0x4Cu, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (msg.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (msg.msgh_id == 69869)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v11 = HIDWORD(v17);
              if (!HIDWORD(v17))
              {
                *a6 = v18;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v12 = 1;
            }

            else
            {
              v12 = HIDWORD(v17) == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = HIDWORD(v17);
            }

            goto LABEL_23;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t wifi_device_copy_interface_state_info(mach_port_t a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5, unsigned int *a6, _DWORD *a7)
{
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  msg.msgh_id = -1431655766;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = v11;
  *&msg.msgh_size = v11;
  v19 = 1;
  v20 = a2;
  v21 = 27918592;
  v22 = a3;
  v23 = *MEMORY[0x277D85EF8];
  *&v24 = __PAIR64__(a4, a3);
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x1108A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&msg, 3162115, 0x3Cu, 0x44u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 69870)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v15 = 4294966996;
            if (HIDWORD(v20))
            {
              if (msg.msgh_remote_port)
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = HIDWORD(v20);
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_25;
        }

        v15 = 4294966996;
        if (v19 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
        {
          v16 = v22;
          if (v22 == v24)
          {
            v15 = 0;
            *a5 = v20;
            *a6 = v16;
            *a7 = DWORD1(v24);
            return v15;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  return v15;
}

uint64_t wifi_manager_dump_logs(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BE00;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_add_policy(int a1, uint64_t a2, int a3, int a4)
{
  v8 = a2;
  v9 = 27918592;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  v13 = a4;
  v5 = 0xAAAAAAAA80000013;
  v6 = a1;
  v7 = xmmword_25A14BE10;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v5);
  }

  return mach_msg(&v5, 2097153, 0x3Cu, 0, 0, 0, 0);
}

uint64_t wifi_manager_remove_policy(int a1, uint64_t a2, int a3, int a4)
{
  v8 = a2;
  v9 = 27918592;
  v10 = a3;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a3;
  v13 = a4;
  v5 = 0xAAAAAAAA80000013;
  v6 = a1;
  v7 = xmmword_25A14BE20;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v5);
  }

  return mach_msg(&v5, 2097153, 0x3Cu, 0, 0, 0, 0);
}

uint64_t wifi_manager_copy_policies(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1108E00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69874)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_is_restriction_policy_active(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x1108F00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69875)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_set_incar_state(int a1, int a2, uint64_t a3, int a4)
{
  v8 = a3;
  v9 = 27918592;
  v10 = a4;
  v11 = *MEMORY[0x277D85EF8];
  v12 = a2;
  v13 = a4;
  v5 = 0xAAAAAAAA80000013;
  v6 = a1;
  v7 = xmmword_25A14BE30;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v5);
  }

  return mach_msg(&v5, 2097153, 0x3Cu, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_thermal_index(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69777;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_thermal_index(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x1109200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69878)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_device_wowblacklist_command(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7, _DWORD *a8)
{
  v19 = 2;
  v20 = a2;
  v21 = 27918592;
  v22 = a3;
  v23 = a4;
  v24 = 27918592;
  v25 = a5;
  v26 = *MEMORY[0x277D85EF8];
  v27 = a3;
  v28 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v18.msgh_bits = 0xAAAAAAAA80001513;
  v18.msgh_remote_port = a1;
  v18.msgh_local_port = special_reply_port;
  *&v18.msgh_voucher_port = 0x1109300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v18);
    msgh_local_port = v18.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v14 = mach_msg(&v18, 3162115, 0x4Cu, 0x44u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (v18.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (v18.msgh_id == 69879)
      {
        if ((v18.msgh_bits & 0x80000000) == 0)
        {
          if (v18.msgh_size == 36)
          {
            v15 = 4294966996;
            if (HIDWORD(v20))
            {
              if (v18.msgh_remote_port)
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = HIDWORD(v20);
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_24;
        }

        v15 = 4294966996;
        if (v19 == 1 && *&v18.msgh_size == 60 && HIBYTE(v21) == 1)
        {
          v16 = v22;
          if (v22 == v24)
          {
            v15 = 0;
            *a6 = v20;
            *a7 = v16;
            *a8 = v25;
            return v15;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  return v15;
}

uint64_t wifi_manager_copy_leeched_location(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1109400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69880)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_copy_geotags_for_network(int a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16[16] = 0x1AAAAAAAALL;
  *v20 = -1431655766;
  *&v20[4] = v8;
  *v16 = v8;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  *v20 = *MEMORY[0x277D85EF8];
  *&v20[8] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v16[4] = a1;
  *&v16[8] = special_reply_port;
  v15 = -2147478253;
  *&v16[12] = 0x1109500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    v10 = *&v16[8];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(&v15, 3162115, 0x38u, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (*&v16[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&v16[16] == 69881)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if (*v16 == 36)
          {
            v12 = 4294966996;
            if (HIDWORD(v17))
            {
              if (*&v16[4])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = HIDWORD(v17);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_24;
        }

        v12 = 4294966996;
        if (*&v16[20] == 1 && *v16 == 56 && HIBYTE(v18) == 1)
        {
          v13 = v19;
          if (v19 == *&v20[8])
          {
            v12 = 0;
            *a4 = v17;
            *a5 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  return v12;
}

uint64_t wifi_manager_set_geotag_for_network(int a1, uint64_t a2, int a3, double a4, double a5)
{
  *msg = 0xAAAAAAAAAAAAAAAALL;
  v7 = a2;
  v8 = 27918592;
  v9 = a3;
  v10 = *MEMORY[0x277D85EF8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BE40;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x48u, 0, 0, 0, 0);
}

uint64_t wifi_manager_copy_networks_at_location(int a1, int a2, void *a3, _DWORD *a4, double a5, double a6)
{
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v17[16] = v9;
  *&v17[32] = v9;
  *&v17[44] = v9;
  *v17 = v9;
  *&v17[20] = *MEMORY[0x277D85EF8];
  *&v17[28] = a5;
  *&v17[36] = a6;
  *&v17[44] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&v17[4] = a1;
  *&v17[8] = special_reply_port;
  v16 = 5395;
  *&v17[12] = 0x1109700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v16);
    v11 = *&v17[8];
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(&v16, 3162115, 0x34u, 0x40u, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (*&v17[16] == 71)
      {
        v13 = 4294966988;
      }

      else if (*&v17[16] == 69883)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (*v17 == 36)
          {
            v13 = 4294966996;
            if (*&v17[28])
            {
              if (*&v17[4])
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = *&v17[28];
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_24;
        }

        v13 = 4294966996;
        if (*&v17[20] == 1 && *v17 == 56 && v17[35] == 1)
        {
          v14 = *&v17[36];
          if (*&v17[36] == *&v17[48])
          {
            v13 = 0;
            *a3 = *&v17[24];
            *a4 = v14;
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v16);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  return v13;
}

uint64_t wifi_manager_copy_score_for_network(int a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16[16] = 0x1AAAAAAAALL;
  *v20 = -1431655766;
  *&v20[4] = v8;
  *v16 = v8;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  *v20 = *MEMORY[0x277D85EF8];
  *&v20[8] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v16[4] = a1;
  *&v16[8] = special_reply_port;
  v15 = -2147478253;
  *&v16[12] = 0x1109800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    v10 = *&v16[8];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(&v15, 3162115, 0x38u, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (*&v16[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&v16[16] == 69884)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if (*v16 == 36)
          {
            v12 = 4294966996;
            if (HIDWORD(v17))
            {
              if (*&v16[4])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = HIDWORD(v17);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_24;
        }

        v12 = 4294966996;
        if (*&v16[20] == 1 && *v16 == 56 && HIBYTE(v18) == 1)
        {
          v13 = v19;
          if (v19 == *&v20[8])
          {
            v12 = 0;
            *a4 = v17;
            *a5 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  return v12;
}

uint64_t wifi_device_soft_error_notification(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = 2;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  v20 = a4;
  v21 = 27918592;
  v22 = a5;
  v23 = *MEMORY[0x277D85EF8];
  v24 = a3;
  v25 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x1109900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&msg, 3162115, 0x4Cu, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (msg.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (msg.msgh_id == 69885)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v11 = HIDWORD(v17);
              if (!HIDWORD(v17))
              {
                *a6 = v18;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v12 = 1;
            }

            else
            {
              v12 = HIDWORD(v17) == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = HIDWORD(v17);
            }

            goto LABEL_23;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t wifi_manager_copy_softerror_counters(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1109A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69886)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_copy_current_session_based_network(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x1109B00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69887)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_set_user_auto_join_state(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69788;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_user_auto_join_state(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x1109D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69889)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_remove_orphaned_sc_network_sets(mach_port_t a1)
{
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69790;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t wifi_manager_migrate_list(mach_port_t a1)
{
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69791;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t wifi_manager_reset_private_mac(mach_port_t a1)
{
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69792;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t wifi_manager_remove_unused_network_geotags(mach_port_t a1, double a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69793;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x28u, 0, 0, 0, 0);
}

uint64_t wifi_manager_schedule_unused_network_geotags_removal_test(mach_port_t a1, int a2, double a3)
{
  v5 = *MEMORY[0x277D85EF8];
  v6 = a3;
  v7 = a2;
  *&v4.msgh_bits = 0xAAAAAAAA00000013;
  v4.msgh_voucher_port = 0;
  v4.msgh_id = 69794;
  v4.msgh_remote_port = a1;
  v4.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v4);
  }

  return mach_msg(&v4, 2097153, 0x2Cu, 0, 0, 0, 0);
}

uint64_t wifi_manager_unschedule_unused_network_geotags_removal_test(mach_port_t a1)
{
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69795;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t wifi_device_autojoinblacklist_command(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7)
{
  v17 = 2;
  v18 = a2;
  v19 = 27918592;
  v20 = a3;
  v21 = a4;
  v22 = 27918592;
  v23 = a5;
  v24 = *MEMORY[0x277D85EF8];
  v25 = a3;
  v26 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v16.msgh_bits = 0xAAAAAAAA80001513;
  v16.msgh_remote_port = a1;
  v16.msgh_local_port = special_reply_port;
  *&v16.msgh_voucher_port = 0x110A400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v16);
    msgh_local_port = v16.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&v16, 3162115, 0x4Cu, 0x40u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (v16.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (v16.msgh_id == 69896)
      {
        if ((v16.msgh_bits & 0x80000000) == 0)
        {
          if (v16.msgh_size == 36)
          {
            v13 = 4294966996;
            if (HIDWORD(v18))
            {
              if (v16.msgh_remote_port)
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = HIDWORD(v18);
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_24;
        }

        v13 = 4294966996;
        if (v17 == 1 && *&v16.msgh_size == 56 && HIBYTE(v19) == 1)
        {
          v14 = v20;
          if (v20 == v22)
          {
            v13 = 0;
            *a6 = v18;
            *a7 = v14;
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v16);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  return v13;
}

uint64_t wifi_manager_simulate_notification(int a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v10 = a2;
  v11 = 27918592;
  v12 = a3;
  v13 = a5;
  v14 = 27918592;
  v15 = a6;
  v16 = *MEMORY[0x277D85EF8];
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v7 = 0xAAAAAAAA80000013;
  v8 = a1;
  v9 = xmmword_25A14BE50;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v7);
  }

  return mach_msg(&v7, 2097153, 0x50u, 0, 0, 0, 0);
}

uint64_t wifi_device_destroy_eap_trust_current_network(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a2;
  v16 = 27918592;
  v17 = a3;
  v18 = *MEMORY[0x277D85EF8];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 0xAAAAAAAA80001513;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x110A600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 69898)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t wifi_manager_tigger_gizmo_sync_password_check(mach_port_t a1)
{
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69799;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t wifi_manager_copy_ssid_most_used_geo_tagged_to_current_location(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x110A800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69900)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_is_wpa3_personal_supported(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110A900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69901)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_is_hotspot_wpa3_personal_supported(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110AA00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69902)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_is_wpa3_enterprise_supported(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110AB00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69903)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_is_mfp_capable_device(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110AC00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69904)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_set_auto_instant_hotspot_mode(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69805;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_auto_instant_hotspot_mode(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110AE00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69906)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_set_share_personal_hotspot_mode(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69807;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_share_personal_hotspot_mode(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110B000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69908)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_set_auto_instant_hotspot_test_mode(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69809;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_auto_instant_hotspot_trigger_interval(mach_port_t a1, double a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69810;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x28u, 0, 0, 0, 0);
}

uint64_t wifi_device_get_event_interval(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 1;
  v16 = a2;
  v17 = 27918592;
  v18 = a3;
  v19 = *MEMORY[0x277D85EF8];
  v20 = a3;
  v21 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x110B300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 69911)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v16);
              if (!HIDWORD(v16))
              {
                *a5 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v16) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v16);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_device_set_event_interval(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 1;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  v20 = *MEMORY[0x277D85EF8];
  v21 = a3;
  v22 = a4;
  v23 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v15.msgh_bits = 0xAAAAAAAA80001513;
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = special_reply_port;
  *&v15.msgh_voucher_port = 0x110B400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v10 = mach_msg(&v15, 3162115, 0x44u, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (v15.msgh_id == 71)
      {
        v11 = 4294966988;
      }

      else if (v15.msgh_id == 69912)
      {
        if ((v15.msgh_bits & 0x80000000) == 0)
        {
          if (v15.msgh_size == 40)
          {
            if (!v15.msgh_remote_port)
            {
              v11 = HIDWORD(v17);
              if (!HIDWORD(v17))
              {
                *a6 = v18;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v15.msgh_size == 36)
          {
            if (v15.msgh_remote_port)
            {
              v12 = 1;
            }

            else
            {
              v12 = HIDWORD(v17) == 0;
            }

            if (v12)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = HIDWORD(v17);
            }

            goto LABEL_23;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v15);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t wifi_manager_is_infra_allowed(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110B500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69913)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_is_p2p_allowed(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110B600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69914)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_set_network_property(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int *a8)
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = 3;
  v19 = a2;
  v20 = 27918592;
  v21 = a3;
  v22 = a4;
  v23 = 27918592;
  v24 = a5;
  v25 = a6;
  v26 = 27918592;
  v27 = a7;
  v28 = *MEMORY[0x277D85EF8];
  v29 = a3;
  v30 = a5;
  v31 = a7;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x110B700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x60u, 0x30u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 69915)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v13 = HIDWORD(v19);
              if (!HIDWORD(v19))
              {
                *a8 = v20;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v14 = 1;
            }

            else
            {
              v14 = HIDWORD(v19) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v19);
            }

            goto LABEL_23;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t wifi_manager_copy_family_hotspot_preferences(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x110B800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69916)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_is_power_modification_disabled(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110B900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69917)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_is_managed_apple_id(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110BA00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69918)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_set_built_in_receiver(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69819;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_is_personal_hotspot_modification_disabled(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110BC00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69920)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_device_copy_network_recommendations(int a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16[16] = 0x1AAAAAAAALL;
  *v20 = -1431655766;
  *&v20[4] = v8;
  *v16 = v8;
  v17 = a2;
  v18 = 27918592;
  v19 = a3;
  *v20 = *MEMORY[0x277D85EF8];
  *&v20[8] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v16[4] = a1;
  *&v16[8] = special_reply_port;
  v15 = -2147478253;
  *&v16[12] = 0x110BD00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    v10 = *&v16[8];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(&v15, 3162115, 0x38u, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (*&v16[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&v16[16] == 69921)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if (*v16 == 36)
          {
            v12 = 4294966996;
            if (HIDWORD(v17))
            {
              if (*&v16[4])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = HIDWORD(v17);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_24;
        }

        v12 = 4294966996;
        if (*&v16[20] == 1 && *v16 == 56 && HIBYTE(v18) == 1)
        {
          v13 = v19;
          if (v19 == *&v20[8])
          {
            v12 = 0;
            *a4 = v17;
            *a5 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v15);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  return v12;
}

uint64_t wifi_device_reset_availability_engine(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BE60;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_user_interaction_override(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BE70;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_set_user_interaction_nw_override(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BE80;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_device_bssblacklist_command(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7)
{
  v17 = 2;
  v18 = a2;
  v19 = 27918592;
  v20 = a3;
  v21 = a4;
  v22 = 27918592;
  v23 = a5;
  v24 = *MEMORY[0x277D85EF8];
  v25 = a3;
  v26 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&v16.msgh_bits = 0xAAAAAAAA80001513;
  v16.msgh_remote_port = a1;
  v16.msgh_local_port = special_reply_port;
  *&v16.msgh_voucher_port = 0x110C100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v16);
    msgh_local_port = v16.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&v16, 3162115, 0x4Cu, 0x40u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (v16.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (v16.msgh_id == 69925)
      {
        if ((v16.msgh_bits & 0x80000000) == 0)
        {
          if (v16.msgh_size == 36)
          {
            v13 = 4294966996;
            if (HIDWORD(v18))
            {
              if (v16.msgh_remote_port)
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = HIDWORD(v18);
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_24;
        }

        v13 = 4294966996;
        if (v17 == 1 && *&v16.msgh_size == 56 && HIBYTE(v19) == 1)
        {
          v14 = v20;
          if (v20 == v22)
          {
            v13 = 0;
            *a6 = v18;
            *a7 = v14;
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(&v16);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  return v13;
}

uint64_t wifi_manager_set_private_mac_pref(mach_port_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int *a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 2;
  v18 = a2;
  v19 = 27918592;
  v20 = a3;
  v21 = a5;
  v22 = 27918592;
  v23 = a6;
  v24 = *MEMORY[0x277D85EF8];
  v25 = a3;
  v26 = a4;
  v27 = a6;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x110C200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(&msg, 3162115, 0x50u, 0x30u, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (msg.msgh_id == 71)
      {
        v12 = 4294966988;
      }

      else if (msg.msgh_id == 69926)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v12 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a7 = v19;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v13 = 1;
            }

            else
            {
              v13 = HIDWORD(v18) == 0;
            }

            if (v13)
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = HIDWORD(v18);
            }

            goto LABEL_23;
          }
        }

        v12 = 4294966996;
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t wifi_manager_set_mac_randomisation_params(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BE90;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_device_update_network_property(int a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v9 = a2;
  v10 = 27918592;
  v11 = a3;
  v12 = a4;
  v13 = 27918592;
  v14 = a5;
  v15 = *MEMORY[0x277D85EF8];
  v16 = a3;
  v17 = a5;
  v6 = 0xAAAAAAAA80000013;
  v7 = a1;
  v8 = xmmword_25A14BEA0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v6);
  }

  return mach_msg(&v6, 2097153, 0x4Cu, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_mac_randomisation_parameters(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x110C500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69929)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_get_privatemac_network_switch_state(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a2;
  v16 = 27918592;
  v17 = a3;
  v18 = *MEMORY[0x277D85EF8];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 0xAAAAAAAA80001513;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x110C600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 69930)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t wifi_manager_update_privateMac_network(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BEB0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_private_mac_is_quick_probe_required(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a2;
  v16 = 27918592;
  v17 = a3;
  v18 = *MEMORY[0x277D85EF8];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 0xAAAAAAAA80001513;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x110C800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 69932)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t wifi_manager_private_mac_probe_result(mach_port_t a1, int a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 1;
  v13 = a3;
  v14 = 27918592;
  v15 = a4;
  v16 = *MEMORY[0x277D85EF8];
  v17 = a2;
  v18 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 0xAAAAAAAA80001513;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x110C900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v7 = mach_msg(&msg, 3162115, 0x3Cu, 0x2Cu, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_special_reply_port();
      goto LABEL_18;
    }

    if (msg.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (msg.msgh_id == 69933)
    {
      v8 = 4294966996;
      if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
      {
        v8 = HIDWORD(v13);
        if (!HIDWORD(v13))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v8 = 4294966995;
    }

    mach_msg_destroy(&msg);
  }

LABEL_18:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t wifi_manager_set_adaptive_roam_params(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BEC0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_is_multi_band(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110CB00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69935)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_get_hardware_failure(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110CC00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69936)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_reset_network_settings(mach_port_t a1)
{
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69837;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t wifi_manager_purge_expired_known_networks(mach_port_t a1)
{
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69838;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t wifi_manager_cleanup_log_buffer_files(mach_port_t a1)
{
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69839;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t wifi_device_get_app_state(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 1;
  v15 = a2;
  v16 = 27918592;
  v17 = a3;
  v18 = *MEMORY[0x277D85EF8];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 0xAAAAAAAA80001513;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x110D000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 69940)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t wifi_manager_wificall_handover_notification(int a1, int a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&msg[20] = v3;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&msg[4] = v3;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x110D100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x24u, 0x2Cu, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_special_reply_port();
      return v7;
    }

    if (*&msg[20] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&msg[20] == 69941)
    {
      v7 = 4294966996;
      if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
      {
        v7 = *&msg[32];
        if (!*&msg[32])
        {
          return v7;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(msg);
  }

  return v7;
}

uint64_t wifi_device_insert_missing_network_service(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BED0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_copy_movement_states(int a1, void *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[12] = v6;
  *v15 = v6;
  *&msg[20] = v6;
  *&msg[4] = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x110D300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(msg, 3162115, 0x18u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 69943)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v10 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg[32];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_25;
        }

        v10 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && v15[3] == 1)
        {
          v11 = *&v15[4];
          if (*&v15[4] == *&v15[16])
          {
            v10 = 0;
            *a2 = *&msg[28];
            *a3 = v11;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t wifi_manager_set_simulated_movement_states(mach_port_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 1;
  v12 = a2;
  v13 = 27918592;
  v14 = a3;
  v15 = *MEMORY[0x277D85EF8];
  v16 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v10.msgh_bits = 0xAAAAAAAA80001513;
  v10.msgh_remote_port = a1;
  v10.msgh_local_port = special_reply_port;
  *&v10.msgh_voucher_port = 0x110D400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v10);
    msgh_local_port = v10.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x38u, 0x2Cu, msgh_local_port, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_special_reply_port();
      goto LABEL_17;
    }

    if (v10.msgh_id == 71)
    {
      v7 = 4294966988;
    }

    else if (v10.msgh_id == 69944)
    {
      v7 = 4294966996;
      if ((v10.msgh_bits & 0x80000000) == 0 && *&v10.msgh_size == 36)
      {
        v7 = HIDWORD(v12);
        if (!HIDWORD(v12))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v7 = 4294966995;
    }

    mach_msg_destroy(&v10);
  }

LABEL_17:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t wifi_manager_set_battery_save_mode(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69845;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

uint64_t wifi_manager_get_battery_save_mode(int a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[16] = v4;
  *&v15[4] = v4;
  v12 = -1431655766;
  special_reply_port = mig_get_special_reply_port();
  v13 = a1;
  v14 = special_reply_port;
  v11 = 5395;
  *v15 = 0x110D600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = v14;
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x18u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&v15[4] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&v15[4] == 69946)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (v12 == 40)
          {
            if (!v13)
            {
              v8 = *&v15[16];
              if (!*&v15[16])
              {
                *a2 = *&v15[20];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (v12 == 36)
          {
            if (v13)
            {
              v9 = 1;
            }

            else
            {
              v9 = *&v15[16] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&v15[16];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

uint64_t wifi_manager_initiate_network_transition(int a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = 27918592;
  v7 = a3;
  v8 = *MEMORY[0x277D85EF8];
  v9 = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_25A14BEE0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
}

uint64_t wifi_manager_configure_mis_idle_link_test(mach_port_t a1, int a2)
{
  v4 = *MEMORY[0x277D85EF8];
  v5 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 69848;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
}

void *WiFiPolicyCreate(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"PolicyType");
    if (Value)
    {
      v5 = Value;
      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(v5))
      {
        return 0;
      }
    }
  }

  if (!__kWiFiPolicyTypeID)
  {
    pthread_once(&__gWiFiPolicyTypeInit, __WiFiPolicyRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    v9 = theDict ? CFDictionaryCreateMutableCopy(a1, 0, theDict) : CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8[2] = v9;
    if (!v9)
    {
      CFRelease(v8);
      return 0;
    }
  }

  return v8;
}

void *WiFiPolicyCreateExtended(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 0;
  }

  v9 = Mutable;
  CFDictionaryAddValue(Mutable, @"PolicyType", a2);
  if (a3)
  {
    CFDictionaryAddValue(v9, @"PolicyUUID", a3);
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = CFUUIDCreate(a1);
  if (v10)
  {
    v11 = v10;
    v12 = CFUUIDCreateString(a1, v10);
    CFDictionaryAddValue(v9, @"PolicyUUID", v12);
    if (!a4)
    {
LABEL_7:
      v13 = WiFiPolicyCreate(a1, v9);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      goto LABEL_11;
    }

LABEL_6:
    CFDictionaryAddValue(v9, @"PolicyProperties", a4);
    goto LABEL_7;
  }

  v13 = 0;
LABEL_11:
  CFRelease(v9);
  return v13;
}

void WiFiPolicySetProperty(uint64_t a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyProperties");
  if (Value)
  {
    if (a3)
    {

      CFDictionarySetValue(Value, a2, a3);
    }

    else
    {

      CFDictionaryRemoveValue(Value, a2);
    }
  }
}

const __CFDictionary *WiFiPolicyGetProperty(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"PolicyProperties");
  if (result)
  {

    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

__CFArray *WiFiCreatePoliciesFromRecords(const __CFArray *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v4 = Mutable;
  if (a1)
  {
    if (Mutable)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (ValueAtIndex)
          {
            v10 = WiFiPolicyCreate(v2, ValueAtIndex);
            if (v10)
            {
              v11 = v10;
              CFArrayAppendValue(v4, v10);
              CFRelease(v11);
            }
          }
        }
      }
    }
  }

  return v4;
}

__CFArray *WiFiCreateRecordsFromPolicies(const __CFArray *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v4 = Mutable;
  if (a1)
  {
    if (Mutable)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (ValueAtIndex)
          {
            Copy = CFDictionaryCreateCopy(v2, ValueAtIndex[2]);
            if (Copy)
            {
              v10 = Copy;
              CFArrayAppendValue(v4, Copy);
              CFRelease(v10);
            }
          }
        }
      }
    }
  }

  return v4;
}

const __SCPreferences *_WiFiPreferencesLock(const __SCPreferences *prefs)
{
  if (prefs)
  {
    v1 = prefs;
    if (_queue)
    {
      dispatch_assert_queue_V2(_queue);
    }

    prefs = SCPreferencesLock(v1, 1u);
    if (!prefs)
    {
      SCPreferencesSynchronize(v1);
      prefs = SCPreferencesLock(v1, 1u);
      if (!prefs)
      {
        v2 = SCError();
        SCErrorString(v2);
        objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        return 0;
      }
    }
  }

  return prefs;
}

__CFArray *_WiFiCreateRecordsFromNetworksWithType(const __CFArray *a1, int a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v5 = Mutable;
  if (a1)
  {
    if (Mutable)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; v7 != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (ValueAtIndex)
          {
            if (a2 == 1)
            {
              v10 = WiFiNetworkCopyFilteredRecord(ValueAtIndex);
LABEL_10:
              v11 = v10;
              if (v10)
              {
                CFArrayAppendValue(v5, v10);
                CFRelease(v11);
              }

              continue;
            }

            if (!a2)
            {
              v10 = WiFiNetworkCopyRecord(ValueAtIndex);
              goto LABEL_10;
            }
          }
        }
      }
    }
  }

  return v5;
}

CFMutableArrayRef _CFArrayCreateMutableCopyOfCFDictionary(const __CFDictionary *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    CFDictionaryApplyFunction(a1, __CFArrayCreateMutableCopyOfCFDictionaryApplier, Mutable);
  }

  return Mutable;
}

CFMutableArrayRef _CFArrayCreateMutableCopyOfCFSet(const __CFSet *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    CFSetApplyFunction(a1, __CFArrayCreateMutableCopyOfCFSetApplier, Mutable);
  }

  return Mutable;
}

CFMutableSetRef _CFSetCreateMutableCopyOfCFArray(const __CFArray *a1)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  if (Mutable)
  {
    v4.length = CFArrayGetCount(a1);
    v4.location = 0;
    CFArrayApplyFunction(a1, v4, __CFSetCreateMutableCopyOfCFArrayApplier, Mutable);
  }

  return Mutable;
}

void *WiFiCopyTomorrowDateFromComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v10 = objc_opt_new();
  [v10 setHour:a2];
  [v10 setMinute:a3];
  [v10 setSecond:a4];
  v11 = [objc_msgSend(MEMORY[0x277CBEA80] "currentCalendar")];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  [v9 drain];
  objc_autoreleasePoolPop(v8);
  return v12;
}

const __CFData *WiFiIsPrivateMacAddress(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      return ((*CFDataGetBytePtr(v1) >> 1) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *WiFiPrivateMacAddressType(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    valuePtr = 0;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _WiFiCopyUnserialized_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_WiFiCopyUnserialized";
  _os_log_error_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Invalid buffer/buffersize.", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

void _WiFiCopyUnserialized_cold_2(uint64_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: CFPropertyListCreateWithData returned with error %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void _CFPropertyListCreateBinaryData_cold_1(uint64_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: CFPropertyListWrite returned with error %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void *WiFiMIGMachPortCreate(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (!__WiFiMIGMachPortTypeID)
  {
    pthread_once(&__WiFiMIGMachPortTypeInit, __WiFiMIGMachPortRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    Instance[5] = 0u;
    Instance[6] = 0u;
    Instance[3] = 0u;
    Instance[4] = 0u;
    Instance[1] = 0u;
    Instance[2] = 0u;
    *(Instance + 4) = a3;
    if (!a4 || ((v11.version = 0, memset(&v11.retain, 0, 24), v11.info = Instance, !a3) ? (v9 = CFMachPortCreate(*MEMORY[0x277CBECE8], __WiFiMIGMachPortCFPortCallback, &v11, 0)) : (v9 = _CFMachPortCreateWithPort()), (v8[7] = v9) != 0))
    {
      v8[3] = a2;
      return v8;
    }

    CFRelease(v8);
    return 0;
  }

  return v8;
}

void WiFiMIGMachPortScheduleWithRunLoop(uint64_t a1, CFRunLoopRef rl, CFRunLoopMode mode)
{
  *(a1 + 32) = rl;
  *(a1 + 40) = mode;
  RunLoopSource = *(a1 + 48);
  if (RunLoopSource || (RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x277CBECE8], *(a1 + 56), 1), (*(a1 + 48) = RunLoopSource) != 0))
  {

    CFRunLoopAddSource(rl, RunLoopSource, mode);
  }
}

uint64_t WiFiManagerClientCreate(uint64_t a1, int a2)
{
  v3 = *MEMORY[0x277D85F48];
  port_info_outCnt = 1;
  if (!__wiFiManagerTypeID)
  {
    pthread_once(&__wiFiManagerTypeInit, __WiFiManagerClientRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (!Instance)
  {
    return v5;
  }

  name = -1431655766;
  port_info_out = -1431655766;
  bzero((Instance + 16), 0x150uLL);
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v5 + 64) = Mutable;
  if (!Mutable)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  *(v5 + 20) = 0;
  *(v5 + 24) = 0;
  mach_port_allocate(v3, 1u, &name);
  v8 = WiFiMIGMachPortCreate(v6, dword_286BCCE10, name, 1);
  *(v5 + 40) = v8;
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  Port = WiFiMIGMachPortGetPort(v8);
  if (mach_port_get_attributes(v3, Port, 1, &port_info_out, &port_info_outCnt))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  port_info_out = 32;
  v10 = WiFiMIGMachPortGetPort(*(v5 + 40));
  if (MEMORY[0x25F84DD80](v3, v10, 1, &port_info_out, port_info_outCnt))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      OUTLINED_FUNCTION_4();
      _os_log_error_impl(v19, v20, v21, v22, v23, 2u);
    }

LABEL_21:
    ArrayBySeparatingStrings = v5;
    v5 = 0;
LABEL_11:
    CFRelease(ArrayBySeparatingStrings);
    return v5;
  }

  WiFiMIGMachPortRegisterDemuxCallback(*(v5 + 40), __WiFiManagerClientMIGDemuxCallback, v5);
  WiFiMIGMachPortRegisterTerminationCallback(*(v5 + 40), __WiFiManagerClientServerTerminationCallback, v5);
  v11 = WiFiMIGMachPortGetPort(*(v5 + 40));
  WiFiPortCacheAdd(v11, v5);
  *(v5 + 16) = a2;
  v12 = __WiFiManagerClientGetOrReconnectServerPort(v5, 1);
  WiFiSendRightRelease(v12);
  *(v5 + 80) = 0;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v6, @"Preferences SpringBoard Carousel WiFiPickerExtens Setup budd sharingd demod BundledIntentHandler SiriViewService assistantd assistant_service Siri SettingsIntentExtension NanoSettings PineBoard TVSettings SoundBoard RealityControlCenter MuseBuddyApp mobilewifitool WirelessStress coreautomationd wifiutil NanoWiFiViewService ATKWiFiFramework WiFiViewService hQT XCTestInternalAngel HPSetup AirPlaySenderUIApp TVSetup deviceaccessd AccessorySetupUI Setup RealityCoverSheet", @" ");
  getprogname();
  CFStringGetSystemEncoding();
  v14 = OUTLINED_FUNCTION_8();
  CFStringCreateWithCString(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_20();
  v27.length = CFArrayGetCount(v17);
  v27.location = 0;
  *(v5 + 81) = CFArrayContainsValue(ArrayBySeparatingStrings, v27, v6) != 0;
  *(v5 + 336) = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  if (ArrayBySeparatingStrings)
  {
    goto LABEL_11;
  }

  return v5;
}

CFPropertyListRef WiFiManagerClientCopyWoWState(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1();
    v6 = wifi_manager_copy_wow_state(v3, v4, v5);
    v1 = 0;
    v14 = OUTLINED_FUNCTION_2(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26);
    if (v14 && v15)
    {
      v1 = _WiFiCopyUnserialized(v14, v15);
      v14 = OUTLINED_FUNCTION_2(v1, v16, v17, v18, v19, v20, v21, v22, v25, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15();
  }

  _WiFiVMDealloc(v14, v15);
  WiFiSendRightRelease(v2);
  return v1;
}

CFPropertyListRef WiFiManagerClientCopyMISStats(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1();
    v6 = wifi_manager_copy_mis_stats(v3, v4, v5);
    v1 = 0;
    v14 = OUTLINED_FUNCTION_2(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26);
    if (v14 && v15)
    {
      v1 = _WiFiCopyUnserialized(v14, v15);
      v14 = OUTLINED_FUNCTION_2(v1, v16, v17, v18, v19, v20, v21, v22, v25, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15();
  }

  _WiFiVMDealloc(v14, v15);
  WiFiSendRightRelease(v2);
  return v1;
}

void WiFiManagerClientResetMISStats(uint64_t a1)
{
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_reset_mis_stats(v1[1]);
  }

  WiFiSendRightRelease(v2);
}

void WiFiManagerClientSetBackgroundScanNetworks(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_17(a1);
  v4 = v3;
  if (v1)
  {
    if (v3)
    {
      RecordsFromNetworks = _WiFiCreateRecordsFromNetworks(v1);
      if (RecordsFromNetworks)
      {
        v6 = RecordsFromNetworks;
        BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], RecordsFromNetworks);
        if (BinaryData)
        {
          OUTLINED_FUNCTION_18(BinaryData);
          v8 = OUTLINED_FUNCTION_9();
          CFDataGetLength(v8);
          v9 = OUTLINED_FUNCTION_5();
          wifi_manager_set_background_scan_networks(v9, v10, v11);
          CFRelease(v2);
        }

        CFRelease(v6);
      }
    }
  }

  WiFiSendRightRelease(v4);
}

uint64_t WiFiManagerClientAddNetworkAsync(uint64_t a1, uint64_t a2, CFTypeRef BinaryData, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v10 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v10)
  {
LABEL_16:
    v21 = 74;
    goto LABEL_13;
  }

  v11 = WiFiNetworkCopyRecord(a2);
  if (!v11)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v21 = 72;
    goto LABEL_13;
  }

  v12 = v11;
  if (*(a1 + 256) || *(a1 + 264))
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v21 = 37;
    goto LABEL_12;
  }

  *(a1 + 256) = a4;
  *(a1 + 264) = a5;
  v13 = *MEMORY[0x277CBECE8];
  if (BinaryData)
  {
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], BinaryData);
    BytePtr = CFDataGetBytePtr(BinaryData);
    Length = CFDataGetLength(BinaryData);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v16 = _CFPropertyListCreateBinaryData(v13, v12);
  if (!v16)
  {
    v21 = 72;
    if (!BinaryData)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v17 = v16;
  v18 = v10[1];
  v19 = CFDataGetBytePtr(v16);
  v20 = CFDataGetLength(v17);
  wifi_manager_add_network_async(v18, v19, v20, BytePtr, Length);
  CFRelease(v17);
  v21 = 0;
  if (BinaryData)
  {
LABEL_11:
    CFRelease(BinaryData);
  }

LABEL_12:
  CFRelease(v12);
LABEL_13:
  WiFiSendRightRelease(v10);
  return v21;
}

void WiFiManagerClientUpdateNetwork(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_17(a1);
  if (v3)
  {
    v4 = WiFiNetworkCopyRecord(v1);
    if (v4)
    {
      v5 = v4;
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v4);
      if (BinaryData)
      {
        OUTLINED_FUNCTION_18(BinaryData);
        v7 = OUTLINED_FUNCTION_9();
        CFDataGetLength(v7);
        v8 = OUTLINED_FUNCTION_5();
        wifi_manager_update_network(v8, v9, v10);
        CFRelease(v2);
      }

      CFRelease(v5);
    }
  }

  WiFiSendRightRelease(v3);
}

void WiFiManagerClientRemoveNetworkConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = getprogname();
  SystemEncoding = CFStringGetSystemEncoding();
  v7 = CFStringCreateWithCString(v4, v5, SystemEncoding);
  v8 = v7;
  if (v7 && CFEqual(v7, @"mobilewifitool"))
  {
    v9 = 24;
    if (!a2)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if (*(a1 + 81))
    {
      v9 = 2;
    }

    else
    {
      v9 = 22;
    }

    if (!a2)
    {
      goto LABEL_4;
    }
  }

  v10 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v10)
  {
    v11 = WiFiNetworkCopyRecord(a2);
    if (v11)
    {
      v12 = v11;
      v13 = OUTLINED_FUNCTION_8();
      BinaryData = _CFPropertyListCreateBinaryData(v13, v14);
      if (BinaryData)
      {
        v16 = BinaryData;
        v17 = v10[1];
        BytePtr = CFDataGetBytePtr(BinaryData);
        Length = CFDataGetLength(v16);
        wifi_manager_remove_network_configuration(v17, BytePtr, Length, v9);
        CFRelease(v16);
      }

      CFRelease(v12);
    }
  }

LABEL_14:
  if (v8)
  {
    CFRelease(v8);
  }

  WiFiSendRightRelease(v10);
}

void WiFiManagerClientRemoveNetworksWithBundleIdentifier(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_17(a1);
  if (v3)
  {
    if (v1)
    {
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v1);
      if (BinaryData)
      {
        v5 = BinaryData;
        CFDataGetBytePtr(BinaryData);
        v6 = OUTLINED_FUNCTION_20();
        Length = CFDataGetLength(v6);
        wifi_manager_remove_networks_with_bundle_identifier(v3[1], v2, Length);
        CFRelease(v5);
      }
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }
  }

  WiFiSendRightRelease(v3);
}

void __WiFiManagerClientSetNetworkState(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v7)
  {
    v8 = WiFiNetworkCopyRecord(a2);
    if (v8)
    {
      v9 = v8;
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v8);
      if (BinaryData)
      {
        v11 = BinaryData;
        v12 = v7[1];
        BytePtr = CFDataGetBytePtr(BinaryData);
        Length = CFDataGetLength(v11);
        wifi_manager_set_network_state(v12, BytePtr, Length, a3, a4);
        CFRelease(v11);
      }

      CFRelease(v9);
    }
  }

  WiFiSendRightRelease(v7);
}

void __WiFiManagerClientSetNetworksStateWithBundleIdentifier(uint64_t a1, const void *a2, int a3)
{
  v5 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v5)
  {
    if (a2)
    {
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
      if (BinaryData)
      {
        v7 = BinaryData;
        BytePtr = CFDataGetBytePtr(BinaryData);
        Length = CFDataGetLength(v7);
        wifi_manager_set_networks_state_with_bundle_identifier(v5[1], BytePtr, Length, a3);
        CFRelease(v7);
      }
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    }
  }

  WiFiSendRightRelease(v5);
}

__CFArray *__WiFiManagerClientCopyNetworks(uint64_t a1, int a2)
{
  v3 = OUTLINED_FUNCTION_3(a1);
  v11 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  wifi_manager_copy_networks(v3[1], a2, &length_4, &v17 + 1);
  NetworksFromRecords = 0;
  v3 = length_4;
  if (length_4)
  {
    v4 = HIDWORD(v17);
    if (HIDWORD(v17))
    {
      v3 = _WiFiCopyUnserialized(length_4, HIDWORD(v17));
      if (v3)
      {
        v13 = v3;
        NetworksFromRecords = _WiFiCreateNetworksFromRecords(v3);
        CFRelease(v13);
        goto LABEL_6;
      }

LABEL_7:
      NetworksFromRecords = 0;
    }
  }

LABEL_6:
  v14 = OUTLINED_FUNCTION_2(v3, v4, v5, v6, v7, v8, v9, v10, v17, length_4);
  _WiFiVMDealloc(v14, v15);
  WiFiSendRightRelease(v11);
  return NetworksFromRecords;
}

__CFArray *WiFiManagerClientCopyMutableNetworks(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  v9 = v1;
  if (!v1)
  {
    goto LABEL_7;
  }

  wifi_manager_copy_networks(v1[1], 0, &length_4, &v15 + 1);
  NetworksFromRecords = 0;
  v1 = length_4;
  if (length_4)
  {
    v2 = HIDWORD(v15);
    if (HIDWORD(v15))
    {
      v1 = _WiFiCopyUnserialized(length_4, HIDWORD(v15));
      if (v1)
      {
        v11 = v1;
        NetworksFromRecords = _WiFiCreateNetworksFromRecords(v1);
        CFRelease(v11);
        goto LABEL_6;
      }

LABEL_7:
      NetworksFromRecords = 0;
    }
  }

LABEL_6:
  v12 = OUTLINED_FUNCTION_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, length_4);
  _WiFiVMDealloc(v12, v13);
  WiFiSendRightRelease(v9);
  return NetworksFromRecords;
}

__CFArray *WiFiManagerClientCopyNetworksWithBundleIdentifier(uint64_t a1, const __CFString *a2)
{
  if (!a2)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  v3 = __WiFiManagerClientCopyNetworks(a1, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          BundleIdentifier = WiFiNetworkGetBundleIdentifier(ValueAtIndex);
          if (BundleIdentifier)
          {
            if (CFStringCompare(BundleIdentifier, a2, 0) == kCFCompareEqualTo)
            {
              CFArrayAppendValue(Mutable, v10);
            }
          }
        }
      }
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  CFRelease(v4);
  return Mutable;
}

uint64_t WiFiManagerClientGetAskToJoinState(uint64_t a1)
{
  v5 = 0;
  v1 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  v2 = v1;
  if (v1)
  {
    wifi_manager_get_ask_to_join_state(v1[1], &v5);
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  WiFiSendRightRelease(v2);
  return v3;
}

UInt8 *WiFiManagerClientSetTestParamsAndCopyResponse(uint64_t a1, const void *a2)
{
  v4 = OUTLINED_FUNCTION_3(a1);
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (!v4)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
LABEL_13:
    v17 = 0;
    goto LABEL_11;
  }

  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
  v14 = BinaryData;
  if (BinaryData)
  {
    CFDataGetBytePtr(BinaryData);
    v15 = OUTLINED_FUNCTION_20();
    Length = CFDataGetLength(v15);
  }

  else
  {
    v2 = 0;
    Length = 0;
  }

  wifi_manager_copy_test_params(v4[1], v2, Length, &length_4, &v21 + 1);
  v17 = 0;
  v5 = length_4;
  if (length_4)
  {
    v6 = HIDWORD(v21);
    if (HIDWORD(v21))
    {
      v5 = _WiFiCopyUnserialized(length_4, HIDWORD(v21));
      v17 = v5;
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_11:
  v18 = OUTLINED_FUNCTION_2(v5, v6, v7, v8, v9, v10, v11, v12, v21, length_4);
  _WiFiVMDealloc(v18, v19);
  WiFiSendRightRelease(v4);
  return v17;
}

void WiFiManagerClientScheduleWithRunLoop(uint64_t a1, __CFRunLoop *a2, const __CFString *a3)
{
  v6 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  WiFiMIGMachPortScheduleWithRunLoop(*(a1 + 40), a2, a3);
  if (!v6)
  {
    notify_port = -1431655766;
    if (!notify_register_mach_port("com.apple.wifi.manager.available", &notify_port, 0, (a1 + 88)))
    {
      v7 = *MEMORY[0x277CBECE8];
      v8 = _CFMachPortCreateWithPort();
      *(a1 + 96) = v8;
      if (v8)
      {
        RunLoopSource = CFMachPortCreateRunLoopSource(v7, v8, 0);
        *(a1 + 104) = RunLoopSource;
        if (RunLoopSource)
        {
          CFRunLoopAddSource(a2, RunLoopSource, a3);
        }
      }
    }
  }

  WiFiSendRightRelease(v6);
}

void _wifi_manager_client_dispatch_notification(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10, int a11, int a12, CFTypeRef a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26)
{
  OUTLINED_FUNCTION_24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v57 = v34;
  v36 = v35;
  v38 = v37;
  v39 = a26;
  v41 = WiFiPortCacheCopy(v40);
  v42 = v36;
  if (v41)
  {
    v43 = v41;
    v44 = _WiFiCopyUnserialized(v38, v36);
    if (!v44)
    {
LABEL_19:
      CFRelease(v43);
      goto LABEL_20;
    }

    v58 = v44;
    Device = WiFiManagerClientGetDevice(v43, v44);
    v45 = _WiFiCopyUnserialized(v31, v29);
    v46 = v45;
    v56 = v33;
    if (v45)
    {
      v47 = CFGetTypeID(v45);
      if (v47 != CFDictionaryGetTypeID())
      {
        v48 = 0;
        v50 = 0;
LABEL_13:
        CFRelease(v46);
LABEL_14:
        if (v50)
        {
          CFRelease(v50);
        }

        if (v48)
        {
          CFRelease(v48);
        }

        CFRelease(v58);
        goto LABEL_19;
      }

      v48 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], v46);
    }

    else
    {
      v48 = 0;
    }

    v49 = _WiFiCopyUnserialized(v27, a26);
    v50 = v49;
    if (!v49 || (v51 = v27, v52 = CFGetTypeID(v49), v53 = v52 == CFDictionaryGetTypeID(), v27 = v51, v39 = a26, v53))
    {
      v54 = v43[14];
      if (v54)
      {
        v54(v43, Device, v57, v56, v48, v50, v43[15]);
      }
    }

    if (!v46)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_20:
  _WiFiVMDealloc(v38, v42);
  _WiFiVMDealloc(v31, v29);
  _WiFiVMDealloc(v27, v39);
  OUTLINED_FUNCTION_23();
}

uint64_t _wifi_manager_client_dispatch_wow_state_change(unsigned int a1, unsigned __int8 a2)
{
  v3 = WiFiPortCacheCopy(a1);
  if (v3)
  {
    v4 = v3;
    if ((*(v3 + 73) & 0x20) != 0)
    {
      v5 = *(v3 + 26);
      if (v5)
      {
        v5(v3, a2, *(v3 + 27));
      }
    }

    CFRelease(v4);
  }

  return 0;
}

void _wifi_manager_client_dispatch_association_result()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = WiFiPortCacheCopy(v14);
  v16 = v11;
  if (v15)
  {
    v17 = v15;
    v18 = _WiFiCopyUnserialized(v13, v11);
    if (v18)
    {
      v19 = v18;
      Device = WiFiManagerClientGetDevice(v17, v18);
      if (Device)
      {
        v21 = Device;
        v40 = v1;
        v22 = _WiFiCopyUnserialized(v9, v7);
        if (v22)
        {
          v23 = v22;
          v39 = v19;
          v24 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], v22);
          if (v24)
          {
            v25 = v24;
            v38 = v17;
            v26 = v16;
            v27 = v13;
            v28 = v7;
            v29 = v9;
            v30 = v3;
            v31 = v3;
            v32 = v5;
            v33 = _WiFiCopyUnserialized(v5, v31);
            _WiFiDeviceClientDispatchAssociationResult(v21, v25, v33, v40);
            if (v33)
            {
              CFRelease(v33);
            }

            CFRelease(v25);
            v5 = v32;
            v3 = v30;
            v9 = v29;
            v7 = v28;
            v13 = v27;
            v16 = v26;
            v17 = v38;
          }

          else
          {
            v36 = OUTLINED_FUNCTION_21();
            _WiFiDeviceClientDispatchAssociationResult(v36, v37, 0, v40);
          }

          CFRelease(v23);
          v19 = v39;
        }

        else
        {
          v34 = OUTLINED_FUNCTION_21();
          _WiFiDeviceClientDispatchAssociationResult(v34, v35, 0, v1);
        }
      }

      CFRelease(v19);
    }

    CFRelease(v17);
  }

  _WiFiVMDealloc(v13, v16);
  _WiFiVMDealloc(v9, v7);
  _WiFiVMDealloc(v5, v3);
  OUTLINED_FUNCTION_23();
}

void _wifi_manager_client_dispatch_start_network_result(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, UInt8 *bytes, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_24();
  v26 = v25;
  bytesa = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = WiFiPortCacheCopy(v38);
  v40 = v35;
  if (v39)
  {
    v41 = v39;
    v42 = _WiFiCopyUnserialized(v37, v35);
    if (!v42)
    {
LABEL_17:
      CFRelease(v41);
      goto LABEL_18;
    }

    v43 = v42;
    v56 = v33;
    Device = WiFiManagerClientGetDevice(v41, v42);
    if (Device)
    {
      v45 = Device;
      v46 = 0;
      v47 = 0;
      if (!v31 || !v29)
      {
LABEL_8:
        v55 = v31;
        v49 = v40;
        v50 = v37;
        v51 = v29;
        if (bytesa && v26)
        {
          v52 = v26;
          v53 = _WiFiCopyUnserialized(bytesa, v26);
          if (v53)
          {
            v54 = v53;
            _WiFiDeviceClientDispatchStartNetworkResult(v45, v56, v47, v53);
            CFRelease(v54);
          }

          if (!v47)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v52 = v26;
          _WiFiDeviceClientDispatchStartNetworkResult(v45, v56, v47, 0);
          if (!v47)
          {
LABEL_14:
            v26 = v52;
            v29 = v51;
            v37 = v50;
            v40 = v49;
            v31 = v55;
            if (v46)
            {
              CFRelease(v46);
            }

            goto LABEL_16;
          }
        }

        CFRelease(v47);
        goto LABEL_14;
      }

      v48 = _WiFiCopyUnserialized(v31, v29);
      if (v48)
      {
        v46 = v48;
        v47 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], v48);
        goto LABEL_8;
      }
    }

LABEL_16:
    CFRelease(v43);
    goto LABEL_17;
  }

LABEL_18:
  _WiFiVMDealloc(v37, v40);
  _WiFiVMDealloc(v31, v29);
  _WiFiVMDealloc(bytesa, v26);
  OUTLINED_FUNCTION_23();
}

void _wifi_manager_client_dispatch_stop_network_result()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = WiFiPortCacheCopy(v7);
  if (v8)
  {
    v9 = v8;
    v10 = OUTLINED_FUNCTION_8();
    v12 = _WiFiCopyUnserialized(v10, v11);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_16(v12);
      if (v13)
      {
        v14 = v13;
        if (v4 && v2)
        {
          v15 = OUTLINED_FUNCTION_10();
          v17 = _WiFiCopyUnserialized(v15, v16);
          if (v17)
          {
            v18 = v17;
            _WiFiDeviceClientDispatchStopNetworkResult(v14, v6, v17);
            CFRelease(v18);
          }
        }

        else
        {
          _WiFiDeviceClientDispatchStopNetworkResult(v13, v6, 0);
        }
      }

      CFRelease(v0);
    }

    CFRelease(v9);
  }

  v19 = OUTLINED_FUNCTION_8();
  _WiFiVMDealloc(v19, v20);
  v21 = OUTLINED_FUNCTION_10();
  _WiFiVMDealloc(v21, v22);
  OUTLINED_FUNCTION_26();
}

void _wifi_manager_client_dispatch_gas_results()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_13(v3);
  if (v4)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_8();
    v8 = _WiFiCopyUnserialized(v6, v7);
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_16(v8);
      if (v9)
      {
        v10 = v9;
        v11 = OUTLINED_FUNCTION_10();
        v13 = _WiFiCopyUnserialized(v11, v12);
        if (v13)
        {
          v14 = v13;
          NetworksFromRecords = _WiFiCreateNetworksFromRecords(v13);
          _WiFiDeviceClientDispatchGasResults(v10, NetworksFromRecords, v2);
          if (NetworksFromRecords)
          {
            CFRelease(NetworksFromRecords);
          }

          CFRelease(v14);
        }

        else
        {
          _WiFiDeviceClientDispatchGasResults(v10, 0, v2);
        }
      }

      CFRelease(v0);
    }

    CFRelease(v5);
  }

  v16 = OUTLINED_FUNCTION_8();
  _WiFiVMDealloc(v16, v17);
  v18 = OUTLINED_FUNCTION_10();
  _WiFiVMDealloc(v18, v19);
  OUTLINED_FUNCTION_26();
}

void _wifi_manager_client_dispatch_ranging_result()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_13(v3);
  if (v4)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_8();
    v8 = _WiFiCopyUnserialized(v6, v7);
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_16(v8);
      if (v9)
      {
        v10 = v9;
        v11 = OUTLINED_FUNCTION_10();
        v13 = _WiFiCopyUnserialized(v11, v12);
        _WiFiDeviceClientDispatchRangingResult(v10, v13, v2);
        if (v13)
        {
          CFRelease(v13);
        }
      }

      CFRelease(v0);
    }

    CFRelease(v5);
  }

  v14 = OUTLINED_FUNCTION_8();
  _WiFiVMDealloc(v14, v15);
  v16 = OUTLINED_FUNCTION_10();
  _WiFiVMDealloc(v16, v17);
  OUTLINED_FUNCTION_26();
}

uint64_t _wifi_manager_client_dispatch_add_network_async(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = WiFiPortCacheCopy(a1);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    if (!a2 || !a3)
    {
      goto LABEL_6;
    }

    v11 = OUTLINED_FUNCTION_10();
    v13 = _WiFiCopyUnserialized(v11, v12);
    if (!v13)
    {
LABEL_12:
      CFRelease(v8);
      goto LABEL_13;
    }

    v9 = v13;
    v10 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], v13);
    if (v10)
    {
LABEL_6:
      v14 = v8[32];
      if (v14)
      {
        v14(v8, v10, a4, v8[33]);
        v8[32] = 0;
        v8[33] = 0;
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (!v9)
      {
        goto LABEL_12;
      }
    }

    CFRelease(v9);
    goto LABEL_12;
  }

LABEL_13:
  v15 = OUTLINED_FUNCTION_10();
  _WiFiVMDealloc(v15, v16);
  return 0;
}

void WiFiManagerClientAddPolicy(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_17(a1);
  if (v3)
  {
    v4 = WiFiPolicyCopyRecord(v1);
    if (v4)
    {
      v5 = v4;
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v4);
      if (BinaryData)
      {
        OUTLINED_FUNCTION_18(BinaryData);
        v7 = OUTLINED_FUNCTION_9();
        CFDataGetLength(v7);
        v8 = OUTLINED_FUNCTION_5();
        wifi_manager_add_policy(v8, v9, v10, 0);
        CFRelease(v2);
      }

      CFRelease(v5);
    }
  }

  WiFiSendRightRelease(v3);
}

void WiFiManagerClientRemovePolicy(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_17(a1);
  if (!v3)
  {
    goto LABEL_10;
  }

  WiFiPolicyGetTypeID();
  v4 = OUTLINED_FUNCTION_20();
  if (v2 == CFGetTypeID(v4))
  {
    v5 = WiFiPolicyCopyRecord(v1);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = v5;
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v5);
    if (!BinaryData)
    {
      goto LABEL_8;
    }
  }

  else
  {
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v1);
    v6 = 0;
    if (!BinaryData)
    {
      goto LABEL_8;
    }
  }

  v8 = v3[1];
  CFDataGetBytePtr(BinaryData);
  v9 = OUTLINED_FUNCTION_9();
  CFDataGetLength(v9);
  v10 = OUTLINED_FUNCTION_5();
  wifi_manager_remove_policy(v10, v11, v12, 0);
  CFRelease(BinaryData);
LABEL_8:
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_10:

  WiFiSendRightRelease(v3);
}

__CFArray *WiFiManagerClientCopyPolicies(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  v9 = v1;
  if (!v1)
  {
    goto LABEL_14;
  }

  v10 = OUTLINED_FUNCTION_1();
  wifi_manager_copy_policies(v10, v11, v12);
  Mutable = 0;
  v1 = length_4;
  if (!length_4)
  {
    goto LABEL_13;
  }

  v2 = HIDWORD(v25);
  if (!HIDWORD(v25))
  {
    goto LABEL_13;
  }

  v1 = _WiFiCopyUnserialized(length_4, HIDWORD(v25));
  if (!v1)
  {
LABEL_14:
    Mutable = 0;
    goto LABEL_13;
  }

  v14 = v1;
  v15 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    Count = CFArrayGetCount(v14);
    if (Count >= 1)
    {
      v17 = Count;
      for (i = 0; i != v17; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
        if (ValueAtIndex)
        {
          v20 = WiFiPolicyCreate(v15, ValueAtIndex);
          if (v20)
          {
            v21 = v20;
            CFArrayAppendValue(Mutable, v20);
            CFRelease(v21);
          }
        }
      }
    }
  }

  CFRelease(v14);
LABEL_13:
  v22 = OUTLINED_FUNCTION_2(v1, v2, v3, v4, v5, v6, v7, v8, v25, length_4);
  _WiFiVMDealloc(v22, v23);
  WiFiSendRightRelease(v9);
  return Mutable;
}

CFPropertyListRef WiFiManagerClientCopyLeechedLocation(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1();
    v6 = wifi_manager_copy_leeched_location(v3, v4, v5);
    v1 = 0;
    v14 = OUTLINED_FUNCTION_2(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26);
    if (v14 && v15)
    {
      v1 = _WiFiCopyUnserialized(v14, v15);
      v14 = OUTLINED_FUNCTION_2(v1, v16, v17, v18, v19, v20, v21, v22, v25, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15();
  }

  _WiFiVMDealloc(v14, v15);
  WiFiSendRightRelease(v2);
  return v1;
}

CFPropertyListRef WiFiManagerClientCopySoftErrorCounters(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1();
    v6 = wifi_manager_copy_softerror_counters(v3, v4, v5);
    v1 = 0;
    v14 = OUTLINED_FUNCTION_2(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26);
    if (v14 && v15)
    {
      v1 = _WiFiCopyUnserialized(v14, v15);
      v14 = OUTLINED_FUNCTION_2(v1, v16, v17, v18, v19, v20, v21, v22, v25, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15();
  }

  _WiFiVMDealloc(v14, v15);
  WiFiSendRightRelease(v2);
  return v1;
}

_WORD *WiFiManagerClientCopyCurrentSessionBasedNetwork(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  v9 = v1;
  if (v1 && (v10 = OUTLINED_FUNCTION_1(), v13 = wifi_manager_copy_current_session_based_network(v10, v11, v12), v21 = OUTLINED_FUNCTION_2(v13, v14, v15, v16, v17, v18, v19, v20, v28, v29), (v1 = _WiFiCopyUnserialized(v21, v22)) != 0))
  {
    v23 = v1;
    v24 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], v1);
    CFRelease(v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = OUTLINED_FUNCTION_2(v1, v2, v3, v4, v5, v6, v7, v8, v28, v29);
  _WiFiVMDealloc(v25, v26);
  WiFiSendRightRelease(v9);
  return v24;
}

uint64_t _wifi_manager_client_dispatch_auto_join_state_change(unsigned int a1, unsigned __int8 a2)
{
  v3 = WiFiPortCacheCopy(a1);
  if (v3)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_12();
    v7 = _WiFiCopyUnserialized(v5, v6);
    if ((*(v4 + 75) & 4) != 0)
    {
      v8 = v4[34];
      if (v8)
      {
        v8(v4, a2, v7, v4[35]);
      }
    }

    CFRelease(v4);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  v9 = OUTLINED_FUNCTION_12();
  _WiFiVMDealloc(v9, v10);
  return 0;
}

uint64_t _wifi_manager_client_dispatch_managed_apple_id_state_change(unsigned int a1, unsigned __int8 a2)
{
  v3 = WiFiPortCacheCopy(a1);
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 76))
    {
      v5 = *(v3 + 38);
      if (v5)
      {
        v5(v3, a2, *(v3 + 39));
      }
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t _wifi_manager_client_dispatch_preferred_networks_change(unsigned int a1)
{
  v1 = WiFiPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = OUTLINED_FUNCTION_12();
    v5 = _WiFiCopyUnserialized(v3, v4);
    if (v5)
    {
      v6 = v5;
      if ((*(v2 + 75) & 0x20) != 0 && v2[36])
      {
        v7 = v2[37];
        v8 = OUTLINED_FUNCTION_8();
        v9(v8);
      }

      CFRelease(v2);
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v6 = v2;
    }

    CFRelease(v6);
  }

  v10 = OUTLINED_FUNCTION_12();
  _WiFiVMDealloc(v10, v11);
  return 0;
}

uint64_t WiFiManagerClientSetNetworkProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v7 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = WiFiNetworkCopyRecord(a2);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  v10 = *MEMORY[0x277CBECE8];
  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v8);
  v12 = BinaryData;
  if (BinaryData)
  {
    CFDataGetBytePtr(BinaryData);
    CFDataGetLength(v12);
  }

  v13 = _CFPropertyListCreateBinaryData(v10, a3);
  v14 = v13;
  if (v13)
  {
    CFDataGetBytePtr(v13);
    CFDataGetLength(v14);
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else if (!a4)
  {
    goto LABEL_12;
  }

  v15 = _CFPropertyListCreateBinaryData(v10, a4);
  if (v15)
  {
    v16 = v15;
    BytePtr = CFDataGetBytePtr(v15);
    CFDataGetLength(v16);
    v18 = OUTLINED_FUNCTION_14();
    wifi_manager_set_network_property(v18, v19, v20, v21, v22, BytePtr, v23, v24);
    CFRelease(v16);
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  v25 = OUTLINED_FUNCTION_14();
  wifi_manager_set_network_property(v25, v26, v27, v28, v29, 0, 0, v30);
  if (v14)
  {
LABEL_13:
    CFRelease(v14);
  }

LABEL_14:
  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(v9);
LABEL_17:
  WiFiSendRightRelease(v7);
  return 0;
}

uint64_t _wifi_manager_client_dispatch_ui_event(unsigned int a1)
{
  v1 = WiFiPortCacheCopy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = OUTLINED_FUNCTION_12();
    v5 = _WiFiCopyUnserialized(v3, v4);
    if (v5)
    {
      v6 = v5;
      if ((*(v2 + 76) & 2) != 0 && v2[40])
      {
        v7 = v2[41];
        v8 = OUTLINED_FUNCTION_8();
        v9(v8);
      }

      CFRelease(v2);
    }

    else
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v6 = v2;
    }

    CFRelease(v6);
  }

  v10 = OUTLINED_FUNCTION_12();
  _WiFiVMDealloc(v10, v11);
  return 0;
}

CFPropertyListRef WiFiManagerClientCopyMacRandomisationParameters(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1();
    mac_randomisation_parameters = wifi_manager_get_mac_randomisation_parameters(v3, v4, v5);
    v1 = 0;
    v14 = OUTLINED_FUNCTION_2(mac_randomisation_parameters, v7, v8, v9, v10, v11, v12, v13, v24, v26);
    if (v14 && v15)
    {
      v1 = _WiFiCopyUnserialized(v14, v15);
      v14 = OUTLINED_FUNCTION_2(v1, v16, v17, v18, v19, v20, v21, v22, v25, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15();
  }

  _WiFiVMDealloc(v14, v15);
  WiFiSendRightRelease(v2);
  return v1;
}

void WiFiManagerClientUpdatePrivateMacNetwork(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_17(a1);
  if (v3)
  {
    v4 = WiFiNetworkCopyRecord(v1);
    if (v4)
    {
      v5 = v4;
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v4);
      if (BinaryData)
      {
        OUTLINED_FUNCTION_18(BinaryData);
        v7 = OUTLINED_FUNCTION_9();
        CFDataGetLength(v7);
        v8 = OUTLINED_FUNCTION_5();
        wifi_manager_update_privateMac_network(v8, v9, v10);
        CFRelease(v2);
      }

      CFRelease(v5);
    }
  }

  WiFiSendRightRelease(v3);
}

BOOL WiFiManagerClientPrivateMacIsQuickProbeRequired(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v6 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v6)
  {
    v7 = WiFiNetworkCopyRecord(a2);
    if (v7)
    {
      v8 = v7;
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v7);
      if (BinaryData)
      {
        OUTLINED_FUNCTION_18(BinaryData);
        v10 = OUTLINED_FUNCTION_9();
        Length = CFDataGetLength(v10);
        wifi_manager_private_mac_is_quick_probe_required(v3, v4, Length, &v13);
        CFRelease(v2);
      }

      CFRelease(v8);
    }
  }

  WiFiSendRightRelease(v6);
  return v13 != 0;
}

void WiFiManagerClientPrivateMacReportProbeResult(uint64_t a1, uint64_t a2, int a3)
{
  v5 = __WiFiManagerClientGetOrReconnectServerPort(a1, 0);
  if (v5)
  {
    v6 = WiFiNetworkCopyRecord(a2);
    if (v6)
    {
      v7 = v6;
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v6);
      if (BinaryData)
      {
        v9 = BinaryData;
        v10 = v5[1];
        BytePtr = CFDataGetBytePtr(BinaryData);
        Length = CFDataGetLength(v9);
        wifi_manager_private_mac_probe_result(v10, a3, BytePtr, Length);
        CFRelease(v9);
      }

      CFRelease(v7);
    }
  }

  WiFiSendRightRelease(v5);
}

void __WiFiManagerClientServerTerminationCallback_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *(a1 + 4);
  }

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void WiFiManagerClientCopyMisPassword_cold_1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  wifi_manager_mis_copy_password(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_7();
  if (v5 && v6)
  {
    _WiFiCopyUnserialized(v5, v6);
    v5 = OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_19(v5, v6, v7);
  WiFiSendRightRelease(v1);
}

void WiFiManagerClientRemoveNetworkWithReason_cold_1(const void *a1, const void *a2, int a3, uint64_t a4)
{
  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a1);
  if (BinaryData)
  {
    v9 = BinaryData;
    v10 = *(a4 + 4);
    BytePtr = CFDataGetBytePtr(BinaryData);
    Length = CFDataGetLength(v9);
    wifi_manager_remove_network(v10, BytePtr, Length, a3);
    CFRelease(v9);
  }

  Type = WiFiNetworkGetType(a2);
  WiFiNetworkGetSSID(a2);
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (Type != 2)
  {
    if ((a3 & 0xFFFFFFFE) == 0xC)
    {
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      WiFiNetworkSetPasswordSyncable();
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    WiFiNetworkRemovePassword(a2);
  }

  if (MEMORY[0x2822180C0] && WiFiNetworkIsEAP(a2))
  {
    WiFiNetworkGetSSID(a2);
    EAPTLSRemoveTrustExceptionsBindings();
  }

  CFRelease(a1);
}

void WiFiManagerClientCopyVersionInfo_cold_1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  wifi_manager_copy_version_info(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_7();
  if (v5 && v6)
  {
    _WiFiCopyUnserialized(v5, v6);
    v5 = OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_19(v5, v6, v7);
  WiFiSendRightRelease(v1);
}

void WiFiManagerClientCopyClientNames_cold_1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  wifi_manager_copy_client_names(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_7();
  if (v5 && v6)
  {
    _WiFiCopyUnserialized(v5, v6);
    v5 = OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_19(v5, v6, v7);
  WiFiSendRightRelease(v1);
}

void WiFiManagerClientGetDevice_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __WiFiManagerClientAddDevice_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 4);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void __WiFiManagerClientAddDevice_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_11_0();
  _os_log_debug_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: delaying attach callback for %@", v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __WiFiManagerClientAddDevice_cold_3(CFDictionaryRef *a1, const void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  result = CFDictionaryGetValue(*a1, a2);
  if (result)
  {
    v5 = result;
    result = _WiFiDeviceClientGetServerPort(result);
    v6 = *(a3 + 4);
    if (result != v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        _WiFiDeviceClientGetServerPort(v5);
        v13 = *(a3 + 4);
        OUTLINED_FUNCTION_4();
        _os_log_error_impl(v8, v9, v10, v11, v12, 0x22u);
        v6 = *(a3 + 4);
      }

      _WiFiDeviceClientSetServerPort(v5, v6);
      _WiFiDeviceClientSendEventMaskToServer(v5);
      result = _WiFiDeviceClientDispatchAssociationResult(v5, 0, 0, 5);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void WiFiManagerClientDispatchAttachmentEvent_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void __WiFiManagerClientAvailableCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __WiFiManagerClientAvailableCallback_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *(a1 + 4);
  }

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

void __WiFiManagerClientAvailableCallback_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void WiFiManagerClientUnscheduleFromRunLoop_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

const void *_wifi_manager_client_dispatch_event_cold_1(uint64_t a1, const void *a2, uint64_t a3)
{
  result = WiFiManagerClientGetDevice(a1, a2);
  v6 = *(a1 + 192);
  if (v6)
  {
    v7 = *(a1 + 200);

    return v6(a1, result, a3, v7);
  }

  return result;
}

void _wifi_manager_client_dispatch_event_cold_2(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v2 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], a2);
    v3 = OUTLINED_FUNCTION_12();
    _WiFiDeviceClientDispatchBssidEvent(v3, v4);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t _wifi_manager_client_dispatch_event_cold_3(uint64_t result, CFNumberRef number)
{
  if (result)
  {
    v2 = result;
    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberCFIndexType, &valuePtr);
    return _WiFiDeviceClientDispatchBgScanSuspendResumeEvent(v2, valuePtr == 1);
  }

  return result;
}

void _wifi_manager_client_dispatch_event_cold_4(uint64_t a1, CFBooleanRef BOOLean)
{
  if (a1)
  {
    v3 = CFBooleanGetValue(BOOLean) != 0;

    _WiFiDeviceClientDispatch24GHzNetworkInCriticalStateEvent(a1, v3);
  }
}

void _wifi_manager_client_dispatch_event_cold_5(uint64_t a1, CFNumberRef number)
{
  if (a1)
  {
    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    _WiFiDeviceClientDispatchM1M4Handshake24GHzCountEvent(a1, valuePtr);
  }
}

void _wifi_manager_client_dispatch_event_cold_6(uint64_t a1, CFNumberRef number)
{
  if (a1)
  {
    valuePtr = -1;
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    _WiFiDeviceClientDispatchCarPlayNetworkTypeChangeEvent(a1, valuePtr);
  }
}

void WiFiManagerClientCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation_cold_1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  wifi_manager_copy_ssid_most_used_geo_tagged_to_current_location(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_7();
  if (v5 && v6)
  {
    _WiFiCopyUnserialized(v5, v6);
    v5 = OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_19(v5, v6, v7);
  WiFiSendRightRelease(v1);
}

void WiFiManagerClientCopyFamilyHotspotPreferences_cold_1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  wifi_manager_copy_family_hotspot_preferences(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_7();
  if (v5 && v6)
  {
    _WiFiCopyUnserialized(v5, v6);
    v5 = OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_19(v5, v6, v7);
  WiFiSendRightRelease(v1);
}

void __WiFiManagerClientGetOrReconnectServerPort_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void __WiFiManagerClientGetOrReconnectServerPort_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void __WiFiManagerClientGetOrReconnectServerPort_cold_3(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "__WiFiManagerClientGetOrReconnectServerPort";
  v4 = 2048;
  v5 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - a1) / 0xF4240;
  _os_log_debug_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: wifi_manager_open | Duration: %lu ms", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __WiFiManagerClientGetOrReconnectServerPort_cold_4(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "__WiFiManagerClientGetOrReconnectServerPort";
  _os_log_debug_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: invoking delayed attach callback", buf, 0xCu);
}

void __WiFiManagerClientGetOrReconnectServerPort_cold_5()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void __WiFiManagerClientGetOrReconnectServerPort_cold_6()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void __WiFiManagerClientGetOrReconnectServerPort_cold_7()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void __WiFiManagerClientGetOrReconnectServerPort_cold_8()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

uint64_t _WiFiDeviceClientCreate(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5)
{
  v5 = 0;
  if (a3 && a4)
  {
    if (!__wiFiDeviceTypeID)
    {
      pthread_once(&__wiFiDeviceTypeInit, __WiFiDeviceClientRegister);
    }

    Instance = _CFRuntimeCreateInstance();
    v5 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x290uLL);
      *(v5 + 56) = a2;
      *(v5 + 16) = a3;
      v11 = CFRetain(a4);
      *(v5 + 24) = v11;
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v11);
      *(v5 + 48) = BinaryData;
      if (BinaryData)
      {
        *(v5 + 40) = a5;
      }

      else
      {
        CFRelease(v5);
        return 0;
      }
    }
  }

  return v5;
}

void WiFiDeviceClientSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && _WiFiDeviceClientIsServerPortValid(a1))
  {
    v6 = *MEMORY[0x277CBECE8];
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
    v8 = BinaryData;
    if (BinaryData)
    {
      CFDataGetBytePtr(BinaryData);
      v9 = OUTLINED_FUNCTION_20();
      CFDataGetLength(v9);
    }

    v10 = _CFPropertyListCreateBinaryData(v6, a3);
    v11 = v10;
    if (v10)
    {
      CFDataGetBytePtr(v10);
      CFDataGetLength(v11);
    }

    v12 = *(a1 + 16);
    CFDataGetBytePtr(*(a1 + 48));
    CFDataGetLength(*(a1 + 48));
    v13 = OUTLINED_FUNCTION_8_0();
    wifi_device_set_property(v13, v14, v15, v16, v17, v18, v19);
    if (v8)
    {
      CFRelease(v8);
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }
}

uint64_t WiFiDeviceClientCopyCurrentNetworkAsync(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294963396;
  }

  result = 4294963396;
  if (a2 && *(a1 + 56))
  {
    v9 = malloc_type_malloc(0x20uLL, 0xA0040069AE433uLL);
    if (v9)
    {
      v10 = v9;
      *v9 = a4;
      v9[1] = a1;
      v9[2] = a3;
      dispatch_retain(a2);
      v10[3] = a2;
      v11 = dispatch_queue_create("com.apple.wifid.queue", 0);
      dispatch_async_f(v11, v10, _dispatchCopyCurrentNetwork);
      dispatch_release(v11);
      return 0;
    }

    else
    {
      return 4294963395;
    }
  }

  return result;
}

void _dispatchCopyCurrentNetwork(uint64_t a1)
{
  if (a1)
  {
    v2 = WiFiDeviceClientCopyCurrentNetwork(*(a1 + 8));
    v3 = *(a1 + 24);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___dispatchCopyCurrentNetwork_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = v2;
    dispatch_async(v3, v4);
  }
}

void WiFiDeviceClientSetPower(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_23_0();
  a18 = v21;
  a19 = v22;
  v24 = v23;
  if (OUTLINED_FUNCTION_13_0(v25))
  {
    OUTLINED_FUNCTION_14_0();
    v26 = OUTLINED_FUNCTION_15_0();
    wifi_device_set_power(v19, v20, v26, v24, &a11);
    OUTLINED_FUNCTION_17_0();
  }

  OUTLINED_FUNCTION_24_0();
}

void WiFiDeviceClientAssociateAsync()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if (OUTLINED_FUNCTION_13_0(v7))
  {
    *(v0 + 176) = v4;
    *(v0 + 184) = v2;
    v8 = WiFiNetworkCopyRecord(v6);
    if (v8)
    {
      v9 = v8;
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v8);
      if (BinaryData)
      {
        v11 = BinaryData;
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_15_0();
        v12 = OUTLINED_FUNCTION_20();
        CFDataGetBytePtr(v12);
        CFDataGetLength(v11);
        v13 = OUTLINED_FUNCTION_1_0();
        wifi_device_assoc_async(v13, v14, v15, v16, v17, v18);
        CFRelease(v11);
      }

      CFRelease(v9);
      OUTLINED_FUNCTION_17_0();
    }
  }

  OUTLINED_FUNCTION_24_0();
}

uint64_t WiFiDeviceClientDisassociate(uint64_t a1)
{
  if (_WiFiDeviceClientIsServerPortValid(a1))
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    v1 = OUTLINED_FUNCTION_2_0();
    wifi_device_disassociate(v1, v2, v3);
  }

  return 0;
}

uint64_t WiFiDeviceClientDisassociateWithReason(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 0;
  }

  if (_WiFiDeviceClientIsServerPortValid(a1))
  {
    OUTLINED_FUNCTION_21_0();
    v6 = OUTLINED_FUNCTION_22_0();
    wifi_device_disassociate_with_reason(v3, v4, v6, a3);
    return 0;
  }

  return 4294963394;
}

void WiFiDeviceClientStopNetwork()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (_WiFiDeviceClientIsServerPortValid(v6))
  {
    if (v5)
    {
      if (v3)
      {
        v8 = WiFiNetworkCopyRecord(v5);
        if (v8)
        {
          v9 = v8;
          BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v8);
          if (BinaryData)
          {
            v11 = BinaryData;
            *(v7 + 208) = v3;
            *(v7 + 216) = v1;
            OUTLINED_FUNCTION_14_0();
            OUTLINED_FUNCTION_15_0();
            v12 = OUTLINED_FUNCTION_20();
            CFDataGetBytePtr(v12);
            CFDataGetLength(v11);
            v13 = OUTLINED_FUNCTION_1_0();
            wifi_device_stop_network(v13, v14, v15, v16, v17, v18);
            CFRelease(v11);
          }

          CFRelease(v9);
        }
      }
    }
  }

  OUTLINED_FUNCTION_24_0();
}

uint64_t WiFiDeviceClientCopyInterfaceStateInfo(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_18_0(a1, a2);
  if (v3)
  {
    v14 = 22;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_11();
  if (!_WiFiDeviceClientIsServerPortValid(v4))
  {
    v14 = -3902;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_22_0();
  v5 = OUTLINED_FUNCTION_7_0();
  wifi_device_copy_interface_state_info(v5, v6, v7, v8, v9, v10, v11);
  if (!v17)
  {
    if (length_4 && length)
    {
      v12 = _WiFiCopyUnserialized(length_4, length);
      if (v12)
      {
        *v2 = v12;
        goto LABEL_8;
      }

      v14 = 94;
    }

    else
    {
      v14 = 5;
    }

LABEL_13:
    v17 = v14;
  }

LABEL_8:
  _WiFiVMDealloc(length_4, length);
  return v17;
}

void _WiFiDeviceClientDispatchVirtInterfaceStateChangeEvent(uint64_t a1, CFTypeRef cf)
{
  v32 = *MEMORY[0x277D85DE8];
  cfa = 0;
  if (!a1)
  {
    goto LABEL_24;
  }

  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = CFRetain(cf);
      cfa = v5;
      Value = CFDictionaryGetValue(v5, @"WiFiHostApStateIdentifier");
      if (!Value || !CFEqual(Value, *MEMORY[0x277CBED28]))
      {
        v7 = CFDictionaryGetValue(v5, @"LINK_CHANGED_IS_LINKDOWN");
        if (v7)
        {
          v8 = v7;
          v9 = CFGetTypeID(v7);
          if (v9 != CFBooleanGetTypeID())
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v27 = "_WiFiDeviceClientDispatchVirtInterfaceStateChangeEvent";
              v28 = 2048;
              v29 = CFGetTypeID(v8);
              _os_log_error_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: bad type %ld detected for APPLE80211KEY_STATE_CHANGED_IS_LINKDOWN", buf, 0x16u);
            }

            if (v5)
            {
              CFRelease(v5);
              cfa = 0;
            }

            WiFiDeviceClientCopyInterfaceStateInfo(a1, &cfa);
            v5 = cfa;
            if (!cfa)
            {
              objc_autoreleasePoolPop(objc_autoreleasePoolPush());
              goto LABEL_24;
            }
          }
        }

        v10 = CFDictionaryGetValue(v5, @"LINK_CHANGED_NETWORK");
        if (!v10)
        {
          goto LABEL_20;
        }

        v11 = WiFiNetworkCreate(*MEMORY[0x277CBECE8], v10);
        if (v11)
        {
          v12 = v11;
          CFDictionaryReplaceValue(v5, @"LINK_CHANGED_NETWORK", v11);
          CFRelease(v12);
        }
      }

      v13 = CFDictionaryGetValue(v5, @"LINK_CHANGED_PEER_LIST");
      if (*(a1 + 544))
      {
        v14 = v13;
        if (v13)
        {
          if (CFArrayGetCount(v13) >= 1)
          {
            v15 = 0;
            v16 = MEMORY[0x277D86220];
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
              if (ValueAtIndex)
              {
                v18 = CFDictionaryGetValue(ValueAtIndex, @"STATION_MAC");
                if (v18)
                {
                  BytePtr = CFDataGetBytePtr(v18);
                  v20 = ether_ntoa(BytePtr);
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                  {
                    Count = CFArrayGetCount(v14);
                    *buf = 134218498;
                    v27 = (v15 + 1);
                    v28 = 2048;
                    v29 = Count;
                    v30 = 2080;
                    v31 = v20;
                    _os_log_impl(&dword_25A116000, v16, OS_LOG_TYPE_INFO, "Peer %ld of %ld: MAC:%s", buf, 0x20u);
                  }
                }
              }

              ++v15;
            }

            while (v15 < CFArrayGetCount(v14));
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "_WiFiDeviceClientDispatchVirtInterfaceStateChangeEvent";
      v28 = 2112;
      v29 = cf;
      _os_log_error_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: unexpected type for payload %@", buf, 0x16u);
    }
  }

LABEL_20:
  v22 = *(a1 + 544);
  v23 = cfa;
  if (v22)
  {
    v22(a1, cfa, *(a1 + 552));
  }

  if (v23)
  {
    CFRelease(v23);
  }

LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t WiFiDeviceClientCopyHostedNetworks(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_18_0(a1, a2);
  if (v3)
  {
    v16 = 22;
LABEL_15:
    v19 = v16;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11();
  if (!_WiFiDeviceClientIsServerPortValid(v4))
  {
    v16 = -3902;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_22_0();
  v5 = OUTLINED_FUNCTION_7_0();
  wifi_device_copy_networks(v5, v6, v7, v8, v9, v10, v11);
  if (v19)
  {
    goto LABEL_10;
  }

  if (!length_4 || !length)
  {
    v16 = 5;
    goto LABEL_15;
  }

  v12 = _WiFiCopyUnserialized(length_4, length);
  if (!v12)
  {
    v16 = 94;
    goto LABEL_15;
  }

  v13 = v12;
  NetworksFromRecords = _WiFiCreateNetworksFromRecords(v12);
  if (NetworksFromRecords)
  {
    *v2 = NetworksFromRecords;
  }

  else
  {
    v19 = 5;
  }

  CFRelease(v13);
LABEL_10:
  _WiFiVMDealloc(length_4, length);
  return v19;
}

void _WiFiDeviceClientDispatchScanCacheUpdateEvent(void *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"scanRequest");
    if (Value && (v5 = CFGetTypeID(Value), v5 == CFDictionaryGetTypeID()) && (v6 = CFDictionaryGetValue(theDict, @"scanResults")) != 0 && (v7 = v6, v8 = CFGetTypeID(v6), v8 == CFArrayGetTypeID()))
    {
      NetworksFromRecords = _WiFiCreateNetworksFromRecords(v7);
      v10 = a1[28];
      if (v10)
      {
        v10(a1, NetworksFromRecords, 0, a1[29]);
      }

      if (a1[30])
      {
        v11 = a1[31];
        v12 = OUTLINED_FUNCTION_20_0();
        v13(v12);
      }

      if (NetworksFromRecords)
      {

        CFRelease(NetworksFromRecords);
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();

      objc_autoreleasePoolPop(v14);
    }
  }
}

void _WiFiDeviceClientDispatchScanUpdateEvent(uint64_t a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"scanRequest");
    if (Value && (v5 = CFGetTypeID(Value), v5 == CFDictionaryGetTypeID()) && (v6 = CFDictionaryGetValue(theDict, @"scanResults")) != 0 && (v7 = v6, v8 = CFGetTypeID(v6), v8 == CFArrayGetTypeID()))
    {
      NetworksFromRecords = _WiFiCreateNetworksFromRecords(v7);
      if (*(a1 + 256))
      {
        v10 = *(a1 + 264);
        v11 = OUTLINED_FUNCTION_20_0();
        v12(v11);
      }

      if (NetworksFromRecords)
      {

        CFRelease(NetworksFromRecords);
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();

      objc_autoreleasePoolPop(v13);
    }
  }
}

uint64_t _WiFiDeviceClientDispatchRangingReportEvent(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 576);
    if (v2)
    {
      return v2(result, a2, *(result + 584));
    }
  }

  return result;
}

uint64_t _WiFiDeviceClientDispatchRoamStatusEvent(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 592);
    if (v2)
    {
      return v2(result, a2, *(result + 600));
    }
  }

  return result;
}

uint64_t WiFiDeviceClientGasStartAsync(uint64_t a1, const __CFArray *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  result = 4294963396;
  if (a2 && a3)
  {
    if (_WiFiDeviceClientIsServerPortValid(a1))
    {
      *(a1 + 512) = a4;
      *(a1 + 520) = a5;
      v11 = *MEMORY[0x277CBECE8];
      result = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a3);
      if (result)
      {
        v12 = result;
        CFDataGetBytePtr(result);
        v13 = OUTLINED_FUNCTION_16_0();
        RecordsFromNetworks = _WiFiCreateRecordsFromNetworks(a2);
        if (RecordsFromNetworks)
        {
          v15 = RecordsFromNetworks;
          BinaryData = _CFPropertyListCreateBinaryData(v11, RecordsFromNetworks);
          if (BinaryData)
          {
            v17 = BinaryData;
            BytePtr = CFDataGetBytePtr(BinaryData);
            Length = CFDataGetLength(v17);
            v20 = *(a1 + 16);
            v21 = CFDataGetBytePtr(*(a1 + 48));
            v22 = CFDataGetLength(*(a1 + 48));
            wifi_device_gas_start_async(v20, v21, v22, BytePtr, Length, a5, v13, &v24);
            CFRelease(v15);
            v23 = v17;
          }

          else
          {
            v23 = v15;
          }

          CFRelease(v23);
        }

        CFRelease(v12);
        return v24;
      }
    }

    else
    {
      return 4294963394;
    }
  }

  return result;
}

uint64_t WiFiDeviceClientRangingStartAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11();
  if (!_WiFiDeviceClientIsServerPortValid(v8))
  {
    return 4294963394;
  }

  if (!v4)
  {
    return 4294963396;
  }

  *(v5 + 560) = a3;
  *(v5 + 568) = a4;
  result = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v4);
  if (result)
  {
    v10 = result;
    CFDataGetBytePtr(result);
    OUTLINED_FUNCTION_16_0();
    v11 = *(v5 + 16);
    CFDataGetBytePtr(*(v5 + 48));
    CFDataGetLength(*(v5 + 48));
    v12 = OUTLINED_FUNCTION_4_0();
    wifi_device_ranging_start_async(v12, v13, v14, v15, v16, v17, v18);
    CFRelease(v10);
    return 0;
  }

  return result;
}

CFPropertyListRef WiFiDeviceClientCopyRoamStats()
{
  OUTLINED_FUNCTION_12_0();
  if (_WiFiDeviceClientIsServerPortValid(v0))
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    v1 = OUTLINED_FUNCTION_0_1();
    v6 = wifi_device_copy_roam_stats(v1, v2, v3, v4, v5);
    v14 = OUTLINED_FUNCTION_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29);
    v16 = _WiFiCopyUnserialized(v14, v15);
    v24 = OUTLINED_FUNCTION_2(v16, v17, v18, v19, v20, v21, v22, v23, v28, v30);
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v16 = 0;
  }

  _WiFiVMDealloc(v24, v25);
  return v16;
}

void WiFiDeviceClientSetTrgDiscParams()
{
  OUTLINED_FUNCTION_23_0();
  if (v2)
  {
    OUTLINED_FUNCTION_11();
    if (_WiFiDeviceClientIsServerPortValid(v3))
    {
      BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v0);
      if (BinaryData)
      {
        v5 = BinaryData;
        CFDataGetBytePtr(BinaryData);
        OUTLINED_FUNCTION_16_0();
        v6 = *(v1 + 16);
        CFDataGetBytePtr(*(v1 + 48));
        CFDataGetLength(*(v1 + 48));
        v7 = OUTLINED_FUNCTION_4_0();
        wifi_device_set_trgdisc_params(v7, v8, v9, v10, v11, v12);
        CFRelease(v5);
      }
    }
  }

  OUTLINED_FUNCTION_24_0();
}

uint64_t WiFiDeviceClientSendWoWBlacklistCommandAndCopyResponse(uint64_t a1, const void *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_12_0();
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  if (!a2)
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    goto LABEL_12;
  }

  IsServerPortValid = _WiFiDeviceClientIsServerPortValid(a1);
  if (!IsServerPortValid)
  {
LABEL_12:
    v24 = 0;
    goto LABEL_10;
  }

  BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a2);
  v15 = BinaryData;
  if (BinaryData)
  {
    CFDataGetBytePtr(BinaryData);
    CFDataGetLength(v15);
  }

  v16 = *(a1 + 16);
  CFDataGetBytePtr(*(a1 + 48));
  CFDataGetLength(*(a1 + 48));
  v17 = OUTLINED_FUNCTION_6_0();
  wifi_device_wowblacklist_command(v17, v18, v19, v20, v21, v22, v23, a3);
  v24 = 0;
  IsServerPortValid = length_4;
  if (length_4)
  {
    v7 = HIDWORD(v28);
    if (HIDWORD(v28))
    {
      IsServerPortValid = _WiFiCopyUnserialized(length_4, HIDWORD(v28));
      v24 = IsServerPortValid;
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_10:
  v25 = OUTLINED_FUNCTION_2(IsServerPortValid, v7, v8, v9, v10, v11, v12, v13, v28, length_4);
  _WiFiVMDealloc(v25, v26);
  return v24;
}

uint64_t WiFiDeviceClientDestroyEAPTrustExceptionsForCurrentNetwork(uint64_t a1, int *a2)
{
  if (a1)
  {
    if (_WiFiDeviceClientIsServerPortValid(a1))
    {
      OUTLINED_FUNCTION_21_0();
      v5 = OUTLINED_FUNCTION_22_0();
      wifi_device_destroy_eap_trust_current_network(v2, v3, v5, a2);
    }
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  if (a2)
  {
    return 4294963394;
  }

  else
  {
    return 0;
  }
}

BOOL WiFiDeviceClientGetLQMEventInterval(uint64_t a1)
{
  result = _WiFiDeviceClientIsServerPortValid(a1);
  if (result)
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    v2 = OUTLINED_FUNCTION_2_0();
    wifi_device_get_event_interval(v2, v3, v4, 14, v5);
    return 0;
  }

  return result;
}

void WiFiDeviceClientSetLQMEventInterval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_23_0();
  a18 = v21;
  a19 = v22;
  v24 = v23;
  if (OUTLINED_FUNCTION_13_0(v25))
  {
    OUTLINED_FUNCTION_14_0();
    v26 = OUTLINED_FUNCTION_15_0();
    wifi_device_set_event_interval(v19, v20, v26, 14, v24, &a11);
    OUTLINED_FUNCTION_17_0();
  }

  OUTLINED_FUNCTION_24_0();
}

CFPropertyListRef WiFiDeviceClientCopyNetworkRecommendations()
{
  OUTLINED_FUNCTION_12_0();
  if (_WiFiDeviceClientIsServerPortValid(v0))
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    v1 = OUTLINED_FUNCTION_0_1();
    v6 = wifi_device_copy_network_recommendations(v1, v2, v3, v4, v5);
    v14 = OUTLINED_FUNCTION_2(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29);
    v16 = _WiFiCopyUnserialized(v14, v15);
    v24 = OUTLINED_FUNCTION_2(v16, v17, v18, v19, v20, v21, v22, v23, v28, v30);
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v16 = 0;
  }

  _WiFiVMDealloc(v24, v25);
  return v16;
}

uint64_t WiFiDeviceClientResetAvailabilityEngine(uint64_t a1)
{
  result = _WiFiDeviceClientIsServerPortValid(a1);
  if (result)
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    v2 = OUTLINED_FUNCTION_2_0();

    return wifi_device_reset_availability_engine(v2, v3, v4);
  }

  return result;
}

CFPropertyListRef WiFiDeviceClientCopyMimoStatus(uint64_t a1)
{
  length_4 = 0;
  v26 = 375;
  if (!_WiFiDeviceClientIsServerPortValid(a1))
  {
    v24 = 0;
    v3 = 0;
LABEL_14:
    v15 = 0;
    goto LABEL_11;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &v26);
  if (!v3)
  {
    v24 = 0;
    goto LABEL_14;
  }

  v4 = v3;
  BinaryData = _CFPropertyListCreateBinaryData(v2, v3);
  v6 = BinaryData;
  if (BinaryData)
  {
    CFDataGetBytePtr(BinaryData);
    CFDataGetLength(v6);
  }

  v7 = *(a1 + 16);
  CFDataGetBytePtr(*(a1 + 48));
  CFDataGetLength(*(a1 + 48));
  v8 = OUTLINED_FUNCTION_6_0();
  wifi_device_copy_property(v8, v9, v10, v11, v12, v13, v14);
  v15 = 0;
  if (length_4 && HIDWORD(v26))
  {
    v15 = _WiFiCopyUnserialized(length_4, HIDWORD(v26));
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(v4);
  v3 = OUTLINED_FUNCTION_2(v16, v17, v18, v19, v20, v21, v22, v23, v26, length_4);
LABEL_11:
  _WiFiVMDealloc(v3, v24);
  return v15;
}

BOOL WiFiDeviceClientGetAppState(uint64_t a1)
{
  result = _WiFiDeviceClientIsServerPortValid(a1);
  if (result)
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    v2 = OUTLINED_FUNCTION_2_0();
    wifi_device_get_app_state(v2, v3, v4, v5);
    OUTLINED_FUNCTION_17_0();
    return !v6;
  }

  return result;
}

uint64_t WiFiDeviceClientInsertMissingNetworkService(uint64_t a1)
{
  result = _WiFiDeviceClientIsServerPortValid(a1);
  if (result)
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    v2 = OUTLINED_FUNCTION_2_0();

    return wifi_device_insert_missing_network_service(v2, v3, v4);
  }

  return result;
}

void WiFiDeviceClientSet6GDisablementParams(uint64_t a1, uint64_t a2)
{
  v2 = WiFiNetworkCopyRecord(a2);
  if (v2)
  {
    v3 = v2;
    BinaryData = _CFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], v2);
    if (BinaryData)
    {
      v5 = BinaryData;
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_15_0();
      v6 = OUTLINED_FUNCTION_20();
      CFDataGetBytePtr(v6);
      CFDataGetLength(v5);
      v7 = OUTLINED_FUNCTION_1_0();
      wifi_device_update_network_property(v7, v8, v9, v10, v11);
      CFRelease(v5);
    }

    CFRelease(v3);
  }
}

void _WiFiDeviceClientIsServerPortValid_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0(&dword_25A116000, MEMORY[0x277D86220], a3, "%s: server_port is invalid (NULL or DEAD)", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void _WiFiDeviceClientIsServerPortValid_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0(&dword_25A116000, MEMORY[0x277D86220], a3, "%s: device is NULL", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t WiFiDeviceClientSetWiFiDirect_cold_1(uint64_t a1, unsigned __int8 a2, int *a3, int *a4)
{
  result = _WiFiDeviceClientIsServerPortValid(a1);
  if (result)
  {
    v9 = *(a1 + 16);
    BytePtr = CFDataGetBytePtr(*(a1 + 48));
    Length = CFDataGetLength(*(a1 + 48));
    result = wifi_device_set_wifi_direct_state(v9, BytePtr, Length, a2, a3);
    v12 = *a3;
  }

  else
  {
    v12 = -3902;
  }

  *a4 = v12;
  return result;
}