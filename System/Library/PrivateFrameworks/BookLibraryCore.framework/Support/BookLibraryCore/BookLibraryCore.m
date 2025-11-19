uint64_t sub_100001A2C(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_100001C8C(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_100001E20(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
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
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_100002014(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 275, 0x18u, 0x3Cu, msgh_local_port, 0xAu, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
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
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_100002194(mach_port_t a1, int *a2, uint64_t a3, int a4, _OWORD *a5, void *a6, _DWORD *a7, _DWORD *a8)
{
  v26 = 1;
  v27 = a3;
  v28 = 16777472;
  v29 = a4;
  v30 = NDR_record;
  v31 = *a2;
  v32 = a4;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x3E800000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v16 = mach_msg(&msg, 3, 0x3Cu, 0xD0u, msgh_local_port, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) <= 0xE && ((1 << (v16 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v16)
    {
      if (msg.msgh_id == 71)
      {
        v17 = 4294966988;
      }

      else if (msg.msgh_id == 1100)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v17 = 4294966996;
          if (v26 == 2 && msg.msgh_size == 200 && !msg.msgh_remote_port && HIBYTE(v28) == 1 && HIWORD(v31) << 16 == 1114112)
          {
            v18 = v29;
            if (v29 == v42)
            {
              v17 = 0;
              v19 = *&v30.mig_vers;
              *a2 = v33;
              v20 = v41;
              a5[6] = v40;
              a5[7] = v20;
              v21 = v39;
              a5[4] = v38;
              a5[5] = v21;
              v22 = v35;
              *a5 = v34;
              a5[1] = v22;
              v23 = v37;
              a5[2] = v36;
              a5[3] = v23;
              *a6 = v27;
              *a7 = v18;
              *a8 = v19;
              return v17;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v17 = 4294966996;
          if (HIDWORD(v27))
          {
            if (msg.msgh_remote_port)
            {
              v17 = 4294966996;
            }

            else
            {
              v17 = HIDWORD(v27);
            }
          }
        }

        else
        {
          v17 = 4294966996;
        }
      }

      else
      {
        v17 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v17;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v17;
}

uint64_t sub_1000023E8(mach_port_t a1, __int128 *a2)
{
  v13 = NDR_record;
  v3 = a2[5];
  v18 = a2[4];
  v19 = v3;
  v4 = a2[7];
  v20 = a2[6];
  v21 = v4;
  v5 = a2[1];
  v14 = *a2;
  v15 = v5;
  v6 = a2[3];
  v16 = a2[2];
  v17 = v6;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x3E900000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0xA0u, 0x2Cu, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v10;
  }

  if (v9)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v10;
  }

  if (msg.msgh_id == 71)
  {
    v10 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v10;
  }

  if (msg.msgh_id != 1101)
  {
    v10 = 4294966995;
    goto LABEL_18;
  }

  v10 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v10 = v14;
  if (v14)
  {
    goto LABEL_18;
  }

  return v10;
}

uint64_t sub_100002574(mach_port_t a1, int a2, int a3, _OWORD *a4, uint64_t a5, int a6, _OWORD *a7, void *a8, _DWORD *a9)
{
  v19 = 1;
  v20 = a5;
  v21 = 16777472;
  v22 = a6;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = *a4;
  v25 = a6;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x3EA00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x50u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1102)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a7 = *v24;
              *a8 = v20;
              *a9 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
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
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_100002770(int a1)
{
  v1 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EB10) ^ 8)) ^ byte_1000E7B70[byte_1000E4460[(11 * ((qword_10013EA10 + dword_10013EB10) ^ 8))] ^ 0x3E]) - 66);
  v2 = *(v1 - 4);
  v3 = *(&off_1001252D0 + (byte_1000EC72C[(byte_1000E7D7C[(11 * ((qword_10013EA10 + v2) ^ 8)) - 12] ^ 0x31) - 12] ^ (11 * ((qword_10013EA10 + v2) ^ 8))) - 209);
  v4 = (*v3 - v2) ^ &v7;
  *(v1 - 4) = (1405565963 * v4) ^ 0xBCA8FC1BD5CAFD08;
  *v3 = 1405565963 * (v4 ^ 0xBCA8FC1BD5CAFD08);
  LODWORD(v4) = (a1 ^ 0x6FDFC4EF) + ((2 * a1) & 0xDFBF89DE);
  v5 = 675097751 * (((v8 | 0x6098D724) - (v8 & 0x6098D724)) ^ 0x23D8F2B2);
  v8[0] = v5 ^ 0x539;
  v8[1] = v4 - 184614913 + v5;
  LOBYTE(v3) = 11 * ((*v3 - *(v1 - 4)) ^ 8);
  (*(*(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EB10) ^ 8)) ^ byte_1000E7B70[byte_1000E4460[(11 * ((qword_10013EA10 + dword_10013EB10) ^ 8))] ^ 0x3E]) + 38) + (byte_1000E456C[(byte_1000F0AC4[v3 - 4] ^ 0x30) - 12] ^ v3) + 2600))(v8);
  return (v8[2] - 1958853845);
}

uint64_t sub_10000298C(uint64_t a1)
{
  v1 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EAE8) ^ 8)) ^ byte_1000E7B70[byte_1000E4460[(11 * ((qword_10013EA10 + dword_10013EAE8) ^ 8))] ^ 0x3E]) - 127);
  v2 = *(v1 - 4);
  v3 = *(&off_1001252D0 + (byte_1000EC62C[(byte_1000E7C7C[(11 * ((qword_10013EA10 - v2) ^ 8)) - 12] ^ 0x24) - 12] ^ (11 * ((qword_10013EA10 - v2) ^ 8))) - 63);
  v4 = v2 ^ &v6 ^ *v3;
  *(v1 - 4) = 1405565963 * v4 + 0x435703E42A3502F8;
  *v3 = 1405565963 * (v4 ^ 0xBCA8FC1BD5CAFD08);
  v8 = a1;
  v7[0] = 1504884919 * ((((2 * v7) | 0x1190A692) - v7 - 147346249) ^ 0xF30BE452) + 1680;
  LOBYTE(v3) = 11 * ((*v3 - *(v1 - 4)) ^ 8);
  (*(*(&off_1001252D0 + ((11 * (dword_10013EAE8 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC620[byte_1000E7C70[(11 * (dword_10013EAE8 ^ 8 ^ qword_10013EA10))] ^ 0x27]) - 17) + (byte_1000E7B70[byte_1000E4460[v3] ^ 0x85] ^ v3) + 2632))(v7);
  return (v7[1] - 1958853845);
}

uint64_t sub_100002CD8(uint64_t a1)
{
  v1 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EAF0) ^ 8)) ^ byte_1000E7B70[byte_1000E4460[(11 * ((qword_10013EA10 - dword_10013EAF0) ^ 8))] ^ 0x3E]) - 152);
  v2 = *(v1 - 4);
  v3 = *(&off_1001252D0 + (byte_1000EC720[byte_1000E7D70[(11 * (v2 ^ qword_10013EA10 ^ 8))] ^ 0x31] ^ (11 * (v2 ^ qword_10013EA10 ^ 8))) - 209);
  v4 = &v6[v2 + *v3];
  *(v1 - 4) = 1405565963 * v4 - 0x435703E42A3502F8;
  *v3 = 1405565963 * (v4 ^ 0xBCA8FC1BD5CAFD08);
  v7 = 435584651 * (((&v7 | 0xEB93D522) - &v7 + (&v7 & 0x146C2AD8)) ^ 0x86A1CF74) + 1843;
  v8 = a1;
  LOBYTE(v3) = 11 * ((*v3 + *(v1 - 4)) ^ 8);
  return (*(*(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EAF0) ^ 8)) ^ byte_1000EC820[byte_1000E7E70[(11 * ((qword_10013EA10 + dword_10013EAF0) ^ 8))] ^ 0x60]) + 76) + (v3 ^ byte_1000EC720[byte_1000E7D70[v3] ^ 0x51]) + 2725))(&v7);
}

uint64_t sub_100002EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EB88) ^ 8)) ^ byte_1000EC620[byte_1000E7C70[(11 * ((qword_10013EA10 - dword_10013EB88) ^ 8))] ^ 0x9E]) - 76);
  v5 = *(v4 - 4);
  v6 = *(&off_1001252D0 + (byte_1000EC824[(byte_1000E7E78[(11 * ((qword_10013EA10 + v5) ^ 8)) - 8] ^ 0x60) - 4] ^ (11 * ((qword_10013EA10 + v5) ^ 8))) - 80);
  v7 = &v9[*v6 - v5];
  *(v4 - 4) = (1405565963 * v7) ^ 0xBCA8FC1BD5CAFD08;
  *v6 = 1405565963 * (v7 ^ 0xBCA8FC1BD5CAFD08);
  v10[0] = a3;
  v10[1] = a2;
  v11 = (1361651671 * (((v10 | 0xDB4F6114) - v10 + (v10 & 0x24B09EE8)) ^ 0x9024AD6A)) ^ 0x759;
  v13 = a4;
  v10[2] = a1;
  LOBYTE(v6) = 11 * ((*v6 + *(v4 - 4)) ^ 8);
  (*(*(&off_1001252D0 + ((11 * (dword_10013EB88 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC720[byte_1000E7D70[(11 * (dword_10013EB88 ^ 8 ^ qword_10013EA10))] ^ 0x51]) + 112) + (byte_1000E456C[(byte_1000F0AC4[v6 - 4] ^ 0x30) - 12] ^ v6) + 2731))(v10);
  return (v12 - 1958853845);
}

uint64_t sub_10000324C(uint64_t a1)
{
  v1 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EB78) ^ 8)) ^ byte_1000E4560[byte_1000F0AC0[(11 * ((qword_10013EA10 + dword_10013EB78) ^ 8))] ^ 0x30]) + 5);
  v2 = 11 * ((qword_10013EA10 - *v1) ^ 8);
  v3 = *(&off_1001252D0 + (byte_1000EC72C[(byte_1000E7D7C[v2 - 12] ^ 0xA0) - 12] ^ v2) + 30);
  v4 = (*v3 + *v1) ^ &v6;
  *v1 = (1405565963 * v4) ^ 0xBCA8FC1BD5CAFD08;
  *v3 = 1405565963 * (v4 ^ 0xBCA8FC1BD5CAFD08);
  v8 = a1;
  v7[0] = (1037613739 * (((v7 | 0x8AE8EA3E) - v7 + (v7 & 0x751715C0)) ^ 0x5BEAC741)) ^ 0x3AB;
  LOBYTE(v3) = 11 * (*v1 ^ 8 ^ *v3);
  (*(*(&off_1001252D0 + ((11 * (dword_10013EB78 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC720[byte_1000E7D70[(11 * (dword_10013EB78 ^ 8 ^ qword_10013EA10))] ^ 0x51]) + 112) + (byte_1000F09C0[byte_1000EC528[v3 - 8] ^ 0xDD] ^ v3) + 2550))(v7);
  return v7[1];
}

uint64_t sub_100003450(uint64_t a1)
{
  v1 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EB70) ^ 8)) ^ byte_1000E4560[byte_1000F0AC0[(11 * ((qword_10013EA10 + dword_10013EB70) ^ 8))] ^ 0x30]) - 131);
  v2 = 11 * ((qword_10013EA10 + *v1) ^ 8);
  v3 = *(&off_1001252D0 + (byte_1000EC62C[(byte_1000E7C7C[v2 - 12] ^ 0x27) - 12] ^ v2) - 173);
  v4 = *v1 - &v6 + *v3;
  *v1 = 1405565963 * v4 - 0x435703E42A3502F8;
  *v3 = 1405565963 * (v4 ^ 0xBCA8FC1BD5CAFD08);
  v8 = a1;
  v7 = (435584651 * ((2 * (&v7 & 0x2A8DB6D8) - &v7 + 1433553190) ^ 0x38405370)) ^ 0x488;
  LOBYTE(v3) = 11 * ((*v3 - *v1) ^ 8);
  return (*(*(&off_1001252D0 + ((11 * (dword_10013EB70 ^ 8 ^ qword_10013EA10)) ^ byte_1000F09C0[byte_1000EC520[(11 * (dword_10013EB70 ^ 8 ^ qword_10013EA10))] ^ 0x3A]) - 34) + (byte_1000EC824[(byte_1000E7E78[v3 - 8] ^ 0xA3) - 4] ^ v3) + 2763))(&v7);
}

uint64_t sub_1000037B8(uint64_t a1)
{
  v1 = *(a1 + 8) - 143681137 * ((2 * (a1 & 0x1F3C1F21) - a1 - 524033826) ^ 0x66B4CCE);
  v2 = *(*(&off_1001252D0 + (v1 ^ 0x30E)) - 1) - 1198029474;
  v4 = v2 < 0x183A8A41 || v2 > (*(a1 + 4) - 143681137 * ((2 * (a1 & 0x1F3C1F21) - a1 - 524033826) ^ 0x66B4CCE) + 92640312);
  return (*(*(&off_1001252D0 + v1 - 711) + (v4 | v1) - 1))();
}

uint64_t sub_100003884()
{
  v4 = 210068311 * ((((v3 - 128) | 0xE54B11D8) - ((v3 - 128) & 0xE54B11D8)) ^ 0xB2248B0F);
  *(v3 - 128) = v4 + 1018267821;
  *(v3 - 124) = v1 - v4 + 11;
  *(v3 - 120) = 1833061340 - v4;
  *(v3 - 116) = (v0 - 1203) ^ v4;
  v5 = (*(v2 + 8 * (v0 + 166)))(v3 - 128);
  return (*(v2 + 8 * ((103 * (*(v3 - 112) > ((v0 + 682842033) & 0xD74C9EFF) + 709087485)) ^ v0)))(v5);
}

uint64_t sub_100003954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = v17 + 742307843 * ((797250390 - ((v19 - 136) | 0x2F851356) + ((v19 - 136) | 0xD07AECA9)) ^ 0xCE5861FC) + 776;
  *(v19 - 128) = v16;
  *(v19 - 120) = &a15;
  v20 = (*(v18 + 8 * (v17 + 2353)))(v19 - 136);
  return (*(v18 + 8 * ((((((v17 - 866677318) & 0x33A875FF) - 34) ^ 0x550) * (v15 != 1)) ^ v17)))(v20);
}

uint64_t sub_100003A2C@<X0>(int a1@<W8>, uint64_t a2, int a3, uint64_t *a4, int a5, unsigned int a6, uint64_t a7)
{
  v12 = (v8 ^ 0x3BD0EE3F) == -1;
  v13 = (&a3 ^ 0x1E228D55) * v7;
  a5 = (v11 - 241) ^ v13;
  a6 = (((2 * ((v8 ^ 0x3BD0EE3F) + 1)) & 0xFBFDEFDE) + (((v8 ^ 0x3BD0EE3F) + 1) ^ 0xFDFEF7EF) + ((((v11 + 1344) | 1) + 1676776691) ^ ((v11 + 706) | 0x48))) ^ v13;
  a7 = v9;
  a4 = &a2;
  a3 = v13 ^ a1;
  v14 = (*(v10 + 8 * (v11 ^ 0x832)))(&a3);
  v15 = *(v9 + 24) != 1958853845 || v12;
  return (*(v10 + 8 * ((477 * v15) ^ v11)))(v14);
}

void sub_100003B8C(uint64_t a1)
{
  v1 = *(a1 + 40) - 210068311 * ((2 * (a1 & 0x6E971DBB) - a1 - 1855397308) ^ 0xC6077893);
  v2 = 210068311 * (&v5 ^ 0x576F9AD7);
  v5 = v4;
  v7 = v2 ^ (v1 - 562358863);
  v6 = v2 ^ 0x99739F6E;
  v3 = *(&off_1001252D0 + (v1 ^ 0xCE)) - 8;
  (*&v3[8 * (v1 ^ 0xACE)])(&v5);
  __asm { BRAA            X14, X17 }
}

void sub_100003DE8()
{
  *v6 = *v2;
  *v5 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x4AEC72EE4AEC72EELL;
  v3 = *(v2 + 24);
  v4 = *(v2 + 20) | (v0 + 265) ^ 0x3A8;
  *(v2 + 16) = 1066457471;
  *(v2 + 20) = v4;
  *(v7 + 32) = v3;
}

uint64_t sub_100003E74(uint64_t a1, int a2, int a3)
{
  v6 = a2 + v5 > (((a3 - 2451) | 0x410) ^ 0x27CF0D73u);
  if ((v3 - 1976043508) < 0xD830F69C == v6)
  {
    v6 = a2 + v5 - 667879780 > (v3 - 1976043508);
  }

  return (*(v4 + 8 * ((52 * !v6) ^ a3)))();
}

uint64_t sub_100003EF0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = (a1 + 32);
  v10 = *v9;
  v11 = (v7 + (a2 + 32));
  *v11 = *(v9 - 1);
  v11[1] = v10;
  return (*(v8 + 8 * (((v6 == 32) * ((v5 + 200) ^ a5)) ^ v5)))();
}

uint64_t sub_100003FC8@<X0>(int a1@<W1>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = HIDWORD(v13) + v11 * (*(*(a8 + 8) + 4) ^ a2) + (v15[1] ^ a2) + (v10 >> (v12 - 10)) + v8 * (*(*(a7 + 8) + 4) ^ a2);
  *v15 = v17 + a2 - (a1 & (2 * v17));
  return (*(v14 + 8 * (((v9 == 2) * v16) ^ v12)))();
}

uint64_t sub_10000404C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, char *a16, int a17)
{
  a16 = &a11;
  a15 = (v18 + 855) ^ (50899313 * ((((&a15 | 0x3A6C8A16) ^ 0xFFFFFFFE) - (~&a15 | 0xC59375E9)) ^ 0xEF585F93));
  v19 = (*(v17 + 8 * (v18 + 1718)))(&a15);
  return (*(v17 + 8 * (((a17 == 1958853845) * (((v18 + 1311388042) & 0xFD7 ^ 0x4AD31C31) + ((v18 + 822345347) | 0x8428E404))) ^ v18)))(v19);
}

uint64_t sub_100004120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, int a40, int a41)
{
  v43 = (((a5 ^ 0xBE354BF2) + 1103803406) ^ ((a5 ^ 0x626E0EBB) - 1651379899) ^ ((a5 ^ 0x12D526D5) - 315958997)) + (((a38 ^ 0x9518EFA7) + 1793527897) ^ ((a38 ^ 0xD3262F96) + 752472170) ^ ((a38 ^ 0x88B0A3AD) + 2001689683)) - 958680683;
  v44 = (v43 ^ 0xC439853B) & (2 * (v43 & 0xD64115A3)) ^ v43 & 0xD64115A3;
  v45 = ((2 * (v43 ^ 0x483B863B)) ^ 0x3CF52730) & (v43 ^ 0x483B863B) ^ (2 * (v43 ^ 0x483B863B)) & 0x9E7A9398;
  v46 = v45 ^ 0x820A9088;
  v47 = (v45 ^ 0x18000310) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x79EA4E60) & v46 ^ (4 * v46) & 0x9E7A9398;
  v49 = (v48 ^ 0x186A0200) & (16 * v47) ^ v47;
  v50 = ((16 * (v48 ^ 0x86109198)) ^ 0xE7A93980) & (v48 ^ 0x86109198) ^ (16 * (v48 ^ 0x86109198)) & 0x9E7A9390;
  v51 = v49 ^ 0x9E7A9398 ^ (v50 ^ 0x86281100) & (v49 << 8);
  v52 = v43 ^ (2 * ((v51 << 16) & 0x1E7A0000 ^ v51 ^ ((v51 << 16) ^ 0x13980000) & (((v50 ^ 0x18528218) << 8) & 0x1E7A0000 ^ 0x4680000 ^ (((v50 ^ 0x18528218) << 8) ^ 0x7A930000) & (v50 ^ 0x18528218))));
  v53 = (((a2 ^ 0x1A9AF80E) - 446363662) ^ ((a2 ^ 0xD4E2F32C) + 723324116) ^ ((a2 ^ 0xF668BE) - 16148670)) + (((a39 ^ 0xD922CF1E) + 652030178) ^ ((a39 ^ 0x93508879) + 1823438727) ^ ((a39 ^ 0x84FC24FB) + 2063850245)) - 814917916;
  v54 = (v53 ^ 0xE90F6305) & (2 * (v53 & 0xCDAF7054)) ^ v53 & 0xCDAF7054;
  v55 = ((2 * (v53 ^ 0x724BC30D)) ^ 0x7FC966B2) & (v53 ^ 0x724BC30D) ^ (2 * (v53 ^ 0x724BC30D)) & 0xBFE4B358;
  v56 = v55 ^ 0x80249149;
  v57 = (v55 ^ 0x3FC00210) & (4 * v54) ^ v54;
  v58 = ((4 * v56) ^ 0xFF92CD64) & v56 ^ (4 * v56) & 0xBFE4B358;
  v59 = (v58 ^ 0xBF808140) & (16 * v57) ^ v57;
  v60 = ((16 * (v58 ^ 0x643219)) ^ 0xFE4B3590) & (v58 ^ 0x643219) ^ (16 * (v58 ^ 0x643219)) & 0xBFE4B350;
  v61 = v59 ^ 0xBFE4B359 ^ (v60 ^ 0xBE403100) & (v59 << 8);
  a38 = v52 ^ 0xA510F;
  a39 = v53 ^ (2 * ((v61 << 16) & 0x3FE40000 ^ v61 ^ ((v61 << 16) ^ 0x33590000) & (((v60 ^ 0x1A48249) << 8) & 0x3FE40000 ^ 0x1B440000 ^ (((v60 ^ 0x1A48249) << 8) ^ 0x64B30000) & (v60 ^ 0x1A48249)))) ^ 0x1A68757A;
  v62 = (((v41 ^ 0xFBDAFC30) + 69534672) ^ ((v41 ^ 0x54409815) - 1413519381) ^ ((v41 ^ 0x611407B9) - 1628702649)) + (((a40 ^ 0xFF45937B) + 12217477) ^ ((a40 ^ 0xD91F0308) + 652279032) ^ ((a40 ^ 0xE8D4F3EF) + 388697105)) - 1167086498;
  v63 = (v62 ^ 0xF0A8DA91) & (2 * (v62 & 0xE2AD1ADA)) ^ v62 & 0xE2AD1ADA;
  v64 = ((2 * (v62 ^ 0x75A8CA95)) ^ 0x2E0BA09E) & (v62 ^ 0x75A8CA95) ^ (2 * (v62 ^ 0x75A8CA95)) & 0x9705D04E;
  v65 = v64 ^ 0x91045041;
  v66 = (v64 ^ 0x6008008) & (4 * v63) ^ v63;
  v67 = ((4 * v65) ^ 0x5C17413C) & v65 ^ (4 * v65) & 0x9705D04C;
  v68 = (v67 ^ 0x14054000) & (16 * v66) ^ v66;
  v69 = ((16 * (v67 ^ 0x83009043)) ^ 0x705D04F0) & (v67 ^ 0x83009043) ^ (16 * (v67 ^ 0x83009043)) & 0x9705D040;
  v70 = v68 ^ 0x9705D04F ^ (v69 ^ 0x10050000) & (v68 << 8);
  v71 = v62 ^ (2 * ((v70 << 16) & 0x17050000 ^ v70 ^ ((v70 << 16) ^ 0x504F0000) & (((v69 ^ 0x8700D00F) << 8) & 0x17050000 ^ 0x12050000 ^ (((v69 ^ 0x8700D00F) << 8) ^ 0x5D00000) & (v69 ^ 0x8700D00F))));
  v72 = (((v42 ^ 0xA3FF8804) + 1543534588) ^ ((v42 ^ 0xB43099BB) + 1271883333) ^ ((v42 ^ 0xD9417223) + 650022365)) + (((a41 ^ 0xDBF4B5BE) + 604719682) ^ ((a41 ^ 0x73E600E) - 121528334) ^ ((a41 ^ 0x1244B62C) - 306492972)) + 196430234;
  v73 = (v72 ^ 0x19467DDF) & (2 * (v72 & 0x91677D9E)) ^ v72 & 0x91677D9E;
  v74 = ((2 * (v72 ^ 0x3B8634DB)) ^ 0x55C2928A) & (v72 ^ 0x3B8634DB) ^ (2 * (v72 ^ 0x3B8634DB)) & 0xAAE14944;
  v75 = v74 ^ 0xAA214945;
  v76 = (v74 ^ 0x800000) & (4 * v73) ^ v73;
  v77 = ((4 * v75) ^ 0xAB852514) & v75 ^ (4 * v75) & 0xAAE14944;
  v78 = (v77 ^ 0xAA810100) & (16 * v76) ^ v76;
  v79 = ((16 * (v77 ^ 0x604841)) ^ 0xAE149450) & (v77 ^ 0x604841) ^ (16 * (v77 ^ 0x604841)) & 0xAAE14940;
  v80 = v78 ^ 0xAAE14945 ^ (v79 ^ 0xAA000000) & (v78 << 8);
  a40 = v71 ^ 0x2222D9D8;
  a41 = v72 ^ (2 * ((v80 << 16) & 0x2AE10000 ^ v80 ^ ((v80 << 16) ^ 0x49450000) & (((v79 ^ 0xE14905) << 8) & 0x2AE10000 ^ 0xAA00000 ^ (((v79 ^ 0xE14905) << 8) ^ 0x61490000) & (v79 ^ 0xE14905)))) ^ 0x1AA98C88;
  return a19(1071906816, a2, &a28 + 4, a16, a5, 1761102812, 2533864852, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_10000413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = (*(v64 + 8 * (v62 + 2530)))();
  STACK[0x288] -= 16;
  return (*(a62 + 8 * ((193 * (v63 != ((v62 + 372) ^ 0x74C1BE5B))) ^ (v62 + 309))))(v65);
}

uint64_t sub_1000041DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, int a15, unsigned int a16, int a17, uint64_t a18, char *a19)
{
  v23 = 1785193651 * ((((2 * &a14) | 0xBA467566) - &a14 + 584893773) ^ 0x2B029E9F);
  a18 = a12;
  a19 = &a11;
  a15 = v23 ^ 0x45907977;
  a16 = v23 - 929753733;
  a17 = v22 - v23 - 2013067856;
  v24 = (*(v21 + 8 * (v22 ^ 0xFD1)))(&a14);
  return (*(v21 + 8 * ((645 * (a14 == (((v22 ^ (v19 + 576)) - v19) ^ (v20 - 268)))) ^ v22)))(v24);
}

uint64_t sub_100004308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = 4;
  v16 = (*(v13 + 8 * (v15 + 332)))(*(v14 + 4), 22, 0, 0, &a10, &a13);
  v21 = v16 != ((v15 - 2044) ^ 0x1CF) || a13 != 4;
  return (*(v13 + 8 * ((197 * v21) ^ (v15 - 1658))))(v16, v17, v18, v19);
}

uint64_t sub_1000043B8()
{
  v8 = v1 + 2;
  v9 = (v2 - 2);
  *v9 = (v8 ^ v5) * (v8 + 17);
  *(v9 - 1) = (v3 + v8) * (v8 ^ 0xBB);
  return (*(v7 + 8 * (((v4 == 2) * v6) ^ v0)))();
}

uint64_t sub_100004544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  STACK[0x4B8] = 0x9908B0DF00000000;
  LODWORD(STACK[0x2B8]) = **(v63 + 8 * (v62 - 86));
  *(v65 - 192) = **(v63 + 8 * (v62 - 65)) - v64;
  *(v65 - 168) = v64;
  v67 = v62 + 437233576 - v64;
  *(v65 - 184) = v64 + v62 + 437233576 + 57;
  *(v65 - 180) = v67;
  *(v65 - 176) = -v64;
  *(v65 - 172) = 55969656 - v64 + v62;
  *(v65 - 160) = v67 - 7;
  v68 = (*(v66 + 8 * (v62 + 2509)))(v65 - 192);
  return (*(a62 + 8 * *(v65 - 156)))(v68);
}

uint64_t sub_100004638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x2E4]) = STACK[0x344];
  STACK[0x290] = STACK[0x2C0];
  LODWORD(STACK[0x3A4]) = 1429511819;
  return sub_100045F1C(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000046DC(__n128 a1)
{
  v1[-1] = a1;
  *v1 = a1;
  return (*(v5 + 8 * (((v2 == 0) * v4) ^ v3)))();
}

uint64_t sub_100004704()
{
  v3 = vdupq_n_s32(0xFE1ABF52);
  *&STACK[0x268] = v3;
  *&STACK[0x278] = v3;
  return (*(v2 + 8 * ((((v0 & 0xFFFFFFF8) == 8) * (((v1 + 740911930) & 0xD3D69523) - 509)) ^ (v1 - 789))))();
}

void sub_100004790()
{
  v4 = *(v0 + 24);
  **(v0 + 8) = *v1;
  *v4 = *v2 - (((2 * (v3 ^ 0x4A6)) ^ 0xFE16A962) & (2 * *v2)) + 2131449635;
  *(v0 + 16) = 1958853845;
}

uint64_t sub_1000047FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v17 = v15 - 1928;
  v18 = a4 + a5 + 3;
  v19 = ((v18 & 0x1BF756D2) << (((v15 - 43) | 2) - 17)) & (v18 ^ 0x93E754CB) ^ v18 & 0x1BF756D2;
  v20 = ((v15 + 2024281399) ^ (2 * (v18 ^ 0xA7A3596B))) & (v18 ^ 0xA7A3596B) ^ (2 * (v18 ^ 0xA7A3596B)) & 0xBC540FB8;
  v21 = v20 ^ 0x84540089;
  v22 = (v20 ^ 0x38000F11) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0xF1503EE4) & v21 ^ (4 * v21) & 0xBC540FB8;
  v24 = (v23 ^ 0xB0500EB0) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC040119)) ^ 0xC540FB90) & (v23 ^ 0xC040119) ^ (16 * (v23 ^ 0xC040119)) & 0xBC540FB0;
  v26 = v24 ^ 0xBC540FB9 ^ (v25 ^ 0x84400B00) & (v24 << 8);
  return (*(v16 + 8 * ((100 * (((v18 ^ (2 * ((v26 << 16) & 0x3C540000 ^ v26 ^ ((v26 << 16) ^ 0xFB90000) & (((v25 ^ 0x38140429) << 8) & 0xBC540000 ^ 0x28500000 ^ (((v25 ^ 0x38140429) << 8) ^ 0x540F0000) & (v25 ^ 0x38140429))))) & 0xFFFFFFFC ^ 0x7B7F49A0) - a15 == -1912886424)) ^ v17)))();
}

uint64_t sub_1000049E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, unsigned int a17)
{
  a16 = &a10;
  a14 = a13;
  a17 = (v17 + 177) ^ (843532609 * (&a14 ^ 0x5C4D5485));
  (*(v18 + 8 * (v17 + 2506)))(&a14);
  a16 = &a12;
  a14 = a13;
  a17 = (v17 + 177) ^ (843532609 * ((&a14 & 0xE2059349 | ~(&a14 | 0xE2059349)) ^ 0x41B73833));
  (*(v18 + 8 * (v17 ^ 0xA5E)))(&a14);
  a15 = a13;
  LODWORD(a14) = v17 + 843532609 * ((((2 * &a14) | 0xCE3AB410) - &a14 + 417506808) ^ 0xBB500E8D) + 23;
  v20 = (*(v18 + 8 * (v17 ^ 0xA56)))(&a14);
  return (*(v18 + 8 * ((486 * (((v17 - 1) ^ (a16 == ((v17 + 34 + v19) ^ 0xE32768DB))) & 1)) ^ v17)))(v20);
}

uint64_t sub_100004B24@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v6 = 6 * (v2 ^ 4);
  v7 = a2 + v6 - 283;
  *(v3 + v7) = *(a1 + v7);
  return (*(v5 + 8 * (((v7 != ((v6 - 250) | 6) - 38) * v4) ^ (v6 + 1182))))();
}

uint64_t sub_100004B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13)
{
  a13 = 4;
  v16 = (*(v14 + 8 * (v13 + 2376)))(*(v15 + 4), 23, 0, 0, &a11, &a13);
  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = a13 == ((v13 - 319) | 0x42u) - 206;
  }

  v21 = !v20;
  return (*(v14 + 8 * ((27 * v21) ^ v13)))(v16, v17, v18, v19);
}

uint64_t sub_100004BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, char a18, int a19, int a20, char a21, char *a22, int a23, int a24, uint64_t a25, int *a26, int a27, char *a28, char *a29)
{
  a17 = 1429511819;
  v33 = *(a2 + 8);
  v34 = *(a2 + 4) - 604722695;
  v35 = 435584651 * ((((2 * v31) | 0x74B97B24) - v31 - 979156370) ^ 0x576EA7C4);
  a24 = v35 + v29 + 835;
  a22 = &a21;
  a25 = v33;
  a26 = &a17;
  a27 = v34 ^ v35;
  a28 = &a16;
  a29 = &a18;
  v37 = (*(v30 + 8 * (v29 + 2623)))(&a22);
  return (*(v30 + 8 * ((57 * (a23 == (v29 ^ v32 ^ 0x74C1BDEC))) ^ v29)))(v37, a2);
}

uint64_t sub_100004CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *(v15 - 120) = v11;
  *(v15 - 128) = v14 + 675097751 * ((((v15 - 136) | 0x596B330B) - (v15 - 136) + ((v15 - 136) & 0xA694CCF0)) ^ 0x1A2B169D) - 666;
  *(v15 - 136) = v13;
  v16 = (*(v12 + 8 * (v14 ^ 0xEAD)))(v15 - 136);
  return (*(v12 + 8 * (((a11 < 1) * (((v14 + 133) | 0x249) + 202)) ^ (v14 - 407))))(v16);
}

uint64_t sub_100004D6C(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = v6 + 2;
  v12 = v8 + 2;
  v13 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a1)), a2);
  v12[-1] = vaddq_s8(vsubq_s8(v11[-1], vandq_s8(vaddq_s8(v11[-1], v11[-1]), a1)), a2);
  *v12 = v13;
  return (*(v10 + 8 * (((v7 == 32) * v9) ^ (a5 + v5 + 946))))();
}

uint64_t sub_100004D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v53 = (v49 + 9540) | 0x16140086;
  v54 = (*(v50 + 8 * (v49 + 2097)))(&a49, 0);
  (*(v50 + 8 * (v49 ^ 0x876u)))(v54);
  v55 = (*(v50 + 8 * (v49 + 1998)))();
  v51[1] = ((v55 + 1383211800 - ((2 * v55) & 0xA4E44630)) ^ 0x52722318) + ((1664525 * (*v51 ^ (*v51 >> 30))) ^ v51[1]);
  *(v52 - 144) = (v53 + 1329502705) ^ a39;
  *(v52 - 128) = ((v53 - 1295983940) ^ 0x57) - a39;
  *(v52 - 124) = a39 ^ 1;
  *(v52 - 112) = v53 - 1295983940 - a39;
  *(v52 - 108) = ((v53 - 1295983940) & 0xEBFFE7F4) - a39;
  *(v52 - 120) = a37;
  *(v52 - 136) = a39 + 2;
  v56 = (*(a40 + 8 * (v53 - 370417114)))(v52 - 144);
  return (*(a40 + 8 * *(v52 - 140)))(v56);
}

uint64_t sub_100004F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  *v65 = (((((v63 - 370419877) ^ 0x13FE) - v62) & ((v63 - 370419877) ^ ~v62) | v62 & ~(v63 - 370419877)) >> 31) + v62 + 1;
  v68 = (((v61 ^ (v61 >> 11)) << 7) ^ 1 ^ (v63 - 370419877)) & 0x9D2C5680 ^ v61 ^ (v61 >> 11);
  v69 = (v68 << 15) & 0xEFC60000 ^ v68 ^ (((v68 << 15) & 0xEFC60000 ^ v68) >> 18);
  v70 = &a61 + (a25 - 1);
  v71 = -976034857 * ((*(*v66 + (*a31 & 0x1C446714)) ^ v70) & 0x7FFFFFFF);
  v72 = -976034857 * (v71 ^ HIWORD(v71));
  v73 = *(v67[186] + (v72 >> 24) - 10);
  v74 = *(v67[124] + (v72 >> 24) - 8);
  v75 = (v69 - ((2 * v69) & 0x5C2) - 543) ^ *(v67[2] + (v72 >> 24)) ^ v73 ^ v74 ^ v72 ^ (29 * (v72 >> 24));
  LODWORD(v72) = ((v69 - ((2 * v69) & 0xC2) - 31) ^ *(v67[2] + (v72 >> 24)) ^ v73 ^ v74 ^ v72 ^ (29 * BYTE3(v72)));
  *v70 = v75 ^ 0xE1;
  return (*(v64 + 8 * ((4 * (a25 != (v72 != 225))) | (32 * (a25 != (v72 != 225))) | 0x359)))();
}

uint64_t sub_1000050EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char *a15, int a16)
{
  a14 = (50899313 * ((&a14 + 1859046412 - 2 * (&a14 & 0x6ECECC0C)) ^ 0x4405E676)) ^ 0x78C;
  a15 = &a10;
  v19 = (*(v16 + 22360))(&a14);
  return (*(v16 + 8 * ((51 * (a16 == v17)) ^ v18)))(v19);
}

uint64_t sub_100005200(_DWORD *a1)
{
  v1 = a1[2] - 1037613739 * ((1764004648 - (a1 ^ 0x93F5BC64 | 0x69249328) + (a1 ^ 0x93F5BC64 | 0x96DB6CD7)) ^ 0xD42CFDCC);
  v2 = *a1;
  v3 = v1 + 542396763;
  v8 = *(*a1 + 8);
  v7 = v1 + 542396763 - 143681137 * ((2 * (&v7 & 0x26870FE8) - &v7 - 646385647) ^ 0x3FD05C01);
  v4 = (*(&off_1001252D0 + (v1 + 542396723)) + 8 * (v1 ^ 0xDFABA52A));
  (*(v4 - 1))(&v7);
  v5 = *v2;
  v7 = v3 - 143681137 * ((1018349245 - (&v7 | 0x3CB2C6BD) + (&v7 | 0xC34D3942)) ^ 0x25E59552);
  v8 = v5;
  return (*(v4 - 1))(&v7);
}

uint64_t sub_10000538C@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, int a4, int a5)
{
  v9 = v7 ^ (a2 + 2516);
  v10 = v5 + v7 + 1561;
  v11 = v8 < a5 + 1067675039;
  if (a5 + 1067675039 < v8)
  {
    v11 = 1;
  }

  return (*(v6 + 8 * ((v11 * (v9 ^ 0x16D)) ^ v10)))(0xA2C4B17CD766117BLL, a1, 0);
}

uint64_t sub_100005480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v30 = 1504884919 * ((-629142273 - (&a20 | 0xDA800CFF) + (&a20 | 0x257FF300)) ^ 0xDEBC441B);
  a20 = (v28 ^ 0x32F39CFB) + ((2 * v28) & 0x65E739F6) - 272629984 + v30;
  a21 = 2715 - v30;
  a22 = a16;
  (*(v29 + 22088))(&a20);
  LODWORD(a24) = (50899313 * (&a20 ^ 0x2ACB2A7A)) ^ 0x480;
  a22 = v27;
  a23 = a16;
  (*(v29 + 22552))(&a20);
  v31 = 1504884919 * ((&a20 + 1968504810 - 2 * (&a20 & 0x7554FFEA)) ^ 0x8E9748F1);
  a22 = a16;
  a20 = v31 + (v26 ^ 0x3BBF9D9F) - 420217220 + ((2 * v26) & 0x777F3B3E);
  a21 = 2715 - v31;
  (*(v29 + 22088))(&a20);
  v32 = 742307843 * ((2 * (&a20 & 0x6B01FAD8) - &a20 - 1795291872) ^ 0x8ADC8875);
  a24 = a16;
  LODWORD(a23) = 1355 - v32;
  HIDWORD(a23) = (v25 ^ 0xF7ABB9FD) + ((2 * v25) & 0xEF5773FA) - v32 + 1275058160;
  a22 = v24;
  v33 = (*(v29 + 22248))(&a20);
  return (*(v29 + 8 * ((1107 * (a20 == 1958853845)) ^ 0x135u)))(v33);
}

uint64_t sub_1000056D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = v62 + 357;
  v65 = (*(v63 + 8 * (v62 + 929)))(1576, 0x105004009637391);
  STACK[0x350] = v65;
  return (*(a62 + 8 * (((v65 != 0) | (4 * (v65 != 0))) ^ v64)))();
}

uint64_t sub_100005750()
{
  v7 = v5;
  v6 = 1270589797 - 143681137 * ((2 * (&v6 & 0x45D89318) - &v6 - 1171821339) ^ 0x5C8FC0F5) + v3;
  (*(v2 + 8 * (v3 ^ (v1 + 3268))))(&v6);
  return (v0 - 1958853845);
}

uint64_t sub_100005D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t *a13, int a14)
{
  a12 = (v15 + 758) ^ (50899313 * ((2 * (&a12 & 0x4CF252F0) - &a12 + 856534284) ^ 0x19C68776));
  a13 = &a9;
  v17 = (*(v14 + 8 * (v15 ^ 0xE7Du)))(&a12);
  return (*(v14 + 8 * (((a14 == v16) * (((v15 - 1209610056) & 0x97E6DEBF ^ 0x68192DA7) + v15 + 533)) ^ v15)))(v17);
}

uint64_t sub_100005E94(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v14 = *(v11 + 48 * v9 + 36);
  v16 = v14 != v13 && ((v8 + 413167229) & 0xE75F8BD7 ^ (a3 + 211)) + v14 < a8;
  return (*(v10 + 8 * ((v16 * ((v8 + 1291737151) & 0xFBFFF6F7 ^ (v12 - 16))) | v8)))();
}

uint64_t sub_100005FAC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X3>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24)
{
  v30 = v24 < a1;
  *(&a24 + v26) = *(a2 + a3) - ((2 * *(a2 + a3)) & 0x40) + 32;
  if (v30 == a3 + 1 > v27)
  {
    v30 = a3 + (v29 ^ 0x8D9 ^ (a1 - 40)) < v24;
  }

  return (*(v28 + 8 * ((v30 * v25) | v29)))();
}

uint64_t sub_100006058()
{
  v3 = 210068311 * ((((v2 - 136) | 0x310E5450) - ((v2 - 136) & 0x310E5450)) ^ 0x6661CE87);
  *(v2 - 128) = 1833061341 - v3;
  *(v2 - 124) = (v1 + 1215) ^ v3;
  *(v2 - 136) = v3 + 1018267821;
  *(v2 - 132) = 1099650842 - v3;
  v4 = (*(v0 + 8 * (v1 ^ 0xA78)))(v2 - 136);
  return (*(v0 + 8 * (((*(v2 - 120) <= (((v1 + 1107) | 0xC2) ^ 0x2A43D41Du)) * (((v1 - 162) | 0x408) - 1041)) ^ v1)))(v4);
}

uint64_t sub_10000612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = v68 - 2182;
  v71 = (*(v69 + 8 * (v68 ^ 0x3DC)))(*a25, a2, a68);
  return (*(a62 + 8 * (((LODWORD(STACK[0x378]) != 1958853845) * (((v70 + 2045858455) & 0x860EAEDE) + (v70 ^ 0xFFFFFE94))) ^ v70)))(v71);
}

uint64_t sub_1000061B4@<X0>(int a1@<W8>)
{
  v8 = v1 - 2;
  v9 = v2 + 2;
  *(v8 + v4) = (v9 ^ v5) * (v9 + 17);
  *(v8 + 90) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v3 == 2) * v6) ^ a1)))();
}

uint64_t sub_100006288@<X0>(int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18)
{
  v24 = v19 < v20;
  *(&a18 + a3) = *(v23 + v21) + (~(*(v23 + v21) << (v18 + 22)) | 0xBF) + 33;
  if (v24 == v21 + 1 > a2)
  {
    v24 = a1 + v21 + 63 < v19;
  }

  return (*(v22 + 8 * ((7 * v24) ^ v18)))();
}

uint64_t sub_100006300(uint64_t a1)
{
  if (v1)
  {
    v4 = ((2 * v2) & 0xBF33F1BE) + (v2 ^ 0x5F99F8DF) == 1603926239;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((46 * v5) ^ 0x41Fu)))(a1);
}

uint64_t sub_1000063AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, unsigned int a13, char *a14, int a15)
{
  a14 = &a11;
  a13 = (50899313 * ((&a13 & 0x93521CC9 | ~(&a13 | 0x93521CC9)) ^ 0x4666C94C)) ^ 0x78C;
  v17 = (*(v15 + 22360))(&a13);
  return (*(v15 + 8 * ((350 * (a15 == v16)) ^ 0x86Cu)))(v17);
}

uint64_t sub_100006430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v20 = v17 + 16;
  v21 = (v20 ^ a3 ^ a5) + v16;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v24.i64[1] = a8;
  v25 = vrev64q_s8(veorq_s8(veorq_s8(*(a1 + v21), *(v15 + v22 - 15)), veorq_s8(*(v22 + v14 - 12), *(v22 + v13 - 10))));
  v26 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v25, v25, 8uLL), a10), vmulq_s8(v24, a9)));
  *(a1 + v21) = vextq_s8(v26, v26, 8uLL);
  return (*(v19 + 8 * (((a2 != v20) * a4) ^ v18)))();
}

uint64_t sub_10000648C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v8 = *(a1 + 40);
  *v6 = 0;
  return (*(v7 + 8 * (((v8 == 0) * (((a6 - 1789) | 0x640) - 1567)) ^ a6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_100006958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a13 = a12;
  a15 = &a10;
  a16 = (v16 - 1292) ^ (843532609 * ((&a13 & 0x3D4DE63D | ~(&a13 | 0x3D4DE63D)) ^ 0x9EFF4D47));
  (*(v17 + 8 * (v16 ^ 0xC13u)))(&a13);
  a14 = a12;
  LODWORD(a13) = v16 + 843532609 * (((&a13 | 0xFAC3DC5D) - (&a13 & 0xFAC3DC5D)) ^ 0xA68E88D8) - 1446;
  v19 = (*(v17 + 8 * (v16 + 1045)))(&a13);
  return (*(v17 + 8 * (((a15 == v18) * (v16 - 1685)) ^ v16)))(v19);
}

uint64_t sub_100006A88@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v8 = (a1 ^ 0x84C) & v5;
  *(a2 + v5) = *(v2 + v5) ^ (89 * v8) ^ *(*(&off_1001252D0 + v6 - 82) + v8 - 4) ^ *(*(&off_1001252D0 + v6 - 61) + v8 + 1) ^ *(*(&off_1001252D0 + v6 + 67) + v8 - 2) ^ 0x20;
  return (*(v7 + 8 * ((114 * (((v5 + 1) ^ v4) == v3)) ^ v6)))();
}

uint64_t sub_100006B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, uint64_t a18, unsigned int a19, unsigned int a20, uint64_t a21)
{
  v27 = 1504884919 * ((&a16 & 0xED37EF2E | ~(&a16 | 0xED37EF2E)) ^ 0xE90BA7CA);
  a18 = a13;
  a16 = (v25 ^ 0x7BF79E5F) + ((2 * v25) & 0xF7EF3CBE) - 1497629252 + v27;
  a17 = 2715 - v27;
  (*(v26 + 22088))(&a16);
  v28 = 742307843 * ((154406839 - (&a16 | 0x9340FB7) + (&a16 | 0xF6CBF048)) ^ 0xE8E97D1D);
  a21 = a13;
  a19 = 1355 - v28;
  a20 = ((2 * v24) & 0xD7F77FDE) + (v24 ^ 0x6BFBBFEF) - v28 - 676343298;
  a18 = v22;
  (*(v26 + 22248))(&a16);
  v29 = 742307843 * ((2 * (&a16 & 0x77E2F98) - &a16 + 2021773413) ^ 0x66A35D30);
  a21 = a13;
  a19 = 1355 - v29;
  a20 = (v23 ^ 0x7FAF9BFF) + ((2 * v23) & 0xFF5F37FE) - v29 - 1006897682;
  a18 = a11;
  (*(v26 + 22248))(&a16);
  v30 = 1504884919 * ((2 * (&a16 & 0x49B2C40) - &a16 + 2070205373) ^ 0x80A764A6);
  a16 = (v21 ^ 0xA7B39F7F) + ((2 * v21) & 0x4F673EFE) + 2063596700 + v30;
  a17 = 2715 - v30;
  a18 = a13;
  v31 = (*(v26 + 22088))(&a16);
  return (*(v26 + 8 * ((2826 * (a19 == 1958853845)) ^ 0x180u)))(v31);
}

uint64_t sub_100006DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v26 = (LOBYTE(STACK[0x2FC]) - ((2 * LOBYTE(STACK[0x2FC])) & 0x9C) + 86);
  if (v26 == 87)
  {
    v28 = a8 ^ 0x2ED;
    v31 = STACK[0x2E0];
    v32 = STACK[0x2DC];
    LOBYTE(STACK[0x2D4]) = (8 * (LOBYTE(STACK[0x2E0]) - ((LOBYTE(STACK[0x2E0]) << ((a8 ^ 0xED) + 27)) & 2)) + 8) ^ 0x28;
    LOBYTE(STACK[0x2D5]) = (v31 >> 5) ^ 0x20;
    LOBYTE(STACK[0x2D6]) = (v31 >> 13) ^ 0x20;
    LOBYTE(STACK[0x2D7]) = (v31 >> 21) ^ 0x20;
    LOBYTE(STACK[0x2D8]) = ((__PAIR64__(v32, v31) >> 29) - ((2 * (__PAIR64__(v32, v31) >> 29)) & 0x5A) + 45) ^ 0xD;
    LOBYTE(STACK[0x2D9]) = (v32 >> 5) ^ 0x20;
    LOBYTE(STACK[0x2DA]) = (v32 >> 13) ^ 0x20;
    v30 = (v32 >> 21) ^ 0x20;
    goto LABEL_5;
  }

  v27 = a8;
  if (v26 == 84)
  {
    v28 = a12 & 0x10C7F6F6;
    v30 = STACK[0x2DC];
    v29 = STACK[0x2E0];
    LOBYTE(STACK[0x2D4]) = (LODWORD(STACK[0x2DC]) >> 21) ^ 0x20;
    LOBYTE(STACK[0x2D5]) = (v30 >> (a12 & 0xF6 ^ 0xEB)) ^ 0x20;
    LOBYTE(STACK[0x2D6]) = (v30 >> 5) ^ 0x20;
    LOBYTE(STACK[0x2D7]) = ((__PAIR64__(v30, v29) >> 29) - ((2 * (__PAIR64__(v30, v29) >> 29)) & 0x14) - 118) ^ 0xAA;
    LOBYTE(STACK[0x2D8]) = (v29 >> 21) ^ 0x20;
    LOBYTE(STACK[0x2D9]) = (v29 >> 13) ^ 0x20;
    LOBYTE(STACK[0x2DA]) = (v29 >> 5) ^ 0x20;
    LOBYTE(v30) = (8 * (v29 - ((2 * v29) & 0xA)) - 88) ^ 0x88;
LABEL_5:
    v27 = v28 ^ 0x2ED;
    LOBYTE(STACK[0x2DB]) = v30;
  }

  return sub_100027028(a1, a2, a3, a4, a5, a6, a7, a8, v27 + 13, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100007184(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  v13 = v12 + 4 * v10;
  a6.i64[0] = *(v13 + 4);
  a6.i32[2] = *(v13 + 12);
  v14 = vextq_s8(a1, a6, 0xCuLL);
  v15 = a6;
  v15.i32[3] = *(v12 + 4 * (v10 + 4));
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a3), vandq_s8(v14, a2)), 1uLL), *(v13 + 1588));
  v14.i32[0] = *(v8 + 4 * (*(v13 + 4) & 1));
  v14.i32[1] = *(v8 + 4 * (*(v13 + 8) & 1));
  v14.i32[2] = *(v8 + 4 * (*(v13 + 12) & v7));
  v14.i32[3] = *(v8 + 4 * (v15.i8[12] & 1));
  *v13 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a4)), a5), v14);
  return (*(v11 + 8 * (((v10 == 220) * v9) ^ v6)))();
}

uint64_t sub_10000718C@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6 = (v4 + v2 + 16);
  v6[-1] = a2;
  *v6 = a2;
  return (*(v5 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * ((v3 - 734) ^ 0x630)) ^ v3)))();
}

uint64_t sub_1000071CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v26 - 160) = 0x9908B0DF00000000;
  *(v23 + 24) = **(v24 + 8 * (v22 ^ 0x7A9)) ^ (210068311 * a22);
  *(v26 - 152) = -210068311 * a22;
  v27 = v22 - 1297332920 - 210068311 * a22;
  *(v26 - 120) = v27 - 129;
  *(v26 - 144) = 210068311 * a22 + v22 - 1297332920 + 6;
  *(v26 - 140) = v27;
  *(v26 - 136) = -210068311 * a22;
  *(v26 - 132) = v22 - 210068311 * a22 + 55968034;
  v28 = (*(v25 + 8 * (v22 ^ 0xD97)))(v26 - 152);
  return (*(v25 + 8 * *(v26 - 116)))(v28);
}

void sub_100007298(int a1@<W8>)
{
  if (v1 > -623327959)
  {
    if (v1 > -33985528)
    {
      if (v1 <= 1253160764)
      {
        if (v1 == -33985527)
        {
          goto LABEL_31;
        }

        v5 = 1012218376;
      }

      else
      {
        if (v1 == 1253160765 || v1 == 1971586019)
        {
          goto LABEL_31;
        }

        v5 = 1488839791;
      }
    }

    else if (v1 > -233716452)
    {
      if (v1 == -233716451 || v1 == -162245432)
      {
        goto LABEL_31;
      }

      v5 = -117298495;
    }

    else
    {
      if ((v1 + 547055781) < 2)
      {
        goto LABEL_31;
      }

      v5 = -623327958;
    }
  }

  else if (v1 > -1318188742)
  {
    if (v1 > -824869781)
    {
      if (v1 == -824869780 || v1 == -745665721)
      {
        goto LABEL_31;
      }

      v5 = -690491539;
    }

    else
    {
      if (v1 == -1318188741 || v1 == -1210578275)
      {
        goto LABEL_31;
      }

      v5 = -1205532192;
    }
  }

  else
  {
    if (v1 <= -1460254659)
    {
      if (v1 != -1861164885 && v1 != -1686752632)
      {
        v5 = -1674575890;
        goto LABEL_30;
      }

LABEL_31:
      *(v4 - 192) = xmmword_1000F0C60;
      __asm { BRAA            X10, X17 }
    }

    if (v1 == -1460254658 || v1 == -1321747908)
    {
      goto LABEL_31;
    }

    v5 = -1320233686;
  }

LABEL_30:
  if (v1 == v5)
  {
    goto LABEL_31;
  }

  *(v6 + 4) = a1;
}

uint64_t sub_10000766C@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + 335 - v1;
  v6 = *(v5 - 31);
  v7 = v3 + 335 - v1;
  v8.i64[0] = 0x4040404040404040;
  v8.i64[1] = 0x4040404040404040;
  v9.i64[0] = 0x2020202020202020;
  v9.i64[1] = 0x2020202020202020;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v4 + 8 * (((v1 == 288) * (((v2 - 909273299) & 0x3632611A) - 271)) ^ v2)))();
}

uint64_t sub_10000772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = &a15;
  *(v20 - 120) = (v18 - 738) ^ (((~((v20 - 136) | 0x9CFE6342) + ((v20 - 136) & 0x9CFE6342)) ^ 0x286A50C3) * v15);
  *(v20 - 112) = v19;
  v21 = (*(v17 + 8 * (v18 + 815)))(v20 - 136);
  return (*(v17 + 8 * (((*(v20 - 136) > v16) * ((v18 + 378) ^ 0x8C8)) ^ v18)))(v21);
}

uint64_t sub_100007840@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + a1 - 32;
  v6.i64[0] = 0x4040404040404040;
  v6.i64[1] = 0x4040404040404040;
  v7.i64[0] = 0x2020202020202020;
  v7.i64[1] = 0x2020202020202020;
  v8 = vaddq_s8(vsubq_s8(*(v1 + v4 - 12), vandq_s8(vaddq_s8(*(v1 + v4 - 12), *(v1 + v4 - 12)), v6)), v7);
  *v5 = vaddq_s8(vsubq_s8(*(v1 + v4 - 28), vandq_s8(vaddq_s8(*(v1 + v4 - 28), *(v1 + v4 - 28)), v6)), v7);
  *(v5 + 16) = v8;
  return (*(v3 + 8 * ((35 * ((v2 - 72) - (v1 & 0x3E0) == 2486)) ^ (v2 - 537))))();
}

uint64_t sub_1000078CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, unsigned int a16, int a17, uint64_t a18, char *a19)
{
  v23 = (((&a14 | 0x997955B5) - &a14 + (&a14 & 0x6686AA48)) ^ 0x6F58F199) * v21;
  a17 = v22 - 51 - v23 - 2013066724;
  a15 = v23 ^ 0x55704609;
  a16 = v23 - 929753733;
  a18 = a12;
  a19 = &a10;
  v24 = (*(v19 + 8 * ((v22 - 51) ^ 0xA4D)))(&a14);
  return (*(v19 + 8 * (((a14 != v20) * (((v22 + 710) ^ 0xFFFFFA48) + v22 + 1391)) ^ (v22 - 51))))(v24);
}

void sub_10000798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(v9 + 8);
  **v9 = v8;
  *v11 = a8;
  *(v9 + 24) = *(v10 + 24);
}

void sub_1000079D4(char a1@<W8>)
{
  v4 = ((v5[1] ^ 0x20) << ((a1 ^ 0x48) + 100)) + ((*v5 ^ 0x20) << 24) + ((v5[2] ^ 0x20) << 8) + (v5[3] ^ 0x20);
  **(v1 + 16) = (v4 + v2 - ((2 * v4) & 0xF283947E)) ^ v2;
  *(v1 + 8) = *(v3 + 24);
}

uint64_t sub_100007A74(uint64_t result)
{
  v4 = *(v1 + 16);
  *result = v3;
  *(result + 8) = v2;
  *(result + 12) = v2;
  *(result + 16) = 0x1B39ED2B3F90D97FLL;
  *(result + 24) = 1958853845;
  *v4 = result;
  *v1 = 1958853845;
  return result;
}

uint64_t sub_100007B58@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W8>)
{
  v18 = (*(v6 + 4 * (*(v16 + v11 + v13) + ((v15 + 43) ^ 0xE))) ^ v12) + (v8 ^ v9) + *(v5 + 4 * (v11 + v13)) + (((a1 ^ a4) + v9 - (a2 & (2 * (a1 ^ a4)))) ^ a5);
  v19 = *(v7 + v11 + v13);
  v20 = (((v19 - 108) ^ 0xF5) - 67) ^ (v19 - 108) ^ (((v19 - 108) ^ 0x91) - 39) ^ (((v19 - 108) ^ 0x2D) + 101) ^ (34 - v19);
  v21 = v18 ^ 0x2F068AC3 ^ ((v18 ^ 0x731036BF) - 1544993916) ^ ((v18 ^ 0x46165B91) - 1762709842) ^ ((v18 ^ 0x45FF1816) - 1794740949) ^ ((v18 ^ 0x5FFFFFFB) - 1895396664);
  v22 = (((a1 ^ 0x6D612F4B) - 1835085643) ^ ((a1 ^ 0x42BD223F) - 1119691327) ^ ((a1 ^ 0xE1526EE8) + 514691352)) - 381146485 + ((v21 << (v20 & 5 ^ 4) << (v20 & 0x1A ^ 0x12)) | (v21 >> (a3 - v19)));
  return (*(v10 + 8 * ((111 * (v11 + 1 == v14 + 32)) ^ v15)))(v22 ^ ((v22 ^ 0x5102479) - 531227286) ^ ((v22 ^ 0x26020AB9) - 1018940502) ^ ((v22 ^ 0x25417D8) - 418238775) ^ ((v22 ^ 0x3BFFFFF7) - 558250264) ^ 0xD437A573);
}

uint64_t sub_100007DE0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + v3 + 1436);
  v6.i64[0] = 0x4040404040404040;
  v6.i64[1] = 0x4040404040404040;
  v7.i64[0] = 0x2020202020202020;
  v7.i64[1] = 0x2020202020202020;
  v8 = vaddq_s8(vsubq_s8(*(v1 + a1 - 16), vandq_s8(vaddq_s8(*(v1 + a1 - 16), *(v1 + a1 - 16)), v6)), v7);
  v5[-1] = vaddq_s8(vsubq_s8(*(v1 + a1 - 32), vandq_s8(vaddq_s8(*(v1 + a1 - 32), *(v1 + a1 - 32)), v6)), v7);
  *v5 = v8;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((49 * (v2 ^ 0x4E6)) ^ 0x7F3)) ^ v2)))();
}

uint64_t sub_100007F50(uint64_t a1, uint64_t a2)
{
  v5 = (v4 - 282) | 1;
  *v3 = ((v4 + 341) ^ 0x26E) + v3[623] + (((v5 ^ (v4 + 341) ^ 0xFFFFFFFE | v2) & (v4 + 341 - v2) | (v5 ^ (v4 + 341) ^ 0xFFFFFFFE) & v2) >> 31);
  return sub_100035110(a2, v5);
}

void sub_100008028(uint64_t a1)
{
  v1 = *(a1 + 20) - 435584651 * ((((2 * a1) | 0x49C86084) - a1 - 618934338) ^ 0x49D62A14);
  v4[1] = v1 - 675097751 * ((((2 * v4) | 0x19A1F37A) - v4 + 1932461635) ^ 0xCF90DC2B) + 748;
  v5 = &v3;
  v2 = *(&off_1001252D0 + v1 - 1280) - 8;
  (*&v2[8 * (v1 ^ 0xF02)])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10000815C(uint64_t a1, uint64_t a2, int a3)
{
  *(*(a1 + 96) + 1424) = ((a3 - 1804453636) & 0x6B8DC5F9 ^ v3) + *(a2 + 4);
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_1000081E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = 143681137 * ((2 * ((v63 - 192) & 0x5B1D77B8) - (v63 - 192) - 1528657850) ^ 0x424A2456);
  *(v63 - 160) = v65 + 583618;
  *(v63 - 188) = v65 + v62 + 218;
  *(v63 - 184) = 0;
  *(v63 - 176) = &STACK[0x2F4];
  *(v63 - 168) = &STACK[0x410];
  v66 = (*(v64 + 8 * (v62 + 2348)))(v63 - 192);
  return (*(a62 + 8 * (((*(v63 - 192) == 1958853845) * ((v62 ^ 0x199) - 66)) | v62)))(v66);
}

void sub_1000082B4(uint64_t a1)
{
  v1 = *(a1 + 4) + 1504884919 * ((a1 - 2 * (a1 & 0xA5D42817) - 1512822761) ^ 0x5E179F0C);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10000848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12)
{
  *v12 = a12;
  *(v15 - 104) = (v14 - 222) ^ (843532609 * ((((v15 - 128) | 0x41180206) - (v15 - 128) + ((v15 - 128) & 0xBEE7FDF8)) ^ 0x1D555683));
  v12[2] = &a10;
  (*(v13 + 8 * (v14 + 2107)))(v15 - 128);
  v16 = a12;
  *(v15 - 128) = v14 + 843532609 * ((v15 - 128) ^ 0x5C4D5485) - 376;
  v12[1] = v16;
  v17 = (*(v13 + 8 * (v14 + 2115)))(v15 - 128);
  return (*(v13 + 8 * ((1925 * (*(v15 - 112) == (((v14 - 564) | 0x580) ^ 0x74C1B910))) ^ v14)))(v17);
}

uint64_t sub_100008570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 104) = &a15;
  *(v20 - 112) = (v19 - 226) ^ (((((v20 - 128) | 0x6D61633F) - ((v20 - 128) & 0x6D61633F)) ^ 0x260AAF41) * v17);
  *(v20 - 120) = v15;
  v21 = (*(v16 + 8 * (v19 ^ 0xF31)))(v20 - 128);
  return (*(v16 + 8 * (((*(v20 - 128) == v18 + 2) * (((v19 - 815199654) & 0x3096F2FE) + 218)) ^ v19)))(v21);
}

uint64_t sub_100008618(uint64_t a1)
{
  v7 = (v1 + 180949645) & 0xF536E5DF;
  *v3 = a1;
  *v2 = v11 ^ (v4 + 2183) ^ v7;
  v8 = v7 + 942;
  v14 = v10;
  v13 = v7 + 1385 - ((&v13 & 0x95812970 | ~(&v13 | 0x95812970)) ^ 0x8CD67A9F) * v6 - 1546;
  (*(v5 + 8 * ((v7 + 1385) ^ 0xC4F)))(&v13);
  v13 = v8 - ((2 * (&v13 & 0x3CBA9F38) - &v13 + 1128620230) ^ 0xA5EDCCD6) * v6 - 1103;
  v14 = v12;
  (*(v5 + 8 * (v8 ^ 0xF84)))(&v13);
  return 0;
}

uint64_t sub_100008794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, unsigned int a23, int a24, uint64_t a25, char *a26)
{
  v29 = 1785193651 * ((-689319705 - (&a21 | 0xD6E9D0E7) + (&a21 | 0x29162F18)) ^ 0xDF378B34);
  a25 = a17;
  a26 = &a15;
  a24 = v28 - v29 - 2013066795;
  a22 = v29 ^ 0x77AE0227;
  a23 = a11 + v29 - ((2 * a11) & 4) + ((v28 + 1408) ^ 0xC8951305);
  v30 = (*(v27 + 8 * (v28 ^ 0xA0A)))(&a21);
  return (*(v27 + 8 * ((458 * (a21 != v26 + v28 + 326 - 581)) ^ v28)))(v30);
}

void sub_100008878(uint64_t a1)
{
  v1 = *(a1 + 16) + 435584651 * ((-2 - ((a1 | 0xE5E700C8) + (~a1 | 0x1A18FF37))) ^ 0x772AE561);
  v2 = *(a1 + 8);
  if (*(v2 + 4) - 1365209361 >= 0)
  {
    v3 = *(v2 + 4) - 1365209361;
  }

  else
  {
    v3 = 1365209361 - *(v2 + 4);
  }

  if (*(*a1 + 4) - 1365209361 >= 0)
  {
    v4 = *(*a1 + 4) - 1365209361;
  }

  else
  {
    v4 = 1365209361 - *(*a1 + 4);
  }

  v8 = v1 - 742307843 * (((&v7 | 0x9CA4DB84) - &v7 + (&v7 & 0x635B2478)) ^ 0x828656D1) - 607;
  v7 = v2;
  v5 = *(&off_1001252D0 + (v1 ^ 0x4AF)) - 8;
  (*&v5[8 * (v1 ^ 0xF61)])(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_100008A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, int a36)
{
  *(v40 + 16) = v38;
  *(v40 + 20) = v36 ^ 0x88869E8E;
  *(v40 + 24) = a13 ^ 0x9C9DF6BA;
  *(v40 + 560) = a36;
  if (v38 == 8 || v38 == 5)
  {
    *(v40 + 43) = *(v41 - 193) ^ 0x20;
    *(v40 + 42) = *(v41 - 194) ^ 0x20;
    *(v40 + 41) = *(v41 - 195) ^ 0x20;
    *(v40 + 40) = *(v41 - 196) ^ 0x20;
    *(v40 + 39) = *(v41 - 197) ^ 0x20;
    *(v40 + 38) = *(v41 - 198) ^ 0x20;
    *(v40 + 37) = *(v41 - 199) ^ 0x20;
    *(v40 + 36) = *(v41 - 200) ^ 0x20;
    *(v40 + 35) = *(v41 - 201) ^ 0x20;
    *(v40 + 34) = *(v41 - 202) ^ 0x20;
    *(v40 + 33) = *(v41 - 203) ^ 0x20;
    *(v40 + 32) = *(v41 - 204) ^ 0x20;
    *(v40 + 31) = *(v41 - 205) ^ 0x20;
    *(v40 + 30) = *(v41 - 206) ^ 0x20;
    *(v40 + 29) = *(v41 - 207) ^ 0x20;
    *(v40 + 28) = *(v41 - 208) ^ 0x20;
  }

  *(v41 - 172) = a34 + 1504884919 * ((86720394 - ((v41 - 176) | 0x52B3F8A) + ((v41 - 176) | 0xFAD4C075)) ^ 0x117776E) + 574;
  v42 = (*(v39 + 8 * (a34 ^ 0xF15)))(v41 - 176);
  return (*(v39 + 8 * (((*(v41 - 176) == v37) * ((a34 - 1456) ^ 0x860)) ^ (a34 - 1428))))(v42);
}

uint64_t sub_100008F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = (*(v65 + 8 * (v64 ^ 0xBE6)))();
  LODWORD(STACK[0x378]) = v62;
  return (*(a62 + 8 * (((((v64 + 255) | 0x44) ^ 0x2A6) * v63) ^ (v64 + 1888))))(v66);
}

uint64_t sub_100008F78@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W2>, int a4@<W7>, int a5@<W8>)
{
  v17 = a5 & 0x91B9AFF7 ^ 0x7F77DC6B ^ (a1 ^ 0xA0C83394) & (a5 ^ v11);
  v18 = *(v6 + 4 * (*(v15 + v8 + v13) - 45));
  v19 = (((a4 ^ 0x1653E13A) - 374595898) ^ ((a4 ^ 0x2FA044A2) - 799032482) ^ ((a4 ^ 0xF77DC604) + 142752252)) + *(v5 + 4 * (v8 + v13)) + ((((v10 + 1122368995) | 0x410092C) + v17 - (a2 & (2 * v17)) - 2020058704) ^ v9) - 334646430 + (((v18 ^ 0x287E5D6E) - 679370094) ^ ((v18 ^ 0x1C9781D) - 29980701) ^ ((v18 ^ 0xD0F6EF4C) + 789123252));
  LOBYTE(v17) = *(v7 + v8 + v13);
  v20 = (v17 - 116) ^ 0x61;
  v21 = v20 & (2 * ((v17 - 116) & 0x52)) | (v17 - 116) & 0x52;
  v22 = ((2 * v20) ^ 0x66) & v20;
  v23 = (16 * (v22 & (4 * v21) ^ v21)) & 0x20 ^ v22 & (4 * v21) ^ v21 ^ (16 * (v22 & (4 * v21) ^ v21)) & ((4 * v22) & 0x30 ^ 0x33 ^ ((4 * v22) ^ 0xCC) & v22);
  v24 = v19 ^ ((v19 ^ 0x207B4FDF) - 1933533077) ^ ((v19 ^ 0x862F103D) + 714407817) ^ ((v19 ^ 0xAAFA0C7) - 1508618381) ^ ((v19 ^ 0xFFBFEF6F) + 1392771291) ^ 0x5344104A;
  v25 = (((a1 ^ 0x12F93952) - 318323026) ^ ((a1 ^ 0x7290E67E) - 1922098814) ^ ((a1 ^ 0xAEE7BCB0) + 1360544592)) + 618764135 + ((v24 << (((v17 - 116) ^ (2 * v23) ^ 2) & 6) << (((v17 - 116) ^ (2 * v23) ^ 0x18) & 0x19 ^ 8)) | (v24 >> (a3 - v17)));
  return (*(v12 + 8 * ((((v8 + 1 == v14 + 48) << 6) | ((v8 + 1 == v14 + 48) << 10)) ^ v10)))(v25 ^ ((v25 ^ 0x195511CC) - 1325801991) ^ ((v25 ^ 0xBD9E8B5F) + 338839404) ^ ((v25 ^ 0x4D6756A3) - 456418664) ^ ((v25 ^ 0xBFFFFFFB) + 374551504) ^ 0x98DD5057);
}

uint64_t sub_100009304@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = -v4;
  }

  v5 = v4 + ((v3 - 1660) | 0x120u) - 372;
  *(*(v1 + 8) + 4 * v5) = *(*(a1 + 8) + 4 * v5);
  return (*(v2 + 8 * ((3959 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_10000934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v9 = (*(v5 + 8 * (v4 + 2331)))(*(*(v8 + 8 * (v4 - 378)) - 8), 20, v7, 32, v7, va);
  return (*(v5 + 8 * ((((v9 ^ 0x75DFFEF5) - 18760224 + (((v4 ^ 0x9AD) - 339741287) & (2 * v9)) == 1958853845) * ((v4 - 277636631) & 0x5A9DEF3E ^ (v6 + 3480))) ^ v4)))();
}

uint64_t sub_100009440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v12);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * (v10 | (8 * ((v10 - 306) - 1443 == (v11 & 0xFFFFFFFFFFFFFFF0))))))();
}

uint64_t sub_10000947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, int a18, unsigned int a19, int a20, uint64_t a21, char *a22)
{
  v26 = 1785193651 * ((&a17 & 0x5F772210 | ~(&a17 | 0x5F772210)) ^ 0x56A979C3);
  a21 = a14;
  a22 = &a15;
  a18 = v26 ^ 0x45907977;
  a19 = v26 - 929753733;
  a20 = a11 - v26 - 2013066916;
  v27 = (*(v25 + 8 * (a11 ^ 0xB8Du)))(&a17);
  return (*(v25 + 8 * (((a17 != (((a11 - 248) | 0x708) ^ (v22 - 376))) * ((a11 - v23 - 139) ^ (v24 + 678))) ^ a11)))(v27);
}

uint64_t sub_10000960C@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0x40) + 32;
  return (*(v1 + 8 * (((v6 == 0) * v4) ^ v5)))(0);
}

void sub_100009644(uint64_t a1)
{
  v1 = *(a1 + 28) + 143681137 * ((-751875376 - (a1 ^ 0x54F4C255 | 0xD32F4AD0) + (a1 ^ 0x54F4C255 | 0x2CD0B52F)) ^ 0x9E8CDB6A);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100009724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a8 ^ 0x4AD670784A4EE176;
  v14 = ((a8 ^ 0x4AD670784A4EE176) - 0x7FAB3EA34A3F5931 - ((2 * (a8 ^ 0x4AD670784A4EE176)) & 0xA982B96B814D9ELL)) ^ v11;
  v15 = a8 ^ 0x4AD670784A4EE176 ^ v10 ^ 0x1AEE8B2EDE4D6D48;
  v16 = v14 ^ 0x68040451F630332FLL;
  v18 = (((v141 - 0x800000000) ^ 0xB656FC9E906983B6) & ~a5 | a5 & 0x6F967C49) ^ 0x2F320406906983B6;
  v19 = v9 ^ (v18 - ((2 * v18) & 0xB386258579AB9F42) - 0x263CED3D432A305FLL);
  v20 = ((v19 ^ 0x61764447BFE55C68) - ((2 * (v19 ^ 0x61764447BFE55C68)) & 0xE93E02CA8C889866) - 0xB60FE9AB9BBB3CDLL) ^ a1;
  if (((a8 ^ 0x4AD670784A4EE176) & 0x82EE1687ACCADB62) == 0)
  {
    v13 ^= v10 ^ 0x1AEE8B2EDE4D6D48;
  }

  v21 = v13 & (v10 ^ 0xE51174D121B292B7);
  v22 = v20 ^ 0xE4C1C31231B4037DLL ^ v21;
  v23 = v22 + 2 * ((v20 ^ 0xE4C1C31231B4037DLL) & v21);
  if (v14 == 0x68040451F630332FLL)
  {
    v24 = v20 ^ 0xE4C1C31231B4037DLL;
  }

  else
  {
    v24 = ~v22;
  }

  v25 = v23 - 2 * (v24 & v21);
  v17 = v10 ^ 0xAB71691AF5D80A9FLL ^ (v15 ^ ((v8 + 369096291) | 0x1428A2u) ^ 0xFFFFFFFFE9EBD759) & (v14 ^ 0x68040451F630332FLL);
  v26 = (v25 ^ -v25 ^ (v17 - (v17 ^ v25))) + v17;
  v27 = v26 ^ __ROR8__(v26, 17) ^ (v26 << 54) ^ (v26 >> 10);
  v28 = (v14 ^ 0x97FBFBAE09CFCCD0) & (v19 ^ 0x61764447BFE55C68) ^ v15;
  v29 = __ROR8__(__ROR8__(v28, 48) ^ 0x1EE88D2BD2A5654BLL, 16);
  v30 = v29 ^ 0xD272391FDD641257 ^ ((v29 ^ 0xD272391FDD641257) << 23) ^ (((v29 ^ 0xD272391FDD641257) >> 41) ^ ((v29 ^ 0xD272391FDD641257) >> 7) | ((v29 ^ 0xD272391FDD641257) << 57));
  v31 = (v20 ^ 0xE4C1C31231B4037DLL) & (v19 ^ 0x9E89BBB8401AA397) ^ v16;
  v32 = v19 ^ (v20 ^ 0x1B3E3CEDCE4BFC82) & (v10 ^ 0x1AEE8B2EDE4D6D48);
  v33 = v31 ^ v28 ^ 0xF38BFF733C051F6 ^ __ROR8__(v31 ^ v28 ^ 0xF38BFF733C051F6, 28) ^ ((v31 ^ v28 ^ 0xF38BFF733C051F6) << 45) ^ ((v31 ^ v28 ^ 0xF38BFF733C051F6) >> 19) ^ v30;
  v34 = v32 ^ v31 ^ 0xEBC8BC3B37ED90DDLL ^ __ROR8__(v32 ^ v31 ^ 0xEBC8BC3B37ED90DDLL, 61) ^ ((v32 ^ v31 ^ 0xEBC8BC3B37ED90DDLL) << 25) ^ ((v32 ^ v31 ^ 0xEBC8BC3B37ED90DDLL) >> 39);
  v35 = v27 ^ v29 ^ 0x57 ^ ((v29 ^ 0xD272391FDD641257) >> 41) ^ ((v29 ^ 0xD272391FDD641257) >> 7);
  v36 = __ROR8__(__ROR8__(v25 ^ 0x92CFC162FD513143 ^ ((v25 ^ 0x92CFC162FD513143) >> 1) ^ ((v25 ^ 0x92CFC162FD513143) << 58) ^ ((v25 ^ 0x92CFC162FD513143) << 63) ^ ((v25 ^ 0x92CFC162FD513143) >> 6) ^ v34, 31) ^ 0xD75B6CEAE3384985, 33);
  v37 = v30 & ~v27 ^ v36 ^ 0x719C24C2EBADB675;
  *(&v38 + 1) = v33 & ~(v27 ^ v30) ^ v27 ^ v37 ^ 0x28FA59BDD48D0B6;
  *&v38 = v33 & ~(v27 ^ v30) ^ v27 ^ v37;
  v39 = *(&v38 + 1) ^ __ROR8__(*(&v38 + 1), 10) ^ (v38 >> 17);
  v40 = v27 ^ v30 ^ v34 & ~v33;
  v41 = v40 ^ 0x9A383CF881807545 ^ __ROR8__(v40 ^ 0x9A383CF881807545, 7) ^ __ROR8__(v40 ^ 0x9A383CF881807545, 41);
  v42 = (v36 ^ 0x719C24C2EBADB675) & ~v34 ^ v33;
  v43 = v42 ^ v40 ^ 0xAC7C0FF4012565E3 ^ ((v42 ^ v40 ^ 0xAC7C0FF4012565E3) >> 19) ^ ((v42 ^ v40 ^ 0xAC7C0FF4012565E3) >> 28) ^ ((v42 ^ v40 ^ 0xAC7C0FF4012565E3) << 36) ^ ((v42 ^ v40 ^ 0xAC7C0FF4012565E3) << 45);
  v44 = v27 & (v36 ^ 0x8E63DB3D1452498ALL) ^ __ROR8__(__ROR8__(v42 ^ v34, 54) ^ 0xC111A6A7B78B6E45, 10);
  v45 = v44 ^ 0xC637853F4EB84C0DLL;
  LODWORD(v44) = *(v12 + ((v44 >> 61) ^ 0x51));
  v46 = (v44 ^ 0xFFFFFFC3 ^ -(v44 ^ 0xFFFFFFC3) ^ -(v44 ^ 0xFFFFFFC3 ^ -(v44 ^ 0xFFFFFFC3) ^ (57 - (v44 ^ 0xFFFFFFFA)))) - 62;
  v47 = v45 ^ ((v44 ^ 0xC3 ^ -(v44 ^ 0xC3) ^ -(v44 ^ 0xC3 ^ -(v44 ^ 0xC3) ^ (57 - (v44 ^ 0xFA)))) - 62) ^ (v45 >> 39) ^ (8 * v45) ^ (v45 << 25);
  v48 = v39 ^ 0x147D2CDEEA4;
  v49 = v43 ^ v41;
  v50 = v39 ^ 0x147D2CDEEA4 ^ v41;
  v51 = (~(2 * (v43 ^ v41)) + (v43 ^ v41)) & v47 ^ v50;
  v52 = ((v51 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v51 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v51 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v51 ^ 0x26974B18501E2B14) - (((v51 ^ 0x26974B18501E2B14) << 58) & (2 * (v51 ^ 0x26974B18501E2B14))));
  v53 = v39 ^ 0x147D2CDEEA4 ^ v43;
  if (!v46)
  {
    v53 = v49;
  }

  v54 = v53 & ~v50;
  v55 = (v37 ^ 0x6F45779FA95FC03AuLL) >> 1;
  v56 = v37 ^ 0x6F45779FA95FC03ALL ^ ((v37 ^ 0x6F45779FA95FC03ALL) << 58);
  v57 = v55 & 0x100000000000;
  if ((v55 & 0x100000000000 & v56) != 0)
  {
    v57 = -v57;
  }

  v58 = (((v37 ^ 0x6F45779FA95FC03AuLL) >> 6) | (v37 << 63)) ^ v55 & 0xFFFFEFFFFFFFFFFFLL ^ (v57 + v56);
  v59 = (v39 ^ 0xFFFFFEB82D32115BLL) & v41;
  v60 = v39 ^ v54 ^ 0x7370AD2F82FD2592;
  v61 = v58 ^ v47 ^ v59;
  v62 = v60 ^ v61;
  v63 = v60 ^ v61 ^ __ROR8__(v60 ^ v61, 10) ^ ((v60 ^ v61) >> 17);
  v64 = v63 + (v62 << 47) - 2 * (v63 & (v62 << 47));
  v65 = v61 ^ 0x7955EAEC4D48B80CLL;
  v66 = (v61 ^ 0x7955EAEC4D48B80CLL) << 58;
  v67 = (v49 ^ -v49 ^ ((v58 & ~v47) - (v58 & ~v47 ^ v49))) + (v58 & ~v47);
  v68 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v67 ^ v47 ^ 0x3278F838FE43D2BCLL ^ v48 & ~(v58 ^ v47), 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v69 = v68 ^ 0x93DD7BE3C3310A2CLL ^ ((v68 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v68 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v68 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v68 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v70 = (((((2 * (0x34CDB152F4A04500 - v66)) & 0x9000000000000200) + ((0x34CDB152F4A04500 - v66) ^ 0xCB324EAD0B5FBB00)) ^ v66 ^ ((v61 ^ 0x7955EAEC4D48B80CLL) - ((v66 & 0xF800000000000000 ^ (v61 ^ 0x7955EAEC4D48B80CLL) & 0xF9BFE541A2368FBELL | (v61 ^ 0x7955EAEC4D48B80CLL) & 0x6401ABE5DC97041) ^ v66 & 0x400000000000000))) + (v61 ^ 0x7955EAEC4D48B80CLL)) ^ (v61 << 63) ^ __ROR8__(((v61 ^ 0x7955EAEC4D48B80CLL) >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v69, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v71 = v70 & 0xA8F512753D8F931ELL ^ (v65 >> 1) & 0x28F512753D8F931ELL | (v70 ^ (v65 >> 1)) & 0x570AED8AC2706CE1;
  v72 = v71 ^ v52 & ~v64;
  *(&v73 + 1) = v72;
  *&v73 = v72 ^ 0xD3DA1E3360BF843ALL;
  v74 = ((v73 >> 1) ^ v72 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v72 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v73 >> 1) ^ v72 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v72 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  v75 = v51 ^ 0x6E04C15915AB860ALL ^ v67 ^ __ROR8__(v51 ^ 0x6E04C15915AB860ALL ^ v67, 19) ^ ((v51 ^ 0x6E04C15915AB860ALL ^ v67) << 36) ^ ((v51 ^ 0x6E04C15915AB860ALL ^ v67) >> 28) ^ v52;
  v76 = ((v71 ^ v69) + (v71 | ~v69) + 1) ^ v75;
  v77 = v69 ^ v64 & ~v71 ^ 0x425764BB5877DA25 ^ v76;
  v78 = v77 ^ (v77 >> 61) ^ (v77 >> 39) ^ (8 * v77) ^ (v77 << 25);
  *(&v73 + 1) = v72;
  *&v73 = v72 ^ 0xD3DA1E3360BF843ALL;
  v79 = (v73 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v78 ^ v74, 3) ^ 0x55413C453664FDCDLL;
  v80 = v64 ^ v52;
  v81 = v69 & ~v75 ^ v64 ^ v52;
  v82 = v81 ^ 0xFD;
  v83 = v81 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v81 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v81 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v81 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v84 = v81 ^ 0x97F6A7E5F6E8F58ALL ^ v76 ^ __ROR8__(v81 ^ 0x97F6A7E5F6E8F58ALL ^ v76, 19) ^ ((v81 ^ 0x97F6A7E5F6E8F58ALL ^ v76) << 36) ^ ((v81 ^ 0x97F6A7E5F6E8F58ALL ^ v76) >> 28);
  *&v73 = __ROR8__(v79, 61);
  v85 = ((v84 | v83) ^ v83 & v84) & 0x2D23D578E308995FLL | (v84 ^ v83) & 0xD2DC2A871CF766A0;
  v86 = v75 & ~v80;
  v87 = (v73 ^ 0xAA09E229B327EE6ALL) & ~v78 ^ v85;
  v88 = v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v72 ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v72) >> 10) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v72) << 47) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v72) << 54) ^ ((v64 ^ 0x44C9D571A5C4A51CLL ^ v86 ^ v72) >> 17);
  v89 = ((v87 ^ v78) + ((v73 ^ 0x55F61DD64CD81195) & v88) - 2 * ((v87 ^ v78) & (v73 ^ 0x55F61DD64CD81195) & v88)) ^ 0x6005BE354A5BB0B2;
  v90 = v89 >> (v27 & 0x3D) >> (v27 & 0x3D ^ 0x3D);
  v91 = (8 * v89) ^ (v89 >> 39) ^ ((v89 ^ (v89 << 25)) & 0xF21553F3FD140018 ^ v90 & 0x18 | (v89 ^ (v89 << 25)) & 0xDEAAC0C02EBFFE7 ^ v90 & 0xE7);
  v92 = v78 & ~v85 ^ v88 ^ v83;
  v93 = v92 ^ 0x2DB5B6AF87F64351 ^ ((v92 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v92 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v92 ^ 0x2DB5B6AF87F64351) >> 41) | ((v92 ^ 0x2DB5B6AF87F64351) << 57));
  v94 = v92 ^ 0x93C23431B76D41FLL ^ v87;
  v95 = v94 << 36;
  v96 = (v94 ^ (v94 >> 28)) + (v94 >> 19) - 2 * ((v94 ^ (v94 >> 28)) & (v94 >> 19));
  v97 = v96 ^ (v94 << 45);
  v98 = v97 ^ (v94 << 36);
  v99 = v85 & ~(v88 ^ v83);
  v100 = v98 ^ v93;
  v101 = v73 ^ 0xAA09E229B327EE6ALL ^ v83 & ~v88;
  v102 = v91 & ~(v98 ^ v93);
  v103 = v88 ^ 0xF374A001D380BDC2 ^ v99 ^ v101 ^ ((v88 ^ 0xF374A001D380BDC2 ^ v99 ^ v101) >> 10) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v99 ^ v101) << 47) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v99 ^ v101) << 54) ^ ((v88 ^ 0xF374A001D380BDC2 ^ v99 ^ v101) >> 17);
  v104 = v103 ^ v93;
  v105 = v102 ^ v104;
  v106 = v101 ^ 0x6DC4FB0BD4FFFF44;
  *(&v73 + 1) = v101;
  *&v73 = v101 ^ 0x6DC4FB0BD4FFFF44;
  v107 = (v73 >> 1) ^ v101 ^ 0x6DC4FB0BD4FFFF44 ^ ((v101 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v91;
  v108 = v106 >> 6;
  if (v95 == v97)
  {
    v109 = v108;
  }

  else
  {
    v109 = ~(v108 ^ v107);
  }

  v110 = v107 + v108 - 2 * (v109 & v107);
  v111 = v110 ^ (((~v103 | 0xFFFFFFFFEFFFFFFFLL) - (v103 & 0x4000000000)) ^ v103 & 0xFFFFFFBFEFFFFFFFLL) & v104;
  v112 = v98 ^ v103;
  if (v104 == -1)
  {
    v112 = 0;
  }

  v113 = v103 ^ v112 & v100 ^ 0x29E1AB0124FF49E7 ^ v111;
  v114 = __ROR8__(v113, 10);
  v115 = (v113 ^ v114 ^ (v113 << 47)) + (v113 >> 17) - 2 * ((v113 ^ v114 ^ (v113 << 47)) & (v113 >> 17));
  v116 = v115 - ((2 * v115) & 0xB98E98C8022DBD52) - 0x2338B39BFEE92157;
  v117 = v111 - ((2 * v111) & 0x5A47EBDAAC1EB792);
  v118 = v117 + 0x2D23F5ED560F5BC9;
  v119 = v117 - 0x5BDA183C59819C5ELL;
  v120 = 0x88FE0E29AF90F827;
  if (v118 < 0x88FE0E29AF90F827)
  {
    v119 = v118;
    v120 = 0;
  }

  if (v119)
  {
    v121 = v118;
  }

  else
  {
    v121 = v120;
  }

  *(&v122 + 1) = v121;
  *&v122 = v118;
  v123 = (v122 >> 1) ^ v118 ^ (v121 << 58) ^ (v121 >> 6);
  *&v122 = __ROR8__(((v100 << (v96 & 0x2B) << (v96 & 0x2B ^ 0x2B)) + (v100 >> 21)) ^ __ROR8__(v110 & ~v91, 21) ^ 0x6D12C2B6EED373A6, 43);
  v124 = v103 & ~v110 ^ v91 ^ v122;
  v125 = v124 ^ 0xE013161F571CC4C5 ^ ((v124 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v124 ^ 0xE013161F571CC4C5));
  v126 = v125 ^ (((v124 ^ 0xE013161F571CC4C5) >> 61) | (v124 << 25));
  v127 = v105 ^ 0x5035F38BF1002A3ALL ^ v122;
  v128 = v127 << 36;
  v129 = v127 ^ (v127 >> 19);
  v130 = (v127 << 36) & 0x78E1346000000000;
  v131 = v129 & 0xD99EEE0927173347 ^ (v127 << 45) & 0xD99EE00000000000 | v129 & 0x266111F6D8E8CCB8 ^ (v127 << 45) & 0x2661000000000000;
  v132 = (((v127 << 45) ^ (0xFFFFE00000000000 * v127) ^ (v131 + v129 - 2 * v131)) + v129) ^ (v127 >> 28);
  v133 = v132 & 0x78E134634F73AA70 ^ v130 | v132 & 0x871ECB9CB08C558FLL ^ v128 & 0x871ECB9000000000;
  v134 = v133 - 0x7FAB3EA34A3F5931 - 2 * (v133 & 0x54C15CB5C0A6EFLL ^ v132 & 0x20);
  v147[65] = ((v134 ^ 0xCF) + (~(2 * (v134 ^ 0xCF)) | 0xC9) - 100) ^ 0x9B;
  v135 = *(v145 + ((69 * ((v134 ^ 0x8054C15CB5C0A6CFLL) >> (v132 & 8) >> (v132 & 8 ^ 8))) ^ 0x3DLL));
  v136 = ((((v135 - 18) ^ 0x57) + v135 - 18 - 2 * ((v135 - 18) ^ 0x57)) ^ 0xFE) + v135 - 18;
  v147[54] = ((((v125 ^ (((v124 ^ 0xE013161F571CC4C5) >> 61) | (v124 << 25))) >> 24) ^ 0x8A) - ((2 * (((v125 ^ (((v124 ^ 0xE013161F571CC4C5) >> 61) | (v124 << 25))) >> 24) ^ 0x8A)) & 0x66) + 51) ^ 0x33;
  v147[28] = ((BYTE2(v134) ^ 0xC0) + (~(2 * BYTE2(v134)) | 0x8F) - 71) ^ 0xB8;
  v147[41] = (((v136 >> 2) | (v136 << 6)) - ((2 * ((v136 >> 2) | (v136 << 6))) & 0xB8) - 36) ^ 0xDC;
  v147[35] = (BYTE1(v125) - ((2 * BYTE1(v125)) & 0x44) - 94) ^ 0xA2;
  v147[21] = (BYTE2(v125) - ((2 * BYTE2(v125)) & 0xEF) - 9) ^ 0xF7;
  v147[58] = (((v134 ^ 0x8054C15CB5C0A6CFLL) >> (v82 & 0x20) >> (v82 & 0x20 ^ 0x20u)) - ((2 * ((v134 ^ 0x8054C15CB5C0A6CFLL) >> (v82 & 0x20) >> (v82 & 0x20 ^ 0x20u))) & 0x3C) + 30) ^ 0x1E;
  v147[17] = ((BYTE4(v126) ^ 0x89) - ((2 * (BYTE4(v126) ^ 0x89)) & 0x78) + 60) ^ 0x3C;
  v147[6] = (v126 - 2 * (v126 & 0xF) + 15) ^ 0xF;
  v147[5] = ((BYTE3(v134) ^ 0xB5) - ((2 * (BYTE3(v134) ^ 0xB5)) & 0xBF) - 33) ^ 0xDF;
  v147[47] = ((BYTE5(v134) ^ 0xC1) - ((2 * BYTE5(v134)) & 0x64) - 78) ^ 0xB2;
  v137 = (v126 ^ 0x3EAE39898A000000) >> (v124 & 0x28) >> (v124 & 0x28 ^ 0x28);
  v147[14] = (HIBYTE(v134) - ((2 * HIBYTE(v134)) & 0x22) - 111) ^ 0x11;
  v147[48] = ((BYTE6(v134) ^ 0x54) - 2 * ((BYTE6(v134) ^ 0x54) & 0xE3 ^ BYTE6(v134) & 3) - 32) ^ 0xE0;
  v147[16] = (v137 + ((2 * v137) & 0x80) + 64) ^ 0x40;
  LOBYTE(v131) = *(v12 + (BYTE6(v126) ^ 0xF9));
  v147[10] = (BYTE1(v123) + (~(2 * BYTE1(v123)) | 9) + 124) ^ 0x7B;
  v147[18] = (BYTE4(v123) - ((2 * BYTE4(v123)) & 0x38) - 100) ^ 0x9C;
  v147[25] = (BYTE2(v123) - ((2 * BYTE2(v123)) & 4) - 126) ^ 0x82;
  v147[42] = ((HIBYTE(v126) ^ 0x3E) + (~(2 * (HIBYTE(v126) ^ 0x3E)) | 0x43) - 33) ^ 0xDE;
  v147[12] = (BYTE5(v123) - ((2 * BYTE5(v123)) & 0x1A) - 115) ^ 0x8D;
  v147[44] = v123;
  v147[23] = (BYTE6(v123) + (~(2 * BYTE6(v123)) | 0x15) - 10) ^ 0xF5;
  v147[24] = (BYTE3(v123) - ((2 * BYTE3(v123)) & 0xAE) - 41) ^ 0xD7;
  v147[30] = (v131 ^ 0xFA) - 119;
  v147[62] = (HIBYTE(v123) - 2 * (HIBYTE(v123) & 7) - 121) ^ 0x87;
  v147[19] = v116 ^ 0xA9;
  LOBYTE(v123) = *(v143 + (BYTE1(v116) ^ 0xF9) + 279) ^ BYTE1(v116) ^ 0xF3 ^ ((BYTE1(v116) ^ 0xF3) + 72) ^ 0x41;
  v147[8] = ((BYTE3(v116) ^ 1) - ((2 * (BYTE3(v116) ^ 1)) & 0xDA) + 109) ^ 0x6D;
  v147[33] = ((BYTE2(v116) ^ 0x16) - 2 * ((BYTE2(v116) ^ 0x16) & 0x27 ^ BYTE2(v116) & 1) - 90) ^ 0xA6;
  v147[4] = v123 + 15;
  v138 = v105 ^ __ROR8__(v105 ^ 0x4734313A1F2B2857, 41) ^ ((v105 ^ 0x4734313A1F2B2857) >> 7);
  v139 = v138 ^ ((v105 ^ 0x4734313A1F2B2857) << 57);
  LODWORD(v131) = *(v144 + (((v116 >> 28) & 0xF0 | (v116 >> 36) & 0xF) ^ 0x1A));
  v147[46] = ((HIBYTE(v116) ^ 0xDC) + ((2 * ((HIBYTE(v116) ^ 0xDC | 0x7A) ^ HIBYTE(v116))) ^ 0xB3) - 5) ^ 0xFA;
  v147[43] = ((BYTE6(v116) ^ 0xC7) - ((2 * (BYTE6(v116) ^ 0xC7)) & 0x4C) - 90) ^ 0xA6;
  v147[38] = BYTE5(v116) ^ 0x4C;
  v147[31] = ((v131 >> 5) | (8 * v131)) ^ 0xC1;
  result = *(v12 + ((((((4 * v138) | (v138 >> 6)) ^ 0xA) >> 2) | ((((4 * v138) | (v138 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  v147[55] = ((BYTE4(v138) ^ 0x3A) - ((2 * (BYTE4(v138) ^ 0x3A)) & 0x5E) - 81) ^ 0xAF;
  v147[34] = ((BYTE3(v138) ^ 0x1F) - ((2 * (BYTE3(v138) ^ 0x1F)) & 0x1A) - 115) ^ 0x8D;
  v147[32] = ((BYTE1(v138) ^ 0x28) - ((2 * (BYTE1(v138) ^ 0x28)) & 0x9F) + 79) ^ 0x4F;
  v147[15] = (result ^ 0xFA) - 119;
  v147[7] = (((v139 ^ 0x4734313A1F2B2857uLL) >> (~v35 & 0x10) >> (v35 & 0x10)) - ((2 * ((v139 ^ 0x4734313A1F2B2857uLL) >> (~v35 & 0x10) >> (v35 & 0x10))) & 0x5C) - 82) ^ 0xAE;
  v147[61] = BYTE5(v138) ^ 0x31;
  v147[56] = (*(v12 + (BYTE6(v138) ^ 0x63)) ^ 0xFA) - 119;
  v147[51] = ((HIBYTE(v139) ^ 0x47) - 2 * ((HIBYTE(v139) ^ 0x47) & 0xEE ^ HIBYTE(v139) & 8) - 26) ^ 0xE6;
  *v142 = v146 + 1;
  return result;
}

uint64_t sub_10000AA04@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  **(result + 32) = v3;
  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_10000AA14@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12)
{
  a9 = v17;
  a10 = a1 + 1037613739 * ((2 * (&a8 & 0x68CBF560) - &a8 + 389286556) ^ 0xC63627E3) + 1756;
  a11 = a5;
  a12 = 0;
  (*(v13 + 8 * (a1 + 2854)))(&a8);
  a9 = a5;
  a8 = v16 + v12 + (((&a8 | 0xDAA1E2A) - &a8 + (&a8 & 0xF255E1D0)) ^ 0x51E74AAF) * v15 + 257;
  (*(v13 + 8 * (v12 ^ (v14 + 2425))))(&a8);
  a9 = a5;
  a8 = v16 - 143681137 * (((&a8 | 0x2A5C4CD7) - &a8 + (&a8 & 0xD5A3B328)) ^ 0xCCF4E0C7) + v12 + 237;
  v18 = (*(v13 + 8 * (v16 + v12 + 2744)))(&a8);
  return sub_1000106D0(v18);
}

uint64_t sub_10000AA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (v6 <= 0x12 && ((1 << v6) & 0x40425) != 0)
  {
    return sub_10000AADC();
  }

  else
  {
    return (*(v8 + 8 * ((((*(v9 + v10 * v11 + 40) & 8) == 0) * (a6 + v7 - 264)) ^ (a6 + v7 + 828))))(4294925278);
  }
}

uint64_t sub_10000AB68(_DWORD *a1)
{
  v5 = *(v3 + 344);
  v6 = (*a1 ^ v1) - 179929056;
  if (v5 > 0x4588B8A != v6 < 0xFBA77475)
  {
    v7 = v5 > 0x4588B8A;
  }

  else
  {
    v7 = v5 - 72911755 > v6;
  }

  return (*(v2 + 8 * ((28 * ((((v4 + 293) ^ v7) & 1) == 0)) ^ v4)))();
}

uint64_t sub_10000AC6C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  *a25 = v25;
  v32 = ((v30 ^ (v30 >> 11) ^ a1 ^ v27) << ((a1 - 74) & 0xEE ^ (v28 - 5))) & 0x9D2C5680 ^ v30 ^ (v30 >> 11) ^ a1 ^ v27;
  *(*a22 + v29) ^= v26 ^ (v32 << 15) & 0xEFC60000 ^ v32 ^ (((v32 << 15) & 0xEFC60000 ^ v32) >> (a1 + 17));
  return (*(v31 + 8 * ((a1 | 0x146) ^ (21 * (v29 < 0x1FC)))))();
}

uint64_t sub_10000AD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = *(a1 + 32) - 50899313 * (((a1 | 0x5A0934BE) - (a1 | 0xA5F6CB41) - 1510552767) ^ 0x70C21EC4);
  v19 = 210068311 * (&v30 ^ 0x576F9AD7);
  v31 = v19 ^ 0x99739F6E;
  v32 = v19 ^ (v18 - 562358860);
  v30 = &v29;
  v20 = (*(*(&off_1001252D0 + v18 + 189) + (v18 ^ 0xACD) - 1))(&v30);
  return sub_10001F450(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10000AF04(uint64_t a1)
{
  v3 = STACK[0x398];
  v4 = (((v2 - 1450) | 0x229u) ^ 0x1241010164610F0) + (LODWORD(STACK[0x300]) ^ 0xFEDBEFEFE9B9EC65) + ((2 * LODWORD(STACK[0x300])) & 0x1D373D8CALL);
  STACK[0x3E0] = v4;
  return (*(v1 + 8 * ((457 * (v4 != 0)) ^ v2)))(a1, v3);
}

uint64_t sub_10000AF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v37 - 128) = v33 + 221 + 1785193651 * ((((v37 - 144) | 0x6B40101) - ((v37 - 144) & 0x6B40101)) ^ 0xF095A52D);
  *(v37 - 120) = &a32;
  *(v37 - 112) = &a32;
  *(v37 - 144) = v34;
  *(v37 - 136) = a14;
  (*(v32 + 8 * (v33 ^ 0xCBD)))(v37 - 144);
  *(v37 - 120) = &a32;
  *(v37 - 112) = &a32;
  *(v37 - 144) = v34;
  *(v37 - 136) = a14;
  *(v37 - 128) = v33 + 221 + 1785193651 * ((v37 - 144) ^ 0xF621A42C);
  (*(v32 + 8 * (v33 + 1181)))(v37 - 144);
  v38 = 675097751 * ((((2 * (v37 - 144)) | 0xEBD248C2) - (v37 - 144) + 169270175) ^ 0xB6A901F7);
  *(v37 - 128) = a15;
  *(v37 - 144) = v33 - v38 - 1002;
  *(v37 - 140) = v38 + v36 + 1962433959 - ((2 * v36 - 363173252) & 0xFF9650D2);
  v39 = (*(v32 + 8 * (v33 ^ 0xD46)))(v37 - 144);
  return (*(v32 + 8 * ((37 * (*(v37 - 136) != ((v33 - 1466) ^ v35 ^ ((v33 - 1474) | 8)))) ^ v33)))(v39);
}

uint64_t sub_10000B4E4@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = *(a1 + v5) - (((v3 - 7) & 0x97 ^ 0xC4) & (2 * *(a1 + v5))) + 32;
  return (*(v4 + 8 * ((871 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_10000B5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v37 = 39 * (v32 ^ 0x8F);
  *(v36 - 144) = &a24;
  *(v36 - 136) = v32 + 435584651 * ((415087803 - ((v36 - 144) | 0x18BDBCBB) + ((v36 - 144) | 0xE7424344)) ^ 0x8A705912) + 813;
  *(v36 - 112) = v35;
  *(v36 - 104) = &a32;
  *(v36 - 128) = a13;
  *(v36 - 120) = &a32;
  v38 = (*(v34 + 8 * (v32 ^ 0xA42)))(v36 - 144);
  return (*(v34 + 8 * ((451 * (v33 - 181586625 >= ((v37 - 385) | 0x484u) + 2147481979)) ^ (v37 + 831))))(v38);
}

uint64_t sub_10000B694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v37 - 120) = &a32;
  *(v37 - 112) = &a32;
  *(v37 - 128) = v33 + 1785193651 * ((((v37 - 144) | 0x5E566FDB) - (v37 - 144) + ((v37 - 144) & 0xA1A99020)) ^ 0xA877CBF7) + 171;
  *(v37 - 144) = v35;
  *(v37 - 136) = v34;
  (*(v32 + 8 * (v33 + 1131)))(v37 - 144);
  v38 = 675097751 * ((((2 * (v37 - 144)) | 0xEF2BDEEC) - (v37 - 144) - 2006314870) ^ 0x34D5CAE0);
  *(v37 - 128) = a15;
  *(v37 - 144) = v33 - v38 - 1052;
  *(v37 - 140) = ((v36 - 1) ^ 0x7519E2A9 ^ (((v36 - 1) ^ 0x7D489D6D) - 2006603693) ^ (((v36 - 1) ^ 0xE670FCF4) + 324913612) ^ (((v36 - 1) ^ 0xF7BF7BFF) + 43142849) ^ (((v36 - 1) ^ 0x6655D0A6) - 1820794343 + ((341 * (v33 ^ 0x687) - 767) | 0x281))) + v38;
  v39 = (*(v32 + 8 * (v33 + 1168)))(v37 - 144);
  return (*(v32 + 8 * ((31 * (*(v37 - 136) == -1426485250)) ^ v33)))(v39);
}

uint64_t sub_10000B8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  v42 = *(&a25 + v37 + 72);
  v43 = ((v39 ^ (v41 + 924) ^ 0x910DF034) & (2 * v37)) + (v37 ^ 0x6BFDFCEF) + v38;
  *(a1 + v43) = (HIBYTE(v42) ^ 0xCE) - ((v42 >> 23) & 0x40) + 32;
  *(a1 + v43 + 1) = (BYTE2(v42) ^ 0x8E) - ((v42 >> 15) & 0x40) + 32;
  *(a1 + v43 + 2) = (BYTE1(v42) ^ 0x63) - ((2 * (BYTE1(v42) ^ 0x63)) & 0x40) + 32;
  *(a1 + v43 + 3) = v42 ^ 0xBC;
  return (*(v40 + 8 * ((198 * (v37 + 4 >= a37)) ^ v39)))();
}

uint64_t sub_10000B974@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = a1 ^ 1;
  v31 = v30 ^ 0x5D1;
  *v28 = (((a15 - v30) | (v30 - a15)) >> (v30 ^ 0x1F)) | 0x80000000;
  (*(v27 + 8 * (v30 + 2812)))(a27);
  v32 = v28[1];
  v33 = v28[398] ^ ((v28[2] & 0x7FFFFFFE | v32 & 0x80000000) >> 1) ^ *(v29 - 232 + 4 * (v28[2] & 1));
  *v28 = v28[397] ^ ((v32 & ((v31 + 258) ^ 0x7FFFF92D) | *v28 & 0x80000000) >> 1) ^ *(v29 - 232 + 4 * (v32 & 1));
  v28[1] = v33;
  return (*(v27 + 8 * (v31 + 116)))();
}

uint64_t sub_10000BA6C@<X0>(unsigned int a1@<W1>, _DWORD *a2@<X4>, int a3@<W5>, int a4@<W6>, unsigned int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = ((v18 >> (a1 + 107)) ^ v17) + (a2[1] ^ v14) + a5 * (*(*(a14 + 8) + 4) ^ v14);
  *a2 = (v20 + v15 - (v16 & (2 * v20))) ^ a3;
  return (*(v19 + 8 * (((a6 == 2) * a4) ^ a1)))();
}

uint64_t sub_10000BADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, int a16, unsigned int a17, int a18, uint64_t a19, char *a20)
{
  v23 = 1785193651 * ((&a15 + 1652105197 - 2 * (&a15 & 0x62791FED)) ^ 0x9458BBC1);
  a18 = v22 - v23 - 2013067971;
  a19 = a11;
  a20 = &a12;
  a16 = v23 ^ 0x608A31DD;
  a17 = v23 - 929753733;
  v24 = (*(v21 + 8 * (v22 + 1374)))(&a15);
  return (*(v21 + 8 * ((950 * (a15 == ((v22 + 2129488224) & 0x153D ^ v20))) ^ v22)))(v24);
}

uint64_t sub_10000BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 120) = a16;
  *(v23 - 104) = &a19;
  *(v23 - 112) = (v20 + 932) ^ (((((v23 - 128) | 0xE759A3E1) + (~(v23 - 128) | 0x18A65C1E)) ^ 0xAC326F9E) * v21);
  v24 = (*(v19 + 8 * (v20 + 2485)))(v23 - 128);
  return (*(v19 + 8 * ((877 * (*(v23 - 128) == ((v20 + 435) ^ (v22 - 348)))) ^ v20)))(v24);
}

uint64_t sub_10000BCF8@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v57 = a2 ^ 1;
  v58 = v57 ^ 0x11A;
  *v56 = v57 ^ 0x80000000 | (((a33 - v57) | (v57 - a33)) >> 31);
  (*(a1 + 8 * (v57 ^ 0xAFC)))(a54);
  v59 = 2 * (v58 ^ 0x365);
  v60 = v56[1];
  v61 = v56[398] ^ ((v56[2] & 0x7FFFFFFE | v60 & 0x80000000) >> 1) ^ *(&STACK[0x4B8] + (v56[2] & 1));
  *v56 = v56[397] ^ ((v60 & 0x7FFFFFFE | ((v59 + 998787829) & 0xC477B3FE ^ 0x800003F2) & *v56) >> 1) ^ *(&STACK[0x4B8] + (v60 & 1));
  v56[1] = v61;
  return (*(a56 + 8 * v59))();
}

void sub_10000BE14(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a6 = v7;
  a5 = v8 - 1632 - 435584651 * (&a3 ^ 0x6D321A56) + 391;
  a3 = v6;
  a4 = v7;
  (*(a1 + 8 * ((v8 - 1632) ^ 0x835)))(&a3);
  sub_100060184();
}

uint64_t sub_10000BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, int a37, char a38)
{
  v41 = 11 * (v38 ^ 0x801);
  if (((v41 ^ 0x61) & a10) != 0)
  {
    v42 = a11;
  }

  else
  {
    v42 = 8;
  }

  v43 = *a18 ^ a12;
  v44 = **(a18 + 8);
  v45 = 50899313 * ((((v40 - 176) | 0xCFF93A19) - (v40 - 176) + ((v40 - 176) & 0x3006C5E0)) ^ 0xE5321063);
  *(v40 - 136) = v45 ^ v43 ^ ((v43 ^ (v41 - 1427954455)) + 286233469) ^ ((v43 ^ 0x87D16717) + 1010684258) ^ ((v43 ^ 0x12CEF46B) - 1457372642) ^ ((v43 ^ 0x7BEFFFFF) - 1073526390) ^ 0x8717C1B3;
  *(v40 - 176) = v40 - 192;
  *(v40 - 168) = v44;
  *(v40 - 160) = v40 - 208;
  *(v40 - 152) = &a38;
  *(v40 - 128) = &a36;
  *(v40 - 144) = (v41 ^ 0x5F0) - v45 + v42 - ((2 * v42) & 4) - 159467983;
  *(v40 - 140) = v45 + v41 + 2221;
  v46 = (*(v39 + 8 * (v41 ^ 0xB3E)))(v40 - 176);
  return (*(v39 + 8 * ((199 * (*(v40 - 132) == 1958853845)) ^ v41)))(v46);
}

uint64_t sub_10000C02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  *v11 = a1;
  *a6 = v6 ^ 0x22C ^ (v7 + 2699) ^ v14;
  v9 = (v6 ^ 0x22C) + 579;
  v16 = v12;
  v15 = (v6 ^ 0x22C) - 775 - 143681137 * ((2 * (&v15 & 0x1A756898) - &v15 - 443902111) ^ 0x3223B71) - 72;
  (*(v8 + 8 * ((v6 ^ 0x22C) + 1660)))(&v15);
  v16 = v13;
  v15 = v9 - 143681137 * (((&v15 | 0x232A062F) + (~&v15 | 0xDCD5F9D0)) ^ 0xC582AA3E) - 1426;
  (*(v8 + 8 * (v9 ^ 0xCC7)))(&v15);
  return 0;
}

uint64_t sub_10000C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v21 = 1361651671 * ((((v20 - 144) | 0x474DE09C) - (v20 - 144) + ((v20 - 144) & 0xB8B21F60)) ^ 0xC262CE2);
  *(v20 - 144) = v19;
  *(v20 - 120) = a10;
  *(v20 - 132) = (v18 + 1601) ^ v21;
  *(v20 - 128) = (v18 + a17 + 1232302771) ^ v21;
  (*(v17 + 8 * (v18 | 0x864)))(v20 - 144);
  return sub_100028C30();
}

uint64_t sub_10000C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v73 + 360) = 1;
  LODWORD(STACK[0x460]) = 45;
  LODWORD(STACK[0x314]) = 3;
  LODWORD(STACK[0x340]) = 6;
  v75 = (*(v74 + 8 * (v68 ^ 0xF78)))(v71, &STACK[0x244], v72, (v70 - 1912886423 + v68 - 1115), v69, &STACK[0x2E8], &a68, &STACK[0x214]);
  return sub_10003C7C0(v75);
}

void sub_10000C97C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *v41 = (((a20 - v38) | (v38 - a20)) >> (a4 + v38 + v39 + 30)) | 0x80000000;
  (*(v40 + 8 * (v38 + 2812)))(a38);
  vld1q_dup_f32(v41);
  JUMPOUT(0x10000CA4CLL);
}

uint64_t sub_10000CAF4()
{
  v4 = v3 + 2130060496;
  v5 = (((v2 ^ 0x574) + 192) ^ 0xCBE43412) + v1;
  v7 = v4 > 0xDE9929B2 && v4 < v5;
  return (*(v0 + 8 * ((463 * ((((v2 ^ 0x74) + 1) ^ v7) & 1)) ^ v2 ^ 0x574)))();
}

uint64_t sub_10000CBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v21 = v20 + 317821594 > a19;
  if (a19 < 0x12F1925A != (v20 + 317821594) < 0x12F1925A)
  {
    v21 = (v20 + 317821594) < 0x12F1925A;
  }

  return (*(v19 + 8 * ((a6 + a7 + 636) | (2 * !v21))))();
}

uint64_t sub_10000CC64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  v19 = v18 - 1520457130 > a16;
  if (a16 < 0xA55FAA16 != (v18 - 1520457130) < 0xA55FAA16)
  {
    v19 = (v18 - 1520457130) < 0xA55FAA16;
  }

  return (*(v16 + 8 * ((v19 * (((a3 + v17 - 441) | 0x182) - 487)) ^ (a3 + v17 + 1383))))(2259465470);
}

uint64_t sub_10000CD30(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_10000CDA0@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 2428));

  return v3(v1);
}

uint64_t sub_10000CDD4(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = v7;
  v16 = v8;
  HIDWORD(v17) = a4 ^ 0x68E639C;
  LODWORD(v17) = a4 ^ 0xC8000000;
  v18 = (v15 ^ 0x31719C63) & ((v4 - 1664691337) & 0x63392F7F ^ v8 ^ 0xA1E0C9FF) ^ v15 & 0x909156E5;
  v19 = (a1 ^ v9) + (v17 >> 27) + (*(v5 + 4 * (v14 + v12)) ^ v11) - 1759162374 + (v18 & 0x9A51A7FC ^ 0x8A40A39C ^ (v18 ^ 0xEFEEEB9E) & (v6 ^ 0x54DFC460) | v15 & 0x6348D3B2 ^ 0x42084390 ^ (v15 ^ v9) & (v16 ^ 0xADC6B02E));
  return (*(v10 + 8 * ((1455 * (v14 + 1 == v13 + 44)) ^ v4)))(v15, a2, a3, v19 ^ ((v19 ^ 0x3D135738) - 890946598) ^ ((v19 ^ 0x112CD7D) - 152788579) ^ ((v19 ^ 0x4FF3F4B4) - 1207592874) ^ ((v19 ^ 0x7BFBFDEF) - 1945267953) ^ 0xC687F082);
}

uint64_t sub_10000D004(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v10 = (v9 + v6);
  v11 = vaddq_s8(vsubq_s8(v10[1], vandq_s8(vaddq_s8(v10[1], v10[1]), a5)), a6);
  *&STACK[0x29C] = vaddq_s8(vsubq_s8(*v10, vandq_s8(vaddq_s8(*v10, *v10), a5)), a6);
  *&STACK[0x2AC] = v11;
  return (*(v8 + 8 * v7))();
}

uint64_t sub_10000D070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v49 = (BYTE4(a36) - ((2 * BYTE4(a36)) & 0x8C) - 51);
  if (v49 == 206)
  {
    v50 = a4 + v48 - 52;
    BYTE4(a31) = (8 * (a33 + v50 + (~(2 * a33) | 0x55)) - 40) ^ 8;
    BYTE5(a31) = (a33 >> 5) ^ 0x20;
    BYTE6(a31) = (a33 >> 13) ^ 0x20;
    HIBYTE(a31) = (a33 >> 21) ^ 0x20;
    LOBYTE(a32) = ((__PAIR64__(HIDWORD(a32), a33) >> 29) - ((2 * (__PAIR64__(HIDWORD(a32), a33) >> 29)) & 0xBC) - 34) ^ 0xFE;
    BYTE1(a32) = (HIDWORD(a32) >> 5) ^ 0x20;
    BYTE2(a32) = (HIDWORD(a32) >> 13) ^ 0x20;
    v51 = HIDWORD(a32) >> 21;
    goto LABEL_5;
  }

  if (v49 == 203)
  {
    v50 = a4 + v48 - 52;
    BYTE4(a31) = (HIDWORD(a32) >> (v50 ^ 0x1E)) ^ 0x20;
    BYTE5(a31) = (HIDWORD(a32) >> 13) ^ 0x20;
    BYTE6(a31) = (HIDWORD(a32) >> 5) ^ 0x20;
    HIBYTE(a31) = ((__PAIR64__(HIDWORD(a32), a33) >> 29) + (~(2 * (__PAIR64__(HIDWORD(a32), a33) >> 29)) | 0x23) + 111) ^ 0x4E;
    LOBYTE(a32) = (a33 >> 21) ^ 0x20;
    BYTE1(a32) = (a33 >> 13) ^ 0x20;
    BYTE2(a32) = (a33 >> 5) ^ 0x20;
    LOBYTE(v51) = 8 * a33;
LABEL_5:
    BYTE3(a32) = v51 ^ (v48 + v50 - 11) ^ 0xCC;
  }

  return sub_100043EF0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_10000D200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v15 = STACK[0x290];
  *(v14 - 104) = (v13 - 615) ^ (843532609 * ((-63215938 - ((v14 - 128) | 0xFC3B66BE) + ((v14 - 128) | 0x3C49941)) ^ 0x5F89CDC4));
  *(v14 - 128) = v15;
  *(v14 - 112) = &a12;
  (*(v12 + 8 * (v13 ^ 0xEB6)))(v14 - 128);
  *(v14 - 120) = STACK[0x290];
  *(v14 - 128) = v13 + 843532609 * ((1998389172 - ((v14 - 128) | 0x771CFFB4) + ((v14 - 128) | 0x88E3004B)) ^ 0xD4AE54CE) - 769;
  v16 = (*(v12 + 8 * (v13 ^ 0xEBE)))(v14 - 128);
  return (*(v12 + 8 * ((3696 * (*(v14 - 112) == ((v13 + 159) ^ 0x3ED03350 ^ ((v13 + 167771422) | 0x40118A04)))) ^ v13)))(v16);
}

void sub_10000D338()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 24) + 675097751 * (((v0 ^ 0xCFEBF15F | 0x507A8C23) - ((v0 ^ 0xCFEBF15F) & 0x507A8C23)) ^ 0xDCD158EA);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10000D534()
{
  v4 = 64 - ((v1 ^ 0x187E6643 ^ ((v1 - 223) | 0x821)) + v0);
  v5 = v2 - v0;
  if (HIDWORD(v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 >= v4;
  }

  v7 = !v6;
  return (*(v3 + 8 * (((32 * v7) | (v7 << 6)) ^ v1)))();
}

uint64_t sub_10000D598@<X0>(uint64_t a1@<X2>, int a2@<W3>, unsigned int a3@<W8>)
{
  v8 = (v6 + 4 * v4);
  v9 = v4 + 1;
  *v8 = *(a1 + 4 * (*(v6 + 4 * v9) & 1)) ^ v8[397] ^ ((*(v6 + 4 * v9) & 0x7FFFFFFE | v3 & 0x80000000) >> ((a3 + 32) ^ v5));
  return (*(v7 + 8 * (((v9 == 227) * a2) ^ a3)))();
}

uint64_t sub_10000D5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40)
{
  v44 = 1361651671 * ((~((v43 - 144) | 0xC2A214CA4A740087) + ((v43 - 144) & 0xC2A214CA4A740087)) ^ 0xE840795EFEE03306);
  *(v43 - 104) = v44 ^ 0x86F54BA0;
  *(v43 - 112) = 3 - v44;
  *(v43 - 120) = a38 ^ v44;
  *(v43 - 116) = v44;
  *(v43 - 128) = (v42 + 1 - (((((v40 + 370420500) ^ v41) & v41) >> (__clz((v40 + 370420500) ^ v41 | 1) ^ 0x1F)) & 1)) ^ v44;
  *(v43 - 144) = v44 + a38 + 106;
  *(v43 - 140) = a38 - v44 + 11;
  v45 = (*(a40 + 22176))(v43 - 144);
  return (*(a40 + 8 * *(v43 - 136)))(v45);
}

uint64_t sub_10000D6EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, unsigned int a27, unsigned int a28)
{
  v31 = 1564307779 * ((((&a25 | 0x7DCE92CE) ^ 0xFFFFFFFE) - (~&a25 | 0x82316D31)) ^ 0x153CA122);
  a26 = v29;
  a25 = (v28 + 1525) ^ v31;
  a27 = (((v28 ^ 0x3F90DBDF) + a2 - a14) ^ 0x9EDAB9F0) - v31 + ((2 * ((v28 ^ 0x3F90DBDF) + a2 - a14)) & 0x3DB573E0) + 1911519152;
  a28 = (((a2 & 0xFFFFFFF0) + v28 - 603 - 53) ^ 0x2F5F5F7D) - v31 + ((2 * ((a2 & 0xFFFFFFF0) + v28 - 603 - 53)) & 0x5EBEBEE0) - 555158549;
  v32 = (*(v30 + 8 * (v28 + 2150)))(&a25);
  return (*(v30 + 8 * ((1789 * (*(v29 + 24) == 1958853845)) ^ v28)))(v32);
}

uint64_t sub_10000D83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = (((v36 ^ 0xDDEA00CD) + 571866931) ^ ((v36 ^ 0xEFF9878B) + 268859509) ^ ((v36 ^ 0xCB524D79) + 883798663)) + (((LODWORD(STACK[0x484]) ^ 0xB30E4D28) + 1290908376) ^ ((LODWORD(STACK[0x484]) ^ 0xE69DCBCD) + 425866291) ^ (((((v35 + 803772352) & 0xD01767E7) - 1395504104) ^ LODWORD(STACK[0x484])) + 1395503910)) - 226257794;
  *(a35 + 52) = ((v38 % 0x2710) ^ 0xEAEE7DBD) + 2142764895 + ((2 * (v38 % 0x2710)) & 0x7B7A);
  v39 = STACK[0x48C];
  STACK[0x288] -= 1616;
  LODWORD(STACK[0x378]) = v39;
  return (*(v37 + 8 * ((1955 * (v39 == a8)) ^ (v35 - 88))))();
}

uint64_t sub_10000DA88(uint64_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v14 = v9 + 8;
  *(v12 + (v14 ^ a5 ^ a1) + v8) = vadd_s8(vsub_s8(*(v10 + (v14 ^ a5 ^ a1) + v8), vand_s8(vadd_s8(*(v10 + (v14 ^ a5 ^ a1) + v8), *(v10 + (v14 ^ a5 ^ a1) + v8)), a2)), a3);
  return (*(v13 + 8 * (((a8 == v14) * a6) ^ v11)))();
}

uint64_t sub_10000DA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = v3 + 32;
  v9 = (v8 ^ v6 ^ (v5 + 1191)) + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v7 + 8 * ((v4 != v8) | (v5 + 1952))))();
}

uint64_t sub_10000DA98()
{
  v4 = 311 * (v3 ^ 0x160);
  v9 = v7;
  v8 = v3 - ((((2 * &v8) | 0xE70606B4) - &v8 - 1937965914) ^ 0x952BAF4A) * v1 - 120;
  (*(v0 + 8 * (v3 ^ 0xBDD)))(&v8);
  v9 = v6;
  v8 = v4 - ((2 * (&v8 & 0x3F57D5C0) - &v8 - 1062720964) ^ 0x2600862C) * v1 - 1318;
  (*(v0 + 8 * (v4 + 1189)))(&v8);
  return (v2 - 1958853845);
}

uint64_t sub_10000DD40@<X0>(unsigned int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned int a4@<W8>)
{
  v9 = a1 < v7;
  v10 = *(a2 + v4);
  v11 = v4 + 1;
  *(a3 + a4) = ((2 * v5) ^ 0x20) + v10 - ((2 * v10) & 0x40);
  if (v9 == v11 > v6)
  {
    v9 = v11 + v7 < a1;
  }

  return (*(v8 + 8 * ((31 * v9) | v5)))();
}

uint64_t sub_10000DDAC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v33 = *(v31 + 4 * (v25 - 1));
  *(v31 + 4 * v25) = *(v29 + 4 * v26) + v26 + ((1664525 * (v33 ^ (v33 >> 30))) ^ *(v31 + 4 * v25));
  v34 = 1361651671 * ((0x56DE9170726517B8 - ((v32 - 176) | 0x56DE9170726517B8) + a25) ^ 0x7C3CFCE4C6F12439);
  *(v32 - 160) = (v25 + 1) ^ v34;
  *(v32 - 144) = v30 - v34;
  *(v32 - 136) = (a1 - 307 + v28) ^ v34;
  *(v32 - 152) = (a1 - 1494619047) ^ v34;
  *(v32 - 148) = v34;
  *(v32 - 176) = ((a1 - 1494619047) ^ 0x63) + v34;
  *(v32 - 172) = ((a1 - 1494619047) ^ 4) - v34;
  v35 = (*(v27 + 8 * ((a1 - 307) ^ 0xF05)))(v32 - 176);
  return (*(v27 + 8 * *(v32 - 168)))(v35);
}

uint64_t sub_10000DE50@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - ((2 * *(v1 + v5)) & 0x40) + 32;
  return (*(v4 + 8 * (((v5 == 0) * ((v2 - 998) ^ 0x101)) ^ v2)))();
}

uint64_t sub_10000DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = (v17 - 934) | 0x22;
  v20 = 435584651 * ((((v18 - 136) | 0x269B62F4) - ((v18 - 136) & 0x269B62F4)) ^ 0x4BA978A2);
  *(v18 - 136) = ((v15 ^ 0xB9FFFFB7) + 2115394560 + ((v15 << (((v17 + 90) | 0x22) ^ 0x76)) & 0x73FFFF6E)) ^ v20;
  *(v18 - 120) = v20 + v17 - 912;
  *(v18 - 128) = &a15;
  (*(v16 + 8 * (v17 ^ 0x231)))(v18 - 136);
  *(v18 - 112) = a13;
  *(v18 - 128) = a14;
  *(v18 - 120) = (v19 - 216) ^ (1361651671 * ((2 * (((v18 - 136) ^ 0x62EE7B9) & 0x6C0451B9) - ((v18 - 136) ^ 0x62EE7B9) + 335261254) ^ 0x5EBE8581));
  v21 = (*(v16 + 8 * (v19 + 1337)))(v18 - 136);
  return (*(v16 + 8 * (((*(v18 - 136) > ((v19 - 363) | 1u) + 93920824) * ((v19 + 84251176) & 0xFAFA6FE1 ^ 0x760)) ^ v19)))(v21);
}

uint64_t sub_10000E080(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_10000E0A8(_DWORD *a1)
{
  v1 = *a1 + 1504884919 * ((((2 * a1) | 0x6C6A6A0E) - a1 - 909456647) ^ 0xCDF6821C) + 1197042561;
  v2 = **(&off_1001252D0 + v1);
  v4 = v1 + 435584651 * (&v4 ^ 0x6D321A56) + 1692;
  v5 = v2;
  return (*(*(&off_1001252D0 + v1 + 46) + v1 + 2659))(&v4);
}

uint64_t sub_10000E18C(uint64_t a1)
{
  v1 = 1037613739 * (a1 ^ 0xD1022D7F);
  v2 = *(a1 + 8) - v1;
  v3 = *(a1 + 40) - v1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 44) ^ v1;
  v7 = *(&off_1001252D0 + v2 + 1776823478) - 8;
  if (v3 == 1799332903 || v3 == 1799332900)
  {
    __asm { BRAA            X19, X17 }
  }

  v9 = *a1;
  v10 = 1564307779 * ((&v14 + 864929047 - 2 * (&v14 & 0x338DC517)) ^ 0xA4800904);
  v20 = *(a1 + 48);
  v17 = (v6 + 586492606) ^ v10;
  v11 = v2 + 1776823300;
  v19 = v11 + v10 + 719;
  v18 = v4;
  v16 = v5;
  v14 = v9;
  result = (*&v7[8 * v11 + 22440])(&v14);
  *(a1 + 24) = v15;
  return result;
}

void sub_10000E5E4(uint64_t a1)
{
  v1 = *(a1 + 28) + 1504884919 * ((a1 - 2 * (a1 & 0x4EDFA1D7) + 1323278807) ^ 0xB51C16CC);
  v2 = *(a1 + 56) + 1504884919 * ((a1 - 2 * (a1 & 0x4EDFA1D7) + 1323278807) ^ 0xB51C16CC);
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = 1037613739 * ((((2 * &v9) | 0xAEEA01DA) - &v9 + 680197907) ^ 0x6772D92);
  v7 = *a1 - 1504884919 * ((a1 - 2 * (a1 & 0x4EDFA1D7) + 1323278807) ^ 0xB51C16CC) + 691729899;
  v10 = v1 + v6 - 1776824120;
  v9 = v4;
  v16 = v3;
  v11 = v5;
  v13 = v5;
  v14 = v2 + v6 + 288077818;
  v15 = v7 ^ v6;
  v8 = *(&off_1001252D0 + (v1 ^ 0x382)) - 8;
  (*&v8[8 * v1 + 15760])(&v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10000E754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 120) = &a15;
  *(v18 - 128) = v15 + 675097751 * (((~(v18 - 136) & 0x1F13A97C) - (~(v18 - 136) | 0x1F13A97D)) ^ 0x5C538CEB) - 1384;
  *(v18 - 136) = a14;
  (*(v17 + 8 * (v15 + 965)))(v18 - 136);
  v19 = 2 * (v18 - 136);
  v20 = 435584651 * (((v19 | 0xC6563E2A) - (v18 - 136) + 483713259) ^ 0x8E190543);
  *(v18 - 136) = v20 ^ 0x38165BB8;
  *(v18 - 128) = v16;
  *(v18 - 120) = v20 + v15 - 368;
  (*(v17 + 8 * (v15 + 1007)))(v18 - 136);
  *(v18 - 128) = a14;
  *(v18 - 112) = v16;
  *(v18 - 120) = (v15 - 572) ^ (1361651671 * (((v19 | 0xBCA4C680) - (v18 - 136) - 1582457664) ^ 0x1539AF3E));
  v21 = (*(v17 + 8 * (v15 ^ 0xC6B)))(v18 - 136);
  return (*(v17 + 8 * ((56 * (*(v18 - 136) > ((v15 + 1935460643) & 0x8CA334FB) + 93920587)) ^ v15)))(v21);
}

uint64_t sub_10000E9C0(_DWORD *a1)
{
  v1 = 1361651671 * (a1 ^ 0x4B6BCC7E);
  v2 = a1[2] ^ v1;
  v3 = a1[3] + v1;
  v4 = v3 - 534225974 + *(*a1 + 68);
  *(*a1 + 68) = v4;
  v3 -= 193865418;
  v5 = v3 < 0x14497D6C;
  v6 = v4 + 340360556 < v3;
  if (v5 != v4 > 0xEBB68293)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(*(&off_1001252D0 + (v2 ^ 0x262)) + (((4 * (((v2 + 4) ^ v7) & 1)) & 0xF7 | (8 * (((v2 + 4) ^ v7) & 1))) ^ v2) - 1))();
}

void sub_10000EAAC(uint64_t a1)
{
  v1 = *(a1 + 16) + 742307843 * ((2 * (a1 & 0x4FBE55C) - a1 - 83617117) ^ 0xE52697F6);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10000EB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = 675097751 * ((((v19 - 144) | 0x722AD9F9) - (v19 - 144) + ((v19 - 144) & 0x8DD52600)) ^ 0x316AFC6F);
  *(v19 - 128) = a15;
  *(v19 - 144) = v18 - v20 - 362;
  *(v19 - 140) = ((v17 - 3) ^ 0x7519E2A9 ^ (((v17 - 3) ^ 0x8FCF4E49) + 2061663095) ^ (((v17 - 3) ^ 0xAD51C87D) + 1484586307) ^ (((v17 - 3) ^ 0x7FBBCFFF) - 1969816895) ^ ((((v18 + 126) | 0x202) ^ 0xA2DAB067) + ((v17 - 3) ^ 0x57F7830B))) + v20;
  v21 = (*(v15 + 8 * (v18 + 1858)))(v19 - 144);
  return (*(v15 + 8 * ((52 * (*(v19 - 136) == v16)) ^ v18)))(v21);
}

uint64_t sub_10000ECB0@<X0>(_DWORD *a1@<X8>)
{
  v5 = *a1 + 1771959573;
  v6 = *(v2 + 4) + v4 - 1883110181;
  v7 = v5 < 0xD14D5BF5;
  v8 = v5 > v6;
  if (v7 != v6 < ((((v1 - 2137) | 0x574) - 250) ^ 0xD14D5F8E))
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((42 * !v8) ^ v1)))();
}

uint64_t sub_10000ED7C()
{
  v7 = *(v3 + 4 * (v1 - 1));
  *(v3 + 4 * v1) = ((1566083941 * (v7 ^ (v7 >> 30))) ^ *(v3 + 4 * v1)) - v1;
  *(v6 - 112) = 623 - v4;
  *(v6 - 128) = (v1 + 1) ^ v4;
  *(v6 - 104) = (v0 + 1893802746) ^ v4;
  *(v6 - 120) = (v0 - 1422781260) ^ v4;
  *(v6 - 116) = v4;
  *(v6 - 144) = ((v0 - 1422781260) ^ 0xA6) + v4;
  *(v6 - 140) = ~v4 + v0 - 1422781260;
  v8 = (*(v2 + 8 * (v0 ^ v5)))(v6 - 144);
  return (*(v2 + 8 * *(v6 - 136)))(v8);
}

uint64_t sub_10000EE20()
{
  *(v2 + 4) = v0;
  *(v5 - 136) = v1 - 596 + ((((v5 - 144) | 0xEA2562DA) - (v5 - 144) + ((v5 - 144) & 0x15DA9D20)) ^ 0xA965474C) * v3 - 526;
  *(v5 - 128) = v2;
  *(v5 - 144) = &v7;
  return (*(v4 + 8 * ((v1 - 596) ^ 0x921)))(v5 - 144);
}

uint64_t sub_10000EEC8@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xAF3));

  return v3(v1);
}

uint64_t sub_10000F01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, unsigned int a11, int a12, unsigned int a13, int a14)
{
  v16 = 143681137 * ((((2 * &a10) | 0xE7CC9728) - &a10 + 203011180) ^ 0x154EE784);
  a10 = v16 + 365723674;
  a11 = v16 + 313849399;
  a12 = v16 + v15 - 1629;
  a13 = v16 + 1754025692;
  v17 = (*(v14 + 8 * (v15 ^ 0x2ED)))(&a10);
  return (*(v14 + 8 * ((30 * (a14 - 1015591267 >= ((110 * (v15 ^ 0x9FA)) ^ 0xCA731025))) ^ v15)))(v17);
}

uint64_t sub_10000F0F4@<X0>(int a1@<W8>)
{
  v6 = v2 + ((a1 + v3 + 1274) | 0x82u) - 1411;
  *(v5 + v6) = *(v1 + v6);
  return (*(v4 + 8 * ((255 * (v6 == 0)) ^ (a1 + v3 + 1369))))();
}

void sub_10000F1C8(uint64_t a1)
{
  v1 = 1564307779 * ((((2 * a1) | 0x8DBFB438) - a1 - 1189075484) ^ 0xD1D2160F);
  v2 = *(*(a1 + 8) + 12) + 2130035162;
  v3 = *(a1 + 20) + v1 - 1147543200;
  v4 = (v3 < 0xC9E234C8) ^ (v2 < 0xC9E234C8);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0xC9E234C8;
  }

  __asm { BRAA            X11, X17 }
}

uint64_t sub_10000F3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = v17 + (v16 ^ 0xE3D) - 2473;
  v21 = 675097751 * ((((v19 - 144) | 0x548546E3) + (~(v19 - 144) | 0xAB7AB91C)) ^ 0x17C56374);
  *(v19 - 128) = a15;
  *(v19 - 144) = v16 - v21 - 1328;
  *(v19 - 140) = (v20 ^ 0x7519E2A9 ^ ((v20 ^ 0xD895281C) + 767040804) ^ (v16 + 654753806 + (v20 ^ 0xD22BF29A)) ^ ((v20 ^ 0x7F836FA9) - 1968285033) ^ ((v20 ^ 0x7FEF7FEF) - 1966978351)) + v21;
  v22 = (*(v15 + 8 * (v16 + 892)))(v19 - 144);
  return (*(v15 + 8 * ((*(v19 - 136) == v18) | (4 * (*(v19 - 136) == v18)) | v16)))(v22);
}

uint64_t sub_10000F4D0@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xC33));

  return v3(v1);
}

uint64_t sub_10000F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v11 - 1;
  *(a2 + v11 - 1) = (&a10 ^ 0xBA) * (&a10 + 17);
  v13 = *(v12 + 8 * ((26 * (v11 == 1)) ^ (v10 + 1532)));
  return v13(v13, a2);
}

void sub_10000F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v37 = 210068311 * ((v36 - 1933617863 - 2 * ((v36 - 144) & 0x8CBF55C9)) ^ 0xDBD0CF1E);
  *(v36 - 128) = v37 + v35 - 591;
  *(v36 - 144) = 536598499 - v37;
  *(v36 - 136) = &a16;
  (*(v32 + 8 * (v35 + 1351)))(v36 - 144);
  *(v36 - 144) = &a16;
  *(v36 - 112) = v33;
  *(v36 - 104) = &a32;
  *(v36 - 136) = v35 + 435584651 * ((((v36 - 144) ^ 0x3164C18D | 0xBC74DA76) - ((v36 - 144) ^ 0x3164C18D) + (((v36 - 144) ^ 0x3164C18D) & 0x438B2589)) ^ 0xE02201AD) - 528;
  *(v36 - 128) = v34;
  *(v36 - 120) = &a32;
  (*(v32 + 8 * (v35 + 1285)))(v36 - 144);
  JUMPOUT(0x10000EE28);
}

uint64_t sub_10000F694(uint64_t a1, int a2)
{
  v8 = *(v4 + v5 * v6 + 36);
  v10 = v8 != v7 && v8 + a2 < ((v2 - 142101280) & 0x9F7FFD9F) - 386381201;
  return (*(v3 + 8 * ((v10 * (v2 ^ 0x4FC)) ^ v2)))();
}

uint64_t sub_10000F6EC(uint64_t a1, uint64_t a2)
{
  v7 = v2 + v4 + v3 - 1;
  STACK[0x3E0] = v7;
  *(a2 + v7) = (&STACK[0x3E0] ^ 0x56 ^ ((v6 - 12) | 0xC)) * (&STACK[0x3E0] + 17);
  return (*(v5 + 8 * ((4076 * (v7 == 0)) ^ (v6 - 245))))();
}

uint64_t sub_10000F748@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v31 = 210068311 * ((((2 * (v30 - 128)) | 0x6F44913A) - (v30 - 128) - 933382301) ^ 0x60CDD24A);
  *(v30 - 128) = &a18;
  *(v30 - 112) = (v29 - 562360568) ^ v31;
  *(v30 - 120) = (a1 | 0x99739F6C) ^ v31;
  v32 = (*(v27 + 8 * (v29 ^ 0xC71)))(v30 - 128);
  return (*(v27 + 8 * ((318 * (*v28 + (a27 & 0x3F) + ((v29 - 265) ^ 0xCC209852) < 0xFFFFFFC0)) ^ v29)))(v32, 2635908920, 3104437843);
}

uint64_t sub_10000F928()
{
  v5 = 1361651671 * (((v4 - 144) & 0xF201C390 | ~((v4 - 144) | 0xF201C390)) ^ 0x4695F011);
  *(v4 - 120) = v7;
  *(v4 - 132) = (v0 - 344) ^ v5;
  *(v4 - 128) = (v2 + 1610645398 + ((v0 - 2575) | 0x664)) ^ v5;
  *(v4 - 144) = v3;
  (*(v1 + 8 * ((v0 - 1007) ^ 0xCDE)))(v4 - 144);
  result = v10;
  *v9 = v8;
  *(v10 + 28) = 1958853845;
  return result;
}

uint64_t sub_10000FAB0(uint64_t a1, int a2)
{
  v5 = (((v4 ^ 0xE68) - 673) ^ 0x2577EF00) + v3;
  v6 = v5 < -153658192;
  v7 = a2 + 628616095 < v5;
  if (a2 + 628616095 < -153658192 != v6)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * (((8 * !v7) | (16 * !v7)) ^ v4)))();
}

uint64_t sub_10000FB24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, unsigned int a16, unsigned int a17)
{
  v19 = (((a4 + v18 + 1347) | 0x29) ^ 0xB2A17890) + a14;
  v20 = v19 < 0xB2A17CFB;
  v21 = v19 > a17;
  if (a17 < a16 != v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  return (*(v17 + 8 * (((4 * !v22) | (8 * !v22)) ^ (a4 + v18 + 1653))))();
}

uint64_t sub_10000FB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = ((((v64 - 192) | 0x6A1B6CA0) - (v64 - 192) + ((v64 - 192) & 0x95E49358)) ^ 0x2170A0DE) * v63;
  *(v64 - 192) = v66 + v62 - 198;
  *(v64 - 184) = &STACK[0x3CC];
  *(v64 - 176) = 6338 - v66;
  v67 = (*(v65 + 8 * (v62 + 665)))(v64 - 192);
  return (*(a62 + 8 * ((121 * ((LODWORD(STACK[0x43C]) >> 4) & 1)) ^ v62)))(v67);
}

uint64_t sub_10000FC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int *a20, unsigned int a21)
{
  a15 = 0;
  a18 = a13;
  a20 = &a15;
  a21 = (v21 - 718) ^ (843532609 * (((&a18 | 0x48AEB85E) - &a18 + (&a18 & 0xB75147A0)) ^ 0x14E3ECDB));
  (*(v23 + 8 * (v21 ^ 0xEDD)))(&a18);
  a21 = (v21 - 718) ^ (843532609 * ((&a18 & 0xCAEA84E | ~(&a18 | 0xCAEA84E)) ^ 0xAF1C0334));
  a18 = a13;
  a20 = &a12;
  (*(v23 + 8 * (v21 ^ 0xEDD)))(&a18);
  a19 = a13;
  LODWORD(a18) = v21 + 843532609 * ((&a18 & 0xA116FAE3 | ~(&a18 | 0xA116FAE3)) ^ 0x2A45199) - 872;
  v24 = (*(v23 + 8 * (v21 + 1619)))(&a18);
  return (*(v23 + 8 * (((a20 == v22) * ((v21 - 1064) ^ 0xDD1)) ^ v21)))(v24);
}

uint64_t sub_10000FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x4A0] = v70;
  STACK[0x4A8] = v70;
  v75 = STACK[0x288];
  v76 = (&STACK[0x500] + STACK[0x288]);
  STACK[0x4B0] = v76;
  STACK[0x288] = v75 + 320;
  v77 = *(v70 + 72);
  LODWORD(STACK[0x324]) = v77;
  LODWORD(STACK[0x40C]) = *(v70 + 76);
  LODWORD(STACK[0x2AC]) = *(v70 + 80);
  LODWORD(STACK[0x38C]) = *(v70 + 84);
  v78 = (*(v70 + 96) - ((2 * *(v70 + 96)) & 0xF8) + 1);
  if (v78 == 3)
  {
    LODWORD(STACK[0x298]) = *(v70 + 88);
    return sub_100014E8C((v72 - 26) | 0xE3u);
  }

  else if (v78 == 2)
  {
    v79 = ((*(v70 + (v71 + 2138551919)) ^ 0x20) << ((2 * v72) ^ 0x3C)) + (*(v70 + (v71 + 2138551918)) ^ 0x20) + ((*(v70 + (v71 + 2138551920)) ^ 0x20) << 16) + ((*(v70 + (v71 + 2138551921)) ^ 0x20) << 24);
    *v76 = v79 + v73 - ((2 * v79) & 0xF283947E);
    return (*(v74 + 8 * ((373 * ((v71 + 2138551922) < 0x40)) ^ (v72 + 1478))))(2138551918);
  }

  else
  {
    return sub_10003A2F8(v77, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64, a65, a66, a67, a68, a69, a70);
  }
}

uint64_t sub_100010160@<X0>(int a1@<W8>, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v11 = v8 - 1478;
  v12 = (((&a3 | 0x3BD28ED0) - (&a3 & 0x3BD28ED0)) ^ 0x25F00385) * v7;
  a3 = v12 ^ a1;
  a5 = (v11 + 20) ^ v12;
  a6 = v12 ^ 0x61F090CD;
  a7 = v9;
  a4 = 0;
  v13 = (*(v10 + 8 * (v11 + 2327)))(&a3);
  return sub_1000174DC(v13);
}

uint64_t sub_100010238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, _DWORD *a28)
{
  v36 = (v30 - 1488) ^ 0x30A;
  *v34 = v29 + 1;
  v37 = ((v28 ^ (v28 >> 11)) << 7) & 0x9D2C5680 ^ v28 ^ (v28 >> 11);
  v38 = ((v37 << ((v30 + 48) ^ 0xE)) ^ (v30 - 1489)) & 0xEFC60000 ^ v37;
  v39 = v38 ^ (v38 >> 18);
  v40 = v35 - 208 + (v33 - 1);
  v41 = -976034857 * ((*(*a27 + (*a28 & (v36 - 1248199179))) ^ v40) & 0x7FFFFFFF);
  v42 = -976034857 * ((v41 >> ((((v30 + 48) ^ 0xA) - 9) ^ 0x12)) ^ v41);
  LODWORD(v42) = *((v42 >> 24) + *(v31 + 8 * (v36 - 764)) + 1) ^ *(*(v31 + 8 * (v36 - 613)) + (v42 >> 24) - 8) ^ *(*(v31 + 8 * (v36 - 684)) + (v42 >> 24) - 1) ^ v42 ^ (87 * (v42 >> 24));
  *v40 = v42 ^ v39;
  return (*(v32 + 8 * ((95 * (v33 != (v42 != v39))) ^ v36)))(811, 1508, 612);
}

void sub_1000103B8(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (210068311 * (a1 ^ 0x576F9AD7));
  v3[1] = v1 + 1504884919 * ((v3 & 0x78A45FCF | ~(v3 | 0x78A45FCF)) ^ 0x7C98172B) + 666;
  v2 = *(&off_1001252D0 + v1 - 1200) - 8;
  (*&v2[8 * (v1 ^ 0xFB1)])(v3);
  __asm { BRAA            X8, X17 }
}

void sub_1000104C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *a1 != 0;
  v1 = *(a1 + 28) + 675097751 * ((2 * (a1 & 0x32935955) - a1 - 848517462) ^ 0x8E2C833C);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000106D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16)
{
  a15 = v18 - ((2 * (&a15 & 0x5CB5EC70) - &a15 + 592057225) ^ 0xC5E2BF99) * v17 - 840;
  a16 = a11;
  v19 = (*(v16 + 8 * (v18 + 1667)))(&a15);
  return sub_10001072C(v19);
}

uint64_t sub_100010778@<X0>(int a1@<W5>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v44 = (v43 + 4 * v40);
  v45 = v41 & 0x80000000;
  v46 = v40 + 1;
  v47 = *(v43 + 4 * v46);
  v48 = ((v47 & 0x7FFFFFFE | v45) >> (((a3 - 124) | 0x1B) - 62)) ^ v44[397];
  *v44 = (v48 + a1 - (a2 & (2 * v48))) ^ *(&a40 + (v47 & 1));
  return (*(v42 + 8 * ((101 * (v46 != 227)) ^ a3)))();
}

uint64_t sub_1000107EC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = (a4 - 1932663249) & 0x733217E7;
  v9 = v5 + v6 + a2 + v8;
  v10 = v9 + v7 + 1324917165;
  v11 = v9 - 1057164748 + ((v8 - 1605492171) & 0x5FB1DFB3) > v10;
  if (v9 > ((v8 + 1001) | 0x83u) + 1057162024 != v10 < 0xC0FCF644)
  {
    v11 = v9 > ((v8 + 1001) | 0x83u) + 1057162024;
  }

  return (*(v4 + 8 * (((4 * v11) | (16 * v11)) ^ v8)))();
}

uint64_t sub_1000108D8()
{
  v5 = (v4 + v1 - 16);
  v6 = (v0 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFE0) == 32) ^ (v2 - 1)) & 1 | (2 * ((((v1 & 0xFFFFFFE0) == 32) ^ (v2 - 1)) & 1)) | (v2 + 886))))();
}

uint64_t sub_100010920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = (v35 - 2078);
  STACK[0x288] = a34 + v37 - 1994;
  LODWORD(STACK[0x378]) = a8;
  return (*(v36 + 8 * (((*(a35 + 360) < 2u) * (v37 ^ 0x165)) ^ v35)))(LODWORD(STACK[0x214]));
}

uint64_t sub_100010A50(int a1, int a2, int a3, int8x16_t a4, int8x16_t a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int32x4_t a11, uint64_t a12, int a13)
{
  v18 = v17 + 4 * v13;
  a5.i64[0] = *(v18 + 4);
  a5.i32[2] = *(v18 + 12);
  v19 = vextq_s8(a4, a5, 0xCuLL);
  v20 = a5;
  v20.i32[3] = *(v17 + 4 * (v13 + 4));
  v21 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v20, a9), vandq_s8(v19, a8)), 1uLL), *(v18 + 1588));
  v19.i32[0] = *(v16 + 4 * (*(v18 + 4) & ((v14 ^ (a3 - 2)) * a1 - 477)));
  v19.i32[1] = *(v16 + 4 * (*(v18 + 8) & 1));
  v19.i32[2] = *(v16 + 4 * (*(v18 + 12) & 1));
  v19.i32[3] = *(v16 + 4 * (v20.i8[12] & 1));
  *v18 = veorq_s8(vaddq_s32(vsubq_s32(v21, vandq_s8(vaddq_s32(v21, v21), a10)), a11), v19);
  return (*(v15 + 8 * (((v13 == 220) * a13) ^ (a2 + v14 + 607))))();
}

uint64_t sub_100010A58@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + 3 * (v3 ^ 0x207u);
  *(a1 + v5 - 1153) = *(v1 + v5 - 1153) - ((2 * *(v1 + v5 - 1153)) & 0x40) + 32;
  return (*(v4 + 8 * ((22 * (v5 == 1153)) ^ v3)))();
}

uint64_t sub_100010E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v46 = *(&a29 + v41 + 72);
  v47 = ((2 * v41) & 0xBBA7D7F0) + (v41 ^ 0xDDD3EBFB) + v42;
  *(v44 + v47) = v46 ^ 0xBC;
  *(v44 + v47 + 1) = (((v43 + 16) | 0x14) ^ BYTE1(v46) ^ 0xF7) - ((2 * (((v43 + 16) | 0x14) ^ BYTE1(v46) ^ 0xF7)) & 0x40) + 32;
  *(v44 + v47 + 2) = (BYTE2(v46) ^ 0x8E) + (~(v46 >> 15) | 0xBF) + 33;
  *(v44 + v47 + 3) = (HIBYTE(v46) ^ 0xCE) - ((v46 >> 23) & 0x40) + 32;
  return (*(v45 + 8 * ((226 * (v41 + 4 < a41)) ^ v43)))();
}

uint64_t sub_100010F6C(uint64_t a1, int a2)
{
  v6 = ~v4 + v3;
  v7 = __CFADD__(v2, v6);
  v8 = HIDWORD(v6);
  v10 = v7 || v8 != 0;
  return (*(v5 + 8 * ((28 * ((v10 ^ (((a2 + 87) | 0x90) - 122)) & 1)) ^ a2)))();
}

uint64_t sub_100010FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, int a14, unsigned int a15, int a16, uint64_t a17, char *a18)
{
  v22 = 1785193651 * ((2 * (&a13 & 0x5FC617B0) - &a13 + 540665928) ^ 0xD6184C64);
  a16 = v21 - v22 - 2013068351;
  a14 = v22 ^ 0x1ABDC7E6;
  a15 = v22 - 929753733;
  a17 = a10;
  a18 = &a11;
  v23 = (*(v18 + 8 * (v21 ^ 0xDE6)))(&a13);
  return (*(v18 + 8 * ((121 * (a13 != (((v21 ^ (v20 + 3066)) - v20 - 1294) ^ (v19 + 87)))) ^ v21)))(v23);
}

uint64_t sub_1000111E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, void *a27, int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v39 = (v34 - 1901);
  v40 = 4 * (v36 - v38);
  v41 = *(v35 + v40);
  v42 = -976034857 * ((*(*a27 + (*a28 & 0xFFFFFFFF91EE7F34)) ^ (a32 + v40)) & ((v34 - 941) ^ 0x7FFFFC3C));
  v43 = v42 ^ HIWORD(v42);
  v44 = -976034857 * v43;
  *(v35 + v40) = *(a32 + v40) ^ v39 ^ 0x54BB512C ^ (v41 + 1421562156 - ((2 * v41) & 0xA976A25C) + 2) ^ ((-((~v39 + v36) ^ (v33 - v39)) | (~v39 + v36)) >> 63) ^ *(*(&off_1001252D0 + v34 - 1701) + HIBYTE(v44) - 1) ^ *(*(&off_1001252D0 + a26) + HIBYTE(v44)) ^ *(*(&off_1001252D0 + a25) + ((-976034857 * v43) >> 24) + 3) ^ (-472449024 * v43) ^ v44 ^ (-471850983 * HIBYTE(v44));
  return (*(v37 + 8 * ((1926 * (v32 - 1 == ((v34 - 941) ^ 0x4B3) - 1904)) ^ (v34 - 941))))();
}

uint64_t sub_100011334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, char *a18, unsigned int a19)
{
  a19 = (v20 - 534) ^ (843532609 * ((2112609918 - (&a16 | 0x7DEBDE7E) + (&a16 | 0x82142181)) ^ 0xDE597504));
  a18 = &a12;
  a16 = a10;
  (*(v19 + 8 * (v20 + 1795)))(&a16);
  a19 = (v20 - 534) ^ (843532609 * ((-1021945726 - (&a16 | 0xC3165882) + (&a16 | 0x3CE9A77D)) ^ 0x60A4F3F8));
  a18 = &a15;
  a16 = a10;
  (*(v19 + 8 * (v20 ^ 0x905)))(&a16);
  a17 = a10;
  LODWORD(a16) = v20 + 843532609 * ((&a16 & 0x4A3C31D0 | ~(&a16 | 0x4A3C31D0)) ^ 0xE98E9AAA) - 688;
  v21 = (*(v19 + 8 * (v20 + 1803)))(&a16);
  return (*(v19 + 8 * (((a18 != 1958853845) * (((v20 + 336798762) & 0xEBECDF7D) + 76)) ^ v20)))(v21);
}

uint64_t sub_1000114A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v5 - 29) ^ 0xA2BEE586) - v4;
  if ((v2 + v3 - 1) < 0x7FFFFFFF)
  {
    v6 = v4;
  }

  *(a2 + 4) = v6;
  *(result + 24) = 33136162;
  return result;
}

void sub_1000114FC()
{
  v3 = (*(v1 + 8 * (v0 + 1012)))(v2 + 16, 0);
  v4 = *(v2 + 16);
  *(v2 + 4) = *(v2 + 24);
  *(v2 + 8) = v4;
  *(v2 + 12) = (*(v1 + 8 * (v0 + 913)))(v3);
  *v2 = (*(v1 + 8 * (v0 + 913)))();
  JUMPOUT(0x100011568);
}

uint64_t sub_100011690@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v59 = STACK[0x3B8];
  v60 = LODWORD(STACK[0x37C]) ^ 0x569DFC62;
  v61 = (v56 - 1388579162) & (2 * LODWORD(STACK[0x37C]));
  v62 = 1504884919 * ((v57 + 1931560777 - 2 * ((v57 - 192) & 0x73214809)) ^ 0x88E2FF12);
  *(v57 - 144) = a14;
  *(v57 - 192) = v60 - v62 - 527362 + v61;
  *(v57 - 184) = a1;
  *(v57 - 176) = a15;
  *(v57 - 160) = v59;
  *(v57 - 164) = (v55 ^ 0xF5FFFBC3) - v62 + 2 * v55 + 2144730495;
  *(v57 - 152) = (v56 + 1421511971) ^ v62;
  v63 = (*(v58 + 8 * (v56 | 0x8C1)))(v57 - 192);
  v64 = *(v57 - 168);
  LODWORD(STACK[0x22C]) = v64;
  return (*(a55 + 8 * ((2570 * (v64 == 1958853845)) ^ v56)))(v63);
}

uint64_t sub_1000117A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, int a26, char a27, uint64_t a28, int a29, char a30, __int16 a31, char a32)
{
  v35 = 435584651 * ((2 * ((v34 - 160) & 0x7511B830) - (v34 - 160) + 183388108) ^ 0x67DC5D9A);
  *(v34 - 148) = v35 + v32 + 668;
  *(v34 - 112) = &a24;
  *(v34 - 120) = &a32;
  *(v34 - 160) = &a30;
  *(v34 - 136) = &a27;
  *(v34 - 144) = a16;
  *(v34 - 128) = (a5 - 604722695) ^ v35;
  v36 = (*(v33 + 8 * (v32 ^ 0xA78)))(v34 - 160);
  return (*(v33 + 8 * (((*(v34 - 152) != 1958853845) * (((v32 - 352) | 0x300) - 537)) ^ v32)))(v36, 104198260, 3079665501, 1912886423);
}

uint64_t sub_10001193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a15 = &a10;
  a13 = a11;
  a16 = ((v18 ^ 0xA72) - 1712) ^ (843532609 * (&a13 ^ 0x5C4D5485));
  (*(v16 + 8 * ((v18 ^ 0xA72) + 617)))(&a13);
  LODWORD(a13) = (v18 ^ 0xA72) + 843532609 * ((2 * (&a13 & 0x602B3AD0) - &a13 + 534037807) ^ 0x439991AA) - 1866;
  a14 = a11;
  v19 = (*(v16 + 8 * ((v18 ^ 0xA72) + 625)))(&a13);
  return (*(v16 + 8 * (((a15 == v17) * ((((v18 ^ 0xA72) - 1555) | 1) - 366)) ^ v18 ^ 0xA72)))(v19);
}

void sub_100011A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = 210068311 * ((~((v63 - 192) | 0x6C38C707) + ((v63 - 192) & 0x6C38C707)) ^ 0xC4A8A22F);
  *(v63 - 192) = STACK[0x458];
  *(v63 - 176) = (v62 - 562358879) ^ v65;
  *(v63 - 184) = v65 ^ 0x99739F6E;
  (*(v64 + 8 * (v62 ^ 0xADE)))(v63 - 192);
  STACK[0x258] = *(a62 + 8 * v62);
  JUMPOUT(0x10001C4FCLL);
}

uint64_t sub_100011B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v18 = a16 - 1365209361;
  if (a16 - 1365209361 < 0)
  {
    v18 = 1365209361 - a16;
  }

  return (*(v17 + 8 * ((2667 * (((v18 ^ 0xF9DF797D) + ((v18 << (v16 ^ 0xC6)) & 0xF3BEF2FA) + 1468004244 + (((v16 ^ 0xE) + 1463) ^ 0xAEA0886E)) > ((((v16 ^ 0xE) - 69) | 0x43) ^ 0xFFFFFF38))) ^ v16 ^ 0xE)))();
}

uint64_t sub_100011C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, char *a20, char *a21, uint64_t a22, int a23, int a24)
{
  a22 = a14;
  a20 = &a17;
  a21 = &a19;
  a24 = v24 - ((&a20 + 541762344 - 2 * (&a20 & 0x204AA328)) ^ 0xC6E20F38) * v25 + 361;
  v27 = (*(v26 + 8 * (v24 ^ 0x8DF)))(&a20);
  return (*(v26 + 8 * ((((v24 + 858008889) & 0x1D4BD ^ 0x104) * (a10 == 127453480)) | v24)))(v27);
}

_DWORD *sub_100011D50@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if ((v2 + v4 - 1) >= 0x7FFFFFFF)
  {
    v6 = ((v5 - 379844910) & 0x16A3FFFF ^ 0xA2BEE5F4) - v3;
  }

  else
  {
    v6 = v3;
  }

  *(a2 + 4) = v6;
  *result = -2051907849;
  return result;
}

uint64_t sub_100011DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  HIDWORD(a19) = v24;
  (*(v25 + 8 * a13))(a14 + 16, 0x100004077774924);
  v27 = (*(v25 + 8 * SHIDWORD(a12)))();
  *v23 = v27;
  v23[1] = 1812433253 * (v27 ^ (v27 >> 30)) + 1;
  return (*(v25 + 8 * SHIDWORD(a13)))(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, v26, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_100011F34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 + v2 - 1 - 31);
  v6 = a2 + v2 - 1;
  *(v6 - 15) = *(a1 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  LODWORD(v6) = ((v3 + 380) ^ 0xA31) != (v2 & 0xFFFFFFE0);
  return (*(v4 + 8 * (((8 * v6) | (v6 << 6)) ^ (v3 - 1239))))();
}

uint64_t sub_100011FF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_10001200C@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v8 = a1 - 1;
  *(a3 + v8) = *(v3 + v8) ^ *(v4 + (v8 & 0xF)) ^ *(v6 + (v8 & 0xF)) ^ (-101 * (v8 & 0xF)) ^ *((v8 & 0xF) + v5 + 1) ^ 0x20;
  return (*(v7 + 8 * (((v8 == 0) * (a2 - 2293)) ^ (a2 - 600))))();
}

void sub_10001206C()
{
  v0 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EAF8) ^ 8)) ^ byte_1000E7B70[byte_1000E4460[(11 * ((qword_10013EA10 + dword_10013EAF8) ^ 8))] ^ 0x3E]) - 135);
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + (byte_1000EC824[(byte_1000E7E78[(11 * ((qword_10013EA10 - v1) ^ 8)) - 8] ^ 0xA3) - 4] ^ (11 * ((qword_10013EA10 - v1) ^ 8))) + 11);
  v3 = &v5[*v2 ^ v1];
  *(v0 - 4) = 1405565963 * v3 - 0x49B2A3DDF3C140A8;
  *v2 = 1405565963 * (v3 ^ 0xBCA8FC1BD5CAFD08);
  v6[1] = 1504884919 * ((-1784989743 - (v6 | 0x959B37D1) + (v6 | 0x6A64C82E)) ^ 0x91A77F35) + 1212455568;
  LOBYTE(v2) = 11 * ((*v2 - *(v0 - 4)) ^ 8);
  v4 = *(&off_1001252D0 + ((11 * (dword_10013EAF8 ^ 8 ^ qword_10013EA10)) ^ byte_1000F09C0[byte_1000EC520[(11 * (dword_10013EAF8 ^ 8 ^ qword_10013EA10))] ^ 0x3A]) - 34) - 8;
  (*&v4[8 * (byte_1000E456C[(byte_1000F0AC4[v2 - 4] ^ 0x30) - 12] ^ v2) + 21088])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000122A0@<X0>(int a1@<W8>)
{
  v5 = ((&v7 & 0xEA3A9CB8 | ~(&v7 | 0xEA3A9CB8)) ^ 0xBE7EE12) * a1;
  v7 = v5 ^ 0xD053E786;
  v8 = 0;
  v11 = v3;
  v9 = ((v1 & 0x331B1F6F) - 876) ^ v5;
  v10 = v5 ^ 0x61F090CD;
  result = (*(v4 + 8 * (v1 & 0x331B1F6F ^ 0xFA9u)))(&v7);
  *v2 = *(v3 + 24);
  return result;
}

uint64_t sub_1000123B8(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 16448;
  a1.n128_u8[2] = 64;
  a1.n128_u8[3] = 64;
  a1.n128_u8[4] = 64;
  a1.n128_u8[5] = 64;
  a1.n128_u8[6] = 64;
  a1.n128_u8[7] = 64;
  a2.n128_u16[0] = 8224;
  a2.n128_u8[2] = 32;
  a2.n128_u8[3] = 32;
  a2.n128_u8[4] = 32;
  a2.n128_u8[5] = 32;
  a2.n128_u8[6] = 32;
  a2.n128_u8[7] = 32;
  return sub_1000123E0(a1, a2);
}

uint64_t sub_100012584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, char a18, int a19, int a20, char a21, char *a22, int a23, int a24, uint64_t a25, int *a26, int a27, char *a28, char *a29)
{
  a17 = 1429511819;
  v31 = *(a2 + 8);
  v32 = *(a2 + 4) - 604722695;
  v33 = 435584651 * ((&a22 - 636790733 - 2 * (&a22 & 0xDA0B5833)) ^ 0xB7394265);
  a24 = v33 + v30 + 674;
  a27 = v32 ^ v33;
  a25 = v31;
  a26 = &a17;
  a28 = &a16;
  a29 = &a18;
  a22 = &a21;
  v35 = (*(v29 + 8 * (v30 ^ 0xA62)))(&a22);
  return (*(v29 + 8 * (((a23 == 1958853845) * (((v30 - 1396133299) & 0x53374D7D) + 1777)) ^ v30)))(v35, a2);
}

uint64_t sub_100012678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  (*(v29 + 8 * (v28 ^ (v28 - 1580))))(a17 - 0x72BFFAB7CF7FA78FLL, 0x100004077774924);
  v31 = (*(v29 + 8 * (v28 ^ (v28 - 1690))))();
  *v30 = v31;
  v30[1] = 1812433253 * (v31 ^ (v31 >> 30)) + 1;
  return (*(v29 + 8 * a16))(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1000127BC(double a1, double a2, double a3, double a4, double a5, __n128 a6)
{
  v9[-1] = a6;
  *v9 = a6;
  return (*(v10 + 8 * (((v8 == 0) * v7) ^ v6)))();
}

uint64_t sub_100012800()
{
  v5 = *(*(v4 + 8 * (v0 ^ 0xABD)) - 4) + 1480048924;
  v6 = *(v1 + 8) + v3 + 1251506774;
  v7 = v5 < 0xB7DAC5FF;
  v8 = v5 > v6;
  if (v6 < ((v0 - 995) ^ 0xB7DAC3A3) != v7)
  {
    v8 = v7;
  }

  return (*(v2 + 8 * ((!v8 * (((v0 - 1534) | 0x134) ^ 0x5D3)) ^ v0)))();
}

uint64_t sub_100012898()
{
  v6 = v1 - 1;
  *(*(v4 + 8) + 4 * (v2 + v6)) = *(*(v4 + 8) + 4 * v6 - 4);
  return (*(v5 + 8 * (((v6 > (v0 + 2130) - 2715) * v3) ^ v0)))();
}

uint64_t sub_1000128B0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v12 = (v11 + 4 * v9);
  v13 = HIDWORD(v5) + ((v3 - 1607) ^ (v2 - 567) ^ *v12) + HIDWORD(v4) + v7 * (*(v10 + 4 * v9) ^ v2);
  *(v12 - 1) = v13 + v2 - (a1 & (2 * v13));
  return (*(v8 + 8 * (((v9 + 1 == a2) * v6) ^ v3)))();
}

uint64_t sub_100012B50@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 16) = 1958811658;
  return result;
}

uint64_t sub_100012BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v21 - 120) = &a15;
  *(v21 - 112) = (v17 - 767) ^ (((((v21 - 128) | 0x33AFA7D4) - (v21 - 128) + ((v21 - 128) & 0xCC505828)) ^ 0x78C46BAA) * v19);
  *(v21 - 104) = &a17;
  v22 = (*(v18 + 8 * (v17 + 786)))(v21 - 128);
  return (*(v18 + 8 * (((*(v21 - 128) > v20) * (((v17 - 294) | 0x102) + 1417)) ^ v17)))(v22);
}

uint64_t sub_100012C44()
{
  v4 = 143681137 * ((((v3 - 192) | 0xE500F14F) - ((v3 - 192) & 0xE500F14F)) ^ 0x3A85D5F);
  *(v3 - 184) = &STACK[0x22C];
  *(v3 - 192) = (v2 + v1 - 976942961) ^ v4;
  *(v3 - 188) = v4 + v1 - 172;
  v5 = (*(v0 + 8 * (v1 + 1719)))(v3 - 192);
  return sub_100058710(v5);
}

uint64_t sub_100012D14@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{
  *&v19 = 0x2020202020202020;
  *(&v19 + 1) = 0x2020202020202020;
  v20 = &a16 + a1;
  *v20 = v19;
  *(v20 + 1) = v19;
  return (*(v18 + 8 * ((2238 * ((((2 * (v17 ^ 0xADA) + 147) | 0x82Cu) ^ 0xA1DLL) == (v16 & 0xFFFFFFFFFFFFFFE0))) ^ (2 * (v17 ^ 0xADA)))))();
}

void sub_100012DAC()
{
  v0 = *(&off_1001252D0 + ((11 * (dword_10013EB08 ^ 8 ^ qword_10013EA10)) ^ byte_1000F09C0[byte_1000EC520[(11 * (dword_10013EB08 ^ 8 ^ qword_10013EA10))] ^ 0x3A]) - 141);
  v1 = 11 * (*v0 ^ qword_10013EA10 ^ 8);
  v2 = *(&off_1001252D0 + (byte_1000EC824[(byte_1000E7E78[v1 - 8] ^ 0x60) - 4] ^ v1) - 80);
  v3 = 1405565963 * (&v5[*v2 - *v0] ^ 0xBCA8FC1BD5CAFD08);
  *v0 = v3;
  *v2 = v3;
  v6[1] = 1504884919 * ((v6 & 0xF2F48A9E | ~(v6 | 0xF2F48A9E)) ^ 0xF6C8C27A) + 1212455568;
  LOBYTE(v2) = 11 * (*v0 ^ 8 ^ *v2);
  v4 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EB08) ^ 8)) ^ byte_1000EC620[byte_1000E7C70[(11 * ((qword_10013EA10 + dword_10013EB08) ^ 8))] ^ 0x9E]) + 2) - 8;
  (*&v4[8 * (byte_1000EC62C[(byte_1000E7C7C[v2 - 12] ^ 0x27) - 12] ^ v2) + 20496])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000130C8(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  v13 = v7 + 4;
  a6.i64[0] = *(v10 + 4);
  a6.i32[2] = *(v12 + 4 * (v13 + v9));
  v14 = vextq_s8(a1, a6, 0xCuLL);
  v15 = a6;
  v15.i32[3] = *(v10 + 16);
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a4), vandq_s8(v14, a2)), 1uLL), *(v10 - 908));
  v14.i32[0] = *(v6 + 4 * (*(v10 + 4) & 1));
  v14.i32[1] = *(v6 + 4 * (*(v10 + 8) & 1));
  v14.i32[2] = *(v6 + 4 * (*(v12 + 4 * (v13 + v9)) & 1));
  v14.i32[3] = *(v6 + 4 * (v15.i8[12] & 1));
  *v10 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a3)), a5), v14);
  return (*(v11 + 8 * ((8 * (v13 != 392)) | (32 * (v13 != 392)) | v8)))();
}

void sub_100013118(uint64_t a1)
{
  v1 = *(a1 + 24) - 1785193651 * ((~a1 & 0xCB380751 | a1 & 0x34C7F8AE) ^ 0x3D19A37D);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100013214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57, unint64_t a58, unint64_t a59, unint64_t a60)
{
  LODWORD(STACK[0x27C]) = a54;
  STACK[0x280] = a60;
  STACK[0x368] = a59;
  STACK[0x380] = a58;
  STACK[0x288] = a57;
  LODWORD(STACK[0x244]) = 2;
  STACK[0x2E8] = 0;
  LODWORD(STACK[0x214]) = 0;
  return (*(v61 + 8 * ((((((v60 & 2) == 0) ^ (5 * (a9 ^ 0x82))) & 1) * (a9 - 554)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_100013280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _BYTE *a31, _BYTE *a32, _BYTE *a33, uint64_t a34)
{
  if (v34 == -196561708 || v34 == 1183294595 || v34 == -10790136)
  {
    v39 = (v34 ^ 0x3E8D1199) - ((2 * (v34 ^ 0x3E8D1199)) & 0x5385A5E6) - 1446849805;
    v40 = *(v38 + 8 * (v36 - 269));
    LOBYTE(STACK[0x4E0]) = *a33 ^ HIBYTE(v39) ^ a32[5] ^ a31[1] ^ 0xA9;
    LOBYTE(STACK[0x4E1]) = BYTE2(v39) ^ 0x63 ^ a33[1] ^ a32[6] ^ a31[2] ^ 0xC2;
    LOBYTE(STACK[0x4E2]) = BYTE1(v39) ^ 0xC6 ^ a33[2] ^ a32[7] ^ a31[3] ^ 0xD2;
    LOBYTE(STACK[0x4E3]) = v39 ^ 0x29 ^ a33[3] ^ a32[8] ^ a31[4] ^ 0xF3;
    return v40();
  }

  else
  {
    v42 = *(v37 + 8 * (v36 - 248));
    return (*(v38 + 8 * ((v36 + 2038) | (8 * ((v35 & 8) == 0)))))(a1, a2, a3, a4, a5, a6, a7, 1958853845, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v42 + 32, v42 + 16, v42, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, v42 - 4);
  }
}

void sub_100013468(uint64_t a1)
{
  v1 = *(a1 + 12) + 742307843 * (a1 ^ 0x1E228D55);
  v2 = *a1;
  v4 = v1 + 143681137 * ((&v4 - 674991419 - 2 * (&v4 & 0xD7C472C5)) ^ 0x316CDED5) + 296;
  v5 = v2;
  v3 = *(&off_1001252D0 + v1 - 326) - 8;
  (*&v3[8 * (v1 ^ 0x8F1)])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10001355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, unsigned int a13, char *a14, int a15)
{
  a13 = (v17 + 558) ^ (50899313 * (((&a13 | 0x7AC1B219) - &a13 + (&a13 & 0x853E4DE0)) ^ 0x500A9863));
  a14 = &a11;
  v18 = (*(v15 + 8 * (v17 ^ 0xFB5)))(&a13);
  return (*(v15 + 8 * ((3075 * (a15 == v16 + ((v17 - 293) | 0x100) - 1159 - 178)) ^ v17)))(v18);
}

uint64_t sub_1000135FC@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v4 = (a1 ^ 0x4144E1E1) + v2;
  v5 = *(a2 + 4) + 1095033893;
  v6 = (v4 < 312759606) ^ (v5 < 312759606);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 312759606;
  }

  return (*(v3 + 8 * ((v7 * (a1 ^ 0x9F0)) ^ a1)))();
}

uint64_t sub_1000136B4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, unsigned int *a17)
{
  *a16 = 1;
  v19 = *a17;
  *(v18 - 176) = (a1 + 1699921094) ^ a13;
  *(v18 - 168) = v19 + a13;
  *(v18 - 152) = a12;
  v20 = a1 + 1216549786 - a13;
  *(v18 - 144) = v20;
  *(v18 - 140) = v20 + 8;
  *(v18 - 160) = ((a1 + 1216549786) ^ 0x99) - a13;
  *(v18 - 156) = a13 ^ 1;
  v21 = (*(v17 + 8 * (a1 ^ 0xF1D)))(v18 - 176);
  return (*(v17 + 8 * *(v18 - 172)))(v21);
}

uint64_t sub_100013750(uint64_t result)
{
  **(result + 8) = 0;
  *result = 216834807;
  return result;
}

uint64_t sub_100013768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v20 = 1361651671 * ((((2 * (v19 - 160)) | 0xBCC1531E) - (v19 - 160) - 1583393167) ^ 0x150B65F1);
  *(v19 - 152) = (v18 + 629) ^ v20;
  *(v19 - 148) = a17 - v20;
  *(v19 - 160) = a2;
  v21 = (*(v17 + 8 * (v18 | 0xA84)))(v19 - 160);
  v22 = ((STACK[0x2E0] & 0x3F ^ 0x1F6CDC53) + 1567788400) ^ ((STACK[0x2E0] & 0x3F ^ 0x158D91E3) + 1469300960) ^ (29 * (v18 ^ 0x23) + ((v18 - 39) ^ 0x48FF1AAB) + (STACK[0x2E0] & 0x3F ^ 0xAE14DB0));
  *(&STACK[0x29C] + (v22 - 1109283133)) = -96;
  return (*(v17 + 8 * ((759 * ((v22 - 1109283189) < 0xFFFFFFC8)) ^ v18)))(v21);
}

void sub_1000138E0(_DWORD *a1)
{
  v1 = *a1 - 742307843 * (((a1 | 0xEE6337BA) - (a1 & 0xEE6337BA)) ^ 0xF041BAEF);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100013D40(uint64_t a1, signed int a2, uint64_t a3, int a4)
{
  if (v4 <= a2)
  {
    v4 = a2;
  }

  return (*(v5 + 8 * (((v4 > ((a4 + 1259506811) & 0xB4ED6FED) + 2147482681) * (((a4 - 988) | 0x45) - 914)) ^ a4)))();
}

void sub_100013DA4(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 1029127688 - 2 * (a1 & 0x3D573E08)) ^ 0x179C1472));
  v2 = *(&off_1001252D0 + (v1 - 1735)) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0xD50)])(32, 0x101004023FF3BD5) != 0) * ((v1 + 13) ^ 0x787)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

void sub_100013EA8(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1361651671 * ((a1 - 661917999 - 2 * (a1 & 0xD88BEED1)) ^ 0x93E022AF));
  v2 = *(a1 + 32);
  v5 = 0;
  v8 = v1 - 1224079066 - 1785193651 * ((v6 & 0x2BAF599 | ~(v6 | 0x2BAF599)) ^ 0xB64AE4A);
  v7 = &v5;
  v3 = *(&off_1001252D0 + (v1 ^ 0x79C)) - 8;
  (*&v3[8 * v1 + 7416])(v6);
  v4 = 0;
  v7 = &v4;
  v8 = v1 - 1224079066 - 1785193651 * (v6 ^ 0xF621A42C);
  (*&v3[8 * (v1 ^ 0xDA1)])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100014004()
{
  v2 = STACK[0x33C];
  LODWORD(STACK[0x464]) = LODWORD(STACK[0x33C]) + 64;
  return (*(v1 + 8 * ((((v2 + 64) <= LODWORD(STACK[0x49C])) * ((((v0 ^ 0xB45) + 288210154) & 0xEED23BBF) - 724)) ^ v0 ^ 0xB45)))();
}

uint64_t sub_100014054@<X0>(uint64_t a1@<X8>)
{
  *(*(a1 + 8) + 4 * (v2 + v4 + v6 - 321)) = v5 ^ v3;
  *(a1 + 4) = v4 + 1;
  v7 = v4 + 1 + v2;
  if (v7 < 0)
  {
    v7 = -v7;
  }

  return (*(v1 + 8 * ((943 * (((v7 ^ 0xDFFF7D51) + 1902113728 + ((v7 << (v6 - 64)) & 0xBFFEFAA2) + ((v6 - 1740462077) & 0x67BD57FF ^ 0x685 ^ (v2 - 1665) ^ (((v6 - 1740462077) & 0x67BD57FF) - 3))) >= 0)) ^ (v6 - 1740462077) & 0x67BD57FF)))();
}

uint64_t sub_100014104(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 16448;
  a1.n128_u8[2] = 64;
  a1.n128_u8[3] = 64;
  a1.n128_u8[4] = 64;
  a1.n128_u8[5] = 64;
  a1.n128_u8[6] = 64;
  a1.n128_u8[7] = 64;
  a2.n128_u16[0] = 8224;
  a2.n128_u8[2] = 32;
  a2.n128_u8[3] = 32;
  a2.n128_u8[4] = 32;
  a2.n128_u8[5] = 32;
  a2.n128_u8[6] = 32;
  a2.n128_u8[7] = 32;
  return sub_100014128(a1, a2);
}

void sub_100014168(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) != 1365209361 && *(*(a1 + 8) + 4) != 1365209361;
  v1 = *a1 + 435584651 * ((a1 & 0x3BC99B7 | ~(a1 | 0x3BC99B7)) ^ 0x91717C1E);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100014260@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{
  v26 = a2 < v22;
  v27 = *(v24 + v21);
  v28 = v21 + 1;
  *(&a19 + v19) = ((v25 + 59) & 0x7F ^ 0x46) + v27 - ((2 * v27) & 0x40);
  if (v26 == v28 > a1)
  {
    v26 = v28 + v22 < a2;
  }

  return (*(v23 + 8 * ((v26 * v20) ^ v25)))();
}

uint64_t sub_100014324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 120) = v18 + 675097751 * ((v19 - 128) ^ 0x43402596) - 1260;
  *(v19 - 112) = a12;
  *(v19 - 128) = &a17;
  v20 = (*(v17 + 8 * (v18 + 1089)))(v19 - 128);
  return sub_10001436C(v20);
}

uint64_t sub_1000143DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  v65 = *(v63 + v61 * v62 + 36);
  v67 = (v65 - 879191430 > v60 + 1422303521 || v65 - 879191430 < a60) && v65 != a7;
  return (*(v64 + 8 * ((23 * v67) ^ v60)))();
}

uint64_t sub_10001449C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *(a24 + 1560) = *STACK[0x270];
  *(a24 + 1552) = *STACK[0x2C8];
  v46 = STACK[0x208];
  *(*STACK[0x208] + 488) = *(a45 + 8);
  *(*v46 + 480) = *a45;
  v47 = (a43 + a34);
  *v47 = (&STACK[0x370] ^ 0xBA) * (&STACK[0x370] + 17);
  *(v47 - 1) = (&STACK[0x370] ^ 0xBB) * (&STACK[0x370] + 18);
  return (*(v45 + 8 * ((366 * ((a42 ^ 0xF80) == 1811)) ^ a42)))(&off_1001252D0, 3613916661);
}

uint64_t sub_10001459C@<X0>(int a1@<W0>, char a2@<W2>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  v17 = *(v7 + v8 + v13);
  v18 = (*(v6 + 4 * (*(v15 + v8 + v13) - 45)) ^ v12) + (v9 ^ v10) + *(v5 + 4 * (v8 + v13)) + (a5 & (a3 + 1368186647) ^ (a1 ^ 0x9F02865A) & (a5 ^ v10) ^ 0x408C6184 | a5 & 0xD07F4FA ^ 0x1019462 ^ (a5 ^ 0x31719C63) & (a4 ^ 0xC3899766));
  v19 = ((v17 - 93) ^ 0x33) & (2 * ((v17 - 93) & 0x3B)) ^ (v17 - 93) & 0x3B;
  v20 = ((2 * ((v17 - 93) ^ 0x45)) ^ 0xFC) & ((v17 - 93) ^ 0x45) ^ (2 * ((v17 - 93) ^ 0x45)) & 0x7E;
  v21 = ((4 * v20) & 0x78 ^ 0x76 ^ ((4 * v20) ^ 0xF8) & v20) & (16 * ((v20 ^ 0x7F) & (4 * v19) ^ v19)) ^ (v20 ^ 0x7F) & (4 * v19) ^ v19;
  v22 = v18 ^ 0x2F068AC3 ^ ((v18 ^ 0xE92456E2) + 970793951) ^ ((v18 ^ 0x817FC5A2) + 1367781535) ^ ((v18 ^ 0xB9A2D77D) + 1767612994) ^ ((v18 ^ 0xFEFFCEFE) + 772193219);
  v23 = (((a1 ^ 0x8B65A610) + 1956272624) ^ ((a1 ^ 0x56CFC46B) - 1456456811) ^ ((a1 ^ 0x132401E7) - 321126887)) - 495576091 + ((v22 << (((v17 - 93) ^ (2 * v21) ^ 0x18) & 0x1C) << (((v17 - 93) ^ (2 * v21) ^ 2) & 3 ^ 1)) | (v22 >> (a2 - v17)));
  v24 = (2 * (v23 & 0xEC1847B7 ^ 0xA894B509)) & 0x88108508 ^ v23 & 0xEC1847B7 ^ 0xA894B509 ^ ((2 * (v23 & 0xEC1847B7 ^ 0xA894B509)) ^ 0x51296A12) & (v23 ^ 0x448CF2BE);
  v25 = (2 * (v23 ^ 0x448CF2BE)) & 0xA894B508 ^ 0xA8949509 ^ ((2 * (v23 ^ 0x448CF2BE)) ^ 0x51296A12) & (v23 ^ 0x448CF2BE);
  v26 = v24 ^ 0xA0109400 ^ (4 * v24) & 0xA894B508 ^ ((4 * v24) ^ 0xA252D424) & v25;
  v27 = ((4 * v25) ^ 0xA252D424) & v25 ^ (4 * v25) & 0xA894B508;
  v28 = v26 ^ v27 & 0xA0314804 ^ ((16 * v26) ^ 0x297A1894) & (v27 ^ 0xA0109409);
  v29 = ((16 * v27) ^ 0xA1380804) & (v27 ^ 0xA0109409) ^ v27 & 0xA0314804;
  v30 = v28 ^ v29 & 0xA0314804 ^ ((v28 << 8) ^ 0x24844104) & (v29 ^ 0xA0100009);
  v31 = ((v29 << 8) ^ 0xB0314804) & (v29 ^ 0xA0100009) ^ v29 & 0xA0314804;
  return (*(v11 + 8 * ((4011 * (v8 + 1 == v14 + 16)) ^ a3)))(v23 ^ (2 * (v30 ^ v31 & 0x20314804 ^ ((v30 << 16) ^ 0x15384804) & (v31 ^ 0x8840000) ^ ((v30 << 16) ^ 0x15384804) & 0x28940000)) ^ 0x339F4E39, 2635908920);
}

uint64_t sub_100014990@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char *a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v26 = a1 + 2044;
  v27 = 1504884919 * ((((2 * (v25 - 144)) | 0x754AC70A) - (v25 - 144) - 983917445) ^ 0xC166D49E);
  *(v25 - 120) = a1 - v27 + 1457;
  *(v25 - 136) = v22;
  *(v25 - 128) = &a7;
  *(v25 - 140) = v20 - v27 + 619052051 + a1 + 2044;
  (*(v19 + 8 * (a1 + 2226)))(v25 - 144);
  a11 = &a16;
  a12 = &a14;
  *(v25 - 144) = (v26 - 1556) ^ (1361651671 * ((v25 + 1516169444 - 2 * ((v25 - 144) & 0x5A5EE974)) ^ 0x1135250A));
  *(v25 - 136) = v21;
  *(v25 - 128) = &a11;
  (*(v19 + 8 * (v26 + 240)))(v25 - 144);
  *(v25 - 136) = v21;
  *(v25 - 128) = v24;
  *(v25 - 112) = &a11;
  *(v25 - 104) = &a7;
  *(v25 - 144) = &a19;
  *(v25 - 120) = v26 - 742307843 * ((((v25 - 144) | 0x784F66BB) - (v25 - 144) + ((v25 - 144) & 0x87B09940)) ^ 0x666DEBEE) - 1533;
  v28 = (*(v19 + 8 * (v26 + 291)))(v25 - 144);
  return (*(v19 + 8 * (((((v23 == 0) ^ (v26 + 18)) & 1) * (((v26 - 2593) | 0x632) - 1583)) ^ v26)))(v28);
}

uint64_t sub_100014B98()
{
  v3 = *(v0 + 16) - 1352406169;
  v4 = *(v0 + 12) - 1542958600;
  v5 = (v3 < 0xEEF4C4E6) ^ (v4 < 0xEEF4C4E6);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0xEEF4C4E6;
  }

  return (*(v2 + 8 * ((1828 * v6) ^ v1)))();
}

void sub_100014C00(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 4) - 1912886423) > 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100014C5C@<X0>(int a1@<W8>)
{
  *v3 = v8;
  v5 = (a1 - 1815) | 0x618;
  v10 = a1 - (&v10 ^ 0xE6A8AC10) * v4 - 1644;
  v11 = v7;
  (*(v2 + 8 * (a1 ^ 0xDE1)))(&v10);
  v11 = v9;
  v10 = v5 - ((((&v10 | 0xD35E1C74) ^ 0xFFFFFFFE) - (~&v10 | 0x2CA1E38B)) ^ 0xCA094F9B) * v4 - 1389;
  result = (*(v2 + 8 * (v5 + 1118)))(&v10);
  *(v1 + 28) = 1958853845;
  return result;
}

void sub_100014D58(uint64_t a1)
{
  v1 = *a1 + 435584651 * ((-2 - ((a1 | 0x6D70FB9C) + (~a1 | 0x928F0463))) ^ 0xFFBD1E35);
  v2 = *(*(a1 + 8) + 4);
  if (v2 - 1365209361 < 0)
  {
    v3 = 1365209361 - v2;
  }

  else
  {
    v3 = v2 - 1365209361;
  }

  v5 = *(a1 + 8);
  v6 = v1 - 742307843 * ((&v5 + 1455299364 - 2 * (&v5 & 0x56BE1B24)) ^ 0x489C9671) - 1164;
  v4 = *(&off_1001252D0 + (v1 ^ 0x652)) - 8;
  (*&v4[8 * (v1 ^ 0xD9C)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100014E8C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2D8]) = v1;
  v4 = v2 + ((a1 + 1601) | 0x20Au) + v1 - 2606 < 0x40;
  return (*(v3 + 8 * (((4 * (((a1 + 108) ^ v4) & 1)) & 0xEF | (16 * (((a1 + 108) ^ v4) & 1))) ^ a1)))();
}

uint64_t sub_100014EDC()
{
  v3 = (v1 - 1970415248) & 0x7572232B;
  STACK[0x3B8] = STACK[0x328];
  LODWORD(STACK[0x42C]) = STACK[0x37C];
  v4 = ((v3 + 992887928) & 0xC4D1B99F ^ 0xFFFFFEE5) + v0 >= ((v3 - 232) | 4u) - 540;
  return (*(v2 + 8 * (((8 * v4) | (16 * v4)) ^ v3)))();
}

void sub_100014FA0(uint64_t a1)
{
  v1 = *(a1 + 4) + 675097751 * ((a1 & 0x6A696B37 | ~(a1 | 0x6A696B37)) ^ 0xD6D6B15E);
  v2 = 742307843 * (((v4 ^ 0xBE137C1F) + 1844561658 - 2 * ((v4 ^ 0xBE137C1F) & 0x6DF1C6FA)) ^ 0xCDC037B0);
  v5 = *(a1 + 8);
  v6 = v5 + 48;
  v4[1] = v1 + v2 - 792;
  v4[2] = v2 + 1257010454;
  v3 = *(&off_1001252D0 + (v1 ^ 0x874)) - 8;
  (*&v3[8 * v1 + 5024])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000150C8()
{
  v5 = *(*(v4 + 24) + v0) - *(v3 + v0);
  v6 = (v5 ^ 0xF5EDE7DF) - 335839809 + ((2 * v5) & 0xEBDBCFBE);
  v8 = ((v2 - 1271) ^ 0xALL) + v0 == 16 || v6 != -504797794;
  return (*(v1 + 8 * ((3126 * v8) ^ v2)))();
}

uint64_t sub_10001567C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v17 - 124) = v15 - 1113 - 675097751 * ((((2 * (v17 - 128)) | 0x4D3F4DAA) - (v17 - 128) - 647997141) ^ 0x65DF8343) + 738;
  *(v17 - 120) = &a15;
  v18 = (*(v16 + 8 * (v15 + 159)))(v17 - 128);
  return (*(v16 + 8 * ((3516 * (*(v17 - 128) == v15 + 716187529 + ((v15 + 1074856188) | 0xA008000))) ^ (v15 - 1113))))(v18);
}

uint64_t sub_100015738(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v41 = (a2 - 2063129675) | 0x12009184;
  v46 = a2 + 877;
  v42 = 1361651671 * ((2 * ((v40 - 160) & 0x1F3ED3F0) - (v40 - 160) - 524211189) ^ 0xABAAE075);
  *(v40 - 160) = &a30;
  *(v40 - 152) = (a2 + 588) ^ v42;
  *(v40 - 148) = a15 - v42 - 1378660450;
  v43 = (*(v39 + 8 * (a2 + 2651)))(v40 - 160);
  v44 = ((a39 & (v46 ^ 0x3F7) ^ 0x1E5DF9E4) + 1219950117) ^ ((a39 & (v46 ^ 0x3F7) ^ (v41 + 1103581891)) - 1910241384) ^ ((a39 & (v46 ^ 0x3F7) ^ 0xC692F1B3) - 1871053196);
  *(&a30 + v44 - 1458245569) = -96;
  return (*(v39 + 8 * ((1544 * (v44 - 1458245625 < 0xFFFFFFC8)) ^ a2)))(v43);
}

uint64_t sub_1000158C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int8x16_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int8x16_t *a28)
{
  *a8 = veorq_s8(*a28, xmmword_1000F0C30);
  STACK[0x468] += 32;
  STACK[0x478] = a1;
  STACK[0x470] = a1;
  return (*(v29 + 8 * (((((v28 + 67) | 0xB) + 929) * (a8 == a1)) ^ v28)))(a1, a2, a3, a4, a5, 4294901119, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_100015AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v18 - 671) ^ (843532609 * (&a15 ^ 0x5C4D5485));
  a17 = &a12;
  a15 = a13;
  (*(v19 + 8 * (v18 + 1658)))(&a15);
  LODWORD(a15) = v18 + 843532609 * ((-1095335755 - (&a15 | 0xBEB680B5) + (&a15 | 0x41497F4A)) ^ 0x1D042BCF) - 825;
  a16 = a13;
  v21 = (*(v19 + 8 * (v18 + 1666)))(&a15);
  return (*(v19 + 8 * (((a17 == v20) * (v18 - 254)) ^ v18)))(v21);
}

uint64_t sub_100015CB0()
{
  v4 = v0 + 279788396;
  v5 = (v4 < 0x5EA639FC) ^ (v3 - 324934299 < ((v2 + 1686612068) & 0x9B7857A9 ^ 0x5EA63F5D));
  v6 = v3 - 324934299 > v4;
  if (v5)
  {
    v6 = v3 - 324934299 < ((v2 + 1686612068) & 0x9B7857A9 ^ 0x5EA63F5D);
  }

  return (*(v1 + 8 * ((v6 * (((v2 - 830726589) & 0x3183DF39) - 990)) ^ v2)))();
}

uint64_t sub_100015D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, unsigned int a20, int a21, int a22, uint64_t a23, char *a24)
{
  v28 = 1785193651 * (((&a19 | 0xB91AB90) - &a19 + (&a19 & 0xF46E5468)) ^ 0xFDB00FBC);
  a20 = v28 ^ 0x8CC711A4;
  a21 = v28 + a11 - ((a11 << ((v27 - 1) | 0x40)) & 4) - 929753734;
  a22 = v27 - v28 - 2013067950;
  a23 = a15;
  a24 = &a17;
  v29 = (*(v26 + 8 * (v27 ^ 0xF77u)))(&a19);
  return (*(v26 + 8 * (((a19 == v25) * (v24 ^ 0xE73)) ^ v27)))(v29);
}

uint64_t sub_100015E30@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v6 + 8);
  v9 = ((2 * (v8[(&_mh_execute_header + (a1 << 32)) >> (((v4 - 89) | 1) ^ 0x29u)] ^ v1)) << ~(v5 ^ 0x15)) | ((v8[a1] ^ v1) >> (v5 ^ 0x15));
  *v8 = v9 + v1 - (v2 & (2 * v9));
  return (*(v7 + 8 * ((607 * (v3 == 1)) ^ v4)))();
}

void sub_100015EBC(uint64_t a1)
{
  v1 = *(a1 + 16) - 1037613739 * ((-2 - ((a1 | 0x8BAD1AB) + (~a1 | 0xF7452E54))) ^ 0x2647032B);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10001605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 31) = (&a9 ^ 0xBA) * (&a9 + 17);
  *(v9 + 30) = (v11 ^ 0x83 ^ &a9 ^ 0xA4) * (&a9 + 18);
  return (*(v10 + 8 * v11))();
}

uint64_t sub_100016124()
{
  v4 = (v2 + 1884321214) & 0x8FAF8D6F;
  LOBYTE(STACK[0x1804]) = 44 - ((((v3 + 64) ^ 0x4C | 0x91) - ((v3 + 64) ^ 0x4C) + (((v3 + 64) ^ 0x4C) & 0x6C)) ^ 0xA3) * v1;
  *(v3 - 168) = &STACK[0x43C];
  *(v3 - 184) = &STACK[0x3F4];
  *(v3 - 192) = ((((v3 - 192) ^ 0xA8FF364C | 0x4EB3A791) - ((v3 - 192) ^ 0xA8FF364C) + (((v3 - 192) ^ 0xA8FF364C) & 0xB14C586C)) ^ 0xAD275DA3) * v1 + v4 + 732;
  v8 = v0;
  v5 = (*(v0 + 8 * (v4 + 1722)))(v3 - 192);
  v6 = *(v3 - 176);
  LODWORD(STACK[0x22C]) = v6;
  return (*(v8 + 8 * ((3563 * (v6 == ((((v4 - 1078) | 0x108) + 1820) ^ 0x74C1B4E3))) ^ v4)))(v5);
}

uint64_t sub_10001621C@<X0>(void *a1@<X0>, int a2@<W8>)
{
  v3 = a2 + 740;
  v4 = (a2 - 512) | 0x200;
  v5 = a2 - 67;
  if (a1[2])
  {
    v6 = (a1[4] | a1[1]) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v2 + 8 * ((((v5 ^ v7) & 1) * (v4 ^ 0x638)) ^ v3)))();
}

uint64_t sub_1000162F0@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = *(v4 + v2 * v5 + 36);
  v9 = v7 != ((a2 - 118) ^ (v6 - 26)) && ((a2 + 902) ^ (a1 + 1038)) + v7 < 0x80000003;
  return (*(v3 + 8 * ((112 * v9) ^ (a2 + 1346))))();
}

uint64_t sub_100016380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  HIDWORD(a18) = HIDWORD(a14) - 1595064894;
  v42.i64[0] = 0x2020202020202020;
  v42.i64[1] = 0x2020202020202020;
  LODWORD(a21) = 42;
  HIDWORD(a20) = 150;
  return sub_10004CFA0(v42, a1, a2, &a28 + 4, a4, a5, a6, a7, 1777, a9, a10, a11, a12, a13, a14, a2, a16, a3 + a12, a18, a19, a20, a21, v40 - 168, v41 - 16, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_10001642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, int a15)
{
  v21 = ((&a12 & 0x9C7A10D7 | ~(&a12 | 0x9C7A10D7)) ^ 0x98465833) * v18;
  a12 = v21 - v19 + *(v15 + 4) - 1110124928 + ((v20 - 169) | 0xA4);
  a13 = v20 - v21 + 2537;
  a14 = a11;
  v22 = (*(v16 + 8 * (v20 + 2583)))(&a12);
  return (*(v16 + 8 * ((1904 * (a15 == v17)) ^ v20)))(v22);
}

uint64_t sub_1000164EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = v17 + 742307843 * ((2 * ((v18 - 136) & 0x4DC3E350) - (v18 - 136) + 842800297) ^ 0x2C1E91FC) - 695;
  *(v18 - 128) = a13;
  *(v18 - 120) = &a15;
  v19 = (*(v16 + 8 * (v17 + 882)))(v18 - 136);
  return (*(v16 + 8 * ((4012 * (v15 == ((v17 - 1671) | 0x801) - 2298)) ^ v17)))(v19);
}

void sub_1000165C0()
{
  v0 = *(&off_1001252D0 + ((11 * (dword_10013EA98 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC820[byte_1000E7E70[(11 * (dword_10013EA98 ^ 8 ^ qword_10013EA10))] ^ 0xA3]) + 181);
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + (byte_1000EC820[byte_1000E7E70[(11 * ((qword_10013EA10 - v1) ^ 8))] ^ 0xA3] ^ (11 * ((qword_10013EA10 - v1) ^ 8))) + 11);
  v3 = (*v2 + v1) ^ &v5;
  *(v0 - 4) = 1405565963 * v3 - 0x49B2A3DDF3C140A8;
  *v2 = 1405565963 * (v3 ^ 0xBCA8FC1BD5CAFD08);
  v6[1] = 1504884919 * ((-2 - ((v6 ^ 0x905600 | 0x3F0488EF) + (v6 ^ 0x4802E | 0xC0FB7710))) ^ 0x4A89ECA) + 1212455568;
  LODWORD(v2) = 1405565963 * ((*v2 - *(v0 - 4)) ^ 0xD5CAFD08);
  v4 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EA98) ^ 8)) ^ byte_1000F09C0[byte_1000EC520[(11 * ((qword_10013EA10 - dword_10013EA98) ^ 8))] ^ 0x2B]) + 95) - 8;
  (*&v4[8 * (v2 ^ byte_1000EC820[byte_1000E7E70[v2] ^ 0xA3]) + 21968])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000167FC()
{
  v4 = *v2;
  memset(&STACK[0x268], 32, 16);
  v5 = 1037613739 * ((v3 - 160) ^ 0xD1022D7F);
  *(v3 - 128) = (v0 + 2426) ^ v5;
  *(v3 - 120) = &STACK[0x28C];
  *(v3 - 152) = &STACK[0x268];
  *(v3 - 144) = v4;
  *(v3 - 160) = v5 + 477235488;
  *(v3 - 136) = &STACK[0x278];
  v6 = (*(v1 + 8 * (v0 + 2700)))(v3 - 160);
  return (*(v1 + 8 * (((*(v3 - 124) == 1958853845) * (((v0 + 1569435607) & 0xA2744FDF ^ 0x5F) + ((v0 + 303871703) & 0xEDE34DD6))) ^ v0)))(v6);
}

void sub_100016904()
{
  v2 = (*(v0 + 96) + (~(2 * *(v0 + 96)) | 0x59) - 44);
  if (v2 == 210)
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 68);
    *(v0 + 56) = (8 * v5) ^ 0x20;
    *(v0 + 57) = (v5 >> 5) ^ 0x20;
    *(v0 + 58) = (v5 >> 13) ^ 0x20;
    *(v0 + 59) = (v5 >> ((v1 ^ 0x37) - 24)) ^ 0x20;
    *(v0 + 60) = ((__PAIR64__(v6, v5) >> 29) - ((2 * (__PAIR64__(v6, v5) >> 29)) & 0x80) + 64) ^ 0x60;
    *(v0 + 61) = (v6 >> 5) ^ 0x20;
    *(v0 + 62) = (v6 >> 13) ^ 0x20;
    v4 = (v6 >> 21) ^ 0x20;
  }

  else
  {
    if (v2 != 209)
    {
      goto LABEL_6;
    }

    v4 = *(v0 + 64);
    v3 = *(v0 + 68);
    *(v0 + 56) = (v4 >> 21) ^ 0x20;
    *(v0 + 57) = (v4 >> 13) ^ 0x20;
    *(v0 + 58) = (v4 >> (v1 - 21)) ^ 0x20;
    *(v0 + 59) = (__PAIR64__(v4, v3) >> 29) - ((2 * (__PAIR64__(v4, v3) >> 29)) & 0x40) + 32;
    *(v0 + 60) = (v3 >> 21) ^ 0x20;
    *(v0 + 61) = (v3 >> 13) ^ 0x20;
    *(v0 + 62) = (v3 >> 5) ^ 0x20;
    LOBYTE(v4) = (8 * (v3 - ((2 * v3) & 0x1C)) + 112) ^ 0x50;
  }

  *(v0 + 63) = v4;
LABEL_6:
  JUMPOUT(0x10000FDE8);
}

uint64_t sub_100016C04(__n128 a1)
{
  a1.n128_u16[0] = 8224;
  a1.n128_u8[2] = 32;
  a1.n128_u8[3] = 32;
  a1.n128_u8[4] = 32;
  a1.n128_u8[5] = 32;
  a1.n128_u8[6] = 32;
  a1.n128_u8[7] = 32;
  return sub_100016C3C(232, a1);
}

uint64_t sub_100016C3C@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v9 = (v7 + v3 + a2);
  *v9 = a3;
  v9[1] = a3;
  return (*(v8 + 8 * (((v3 + ((v5 + 410) | v6) - 2514 != v4) * a1) ^ v5)))();
}

uint64_t sub_100016C74(int a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v12 = a8 ^ a6;
  v13 = v10 > a1;
  v14 = (a8 ^ a6) - 839;
  if (v13 == v8 + a2 < a4)
  {
    v13 = v8 + a2 < v11;
  }

  return (*(v9 + 8 * ((v13 * (v14 ^ a5)) ^ v12)))();
}

uint64_t sub_100016C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (843532609 * ((-829013864 - (&a15 ^ 0xD7D0A948 | 0xCE964098) + (&a15 ^ 0xD7D0A948 | 0x3169BF67)) ^ 0xBAF442AA)) ^ 0x19B;
  a17 = &a11;
  a15 = a12;
  (*(v19 + 21920))(&a15);
  a16 = a12;
  LODWORD(a15) = 843532609 * (((&a15 | 0xACDAD50C) - &a15 + (&a15 & 0x53252AF0)) ^ 0xF0978189) + 257;
  v22 = (*(v19 + 21984))(&a15);
  return (*(v19 + 8 * ((125 * (a17 == (v21 ^ v20))) ^ v18)))(v22);
}

uint64_t sub_100016D70(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8) ^ (25431 * (result ^ 0x9AD7));
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x16C;
  v3 = v2 ^ 0x6C;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = 224166508;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0x2143C815A9CB409DLL;
    *(v1 + 80) = 0xDEBC37EA5634BF62;
    *(v1 + 92) = v4;
  }

  *(result + 12) = 535980316;
  return result;
}

uint64_t sub_100016E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v23 = 435584651 * ((((2 * (v22 - 128)) | 0xD0C7DFBE) - (v22 - 128) + 396103713) ^ 0x8551F589);
  *(v22 - 128) = ((v21 ^ 0x3CB6FFBF) - 77636616 + ((v21 << (v19 + 6)) & 0x796DFF7E)) ^ v23;
  *(v22 - 120) = &a19;
  *(v22 - 112) = v23 + v19 + 1136;
  v24 = (*(v20 + 8 * (v19 + 2511)))(v22 - 128);
  return sub_100016EFC(v24);
}

uint64_t sub_100016EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 120) = a16;
  *(v22 - 104) = &a17;
  *(v22 - 112) = (v17 + 497) ^ (((~((v22 - 128) | v19) + ((v22 - 128) & v19)) ^ 0x1F757608) * v20);
  v23 = (*(v18 + 8 * (v17 ^ 0x81E)))(v22 - 128);
  return (*(v18 + 8 * ((*(v22 - 128) <= (v17 ^ 0x6D9 ^ (v21 + 1005))) | v17)))(v23);
}

void sub_100016F90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = v9 - (**(a2 + 8) == (v10 + 110));
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1365209361;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v12 = *(a1 + 96) + 800;
  v13 = 1504884919 * (((&a5 | 0xA30B6D83) - (&a5 & 0xA30B6D83)) ^ 0x58C8DA98);
  a7 = *(a2 + 8) + (*(a2 + 4) - v11);
  a8 = v12;
  a9 = v10 - 200 - v13 + 12;
  a6 = v11 - v13 + ((v10 + 1873272413) & 0xD9DE5D77 ^ 0xFC030FF6);
  (*(a3 + 8 * ((v10 - 200) ^ 0xD1D)))(&a5);
  JUMPOUT(0x10001708CLL);
}

uint64_t sub_1000170B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v67 = STACK[0x398];
  v68 = LODWORD(STACK[0x300]) ^ 0x5E5F7BDE;
  v69 = (2 * LODWORD(STACK[0x300])) & 0xBCBEF7BC;
  v70 = 1504884919 * ((~(v66 - 192) & 0x7B761A72 | (v66 - 192) & 0x8489E58D) ^ 0x80B5AD69);
  *(v66 - 128) = &STACK[0x29C];
  *(v66 - 164) = v65 + 239 - v70 + 318;
  *(v66 - 184) = a21;
  *(v66 - 176) = a17;
  *(v66 - 192) = v70 + ((v65 + 551954132) & 0xDF19DEFD) + v68 + v69 - 1478431030;
  *(v66 - 160) = a22;
  *(v66 - 144) = v67;
  *(v66 - 136) = (v64 ^ 0x7F1BFEB6) - v70 + ((((v65 + 551954132) ^ 0x20E62185) - 1639) & v63) - 621286032;
  LOBYTE(STACK[0x1808]) = -73 * ((~(v66 + 64) & 0x72 | (v66 + 64) & 0x8D) ^ 0x69) + 62;
  v71 = (*(v62 + 8 * ((v65 + 239) ^ 0x8D2)))(v66 - 192);
  v72 = *(v66 - 152);
  LODWORD(STACK[0x22C]) = v72;
  return (*(a62 + 8 * ((73 * (v72 != 1958853845)) ^ (v65 + 239))))(v71);
}

uint64_t sub_100017208@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 - 435584651 * ((2 * (&v5 & 0x5630CC8) - &v5 + 2057106227) ^ 0x17AEE965) + 474;
  v8 = v3;
  v5 = a1;
  v6 = v3;
  return (*(v1 + 8 * (v2 + 2118)))(&v5);
}

uint64_t sub_100017294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, unsigned int a13, char *a14, int a15)
{
  a13 = (v17 + 252) ^ (50899313 * ((2 * (&a13 & 0x68B82CF0) - &a13 - 1756900599) ^ 0xBD8CF973));
  a14 = &a11;
  v18 = (*(v15 + 8 * (v17 + 1115)))(&a13);
  return (*(v15 + 8 * (((a15 == v16) * (v17 ^ 0x998)) ^ v17)))(v18);
}

void sub_100017320()
{
  v2 = STACK[0x458];
  v3 = 210068311 * ((v1 - 192) ^ 0x576F9AD7);
  *(v1 - 176) = (v0 - 562358890) ^ v3;
  *(v1 - 184) = v3 ^ 0x99739F6E;
  *(v1 - 192) = v2;
  JUMPOUT(0x100017374);
}

uint64_t sub_10001751C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, int a13, unsigned int a14, int a15, uint64_t a16, char *a17)
{
  v20 = 1785193651 * (((&a12 | 0xC08F3381) + (~&a12 | 0x3F70CC7E)) ^ 0x36AE97AC);
  a16 = a11;
  a17 = &a10;
  a15 = v19 - v20 - 2013067109;
  a13 = v20 ^ 0xA9B1BEA;
  a14 = v20 - 929753733;
  v21 = (*(v17 + 8 * (v19 + 2236)))(&a12);
  return (*(v17 + 8 * (((a12 == ((v19 + 1111) ^ v18)) * (v19 ^ 0x3EF)) ^ v19)))(v21);
}

uint64_t sub_10001761C@<X0>(int a1@<W8>)
{
  v7 = v6 + v4;
  v8 = (((a1 - 118) ^ 0xFD) + v4) & 0xF;
  v9 = v3 - v4 + v8 + 1;
  v10 = v3 + v8 + 1;
  v11 = v8 + v2 + 4;
  v12 = v8 + v1 + 6;
  v14 = v11 > v6 && v11 - v4 < v7;
  v16 = v10 > v6 && v9 < v7 || v14;
  if (v12 <= v6 || v12 - v4 >= v7)
  {
    v18 = v16;
  }

  else
  {
    v18 = 1;
  }

  return (*(v5 + 8 * (a1 | (2 * v18))))();
}

uint64_t sub_10001781C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, int *a18, unsigned int a19)
{
  a19 = (v20 - 1020) ^ (843532609 * ((2 * ((&a16 ^ 0x293948C9) & 0x327F80B1) - (&a16 ^ 0x293948C9) - 847216818) ^ 0xB8F46302));
  a18 = &a14;
  a16 = a12;
  v21 = (*(v19 + 8 * (v20 + 1309)))(&a16);
  return (*(v19 + 8 * (((a14 == ((v20 - 1107301787) ^ 0x8D30940) + 1255348548) * (((v20 - 1107301787) & 0xB72CF6BF) + 1255352383)) ^ (v20 + 333))))(v21);
}

uint64_t sub_1000178F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  *a6 = 0;
  *a7 = 0;
  a21 = 1504884919 * (((&a20 ^ 0x6B42 | 0xF56A102D) + (&a20 ^ 0x16A1029 | 0xA95EFD2)) ^ 0xFAA9CC71) + 1212455568;
  v22 = (*(v21 + 22208))(&a20);
  return (*(v21 + 8 * ((3833 * (a20 == 1958853845)) ^ 0x67Fu)))(v22);
}

uint64_t sub_1000179C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, __n128 a6, __n128 a7, __n128 a8, int8x16_t a9, double a10, int8x16_t a11)
{
  v19 = v16 - 16;
  v20 = a3 & (v19 + 15);
  v22.i64[0] = vqtbl4q_s8(*(&a6 - 1), a9).u64[0];
  *&v22.i64[1] = a10;
  v23 = vrev64q_s8(vmulq_s8(v22, a11));
  *(v18 + v19) = veorq_s8(veorq_s8(veorq_s8(*(v12 + v20 - 15), *(v11 + v19)), veorq_s8(*(v13 + v20 - 15), *(v14 + v20 - 15))), vextq_s8(v23, v23, 8uLL));
  return (*(v17 + 8 * (((a2 == 16) * a4) | v15)))();
}

uint64_t sub_100017A40@<X0>(uint64_t a1@<X8>)
{
  v8 = ((v7 - 1679925510) & 0x6421A5BB ^ (v2 - 1160) ^ **(v6 + 8)) - (**(v5 + 8) ^ v2);
  **(a1 + 8) = v8 + v2 - (v4 & (2 * v8));
  return (*(v3 + 8 * ((3499 * (v1 == 1)) ^ (v7 + 1109))))(1679926715, 0xFFFFFFFFLL);
}

uint64_t sub_100017AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unsigned int a12, char *a13, int a14)
{
  a13 = &a10;
  a12 = (v15 + 1259) ^ (50899313 * ((-965208611 - (&a12 ^ 0x231B5033 | 0xC67815DD) + (&a12 ^ 0x231B5033 | 0x3987EA22)) ^ 0x3057906B));
  v16 = (*(v14 + 8 * (v15 | 0x84A)))(&a12);
  return (*(v14 + 8 * ((13 * (a14 == ((v15 - 2128609953) ^ 0x8120076A) + ((v15 - 2128609953) | 0x265889D0) - 850842725)) ^ v15)))(v16);
}

uint64_t sub_100017D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(void))
{
  v27 = (((v26 ^ 0x6D141849) - 1830033481) ^ ((v26 ^ 0x32123781) - 840054657) ^ ((v26 ^ 0x91884C54) + 1853338540)) + (((LODWORD(STACK[0x2D4]) ^ 0x208DE925) - 546171173) ^ ((LODWORD(STACK[0x2D4]) ^ 0xF8D8CF3E) + 120008898) ^ ((LODWORD(STACK[0x2D4]) ^ 0x16DB4587) - 383468935)) - 287089584;
  v28 = (((v25 ^ 0xF648D8F4) + 162998028) ^ ((v25 ^ 0x93CD0103) + 1815281405) ^ ((v25 ^ 0xAB0BBA6B) + 1425294741)) + (((LODWORD(STACK[0x2D8]) ^ 0xEC898A9D) + 326530403) ^ ((LODWORD(STACK[0x2D8]) ^ 0xBB9C0F25) + 1147400411) ^ ((LODWORD(STACK[0x2D8]) ^ 0x999BE624) + 1717836252)) - 690208260;
  v29 = (v28 ^ 0xF57244BB) & (2 * (v28 & 0xC640853C)) ^ v28 & 0xC640853C;
  v30 = ((2 * (v28 ^ 0xF1F24C9B)) ^ 0x6F65934E) & (v28 ^ 0xF1F24C9B) ^ (2 * (v28 ^ 0xF1F24C9B)) & 0x37B2C9A6;
  v31 = v30 ^ 0x109248A1;
  v32 = (v30 ^ 0x23000100) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0xDECB269C) & v31 ^ (4 * v31) & 0x37B2C9A4;
  v34 = (v33 ^ 0x16820080) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x2130C923)) ^ 0x7B2C9A70) & (v33 ^ 0x2130C923) ^ (16 * (v33 ^ 0x2130C923)) & 0x37B2C9A0;
  v36 = v34 ^ 0x37B2C9A7 ^ (v35 ^ 0x33208800) & (v34 << 8);
  LODWORD(STACK[0x2D4]) = v27 ^ ((v27 ^ 0x771DF509) - 651911185) ^ ((v27 ^ 0xDA6F5105) + 1951808483) ^ ((v27 ^ 0x824BDFEB) + 745714957) ^ ((v27 ^ 0x7EFFEEFF) - 792296423) ^ 0x9F48F684;
  LODWORD(STACK[0x2D8]) = v28 ^ (2 * ((v36 << 16) & 0x37B20000 ^ v36 ^ ((v36 << 16) ^ 0x49A70000) & (((v35 ^ 0x4924187) << 8) & 0x37B20000 ^ 0x5320000 ^ (((v35 ^ 0x4924187) << 8) ^ 0x32C90000) & (v35 ^ 0x4924187)))) ^ 0x64EF75EE;
  v37 = (((v24 ^ 0xC81C7A55) + 937657771) ^ ((v24 ^ 0xF8954499) + 124435303) ^ ((v24 ^ 0xFE075D50) + 33071792)) + (((LODWORD(STACK[0x2DC]) ^ 0x9C22472E) + 1675475154) ^ ((LODWORD(STACK[0x2DC]) ^ 0x7A88D555) - 2055787861) ^ ((LODWORD(STACK[0x2DC]) ^ 0x2824F1E7) - 673509863)) + 127066546;
  v38 = (v37 ^ 0xC549F154) & (2 * (v37 & 0x9589E586)) ^ v37 & 0x9589E586;
  v39 = ((2 * (v37 ^ 0xC55AF05C)) ^ 0xA1A62BB4) & (v37 ^ 0xC55AF05C) ^ (2 * (v37 ^ 0xC55AF05C)) & 0x50D315DA;
  v40 = v39 ^ 0x5051144A;
  v41 = (v39 ^ 0x20010) & (4 * v38) ^ v38;
  v42 = ((4 * v40) ^ 0x434C5768) & v40 ^ (4 * v40) & 0x50D315D8;
  v43 = (v42 ^ 0x40401540) & (16 * v41) ^ v41;
  v44 = ((16 * (v42 ^ 0x10930092)) ^ 0xD315DA0) & (v42 ^ 0x10930092) ^ (16 * (v42 ^ 0x10930092)) & 0x50D315D0;
  v45 = v43 ^ 0x50D315DA ^ (v44 ^ 0x111500) & (v43 << 8);
  v46 = (((v23 ^ 0x2CA3996E) - 748919150) ^ ((v23 ^ 0x35AA0016) - 900333590) ^ ((v23 ^ 0xD787FAE4) + 678954268)) + (((LODWORD(STACK[0x2E0]) ^ 0x44430BAB) - 1145244587) ^ ((LODWORD(STACK[0x2E0]) ^ 0xCC43C53C) + 867973828) ^ ((LODWORD(STACK[0x2E0]) ^ 0x468EAD0B) - 1183755531)) - 1316881712;
  LODWORD(STACK[0x2DC]) = v37 ^ (2 * ((v45 << 16) & 0x50D30000 ^ v45 ^ ((v45 << 16) ^ 0x15DA0000) & (((v44 ^ 0x50C2005A) << 8) & 0x50D30000 ^ 0xC20000 ^ (((v44 ^ 0x50C2005A) << 8) ^ 0x53150000) & (v44 ^ 0x50C2005A)))) ^ 0xDB05ADAE;
  LODWORD(STACK[0x2E0]) = v46 ^ ((v46 ^ 0x41FCCB2D) - 1436154037) ^ ((v46 ^ 0xAE2B69B8) + 1169270240) ^ ((v46 ^ 0x244F6EF2) - 808082794) ^ ((v46 ^ 0xDFFDFFFF) + 879178649) ^ 0xDAEB5004;
  return a23();
}

void sub_100017D64(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 4) - 1359045963;
  v3 = *(*(a1 + 8) + 4) - 1359045963;
  v4 = (v2 < -2141320250) ^ (v3 < -2141320250);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < -2141320250;
  }

  else
  {
    v6 = v5;
  }

  v1 = *(a1 + 16) ^ (1361651671 * (a1 ^ 0x4B6BCC7E));
  __asm { BRAA            X14, X17 }
}

void sub_100017E78(int a1@<W8>)
{
  v7 = (((v2 - 1983) | 0x19) ^ 0xBFFFFE20) & a1;
  v8 = *v3;
  v9 = *(v3 + 4) + v1;
  *(*v3 + v9) = (HIBYTE(v7) ^ 0xD0) - ((v7 >> 23) & 0x40) + 32;
  *(v8 + v9 + 1) = (BYTE2(v7) ^ 0xC) - ((v7 >> 15) & 0x40) + 32;
  *(v8 + v9 + 2) = (BYTE1(v7) ^ 0x27) - ((2 * (BYTE1(v7) ^ 0x27)) & 0x40) + 32;
  *(v8 + v9 + 3) = v7 ^ 0x2E;
  v10 = *v3;
  LODWORD(v8) = (v5 ^ 0x1D4F6EA2) & (2 * (v5 & v6)) ^ v5 & v6;
  v11 = ((2 * (v5 ^ 0x294F6EC0)) ^ 0x6E8003E6) & (v5 ^ 0x294F6EC0) ^ (2 * (v5 ^ 0x294F6EC0)) & 0xB74001F2;
  v12 = v11 ^ 0x91400011;
  v13 = (v11 ^ 0x210001C0) & (4 * v8) ^ v8;
  LODWORD(v8) = ((4 * v12) ^ 0xDD0007CC) & v12 ^ (4 * v12) & 0xB74001F0;
  v14 = (v8 ^ 0x950001C0) & (16 * v13) ^ v13;
  LODWORD(v8) = ((16 * (v8 ^ 0x22400033)) ^ 0x74001F30) & (v8 ^ 0x22400033) ^ (16 * (v8 ^ 0x22400033)) & 0xB74001F0;
  v15 = v14 ^ 0xB74001F3 ^ (v8 ^ 0x34000100) & (v14 << 8);
  v16 = v5 ^ (2 * ((v15 << 16) & 0x37400000 ^ v15 ^ ((v15 << 16) ^ 0x1F30000) & (((v8 ^ 0x834000C3) << 8) & 0xB7400000 ^ 0x37400000 ^ (((v8 ^ 0x834000C3) << 8) ^ 0x40010000) & (v8 ^ 0x834000C3))));
  v17 = ((2 * (v1 + *(v3 + 4) + 4)) & 0xF76EF1FE) + ((v1 + *(v3 + 4) + 4) ^ 0xFBB778FF) + 71862017;
  *(*v3 + v17) = (HIBYTE(v16) ^ 0xF2) - 2 * ((HIBYTE(v16) ^ 0xF2) & 0x24 ^ HIBYTE(v16) & 4) + 32;
  *(v10 + v17 + 1) = (BYTE2(v16) ^ 0xF) - ((v16 >> 15) & 0x40) + 32;
  *(v10 + v17 + 2) = (BYTE1(v16) ^ 0x6C) - 2 * ((BYTE1(v16) ^ 0x6C) & 0x23 ^ BYTE1(v16) & 3) + 32;
  *(v10 + v17 + 3) = v16 ^ 0xF5;
  *(v3 + 4) = v4;
}

uint64_t sub_10001813C()
{
  v8 = v4 - (((&v8 | 0x7CDDF0DE) - &v8 + (&v8 & 0x83220F20)) ^ 0x9A755CCE) * v2 - 332;
  v9 = v6;
  (*(v1 + 8 * (v4 ^ 0x881)))(&v8);
  v9 = v7;
  v8 = (v4 ^ 0x4A9) - ((-1804383160 - (&v8 | 0x94734C48) + (&v8 | 0x6B8CB3B7)) ^ 0x8D241FA7) * v2 - 1443;
  result = (*(v1 + 8 * (v4 ^ 0x881)))(&v8);
  *(v0 + 4) = v3;
  return result;
}

uint64_t sub_100018240(uint64_t a1, int a2)
{
  v7 = *v4;
  *(v6 - 144) = -210068311 * ((((2 * (v6 - 144)) | 0x7C01142C731326E2) - (v6 - 144) + 0x41FF75E9C6766C8FLL) ^ 0x35C1F58C6EE609A6);
  *(v6 - 112) = ((v2 + 150875298) ^ 0x86) - 210068311 * ((((2 * (v6 - 144)) | 0x731326E2) - (v6 - 144) - 965317489) ^ 0x6EE609A6);
  *(v6 - 120) = v7 ^ (210068311 * ((((2 * (v6 - 144)) | 0x7C01142C731326E2) - (v6 - 144) + 0x41FF75E9C6766C8FLL) ^ 0x35C1F58C6EE609A6));
  *(v6 - 136) = 210068311 * ((((2 * (v6 - 144)) | 0x731326E2) - (v6 - 144) - 965317489) ^ 0x6EE609A6) + v2 + 150875298 + 94;
  *(v6 - 132) = v2 + 150875298 - 210068311 * ((((2 * (v6 - 144)) | 0x731326E2) - (v6 - 144) - 965317489) ^ 0x6EE609A6);
  *(v6 - 128) = -210068311 * ((((2 * (v6 - 144)) | 0x731326E2) - (v6 - 144) - 965317489) ^ 0x6EE609A6);
  *(v6 - 124) = v5 - 210068311 * ((((2 * (v6 - 144)) | 0x731326E2) - (v6 - 144) - 965317489) ^ 0x6EE609A6) + v2;
  v8 = (*(v3 + 8 * (a2 + v2 + 2790)))(v6 - 144);
  return (*(v3 + 8 * *(v6 - 108)))(v8);
}

uint64_t sub_100018338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v22 = v20 ^ (v15 - 93);
  a13 = v16;
  a14 = a9;
  a15 = (v20 - 555) ^ (((2 * (&a12 & 0x45F7C6A8) - &a12 + 973617488) ^ 0x10C3132A) * v18);
  v23 = (*(v17 + 8 * (v20 + 1112)))(&a12);
  return (*(v17 + 8 * (((a12 == v21) * (v19 + v22 + 245)) ^ v20)))(v23);
}

void sub_1000183DC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = (v5 + 440) | 0x82;
  a4 = v5 + 675097751 * (&a3 ^ 0x43402596) - 285;
  a3 = a1;
  (*(v4 + 8 * (v5 + 2064)))(&a3);
  *(v6 + 4) = (v7 ^ 0xA2BEE6E8) - *(v6 + 4);
  JUMPOUT(0x100017268);
}

uint64_t sub_100018444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, unsigned int a15, int a16, uint64_t a17, char *a18)
{
  v21 = 1785193651 * ((1008349151 - (&a13 | 0x3C1A2FDF) + (&a13 | 0xC3E5D020)) ^ 0x35C4740C);
  a17 = a10;
  a18 = &a11;
  a16 = v20 - v21 - 2013066897;
  a14 = v21 ^ 0xA1882986;
  a15 = v21 - 929753733;
  v22 = (*(v18 + 8 * (v20 ^ 0xB90)))(&a13);
  return (*(v18 + 8 * (((a13 == ((v20 + 1346) ^ (v19 - 611))) * (((v20 + 670) | 0x210) ^ 0x610)) ^ v20)))(v22);
}

void sub_100018590(_DWORD *a1)
{
  v1 = *a1 ^ (210068311 * ((2 * (a1 & 0x58D36AF6) - a1 - 1490250487) ^ 0xF0430FDE));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100018648()
{
  v6 = (v2 + 16);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((500 * (((v1 == 16) ^ v3) & 1)) ^ v0)))();
}

uint64_t sub_100018654(uint64_t result)
{
  v1 = 1361651671 * ((-2 - ((~result | 0x8FF481EA82026F7DLL) + (result | 0x700B7E157DFD9082))) ^ 0x5AE91381C969A303);
  v2 = *(result + 4) + v1;
  v3 = *(result + 16) ^ v1;
  v4 = *(result + 32) + v1;
  v5 = *(result + 24) ^ v1;
  v6 = *(result + 28) - v1;
  v7 = *result - v1;
  v8 = v4 < v3;
  v9 = v4 < v3;
  if ((v6 & 1) == 0)
  {
    v8 = v9;
  }

  if (v8)
  {
    v2 = v5;
  }

  *(result + 8) = v2 ^ v7;
  return result;
}

uint64_t sub_100018754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  ++*(v45 + 52);
  LODWORD(STACK[0x3DC]) = *(v45 + 360);
  STACK[0x288] += (v44 + 818586965) & 0xCF355746 ^ 0xFFFFFFFFFFFFF582;
  LODWORD(STACK[0x22C]) = a8;
  return (*(v46 + 8 * ((156 * (STACK[0x328] == 0)) ^ v44)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_1000187C4(uint64_t a1, int a2)
{
  v13.val[1].i64[0] = (v5 + 13) & 0xF;
  v13.val[1].i64[1] = (v5 + 12) & 0xF;
  v13.val[2].i64[0] = (v5 + 11) & 0xF;
  v13.val[2].i64[1] = (v5 + 10) & 0xF;
  v13.val[3].i64[0] = (v5 + 9) & 0xF;
  v13.val[3].i64[1] = v5 & 0xF ^ 8;
  v14.val[0].i64[0] = (v5 + 7) & 0xF;
  v14.val[0].i64[1] = (v5 + 6) & 0xF;
  v14.val[1].i64[0] = (v5 + 5) & 0xF;
  v14.val[1].i64[1] = (v5 + 4) & 0xF;
  v14.val[2].i64[0] = (v5 + 3) & 0xF;
  v14.val[2].i64[1] = (v5 + 2) & 0xF;
  v14.val[3].i64[0] = (v5 + 1) & 0xF;
  v14.val[3].i64[1] = v5 & 0xF;
  v8 = *(v7 - 120);
  v9 = vqtbl4q_s8(v14, xmmword_1000F0BC0).u64[0];
  v10.i64[0] = 0x7373737373737373;
  v10.i64[1] = 0x7373737373737373;
  v11 = 17 * (a2 ^ 0x5A9u) - 2670 + v5;
  v13.val[0].i64[0] = v11 & 0xF;
  v13.val[0].i64[1] = (v5 + 14) & 0xF;
  v14.val[3].i64[0] = vqtbl4q_s8(v13, xmmword_1000F0BC0).u64[0];
  v14.val[3].i64[1] = v9;
  v14.val[0] = vrev64q_s8(vmulq_s8(v14.val[3], v10));
  *(v6 - 15 + v11) = veorq_s8(veorq_s8(veorq_s8(*(v4 + v13.val[0].i64[0] - 15), *(v6 - 15 + v11)), veorq_s8(*(v3 + v13.val[0].i64[0] - 15), *(v13.val[0].i64[0] + v2 - 14))), vextq_s8(v14.val[0], v14.val[0], 8uLL));
  return (*(v8 + 8 * (((((v5 & 0x10) == 16) << 7) | (((v5 & 0x10) == 16) << 10)) ^ a2 ^ 0x721)))();
}

uint64_t sub_1000189B0()
{
  v0 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EA28) ^ 8)) ^ byte_1000F09C0[byte_1000EC520[(11 * ((qword_10013EA10 - dword_10013EA28) ^ 8))] ^ 0xDD]) - 36);
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + (byte_1000EC620[byte_1000E7C70[(11 * ((qword_10013EA10 + v1) ^ 8))] ^ 0x22] ^ (11 * ((qword_10013EA10 + v1) ^ 8))) - 8);
  v3 = v1 ^ &v5 ^ *v2;
  *(v0 - 4) = (1405565963 * v3) ^ 0xBCA8FC1BD5CAFD08;
  *v2 = 1405565963 * (v3 ^ 0xBCA8FC1BD5CAFD08);
  v6 = (1037613739 * ((2 * (&v6 & 0x5DB2E6D0) - &v6 - 1572005589) ^ 0x734F3454)) ^ 0x3AB;
  v7 = *(&off_1001252D0 + ((11 * (*(v0 - 4) ^ 8 ^ *v2)) ^ byte_1000EC620[byte_1000E7C70[(11 * (*(v0 - 4) ^ 8 ^ *v2))] ^ 0x22]) + 17);
  LOBYTE(v0) = 11 * (*(v0 - 4) ^ 8 ^ *v2);
  return (*(*(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EA28) ^ 8)) ^ byte_1000EC820[byte_1000E7E70[(11 * ((qword_10013EA10 - dword_10013EA28) ^ 8))] ^ 0xA3]) + 167) + (byte_1000EC72C[(byte_1000E7D7C[v0 - 12] ^ 0x31) - 12] ^ v0) + 2476))(&v6);
}

uint64_t sub_100018FCC@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x29C] + (a1 >> ((v2 + 99) & 0xB ^ 9)) + 18);
  v6 = ((2 * a1) & 0x77EFF7F8) + (a1 ^ 0xBBF7FBFF) + v1;
  *(v3 + v6) = (HIBYTE(v5) ^ 0xCE) - ((v5 >> 23) & 0x40) + 32;
  *(v3 + v6 + 1) = (BYTE2(v5) ^ 0x8E) - ((v5 >> 15) & 0x40) + 32;
  *(v3 + v6 + 2) = (BYTE1(v5) ^ 0x63) - ((2 * (BYTE1(v5) ^ 0x63)) & 0x40) + 32;
  *(v3 + v6 + 3) = v5 ^ 0xBC;
  return (*(v4 + 8 * (v2 | (32 * (a1 + 4 < LODWORD(STACK[0x2F8]))))))();
}

uint64_t sub_1000190F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(a37) = v63;
  (*(a2 + 8 * a27))(a29 + 16, 0x100004077774924);
  v66 = (*(a62 + 8 * SHIDWORD(a26)))();
  *v62 = v66;
  v62[1] = 1812433253 * (v66 ^ (v66 >> 30)) + 1;
  return (*(a62 + 8 * v64))(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v65, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_100019188@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((29 * (v5 == (v3 - 1498) - 699)) ^ (v3 - 426))))();
}

uint64_t sub_100019274(uint64_t result)
{
  v1 = 210068311 * ((((2 * result) | 0xF009DBB939586A30) - result + 0x7FB12236353CAE8) ^ 0x73C59246CBC3AFCFLL);
  v2 = *(result + 12) + v1;
  v3 = *(result + 32) + v1;
  v4 = *(result + 8) - v1;
  v5 = *(result + 16) + v1;
  v6 = *result + v1;
  v7 = *(result + 24) ^ v1;
  v8 = v7 > v6;
  v9 = v7 == v6;
  v10 = v8;
  if (v5)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  *(result + 36) = v11 ^ v3;
  return result;
}

uint64_t sub_100019324(uint64_t a1)
{
  v1 = 675097751 * ((a1 & 0xCD68CFF6 | ~(a1 | 0xCD68CFF6)) ^ 0x71D7159F);
  v2 = *a1 + v1;
  v3 = (*(a1 + 4) - v1) ^ 0x7FCB2869;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1365209361;
  v5 = v4 - 1365209361 < 0;
  v7 = 1365209361 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1001252D0 + v2 - 419) + ((374 * ((v3 >> 5) < v7)) ^ v2) - 1))();
}

uint64_t sub_1000193F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v18 = (((a16 ^ 0x71FB7EBA) - 1912307386) ^ ((a16 ^ 0x92BC6110) + 1833148144) ^ (((((v16 + 266) ^ 0x718) + 436654099) ^ a16) - 436655509)) + 534258210;
  v19 = v18 < 0x269657E3;
  v20 = v18 > a12 + 647387107;
  if (a12 > 0xD969A81C != v19)
  {
    v20 = v19;
  }

  return (*(v17 + 8 * ((82 * !v20) ^ (v16 + 266))))();
}

uint64_t sub_1000194C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v68 = (v63 ^ 0xE6A8AC10) * v62;
  *(v66 - 168) = &STACK[0x410];
  *(v66 - 160) = v68 + 583618;
  *(v66 - 184) = 0;
  *(v66 - 176) = &STACK[0x2F4];
  *(v66 - 188) = v68 + v64 + 218;
  v69 = (*(v67 + 8 * (v64 ^ 0xB2Cu)))(v66 - 192);
  return (*(a62 + 8 * (((*(v66 - 192) == ((v64 - 1905488068) & 0x71936F5A ^ (v65 - 72))) * (((v64 + 1009419581) & 0x43D57959) - 66)) ^ v64)))(v69);
}

uint64_t sub_100019588(uint64_t a1, uint64_t a2)
{
  v2 = &v8 ^ qword_10013EB18 ^ qword_10013EA10;
  qword_10013EB18 = 1405565963 * v2 - 0x435703E42A3502F8;
  qword_10013EA10 = 1405565963 * (v2 ^ 0xBCA8FC1BD5CAFD08);
  v3 = *(a2 + 4);
  v4 = 11 * ((qword_10013EA10 + 11 * v2 + 8) ^ 8);
  v5 = *(&off_1001252D0 + (v4 ^ byte_1000E4560[byte_1000F0AC0[v4] ^ 0x30]) + 57) - 8;
  if (v3 == 1912886426)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 1912886433)
  {
    v6 = **(a2 + 8) - 9;
    __asm { BRAA            X1, X17 }
  }

  return 4294925278;
}

uint64_t sub_1000198B8()
{
  v5 = v2 < v0;
  if (v5 == v1 + 1 > (((v3 + 795) | 0x271u) ^ 0xFFFFFFFF4A2A4D7FLL))
  {
    v5 = v0 + v1 + ((v3 + 1839) | 0x80u) - 2197 < v2;
  }

  return (*(v4 + 8 * ((471 * v5) ^ v3)))();
}

uint64_t sub_1000199C0()
{
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[398];
  v7 = *(v3 - 160 + 4 * (v5 & 1));
  *v0 = v0[397] ^ ((v4 & 0x7FFFFFFE | *v0 & 0x80000000) >> 1) ^ *(v3 - 160 + 4 * (v4 & 1));
  v0[((v1 - 1450454937) & 0x56742B78) - 847] = v6 ^ ((v5 & 0x7FFFFFFE | v4 & 0x80000000) >> 1) ^ v7;
  return (*(v2 + 8 * ((v1 - 1056) | 0xE)))();
}

uint64_t sub_100019A4C()
{
  v9 = *(v4 + 8 * (v6 - 866));
  v10 = *v2;
  v11 = v0 - 194345199;
  *(*v2 + v11) = (v7 ^ HIBYTE(v1)) - ((v1 >> 23) & 0x40) + 32;
  *(v10 + v11 + 1) = (v3 ^ BYTE2(v1)) - ((v1 >> 15) & 0x40) + 32;
  *(v10 + (v0 - 194345197)) = (v5 ^ BYTE1(v1)) - ((2 * (v5 ^ BYTE1(v1))) & 0x40) + 32;
  *(v10 + (v0 - 194345196)) = v1 ^ v8;
  return v9();
}

uint64_t sub_100019B08(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37)
{
  if (a37 == 2)
  {
    return (*(v37 + 8 * (((a36 == 0) * ((562 * (v38 ^ (v38 + 2))) ^ 0x4A2)) ^ (a4 + v38 + 1061))))(a10);
  }

  if (a37 == 1)
  {
    return (*(v37 + 8 * (((a36 != 0) * (((v38 + 948151626) & 0x808653FF) - 699)) ^ (a4 + v38 + 759))))();
  }

  return sub_100019C0C();
}

uint64_t sub_100019C0C@<X0>(int a1@<W8>)
{
  v7 = v4 - v1;
  *(v7 + 91) = (v3 ^ (v1 + v2)) * (v1 + v2 + 17);
  *(v7 + 90) = ((v1 + v2) ^ 0xBB) * (v1 + v2 + 18);
  return (*(v6 + 8 * (((v1 == 90) * v5) ^ a1)))(0);
}

uint64_t sub_100019E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((658 * (v6 == ((v4 - 1134694000) & 0xB64C2FB1) - 1552)) ^ (v4 + v2))))();
}

uint64_t sub_100019EF0()
{
  v6 = 675097751 * ((((2 * (v5 - 128)) | 0xD64D6518) - (v5 - 128) - 1797698188) ^ 0x2866971A);
  *(v5 - 120) = v3;
  *(v5 - 112) = v6 - 233716451;
  *(v5 - 108) = v6 + v4 + 463;
  *(v5 - 128) = v6 ^ 0x4413498A;
  v7 = (*(v2 + 8 * (v4 ^ 0xEE6)))(v5 - 128);
  return (*(v2 + 8 * (((*(v5 - 124) == v0) * ((v1 + v4 + 1431) ^ (v1 + 2436))) ^ v4)))(v7);
}

void sub_100019F9C(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (210068311 * ((-2 - ((~a1 | 0x9F1D818B) + (a1 | 0x60E27E74))) ^ 0xC8721B5C));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10001A078@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v8 = *(result + 40);
  v7 = *(result + 48);
  v9 = *result;
  *a2 = v4;
  *v9 = v3;
  *v8 = v5;
  *v7 = v2 + v6;
  *(result + 8) = 1958853845;
  return result;
}

uint64_t sub_10001A0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v36 = STACK[0x2A0];
  v37 = STACK[0x420];
  v38 = STACK[0x348];
  LODWORD(STACK[0x424]) = 1;
  STACK[0x3B0] = v36;
  LODWORD(STACK[0x224]) = v37;
  STACK[0x200] = v38;
  LODWORD(STACK[0x2BC]) = 1562700482;
  STACK[0x288] = a34 + 112;
  STACK[0x418] = v36;
  if (v36)
  {
    v39 = v38 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  return (*(v35 + 8 * ((v40 * (((((v34 - 1866929628) & 0x6F471BD3) - 1168) ^ 0x5E9) - 44)) ^ (((v34 - 1866929628) & 0x6F471BD3) - 522))))(&off_1001252D0);
}

uint64_t sub_10001A1D4@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, char a6, char *a7, int a8, char a9, uint64_t a10, int a11, char a12, char *a13, char *a14, char *a15, unsigned int a16, unsigned int a17)
{
  v20 = (a1 - 482) | 0x400;
  a16 = (a1 - 220) ^ ((((&a13 | 0x9881115B) + (~&a13 | 0x677EEEA4)) ^ 0xC4CC45DF) * v17);
  a13 = a7;
  a15 = &a6;
  (*(v18 + 8 * (a1 ^ 0x8C3u)))(&a13);
  a14 = &a9;
  a15 = a7;
  a13 = &a3;
  a17 = v20 - ((2 * (&a13 & 0x6721AC78) - &a13 + 417223557) ^ 0xFE76FF95) * v19 - 231;
  (*(v18 + 8 * (v20 + 1541)))(&a13);
  a16 = (v20 - 762) ^ ((((&a13 | 0xD29BA6C5) + (~&a13 | 0x2D64593A)) ^ 0x8ED6F241) * v17);
  a13 = a7;
  a15 = &a12;
  (*(v18 + 8 * (v20 + 1567)))(&a13);
  a14 = a7;
  LODWORD(a13) = v20 + ((&a13 & 0x5B65CFBF | ~(&a13 | 0x5B65CFBF)) ^ 0xF8D764C5) * v17 - 916;
  v21 = (*(v18 + 8 * (v20 + 1575)))(&a13);
  return (*(v18 + 8 * ((721 * (a15 == ((v20 + 610) ^ 0x74C1BDB0) + v20 - 775)) ^ v20)))(v21);
}

uint64_t sub_10001A3BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_10001A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = LOBYTE(STACK[0x2FC]);
  if (v9 == 2)
  {
    return (*(v8 + 8 * (((LODWORD(STACK[0x2F8]) != 0) * ((a8 + 1681) ^ 0x6BC)) ^ (a8 + 1681))))();
  }

  if (v9 != 1)
  {
    JUMPOUT(0x10001A498);
  }

  return (*(v8 + 8 * ((50 * (LODWORD(STACK[0x2F8]) != ((a8 + 529) | 0x480) - 1692)) ^ (a8 + 1850))))();
}

uint64_t sub_10001A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30)
{
  *v32 = ((-((~(v33 - 1281) + v30) ^ (v35 - (v33 - 1281))) | (~(v33 - 1281) + v30)) >> 63) ^ (v33 - 1903) ^ v32[623] ^ 1;
  v37 = v36 - 152;
  v38 = 1361651671 * ((v36 + 0x74931D72BE2F56F6 - 2 * ((v36 - 152) & 0x74931D72BE2F578ELL)) ^ 0xA18E8F19F5449BF0);
  *(v37 + 32) = 3 - v38;
  *(v36 - 152) = 1361651671 * ((v36 - 1104193802 - 2 * ((v36 - 152) & 0xBE2F578E)) ^ 0xF5449BF0) + a30 + 159;
  *(v36 - 148) = a29 - 1361651671 * ((v36 - 1104193802 - 2 * ((v36 - 152) & 0xBE2F578E)) ^ 0xF5449BF0);
  *(v36 - 112) = (v33 - 2030746576) ^ (1361651671 * ((v36 - 1104193802 - 2 * ((v36 - 152) & 0xBE2F578E)) ^ 0xF5449BF0));
  *(v37 + 16) = (v31 + 1) ^ v38;
  *(v36 - 128) = a30 ^ (1361651671 * ((v36 - 1104193802 - 2 * ((v36 - 152) & 0xBE2F578E)) ^ 0xF5449BF0));
  *(v36 - 124) = 1361651671 * ((v36 - 1104193802 - 2 * ((v36 - 152) & 0xBE2F578E)) ^ 0xF5449BF0);
  v39 = (*(v34 + 8 * (v33 + 868)))(v36 - 152);
  return (*(v34 + 8 * *(v36 - 144)))(v39);
}

uint64_t sub_10001A600(uint64_t result)
{
  v1 = 1785193651 * (result ^ 0x5F98BD38F621A42CLL);
  v2 = *result + v1;
  v3 = *(result + 40) - v1;
  v4 = *(result + 8) - v1;
  v5 = *(result + 20) ^ v1;
  v6 = *(result + 32) - v1;
  v7 = *(result + 24) + v1;
  v8 = v7 == v4;
  v9 = v7 >= v4;
  v10 = !v8;
  if ((v6 & 1) == 0)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v5;
  }

  *(result + 36) = v11 ^ v3;
  return result;
}

uint64_t sub_10001A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18, char *a19)
{
  v21 = 1785193651 * ((2 * (&a14 & 0x16F0FFE0) - &a14 - 384892903) ^ 0x1F2EA435);
  a17 = -2013066540 - v21;
  a18 = a12;
  a19 = &a11;
  a15 = v21 ^ 0x66BE9B30;
  a16 = v21 - 929753733;
  v22 = (*(v19 + 22440))(&a14);
  return (*(v19 + 8 * ((1601 * (a14 == v20)) ^ 0x12Au)))(v22);
}

uint64_t sub_10001A8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v25 = 435584651 * ((2 * ((v24 - 160) & 0x5C96EF40) - (v24 - 160) + 594088127) ^ 0x4E5B0AE9);
  STACK[0x250] = &a21;
  STACK[0x220] = &a19;
  *(v24 - 148) = v25 + v23 + 794;
  *(v24 - 128) = (((v23 + 138411841) | 0x40BE5600) + v21 + ((v23 + 962346756) & 0xC6A3C237 ^ 0x92F651F0)) ^ v25;
  STACK[0x230] = a13;
  STACK[0x238] = &a17;
  STACK[0x248] = &a15;
  v26 = (*(v22 + 8 * (v23 + 2582)))(v24 - 160);
  return (*(v22 + 8 * ((2057 * (*(v24 - 152) == 1958853845)) ^ v23)))(v26);
}

void sub_10001A9EC(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X14, X17 }
}

void sub_10001AB0C()
{
  v3 = *(v0 + 48);
  **(v0 + 24) = v2;
  *v3 = v4;
  *(v0 + 44) = v1;
}

uint64_t sub_10001ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v46 = v41;
  *a30 = a41 + 1;
  v47 = *v44;
  v48 = ((-2 - ((~(v45 - 144) | 0x78B07BE441942B5) + ((v45 - 144) | 0xF874F841BBE6BD4ALL))) ^ 0x8C4A78241376D862) * v42;
  *(v45 - 144) = (v46 + 1329502705) ^ v48;
  *(v45 - 120) = 5119 - v48;
  *(v45 - 112) = v46 - v48 - 1225990958;
  *(v45 - 108) = v46 - v48 - 1225990922;
  *(v45 - 136) = v48 + v47;
  *(v45 - 128) = v46 - v48 - 1225990838;
  *(v45 - 124) = v48 ^ 1;
  v49 = (*(v43 + 8 * (v46 ^ (a5 - 1596))))(v45 - 144);
  return (*(v43 + 8 * *(v45 - 140)))(v49);
}

uint64_t sub_10001AFE0@<X0>(int a1@<W8>)
{
  v5 = a1 + v3;
  v6 = v4 + 189513919 < (v1 - 293860685);
  if ((v4 + 189513919) < 0x60805F4A != v1 - 293860685 < (((a1 + v3 - 54) | 8) ^ 0x60805F82u))
  {
    v6 = v1 - 293860685 < (((v5 - 54) | 8) ^ 0x60805F82u);
  }

  return (*(v2 + 8 * (((2 * v6) | (32 * v6)) ^ (v5 + 2216))))();
}

uint64_t sub_10001B054(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v11 = v7 + 2;
  v12 = v9 + 2;
  v13 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a5)), a6);
  v12[-1] = vaddq_s8(vsubq_s8(v11[-1], vandq_s8(vaddq_s8(v11[-1], v11[-1]), a5)), a6);
  *v12 = v13;
  return (*(v10 + 8 * (((v8 == 32) * (v6 + 538)) ^ v6)))();
}

uint64_t sub_10001B090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = 1504884919 * ((((2 * &a14) | 0x6A9681B2) - &a14 + 1253359399) ^ 0x4E88F7C2) + 1212455568;
  v16 = (*(v15 + 22208))(&a14);
  return (*(v15 + 8 * ((1327 * (a14 == 1958853845)) ^ 0x143u)))(v16);
}

void sub_10001B1EC()
{
  STACK[0x4F8] = 0x8B3DD4334798F13CLL;
  STACK[0x4F0] = 0x6083F1E52B05A240;
  JUMPOUT(0x10001B218);
}

uint64_t sub_10001B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x3DC]) = v64;
  v68 = 50899313 * ((((v66 - 192) | 0x5E1ED2A5) - ((v66 - 192) & 0x5E1ED2A5)) ^ 0x74D5F8DF);
  *(v66 - 176) = &STACK[0x4F0];
  *(v66 - 168) = &STACK[0x3B8];
  *(v66 - 160) = v64 - v68 - ((2 * v64) & 0xECFD7804) - 159466494;
  *(v66 - 156) = v68 + v65 + 1158;
  *(v66 - 192) = &STACK[0x4E0];
  *(v66 - 184) = v63;
  *(v66 - 144) = &STACK[0x42C];
  *(v66 - 152) = v68 ^ a19 ^ ((a19 ^ 0xD26166C1) + 389579041) ^ ((a19 ^ 0x3442B2D9) - 249866951) ^ ((a19 ^ 0xEFDFFFF7) + 713431063) ^ (((94 * (v65 ^ 0x44B)) ^ 0xF603D50B) + (a19 ^ 0x335A33F1)) ^ 0xF9A29024;
  v69 = (*(v67 + 8 * (v65 ^ 0xF57)))(v66 - 192);
  v70 = *(v66 - 148);
  LODWORD(STACK[0x22C]) = v70;
  return (*(a63 + 8 * ((208 * (v70 == 1958853845)) ^ v65)))(v69);
}

uint64_t sub_10001B488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, void *a26, int *a27)
{
  v35 = v30 ^ v34;
  *a24 = v29 + 1;
  v36 = ((v28 ^ (v28 >> 11)) << 7) & 0x9D2C5680 ^ v28 ^ (v28 >> 11);
  v37 = (v35 - 272236545) & (v36 << 15) ^ v36 ^ (((v35 - 272236545) & (v36 << 15) ^ v36) >> 18);
  v38 = (v27 + ((2 * ((v30 ^ v34) + 2467)) ^ 0xFFFFECB7) + v32);
  v39 = -976034857 * ((v38 ^ *(*a26 + (*a27 & 0xFFFFFFFFCA7FF2C4))) & 0x7FFFFFFF);
  v40 = -976034857 * (v39 ^ HIWORD(v39));
  v41 = v40 >> (28 * (((v30 ^ v34) - 93) ^ 0xE0u) - 88);
  LOBYTE(v41) = *(*(v31 + 8 * ((v35 + 2467) ^ 0x9D6)) + v41 + 1) ^ *(*(v31 + 8 * ((v35 + 2467) ^ 0x906)) + v41) ^ *(*(v31 + 8 * ((v35 + 2467) ^ 0x9D4)) + v41 + 1 - 12) ^ v40 ^ (81 * v41);
  *v38 = v41 ^ v37;
  return (*(v33 + 8 * ((1012 * (v32 == (v41 != v37))) ^ ((v30 ^ v34) + 2467))))();
}

void sub_10001BA4C()
{
  v9 = *(v6 + 8);
  v10 = (*(v9 + 4 * (v8 - 1)) ^ v1) >> v2;
  *(v9 + 4 * v4) = v10 + v1 - (v3 & (2 * v10));
  if (*(*(v6 + 8) + 4 * v4) == v1)
  {
    v11 = 1902082429;
  }

  else
  {
    v11 = 1902082430;
  }

  v12 = v11 + v0;
  if (*(v6 + 4) + v7 >= (v5 + 2147481846))
  {
    v12 = -1564548574 - v12;
  }

  *(v6 + 4) = v12;
}

uint64_t sub_10001BC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = v14 + ((v13 + 1071968615) & 0xC01B0CEF ^ 0x9294AAB3) < a13 + 1588939050;
  if ((a13 + 1588939050) < 0x9294AAF1 != v14 > 0x6D6B550E)
  {
    v16 = (a13 + 1588939050) < 0x9294AAF1;
  }

  return (*(v15 + 8 * ((7 * v16) ^ v13)))(2459216563, 1835750670, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10001BC98@<X0>(uint64_t a1@<X8>, __n128 a2@<Q5>, uint64_t a3)
{
  v6 = (a3 + v4);
  v6[-1] = a2;
  *v6 = a2;
  return (*(v5 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * ((((v3 & 0xF2CFB6FD) - 2143187698) & 0x7FBE6D5A) + 3562)) ^ v3 & 0xF2CFB6FD)))();
}

uint64_t sub_10001BD20()
{
  v8 = -v4;
  v10.val[0].i64[0] = (v3 + v8 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + v8 + 14) & 0xF;
  v10.val[1].i64[0] = (v3 + v8 + ((v5 + 58) ^ 1)) & 0xF;
  v10.val[1].i64[1] = (v3 + v8 + 12) & 0xF;
  v10.val[2].i64[0] = (v3 + v8 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + v8 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + v8 + 9) & 0xF;
  v10.val[3].i64[1] = (v3 + v8) & 0xF ^ 8;
  *(v3 + v7 - 8 + v8) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v3 + v7 - 8 + v8), *(v2 + v10.val[0].i64[0] - 7)), veor_s8(*(v10.val[0].i64[0] + v1 - 4), *(v10.val[0].i64[0] + v0 - 2)))), 0x2020202020202020), vmul_s8(*&vqtbl4q_s8(v10, xmmword_1000F0C40), 0x6161616161616161)));
  return (*(v6 + 8 * (((4 * (8 - (v3 & 0x18) != v8)) | (8 * (8 - (v3 & 0x18) != v8))) ^ (v5 - 139))))(xmmword_1000F0C40);
}

uint64_t sub_10001BE20@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v33 = (((((a29 ^ 0x95) + 88) ^ a29 ^ ((a29 ^ 0x19) - 36) ^ ((a29 ^ 0xC8) + 11)) ^ (((a1 - 87) ^ a29) - 68)) & 0xF) == 0xD && (((a29 ^ 0x3BAACE95) - 1775918248) ^ a29 ^ ((a29 ^ 0x1E3EF019) - 1280205348) ^ ((a29 ^ 0xC8195BC8) + 1704343051) ^ (((a1 - 1073876055) ^ a29) + 309500604)) != (v29 ^ 0xE8) + 1383107709 + ((4 * v29) ^ 0x7B0);
  v34 = *(v30 + 8 * ((75 * v33) ^ v29));
  *(v31 - 172) = -42899;
  return v34();
}

uint64_t sub_10001BEE8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12, char a13, char *a14, int a15, int a16, uint64_t a17, int *a18, int a19, int *a20, uint64_t *a21)
{
  v23 = a1 & 0x173F3EF;
  a10 = 1429511819;
  v24 = 435584651 * (((&a14 | 0x5FACEBAE) - (&a14 & 0x5FACEBAE)) ^ 0x329EF1F8);
  a19 = (a9 - 604722695) ^ v24;
  a14 = &a13;
  a17 = a11;
  a18 = &a10;
  a16 = v24 + (a1 & 0x173F3EF) + 674;
  a20 = &a9;
  a21 = &a11;
  v25 = (*(v21 + 8 * ((a1 & 0x173F3EFu) + 2462)))(&a14);
  return (*(v21 + 8 * (((a15 == 1958853845) * ((v23 ^ 0x57) + 1602)) ^ v23)))(v25, v22);
}

uint64_t sub_10001C0AC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v62 = ((~(v56 | 0xE7D7E7A7) + (v56 & 0xE7D7E7A7)) ^ 0xFE80B448) * v55;
  *(v60 - 168) = &STACK[0x2A0];
  *(v60 - 188) = v62 + v58 + 579;
  *(v60 - 160) = a1 + v62;
  *(v60 - 184) = 0;
  *(v60 - 176) = &STACK[0x420];
  v63 = (*(v61 + 8 * (v58 + 2709)))(v60 - 192);
  v64 = *(v60 - 192);
  STACK[0x218] = v57;
  return (*(a55 + 8 * (((v64 == (((v58 + 178) | 0x10) ^ (v59 + 250))) * (((v58 + 168) | 0x28B) + 1777)) ^ v58)))(v63, 3613916661, 1048914632, 2932866026, 4140955821, 729234527, 154011474, 1958853845, 0);
}

uint64_t sub_10001C1A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *(v7 + 4 * (v6 - 1));
  *(v7 + 4 * v6) = ((1566083941 * (v9 ^ (v9 >> 30))) ^ *(v7 + 4 * v6)) - v6;
  v10 = 210068311 * ((v8 - 144) ^ 0x8BC17F9A576F9AD7);
  *(v8 - 144) = (v4 + 1329502705) ^ v10;
  *(v8 - 136) = v6 + 1 + v10;
  *(v8 - 112) = v4 - 1894153076 - v10;
  *(v8 - 108) = ((v4 - 1894153076) | 8) - v10;
  *(v8 - 120) = 623 - v10;
  *(v8 - 128) = ((v4 - 1894153076) ^ 0x9D) - v10;
  *(v8 - 124) = v10 ^ 1;
  v11 = (*(v5 + 8 * (a4 + v4 + 2763)))(v8 - 144);
  return (*(v5 + 8 * *(v8 - 140)))(v11);
}

uint64_t sub_10001C280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  a41 = v42 - 1;
  v47 = v42 - 951284589;
  v48 = (a23 + 24 * v47);
  HIDWORD(a25) = v48[4];
  return (*(v43 + 8 * ((56 * (*(v44 + (a7 + *v48 + ((v41 + 1054352516) & 0xC127DBF3) - 2130) * v45 + 36) != v46)) ^ v41)))(a1, a2, a3, a4, v48[1], a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, *(&a41 + 3 * v47 + 2), a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_10001C338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  a16 = 1504884919 * ((((2 * &a15) | 0x65C99C4) - &a15 + 2094117662) ^ 0x78EDFBF9) + 1212455568;
  v18 = (*(v16 + 22208))(&a15);
  return (*(v16 + 8 * ((3746 * (a15 == ((v17 + 1077) ^ 0xC1ED5A69))) ^ 0x600u)))(v18);
}

uint64_t sub_10001C41C@<X0>(int a1@<W8>, uint64_t a2, int a3, char a4, unsigned int a5, uint64_t a6, uint64_t *a7, int a8, char *a9)
{
  v11 = a1 + 17;
  v12 = 1037613739 * (((&a5 | 0xB9D8817A) - &a5 + (&a5 & 0x46277E80)) ^ 0x68DAAC05);
  a8 = (a1 + 529) ^ v12;
  a6 = v9;
  a7 = &a2;
  a5 = v12 + 432909029;
  a9 = &a4;
  v13 = (*(v10 + 8 * ((a1 + 17) ^ 0xA98)))(&a5);
  return (*(v10 + 8 * ((2874 * (*(v9 + 24) == (v11 ^ 0x37) + 1958853434)) ^ v11)))(v13);
}

uint64_t sub_10001C508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x490] = v63;
  LODWORD(STACK[0x49C]) = a9;
  return (*(v65 + 8 * ((((*(v63 + 68) & ((v64 + 245) ^ 0x3C1u)) + a9 > 0x3F) * ((v64 ^ 0x7FD) - 1224)) ^ v64)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10001C554()
{
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v0 == 0;
  return (*(v3 + 8 * ((15 * v6) | 0x5C0u)))();
}

uint64_t sub_10001C5C0(int *a1)
{
  v2 = a1[1] - 1504884919 * ((((2 * a1) | 0x2E67B4E) - a1 + 2123154009) ^ 0x7AB08ABC);
  result = (*(*(&off_1001252D0 + (v2 ^ 0x48449A55)) + v2 - 1212452777))(*(&off_1001252D0 + (v2 ^ 0x48449A98)) - 12, sub_10003D730);
  v4 = **(&off_1001252D0 + (v2 & 0x952A6543));
  if (result)
  {
    v4 = 1958811539;
  }

  *a1 = v4;
  return result;
}

void sub_10001C69C(uint64_t a1)
{
  v2 = *(&off_1001252D0 + (byte_1000EC720[byte_1000E7D70[(11 * (dword_10013EB58 ^ 8 ^ qword_10013EA10))] ^ 0x31] ^ (11 * (dword_10013EB58 ^ 8 ^ qword_10013EA10))) - 59);
  v3 = *(v2 - 4);
  v4 = *(&off_1001252D0 + (byte_1000EC620[byte_1000E7C70[(11 * (v3 ^ qword_10013EA10 ^ 8))] ^ 0x24] ^ (11 * (v3 ^ qword_10013EA10 ^ 8))) - 63);
  v5 = &v9[v3 + *v4];
  v6 = 1405565963 * v5 - 0x435703E42A3502F8;
  v7 = 1405565963 * (v5 ^ 0xBCA8FC1BD5CAFD08);
  *(v2 - 4) = v6;
  *v4 = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EB58) ^ 8)) ^ byte_1000E7B70[byte_1000E4460[(11 * ((qword_10013EA10 - dword_10013EB58) ^ 8))] ^ 0x85]) + 40) - 8;
  (*&v8[8 * ((11 * ((v7 + v4) ^ 8)) ^ byte_1000EC620[byte_1000E7C70[(11 * ((v7 + v4) ^ 8))] ^ 0x12]) + 20640])(*(&off_1001252D0 + ((11 * ((v7 - v4) ^ 8)) ^ byte_1000EC720[byte_1000E7D70[(11 * ((v7 - v4) ^ 8))] ^ 0x51]) + 22) - 4, sub_1000189B0);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10001C884@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, int a7@<W8>)
{
  v12 = (v7 ^ a1) * v9;
  v13 = (a7 - 1);
  *(v8 + v13) = ((v13 & 0xF) * a6) ^ *(a5 + v13) ^ *(a2 + (v13 & 0xF)) ^ *((v13 & 0xF) + a4 + 1) ^ *(a3 + (v12 ^ v10) + (v13 & 0xF)) ^ 0x20;
  return (*(v11 + 8 * (((v13 == 0) * (v12 - 276)) ^ (v12 + 1897))))();
}

void sub_10001C8F0(_DWORD *a1)
{
  v1 = 675097751 * (((a1 | 0xF4C7A0EB) - (a1 & 0xF4C7A0EB)) ^ 0xB787857D);
  v2 = a1[2] + v1;
  v3 = a1[1] ^ v1;
  v4 = a1[3] - v1;
  v5 = a1[4] ^ v1;
  v6 = *a1 + v1;
  v7 = *(&off_1001252D0 + (v2 - 1960));
  *(v7 - 1) = v3;
  *v7 = v4;
  v7[1] = v5;
  v7[2] = v6;
  __asm { BRAA            X8, X17 }
}

void sub_10001CA68(uint64_t a1)
{
  v1 = 435584651 * ((1488727349 - (a1 | 0x58BC2D35) + (a1 | 0xA743D2CA)) ^ 0xCA71C89C);
  v2 = *(a1 + 16) - v1;
  __asm { BRAA            X15, X17 }
}

void sub_10001CB38(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (50899313 * ((-2 - ((a1 | 0xEDA68B5D) + (~a1 | 0x125974A2))) ^ 0x38925ED8));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10001CC20()
{
  v5 = v1 + 1576;
  v7 = (*(v2 + 20) + v0 - 1135317550) < 0xFFFFFFBF && (*(v3 + 20) & 1) == v5 - 2464;
  return (*(v4 + 8 * ((v7 * ((191 * (v5 ^ 0x9A6)) ^ 0x475)) | v5)))();
}

uint64_t sub_10001CDF4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  a8 = v9;
  a7 = a1 - (&a7 ^ 0xE6A8AC10) * v10 + v8 - 1550;
  v13 = (*(v11 + 8 * (a1 + v8 + 957)))(&a7);
  return (*(v11 + 8 * ((483 * (((a5 == 0) ^ (v12 + 64)) & 1)) ^ v12)))(v13);
}

uint64_t sub_10001CEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v16 = 675097751 * ((((v15 - 136) ^ 0x66C77523 | 0xB2DADEDF) - (((v15 - 136) ^ 0x66C77523) & 0xB2DADEDF)) ^ 0x975D8E6A);
  *(v10 + 1232) = v14;
  *(v15 - 136) = v16 ^ 0x4413498B;
  *(v15 - 120) = v16 - 233716451;
  *(v15 - 116) = v16 + a10 + 1270;
  v17 = (*(v12 + 8 * (a10 + 2569)))(v15 - 136);
  return (*(v12 + 8 * (((*(v15 - 132) != v13) * ((((a10 + 38) | 8) - v11) ^ 0xDF19538)) ^ a10)))(v17);
}

uint64_t sub_10001CF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, unsigned int a25)
{
  a25 = (v26 - 170) ^ (((226128498 - (&a22 | 0xD7A7272) + (&a22 | 0xF2858D8D)) ^ 0xAEC8D908) * v25);
  a22 = a14;
  a24 = &a21 + 4;
  v28 = (*(v27 + 8 * (v26 ^ 0x8F1u)))(&a22);
  return sub_10002EC0C(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_10001CFF8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  v54 = *(v52 + a1 * v51 + 36);
  LODWORD(STACK[0x2D4]) = v54;
  v55 = v54 + 421743469;
  v57 = v55 > -1571728705 && v55 < a50;
  return (*(v53 + 8 * ((v57 * ((v50 - 358) ^ 0xBED)) ^ v50)))();
}

uint64_t sub_10001D054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15)
{
  v18 = (v15 - 390) | 0x109;
  a15 = a12;
  a14 = v18 - ((2 * (&a14 & 0x2EAB68C0) - &a14 - 782985410) ^ 0x37FC3B2E) * v17 - 720;
  v19 = (*(v16 + 8 * (v18 + 1787)))(&a14);
  return sub_100029CA8(v19);
}

uint64_t sub_10001D0D8(uint64_t a1, unsigned int a2)
{
  v7 = v5 + v3 + (((v6 ^ 0x3C661251) - 1013322321) ^ ((v6 ^ 0x3315401E) - 857030686) ^ (((94 * ((a2 + 118906460) & 0xF8E9A2F1 ^ 0x2FB) - 164457276) ^ v6) + 164456336)) - 1567615782;
  v8 = v4 - 1758168221;
  v9 = (v8 < 0xE220EE51) ^ (v7 < 0xE220EE51);
  v10 = v7 > v8;
  if (v9)
  {
    v10 = v7 < 0xE220EE51;
  }

  return (*(v2 + 8 * (((2 * v10) | (16 * v10)) ^ a2)))();
}

uint64_t sub_10001D2F4@<X0>(int a1@<W8>, uint64_t a2, int a3, char a4, unsigned int a5, uint64_t a6, uint64_t *a7, int a8, char *a9)
{
  v11 = a1 + 27;
  v12 = 1037613739 * ((2 * (&a5 & 0x6D591C0) - &a5 - 114659777) ^ 0x28284340);
  a8 = (a1 - 2) ^ v12;
  a5 = v12 + 422728213;
  a6 = v9;
  a7 = &a2;
  a9 = &a4;
  v13 = (*(v10 + 8 * ((a1 + 27) ^ 0x8FD)))(&a5);
  return (*(v10 + 8 * ((1451 * (*(v9 + 24) == (((v11 ^ 0x67) + 1015) ^ 0x74C1BB70))) ^ v11)))(v13);
}

uint64_t sub_10001D438@<X0>(int8x16_t *a1@<X2>, uint64_t a2@<X3>, int a3@<W5>, unsigned int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q3>)
{
  v8 = (a2 + a4);
  v9 = vaddq_s8(vsubq_s8(v8[1], vandq_s8(vaddq_s8(v8[1], v8[1]), a6)), a5);
  *a1 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a6)), a5);
  a1[1] = v9;
  return (*(v7 + 8 * (a3 + v6 + 936)))();
}

uint64_t sub_10001D4A0()
{
  v8 = v7 - 136;
  v9 = 1504884919 * ((v7 - 1597298490 - 2 * ((v7 - 136) & 0xA0CB294E)) ^ 0x5B089E55);
  STACK[0x510] = *v6;
  *(v7 - 136) = v9 + v5 + 582806048;
  *(v7 - 132) = v3 + 1473 - v9;
  (*(v4 + 8 * (v3 + 1519)))(v7 - 136);
  v10 = *v6;
  v11 = 210068311 * (((v8 ^ 0x88A55C7182000100) & 0xE9AD5D798A39E138 | (v8 ^ 0x1050A08010460203) & 0x1652A28675C61EC7) ^ 0x1334836BC52999D4);
  *(v7 - 116) = (v3 + 353) ^ v11;
  STACK[0x510] = v11 ^ ((v2 ^ 0x339E6FB3F5EF7F7FLL) - 0x2012288200804013 + ((2 * v2) & 0x673CDF67EBDEFEFELL));
  STACK[0x508] = v10;
  (*(v4 + 8 * (v3 ^ 0xE33)))(v7 - 136);
  v12 = *v6;
  STACK[0x510] = (((2 * v1) & 0x3F7DFFF7FEDF7EDALL) + 0x73CD4735F5FF7FFFLL + ((((v3 - 805307616) & 0x3DF194EF) - 0x604100040E81D57DLL) ^ v1)) ^ (210068311 * ((((2 * (v7 - 136)) | 0x93095B54D75469D8) - (v7 - 136) + 0x367B52559455CB14) ^ 0x4245D2303CC5AE3BLL));
  STACK[0x508] = v12;
  *(v7 - 116) = (v3 + 353) ^ (210068311 * ((((2 * (v7 - 136)) | 0xD75469D8) - (v7 - 136) - 1806316780) ^ 0x3CC5AE3B));
  (*(v4 + 8 * (v3 + 1551)))(v7 - 136);
  v13 = *v6;
  v14 = 1504884919 * ((-1620509093 - (v8 | 0x9F68FE5B) + (v8 | 0x609701A4)) ^ 0x9B54B6BF);
  *(v7 - 136) = (v0 ^ 0xF3F3DDFB) + ((2 * v0) & 0xE7E7BBF6) + 784317984 + v14;
  *(v7 - 132) = v3 + 1473 - v14;
  STACK[0x510] = v13;
  v15 = (*(v4 + 8 * (v3 + 1519)))(v7 - 136);
  return (*(v4 + 8 * ((*(v7 - 120) == 1958853845) | (4 * (*(v7 - 120) == 1958853845)) | v3)))(v15);
}

uint64_t sub_10001D868@<X0>(int a1@<W1>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = v9 - 589;
  v18 = (v15 + 4 * v10);
  v19 = HIDWORD(v13) + (*v18 ^ a2) + HIDWORD(v11) + v12 * (*(*(a8 + 8) + 4 * v10) ^ a2);
  *(v18 - 1) = v19 + a2 - ((a1 + v17 - 432 - 1407) & (2 * v19));
  return (*(v14 + 8 * (((v10 + 1 == v8) * v16) ^ (v17 - 838))))();
}

void sub_10001D8E0(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = ((((2 * (v11 - 144)) | 0xC24224B2) - (v11 - 144) + 517926311) ^ 0x1700B675) * v10;
  *(v11 - 116) = a1 - v12 + 1407;
  *(v11 - 144) = v8 - v12 + (((a1 + 2011) | 0x21) ^ 0x75562E4E);
  *(v11 - 136) = v9;
  *(v11 - 128) = &a7;
  (*(v7 + 8 * (a1 + 2283)))(v11 - 144);
  JUMPOUT(0x100014A0CLL);
}

void sub_10001DCC4(uint64_t a1)
{
  v1 = *a1 - 1361651671 * ((2 * (a1 & 0x5984840E) - a1 + 645626865) ^ 0x6D10B78F);
  v2 = (*(a1 + 20) - 41 * ((2 * (a1 & 0xE) - a1 - 15) ^ 0x8F));
  v3 = *(&off_1001252D0 + v1 - 1631) - 8;
  (*&v3[8 * v1 + 7712])(*(&off_1001252D0 + v1 - 1755) - 4, sub_100042518);
  v4 = **(&off_1001252D0 + v1 - 1677);
  v5 = (435584651 * (((&v5 ^ 0x2040000 | 0xF4B0B461) + (&v5 ^ 0x5010B061 | 0xB4F4B9E)) ^ 0x3F26AA36)) ^ (v1 - 668);
  v6 = v4;
  (*&v3[8 * v1 + 7728])(&v5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10001DE44@<X0>(int a1@<W3>, char a2@<W8>)
{
  v7 = v3[1];
  v8 = (v5 + v2);
  *v8 = *v3;
  v8[1] = v7;
  return (*(v6 + 8 * ((((a2 & 0x60) - (v4 + 799) == -1838) * a1) ^ v4)))((v4 + 799) - 1838);
}

uint64_t sub_10001E124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v40 = 4 * (v35 - v37);
  v41 = -976034857 * ((*(*a27 + (*a28 & 0x18D83858)) ^ (a34 + v40)) & 0x7FFFFFFF);
  v42 = (v41 >> (v34 + 63)) ^ v41;
  v43 = -976034857 * v42;
  *(v38 + v40) = *(a34 + v40) ^ 0xCE79AFF8 ^ (*(v38 + v40) - 830885896 - ((2 * *(v38 + v40)) & 0x9CF35FF0)) ^ *(*(&off_1001252D0 + v34 - 1463) + HIBYTE(v43)) ^ *(*(&off_1001252D0 + v34 - 1306) + HIBYTE(v43) + 6) ^ *(*(&off_1001252D0 + v34 - 1336) + HIBYTE(v43) + 4) ^ (-472449024 * v42) ^ v43 ^ (1876530667 * HIBYTE(v43));
  return (*(v36 + 8 * ((29 * (((v39 == 1) ^ v34) & 1)) ^ (v34 + 307))))();
}

uint64_t sub_10001E4D4@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = *(v10 + 8);
  if ((a1 + a2 - 1) >= 0x7FFFFFFF)
  {
    v8 = -v4;
  }

  else
  {
    v8 = v3;
  }

  v11[1] = v8;
  *(v6 - 112) = v7;
  *(v6 - 128) = v11;
  *(v6 - 120) = v2 + 675097751 * ((((v6 - 128) | 0xB0A3B722) - ((v6 - 128) & 0xB0A3B722)) ^ 0xF3E392B4) - 1293;
  return (*(v5 + 8 * (v2 + 1056)))(v6 - 128);
}

void sub_10001E660()
{
  v2 = v1[623] - 623;
  if ((v0 - 623) < 0xFFFFFD90)
  {
    v2 = v1[623] - 622;
  }

  *v1 = v2 + 622;
  JUMPOUT(0x1000162B4);
}

uint64_t sub_10001E6C0()
{
  v4 = *(v1 + 56);
  *(v1 + 56) = ((v0 + 1995274389) & 0xFDD39EFF ^ v2) + v4;
  return (*(v3 + 8 * ((1720 * ((v4 - 515945089) < 0xFFFFFFFA)) ^ (v0 - 128))))();
}

uint64_t sub_10001E97C@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a1 < v3;
  v6 = a3 + 1;
  if (v5 == v6 > 0xFFFFFFFFFDCF2C69)
  {
    v5 = v6 + v3 < a1;
  }

  return (*(v4 + 8 * (((((a2 ^ v5) & 1) == 0) * ((a2 - 1214673409) & 0x486669DD ^ 0x156)) | a2)))();
}

uint64_t sub_10001EE68()
{
  v5 = *(v0 + 4 * (v3 - 1));
  *(v0 + 4 * v3) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v0 + 4 * v3)) - v3;
  v6 = v4 - 152;
  v7 = 210068311 * ((v4 + 0x76DC1965F8DD7866 - 2 * ((v4 - 152) & 0x76DC1965F8DD78FELL)) ^ 0xFD1D66FFAFB2E229);
  *(v6 + 8) = v3 + 1 + v7;
  v8 = v1 + 567462737 - 210068311 * ((v4 - 119703450 - 2 * ((v4 - 152) & 0xF8DD78FE)) ^ 0xAFB2E229);
  *(v4 - 152) = (v1 + 1699920679) ^ (210068311 * ((v4 - 119703450 - 2 * ((v4 - 152) & 0xF8DD78FE)) ^ 0xAFB2E229));
  *(v6 + 24) = 623 - v7;
  *(v4 - 120) = v8;
  *(v4 - 116) = ((v1 + 567462737) ^ 1) - 210068311 * ((v4 - 119703450 - 2 * ((v4 - 152) & 0xF8DD78FE)) ^ 0xAFB2E229);
  *(v4 - 136) = v8 - 99;
  *(v4 - 132) = (210068311 * ((v4 - 119703450 - 2 * ((v4 - 152) & 0xF8DD78FE)) ^ 0xAFB2E229)) ^ 1;
  v9 = (*(v2 + 8 * (v1 ^ 0xDBC)))(v4 - 152);
  return (*(v2 + 8 * *(v4 - 148)))(v9);
}

uint64_t sub_10001EF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  *(v8 + ((v7 - 170) ^ a2) + a4) = *(v6 + ((v7 - 170) ^ a2) + a4);
  v10 = v9 == a2;
  v11 = a2 + 8;
  v12 = v10;
  return (*(a3 + 8 * ((v12 * v4) ^ v5)))(a1, v11);
}

uint64_t sub_10001EF80@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 143681137 * (((&v6 | 0xCA283899) + (~&v6 | 0x35D7C766)) ^ 0x2C809488) - 602;
  v7 = a1;
  result = (*(v2 + 8 * (v3 + 1905)))(&v6);
  *(v1 + 40) = v4;
  return result;
}

uint64_t sub_10001F018@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  a7 = (v9 - 2084) ^ (843532609 * ((&a4 - 1218634535 - 2 * (&a4 & 0xB75D1CD9)) ^ 0xEB10485C));
  a4 = a3;
  a6 = a1;
  v10 = (*(v8 + 8 * (v9 + 245)))(&a4);
  return (*(v8 + 8 * (((a5 == ((v9 - 1648210544) & 0x623DABF7 ^ (v7 + 701))) * (((v9 - 2239) | 0x247) ^ 0x323)) ^ v9)))(v10);
}

uint64_t sub_10001F17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4 - 19;
  *(a1 + v3 + 4) = **(a2 + 8);
  v6 = v5 - 1632185981 + *(a2 + 4);
  v7 = v6 < 0x10BB29BF;
  v8 = v6 > 0x10BB29C0;
  if (v7)
  {
    v8 = v7;
  }

  return (*(a3 + 8 * ((29 * v8) ^ v5)))();
}

uint64_t sub_10001F2D0@<X0>(int a1@<W5>, unsigned __int8 *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v60 = (v59 - 256 + v56);
  *v60 = *a2;
  v61 = (v57 - 1368355826) & 0x518F743F;
  *(v60 + 1) = *(a2 + 1);
  *(v60 + 9) = *(a2 + 9);
  *(v60 + 13) = *(a2 + 13);
  v60[15] = a2[15];
  v63 = *a2;
  v62 = *(a2 + 1);
  *(v60 + 2) = v63;
  *(v60 + 3) = v62;
  v64 = (v61 - 1086) | 0x888;
  v65 = *(v58 + 8 * (v61 ^ 0x48B)) - 4;
  LOBYTE(v62) = *(v65 + (v60[5] ^ 0x56));
  v66 = 19 * v62 - 80;
  v67 = v66 & 0x1E ^ (((v61 - 62) | 0x88) - 34);
  v68 = (v66 ^ 0x50) & (2 * ((v66 ^ 0x50) & (2 * ((v66 ^ 0x50) & (2 * ((v66 ^ 0x50) & (2 * (v67 ^ (19 * v62) & 0xE)) ^ v67)) ^ v67)) ^ v67));
  LOBYTE(v62) = 76 * v62;
  v69 = v62 + 62;
  v70 = ((-64 - v62) & 0x94 | 0x40) ^ (v62 + 62) & 0xA4;
  v71 = v70 ^ v67 ^ v68 ^ (v69 ^ 0x14) & (2 * ((v69 ^ 0x14) & (2 * ((v69 ^ 0x14) & (2 * ((v69 ^ 0x14) & (2 * ((v69 ^ 0x16) & (2 * v70) ^ v70)) ^ v70)) ^ v70)) ^ v70));
  v72 = *(v58 + 8 * (v61 ^ 0x487));
  v73 = *(v72 + (v60[15] ^ 0x74));
  v74 = (v62 + 62) ^ v66 ^ (2 * v71);
  v75 = *(v72 + (v60[7] ^ 0xB3));
  v76 = ((v74 << 16) ^ 0xC9CBAFD5) & ((v75 - ((2 * v75) & 0x146) - 330628701) ^ 0x15B4FE56) ^ (v75 - ((2 * v75) & 0x146) - 330628701) & 0x2003502A;
  v77 = *(v58 + 8 * (v61 ^ 0x4F8));
  v78 = *(v77 + (v60[2] ^ 0xA4));
  v79 = *(v58 + 8 * (v61 - 1009));
  v80 = *(v79 + (v60[12] ^ 0x28));
  v81 = (((v80 ^ (v80 >> 3) ^ (v80 >> 2) ^ 0x50) << 24) ^ 0x219F643C) & ((v73 - ((2 * v73) & 8) + 548056836) ^ 0xDF754AF8) | (v73 - ((2 * v73) & 8) + 548056836) & 0x9BC3;
  v82 = *(v79 + (*v60 ^ 0xBBLL));
  v83 = *(v65 + (v60[13] ^ 0xCFLL));
  v84 = 19 * v83 - 70;
  v85 = v84 & 0x20 ^ 0x75;
  v86 = (((v78 >> 3) | 0x60) ^ v78 ^ 0xDE ^ (((v78 ^ 0xDE) >> 5) | 0x88)) << 8;
  v87 = (((v82 ^ (v82 >> 3) ^ (v82 >> 2) ^ 0xE) << 24) ^ 0x587C6B3A) & (v86 ^ 0xFF7E8EFB) | v86 & 0x9400;
  LOBYTE(v86) = 76 * v83;
  v88 = 76 * v83 - 120;
  v89 = ((116 - v86) & 0x4C | 3) ^ v88 & 0x94;
  v90 = *(v72 + (v60[11] ^ 0x19));
  v91 = *(v79 + (v60[8] ^ 4));
  v92 = (v88 ^ v84 ^ (2 * (v89 ^ v85 ^ (v84 ^ 0x46) & (2 * ((v84 ^ 0x46) & (2 * ((v84 ^ 0x46) & (2 * ((v84 ^ 0x46) & (2 * ((v84 ^ 0x46) & (2 * ((v84 ^ 0x46) & 0x26 ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ (v88 ^ 0x4C) & (2 * ((v88 ^ 0x4C) & (2 * ((v88 ^ 0x4C) & (2 * ((v88 ^ 0x4C) & (2 * ((v88 ^ 0x4C) & (2 * v89) ^ v89)) ^ v89)) ^ v89)) ^ v89))))) << 16;
  v93 = v90 - ((2 * v90) & 0x1A0) - 922399536;
  v94 = (((v91 ^ (v91 >> 3) ^ (v91 >> 2) ^ 0xEA) << 24) ^ 0x123BDAC2) & (v93 ^ 0x367AB733);
  v95 = v93 & 0x100053D;
  v254 = v72;
  v96 = (v87 ^ 0x19EE5227) & (*(v72 + (v60[3] ^ 0xF1)) ^ (a1 + 568)) | *(v72 + (v60[3] ^ 0xF1)) & 0xE2;
  v97 = *(v77 + (v60[6] ^ 0xAELL));
  v98 = (v76 ^ 0x4A05000) & (((v97 ^ (v97 >> 5) ^ (v97 >> 3)) << 8) ^ 0x25A7BE77);
  v99 = v76 & 0xC858F988;
  LOBYTE(v76) = *(v65 + (v60[1] ^ 0x72));
  v100 = 19 * v76 + 71;
  v101 = v100 & 0x31 | 0x4C;
  LOBYTE(v76) = 76 * v76 - 118;
  v102 = v76 & 0xB8 ^ 0xBB;
  v103 = v76 ^ 0x4A;
  v104 = (((v100 ^ v76 ^ (2 * (v101 ^ v102 ^ v103 & (2 * (v103 & (2 * (v103 & (2 * (v103 & (2 * (v76 & (2 * v76) & 0x14 ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ (v100 ^ 0x38) & (2 * ((v100 ^ 0x38) & (2 * ((v100 ^ 0x38) & (2 * ((v100 ^ 0x38) & (2 * ((v100 ^ 0x38) & (2 * ((v100 ^ 0x38) & (2 * v100) & 0x72 ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101))))) << 16) ^ 0x5CAF526C) & (v96 ^ 0x456DFEB1);
  v105 = *(v77 + (v60[10] ^ 0x41));
  v106 = v96 & 0xA350AD93;
  v107 = (((v105 ^ (v105 >> 5) ^ (v105 >> 3)) << 8) ^ 0xFF3BCDFF) & (v95 ^ 0x280921A3 ^ v94);
  v252 = v79;
  v253 = v77;
  v108 = v92 & 0x640000 ^ 0xF8FADCB9 ^ (v92 ^ 0xFF94FFFF) & (v81 ^ 0x34042686);
  v109 = (*(v77 + (v60[14] ^ 0xC9)) ^ (*(v77 + (v60[14] ^ 0xC9)) >> 5) ^ (*(v77 + (v60[14] ^ 0xC9)) >> 3)) << 8;
  v110 = *(v79 + (v60[4] ^ 0x51));
  v111 = (v110 ^ (v110 >> 3) ^ (v110 >> 2)) << 24;
  v112 = (v111 ^ 0xA1FFFFFF) & (v99 ^ 0x691AFF9E ^ v98);
  v255 = v65;
  LOBYTE(v60) = *(v65 + (v60[9] ^ 0x7DLL));
  LOBYTE(v99) = 19 * v60 - 27;
  LOBYTE(v96) = v99 & 1 ^ 0x97;
  LOBYTE(v60) = 76 * v60;
  v113 = -15 - v60;
  LOBYTE(v60) = v60 + 14;
  LOBYTE(v62) = (v113 & 0xC4 | 0x10) ^ v60 & 0xA4;
  LODWORD(v62) = (v60 ^ v99 ^ (2 * (v62 ^ v96 ^ (v60 ^ 0x44) & (2 * ((v60 ^ 0x44) & (2 * ((v60 ^ 0x44) & (2 * ((v60 ^ 0x44) & (2 * ((v60 ^ 0x46) & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ (v99 ^ 0x1A) & (2 * ((v99 ^ 0x1A) & (2 * ((v99 ^ 0x1A) & (2 * ((v99 ^ 0x1A) & (2 * ((v99 ^ 0x1A) & (2 * (((2 * v99) & 0x36 ^ 0x1A) & (v99 ^ 0x1A) ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ v96))))) << 16;
  v259 = v106 ^ 0x7FF61FDA ^ v104;
  LODWORD(a43) = v111 & 0x7B000000 ^ 0x9FF23991 ^ v112;
  LODWORD(a45) = v109 & 0xEA00 ^ 0xA9444F6E ^ v108 & (v109 ^ 0xFFFFC8FF);
  LODWORD(a41) = v62 & 0x740000 ^ 0xA51A2365 ^ (v62 ^ 0xFF39FFFF) & (v107 ^ 0xE8B9F90B);
  v258 = (STACK[0x470] + 7);
  LODWORD(v62) = *(v77 + (*(STACK[0x478] + 6) ^ 0xD3));
  LOWORD(v60) = *(v72 + (*(STACK[0x478] + 11) ^ 0x3FLL));
  v114 = v62 ^ 0x41 ^ (v62 >> 3) ^ (((v62 ^ 0x41) >> ((32 * v64) ^ 0x25)) | 0x98);
  LODWORD(v62) = *(v77 + (*(STACK[0x478] + 14) ^ 0xC3));
  LOWORD(v111) = ((v60 ^ 0x21) - 68) ^ ((v60 ^ 0x31) - 84) ^ ((v60 ^ 0xFFB8) + 35);
  LOWORD(v104) = v111 + ((2 * v60) & 0xFFC4 ^ (((2 * v60) & 0xFFC4) + 52) ^ (((2 * v60) & 0xFFC4 ^ 0x59) + 107) ^ 0xFFCC) + 19;
  v256 = v62 ^ (v62 >> 5) ^ (v62 >> 3);
  v115 = *(v72 + (*(STACK[0x478] + 7) ^ 0xEELL));
  LODWORD(v60) = ((v115 - ((2 * v115) & 0xEEEEEEEE) - 922520713) ^ 0x36F08C80) & ((v114 << 8) ^ 0x3FF2BDA7) ^ (v115 - ((2 * v115) & 0xEEEEEEEE) - 922520713) & 0xC0003A58;
  LOBYTE(v114) = (v111 ^ (2 * v111)) & 2;
  v116 = *(v65 + (*(STACK[0x478] + 13) ^ 0xFLL));
  v117 = 19 * v116 - 83;
  v118 = v117 & 0x57 ^ 2;
  v119 = v117 ^ (2 * ((v117 ^ 0x52) & (2 * ((v117 ^ 0x52) & (2 * ((v117 ^ 0x52) & (2 * ((v117 ^ 0x52) & (2 * ((v117 ^ 0x52) & (2 * ((v117 ^ 2) & (2 * v118) ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118));
  v120 = ((-58 * v116) ^ 0x7F) - 20 * v116;
  v121 = v120 + 1;
  v120 -= 63;
  v122 = v120 & 0x72 ^ 0x59;
  v123 = (v120 ^ (2 * (v121 & (2 * (v120 & (2 * (v120 & (2 * (v120 & (2 * (v120 & (2 * v122) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122))) & 0x6A;
  v124 = (((v119 ^ 0x3D) + 74) ^ ((v119 ^ 0xFFFFFFF6) - 125) ^ ((v119 ^ 0x29) + 94)) + (((v123 ^ 0x31) + 24) ^ ((v123 ^ 0x49) + 112) ^ ((v123 ^ 0x1A) + 61)) + 63;
  v125 = v124 & 0x5D ^ 0xFFFFFFFC;
  LOBYTE(v114) = ((v124 ^ (2 * ((v124 ^ 0x64) & (2 * ((v124 ^ 0x64) & (2 * ((v124 ^ 0x64) & (2 * ((v124 ^ 0x64) & (2 * ((v124 ^ 0x64) & (2 * (v124 & (2 * v124) & 0x4A ^ v125)) ^ v125)) ^ v125)) ^ v125)) ^ v125)) ^ v125)) ^ 0x5D) << (v114 ^ 2) << v114) ^ v119;
  v126 = *(v79 + (*(STACK[0x478] + 8) ^ 0xAALL));
  LOWORD(v124) = v104 & 0xFFA2 | 1;
  LOWORD(v104) = v104 ^ (2 * ((v104 ^ 0x20) & (2 * ((v104 ^ 0x20) & (2 * ((v104 ^ 0x20) & (2 * ((v104 ^ 0x20) & (2 * ((v104 ^ 0x20) & (2 * (v104 & (2 * v124) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124));
  v127 = (v104 ^ 0xFF090005) & (((v126 ^ (v126 >> 3) ^ (v126 >> 2)) << 24) ^ 0xE80900B7) ^ (v104 & 0x48 | 0x80062700);
  v128 = *(v65 + (*(STACK[0x478] + 1) ^ 0xDLL));
  v129 = 19 * v128 + 125;
  v130 = v129 ^ 2;
  v128 *= 76;
  v131 = v128 + 8;
  v132 = v129 ^ (v128 + 8);
  v133 = (v129 & 0xFFFFFF83 | 0x44) ^ v129 & 0xFFFFFF88;
  v134 = v128 & 4 ^ 0xFFFFFFAD;
  v135 = v132 ^ (2 * (v133 ^ v134 ^ (v131 ^ 0x4C) & (2 * ((v131 ^ 0x4C) & (2 * ((v131 ^ 0x4C) & (2 * ((v131 ^ 0x4C) & (2 * ((v131 ^ 0x4C) & (2 * v134) ^ v134)) ^ v134)) ^ v134)) ^ v134)) ^ v130 & (2 * (v130 & (2 * (v130 & (2 * (v130 & (2 * (v130 & (2 * (v130 & (2 * v133) ^ v133)) ^ v133)) ^ v133)) ^ v133)) ^ v133)))) ^ 0xFFFFFFD2;
  v136 = (((v135 >> 4) & 0x35E | 0xA0) ^ 0xFB9F14E7659FFC0ALL) & ((*(v72 + (*(STACK[0x478] + 3) ^ 0x87)) << 12) ^ 0xFB9F14E765928CAELL) ^ (((v135 & 0x10) != 0) | 0x400090812418100);
  v257 = (v136 ^ 0xE01088204050) & ((v135 << 28) ^ 0x810EF1765EAB45F5) ^ v136 & 0x7E910C893154B80ALL;
  LODWORD(v136) = *(v77 + (*(STACK[0x478] + 10) ^ 8));
  v137 = v136 ^ (v136 >> 5) ^ (v136 >> 3);
  LODWORD(v136) = ((2 * *(STACK[0x478] + 4)) & 0x1B6) + (*(STACK[0x478] + 4) ^ 0xFFB3D6DB);
  v138 = (2 * ((((v136 + 1591732735) ^ 0x8EBB236) + 696749332) ^ (v136 + 1591732735) ^ (((v136 + 1591732735) ^ 0x6F016EBD) + 1315787161) ^ (((v136 + 1591732735) ^ 0x2E) + 12) ^ (((v136 + 1591732735) ^ 0x7F) + 91))) & 0x1A4;
  LODWORD(v136) = v136 - (((v138 ^ 0x805DF92D) - 690675545) ^ (v138 - 1723000308) ^ ((v138 ^ 0xF7B7C8C3) - 1589702327)) + 1855393089;
  LODWORD(v136) = *(v79 + (v136 ^ ((v136 ^ 0x570511D1) - 1086790347) ^ ((v136 ^ 0x4ACF2F30) - 1561142314) ^ ((v136 ^ 0x35B3C204) - 577882398) ^ ((v136 ^ 0x3FBBF7FF) - 679083237) ^ 0x17C20B6B));
  v139 = *(v79 + (*(STACK[0x478] + 12) ^ 0x9FLL));
  LODWORD(v72) = v139 ^ (v139 >> 3) ^ (v139 >> 2) ^ 0xAD;
  v140 = *(v77 + (*(STACK[0x478] + 2) ^ 0x3FLL));
  LOBYTE(v131) = *(v65 + (*(STACK[0x478] + 9) ^ 0x9DLL));
  LOBYTE(v132) = 19 * v131 + 103;
  LOBYTE(v77) = v132 & 0xD ^ 0xDA;
  v141 = (v257 >> 12) & 0x9353990C ^ ((v140 ^ (v140 >> 5) ^ (v140 >> 3)) << 8) ^ ((v257 << 20) ^ 0x385C66F3) & ((v257 >> 12) ^ 0x20095449);
  LOBYTE(v135) = 76 * v131 - 32;
  LOBYTE(v131) = v135 & 0xD0 ^ 0x36;
  LOBYTE(v62) = v77 ^ v131 ^ (v135 ^ 0x74) & (2 * ((v135 ^ 0x74) & (2 * ((v135 ^ 0x74) & (2 * ((v135 ^ 0x74) & (2 * ((v135 ^ 0x74) & (2 * v131) ^ v131)) ^ v131)) ^ v131)) ^ v131)) ^ (v132 ^ 0x18) & (2 * ((v132 ^ 0x18) & (2 * ((v132 ^ 0x18) & (2 * ((v132 ^ 0x18) & (2 * ((v132 ^ 0x18) & (2 * (v132 & (2 * v132) & 0x32 ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77));
  v142 = *(v254 + (*(STACK[0x478] + 15) ^ 0x4BLL));
  LOBYTE(v77) = *(v65 + (*(STACK[0x478] + 5) ^ 0xF7));
  LOBYTE(v132) = v132 ^ v135 ^ (2 * v62);
  LOBYTE(v62) = 19 * v77 + 47;
  LOBYTE(v135) = v62 & 0x65 ^ 0xCA;
  LODWORD(v72) = (((v114 << 16) ^ 0x35212573) & ((v256 << 8) ^ 0x3FFFE177) & 0x21493600 | (v256 << 8) & 0x1200) ^ 0x643F7D2D ^ ((((v114 << 16) ^ 0x35212573) & ((v256 << 8) ^ 0x3FFFE177) | (v256 << 8) & 0xDA00) ^ 0xCAB08000) & ((v72 << 24) ^ 0x2AB6C953);
  v143 = v72 & ((v142 - ((2 * v142) & 0xFFFFFFF3) - 1846564615) ^ 0x6E105786) ^ (v142 - ((2 * v142) & 0xFFFFFFF3) - 1846564615) & 0x682D81;
  LOBYTE(v65) = 76 * v77 - 6;
  LOBYTE(v106) = v65 & 0xEA ^ 8;
  LOBYTE(v62) = v65 ^ v62 ^ (2 * (v106 ^ v135 ^ (v65 ^ 0x58) & (2 * ((v65 ^ 0x58) & (2 * ((v65 ^ 0x58) & (2 * ((v65 ^ 0x58) & (2 * ((v65 ^ 0x58) & (2 * v106) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ (v62 ^ 0x50) & (2 * ((v62 ^ 0x50) & (2 * ((v62 ^ 0x50) & (2 * ((v62 ^ 0x50) & (2 * ((v62 ^ 0x50) & (2 * (v62 & (2 * v62) & 0x22 ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ v135))));
  LODWORD(v65) = *(v79 + (*STACK[0x478] ^ 0xD6));
  LODWORD(v62) = ((((v62 << 16) ^ 0xFF74C12E) & (((v136 ^ (v136 >> 3) ^ (v136 >> 2) ^ 0x2F) << 24) ^ 0xBCF5C12E) | (v62 << 16) & 0xA0000) ^ 0x7379303E) & (v60 ^ 0xDCAA7);
  v144 = v60 & 0x7B720EEF;
  LODWORD(v60) = (((v65 ^ 0xC5) >> 2) | ((v65 ^ 0xFFFFFFC5) << 6)) ^ (((v65 ^ (v65 >> 1)) >> 4) & 0x3F | ((v65 ^ ~(v65 >> 1)) >> 2 << 6)) ^ 0x57;
  LODWORD(a37) = v141 ^ 0x10D2208 ^ (((v60 & 0xC0) << 18) | (v60 << 26));
  v145 = *(&off_1001252D0 + v64 - 2120) - 12;
  v146 = *(&off_1001252D0 + (v64 ^ 0x88C)) - 12;
  v147 = v62 ^ v144;
  v148 = *&v146[4 * (v114 ^ 3)] - 176851826;
  LODWORD(v65) = (v148 ^ 0x7661E6D0) & (2 * (v148 & 0xB6818684)) ^ v148 & 0xB6818684 ^ (((((v148 & 0xB6818684) >> 29) & 1) << 30) | 0x804000);
  LODWORD(v62) = (2 * (v148 ^ 0x7661E6D0)) & 0xC0E06054 ^ 0x40202054 ^ ((2 * (v148 ^ 0x7661E6D0)) ^ 0x81C0C0A8) & (v148 ^ 0x7661E6D0);
  LODWORD(v65) = (4 * v65) & 0xC0E06050 ^ v65 ^ ((4 * v65) ^ 0x2010000) & v62;
  LODWORD(v62) = (4 * v62) & 0xC0E06054 ^ 0xC0606004 ^ ((4 * v62) ^ 0x3818150) & v62;
  LODWORD(v65) = (16 * v65) & 0xC0E06050 ^ v65 ^ ((16 * v65) ^ 0x8040000) & v62;
  LODWORD(v62) = (16 * v62) & 0xC0E06050 ^ 0xC0E06014 ^ ((16 * v62) ^ 0xE060540) & v62;
  LODWORD(v65) = v65 ^ 0x40202054 ^ (v65 << 8) & 0xC0E06000 ^ ((v65 << 8) ^ 0x80400000) & v62;
  LODWORD(v62) = (v65 << 16) & 0x40E00000 ^ v65 ^ ((v65 << 16) ^ 0x60540000) & ((v62 << 8) & 0xC0E00000 ^ ((v62 << 8) ^ 0x60600000) & v62 ^ 0x800000);
  v149 = v127 ^ (v137 << 8);
  v150 = v149 ^ (v132 << 16);
  LODWORD(v136) = *&v145[4 * (BYTE3(a37) ^ 0x52)] - (((BYTE3(a37) ^ 0x7DC91ABB) - 1820181385) ^ ((BYTE3(a37) ^ 0x7F2B08D7) - 1855967717) ^ ((BYTE3(a37) ^ 0x5D88286A) - 1279062360)) + 252966477;
  v151 = *(&off_1001252D0 + v64 - 2102) - 4;
  LODWORD(v65) = *&v151[4 * (v115 ^ 0xCE)] - (((v147 ^ 0x73EBBE66) - 656197849) ^ ((v147 ^ 0xABCF393C) + 13086845) ^ ((v147 ^ 0xF9E5F1CA) + 1391294603));
  v152 = *(&off_1001252D0 + (v64 ^ 0x8F2)) - 8;
  LODWORD(v65) = v65 + 31400297;
  LODWORD(v72) = BYTE3(v72);
  v153 = *&v152[4 * (BYTE1(v149) ^ 0xE)] ^ v148 ^ (2 * v62) ^ v136 ^ ((v136 ^ 0xC56B85D6) + 1734779817) ^ ((v136 ^ 0x9DA579DF) + 1067999138) ^ ((v136 ^ 0xBAC2C277) + 416277514) ^ ((v136 ^ 0xBFFEE7FF) + 502514050) ^ v65 ^ ((v65 ^ 0x50941AAA) - 662780722) ^ ((v65 ^ 0xB819AD96) + 821261298) ^ ((v65 ^ 0x6877E55B) - 526566595) ^ ((v65 ^ 0xF7EF73FF) + 2131078553);
  LODWORD(v77) = *&v146[4 * (((v141 ^ 0x10D2208u) >> 16) ^ 0x8C)] - 579705644;
  LODWORD(v62) = *&v145[4 * (HIBYTE(v147) ^ 0x3B)] - (((HIBYTE(v147) ^ 0x5E34CE64) + 1279444313) ^ ((HIBYTE(v147) ^ 0x7A546991) + 1747083950) ^ ((HIBYTE(v147) ^ 0x7B0A9D9A) + 1769772711)) - 1567195907;
  LODWORD(v65) = *&v151[4 * (v104 ^ 0xC)] - (((v127 ^ 0x5403334F) + 290777545) ^ ((v127 ^ 0xA8357A3F) - 312303431) ^ ((v127 ^ 0xDDF73FD0) - 1734285992)) - 1783395542;
  LODWORD(v62) = v77 ^ *&v152[4 * (v256 ^ 0x37)] ^ ((v77 ^ 0x72083B58) - 1131631258) ^ ((v77 ^ 0x6C4A0450) - 1563520402) ^ ((v77 ^ 0x51572931) - 1613512947) ^ ((v77 ^ 0x7E6E7FFB) - 1326782009) ^ v65 ^ ((v65 ^ 0x6ED4F807) - 1606952709) ^ ((v65 ^ 0xB8344369) + 1993827221) ^ ((v65 ^ 0x9C839AD3) + 1382070831) ^ ((v65 ^ 0x7B7FFEBF) - 1248010685) ^ v62 ^ ((v62 ^ 0x50EF37CB) - 93682786) ^ ((v62 ^ 0xC856C2D6) + 1658025601) ^ ((v62 ^ 0xB33DC15B) + 431518990) ^ ((v62 ^ 0x7EFE7FEF) - 730084422);
  v154 = *&v145[4 * (HIBYTE(v127) ^ 0x28)] - (((HIBYTE(v127) ^ 0xF3139F33) + 2014272293) ^ ((HIBYTE(v127) ^ 0x5F48B5F0) - 732663320) ^ ((HIBYTE(v127) ^ 0xF33110BF) + 2016269481)) + 306886811;
  LODWORD(v136) = (v154 ^ 0xE2AE25DC) & (2 * (v154 & 0xC22C45D1)) ^ v154 & 0xC22C45D1;
  LODWORD(v65) = ((2 * (v154 ^ 0xE6F626DC)) ^ 0x49B4C61A) & (v154 ^ 0xE6F626DC) ^ (2 * (v154 ^ 0xE6F626DC)) & 0x24DA630C;
  LODWORD(v77) = v65 ^ 0x244A2105;
  LODWORD(v65) = (v65 ^ 0x900208) & (4 * v136) ^ v136;
  LODWORD(v136) = ((4 * v77) ^ 0x93698C34) & v77 ^ (4 * v77) & 0x24DA630C;
  LODWORD(v65) = (v136 ^ 0x480000) & (16 * v65) ^ v65;
  LODWORD(v136) = ((16 * (v136 ^ 0x24926309)) ^ 0x4DA630D0) & (v136 ^ 0x24926309) ^ (16 * (v136 ^ 0x24926309)) & 0x24DA6300;
  LODWORD(v65) = v65 ^ 0x24DA630D ^ (v136 ^ 0x4822000) & (v65 << 8);
  LODWORD(v136) = (v65 << 16) & 0x24DA0000 ^ v65 ^ ((v65 << 16) ^ 0x630D0000) & (((v136 ^ 0x2058430D) << 8) & 0x24DA0000 ^ 0x24980000 ^ (((v136 ^ 0x2058430D) << 8) ^ 0x5A630000) & (v136 ^ 0x2058430D));
  LODWORD(v65) = *&v146[4 * ((((BYTE2(v147) ^ 0x985FB9B6) - 247336697) ^ ((BYTE2(v147) ^ 0x90276169) - 113694246) ^ ((BYTE2(v147) ^ 0x878D802) + 1634111667)) - ((((v147 >> 15) & 0xF8 ^ 0xE5E73DEA) + 1975682796) ^ (((v147 >> 15) & 0xF8 ^ 0x89449108) + 425798154) ^ (((v147 >> 15) & 0xF8 ^ 0x6CA3AC5A) - 58321060))) + 2619199264] + 363223862;
  LODWORD(a38) = v143;
  v155 = *&v151[4 * (v142 ^ 0x4B)] - (((v143 ^ 0x12C78884) - 1234137769) ^ ((v143 ^ 0x30DEDDE6) - 1805002699) ^ ((v143 ^ 0x3D8237F) - 1485887826));
  v156 = v65 ^ v154 ^ *&v152[4 * ((((v257 >> 12) & 0x990C ^ (((v140 ^ (v140 >> 5)) ^ (v140 >> 3)) << 8) ^ ((v257 >> 12) ^ 0x5449) & 0x66F3) >> 8) ^ 0xCA)] ^ ((v65 ^ 0xF38219A4) + 1708295808) ^ ((v65 ^ 0x5212A24F) - 1002291819) ^ ((v65 ^ 0x276124B0) - 1322140820) ^ ((v65 ^ 0xEF5EFF7F) + 2030985381) ^ (2 * v136) ^ (v155 - 751075324) ^ (((v155 - 751075324) ^ 0xC40E991F) + 1983146709) ^ (((v155 - 751075324) ^ 0x95B350E4) + 663331632) ^ (((v155 - 751075324) ^ 0x63973838) - 777139212) ^ (((v155 - 751075324) ^ 0x7FEFFDF7) - 841675203);
  HIDWORD(a35) = v150;
  LODWORD(v136) = *&v145[4 * (v72 ^ 0x1C)] + (((v72 ^ 0x2892E0DB) - 1857923947) ^ ((v72 ^ 0xFEF59544) + 1193615628) ^ ((v72 ^ 0x890D4FD7) + 819854233)) - ((((2 * v72) ^ 0x49F080C9) - 666668392) ^ (((2 * v72) ^ 0xFFF65167) + 1850057530) ^ (((2 * v72) ^ 0x8D2A53E) - 1721673887)) - 1161027974;
  LODWORD(v142) = *&v146[4 * (BYTE2(v150) ^ 0x31)] - 975767966;
  LODWORD(v72) = (v142 ^ 0xE62CC437) & (2 * (v142 & 0xE62004B0)) ^ v142 & 0xE62004B0;
  LODWORD(v65) = ((2 * (v142 ^ 0xEE6CC457)) ^ 0x109981CE) & (v142 ^ 0xEE6CC457) ^ (2 * (v142 ^ 0xEE6CC457)) & 0x84CC0E6;
  LODWORD(v77) = v65 ^ 0x8444021;
  LODWORD(v65) = (v65 ^ 0xC0) & (4 * v72) ^ v72;
  LODWORD(v72) = ((4 * v77) ^ 0x2133039C) & v77 ^ (4 * v77) & 0x84CC0E4;
  LODWORD(v65) = (v72 ^ 0x80) & (16 * v65) ^ v65;
  LODWORD(v72) = ((16 * (v72 ^ 0x84CC063)) ^ 0x84CC0E70) & (v72 ^ 0x84CC063) ^ (16 * (v72 ^ 0x84CC063)) & 0x84CC0E0;
  LODWORD(v65) = v65 ^ 0x84CC0E7 ^ (v72 ^ 0x4C0000) & (v65 << 8);
  LODWORD(a36) = v147;
  v157 = *&v151[4 * ((v257 >> 12) ^ 0xCLL)] - ((v257 >> 12) & 0xC ^ ((v257 >> 12) ^ 0x49) & 0xF3 ^ 0x21C176E4);
  LODWORD(v65) = v142 ^ *&v152[4 * (BYTE1(v147) ^ 0x97)] ^ (v157 - ((2 * v157) & 0x2305C5EA) - 1853693195) ^ (2 * ((v65 << 16) & 0x84C0000 ^ v65 ^ ((v65 << 16) ^ 0x40E70000) & (((v72 ^ 0x800C087) << 8) & 0x84C0000 ^ (((v72 ^ 0x800C087) << 8) ^ 0x4CC00000) & (v72 ^ 0x800C087) ^ 0xC0000))) ^ v136 ^ ((v136 ^ 0xA95DB25) - 2022375062) ^ ((v136 ^ 0xA3214FF6) + 784438715) ^ ((v136 ^ 0xA6544F57) + 733254940) ^ ((v136 ^ 0x7DFFFE37) - 266394500);
  v158 = v65 ^ 0x15AC4238;
  v159 = v62 ^ 0x771867D1;
  v160 = v65 ^ 0xEB157BA8;
  LODWORD(v65) = (v62 ^ 0x771867D1) >> 24;
  v161 = *&v146[4 * (BYTE2(v158) ^ 0xC5)];
  v162 = (__ROR4__(__ROR4__(v161, 7) ^ 0x620ACBDA, 25) ^ 0xAE931623) + ((2 * v161) & 0x57EDF624);
  v163 = HIBYTE(v160);
  LODWORD(v62) = v162 ^ *&v152[4 * (BYTE1(v156) ^ 0x16)] ^ (*&v151[4 * (v62 ^ 1)] - (v62 ^ 0x21C176A8)) ^ (*&v145[4 * (((v153 ^ 0x89B05E7F) >> 24) ^ 0x8A)] - (((v153 ^ 0x89B05E7F) >> 24) ^ 0x5F6A3ADE));
  LODWORD(v65) = *&v152[4 * (BYTE1(v158) ^ 0x6E)] ^ (*&v145[4 * (v65 ^ 0x8A)] - (v65 ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v156 ^ 0x21)] - (v156 ^ 0x21C17688)) ^ (*&v146[4 * ((v153 ^ 0x89B05E7F) >> 16)] - 1409877230);
  LODWORD(v142) = *&v145[4 * (HIBYTE(v160) ^ 0x8A)];
  v164 = *&v152[4 * ((v153 ^ 0x5E7F) >> 8)] ^ (*&v146[4 * ((BYTE2(v159) - (BYTE2(v159) ^ 0x7C)) ^ 0xFFFFFFF8) + 4 * BYTE2(v159)] - 1409877230) ^ (*&v151[4 * (v158 ^ 0x40)] - (v160 ^ 0x21C17679)) ^ (*&v145[4 * (((v156 ^ 0xC33D41F1) >> 24) ^ 0x8A)] - (((v156 ^ 0xC33D41F1) >> 24) ^ 0x5F6A3ADE));
  v165 = *&v152[4 * BYTE1(v159)] ^ (*&v146[4 * (BYTE2(v156) ^ 0x41)] - 1409877230) ^ (v142 - (v163 ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v153 ^ 0xAF)] - (v153 ^ 0x21C17606));
  LODWORD(v77) = *&v152[4 * (BYTE1(v164) ^ 0xBB)];
  v166 = v77 & 0xFFFFFFBF ^ (*&v146[4 * (BYTE2(v165) ^ 0x2C)] - 1409877230) ^ (v77 & 0x40 | 0x94F5230B) ^ (*&v145[4 * (((v62 ^ 0xC29E1175) >> 24) ^ 0x8A)] - (((v62 ^ 0xC29E1175) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v65 ^ 0xE0)] - (v65 ^ 0x21C17649));
  v167 = *&v152[4 * (BYTE1(v165) ^ 0x4F)] ^ (*&v146[4 * (BYTE2(v62) ^ 0xE2)] - 1409877230) ^ (*&v145[4 * (((v65 ^ 0xF7D9A230) >> 24) ^ 0x8A)] - (((v65 ^ 0xF7D9A230) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v164 ^ 0x80)] - (v164 ^ 0x21C17629));
  v168 = *&v152[4 * (BYTE1(v62) ^ 0x46)] ^ (*&v151[4 * (v165 ^ 0xA8)] - (v165 ^ 0x21C17601)) ^ (*&v145[4 * (((v164 ^ 0xCFECEC50) >> 24) ^ 0x8A)] - (((v164 ^ 0xCFECEC50) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (((v65 ^ 0xF7D9A230) >> 16) - (((v65 ^ 0xF7D9A230) >> 15) & 0xF8)) + 496] - 1409877230);
  v169 = *&v152[4 * ((v65 ^ 0xA230) >> 8)] ^ (*&v146[4 * (BYTE2(v164) ^ 0x90)] - 1409877230) ^ (*&v151[4 * (v62 ^ 0xA5)] - (v62 ^ 0x21C1760C)) ^ (*&v145[4 * (((v165 ^ 0x13501878u) >> 24) ^ 0x8A)] - (((v165 ^ 0x13501878u) >> 24) ^ 0x5F6A3ADE));
  BYTE2(v72) = BYTE2(v168) ^ 0x7F;
  LODWORD(v62) = (v168 ^ 0xF97FC1A2) >> 24;
  v170 = *&v152[4 * ((v168 ^ 0xC1A2) >> 8)] ^ (*&v146[4 * ((v169 ^ 0x1DF67BEA) >> 16)] - 1409877230) ^ (*&v151[4 * (v167 ^ 0x57)] - (v167 ^ 0x21C176FE)) ^ (*&v145[4 * (((v166 ^ 0xFB60CFE9) >> 24) ^ 0x8A)] - (((v166 ^ 0xFB60CFE9) >> 24) ^ 0x5F6A3ADE));
  LODWORD(v77) = (v169 ^ 0x1DF67BEA) >> 24;
  v171 = v62 ^ 0xDE;
  LODWORD(v173) = __ROR4__(*&v152[4 * (BYTE1(v169) ^ 0x2C)] ^ 0x94F5230B ^ (*&v145[4 * (((v167 ^ 0xF40D6B87) >> 24) ^ 0x8A)] - (((v167 ^ 0xF40D6B87) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v168 ^ 0x72)] - (v168 ^ 0x21C176DB)) ^ (*&v146[4 * ((((v166 ^ 0xFB60CFE9) >> 16) - (((v166 ^ 0xFB60CFE9) >> 16) ^ 0x7C)) ^ 0xFFFFFFF8) + 4 * ((v166 ^ 0xFB60CFE9) >> 16)] - 1409877230), 24) ^ 0xF7A7AFD3;
  HIDWORD(v173) = v173;
  v172 = v173 >> 8;
  v174 = *&v152[4 * ((v166 ^ 0xCFE9) >> 8)] ^ (*&v146[4 * ((v167 ^ 0xF40D6B87) >> 16)] - 1409877230) ^ (*&v151[4 * (v169 ^ 0x3A)] - (v169 ^ 0x21C17693)) ^ (*&v145[4 * (v62 ^ 0x8A)] - (v62 ^ 0x5F6A3ADE));
  v175 = v170 ^ 0xFBC8137;
  v176 = *&v152[4 * ((((v167 ^ 0x6B87) >> 8) - 1853103297 - (((v167 ^ 0xF40D6B87) >> 7) & 0x7E)) ^ 0x918BE368)] ^ (*&v146[4 * BYTE2(v72)] - 1409877230) ^ (*&v145[4 * (v77 ^ 0x8A)] - ((1600797406 - (v77 & 2)) ^ v77 & 0xFFFFFFFD)) ^ (*&v151[4 * (v166 ^ 0x39)] - (v166 ^ 0x21C17690));
  v177 = v176 ^ 0x25BF358A;
  v178 = *&v152[4 * (BYTE1(v174) ^ 0x25)] ^ (*&v145[4 * (HIBYTE(v175) ^ 0x8A)] - (HIBYTE(v175) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (((v176 ^ 0x25BF358Au) >> 16) ^ 0x7C)] - 1409877230) ^ (*&v151[4 * (BYTE1(v173) ^ 0xD3)] - (BYTE1(v173) ^ 0x21C1767A));
  if (((v170 ^ 0xFBC8137) & 0x3F0000) != 0)
  {
    v179 = (v170 ^ 0xFBC8137) >> 16;
  }

  else
  {
    v179 = ((v170 ^ 0xFBC8137) >> 16) & 0xC0;
  }

  v180 = *&v152[4 * BYTE1(v177)] ^ (*&v151[4 * (v174 ^ 0x37)] - (v174 ^ 0x21C1769E)) ^ (*&v146[4 * (v179 ^ 0x7C)] - 1409877230) ^ (*&v145[4 * (((v172 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)] - (((v172 ^ 0x1DD0DB03u) >> 24) ^ 0x5F6A3ADE));
  v181 = *&v152[4 * BYTE1(v175)] ^ (*&v151[4 * (v176 ^ 0x5A)] - (v176 ^ 0x21C176F3)) ^ (*&v145[4 * (((v174 ^ 0xCC4472E7) >> 24) ^ 0x8A)] - (((v174 ^ 0xCC4472E7) >> 24) ^ 0x5F6A3ADE)) ^ (*&v146[4 * (BYTE2(v172) ^ 0xAC)] - 1409877230);
  v182 = (*&v146[4 * (BYTE2(v174) ^ 0x38)] - 1409877230) ^ (*&v145[4 * (HIBYTE(v177) ^ 0x8A)] - (HIBYTE(v177) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v170 ^ 0xE7)] - (v170 ^ 0x21C1764E)) ^ *&v152[4 * (BYTE1(v172) ^ 0x8C)];
  v183 = *&v152[4 * ((v181 ^ 0xF582) >> 8)] ^ (*&v146[4 * ((v182 ^ 0x28B1C8AFu) >> 16)] - 1409877230) ^ (*&v145[4 * (((v178 ^ 0x3AB33250u) >> 24) ^ 0x8A)] - (((v178 ^ 0x3AB33250u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v180 ^ 0x82)] - (v180 ^ 0x21C1762B));
  v184 = (v182 ^ 0x28B1C8AFu) >> 24;
  v185 = (*&v146[4 * (BYTE2(v178) ^ 0xCF)] - 1409877230) ^ *&v152[4 * ((v182 ^ 0xC8AF) >> 8)] ^ (*&v151[4 * (v181 ^ 0x52)] - (v181 ^ 0x21C176FB)) ^ (*&v145[4 * (((v180 ^ 0x94240652) >> 24) ^ 0x8A)] - (((v180 ^ 0x94240652) >> 24) ^ 0x5F6A3ADE));
  v186 = (*&v146[4 * ((v180 ^ 0x94240652) >> 16)] - 1409877230) ^ (*&v145[4 * (((v181 ^ 0x57A0F582) >> 24) ^ 0x8A)] - (((v181 ^ 0x57A0F582) >> 24) ^ 0x5F6A3ADE)) ^ *&v152[4 * ((v178 ^ 0x3250) >> 8)] ^ (*&v151[4 * (v182 ^ 0x7F)] - (v182 ^ 0x21C176D6));
  v187 = (*&v146[4 * (BYTE2(v181) ^ 0xDC)] - 1409877230) ^ (*&v145[4 * (v184 ^ 0x8A)] - (v184 ^ 0x5F6A3ADE)) ^ *&v152[4 * (BYTE1(v180) ^ 0x51)] ^ (*&v151[4 * (v178 ^ 0x80)] - (v178 ^ 0x21C17629));
  v188 = BYTE2(v186) ^ 0xB2;
  v189 = (*&v146[4 * ((v187 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ *&v152[4 * ((v186 ^ 0x7C12) >> 8)] ^ (*&v145[4 * (((v183 ^ 0xDBAE4527) >> 24) ^ 0x8A)] - (((v183 ^ 0xDBAE4527) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v185 ^ 0x10)] - (v185 ^ 0x21C176B9));
  v190 = (*&v146[4 * (BYTE2(v183) ^ 0xD2)] - 1409877230) ^ *&v152[4 * (BYTE1(v187) ^ 0xE5)] ^ (*&v145[4 * (((v185 ^ 0x6FA1BBC0) >> 24) ^ 0x8A)] - (((v185 ^ 0x6FA1BBC0) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v186 ^ 0xC2)] - (v186 ^ 0x21C1766B));
  v191 = (*&v146[4 * ((v185 ^ 0x6FA1BBC0) >> 16)] - 1409877230) ^ *&v152[4 * ((v183 ^ 0x4527) >> 8)] ^ (*&v145[4 * (((v186 ^ 0x2B27C12) >> 24) ^ 0x8A)] - (((v186 ^ 0x2B27C12) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v187 ^ 0x3F)] - (v187 ^ 0x21C17696));
  v192 = (*&v146[4 * v188] - 1409877230) ^ *&v152[4 * ((v185 ^ 0xBBC0) >> 8)] ^ (*&v145[4 * (((v187 ^ 0xBE27B2EF) >> 24) ^ 0x8A)] - (((v187 ^ 0xBE27B2EF) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v183 ^ 0xF7)] - (v183 ^ 0x21C1765E));
  v193 = (v192 ^ 0x7DDF413F) >> 24;
  v194 = (*&v146[4 * ((v192 ^ 0x7DDF413F) >> 16)] - 1409877230) ^ *&v152[4 * (BYTE1(v191) ^ 0x1F)] ^ (*&v145[4 * (((v189 ^ 0x179F0454) >> 24) ^ 0x8A)] - (((v189 ^ 0x179F0454) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v190 ^ 0xF5)] - (v190 ^ 0x21C1765C));
  v195 = (*&v146[4 * ((v189 ^ 0x179F0454) >> 16)] - 1409877230) ^ *&v152[4 * ((v192 ^ 0x413F) >> 8)] ^ (*&v145[4 * (((v190 ^ 0x75457125) >> 24) ^ 0x8A)] - (((v190 ^ 0x75457125) >> 24) ^ 0x5F6A3ADE)) ^ (*&v151[4 * (v191 ^ 0xC0)] - (v191 ^ 0x21C17669));
  v196 = *&v152[4 * (BYTE1(v189) ^ 0x53)];
  v197 = v196 ^ -v196 ^ (-1795874037 - (__ROR4__(__ROR4__(v196, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v198 = *&v145[4 * (v193 ^ 0x8A)];
  v199 = v193 ^ 0x5F6A3ADE;
  v200 = (*&v146[4 * (BYTE2(v190) ^ 0x39)] - 1409877230) ^ (*&v151[4 * (v192 ^ 0xEF)] - (v192 ^ 0x21C17646)) ^ (*&v145[4 * (((v191 ^ 0xAC254810) >> 24) ^ 0x8A)] - (((v191 ^ 0xAC254810) >> 24) ^ 0x5F6A3ADE)) ^ (((2 * v197) & 0x29EA4616) + (v197 ^ 0x94F5230B));
  v201 = (*&v146[4 * (BYTE2(v191) ^ 0x59)] - 1409877230) ^ *&v152[4 * (BYTE1(v190) ^ 0x26)] ^ (v198 - v199);
  v202 = v194 ^ 0x8EBD9B97;
  v203 = v201 ^ (*&v151[4 * (v189 ^ 0x84)] - (v189 ^ 0x21C1762D));
  v204 = v200 ^ 0x8CA395FC;
  v205 = v195 ^ 0xA3ECFAB3;
  v206 = v203 ^ 0x10CC86ED;
  v207 = *&v151[4 * (v195 ^ 0x63)] - (v195 ^ 0x21C176CA);
  v208 = (*&v146[4 * ((v203 ^ 0x10CC86EDu) >> 16)] - 1409877230) ^ (*&v145[4 * (HIBYTE(v202) ^ 0x8A)] - (HIBYTE(v202) ^ 0x5F6A3ADE)) ^ 0x94F5230B ^ *&v152[4 * (BYTE1(v200) ^ 0xC2)];
  v209 = (v208 ^ -v208 ^ (v207 - (v208 ^ v207))) + v207;
  if (((v200 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v210 = -16;
  }

  else
  {
    v210 = 16;
  }

  v211 = *&v151[4 * ((v210 + v204) ^ 0xC0)] - ((v210 + v204) ^ 0x21C17669);
  v212 = HIBYTE(v204);
  v213 = (*&v146[4 * (BYTE2(v194) ^ 0xC1)] - 1409877230) ^ *&v152[4 * ((v203 ^ 0x86ED) >> 8)] ^ (*&v145[4 * (HIBYTE(v205) ^ 0x8A)] - (HIBYTE(v205) ^ 0x5F6A3ADE)) ^ v211;
  v214 = (*&v146[4 * BYTE2(v205)] - 1409877230) ^ *&v152[4 * BYTE1(v202)] ^ (*&v151[4 * (v203 ^ 0x3D)] - (v203 ^ 0x21C17694)) ^ (*&v145[4 * (v212 ^ 0x8A)] - (v212 ^ 0x5F6A3ADE));
  v215 = (*&v146[4 * (BYTE2(v200) ^ 0xDF)] - 1409877230) ^ (*&v145[4 * (HIBYTE(v206) ^ 0x8A)] - (HIBYTE(v206) ^ 0x5F6A3ADE)) ^ *&v152[4 * (BYTE1(v195) ^ 0xAD)] ^ (*&v151[4 * (v194 ^ 0x47)] - (v194 ^ 0x21C176EE));
  v216 = *(&off_1001252D0 + (v64 ^ 0x807));
  v217 = *(&off_1001252D0 + v64 - 2175) - 8;
  v218 = *&v217[4 * ((v215 ^ 0x66EB169Au) >> 16)] ^ 0x4D522762;
  v219 = *(&off_1001252D0 + (v64 ^ 0x81D)) - 4;
  v220 = *(&off_1001252D0 + v64 - 2012) - 4;
  v221 = *&v217[4 * (BYTE2(v209) ^ 0xBF)];
  v222 = ((v213 ^ 0xA4) - 1352815326) ^ *&v219[4 * (BYTE1(v214) ^ 0x57)] ^ *(v216 + 4 * (HIBYTE(v209) ^ 0xBE)) ^ *&v220[4 * (v213 ^ 0x91)] ^ (((v218 >> (v171 & 3) >> (v171 & 3 ^ 3)) ^ v218) >> 2);
  v223 = *(v216 + 4 * (HIBYTE(v213) ^ 0x43)) ^ ((v214 ^ 0xC4) - 1352815326) ^ *&v219[4 * (BYTE1(v215) ^ 0x7C)] ^ v221 ^ 0x4D522762 ^ *&v220[4 * (v214 ^ 0xF1)] ^ ((v221 ^ 0x4D522762u) >> 2) ^ ((v221 ^ 0x4D522762u) >> 5);
  v224 = *(v216 + 4 * ((v215 ^ 0x66EB169Au) >> 24));
  v225 = *&v217[4 * (BYTE2(v213) ^ 0x20)];
  v226 = *&v219[4 * (BYTE1(v213) ^ 0x2D)];
  v227 = *(v216 + 4 * (HIBYTE(v214) ^ 0xD5)) ^ ((v215 ^ 0x9A) - 1352815326) ^ *&v220[4 * (v215 ^ 0xAF)] ^ *&v219[4 * ((v209 ^ 0x84FF) >> 8)] ^ ((v225 ^ 0x4D522762u) >> 2) ^ ((v225 ^ 0x4D522762u) >> 5);
  v228 = (v223 - ((2 * v223) & 0x862ED330) + 1125607832) ^ a43;
  v229 = *&v217[4 * (BYTE2(v214) ^ 0xCB)] ^ 0x4D522762;
  v230 = v225 ^ 0x4D522762 ^ a41 ^ (v227 - ((2 * v227) & 0x45224A9E) - 1567546033);
  v231 = (~v209 - 1352815326) ^ v224 ^ v229 ^ v226 ^ (v229 >> 2) ^ (v229 >> 5) ^ *&v220[4 * (v209 ^ 0xCA)] ^ 0x23A4540;
  HIDWORD(v233) = (v231 - ((2 * v231) & 0x8AF13E) + 4552863) ^ a45;
  LODWORD(v233) = (v231 - ((2 * v231) & 0x1E8AF13E) - 1891272545) ^ a45;
  v232 = v233 >> 24;
  v234 = *(&off_1001252D0 + v64 - 2179) - 12;
  *(STACK[0x470] + 8) = (-97 * v234[HIBYTE(v230) ^ 0x4CLL]) ^ ((-97 * v234[HIBYTE(v230) ^ 0x4CLL]) >> 5) ^ ((-97 * v234[HIBYTE(v230) ^ 0x4CLL]) >> 1) ^ 0xD4;
  *(v258 - 3) = (-97 * v234[HIBYTE(v228) ^ 0x61]) ^ ((-97 * v234[HIBYTE(v228) ^ 0x61]) >> 5) ^ ((-97 * v234[HIBYTE(v228) ^ 0x61]) >> 1) ^ 0xD8;
  v235 = *(&off_1001252D0 + (v64 ^ 0x8C2)) - 12;
  v258[3] = ((((((v230 ^ 0xD2C1) >> 8) ^ 0xDA) + 99) ^ ((v230 ^ 0xD2C1) >> 8) ^ 0xDA) + v235[((v230 ^ 0xD2C1) >> 8) ^ 0x6CLL]) ^ 0xB3;
  v236 = *(&off_1001252D0 + v64 - 1987);
  v237 = v218 ^ v259;
  v238 = *(v236 + (((((v230 ^ 0xA619D2C1) >> 16) ^ -((v230 ^ 0xA619D2C1) >> 16) ^ (510 - ((v230 ^ 0xA619D2C1) >> 16) - ((2 * ((v230 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL)) ^ 0xFFFFFFD9;
  v239 = ((((v230 ^ 0xA619D2C1) >> 16) ^ -((v230 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v230 ^ 0xA619D2C1) >> 16) - ((2 * ((v230 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v240 = v239 & 8 ^ v238;
  v241 = (v239 & 8 & v238) == 0;
  v242 = v238 - (v239 & 8);
  if (v241)
  {
    v242 = v240;
  }

  v258[2] = v242 ^ v239 & 0xF7;
  HIDWORD(v244) = v232 ^ 0x8829CA87;
  LODWORD(v244) = v232 ^ 0x8829CA87;
  v243 = v244 >> 8;
  *(v258 - 1) = (v235[BYTE1(v228) ^ 0x94] + (((BYTE1(v228) ^ 0x22) + 99) ^ BYTE1(v228) ^ 0x22)) ^ 0xA8;
  v245 = v237 ^ (v222 - ((2 * v222) & 0x4493C876) - 1572215749);
  *(v258 - 2) = BYTE2(v228) ^ 0x9E ^ *(v236 + (BYTE2(v228) ^ 0xD5));
  v246 = *(&off_1001252D0 + (v64 ^ 0x8B4)) - 4;
  v247 = v246[(v237 ^ (v222 - ((2 * v222) & 0x76) + 59)) ^ 0xE7] - 24;
  *(v258 - 4) = v247 ^ 0x5D ^ (v247 >> 1) & 0x1E;
  v258[5] = (-97 * v234[HIBYTE(v243) ^ 0x60]) ^ ((-97 * v234[HIBYTE(v243) ^ 0x60]) >> 5) ^ ((-97 * v234[HIBYTE(v243) ^ 0x60]) >> 1) ^ 0xFE;
  v248 = v246[((180 - (v230 ^ 0x56) + (v230 ^ 0xE2) - 2 * ((180 - (v230 ^ 0x56)) & (v230 ^ 0xE2))) ^ -(v230 ^ 0xE2)) + 180] - 24;
  v258[4] = v248 ^ 0x62 ^ (v248 >> 1) & 0x1E;
  v249 = ((v244 >> 8) >> 8);
  v258[7] = (v235[v249 ^ 0x4F] + (((v249 ^ 0xF9) + 99) ^ v249 ^ 0xF9)) ^ 0xBE;
  *(v258 - 5) = (v235[BYTE1(v245) ^ 0x1FLL] + (((BYTE1(v245) ^ 0xA9) + 99) ^ BYTE1(v245) ^ 0xA9)) ^ 0x84;
  v250 = v246[v228 ^ 0xDDLL];
  *v258 = (((v250 + ((v250 - 24) ^ 0xAE) - 23) ^ 0xFE) + v250 - 24) ^ ((v250 - 24) >> 1) & 0x1E;
  *(v258 - 7) = (-97 * v234[BYTE3(v245) ^ 0x67]) ^ ((-97 * v234[BYTE3(v245) ^ 0x67]) >> 5) ^ ((-97 * v234[BYTE3(v245) ^ 0x67]) >> 1) ^ 0xE1;
  v258[6] = BYTE2(v243) ^ 0x8E ^ *(v236 + (BYTE2(v243) ^ 0x55));
  *(v258 - 6) = BYTE2(v245) ^ 0xD3 ^ *(v236 + (BYTE2(v245) ^ 0x7DLL));
  LOBYTE(v250) = v246[BYTE1(v244) ^ 0xF7] - 24;
  v258[8] = v250 ^ ((v250 & (v250 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  LODWORD(a30) = 32 * v64;
  return (*(a56 + 8 * (v64 ^ 7)))(v245, v246, 2499093259, 138, (v249 ^ 0xF9) + 99, v237, v240, 4294967199, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v252, v253, v254, v255, a35, a36, a37, a38, v257, v258, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_10001F39C@<X0>(int a1@<W8>)
{
  v6 = a1 - ((&v6 + 1505753234 - 2 * (&v6 & 0x59BFF892)) ^ 0xBF175482) * v2 - 1550;
  v7 = v1;
  (*(v3 + 8 * (a1 ^ 0xC43)))(&v6);
  return (v4 - 1958853845);
}

uint64_t sub_10001F580@<X0>(unint64_t a1@<X5>, _DWORD *a2@<X7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = (a2[1] ^ a3) + (v13 ^ HIDWORD(a1)) + v10 * (*(*(a9 + 8) + 4) ^ (a3 + v17 - 388 - 336));
  *a2 = (v18 + v12 - ((v11 + 724) & (2 * v18))) ^ v15;
  return (*(v14 + 8 * (((v9 == 2) * v16) ^ v17)))();
}

uint64_t sub_10001F5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = (*(v65 + 8 * (v63 ^ 0xBE6)))(v64);
  STACK[0x288] = a34 - 1712;
  LODWORD(STACK[0x378]) = v62;
  return (*(a62 + 8 * (((STACK[0x2E8] == 0) * ((v63 ^ 0x834) + ((v63 + 473138147) & 0xE3CC7BAA) - 2508)) ^ (v63 + 2442))))(v66);
}

uint64_t sub_10001F6C8@<X0>(int a1@<W8>)
{
  if ((a1 - 2034659844) <= 0x12 && ((1 << (a1 - 4)) & 0x40425) != 0)
  {
    return sub_10001F73C();
  }

  else
  {
    return (*(v1 + 8 * ((1559 * ((((v3 + v4 + 95) ^ 0x15D) & *(v2 + 48 * v5 + 40)) == 0)) ^ (v3 + v4 + 95))))(4294925278);
  }
}

uint64_t sub_10001F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, int a15, uint64_t a16, char *a17)
{
  v20 = 1785193651 * ((2 * (&a12 & 0x497559F0) - &a12 - 1232427509) ^ 0x40AB0227);
  a15 = v19 - v20 - 2013066713;
  a13 = v20 ^ 0xEA1C75B1;
  a14 = v20 - 929753733;
  a16 = a11;
  a17 = &a10;
  v21 = (*(v17 + 8 * (v19 + 2632)))(&a12);
  return (*(v17 + 8 * (((a12 != v18) * ((v19 ^ 0x51) - 221)) ^ v19)))(v21);
}

uint64_t sub_10001F84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (v17 + 306) ^ (50899313 * (&a14 ^ 0x2ACB2A7A));
  a15 = &a12;
  v19 = (*(v16 + 8 * (v17 ^ 0xCB1)))(&a14);
  return (*(v16 + 8 * (((a16 == ((v17 - 1391) ^ (v18 - 151))) * ((57 * (v17 ^ 0x67B)) ^ 0x789)) ^ v17)))(v19);
}

uint64_t sub_10001FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v36 - 136) = v33 + 435584651 * ((~((v36 - 144) | 0xF405AC3F) + ((v36 - 144) & 0xF405AC3F)) ^ 0x66C84996) + 813;
  *(v36 - 144) = &a16;
  *(v36 - 128) = v34;
  *(v36 - 120) = &a32;
  *(v36 - 112) = a14;
  *(v36 - 104) = &a32;
  v37 = (*(v32 + 8 * (v33 | 0xA42)))(v36 - 144);
  return (*(v32 + 8 * ((451 * (v35 - 181586625 >= ((((v33 - 802648309) & 0x2FD773DD) - 385) | 0x484u) + 2147481979)) ^ (((v33 - 802648309) & 0x2FD773DD) + 831))))(v37);
}

uint64_t sub_10001FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LODWORD(STACK[0x210]) = v56;
  v57 = ((v55 - 458) | 0x18) + 190;
  v58 = STACK[0x330];
  v59 = v57 ^ 0x61u;
  STACK[0x248] = v59 - 106;
  *(v58 + v59 - 106) = (&STACK[0x248] ^ 0xBA) * (&STACK[0x248] + 17);
  return (*(a6 + 8 * ((917 * (STACK[0x248] != 0)) ^ v57)))(v58, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_10001FD94()
{
  v3 = ((v0 + 14) | 1) + 640;
  *(v2 - 120) = v3 + 1037613739 * ((-340959559 - ((v2 - 128) | 0xEBAD5EB9) + ((v2 - 128) | 0x1452A146)) ^ 0xC5508C39) - 542398013;
  *(v2 - 128) = &v6;
  (*(v1 + 8 * (((v0 + 14) | 1) + 1888)))(v2 - 128);
  return (v5 ^ 0x76F9FFD7) + ((2 * v5) & 0xEDF3FFAE) + (v3 ^ 0xFDC7B931) - 1958853845;
}

void sub_10001FECC()
{
  v4 = *(v0 + 8) ^ v2;
  v5 = ((v4 & 0xEC73B8CE0A90C094) << (v3 - 58)) & (v4 ^ 0xEA6B30CE4A1CA215) ^ v4 & 0xEC73B8CE0A90C094;
  v6 = ((2 * (v4 ^ 0xB2CE215E5B1CA335)) ^ 0xBD7B3320A318C742) & (v4 ^ 0xB2CE215E5B1CA335) ^ (2 * (v4 ^ 0xB2CE215E5B1CA335)) & 0x5EBD9990518C63A0;
  v7 = v6 ^ 0x42848890508420A1;
  v8 = (v6 ^ 0x1019098000002200) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x7AF6664146318E84) & v7 ^ (4 * v7) & 0x5EBD9990518C63A0;
  v10 = (v9 ^ 0x5AB4000040000280) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x4099990118C6121)) ^ 0xEBD9990518C63A10) & (v9 ^ 0x4099990118C6121) ^ (16 * (v9 ^ 0x4099990118C6121)) & 0x5EBD9990518C63A0;
  v12 = (v11 ^ 0x4A99990010842200) & (v10 << 8) ^ v10;
  v13 = (((v11 ^ 0x14240090410841A1) << 8) ^ 0xBD9990518C63A100) & (v11 ^ 0x14240090410841A1) ^ ((v11 ^ 0x14240090410841A1) << 8) & 0x5EBD9990518C6300;
  v14 = v12 ^ 0x5EBD9990518C63A1 ^ (v13 ^ 0x1C99901000000000) & (v12 << 16);
  v15 = v4 ^ (2 * ((v14 << 32) & 0x5EBD999000000000 ^ v14 ^ ((v14 << 32) ^ 0x518C63A100000000) & (((v13 ^ 0x42240980518C42A1) << 16) & 0x5EBD999000000000 ^ 0x462D881000000000 ^ (((v13 ^ 0x42240980518C42A1) << 16) ^ 0x1990518C00000000) & (v13 ^ 0x42240980518C42A1))));
  *v16 = (HIBYTE(v15) ^ 0xF0) - 2 * ((HIBYTE(v15) ^ 0xF0) & 0x27 ^ HIBYTE(v15) & 7) + 32;
  v16[1] = (BYTE6(v15) ^ 0x10) + (~(2 * BYTE6(v15)) | 0xBF) + 33;
  v16[2] = (BYTE5(v15) ^ 0x88) - ((2 * BYTE5(v15)) & 0x40) + 32;
  v16[3] = (BYTE4(v15) ^ 0xEE) - ((2 * (BYTE4(v15) ^ 0xEE)) & 0x40) + 32;
  v16[4] = (BYTE3(v15) ^ 0xA9) - ((2 * (BYTE3(v15) ^ 0xA9)) & 0x40) + 32;
  v16[5] = (BYTE2(v15) ^ 0x88) + (~(2 * BYTE2(v15)) | 0xBF) + 33;
  v16[6] = (BYTE1(v15) ^ 7) - ((2 * BYTE1(v15)) & 0x40) + 32;
  v16[7] = v15 ^ 0xF6;
  *(v0 + 16) = *(v1 + 24);
}

uint64_t sub_1000202F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, unsigned int a11, int a12)
{
  v17 = (*(a1 + 20) ^ v15) + *(v12 + 16) - 1643155661 + 8;
  v18 = 1564307779 * ((((2 * &a9) | 0xF95B9D7E) - &a9 - 2091765439) ^ 0xEBA002AC);
  a11 = 281686432 - v18;
  a12 = v17 - v18 - 826836503;
  a10 = v12;
  a9 = (v16 + 1718) ^ v18;
  v19 = (*(v14 + 8 * (v16 + 2343)))(&a9);
  return (*(v14 + 8 * (((*(v12 + 24) == v13) * ((v16 + 159) ^ 0x136)) ^ v16)))(v19);
}

uint64_t sub_1000203BC@<X0>(uint64_t a1@<X8>)
{
  v4 = 675097751 * ((v6 & 0xC198CD2E | ~(v6 | 0xC198CD2E)) ^ 0x7D271747);
  v6[0] = v3 - v4 + 85;
  v6[1] = (v2 ^ ((v2 ^ 0x5A91A782) - 600760061) ^ ((v2 ^ 0x7B327F17) - 40699496) ^ ((v2 ^ 0xA7013B17) + 564247960) ^ ((v3 ^ 0x795D1EB0) + (v2 ^ 0xFFFD9AFD)) ^ 0x285A1E4A) - v4;
  v7 = v1;
  return (*(a1 + 8 * (v3 ^ 0x81F)))(v6);
}

uint64_t sub_100020504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = LOBYTE(STACK[0x2EC]);
  if (v19 == 2)
  {
    return (*(v17 + 8 * (((LODWORD(STACK[0x2E8]) == 0) * (((v18 - 1402370057) & 0x53967DDC) - 1454)) ^ (v18 + 1492))))(a13, a2, a17);
  }

  if (v19 != 1)
  {
    JUMPOUT(0x1000205E0);
  }

  return (*(v17 + 8 * (((LODWORD(STACK[0x2E8]) != 0) * (761 * (v18 ^ 0xA) - 757)) ^ (v18 + 1514))))(a1, a2, a17);
}

uint64_t sub_100020674()
{
  v7 = v4 - 1;
  *(v6 + v7) ^= *(v2 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 5) ^ 0x20;
  return (*(v5 + 8 * ((2791 * (v7 == 0)) ^ (v3 - 79))))();
}

uint64_t sub_100020760@<X0>(int a1@<W8>)
{
  v5 = 1361651671 * ((2 * ((v3 - 192) & 0x9321B08) - (v3 - 192) - 154278666) ^ 0xBDA62888);
  *(v3 - 184) = (v2 + 397) ^ v5;
  *(v3 - 180) = (a1 ^ 0x7FF7A67E) - v5 + ((2 * a1) & 0xFFEF4CFC) - 1612710472;
  *(v3 - 192) = v1;
  v6 = (*(v4 + 8 * (v2 + 2460)))(v3 - 192);
  return (STACK[0x258])(v6);
}

void sub_10002080C()
{
  STACK[0x288] += (v1 - 260) ^ 0xFFFFFFFFFFFFF79ALL;
  LODWORD(STACK[0x22C]) = v0;
  JUMPOUT(0x100020830);
}

uint64_t sub_10002087C(uint64_t a1)
{
  v6 = (*(v2 + 8 * ((v4 + 1105) ^ 0x32A)))(a1, **(v1 + 8 * ((v4 + 1105) ^ 0x9E4)), 0, v3 + 4);
  v7 = (*(v2 + 8 * ((v4 + 1105) ^ 0x2D8)))(a1);
  return (*(v2 + 8 * (((((v4 - 47) ^ (v6 == 0)) & 1) * (v4 - 1366)) | (v4 + 1105))))(v7);
}

uint64_t sub_10002095C@<X0>(int a1@<W8>)
{
  v6 = *(v3 + 8);
  v7 = *(v6 + 4 * v5 - 4) ^ 0xFE1ABF52;
  *(v6 + 4 * (v5 + a1)) = ((v7 >> (32 - (v1 ^ 0x1B))) & 0x4A4DB5B9 | ~(v7 >> (32 - (v1 ^ 0x1B))) & 0xB5B24A46) ^ 0x4BA8F514;
  return (*(v4 + 8 * ((11 * (v5 > 1)) ^ (v2 + 1144))))(1269363988);
}

uint64_t sub_100020AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  if (v11)
  {
    v12 = a10 == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  return (*(v10 + 8 * ((985 * v13) ^ 0x5D9u)))();
}

uint64_t sub_100020AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, int a13, int a14)
{
  v20 = (v18 - 986067070) & 0x3AC62EBE;
  v21 = ((&a10 - 297175940 - 2 * (&a10 & 0xEE49747C)) ^ 0x8E1D86C) * v17;
  a12 = v21 + v20 - 1182;
  a13 = v21 + v19;
  a10 = v21 + v15;
  a11 = v21 + v16;
  v22 = (*(v14 + 8 * (v20 + 730)))(&a10);
  return (*(v14 + 8 * ((71 * (a14 == 1015591267)) ^ v20)))(v22);
}

uint64_t sub_100020BE4(__n128 a1, __n128 a2, __n128 a3)
{
  v6 = (v3 - 1641) | 3;
  v7.n128_u64[0] = 0x4040404040404040;
  v7.n128_u64[1] = 0x4040404040404040;
  v8.n128_u64[0] = 0x2020202020202020;
  v8.n128_u64[1] = 0x2020202020202020;
  v9 = *(v4 + 16) - 563143097;
  v10 = v9 < 0x1DFFF7C6;
  if (v9 >= 0x1DFFF7C6)
  {
    v10 = ((v6 - 195) ^ 0x1DFFF7CAu) < v9;
  }

  return (*(v5 + 8 * ((v10 * (((v6 + 1732362728) & 0x98BE3FE8) - 649)) ^ v6)))(a1, a2, a3, v7, v8);
}

uint64_t sub_100020DF0()
{
  v4 = ((127 * (v0 ^ 0x470)) ^ 0x4D3248F3) + v2;
  v5 = v1 + 1935039124 + 58 * (v0 ^ 0x477);
  v6 = v5 < 0xB4E1B466;
  v7 = v4 < v5;
  if (v6 != v4 < 0xB4E1B466)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((220 * v7) ^ v0)))();
}

uint64_t sub_100021060@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v6 = ((*(*a2 + (v3 - 1066457471)) ^ 0x20) << 24) | ((*(*a2 + v3 - 1066459730 + (((v4 ^ 0xA0E) + 1314082620) & 0xB1ACAFF5)) ^ 0x20) << 16) | ((*(*a2 + (v3 - 1066457469)) ^ 0x20) << 8) | *(*a2 + (v3 - 1066457468)) ^ 0x20;
  v7 = v5 - *a1 + ((v6 - ((2 * v6) & 0xF283947E) - 113128897) & 0xFFFFFF ^ 0x41CA3F) == -416453005;
  return (*(v2 + 8 * (((2 * v7) | (8 * v7)) ^ v4 ^ 0xA0E)))();
}

uint64_t sub_100021130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, uint64_t a16, int a17)
{
  v21 = ((&a14 & 0xFA1BAABE | ~(&a14 | 0xFA1BAABE)) ^ 0xFE27E25A) * v20;
  a16 = a10;
  a14 = (v17 ^ 0xB2FBBE7F) + ((2 * v17) & 0x65F77CFE) + 1874320796 + v21;
  a15 = 2715 - v21;
  v22 = (*(v18 + 22088))(&a14);
  return (*(v18 + 8 * ((42 * (a17 != v19)) ^ 0x397u)))(v22);
}

uint64_t sub_100021200()
{
  v6 = v0 + 1;
  if (v2)
  {
    v7 = v6 == (v1 ^ v3) - 413;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v5 + 8 * ((v8 * ((v1 + 654) ^ v4)) ^ v1)))();
}

void sub_100021234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *v32 = (7 * (v31 ^ 0x110)) ^ 0x80000770 | (((a17 - v31) | (v31 - a17)) >> 31);
  (*(v33 + 8 * (v31 ^ 0xAFC)))(a31);
  JUMPOUT(0x10002129CLL);
}

uint64_t sub_100021404()
{
  v4 = ((((v1 - 856) | 0x647) - 128) ^ 0xEFCEA93E) - v0;
  if ((64 - v2) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 64 - v2;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((508 * v6) ^ v1)))();
}

uint64_t sub_100021528@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W8>)
{
  if ((v3 - 2034659844) > 0x12 || ((1 << (v3 - 4)) & 0x40425) == 0)
  {
    return (*(v7 + 8 * ((((((*(v5 + a3 * v4 + 40) & 8) == 0) ^ ((a1 - 112) ^ (a1 + 1))) & 1) * a2) ^ (a1 + 2226))))();
  }

  LODWORD(STACK[0x2D4]) = v6;
  return (*(v7 + 8 * ((a1 + 582) | (16 * (((a1 + 1) ^ ((((553 * (a1 ^ 0x118)) ^ 0x453) & *(v5 + a3 * v4 + 40)) == 0)) & 1)))))();
}

uint64_t sub_100021C4C()
{
  v3 = v0 ^ 0x7F6;
  v4 = (*(v1 + 20) & 1) != (((v3 ^ 0x692) + 1166) ^ 0x53D ^ (14 * (v3 ^ 0x692)));
  return (*(v2 + 8 * (((4 * v4) | (v4 << 6)) ^ v3)))();
}

uint64_t sub_100021CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = 1504884919 * (((&a12 | 0x49A85395) - (&a12 & 0x49A85395)) ^ 0xB26BE48E) + 1212455568;
  v14 = (*(v13 + 22208))(&a12);
  return (*(v13 + 8 * ((3744 * (a12 == 1958853845)) ^ 0x613u)))(v14);
}

uint64_t sub_1000222B0(int a1)
{
  v7 = v4 - 1;
  *(v5 + v7) ^= *(v3 + (v7 & 0xF)) ^ *(v2 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 1);
  return (*(v6 + 8 * ((39 * (v7 == 0)) ^ (a1 - 967))))();
}

uint64_t sub_100022308@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x985));

  return v3(v1);
}

uint64_t sub_10002233C()
{
  v8 = (v2 - 2);
  v9 = v1 + 2;
  *v8 = (v9 ^ v4) * (v9 + 17);
  *(v8 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v3 + 2 != v5) * v6) ^ v0)))();
}

uint64_t sub_100022400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 120) = &a17;
  *(v20 - 112) = &a15;
  *(v20 - 128) = v19 + 742307843 * ((((2 * (v20 - 128)) | 0xAE61C3CC) - (v20 - 128) + 684662298) ^ 0xC9126CB3) - 688;
  v21 = (*(v17 + 8 * (v19 ^ 0xD89)))(v20 - 128);
  return (*(v17 + 8 * (((v18 != v19 - 1913) * (((v19 - 2026274689) & 0x78C67D87) - 1181)) ^ v19)))(v21);
}

uint64_t sub_1000224AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39)
{
  v43 = v39 + 177;
  v44 = (*(v40 + 8 * (v43 ^ 0x8DCu)))(a39 + 4, 0);
  v45 = (v43 ^ 0x16142B77) + a39[4] - ((2 * a39[4]) & 0x14CA2C22) - 196022933;
  a39[1] = a39[6] + 174396945 - ((2 * a39[6]) & 0x14CA2C22);
  a39[2] = v45;
  v46 = (*(v40 + 8 * (v43 ^ 0x97Bu)))(v44);
  a39[3] = v46 + 174396945 - ((2 * v46) & 0x14CA2C22);
  v47 = (*(v40 + 8 * (v43 + 1753)))();
  *a39 = v47 + 174396945 - ((2 * v47) & 0x14CA2C22);
  v48 = 1361651671 * ((((2 * (v42 - 144)) | 0xF259C01D4D2AF260) - (v42 - 144) + 0x6D31FF1596A86D0) ^ 0x2C317265EDFEB54ELL);
  v41[1] = (*a39 ^ 0xA651611) + ((1664525 * (*v41 ^ (*v41 >> 30))) ^ v41[1]);
  *(v42 - 112) = 623 - v48;
  *(v42 - 120) = ((v43 ^ 0x16142B77) + 1158634557) ^ v48;
  *(v42 - 116) = v48;
  *(v42 - 128) = v48 ^ 2;
  *(v42 - 104) = ((v43 ^ 0x16142B77) + 1893802746) ^ v48;
  *(v42 - 144) = v48 + (v43 ^ 0x16142B77) + 1158634557 - 89;
  *(v42 - 140) = (((v43 ^ 0x16142B77) + 1158634557) ^ 0xD) - v48;
  v49 = (*(v40 + 8 * ((v43 ^ 0x16142B77) - 370417106)))(v42 - 144);
  return (*(v40 + 8 * *(v42 - 136)))(v49);
}

uint64_t sub_1000226FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, unsigned int *a24)
{
  *a23 = 1;
  v27 = *a24;
  *(v26 - 112) = (v24 - 2030746734) ^ a21;
  v28 = v26 - 152;
  *(v28 + 32) = a20;
  *(v26 - 128) = (v24 + 765875453) ^ a21;
  *(v26 - 124) = a21;
  *(v28 + 16) = v27 ^ a21;
  *(v26 - 152) = a21 + v24 + 765875453 + 117;
  *(v26 - 148) = ((v24 + 765875453) ^ 0xF6) - a21;
  v29 = (*(v25 + 8 * ((v24 - 158) ^ 0xDA4)))(v26 - 152);
  return (*(v25 + 8 * *(v26 - 144)))(v29);
}

uint64_t sub_100022848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  v45 = (((v43 + 1912886426) & 0x1BF756D2) << (((v42 - 112) | 0xC3) ^ 0xCE)) & ((v43 + 1912886426) ^ 0x93E74689) ^ (v43 + 1912886426) & 0x1BF756D2;
  v46 = ((((v43 + 1912886426) ^ 0x914F6729) << ((v42 + 83) ^ 0xCE)) ^ 0x157063F6) & ((v43 + 1912886426) ^ 0x914F6729) ^ (((v43 + 1912886426) ^ 0x914F6729) << ((v42 + 83) ^ 0xCE)) & 0x8AB831FA;
  v47 = v46 ^ 0x8A881009;
  v48 = (v46 ^ 0x3021D1) & (4 * v45) ^ v45;
  v49 = ((4 * v47) ^ 0x2AE0C7EC) & v47 ^ (4 * v47) & 0x8AB831F8;
  v50 = (v49 ^ 0xAA001F0) & (16 * v48) ^ v48;
  v51 = ((16 * (v49 ^ 0x80183013)) ^ 0xAB831FB0) & (v49 ^ 0x80183013) ^ (16 * (v49 ^ 0x80183013)) & 0x8AB831F0;
  v52 = v50 ^ 0x8AB831FB ^ (v51 ^ 0x8A801100) & (v50 << 8);
  return (*(v44 + 8 * ((184 * ((((v43 + 1912886426) ^ (2 * ((v52 << 16) & 0xAB80000 ^ v52 ^ ((v52 << 16) ^ 0x31FB0000) & (((v51 ^ 0x38204B) << 8) & 0xAB80000 ^ 0x2880000 ^ (((v51 ^ 0x38204B) << 8) ^ 0x38310000) & (v51 ^ 0x38204B))))) & 0xFFFFFFFC ^ 0xFF73524) - a42 == -1912886423)) ^ v42)))();
}

uint64_t sub_100022A40@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W5>, unsigned int a4@<W8>)
{
  v11 = HIDWORD(v8) + HIDWORD(v6) + (*(v10 + 4 * v4) ^ a4);
  *(v10 + 4 * a3) = a4 + ((v7 - 591) | 9) + v11 - (a2 & (2 * v11)) - 825;
  *(v10 + 4 * v4) = HIDWORD(v11) + a4 - ((HIDWORD(v11) << (v7 - 126)) & 4);
  return (*(v9 + 8 * (v7 ^ (220 * (a1 + 1 != v5)))))();
}

uint64_t sub_100022C04@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x28C] + a1 + 72);
  v6 = ((((v2 - 1522) | 8) - 1967176728) & (2 * a1)) + (a1 ^ 0xC55FA1FB) + v1;
  *(v3 + v6) = v5 ^ 0xBC;
  *(v3 + v6 + 1) = (BYTE1(v5) ^ 0x63) - ((2 * (BYTE1(v5) ^ 0x63)) & 0x40) + 32;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0x8E) + (~(v5 >> 15) | 0xBF) + 33;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0xCE) - ((v5 >> 23) & 0x40) + 32;
  return (*(v4 + 8 * ((765 * (a1 + 4 < LODWORD(STACK[0x2E8]))) ^ v2)))();
}

uint64_t sub_100022E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = 143681137 * ((((2 * v62) | 0xC8E8BD40) - v62 - 1685348000) ^ 0x82DCF2B0);
  *(v64 - 160) = v66 + 583616;
  *(v64 - 184) = 0;
  *(v64 - 176) = &STACK[0x2F4];
  *(v64 - 168) = &STACK[0x410];
  *(v64 - 188) = v66 + v63 + 218;
  v67 = (*(v65 + 8 * (v63 + 2348)))(v64 - 192);
  return (*(a62 + 8 * ((22 * (*(v64 - 192) == ((v63 + 1893856539) & 0x8F1E097B) + 1958853757)) | v63)))(v67);
}

void sub_100022F68(_DWORD *a1)
{
  v1 = *a1 ^ (675097751 * (((a1 | 0x83FE93BA) - (a1 | 0x7C016C45) + 2080468037) ^ 0xC0BEB62C));
  v3[1] = v1 + 1504884919 * (v3 ^ 0xFBC3B71B) + 1212454231;
  v2 = *(&off_1001252D0 + (v1 ^ 0x5FC)) - 8;
  (*&v2[8 * (v1 + 1439)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002363C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + v3);
  v6 = v3 - 1;
  *(a1 + v6) = v5;
  return (*(v1 + 8 * (((v6 == 0) * ((v4 - 506572467) & 0x1E31AF7B ^ 0x1E8)) ^ v4)))();
}

void sub_100023684(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100023754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = 64 - v8;
  v12 = ((((v9 - 2004) ^ (a7 - 365)) - a7 + 863) ^ 0x56EB0CE1) - v7;
  if (HIDWORD(v11))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 >= v11;
  }

  v14 = !v13;
  return (*(v10 + 8 * ((119 * v14) ^ (v9 - 2004))))();
}

uint64_t sub_1000237F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a16 = (v16 - 94) ^ (843532609 * ((((&a13 | 0x3C1ABC26) ^ 0xFFFFFFFE) - (~&a13 | 0xC3E543D9)) ^ 0x9FA8175C));
  a13 = a12;
  a15 = &a10;
  (*(v17 + 8 * (v16 + 2235)))(&a13);
  LODWORD(a13) = v16 + 843532609 * (((&a13 | 0x656F5DDD) - &a13 + (&a13 & 0x9A90A220)) ^ 0x39220958) - 248;
  a14 = a12;
  v20 = (*(v17 + 8 * (v16 + 2243)))(&a13);
  return (*(v17 + 8 * (((a15 != v18) * ((v16 - 134689321) & 0xAF7FB9FF ^ (v19 + 1908))) ^ v16)))(v20);
}

uint64_t sub_1000238F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, uint64_t a54, uint64_t a55, unint64_t a56, unint64_t a57, unint64_t a58, unint64_t a59)
{
  LODWORD(STACK[0x27C]) = a53;
  STACK[0x280] = a59;
  STACK[0x368] = a58;
  STACK[0x380] = a57;
  STACK[0x288] = a56;
  return sub_100018754(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_100023934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = a13 + 1896571609 + (v15 ^ 0x5CD);
  if (v16 < 0xA4EAC506 != v13 > 0x5B153AF9)
  {
    v17 = v16 < 0xA4EAC506;
  }

  else
  {
    v17 = v13 - 1528118010 < v16;
  }

  return (*(v14 + 8 * ((22 * v17) ^ v15)))();
}

uint64_t sub_1000239F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (v62 == 5 || v62 == 8)
  {
    LOBYTE(STACK[0x17AF]) = LOBYTE(STACK[0x4CF]) - ((2 * LOBYTE(STACK[0x4CF])) & 0x40) + 32;
    LOBYTE(STACK[0x17AE]) = LOBYTE(STACK[0x4CE]) - (((BYTE4(a61) ^ 0xF2) + 88) & (2 * LOBYTE(STACK[0x4CE]))) + 32;
    LOBYTE(STACK[0x17AD]) = LOBYTE(STACK[0x4CD]) - ((2 * LOBYTE(STACK[0x4CD])) & 0x40) + 32;
    LOBYTE(STACK[0x17AC]) = LOBYTE(STACK[0x4CC]) - ((2 * LOBYTE(STACK[0x4CC])) & 0x40) + 32;
    LOBYTE(STACK[0x17AB]) = LOBYTE(STACK[0x4CB]) - ((2 * LOBYTE(STACK[0x4CB])) & 0x40) + 32;
    LOBYTE(STACK[0x17AA]) = LOBYTE(STACK[0x4CA]) - ((2 * LOBYTE(STACK[0x4CA])) & 0x40) + 32;
    LOBYTE(STACK[0x17A9]) = LOBYTE(STACK[0x4C9]) - ((2 * LOBYTE(STACK[0x4C9])) & 0x40) + 32;
    LOBYTE(STACK[0x17A8]) = LOBYTE(STACK[0x4C8]) - ((2 * LOBYTE(STACK[0x4C8])) & 0x40) + 32;
    LOBYTE(STACK[0x17A7]) = LOBYTE(STACK[0x4C7]) - ((2 * LOBYTE(STACK[0x4C7])) & 0x40) + 32;
    LOBYTE(STACK[0x17A6]) = LOBYTE(STACK[0x4C6]) - ((2 * LOBYTE(STACK[0x4C6])) & 0x40) + 32;
    LOBYTE(STACK[0x17A5]) = LOBYTE(STACK[0x4C5]) - ((2 * LOBYTE(STACK[0x4C5])) & 0x40) + 32;
    LOBYTE(STACK[0x17A4]) = LOBYTE(STACK[0x4C4]) - ((2 * LOBYTE(STACK[0x4C4])) & 0x40) + 32;
    LOBYTE(STACK[0x17A3]) = LOBYTE(STACK[0x4C3]) - ((2 * LOBYTE(STACK[0x4C3])) & 0x40) + 32;
    LOBYTE(STACK[0x17A2]) = LOBYTE(STACK[0x4C2]) - ((2 * LOBYTE(STACK[0x4C2])) & 0x40) + 32;
    LOBYTE(STACK[0x17A1]) = LOBYTE(STACK[0x4C1]) - ((2 * LOBYTE(STACK[0x4C1])) & 0x40) + 32;
    LOBYTE(STACK[0x17A0]) = LOBYTE(STACK[0x4C0]) - ((2 * LOBYTE(STACK[0x4C0])) & 0x40) + 32;
  }

  else
  {
    LOBYTE(STACK[0x17AF]) = STACK[0x4FF];
    LODWORD(STACK[0x17AB]) = STACK[0x4FB];
    STACK[0x17A3] = STACK[0x4F3];
    LOWORD(STACK[0x17A1]) = STACK[0x4F1];
    LOBYTE(STACK[0x17A0]) = STACK[0x4F0];
  }

  return sub_100023BF8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_100023BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v69 = STACK[0x398];
  v70 = 1504884919 * ((((2 * (v68 - 192)) | 0x7801EDF4) - (v68 - 192) + 1140787462) ^ 0x47C341E1);
  *(v68 - 192) = v70 + (LODWORD(STACK[0x300]) ^ 0xF65BF9B5) + ((LODWORD(STACK[0x300]) << ((v66 + 96) ^ 0x49)) & 0xECB7F36A) + 266631135;
  *(v68 - 160) = &STACK[0x4E0];
  *(v68 - 144) = v69;
  *(v63 + 104) = -73 * ((((2 * (v68 + 64)) | 0xF4) - (v68 + 64) + 6) ^ 0xE1) + 62;
  *(v68 - 136) = (v65 ^ 0xDF9FED27) - v70 + ((v66 - 1086335130) & v64) + 2054422271;
  *(v68 - 184) = &STACK[0x17A0];
  *(v68 - 176) = a17;
  *(v68 - 128) = &STACK[0x29C];
  *(v68 - 164) = v66 - v70 + 95;
  v71 = (*(v62 + 8 * (v66 ^ 0x833)))(v68 - 192);
  v72 = *(v68 - 152);
  LODWORD(STACK[0x22C]) = v72;
  return (*(a62 + 8 * ((487 * (v72 == v67)) ^ v66)))(v71);
}

uint64_t sub_100023D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v36 = 1361651671 * ((((v35 - 120) ^ 0xE397D83C | 0x58A38BD6) - ((v35 - 120) ^ 0xE397D83C) + (((v35 - 120) ^ 0xE397D83C) & 0xA75C7428)) ^ 0xF05F9F94);
  *(v35 - 112) = (v34 + 613) ^ v36;
  *(v35 - 108) = a13 - v36 + v34 - 336051667;
  *(v35 - 120) = &a24;
  v37 = (*(v33 + 8 * (v34 + 2676)))(v35 - 120);
  v38 = ((a33 & 0x3F ^ 0x41F49DA0) - 90471302) ^ ((a33 & 0x3F ^ (((v34 - 2871579) & 0x7B7FD5FF) - 514559668)) - 406360149) ^ ((a33 & 0x3F ^ 0x1D5CEBD3) - 1506545141);
  *(&a24 + (v38 + 1150346790)) = -96;
  return (*(v33 + 8 * ((1009 * ((v38 + 1150346734) < 0xFFFFFFC8)) ^ v34)))(v37);
}

uint64_t sub_100023E98()
{
  *v2 = **(v3 + 8);
  v5 = ((v1 - 1769) ^ 0x183) == v0;
  return (*(v4 + 8 * (((v5 << 6) | (v5 << 9)) ^ v1)))();
}

void sub_100024070(_DWORD *a1)
{
  v1 = *a1 - 1504884919 * (((a1 | 0xE4FD304B) - a1 + (a1 & 0x1B02CFB4)) ^ 0x1F3E8750);
  v3[1] = v1 + 1504884919 * ((((2 * v3) | 0xC5540EB8) - v3 + 492173476) ^ 0x1969B047) + 1212453888;
  v2 = *(&off_1001252D0 + (v1 - 1483)) - 8;
  (*&v2[8 * (v1 + 1096)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000241D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * ((&a14 & 0xDB66E91F | ~(&a14 | 0xDB66E91F)) ^ 0xE523C9A)) ^ 0x78C;
  a15 = &a11;
  v19 = (*(v16 + 22360))(&a14);
  return (*(v16 + 8 * ((699 * (a16 == v18)) ^ v17)))(v19);
}

uint64_t sub_100024250@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v3 + v6) = *(a1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * v4) ^ (v1 - 101))))();
}

void sub_10002427C(uint64_t a1)
{
  if (*(*(a1 + 24) + 4) - 1365209361 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1365209361;
  }

  else
  {
    v2 = 1365209361 - *(*(a1 + 24) + 4);
  }

  v1 = *(a1 + 16) ^ (843532609 * ((~a1 & 0xE6F5EC9E | a1 & 0x190A1361) ^ 0xBAB8B81B));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_100024340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42)
{
  v47 = (a24 + 24 * v44);
  *v47 = v45;
  v47[1] = a5;
  *(&a42 + 3 * v44 + 2) = a17;
  v47[4] = HIDWORD(a26);
  a42 = ((v43 - 1961202485) & 0x74E597B6 ^ 0x795) + a9;
  return (*(v46 + 8 * (v43 ^ (1551 * ((v42 + a2) < 0x80000003)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1000243E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = 1504884919 * ((1994280236 - (&a12 | 0x76DE4D2C) + (&a12 | 0x8921B2D3)) ^ 0x72E205C8) + 1212455568;
  v14 = (*(v13 + 22208))(&a12);
  return (*(v13 + 8 * ((1867 * (a12 == 1958853845)) ^ 0x2A1u)))(v14);
}

uint64_t sub_100024498()
{
  v6[1] = v2 + 8;
  v7 = v1 - 1785193651 * ((((2 * v6) | 0xDF090596) - v6 + 276528437) ^ 0x19A526E7) - 1224079410;
  result = (*(v3 + 8 * (v1 ^ 0x249)))(v6);
  *v0 = v4;
  return result;
}

uint64_t sub_1000245B4()
{
  v0.n128_u64[0] = 0x2020202020202020;
  v0.n128_u64[1] = 0x2020202020202020;
  return sub_1000245D4(1399, v0);
}

uint64_t sub_1000245D4(int a1, __n128 a2)
{
  v10 = (v7 + v3 + v2);
  *v10 = a2;
  v10[1] = a2;
  return (*(v9 + 8 * ((((((v5 + 129) | v6) ^ v8) + v3 == v4) * a1) ^ (v5 + 345))))();
}

void sub_100024610()
{
  v0 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EA30) ^ 8)) ^ byte_1000E4560[byte_1000F0AC0[(11 * ((qword_10013EA10 + dword_10013EA30) ^ 8))] ^ 0xB7]) + 153);
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + (byte_1000EC72C[(byte_1000E7D7C[(11 * ((qword_10013EA10 + v1) ^ 8)) - 12] ^ 0xA0) - 12] ^ (11 * ((qword_10013EA10 + v1) ^ 8))) + 30);
  v3 = (*v2 + v1) ^ &v5;
  *(v0 - 4) = 1405565963 * (v3 + 0x435703E42A3502F8);
  *v2 = 1405565963 * (v3 ^ 0xBCA8FC1BD5CAFD08);
  v6[1] = 1504884919 * ((v6 - 1556290502 - 2 * (v6 & 0xA33CE43A)) ^ 0x58FF5321) + 1212455568;
  LOBYTE(v2) = 11 * ((*v2 - *(v0 - 4)) ^ 8);
  v4 = *(&off_1001252D0 + ((11 * (dword_10013EA30 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC720[byte_1000E7D70[(11 * (dword_10013EA30 ^ 8 ^ qword_10013EA10))] ^ 0x31]) - 53) - 8;
  (*&v4[8 * (byte_1000E7B70[byte_1000E4460[v2] ^ 0x3E] ^ v2) + 20936])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100024834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = 1361651671 * ((~((v14 - 160) | 0xCC220CD8) + ((v14 - 160) & 0xCC220CD8)) ^ 0x78B63F59);
  *(v14 - 160) = a4;
  *(v14 - 152) = (v13 + 621) ^ v15;
  *(v14 - 148) = a12 - v15;
  v16 = (*(v12 + 8 * (v13 ^ 0xA8C)))(v14 - 160);
  v17 = ((STACK[0x2D0] & 0x3F ^ 0xC19534B3) + 638887860) ^ ((((v13 + 727) | 4) ^ 0x5529C144 ^ STACK[0x2D0] & 0x3F) - 1297591982) ^ ((STACK[0x2D0] & 0x3F ^ 0x94BCF6E2) + 1933403619);
  *(&STACK[0x28C] + v17 + 410938623) = -96;
  v19 = v17 == -410938624 || v17 > 0xE7819338;
  v20.n128_u64[0] = 0x2020202020202020;
  v20.n128_u64[1] = 0x2020202020202020;
  return (*(v12 + 8 * ((2676 * v19) ^ v13)))(v16, v20);
}

uint64_t sub_1000249A0@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(*(v5 + 8) + 4 * v2) ^ (v4 + (v3 ^ 0xDEE) - 2436)) + v1;
  *(*(a1 + 8) + 4 * v2) = (v8 - ((2 * v8) & 0x72D374E8) - 1184253324) ^ 0x47730526;
  return (*(v7 + 8 * ((2607 * (v6 > (v2 + 1))) ^ (v3 - 970))))(0xD2D2BEBAB969BA74, 1198720294, 3537026746);
}

uint64_t sub_100024A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v18 - 136) = v14 + 435584651 * ((v18 + 130206077 - 2 * ((v18 - 144) & 0x7C2CA0D)) ^ 0x6AF0D05B) + 297;
  *(v18 - 144) = &a11;
  *(v18 - 112) = v16;
  *(v18 - 104) = &a13;
  *(v18 - 128) = v15;
  *(v18 - 120) = &a13;
  v19 = (*(v17 + 8 * (v14 + 2110)))(v18 - 144);
  return (*(v17 + 8 * ((v13 - 181588735 + 20 * (v14 ^ 0x2A9u) + 1049 < 0x7FFFFFFF) | (20 * (v14 ^ 0x2A9)))))(v19);
}

uint64_t sub_100024B38(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(uint64_t))
{
  v24 = (v20 - 14);
  v25 = &STACK[0x28C] + v19;
  *v25 = v21;
  v25[1] = v22;
  v25[2] = v23;
  *(&STACK[0x28C] + v19 + v24 - 5) = a2;
  return sub_100029934(v24, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

void sub_100024BC4(uint64_t a1)
{
  v1 = *(a1 + 20) + 1785193651 * (((a1 | 0xB588AC7F) - a1 + (a1 & 0x4A775380)) ^ 0x43A90853);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100024C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, int8x16_t a10@<Q4>, int8x16_t a11@<Q6>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = (a3 + v16);
  v19 = vaddq_s8(vaddq_s8(v18[1], a11), vmvnq_s8(vandq_s8(vaddq_s8(v18[1], v18[1]), a10)));
  *&STACK[0x28C] = vaddq_s8(vaddq_s8(*v18, a11), vmvnq_s8(vandq_s8(vaddq_s8(*v18, *v18), a10)));
  *&STACK[0x29C] = v19;
  return (*(v17 + 8 * (a9 ^ 0xA8497F17)))(a1, a2, a3, a4, a5, a6, a7, a8, a12, a13, a14, a15, a16);
}

uint64_t sub_100024D9C@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, _DWORD *a10)
{
  v13 = (a2 - 205) | 0xC3;
  v14 = (*a10 ^ 0xFE1ABF52) * *(*(a5 + 16) + 16);
  v15 = 843532609 * ((1039751970 - ((v11 - 128) | 0x3DF95B22) + ((v11 - 128) | 0xC206A4DD)) ^ 0x9E4BF058);
  *(v11 - 120) = &a9;
  *(v11 - 104) = a6;
  *(v11 - 112) = (v13 + 1970) ^ v15;
  *(v11 - 108) = 1365209361 - v15;
  *(v11 - 128) = v15 + ((v13 - 274488593) & 0x105C5FE3 ^ 0x1F18DC3D ^ v14) + ((2 * v14) & 0x3E31BFFE) - 84958776;
  v16 = (*(v10 + 8 * (v13 + 2561)))(v11 - 128);
  return (*(v10 + 8 * ((22 * (a1 != 1)) ^ v13)))(v16);
}

uint64_t sub_1000251C4()
{
  v6 = (v3 - 32);
  v7 = (v4 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v2 == 32) * (v0 - 2557)) ^ (v1 - 134))))();
}

uint64_t sub_100025210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *a1 = 0xDFDFDFDFDFDFDFDFLL;
  a1[1] = 0x2020202026202032;
  v66 = 675097751 * (((v64 - 192) & 0x123E30E | ~((v64 - 192) | 0x123E30E)) ^ 0xBD9C3967);
  *(v64 - 192) = v66 ^ 0x9C76177B;
  *(v64 - 188) = v66 + v63 + 1986156175;
  STACK[0x3E8] = v62;
  (*(v65 + 8 * (v63 + 697)))(v64 - 192);
  LODWORD(STACK[0x278]) = 1912886759;
  v67 = (*(a62 + 8 * (v63 + 679)))(336, 0x100004077774924);
  STACK[0x330] = v67;
  return (*(a62 + 8 * (((4 * (((3 * (v63 ^ 0x6B) + 1) ^ (v67 == 0)) & 1)) & 0xF7 | (8 * (((3 * (v63 ^ 0x6B) + 1) ^ (v67 == 0)) & 1))) ^ v63)))(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100025424@<X0>(char a1@<W1>, char a2@<W2>, int a3@<W3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  v44 = v43[396] ^ ((*v43 & 0x7FFFFFFE | v43[623] & 0x80000000) >> 1);
  v43[623] = (v44 + v40 - ((v44 << (a2 + a4 - 68 + a1)) & a3)) ^ *(v42 + 4 * (*v43 & 1));
  return (*(v41 + 8 * ((59 * (a40 < 0x270)) ^ a4)))();
}

uint64_t sub_1000254D8()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + 1 - v3;
  v10 = v2 + v9;
  v11 = v2 + v8 + 1;
  v12 = v1 + v9;
  v13 = v1 + v8 + 1;
  v14 = v0 - v3 + v8 + 2;
  v15 = v8 + (v4 + 64) + v0 - 2508;
  v17 = v13 > v5 && v12 < v7;
  if (v11 > v5 && v10 < v7)
  {
    v17 = 1;
  }

  v20 = v14 < v7 && v15 > v5 || v17;
  return (*(v6 + 8 * (((((v4 - 1114) ^ v20) & 1) == 0) | v4)))();
}

void sub_100025574(_DWORD *a1)
{
  v1 = 50899313 * (a1 ^ 0x2ACB2A7A);
  v2 = *a1 + v1;
  __asm { BRAA            X13, X17 }
}

void sub_1000256D8(uint64_t a1)
{
  v1 = *a1 - 143681137 * ((-2 - ((a1 | 0xBACA5E2F) + (~a1 | 0x4535A1D0))) ^ 0xA39D0DC0) + 615;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 1365210795;
  v3 = v2 - 1365210795 < 0;
  v5 = 1365210795 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  __asm { BRAA            X19, X17 }
}

void sub_1000257BC(_DWORD *a1)
{
  v1 = *a1 ^ (1037613739 * ((-641975426 - (a1 | 0xD9BC3B7E) + (a1 | 0x2643C481)) ^ 0xF741E9FE));
  __asm { BRAA            X8, X17 }
}

void sub_100025914()
{
  v0 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EA90) ^ 8)) ^ byte_1000EC720[byte_1000E7D70[(11 * ((qword_10013EA10 - dword_10013EA90) ^ 8))] ^ 0xA0]) + 183);
  v1 = *(&off_1001252D0 + (byte_1000E7B70[byte_1000E4460[(11 * (*v0 ^ qword_10013EA10 ^ 8))] ^ 0x85] ^ (11 * (*v0 ^ qword_10013EA10 ^ 8))) - 116);
  v2 = *v1 - *v0 - &v4;
  *v0 = 1405565963 * v2 - 0x49B2A3DDF3C140A8;
  *v1 = 1405565963 * (v2 ^ 0xBCA8FC1BD5CAFD08);
  v5[1] = 1504884919 * (((v5 | 0x5424CDD4) - (v5 & 0x5424CDD4)) ^ 0xAFE77ACF) + 1212455568;
  LOBYTE(v1) = 11 * ((*v1 + *v0) ^ 8);
  v3 = *(&off_1001252D0 + ((11 * (dword_10013EA90 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC620[byte_1000E7C70[(11 * (dword_10013EA90 ^ 8 ^ qword_10013EA10))] ^ 0x12]) - 15) - 8;
  (*&v3[8 * (v1 ^ byte_1000E7B70[byte_1000E4460[v1] ^ 0x3E]) + 20936])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100025B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, int a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  *v65 = v65[623] - ((a63 + 341) & 0xC70CB991) + (((v67 | ~(a63 + 341)) & (a63 + 341 - v67) | v67 & ~(a63 + 341)) >> 31);
  *(v69 - 184) = v68 + (v66 + 1);
  *(v69 - 160) = a59 - v68;
  *(v69 - 156) = a57 - v68;
  *(v69 - 168) = a56;
  *(v69 - 192) = (a63 + 1699922301) ^ v68;
  *(v69 - 176) = a59 - v68 - 114;
  *(v69 - 172) = v68 ^ 1;
  v70 = (*(v64 + 8 * a53))(v69 - 192);
  return (*(a64 + 8 * *(v69 - 188)))(v70);
}

void sub_100025C0C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, char *a19)
{
  v21 = 143681137 * ((((2 * &a17) | 0xB20C2B3C) - &a17 + 653912674) ^ 0x3FAEB98E);
  a17 = ((a1 ^ 0x75CFBDDD) - 17694984 + (((v20 + 1788) ^ 0xEB9F73B4) & (2 * a1))) ^ v21;
  a18 = v21 + v20 + 649;
  a19 = &a10;
  (*(v19 + 8 * (v20 + 2540)))(&a17);
  JUMPOUT(0x100045B94);
}

uint64_t sub_100025CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = (v62 - 991) | 0x100;
  LODWORD(STACK[0x2B8]) = 0;
  v66 = LODWORD(STACK[0x2B8])++;
  *a40 = v66 + 1;
  v67 = *v63;
  v68 = 210068311 * ((v64 - 192) ^ 0x8BC17F9A576F9AD7);
  *(v64 - 192) = (v65 + 1699922301) ^ v68;
  v69 = v65 - 2063957250 - v68;
  *(v64 - 176) = v69 + 44;
  *(v64 - 172) = v68 ^ 1;
  *(v64 - 168) = 5119 - v68;
  *(v64 - 160) = v69;
  *(v64 - 156) = ((v65 - 2063957250) ^ 0x39) - v68;
  *(v64 - 184) = v68 + v67;
  v70 = (*(a2 + 8 * (v65 + 2482)))(v64 - 192);
  return (*(a62 + 8 * *(v64 - 188)))(v70);
}

uint64_t sub_100025CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = (v17 - 780625569) & 0x2E8767FF;
  v21 = 435584651 * ((2 * ((v19 - 136) & 0x412EFFF0) - (v19 - 136) + 1053884424) ^ 0x53E31A5E);
  *(v19 - 128) = &a15;
  *(v19 - 120) = v21 + v17 - 17;
  *(v19 - 136) = (((2 * v15) & 0x7FBFF76E) - 130654208 + ((v20 + 1071641820) ^ v15)) ^ v21;
  (*(v18 + 8 * (v17 ^ 0xFB6)))(v19 - 136);
  *(v19 - 112) = v16;
  *(v19 - 128) = a14;
  *(v19 - 120) = (v20 - 572) ^ (1361651671 * ((2 * ((v19 - 136) & 0x297B00C0) - (v19 - 136) - 695926982) ^ 0x9DEF3344));
  v22 = (*(v18 + 8 * (v20 + 981)))(v19 - 136);
  return (*(v18 + 8 * ((56 * (*(v19 - 136) > ((v20 + 709482784) & 0xD5B624FE) + 93920587)) ^ v20)))(v22);
}

uint64_t sub_100025E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16, unsigned int a17, char *a18, int a19)
{
  v23 = ((2 * (&a16 & 0x7C58CD80) - &a16 - 2086194564) ^ 0x78648567) * v22;
  a16 = v23 ^ 0x660F49D;
  a17 = 1735604055 - v23;
  LODWORD(a18) = v23 + 2442;
  HIDWORD(a18) = 518268483 - v23;
  (*(v19 + 22536))(&a16);
  a16 = (50899313 * ((&a16 & 0x88DDBF50 | ~(&a16 | 0x88DDBF50)) ^ 0x5DE96AD5)) ^ 0x78C;
  a18 = &a14;
  v24 = (*(v19 + 22360))(&a16);
  return (*(v19 + 8 * ((124 * (a19 == v21)) ^ v20)))(v24);
}

uint64_t sub_100025F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v5 = v3 - 1428;
  v6 = (a1 + a3 - 16);
  v7 = (v4 + a3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(a2 + 8 * ((((a3 & 0xFFFFFFE0) == 32) * ((v5 + 1011) ^ 0x53A)) ^ (v5 + 69))))();
}

uint64_t sub_100025FD4()
{
  *v0 = (v9 << (v2 + v1 - 91)) | v6;
  v10 = v3 - 143681137 * (((&v10 | 0xD3BF1E62) - &v10 + (&v10 & 0x2C40E198)) ^ 0x3517B272) + v2 + v1;
  v11 = v8;
  (*(v4 + 8 * ((v2 + v1) ^ (v1 + 3625))))(&v10);
  v11 = v7;
  v10 = v3 + v2 + v1 - 143681137 * ((&v10 - 1579074051 - 2 * (&v10 & 0xA1E13DFD)) ^ 0x474991ED);
  (*(v4 + 8 * (v3 + v2 + v1 + 2507)))(&v10);
  return 0;
}

void sub_100026108(uint64_t a1)
{
  v1 = 435584651 * ((2 * (a1 & 0xDF2226E) - a1 + 1913511313) ^ 0x1F3FC7C7);
  v2 = **(a1 + 24) - 1795609808;
  v3 = (*(a1 + 32) ^ v1) - 1674261718;
  v4 = v2 < 0xEA2DC9BA;
  v5 = v2 > v3;
  if (v3 < 0xEA2DC9BA != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_1000262B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30)
{
  *a30 = 1;
  v34 = *v32;
  *(v33 - 104) = (v30 + 1893802746) ^ a20;
  *(v33 - 144) = a20 + v30 + 1372916485 + 45;
  *(v33 - 140) = ((v30 + 1372916485) ^ 0x1C) - a20;
  *(v33 - 112) = a19;
  *(v33 - 120) = (v30 + 1372916485) ^ a20;
  *(v33 - 116) = a20;
  *(v33 - 128) = v34 ^ a20;
  v35 = (*(v31 + 8 * (a2 + v30 + 2771)))(v33 - 144);
  return (*(v31 + 8 * *(v33 - 136)))(v35);
}

uint64_t sub_10002637C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, int a12, int a13, char a14, uint64_t a15, int a16)
{
  v23 = 210068311 * (&a11 ^ 0x576F9AD7);
  a14 = ((((*(v16 + 24) - v21) ^ 0xE0) + 32) ^ (((*(v16 + 24) - v21) ^ 0x9C) + 100) ^ (((*(v16 + 24) - v21) ^ 0x43) + ((v19 - 97) ^ 0x5B))) - 87 * (&a11 ^ 0xD7) - 110;
  a11 = &a10;
  a15 = v20;
  a12 = (v22 + 1152123226) ^ v23;
  a16 = v19 - v23 + 598;
  v24 = (*(v18 + 8 * (v19 ^ 0x872)))(&a11);
  return (*(v18 + 8 * ((2549 * (a13 == v17)) ^ v19)))(v24);
}

uint64_t sub_100026448@<X0>(uint64_t a1@<X8>)
{
  v7 = (v4 + 2018223197) & 0x87B457DF;
  v8 = 21 * (v7 ^ 0x13A);
  v9 = v5 + v8 - 734;
  *(*(a1 + 8) + 4 * (v5 + v1)) = v6 ^ (v3 + 281) ^ v7;
  *(a1 + 4) = v9;
  v10 = v9 + v1;
  if (v9 + v1 < 0)
  {
    v10 = -v10;
  }

  return (*(v2 + 8 * (((((v10 ^ 0xFDFF7355) + ((v8 + 1357294346) & 0xAF1953BF) + ((2 * v10) & 0xFBFEE6AA) + 33589563 + ((((v8 + 1357294346) & 0xAF1953BF) + 554440749) & 0xDEF3E7EF)) >> 31) * ((52 * ((v8 + 1357294346) & 0xAF1953BF ^ 0x1AC)) ^ 0x16B)) ^ (v8 + 1357294346) & 0xAF1953BF)))();
}

uint64_t sub_100026568(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = v4 + 1573;
  v8 = (v4 + 1573) ^ 0xD6F;
  v9 = ((v7 - 2206) ^ (v5 - 94)) - a4;
  if (a3 > v9)
  {
    v9 = a3;
  }

  return (*(v6 + 8 * ((7 * (v9 + 1 >= (v8 - 1803))) ^ v7)))(a1, 0);
}

uint64_t sub_1000266B0@<X0>(int a1@<W8>)
{
  *v1 = STACK[0x214];
  v1[85] = STACK[0x304];
  v1[86] = STACK[0x460];
  v1[87] = STACK[0x314];
  v1[88] = STACK[0x340];
  return (*(v2 + 8 * (((STACK[0x2E8] == 0) * (((94 * (a1 ^ 0xC1)) ^ 0x834) + ((94 * (a1 ^ 0xC1) + 473138147) & 0xE3CC7BAA) - 2508)) ^ (94 * (a1 ^ 0xC1) + 2442))))();
}

uint64_t sub_100026734()
{
  v3 = LODWORD(STACK[0x3A4]) + (((v1 - 582) | 0x200) ^ 0x7F382576);
  v4 = ((v0 + 1651012074) < 0xD46CC681) ^ (v3 < 0xD46CC681);
  v5 = v3 < v0 + 1651012074;
  if (v4)
  {
    v5 = (v0 + 1651012074) < 0xD46CC681;
  }

  return (*(v2 + 8 * (((((v1 + 678) ^ v5) & 1) == 0) ^ v1)))();
}

uint64_t sub_100026808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, int a25, int a26, unsigned int a27, unsigned int a28)
{
  v29 = (a26 & 0x31B2C7B8 ^ 0x52D6B311) + a22;
  v30 = v29 < a25 + 1389800015;
  v31 = v29 > a28;
  if (a28 < a27 != v30)
  {
    v31 = v30;
  }

  return (*(v28 + 8 * ((97 * !v31) ^ (a8 + 2190))))();
}

uint64_t sub_100026814()
{
  v5 = 68 * (v3 ^ 0x928);
  v6 = (v5 - 1466);
  *(v0 + v2 + v6 - 847) = *(v1 + v2 + v6 - 847) ^ 0x20;
  return (*(v4 + 8 * (v5 ^ (2 * (v2 + v6 != 847)))))();
}

uint64_t sub_100026894@<X0>(unint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v8 = (v5 + a3);
  *v8 = v7;
  v8[1] = v7;
  return (*(v6 + 8 * (((((v4 - 1651149702) & 0x626A8DB5 ^ a1) == (v3 & 0xFFFFFFFFFFFFFFF0)) * a2) ^ v4)))();
}

uint64_t sub_100026914@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) - ((*(v3 + v7) << v5) & 0x40) + 32;
  return (*(v1 + 8 * (((v7 == 0) * v6) ^ v2)))();
}

uint64_t sub_100026948@<X0>(int a1@<W8>)
{
  v4 = v2 + a1;
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return (*(v3 + 8 * ((938 * (v5 > 613 * (v1 ^ 0x9FE) - 1709)) ^ v1)))();
}

void sub_1000269C4()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 32) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(v0 + 4) ^ (1361651671 * ((-2 - ((~v0 | 0xB4E5DE43) + (v0 | 0x4B1A21BC))) ^ 0xFF8E123D));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100026B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v17 - 120) = (v15 - 187) ^ (1361651671 * ((v17 - 136) ^ 0x4B6BCC7E));
  *(v17 - 128) = a14;
  *(v17 - 112) = &a15;
  v18 = (*(v16 + 8 * (v15 ^ 0xFEA)))(v17 - 136);
  return (*(v16 + 8 * ((38 * ((v15 ^ 0x81 ^ (*(v17 - 136) == (v15 ^ 0x599271D))) & 1)) ^ v15)))(v18);
}

uint64_t sub_100026D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v24 = 1504884919 * ((v15 + 1628430679 - 2 * (v15 & 0x610FE157)) ^ 0x9ACC564C);
  *(v23 - 128) = (v19 ^ 0xB2F7BCFB) + v24 + ((v19 << ((v22 ^ 0x42) - 78)) & 0x65EF79F6) + 1874583328;
  *(v23 - 124) = v22 + 1166 - v24;
  *(v23 - 120) = a15;
  (*(v20 + 8 * (v22 + 1212)))(v23 - 128);
  v25 = 210068311 * (((v15 | 0xC90B880FA313B292) - (v15 & 0xC90B880FA313B292)) ^ 0x42CAF795F47C2845);
  *(v23 - 108) = (v22 + 46) ^ v25;
  *(v23 - 128) = a15;
  *(v23 - 120) = v25 ^ ((v18 ^ 0xB3BED7FDF5EFFFEDLL) + 0x5FCD6F33FF7F3F7FLL + ((2 * v18) & 0x677DAFFBEBDFFFDALL));
  (*(v20 + 8 * (v22 ^ 0xCE4)))(v23 - 128);
  v26 = 1504884919 * ((((v15 | 0xA18502A) ^ 0xFFFFFFFE) - (~v15 | 0xF5E7AFD5)) ^ 0xE2418CE);
  *(v23 - 128) = (v16 ^ 0xAEFFBDBF) + ((2 * v16) & 0x5DFF7B7E) + 1941167708 + v26;
  *(v23 - 124) = v22 + 1166 - v26;
  *(v23 - 120) = a15;
  (*(v20 + 8 * (v22 ^ 0xCC4)))(v23 - 128);
  v27 = 210068311 * (((v15 | 0x9B6F999586B78163) - v15 + (v15 & 0x6490666A79487E98)) ^ 0x10AEE60FD1D81BB4);
  *(v23 - 128) = a15;
  *(v23 - 120) = v27 ^ ((v17 ^ 0xF7FCE775FF7FFF6CLL) + 0x1B8F5FBBF5EF4000 + ((2 * v17) & 0xEFF9CEEBFEFFFED8));
  *(v23 - 108) = (v22 + 46) ^ v27;
  (*(v20 + 8 * (v22 ^ 0xCE4)))(v23 - 128);
  v28 = v21 != 0;
  if (v21)
  {
    v29 = -67125278;
  }

  else
  {
    v29 = -67125280;
  }

  v30 = (v28 ^ 0x26B3DC3B) + v29;
  v31 = 1504884919 * (((v15 | 0xEB9344F1) + (~v15 | 0x146CBB0E)) ^ 0x1050F3EB);
  *(v23 - 128) = v30 + v31;
  *(v23 - 124) = v22 + 1166 - v31;
  *(v23 - 120) = a15;
  v32 = (*(v20 + 8 * (v22 ^ 0xCC4)))(v23 - 128);
  return (*(v20 + 8 * (v22 ^ (390 * v28))))(v32);
}

uint64_t sub_100027028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v78 = *(v28 + 8 * a9);
  v33 = STACK[0x2EC];
  v34 = STACK[0x2F0];
  v35 = (LOBYTE(STACK[0x2FC]) - ((2 * LOBYTE(STACK[0x2FC])) & 0xF0) + 122);
  if (v35 == 124)
  {
    v37 = (a8 + 101) | 0x85;
    v38 = (((v37 + 32) ^ 0x35 ^ *(&STACK[0x29C] + v29 + 1196100179)) << 24) | ((*(&STACK[0x29C] + v29 + 1196100180) ^ 0x20) << 16) | ((*(&STACK[0x29C] + v29 + 1196100181) ^ 0x20) << 8) | *(&STACK[0x29C] + v29 + 1196100182) ^ 0x20;
    *v32 = v38 + v31 - (v27 & (2 * v38));
    v39 = *(v28 + 8 * ((480 * ((v29 + 1196100183) > 0x3F)) ^ v37));
    return v39(1196100183, v30 + 16, v39, 545344768, 109994908, 4294967183, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
  }

  else if (v35 == 123)
  {
    return sub_100027084(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v40 = (((LODWORD(STACK[0x2E4]) ^ 0xD7ACCF05) + 676540667) ^ ((LODWORD(STACK[0x2E4]) ^ 0x584A6D61) - 1481272673) ^ ((LODWORD(STACK[0x2E4]) ^ 0x4168C1F8) - 1097384440)) + (((LODWORD(STACK[0x2E4]) ^ 0x795815AA) - 2035815850) ^ ((LODWORD(STACK[0x2E4]) ^ 0x9BEFA7F1) + 1678792719) ^ ((LODWORD(STACK[0x2E4]) ^ 0x2C39D1C7) - 741986759)) + 98481275;
    v41 = (v40 ^ 0xC63F083D) & (2 * (v40 & 0x973E12BD)) ^ v40 & 0x973E12BD;
    v42 = ((2 * (v40 ^ 0xCA4F092D)) ^ 0xBAE23720) & (v40 ^ 0xCA4F092D) ^ (2 * (v40 ^ 0xCA4F092D)) & 0x5D711B90;
    v43 = v42 ^ 0x45110890;
    v44 = (v42 ^ 0x18601300) & (4 * v41) ^ v41;
    v45 = ((4 * v43) ^ 0x75C46E40) & v43 ^ (4 * v43) & 0x5D711B90;
    v46 = (v45 ^ 0x55400A00) & (16 * v44) ^ v44;
    v47 = ((16 * (v45 ^ 0x8311190)) ^ 0xD711B900) & (v45 ^ 0x8311190) ^ (16 * (v45 ^ 0x8311190)) & 0x5D711B90;
    v48 = v46 ^ 0x5D711B90 ^ (v47 ^ 0x55111900) & (v46 << 8);
    v49 = v40 ^ (2 * ((v48 << 16) & 0x5D710000 ^ v48 ^ ((v48 << 16) ^ 0x1B900000) & (((v47 ^ 0x8600290) << 8) & 0x5D710000 ^ 0xC600000 ^ (((v47 ^ 0x8600290) << 8) ^ 0x711B0000) & (v47 ^ 0x8600290))));
    v50 = (((LODWORD(STACK[0x2E8]) ^ 0x25251AB0) - 623188656) ^ ((LODWORD(STACK[0x2E8]) ^ 0x303C37A4) - 809252772) ^ ((LODWORD(STACK[0x2E8]) ^ 0xDB974E88) + 610840952)) + (((LODWORD(STACK[0x2E8]) ^ 0x6172D07) - 102182151) ^ ((LODWORD(STACK[0x2E8]) ^ 0x20D54211) - 550846993) ^ ((LODWORD(STACK[0x2E8]) ^ 0xE84C0C8A) + 397669238)) - 1305019039;
    v51 = (v50 ^ 0xEAF585D7) & (2 * (v50 & 0xEAE5C9D7)) ^ v50 & 0xEAE5C9D7;
    v52 = ((2 * (v50 ^ 0xEA778475)) ^ 0x1249B44) & (v50 ^ 0xEA778475) ^ (2 * (v50 ^ 0xEA778475)) & 0x924DA2;
    v53 = v52 ^ 0x9244A2;
    v54 = (v52 ^ 0x900) & (4 * v51) ^ v51;
    v55 = ((4 * v53) ^ 0x2493688) & v53 ^ (4 * v53) & 0x924DA0;
    v56 = v54 ^ 0x924DA2 ^ (v55 ^ 0x480) & (16 * v54);
    v57 = (16 * (v55 ^ 0x924922)) & 0x924DA0 ^ 0x920582 ^ ((16 * (v55 ^ 0x924922)) ^ 0x924DA20) & (v55 ^ 0x924922);
    v58 = (v56 << 8) & 0x924D00 ^ v56 ^ ((v56 << 8) ^ 0x924DA200) & v57;
    LODWORD(STACK[0x2E4]) = v49 ^ 0xD1724601;
    LODWORD(STACK[0x2E8]) = v50 ^ (2 * ((v58 << 16) & 0x920000 ^ v58 ^ ((v58 << 16) ^ 0x4DA20000) & ((v57 << 8) & 0x920000 ^ 0x920000 ^ ((v57 << 8) ^ 0x124D0000) & v57))) ^ 0x244B310F;
    v59 = (((v33 ^ 0xBC302F24) + 1137692892) ^ ((v33 ^ 0xDF375EF6) + 550019338) ^ ((v33 ^ 0xAD89124E) + 1383525810)) + (((LODWORD(STACK[0x2EC]) ^ 0xBA003C5F) + 1174389665) ^ ((LODWORD(STACK[0x2EC]) ^ 0x218D8843) - 562923587) ^ ((LODWORD(STACK[0x2EC]) ^ 0x5503D780) - 1426315136)) - 988312899;
    v60 = (v59 ^ 0x9BC5BB7A) & (2 * (v59 & 0xD8053C7B)) ^ v59 & 0xD8053C7B;
    v61 = ((2 * (v59 ^ 0x1BC59BCC)) ^ 0x87814F6E) & (v59 ^ 0x1BC59BCC) ^ (2 * (v59 ^ 0x1BC59BCC)) & 0xC3C0A7B6;
    v62 = v61 ^ 0x4040A091;
    v63 = (v61 ^ 0x80000324) & (4 * v60) ^ v60;
    v64 = ((4 * v62) ^ 0xF029EDC) & v62 ^ (4 * v62) & 0xC3C0A7B4;
    v65 = (v64 ^ 0x3008690) & (16 * v63) ^ v63;
    v66 = ((16 * (v64 ^ 0xC0C02123)) ^ 0x3C0A7B70) & (v64 ^ 0xC0C02123) ^ (16 * (v64 ^ 0xC0C02123)) & 0xC3C0A7B0;
    v67 = v65 ^ 0xC3C0A7B7 ^ (v66 ^ 0x2300) & (v65 << 8);
    v68 = v59 ^ (2 * ((v67 << 16) & 0x43C00000 ^ v67 ^ ((v67 << 16) ^ 0x27B70000) & (((v66 ^ 0xC3C08487) << 8) & 0x43C00000 ^ 0x3400000 ^ (((v66 ^ 0xC3C08487) << 8) ^ a27) & (v66 ^ 0xC3C08487))));
    v69 = (((v34 ^ 0x17E76481) - 401040513) ^ ((v34 ^ 0x602D4244) - 1613578820) ^ ((v34 ^ 0xB9444559) + 1186708135)) + (((LODWORD(STACK[0x2F0]) ^ 0xFEC93D97) + 20365929) ^ ((LODWORD(STACK[0x2F0]) ^ 0x805A941D) + 2141547491) ^ ((LODWORD(STACK[0x2F0]) ^ 0xB01DCA16) + 1340225002)) - 225641837;
    v70 = (v69 ^ 0xF88A5) & (2 * (v69 & 0xAA8FCCA5)) ^ v69 & 0xAA8FCCA5;
    v71 = ((2 * (v69 ^ 0x501D90A5)) ^ 0xF524B800) & (v69 ^ 0x501D90A5) ^ (2 * (v69 ^ 0x501D90A5)) & 0xFA925C00;
    v72 = v71 ^ 0xA924400;
    v73 = (v71 ^ 0xF0001000) & (4 * v70) ^ v70;
    v74 = ((4 * v72) ^ 0xEA497000) & v72 ^ (4 * v72) & 0xFA925C00;
    v75 = v73 ^ 0xFA925C00 ^ (v74 ^ 0xEA005000) & (16 * v73);
    v76 = (16 * (v74 ^ 0x10920C00)) & 0xFA925C00 ^ 0x52921C00 ^ ((16 * (v74 ^ 0x10920C00)) ^ 0xA925C000) & (v74 ^ 0x10920C00);
    v77 = (v75 << 8) & 0xFA925C00 ^ v75 ^ ((v75 << 8) ^ 0x925C0000) & v76;
    LODWORD(STACK[0x2EC]) = v68 ^ 0x960A1089;
    LODWORD(STACK[0x2F0]) = v69 ^ (2 * ((v77 << 16) & 0x7A920000 ^ v77 ^ ((v77 << 16) ^ 0x5C000000) & ((v76 << 8) & 0x7A920000 ^ 0x68820000 ^ ((v76 << 8) ^ 0x925C0000) & v76))) ^ 0x5051739;
    return v78(9568256, &STACK[0x29C], 4203895808, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
  }
}

uint64_t sub_100027084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = *(v8 + v9 + v13) ^ 0x20 | ((*(v8 + v9 + v13 + 1) ^ (a8 + 21)) << 8) | ((*(v8 + v9 + v13 + 2) ^ 0x20) << 16) | ((*(v8 + v9 + v13 + 3) ^ 0x20) << 24);
  v17 = ((2 * (v9 & 0xAD)) & 0xFFF7 | v9 & 0xAD) ^ ((2 * (v9 & 0xAD)) | 0x63224000) & (v9 ^ 0xCB8A22FA);
  v18 = (2 * (v9 ^ 0xCB8A22FA)) & 0x10001156 ^ 0x10001151 ^ ((2 * (v9 ^ 0xCB8A22FA)) ^ 0x855FEEAE) & (v9 ^ 0xCB8A22FA);
  v19 = (4 * v17) & v12 ^ v17 ^ ((4 * v17) ^ 0x63224000) & v18;
  v20 = ((4 * v18) ^ 0xAFD91D5C) & v18 ^ (4 * v18) & v12;
  v21 = v20 ^ 0x33048203;
  v22 = (v20 ^ 0x403A5553) & (16 * v19) ^ v19;
  v23 = ((16 * v21) ^ 0x33ED7570) & v21 ^ (16 * v21) & (v12 - 4);
  v24 = v22 ^ (v12 + 3) ^ (v23 ^ 0x332C5500) & (v22 << 8);
  *(v15 + 4 * (((v9 ^ (2 * ((v24 << 16) & 0x733E0000 ^ v24 ^ ((v24 << 16) ^ 0x57570000) & (((v23 ^ 0x40128207) << 8) & 0x733E0000 ^ 0x41280000 ^ (((v23 ^ 0x40128207) << 8) ^ 0x3ED70000) & (v23 ^ 0x40128207))))) >> 2) ^ 0x3E3956C0)) = v16 + v14 - (v10 & (2 * v16));
  return (*(v11 + 8 * ((90 * ((v9 + 4 + v13) > 0x3F)) ^ (a8 + 307))))();
}

uint64_t sub_100027494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  a17 = a14;
  a16 = -347884145 - 143681137 * ((1016540794 - (&a16 | 0x3C972E7A) + (&a16 | 0xC368D185)) ^ 0x25C07D95) + v19 + 172;
  v20 = (*(v18 + 8 * (v19 ^ v17)))(&a16);
  return sub_100027508(v20);
}

uint64_t sub_100027590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, int a14, unsigned int a15, int a16, uint64_t a17, char *a18)
{
  v21 = 1785193651 * (((&a13 | 0x279C7608) - &a13 + (&a13 & 0xD86389F0)) ^ 0xD1BDD224);
  a17 = a9;
  a18 = &a11;
  a14 = v21 ^ 0x7BFABA73;
  a15 = v21 - 929753733;
  a16 = v20 - v21 - 2013068247;
  v22 = (*(v18 + 8 * (v20 + 1098)))(&a13);
  return (*(v18 + 8 * ((3642 * (a13 == ((9 * (v20 ^ 0x6B1)) ^ (v19 + 482)) - 589633337)) ^ v20)))(v22);
}

uint64_t sub_1000276DC()
{
  *(v2 + 8) = v3;
  *(v4 - 132) = v0 - 675097751 * ((2 * ((v4 - 136) & 0x25C31148) - (v4 - 136) + 1513942708) ^ 0x197CCB22) + 829;
  v5 = (*(v1 + 8 * (v0 + 1363)))(v4 - 136);
  return (*(v1 + 8 * ((242 * (*(v4 - 136) != ((v0 + 1972294259) & 0x8A712C3F) + 1958852782)) ^ v0)))(v5);
}

uint64_t sub_100027830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a15 = &a12;
  a14 = (50899313 * ((((2 * &a14) | 0x5B93A1AC) - &a14 - 768200918) ^ 0x702FAAC)) ^ 0x78C;
  v19 = (*(v16 + 22360))(&a14);
  return (*(v16 + 8 * ((1928 * (a16 == v18)) ^ v17)))(v19);
}

uint64_t sub_1000278B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13.val[0].i64[0] = (v8 - v9 - 1) & 0xF;
  v13.val[0].i64[1] = (v8 - v9 + 14) & 0xF;
  v13.val[1].i64[0] = (v8 - v9 + 13) & 0xF;
  v13.val[1].i64[1] = (v8 - v9 + 12) & 0xF;
  v13.val[2].i64[0] = (v8 - v9 + 11) & 0xF;
  v13.val[2].i64[1] = (v8 - v9 + 10) & 0xF;
  v13.val[3].i64[0] = (v8 - v9 + (((a5 + 114) | 0x84) ^ 0xFD)) & 0xF;
  v13.val[3].i64[1] = (v8 - v9) & 0xF ^ 8;
  *(v8 + v10 - 8 - v9) = veor_s8(veor_s8(veor_s8(*(v7 + v13.val[0].i64[0] - 7), *(v8 + v10 - 8 - v9)), veor_s8(*(v6 + v13.val[0].i64[0] - 7), *(v13.val[0].i64[0] + v5 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v13, xmmword_1000F0C40), 0x7373737373737373)));
  return (*(v11 + 8 * ((633 * (8 - (v8 & 0x18) == -v9)) ^ (a5 - 337))))(xmmword_1000F0C40);
}

uint64_t sub_1000279AC()
{
  v4 = v2 - 2117896337;
  v5 = v1 + 1948528809;
  v6 = v5 < 0xE1667C52;
  v7 = v4 < v5;
  if (v6 != v4 < ((v0 - 231) ^ 0xD2Fu) - 513379336)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((50 * v7) ^ v0)))();
}

uint64_t sub_100027B54(uint64_t a1, uint64_t a2, signed int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = v8 - a4;
  if (a3 > v10)
  {
    v10 = a3;
  }

  return (*(v9 + 8 * (((v10 > ((613 * (a5 ^ 0x1A1)) ^ (a8 - 1108))) * (((a5 - 875219443) & 0x342ACF7F) - 1830)) ^ a5)))(a1, 0);
}

void sub_100027C88(int a1@<W8>, uint64_t a2, _DWORD *a3, int a4, int a5)
{
  *a3 = a5;
  *(v6 - 128) = v5;
  *(v6 - 120) = a1 + 1037613739 * ((2 * ((v6 - 128) & 0x32CAFF30) - (v6 - 128) + 1295319244) ^ 0x9C372DB3) - 1785060242;
  JUMPOUT(0x10001FE30);
}

uint64_t sub_100027DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 128) = a14;
  *(v18 - 120) = (v17 - 1116) ^ (((-2 - (((v18 - 136) ^ 0x8495004C | 0x2B6AF6B3) + ((v18 - 136) ^ 0x2908F6A2 | 0xD495094C))) ^ 0x1909C56F) * v15);
  *(v18 - 112) = &a15;
  v19 = (*(v16 + 8 * (v17 ^ 0x24B)))(v18 - 136);
  return (*(v16 + 8 * ((487 * (*(v18 - 136) == (v17 ^ 0x5992ABC))) ^ v17)))(v19);
}

uint64_t sub_100027FA8@<X0>(_DWORD *a1@<X8>, uint8x8_t a2@<D2>)
{
  a2.i32[0] = *v2;
  v5 = vmovl_u8(a2).u64[0];
  *a1 = vuzp1_s8(vadd_s16(vsub_s16(v5, vand_s8(vadd_s16(v5, v5), 0x40004000400040)), 0x20002000200020), 0x40004000400040).u32[0];
  return (*(v4 + 8 * ((3196 * ((v3 ^ 0x713) == 313)) ^ v3)))();
}

uint64_t sub_100028094@<X0>(int a1@<W8>)
{
  v10 = a1 ^ v4;
  v11 = v2 - 36754327;
  v13 = ((**v3 - (*v1 ^ 0x20)) ^ v5) + (((v10 + 12640921) | 0xA1280890) ^ 0x4E04E1E5) + (v7 & (2 * (**v3 - (*v1 ^ 0x20)))) != v8 || v11 == 0;
  return (*(v6 + 8 * ((v13 * v9) ^ v10)))();
}

uint64_t sub_100028114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, unsigned int a18, int a19, uint64_t a20, char *a21)
{
  v23 = 1785193651 * ((&a16 - 1872151407 - 2 * (&a16 & 0x90693C91)) ^ 0x664898BD);
  a20 = a15;
  a21 = &a13;
  a17 = v23 ^ 0xFE357FE0;
  a18 = v23 - 929753733;
  a19 = v22 - v23 - 2013067014;
  v24 = (*(v21 + 8 * (v22 + 2331)))(&a16);
  return (*(v21 + 8 * (((a16 == 1958853845) * (((v22 + 69901126) | 0xE1112299) ^ 0xE53BBA71)) ^ v22)))(v24);
}

uint64_t sub_100028254(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = v5 - 1930320449 + ((a4 - 205) | 0x2AC);
  v8 = v7 < 0xCC8282E2;
  v9 = v7 > (v6 ^ 0x6BE35C0u) - 863862046;
  if ((v6 ^ 0x6BE35C0u) > ((a4 - 1551049750) & 0x5C7323EB) + 863861626 != v8)
  {
    v9 = v8;
  }

  return (*(v4 + 8 * ((29 * v9) ^ a4)))();
}

uint64_t sub_1000282F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v35 - 128) = v32 + 1785193651 * ((((2 * (v35 - 144)) | 0x72D6939C) - (v35 - 144) - 963332558) ^ 0xCF4AEDE2) + 1687;
  *(v35 - 144) = a13;
  *(v35 - 136) = a14;
  *(v35 - 120) = &a32;
  *(v35 - 112) = &a32;
  (*(v33 + 8 * (v32 + 2647)))(v35 - 144);
  *(v35 - 144) = &a22;
  *(v35 - 112) = a14;
  *(v35 - 104) = &a32;
  *(v35 - 128) = a13;
  *(v35 - 120) = &a32;
  *(v35 - 136) = v32 + 435584651 * ((2 * ((v35 - 144) & 0x127CE758) - (v35 - 144) - 310175584) ^ 0x80B102F6) + 813;
  v36 = (*(v33 + 8 * (v32 | 0xA42)))(v35 - 144);
  return (*(v33 + 8 * ((451 * (((3 * (v32 ^ 0x1B3)) ^ 0xFFFFFC7F) + v34 - 181586625 >= ((3 * (v32 ^ 0x1B3) - 385) | 0x484u) + 2147481979)) ^ (3 * (v32 ^ 0x1B3) + 831))))(v36);
}

uint64_t sub_100028424()
{
  v8 = v6;
  v7 = v0 - 143681137 * (((&v7 | 0xAF0F96C3) + (~&v7 | 0x50F0693C)) ^ 0x49A73AD2) + v1;
  (*(v3 + 8 * (v1 ^ (v2 + 3302))))(&v7);
  return (v4 - 1958853845);
}

uint64_t sub_1000284CC()
{
  v6 = (v2 - 32);
  v7 = (v3 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v1 == 32) * v4) ^ v0)))();
}

void sub_100028518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *v40 = (((a31 - v36) | (v36 - a31)) >> (v38 ^ (v37 + 19))) | 0x80000000;
  (*(v39 + 8 * (v36 + 2812)))(a36);
  vld1q_dup_f32(v40);
  JUMPOUT(0x1000285B8);
}

uint64_t sub_100028698@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v13 = (*(*(v12 + 8) + 4 * v6) ^ v8) + v2 + (*(*(v9 + 8) + 4 * v6) ^ v8);
  *(*(a2 + 8) + 4 * v6) = v13 + v8 - (v11 & (2 * v13));
  return (*(v10 + 8 * ((((v4 ^ v7) + v6 == v3) * a1) ^ v5)))();
}

uint64_t sub_1000286F4@<X0>(int a1@<W1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char *a24, char *a25)
{
  v29 = 11 * (v25 ^ 0x2B2);
  v30 = ((-1944093986 - ((v28 - 144) | 0x8C1F7ADE) + ((v28 - 144) | 0x73E08521)) ^ 0x85C1210D) * a1;
  *(v28 - 144) = v26 - v30 + 1590235077 + v29 + 226;
  *(v28 - 136) = a2;
  *(v28 - 128) = &a18;
  *(v28 - 116) = v29 - v30 + 1197;
  v31 = (*(v27 + 8 * (v29 + 2073)))(v28 - 144);
  return sub_100056224(v31, v32, v33, v34, v35, v36, v37, v38, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_100028788()
{
  v6 = 210068311 * ((2 * ((v2 - 144) & 0x1D62A751CFB4BF50) - (v2 - 144) - 0x1D62A751CFB4BF51) ^ 0x695C27346724DA78);
  v3 = **(v1 + 1736);
  *(v2 - 112) = 137006281 - 210068311 * ((2 * ((v2 - 144) & 0xCFB4BF50) - (v2 - 144) + 810238127) ^ 0x6724DA78);
  *(v2 - 136) = 210068311 * ((2 * ((v2 - 144) & 0xCFB4BF50) - (v2 - 144) + 810238127) ^ 0x6724DA78) + 137006169;
  *(v2 - 132) = 137006227 - 210068311 * ((2 * ((v2 - 144) & 0xCFB4BF50) - (v2 - 144) + 810238127) ^ 0x6724DA78);
  *(v2 - 120) = v6;
  *(v2 - 144) = v3 - v6;
  *(v2 - 124) = 55969938 - 210068311 * ((2 * ((v2 - 144) & 0xCFB4BF50) - (v2 - 144) + 810238127) ^ 0x6724DA78);
  *(v2 - 128) = -210068311 * ((2 * ((v2 - 144) & 0xCFB4BF50) - (v2 - 144) + 810238127) ^ 0x6724DA78);
  v4 = (*(v0 + 22328))(v2 - 144);
  return (*(v0 + 8 * *(v2 - 108)))(v4);
}

uint64_t sub_100028ABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v13 = *(v10 + 48 * v11 + 36);
  v15 = v13 + a3 < a8 && v13 != v12 + v8 + ((v8 - 575017432) & 0x224615FA) - 1741;
  return (*(v9 + 8 * ((871 * v15) ^ v8)))();
}

uint64_t sub_100028B14@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22)
{
  v25 = &a22 + v22 + 16;
  *&v26 = 0x2020202020202020;
  *(&v26 + 1) = 0x2020202020202020;
  *(v25 - 1) = v26;
  *v25 = v26;
  return (*(v24 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * (((v23 - 332) | 0x248) + 35)) ^ (v23 - 125))))();
}

uint64_t sub_100028BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1037613739 * ((((v22 - 144) | 0xECB69D95) - (v22 - 144) + ((v22 - 144) & 0x13496268)) ^ 0x3DB4B0EA);
  *(v22 - 136) = v21;
  *(v22 - 112) = (((v19 + 804) ^ 0x5FC819F8) + a17) ^ v23;
  *(v22 - 128) = (v19 + 919) ^ v23;
  *(v22 - 120) = a19;
  v24 = (*(v20 + 8 * (v19 ^ 0x986)))(v22 - 144);
  return sub_100028C30(v24);
}

uint64_t sub_100028C30()
{
  *v2 = v0;
  result = v3;
  *(v3 + 16) = 1958853845;
  return result;
}

uint64_t sub_100028C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 435584651 * ((((v18 - 128) | 0x58C5D175) - ((v18 - 128) & 0x58C5D175)) ^ 0x35F7CB23);
  *(v18 - 120) = &a15;
  *(v18 - 112) = v19 + v15 - 22;
  *(v18 - 128) = ((v17 ^ 0x399F7FFF) - 25764936 + ((v17 << (v15 ^ 0x80)) & 0x733EFFFE)) ^ v19;
  v20 = (*(v16 + 8 * (v15 + 1353)))(v18 - 128);
  return sub_100028D2C(v20);
}

uint64_t sub_100028D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v23 - 104) = &a17;
  *(v23 - 120) = v17;
  *(v23 - 112) = (v20 + 453) ^ (((v19 - ((v23 - 128) | v19) + ((v23 - 128) | 0x6D59DA5C)) ^ 0x26321622) * v21);
  v24 = (*(v18 + 8 * (v20 ^ 0x86A)))(v23 - 128);
  return (*(v18 + 8 * (((*(v23 - 128) > v22) * (((v20 + 1220) ^ 0x1C1) - 1590)) ^ v20)))(v24);
}

uint64_t sub_100028DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 53 * (v4 ^ 0x55F);
  v6 = v3 - (**(a2 + 8) == (v5 - 27));
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1365209361;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v7 = *(a1 + 96) + 528;
  v8 = *(a2 + 8) + (*(a2 + 4) - v6);
  v9 = 1504884919 * ((2 * (v14 & 0x7427C540) - v14 - 1948763462) ^ 0x701B8DA1);
  v17 = v5 - v9 + 1211;
  v14[1] = v6 - v9 + ((v5 - 1244941552) ^ 0x4EFDBA);
  v15 = v8;
  v16 = v7;
  (*(a3 + 8 * (v5 ^ 0x9CC)))(v14);
  v12 = v14[0];
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v6);
  return v12 ^ 0x85B25EF7;
}

uint64_t sub_10002903C()
{
  v6 = v3 + v4 - 847;
  *(v0 + v6) = *(v1 + v6) ^ 0x20;
  return (*(v5 + 8 * (v2 ^ (2 * (v6 != 0)))))();
}

uint64_t sub_10002909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v21 - 104) = (v18 - 1547) ^ (((2 * ((v21 - 128) & 0x573B0DB8) - (v21 - 128) - 1463487936) ^ 0xF489A6C5) * v17);
  *(v21 - 128) = a17;
  *(v21 - 112) = v20;
  v22 = (*(v19 + 8 * (v18 + 782)))(v21 - 128);
  return sub_100031FE8(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_100029100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v19 - 128) = v18 + 1785193651 * ((((v19 - 144) ^ 0x9BFCBFD9 | 0x63477B2D) - ((v19 - 144) ^ 0x9BFCBFD9) + (((v19 - 144) ^ 0x9BFCBFD9) & 0x9CB884D0)) ^ 0xE9A60D8) - 270;
  *(v19 - 144) = v15;
  *(v19 - 136) = v16;
  *(v19 - 120) = &a13;
  *(v19 - 112) = &a13;
  (*(v17 + 8 * (v18 ^ 0x2D2)))(v19 - 144);
  v20 = 675097751 * ((v19 - 144) ^ 0x43402596);
  *(v19 - 128) = v14;
  *(v19 - 144) = v18 - v20 - 1493;
  *(v19 - 140) = ((v13 - 1) ^ (((v13 - 1) ^ 0x346C3D1B) - 1052702683) ^ (((v13 - 1) ^ 0xA7120141) + 1379873919) ^ (((v13 - 1) ^ 0xEFFFFFFF) + 450022081) ^ 0x7519E2A9 ^ (((167 * (((v18 - 1081) | 0x20) ^ 0x420) + 1985152713) ^ (v13 - 1)) - 2088879013)) + v20;
  v21 = (*(v17 + 8 * (v18 + 727)))(v19 - 144);
  return (*(v17 + 8 * ((120 * (*(v19 - 136) != -1426485250)) ^ v18)))(v21);
}

uint64_t sub_100029328@<X0>(uint64_t a1@<X8>)
{
  v4 = (&STACK[0x248] + 4 * v2 + 16);
  v5 = vdupq_n_s32(0xFE1ABF52);
  v4[-1] = v5;
  *v4 = v5;
  return (*(v3 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFF8) == 8) * ((v1 - 949) ^ 0x1D2)) ^ (v1 - 312))))();
}

uint64_t sub_100029380@<X0>(int a1@<W8>)
{
  v3 = a1 - 95;
  v4 = (a1 - 426) | 0xA08;
  v5 = 210068311 * ((v2 - 1534043314 - 2 * ((v2 - 128) & 0xA4905BCE)) ^ 0xF3FFC119);
  *(v2 - 120) = 1833061341 - v5;
  *(v2 - 116) = (a1 + 939) ^ v5;
  *(v2 - 128) = v5 + 1018267821;
  *(v2 - 124) = 1099650842 - v5;
  v6 = (*(v1 + 8 * (a1 + 2308)))(v2 - 128);
  return (*(v1 + 8 * (((*(v2 - 112) > 0x2A43D1D6u) * (v4 - 2580)) ^ v3)))(v6);
}

uint64_t sub_100029484()
{
  v5 = (v4 + 162) | 0x40A;
  v10 = v7;
  v9 = v4 - ((&v9 & 0x22E4D28F | ~(&v9 | 0x22E4D28F)) ^ 0x3BB38160) * v2 + 59;
  (*(v1 + 8 * (v4 + 2566)))(&v9);
  v10 = v8;
  v9 = v5 - (((&v9 | 0x127C1673) - (&v9 & 0x127C1673)) ^ 0xF4D4BA63) * v2 - 1137;
  result = (*(v1 + 8 * (v5 + 1370)))(&v9);
  *(v0 + 8) = v3;
  return result;
}

uint64_t sub_100029578@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v28 = 299 * (a1 ^ 0x9B);
  *(v27 - 144) = &a11;
  *(v27 - 136) = a1 + 435584651 * ((((v27 - 144) | 0xCBB8B30E) - ((v27 - 144) & 0xCBB8B30E)) ^ 0xA68AA958) + 813;
  *(v27 - 128) = a6;
  *(v27 - 120) = &a25;
  *(v27 - 112) = a7;
  *(v27 - 104) = &a25;
  v29 = (*(v25 + 8 * (a1 ^ 0xA42)))(v27 - 144);
  return (*(v25 + 8 * ((451 * (v26 - 181586625 >= ((v28 - 385) | 0x484u) + 2147481979)) ^ (v28 + 831))))(v29);
}

uint64_t sub_100029788(int a1, double a2, int8x16_t a3, double a4, int8x16_t a5, uint64_t a6, int a7, int8x16_t *a8, uint64_t a9, int a10)
{
  v14 = (v13 + v11);
  v15 = vaddq_s8(vsubq_s8(v14[1], vandq_s8(vaddq_s8(v14[1], v14[1]), a5)), a3);
  *a8 = vaddq_s8(vsubq_s8(*v14, vandq_s8(vaddq_s8(*v14, *v14), a5)), a3);
  a8[1] = v15;
  return (*(v12 + 8 * (((((v10 - 33602757) & a1) == 66) * a10) ^ (a7 + v10 - 769 + 781))))();
}

uint64_t sub_100029844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, int a13, unsigned int a14, int a15, uint64_t a16, char *a17)
{
  v20 = 1785193651 * (&a12 ^ 0xF621A42C);
  a13 = v20 ^ 0x1F62976;
  a14 = v20 - 929753733;
  a15 = v19 - v20 - 2013068285;
  a16 = a11;
  a17 = &a10;
  v21 = (*(v17 + 8 * (v19 ^ 0xC24)))(&a12);
  return (*(v17 + 8 * (((a12 == v18) * ((v19 ^ 0xEBD) + 1643)) ^ v19)))(v21);
}

void sub_1000298EC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a5 = v6;
  a3 = v5;
  a4 = v7 + 675097751 * (&a3 ^ 0x43402596) - 368;
  (*(a1 + 8 * (v7 ^ 0x843)))(&a3);
  sub_100060184();
}

uint64_t sub_100029934@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  v15 = 1361651671 * ((2 * ((v14 - 160) & 0x5576BA8) - (v14 - 160) - 89615274) ^ 0xB1C35828);
  *(v14 - 152) = (a1 + 671) ^ v15;
  *(v14 - 148) = 534225978 - v15;
  *(v14 - 160) = v12;
  (*(v13 + 8 * (a1 + 2734)))(v14 - 160);
  return a12(104);
}

uint64_t sub_1000299F8()
{
  v4 = v1 ^ v0;
  v5 = (v1 ^ v0) - 17 < ((v2 - 2005960848) & 0x779086AB) - 1708;
  return (*(v3 + 8 * (((4 * ((((v2 ^ 0x49) + 1) ^ v5) & 1)) & 0xF7 | (8 * ((((v2 ^ 0x49) + 1) ^ v5) & 1))) ^ v2)))(v4);
}

uint64_t sub_100029B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v17 = v16 ^ 0x103;
  a15 = v17 + 1504884919 * (((~&a14 & 0x3449BC52) - (~&a14 | 0x3449BC53)) ^ 0xCF8A0B48) + 1212453942;
  v18 = (*(v15 + 8 * (v17 ^ 0xC82)))(&a14);
  return (*(v15 + 8 * ((292 * (a14 == ((v17 - 769) | 0x400) + 1958851964)) ^ v17)))(v18);
}

uint64_t sub_100029CA8()
{
  v7 = v5;
  v6 = v2 - ((&v6 & 0x6B961C4 | ~(&v6 | 0x6B961C4)) ^ 0x1FEE322B) * v1 - 1374;
  (*(v0 + 8 * (v2 + 1133)))(&v6);
  return (v3 - 1958853845);
}

uint64_t sub_100029DF4(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25)
{
  v30.i64[0] = 0x4040404040404040;
  v30.i64[1] = 0x4040404040404040;
  v31.i64[0] = 0x2020202020202020;
  v31.i64[1] = 0x2020202020202020;
  v32 = (&a25 + v25);
  v33 = vaddq_s8(vsubq_s8(v28[1], vandq_s8(vaddq_s8(v28[1], v28[1]), v30)), v31);
  *v32 = vaddq_s8(vsubq_s8(*v28, vandq_s8(vaddq_s8(*v28, *v28), v30)), v31);
  v32[1] = v33;
  return (*(v27 + 8 * ((419 * (((599 * (v26 ^ (v29 + 2))) ^ 0x48ELL) == (a4 & 0x60))) ^ (a3 + v26 + 683))))();
}

uint64_t sub_100029E80@<X0>(uint64_t a1@<X8>)
{
  v7 = v5 + v4 - 372;
  *(*(v1 + 8) + 4 * v7) = *(*(a1 + 8) + 4 * v7);
  return (*(v2 + 8 * (((v7 == 0) * v6) ^ v3)))();
}

uint64_t sub_100029EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, uint64_t a18, unsigned int a19, unsigned int a20, uint64_t a21)
{
  v26 = ((2 * (&a16 & 0xE3235B8) - &a16 - 238171583) ^ 0xA0E7D5A) * v25;
  a18 = a14;
  a16 = (v23 ^ 0xBEB7FEFB) + ((2 * v23) & 0x7D6FFDF6) + 1677434144 + v26;
  a17 = 2715 - v26;
  (*(v24 + 22088))(&a16);
  v27 = 742307843 * (&a16 ^ 0x1E228D55);
  a18 = v21;
  a19 = 1355 - v27;
  a20 = ((2 * v22) & 0xCFDF2BDA) + (v22 ^ 0xE7EF95ED) - v27 + 1539046400;
  a21 = a14;
  v28 = (*(v24 + 22248))(&a16);
  return (*(v24 + 8 * ((3222 * (a16 == 1958853845)) ^ 0x6F7u)))(v28);
}

uint64_t sub_100029FF0@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if ((a8 - 1361707987) < 0x20DA50C5 != a1 > ((v9 - 2087) ^ 0xDF25AF61))
  {
    v10 = (a8 - 1361707987) < 0x20DA50C5;
  }

  else
  {
    v10 = a1 + 551178437 < a8 - 1361707987;
  }

  return (*(v8 + 8 * ((93 * v10) ^ v9)))();
}

void sub_10002A05C(unint64_t a1, int a2, unsigned int a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v19 = ((v14 ^ 0xDB5C922C611A4B7ALL) + 0x24A36DD39EE5B486) ^ ((v14 ^ 0x37775D8529A472F7) - 0x37775D8529A472F7) ^ ((v14 ^ 0xEC2BCFA99C44096ELL) + 0x13D4305663BBF692);
  v20 = ((((v15 + 2788876) | 0x54900101u) ^ 0x244E798E0B26A944) + v19) * (v19 + 0xC9726A6562F986ALL) + (((((v15 + 2788876) | 0x54900101u) ^ 0x244E798E0B26A944) + v19) * v17 + (v19 + 0xC9726A6562F986ALL) * v16) * v18 + a7;
  v21 = v20 - (((v20 * a1) >> 64) >> 31) * a8;
  v22 = v21 * v11 + (a2 ^ v10) * (a2 ^ v10) + v12;
  v23 = v22 - (((v22 * a5) >> 64) >> 31) * v13;
  *(v9 + a3) = (((v23 * v21) >> 15) - ((2 * ((v23 * v21) >> 15)) & 0x40) + 32) ^ *(v8 + a3);
  *(v9 + (a3 | 1)) = (((v23 * v21) >> 23) - ((2 * ((v23 * v21) >> 23)) & 0x40) + 32) ^ *(v8 + (a3 | 1));
  *(v9 + (a3 | 2)) = (((v23 * v21) >> 31) + (a6 ^ (2 * ((v23 * v21) >> 31)) | 0xBF) + 33) ^ *(v8 + (a3 | 2));
  *(v9 + (a3 | 3)) = (((v23 * v21) >> 39) - ((2 * ((v23 * v21) >> 39)) & 0x40) + 32) ^ *(v8 + (a3 | 3));
  JUMPOUT(0x100005424);
}

uint64_t sub_10002A2BC@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t *a4, int a5, int a6, uint64_t a7)
{
  v12 = ((((2 * &a3) | 0x443BD7C0) - &a3 - 572386272) ^ 0x3C3F66B5) * a1;
  a5 = (v11 - 667) ^ v12;
  a6 = (v9 + 507838176) ^ v12;
  a3 = v12 ^ 0xD053E786;
  a7 = v7;
  a4 = &a2;
  v13 = (*(v8 + 8 * (v11 ^ 0xE98)))(&a3);
  v14 = *(v7 + 24) == (((v11 - 1080) | 0x509) ^ (v10 + 532));
  return (*(v8 + 8 * (((16 * v14) | (v14 << 9)) ^ v11)))(v13);
}

uint64_t sub_10002A374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v25 = (((a23 ^ 0x2560B73A) - 627095423 + 23 * (v24 ^ 0x3AA)) ^ ((a23 ^ 0xA553627D) + 1521261955) ^ ((a23 ^ (3 * a18) ^ 0x7972151A) - 2037522296)) - 200226296;
  v26 = (v25 ^ 0x21ADABB7) & (2 * (v25 & a7)) ^ v25 & a7;
  v27 = ((2 * (v25 ^ 0x29AFABF3)) ^ 0x593D5788) & (v25 ^ 0x29AFABF3) ^ (2 * (v25 ^ 0x29AFABF3)) & a6;
  v28 = v27 ^ 0x2482A844;
  v29 = (v27 ^ 0x80C0180) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xB27AAF10) & v28 ^ (4 * v28) & a6;
  v31 = (v30 ^ 0x201AAB00) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0xC8400C4)) ^ 0xC9EABC40) & (v30 ^ 0xC8400C4) ^ (16 * (v30 ^ 0xC8400C4)) & (a6 - 4);
  return (*(v23 + 8 * ((241 * ((v25 ^ (2 * ((((v32 ^ 0x24140384) << 8) & (a6 - 196) ^ 0xC8A0000 ^ (((v32 ^ 0x24140384) << 8) ^ 0x9EAB0000) & (v32 ^ 0x24140384)) & (((v32 ^ 0x88AA800) & (v31 << 8) ^ v31) << 16) ^ (v32 ^ 0x88AA800) & (v31 << 8) ^ v31))) != a7)) ^ (v24 - 587))))(1279);
}

uint64_t sub_10002A5EC@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v9 = a1 - 1323;
  v10 = 742307843 * (((&a3 | 0x2D220F5D) - (&a3 & 0x2D220F5D)) ^ 0x33008208);
  a3 = v10 ^ 0xD084D04A;
  a5 = (v9 - 673) ^ v10;
  a6 = v10 ^ 0x61F090CD;
  a4 = 0;
  a7 = v7;
  v11 = (*(v8 + 8 * (v9 + 1634)))(&a3);
  return sub_100031848(v11);
}

uint64_t sub_10002A710@<X0>(int a1@<W8>)
{
  v9 = (v2 - 2);
  v10 = v1 + 2;
  *v9 = (v3 + 2 + v5) * (v10 ^ v6);
  *(v9 - 1) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v4 != 2) * v7) ^ a1)))();
}

uint64_t sub_10002A7C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t, unint64_t *, uint64_t))
{
  v22 = v16 ^ 0x260u;
  v23 = (a2 + v15);
  *v23 = v17;
  v23[1] = v18;
  *(v15 + v22 + a2 - 9) = v19;
  v23[3] = a1;
  LODWORD(v23) = 1361651671 * ((2 * ((v21 - 160) & 0x432A54C8) - (v21 - 160) + 1020635958) ^ 0x77BE6748);
  *(v21 - 160) = a2;
  *(v21 - 152) = (v22 + 668) ^ v23;
  *(v21 - 148) = 534225978 - v23;
  v24 = (*(v20 + 8 * (v22 ^ 0xABD)))(v21 - 160);
  return a15(v24, &STACK[0x29C], 456);
}

uint64_t sub_10002A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13, uint64_t a14, int a15)
{
  v20 = (((&a12 | 0xFEF1DFBC) - (&a12 & 0xFEF1DFBC)) ^ 0x53268A7) * v19;
  a12 = v20 + (*(v15 + 8) ^ 0xBFB79EBF) + ((2 * *(v15 + 8)) & 0x7F6F3D7E) + 1660681564;
  a13 = (v18 ^ 0x4A9) - v20 + 2146;
  a14 = a11;
  v21 = (*(v16 + 8 * (v18 ^ 0xC59)))(&a12);
  return (*(v16 + 8 * ((105 * (a15 == (((v18 ^ 0x4A9) + 811924866) & 0xCF9B06D4 ^ (v17 - 656)))) ^ v18 ^ 0x4A9)))(v21);
}

uint64_t sub_10002ABA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v10 = (*(v7 + 8 * ((v8 + 55) ^ 0xEE1)))(*(*(v9 + 8 * ((v8 + 55) ^ 0x574)) - 8), 20, v6, 32, v6, va);
  return (*(v7 + 8 * ((566 * ((v10 ^ (((v8 - 1376397268) & 0x5FFBB6FE) - 269326091)) + 1994243830 + ((2 * v10) & 0xFBC7FBBE) == v5)) ^ (v8 + 55))))();
}

uint64_t sub_10002AC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, unsigned int a14)
{
  v19 = 24 * ((v14 + 251) ^ 0x1DF);
  *(v18 - 120) = v15;
  *(v18 - 108) = v19 - 533 - 742307843 * ((((2 * (v18 - 120)) | 0x328464FA) - (v18 - 120) - 423768701) ^ 0x760BF28);
  (*(v16 + 8 * (v19 ^ 0xF2B)))(v18 - 120);
  v20 = *(v18 - 112);
  *(v18 - 108) = v19 - 533 - 742307843 * (((((v18 - 120) | 0xFC60C57A) ^ 0xFFFFFFFE) - (~(v18 - 120) | 0x39F3A85)) ^ 0x1DBDB7D0);
  *(v18 - 120) = a12;
  (*(v16 + 8 * (v19 + 1771)))(v18 - 120);
  v21 = (((v19 - 768) ^ 0xD3447F84) + *(v18 - 112) * v20 - 1369466086 * (*(v18 - 112) + v20)) * v17;
  a14 = (v21 ^ 0xF77F7F77) + 1507848602 + ((2 * v21) & 0xEEFEFEEE);
  *(v18 - 120) = &a13;
  *(v18 - 104) = a12;
  *(v18 - 112) = v19 + 675097751 * ((v18 - 120) ^ 0x43402596) - 685;
  v22 = (*(v16 + 8 * (v19 ^ 0xE80)))(v18 - 120);
  return sub_10002ADA8(v22);
}

uint64_t sub_10002AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v18 = *v16;
  v19 = 1504884919 * ((~(v11 | 0x6D961845) + (v11 & 0x6D961845)) ^ 0x69AA50A1);
  *(v17 - 136) = v19 + a10 + a9;
  *(v17 - 132) = v12 + 1652 - v19;
  v15[1] = v18;
  (*(v13 + 8 * (v12 + 1698)))(v17 - 136);
  v20 = *v10 ^ 0x3EFB9E9F;
  v21 = (2 * *v10) & 0x7DF73D3E;
  v22 = 1504884919 * ((((2 * v11) | 0xD6696816) - v11 - 1798616075) ^ 0x90F70310);
  v15[1] = *v16;
  *(v17 - 136) = ((v14 + v12 + 1670) ^ 0xF62827CA) + v22 + v20 + v21;
  *(v17 - 132) = v12 + 1652 - v22;
  (*(v13 + 8 * (v12 ^ 0xEEE)))(v17 - 136);
  v23 = *v16;
  v24 = (*(v10 + 8) ^ 0xF7CE67F9FF7F7FFELL) + 0x1BBDDF37F5EFBF6ELL + ((2 * *(v10 + 8)) & 0xEF9CCFF3FEFEFFFCLL);
  v25 = 210068311 * ((v11 + 0x274517337B28EB1 - 2 * (v11 & 0x274517337B28EB1)) ^ 0x89B52EE960DD1466);
  *(v17 - 116) = (v12 + 532) ^ v25;
  *v15 = v23;
  v15[1] = v24 ^ v25;
  (*(v13 + 8 * (v12 + 1730)))(v17 - 136);
  v26 = *v16;
  v27 = (*(v10 + 16) ^ 0x77CED7F7F7EF7FFFLL) - 0x644290C602804093 + ((2 * *(v10 + 16)) & 0xEF9DAFEFEFDEFFFELL);
  v28 = 210068311 * (((v11 | 0x95DFE901D3314243) - (v11 & 0x95DFE901D3314243)) ^ 0x1E1E969B845ED894);
  *(v17 - 116) = (v12 + 532) ^ v28;
  *v15 = v26;
  v15[1] = v27 ^ v28;
  (*(v13 + 8 * (v12 ^ 0xECE)))(v17 - 136);
  v29 = *v16;
  v30 = (*(v10 + 24) ^ 0x5BEE4F7FFDEF3FFELL) - 0x4862084E08800092 + ((2 * *(v10 + 24)) & 0xB7DC9EFFFBDE7FFCLL);
  v31 = 210068311 * (v11 ^ 0x8BC17F9A576F9AD7);
  *(v17 - 116) = (v12 + 532) ^ v31;
  *v15 = v29;
  v15[1] = v30 ^ v31;
  v32 = (*(v13 + 8 * (v12 + 1730)))(v17 - 136);
  return (*(v13 + 8 * ((87 * (*(v17 - 120) == 1958853845)) ^ v12)))(v32);
}

uint64_t sub_10002B314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v36 - 144) = v34;
  *(v36 - 136) = a14;
  *(v36 - 120) = &a32;
  *(v36 - 112) = &a32;
  *(v36 - 128) = v33 - 630 + 1785193651 * ((~((v36 - 144) | 0xE77FBCD) + ((v36 - 144) & 0xE77FBCD)) ^ 0x7A9A01E);
  (*(v32 + 8 * (v33 + 330)))(v36 - 144);
  *(v36 - 128) = v33 - 630 + 1785193651 * ((((2 * (v36 - 144)) | 0x5BD76B5A) - (v36 - 144) + 1377061459) ^ 0x5BCA1181);
  *(v36 - 144) = v34;
  *(v36 - 136) = a14;
  *(v36 - 120) = &a32;
  *(v36 - 112) = &a32;
  (*(v32 + 8 * (v33 ^ 0x34A)))(v36 - 144);
  *(v36 - 144) = v34;
  *(v36 - 136) = a14;
  *(v36 - 120) = &a32;
  *(v36 - 112) = &a32;
  *(v36 - 128) = v33 - 630 + 1785193651 * ((-1800105665 - ((v36 - 144) | 0x94B4913F) + ((v36 - 144) | 0x6B4B6EC0)) ^ 0x9D6ACAEC);
  (*(v32 + 8 * (v33 ^ 0x34A)))(v36 - 144);
  v37 = 2 * v35 - 363173252;
  v38 = 675097751 * ((v36 - 833932268 - 2 * ((v36 - 144) & 0xCE4B34A4)) ^ 0x8D0B1132);
  v39 = v35 + 1962433959;
  *(v36 - 144) = v33 - 1853 - v38;
  *(v36 - 140) = v38 + v35 + 1962433959 - ((v33 - 6928595) & v37);
  *(v36 - 128) = a15;
  (*(v32 + 8 * (v33 ^ 0x2B1)))(v36 - 144);
  v40 = *(v36 - 136) == -1426485250;
  v41 = 675097751 * ((((v36 - 144) | 0x11CDA189) - ((v36 - 144) & 0x11CDA189)) ^ 0x528D841F);
  *(v36 - 128) = a15;
  *(v36 - 144) = v33 - 1853 - v41;
  *(v36 - 140) = ~((v33 ^ 0xFF965977) & (v37 - 2)) + v39 + v41;
  v42 = (*(v32 + 8 * (v33 + 367)))(v36 - 144);
  return (*(v32 + 8 * ((v40 | (8 * v40)) ^ v33)))(v42);
}

uint64_t sub_10002B600()
{
  v0.n128_u64[0] = 0x4040404040404040;
  v0.n128_u64[1] = 0x4040404040404040;
  v1.n128_u64[0] = 0x2020202020202020;
  v1.n128_u64[1] = 0x2020202020202020;
  return sub_10002B620(v0, v1);
}

uint64_t sub_10002B620@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v11 = (v7 + v4 + v6);
  v12 = vaddq_s8(vsubq_s8(*(a1 + v4 + 16), vandq_s8(vaddq_s8(*(a1 + v4 + 16), *(a1 + v4 + 16)), a3)), a4);
  *v11 = vaddq_s8(vsubq_s8(*(a1 + v4), vandq_s8(vaddq_s8(*(a1 + v4), *(a1 + v4)), a3)), a4);
  v11[1] = v12;
  return (*(v10 + 8 * (((((v5 + 1760) ^ v8) + v4 == a2) * v9) ^ (v5 + 557))))();
}

uint64_t sub_10002B6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = v3 + 8;
  *(v6 + v11) = vadd_s8(vsub_s8(*(a3 + v11), vand_s8(vadd_s8(*(a3 + v11), *(a3 + v11)), v9)), v10);
  return (*(v8 + 8 * (((v5 != v11) * v7) ^ v4)))();
}

uint64_t sub_10002B6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t *a11, int a12, unsigned int a13, uint64_t a14)
{
  v18 = 742307843 * (((&a10 | 0x2E5F9E89) - &a10 + (&a10 & 0xD1A06170)) ^ 0x307D13DC);
  a10 = v18 ^ 0xD084D04A;
  a12 = (v17 - 1406) ^ v18;
  a13 = ((v16 ^ 0xE9FAD8CD) + 2012592128 + ((2 * v16) & 0x1A)) ^ v18;
  a14 = v14;
  a11 = &a9;
  v19 = (*(v15 + 8 * (v17 + 901)))(&a10);
  return (*(v15 + 8 * ((3709 * (*(v14 + 24) == (v17 ^ 0x5EB) + 1958853151)) ^ v17)))(v19);
}

uint64_t sub_10002B7C0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((2360 * (v5 == 181 * (v3 ^ 0x296u) - 2353)) ^ (v3 - 482))))();
}

uint64_t sub_10002B840(uint64_t a1, int a2)
{
  if (((v3 - 1369) ^ 0x2EA08F08) + a2 >= 0)
  {
    a2 = -1564548574 - a2;
  }

  return (*(v2 + 8 * ((856 * (a2 - 1365209362 > ((v3 - 6523233) & 0x6386BF) - 1184)) ^ (v3 - 1369))))(a1);
}

uint64_t sub_10002B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, uint64_t a14, int a15)
{
  v19 = ((((&a12 | 0xBC664F66) ^ 0xFFFFFFFE) - (~&a12 | 0x4399B099)) ^ 0xB85A0782) * v18;
  a14 = a10;
  a12 = (v15 ^ 0x36F39CDF) + ((2 * v15) & 0x6DE739BE) - 339738820 + v19;
  a13 = 2715 - v19;
  v20 = (*(v16 + 22088))(&a12);
  return (*(v16 + 8 * ((2519 * (a15 == v17)) ^ 0x165u)))(v20);
}

uint64_t sub_10002BA50()
{
  STACK[0x510] = &STACK[0x2C8];
  *(v2 - 132) = (v0 ^ 0x1EA) - 675097751 * ((2 * ((v2 - 136) & 0x6D7ABBA0) - (v2 - 136) - 1836759975) ^ 0xD1C561CF) + 699;
  v3 = (*(v1 + 8 * ((v0 ^ 0x1EA) + 1233)))(v2 - 136);
  return (*(v1 + 8 * (((*(v2 - 136) == (((v0 ^ 0x1EA) - 284) ^ 0x74C1B80F)) * (((v0 ^ 0x1EA) + 233934580) ^ 0xDF19861)) ^ v0 ^ 0x1EA)))(v3);
}

uint64_t sub_10002BC0C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = (a2 + 187);
  **(a1 + 16) = v6 + v5 + v7 - 932;
  return (*(v4 + 8 * ((1221 * (*(a3 + 24) == v3)) ^ v7)))();
}

uint64_t sub_10002BD84(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = 50899313 * ((2 * ((v17 - 128) & 0x73B55130) - (v17 - 128) + 206221004) ^ 0x268184B6);
  *(v17 - 112) = v18 + ((a3 << 6) & 0xFAFFF3C0) + ((32 * a3) ^ 0xFD7FF9FF) + 2078244736;
  *(v17 - 120) = &a15;
  *(v17 - 128) = v16 - v18 - 206;
  v19 = (*(v15 + 8 * (v16 ^ 0x8D0)))(v17 - 128);
  return (*(v15 + 8 * ((23 * (*(a10 + 4) - 1365209362 < (v16 + 2147482685))) ^ v16)))(v19);
}

uint64_t sub_10002BE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19)
{
  v23 = 742307843 * ((((&a15 | 0x77C0433A) ^ 0xFFFFFFFE) - (~&a15 | 0x883FBCC5)) ^ 0x961D3190);
  a16 = v22;
  a19 = a11;
  a17 = v21 - v23 - 76;
  a18 = (a10 ^ 0x6BAF9FFF) - v23 + (((v21 - 354) ^ 0xD75F3BCA) & (2 * a10)) - 671354386;
  v24 = (*(v20 + 8 * (v21 + 1350)))(&a15);
  return (*(v20 + 8 * ((3558 * (a15 == v19)) ^ v21)))(v24);
}

uint64_t sub_10002BFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = (a15 + v26);
  v28 = (*(v25 + 8 * (v24 + 1866)))(a15 + v26 + 16, 0);
  v29 = *(a15 + v26 + 16);
  v27[1] = v27[6];
  v27[2] = v29;
  v27[3] = (*(v25 + 8 * (v24 + 1767)))(v28);
  v30 = (*(v25 + 8 * (v24 + 1767)))();
  *v27 = v30;
  return sub_10002C028(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, v26, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_10002C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30)
{
  v37 = *(v31 + 4 * (v35 - 1));
  *(v31 + 4 * v35) = *(v32 + 4 * v30) + v30 + ((1664525 * (v37 ^ (v37 >> 30))) ^ *(v31 + 4 * v35));
  *(v36 - 152) = ((v33 - 1050338477) ^ 0x6E) + a30;
  *(v36 - 148) = v33 - 1050338477 - a30 + 36;
  v38 = v36 - 152;
  *(v38 + 32) = a28;
  *(v36 - 112) = (v33 - 2030746576) ^ a30;
  *(v36 - 128) = (v33 - 1050338477) ^ a30;
  *(v36 - 124) = a30;
  *(v38 + 16) = (v35 + 1) ^ a30;
  v39 = (*(v34 + 8 * (v33 + 868)))(v36 - 152);
  return (*(v34 + 8 * *(v36 - 144)))(v39);
}

uint64_t sub_10002C0D8()
{
  if (v0 == 5 || v0 == 8)
  {
    *(v3 - 209) = v1[43] - ((2 * v1[43]) & 0x40) + 32;
    *(v3 - 210) = v1[42] - ((v2 ^ 0x7D) & (2 * v1[42])) + 32;
    *(v3 - 211) = v1[41] - ((2 * v1[41]) & 0x40) + 32;
    *(v3 - 212) = v1[40] - ((2 * v1[40]) & 0x40) + 32;
    *(v3 - 213) = v1[39] - ((2 * v1[39]) & 0x40) + 32;
    *(v3 - 214) = v1[38] - ((2 * v1[38]) & 0x40) + 32;
    *(v3 - 215) = v1[37] - ((2 * v1[37]) & 0x40) + 32;
    *(v3 - 216) = v1[36] - ((2 * v1[36]) & 0x40) + 32;
    *(v3 - 217) = v1[35] - ((2 * v1[35]) & 0x40) + 32;
    *(v3 - 218) = v1[34] - ((2 * v1[34]) & 0x40) + 32;
    *(v3 - 219) = v1[33] - ((2 * v1[33]) & 0x40) + 32;
    *(v3 - 220) = v1[32] - ((2 * v1[32]) & 0x40) + 32;
    *(v3 - 221) = v1[31] - ((2 * v1[31]) & 0x40) + 32;
    *(v3 - 222) = v1[30] - ((2 * v1[30]) & 0x40) + 32;
    *(v3 - 223) = v1[29] - ((2 * v1[29]) & 0x40) + 32;
    v4 = v1[28] - ((2 * v1[28]) & 0x40) + 32;
  }

  else
  {
    v5 = v3 - 224;
    *(v3 - 209) = *(v3 - 193);
    *(v5 + 11) = *(v3 - 197);
    *(v5 + 3) = *(v3 - 205);
    *(v5 + 1) = *(v3 - 207);
    v4 = *(v3 - 208);
  }

  *(v3 - 224) = v4;
  return sub_10002C298();
}

uint64_t sub_10002C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, char a36)
{
  v43 = *(v39 + 560);
  v44 = 1504884919 * ((2 * ((v42 - 176) & 0x39AD2B08) - (v42 - 176) + 1179833585) ^ 0xBD9163EA);
  *(v42 - 120) = (v40 & 0x1C) - v44 + ((v41 + 2147221233) ^ v37) - 635966216;
  *(v42 - 152) = -73 * ((2 * ((v42 + 80) & 8) - (v42 + 80) - 15) ^ 0xEA) + 63;
  *(v42 - 176) = v44 + (v43 ^ 0x9748F9F7) + ((2 * v43) & 0x2E91F3EE) + 1861711773;
  *(v42 - 148) = v41 - v44 + 778;
  *(v42 - 112) = &a36;
  *(v42 - 168) = v42 - 224;
  *(v42 - 160) = v39 + 8;
  *(v42 - 128) = v39 + 48;
  *(v42 - 144) = v42 - 192;
  v45 = (*(v38 + 8 * (v41 + 2718)))(v42 - 176);
  return (*(v38 + 8 * ((2663 * (*(v42 - 136) == v36)) ^ v41)))(v45);
}

void sub_10002C404(uint64_t a1)
{
  (*(v1 + 22864))();
  (*(v1 + 22496))(a1);
  JUMPOUT(0x100027F94);
}

uint64_t sub_10002C4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  *(v14 - 128) = v10 + 1037613739 * ((2 * ((v14 - 136) & 0x5449A5D8) - (v14 - 136) - 1414112730) ^ 0x7AB47759) - 905194276;
  *v12 = v13;
  v15 = (*(v11 + 8 * (v10 - 362795015)))(v14 - 136);
  return sub_1000416E0(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_10002C550@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) - 223977050;
  v4 = ((v2 - 555) ^ 0xE74ACB83) + *(a1 + 12);
  v5 = v3 < 0x32373B1D;
  v6 = v3 > v4;
  if (v5 != v4 < 0x32373B1D)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((985 * v6) ^ v2)))();
}

uint64_t sub_10002C760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v25 - 232) = 0x9908B0DF00000000;
  v26 = **(v22 + 8 * (v21 ^ v24 ^ 0x508));
  *(v25 - 144) = (((v21 ^ v24) - 1521512978) ^ 0x80) - 210068311 * a21;
  *(v25 - 160) = -210068311 * a21;
  *(v25 - 156) = (v21 ^ v24) - 210068311 * a21 + 55968449;
  *(v25 - 152) = v26 ^ (210068311 * a21);
  *(v25 - 176) = -210068311 * a21;
  *(v25 - 168) = 210068311 * a21 + (v21 ^ v24) - 1521512978 - 13;
  *(v25 - 164) = (v21 ^ v24) - 1521512978 - 210068311 * a21;
  v27 = (*(v23 + 8 * ((v21 ^ v24) + 1302)))(v25 - 176);
  return (*(v23 + 8 * *(v25 - 140)))(v27);
}

void sub_10002C898()
{
  *v1 = 0;
  *v0 = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 56) = 515945084;
}

uint64_t sub_10002CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  STACK[0x280] = 0;
  *(v15 + 568) = ((v17 + 1242662229) ^ 0xB5EE74DBLL) & v14;
  STACK[0x270] = v13;
  STACK[0x278] = v12;
  LODWORD(STACK[0x280]) = a12;
  *(v18 - 124) = v17 + 1504884919 * ((2 * ((v18 - 128) & 0x548279A8) - (v18 - 128) + 729646673) ^ 0xD0BE314A) + 576;
  v19 = (*(v16 + 8 * (v17 + 1269)))(v18 - 128);
  return (*(v16 + 8 * ((588 * (*(v18 - 128) == (v17 ^ 0x74C1B91A))) ^ v17)))(v19);
}

uint64_t sub_10002CC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, uint64_t a18, unsigned int a19, unsigned int a20, uint64_t a21)
{
  v27 = ((&a16 - 1642780562 - 2 * (&a16 & 0x9E15286E)) ^ 0x65D69F75) * v26;
  a18 = a14;
  a16 = (v23 ^ 0xF3B3FD9B) + ((2 * v23) & 0xE767FB36) + 788504192 + v27;
  a17 = 2715 - v27;
  (*(v25 + 22088))(&a16);
  v28 = 742307843 * ((630860712 - (&a16 | 0x259A2BA8) + (&a16 | 0xDA65D457)) ^ 0xC4475902);
  a19 = 1355 - v28;
  a20 = (v22 ^ 0x67FBB3ED) - v28 + ((2 * v22) & 0xCFF767DA) - 609231360;
  a18 = v21;
  a21 = a14;
  v29 = (*(v25 + 22248))(&a16);
  return (*(v25 + 8 * ((120 * (a16 != v24)) ^ 0x79Bu)))(v29);
}

uint64_t sub_10002CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v39 = 1361651671 * ((((2 * ((v37 - 128) ^ 0x2A387BD5)) | 0x573E4AD6) - ((v37 - 128) ^ 0x2A387BD5) + 1415633557) ^ 0xCACC92C0);
  *(v37 - 120) = (v36 + 577) ^ v39;
  *(v37 - 116) = a13 - v39 - 336051601;
  *(v37 - 128) = &a26;
  v40 = (*(v35 + 8 * (v36 ^ 0xAD0)))(v37 - 128);
  v41 = ((a35 & 0x3F ^ (v38 + v36 - 1890766570)) + 66496068) ^ ((a35 & 0x3F ^ 0x1C4AD4A5) - 906016369) ^ ((a35 & 0x3F ^ (v36 - 905318553)) + 532443879);
  *(&a26 + (v41 + 709518036)) = -96;
  return (*(v35 + 8 * ((1044 * ((v41 + 709517980) < 0xFFFFFFC8)) ^ v36)))(v40, 2635908920);
}

uint64_t sub_10002D010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, int a19, uint64_t a20, char *a21)
{
  v24 = 1785193651 * ((&a16 & 0x5A91113A | ~(&a16 | 0x5A91113A)) ^ 0x534F4AE9);
  a17 = v24 ^ 0x1C0F8818;
  a18 = v24 - 929753733;
  a19 = v21 - v24 - 2013068559;
  a20 = a14;
  a21 = &a12;
  v25 = (*(v23 + 8 * (v21 ^ 0xD16)))(&a16);
  return (*(v23 + 8 * ((3557 * (a16 == ((v21 - 890) ^ 0x607DF20E ^ (v22 + v21 + 709)))) ^ v21)))(v25);
}

uint64_t sub_10002D114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v18 - 112) = v15;
  *(v18 - 128) = a14;
  *(v18 - 120) = (v14 + 554) ^ (1361651671 * (((v16 | 0xD9C56605) + (~v16 | 0x263A99FA)) ^ 0x92AEAA7A));
  v19 = (*(v17 + 8 * (v14 ^ 0x8C5)))(v18 - 136);
  return (*(v17 + 8 * (((*(v18 - 136) <= 0x5992245u) * ((v14 + 635) ^ 0x4FF)) ^ v14)))(v19);
}

uint64_t sub_10002D11C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a2 + 8);
  v11 = (*(v10 + 4 * v2) ^ v3) + HIDWORD(a1);
  *(v10 + 4 * v2) = v11 + v7 - (v9 & (2 * v11));
  return (*(v8 + 8 * (((v2 + 1 != v5) * v6) ^ v4)))();
}

uint64_t sub_10002D124(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (v12 + v10 + v13 - 16);
  v16 = vaddq_s8(vsubq_s8(*(a10 + v10 - 16), vandq_s8(vaddq_s8(*(a10 + v10 - 16), *(a10 + v10 - 16)), a4)), a5);
  v15[-1] = vaddq_s8(vsubq_s8(*(a10 + v10 - 16 - 16), vandq_s8(vaddq_s8(*(a10 + v10 - 16 - 16), *(a10 + v10 - 16 - 16)), a4)), a5);
  *v15 = v16;
  return (*(v14 + 8 * ((((v10 & 0xFFFFFFE0) == 32) * ((v11 - 1353) ^ 0xFF5)) ^ v11)))();
}

uint64_t sub_10002D19C(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v16 = a8 - 8;
  v18.val[0].i64[0] = (v13 + v16 - 1) & 0xF;
  v18.val[0].i64[1] = (v13 + v16 + 14) & 0xF;
  v18.val[1].i64[0] = (v13 + v16 + 13) & 0xF;
  v18.val[1].i64[1] = (v13 + v16 + 12) & 0xF;
  v18.val[2].i64[0] = (v13 + v16 + 11) & 0xF;
  v18.val[2].i64[1] = (v13 + v16 + ((a6 + 28) ^ 0xF9)) & 0xF;
  v18.val[3].i64[0] = (v13 + v16 + 9) & 0xF;
  v18.val[3].i64[1] = (v13 + v16) & 0xF ^ 8;
  *(v14 - 8 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a9 - 8 + v13), *(v10 + v18.val[0].i64[0] - 7)), veor_s8(*(v12 + v18.val[0].i64[0] - 7), *(v18.val[0].i64[0] + v11 - 6)))), a3), vmul_s8(*&vqtbl4q_s8(v18, a1), a2)));
  return (*(*(v15 - 120) + 8 * (((a7 != v16) * a10) ^ a6)))();
}

uint64_t sub_10002D23C()
{
  v4 = (((v3 - 1894) | 0x882) ^ 0x44C1D8E5) + v2;
  v5 = v4 < ((v3 - 9) ^ 0x63A5FF19u);
  v6 = v1 + 1671821180 < v4;
  if (v1 > 0x9C5A0883 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v0 + 8 * ((246 * !v7) ^ v3)))();
}

uint64_t sub_10002D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v24 - 112) = (v19 - 1372) ^ (((((v24 - 128) | 0xEE5FA12) - (v24 - 128) + ((v24 - 128) & 0xF11A05E8)) ^ 0x458E366C) * v22);
  *(v24 - 104) = v20;
  *(v24 - 120) = &a19;
  v25 = (*(v21 + 8 * (v19 + 181)))(v24 - 128);
  return (*(v21 + 8 * (((*(v24 - 128) > v23) * ((v19 ^ 0xFFFFF05F) + v19 - 13)) ^ v19)))(v25);
}

uint64_t sub_10002D42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  v19 = *(v14 + 656);
  *(v18 - 112) = (v15 - 831) ^ (843532609 * ((v18 + 1164076533 - 2 * ((v18 - 136) & 0x4562667D)) ^ 0x192F32F8));
  STACK[0x518] = &a14;
  STACK[0x508] = v19;
  (*(v16 + 8 * (v15 + 1498)))(v18 - 136);
  v20 = STACK[0x2D0];
  *(v18 - 136) = v15 + 843532609 * ((v18 - 136) ^ 0x5C4D5485) - 985;
  STACK[0x510] = v20;
  v21 = (*(v16 + 8 * (v15 + 1506)))(v18 - 136);
  return (*(v16 + 8 * (((*(v18 - 120) == v17) * ((v15 + 503290641) & 0xEFF1F4FE ^ 0xDF198E0)) ^ v15)))(v21);
}

uint64_t sub_10002D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v16 - 112) = &a13;
  *(v16 - 128) = a12;
  *(v16 - 120) = v15 + 675097751 * ((((v16 - 128) | 0xB754875C) - (v16 - 128) + ((v16 - 128) & 0x48AB78A0)) ^ 0xF414A2CA) - 591;
  (*(v13 + 8 * (v15 ^ 0x962)))(v16 - 128);
  *(v16 - 112) = (v15 + 221) ^ (1361651671 * ((2 * ((v16 - 128) & 0x508F6590) - (v16 - 128) - 1351574933) ^ 0xE41B5615));
  *(v16 - 104) = v14;
  *(v16 - 120) = a12;
  v17 = (*(v13 + 8 * (v15 ^ 0x972)))(v16 - 128);
  return (*(v13 + 8 * ((1328 * (*(v16 - 128) > ((v15 - 1716220895) & 0x664B76DD ^ 0x5992484u))) ^ v15)))(v17);
}

uint64_t sub_10002D634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18)
{
  a18 = **(v18 + 8 * (v21 - 141));
  a17 = (v21 + 885) ^ (435584651 * (((&a17 | 0xA1BFAC43) - &a17 + (&a17 & 0x5E4053B8)) ^ 0xCC8DB615));
  v22 = (*(v19 + 8 * (v21 ^ 0xBF9)))(&a17);
  return (*(v19 + 8 * (((*v20 == 35) * ((v21 - 1306367924) & 0x4DDD9EAF ^ 0xC96)) ^ v21)))(v22);
}

uint64_t sub_10002D6E4(uint64_t a1, int a2, int8x16_t a3)
{
  v10 = v6 + 32;
  v11 = (a1 ^ v10) + v5;
  v12 = *(v4 + v11 - 15);
  v13 = *(v4 + v11 - 31);
  v14 = v3 + v11;
  *(v14 - 15) = veorq_s8(v12, a3);
  *(v14 - 31) = veorq_s8(v13, a3);
  return (*(v9 + 8 * (((v7 == v10) * a2) ^ v8)))();
}

uint64_t sub_10002D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, uint64_t a14, unsigned int a15, int a16, uint64_t a17)
{
  v22 = (&a12 ^ 0xFBC3B71B) * v21;
  a14 = a11;
  a12 = (v18 ^ 0xB7F3DDFF) + ((2 * v18) & 0x6FE7BBFE) + 1790950940 + v22;
  a13 = 2715 - v22;
  (*(v19 + 22088))(&a12);
  v23 = *v17 ^ 0xE7EBF3FF;
  v24 = (2 * *v17) & 0xCFD7E7FE;
  v25 = 742307843 * ((1371721445 - (&a12 | 0x51C2CEE5) + (&a12 | 0xAE3D311A)) ^ 0xB01FBC4F);
  a14 = *(v17 + 8);
  a17 = a11;
  a15 = 1355 - v25;
  a16 = v23 - v25 + v24 + 1539284462;
  (*(v19 + 22248))(&a12);
  v26 = 742307843 * ((((2 * &a12) | 0xDFBBDC08) - &a12 - 1876815364) ^ 0x71FF6351);
  v27 = (*(v17 + 16) ^ 0x77FFF5FD) - v26 + ((2 * *(v17 + 16)) & 0xEFFFEBFA) - 877945872;
  a14 = *(v17 + 24);
  a15 = 1355 - v26;
  a16 = v27;
  a17 = a11;
  v28 = (*(v19 + 22248))(&a12);
  return (*(v19 + 8 * ((341 * (a12 == v20)) ^ 0x6D1u)))(v28);
}

uint64_t sub_10002D92C(uint64_t a1)
{
  v5 = *(v3 + 352);
  v6 = ((v4 + 952) ^ 0xC63) + *(a1 + 4) + v1 - 1990502391;
  v7 = v5 > (((v4 + 952) | 0x80) ^ 0xF3162BCu);
  if (v7 == v6 < 0xF0CE94C9)
  {
    v7 = v5 - 254896951 > v6;
  }

  return (*(v2 + 8 * ((59 * v7) ^ v4)))();
}

uint64_t sub_10002DA40@<X0>(int a1@<W8>, int a2, char a3, __int16 a4, char a5, int a6, unsigned int a7, uint64_t a8, char *a9, int a10, char *a11)
{
  v14 = ((((2 * &a7) | 0xB03DB526) - &a7 - 1478417043) ^ 0x891CF7EC) * a1;
  a11 = &a3;
  a10 = (v13 + 85) ^ v14;
  a7 = v14 + 425429201;
  a8 = v11;
  a9 = &a5;
  v15 = (*(v12 + 8 * (v13 ^ 0x863)))(&a7);
  return (*(v12 + 8 * ((2956 * (*(v11 + 24) == ((1181 * (v13 ^ 0x355)) ^ 0x74C1B5EF))) ^ v13)))(v15);
}

uint64_t sub_10002DC24@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  HIDWORD(v63) = (v54 + 657989433) & 0xD8C7DCF6;
  LODWORD(v63) = HIDWORD(v63) ^ 0xDE;
  *a3 = a1;
  v59 = (*(v56 + 48 * v58 + 8))(a4);
  return (*(v55 + 8 * ((1356 * ((v59 ^ 0x7DCFFCD7) - 151928834 + ((2 * v59) & 0xFB9FF9AE) == v57 + 734226038 + (HIDWORD(v63) ^ 0xDE))) ^ HIDWORD(v63))))(v59, v60, 1423946945, v61, 3571428801, 3456076007, 3372111411, 2147483652, v63, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_10002DD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44)
{
  v47 = *(v44 + 8 * (v46 - 68));
  v48 = *v47;
  a14 = -31 * **v47 - 24;
  a15 = -31 * v48[1] - 24;
  a16 = -31 * v48[2] + (((v46 ^ 0xA5) - 47) ^ 8);
  a17 = -31 * v48[3] - 24;
  a18 = -31 * v48[4] - 24;
  a19 = -31 * v48[5] - 24;
  a20 = -31 * v48[6] - 24;
  a21 = -31 * v48[7] - 24;
  a22 = -31 * v48[8] - 24;
  a23 = -31 * v48[9] - 24;
  a24 = -31 * v48[10] - 24;
  a25 = -31 * v48[11] - 24;
  a26 = -31 * v48[12] - 24;
  a27 = -31 * v48[13] - 24;
  a28 = -31 * v48[14] - 24;
  a29 = -31 * v48[15] - 24;
  a30 = -31 * v48[16] - 24;
  v49 = *v47;
  a31 = -31 * v49[17] - 24;
  a32 = -31 * v49[18] - 24;
  a33 = -31 * v49[19] - 24;
  a34 = -31 * v49[20] - 24;
  a35 = -31 * v49[21] - 24;
  a36 = -31 * v49[22] - 24;
  a37 = -31 * v49[23] - 24;
  a38 = -31 * v49[24] - 24;
  a39 = -31 * v49[25] - 24;
  a40 = -31 * v49[26] - 24;
  a41 = -31 * v49[27] - 24;
  a42 = -31 * v49[28] - 24;
  a43 = -31 * v49[29] - 24;
  a44 = -31 * v49[30] - 24;
  v50 = (*(v45 + 8 * (v46 ^ 0xBBF)))(&a14);
  return (*(v45 + 8 * ((100 * (v50 != 0)) ^ v46)))(v50, v51, v52, v53, v54, v55, v56, v57);
}

uint64_t sub_10002DFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t *a11, int a12, int a13, uint64_t a14)
{
  v17 = 742307843 * (((&a10 | 0xBE4BF7E1) - (&a10 & 0xBE4BF7E1)) ^ 0xA0697AB4);
  a14 = v14;
  a10 = v17 ^ 0xD0F73E56;
  a11 = &a9;
  a12 = (v15 - 146) ^ v17;
  a13 = v17 ^ 0x61F090D5;
  v18 = (*(v16 + 8 * (v15 + 2161)))(&a10);
  return (*(v16 + 8 * (((*(v14 + 24) == 1958853845) * ((v15 + 970) ^ 0xC7)) ^ v15)))(v18);
}

uint64_t sub_10002E06C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v12 = a5 + 1;
  if (v9 > a6 != v12 < ((v11 + a7) & a8 ^ v10))
  {
    v13 = v9 > a6;
  }

  else
  {
    v13 = v12 < a1;
  }

  return (*(v8 + 8 * (((v13 << 6) | (v13 << 7)) ^ v11)))();
}

uint64_t sub_10002E0C4(uint64_t a1, int a2)
{
  v9 = v6 - 1;
  *(v8 + v9) = *(v3 + (((a2 + 667) ^ 0x572) & v9)) ^ *(v2 + v9) ^ *(v4 + (((a2 + 667) ^ 0x572) & v9)) ^ *(v5 + (((a2 + 667) ^ 0x572) & v9)) ^ (117 * (((a2 - 101) ^ 0x72) & v9));
  return (*(v7 + 8 * ((79 * (v9 != 0)) ^ (a2 + 426))))();
}

uint64_t sub_10002E1E0@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 4);
  if (v5 + 782274287 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = -a1;
  }

  *(v3 + 4) = v6 + v5;
  v7 = v1 + v2 - 207510586;
  v8 = v7 < 1403100869;
  **(v3 + 8) = *(*(v3 + 8) + 4 * a1);
  if (v7 < 1403100869)
  {
    v8 = v7 > -744382778;
  }

  return (*(v4 + 8 * ((1081 * v8) ^ (v2 - 73))))();
}

uint64_t sub_10002E2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44)
{
  STACK[0x370] = -v44;
  v49 = STACK[0x2BC];
  STACK[0x288] = v45 - 112;
  if (v49 == -561249461)
  {
    return (*(v48 + 8 * ((531 * (v46 == ((v47 + 2012) ^ (a8 - 2226)))) ^ (v47 - 194))))(3246054911, a2, 1048914632, 2932866026);
  }

  if (v49 == 1609767892)
  {
    return (*(v48 + 8 * ((229 * (v46 != (a44 ^ (a8 - 2224)))) ^ (v47 + 79))))(a1, a2, 1048914632, 2932866026);
  }

  if (v49 != 1562700482)
  {
    JUMPOUT(0x10001A100);
  }

  return (*(v48 + 8 * ((((25 * (v47 ^ 0x119)) ^ 0x969) * (v46 == a8)) | (v47 - 194))))(a1, a2, 1048914632, 2932866026);
}

uint64_t sub_10002E4EC@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x29C] + a1 + 72);
  v6 = ((a1 << ((v2 + 111) ^ 0xA)) & 0xFCB347D0) + (a1 ^ 0xFE59A3EB) + v1;
  *(v3 + v6) = v5 ^ 0xBC;
  *(v3 + v6 + 1) = (BYTE1(v5) ^ 0x63) - ((2 * (BYTE1(v5) ^ 0x63)) & 0x40) + 32;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0x8E) + (~(v5 >> 15) | 0xBF) + 33;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0xCE) - ((v5 >> 23) & 0x40) + 32;
  return (*(v4 + 8 * ((3898 * (a1 + 4 < LODWORD(STACK[0x2F8]))) ^ v2)))();
}

uint64_t sub_10002E5C0@<X0>(uint64_t a1@<X8>)
{
  v9 = (v3 + 241943263) & 0xF1943EDB;
  v10 = (*(*(v7 + 8) + 4 * v1) ^ 0x1E540AD) + v2;
  *(*(a1 + 8) + 4 * v1) = v10 + v4 - ((v6 + v9 + 143 - 1255) & (2 * v10));
  return (*(v5 + 8 * ((53 * (v8 <= (v1 + 1))) ^ v9)))();
}

void sub_10002E6AC()
{
  v6 = 1037613739 * ((v5 + 1236287053 - 2 * ((v5 - 144) & 0x49B03EDD)) ^ 0x98B213A2);
  *(v5 - 112) = ((v3 ^ 0x76552B17) + v1) ^ v6;
  *(v5 - 136) = v4;
  *(v5 - 120) = v2;
  *(v5 - 128) = (v3 - 19) ^ v6;
  (*(v0 + 8 * (v3 ^ 0xD3C)))(v5 - 144);
  JUMPOUT(0x10000F9B4);
}

uint64_t sub_10002EAB8(uint64_t a1, int a2, int8x16_t a3, int8x16_t a4)
{
  v10 = v4 + v6;
  v11 = (a1 + v10);
  v12 = vaddq_s8(vsubq_s8(*(v7 + v10 + 16), vandq_s8(vaddq_s8(*(v7 + v10 + 16), *(v7 + v10 + 16)), a3)), a4);
  *v11 = vaddq_s8(vsubq_s8(*(v7 + v10), vandq_s8(vaddq_s8(*(v7 + v10), *(v7 + v10)), a3)), a4);
  v11[1] = v12;
  return (*(v9 + 8 * (((v5 == v10) * a2) ^ v8)))();
}

void sub_10002EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, char *a19)
{
  v22 = 143681137 * (((&a17 | 0xD209A08B) - (&a17 & 0xD209A08B)) ^ 0x34A10C9B);
  a19 = &a10;
  a17 = ((v19 ^ 0x7EF3FED5) - 171065856 + ((v21 - 35128737) & (2 * v19))) ^ v22;
  a18 = v22 + v21 + 81;
  (*(v20 + 8 * (v21 ^ 0x9B4)))(&a17);
  JUMPOUT(0x100045B80);
}

uint64_t sub_10002EB5C()
{
  v3 = 210068311 * ((v2 - 136) ^ 0x576F9AD7);
  *(v2 - 136) = v3 + 1018267821;
  *(v2 - 132) = 1099650853 - v3;
  *(v2 - 128) = 1833061340 - v3;
  *(v2 - 124) = (v0 + 345) ^ v3;
  v4 = (*(v1 + 8 * (v0 ^ 0xED2)))(v2 - 136);
  return (*(v1 + 8 * (((((v0 + 1) ^ (*(v2 - 120) > 0x2A43D1D6u)) & 1) * (((v0 - 796) | 0xB) - 215)) ^ v0)))(v4);
}

uint64_t sub_10002EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, unsigned int a25)
{
  a24 = &a20;
  a22 = a14;
  a25 = (v26 - 673) ^ ((&a22 ^ 0x5C4D5485) * v25);
  (*(v27 + 8 * (v26 + 1656)))(&a22);
  a25 = (v26 - 673) ^ (((2 * (&a22 & 0x3E623CF0) - &a22 + 1100858125) ^ 0x1DD09788) * v25);
  a24 = &a16;
  a22 = a14;
  (*(v27 + 8 * (v26 + 1656)))(&a22);
  a23 = a14;
  LODWORD(a22) = v26 + (((~&a22 & 0xDC655FF0) - (~&a22 | 0xDC655FF1)) ^ 0x80280B74) * v25 - 827;
  v29 = (*(v27 + 8 * (v26 + 1664)))(&a22);
  return (*(v27 + 8 * ((476 * (a24 == (((v26 - 564) | 4) ^ (v28 + 516)))) ^ v26)))(v29);
}

uint64_t sub_10002ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(v10 + 8);
  v18 = *v10 - v13;
  v19 = *(v10 + 16);
  v20 = 1504884919 * ((v15 - 959415741 - 2 * (v15 & 0xC6D07A43)) ^ 0x3D13CD58);
  v11[1] = a10;
  *(v16 - 128) = v20 - v13 + v19 + 169130006;
  *(v16 - 124) = (v14 ^ 0x7B7) - v20 + 2089;
  (*(v12 + 8 * ((v14 ^ 0x7B7) + 2135)))(v16 - 128);
  v21 = (v14 ^ 0x7B7) + 969;
  v22 = 210068311 * ((2 * (v15 & 0x2B300856AB3A5230) - v15 + 0x54CFF7A954C5ADCALL) ^ 0xDF0E883303AA371DLL);
  *(v16 - 108) = v21 ^ v22;
  *v11 = a10;
  v11[1] = ((((v18 ^ 0x6E876F508CF19FB1) + (((v14 ^ 0x7B7u) + 7) ^ 0x917890AF730E6236)) ^ ((v18 ^ 0x7FA895A1DEFF81BBLL) - 0x7FA895A1DEFF81BBLL) ^ ((v18 ^ 0xC135FA6CE19F880CLL) + 0x3ECA05931E6077F4)) + (((v14 ^ 0x7B7) - 1517556883) & 0x5A7417E5 ^ 0xE3A647CFA900D0B7)) ^ v22;
  (*(v12 + 8 * ((v14 ^ 0x7B7) + 2167)))(v16 - 128);
  v23 = 210068311 * (((v15 | 0x29AB13859504BE91) - (v15 & 0x29AB13859504BE91)) ^ 0xA26A6C1FC26B2446);
  *(v16 - 108) = v21 ^ v23;
  *v11 = a10;
  v11[1] = ((v17 ^ 0x3BACF7BFFDFF3FEDLL) - 0x2820B08E08900081 + ((2 * v17) & 0x7759EF7FFBFE7FDALL)) ^ v23;
  v24 = (*(v12 + 8 * (v14 ^ 0xF2C)))(v16 - 128);
  return (*(v12 + 8 * ((11 * (*(v16 - 112) != 1958853845)) ^ v14 ^ 0x7B7)))(v24);
}

void sub_10002F008()
{
  if (v0 == 863026269)
  {
    v2 = 1958853845;
  }

  else
  {
    v2 = 1958811821;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_10002F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v35 - 112) = a14;
  *(v35 - 104) = &a32;
  *(v35 - 128) = a13;
  *(v35 - 120) = &a32;
  *(v35 - 136) = v34 + 435584651 * ((-597418552 - ((v35 - 144) | 0xDC641DC8) + ((v35 - 144) | 0x239BE237)) ^ 0x4EA9F861) + 68;
  *(v35 - 144) = &a20;
  v36 = (*(v33 + 8 * (v34 ^ 0x95B)))(v35 - 144);
  return (*(v33 + 8 * ((451 * (v32 - 181586625 >= ((v34 - 385) | 0x484u) + 2147481979)) ^ (v34 + 831))))(v36);
}

uint64_t sub_10002F488@<X0>(int a1@<W8>, __n128 a2@<Q0>)
{
  v3[-1] = a2;
  *v3 = a2;
  return (*(v5 + 8 * (((v4 == 0) * v2) | a1)))();
}

uint64_t sub_10002F4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, int a18)
{
  a18 = v18 + 1110199648;
  *(v21 - 112) = &a15;
  *(v21 - 128) = a14;
  *(v21 - 120) = v20 + 675097751 * ((377310292 - ((v21 - 128) | 0x167D4C54) + ((v21 - 128) | 0xE982B3AB)) ^ 0xAAC2963D) - 359;
  (*(v19 + 8 * (v20 ^ 0x87A)))(v21 - 128);
  *(v21 - 104) = &a17;
  *(v21 - 112) = (v20 + 453) ^ (1361651671 * ((v21 - 128) ^ 0x4B6BCC7E));
  *(v21 - 120) = a14;
  v22 = (*(v19 + 8 * (v20 + 2006)))(v21 - 128);
  return (*(v19 + 8 * (((*(v21 - 128) > ((3 * (v20 ^ 0x50)) ^ 0x59925DBu)) * ((v20 + 901) ^ 0x676)) ^ v20)))(v22);
}

uint64_t sub_10002F688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v21 - 120) = (v19 + 509) ^ ((((v17 ^ 0xE6EC49D1) + 1490654126 - 2 * ((v17 ^ 0xE6EC49D1) & 0x58D993AE)) ^ 0xF55E1601) * v15);
  *(v21 - 128) = &a15;
  *(v21 - 112) = v16;
  v22 = (*(v20 + 8 * (v19 ^ 0x812)))(v21 - 136);
  return (*(v20 + 8 * ((1289 * (*(v21 - 136) > (((v19 + 422) | 0x2B4) ^ (v18 + 628)))) | v19)))(v22);
}

uint64_t sub_10002F814@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + 16) + 1140829062;
  v6 = (((v1 + 585) | 0x74) ^ 0x447D7F42) + *v2 - v4;
  v7 = v5 < 0x812F02E4;
  v8 = v5 > v6;
  if (v7 != v6 < 0x812F02E4)
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((107 * (((v1 + 1) ^ v8) & 1)) ^ v1)))();
}

uint64_t sub_10002F8AC()
{
  *(v6 - 136) = v4 + 742307843 * (((~v2 & 0x1541D196) - (~v2 | 0x1541D197)) ^ 0xB635CC2) + 552;
  *(v6 - 128) = v1;
  *(v6 - 120) = v3;
  v7 = (*(v5 + 8 * (v4 ^ 0x851)))(v6 - 136);
  return (*(v5 + 8 * (((v0 == ((v4 + 246174811) & 0xF153AFFE ^ 0x6FD)) * ((894 * (v4 ^ 0x2A0)) ^ 0x6FB)) ^ v4)))(v7);
}

uint64_t sub_10002F9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, uint64_t a16, char a17, __int16 a18, char a19, char *a20, uint64_t a21, char *a22, char *a23, char *a24, unsigned int a25, unsigned int a26)
{
  v32 = (v29 + 1479975574) & 0xA7C95DEF;
  a22 = a20;
  a24 = &a17;
  a25 = (v29 - 806) ^ (((2 * ((&a22 ^ 0xF5CCFEDE) & 0x403265AA) - (&a22 ^ 0xF5CCFEDE) - 1077044651) ^ 0x164C300E) * v28);
  (*(v30 + 8 * (v29 ^ 0xE75)))(&a22);
  a22 = &a15;
  a23 = &a19;
  a26 = v32 - 143681137 * ((&a22 & 0x59AD622B | ~(&a22 | 0x59AD622B)) ^ 0x40FA31C4) - 409;
  a24 = a20;
  (*(v30 + 8 * (v32 + 1363)))(&a22);
  a25 = (v32 - 940) ^ ((((&a22 | 0xE596ECC4) - (&a22 & 0xE596ECC4)) ^ 0xB9DBB841) * v28);
  a22 = a20;
  a24 = &a13;
  (*(v30 + 8 * (v32 + 1389)))(&a22);
  a23 = a20;
  LODWORD(a22) = v32 + (((&a22 | 0x6993EC0E) - &a22 + (&a22 & 0x966C13F0)) ^ 0x35DEB88B) * v28 - 1094;
  v26 = (*(v30 + 8 * (v32 + 1397)))(&a22);
  return (*(v30 + 8 * ((3123 * (a24 == (((v32 - 1351) | 0x582) ^ (v31 + v32 - 951 - 1294)))) ^ v32)))(v26);
}

uint64_t sub_10002FB2C@<X0>(int a1@<W8>)
{
  v4 = 1785193651 * ((~(v3 - 160) & 0x2FD27E2F5CD7BC0 | (v3 - 160) & 0xFD02D81D0A32843FLL) ^ 0x5D659ADA03ECDFECLL);
  *(v3 - 152) = v4 + 3790169502u;
  *(v3 - 136) = v1 - v4;
  *(v3 - 160) = a1 + 80401859 - v4;
  *(v3 - 128) = v4;
  *(v3 - 120) = v4 + a1 + 80401859 - 52;
  *(v3 - 144) = a1 - v4 - 2124585780;
  *(v3 - 140) = (a1 + 80401664) ^ v4;
  v5 = (*(v2 + 8 * (a1 ^ 0xB3B)))(v3 - 160);
  return (*(v2 + 8 * *(v3 - 124)))(v5);
}

uint64_t sub_10002FC00()
{
  LODWORD(STACK[0x2D4]) = v0;
  STACK[0x288] -= 432;
  return (STACK[0x260])();
}

void sub_10002FC60(uint64_t a1)
{
  v1 = 1785193651 * ((-1415753622 - (a1 | 0xAB9D506A) + (a1 | 0x5462AF95)) ^ 0xA2430BB9);
  v2 = *(a1 + 24) ^ v1;
  if (*(a1 + 56) | *a1)
  {
    v3 = *(a1 + 64) - v1 == 44276212;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10002FDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if ((v53 & 0x40) != 0)
  {
    v54 = 6;
  }

  else
  {
    v54 = 2;
  }

  HIDWORD(a14) = v53;
  if ((v53 & 2) != 0)
  {
    v54 = 1;
  }

  LODWORD(STACK[0x3DC]) = v54;
  return sub_10004F3A8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_10002FDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  LOBYTE(STACK[0x35F]) = (v53 & 0x20) != 0;
  if ((v53 & 0x20) != 0)
  {
    v56 = 2;
  }

  else
  {
    v56 = 5;
  }

  LODWORD(STACK[0x228]) = v56;
  if (v52 <= -707298675)
  {
    if (v52 <= -1223187230)
    {
      if (v52 <= -1657846976)
      {
        if (v52 == -1756786334 || v52 == -1703506393)
        {
          goto LABEL_45;
        }

        v58 = -1667475326;
      }

      else
      {
        if (v52 > -1364248074)
        {
          if (v52 != -1364248073)
          {
            v57 = -1316914348;
            goto LABEL_43;
          }

          goto LABEL_45;
        }

        if (v52 == -1657846975)
        {
          goto LABEL_45;
        }

        v58 = -1477104764;
      }

LABEL_48:
      if (v52 != v58)
      {
        return sub_10002FDA8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
      }

      goto LABEL_49;
    }

    if (v52 <= -1193820489)
    {
      if (v52 != -1223187229 && v52 != -1221101326)
      {
        v57 = -1217475595;
        goto LABEL_43;
      }

      goto LABEL_45;
    }

    if (v52 > -930345564)
    {
      if (v52 != -930345563)
      {
        v57 = -795959644;
        goto LABEL_43;
      }

      goto LABEL_45;
    }

    if (v52 == -1193820488)
    {
      goto LABEL_49;
    }

    v57 = -1099139031;
LABEL_43:
    if (v52 != v57)
    {
      return sub_10002FDA8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
    }

    goto LABEL_45;
  }

  if (v52 <= -131362243)
  {
    if (v52 > -650254700)
    {
      if (v52 > -267574016)
      {
        if (v52 != -267574015)
        {
          v57 = -196561708;
          goto LABEL_43;
        }
      }

      else if (v52 != -650254699)
      {
        v57 = -595479325;
        goto LABEL_43;
      }

      goto LABEL_45;
    }

    if (v52 == -707298674)
    {
      goto LABEL_45;
    }

    if (v52 == -673049421)
    {
      goto LABEL_49;
    }

    v57 = -650254702;
    goto LABEL_43;
  }

  if (v52 > 1290323699)
  {
    if (v52 <= 1642357904)
    {
      if (v52 != 1290323700)
      {
        v57 = 1592038822;
        goto LABEL_43;
      }

      goto LABEL_45;
    }

    if (v52 == 1943892522)
    {
      goto LABEL_45;
    }

    v58 = 1642357905;
    goto LABEL_48;
  }

  if (v52 > -10790137)
  {
    if (v52 != -10790136)
    {
      v57 = 973884353;
      goto LABEL_43;
    }

LABEL_45:
    *&STACK[0x4E0] = xmmword_1000F0C60;
    return (*(v55 + 8 * (((((v54 - 483658076) & 0x1CD40879) - 43) * ((v53 & 0x20) == 0)) ^ (v54 + 1755))))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v52 != -131362242)
  {
    v57 = -73392704;
    goto LABEL_43;
  }

LABEL_49:
  *&STACK[0x4E0] = xmmword_1000F0BE0;
  return (*(v55 + 8 * ((((v54 ^ 0x12F) - 49) * ((v53 >> 5) & 1)) | (v54 + 1567))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10003023C(uint64_t a1, int a2)
{
  v6 = v4 - a2;
  if (v3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  return (*(v5 + 8 * ((57 * (((v2 - 619) ^ 0x75D) + v7 > 0x23)) ^ v2)))();
}

uint64_t sub_100030298@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v7 = (*(v3 + 8 * (a2 + 1316)))(*v4, a1, *(v2 + 8) + (a2 ^ 0xB51388DC));
  *v2 = v6;
  *(v2 + 8) = v5;
  *(v2 + 12) = v5;
  return sub_1000302C8(v7);
}

uint64_t sub_100030340(uint64_t a1)
{
  v2 = 1785193651 * ((a1 & 0xB944917B | ~(a1 | 0xB944917B)) ^ 0xB09ACAA8);
  v3 = *(a1 + 4) ^ v2;
  v4 = *(a1 + 16);
  v5 = (v3 ^ 0xAF0936CF) & (2 * (v3 & 0xCF49B6CF)) ^ v3 & 0xCF49B6CF;
  v6 = ((2 * (v3 ^ 0xB78B7FC9)) ^ 0xF185920C) & (v3 ^ 0xB78B7FC9) ^ (2 * (v3 ^ 0xB78B7FC9)) & 0x78C2C906;
  v7 = v6 ^ 0x8424902;
  v8 = (v6 ^ 0x70008004) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xE30B2418) & v7 ^ (4 * v7) & 0x78C2C904;
  v10 = v8 ^ 0x78C2C906 ^ (v9 ^ 0x60020000) & (16 * v8);
  v11 = (16 * (v9 ^ 0x18C0C906)) & 0x78C2C900 ^ 0x70C24906 ^ ((16 * (v9 ^ 0x18C0C906)) ^ 0x8C2C9060) & (v9 ^ 0x18C0C906);
  v12 = (((v10 << 8) & 0x78C2C900 ^ v10 ^ ((v10 << 8) ^ 0xC2C90600) & v11) << 16) & 0x78C20000 ^ (v10 << 8) & 0x78C2C900 ^ v10 ^ ((v10 << 8) ^ 0xC2C90600) & v11 ^ ((((v10 << 8) & 0x78C2C900 ^ v10 ^ ((v10 << 8) ^ 0xC2C90600) & v11) << 16) ^ 0x49060000) & ((v11 << 8) & 0x78C20000 ^ 0x38020000 ^ ((v11 << 8) ^ 0xC2C90000) & v11);
  v13 = ((((*(a1 + 8) - v2) ^ 0x67228825) - 1730316325) ^ (((*(a1 + 8) - v2) ^ 0x6F418E49) - 1866567241) ^ (((*(a1 + 8) - v2) ^ 0xC0F61316) + 1057615082)) + 54209944;
  v14 = *(a1 + 12) + 2013066737 + v2;
  v15 = 1361651671 * ((2 * (v17 & 0x4B68C710) - v17 + 882325740) ^ 0x7FFCF492);
  v20 = *(a1 + 24);
  v19 = v13 ^ v15;
  v17[1] = v15 ^ (v14 + 85);
  v17[2] = v3 ^ v15 ^ (2 * v12) ^ 0xA197CB84;
  v18 = v4;
  result = (*(*(&off_1001252D0 + v14) + v14 + 2628))(v17);
  *a1 = v17[0];
  return result;
}

void sub_10003064C()
{
  v0 = *(&off_1001252D0 + ((11 * (dword_10013EA88 ^ 8 ^ qword_10013EA10)) ^ byte_1000E4560[byte_1000F0AC0[(11 * (dword_10013EA88 ^ 8 ^ qword_10013EA10))] ^ 0x30]) + 1);
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + (byte_1000E456C[(byte_1000F0AC4[(11 * (v1 ^ qword_10013EA10 ^ 8)) - 4] ^ 0xB7) - 12] ^ (11 * (v1 ^ qword_10013EA10 ^ 8))) - 25);
  v3 = 1405565963 * ((*v2 - v1) ^ &v5 ^ 0xBCA8FC1BD5CAFD08);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6[1] = 1504884919 * ((v6 & 0x450856BF | ~(v6 | 0x450856BF)) ^ 0x41341E5B) + 1212455568;
  LOBYTE(v2) = 11 * ((*v2 + *(v0 - 4)) ^ 8);
  v4 = *(&off_1001252D0 + ((11 * (dword_10013EA88 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC620[byte_1000E7C70[(11 * (dword_10013EA88 ^ 8 ^ qword_10013EA10))] ^ 0x9E]) + 2) - 8;
  (*&v4[8 * (byte_1000EC62C[(byte_1000E7C7C[v2 - 12] ^ 0x9E) - 12] ^ v2) + 20648])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100030874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(v6 + 16);
  *(v5 - 112) = veorq_s8(**(v6 + 8), xmmword_1000F0BD0);
  if (a4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(v4 + 8 * ((30 * v9) ^ a3)))(a1, a2);
}

void sub_100030944()
{
  v1 = STACK[0x410];
  v2 = STACK[0x2F4];
  LODWORD(STACK[0x424]) = 1;
  STACK[0x3B0] = v1;
  LODWORD(STACK[0x224]) = v2;
  STACK[0x200] = v0;
  LODWORD(STACK[0x2BC]) = -561249461;
  JUMPOUT(0x10001A0F4);
}

uint64_t sub_1000309D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x40) + 32;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((928 * v4) ^ 0x925u)))(0);
}

uint64_t sub_100030A38(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a1)
  {
    if (a1 == 268435459)
    {
      LODWORD(STACK[0x378]) = v64 - 161;
      return (*(a62 + 8 * (((STACK[0x2E8] == 0) * ((v63 ^ 0x834) + ((v63 + 473138147) & 0xE3CC7BAA) - 2508)) ^ (v63 + 2442))))();
    }

    else
    {
      v75 = 143681137 * (((v65 - 192) & 0xFE0DEC64 | ~((v65 - 192) | 0xFE0DEC64)) ^ 0xE75ABF8B);
      *(v65 - 184) = &STACK[0x378];
      *(v65 - 192) = ((a1 ^ 0xFFDBBFFF) + 1961229526 + ((2 * a1) & 0xFFB77FFE)) ^ v75;
      *(v65 - 188) = v75 + v63 + 642;
      v76 = (*(a62 + 8 * (v63 ^ 0xBE5)))(v65 - 192);
      return (*(a62 + 8 * (((STACK[0x2E8] == 0) * ((v63 ^ 0x834) + ((v63 + 473138147) & 0xE3CC7BAA) - 2508)) ^ (v63 + 2442))))(v76);
    }
  }

  else
  {
    v77 = STACK[0x280];
    v78 = STACK[0x380];
    LODWORD(STACK[0x2DC]) = 422619973;
    STACK[0x288] = a34 + 1129 * (v63 ^ 0x118u) - 2338;
    LODWORD(STACK[0x210]) = 1912886423;
    *(v65 - 188) = v63 + ((v65 - 192) ^ 0x4B6BCC7E) * v62 + 68671651;
    (*(a62 + 8 * (v63 + 2486)))(v65 - 192);
    v67 = (*(a62 + 8 * (v63 + 2498)))(336, 0x100004077774924);
    return (*(a62 + 8 * ((v63 + 1960) ^ (8 * (v67 != 0)))))(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v77, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, v78);
  }
}

uint64_t sub_100030C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(a36 + 52);
  v68 = STACK[0x42C];
  v69 = (v67 ^ 0x501542D2) & (2 * (v67 & 0x955982E4)) ^ v67 & 0x955982E4;
  v70 = ((2 * ((((v64 - 540) | 0x118) + 1477723832) ^ v67)) ^ (v64 - 1701083058)) & ((((v64 - 540) | 0x118) + 1477723832) ^ v67) ^ (2 * ((((v64 - 540) | 0x118) + 1477723832) ^ v67)) & 0xCD4DC536;
  v71 = v70 ^ 0x45444512;
  v72 = (v70 ^ 0x88080020) & (4 * v69) ^ v69;
  v73 = ((4 * v71) ^ 0x353714D8) & v71 ^ (4 * v71) & 0xCD4DC534;
  v74 = (v73 ^ 0x5050400) & (16 * v72) ^ v72;
  v75 = ((16 * (v73 ^ 0xC848C126)) ^ 0xD4DC5360) & (v73 ^ 0xC848C126) ^ (16 * (v73 ^ 0xC848C126)) & 0xCD4DC530;
  v76 = v74 ^ 0xCD4DC536 ^ (v75 ^ 0xC44C4100) & (v74 << 8);
  v77 = 50899313 * ((v65 - 192) ^ 0x2ACB2A7A);
  *(v65 - 152) = a21;
  *(v65 - 192) = &STACK[0x4D0];
  *(v65 - 184) = v77 ^ a17 ^ 0x5A8C7F3F;
  *(v65 - 180) = (v68 ^ 0xE9BBAF2F) - v77 + ((2 * v68) & 0xD3775E5E) + 509433848;
  *(v65 - 168) = v63;
  *(v65 - 160) = v77 + v64 - 534;
  *(v65 - 176) = v77 ^ v67 ^ (2 * ((v76 << 16) & 0x4D4D0000 ^ v76 ^ ((v76 << 16) ^ 0x45360000) & (((v75 ^ 0x9018416) << 8) & 0x4D4D0000 ^ (((v75 ^ 0x9018416) << 8) ^ 0x4DC50000) & (v75 ^ 0x9018416) ^ 0x80000))) ^ 0x519998F0;
  v78 = (*(v66 + 8 * (v64 ^ 0x930)))(v65 - 192);
  v79 = *(v65 - 144);
  LODWORD(STACK[0x22C]) = v79;
  return (*(a63 + 8 * ((1577 * (v79 == 1958853845)) ^ v64)))(v78);
}

uint64_t sub_100030EB8(uint64_t a1)
{
  v8 = v4 + 4 * (v5 + v1);
  *(v4 + 4 * (v5 + v1 + (v6 + 192)) - 3064) = __ROR4__(*(v8 - 12) ^ v2 ^ *(v8 - 32) ^ *(v8 - 56) ^ *(v8 - 64), 31) ^ 0x645D0D06;
  return (*(v3 + 8 * (((v1 + 1 == v7 + 80) << 6) | ((v1 + 1 == v7 + 80) << 7) | v6)))(a1, 892590812);
}

void sub_100030F30()
{
  if (v0 == 1340980583)
  {
    v2 = 1958853845;
  }

  else
  {
    v2 = 1958811821;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_100030FCC@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _BYTE *a22)
{
  v22 = (STACK[0x330] + 31);
  a22[12] = (0x10u >> (a2 + 2)) | 0x20;
  a22[13] = 32;
  a22[14] = 32;
  a22[15] = 33;
  *(v22 - 15) ^= *a22 ^ 0x20;
  *(v22 - 14) ^= a22[1] ^ 0x20;
  *(v22 - 13) ^= a22[2] ^ 0x20;
  *(v22 - 12) ^= a22[3] ^ 0x20;
  *(v22 - 11) ^= a22[4] ^ 0x20;
  *(v22 - 10) ^= a22[5] ^ 0x20;
  *(v22 - 9) ^= a22[6] ^ 0x20;
  *(v22 - 8) ^= a22[7] ^ 0x20;
  *(v22 - 7) ^= a22[8] ^ 0x20;
  *(v22 - 6) ^= a22[9] ^ 0x20;
  *(v22 - 5) ^= a22[10] ^ 0x20;
  *(v22 - 4) ^= a22[11] ^ 0x20;
  *(v22 - 3) ^= a22[12] ^ 0x20;
  *(v22 - 2) ^= a22[13] ^ 0x20;
  *(v22 - 1) ^= a22[14] ^ 0x20;
  *v22 ^= a22[15] ^ 0x20;
  return (*(a1 + 8 * (a2 + 1412)))();
}

uint64_t sub_10003122C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v5 ^ 0x4AF7B278 ^ (5 * (a4 ^ 0x469));
  v7 = v6 & ((v5 & 0xB69) << ((a4 - 38) ^ 0x92)) ^ v5 & 0xB69;
  v8 = (v5 ^ (2 * ((4 * ((v5 ^ 0x68) & (2 * v6))) & (v5 ^ 0x68) & (2 * v6) & (16 * ((v5 ^ 0x68) & (2 * v6) & (4 * v7) ^ v7)) ^ (v5 ^ 0x68) & (2 * v6) & (4 * v7) ^ v7))) & 0x7F;
  v10 = v8 != 105 && (v8 ^ 0x69u) < 5;
  return (*(v4 + 8 * ((752 * v10) ^ a4)))();
}

uint64_t sub_10003131C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unint64_t a54)
{
  STACK[0x2B0] = v54;
  STACK[0x3F8] = a54;
  v56 = ((*(v54 + 68) & ((a5 + 220) ^ 0x125) ^ 0x9883B7DC) + 2001541512) ^ ((*(v54 + 68) & ((a5 + 220) ^ 0x125) ^ (17 * (a5 ^ 0x61) + 582923840)) - 848293163) ^ ((*(v54 + 68) & ((a5 + 220) ^ 0x125) ^ 0xBA3D0B53) + 1442030857);
  *(v54 + v56 + 271667620) = -96;
  v57.n128_u64[0] = 0x2020202020202020;
  v57.n128_u64[1] = 0x2020202020202020;
  return (*(v55 + 8 * ((2410 * (v56 + 271667564 < 0xFFFFFFC8)) ^ a5)))(a1, 32, 3438, 1211, a2, a3, a4, 1958853845, v57);
}

uint64_t sub_1000315B0@<X0>(int a1@<W8>)
{
  v8 = v5 + v2;
  v9 = v5 - 1;
  *(*v6 + (v1 + v9)) = *(*v6 + v8);
  return (*(v7 + 8 * (((v9 == v3) * v4) ^ a1)))();
}

void sub_1000315E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = (*(a1 + 16) + 10199 * (((a1 | 0x916C) - (a1 | 0x6E93) + 28307) ^ 0x5D12)) == 6334;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *a1 - 1361651671 * (((a1 | 0x59D0916C) - (a1 | 0xA62F6E93) - 1506840941) ^ 0x12BB5D12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000316D8()
{
  v4 = (v0 - 1074148358) & 0xE77EBBDC;
  v9 = v4 + 1485272861 - (((&v9 | 0xD6245691) - (&v9 & 0xD6245691)) ^ 0x308CFA81) * v3;
  v10 = v8;
  (*(v1 + 8 * (v4 + 1485275368)))(&v9);
  v9 = 1485272861 - (&v9 ^ 0xE6A8AC10) * v3 + v4;
  v10 = v7;
  (*(v1 + 8 * (v4 ^ (v2 + 159))))(&v9);
  return (v4 ^ 0x51B97706) + (v6 ^ 0x7DFFBDFF) + ((2 * v6) & 0xFBFF7BFE) - 1958853845;
}

uint64_t sub_10003188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, unsigned int a16, char *a17, int a18)
{
  a17 = &a13;
  a16 = (50899313 * ((386968858 - (&a16 | 0x1710AD1A) + (&a16 | 0xE8EF52E5)) ^ 0xC224789F)) ^ 0x78C;
  v21 = (*(v20 + 22360))(&a16);
  return (*(v20 + 8 * ((2525 * (a18 == v19)) ^ v18)))(v21);
}

uint64_t sub_1000319B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(v69 + 8 * (v67 + 2368)))(*a25, a60, 2048);
  v70 = *(a62 + 8 * ((937 * ((*(a62 + 8 * (v67 + 2448)))(*a25, &STACK[0x3A8], a67 + ((v67 - 483486292) & 0x1CD169BB ^ (v68 - 246)), 1) == (((v67 - 394) | 0x806) ^ 0x82E))) ^ v67));
  return v70();
}

uint64_t sub_100031A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v25 = a23 - 599986322 > a15;
  if (a15 < 0xDC3CEF2E != (a23 - 599986322) < 0xDC3CEF2E)
  {
    v25 = (a23 - 599986322) < 0xDC3CEF2E;
  }

  return (*(v23 + 8 * (((((v24 - 1) ^ v25) & 1) * ((v24 + 760) ^ 0x305)) | (v24 + 1688))))(a1, a2, a21);
}

uint64_t sub_100031A80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X5>, uint64_t a4@<X7>, unsigned int a5@<W8>)
{
  v14 = (*(a4 + 4 * a1) ^ a5) + (v7 ^ HIDWORD(a3));
  v15 = (v13 - 100) + v14 - ((2 * v14) & 0x1ABF59D54) + v9;
  *(a4 + 4 * a2) = v15 ^ v10;
  *(a4 + 4 * a1) = (v15 >> ((v13 - 37) ^ v11)) ^ v12;
  return (*(v8 + 8 * (v13 ^ (617 * (v6 + 1 == v5)))))();
}

uint64_t sub_100031AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v37 = (v32 - 569309385) & 0x21EEFBB1;
  *(v36 - 144) = &a26;
  *(v36 - 136) = v32 + 435584651 * ((504241084 - ((v36 - 144) | 0x1E0E1BBC) + ((v36 - 144) | 0xE1F1E443)) ^ 0x8CC3FE15) + 813;
  *(v36 - 112) = v35;
  *(v36 - 104) = &a32;
  *(v36 - 128) = a13;
  *(v36 - 120) = &a32;
  v38 = (*(v34 + 8 * (v32 ^ 0xA42)))(v36 - 144);
  return (*(v34 + 8 * ((451 * (v33 - 181586625 >= ((v37 - 385) | 0x484u) + 2147481979)) ^ (v37 + 831))))(v38);
}

uint64_t sub_100031D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, int a20, uint64_t a21, char *a22)
{
  v25 = 1785193651 * ((((2 * &a17) | 0x1F729652) - &a17 - 263801641) ^ 0xF998EF05);
  a19 = v25 + a10 - ((2 * a10) & 4) - 929753734;
  a20 = v24 - v25 - 2013068323;
  a21 = a15;
  a22 = &a13;
  a18 = v25 ^ 0x4CB5223C;
  v26 = (*(v23 + 8 * (v24 + 1022)))(&a17);
  return (*(v23 + 8 * ((3977 * (a17 == ((67 * (v24 ^ 0x6E3)) ^ (v22 - 748)))) ^ v24)))(v26);
}

uint64_t sub_100031FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v21 - 128) = a17;
  *(v21 - 112) = &a13;
  *(v21 - 104) = (v17 - 421) ^ (((v21 + 1450164712 - 2 * ((v21 - 128) & 0x566FC268)) ^ 0xA2296ED) * v18);
  (*(v20 + 8 * (v17 + 1908)))(v21 - 128);
  *(v21 - 120) = a17;
  *(v21 - 128) = v17 + ((2 * ((v21 - 128) & 0xFC314F0) - (v21 - 128) - 264443128) ^ 0xAC71BF8D) * v18 - 575;
  v22 = (*(v20 + 8 * (v17 + 1916)))(v21 - 128);
  return (*(v20 + 8 * (((*(v21 - 112) != v19) * (((v17 - 761) | 0x588) - 1472)) ^ v17)))(v22);
}

uint64_t sub_100032158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  a17 = a12;
  a16 = v17 + 172 - 143681137 * (&a16 ^ 0xE6A8AC10);
  (*(v19 + 8 * (v17 ^ 0xAF9)))(&a16);
  a16 = v17 + 172 - 143681137 * ((2 * ((&a16 ^ 0x709DC4EE) & 0x4D2C1A3E) - (&a16 ^ 0x709DC4EE) + 852747713) ^ 0xA4E68D3F);
  a17 = a14;
  v21 = (*(v19 + 8 * (v17 + 2679)))(&a16);
  return (*(v19 + 8 * (((v20 == v18) * (((v17 + 280494159) | 0x4044A22) - 347883984)) ^ v17)))(v21);
}

uint64_t sub_100032244(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  v21 = v12 + 2;
  v22 = (a12 + (v15 + 32));
  v23 = veorq_s8(v21[-1], *v22);
  v24 = veorq_s8(*v21, v22[1]);
  return (*(v16 + 8 * (((((v13 + 21) ^ (v14 == 32)) & 1) * a10) | v13)))(vorrq_s8(vqtbl1q_s8(v23, v17), a1), vorrq_s8(vqtbl1q_s8(v23, v18), a2), vorrq_s8(vqtbl1q_s8(v23, v19), a3), vorrq_s8(vqtbl1q_s8(v23, v20), a4), vorrq_s8(vqtbl1q_s8(v24, v17), a5), vorrq_s8(vqtbl1q_s8(v24, v19), a6), vorrq_s8(vqtbl1q_s8(v24, v18), a7), vorrq_s8(vqtbl1q_s8(v24, v20), a8));
}

uint64_t sub_100032298@<X0>(int a1@<W0>, unint64_t a2@<X8>)
{
  v11 = a2 >= 0x10;
  v8 = (v5 - 1) & 0xF;
  v9 = -v7 - v5;
  v10 = v9 + 1;
  v11 = v11 && v9 + 1 + v2 + v8 >= ((a1 - 1758561287) & 0x68D18A9F ^ 0xA91uLL);
  v12 = v9 + v3 + v8 + ((a1 - 262) ^ 0x2E3);
  v13 = v11 && v12 >= 0x10;
  v14 = v10 + v4 + v8;
  v16 = !v13 || v14 < 0x10;
  return (*(v6 + 8 * ((1898 * v16) ^ a1)))();
}

uint64_t sub_100032328(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 12;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

void sub_100032348(uint64_t a1)
{
  v1 = *a1 - 435584651 * ((-1138610637 - (a1 | 0xBC222E33) + (a1 | 0x43DDD1CC)) ^ 0x2EEFCB9A);
  v2 = *(a1 + 8);
  v3 = *(&off_1001252D0 + (v1 ^ 0x7F6)) - 8;
  (*&v3[8 * (v1 ^ 0xDDB)])(*(&off_1001252D0 + v1 - 1736) - 4, sub_1000189B0);
  __asm { BRAA            X9, X17 }
}

void sub_10003249C(uint64_t a1)
{
  v1 = 50899313 * (((a1 | 0x8B4707FC) - a1 + (a1 & 0x74B8F803)) ^ 0xA18C2D86);
  v2 = *(a1 + 36) - v1;
  v3 = *(a1 + 32) + v1;
  v4 = 675097751 * ((v9 - 209849034 - 2 * (v9 & 0xF37DF536)) ^ 0xB03DD0A0);
  v5 = ((*(a1 + 40) ^ v1 ^ 0x80962B15) + 2137642219) ^ ((*(a1 + 40) ^ v1 ^ 0x6D755E26) - 1836408358) ^ ((*(a1 + 40) ^ v1 ^ 0x2EE7FD09) - 786955529);
  v9[2] = *(a1 + 8);
  v10 = (((v3 ^ 0xEC59EABC) + 329651524) ^ ((v3 ^ 0x968214ED) + 1769859859) ^ ((v3 ^ 0x8CA54253) + 1935326637)) - v4 + 1834950954;
  v11 = v2 - v4 - 1317;
  v13 = v5 - v4 + 920418519;
  v9[0] = &v8;
  v9[1] = &v7;
  v6 = *(&off_1001252D0 + (v2 ^ 0x80B)) - 8;
  (*&v6[8 * v2 + 4376])(v9);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100032710@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a1 == 310326780)
  {
    return (*(a56 + 8 * (((a47 < (v58 ^ 0x118u) + 1) * (271 * (v58 ^ 0x118) - 519)) ^ (v58 + 1587))))();
  }

  if (a1 != 41891321)
  {
    v61 = 143681137 * ((2 * ((v60 - 192) & 0x2227A550) - (v60 - 192) - 573023571) ^ 0x3B70F6BD);
    *(v60 - 184) = &STACK[0x22C];
    *(v60 - 192) = (a1 + 1916962524) ^ v61;
    *(v60 - 188) = v61 + v58 + 642;
    (*(a56 + 8 * (v58 ^ 0xBE5)))(v60 - 192);
    JUMPOUT(0x100016420);
  }

  (*(a56 + 8 * (v58 + 2520)))(*a19, v56, v57);
  STACK[0x3B8] = 0;
  LODWORD(STACK[0x42C]) = 0;
  v63 = *(v59 + 52);
  v64 = STACK[0x398];
  v65 = LODWORD(STACK[0x300]) ^ 0x7FB9A356;
  v66 = (2 * LODWORD(STACK[0x300])) & 0xFF7346AC;
  v67 = 210068311 * ((v60 - 192) ^ 0x576F9AD7);
  *(v60 - 152) = v67 + v58 - 271;
  *(v60 - 168) = &STACK[0x4C0];
  *(v60 - 160) = v64;
  *(v60 - 172) = v67 + v63 - 968448580;
  *(v60 - 192) = a14;
  *(v60 - 180) = (((a10 & 0x7FFFFFFF ^ 0x2C33EF54) + 2034806837) ^ ((a10 & 0x7FFFFFFF ^ 0xD6005D9F) - 2089090304) ^ (((v58 + 1961647218) ^ a10 & 0x7FFFFFFF) + 563544813)) - v67 + 1430811312;
  *(v60 - 176) = v65 - v67 + v66 - 1744830466;
  v68 = (*(a56 + 8 * (v58 + 2563)))(v60 - 192);
  v69 = *(v60 - 184);
  LODWORD(STACK[0x22C]) = v69;
  return (*(a56 + 8 * ((3160 * (v69 == 1958853845)) ^ (v58 + 1361))))(v68);
}

uint64_t sub_100032974(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a11 + 16) = -a3;
  v19 = 210068311 * ((((v18 - 136) | 0x26FDD015) - ((v18 - 136) & 0x26FDD015)) ^ 0x71924AC2);
  *(v18 - 128) = a14;
  *(v18 - 136) = 536598499 - v19;
  *(v18 - 120) = v19 + v16 - 497;
  (*(v17 + 8 * (v16 + 1445)))(v18 - 136);
  v20 = 435584651 * ((v18 - 136) ^ 0x6D321A56);
  *(v18 - 128) = a14;
  *(v18 - 120) = v20 + v16 - 12;
  *(v18 - 136) = (((a13 << 6) & 0xFA7DBFC0) + ((32 * a13) ^ 0xFD3EDFF7) + 987200448) ^ v20;
  (*(v17 + 8 * (v16 ^ 0xFBD)))(v18 - 136);
  *(v18 - 128) = v16 + 675097751 * ((((v18 - 136) | 0xD222EC79) - (v18 - 136) + ((v18 - 136) & 0x2DDD1380)) ^ 0x9162C9EF) - 1028;
  *(v18 - 136) = a15;
  *(v18 - 120) = &a16;
  (*(v17 + 8 * (v16 + 1321)))(v18 - 136);
  *(v18 - 112) = a14;
  *(v18 - 120) = (v16 - 216) ^ (1361651671 * ((((v18 - 136) | 0xBC7B8CB4) - (v18 - 136) + ((v18 - 136) & 0x43847348)) ^ 0xF71040CA));
  *(v18 - 128) = a15;
  v21 = (*(v17 + 8 * (v16 + 1337)))(v18 - 136);
  return (*(v17 + 8 * (((*(v18 - 136) > 0x5992245u) * (((v16 ^ 0x566) + 1243) ^ (61 * (v16 ^ 0x566)))) ^ v16)))(v21);
}

uint64_t sub_100032B7C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  v9 = (a2 - 1857) | 0x543;
  *(*(a1 + 24) + (v4 + a3)) = ((v9 ^ 0x9A) - 120) ^ (v7 - 79) ^ *(*(v3 + 8) + 4 * v8);
  return (*(v5 + 8 * (v9 ^ (229 * (v4 - 1 == v6)))))();
}

uint64_t sub_100032BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = STACK[0x2B0];
  v60 = *(STACK[0x2B0] + 96);
  if (v60 == 2)
  {
    return (*(v58 + 8 * (((*(v59 + 92) == 0) * (a49 - 1621)) ^ (v57 + 780))))(a1, a33, a32, a31, a57, 3762848529, a7, 823);
  }

  if (v60 == 1)
  {
    return (*(v58 + 8 * (((*(v59 + 92) == 0) * ((v57 + 1049) ^ 0xADC)) ^ (v57 + 1745))))(2550536209, a33, a32, a31, a57, 1744431087, 3488862168, 823);
  }

  STACK[0x400] = 91;
  *(v59 + 91) = (&STACK[0x400] ^ 0xBA) * (&STACK[0x400] + 17);
  return (*(v58 + 8 * ((823 * (STACK[0x400] == 0)) ^ (v57 + 2065))))(2550536209, a33, a32, a31, a57, 1744431087, 3488862168);
}

void sub_100032CE0()
{
  v0 = *(&off_1001252D0 + ((11 * (dword_10013EA18 ^ 8 ^ qword_10013EA10)) ^ byte_1000EC620[byte_1000E7C70[(11 * (dword_10013EA18 ^ 8 ^ qword_10013EA10))] ^ 0x24]) + 104);
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - v1) ^ 8)) ^ byte_1000F09C0[byte_1000EC520[(11 * ((qword_10013EA10 - v1) ^ 8))] ^ 0x2B]) - 61);
  v3 = (*v2 - v1) ^ &v5;
  *(v0 - 4) = (1405565963 * v3) ^ 0xBCA8FC1BD5CAFD08;
  *v2 = 1405565963 * (v3 ^ 0xBCA8FC1BD5CAFD08);
  v6[1] = 1504884919 * (((v6 | 0xAE8F0B8F) - (v6 & 0xAE8F0B8F)) ^ 0x554CBC94) + 1212455568;
  LOBYTE(v2) = 11 * ((*v2 - *(v0 - 4)) ^ 8);
  v4 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EA18) ^ 8)) ^ byte_1000F09C0[byte_1000EC520[(11 * ((qword_10013EA10 + dword_10013EA18) ^ 8))] ^ 0x2B]) + 95) - 8;
  (*&v4[8 * (byte_1000F09C0[byte_1000EC528[v2 - 8] ^ 0xDD] ^ v2) + 20800])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100032F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, int a18, uint64_t a19)
{
  v24 = v19[2];
  v25 = *v19;
  v26 = 1504884919 * ((2 * (&a12 & 0x7571AB0) - &a12 + 2024334669) ^ 0x836B5256);
  a16 = (((v21 ^ 0x92475D02) + 1840816894) ^ ((v21 ^ 0x45CCB8F7) - 1171044599) ^ (v23 - 294 + (v21 ^ 0x21F559F7) + v23 - 569732281)) - v26 + 1817490756;
  a12 = (a11 ^ 0xDFF5F9E2) - v26 + ((2 * a11) & 0xBFEBF3C4) + 1990194814;
  a18 = (v23 + 1421509965) ^ v26;
  a17 = a9;
  a19 = v24;
  a13 = a9;
  a14 = v25;
  v27 = (*(v22 + 8 * (v23 ^ 0x32B)))(&a12);
  return (*(v22 + 8 * ((1018 * (a15 == v20)) ^ v23)))(v27);
}

uint64_t sub_100033114(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = *(v4 + a1 + 16);
  v11 = (v8 + a1);
  *v11 = *(v4 + a1);
  v11[1] = v10;
  return (*(v9 + 8 * (((v6 == a1) * a4) ^ v5)))(a1 + v7);
}

uint64_t sub_100033144()
{
  v5 = v1 < v2;
  if (v5 == v0 + 1 > (v3 - 2) - 1809519374)
  {
    v5 = (((v3 - 4) | 4u) ^ 0x6BDB0CE8uLL) + v0 < v1;
  }

  return (*(v4 + 8 * ((!v5 | (2 * !v5)) ^ (v3 - 495))))();
}

void sub_1000331B8(_DWORD *a1)
{
  v2 = *(*a1 + 4) - 1365209361;
  if (v2 < 0)
  {
    v2 = 1365209361 - *(*a1 + 4);
  }

  v1 = a1[6] - 210068311 * ((a1 + 2017861946 - 2 * (a1 & 0x7846213A)) ^ 0x2F29BBED);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1000332D8()
{
  v5 = 154 * (v3 ^ 0x6DF);
  v14 = v12;
  v16 = &v11;
  v17 = (v3 - 1334) ^ (843532609 * (((&v14 | 0x1A595685) - (&v14 & 0x1A595685)) ^ 0x46140200));
  (*(v0 + 8 * (v3 ^ 0xC65u)))(&v14);
  v15 = v12;
  LODWORD(v14) = v3 + 843532609 * (&v14 ^ 0x5C4D5485) - 1488;
  (*(v0 + 8 * (v3 + 1003)))(&v14);
  if (v16 == v1)
  {
    v6 = -19399425;
  }

  else
  {
    v6 = -137495043;
  }

  if (v16 == v1)
  {
    v7 = -38798850;
  }

  else
  {
    v7 = v4;
  }

  if (v16 == v1)
  {
    v8 = 1978253270;
  }

  else
  {
    v8 = 2096348888;
  }

  v9 = (v6 ^ v11) + v8 + ((v11 << (v5 - 107)) & v7);
  v15 = v12;
  LODWORD(v14) = v3 - ((&v14 & 0x24A37319 | ~(&v14 | 0x24A37319)) ^ 0x3DF420F6) * v2 - 1508;
  (*(v0 + 8 * (v3 + 999)))(&v14);
  v15 = v13;
  LODWORD(v14) = v5 - (((&v14 | 0x300ABCFD) + (~&v14 | 0xCFF54302)) ^ 0xD6A210EC) * v2 - 1919;
  (*(v0 + 8 * (v5 ^ 0x2D4u)))(&v14);
  return (v9 - 1958853845);
}

uint64_t sub_10003375C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  if (*(v2 + 16) == (((v3 + 586) | 0xC) ^ 0x3D2F54D2))
  {
    v4 = a2 - 1;
  }

  else
  {
    v4 = a2;
  }

  *(result + 16) = v4;
  return result;
}

uint64_t sub_100033788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unsigned int a54, int a55, int a56)
{
  v59 = *(v56 + 1428);
  STACK[0x288] = a29 + 256;
  STACK[0x360] = v56 + 1432;
  if (v59 <= 0x20 && ((1 << v59) & 0x100110000) != 0)
  {
    return (*(v58 + 8 * (((*(a3 + 476) == 1) * (a56 + 854)) ^ (v57 + 19))))();
  }

  STACK[0x288] -= 256;
  return (STACK[0x3D0])(a1, a2, a54);
}

void sub_100033AC8(int a1)
{
  v2 = (((v1 ^ 0x75BC138E) - 1975260046) ^ ((v1 ^ 0x3FC758F) - 66876815) ^ ((v1 ^ 0xB8CE059D) + 1194457699)) + 9351012 + (((LODWORD(STACK[0x2E4]) ^ 0x909926CA) + 1869011254) ^ ((LODWORD(STACK[0x2E4]) ^ 0xA47A2D7) - 172466903) ^ (((a1 + 1414586710) ^ LODWORD(STACK[0x2E4])) - 1414588289));
  v3 = (v2 ^ 0x18CFC781) & (2 * (v2 & 0x9C8E17D4)) ^ v2 & 0x9C8E17D4;
  v4 = ((2 * (v2 ^ 0xD3E289)) ^ 0x38BBEABA) & (v2 ^ 0xD3E289) ^ (2 * (v2 ^ 0xD3E289)) & 0x9C5DF55C;
  v5 = v4 ^ 0x84441545;
  v6 = (v4 ^ 0x1018E010) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x7177D574) & v5 ^ (4 * v5) & 0x9C5DF55C;
  v8 = (v7 ^ 0x1055D540) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x8C082009)) ^ 0xC5DF55D0) & (v7 ^ 0x8C082009) ^ (16 * (v7 ^ 0x8C082009)) & 0x9C5DF550;
  v10 = v8 ^ 0x9C5DF55D ^ (v9 ^ 0x845D5500) & (v8 << 8);
  LODWORD(STACK[0x2E4]) = v2 ^ (2 * ((v10 << 16) & 0x1C5D0000 ^ v10 ^ ((v10 << 16) ^ 0x755D0000) & (((v9 ^ 0x1800A00D) << 8) & 0x1C5D0000 ^ (((v9 ^ 0x1800A00D) << 8) ^ 0x5DF50000) & (v9 ^ 0x1800A00D) ^ 0x80000))) ^ 0x42019EF2;
  JUMPOUT(0x100033CC4);
}

uint64_t sub_100034334()
{
  v3 = v1 + 1501;
  v4 = v1 + 76990587;
  v5 = (v1 - 96) | 0x60;
  v7 = ((v0 - 1) & 0xFu) < ((v0 - 1) & 0xFu) || v0 - 1 > (v4 & 0xFB6935FA) - 329;
  return (*(v2 + 8 * ((v7 * (v5 ^ 0x2AF)) ^ v3)))();
}

uint64_t sub_100034474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44)
{
  v45 = STACK[0x308];
  STACK[0x430] = STACK[0x308];
  STACK[0x410] = 0;
  LODWORD(STACK[0x2F4]) = 1912886423;
  STACK[0x2A0] = 0;
  LODWORD(STACK[0x420]) = 1912886423;
  STACK[0x350] = 0;
  return (*(v44 + 8 * (((a44 - 2006 + 6 * (a44 ^ 0x8DF) - 59) * (v45 == 0)) ^ a44)))();
}

uint64_t sub_10003489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v20 = 210068311 * (((v19 - 144) & 0xFD4F4B39 | ~((v19 - 144) | 0xFD4F4B39)) ^ 0x55DF2E11);
  *(v19 - 128) = v20 + v16 - 722;
  *(v19 - 136) = &a16;
  *(v19 - 144) = 536664035 - v20;
  v21 = (*(v17 + 8 * (v16 + 1220)))(v19 - 144);
  return (*(v17 + 8 * (((v16 - 1607) * (v18 != 0)) ^ (v16 - 753))))(v21);
}

uint64_t sub_100034990(uint64_t a1)
{
  v1 = 1037613739 * (a1 ^ 0xD1022D7F);
  v2 = *(a1 + 16) ^ v1;
  v3 = *(a1 + 32) ^ v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1365209361;
  v5 = v4 - 1365209361 < 0;
  v7 = 1365209361 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1001252D0 + v2 - 1370) + ((((v3 - 2029569817) < (4 * v7)) * (((v2 - 1478) | 0x620) - 1623)) ^ v2) - 1))();
}

uint64_t sub_100034B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(v25 - 132) = v24 - 675097751 * (((v25 - 136) & 0x7C23B7E8 | ~((v25 - 136) | 0x7C23B7E8)) ^ 0xC09C6D81) + 742;
  STACK[0x510] = &a23;
  v26 = (*(v23 + 8 * (v24 ^ 0xF0C)))(v25 - 136);
  return (*(v23 + 8 * (((*(v25 - 136) == 1958853845) * (((v24 - 1482) | 0x108) ^ 0xDF19810 ^ (v24 + 1039522355) & 0xCFFBB4EB)) ^ v24)))(v26);
}

uint64_t sub_100034BC4()
{
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = -v3;
  }

  v6 = v1 + v0;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  return (*(v4 + 8 * ((((v2 ^ 0xB0) + 2032) * (v5 > v7)) ^ v2)))();
}

uint64_t sub_100034BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, unsigned int a19, char *a20, int a21)
{
  v23 = ((&a18 & 0x70FFFAF6 | ~(&a18 | 0x70FFFAF6)) ^ 0x74C3B212) * v22;
  LODWORD(a20) = v23 + 2442;
  HIDWORD(a20) = 518268483 - v23;
  a18 = v23 ^ 0x660F49D;
  a19 = 1735604055 - v23;
  (*(v21 + 22536))(&a18);
  a18 = (50899313 * (&a18 ^ 0x2ACB2A7A)) ^ 0x78C;
  a20 = &a14;
  v24 = (*(v21 + 22360))(&a18);
  return (*(v21 + 8 * ((1559 * (a21 == 1958853845)) ^ 0x3D4u)))(v24);
}

void sub_100034E94()
{
  v0 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EA20) ^ 8)) ^ byte_1000E4560[byte_1000F0AC0[(11 * ((qword_10013EA10 + dword_10013EA20) ^ 8))] ^ 0x30]) - 102);
  v1 = *(v0 - 4);
  v2 = *(&off_1001252D0 + (byte_1000E456C[(byte_1000F0AC4[(11 * ((qword_10013EA10 - v1) ^ 8)) - 4] ^ 0xB7) - 12] ^ (11 * ((qword_10013EA10 - v1) ^ 8))) - 25);
  v3 = 1405565963 * (v1 ^ &v5 ^ 0xBCA8FC1BD5CAFD08 ^ *v2);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6[1] = 1504884919 * (((v6 | 0x1F8E7C19) + (~v6 | 0xE07183E6)) ^ 0xE44DCB03) + 1212455568;
  LOBYTE(v2) = 11 * (*(v0 - 4) ^ 8 ^ *v2);
  v4 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 - dword_10013EA20) ^ 8)) ^ byte_1000EC820[byte_1000E7E70[(11 * ((qword_10013EA10 - dword_10013EA20) ^ 8))] ^ 0xA3]) + 167) - 8;
  (*&v4[8 * (byte_1000F09C0[byte_1000EC528[v2 - 8] ^ 0x3A] ^ v2) + 20360])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100035198@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned int a29)
{
  v33 = *(&a17 + a2 + 72);
  v34 = ((2 * a2) & 0xBFFBF7F8) + (a2 ^ 0x5FFDFBFF) + v30;
  *(a1 + v34) = (v29 ^ (v32 - 34) ^ HIBYTE(v33) ^ 0xE9) - ((v33 >> 23) & 0x40) + 32;
  *(a1 + v34 + 1) = (BYTE2(v33) ^ 0x8E) - ((v33 >> 15) & 0x40) + 32;
  *(a1 + v34 + 2) = (BYTE1(v33) ^ 0x63) - ((2 * (BYTE1(v33) ^ 0x63)) & 0x40) + 32;
  *(a1 + v34 + 3) = v33 ^ 0xBC;
  return (*(v31 + 8 * (((2 * (a2 + 4 < a29)) | (8 * (a2 + 4 < a29))) ^ v29)))();
}

uint64_t sub_100035264(uint64_t a1, uint64_t a2)
{
  v8 = (v7 + 4 * (a2 + v4));
  *v8 = __ROR4__(*(v8 - 3) ^ v5 ^ *(v8 - 14) ^ *(v8 - 16) ^ *(v7 + 4 * (a2 + v4 + 269 * (v2 ^ 0x117u)) - 2184), 31) ^ 0x645D0D06;
  return (*(v3 + 8 * ((2083 * (a2 + 1 == v6 + 80)) ^ v2)))(1196100179);
}

void sub_100035528()
{
  v1 = (LOBYTE(STACK[0x2EC]) - ((2 * LOBYTE(STACK[0x2EC])) & 0x6C) + 61);
  if (v1 == 62)
  {
    v5 = STACK[0x2D0];
    v6 = STACK[0x2CC];
    v2 = v0 ^ 0x53;
    LOBYTE(STACK[0x2C4]) = (8 * ((v0 ^ 0xAA) + LOBYTE(STACK[0x2D0]) + (~(2 * LOBYTE(STACK[0x2D0])) | 0xFD))) ^ 0x28;
    LOBYTE(STACK[0x2C5]) = (v5 >> 5) ^ 0x20;
    LOBYTE(STACK[0x2C6]) = (v5 >> 13) ^ 0x20;
    LOBYTE(STACK[0x2C7]) = (v5 >> 21) ^ 0x20;
    LOBYTE(STACK[0x2C8]) = ((__PAIR64__(v6, v5) >> 29) - ((2 * (__PAIR64__(v6, v5) >> 29)) & 0xA8) + 84) ^ 0x74;
    LOBYTE(STACK[0x2C9]) = (v6 >> 5) ^ 0x20;
    LOBYTE(STACK[0x2CA]) = (v6 >> 13) ^ 0x20;
    v4 = v6 >> 21;
  }

  else
  {
    if (v1 != 59)
    {
      goto LABEL_6;
    }

    v2 = v0 + 83;
    v4 = STACK[0x2CC];
    v3 = STACK[0x2D0];
    LOBYTE(STACK[0x2C4]) = (LODWORD(STACK[0x2CC]) >> 21) ^ 0x20;
    LOBYTE(STACK[0x2C5]) = (v4 >> 13) ^ 0x20;
    LOBYTE(STACK[0x2C6]) = (v4 >> (v0 - 3)) ^ 0x20;
    LOBYTE(STACK[0x2C7]) = ((__PAIR64__(v4, v3) >> 29) - ((2 * (__PAIR64__(v4, v3) >> 29)) & 0x3C) + 30) ^ 0x3E;
    LOBYTE(STACK[0x2C8]) = (v3 >> 21) ^ 0x20;
    LOBYTE(STACK[0x2C9]) = (v3 >> 13) ^ 0x20;
    LOBYTE(STACK[0x2CA]) = (v3 >> 5) ^ 0x20;
    LOBYTE(v4) = 8 * v3;
  }

  LOBYTE(STACK[0x2CB]) = (v2 - 59) ^ v4;
LABEL_6:
  JUMPOUT(0x10000625CLL);
}

uint64_t sub_10003567C()
{
  if (v1)
  {
    v4 = ((2 * v2) & 0xFFED63F6) + (v2 ^ 0xFFF6B1FB) == -609797;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v0 == 0;
  return (*(v3 + 8 * ((114 * v6) ^ 0x5B9u)))();
}

uint64_t sub_100035748@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v13 = (a9 - 1);
  *(v10 + v13) = *(a5 + v13) ^ *(a2 + (v13 & 0xF)) ^ *((v13 & 0xF) + a3 + 5) ^ ((v9 ^ a1) * (v13 & 0xF)) ^ *((v13 & 0xF) + a4 + 1) ^ 0x20;
  return (*(v12 + 8 * (((v13 == (((v9 ^ v11) - 225) ^ a8 ^ a6)) * a7) ^ ((v9 ^ v11) - 73))))();
}

uint64_t sub_1000357C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = STACK[0x290];
  v67 = 435584651 * ((((v64 - 192) | 0xD930841E) - (v64 - 192) + ((v64 - 192) & 0x26CF7BE0)) ^ 0xB4029E48);
  *(v64 - 160) = (v62 - 604723565 + (v63 ^ 0x283) + 867) ^ v67;
  *(v64 - 180) = v67 + v63 + 400;
  *(v64 - 192) = &STACK[0x2E0];
  *(v64 - 152) = &STACK[0x344];
  *(v64 - 144) = &STACK[0x2C0];
  *(v64 - 176) = v66;
  *(v64 - 168) = &STACK[0x3A4];
  v68 = (*(v65 + 8 * (v63 ^ 0x98C)))(v64 - 192);
  return (*(a62 + 8 * (((*(v64 - 184) == 1958853845) * ((94 * (v63 ^ 0x283)) ^ 0xAFE)) ^ v63)))(v68, 0);
}

uint64_t sub_100035914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v14 = v11 ^ (v12 + 32);
  v15 = v11 + 1776824887;
  v16 = v13 + 19 < (a10 + 1597859586);
  if (a10 + 1597859586 < (v14 + v13))
  {
    v16 = 1;
  }

  return (*(v10 + 8 * ((164 * v16) ^ v15)))(0xE9A6D70123396331, a2, 0);
}

uint64_t sub_100035AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 - 1;
  STACK[0x268] = v4;
  *(a1 + v4) = (&STACK[0x268] ^ 0xBA) * (&STACK[0x268] + 17);
  return (*(v3 + 8 * ((4029 * (STACK[0x268] == 0)) ^ (v2 + 1057))))();
}

uint64_t sub_100035AF4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * (((v4 - 1365209361 == (((v3 - 1094) | 0x6CC) ^ 0x6CF)) * (v3 - 1072)) ^ v3)))();
}

uint64_t sub_100035B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, int a32, int a33, uint64_t a34, int a35, int a36)
{
  v39 = 210068311 * ((~((v38 - 176) | 0x44A51DB3CA26684ALL) + ((v38 - 176) & 0x44A51DB3CA26684ALL)) ^ 0x309B9DD662B60D62);
  *(v38 - 176) = (a36 + 1699921094) ^ v39;
  *(v38 - 144) = a33 - v39;
  *(v38 - 140) = (a33 ^ 0xE) - v39;
  *(v38 - 160) = a33 - v39 - 68;
  *(v38 - 156) = v39 ^ 1;
  *(v38 - 168) = v39 + (v36 + 1);
  *(v38 - 152) = 3 - v39;
  v40 = (*(v37 + 8 * a30))(v38 - 176);
  return (*(v37 + 8 * *(v38 - 172)))(v40);
}

void sub_100035C10(uint64_t a1)
{
  v2 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EA80) ^ 8)) ^ byte_1000E7B70[byte_1000E4460[(11 * ((qword_10013EA10 + dword_10013EA80) ^ 8))] ^ 0x85]) - 2);
  v3 = *(v2 - 4);
  v4 = *(&off_1001252D0 + ((11 * (v3 ^ qword_10013EA10 ^ 8)) ^ byte_1000F09C0[byte_1000EC520[(11 * (v3 ^ qword_10013EA10 ^ 8))] ^ 0x2B]) - 61);
  v5 = &v9[v3 + *v4];
  v6 = 1405565963 * v5 + 0x435703E42A3502F8;
  v7 = 1405565963 * (v5 ^ 0xBCA8FC1BD5CAFD08);
  *(v2 - 4) = v6;
  *v4 = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_1001252D0 + ((11 * ((qword_10013EA10 + dword_10013EA80) ^ 8)) ^ byte_1000EC820[byte_1000E7E70[(11 * ((qword_10013EA10 + dword_10013EA80) ^ 8))] ^ 0xA3]) + 167) - 8;
  (*&v8[8 * (byte_1000E456C[(byte_1000F0AC4[(11 * ((v7 - v4) ^ 8)) - 4] ^ 0xB7) - 12] ^ (11 * ((v7 - v4) ^ 8))) + 21808])(*(&off_1001252D0 + (byte_1000EC62C[(byte_1000E7C7C[(11 * ((v7 + v4) ^ 8)) - 12] ^ 0x22) - 12] ^ (11 * ((v7 + v4) ^ 8))) + 58) - 4, sub_1000189B0);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100035F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, unsigned int a21)
{
  a21 = (v22 - 63) ^ (843532609 * ((&a18 & 0x21C0CEF | ~(&a18 | 0x21C0CEF)) ^ 0xA1AEA795));
  a18 = a14;
  a20 = &a16;
  (*(v21 + 8 * (v22 + 2266)))(&a18);
  a21 = (v22 - 63) ^ (843532609 * ((((2 * &a18) | 0x9BB4A5AE) - &a18 - 1306153687) ^ 0x11970652));
  a20 = &a13;
  a18 = a14;
  (*(v21 + 8 * ((v22 + 1353) ^ 0xD97u)))(&a18);
  LODWORD(a18) = v22 + 1353 + 843532609 * (((&a18 ^ 0xC34A100A) & 0x3E5422FF | ~(&a18 ^ 0xC34A100A | 0x3E5422FF)) ^ 0x5EAC998F) - 1570;
  a19 = a14;
  v23 = (*(v21 + 8 * ((v22 + 1353) ^ 0xD9Fu)))(&a18);
  return (*(v21 + 8 * ((3594 * (a20 == ((v22 - 1293562423) & 0x177E ^ 0x8F85FA3E) + ((v22 + 1141934286) | 0xA12B3511))) ^ (v22 + 1353))))(v23);
}

uint64_t sub_100036188(_DWORD *a1)
{
  v1 = 143681137 * ((a1 & 0xA17758BF | ~(a1 | 0xA17758BF)) ^ 0xB8200B50);
  v2 = a1[1] - v1;
  return (*(*(&off_1001252D0 + (v2 ^ 0x359)) + ((1940 * ((((*a1 ^ v1) - 1958853846 < 0x63) ^ (v2 - 102 + v2 - 94 + 1)) & 1)) ^ v2) - 1))();
}

uint64_t sub_100036268(uint64_t a1)
{
  v1 = *(a1 + 16) - 1785193651 * ((1516501044 - (a1 ^ 0xA19EB5D1 | 0x5A63F834) + (a1 ^ 0xA19EB5D1 | 0xA59C07CB)) ^ 0xF2231636);
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v1 + 875954376 - 435584651 * ((&v5 & 0x6C284467 | ~(&v5 | 0x6C284467)) ^ 0xFEE5A1CE);
  v6 = v3;
  v7 = v2;
  return (*(*(&off_1001252D0 + (v1 ^ 0xCBCA009D)) + v1 + 875956816))(&v5);
}