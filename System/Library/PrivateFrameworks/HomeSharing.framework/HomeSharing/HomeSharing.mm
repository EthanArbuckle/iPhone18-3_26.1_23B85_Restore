void __HSGetCloudDAAPClientPrefix_block_invoke()
{
  if (MSVDeviceIsAppleTV())
  {
    v0 = @"ATV-";
  }

  else
  {
    v0 = @"iOS-";
  }

  objc_storeStrong(&HSGetCloudDAAPClientPrefix_cloudDAAPClientPrefix, v0);
}

void sub_254419748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_254419910(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x277D85DE8];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x277D85EF8];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x28223BE58])
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
              v23 = v35;
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

uint64_t sub_254419B70(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
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
  v14 = *MEMORY[0x277D85EF8];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x28223BE58])
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

uint64_t sub_254419D04(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x277D85EF8];
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
  if (MEMORY[0x28223BE58])
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

uint64_t sub_254419EF8(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
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

uint64_t sub_25441A078(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_286663530 + ((-35 * ((qword_27F5F9C50 - dword_27F5F9C18) ^ 0xD2)) ^ byte_2544922D0[byte_25448EA30[(-35 * ((qword_27F5F9C50 - dword_27F5F9C18) ^ 0xD2))] ^ 0xA4]) - 153);
  v2 = -35 * ((qword_27F5F9C50 - *v1) ^ 0xD2);
  v3 = *(&off_286663530 + (*(off_286663980 + (*(off_286663B10 + v2 - 4) ^ 0xA4u) - 8) ^ v2) - 143);
  v4 = (*(v3 - 4) - *v1) ^ &v6;
  *v1 = 1865875933 * v4 - 0x391B123DE35E87B6;
  *(v3 - 4) = 1865875933 * (v4 ^ 0x1E71746347E125D2);
  v8 = a1;
  v7[0] = (2066391179 * ((2 * (v7 & 0x49638978) - v7 + 916223623) ^ 0x99BBF49F)) ^ 0x28F;
  LOBYTE(v3) = -35 * ((*(v3 - 4) - *v1) ^ 0xD2);
  (*(*(&off_286663530 + ((-35 * ((qword_27F5F9C50 + dword_27F5F9C18) ^ 0xD2)) ^ byte_25448EB30[byte_254489B80[(-35 * ((qword_27F5F9C50 + dword_27F5F9C18) ^ 0xD2))] ^ 0xAE]) + 22) + (*(off_2866638B0 + (*(off_286663658 + v3 - 8) ^ 0xCDu) - 12) ^ v3) + 2338))(v7);
  return v7[1];
}

uint64_t sub_25441A3F4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_286663530 + ((-35 * (dword_27F5F9E08 ^ 0xD2 ^ qword_27F5F9C50)) ^ byte_25448E830[byte_254489A80[(-35 * (dword_27F5F9E08 ^ 0xD2 ^ qword_27F5F9C50))] ^ 0xE4]) - 3);
  v2 = *(v1 - 4);
  v3 = *(&off_286663530 + (*(off_2866638B0 + (*(off_286663658 + (-35 * ((qword_27F5F9C50 - v2) ^ 0xD2)) - 8) ^ 0x81u) - 12) ^ (-35 * ((qword_27F5F9C50 - v2) ^ 0xD2))) - 78);
  v4 = (*(v3 - 4) ^ v2) - &v6;
  *(v1 - 4) = 1865875933 * v4 - 0x391B123DE35E87B6;
  *(v3 - 4) = 1865875933 * (v4 ^ 0x1E71746347E125D2);
  v8 = 733 - 210068311 * (&v7 ^ 0x92D63FA4);
  v7 = a1;
  LOBYTE(v3) = -35 * (*(v1 - 4) ^ 0xD2 ^ *(v3 - 4));
  return (*(*(&off_286663530 + ((-35 * ((qword_27F5F9C50 - dword_27F5F9E08) ^ 0xD2)) ^ byte_25448EB30[byte_254489B80[(-35 * ((qword_27F5F9C50 - dword_27F5F9E08) ^ 0xD2))] ^ 0x49]) - 121) + (*(off_286663718 + (*(off_286663680 + v3 - 12) ^ 0xBu) - 4) ^ v3) + 2370))(&v7);
}

uint64_t sub_25441A71C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_286663530 + ((-35 * (dword_27F5F9E20 ^ 0xD2 ^ qword_27F5F9C50)) ^ byte_25448E730[byte_254489980[(-35 * (dword_27F5F9E20 ^ 0xD2 ^ qword_27F5F9C50))] ^ 0x5C]) - 113);
  v2 = *(v1 - 4);
  v3 = *(&off_286663530 + (*(off_2866638D8 + (*(off_2866639A0 + (-35 * (v2 ^ qword_27F5F9C50 ^ 0xD2)) - 12) ^ 0x30u) - 4) ^ (-35 * (v2 ^ qword_27F5F9C50 ^ 0xD2))) - 52);
  v4 = *(v3 - 4) - v2 - &v6;
  *(v1 - 4) = 1865875933 * v4 + 0x1E71746347E125D2;
  *(v3 - 4) = 1865875933 * (v4 ^ 0x1E71746347E125D2);
  v7 = a1;
  v8 = 962 - 1388665877 * (((&v7 | 0xCF5EBB03) - (&v7 & 0xCF5EBB03)) ^ 0x42F3D9EF);
  LOBYTE(v3) = -35 * ((*(v3 - 4) + *(v1 - 4)) ^ 0xD2);
  return (*(*(&off_286663530 + ((-35 * ((qword_27F5F9C50 + dword_27F5F9E20) ^ 0xD2)) ^ byte_254489C80[byte_254495110[(-35 * ((qword_27F5F9C50 + dword_27F5F9E20) ^ 0xD2))] ^ 0x81]) - 30) + (*(off_286663980 + (*(off_286663B10 + v3 - 4) ^ 0xA4u) - 8) ^ v3) + 2308))(&v7);
}

uint64_t sub_25441AA88(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 4) + v1;
  v5 = v4 - 1440329773 + *(v3 + 68);
  *(v3 + 68) = v5;
  v4 -= 1044307478;
  v6 = v4 < 0x179AD217;
  v7 = v5 + 396022295 < v4;
  if (v6 != v5 > 0xE8652DE8)
  {
    v7 = v6;
  }

  return (*(*(&off_286663530 + (v2 ^ 0xBA)) + ((453 * v7) ^ v2) - 1))();
}

uint64_t sub_25441AB3C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + 468) | 0x40;
  v5 = (*(v3 + 8 * (v2 + 1325)))(*STACK[0x220], a2, LODWORD(STACK[0x394]));
  return (*(v3 + 8 * (((((LODWORD(STACK[0x468]) == 585076288) ^ (v4 - 22)) & 1) * ((v4 + 1141302506) ^ 0x4406EBE7)) ^ v4)))(v5, STACK[0x210]);
}

uint64_t sub_25441AFCC@<X0>(uint64_t a1@<X8>)
{
  v8 = (**(v7 + 8) ^ v3) + (**(v4 + 8) ^ v3);
  **(a1 + 8) = v8 + v3 - ((v6 + 1437) & (2 * v8));
  return (*(v5 + 8 * (((v1 == 1) * ((v2 - 723) ^ 0x169)) ^ v2)))();
}

void sub_25441B11C(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_25441B26C()
{
  v3 = (*(v1 + 8 * (v0 ^ 0xE38u)))();
  LODWORD(STACK[0x528]) = v2;
  return (*(v1 + 8 * ((((v0 - 266) ^ (v0 - 822714249) & 0x31099E7E ^ 8) * (v2 == 585076288)) | v0)))(v3);
}

uint64_t sub_25441B31C@<X0>(int a1@<W8>)
{
  v3 = *(v7 + 16);
  v4 = *(v7 + 32);
  v8[0] = 0xA0A0A0A0A0A0A0A0;
  v8[1] = 0xA0A0A0A0A0A0A0A0;
  v5 = 1037613739 * ((((2 * (v2 - 160)) | 0x1FBCAB9C) - (v2 - 160) + 1881254450) ^ 0x5EDC78B1);
  *(v2 - 128) = (a1 + 1676) ^ v5;
  *(v2 - 160) = v5 + 683915340;
  *(v2 - 144) = v4;
  *(v2 - 136) = v2 - 180;
  *(v2 - 120) = v3;
  *(v2 - 152) = v8;
  result = (*(v1 + 8 * (a1 ^ 0x940)))(v2 - 160);
  *(v7 + 44) = *(v2 - 124);
  return result;
}

uint64_t sub_25441B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = ((v13 - 188) | 0x9E) - 1161213979 + (((a12 ^ 0xFEA73FB9) + 22593607) ^ ((v13 ^ 0xF7ECF163 ^ a12) + 135466017) ^ ((a12 ^ 0x2B944226) - 731136550));
  v15 = v14 < 0x97E9BC43;
  v16 = v14 > 0x97E9BC43;
  if (v15)
  {
    v16 = v15;
  }

  return (*(v12 + 8 * (((4 * !v16) | (8 * !v16)) ^ (v13 - 59))))(135466017, 731136550, 3563830746, 3133753317, 2337746969, 1957220267, 33);
}

uint64_t sub_25441B5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = STACK[0x210];
  STACK[0x400] = STACK[0x218];
  LODWORD(STACK[0x4A0]) = v8;
  return (*(v7 + 8 * (((v8 == ((((v6 - 1837536343) & 0x6D868F3D) + 1948449730) & 0x8BDD036F ^ (a6 - 17))) * (((((v6 - 1837536343) & 0x6D868F3D) + 1274) | 0x40) ^ 0xFF)) ^ (v6 - 1837536343) & 0x6D868F3D)))(a1, v9);
}

uint64_t sub_25441B724(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 + 1749)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 ^ 0xBD7)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 4) = v5;
  return result;
}

uint64_t sub_25441B7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, int a24, int a25)
{
  v32 = (a25 & 0xDFFFFFFF ^ 0x2DF8E40) + v30 - 2 * ((a25 & 0xDFFFFFFF ^ 0x2DF8E40) & 0x42FD11B8 ^ a25 & 8);
  v33 = *(v27 + 8 * (v29 - 1777));
  v34 = *v25;
  v35 = (v26 ^ 0xBDFEBDFF) + 2076048230 + ((2 * v26) & 0x7BFD7BFE) + v31;
  *(*v25 + v35) = (v28 ^ HIBYTE(v32)) - ((v32 >> 23) & 0x40) - 96;
  *(v34 + v35 + 1) = (BYTE2(v32) ^ 0xFD) - ((2 * (BYTE2(v32) ^ 0xFD)) & 0x40) - 96;
  *(v34 + v35 + 2) = (BYTE1(v32) ^ 0x11) - ((v32 >> 7) & 0x40) - 96;
  *(v34 + v35 + 3) = ((a25 ^ 0x40) + v30 - 2 * ((a25 ^ 0x40) & 0xB8 ^ a25 & 8)) ^ 0x10;
  return v33(a17, a2, a23, 1161);
}

uint64_t sub_25441B8F8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v8 = a3 ^ (a4 | (v144 << 32));
  v9 = a2 ^ 0x87DD7881D9469411;
  v10 = ((a2 ^ 0x87DD7881D9469411) - ((2 * (a2 ^ 0x87DD7881D9469411)) & 0xE000D81321CF93DELL) + (v5 ^ 0x70006C0990E7CAB9)) ^ v7;
  v11 = ((a2 ^ 0x87DD7881D9469411) - 2 * ((a2 ^ 0x87DD7881D9469411) & 0x57193D8AB299E79FLL ^ a2 & 8) + 0x57193D8AB299E797) ^ a1;
  v12 = v11 ^ 0x9130FAC06DC25476;
  v13 = v8 & 0xD9672D6FFDB9C5D5 ^ v11 ^ 0x9130FAC06DC25476 ^ (v10 ^ 0x4E9CD6C1F4760905) & (v8 ^ 0x3521F8AACD4FFA5BLL) ^ 0xD4EB6C021FE22702;
  v14 = __ROR8__(__ROR8__(v13, 48) ^ 0xF32F53732748C799, 16);
  v15 = v14 ^ 0x2793601CB55B8512 ^ ((v14 ^ 0x2793601CB55B8512) << 23) ^ (((v14 ^ 0x2793601CB55B8512) << 57) & 0xBA8A93AB23B93A93 | 0x1312C1498428128) ^ ((v14 >> 41) ^ (v14 >> 7) ^ 0x45A017C88449378CLL) & (((v14 ^ 0x12u) << 57) | 0x1FFFFFFFFFFFFFFLL);
  v16 = a1 ^ 0x7FFC7043A31EEDC1 ^ ((v10 ^ 0x604E516CA1E00AD8) & (v11 ^ 0x6ECF053F923DAB89) | (v11 ^ 0x9130FAC06DC25476) & 0x84A553D57D039F7);
  if (((a2 ^ 0x87DD7881D9469411) & 0x82EE1687ACCADB62) == 0)
  {
    v9 = v12;
  }

  v17 = v9 & (a1 ^ 0x39D638B520A44C1ELL);
  v18 = v6 ^ v8 ^ 0x7B946481D4275B91;
  v19 = v17 ^ v18 ^ 0x5AC7B0E7EB3DC013;
  if (v10 == 0x68040451F630332FLL)
  {
    v19 = v18 ^ 0x25384F1814C23FECLL;
  }

  v20 = (v17 ^ v18 ^ 0x96A1685FCAAE527DLL) + 2 * (v17 & (v18 ^ 0x16A1685FCAAE527DLL)) - 2 * ((v19 ^ 0x33992747DE6C6D91) & v17);
  v21 = (-v20 ^ (v16 - (v20 ^ v16)) ^ 0x3C211B02E9943AE4 ^ (v20 - ((2 * v20) & 0x78423605D32875C8) + 0x3C211B02E9943AE4)) + v16;
  v22 = v21 ^ __ROR8__(v21, 17) ^ (v21 << 54) ^ (v21 >> 10);
  v23 = v22 ^ 0xC0B0BE2F9E858051 ^ v15 ^ 0x892121044354DD0ALL;
  v24 = v18 & 0x6CA494C63F5DE7F6 ^ (v18 ^ 0x96A1685FCAAE527DLL) & (v8 ^ 0xA67A93930DEDE252) ^ v10 ^ 0x5A92852F2DD05419;
  *(&v25 + 1) = v13 ^ v24 ^ 0xDCE61146219DC1F6;
  *&v25 = v13 ^ v24;
  v26 = *(&v25 + 1) ^ __ROR8__(*(&v25 + 1), 28) ^ (v25 >> 19) ^ v15 ^ 0x892121044354DD0ALL;
  v27 = v18 & 0xB4785566EBF8B2E5 ^ v8 ^ 0x7B946481D4275B91 ^ (v18 ^ 0x695E97A03551AD82) & (a1 ^ 0x7251922C34A30104) ^ v24;
  *(&v25 + 1) = v27 ^ 0x8D0AC04B506AA855;
  *&v25 = v27;
  v28 = v27 ^ 0x8D0AC04B506AA855 ^ __ROR8__(v27 ^ 0x8D0AC04B506AA855, 61) ^ (v25 >> 39);
  v29 = __ROR8__(__ROR8__((v20 >> 6) ^ (v20 >> 1) ^ v20 ^ 0x67D324E744C26237 ^ v28 ^ 0x209D76FC7A29175 ^ ((v20 ^ 0x67D324E744C26237) << 58) ^ (((v20 ^ 0x67D324E744C26237) << 63) | 0x19342824BD9B7F64) ^ 0xC85B3AD602FE0448, 31) ^ 0x3A99EC75B2919ED6, 33);
  v30 = (v22 & 0xA63E8E95763E7F7DLL | (v15 ^ 0xB50ED6C612C0576BLL) & ~v22) ^ v29;
  *(&v25 + 1) = v23 & 0x258FEFFD6C152C6DLL ^ v22 ^ 0xC0B0BE2F9E858051 ^ (v23 ^ 0xA55E388746D08AB2) & (v26 ^ 0xC05BE381D79FD769) ^ v30 ^ 0x94BA33F500264659 ^ 0xEC13A5611F799F3DLL;
  *&v25 = v23 & 0x258FEFFD6C152C6DLL ^ v22 ^ 0xC0B0BE2F9E858051 ^ (v23 ^ 0xA55E388746D08AB2) & (v26 ^ 0xC05BE381D79FD769) ^ v30 ^ 0x94BA33F500264659;
  v31 = v25 >> 17;
  *&v25 = __ROR8__(*(&v25 + 1), 10);
  v32 = ((v31 ^ v25 ^ 0x890FFCD9371E624CLL) - ((2 * (v31 ^ v25 ^ 0x890FFCD9371E624CLL)) & 0xE39B8EA654B3C3CELL) - 0xE3238ACD5A61E19) ^ *(&v25 + 1);
  v33 = v26 & 0xE1F636FD205168E6 ^ (v26 ^ 0x1A2BF383447504FBLL) & (v28 ^ 0x4D83EA594DF1E4ACLL) ^ 0xF516DA5D32F9296 ^ v23;
  v34 = (v33 & 0xF2F0F93CF1701AFDLL ^ 0x6EF306E6DE3FC036) & (v33 & 0xD0F06C30E8FE502 ^ 0xFBFDFFBEF57E1BFFLL) | v33 & 0x10C000100802500;
  v35 = __ROR8__(v34 ^ 0xB27F0B640A1BF39, 7);
  *&v25 = __ROR8__(v34 ^ 0xB27F0B640A1BF39, 41);
  v36 = ((v35 ^ v25 ^ 0xBD63DFB3D1298273) - ((2 * (v35 ^ v25 ^ 0xBD63DFB3D1298273)) & 0x5C78A568FE9C5AE6) - 0x51C3AD4B80B1D28DLL) ^ v34 ^ 0xB27F0B640A1BF39;
  v37 = v28 & 0xD3332EACFE2BA4A6 ^ v26 ^ 0x585A2CA6B9DCA64 ^ (v29 ^ 0x1B58C2CFBACEBB9FLL) & (v28 ^ 0x538A235B925F73B5);
  v38 = v34 ^ v37 ^ ((v34 ^ v37 ^ 0xB2C76C7CEB3545E3) >> 19) ^ ((v34 ^ v37 ^ 0xB2C76C7CEB3545E3) >> 28) ^ ((v34 ^ v37 ^ 0x44F23989CEEE7D29) << 36) ^ ((v34 ^ v37 ^ 0x44F23989CEEE7D29) << 45) ^ 0x6CB3295FE86D3FF9;
  *(&v25 + 1) = v37 ^ v28 ^ 0x209D76FC7A29175;
  *&v25 = v37 ^ v28;
  v39 = (v29 ^ 0x3794139CBB1AE0C6) & (v22 ^ 0x1C0F668A2D11A36ELL) ^ v29 & 0x1C0F668A2D11A36ELL ^ __ROR8__((v25 >> 54) ^ 0x6327C0149AC8F9B0, 10);
  LOBYTE(v28) = *(a5 + ((v39 >> 61) ^ 0x56));
  v40 = (v28 ^ ((v28 ^ 0x3C) - ((2 * (v28 ^ 0x3C) + 2) & 0x90) + 73) ^ 0x8B ^ ((v28 ^ (57 - (v28 ^ 0xFA)) ^ 0x96 ^ ((v28 ^ 0x3C) - ((2 * (v28 ^ 0x3C) + 2) & 0x54) - 85)) + 1)) - 62;
  v41 = (v36 - ((2 * v36) & 0xD5E3CD5EAF6A65B8) + 0x6AF1E6AF57B532DCLL) ^ v38;
  v42 = v40 ^ (v39 >> 39) ^ v39 ^ 0x92C002778510AA01 ^ (8 * (v39 ^ 0x92C002778510AA01)) ^ ((v39 ^ 0x92C002778510AA01) << 25);
  v43 = v32 ^ 0x147D2CDEEA4;
  v44 = v36 ^ v32 ^ 0x147D2CDEEA4;
  v45 = (~(2 * v41) + v41) & (v42 ^ 0xEE5C2C7D3D6521EELL) ^ v44;
  v46 = ((v45 ^ 0x26974B18501E2B14) >> 7) ^ ((v45 ^ 0x26974B18501E2B14) >> 41) ^ ((v45 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v45 ^ 0x26974B18501E2B14) - (((v45 ^ 0x26974B18501E2B14) << 58) & (2 * (v45 ^ 0x26974B18501E2B14))));
  v47 = ((v32 ^ 0x147D2CDEEA4) - 2 * ((v32 ^ 0x147D2CDEEA4) & 0x6AF1E6AF57B532DDLL ^ v32 & 1) + 0x6AF1E6AF57B532DCLL) ^ v38;
  if (!v40)
  {
    v47 = v41;
  }

  v48 = v47 & ~v44;
  v49 = v30 ^ (v30 << 58) ^ 0xF91015699B84A07ELL;
  v50 = (v30 >> 1) & 0x100000000000;
  if ((v50 & v49) != 0)
  {
    v50 = -v50;
  }

  v51 = ((v30 >> 1) & 0xFFFFEFFFFFFFFFFFLL ^ (v30 >> 6) | ((v30 ^ 0x94BA33F500264659) << 63)) ^ (v50 + v49) ^ 0x808C4AE16BAC42BELL;
  v52 = v36 & (v32 ^ 0xFFFFFEB82D32115BLL);
  v53 = v32 ^ v48 ^ 0x235C5BBD7D92C4EELL;
  v54 = v42 ^ (v51 - ((2 * v51) & 0x7CE1B5DF84158124) - 0x418F25103DF53F6ELL);
  v55 = v52 ^ v54;
  v56 = v53 ^ v52 ^ v54;
  v57 = __ROR8__(v56, 10);
  v58 = (v56 ^ v57 ^ (v56 >> 17)) + (v56 << 47) - 2 * ((v56 ^ v57 ^ (v56 >> 17)) & (v56 << 47));
  v59 = v55 ^ 0x29791C7EB2275970;
  v60 = (v55 ^ 0x29791C7EB2275970) << 58;
  v61 = (v41 ^ -v41 ^ (((v42 ^ 0x11A3D382C29ADE11) & v51) - (v41 ^ (v42 ^ 0x11A3D382C29ADE11) & v51))) + ((v42 ^ 0x11A3D382C29ADE11) & v51);
  v62 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v42 ^ v61 ^ (((v54 ^ 0xAFD3096D00901E83) & v43) - ((2 * ((v54 ^ 0xAFD3096D00901E83) & v43)) & 0x7CE1B5DF84158124) - 0x418F25103DF53F6ELL) ^ 0x62540EAA012C33C0, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v63 = v62 ^ 0x93DD7BE3C3310A2CLL ^ ((v62 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v62 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v62 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v62 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v64 = (((((2 * (0x34CDB152F4A04500 - v60)) & 0x9000000000000200) + ((0x34CDB152F4A04500 - v60) ^ 0xCB324EAD0B5FBB00)) ^ v60 ^ ((v55 ^ 0x29791C7EB2275970) - ((v60 & 0xF800000000000000 ^ (v55 ^ 0x29791C7EB2275970) & 0xF9BFE541A2368FBELL | (v55 ^ 0x29791C7EB2275970) & 0x6401ABE5DC97041) ^ v60 & 0x400000000000000))) + (v55 ^ 0x29791C7EB2275970)) ^ (v55 << 63) ^ __ROR8__(((v55 ^ 0x29791C7EB2275970) >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v63, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v65 = v64 & 0xA8F512753D8F931ELL ^ (v59 >> 1) & 0x28F512753D8F931ELL | (v64 ^ (v59 >> 1)) & 0x570AED8AC2706CE1;
  v66 = v65 ^ v46 & ~v58;
  *(&v67 + 1) = v66;
  *&v67 = v66 ^ 0xD3DA1E3360BF843ALL;
  v68 = ((v67 >> 1) ^ v66 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v66 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v67 >> 1) ^ v66 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v66 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  *(&v67 + 1) = v66;
  *&v67 = v66 ^ 0xD3DA1E3360BF843ALL;
  v69 = v45 ^ 0x6E04C15915AB860ALL ^ v61 ^ __ROR8__(v45 ^ 0x6E04C15915AB860ALL ^ v61, 19) ^ ((v45 ^ 0x6E04C15915AB860ALL ^ v61) << 36) ^ ((v45 ^ 0x6E04C15915AB860ALL ^ v61) >> 28) ^ v46;
  v70 = ((v65 ^ v63) + (v65 | ~v63) + 1) ^ v69;
  v71 = v63 ^ v58 & ~v65 ^ 0x425764BB5877DA25 ^ v70;
  v72 = v71 ^ (v71 >> 61) ^ (v71 >> 39) ^ (8 * v71) ^ (v71 << 25);
  v73 = v58 ^ v46;
  v74 = v63 & ~v69 ^ v58 ^ v46;
  v75 = v74 ^ 0xFD;
  v76 = v74 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v74 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v74 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v74 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v77 = v74 ^ 0x97F6A7E5F6E8F58ALL ^ v70 ^ __ROR8__(v74 ^ 0x97F6A7E5F6E8F58ALL ^ v70, 19) ^ ((v74 ^ 0x97F6A7E5F6E8F58ALL ^ v70) << 36) ^ ((v74 ^ 0x97F6A7E5F6E8F58ALL ^ v70) >> 28);
  *&v67 = __ROR8__((v67 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v72 ^ v68, 3) ^ 0x55413C453664FDCDLL, 61);
  v78 = ((v77 | v76) ^ v76 & v77) & 0x2D23D578E308995FLL | (v77 ^ v76) & 0xD2DC2A871CF766A0;
  v79 = v69 & ~v73;
  v80 = (v67 ^ 0xAA09E229B327EE6ALL) & ~v72 ^ v78;
  v81 = v58 ^ 0x44C9D571A5C4A51CLL ^ v79 ^ v66 ^ ((v58 ^ 0x44C9D571A5C4A51CLL ^ v79 ^ v66) >> 10) ^ ((v58 ^ 0x44C9D571A5C4A51CLL ^ v79 ^ v66) << 47) ^ ((v58 ^ 0x44C9D571A5C4A51CLL ^ v79 ^ v66) << 54) ^ ((v58 ^ 0x44C9D571A5C4A51CLL ^ v79 ^ v66) >> 17);
  v82 = ((v80 ^ v72) + ((v67 ^ 0x55F61DD64CD81195) & v81) - 2 * ((v80 ^ v72) & (v67 ^ 0x55F61DD64CD81195) & v81)) ^ 0x6005BE354A5BB0B2;
  v83 = v82 >> (v22 & 0x3D) >> (v22 & 0x3D ^ 0x3D);
  v84 = (8 * v82) ^ (v82 >> 39) ^ ((v82 ^ (v82 << 25)) & 0xF21553F3FD140018 ^ v83 & 0x18 | (v82 ^ (v82 << 25)) & 0xDEAAC0C02EBFFE7 ^ v83 & 0xE7);
  v85 = v72 & ~v78 ^ v81 ^ v76;
  v86 = v85 ^ 0x2DB5B6AF87F64351 ^ ((v85 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v85 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v85 ^ 0x2DB5B6AF87F64351) >> 41) | ((v85 ^ 0x2DB5B6AF87F64351) << 57));
  v87 = v85 ^ 0x93C23431B76D41FLL ^ v80;
  v88 = (v87 ^ (v87 >> 28)) + (v87 >> 19) - 2 * ((v87 ^ (v87 >> 28)) & (v87 >> 19));
  v89 = v87 << 36;
  v90 = v88 ^ (v87 << 45);
  v91 = v78 & ~(v81 ^ v76);
  v92 = v90 ^ (v87 << 36);
  v93 = v67 ^ 0xAA09E229B327EE6ALL ^ v76 & ~v81;
  v94 = v92 ^ v86;
  v95 = v81 ^ 0xF374A001D380BDC2 ^ v91 ^ v93 ^ ((v81 ^ 0xF374A001D380BDC2 ^ v91 ^ v93) >> 10) ^ ((v81 ^ 0xF374A001D380BDC2 ^ v91 ^ v93) << 47) ^ ((v81 ^ 0xF374A001D380BDC2 ^ v91 ^ v93) << 54) ^ ((v81 ^ 0xF374A001D380BDC2 ^ v91 ^ v93) >> 17);
  v96 = v95 ^ v86;
  v97 = v84 & ~(v92 ^ v86) ^ v95 ^ v86;
  v98 = v93 ^ 0x6DC4FB0BD4FFFF44;
  *(&v67 + 1) = v93;
  *&v67 = v93 ^ 0x6DC4FB0BD4FFFF44;
  v99 = (v67 >> 1) ^ v93 ^ 0x6DC4FB0BD4FFFF44 ^ ((v93 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v84;
  v100 = v98 >> 6;
  if (v89 == v90)
  {
    v101 = v100;
  }

  else
  {
    v101 = ~(v100 ^ v99);
  }

  v102 = v99 + v100 - 2 * (v101 & v99);
  v103 = v102 ^ (((~v95 | 0xFFFFFFFFEFFFFFFFLL) - (v95 & 0x4000000000)) ^ v95 & 0xFFFFFFBFEFFFFFFFLL) & v96;
  v104 = v96 == -1;
  v105 = __ROR8__(((v94 << (v88 & 0x2B) << (v88 & 0x2B ^ 0x2B)) + (v94 >> 21)) ^ __ROR8__(v102 & ~v84, 21) ^ 0x6D12C2B6EED373A6, 43);
  v106 = v95 & ~v102 ^ v84 ^ v105;
  v107 = v97 ^ 0x5035F38BF1002A3ALL ^ v105;
  v108 = v107 ^ (v107 >> 19);
  v109 = v108 & 0xD99EEE0927173347 ^ (v107 << 45) & 0xD99EE00000000000 | v108 & 0x266111F6D8E8CCB8 ^ (v107 << 45) & 0x2661000000000000;
  v110 = (v107 << 45) ^ (0xFFFFE00000000000 * v107) ^ (v109 + v108 - 2 * v109);
  v111 = v107 << 36;
  v112 = v110 + v108;
  v113 = (v107 << 36) & 0x78E1346000000000;
  v114 = v112 ^ (v107 >> 28);
  v115 = v114 & 0x78E134634F73AA70 ^ v113 | v114 & 0x871ECB9CB08C558FLL ^ v111 & 0x871ECB9000000000;
  v116 = v115 + 0x70006C0990E7C9EFLL - 2 * (v115 & 0x70006C0990E7C9FFLL ^ v114 & 0x10);
  v141[65] = v116 ^ 0xEF;
  LOBYTE(v113) = 69 * ((v116 ^ 0x70006C0990E7C9EFuLL) >> (v114 & 8) >> (v114 & 8 ^ 8));
  v117 = v106 ^ 0xE013161F571CC4C5 ^ ((v106 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v106 ^ 0xE013161F571CC4C5));
  v118 = v117 ^ (((v106 ^ 0xE013161F571CC4C5) >> 61) | (v106 << 25));
  v119 = *(v140 + (v113 ^ 0x3DLL)) - 18;
  v120 = (((v119 ^ 0x57) + v119 - 2 * (v119 ^ 0x57)) ^ 0xFE) + v119;
  v141[54] = ((v117 ^ (((v106 ^ 0xE013161F571CC4C5) >> 61) | (v106 << 25))) >> 24) ^ 0x8A;
  v141[28] = BYTE2(v116) ^ 0xE7;
  v141[41] = (v120 >> 2) | (v120 << 6);
  v121 = (v116 ^ 0x70006C0990E7C9EFuLL) >> (v75 & 0x20) >> (v75 & 0x20 ^ 0x20u);
  v141[35] = BYTE1(v117);
  v122 = v92 ^ v95;
  if (v104)
  {
    v122 = 0;
  }

  v141[21] = BYTE2(v117);
  v123 = v103 - ((2 * v103) & 0x5A47EBDAAC1EB792);
  v141[58] = v121;
  v141[17] = BYTE4(v118) ^ 0x89;
  v141[5] = BYTE3(v116) ^ 0x90;
  v141[47] = BYTE5(v116) ^ 0x6C;
  v141[14] = HIBYTE(v116) ^ 0x70;
  v124 = v123 + 0x2D23F5ED560F5BC9;
  v141[48] = BYTE6(v116);
  v141[16] = (v118 ^ 0x3EAE39898A000000) >> (v106 & 0x28) >> (v106 & 0x28 ^ 0x28);
  v125 = v123 - 0x5BDA183C59819C5ELL;
  v126 = 0x88FE0E29AF90F827;
  if (v124 < 0x88FE0E29AF90F827)
  {
    v125 = v124;
    v126 = 0;
  }

  if (v125)
  {
    v127 = v124;
  }

  else
  {
    v127 = v126;
  }

  *(&v128 + 1) = v127;
  *&v128 = v124;
  v141[6] = v118;
  v129 = *(a5 + (BYTE6(v118) ^ 0xF9));
  v130 = (v128 >> 1) ^ v124 ^ (v127 << 58) ^ (v127 >> 6);
  v141[10] = BYTE1(v130);
  v131 = v95 ^ v122 & v94 ^ 0x29E1AB0124FF49E7 ^ v103;
  *&v128 = __ROR8__(v131, 10);
  v132 = (v131 ^ v128 ^ (v131 << 47)) + (v131 >> 17) - 2 * ((v131 ^ v128 ^ (v131 << 47)) & (v131 >> 17));
  v141[18] = BYTE4(v130);
  v141[25] = BYTE2(v130);
  v141[42] = HIBYTE(v118) ^ 0x3E;
  v141[12] = BYTE5(v130);
  v141[23] = BYTE6(v130);
  v141[44] = v130;
  v141[24] = BYTE3(v130);
  v141[30] = (v129 ^ 0xFA) - 119;
  v141[62] = HIBYTE(v130);
  v141[19] = (v131 ^ v128) + (v131 >> 17) - 2 * ((v131 ^ v128) & (v131 >> 17));
  v133 = *(v143 + ((((v131 ^ v128) + (v131 >> 17) - 2 * ((v131 ^ v128) & (v131 >> 17))) >> 8) ^ 0x27) + 279);
  v141[8] = ((v131 ^ v128) + (v131 >> 17) - 2 * ((v131 ^ v128) & (v131 >> 17))) >> 24;
  v141[33] = ((v131 ^ v128) + (v131 >> 17) - 2 * ((v131 ^ v128) & (v131 >> 17))) >> 16;
  v141[4] = (v133 ^ BYTE1(v132) ^ 0x2D ^ ((BYTE1(v132) ^ 0x2D) + 72) ^ 0x41) + 15;
  v134 = v97 ^ 0x4734313A1F2B2857;
  v135 = v97 ^ __ROR8__(v97 ^ 0x4734313A1F2B2857, 41) ^ ((v97 ^ 0x4734313A1F2B2857) >> 7);
  v136 = *(v142 + (((v132 >> 28) & 0xF0 | (v132 >> 36) & 0xF) ^ 0x5C));
  v141[46] = HIBYTE(v132);
  v141[43] = BYTE6(v132);
  v141[38] = BYTE5(v132);
  v141[31] = ((v136 >> 5) | (8 * v136)) ^ 0xC1;
  result = 58;
  LOBYTE(v132) = *(a5 + ((((((4 * v135) | (v135 >> 6)) ^ 0xA) >> 2) | ((((4 * v135) | (v135 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  v141[55] = BYTE4(v135) ^ 0x3A;
  v141[34] = BYTE3(v135) ^ 0x1F;
  v141[32] = BYTE1(v135) ^ 0x28;
  v138 = v135 ^ (v134 << 57);
  v141[15] = (v132 ^ 0xFA) - 119;
  v141[7] = (v138 ^ 0x4734313A1F2B2857) >> (v23 & 0x10 ^ 0x10) >> (v23 & 0x10);
  v141[61] = BYTE5(v135) ^ 0x31;
  v141[56] = (*(a5 + (BYTE6(v135) ^ 0x63)) ^ 0xFA) - 119;
  v141[51] = HIBYTE(v138) ^ 0x47;
  *v139 = v144 + 1;
  return result;
}

uint64_t sub_25441CD94@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 + 1885) ^ 0xFFFFFFFFFFFFF790) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((146 * (v5 != 0)) ^ (v3 + 870))))();
}

uint64_t sub_25441CDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v23 - 120) = (v18 - 185) ^ ((((v20 | (v23 - 120)) - ((v23 - 120) & v20)) ^ 0x7DEBBFE0) * v21);
  *(v23 - 112) = &a18;
  *(v23 - 104) = a15;
  v24 = (*(v19 + 8 * (v18 + 1462)))(v23 - 120);
  return (*(v19 + 8 * ((1746 * (*(v23 - 116) == v22 + ((v18 - 783) | 0x641) - 1745)) ^ v18)))(v24);
}

uint64_t sub_25441CEB0@<X0>(_OWORD *a1@<X8>)
{
  v6 = a1[1];
  v7 = (v5 + v1);
  *v7 = *a1;
  v7[1] = v6;
  return (*(v4 + 8 * ((551 * (((2 * v3) ^ 0xFA6u) - 1934 == (v2 & 0x60))) ^ v3)))();
}

uint64_t sub_25441CFC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  v9 = (a2 - 792742981) & 0x2F404FD7;
  *(*(a1 + 16) + (v4 + a3)) = *(*(v3 + 8) + 4 * v8) ^ v7;
  v10 = v4 - 1 == v9 - 915 + v6;
  return (*(v5 + 8 * (((4 * v10) | (8 * v10)) ^ v9)))();
}

void sub_25441D080(uint64_t a1)
{
  v1 = 1388665877 * ((2 * (a1 & 0x2EF7D36D) - a1 + 1359490194) ^ 0xDCA54E7E);
  v2 = *(a1 + 16) - v1;
  v3 = *(a1 + 20) - v1;
  v5 = (v3 & 0x30000000) == 0x10000000 || (v3 & 0x3F000000) == 872415232;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_25441D5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = -8 - v11;
  *(v9 + v8 + v10 + v16) = vadd_s8(vsub_s8(*(a8 + v8 + v16), vand_s8(vadd_s8(*(a8 + v8 + v16), *(a8 + v8 + v16)), v14)), v15);
  v17 = (((v12 ^ 0x50) - 309) & v8) + v16 == 0;
  return (*(v13 + 8 * ((16 * ((v17 ^ (23 * (v12 ^ 0x64))) & 1)) & 0xBF | (((v17 ^ (23 * (v12 ^ 0x64))) & 1) << 6) | v12 ^ 0x50)))();
}

uint64_t sub_25441D69C@<X0>(int a1@<W8>)
{
  v9 = (v3 ^ 0x8DAD62EC) * v1;
  *(v8 - 184) = v9 + v2 + 209;
  *(v8 - 180) = a1 + v9;
  v5[1] = &STACK[0x4AC];
  *v5 = &STACK[0x3E8];
  v5[4] = 0;
  v10 = (*(v4 + 8 * (v2 + 2398)))(v8 - 200);
  v11 = *(v8 - 176);
  *(v6 + 368) = STACK[0x2A0];
  return (*(v4 + 8 * ((1113 * (v11 == (((v2 + 1491) | 0x42) ^ (v7 + (v2 ^ 0x617) - 3200)))) ^ v2)))(v10);
}

uint64_t sub_25441D778()
{
  v2 = STACK[0x450];
  LODWORD(STACK[0x450]) += 64;
  v3 = LODWORD(STACK[0x53C]) - 903582881;
  v4 = v2 + 995679223 > v3;
  if (v2 + 995679223 < ((v0 + 576) ^ 0x95Eu) + 995678703 != v3 < 0x3B58DBB7)
  {
    v4 = v2 + 995679223 < ((v0 + 576) ^ 0x95Eu) + 995678703;
  }

  return (*(v1 + 8 * ((90 * v4) ^ (v0 + 576))))();
}

uint64_t sub_25441D844(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = 843532609 * ((-2 - (((v17 - 128) ^ 0x801A3510 | 0x3F0488EF) + ((v17 - 128) ^ 0x270000A0 | 0xC0FB7710))) ^ 0x4A89ECA);
  *(v17 - 128) = (((a3 << 6) & 0xF6393FC0) + ((32 * a3) ^ 0xFB1C9FFC) + 2146926336) ^ v18;
  *(v17 - 124) = v16 - v18 + 175;
  *(v17 - 120) = &a15;
  v19 = (*(v15 + 8 * (v16 ^ 0xDFB)))(v17 - 128);
  return (*(v15 + 8 * ((((*(a10 + 4) - 742196934) < 0x7FFFFFFF) * (((2 * v16) ^ 0x9F8) - 265)) ^ v16)))(v19);
}

uint64_t sub_25441DA8C@<X0>(int a1@<W8>)
{
  v8 = v1 + v5;
  v9 = v5 - 1;
  *(*v6 + (v2 + v9)) = *(*v6 + (v8 + v3));
  return (*(v7 + 8 * (((v9 == a1) * v4) ^ v1)))();
}

uint64_t sub_25441DBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = a12 + 1636377493 > a17;
  if (a17 < 0x61892355 != a12 + 1636377493 < (a14 & 0x23277DE7 ^ 0x618926B5u))
  {
    v25 = a12 + 1636377493 < (a14 & 0x23277DE7 ^ 0x618926B5u);
  }

  return (*(v23 + 8 * ((56 * (((a14 + 73) ^ v25) & 1)) ^ (v24 + 2307))))(a1, a2, a3, 11, a5, a23);
}

uint64_t sub_25441DC18(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_25441DD44(uint64_t a1)
{
  v1 = 742307843 * (((a1 | 0xB9F25DC1) - (a1 & 0xB9F25DC1)) ^ 0xA7D0D094);
  v2 = *(a1 + 12) + v1;
  v3 = *(*(&off_286663530 + (v2 ^ 0x863)) + 86);
  v4 = *(a1 + 4) - v1 + 582409166;
  v5 = v3 - 1666217929 > v4;
  if (v4 < 0x9CAF8837 != v3 > 0x635077C8)
  {
    v5 = v3 > 0x635077C8;
  }

  return (*(*(&off_286663530 + (v2 ^ 0x84C)) + ((31 * (((v2 ^ 0xA39 ^ v5) & 1) == 0)) ^ v2) - 1))();
}

uint64_t sub_25441DE34@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v6 = v4 - 639 - 1388665877 * ((2 * (&v6 & 0x5DB3CB40) - &v6 + 575419578) ^ 0xAFE15656) + 978;
  result = (*(v3 + 8 * (v4 + 1422)))(&v6);
  *(v1 + 28) = v2;
  return result;
}

void sub_25441DE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x298] = a64 + 2353;
  STACK[0x290] = a18 + 49;
  STACK[0x288] = a64 + 2333;
  STACK[0x278] = a18 + 29;
  STACK[0x270] = a64 + 2313;
  STACK[0x268] = a18 + 9;
  JUMPOUT(0x25441DB34);
}

uint64_t sub_25441DED8@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0x31C]) = 0;
  v4 = a2 - 332;
  v5 = LODWORD(STACK[0x31C])++;
  *STACK[0x268] = v5 + 562464144;
  v6 = *STACK[0x278];
  v7 = STACK[0x238];
  *(v3 - 160) = v4 - STACK[0x238] + 1212453946;
  v8 = (v3 - 200);
  v8[4] = v6 - v7;
  *(v3 - 180) = ((v4 - 1741608341) ^ 0x35) - v7;
  *(v3 - 176) = ((v4 - 1741608341) ^ 0x7C) - v7;
  *(v3 - 192) = v4 - 1741608341 + v7;
  *(v3 - 184) = a1 - v7;
  *v8 = STACK[0x230];
  v9 = (*(v2 + 8 * (v4 ^ 0xF58)))(v3 - 200);
  return (*(v2 + 8 * *(v3 - 188)))(v9);
}

uint64_t sub_25441DF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v10 + ((v11 + 1507463031) & 0xA625EBF7) - 148;
  a10 = v13;
  *(a2 + v13) = (&a10 ^ 0xBA) * (&a10 + 17);
  v14 = *(v12 + 8 * ((1361 * (v13 == 0)) ^ (v11 - 1183)));
  return v14(v14, a2);
}

uint64_t sub_25441DF84()
{
  v5 = STACK[0x284] & 0xC7C3857B;
  v6 = STACK[0x2C8];
  *v3 = ((v5 ^ 0xB125FC2A) & (LODWORD(STACK[0x2C8]) - 999)) + v3[623] - (((-((~(LODWORD(STACK[0x2C8]) - 999) + v0) ^ (v2 - (LODWORD(STACK[0x2C8]) - 999))) | (~(LODWORD(STACK[0x2C8]) - 999) + v0)) & 0x8000000000000000) == 0);
  return (*(v1 + 8 * ((951 * (((v6 - 1622) ^ ~((v5 - 996785714) & 0x3B69B9F6)) + v4 == 0)) ^ v5)))();
}

uint64_t sub_25441E024()
{
  v4 = (v0 + 2132859041) & 0x80DF277F;
  v5 = v1 + 24654431 < v3 + 766851364;
  if (v3 > (v4 ^ 0x524AC3E4) != v1 + 24654431 < -1380632284)
  {
    v5 = v3 > (v4 ^ 0x524AC3E4);
  }

  return (*(v2 + 8 * ((3519 * v5) ^ v4)))();
}

void sub_25441E1E8(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(&off_286663530 + ((-35 * (dword_27F5F9E10 ^ 0xD2 ^ qword_27F5F9C50)) ^ byte_2544922D0[byte_25448EA30[(-35 * (dword_27F5F9E10 ^ 0xD2 ^ qword_27F5F9C50))] ^ 0xA4]) - 79);
  v4 = *(v3 - 4);
  v5 = off_2866639A0 - 12;
  v6 = off_2866638D8 - 4;
  v7 = *(&off_286663530 + (*(off_2866638D8 + (*(off_2866639A0 + (-35 * ((qword_27F5F9C50 - v4) ^ 0xD2)) - 12) ^ 0xAEu) - 4) ^ (-35 * ((qword_27F5F9C50 - v4) ^ 0xD2))) - 26);
  v8 = 1865875933 * ((v4 - &v10 + *(v7 - 4)) ^ 0x1E71746347E125D2);
  *(v3 - 4) = v8;
  *(v7 - 4) = v8;
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v8) = 1785193651 * ((((v12 | 0x99A27E1C) ^ 0xFFFFFFFE) - (~v12 | 0x665D81E3)) ^ 0x75816DC3);
  v13 = v8 - 562358852;
  v15 = v8 ^ 0x93107673;
  v14 = v11;
  LODWORD(v7) = 1865875933 * ((*(v7 - 4) - *(v3 - 4)) ^ 0x47E125D2);
  v9 = *(&off_286663530 + ((-35 * ((qword_27F5F9C50 - dword_27F5F9E10) ^ 0xD2)) ^ byte_2544922D0[byte_25448EA30[(-35 * ((qword_27F5F9C50 - dword_27F5F9E10) ^ 0xD2))] ^ 0xC3]) - 56) - 8;
  (*&v9[8 * (v7 ^ v6[v5[v7] ^ 0x30]) + 18760])(v12);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_25441E484@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x40) - 96;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((61 * v4) ^ 0xDDu)))(0);
}

uint64_t sub_2544202F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = (a1 + a2);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((1156 * (((v3 + 639) ^ 0x56DLL) == (v2 & 0xFFFFFFFFFFFFFFF0))) ^ v3)))(1389);
}

uint64_t sub_2544203D8@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, unsigned int a7@<W8>)
{
  v12 = a1 < a3;
  *(a2 + a7) = v8 + 74 + *(a6 + v7) + (a5 ^ (2 * *(a6 + v7)) | 0xBF) + 119;
  if (v12 == v7 + 1 > v10)
  {
    v12 = v9 + v7 + 43 < a1;
  }

  return (*(v11 + 8 * ((v12 * a4) ^ v8)))();
}

uint64_t sub_254420478@<X0>(int a1@<W0>, unsigned int a2@<W2>, unsigned int a3@<W3>, unsigned int a4@<W8>)
{
  v9 = a4 + 1;
  *(v8 + v4) = *(STACK[0x348] + a4);
  v10 = a4 + 1 + a3 < v5;
  if (v5 < a3 != v9 > a2)
  {
    v10 = v5 < a3;
  }

  return (*(v7 + 8 * ((v10 * a1) ^ v6 ^ a1)))();
}

uint64_t sub_254420550()
{
  v2 = (((v1 + 1609703641) & 0xA00DDBDF) + 1526280886) & 0xA506CEEB;
  v3 = ((v2 + 661478964) & 0xD8929FF3 ^ 0x31B) == 32;
  return (*(v0 + 8 * (((2 * v3) | (16 * v3)) ^ v2)))();
}

uint64_t sub_254420630@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v8 = v3 - 1;
  *(v7 + 168) = v8;
  *(a1 + v8) = ((a2 + 1) ^ 0xBA) * (a2 + 18);
  return (*(v6 + 8 * (((*(v7 + 168) != v5 - 1888) * v4) ^ v2)))();
}

void sub_254420638(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 62097897 - 2 * (a1 & 0x3B389E9)) ^ 0x179C1472));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_254420794@<X0>(int a1@<W3>, unsigned int a2@<W4>, unint64_t a3@<X5>, _DWORD *a4@<X6>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = (a4[1] ^ v14) + ((a1 - 1108) ^ (v16 + 601) ^ HIDWORD(a3)) + a2 * (*(*(a13 + 8) + 4) ^ v14);
  *a4 = (v15 + v19 - (v13 & (2 * v19)) + 1312) ^ a5;
  return (*(v18 + 8 * (((a6 == 2) * v17) ^ a1)))();
}

uint64_t sub_25442085C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v2 - 1510) | 0x100u) - 369 + a2;
  v6 = *(v4 + v5 - 15);
  v7 = *(v4 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v3 + 8 * ((265 * ((a2 & 0xFFFFFFE0) == 32)) ^ (v2 - 578))))();
}

uint64_t sub_254420934@<X0>(int a1@<W8>)
{
  v6 = (v1 + 885644039) & 0xCB3626FF;
  LODWORD(STACK[0x31C]) = a1;
  v7 = (*(v2 + 8 * (v1 + 1340)))(v3 + 4, 0);
  v8 = v3[4] + 1396775086 - ((2 * v3[4]) & 0xA682315C);
  v3[1] = v3[6] + 1396775086 - ((2 * v3[6]) & 0xA682315C);
  v3[2] = v8;
  v9 = (*(v2 + 8 * (v1 + 1326)))(v7);
  v3[3] = v9 + 1396775086 - ((v6 - 1501418746) & (2 * v9));
  v10 = (*(v2 + 8 * (v1 ^ 0xD32)))();
  *v3 = v10 + 1396775086 - ((2 * v10) & 0xA682315C);
  LODWORD(STACK[0x288]) = LODWORD(STACK[0x290]) - 1657759157 - ((2 * LODWORD(STACK[0x290])) & 0x3A61344E);
  v11 = (1664525 * (*v4 ^ (*v4 >> 30))) ^ v4[1];
  v4[1] = (((*v3 ^ 0x67518763) - 1733396323) ^ ((*v3 ^ 0xA3229842) + 1558013886) ^ ((*v3 ^ 0x9732078F) + 1758328945)) + 2137403971 + (((v11 ^ 0x88E63E9C) + 1530714359) ^ ((v11 ^ 0x8493A889) + 1464422116) ^ ((v11 ^ 0xC759615) - 542150528));
  v12 = STACK[0x2C0];
  v13 = ((v6 + 1554362254) ^ 0x61) + STACK[0x2C0];
  *(v5 - 184) = STACK[0x2C0] ^ 2;
  v14 = (v6 + 1554362254) ^ v12;
  *(v5 - 192) = v13;
  *(v5 - 188) = v14;
  *(v5 - 200) = 55968316 - v12 + v6;
  *(v5 - 196) = v14 ^ 0x38;
  *(v5 - 168) = v12 + 623;
  *(v5 - 172) = -v12;
  v15 = (*(v2 + 8 * (v6 + 758)))(v5 - 200);
  return (*(v2 + 8 * *(v5 - 176)))(v15);
}

uint64_t sub_254420B74@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(v5 + v6) = *(a2 + v6);
  return (*(v4 + 8 * (((v6 == 0) * a1) ^ (v2 - 540))))();
}

uint64_t sub_254420BA0(int a1)
{
  v4 = (v1 ^ 0x2C2) * a1;
  v5 = (*(v2 + 8 * (v1 + 1667)))(1576, 0x105004009637391);
  *(v3 + 408) = v5;
  return (*(v2 + 8 * (((v5 == 0) * (v4 ^ 0x676)) ^ v1)))();
}

uint64_t sub_254420C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v24 = &a15 | 0x5E297159;
  a15 = a11;
  HIDWORD(a16) = -843532609 * ((1579774297 - v24 + (&a15 | 0xA1D68EA6)) ^ 0xFD9BDA23) + 740766347 * v21 + 530262041;
  LODWORD(a17) = ((v23 ^ 0x205) + 471) ^ (843532609 * ((1579774297 - v24 + (&a15 | 0xA1D68EA6)) ^ 0xFD9BDA23));
  (*(v22 + 8 * (v23 ^ 0x803u)))(&a15);
  v25 = 1037613739 * ((1789792797 - (&a15 | 0x6AAE121D) + (&a15 | 0x9551EDE2)) ^ 0x4453C09D);
  a16 = a11;
  a17 = v19;
  a18 = ((v23 ^ 0x205) + 1149) ^ v25;
  a19 = ((2 * v20) & 0xFDF5776C) + (((((v23 ^ 0x205) - 891) | 0x180) + 2130360881) ^ v20) - 48793616 + v25;
  v26 = (*(v22 + 8 * (v23 ^ 0x8DCu)))(&a15);
  return (*(v22 + 8 * ((1923 * (a15 == 585076288)) ^ v23 ^ 0x205u)))(v26);
}

uint64_t sub_254420D84@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  v17 = &a14 + a1;
  *v17 = 0xA0A0A0A0A0A0A0A0;
  *(v17 + 1) = 0xA0A0A0A0A0A0A0A0;
  return (*(v16 + 8 * ((50 * (329 * (v15 ^ 0x3EAu) - 364 - 607 != ((329 * (v15 ^ 0x3EA) - 939) & v14))) ^ (329 * (v15 ^ 0x3EA)))))();
}

uint64_t sub_254420E90(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 101;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_254420EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v34 = (v30 - 506571236) & 0x1E31ADBA;
  *(*(v32 + 96) + 1428) = 32;
  v35 = 1785193651 * ((2 * ((v33 - 128) & 0x781F2EB0) - (v33 - 128) - 2015309495) ^ 0x943C3D69);
  *(v33 - 112) = (-1827637644 - ((3 << (((v30 + 28) & 0xBA) + 113)) & 0x2620ECE2)) ^ v35;
  *(v33 - 124) = v35 - 562360276 + v34;
  *(v33 - 120) = &a21;
  v36 = (*(v31 + 8 * (v34 ^ 0xCE4)))(v33 - 128);
  return (*(v31 + 8 * (((*v32 - 457955512 + (a30 & 0x3Fu) < 0xFFFFFFC0) * (v34 - 1410)) ^ v34)))(v36);
}

uint64_t sub_25442111C(_DWORD *a1)
{
  v1 = 843532609 * (((a1 | 0x20F8A4B6) - a1 + (a1 & 0xDF075B49)) ^ 0x7CB5F033);
  v2 = *a1 + v1;
  return (*(*(&off_286663530 + (v2 - 316)) + (((((v2 + 82) ^ (((((a1[4] + v1) ^ 0x3557DFE7) - 894951399) ^ (((a1[4] + v1) ^ 0xC28C410C) + 1030995700) ^ (((a1[4] + v1) ^ 0xD50410AB) + 721153877)) - 1562407360 < 0x80000064)) & 1) * ((v2 ^ 0x5F) - 381)) ^ v2) - 1))();
}

uint64_t sub_254421254(uint64_t a1)
{
  v1 = 1082434553 * ((2 * (a1 & 0x82F5123) - a1 + 2010164956) ^ 0xEC975856);
  v2 = *(a1 + 12) + v1;
  v3 = *(a1 + 8) + v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 742196933;
  v5 = v4 - 742196933 < 0;
  v7 = 742196933 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_286663530 + v2 - 506) + ((((v3 - 1776822553) < (4 * v7)) * ((v2 + 880) ^ 0x5A2)) ^ v2) - 1))();
}

uint64_t sub_254421550@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, uint64_t a36, uint64_t a37)
{
  v43 = (*(v38 + 8 * (a2 ^ 0xF2A)))(LODWORD(STACK[0x4CC]), a1, a37);
  v44 = STACK[0x2C8];
  if (v43)
  {
    if (v43 == 268435459)
    {
      LODWORD(STACK[0x468]) = -585050760;
      return (*(v38 + 8 * ((((v41[30] == 0) ^ (LOBYTE(STACK[0x2C8]) - 1)) & 1 | (4 * (((v41[30] == 0) ^ (LOBYTE(STACK[0x2C8]) - 1)) & 1))) ^ (LODWORD(STACK[0x2C8]) - 533))))();
    }

    else
    {
      v53 = 843532609 * (((v42 - 200) & 0x2B475F87 | ~((v42 - 200) | 0x2B475F87)) ^ 0x88F5F4FD);
      *(v40 + 8) = &STACK[0x468];
      v54 = STACK[0x2C8];
      *(v42 - 200) = LODWORD(STACK[0x2C8]) - v53 - 1235;
      *(v42 - 184) = 585076288 - v53 + v43 - ((2 * v43) & 0x45BF1C80);
      v55 = (*(v38 + 8 * a35))(v42 - 200);
      return (*(v38 + 8 * ((((v41[30] == 0) ^ (v54 - 1)) & 1 | (4 * (((v41[30] == 0) ^ (v54 - 1)) & 1))) ^ (v54 - 533))))(v55);
    }
  }

  else
  {
    v41[39] = &STACK[0x570] + v37;
    LODWORD(STACK[0x344]) = 520691076;
    v41[22] = v39 - 80;
    v41[6] = 0;
    LODWORD(STACK[0x3D0]) = 393082906;
    *(v42 - 196) = v44 - 742307843 * (((((v42 - 200) | 0xB3CD3BC6) ^ 0xFFFFFFFE) - (~(v42 - 200) | 0x4C32C439)) ^ 0x5210496C) + 68670311;
    (*(v38 + 8 * (v44 + 748)))(v42 - 200);
    v46 = (*(v38 + 8 * (v44 + 749)))(336, 0x100004077774924);
    return (*(v38 + 8 * ((((v44 + 23) ^ (v46 == 0)) & 1 | (2 * (((v44 + 23) ^ (v46 == 0)) & 1))) ^ (v44 - 797))))(v46, v47, v48, v49, v42 - 200, v50, v51, v52, a3, a4);
  }
}

uint64_t sub_2544218F8(double a1, double a2, double a3, double a4, double a5, int8x16_t a6)
{
  v10 = vld1q_dup_f32(v7);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12.i64[0] = 0x100000001;
  v12.i64[1] = 0x100000001;
  a6.i32[0] = *(v7 + 4 * ((v8 + 250) ^ 0x4FE06452u) - 3940);
  a6.i32[1] = *(v7 + 8);
  a6.i32[2] = *(v7 + 12);
  v13 = vextq_s8(v10, a6, 0xCuLL);
  v14 = a6;
  v14.i32[3] = *(v7 + 16);
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v14, vnegq_f32(v12)), vandq_s8(v13, v11)), 1uLL), *(v7 + 1588));
  v13.i32[0] = *(v9 - 152 + 4 * (*(v7 + 4 * ((v8 + 250) ^ 0x4FE06452u) - 3940) & 1));
  v13.i32[1] = *(v9 - 152 + 4 * (*(v7 + 8) & 1));
  v13.i32[2] = *(v9 - 152 + 4 * (*(v7 + 12) & 1));
  v13.i32[3] = *(v9 - 152 + 4 * (v14.i8[12] & 1));
  *v7 = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), vdupq_n_s32(0x538FA27Eu))), vdupq_n_s32(0x29C7D13Fu)), v13);
  return (*(v6 + 8 * ((v8 + 250) ^ 0x4FE0668E)))();
}

uint64_t sub_254421A80(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v18 = (a2 ^ v11) * (**(v16 + 8) ^ v11) + (*(&a11 + v13) ^ v11);
  *(&a11 + v13) = v18 + v11 - ((v14 + 391) & (2 * v18));
  return (*(v17 + 8 * ((3031 * (v12 == 1)) ^ v15)))();
}

uint64_t sub_254421BE0@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 - 284) - v1 - 1287;
  v7 = *(a1 + v6 - 15);
  v8 = *(a1 + v6 - 31);
  v9 = v5 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v4 + 8 * (((v1 == 288) * v3) ^ v2)))();
}

uint64_t sub_254421C70(uint64_t a1, int a2)
{
  if (a2 + 1405286535 + (v3 ^ 0x7E2) >= 0)
  {
    a2 = 1484393866 - a2;
  }

  return (*(v2 + 8 * ((2269 * (a2 + 372 * (v3 ^ 0x754) - 742197678 >= 0)) ^ v3 ^ 0x7E2)))();
}

uint64_t sub_254421D50@<X0>(int a1@<W8>)
{
  v6 = a1 - 541;
  v7 = *(v4 + 16);
  v8 = LODWORD(STACK[0x2EC]) - ((2 * LODWORD(STACK[0x2EC])) & 0xCC57FCE2) + 1714159217;
  v9 = 1388665877 * ((v5 - 579089630 - 2 * ((v5 - 200) & 0xDD7BCBEA)) ^ 0x50D6A906);
  v10 = (v5 - 200);
  v10[4] = STACK[0x250];
  *(v5 - 156) = (a1 - 1776824139) ^ v9;
  *(v5 - 176) = (v1 ^ 0x7FCF36F7) - v9 + 2 * v1 + ((a1 - 541) ^ 0xECFBEEC3);
  *(v5 - 200) = v8 ^ v9;
  v10[1] = STACK[0x248];
  v10[2] = v3;
  v10[6] = v7;
  v11 = (*(v2 + 8 * (a1 + 1568)))(v5 - 200);
  v12 = *(v5 - 160);
  LODWORD(STACK[0x4A0]) = v12;
  return (*(v2 + 8 * (((v12 == ((v6 - 1281786446) & 0x4C66817F) + 585076177) * (((v6 - 249) | 0x20) ^ 0x903)) ^ v6)))(v11, v3);
}

uint64_t sub_254421E34(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = (v11 + 4 * v9);
  v14 = (v7 - 779) + v9 - 1202;
  v15 = *(v11 + 4 * v14);
  v16 = v13[397] ^ ((v15 & 0x7FFFFFFE | v8 & 0x80000000) >> 1);
  *v13 = (v16 + a3 - (a2 & (2 * v16))) ^ *(v12 + 4 * (v15 & 1));
  return (*(v10 + 8 * (((v14 == 227) * a7) ^ v7)))();
}

uint64_t sub_254421EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = STACK[0x2C8];
  v8 = STACK[0x490];
  STACK[0x350] = *(v5 + 8 * (LODWORD(STACK[0x2C8]) - 1564));
  STACK[0x310] = v8;
  STACK[0x4B0] = v6;
  v9 = *(v8 + 68);
  *(v8 + (v9 & 0x3F)) = 32;
  return (*(v5 + 8 * ((((v9 & 0x3Fu) > ((794 * (((v7 - 1620) | 4) ^ 4)) ^ 0x603u)) * ((((v7 - 1620) | 4) + 1616) ^ 0xE1A)) ^ ((v7 - 1620) | 4))))(a1, a2, a3, a4, a5, 585076288, 1620, 50);
}

uint64_t sub_254421F58()
{
  if (v2)
  {
    v1 = 0;
  }

  return (*(v3 + 8 * ((2 * (((v0 + 25 + ((v0 + 25) ^ 0x12) + 1) ^ v1) & 1)) & 0xDF | (32 * (((v0 + 25 + ((v0 + 25) ^ 0x12) + 1) ^ v1) & 1)) | v0)))();
}

uint64_t sub_254421FAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v4 + 408);
  v6 = *(v4 + 56);
  STACK[0x308] = *(v3 + 8 * v2);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v3 + 8 * ((v8 * ((((v2 ^ 0x61D) + 554) | 0x26) - 2172)) ^ ((v2 ^ 0x61D) - 696))))(a1, a2, 1785193651);
}

void sub_2544225B4(uint64_t a1)
{
  v1 = 2066391179 * (((a1 | 0x20DD57A5) - (a1 & 0x20DD57A5)) ^ 0x8FFAD5BD);
  v2 = *(*(a1 + 8) + 12) - 2045794184;
  v3 = (*(a1 + 4) ^ v1) - 1489596133;
  v4 = (v3 < 0xE673BF3E) ^ (v2 < 0xE673BF3E);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0xE673BF3E;
  }

  __asm { BRAA            X11, X17 }
}

uint64_t sub_2544226F0@<X0>(int a1@<W8>)
{
  v6 = (v4 + (v1 & 0x3F) + 9);
  *(v6 - 1) = v5;
  *v6 = v5;
  v7 = (v2 - 142) - 503 != ((v2 - 613) & a1);
  return (*(v3 + 8 * (v7 | (4 * v7) | (v2 - 5))))();
}

uint64_t sub_25442276C()
{
  v4 = v1 - 977378750;
  v5 = v4 < 0x3FB70EAB;
  v6 = v2 + 1068961451 < v4;
  if (v5 != v2 > 0xC048F154)
  {
    v6 = v5;
  }

  return (*(v0 + 8 * ((((v3 + 1666231280) & 0x9CAF57DD ^ 0x606) * v6) ^ v3)))();
}

uint64_t sub_2544227EC@<X0>(int a1@<W0>, uint64_t a2@<X6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = (((a1 ^ 0xF351726C) + 212766100) ^ ((a1 ^ 0x2EB2DEDF) - 783474399) ^ ((a1 ^ 0x43BB584C) - 1136351308)) + (((*(v18 - 148) ^ 0xE78C38DF) + 410240801) ^ ((*(v18 - 148) ^ 0xE5E8FEF2) + 437715214) ^ ((*(v18 - 148) ^ 0x9C3C32D2) + 1673776430)) + 1891423665;
  v20 = (((v16 ^ 0x9B83BA08) + 1685865976) ^ ((v16 ^ 0x4186E7AD) - 1099360173) ^ ((v16 ^ 0x445DA95A) - 1146988890)) + (((*(v18 - 144) ^ 0x2E6F03EA) - 779027434) ^ ((*(v18 - 144) ^ 0x99CD1054) + 1714614188) ^ ((*(v18 - 144) ^ 0x29FAE741) - 704309057)) - 1315862844;
  *(v18 - 148) = v19 ^ ((v19 ^ 0xE4C7B2B5) + 791848698) ^ ((v19 ^ 0x6F136239) - 1528400266) ^ ((v19 ^ 0xD221CCD0) + 433379485) ^ ((v19 ^ 0x6DFFF7EF) - 1509235804) ^ 0xAA521F4C;
  *(v18 - 144) = v20 ^ ((v20 ^ 0x446A41AC) - 817225066) ^ ((v20 ^ 0xA681B2CC) + 765579766) ^ ((v20 ^ 0xF1CB805B) + 2062279523) ^ ((v20 ^ 0x67FFEFFD) - 320893755) ^ 0xEA876839;
  v21 = (((v17 ^ 0xD4EB0BEC) + 722793492) ^ ((v17 ^ 0x17AFEE71) - 397405809) ^ ((v17 ^ 0x5D1C1162) - 1562120546)) + (((*(v18 - 140) ^ 0x510DA7E4) - 1359849444) ^ ((*(v18 - 140) ^ 0x24DE025F) - 618529375) ^ ((*(v18 - 140) ^ 0xEB8B5144) + 343191228)) + 2058353381;
  v22 = (((a3 ^ 0x9A8F159) - 162066777) ^ ((a3 ^ 0x6C3BEE1) - 113491681) ^ ((a3 ^ 0x9133BB47) + 1858880697)) + (((*(v18 - 136) ^ 0xA3F81704) + 1544022268) ^ ((*(v18 - 136) ^ 0x19ECD7C6) - 434952134) ^ ((*(v18 - 136) ^ 0x244C343D) - 608973885)) + 1355789971;
  v23 = (v22 ^ 0xE3C0B24B) & (2 * (v22 & 0xEBE2336B)) ^ v22 & 0xEBE2336B;
  v24 = ((2 * (v22 ^ 0xA300924B)) ^ 0x91C54240) & (v22 ^ 0xA300924B) ^ (2 * (v22 ^ 0xA300924B)) & 0x48E2A120;
  v25 = v24 ^ 0x4822A120;
  v26 = (v24 ^ 0x800000) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x238A8480) & v25 ^ (4 * v25) & 0x48E2A120;
  v28 = (v27 ^ 0x828000) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x48602120)) ^ 0x8E2A1200) & (v27 ^ 0x48602120) ^ (16 * (v27 ^ 0x48602120)) & 0x48E2A120;
  v30 = v28 ^ 0x48E2A120 ^ (v29 ^ 0x8220000) & (v28 << 8);
  *(v18 - 140) = v21 ^ ((v21 ^ 0x6BF61937) - 1443367376) ^ ((v21 ^ 0xA42ABD74) + 1714115181) ^ ((v21 ^ 0x8DD54A57) + 1339336016) ^ ((v21 ^ 0x7FF7FEF3) - 1107947028) ^ 0xA3A6E418;
  *(v18 - 136) = v22 ^ (2 * ((v30 << 16) & 0x48E20000 ^ v30 ^ ((v30 << 16) ^ 0x21200000) & (((v29 ^ 0x40C0A120) << 8) & 0x48E20000 ^ 0x8420000 ^ (((v29 ^ 0x40C0A120) << 8) ^ 0x62A10000) & (v29 ^ 0x40C0A120)))) ^ 0xE43F85D4;
  return a12(1210229024, v18 - 220, 3587733595, 3880902975, a12, 391099083, a2, a16 - 320, a4, a5, a6, a7, a8);
}

uint64_t sub_254422818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, int a19)
{
  v25 = &a19 + 6 * v21;
  v25[2] = v23;
  v25[3] = v22;
  *(v25 + 2) = a14;
  v25[6] = a17;
  a19 = v20 + 1;
  return (*(v24 + 8 * ((2882 * (a5 + v19 + a9 - 300 - 544 < (((a9 + 943424692) | 0x40046005) ^ 0xF83FE801))) ^ (a9 + 80))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_2544228A0()
{
  v3 = LODWORD(STACK[0x500]) - 958671119;
  v4 = ((v0 - 439203882) < 0xFD403FF0) ^ (v3 < ((v1 - 1159) ^ 0xFD403E03 ^ ((v1 - 1178) | 0x184)));
  v5 = v3 < v0 - 439203882;
  if (v4)
  {
    v5 = (v0 - 439203882) < 0xFD403FF0;
  }

  return (*(v2 + 8 * ((44 * v5) ^ v1)))();
}

uint64_t sub_254422DD0@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v1 - 16);
  v6 = (v3 + v1 - 16);
  v7.i64[0] = 0x4040404040404040;
  v7.i64[1] = 0x4040404040404040;
  v8.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v8.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v9 = vaddq_s8(vsubq_s8(*v6, vandq_s8(vaddq_s8(*v6, *v6), v7)), v8);
  v5[-1] = vaddq_s8(vsubq_s8(v6[-1], vandq_s8(vaddq_s8(v6[-1], v6[-1]), v7)), v8);
  *v5 = v9;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 + 18033378) & 0xFEECCDFA) + 20)) ^ (v2 - 907))))();
}

uint64_t sub_254422E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v23 = 1037613739 * ((1425419079 - ((v22 - 120) | 0x54F62B47) + ((v22 - 120) | 0xAB09D4B8)) ^ 0x7A0BF9C7);
  *(v22 - 112) = &a16;
  *(v22 - 104) = v23 + v19 + 113;
  *(v22 - 120) = ((v16 ^ 0xBFFFADBE) + 1306426080 + ((v16 << ((v19 - 38) ^ 0xAD)) & 0x7FFF5B7C)) ^ v23;
  (*(v18 + 8 * (v19 + 2167)))(v22 - 120);
  *(v22 - 112) = &a14;
  *(v22 - 104) = a13;
  *(v22 - 120) = (v19 + 534) ^ (((2 * ((v22 - 120) & 0x20D9F928) - (v22 - 120) - 551156013) ^ 0x836B5256) * v20);
  v24 = (*(v18 + 8 * ((v19 + 474) ^ 0xBFB)))(v22 - 120);
  return (*(v18 + 8 * (((v19 + 42 + v21 + *(v22 - 116) >= v17) * ((v19 + 1919) ^ 0x84A)) ^ (v19 + 474))))(v24);
}

uint64_t sub_254422FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37, unsigned int a38, unsigned int a39, unsigned int a40, int a41, int a42, char a43, uint64_t a44, uint64_t a45, __int128 a46, __int128 a47, __int128 a48, __int128 a49)
{
  v49 = vdupq_n_s32(0x22DF8E60u);
  v50.n128_u64[0] = 0xA0A0A0A0A0A0A0A0;
  v50.n128_u64[1] = 0xA0A0A0A0A0A0A0A0;
  v51 = vdupq_n_s32(0x22DF8E40u);
  v52.n128_u64[0] = 0x4040404040404040;
  v52.n128_u64[1] = 0x4040404040404040;
  v58 = *(v55 + 8 * (v53 + a6));
  v59 = a40;
  if (a43 == 2)
  {
    v117 = vld4q_s8(&a27);
    v89 = veorq_s8(v117.val[0], v50);
    v90 = vmovl_high_u8(v89);
    v91 = vmovl_u8(*v89.i8);
    v92 = veorq_s8(v117.val[1], v50);
    _Q21 = vmovl_high_u8(v92);
    _Q20 = vmovl_u8(*v92.i8);
    v95 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v96 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v97 = veorq_s8(v117.val[2], v50);
    v98 = vmovl_u8(*v97.i8);
    v99 = vmovl_high_u8(v97);
    v117.val[0] = veorq_s8(v117.val[3], v50);
    v117.val[1] = vmovl_u8(*v117.val[0].i8);
    v117.val[2] = vmovl_u16(*v117.val[1].i8);
    v117.val[1] = vmovl_high_u16(v117.val[1]);
    v117.val[0] = vmovl_high_u8(v117.val[0]);
    v117.val[3] = vmovl_u16(*v117.val[0].i8);
    v117.val[0] = vmovl_high_u16(v117.val[0]);
    v100 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v99, 8uLL)), vshlq_n_s32(vmovl_high_u16(v90), 0x18uLL)), v117.val[0]);
    v101 = vorrq_s8(vorrq_s8(vorrq_s8(v96, vshll_n_u16(*v99.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v90.i8), 0x18uLL)), v117.val[3]);
    v102 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v98, 8uLL)), vshlq_n_s32(vmovl_high_u16(v91), 0x18uLL)), v117.val[1]);
    v103 = vorrq_s8(vorrq_s8(vorrq_s8(v95, vshll_n_u16(*v98.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v91.i8), 0x18uLL)), v117.val[2]);
    v117.val[0] = veorq_s8(vandq_s8(v100, v49), (*v117.val & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
    v117.val[3] = veorq_s8(vandq_s8(v101, v49), (*&v117.val[3] & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
    v117.val[1] = veorq_s8(vandq_s8(v102, v49), (*&v117.val[1] & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
    v117.val[2] = veorq_s8(vandq_s8(v103, v49), (*&v117.val[2] & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
    v117.val[0] = vaddq_s32(vsubq_s32(v100, vaddq_s32(v117.val[0], v117.val[0])), v51);
    v117.val[3] = vaddq_s32(vsubq_s32(v101, vaddq_s32(v117.val[3], v117.val[3])), v51);
    v117.val[1] = vaddq_s32(vsubq_s32(v102, vaddq_s32(v117.val[1], v117.val[1])), v51);
    v117.val[2] = vaddq_s32(vsubq_s32(v103, vaddq_s32(v117.val[2], v117.val[2])), v51);
    LODWORD(a46) = v117.val[2].i32[0];
    *(&a46 + 4) = vextq_s8(v117.val[2], v117.val[1], 4uLL);
    *(&a47 + 4) = vextq_s8(v117.val[1], v117.val[3], 4uLL);
    *(&a48 + 4) = vextq_s8(v117.val[3], v117.val[0], 4uLL);
    *(&a49 + 4) = vextq_s8(v117.val[0], v117.val[0], 4uLL).u64[0];
    HIDWORD(a49) = v117.val[0].i32[3];
    v104 = &a46 + 4 * v54 + 0x1FF2DB5F0;
    *(&a46 + ((a6 + a5 + 1762671529) & 0x96EFC59F ^ (v54 + 134)) + 2144038268) = __ROR4__(*(v104 - 3) ^ v57 ^ *(v104 - 8) ^ *(v104 - 14) ^ *(v104 - 16), 31) ^ 0x1E6E67BF;
    return (*(v55 + 8 * ((211 * (v56 == 2144038205)) ^ (a6 + a5 + 280))))(v59);
  }

  else if (a43 == 1)
  {
    v118 = vld4q_s8(&a27);
    v60 = veorq_s8(v118.val[0], v50);
    v61 = vmovl_high_u8(v60);
    v62 = vmovl_high_u16(v61);
    v63 = vmovl_u16(*v61.i8);
    v64 = vmovl_u8(*v60.i8);
    v65 = vmovl_high_u16(v64);
    v66 = vmovl_u16(*v64.i8);
    v67 = veorq_s8(v118.val[1], v50);
    v68 = vmovl_u8(*v67.i8);
    v69 = vmovl_high_u8(v67);
    v70 = veorq_s8(v118.val[2], v50);
    _Q25 = vmovl_u8(*v70.i8);
    _Q24 = vmovl_high_u8(v70);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v118.val[0] = veorq_s8(v118.val[3], v50);
    v118.val[1] = vmovl_u8(*v118.val[0].i8);
    v118.val[2] = vmovl_u16(*v118.val[1].i8);
    v118.val[0] = vmovl_high_u8(v118.val[0]);
    v118.val[3] = vmovl_u16(*v118.val[0].i8);
    v118.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v118.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v69, 8uLL), v62));
    v118.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v118.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v69.i8, 8uLL), v63));
    v118.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v118.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v68, 8uLL), v65));
    v118.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v118.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v68.i8, 8uLL), v66));
    v79 = vdupq_n_s32(0x22DF8E4Au);
    v80 = veorq_s8(vandq_s8(v118.val[0], v79), (*&v62 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v81 = veorq_s8(vandq_s8(v118.val[3], v79), (*&v63 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v82 = veorq_s8(vandq_s8(v118.val[1], v79), (*&v65 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v83 = veorq_s8(vandq_s8(v118.val[2], v79), (*&v66 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v84 = vaddq_s32(vsubq_s32(v118.val[0], vaddq_s32(v80, v80)), v51);
    v85 = vaddq_s32(vsubq_s32(v118.val[3], vaddq_s32(v81, v81)), v51);
    v86 = vaddq_s32(vsubq_s32(v118.val[1], vaddq_s32(v82, v82)), v51);
    v87 = vaddq_s32(vsubq_s32(v118.val[2], vaddq_s32(v83, v83)), v51);
    LODWORD(a46) = v87.i32[0];
    *(&a46 + 4) = vextq_s8(v87, v86, 4uLL);
    *(&a47 + 4) = vextq_s8(v86, v85, 4uLL);
    *(&a48 + 4) = vextq_s8(v85, v84, 4uLL);
    *(&a49 + 4) = vextq_s8(v84, v84, 4uLL).u64[0];
    HIDWORD(a49) = v84.i32[3];
    return (*(v55 + 8 * ((a6 + a5 + 343) ^ 0x3D)))(v49);
  }

  else
  {
    v105 = (((a37 ^ 0x28180F73) - 672665459) ^ ((a37 ^ 0x2BDD50DA) - 735924442) ^ ((a37 ^ 0x9D9DAB56) + 1650611370)) + (((a37 ^ 0x6E1AF19A) - 1847259546) ^ ((a37 ^ 0xEA0FD15B) + 368062117) ^ ((a37 ^ 0x1A4DD43E) - 441308222)) + 2007945432;
    v106 = (((a38 ^ 0x52BE8464) - 1388217444) ^ ((a38 ^ 0xA64802CB) + 1505230133) ^ ((a38 ^ 0x6AAE7250) - 1789817424)) + (((a38 ^ 0x20A26721) - 547514145) ^ ((a38 ^ 0x6B015AC9) - 1795250889) ^ ((a38 ^ 0xD5FBC917) + 704919273)) + 1171624813;
    v107 = (v106 ^ 0xE49D5404) & (2 * (v106 & 0xF6DC5691)) ^ v106 & 0xF6DC5691;
    v108 = ((2 * (v106 ^ 0x48955926)) ^ 0x7C921F6E) & (v106 ^ 0x48955926) ^ (2 * (v106 ^ 0x48955926)) & 0xBE490FB6;
    v109 = v108 ^ 0x82490091;
    v110 = (v108 ^ 0x3C000E04) & (4 * v107) ^ v107;
    v111 = ((4 * v109) ^ 0xF9243EDC) & v109 ^ (4 * v109) & 0xBE490FB4;
    v112 = (v111 ^ 0xB8000E90) & (16 * v110) ^ v110;
    v113 = ((16 * (v111 ^ 0x6490123)) ^ 0xE490FB70) & (v111 ^ 0x6490123) ^ (16 * (v111 ^ 0x6490123)) & 0xBE490FB0;
    v114 = v112 ^ 0xBE490FB7 ^ (v113 ^ 0xA4000B00) & (v112 << 8);
    a37 = v105 ^ ((v105 ^ 0xB632BF74) + 1932633682) ^ ((v105 ^ 0x9A60F6B4) + 1600384914) ^ ((v105 ^ 0x697918C1) - 1401290267) ^ ((v105 ^ 0x7FD7B7DB) - 1160466689) ^ 0xA4A41225;
    a38 = v106 ^ (2 * ((v114 << 16) & 0x3E490000 ^ v114 ^ ((v114 << 16) ^ 0xFB70000) & (((v113 ^ 0x1A490487) << 8) & 0xBE490000 ^ 0x36400000 ^ (((v113 ^ 0x1A490487) << 8) ^ 0x490F0000) & (v113 ^ 0x1A490487)))) ^ 0x814BD00;
    v115 = (((a39 ^ 0xB0E44700) + 1327216896) ^ ((a39 ^ 0xD56302AE) + 714931538) ^ ((a39 ^ 0xFBDFB151) + 69226159)) + (((a39 ^ 0x990FB894) + 1727022956) ^ ((a39 ^ 0x6CBBE7A6) - 1824253862) ^ ((a39 ^ 0x6BECABCD) - 1810672589)) - 1895078200;
    v116 = (((a40 ^ 0x8C07DF88) + 1945641080) ^ ((a40 ^ 0x9313372) - 154219378) ^ ((a40 ^ 0x1B6E1805) - 460199941)) + (((a40 ^ 0xED689E98) + 311910760) ^ ((a40 ^ 0x97A3EC6) - 159006406) ^ ((a40 ^ 0x7A4A54A1) - 2051691681)) + 1495108878;
    a39 = v115 ^ ((v115 ^ 0xA7D628F8) + 175156174) ^ ((v115 ^ 0x948421F3) + 958571207) ^ ((v115 ^ 0x3FF48A36) - 1840117500) ^ ((v115 ^ 0x5EFFFFF7) - 212239165) ^ 0xCC018835;
    a40 = v116 ^ ((v116 ^ 0xED48A93B) + 249361877) ^ ((v116 ^ 0xF874364A) + 467692198) ^ ((v116 ^ 0x36A9E39E) - 717373582) ^ ((v116 ^ 0x3FFEDFFF) - 596999407) ^ 0x823357EF;
    return v58(v49, v50, v51, v52);
  }
}

uint64_t sub_254422FF4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = (v11 + a1) & a2;
  v16 = (v10 - 1);
  *(STACK[0x250] + v16) = *(v14 + v16) ^ *(a8 + ((v15 - 1607) & v16)) ^ *(((v15 - 1607) & v16) + v8 + 5) ^ *(((v15 - 1607) & v16) + v9 + 1) ^ (((v15 - 71) & v16) * a7) ^ v13;
  return (*(v12 + 8 * ((((((v15 + a4) & a5) + 31) ^ (v15 + a3) & a6) * (v16 == 0)) ^ (v15 - 690))))();
}

uint64_t sub_254423088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, char *a19, int a20)
{
  v23 = 742307843 * (((&a17 | 0xDC6977A5) - &a17 + (&a17 & 0x23968858)) ^ 0xC24BFAF0);
  HIDWORD(a19) = 2059 - v23;
  a20 = v23 ^ 0x7F95312A;
  a18 = v23 + 2046340255;
  LODWORD(a19) = 48773732 - v23;
  (*(v22 + 19832))(&a17);
  a19 = &a14;
  a20 = 2066391179 * (((&a17 | 0x88E4A006) - (&a17 & 0x88E4A006)) ^ 0x27C3221E) + 1791;
  v24 = (*(v22 + 19488))(&a17);
  return (*(v22 + 8 * ((1411 * (a17 == v21)) ^ v20)))(v24);
}

uint64_t sub_254423184(_DWORD *a1)
{
  v2 = *a1 + 1388665877 * ((-2 - ((a1 | 0xAD68937B) + (~a1 | 0x52976C84))) ^ 0xDF3A0E68);
  v3 = v2 + 542396541;
  result = (*(*(&off_286663530 + (v2 ^ 0xDFABAFD5)) + (v2 ^ 0xDFABA6CF) - 1))(*(&off_286663530 + (v2 + 542396541)) - 8, sub_25445610C);
  v5 = **(&off_286663530 + (v3 + 61));
  if (result)
  {
    v5 = -585050882;
  }

  a1[1] = v5;
  return result;
}

uint64_t sub_254423260(uint64_t a1)
{
  v1 = 210068311 * ((a1 - 205837158 - 2 * (a1 & 0xF3BB2C9A)) ^ 0x616D133E);
  v2 = *a1 - v1;
  v3 = *(a1 + 28) - v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 742196933;
  v5 = v4 - 742196933 < 0;
  v7 = 742196933 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_286663530 + (v2 ^ 0x6DC)) + ((412 * ((((v2 ^ 0xFB) + 1) ^ ((v3 - 1146200555) < (4 * v7))) & 1)) ^ v2) - 1))();
}

uint64_t sub_2544233F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3 - (**(a2 + 8) == 0);
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 742196933;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v5 = *(a2 + 8) + (*(a2 + 4) - v4);
  v6 = 1082434553 * ((&v11 & 0x1EDD939E | ~(&v11 | 0x1EDD939E)) ^ 0x7A659AEB);
  v11 = *(a1 + 96) + 528;
  v13 = v5;
  v14 = v6 ^ 0x522;
  v15 = v4 - v6 + 1059115508;
  (*(a3 + 19560))(&v11);
  v9 = v12;
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v4);
  return (-1794373871 * v9 - 1486398106);
}

uint64_t sub_254423544@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - ((*(v1 + v5) << (v2 + 47)) & 0x40) - 96;
  return (*(v4 + 8 * (((2 * (v5 == 0)) | (8 * (v5 == 0))) ^ v2)))();
}

uint64_t sub_25442358C()
{
  v3 = 7 * (v0 ^ 0x315);
  v8 = v5;
  v7 = v0 - 1388665877 * (((&v7 | 0xE4CA02C2) - &v7 + (&v7 & 0x1B35FD38)) ^ 0x6967602E) + 476;
  (*(v1 + 8 * (v0 + 1559)))(&v7);
  v7 = v3 - 1388665877 * (((&v7 | 0xD565B874) - (&v7 & 0xD565B874)) ^ 0x58C8DA98) + 665;
  v8 = v6;
  (*(v1 + 8 * (v3 + 1748)))(&v7);
  return v2 ^ 0x22DF8E40u;
}

uint64_t sub_254423804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, _DWORD *a16)
{
  v20 = (*a16 ^ 0x41020B41) * *(*(a11 + 32) + 16);
  v21 = 50899313 * ((~((v18 - 128) | 0xB705F486) + ((v18 - 128) & 0xB705F486)) ^ 0x5CD596E2);
  *(v18 - 128) = v16 - v21 + 481;
  *(v18 - 124) = v21 ^ 0x2C3D06C5;
  *(v18 - 104) = &a15;
  *(v18 - 112) = a12;
  *(v18 - 120) = (v20 ^ 0x5F7FFEFF) - v21 + ((2 * v20) & 0xBEFFFDFE) - 1415989251;
  v22 = (*(v17 + 8 * (v16 ^ 0xB5B)))(v18 - 128);
  return (*(v17 + 8 * ((2626 * (a3 == 1)) ^ v16)))(v22);
}

uint64_t sub_254423940()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = *(&off_286663530 + ((-35 * ((qword_27F5F9C50 - dword_27F5F9C20) ^ 0xD2)) ^ byte_2544922D0[byte_25448EA30[(-35 * ((qword_27F5F9C50 - dword_27F5F9C20) ^ 0xD2))] ^ 0xA4]) - 55);
  v1 = off_286663B10 - 4;
  v2 = off_286663980 - 8;
  v3 = *(&off_286663530 + (*(off_286663980 + (*(off_286663B10 + (-35 * ((qword_27F5F9C50 - *v0) ^ 0xD2)) - 4) ^ 0x63u) - 8) ^ (-35 * ((qword_27F5F9C50 - *v0) ^ 0xD2))) - 91);
  v4 = (*(v3 - 4) + *v0) ^ &v8;
  v5 = 1865875933 * v4 - 0x1E71746347E125D2;
  v6 = 1865875933 * (v4 ^ 0x1E71746347E125D2);
  *v0 = v5;
  *(v3 - 4) = v6;
  LOBYTE(v6) = -35 * ((v6 + *v0) ^ 0xD2);
  v10 = *(&off_286663530 + (*(off_2866636F0 + (*(off_286663A98 + v6 - 12) ^ 0xF6u) - 8) ^ v6) - 197) - 4;
  v9 = (2066391179 * (((&v9 | 0xF0D01372) - &v9 + (&v9 & 0xF2FEC88)) ^ 0x5FF7916A)) ^ 0x28F;
  LOBYTE(v0) = -35 * ((*(v3 - 4) + *v0) ^ 0xD2);
  return (*(*(&off_286663530 + ((-35 * ((qword_27F5F9C50 + dword_27F5F9C20) ^ 0xD2)) ^ byte_25448EB30[byte_254489B80[(-35 * ((qword_27F5F9C50 + dword_27F5F9C20) ^ 0xD2))] ^ 0xAE]) + 22) + (v0 ^ v2[v1[v0] ^ 0x63]) + 2286))(&v9);
}

void sub_254423B80(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = 1388665877 * ((2 * ((a1 ^ 0x659717BC) & 0x71C3AA5B) - (a1 ^ 0x659717BC) - 1908648540) ^ 0x660620F4);
  v2 = *(a1 + 40) + v1;
  v3 = *(a1 + 24) + v1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = 1388665877 * ((485657117 - (&v9 | 0x1CF28A1D) + (&v9 | 0xE30D75E2)) ^ 0x6EA0170E);
  v9 = *(a1 + 16) ^ v1 ^ v7 ^ 0x455CD7B5;
  v16 = v6;
  v12 = v3 - v7 + 142473626;
  v15 = v7 ^ (v2 - 1776823619);
  v13 = v4;
  v10 = v5;
  v11 = v6;
  v8 = *(&off_286663530 + v2 - 267) - 8;
  (*&v8[8 * v2 + 16704])(&v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_254423D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  *(v37 - 144) = v34 + 1082434553 * (((v37 - 144) & 0x4D34A3EA | ~((v37 - 144) | 0x4D34A3EA)) ^ 0x298CAA9F) + 648;
  *(v37 - 136) = v36;
  *(v37 - 128) = v35;
  (*(v33 + 8 * (v34 ^ 0xA81)))(v37 - 144);
  v38 = a27;
  *(v37 - 112) = &a29;
  *(v37 - 104) = v36;
  *(v37 - 136) = &a29;
  *(v37 - 128) = &a26;
  *(v37 - 120) = (v34 + 683) ^ (1785193651 * ((((v37 - 144) | 0xE229FB4B) - ((v37 - 144) & 0xE229FB4B)) ^ 0xF1F5176B));
  *(v37 - 144) = v38;
  (*(v33 + 8 * (v34 + 1604)))(v37 - 144);
  *(v37 - 120) = (v34 + 683) ^ (1785193651 * (((((v37 - 144) | 0x7000A4E8) ^ 0xFFFFFFFE) - (~(v37 - 144) | 0x8FFF5B17)) ^ 0x9C23B737));
  *(v37 - 144) = &a29;
  *(v37 - 136) = a16;
  *(v37 - 128) = &a26;
  *(v37 - 112) = &a29;
  *(v37 - 104) = v36;
  (*(v33 + 8 * (v34 ^ 0xA4C)))(v37 - 144);
  *(v37 - 136) = a21;
  *(v37 - 128) = &a29;
  *(v37 - 144) = (v34 - 875954895) ^ (1082434553 * (((v37 - 144) & 0x4432877C | ~((v37 - 144) | 0x4432877C)) ^ 0x208A8E09));
  (*(v33 + 8 * (v34 ^ 0xA8F)))(v37 - 144);
  *(v37 - 144) = v34 + 1082434553 * ((-866441543 - ((v37 - 144) | 0xCC5B26B9) + ((v37 - 144) | 0x33A4D946)) ^ 0xA8E32FCC) + 648;
  *(v37 - 136) = &a33;
  *(v37 - 128) = &a29;
  (*(v33 + 8 * (v34 ^ 0xA81)))(v37 - 144);
  *(v37 - 136) = (v34 - 338) ^ (1785193651 * ((2 * ((v37 - 144) & 0x21452730) - (v37 - 144) + 1589303499) ^ 0x4D6634EB));
  *(v37 - 128) = &a33;
  *(v37 - 144) = &a29;
  v39 = (*(v33 + 8 * (v34 ^ 0xA59)))(v37 - 144);
  return (*(v33 + 8 * (((((a20 == 0) ^ (73 * (v34 ^ 0x20))) & 1) * (((v34 ^ 0x320) + 504) ^ 0x1F6)) ^ (v34 - 214))))(v39);
}

void sub_254423ECC(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) - 1948514451;
  v3 = *(a1 + 12) - v1 + 1699816371;
  v4 = v2 < 0xC240706B;
  v5 = v2 > v3;
  if (v3 < 0xC240706B != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_254424018()
{
  v4 = 143681137 * ((((2 * (v3 - 144)) | 0x48DFA646) - (v3 - 144) - 611308323) ^ 0x453758F3);
  *(v3 - 128) = v4 + v0 - 735;
  *(v3 - 136) = v9;
  *(v3 - 144) = v4 ^ 0x535831DC;
  (*(v2 + 8 * (v0 ^ 0xE0D)))(v3 - 144);
  *(v3 - 120) = (v0 - 350) ^ (1785193651 * ((-1516203329 - ((v3 - 144) | 0xA5A092BF) + ((v3 - 144) | 0x5A5F6D40)) ^ 0x49838160));
  *(v3 - 112) = v8;
  *(v3 - 104) = v1;
  *(v3 - 136) = v9;
  *(v3 - 128) = v7;
  *(v3 - 144) = v8;
  (*(v2 + 8 * (v0 + 571)))(v3 - 144);
  *(v3 - 136) = (v0 - 1371) ^ (1785193651 * ((2 * ((v3 - 144) & 0x764C2648) - (v3 - 144) + 162781616) ^ 0x1A6F3590));
  *(v3 - 144) = v8;
  *(v3 - 128) = v6;
  return (*(v2 + 8 * (v0 + 590)))(v3 - 144);
}

uint64_t sub_254424274@<X0>(int a1@<W8>, double a2@<D0>)
{
  *(v4 - 1) = a2;
  *v4 = a2;
  return (*(v5 + 8 * (((v3 != 0) * a1) ^ v2)))();
}

uint64_t sub_25442460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40)
{
  *v44 = (((((~(v43 + 1340106382) + v45) ^ (v42 - (v43 + 1340106382))) - 1) & ((v43 + 1340106382) - v45) & 0x8000000000000000) == 0) + v44[623];
  v47 = 1361651671 * ((0xBFD7EE7672F55D51 - ((v46 - 144) | 0xBFD7EE7672F55D51) + a37) ^ 0x938562B05E285222);
  *(v46 - 144) = 3 - v47;
  *(v46 - 136) = a40 + v47;
  *(v46 - 104) = 1212455568 - v47;
  *(v46 - 112) = (v40 + 1) - v47;
  *(v46 - 120) = a38 - v47;
  *(v46 - 128) = 1 - v47;
  *(v46 - 124) = (a40 ^ 0xE) - v47;
  v48 = (*(v41 + 18544))(v46 - 144);
  return (*(v41 + 8 * *(v46 - 132)))(v48);
}

uint64_t sub_2544246B4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = ((v3 ^ 0x832) + 999130972) & 0xC472770E;
  v7 = (*(v5 + 8 * (v3 ^ 0x9FD)))(**(a1 + 8 * ((v3 ^ 0x832) - 2104)), *v4, *(v4 + 8) + (v6 ^ (v2 + 1276)));
  *(v4 + 31) = (&a2 ^ 0xBA) * (&a2 + 17);
  *(v4 - 1286 + ((v6 + 2048865947) & 0x85E0C77C)) = (&a2 ^ 0xBB) * (&a2 + 18);
  return (*(v5 + 8 * v6))(v7);
}

uint64_t sub_254424774@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, unint64_t *))
{
  v15 = 2066391179 * ((((v14 - 160) ^ 0x6246E4AA | 0x430A1DD4) - ((v14 - 160) ^ 0x6246E4AA) + (((v14 - 160) ^ 0x6246E4AA) & 0xBCF5E22A)) ^ 0x8E6B7B66);
  *(v14 - 160) = a2 - v15 + 225;
  *(v14 - 156) = 1440329777 - v15;
  *(v14 - 152) = a1;
  v16 = (*(v13 + 8 * (a2 ^ 0x98C)))(v14 - 160);
  return a13(v16, &STACK[0x238]);
}

uint64_t sub_254424810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v74 + 176) = ((v72 + 533100730) & 0xE03986DE ^ 0xFFFFFFFFFFFFFF06) + a72;
  LODWORD(STACK[0x468]) = a6;
  return (*(v73 + 8 * (((*(STACK[0x260] + 360) > 1u) * (((v72 - 699) | 0x254) ^ 0x62D)) ^ v72)))();
}

uint64_t sub_2544248C4()
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF9EDLL ^ (v4 + 769)) + v2;
  *(v0 - 7 + v6) = veor_s8(*(v1 - 7 + v6), 0xA0A0A0A0A0A0A0A0);
  return (*(v5 + 8 * ((111 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_25442491C(uint64_t a1, int a2)
{
  v10 = ((3 * (a2 ^ 0x2B3u)) ^ 0x699) & (v6 - v7 - 1);
  v12.val[0].i64[0] = v10;
  v12.val[0].i64[1] = (v6 - v7 + 14) & 0xF;
  v12.val[1].i64[0] = (v6 - v7 + 13) & 0xF;
  v12.val[1].i64[1] = (v6 - v7 + 12) & 0xF;
  v12.val[2].i64[0] = (v6 - v7 + 11) & 0xF;
  v12.val[2].i64[1] = (v6 - v7 + 10) & 0xF;
  v12.val[3].i64[0] = (v6 - v7 + 9) & 0xF;
  v12.val[3].i64[1] = (v6 - v7) & 0xF ^ 8;
  *(v8 + -8 - v7 + v6) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v2 + -8 - v7 + v6), *(v3 + v10 - 7)), veor_s8(*(v10 + v5 - 2), *(v10 + v4 - 5)))), 0xA0A0A0A0A0A0A0A0), vmul_s8(*&vqtbl4q_s8(v12, xmmword_254495220), 0x5959595959595959)));
  return (*(v9 + 8 * ((11 * (8 - (v6 & 0x18) == -v7)) ^ a2)))(xmmword_254495220);
}

uint64_t sub_254424A78(uint64_t result)
{
  v9 = *(v6 + 8);
  v10 = (*(v9 + 4 * (v8 - 1)) ^ v2) >> v3;
  *(v9 + 4 * v5) = v10 + v2 - (v4 & (2 * v10));
  if (*(*(v6 + 8) + 4 * v5) == v2)
  {
    v11 = -1350750497;
  }

  else
  {
    v11 = -1350750496;
  }

  v12 = v11 + v1;
  if (*(v6 + 4) + ((result + 1203860745) & 0xB83E87F4 ^ (v7 + 419)) >= 0x7FFFFFFF)
  {
    v13 = 1484393866 - v12;
  }

  else
  {
    v13 = v12;
  }

  *(v6 + 4) = v13;
  return result;
}

void sub_254424BF8(_DWORD *a1)
{
  v1 = a1[3] + 2066391179 * ((-2078713933 - (a1 | 0x841957B3) + (a1 | 0x7BE6A84C)) ^ 0xD4C12A54) + 68;
  v2 = v1 + *(*a1 + 4);
  v4 = v2 - 742197883;
  v3 = (v2 - 742197883) < 0;
  v5 = 742197883 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_254424D30@<X0>(int a1@<W8>)
{
  v6 = (v2 - 1731) | 0x8C2;
  v7 = *(v3 + 8);
  v8 = *(v7 + 4 * v5 - 4) ^ 0x41020B41;
  *(v7 + 4 * (v5 + a1)) = (v6 - 130214150) & 0x7C2E2FF ^ 0x43592EC7 ^ ((v8 >> (32 - (v1 ^ 5))) & 0xFDA4D8A5 | ~(v8 >> (32 - (v1 ^ 5))) & 0x25B275A);
  return (*(v4 + 8 * (v6 | (16 * (v5 > 1)))))(1129917467);
}

uint64_t sub_254424DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39)
{
  v44 = *(&a27 + v39 + 72);
  v45 = v44 >> (a6 + ((v41 - 106) & 0xFE) - 45);
  v46 = ((2 * v39) & 0xFB7B76C8) + (v39 ^ 0x7DBDBB65) + v40;
  *(a1 + v46) = (v45 ^ 0x9E) - ((2 * v45) & 0x40) - 96;
  *(a1 + v46 + 1) = (BYTE2(v44) ^ 0x58) - ((v44 >> 15) & 0x40) - 96;
  *(a1 + v46 + 2) = (BYTE1(v44) ^ 0xF4) - 2 * ((BYTE1(v44) ^ 0xF4) & 0x28 ^ BYTE1(v44) & 8) - 96;
  *(a1 + v46 + 3) = v44 ^ 0x5F;
  return (*(v43 + 8 * (((v39 + 4 < a39) * v42) ^ v41)))();
}

uint64_t sub_254424FD0(uint64_t a1)
{
  v5 = *(a1 + 8) + v1;
  v6 = *(v2 + 352);
  if (v6 > 0xCC729C8E != (v5 + 816130317) < 0x338D6371)
  {
    v7 = v6 > 0xCC729C8E;
  }

  else
  {
    v7 = v4 + 864903671 + v6 > v5 + 816130317;
  }

  return (*(v3 + 8 * ((v7 * (v4 - 219)) ^ v4)))();
}

uint64_t sub_2544250A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = LODWORD(STACK[0x2CC]);
  v76 = STACK[0x4D0];
  v74[9] = *(v72 + 8 * (v73 - 1597));
  v74[22] = a72 + 112;
  v74[28] = v76;
  if (v76)
  {
    v77 = a63 == 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = !v77;
  return (*(v72 + 8 * ((v78 * ((v73 - 397) ^ 0x432)) ^ (v73 - 1250))))(a63, v75);
}

uint64_t sub_254425104@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 ^ 0x9A4;
  v5 = 143681137 * ((2 * ((v3 - 168) & 0x55E6B838B2072BB8) - (v3 - 168) - 0x55E6B838B2072BB9) ^ 0x1B9075732CA05F97);
  *(v3 - 136) = (v1 ^ 0x9A4) - 425374614 - 143681137 * ((2 * ((v3 - 168) & 0xB2072BB8) - (v3 - 168) + 1308152903) ^ 0x2CA05F97);
  v6 = v3 - 184;
  *(v6 + 56) = v5 + 960564969;
  v7 = 143681137 * ((2 * ((v3 - 168) & 0xB2072BB8) - (v3 - 168) + 1308152903) ^ 0x2CA05F97) + (v1 ^ 0x9A4) - 425374614;
  *(v3 - 144) = v7 + 20;
  *(v3 - 168) = 143681137 * ((2 * ((v3 - 168) & 0xB2072BB8) - (v3 - 168) + 1308152903) ^ 0x2CA05F97);
  *(v3 - 164) = v7 + 13;
  *(v3 - 160) = (v4 + 1699922545) ^ (143681137 * ((2 * ((v3 - 168) & 0xB2072BB8) - (v3 - 168) + 1308152903) ^ 0x2CA05F97));
  *(v6 + 32) = a1 - v5;
  v8 = (*(v2 + 8 * (v4 + 2419)))(v3 - 168);
  return (*(v2 + 8 * *(v3 - 140)))(v8);
}

uint64_t sub_2544251E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = 210068311 * ((((v18 - 144) | 0xF48E529) + (~(v18 - 144) | 0xF0B71AD6)) ^ 0x9D9EDA8C);
  *(v18 - 128) = a15;
  *(v18 - 136) = v16 - v19 - 1522;
  *(v18 - 144) = v19 - 23807179 + 1053645359 * (v17 - 3);
  v20 = (*(v15 + 8 * (v16 ^ 0xEFB)))(v18 - 144);
  return (*(v15 + 8 * ((4005 * ((((v16 - 57) ^ (v16 - 12)) ^ (*(v18 - 140) == -343619839)) & 1)) ^ v16)))(v20);
}

uint64_t sub_2544252B4(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_2544252DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a15 = v16 + 2066391179 * (((~&a13 & 0x8B976282) - (~&a13 | 0x8B976283)) ^ 0x24B0E09B) - 112;
  a14 = &a11;
  v17 = (*(v15 + 8 * (v16 ^ 0xEEB)))(&a13);
  return (*(v15 + 8 * (((a13 == ((v16 + 138548121) | 0x18C0051) + 420573927) * ((1019 * (v16 ^ 0x76D)) ^ 0x709)) ^ v16)))(v17);
}

void sub_254425398(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *a1 + 1388665877 * ((-2 - ((a1 | 0xF3824F06) + (~a1 | 0xC7DB0F9))) ^ 0x81D0D215);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v9[0] = 0x2C3D06C500000082;
  v9[1] = &v11;
  v10[0] = 0x2C3D06C500000082;
  v10[1] = &v12;
  v6 = v3[1];
  v17 = v9;
  v18 = v5;
  v13 = v6;
  v14 = v2;
  v16 = (1785193651 * (&v13 ^ 0x13DCEC20)) ^ (v1 + 1322);
  v15 = v3;
  v7 = *(&off_286663530 + v1 - 97) - 8;
  (*&v7[8 * v1 + 17944])(&v13);
  v8 = *v3;
  LODWORD(v14) = (1785193651 * (((&v13 ^ 0xC75E869A) + 2017898578 - 2 * ((&v13 ^ 0xC75E869A) & 0x7846B052)) ^ 0xACC4DAE8)) ^ (v1 + 301);
  v15 = v10;
  v13 = v8;
  (*&v7[8 * (v1 ^ 0x9D6)])(&v13);
  HIDWORD(v13) = v1 + 1388665877 * ((&v13 & 0xD226244C | ~(&v13 | 0xD226244C)) ^ 0xA074B95F) + 1132;
  v14 = v4;
  (*&v7[8 * (v1 ^ 0x9D8)])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2544255EC(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 != 0) * v2) ^ v1)))();
}

uint64_t sub_254425614()
{
  v5 = *(v3 + 312) + 128;
  STACK[0x490] = v5;
  v6 = 1785193651 * ((~((v4 - 200) | 0xEA2F7FCF) + ((v4 - 200) & 0xEA2F7FCF)) ^ 0x60C6C10);
  *(v4 - 192) = v5;
  *(v4 - 196) = v6 + v1 - 562358948;
  *(v4 - 184) = v6 ^ 0x93107673;
  v7 = v0;
  v8 = (*(v2 + 8 * (v1 ^ 0x914)))(v4 - 200);
  STACK[0x408] = *(v2 + 8 * v1);
  STACK[0x2A0] = v7;
  STACK[0x530] = v5;
  LODWORD(STACK[0x53C]) = 1899262057;
  STACK[0x348] = v7;
  return (*(v2 + 8 * ((2490 * ((*(v5 + 68) & 0x3Fu) - 47 < ((v1 + 360) ^ 0x144u) - 204)) ^ (v1 + 360))))(v8);
}

void sub_254425734(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (843532609 * ((a1 - 2 * (a1 & 0x7582E3B9) + 1971512249) ^ 0x29CFB73C));
  __asm { BRAA            X10, X17 }
}

void sub_2544257FC(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((2 * (a1 & 0xDA3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2544258D0@<X0>(int a1@<W5>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v5 = (a1 + 609) | 0x69u;
  v6 = ((((v5 - 1264) ^ 0x408) << 31) & (*(a2 + 4 * ((v5 + 4294964998) & a3)) ^ v3)) != 0;
  return (*(v4 + 8 * ((v6 | (2 * v6)) ^ v5)))();
}

void sub_254425930()
{
  v3 = 1785193651 * ((v2 - 200) ^ 0x13DCEC20);
  *(v2 - 192) = STACK[0x490];
  *(v2 - 196) = v0 - 562358948 + v3 + 13;
  *(v2 - 184) = v3 ^ 0x93107673;
  (*(v1 + 8 * (v0 + 2337)))(v2 - 200);
  STACK[0x408] = *(v1 + 8 * v0);
  JUMPOUT(0x2544259B4);
}

uint64_t sub_254425A0C()
{
  v4 = STACK[0x220];
  (*(v0 + 8 * (v1 + 1280)))(*STACK[0x220], v2, 2048);
  v5 = *(v0 + 8 * ((((*(v0 + 8 * (v1 ^ 0xDDB)))(*v4, &STACK[0x410], (LODWORD(STACK[0x330]) + v3), 1) == ((v1 - 235) ^ 0x383)) * (((v1 - 1116) | 0x644) ^ 0x54C)) ^ v1));
  return v5();
}

uint64_t sub_254425AAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unsigned __int8 *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (LODWORD(STACK[0x218]) + 2076360910) & 0x843D3FBF;
  v74 = (a71 << 24) | (a67 << 8) | (a52 << 16) | LODWORD(STACK[0x228]);
  LODWORD(STACK[0x290]) = a63 ^ 0xC88D38C3;
  LODWORD(STACK[0x270]) = a3 ^ 0x6BE29A2;
  LODWORD(STACK[0x258]) = (v73 - 1522165711) ^ a53;
  LODWORD(STACK[0x268]) = __ROR4__(__ROR4__(v74 ^ 0xC35F9D00, 22) ^ 0xA2EBB8AD, 10) ^ 0xC27E105A;
  v75 = v71 + 16;
  STACK[0x288] = a2 + 16;
  LODWORD(STACK[0x2A0]) = v73;
  LODWORD(STACK[0x298]) = v75;
  LODWORD(STACK[0x278]) = v73 + v75;
  v76 = 13 * (v73 ^ 0x47E);
  v77 = *(a22 + (*(a20 + v73 + v75) ^ 0xD3));
  v78 = a55[20];
  LODWORD(STACK[0x218]) = v76;
  v79 = *(a23 + (v78 ^ 0x3F));
  v80 = *(a22 + (a55[23] ^ 0xC3));
  LODWORD(v78) = v77 ^ 0x96 ^ (v77 >> 5) ^ (v76 + (((v77 ^ 0x96) & 0xF8) >> 3) + 56);
  v81 = (2 * v79) & 0xFFFFFFC4 ^ 0x44;
  v82 = a55[12];
  v83 = (v79 ^ 0xFFFFFFC1) - 98;
  v84 = v81 + v83;
  LODWORD(STACK[0x228]) = v81 + v83;
  v85 = v80 ^ (v80 >> 5) ^ (v80 >> 3);
  v86 = *(a23 + (a55[16] ^ 0xEELL));
  v87 = (v86 ^ 0xFFFFFF1F) & ((v78 << 8) ^ 0x9712ED64) | v86 & 0x9B;
  v88 = *(a51 + (a55[22] ^ 0xFLL));
  LOBYTE(v83) = ((((19 * v88 - 42) ^ 0xFFFFFFB5) + ((HIDWORD(a24) + 38 * v88) & 0x6A)) << (v83 & 2) << (v83 & 2 ^ 2)) ^ (19 * v88 - ((2 * (19 * v88 - 42)) & 0xBF) + 53);
  v89 = *(a21 + (a55[17] ^ 0xAALL));
  v90 = v89 ^ (v89 >> 3) ^ (v89 >> 2);
  v91 = v84;
  v92 = *(a51 + (a55[10] ^ 0xDLL));
  v93 = (HIDWORD(a24) + 76 * v92) ^ (a42 + 19 * v92);
  v94 = ((*(a23 + (v82 ^ 0x87)) << 12) ^ 0xBF8FDDE71A36FAF2) & ~(v93 >> 4) | (v93 >> 4) & 0xFD;
  v95 = (v94 ^ 0x502210E4013004) & ((v93 << 28) ^ 0x27507A53DC2DF2B6) | v94 & 0x988F85A402120849;
  v96 = (v95 << 20) ^ 0x24E00000 | (v95 >> 12) ^ 0xFF71BF9B;
  LODWORD(v94) = *(a22 + (a55[19] ^ 8));
  v97 = v94 ^ (v94 >> 5) ^ (v94 >> 3);
  LODWORD(v94) = *(a21 + ((a55[13] - ((2 * a55[13]) & 0x1A4u) + 210) ^ 0x71));
  v98 = *(a21 + (a55[21] ^ 0x9FLL));
  v99 = *(a22 + (a55[11] ^ 0x3FLL));
  v100 = *(a51 + (a55[18] ^ 0x9DLL));
  v101 = v96 ^ ((v99 ^ (v99 >> 5) ^ (v99 >> 3)) << 8);
  v102 = *(a23 + (a55[24] ^ 0x4BLL));
  v103 = ((a42 + 19 * v100) ^ (BYTE4(a24) + 76 * v100));
  v104 = *(a51 + (a55[14] ^ 0xF7));
  v105 = (((v98 ^ (v98 >> 3) ^ (v98 >> 2) ^ 0xF6) << 24) ^ 0x86480041) & ((((v83 << 16) ^ 0x63A0F08D) & ((v85 << 8) ^ 0x6FFFB1BD) & 0xFFFFF0FF | ((v85 & 0xF) << 8)) ^ 0x9CF9D0DC);
  v106 = ((v105 | ((v83 << 16) ^ 0x63A0F08D) & ((v85 << 8) ^ 0x6FFFB1BD) & 0xB7F000 | ((v85 & 0xF) << 8)) ^ 0x928251EC) & (v102 ^ 0xFFFFFF84) ^ v102 & 0x52;
  v214 = a55 + 16;
  LODWORD(v78) = ((a42 + 19 * v104) ^ (BYTE4(a24) + 76 * v104));
  v107 = *(a21 + (*(v214 - 7) ^ 0xD6));
  LODWORD(v78) = (((((v94 ^ (v94 >> 3) ^ (v94 >> 2)) << 24) ^ 0xEE808432) & ~(v78 << 16) & 0xFF80FFFF | ((v78 & 0x7F) << 16)) ^ 0xD27681DA) & (v87 ^ 0x68ED6D94);
  v108 = v78 ^ v87 & 0x8702FA17;
  LODWORD(v94) = ((v107 >> 2) | (v107 << 6)) ^ 0xFFFFFFD6 ^ (((16 * (v107 ^ (v107 >> 1))) & 0xFC0 ^ 0x63) & (((v107 ^ (v107 >> 1)) >> 4) ^ 0xFFFFFFE9) | ((v107 ^ (v107 >> 1)) >> 4) & 0xC);
  LODWORD(a53) = (((v94 & 0xC0) << 18) | (v94 << 26)) ^ v101;
  v109 = v83 ^ 0xB;
  v110 = *(&off_286663530 + (STACK[0x2A0] & 0x6969402C)) - 12;
  v111 = *(&off_286663530 + (LODWORD(STACK[0x2A0]) ^ 0x416));
  v112 = *(v111 + 4 * v109) - 1409877230;
  v113 = *(&off_286663530 + LODWORD(STACK[0x2A0]) - 1075) - 12;
  v114 = *(&off_286663530 + (STACK[0x2A0] & 0xC073B0E3));
  v115 = HIBYTE(v105);
  v116 = *(v114 + 4 * (v97 ^ 0x29u)) ^ v112 ^ (*&v113[4 * (v86 ^ 0xA7)] - (v108 ^ 0x21C1768A)) ^ (*&v110[4 * (BYTE3(a53) ^ 0xE9)] - (BYTE3(a53) ^ 0x5F6A3ABD));
  v117 = *(v111 + 4 * (BYTE2(v96) ^ 0x7Cu)) - 1409877230;
  v118 = *(v114 + 4 * (v85 ^ 0x37u));
  LODWORD(v94) = *&v110[4 * (BYTE3(v108) ^ 0x1B)] - (BYTE3(v108) ^ 0x5F6A3A4F);
  v119 = *&v113[4 * (LODWORD(STACK[0x228]) ^ 0xAE)];
  LODWORD(STACK[0x228]) = v91;
  v120 = v118 ^ v117 ^ (v119 - (v91 ^ 0x21C17607)) ^ v94;
  LODWORD(a63) = v106;
  v121 = *(v114 + 4 * (BYTE1(v101) ^ 0x2Du)) ^ (*&v110[4 * (v90 ^ 0x40)] - (v90 ^ 0x5F6A3A14)) ^ (*&v113[4 * (v102 ^ 0x22)] - (v106 ^ 0x21C1760F)) ^ (*(v111 + 4 * ((BYTE2(v108) ^ 0xD9) + ((v78 >> 15) & 0xF8 ^ 0xFFFFFF4F) + 125)) - 1409877230);
  LODWORD(a52) = v103;
  LODWORD(v78) = (*(v111 + 4 * (v103 ^ 0xE3u)) - 1409877230) ^ *(v114 + 4 * (BYTE1(v108) ^ 0x8Fu)) ^ ((v115 ^ 0xA095C505) + *&v110[4 * (v115 ^ 0xAE)] + 1) ^ (*&v113[4 * ((v95 >> 12) ^ 0x2DLL)] - ((v95 >> 12) ^ 0x21C17684));
  v122 = *(v111 + 4 * (BYTE2(v78) ^ 0xC5u));
  LODWORD(v86) = *(v114 + 4 * (BYTE1(v121) ^ 0xF9u)) ^ (*&v110[4 * (HIBYTE(v116) ^ 0x9E)] - (HIBYTE(v116) ^ 0x5F6A3ACA)) ^ (*&v113[4 * (v120 ^ 0x68)] - (v120 ^ 0x21C176C1)) ^ ((__ROR4__(__ROR4__(v122, 7) ^ 0xDA1854B8, 25) ^ 0xA7DCA77F) + ((2 * v122) & 0x57EDF624));
  LODWORD(v102) = (*(v111 + 4 * (BYTE2(v116) ^ 0x96u)) - 1409877230) ^ (*&v110[4 * (HIBYTE(v120) ^ 0xA8)] - (HIBYTE(v120) ^ 0x5F6A3AFC)) ^ *(v114 + 4 * (BYTE1(v78) ^ 0x6Eu)) ^ (*&v113[4 * (v121 ^ 0xFA)] - (v121 ^ 0x21C17653));
  v123 = (*(v111 + 4 * ((((BYTE2(v120) ^ 5) - (BYTE2(v120) ^ 0x79)) ^ 0xFFFFFFF8) + (BYTE2(v120) ^ 5))) - 1409877230) ^ (*&v110[4 * (HIBYTE(v121) ^ 0xA6)] - (HIBYTE(v121) ^ 0x5F6A3AF2)) ^ *(v114 + 4 * (BYTE1(v116) ^ 0xE0u)) ^ (*&v113[4 * (v78 ^ 0x40)] - (v78 ^ 0x21C176E9));
  v124 = (*(v111 + 4 * (BYTE2(v121) ^ 0xA3u)) - 1409877230) ^ (*&v110[4 * (BYTE3(v78) ^ 0x74)] - (BYTE3(v78) ^ 0x5F6A3A20)) ^ *(v114 + 4 * (BYTE1(v120) ^ 0x9Au)) ^ (*&v113[4 * (v116 ^ 0x9A)] - (v116 ^ 0x21C17633));
  v125 = *(v114 + 4 * (BYTE1(v123) ^ 0xBBu));
  LODWORD(v95) = (*(v111 + 4 * (BYTE2(v124) ^ 0x2Cu)) - 1409877230) ^ v125 & 0xFFFFFFBF ^ (*&v110[4 * (BYTE3(v86) ^ 0x48)] - (BYTE3(v86) ^ 0x5F6A3A1C)) ^ (v125 & 0x40 | 0x26D15A95) ^ (*&v113[4 * (v102 ^ 0xE0)] - (v102 ^ 0x21C17649));
  v126 = (*(v111 + 4 * (BYTE2(v86) ^ 0xE2u)) - 1409877230) ^ (*&v110[4 * (BYTE3(v102) ^ 0x7D)] - (BYTE3(v102) ^ 0x5F6A3A29)) ^ *(v114 + 4 * (BYTE1(v124) ^ 0x4Fu)) ^ (*&v113[4 * (v123 ^ 0x80)] - (v123 ^ 0x21C17629));
  v127 = (*(v111 + 4 * ((BYTE2(v102) ^ 0xD9) + ((v102 >> 15) & 0xF8 ^ 0xFFFFFF4F) + 125)) - 1409877230) ^ (*&v110[4 * (HIBYTE(v123) ^ 0x45)] - (HIBYTE(v123) ^ 0x5F6A3A11)) ^ *(v114 + 4 * (BYTE1(v86) ^ 0x46u)) ^ (*&v113[4 * (v124 ^ 0xA8)] - (v124 ^ 0x21C17601));
  LODWORD(v94) = (*(v111 + 4 * (BYTE2(v123) ^ 0x90u)) - 1409877230) ^ (*&v110[4 * (HIBYTE(v124) ^ 0x99)] - (HIBYTE(v124) ^ 0x5F6A3ACD)) ^ *(v114 + 4 * (BYTE1(v102) ^ 0xA2u)) ^ (*&v113[4 * (v86 ^ 0xA5)] - (v86 ^ 0x21C1760C));
  v128 = (*(v111 + 4 * (BYTE2(v94) ^ 0xF6u)) - 1409877230) ^ *(v114 + 4 * (BYTE1(v127) ^ 0xC1u)) ^ (*&v110[4 * (BYTE3(v95) ^ 0xC3)] - (BYTE3(v95) ^ 0x5F6A3A97)) ^ (*&v113[4 * (v126 ^ 0x57)] - (v126 ^ 0x21C176FE));
  v129 = *(v114 + 4 * (BYTE1(v94) ^ 0x2Cu));
  v130 = HIBYTE(v127) ^ 0x5F6A3A27;
  LODWORD(v132) = __ROR4__((*&v110[4 * (HIBYTE(v126) ^ 0x7E)] - (HIBYTE(v126) ^ 0x5F6A3A2A)) ^ (*&v113[4 * (v127 ^ 0x72)] - (v127 ^ 0x21C176DB)) ^ (v129 - ((2 * v129) & 0x45E8EFB0) - 1561036840) ^ (*(v111 + 4 * ((((BYTE2(v95) ^ 0x44) - (BYTE2(v95) ^ 0x38)) ^ 0xFFFFFFF8) + (BYTE2(v95) ^ 0x44))) - 1409877230) ^ 0x360154D3, 24) ^ 0xF7A7AFD3;
  HIDWORD(v132) = v132;
  v131 = v132 >> 8;
  v133 = (*(v111 + 4 * (BYTE2(v126) ^ 0xDu)) - 1409877230) ^ *(v114 + 4 * (BYTE1(v95) ^ 0xB6u)) ^ (*&v110[4 * (HIBYTE(v127) ^ 0x73)] - v130) ^ (*&v113[4 * (v94 ^ 0x3A)] - (v94 ^ 0x21C17693));
  LODWORD(v78) = (*(v111 + 4 * (BYTE2(v127) ^ 0x7Fu)) - 1409877230) ^ (*&v110[4 * (BYTE3(v94) ^ 0x97)] - (BYTE3(v94) & 0xFFFFFFFD ^ 0x1D ^ (1600797406 - (BYTE3(v94) & 2)))) ^ *(v114 + 4 * (((BYTE1(v126) ^ 0x6B) - 1853103296 + ((v126 >> 7) & 0x7E ^ 0xFFFFFFA9)) ^ 0x918BE368));
  v134 = v128 ^ 0xFBC8137;
  v135 = v78 ^ (*&v113[4 * (v95 ^ 0xA7)] - (v95 ^ 0x21C1760E));
  v136 = v135 ^ 0x25BF358A;
  v137 = (*(v111 + 4 * (((v135 ^ 0x25BF358Au) >> 16) ^ 0x7Cu)) - 1409877230) ^ (*&v110[4 * (HIBYTE(v134) ^ 0x8A)] - (HIBYTE(v134) ^ 0x5F6A3ADE)) ^ *(v114 + 4 * (BYTE1(v133) ^ 0x25u)) ^ (*&v113[4 * (BYTE1(v132) ^ 0xD3)] - (BYTE1(v132) ^ 0x21C1767A));
  v138 = ((v128 ^ 0xFBC8137) >> 16) & 0xC0;
  if (((v128 ^ 0xFBC8137) & 0x3F0000) != 0)
  {
    v138 = (v128 ^ 0xFBC8137) >> 16;
  }

  v139 = (*(v111 + 4 * (v138 ^ 0x7Cu)) - 1409877230) ^ *(v114 + 4 * BYTE1(v136)) ^ (*&v113[4 * (v133 ^ 0x37)] - (v133 ^ 0x21C1769E)) ^ (*&v110[4 * (((v131 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)] - (((v131 ^ 0x1DD0DB03u) >> 24) ^ 0x5F6A3ADE));
  v140 = (*(v111 + 4 * (BYTE2(v131) ^ 0xACu)) - 1409877230) ^ (*&v110[4 * (((v133 ^ 0xCC4472E7) >> 24) ^ 0x8A)] - (((v133 ^ 0xCC4472E7) >> 24) ^ 0x5F6A3ADE)) ^ *(v114 + 4 * BYTE1(v134)) ^ (*&v113[4 * (v135 ^ 0x5A)] - (v135 ^ 0x21C176F3));
  v141 = (*(v111 + 4 * (BYTE2(v133) ^ 0x38u)) - 1409877230) ^ (*&v110[4 * (HIBYTE(v136) ^ 0x8A)] - (HIBYTE(v136) ^ 0x5F6A3ADE)) ^ (*&v113[4 * (v128 ^ 0xE7)] - (v128 ^ 0x21C1764E)) ^ *(v114 + 4 * (BYTE1(v131) ^ 0x8Cu));
  v142 = (*(v111 + 4 * ((v141 ^ 0x28B1C8AFu) >> 16)) - 1409877230) ^ *(v114 + 4 * ((v140 ^ 0xF582) >> 8)) ^ (*&v110[4 * (((v137 ^ 0x3AB33250u) >> 24) ^ 0x8A)] - (((v137 ^ 0x3AB33250u) >> 24) ^ 0x5F6A3ADE)) ^ (*&v113[4 * (v139 ^ 0x82)] - (v139 ^ 0x21C1762B));
  v143 = (v141 ^ 0x28B1C8AFu) >> 24;
  v144 = (*(v111 + 4 * (BYTE2(v137) ^ 0xCFu)) - 1409877230) ^ *(v114 + 4 * ((v141 ^ 0xC8AF) >> 8)) ^ (*&v113[4 * (v140 ^ 0x52)] - (v140 ^ 0x21C176FB)) ^ (*&v110[4 * (((v139 ^ 0x94240652) >> 24) ^ 0x8A)] - (((v139 ^ 0x94240652) >> 24) ^ 0x5F6A3ADE));
  v145 = (*(v111 + 4 * ((v139 ^ 0x94240652) >> 16)) - 1409877230) ^ (*&v110[4 * (((v140 ^ 0x57A0F582) >> 24) ^ 0x8A)] - (((v140 ^ 0x57A0F582) >> 24) ^ 0x5F6A3ADE)) ^ *(v114 + 4 * ((v137 ^ 0x3250) >> 8)) ^ (*&v113[4 * (v141 ^ 0x7F)] - (v141 ^ 0x21C176D6));
  v146 = (*(v111 + 4 * (BYTE2(v140) ^ 0xDCu)) - 1409877230) ^ (*&v110[4 * (v143 ^ 0x8A)] - (v143 ^ 0x5F6A3ADE)) ^ *(v114 + 4 * (((v139 ^ 0x652) >> 8) ^ 0x57u)) ^ (*&v113[4 * (v137 ^ 0x80)] - (v137 ^ 0x21C17629));
  v147 = (*(v111 + 4 * ((v146 ^ 0xBE27B2EF) >> 16)) - 1409877230) ^ *(v114 + 4 * ((v145 ^ 0x7C12) >> 8)) ^ (*&v110[4 * (((v142 ^ 0xDBAE4527) >> 24) ^ 0x8A)] - (((v142 ^ 0xDBAE4527) >> 24) ^ 0x5F6A3ADE)) ^ (*&v113[4 * (v144 ^ 0x10)] - (v144 ^ 0x21C176B9));
  v148 = (v146 ^ 0xBE27B2EF) >> 24;
  v149 = (*(v111 + 4 * (BYTE2(v142) ^ 0xD2u)) - 1409877230) ^ *(v114 + 4 * (BYTE1(v146) ^ 0xE5u)) ^ (*&v110[4 * (((v144 ^ 0x6FA1BBC0) >> 24) ^ 0x8A)] - (((v144 ^ 0x6FA1BBC0) >> 24) ^ 0x5F6A3ADE)) ^ (*&v113[4 * (v145 ^ 0xC2)] - (v145 ^ 0x21C1766B));
  v150 = (*(v111 + 4 * ((v144 ^ 0x6FA1BBC0) >> 16)) - 1409877230) ^ *(v114 + 4 * ((v142 ^ 0x4527) >> 8)) ^ (*&v110[4 * (((v145 ^ 0x2B27C12) >> 24) ^ 0x8A)] - (((v145 ^ 0x2B27C12) >> 24) ^ 0x5F6A3ADE)) ^ (*&v113[4 * (v146 ^ 0x3F)] - (v146 ^ 0x21C17696));
  v151 = (*(v111 + 4 * ((v145 ^ 0x2B27C12) >> 16)) - 1409877230) ^ *(v114 + 4 * ((v144 ^ 0xBBC0) >> 8)) ^ (*&v110[4 * (v148 ^ 0x8A)] - (v148 ^ 0x5F6A3ADE)) ^ (*&v113[4 * (v142 ^ 0xF7)] - (v142 ^ 0x21C1765E));
  v152 = (*(v111 + 4 * ((v151 ^ 0x7DDF413Fu) >> 16)) - 1409877230) ^ *(v114 + 4 * (BYTE1(v150) ^ 0x1Fu)) ^ (*&v110[4 * (((v147 ^ 0x179F0454) >> 24) ^ 0x8A)] - (((v147 ^ 0x179F0454) >> 24) ^ 0x5F6A3ADE)) ^ (*&v113[4 * (v149 ^ 0xF5)] - (v149 ^ 0x21C1765C));
  v153 = (*(v111 + 4 * ((v147 ^ 0x179F0454) >> 16)) - 1409877230) ^ *(v114 + 4 * ((v151 ^ 0x413F) >> 8)) ^ (*&v110[4 * (((v149 ^ 0x75457125) >> 24) ^ 0x8A)] - (((v149 ^ 0x75457125) >> 24) ^ 0x5F6A3ADE)) ^ (*&v113[4 * (v150 ^ 0xC0)] - (v150 ^ 0x21C17669));
  v154 = *(v114 + 4 * (BYTE1(v147) ^ 0x53u));
  v155 = v154 ^ -v154 ^ (-1795874037 - (__ROR4__(__ROR4__(v154, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v156 = BYTE2(v150) ^ 0x59;
  v157 = (*(v111 + 4 * (BYTE2(v149) ^ 0x39u)) - 1409877230) ^ (*&v113[4 * (v151 ^ 0xEF)] - (v151 ^ 0x21C17646)) ^ (*&v110[4 * (((v150 ^ 0xAC254810) >> 24) ^ 0x8A)] - (((v150 ^ 0xAC254810) >> 24) ^ 0x5F6A3ADE)) ^ (((2 * v155) & 0x29EA4616) + (v155 ^ 0x94F5230B));
  v158 = (*(v111 + 4 * v156) - 1409877230) ^ *(v114 + 4 * (BYTE1(v149) ^ 0x26u)) ^ (*&v110[4 * (((v151 ^ 0x7DDF413Fu) >> 24) ^ 0x8A)] - (((v151 ^ 0x7DDF413Fu) >> 24) ^ 0x5F6A3ADE));
  v159 = v152 ^ 0x8EBD9B97;
  v160 = v158 ^ (*&v113[4 * (v147 ^ 0x84)] - (v147 ^ 0x21C1762D));
  v161 = v157 ^ 0x8CA395FC;
  v162 = v153 ^ 0xA3ECFAB3;
  v163 = *&v113[4 * (v153 ^ 0x63)] - (v153 ^ 0x21C176CA);
  v164 = (*(v111 + 4 * ((v160 ^ 0x10CC86EDu) >> 16)) - 1409877230) ^ (*&v110[4 * (HIBYTE(v159) ^ 0x8A)] - (HIBYTE(v159) ^ 0x5F6A3ADE)) ^ 0x94F5230B ^ *(v114 + 4 * (BYTE1(v157) ^ 0xC2u));
  v165 = (v164 ^ -v164 ^ (v163 - (v164 ^ v163))) + v163;
  if (((v157 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v166 = -16;
  }

  else
  {
    v166 = 16;
  }

  v167 = *&v113[4 * ((v166 + v161) ^ 0xC0)] - ((v166 + v161) ^ 0x21C17669);
  v168 = HIBYTE(v161);
  v169 = (*(v111 + 4 * (BYTE2(v152) ^ 0xC1u)) - 1409877230) ^ *(v114 + 4 * ((v160 ^ 0x86ED) >> 8)) ^ (*&v110[4 * (HIBYTE(v162) ^ 0x8A)] - (HIBYTE(v162) ^ 0x5F6A3ADE)) ^ v167;
  v170 = (*(v111 + 4 * BYTE2(v162)) - 1409877230) ^ *(v114 + 4 * BYTE1(v159)) ^ (*&v113[4 * (v160 ^ 0x3D)] - (v160 ^ 0x21C17694)) ^ (*&v110[4 * (v168 ^ 0x8A)] - (v168 ^ 0x5F6A3ADE));
  v171 = (*(v111 + 4 * (BYTE2(v157) ^ 0xDFu)) - 1409877230) ^ (*&v110[4 * (((v160 ^ 0x10CC86EDu) >> 24) ^ 0x8A)] - (((v160 ^ 0x10CC86EDu) >> 24) ^ 0x5F6A3ADE)) ^ *(v114 + 4 * (BYTE1(v153) ^ 0xADu)) ^ (*&v113[4 * (v152 ^ 0x47)] - (v152 ^ 0x21C176EE));
  v172 = *(&off_286663530 + LODWORD(STACK[0x2A0]) - 945) - 4;
  v173 = *(&off_286663530 + LODWORD(STACK[0x2A0]) - 1016) - 12;
  v174 = *&v173[4 * ((v171 ^ 0x66EB169A) >> 16)] ^ 0x4D522762;
  v175 = (v174 >> (v130 & 3) >> (v130 & 3 ^ 3)) ^ v174;
  v176 = *(&off_286663530 + LODWORD(STACK[0x2A0]) - 1076);
  v177 = *(&off_286663530 + LODWORD(STACK[0x2A0]) - 1027) - 8;
  v178 = ((v169 ^ 0xA4) - 1352815326) ^ *(v176 + 4 * (BYTE1(v170) ^ 0x57u)) ^ *&v172[4 * (HIBYTE(v165) ^ 0xBE)] ^ *&v177[4 * (v169 ^ 0x91)] ^ (v175 >> 2);
  v179 = *&v173[4 * (BYTE2(v165) ^ 0xBF)] ^ 0x4D522762;
  v180 = *&v172[4 * ((v171 ^ 0x66EB169A) >> 24)];
  v181 = *&v172[4 * (HIBYTE(v169) ^ 0x43)] ^ ((v170 ^ 0xC4) - 1352815326) ^ *(v176 + 4 * (BYTE1(v171) ^ 0x7Cu)) ^ v179 ^ *&v177[4 * (v170 ^ 0xF1)] ^ (v179 >> 2) ^ (v179 >> 5);
  v182 = *&v173[4 * (BYTE2(v169) ^ 0x20)];
  LODWORD(v173) = *&v173[4 * (BYTE2(v170) ^ 0xCB)];
  v183 = v165 ^ 0x7F284FF;
  v184 = *&v172[4 * (HIBYTE(v170) ^ 0xD5)] ^ ((v171 ^ 0x9A) - 1352815326) ^ *&v177[4 * (v171 ^ 0xAF)] ^ *(v176 + 4 * BYTE1(v183));
  v185 = *&v177[4 * (v165 ^ 0xCA)];
  v186 = v178 - ((2 * v178) & 0x3E7ECAA0);
  v187 = v174 ^ LODWORD(STACK[0x258]);
  v188 = v184 ^ ((v182 ^ 0x4D522762u) >> 2) ^ ((v182 ^ 0x4D522762u) >> 5);
  v189 = v180 ^ (~v165 - 1352815326) ^ v173 ^ 0x4D522762 ^ *(v176 + 4 * (BYTE1(v169) ^ 0x2Du)) ^ ((v173 ^ 0x4D522762) >> 2) ^ ((v173 ^ 0x4D522762) >> 5) ^ v185;
  v190 = (v181 - ((2 * v181) & 0xD70D7864) + 1803992114) ^ LODWORD(STACK[0x270]);
  v191 = v182 ^ 0x4D522762 ^ LODWORD(STACK[0x268]) ^ (v188 - ((2 * v188) & 0xF6689E10) - 80457976);
  v192 = *(&off_286663530 + (LODWORD(STACK[0x2A0]) ^ 0x490));
  v193 = STACK[0x288];
  v193[1] = (-97 * *(v192 + (BYTE3(v191) ^ 0x4CLL))) ^ ((-97 * *(v192 + (BYTE3(v191) ^ 0x4CLL))) >> 5) ^ ((-97 * *(v192 + (BYTE3(v191) ^ 0x4CLL))) >> 1) ^ 0xD4;
  *(v193 - 3) = (-97 * *(v192 + (HIBYTE(v190) ^ 0x61))) ^ ((-97 * *(v192 + (HIBYTE(v190) ^ 0x61))) >> 5) ^ ((-97 * *(v192 + (HIBYTE(v190) ^ 0x61))) >> 1) ^ 0xD8;
  v194 = ((v191 ^ 0xD2C1) >> 8);
  v195 = v194 ^ 0x6C;
  LOBYTE(v181) = v194 ^ 0xDA;
  v196 = *(&off_286663530 + (LODWORD(STACK[0x2A0]) ^ 0x424)) - 12;
  v193[3] = (((v181 + 99) ^ v181) + v196[v195]) ^ 0xB3;
  v197 = *(&off_286663530 + LODWORD(STACK[0x2A0]) - 896);
  LOBYTE(v195) = *(v197 + (((((v191 ^ 0xA619D2C1) >> 16) ^ -((v191 ^ 0xA619D2C1) >> 16) ^ (510 - ((v191 ^ 0xA619D2C1) >> 16) - ((2 * ((v191 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL)) ^ 0xD9;
  v198 = ((((v191 ^ 0xA619D2C1) >> 16) ^ -((v191 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v191 ^ 0xA619D2C1) >> 16) - ((2 * ((v191 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v199 = v198 & 8 ^ v195;
  v200 = (v198 & 8 & v195) == 0;
  v201 = v195 - (v198 & 8);
  if (v200)
  {
    v201 = v199;
  }

  v193[2] = v201 ^ v198 & 0xF7;
  *(a19 + LODWORD(STACK[0x278])) = (v196[BYTE1(v190) ^ 0x94] + (((BYTE1(v190) ^ 0x22) + 99) ^ BYTE1(v190) ^ 0x22)) ^ 0xA8;
  v202 = v186 + 524248400;
  v203 = HIWORD(v190) ^ 0x58BD;
  HIDWORD(v204) = ((v189 ^ 0x23A4540) + 274829 - 2 * ((v189 ^ 0x23A4540) & 0x4319F ^ v189 & 0x12)) ^ LODWORD(STACK[0x290]);
  LODWORD(v204) = ((v189 ^ 0x23A4540) - 2 * ((v189 ^ 0x23A4540) & 0x6E04319D ^ v189 & 0x10) - 301715059) ^ LODWORD(STACK[0x290]);
  HIDWORD(v204) = (v204 >> 24) ^ 0x8829CA87;
  LODWORD(v204) = HIDWORD(v204);
  v205 = v204 >> 8;
  v206 = v187 ^ v202;
  *(v193 - 2) = BYTE2(v190) ^ 0x9E ^ *(v197 + (BYTE2(v190) ^ 0xD5));
  v207 = *(&off_286663530 + LODWORD(STACK[0x2A0]) - 946) - 12;
  v208 = v207[v206 ^ 0xE7] - 24;
  *(v193 - 4) = v208 ^ 0x5D ^ (v208 >> 1) & 0x1E;
  v193[5] = (-97 * *(v192 + (HIBYTE(v205) ^ 0x60))) ^ ((-97 * *(v192 + (HIBYTE(v205) ^ 0x60))) >> 5) ^ ((-97 * *(v192 + (HIBYTE(v205) ^ 0x60))) >> 1) ^ 0xFE;
  v209 = v207[((180 - (v191 ^ 0x56) + (v191 ^ 0xE2) - 2 * ((180 - (v191 ^ 0x56)) & (v191 ^ 0xE2))) ^ -(v191 ^ 0xE2)) + 180] - 24;
  v193[4] = v209 ^ 0x62 ^ (v209 >> 1) & 0x1E;
  v193[7] = (v196[((HIDWORD(v204) >> 8) >> 8) ^ 0x4FLL] + (((((HIDWORD(v204) >> 8) >> 8) ^ 0xF9) + 99) ^ ((HIDWORD(v204) >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  *(v193 - 5) = (v196[BYTE1(v206) ^ 0x1FLL] + (((BYTE1(v206) ^ 0xA9) + 99) ^ BYTE1(v206) ^ 0xA9)) ^ 0x84;
  v210 = v207[v190 ^ 0xDDLL];
  v211 = STACK[0x298];
  *v193 = (((v210 + ((v210 - 24) ^ 0xAE) - 23) ^ 0xFE) + v210 - 24) ^ ((v210 - 24) >> 1) & 0x1E;
  LOBYTE(v210) = -97 * *(v192 + (HIBYTE(v206) ^ 0x67));
  *(v193 - 7) = v210 ^ (v210 >> 5) ^ (v210 >> 1) ^ 0xE1;
  v193[6] = BYTE2(v205) ^ 0x8E ^ *(v197 + (BYTE2(v205) ^ 0x55));
  *(v193 - 6) = BYTE2(v206) ^ 0xD3 ^ *(v197 + (BYTE2(v206) ^ 0x7DLL));
  v212 = STACK[0x2A0];
  LOBYTE(v210) = v207[BYTE5(v204) ^ 0xF7] - 24;
  v193[8] = v210 ^ ((v210 & (v210 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(v72 + 8 * ((126 * ((v211 + 1072) < 0x140)) ^ v212)))(v191, v193, v108, v203, 4294967199, v183, 1297229666, 190, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, v214, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_254425B68(uint64_t a1, uint64_t a2, int a3)
{
  v9 = (v5 + 4 * (a2 + v6));
  *v9 = __ROR4__(*(v9 - 3) ^ v7 ^ *(v9 - 8) ^ *(v9 - 14) ^ *(v9 - 16), 31) ^ 0x1E6E67BF;
  return (*(v4 + 8 * ((121 * (a2 + 1 != v8 + 80)) ^ a3)))(v3);
}

_DWORD *sub_254425BDC@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  v5 = v3 + 1791918412;
  if (v2 > 0x9249444F != v5 < ((v4 + 186) ^ 0xA3Fu) + 1840690085)
  {
    v6 = v5 < ((v4 + 186) ^ 0xA3Fu) + 1840690085;
  }

  else
  {
    v6 = v2 + 1840692144 < v5;
  }

  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 + 1;
  }

  *result = v7;
  return result;
}

uint64_t sub_254425CC0(uint64_t a1)
{
  v1 = 210068311 * (((a1 | 0x39505529) - a1 + (a1 & 0xC6AFAAD6)) ^ 0xAB866A8D);
  v2 = *(a1 + 8) + v1;
  v3 = 567028943 * (*a1 - v1);
  v5 = v3 - 2047222889;
  v4 = v3 - 2047222889 < 0;
  v6 = 2047222889 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 16) + 4);
  v8 = v7 - 742196933;
  v4 = v7 - 742196933 < 0;
  v9 = 742196933 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_286663530 + v2 - 344) + ((2407 * ((v6 >> 5) < v9)) ^ v2) - 1))();
}

void sub_254425E70(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_254425FBC@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 - 1634));
  v9 = *v8;
  v10 = *(v6 + 8 * (a1 - 1660));
  v11 = *v10;
  v20[0] = **v10 ^ 0x32;
  v20[1] = v11[1] ^ 0x32;
  v20[2] = v11[2] ^ 0x32;
  v20[3] = v11[3] ^ 0x32;
  v20[4] = v11[4] ^ 0x32;
  v20[5] = v11[5] ^ 0x32;
  v20[6] = v11[6] ^ 0x32;
  v20[7] = v11[7] ^ 0x32;
  v20[8] = v11[8] ^ 0x32;
  v20[9] = v11[9] ^ 0x32;
  v20[10] = v11[10] ^ 0x32;
  v20[11] = v11[11] ^ 0x32;
  v20[12] = v11[12] ^ 0x32;
  v20[13] = v11[13] ^ 0x32;
  v20[14] = v11[14] ^ 0x32;
  v20[15] = v11[15] ^ 0x32;
  v20[16] = v11[16] ^ 0x32;
  v20[17] = v11[17] ^ 0x32;
  v20[18] = v11[18] ^ 0x32;
  v20[19] = v11[19] ^ 0x32;
  v12 = *v10;
  v20[20] = v12[20] ^ 0x32;
  v20[21] = v12[21] ^ 0x32;
  v20[22] = v12[22] ^ 0x32;
  v20[23] = v12[23] ^ 0x32;
  v20[24] = v12[24] ^ 0x32;
  v20[25] = v12[25] ^ 0x32;
  v20[26] = v12[26] ^ 0x32;
  v20[27] = v12[27] ^ 0x32;
  v20[28] = v12[28] ^ 0x32;
  v20[29] = v12[29] ^ 0x32;
  result = (*(v4 + 8 * (a1 ^ 0xE80)))(v9, v20, v2);
  if (result == 1102)
  {
    v14 = *v8;
    v15 = **(v6 + 8 * (v5 ^ 0x74F));
    v19[0] = *v15 ^ 0x6A;
    v19[1] = v15[1] ^ 0x6A;
    v19[2] = (v5 - 105) ^ 0xC4 ^ v15[2];
    v19[3] = v15[3] ^ 0x6A;
    v19[4] = v15[4] ^ 0x6A;
    v19[5] = v15[5] ^ 0x6A;
    v19[6] = v15[6] ^ 0x6A;
    v19[7] = v15[7] ^ 0x6A;
    v19[8] = v15[8] ^ 0x6A;
    v19[9] = v15[9] ^ 0x6A;
    v19[10] = v15[10] ^ 0x6A;
    v19[11] = v15[11] ^ 0x6A;
    v19[12] = v15[12] ^ 0x6A;
    v19[13] = v15[13] ^ 0x6A;
    v19[14] = v15[14] ^ 0x6A;
    v19[15] = v15[15] ^ 0x6A;
    v19[16] = v15[16] ^ 0x6A;
    v19[17] = v15[17] ^ 0x6A;
    v19[18] = v15[18] ^ 0x6A;
    v19[19] = v15[19] ^ 0x6A;
    v16 = *(v4 + 8 * ((2042 * ((*(v4 + 8 * (v5 ^ 0xE80)))(v14, v19, v2) == 0)) ^ (v5 - 873)));
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v18 = -585050760;
  }

  else
  {
    *(v7 + 356) |= (v5 - 873) ^ 0x3A4;
    *(v7 + 56) = 1296220137;
    result = (*(v4 + 8 * (v5 ^ 0xEB6)))(*v2, v7 + 344, v7 + 348, v7 + 352, v3);
    v17 = *(v1 + 16);
    *(*(v1 + 24) - 0x68664AE56411153ALL) = *v2;
    *(v17 - 0x64DD113A6F6F24BELL) = *v3 - ((((v5 - 759433088) & 0x2D44077F) - 1992093997) & (2 * *v3)) - 996046091;
    v18 = 585076288;
  }

  *(v1 + 8) = v18;
  return result;
}

uint64_t sub_254426D2C(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_254426DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v51 = *(v20 + 8 * (v18 + 14));
  v28 = STACK[0x288];
  v29 = STACK[0x28C];
  v30 = LOBYTE(STACK[0x298]);
  if (v30 == 2)
  {
    v35 = &STACK[0x238] + v22 + 2017753846;
    v36 = ((v35[1] ^ v19) << (v25 - 12)) + ((*v35 ^ v19) << 24) + ((v35[2] ^ v19) << 8);
    *v21 = v36 + (v35[3] ^ v19) + v23 - 2 * ((v36 + (v35[3] ^ v19)) & (v23 + 32) ^ (v35[3] ^ v19) & 0x20);
    v37 = *(v20 + 8 * ((1635 * ((v22 + 2017753850) < 0x40)) ^ (v25 + 563)));
    return v37(2017753850, v24 + 16, (v25 + 538), v37, 4294836224, 16908288, 16786432, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else if (v30 == 1)
  {
    v32 = (v25 + 1219);
    v33 = &STACK[0x238] + v22 + 2017753846;
    v34 = *v33 ^ v19;
    LODWORD(v33) = ((*(&STACK[0x238] + (v32 ^ (v22 - 823)) + 2017753846) ^ v19) << 16) | ((v33[3] ^ v19) << 24) | v34 | ((v33[1] ^ v19) << 8);
    *v21 = v33 + v23 - 2 * (v33 & (v23 + 10) ^ v34 & 0xA);
    return (*(v20 + 8 * ((578 * ((v22 + 2017753850) < 0x40)) ^ v32)))(v32, 1409286144, 2147352576, 2017753846, 1409843200, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v31 = LODWORD(STACK[0x280]);
    v26 = STACK[0x280];
    v38 = (((v26 ^ 0x6A62650F) - 1784833295) ^ ((v26 ^ 0x32CD23D3) - 852304851) ^ ((v26 ^ 0xC6F7B223) + 956845533)) + (((v26 ^ 0x12FF4CC9) - 318721225) ^ ((v26 ^ 0xF942822F) + 113081809) ^ ((v26 ^ 0x75E53A19) - 1977956889)) - 1801279771;
    v27 = STACK[0x284];
    v39 = (((v27 ^ 0x2175E368) - 561374056) ^ ((v27 ^ 0xA1C0A28D) + 1581210995) ^ ((v27 ^ 0x1EEDB51A) - 518894874)) + (((v27 ^ 0xD0DF8EEF) + 790655249) ^ ((v27 ^ 0x673834B8) - 1731736760) ^ ((v27 ^ 0x29BF4EA8) - 700403368)) - 1307601176;
    LODWORD(STACK[0x280]) = v38 ^ ((v38 ^ 0x3EC656CA) - 1765206573) ^ ((v38 ^ 0xC1BDC6) - 1462829345) ^ ((v38 ^ 0x1409A992) - 1140397429) ^ ((v38 ^ 0x7DFEFE79) - 705577630) ^ 0xC9A84818;
    LODWORD(STACK[0x284]) = v39 ^ ((v39 ^ 0x1C2C2093) - 1769049209) ^ ((v39 ^ 0x61553ED5) - 336106047) ^ ((v39 ^ 0x7FD34D53) - 177136057) ^ ((v39 ^ 0x77F7FFFF) - 44716821) ^ 0xEB055815;
    v40 = (((v28 ^ 0x98A9B7C8) + 1733707832) ^ ((v28 ^ 0x9C7B4A0) - 164082848) ^ ((v28 ^ 0xF36F797) - 255260567)) + (((v28 ^ 0x7512531D) - 1964135197) ^ ((v28 ^ 0x8DF76357) + 1913167017) ^ ((v28 ^ 0x66BDC4B5) - 1723712693)) + 1892344792;
    v41 = (((v29 ^ 0x1EB9CE8C) - 515493516) ^ ((v29 ^ 0x8A1F7500) + 1977649920) ^ ((v29 ^ 0xAFE4F73) - 184438643)) + (((LODWORD(STACK[0x28C]) ^ 0x170F303D) - 386871357) ^ ((LODWORD(STACK[0x28C]) ^ 0x56286332) - 1445487410) ^ ((LODWORD(STACK[0x28C]) ^ 0xDF7FA7F0) + 545282064)) + 1497616314;
    v42 = (v41 ^ 0xD34C5012) & (2 * (v41 & 0xE36E1A44)) ^ v41 & 0xE36E1A44;
    v43 = ((2 * (v41 ^ 0x93886012)) ^ 0xE1CCF4AC) & (v41 ^ 0x93886012) ^ (2 * (v41 ^ 0x93886012)) & 0x70E67A56;
    v44 = v43 ^ 0x10220A52;
    v45 = (v43 ^ 0xC07000) & (4 * v42) ^ v42;
    v46 = ((4 * v44) ^ 0xC399E958) & v44 ^ (4 * v44) & 0x70E67A54;
    v47 = (v46 ^ 0x40806840) & (16 * v45) ^ v45;
    v48 = ((16 * (v46 ^ 0x30661206)) ^ 0xE67A560) & (v46 ^ 0x30661206) ^ (16 * (v46 ^ 0x30661206)) & 0x70E67A50;
    v49 = v47 ^ 0x70E67A56 ^ (v48 ^ 0x662000) & (v47 << 8);
    LODWORD(STACK[0x288]) = v40 ^ ((v40 ^ 0x62FFCC4C) - 1457993110) ^ ((v40 ^ 0xAB95674D) + 1618108777) ^ ((v40 ^ 0x924FBD24) + 1504230146) ^ ((v40 ^ 0x6F3DEFFF) - 1529157157) ^ 0xAA400D25;
    LODWORD(STACK[0x28C]) = v41 ^ (2 * ((v49 << 16) & 0x70E60000 ^ v49 ^ ((v49 << 16) ^ 0x7A560000) & (((v48 ^ 0x70805A16) << 8) & 0x70E60000 ^ 0x10840000 ^ (((v48 ^ 0x70805A16) << 8) ^ 0x667A0000) & (v48 ^ 0x70805A16)))) ^ 0x7C761A17;
    return v51(v31, &STACK[0x238], a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_254426E60()
{
  v5 = ((((v4 - 144) | 0x5D4A599A) - ((v4 - 144) & 0x5D4A599A)) ^ 0xC60DAF10) * v0;
  *(v4 - 144) = v10;
  *(v4 - 136) = v8 - v5 + 1256130843 + ((v1 - 2036769537) & 0x7966A3FB);
  *(v4 - 132) = v1 - v5 + 66;
  *(v4 - 128) = v3;
  (*(v2 + 8 * (v1 + 1861)))(v4 - 144);
  *v7 = v8;
  result = v9;
  *(v9 + 8) = 585076288;
  return result;
}

uint64_t sub_254426EF0@<X0>(unsigned int *a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  *a26 = 562464144;
  v29 = *a1;
  v30 = 1361651671 * ((((v28 - 144) | 0xF07A883A91530C94) - ((v28 - 144) & 0xF07A883A91530C94)) ^ 0x23D7FB034271FC18);
  *(v28 - 124) = ((a2 - 239015547) ^ 0x57) - v30;
  *(v28 - 120) = ((a2 - 239015547) ^ 0x6A) - v30;
  *(v28 - 144) = 5119 - v30;
  *(v28 - 112) = v29 - v30;
  *(v28 - 104) = -127650814 - v30 + a2;
  *(v28 - 128) = 1 - v30;
  *(v28 - 136) = a2 - 239015547 + v30;
  v31 = (*(v26 + 8 * (a2 ^ (v27 + 2290))))(v28 - 144);
  return (*(v26 + 8 * *(v28 - 132)))(v31);
}

uint64_t sub_254426FC4(uint64_t a1, unint64_t a2)
{
  STACK[0x218] = v2;
  LODWORD(STACK[0x20C]) = v3;
  STACK[0x210] = a2;
  *(v6 + 304) = 0;
  v8 = 1388665877 * ((v7 - 200) ^ 0x8DAD62EC);
  v9 = (v7 - 200);
  *v9 = &STACK[0x480];
  v9[1] = &STACK[0x330];
  v9[4] = 0;
  *(v7 - 184) = v8 + v4 - 1139;
  *(v7 - 180) = v8 + 886104009;
  v10 = (*(v5 + 8 * (v4 + 1050)))(v7 - 200);
  return (*(v5 + 8 * (v4 ^ (8 * (*(v7 - 176) == ((v4 - 1413) | 0x383) + 585075389)))))(v10);
}

uint64_t sub_254427074()
{
  v5 = 2 * (v1 ^ 0x27B);
  LODWORD(STACK[0x4A0]) = v0 - 379;
  v6 = LODWORD(STACK[0x4A0]);
  v7 = 742307843 * ((2 * (v3 & 0x34D3DA31C34AFC98) - v3 + 0x4B2C25CE3CB50360) ^ 0xF8B0F8A522978E35);
  v8 = v5 + 634936011 + v7;
  *(v4 - 176) = (v5 - 2030746294) ^ v7;
  *(v4 - 172) = v8;
  *(v4 - 200) = v7;
  v9 = v4 - 200;
  *(v9 + 8) = v7 + 3709916570u;
  *(v9 + 16) = v6 + v7;
  *(v4 - 168) = ((v5 + 634936011) ^ 0x74) - v7;
  *(v4 - 164) = v8 + 25;
  v10 = (*(v2 + 8 * (v5 ^ 0xF3F)))(v4 - 200);
  return (*(v2 + 8 * *(v4 - 160)))(v10, 0, 0);
}

uint64_t sub_25442708C@<X0>(char a1@<W8>, uint64_t a2)
{
  v6 = (a2 + (v2 & 0x3F));
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((a1 & 0x30) == 16) * (((v3 ^ 0x1B6) + 88) ^ 0x168)) ^ v3 ^ 0x1B6)))();
}

uint64_t sub_2544270DC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v21 = (a6 + v13 + a1 - 68 + 2628) | 0x54;
  v16 = 2066391179 * ((v15 - 120) ^ 0xAF278218);
  *(v15 - 112) = v15 - 220;
  *(v15 - 120) = a1 - v16 + 185;
  *(v15 - 116) = a13 - v16 + 982374325;
  v17 = (*(v14 + 8 * (a1 ^ 0x9D4)))(v15 - 120);
  v18 = *(v15 - 152) & (v21 - 533);
  *(v15 - 220 + v18) = 32;
  return (*(v14 + 8 * ((602 * (v18 > 0x37)) ^ a1)))(v17);
}

uint64_t sub_254427214(uint64_t a1, uint64_t a2)
{
  v2 = &v8 ^ qword_27F5F9C70 ^ qword_27F5F9C50;
  qword_27F5F9C70 = 1865875933 * v2 - 0x1E71746347E125D2;
  qword_27F5F9C50 = 1865875933 * (v2 ^ 0x1E71746347E125D2);
  v3 = *(a2 + 4);
  v4 = -35 * ((qword_27F5F9C50 - (-35 * v2 + 46)) ^ 0xD2);
  v5 = *(&off_286663530 + (v4 ^ byte_254489C80[byte_254495110[v4] ^ 0x81]) - 30) - 8;
  if (v3 == 393082909)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 393082916)
  {
    v6 = **(a2 + 8) - 9;
    __asm { BRAA            X1, X17 }
  }

  return 4294925278;
}

uint64_t sub_2544275A0()
{
  v3 = v0 + 1622;
  if (((STACK[0x258] - v0) | (v0 - STACK[0x258])) > ((v0 + 1622) ^ 0xFFFFF9A9))
  {
    v4 = 0x80000000;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  *v2 = v4;
  (*(v1 + 8 * (v0 ^ 0x958u)))(STACK[0x290]);
  v5 = v2[1];
  v6 = v2[397] ^ 0xB27C304B ^ ((v5 & 0x7FFFFFFE | *v2 & 0x80000000) >> 1) ^ *(&STACK[0x568] + (v5 & 1));
  v7 = v2[398] ^ 0xB27C304B ^ ((v2[2] & ((v3 - 409) ^ 0x7FFFFB43) | v5 & 0x80000000) >> 1) ^ *(&STACK[0x568] + (v2[2] & 1));
  *v2 = v6;
  v2[1] = v7;
  return (*(v1 + 8 * (v3 - 417)))();
}

uint64_t sub_2544276A0@<X0>(char a1@<W0>, uint64_t a2@<X1>, int8x16_t *a3@<X5>, uint64_t a4@<X8>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>)
{
  v8 = (a2 + a4);
  v9 = vaddq_s8(vsubq_s8(a3[1], vandq_s8(vaddq_s8(a3[1], a3[1]), a5)), a6);
  *v8 = vaddq_s8(vsubq_s8(*a3, vandq_s8(vaddq_s8(*a3, *a3), a5)), a6);
  v8[1] = v9;
  return (*(v7 + 8 * ((562 * (((v6 + 1116188642) & 0xBD7856FF ^ 0x6DELL) == (a1 & 0x60))) ^ (v6 + 1426))))();
}

void sub_254427728(uint64_t a1)
{
  v1 = *(a1 + 8) + 210068311 * ((1549542908 - (a1 | 0x5C5C25FC) + (a1 | 0xA3A3DA03)) ^ 0x3175E5A7);
  v2 = *(&off_286663530 + v1 - 662) - 8;
  v3 = *a1;
  (*&v2[8 * v1 + 13312])(*(&off_286663530 + (v1 ^ 0x247)) - 4, sub_254423940);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2544277FC@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W4>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = (v14 + 4 * v12);
  v19 = HIDWORD(v16) + (*v18 ^ v11) + HIDWORD(v13) + a1 * (*(*(a11 + 8) + 4 * v12) ^ (v11 + v17 + 482 - 643));
  *(v18 - 1) = v19 + v11 - (a3 & (2 * v19));
  return (*(v15 + 8 * (((v12 + 1 == a4) * a2) ^ v17)))();
}

void sub_2544278E4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32) + 1785193651 * (((a1 | 0xE1E68334) - a1 + (a1 & 0x1E197CCB)) ^ 0xF23A6F14);
  v2 = 1785193651 * (((v5 | 0x66CD3F42) - v5 + (v5 & 0x9932C0B8)) ^ 0x7511D362);
  v7 = v4;
  v6 = v1 + v2 - 562358890;
  v8 = v2 ^ 0x93107673;
  v3 = *(&off_286663530 + (v1 ^ 0x61)) - 8;
  (*&v3[8 * (v1 ^ 0x952)])(v5);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_254427C80@<X0>(uint64_t a1@<X8>)
{
  v4 = STACK[0x2D0];
  v5 = v3[10];
  STACK[0x268] = STACK[0x258];
  v6 = *v4;
  v7 = *v5;
  v3[20] = *(v2 + 8 * v1);
  v3[36] = &STACK[0x570] + a1;
  v3[22] = a1 + 432;
  LODWORD(STACK[0x290]) = v6;
  LODWORD(STACK[0x334]) = v6;
  v3[53] = v7;
  LODWORD(STACK[0x3D4]) = 2008440803;
  LODWORD(STACK[0x4BC]) = 393082906;
  v3[50] = 0;
  LODWORD(STACK[0x500]) = 912550143;
  LODWORD(STACK[0x288]) = ((((((v1 + 535) | 0x440) + 2062629281) & 0x850EC4FF) - 1088) ^ 0x1964048C) + 1511971844;
  LODWORD(STACK[0x3C8]) = 1685746637;
  *(&STACK[0x570] + a1) = 1093553926;
  LODWORD(STACK[0x298]) = 1150842301;
  LODWORD(STACK[0x2A0]) = 173021094;
  LODWORD(STACK[0x270]) = 1763355593;
  LODWORD(STACK[0x278]) = 738823611;
  return sub_25444EF0C();
}

uint64_t sub_254427CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v18 - 128) = a12;
  *(v18 - 112) = &a13;
  *(v18 - 120) = (v16 - 678) ^ (1785193651 * ((((v18 - 128) | 0xBD8E82DD) - (v18 - 128) + ((v18 - 128) & 0x42717D20)) ^ 0xAE526EFD));
  (*(v15 + 8 * (v16 ^ 0xD05)))(v18 - 128);
  *(v18 - 120) = &a15;
  *(v18 - 112) = a12;
  *(v18 - 128) = (v16 - 403) ^ (((((v18 - 128) | 0xDBADE9A) - (v18 - 128) + ((v18 - 128) & 0xF2452160)) ^ 0x51F78A1F) * v17);
  v19 = (*(v15 + 8 * (v16 + 1244)))(v18 - 128);
  return (*(v15 + 8 * ((910 * (*(v18 - 124) + (v16 ^ 0x89324655) < 109 * (v16 ^ 0x470u) - 1941434953)) ^ v16)))(v19);
}

void sub_254427E10(int8x16_t a1)
{
  v10 = ~v7 + v3;
  v11 = *(v2 + v10 - 15);
  v12 = *(v2 + v10 - 31);
  v13 = v1 + v10;
  *(v13 - 15) = veorq_s8(v11, a1);
  *(v13 - 31) = veorq_s8(v12, a1);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_254429E9C@<X0>(unsigned int a1@<W8>)
{
  v6 = *(v5 - 220 + a1 + 72);
  v7 = ((2 * a1) & 0xEB1FECB0) + (a1 ^ 0xF58FF65B) + v1;
  *(v3 + v7) = v6 ^ 0x5F;
  *(v3 + v7 + 1) = (((v2 + 95) | 0x11) ^ BYTE1(v6) ^ 5) + (~(2 * (((v2 + 95) | 0x11) ^ BYTE1(v6))) | 0xBF) - 95;
  *(v3 + v7 + 2) = (BYTE2(v6) ^ 0x58) - ((v6 >> 15) & 0x40) - 96;
  *(v3 + v7 + 3) = (HIBYTE(v6) ^ 0x9E) - ((v6 >> 23) & 0x40) - 96;
  return (*(v4 + 8 * ((13 * (a1 + 4 < *(v5 - 128))) ^ v2)))();
}

uint64_t sub_254429FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = HIDWORD(a10) < a10;
  if (v20 == v17 > 0x2611C8E9)
  {
    v20 = ((v18 + 1704932426) & 0x9A60C5FF) + v17 - 638699796 < HIDWORD(a10);
  }

  return (*(v19 + 8 * ((v20 * a4) | v18)))(HIDWORD(a10), a2, a10, a4, 0xFFFFFFFFLL, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void sub_25442A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v31 - 120) = (v30 + 1124) ^ (1785193651 * ((((2 * (v31 - 144)) | 0x3C380F2) - (v31 - 144) + 2115911559) ^ 0x923D2C59));
  *(v31 - 112) = v29;
  *(v31 - 104) = v27;
  *(v31 - 144) = v29;
  *(v31 - 136) = &a26;
  *(v31 - 128) = v26;
  (*(v28 + 8 * (v30 + 2045)))(v31 - 144);
  JUMPOUT(0x254428AB4);
}

void sub_25442A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v33 - 120) = (v32 + 1124) ^ (((2 * ((v33 - 144) & 0xFC96240) - (v33 - 144) + 1882627516) ^ 0x63EA719C) * v31);
  *(v33 - 144) = &a24;
  *(v33 - 136) = &a30;
  *(v33 - 112) = &a24;
  *(v33 - 104) = a13;
  *(v33 - 128) = a14;
  (*(v30 + 8 * (v32 ^ 0x805)))(v33 - 144);
  JUMPOUT(0x254430184);
}

uint64_t sub_25442A130()
{
  if (v2 > v1)
  {
    v1 = v2;
  }

  return (*(v4 + 8 * (((v1 > v0 - 539 + v3) * (((v0 - 1773) | 0x4D2) ^ 0x5C6)) ^ v0)))();
}

uint64_t sub_25442A174()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v1 - v3 + v8 + 1;
  v10 = v1 + v8 + ((3 * (v4 ^ 0x1EF) + 623276338) & 0xDAD98DFD ^ 0x1FCLL);
  v11 = v8 + v2 + 4;
  v12 = v8 + v0 + 6;
  v14 = v11 > v5 && v11 - v3 < v7;
  v16 = v9 < v7 && v10 > v5 || v14;
  if (v12 <= v5 || v12 - v3 >= v7)
  {
    v18 = v16;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 8 * (((4 * v18) | (v18 << 6)) ^ v4)))();
}

uint64_t sub_25442A218@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 - 1059) ^ (843532609 * ((&v5 & 0x9DFFAB76 | ~(&v5 | 0x9DFFAB76)) ^ 0x3E4D000C));
  v7 = v2;
  v8 = v2;
  v6 = a1;
  return (*(v1 + 8 * (v3 + 910)))(&v5);
}

uint64_t sub_25442A4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFBE9 ^ (523 * (v4 ^ 0x499u))) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((57 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_25442A538()
{
  v5 = *(v8 + 16);
  v6 = 143681137 * ((((v4 - 144) ^ 0x40575C47 | 0x56414FD2) - ((v4 - 144) ^ 0x40575C47) + (((v4 - 144) ^ 0x40575C47) & 0xA9BEB02D)) ^ 0x774E9845);
  *(v4 - 136) = v9;
  *(v4 - 128) = v6 + v0 + 937;
  *(v4 - 144) = v6 ^ 0x535831DC;
  (*(v3 + 8 * (v0 + 2197)))(v4 - 144);
  *(v4 - 112) = v10;
  *(v4 - 104) = v2;
  *(v4 - 120) = (v0 + 1322) ^ (1785193651 * ((v4 - 144) ^ 0x13DCEC20));
  *(v4 - 136) = v9;
  *(v4 - 128) = v1;
  *(v4 - 144) = v10;
  (*(v3 + 8 * (v0 ^ 0x9C3)))(v4 - 144);
  *(v4 - 144) = v10;
  *(v4 - 128) = v5;
  *(v4 - 136) = (v0 + 301) ^ (1785193651 * ((((v4 - 144) | 0x4C6CF3AD) + (~(v4 - 144) | 0xB3930C52)) ^ 0x5FB01F8C));
  return (*(v3 + 8 * (v0 ^ 0x9D6)))(v4 - 144);
}

uint64_t sub_25442A74C(uint64_t a1, uint64_t a2)
{
  *(v3 + 1424) = v2;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_25442A820@<X0>(uint64_t a1@<X0>, int a2@<W7>, int a3@<W8>)
{
  v7 = (v5 ^ (a3 + 3333)) - 1434 + v4;
  v8 = *(v3 + v7 - 15);
  v9 = *(v3 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((958 * ((v4 & 0xFFFFFFE0) == 32)) ^ (a2 + v5 + 730))))();
}

uint64_t sub_25442A8C8@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v3 = 106464768 - (((a2 ^ 0xC294674C) + 1030461620) ^ ((a2 ^ 0x520760DC) - 1376215260) ^ ((a2 ^ 0xB24C89D0) + 1303606445 + 9 * (v2 ^ 0xC9)));
  v4 = (v3 ^ 0xD6874454) & (2 * (v3 & 0xD6C74558)) ^ v3 & 0xD6C74558;
  v5 = ((2 * (v3 ^ 0xFF8344E4)) ^ 0x52880378) & (v3 ^ 0xFF8344E4) ^ (2 * (v3 ^ 0xFF8344E4)) & 0x294401BC;
  v6 = v5 ^ 0x29440084;
  v7 = (v5 ^ 0x120) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xA51006F0) & v6 ^ (4 * v6) & 0x294401BC;
  v9 = v7 ^ 0x294401BC ^ (v8 ^ 0x210000A0) & (16 * v7);
  v10 = (16 * (v8 ^ 0x844010C)) & 0x294401B0 ^ 0x2904003C ^ ((16 * (v8 ^ 0x844010C)) ^ 0x94401BC0) & (v8 ^ 0x844010C);
  v11 = (v9 << 8) & 0x29440100 ^ v9 ^ ((v9 << 8) ^ 0x4401BC00) & v10;
  **(result + 8) = v3 ^ (2 * ((v11 << 16) & 0x29440000 ^ v11 ^ ((v11 << 16) ^ 0x1BC0000) & ((v10 << 8) & 0x29440000 ^ 0x29440000 ^ ((v10 << 8) ^ 0x44010000) & v10))) ^ 0xA498C860;
  return result;
}

uint64_t sub_25442AAB0(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int8x16_t a33, int8x16_t a34, uint64_t a35, uint64_t a36, int8x16_t a37, int8x16_t a38)
{
  v48 = v42 + 2;
  v38 = (v47 + (v45 + 32));
  v39 = veorq_s8(v48[-1], *v38);
  v40 = veorq_s8(*v48, v38[1]);
  return (*(v46 + 8 * (((v44 != 32) * (v43 + 1055)) ^ v43)))(vorrq_s8(vqtbl1q_s8(v39, a38), a1), vorrq_s8(vqtbl1q_s8(v39, a37), a2), vorrq_s8(vqtbl1q_s8(v39, a34), a3), vorrq_s8(vqtbl1q_s8(v39, a33), a4), vorrq_s8(vqtbl1q_s8(v40, a38), a5), vorrq_s8(vqtbl1q_s8(v40, a34), a6), vorrq_s8(vqtbl1q_s8(v40, a37), a7), vorrq_s8(vqtbl1q_s8(v40, a33), a8));
}

uint64_t sub_25442AAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = v8;
  v10 = v8 + 1;
  *(a1 + v3 + 4) = *(*(a2 + 8) + v9);
  v11 = *(a2 + 4) + v6;
  v12 = v11 < v4;
  v13 = v10 + v4 < v11;
  if (v10 > v7 != v12)
  {
    v13 = v12;
  }

  return (*(a3 + 8 * ((252 * v13) ^ v5)))();
}

uint64_t sub_25442AB10(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *v9 = ((v5 + 1334) ^ 0xFFFFF92B) + v4;
  v10 = v4 - 1093554113;
  v11 = &v9[6 * (v4 - 1093554113 + v5 - 228) + 2];
  v12 = *v11;
  LODWORD(STACK[0x334]) = v11[1];
  v13 = &v9[6 * (v10 + 186) + 2];
  *(v8 + 424) = *(v13 + 8);
  LODWORD(STACK[0x500]) = *(v13 + 16);
  v14 = *(v6 + (v12 + a3) * a4 + 36);
  LODWORD(STACK[0x3C8]) = v14;
  return (*(v7 + 8 * ((1731 * (v14 == 1685746636)) ^ v5)))();
}

uint64_t sub_25442ABC4()
{
  if (v3 > 1767888867 != v1 - 362602153 < ((v0 + 50) | 0x1AB) - 1767889807)
  {
    v4 = v3 > 1767888867;
  }

  else
  {
    v4 = v1 - 362602153 < ((v0 + 444) ^ 0x16A02B96) + v3;
  }

  return (*(v2 + 8 * (!v4 | (32 * !v4) | (v0 + 444))))();
}

uint64_t sub_25442AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22)
{
  a22 = &a12;
  a20 = a15;
  LODWORD(a19) = (v22 - 427) ^ ((((&a19 | 0xE55D4EC7) - (&a19 & 0xE55D4EC7)) ^ 0xF172D35C) * v26);
  (*(v25 + 8 * (v22 ^ 0xE9Eu)))(&a19);
  HIDWORD(a19) = v23 - 143681137 * (&a19 ^ 0x61588BD0) - 413;
  a21 = &a14;
  a22 = &a10;
  a20 = a15;
  (*(v25 + 8 * (v23 ^ 0xF3B)))(&a19);
  LODWORD(a19) = (v23 - 18) ^ ((((&a19 | 0x65609095) - (&a19 & 0x65609095)) ^ 0x714F0D0E) * v26);
  a20 = a15;
  a22 = &a17;
  (*(v25 + 8 * (v23 + 811)))(&a19);
  a19 = a15;
  HIDWORD(a20) = (v23 - 661) ^ (1388665877 * ((((2 * &a19) | 0x602C6694) - &a19 + 1340722358) ^ 0x3DBB51A6));
  v27 = (*(v25 + 8 * (v23 ^ 0xF3C)))(&a19);
  return (*(v25 + 8 * (((a20 == v24 + ((v23 - 396330742) & 0x179F81EF) - 328) * (((v23 - 17175383) & 0x1060FFE) - 452)) ^ v23)))(v27);
}

uint64_t sub_25442B15C(uint64_t a1)
{
  v3 = STACK[0x310];
  v4 = *(STACK[0x310] + 96);
  if (v4 == 2)
  {
    return (*(v2 + 8 * (((*(v3 + 92) == 0) * ((v1 ^ 0x3B3) - 1483)) ^ (v1 + 656))))(a1, 4294703864, 1614, 4294967284, 95);
  }

  if (v4 == 1)
  {
    return (*(v2 + 8 * ((4081 * (*(v3 + 92) != v1 - 1622)) ^ (v1 + 417))))(3999236090, 3703503258, 0xFFFFFFFFLL, 522, 4294967284);
  }

  STACK[0x3E0] = 91;
  *(v3 + 91) = (&STACK[0x3E0] ^ 0xBA) * (&STACK[0x3E0] + 17);
  return (*(v2 + 8 * ((932 * (STACK[0x3E0] == 0)) ^ (v1 - 490))))(3999236090, 3703503258, 0xFFFFFFFFLL, 522, 4294967284);
}

uint64_t sub_25442B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v51 = (v47 + 1609001833) & 0xEFF8F7BF;
  v52 = (*(v48 + 8 * (v47 + 1574)))(&a47, 0);
  (*(v48 + 8 * (v47 ^ 0xA18)))(v52);
  v53 = (*(v48 + 8 * (v47 ^ 0xA18)))();
  v54 = *v49;
  v55 = 1664525 * (((v54 ^ (v54 >> 30) ^ 0x43BAF0C3) + 325757312) ^ ((v54 ^ (v54 >> 30) ^ 0xB8182C1C) - 389515871) ^ ((v54 ^ (v54 >> 30) ^ 0xFBA2DCDF) - 1418558108)) + 1285532382;
  v49[1] = ((v53 + 191478012 - ((2 * v53) & 0x16D371F8)) ^ 0xB69B8FC) + ((v49[1] - ((2 * v49[1]) & 0xD53DCE0) - 2035683728) ^ v55 ^ ((v55 ^ 0xA4EB3BD0) + 1971209049) ^ ((v55 ^ 0x2D838207) - 65602928) ^ ((v55 ^ 0x48FDC15E) - 1721189929) ^ ((v55 ^ 0xEFFFFFFE) + 1047168887) ^ 0xA8C36907);
  v56 = 1361651671 * ((~((v50 - 144) | 0xA62E3BB3CABC43) + ((v50 - 144) & 0xA62E3BB3CABC43)) ^ 0x2CF4A2FD9F17B330);
  *(v50 - 104) = -127650814 - v56 + v51;
  *(v50 - 136) = v51 - 1146181273 + v56;
  *(v50 - 128) = 1 - v56;
  *(v50 - 144) = 623 - v56;
  *(v50 - 112) = 2 - v56;
  *(v50 - 124) = ~v56 + v51 - 1146181273;
  *(v50 - 120) = ((v51 - 1146181273) ^ 0x4F) - v56;
  v57 = (*(v48 + 8 * (v51 - 1340104064)))(v50 - 144);
  return (*(v48 + 8 * *(v50 - 132)))(v57);
}

uint64_t sub_25442B568@<X0>(int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(v6 + v7) = *(a3 + v7);
  return (*(v5 + 8 * (v3 | (4 * (v7 != ((v3 + a1) & a2) - 2283)))))();
}

uint64_t sub_25442B598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = 2066391179 * ((&a17 & 0x94761281 | ~(&a17 | 0x94761281)) ^ 0xC4AE6F66) + 1791;
  a18 = &a14;
  v21 = (*(v20 + 19488))(&a17);
  return (*(v20 + 8 * ((656 * (a17 == 585076288)) ^ v19)))(v21);
}

uint64_t sub_25442B680(uint64_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = v9 + 8;
  *(a1 + (a7 ^ v12) + v8) = vadd_s8(vsub_s8(*(v10 + (a7 ^ v12) + v8), vand_s8(vadd_s8(*(v10 + (a7 ^ v12) + v8), *(v10 + (a7 ^ v12) + v8)), a2)), a3);
  return (*(v7 + 8 * ((62 * (a6 == v12)) ^ v11)))();
}

uint64_t sub_25442B688(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = 1564307779 * ((1158644730 - (a1 | 0x450F83FA) + (a1 | 0xBAF07C05)) ^ 0x2DFDB016);
  v3 = *(a1 + 12) + v2;
  v4 = *(a1 + 16) + v2;
  v5 = *(a1 + 32) + v2;
  v6 = *a1;
  v7 = -1646336073 * v4 + 46447334;
  v8 = (v7 ^ 0xD6E170DF) & (2 * (v7 & 0x96F544DF)) ^ v7 & 0x96F544DF;
  v9 = ((2 * (v7 ^ 0xD723F86F)) ^ 0x83AD7960) & (v7 ^ 0xD723F86F) ^ (2 * (v7 ^ 0xD723F86F)) & 0x41D6BCB0;
  v10 = v9 ^ 0x40528490;
  v11 = (v9 ^ 0x1843020) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x75AF2C0) & v10 ^ (4 * v10) & 0x41D6BCB0;
  v13 = (v12 ^ 0x152B080) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x40840C30)) ^ 0x1D6BCB00) & (v12 ^ 0x40840C30) ^ (16 * (v12 ^ 0x40840C30)) & 0x41D6BCB0;
  v15 = v13 ^ 0x41D6BCB0 ^ (v14 ^ 0x1428800) & (v13 << 8);
  v16 = v7 ^ (2 * ((v15 << 16) & 0x41D60000 ^ v15 ^ ((v15 << 16) ^ 0x3CB00000) & (((v14 ^ 0x409434B0) << 8) & 0x41D60000 ^ 0x1420000 ^ (((v14 ^ 0x409434B0) << 8) ^ 0x56BC0000) & (v14 ^ 0x409434B0)))) ^ 0xA3691A97;
  v17 = 2066391179 * ((2 * (v19 & 0x7A8DF550) - v19 + 91359914) ^ 0xAA5588B2);
  v20 = *(a1 + 24);
  v19[1] = v16 + v17;
  v23 = v6;
  v21 = v17 + 841685399 * v5 + 575235418;
  v22 = v17 ^ (v3 + 2013068162);
  result = (*(*(&off_286663530 + v3 + 2013066611) + (v3 ^ 0x880303AB) - 1))(v19);
  *(a1 + 8) = v19[0];
  return result;
}

uint64_t sub_25442B9A0(_DWORD *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 742307843 * ((-547177076 - (a1 | 0xDF62BD8C) + (a1 | 0x209D4273)) ^ 0x3EBFCF26);
  v3 = a1[12] + v2;
  v4 = a1[11] + v2;
  v9[1] = v3 - 742307843 * ((1640214176 - (v9 | 0x61C3AEA0) + (v9 | 0x9E3C515F)) ^ 0x801EDC0A) + 542045597;
  v5 = *(&off_286663530 + (v3 + 473373735)) - 8;
  result = (*&v5[8 * (v3 ^ 0xE3C8ED62)])(v9);
  if (v4 > 1750188467)
  {
    if (v4 == 2035401139)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 1750188468)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *&v5[8 * ((((*&v5[8 * (v3 ^ 0xE3C8ED63)])((*(*(&off_286663530 + (v3 ^ 0xE3C8E48C)) + 6 * v7 + 3) - 393082906), 0x100004077774924) == 0) * ((v3 - 1180418138) & 0x6292DF79 ^ 0x351)) ^ (v3 + 473374377))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 1750188464)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 1750188467)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[2] = -585050628;
  return result;
}

uint64_t sub_25442BCEC()
{
  if (v1 >= 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = -v1;
  }

  v6 = v0 + v2 + (v3 ^ 0x6AB);
  v8 = v6 - 1490;
  v7 = v6 - 1490 < 0;
  v9 = 1490 - v6;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return (*(v4 + 8 * (((v5 > v10) * ((v3 + 601) ^ 0x255)) ^ v3)))();
}

uint64_t sub_25442BD3C@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6, int a7)
{
  v12 = (((&a3 | 0xFB8D19DA) - (&a3 & 0xFB8D19DA)) ^ 0x2A8F34A5) * a1;
  a3 = v12 - 1835950491;
  a4 = v7;
  a5 = &a2;
  a6 = (v11 - 183) ^ v12;
  a7 = v9 - v12 - 1079637739;
  v13 = (*(v8 + 8 * (v11 + 2103)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == (v11 ^ 0x7E3 ^ (v10 + 774))) * (v11 + 2033)) ^ v11)))(v13);
}

uint64_t sub_25442BDE8(uint64_t a1, int a2)
{
  v5 = v4 - 564;
  v6 = v3 - 578704318;
  v7 = v6 < ((v5 + 668) | 0x406) - 1983992911;
  v8 = a2 - 578704318 < v6;
  if (a2 - 578704318 < -1983991033 != v7)
  {
    v8 = v7;
  }

  return (*(v2 + 8 * ((83 * !v8) ^ v5)))();
}

uint64_t sub_25442BE60@<X0>(int a1@<W3>, int a2@<W8>)
{
  v5 = *(v3 + v2 * a1 + 36);
  v7 = v5 - 534904340 > (a2 ^ 0x9AF) + a2 - 1638 - 996642321 && v5 - 534904340 < SLODWORD(STACK[0x298]) && v5 != 1685746636;
  return (*(v4 + 8 * (v7 | a2)))();
}

uint64_t sub_25442BF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v13 = *(v8 + (v9 + v12)) ^ 0xA0;
  v14 = ((*(v8 + v9 + v12 + 573 * (v10 ^ a7) - 1144) ^ 0xA0) << 16) | ((*(v8 + (v9 + v12 + 3)) ^ 0xA0) << 24) | v13 | ((*(v8 + (v9 + v12 + 1)) ^ 0xA0) << 8);
  *(v7 + 4 * (((((v9 ^ 0x1E33567A) - 88975083) ^ v9 ^ ((v9 ^ 0x693208E0) - 1917646961) ^ ((v9 ^ 0x538451B4) - 1224384805) ^ ((v9 ^ 0x3FFBFFBEu) - 612699950)) >> 2) ^ 0x6DFBC24)) = v14 + a6 - 2 * (v14 & (a6 + 10) ^ v13 & 0xA);
  return (*(v11 + 8 * ((3271 * ((v9 + 4 + v12) < 0x40)) ^ (v10 - 466))))();
}

void sub_25442BF08(unsigned int a1@<W8>)
{
  v3 = *(v2 + 4);
  if (v3 + 1405286715 >= 0)
  {
    a1 = ((v1 + 1970849417) & 0x8A873E3B) - a1 - 1592;
  }

  *(v2 + 4) = a1 + v3;
}

uint64_t sub_25442BFA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = ((v3 - 316) | 0x624u) - 1838 + v2;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = a2 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((105 * ((v2 & 0xFFFFFFE0) != 32)) ^ (v3 + 732))))();
}

uint64_t sub_25442C130(uint64_t result)
{
  v1 = 1785193651 * (((result | 0xED81C447D9FA58CLL) - result + (result & 0xF127E3BB82605A73)) ^ 0x1AEC6A6A6E4349ACLL);
  v2 = *(result + 32) - v1;
  v3 = *(result + 16) ^ v1;
  v4 = v2 >= v3;
  v5 = v2 < v3;
  v6 = !v4;
  if (((*(result + 28) + v1) & 1) == 0)
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 4;
  if (!v7)
  {
    v8 = 12;
  }

  *(result + 24) = *(result + v8) ^ v1 ^ (*(result + 8) - v1);
  return result;
}

uint64_t sub_25442C1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, char *a28)
{
  v37 = v28 + 713;
  v38 = ((((v36 - 144) | 0x9BE664B0) - (v36 - 144) + ((v36 - 144) & 0x64199B48)) ^ 0xA1923A) * v29;
  v33[2] = v35;
  *v33 = &a17;
  *(v36 - 120) = (v28 + 433) ^ v38;
  *(v36 - 116) = v30 - v38 + 383967192 + v28 + 713;
  (*(v31 + 8 * (v28 + 1564)))(v36 - 144);
  a27 = &a21;
  a28 = &a19;
  *(v36 - 144) = v37 - 50899313 * ((2 * ((v36 - 144) & 0x18E5A850) - (v36 - 144) + 1729779629) ^ 0x7335CA36) + 288;
  v33[1] = v32;
  v33[2] = &a27;
  (*(v31 + 8 * (v37 ^ 0xFB0)))(v36 - 144);
  v33[4] = &a27;
  v33[5] = v32;
  *(v36 - 144) = v37 - 1388665877 * ((v36 - 144) ^ 0x8DAD62EC) - 1426;
  v33[2] = &a23;
  v33[3] = &a17;
  v33[1] = a13;
  v39 = (*(v31 + 8 * (v37 ^ 0xFA8)))(v36 - 144);
  return (*(v31 + 8 * ((88 * (((v37 ^ (v34 == 0)) & 1) == 0)) ^ v37)))(v39);
}

uint64_t sub_25442C258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = 7 * (v6 ^ 0x3E9);
  v14 = ((v7 + (v10 ^ (14 * (v6 ^ 0x3E9))) - 906) ^ *(v12 + 4 * v4)) + v8 + a3 * (*(*(v9 + 8) + a2) ^ v7);
  *(v12 + 4 * v4) = v14 + v7 - ((2 * v14) & 0x82041682);
  return (*(v5 + 8 * (v13 ^ ((a4 == 0) * v11))))();
}

uint64_t sub_25442C2D8()
{
  v10.val[1].i64[0] = (v3 + 13) & 0xF;
  v10.val[1].i64[1] = (v3 + 12) & 0xF;
  v10.val[2].i64[0] = (v3 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + 9) & 0xF;
  v10.val[3].i64[1] = v3 & 0xF ^ 8;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v7 = vqtbl4q_s8(v11, xmmword_254495210).u64[0];
  v8.i64[0] = 0x7373737373737373;
  v8.i64[1] = 0x7373737373737373;
  v10.val[0].i64[0] = (v3 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + 14) & 0xF;
  v11.val[2].i64[0] = vqtbl4q_s8(v10, xmmword_254495210).u64[0];
  v11.val[2].i64[1] = v7;
  v11.val[0] = vrev64q_s8(vmulq_s8(v11.val[2], v8));
  *(v5 - 15 + v3 - 1) = veorq_s8(veorq_s8(veorq_s8(*(v2 + v10.val[0].i64[0] - 15), *(v5 - 15 + v3 - 1)), veorq_s8(*(v0 + v10.val[0].i64[0] - 15), *(v10.val[0].i64[0] + v1 - 14))), vextq_s8(v11.val[0], v11.val[0], 8uLL));
  return (*(v6 + 8 * ((1076 * (((v4 + 1685) ^ 0x8E0) == (v3 & 0x10))) ^ v4)))();
}

void sub_25442C424(uint64_t a1)
{
  v2 = *(&off_286663530 + ((-35 * ((qword_27F5F9C50 + dword_27F5F9BC8) ^ 0xD2)) ^ byte_25448EB30[byte_254489B80[(-35 * ((qword_27F5F9C50 + dword_27F5F9BC8) ^ 0xD2))] ^ 0x30]) + 5);
  v3 = *(v2 - 4);
  v4 = *(&off_286663530 + (*(off_286663980 + (*(off_286663B10 + (-35 * (v3 ^ qword_27F5F9C50 ^ 0xD2)) - 4) ^ 0x61u) - 8) ^ (-35 * (v3 ^ qword_27F5F9C50 ^ 0xD2))) - 13);
  v5 = &v9[*(v4 - 4) ^ v3];
  v6 = 1865875933 * v5 - 0x1E71746347E125D2;
  v7 = 1865875933 * (v5 ^ 0x1E71746347E125D2);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = 1865875933 * (*(v2 - 4) ^ 0x47E125D2 ^ v7);
  v8 = *(&off_286663530 + ((-35 * ((qword_27F5F9C50 + dword_27F5F9BC8) ^ 0xD2)) ^ byte_25448EB30[byte_254489B80[(-35 * ((qword_27F5F9C50 + dword_27F5F9BC8) ^ 0xD2))] ^ 0x30]) - 4) - 8;
  (*&v8[8 * (*(off_2866639E8 + (*(off_2866636E0 + v4) ^ 0x41u) - 8) ^ v4) + 18472])(*(&off_286663530 + (*(off_2866636F0 + (*(off_286663A98 + (-35 * (*(v2 - 4) ^ 0xD2 ^ v7)) - 12) ^ 0xF6u) - 8) ^ (-35 * (*(v2 - 4) ^ 0xD2 ^ v7))) - 51) - 4, sub_254423940);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_25442C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, int a23)
{
  v25 = (((a23 ^ 0x870544BC) + 2029697860) ^ ((a23 ^ 0x5E2AFE66) - 1579875942) ^ ((a23 ^ a20 ^ 0xFBF03771) + 68143974)) + 1593786015;
  v26 = (v25 ^ 0xFBC92F3D) & (2 * (v25 & 0xC3E04FA1)) ^ v25 & 0xC3E04FA1;
  v27 = ((2 * (v25 ^ 0x7BC92D7D)) ^ 0x7052C5B8) & (v25 ^ 0x7BC92D7D) ^ (2 * (v25 ^ 0x7BC92D7D)) & 0xB82962DC;
  v28 = v27 ^ 0x88292244;
  v29 = (v27 ^ 0x10004088) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xE0A58B70) & v28 ^ (4 * v28) & 0xB82962DC;
  v31 = (v30 ^ 0xA0210250) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x1808608C)) ^ 0x82962DC0) & (v30 ^ 0x1808608C) ^ (16 * (v30 ^ 0x1808608C)) & 0xB82962D0;
  v33 = (v25 ^ (2 * ((((v32 ^ 0x3829421C) << 8) & 0xB8296200 ^ 0x28200000 ^ (((v32 ^ 0x3829421C) << 8) ^ 0x29620000) & (v32 ^ 0x3829421C)) & (((v32 ^ 0x80002000) & (v31 << 8) ^ v31) << 16) ^ (v32 ^ 0x80002000) & (v31 << 8) ^ v31))) != 3286257569;
  return (*(v23 + 8 * ((v33 | (16 * v33)) ^ (v24 + 38))))(a1, a2, a3, a4, a5, 2520, 1377, a18);
}

uint64_t sub_25442C864()
{
  *(v3 + 176) = v1 - 1712;
  LODWORD(STACK[0x468]) = -585050732;
  return (*(v2 + 8 * ((((*(v3 + 240) == 0) ^ (v0 - 1)) & 1 | (4 * (((*(v3 + 240) == 0) ^ (v0 - 1)) & 1))) ^ (v0 - 533))))();
}

uint64_t sub_25442C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v30 = 143681137 * ((((2 * (v29 - 144)) | 0x462ECBFE) - (v29 - 144) + 1558747649) ^ 0xC24FEE2F);
  *(v27 + 8) = &a25;
  *(v29 - 128) = v30 + v25 - 864;
  *(v29 - 144) = v30 ^ 0x535931DC;
  v31 = (*(v26 + 8 * (v25 + 396)))(v29 - 144);
  return (*(v26 + 8 * ((((v25 ^ 0x4C0) + ((v25 - 1424) | 0x150) - 1682) * (v28 == 0)) ^ (v25 + 362))))(v31);
}

uint64_t sub_25442CA44()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v2 + (v7 & 0xF)) ^ *(v0 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 1);
  return (*(v6 + 8 * ((38 * (v7 == 0)) ^ (v4 - 222))))();
}

uint64_t sub_25442CA9C@<X0>(int a1@<W8>)
{
  v3 = a1 - (v1 ^ 0x2AA) + 32 * (v1 ^ 0x2AA) - 1512726136;
  v5 = v3 > -1974462559 && v3 < SLODWORD(STACK[0x2A0]);
  return (*(v2 + 8 * ((v5 * (v1 + 369)) ^ v1)))();
}

uint64_t sub_25442CAEC@<X0>(uint64_t a1@<X4>, int a2@<W5>, uint64_t a3@<X8>)
{
  v5 = *(v4 + a1);
  v6 = a1 - 1;
  *(a3 + v6) = v5;
  return (*(v3 + 8 * ((1308 * (v6 == ((a2 + 1258) ^ 0x7B8))) ^ a2)))();
}

uint64_t sub_25442CB24(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = 1388665877 * ((((2 * (a1 ^ 0x17587DCA)) | 0xAD7A4B42) - (a1 ^ 0x17587DCA) - 1455236513) ^ 0xCC483A87);
  v3 = *(a1 + 44) ^ v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v8 = (((*a1 ^ v2 ^ 0x813018B1) + 2127554383) ^ ((*a1 ^ v2 ^ 0x9609B34B) + 1777749173) ^ ((*a1 ^ v2 ^ 0x7112558B) - 1897026955)) - 1920071543;
  v9 = 1564307779 * (((&v11 | 0xDBEC828F) + (~&v11 | 0x24137D70)) ^ 0x4CE14E9D);
  v3 += 1776823352;
  v16 = v3 + v9 + 646;
  v15 = v6;
  v17 = v4;
  v14 = v8 ^ v9;
  v13 = v7;
  v11 = v5;
  result = (*(*(&off_286663530 + v3) + v3 + 2372))(&v11);
  *(a1 + 40) = v12;
  return result;
}

void sub_25442CCC4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a5 = v6;
  a4 = (v7 + 143) ^ (1785193651 * ((2 * ((&a3 ^ 0x33124DE2) & 0x74C2C182) - (&a3 ^ 0x33124DE2) + 188563064) ^ 0x2BF39FBA));
  a3 = a1;
  (*(v5 + 8 * (v7 ^ 0x838)))(&a3);
  JUMPOUT(0x25442A278);
}

void sub_25442CD3C()
{
  v0 = MEMORY[0x28223BE20]();
  if (*(v0 + 24))
  {
    v2 = *(v0 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v1 = *(v0 + 20) ^ (2066391179 * ((-2 - ((~v0 | 0xD86E0A28) + (v0 | 0x2791F5D7))) ^ 0x77498830));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_25442CE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3 - (**(a2 + 8) == 0);
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 742196933;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v5 = *(a2 + 8) + (*(a2 + 4) - v4);
  v6 = 1082434553 * ((((2 * &v8) | 0x7146693E) - &v8 + 1197263713) ^ 0x23E4C215);
  v8 = *(a1 + 96) + 800;
  v10 = v5;
  v11 = v6 ^ 0x522;
  v12 = v4 - v6 + 1059115508;
  (*(a3 + 19560))(&v8);
  return (-1486398106 - 1794373871 * v9);
}

void sub_25442CFAC(int a1@<W8>)
{
  if (a1 == (v2 ^ (v3 + 435) ^ 0x1D5))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  JUMPOUT(0x25442CFC8);
}

void sub_25442D00C()
{
  *v6 = *v2;
  *v5 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x606416C6606416C6;
  v3 = *(v2 + 24);
  v4 = *(v2 + 20) & (152 * (v0 ^ 0x5D6) - 1826);
  *(v2 + 16) = 1704601733;
  *(v2 + 20) = v4;
  *(v7 + 24) = v3;
}

uint64_t sub_25442D0D8@<X0>(int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = (((a1 | 0x804) - 1045) ^ 0x4E7) & (v4 + 15);
  v9 = v8 + 1 - v4;
  v10 = v3 + v9;
  v11 = v3 + v8 + 1;
  v12 = v1 + v9;
  v13 = v1 + v8 + 1;
  v14 = v8 + v2 + 2;
  v16 = v11 > v5 && v10 < v7;
  v18 = v13 > v5 && v12 < v7 || v16;
  if (v14 <= v5 || v14 - v4 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((v20 * (((a1 | 0x804) - 597) ^ 0x765)) ^ (a1 | 0x804))))();
}

uint64_t sub_25442D1E0()
{
  v5 = *(v2 + 28) - v0 - 2081567719;
  v7 = (*(v3 + 20) & 1) == 0 || v5 > 0xFFFFFFBE;
  return (*(v4 + 8 * ((v7 * ((v1 - 1035) ^ 0x1F5 ^ (39 * (v1 ^ 0x4F3)))) ^ v1)))();
}

uint64_t sub_25442D244(uint64_t a1, uint64_t a2, int a3)
{
  v10 = v7 - 1;
  *(v8 + v10) = *(v3 + v10) ^ *(v4 + (v10 & 0xF)) ^ *((v10 & 0xF) + v6 + 5) ^ (89 * (v10 & 0xF)) ^ *((v10 & 0xF) + v5 + 2) ^ 0xA0;
  return (*(v9 + 8 * ((28 * (v10 == ((a3 + 280) | 0x20u) - 2016)) ^ (a3 + 193))))();
}

uint64_t sub_25442D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  v40 = (v37 - a6 + 1829104100) & 0xA82E77C5;
  v41 = 2066391179 * ((v39 - 160) ^ 0xAF278218);
  STACK[0x2D8] = &a28;
  *(v39 - 160) = v37 - v41 + 184;
  *(v39 - 156) = a15 - v41 + 1047246866;
  v42 = (*(v38 + 8 * (v37 + 2379)))(v39 - 160);
  v43 = a37 & (v40 ^ 0xBF);
  *(&a28 + v43) = 32;
  return (*(v38 + 8 * ((1618 * (v43 > 0x37)) ^ v37)))(v42);
}

uint64_t sub_25442D398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = (*(v46 + 8 * (v45 + 2001)))(3);
  v48 = *(&off_286663530 + (v45 ^ 0x187));
  *(v48 - 4) = v47;
  v49 = v48;
  (*(v46 + 8 * (v45 + 2022)))();
  v50 = (*(v46 + 8 * (v45 ^ 0x873)))(66);
  v51 = *(&off_286663530 + (v45 ^ 0x1C5));
  *v51 = v50;
  (*(v46 + 8 * (v45 ^ 0x866)))();
  v52 = (*(v46 + 8 * (v45 + 2001)))(2);
  v53 = *(&off_286663530 + (v45 ^ 0x171));
  *v53 = v52;
  *v52 = 7196;
  **v51 = 0;
  **(&off_286663530 + v45 - 339) = 0;
  v54 = *v53;
  v55 = *v51;
  v56 = *(v49 - 4);
  v55[64] = 1;
  **(&off_286663530 + v45 - 282) = 51;
  v55[9] = -15;
  v54[1] = 79;
  **(&off_286663530 + (v45 ^ 0x141)) = 80;
  **(&off_286663530 + v45 - 300) = -77;
  *v54 = -22;
  v55[11] = 73;
  *v56 = 68;
  v55[20] = -44;
  **(&off_286663530 + (v45 ^ 0x16B)) = -121;
  v55[36] = -11;
  v55[45] = -113;
  v55[49] = 25;
  *(v56 + 1) = 6695;
  **(&off_286663530 + v45 - 286) = -122;
  **(&off_286663530 + (v45 ^ 0x165)) = 88;
  v55[26] = -34;
  v55[60] = -5;
  **(&off_286663530 + v45 - 398) = 96;
  **(&off_286663530 + (v45 ^ 0x1BC)) = 80;
  **(&off_286663530 + (v45 ^ 0x1A5)) = 17;
  **(&off_286663530 + (v45 ^ 0x1EB)) = 119;
  v55[52] = 47;
  v55[50] = 102;
  v55[59] = v44;
  v55[22] = -36;
  v55[29] = 59;
  v55[27] = 34;
  v55[40] = -80;
  v55[13] = 23;
  **(&off_286663530 + (v45 ^ 0x1BD)) = 99;
  v55[53] = 3;
  **(&off_286663530 + (v45 ^ 0x14C)) = -109;
  v55[39] = 54;
  v55[57] = 73;
  **(&off_286663530 + v45 - 303) = 83;
  v55[37] = -52;
  v55[63] = -72;
  v57 = *v51;
  *(v57 + 65) = -85;
  *(v57 + 5) = -14;
  *(v57 + 54) = 32;
  *(v57 + 58) = 113;
  *(v57 + 8) = 16909;
  *(v57 + 28) = -39;
  *(v57 + 47) = -4065;
  *(v57 + 21) = 15;
  *(v57 + 41) = -29527;
  *(v57 + 38) = -121;
  *(v57 + 31) = 8824;
  *(v57 + 10) = -98;
  *(v57 + 25) = 69;
  *(v57 + 7) = 27031;
  *(v57 + 23) = -86;
  *(v57 + 14) = -90;
  *(v57 + 62) = -105;
  *(v57 + 35) = 52;
  *(v57 + 33) = 15089;
  *(v57 + 55) = -30385;
  *(v57 + 46) = -17;
  *(v57 + 4) = -92;
  *(v57 + 30) = 36;
  *(v57 + 15) = 72;
  *(v57 + 51) = -15;
  *(v57 + 12) = -15;
  *(v57 + 61) = 73;
  *(v57 + 9) = -9761;
  *(v57 + 43) = 19744;
  *(v57 + 6) = 45;
  *(v57 + 24) = -72;
  return (*(v46 + 8 * ((((v45 + 572447270) & 0xDDE127FF) + 1233) ^ 0x2F)))(a44);
}

uint64_t sub_25442E668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = (a6 - 101376275) & 0x60AE0FE;
  v12 = 4 * (a2 + ((v11 + 30363486) & 0xE30B757)) - 2968795248;
  v13 = (((*(*(v6 + 8) + v12) ^ 0x20CA1437) - 550114359) ^ ((*(*(v6 + 8) + v12) ^ 0x2ECB9A9F) - 785095327) ^ (((186 * (v11 ^ 0xA4) + 1325630209) ^ *(*(v6 + 8) + v12)) - 1325630953)) + v10;
  v14 = (((*(*(v7 + 8) + v12) ^ 0xFFEAFCCD) + 1377075) ^ ((*(*(v7 + 8) + v12) ^ 0xD658DC1D) + 698819555) ^ ((*(*(v7 + 8) + v12) ^ 0x68B02B91) - 1756375953)) + v10;
  v15 = v13 < v9;
  v16 = v13 > v14;
  v17 = v15 ^ (v14 < v9);
  v18 = v16;
  if (v17)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  return (*(v8 + 8 * ((31 * v19) ^ v11)))();
}

uint64_t sub_25442E7B0@<X0>(int a1@<W8>, uint64_t a2, int a3, char a4, __int16 a5, char a6, char *a7, int a8, unsigned int a9, char *a10, uint64_t a11)
{
  v14 = a1 - 333;
  v15 = 742307843 * ((2 * (&a7 & 0x7FDE82B8) - &a7 + 2194755) ^ 0x1E03F016);
  a7 = &a6;
  a8 = v15 + v14 + 253;
  a9 = v15 + 128742217;
  a10 = &a4;
  a11 = v11;
  v16 = (*(v13 + 8 * (v14 + 2360)))(&a7);
  return (*(v13 + 8 * (((*(v11 + 24) == v12) * ((13 * (v14 ^ 0xD5) - 1394860380) & 0x5323D9F7 ^ 0x1A5)) ^ v14)))(v16);
}

uint64_t sub_25442E8CC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13 = (&a10 + 4 * v11 + 16);
  v14 = vdupq_n_s32(0x41020B41u);
  v13[-1] = v14;
  *v13 = v14;
  return (*(v12 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFF8) == 8) * ((16 * v10) ^ 0x3D32)) ^ (v10 + 921))))();
}

uint64_t sub_25442E928@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((229 * (v5 == ((v3 - 941623894) & 0x38200D5C ^ 0x54CLL))) ^ (v3 + 287))))();
}

uint64_t sub_25442E978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v26 = 1082434553 * ((~((v25 - 160) | 0x98481103) + ((v25 - 160) & 0x98481103)) ^ 0xFCF01876);
  STACK[0x258] = &a19;
  STACK[0x240] = &a17;
  STACK[0x230] = &a21;
  *(v25 - 136) = v26 + v24 + 918;
  *(v25 - 148) = v21 + ((v23 + (v24 ^ 0x617) - 1371) ^ 0x3DBEBC9B) + v26;
  STACK[0x260] = a13;
  STACK[0x250] = &a15;
  v27 = (*(v22 + 8 * (v24 + 1590)))(v25 - 160);
  return (*(v22 + 8 * ((3008 * (*(v25 - 152) == 585076288)) ^ v24)))(v27);
}

uint64_t sub_25442F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  a17 = v18 - 1388665877 * (&a17 ^ 0x8DAD62EC) - 542398633;
  v21 = (*(v19 + 8 * (v18 + 320)))(&a17);
  return (*(v19 + 8 * (((a18 == 585076288) * (((v18 ^ 0xBF2) - 2124586738) ^ (v20 + 1974))) ^ v18)))(v21);
}

uint64_t sub_25442F10C@<X0>(uint64_t a1@<X8>)
{
  v6.i64[0] = 0x4040404040404040;
  v6.i64[1] = 0x4040404040404040;
  v7.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v7.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v8 = ((397 * (v5 ^ (v3 + 1828))) ^ 0xFFFFFFFFFFFFF83ELL) + v4;
  v9 = *(v2 + v8 - 15);
  v10 = *(v2 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v6)), v7);
  *(v11 - 31) = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), v6)), v7);
  return (*(v1 + 8 * ((98 * ((v4 & 0xFFFFFFE0) == 32)) ^ (v5 + 1817949525))))();
}

uint64_t sub_25442F294()
{
  v5 = v4[623];
  if (v3 - (v0 - 1340105759) >= ~(v0 - 1340105759))
  {
    ++v5;
  }

  *v4 = v5;
  return (*(v2 + 8 * ((21 * (v1 + ((v0 - 1340105759) & 0xB9C16890) != 1)) ^ 0x3AD)))();
}

uint64_t sub_25442F2D0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  v23 = &a20 + a1;
  *v23 = 0xA0A0A0A0A0A0A0A0;
  *(v23 + 1) = 0xA0A0A0A0A0A0A0A0;
  return (*(v22 + 8 * ((41 * (((((v21 - 647310073) & 0x26952ADFu) - 397) ^ 0x141) != ((((v21 - 647310073) & 0x26952ADF) - 750) & v20))) ^ (v21 - 647310073) & 0x26952ADFu)))();
}

uint64_t sub_25442F33C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34)
{
  v42 = v38 - v39 - 601;
  v44.val[0].i64[0] = (v42 + 88) & 0xF;
  v44.val[0].i64[1] = (v42 + 103) & 0xF;
  v44.val[1].i64[0] = (v42 + 102) & 0xF;
  v44.val[1].i64[1] = (v42 + ((((a1 + 92) | 0x80) - 118) & 0xF7)) & 0xF;
  v44.val[2].i64[0] = (v42 + 100) & 0xF;
  v44.val[2].i64[1] = (v42 + 99) & 0xF;
  v44.val[3].i64[0] = (v42 + 98) & 0xF;
  v44.val[3].i64[1] = (v42 + 89) & 0xF ^ 8;
  *(v40 + v42 + 593) = veor_s8(veor_s8(veor_s8(*(v36 + v44.val[0].i64[0] - 7), *(v34 + v42 + 593)), veor_s8(*(v37 + v44.val[0].i64[0] - 7), *(v35 + v44.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v44, xmmword_254495220), 0x7575757575757575)));
  return (*(v41 + 8 * ((2020 * (v42 - ((((a1 - 164) | 0x80) - 988) & a34) != -593)) ^ ((a1 - 164) | 0x80))))(-((((a1 - 164) | 0x80) - 988) & a34), xmmword_254495220);
}

uint64_t sub_25442F4E0(uint64_t a1)
{
  v5 = *(v2 + 348);
  v6 = (*(a1 + 16) ^ v1) + 1270315761;
  v7 = (v4 ^ 0xE0B) - 884169784 + v5 > v6;
  if (v5 > 0x34B3542C != v6 < ((v4 - 705862341) & 0x2A1297F6u) - 884168543)
  {
    v7 = v5 > 0x34B3542C;
  }

  return (*(v3 + 8 * ((39 * !v7) | v4)))();
}

uint64_t sub_25442F604(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = HIDWORD(v7) + HIDWORD(v9) + (*(v12 + 4 * v6) ^ v5);
  *(v12 + 4 * a5) = v13 + v5 - ((a2 + ((v10 - 608642525) & 0x2447277F) - 1339) & (2 * v13));
  *(v12 + 4 * v6) = (v13 >> (((v10 + 100) & 0xDFu) + 68)) + v5 - 2 * ((v13 >> (((v10 + 100) & 0xDFu) + 68)) & 1);
  return (*(v11 + 8 * (v10 ^ (3006 * (a1 + 1 == v8)))))();
}

uint64_t sub_25442F78C(int8x16_t a1)
{
  v6 = (v3 - 32);
  v7 = (v4 - 32);
  v8 = veorq_s8(*v7, a1);
  v6[-1] = veorq_s8(v7[-1], a1);
  *v6 = v8;
  return (*(v5 + 8 * (((v2 == 32) * (v1 + 2022)) ^ v1)))();
}

uint64_t sub_25442F888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W8>, __n128 a5@<Q1>, int8x16_t a6@<Q4>, uint64_t a7@<D5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v19 = a2 - 16;
  v20 = (v19 - 1) & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a5 - 1), a6).u64[0];
  v22.i64[1] = a7;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*(v12 + v19), *(v13 + v20 - 15)), *(v20 + v14 - 13)), *(a1 + v20 + v15 - 1786)));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a9), vmulq_s8(v22, a8)));
  *(v17 + v19) = vextq_s8(v24, v24, 8uLL);
  return (*(v18 + 8 * (((a3 == 16) * a4) ^ v16)))();
}

uint64_t sub_25442F9B0(int a1, uint64_t a2, unint64_t a3)
{
  v9 = (v6 - 1) & 0xF;
  v10 = -v7 - v6 + 1;
  v12 = a3 >= 0x10 && (v10 + v4 + v9) >= 0x10 && v10 + v5 + v9 >= ((a1 - 363) | 1u) - 701;
  v13 = v10 + v3 + v9;
  v15 = !v12 || v13 < 0x10;
  return (*(v8 + 8 * ((114 * v15) ^ a1)))();
}

uint64_t sub_25442FB0C@<X0>(int a1@<W8>)
{
  v10 = v2 + 1;
  v11 = v1 < v4;
  *(*(v8 + 8) + 4 * v10) = *(*(v8 + 8) + 4 * (v10 + a1));
  if (v11 == v10 + v5 < v6)
  {
    v11 = v10 + v5 < v1;
  }

  return (*(v9 + 8 * ((!v11 * v7) ^ v3)))();
}

void sub_25442FB14()
{
  v7 = (v3 ^ 0x3CDCEAC ^ (v5 * v6)) & (2 * (v3 & (v4 + 65))) ^ v3 & (v4 + 65);
  v8 = ((2 * (v3 ^ 0x11FC141)) ^ 0x5E41A36) & (v3 ^ 0x11FC141) ^ (2 * (v3 ^ 0x11FC141)) & 0x82F20D1A;
  v9 = (v8 ^ 0x80E00411) & (4 * v7) ^ v7;
  v10 = ((4 * (v8 ^ 0x82120509)) ^ 0xBC8346C) & (v8 ^ 0x82120509) ^ (4 * (v8 ^ 0x82120509)) & 0x82F20D18;
  v11 = (v10 ^ 0x2C00413) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x80320913)) ^ 0x2F20D1B0) & (v10 ^ 0x80320913) ^ (16 * (v10 ^ 0x80320913)) & 0x82F20D10;
  v13 = v11 ^ 0x82F20D1B ^ (v12 ^ 0x220010B) & (v11 << 8);
  v14 = v3 ^ (2 * ((v13 << 16) & 0x2F20000 ^ v13 ^ ((v13 << 16) ^ 0xD1B0000) & (((v12 ^ 0x80D20C0B) << 8) & 0x82F20000 ^ 0xF20000 ^ (((v12 ^ 0x80D20C0B) << 8) ^ 0x720D0000) & (v12 ^ 0x80D20C0B))));
  *v16 = (HIBYTE(v14) ^ 0x86) - ((v14 >> 23) & 0x40) - 96;
  v16[1] = (BYTE2(v14) ^ 0x2D) - ((2 * (BYTE2(v14) ^ 0x2D)) & 0x40) - 96;
  v16[2] = (BYTE1(v14) ^ 0xD6) - ((v14 >> 7) & 0x40) - 96;
  v16[3] = v14 ^ 0xCC;
  v15 = v2 - ((2 * v2) & 0xB7046F971FF0BE6CLL) - 0x247DC8347007A0CALL;
  v16[4] = (HIBYTE(v15) ^ 0xDB) - ((2 * HIBYTE(v15)) & 0x40) - 96;
  v16[5] = (BYTE6(v15) ^ 0x82) - ((2 * BYTE6(v15)) & 0x40) - 96;
  v16[6] = (BYTE5(v15) ^ 0x37) - ((2 * (BYTE5(v15) ^ 0x37)) & 0x40) - 96;
  v16[7] = (BYTE4(v15) ^ 0xCB) - ((2 * BYTE4(v15)) & 0x40) - 96;
  v16[8] = (((v2 - ((2 * v2) & 0x1FF0BE6C) - 1879548106) >> 24) ^ 0x8F) - ((2 * ((v2 - ((2 * v2) & 0x1FF0BE6C) - 1879548106) >> 24)) & 0x40) - 96;
  v16[9] = (BYTE2(v15) ^ 0xF8) - 2 * ((BYTE2(v15) ^ 0xF8) & 0x24 ^ BYTE2(v15) & 4) - 96;
  v16[10] = (BYTE1(v15) ^ 0x5F) - ((2 * BYTE1(v15)) & 0x40) - 96;
  v16[11] = (v2 - ((2 * v2) & 0x6C) + 54) ^ 0x96;
  *v0 = *(v1 + 24);
}

uint64_t sub_25442FDE8(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, int8x16_t *a6)
{
  v10 = (v9 + v6);
  v11 = vaddq_s8(vsubq_s8(v10[1], vandq_s8(vaddq_s8(v10[1], v10[1]), a4)), a1);
  *a6 = vaddq_s8(vsubq_s8(*v10, vandq_s8(vaddq_s8(*v10, *v10), a4)), a1);
  a6[1] = v11;
  return (*(v8 + 8 * v7))();
}

uint64_t sub_25442FE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v17 = (*(a6 + 4 * v10) ^ v6) + (v9 ^ HIDWORD(a5));
  v18 = v17 - ((2 * v17) & 0x220C06FF2) + v12;
  *(a6 + 4 * a1) = v18 ^ v13;
  *(a6 + 4 * v10) = (v18 >> (((v16 + 96) | 0x10u) + 112)) ^ v14;
  return (*(v11 + 8 * (v16 ^ ((v8 + 1 == v7) * v15))))();
}

uint64_t sub_25442FF5C(uint64_t a1)
{
  v6 = 978 * (v1 ^ 0x3F0);
  *v3 = a1;
  *v2 = v11 ^ v4 ^ v6;
  v7 = v6 ^ 0x621;
  v13 = v10;
  v12 = (v6 ^ 0x424) - 1388665877 * ((&v12 & 0x82431BD9 | ~(&v12 | 0x82431BD9)) ^ 0xF01186CA) + 420;
  (*(v5 + 8 * ((v6 ^ 0x424) + 1503)))(&v12);
  v12 = v7 - 1388665877 * (((&v12 | 0x5DF6FF68) - &v12 + (&v12 & 0xA2090090)) ^ 0xD05B9D84) + 927;
  v13 = v9;
  (*(v5 + 8 * (v7 ^ 0x8DA)))(&v12);
  return 0;
}

void sub_2544300EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v36 - 144) = v34;
  *(v36 - 136) = &a32;
  *(v36 - 128) = v32;
  *(v36 - 120) = ((v35 ^ 0x2E3) + 1124) ^ (1785193651 * ((((v36 - 144) ^ 0x7FE58CAF) - 541477290 - 2 * (((v36 - 144) ^ 0x7FE58CAF) & 0xDFB9B656)) ^ 0xB380D6D9));
  *(v36 - 112) = v34;
  *(v36 - 104) = v33;
  JUMPOUT(0x254430168);
}

uint64_t sub_254430288@<X0>(unsigned int a1@<W8>)
{
  v9 = v3 < v5;
  *(v8 - 220 + v1) = *(v7 + v2) - ((4 * (a1 ^ 9) - 4) & (2 * *(v7 + v2))) - 96;
  v10 = v2 + 1;
  if (v9 == v10 > v4)
  {
    v9 = v10 + v5 < v3;
  }

  return (*(v6 + 8 * (((16 * !v9) | (32 * !v9)) ^ a1)))();
}

uint64_t sub_2544303B8@<X0>(int a1@<W8>, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, __int16 a8, char a9, __int16 a10, char a11, uint64_t a12, uint64_t a13, char *a14, char *a15)
{
  v19 = (a1 + 1865365918) & 0x90D0C7AD;
  a15 = &a11;
  a13 = a5;
  LODWORD(a12) = (a1 + 1124) ^ (((((2 * &a12) | 0x36DC1342) - &a12 - 460196257) ^ 0xF41943A) * v17);
  (*(v18 + 8 * (a1 ^ 0x8A1)))(&a12);
  a13 = a5;
  a14 = &a7;
  a15 = &a3;
  HIDWORD(a12) = v19 - 143681137 * (&a12 ^ 0x61588BD0) + 397;
  (*(v18 + 8 * (v19 ^ 0xA51)))(&a12);
  a15 = &a9;
  a13 = a5;
  LODWORD(a12) = (v19 + 792) ^ ((&a12 ^ 0x142F9D9B) * v17);
  (*(v18 + 8 * (v19 + 1621)))(&a12);
  HIDWORD(a13) = (v19 + 149) ^ (1388665877 * ((((&a12 | 0xDBDD57EE) ^ 0xFFFFFFFE) - (~&a12 | 0x2422A811)) ^ 0xA98FCAFD));
  a12 = a5;
  v15 = (*(v18 + 8 * (v19 ^ 0xA56)))(&a12);
  return (*(v18 + 8 * (v19 ^ (2 * (a13 != ((2 * v19) ^ 0x22DF8808))))))(v15);
}

void sub_254430438()
{
  v4 = ((v3 + 1004548202) & 0xC41FCF77 ^ 0x75C1AFBE) - 574479069 * (*(v0 + 12) + v2);
  v5 = ((v4 ^ 0x4615D4B2) - 1788876774) ^ v4 ^ ((v4 ^ 0x626E25DB) - 1323034255) ^ ((v4 ^ 0xF731CBCA) + 612104034) ^ ((v4 ^ 0xFFFFF9F7) + 750110045);
  *v6 = (HIBYTE(v5) ^ 0x2C) - ((2 * (HIBYTE(v5) ^ 0x2C)) & 0x40) - 96;
  v6[1] = (BYTE2(v5) ^ 0xB5) - 2 * ((BYTE2(v5) ^ 0xB5) & 0x28 ^ BYTE2(v5) & 8) - 96;
  v6[2] = (BYTE1(v5) ^ 0xC3) - ((v5 >> 7) & 0x40) - 96;
  v6[3] = v5 ^ 0xF4;
  *(v0 + 8) = *(v1 + 24);
}

uint64_t sub_254430588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __int128 a47, __int128 a48, __int128 a49, __int128 a50)
{
  HIDWORD(v138) = HIDWORD(a11) - 1560337524;
  v135.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v135.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v136 = vdupq_n_s32(0x22DF8E60u);
  v137 = vdupq_n_s32(0x22DF8E40u);
  v140 = v55 - 16;
  LODWORD(v138) = a7 - 839490162;
  HIDWORD(a13) = 453;
  v139 = *(v52 + 8 * (v53 + v50 + 21));
  v57 = HIDWORD(a29);
  v58 = a30;
  v59 = a31;
  if (BYTE4(a32) == 2)
  {
    v141 = vld4q_s8(&a20 + 4);
    v89 = veorq_s8(v141.val[0], v135);
    v90 = vmovl_high_u8(v89);
    v91 = vmovl_u8(*v89.i8);
    v92 = veorq_s8(v141.val[1], v135);
    _Q21 = vmovl_high_u8(v92);
    _Q20 = vmovl_u8(*v92.i8);
    v95 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v96 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v97 = veorq_s8(v141.val[2], v135);
    v98 = vmovl_u8(*v97.i8);
    v99 = vmovl_high_u8(v97);
    v141.val[0] = veorq_s8(v141.val[3], v135);
    v141.val[1] = vmovl_u8(*v141.val[0].i8);
    v141.val[2] = vmovl_u16(*v141.val[1].i8);
    v141.val[1] = vmovl_high_u16(v141.val[1]);
    v141.val[0] = vmovl_high_u8(v141.val[0]);
    v141.val[3] = vmovl_u16(*v141.val[0].i8);
    v141.val[0] = vmovl_high_u16(v141.val[0]);
    v100 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v99, 8uLL)), vshlq_n_s32(vmovl_high_u16(v90), 0x18uLL)), v141.val[0]);
    v101 = vorrq_s8(vorrq_s8(vorrq_s8(v96, vshll_n_u16(*v99.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v90.i8), 0x18uLL)), v141.val[3]);
    v102 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v98, 8uLL)), vshlq_n_s32(vmovl_high_u16(v91), 0x18uLL)), v141.val[1]);
    v103 = vorrq_s8(vorrq_s8(vorrq_s8(v95, vshll_n_u16(*v98.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v91.i8), 0x18uLL)), v141.val[2]);
    v141.val[0] = veorq_s8(vandq_s8(v100, v136), (*v141.val & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
    v141.val[3] = veorq_s8(vandq_s8(v101, v136), (*&v141.val[3] & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
    v141.val[1] = veorq_s8(vandq_s8(v102, v136), (*&v141.val[1] & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
    v141.val[2] = veorq_s8(vandq_s8(v103, v136), (*&v141.val[2] & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
    v141.val[0] = vaddq_s32(vsubq_s32(v100, vaddq_s32(v141.val[0], v141.val[0])), v137);
    v141.val[3] = vaddq_s32(vsubq_s32(v101, vaddq_s32(v141.val[3], v141.val[3])), v137);
    v141.val[1] = vaddq_s32(vsubq_s32(v102, vaddq_s32(v141.val[1], v141.val[1])), v137);
    v141.val[2] = vaddq_s32(vsubq_s32(v103, vaddq_s32(v141.val[2], v141.val[2])), v137);
    LODWORD(a47) = v141.val[2].i32[0];
    *(&a47 + 4) = vextq_s8(v141.val[2], v141.val[1], 4uLL);
    *(&a48 + 4) = vextq_s8(v141.val[1], v141.val[3], 4uLL);
    *(&a49 + 4) = vextq_s8(v141.val[3], v141.val[0], 4uLL);
    *(&a50 + 4) = vextq_s8(v141.val[0], v141.val[0], 4uLL).u64[0];
    HIDWORD(a50) = v141.val[0].i32[3];
    v104 = &a47 + v54 + 1171652431;
    *v104 = __ROR4__(*(v104 - 3) ^ v51 ^ *(v104 - 8) ^ *(v104 - 14) ^ *(v104 - 16), 31) ^ 0x1E6E67BF;
    return (*(v52 + 8 * ((127 * (v55 == 1171652368)) ^ 0x8B1u)))(a1, &a20 + 4, v57, v59, a5, v58, 2043595200, 106493183, a9, a10, a11, a12, a13, a14, 0x58440000000018ELL, v138, v139, v140, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
  }

  else if (BYTE4(a32) == 1)
  {
    v142 = vld4q_s8(&a20 + 4);
    v60 = veorq_s8(v142.val[0], v135);
    v61 = vmovl_high_u8(v60);
    v62 = vmovl_high_u16(v61);
    v63 = vmovl_u16(*v61.i8);
    v64 = vmovl_u8(*v60.i8);
    v65 = vmovl_high_u16(v64);
    v66 = vmovl_u16(*v64.i8);
    v67 = veorq_s8(v142.val[1], v135);
    v68 = vmovl_u8(*v67.i8);
    v69 = vmovl_high_u8(v67);
    v70 = veorq_s8(v142.val[2], v135);
    _Q25 = vmovl_u8(*v70.i8);
    _Q24 = vmovl_high_u8(v70);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v142.val[0] = veorq_s8(v142.val[3], v135);
    v142.val[1] = vmovl_u8(*v142.val[0].i8);
    v142.val[2] = vmovl_u16(*v142.val[1].i8);
    v142.val[0] = vmovl_high_u8(v142.val[0]);
    v142.val[3] = vmovl_u16(*v142.val[0].i8);
    v142.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v142.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v69, 8uLL), v62));
    v142.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v142.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v69.i8, 8uLL), v63));
    v142.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v142.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v68, 8uLL), v65));
    v79 = vdupq_n_s32(0x22DF8E4Au);
    v142.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v142.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v68.i8, 8uLL), v66));
    v80 = veorq_s8(vandq_s8(v142.val[0], v79), (*&v62 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v81 = veorq_s8(vandq_s8(v142.val[3], v79), (*&v63 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v82 = veorq_s8(vandq_s8(v142.val[1], v79), (*&v65 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v83 = veorq_s8(vandq_s8(v142.val[2], v79), (*&v66 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
    v84 = vaddq_s32(vsubq_s32(v142.val[0], vaddq_s32(v80, v80)), v137);
    v85 = vaddq_s32(vsubq_s32(v142.val[3], vaddq_s32(v81, v81)), v137);
    v86 = vaddq_s32(vsubq_s32(v142.val[1], vaddq_s32(v82, v82)), v137);
    v87 = vaddq_s32(vsubq_s32(v142.val[2], vaddq_s32(v83, v83)), v137);
    LODWORD(a47) = v87.i32[0];
    *(&a47 + 4) = vextq_s8(v87, v86, 4uLL);
    *(&a48 + 4) = vextq_s8(v86, v85, 4uLL);
    *(&a49 + 4) = vextq_s8(v85, v84, 4uLL);
    HIDWORD(a50) = v84.i32[3];
    *(&a50 + 4) = vextq_s8(v84, v84, 4uLL).u64[0];
    return (*(v52 + 8 * ((4 * (a7 ^ (a7 - 20))) ^ 1)))(1171652431);
  }

  else
  {
    v105 = a30;
    v106 = (((HIDWORD(a29) ^ 0x6F62255D) - 1868703069) ^ ((HIDWORD(a29) ^ 0xDCF6B1C0) + 587812416) ^ ((HIDWORD(a29) ^ 0x2DCC6062) - 768368738)) + (((HIDWORD(a29) ^ 0xA890F6C5) + 1466894651) ^ ((HIDWORD(a29) ^ 0x10C5758A) - 281376138) ^ ((HIDWORD(a29) ^ 0x260D77B0) - 638416816)) + 2101338960;
    v107 = (v106 ^ 0x3F68248E) & (2 * (v106 & 0xBF7206AE)) ^ v106 & 0xBF7206AE;
    v108 = ((2 * (v106 ^ 0x2588259A)) ^ 0x35F44668) & (v106 ^ 0x2588259A) ^ (2 * (v106 ^ 0x2588259A)) & 0x9AFA2334;
    v109 = v108 ^ 0x8A0A2114;
    v110 = (v108 ^ 0x10D00220) & (4 * v107) ^ v107;
    v111 = ((4 * v109) ^ 0x6BE88CD0) & v109 ^ (4 * v109) & 0x9AFA2334;
    v112 = (v111 ^ 0xAE80000) & (16 * v110) ^ v110;
    v113 = ((16 * (v111 ^ 0x90122324)) ^ 0xAFA23340) & (v111 ^ 0x90122324) ^ (16 * (v111 ^ 0x90122324)) & 0x9AFA2330;
    v114 = v112 ^ 0x9AFA2334 ^ (v113 ^ 0x8AA22300) & (v112 << 8);
    v115 = v106 ^ (2 * ((v114 << 16) & 0x1AFA0000 ^ v114 ^ ((v114 << 16) ^ 0x23340000) & (((v113 ^ 0x10580034) << 8) & 0x1AFA0000 ^ 0xD80000 ^ (((v113 ^ 0x10580034) << 8) ^ 0x7A230000) & (v113 ^ 0x10580034))));
    v116 = (((a30 ^ 0x607A7541) - 1618638145) ^ ((a30 ^ 0x2F68BDC) - 49712092) ^ ((a30 ^ 0xFCD40A62) + 53212574)) + (((a30 ^ 0x7159A8F3) - 1901701363) ^ ((a30 ^ 0x2D703747) - 762328903) ^ ((a30 ^ 0xC2716B4B) + 1032754357)) + 1765516707;
    v117 = (v116 ^ 0xC365241A) & (2 * (v116 & 0xD376445B)) ^ v116 & 0xD376445B;
    v118 = ((2 * (v116 ^ 0x4509A40E)) ^ 0x2CFFC0AA) & (v116 ^ 0x4509A40E) ^ (2 * (v116 ^ 0x4509A40E)) & 0x967FE054;
    v119 = v118 ^ 0x92002055;
    v120 = (v118 ^ 0x47B0000) & (4 * v117) ^ v117;
    v121 = ((4 * v119) ^ 0x59FF8154) & v119 ^ (4 * v119) & 0x967FE054;
    v122 = (v121 ^ 0x107F8050) & (16 * v120) ^ v120;
    v123 = ((16 * (v121 ^ 0x86006001)) ^ 0x67FE0550) & (v121 ^ 0x86006001) ^ (16 * (v121 ^ 0x86006001)) & 0x967FE050;
    v124 = v122 ^ 0x967FE055 ^ (v123 ^ 0x67E0000) & (v122 << 8);
    HIDWORD(a29) = v115 ^ 0x10BEB439;
    LODWORD(a30) = v116 ^ (2 * ((v124 << 16) & 0x167F0000 ^ v124 ^ ((v124 << 16) ^ 0x60550000) & (((v123 ^ 0x9001E005) << 8) & 0x167F0000 ^ (((v123 ^ 0x9001E005) << 8) ^ 0x7FE00000) & (v123 ^ 0x9001E005) ^ 0x1F0000))) ^ 0x617B700E;
    v125 = (((HIDWORD(a30) ^ 0xDF615D0) - 234231248) ^ ((HIDWORD(a30) ^ 0xA9AB03CA) + 1448410166) ^ ((HIDWORD(a30) ^ 0x3A05E2E5) - 973464293)) + ((v56 + (HIDWORD(a30) ^ 0x3C223A39) + 4841472) ^ ((HIDWORD(a30) ^ 0xD0860CF6) + 796521226) ^ ((HIDWORD(a30) ^ 0x72FCC230) - 1929167408)) - 1478113706;
    v126 = (((a31 ^ 0x35616D7A) - 895577466) ^ ((a31 ^ 0xE533BAE4) + 449594652) ^ ((a31 ^ 0x4E0A2361) - 1309287265)) + (((a31 ^ 0x33A92EB) - 54170347) ^ ((a31 ^ 0x8A4110CA) + 1975447350) ^ ((a31 ^ 0x172376DE) - 388200158)) + 1114227151;
    v127 = (v126 ^ 0xF204060E) & (2 * (v126 & 0xFA48282F)) ^ v126 & 0xFA48282F;
    v128 = ((2 * (v126 ^ 0x6294460C)) ^ 0x31B8DC46) & (v126 ^ 0x6294460C) ^ (2 * (v126 ^ 0x6294460C)) & 0x98DC6E22;
    v129 = v128 ^ 0x88442221;
    v130 = (v128 ^ 0x10004000) & (4 * v127) ^ v127;
    v131 = ((4 * v129) ^ 0x6371B88C) & v129 ^ (4 * v129) & 0x98DC6E20;
    v132 = (v131 ^ 0x502800) & (16 * v130) ^ v130;
    v133 = ((16 * (v131 ^ 0x988C4623)) ^ 0x8DC6E230) & (v131 ^ 0x988C4623) ^ (16 * (v131 ^ 0x988C4623)) & 0x98DC6E20;
    v134 = v132 ^ 0x98DC6E23 ^ (v133 ^ 0x88C46200) & (v132 << 8);
    HIDWORD(a30) = v125 ^ ((v125 ^ 0xF853883F) + 1822403481) ^ ((v125 ^ 0xD04382E3) + 1150263621) ^ ((v125 ^ 0xFDFC2B6B) + 1764755661) ^ ((v125 ^ 0xBEDFFDEF) + 705945161) ^ 0xF56B28A7;
    LODWORD(a31) = v126 ^ (2 * ((v134 << 16) & 0x18DC0000 ^ v134 ^ ((v134 << 16) ^ 0x6E230000) & (((v133 ^ 0x10180C03) << 8) & 0x18DC0000 ^ 0x900000 ^ (((v133 ^ 0x10180C03) << 8) ^ 0x5C6E0000) & (v133 ^ 0x10180C03)))) ^ 0x45A80096;
    return v139(377421824, &a20 + 4, v57, v59, v105, v58, a7, a8, a9, a10, a11, a12, a13, a14, 0x58440000000018ELL, v138, v139, v140, a19, a20, a21, a22);
  }
}

uint64_t sub_254430594@<X0>(unsigned int a1@<W3>, int a2@<W5>, unint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v8 = v5 - 1;
  *(a5 + v8) = *(a4 + v8) - ((2 * *(a4 + v8)) & 0x40) - 96;
  return (*(v7 + 8 * (((v8 == (v6 ^ a1 ^ a3)) * a2) ^ v6)))();
}

uint64_t sub_2544305D8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((30 * (((v4 == 742196933) ^ v3) & 1)) ^ v3)))();
}

uint64_t sub_254430610()
{
  v4 = v2 - 472465697;
  v5 = v4 < ((v1 - 1400588627) & 0x537B4E2B ^ 0x636BE7CA);
  v6 = v3 + 1668018113 < v4;
  if (v3 > ((v1 - 1567481783) & 0x5D6DDDFE) - 1668018492 != v5)
  {
    v6 = v5;
  }

  return (*(v0 + 8 * ((119 * v6) ^ v1)))();
}

uint64_t sub_2544306B4@<X0>(int a1@<W8>)
{
  if ((a1 - 2008440815) <= 0x10 && ((1 << (a1 + 17)) & 0x14103) != 0)
  {
    JUMPOUT(0x254430748);
  }

  return sub_2544306F0();
}

uint64_t sub_25443079C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  *(v6 - 152) = 700961087;
  *(v6 - 148) = -1328586272;
  v7 = *a3;
  v8 = 742307843 * (((~(v6 - 144) | 0x7A27A0F1638297F8) + ((v6 - 144) | 0x85D85F0E9C7D6807)) ^ 0x36448265825FE553);
  v9 = v3 - 1286771117 + v8;
  *(v6 - 120) = (v3 + 924116242) ^ v8;
  *(v6 - 116) = v9;
  *(v6 - 144) = v8;
  *(v6 - 112) = v3 - 1286771117 - v8 - 83;
  *(v6 - 108) = v9 - 44;
  *(v6 - 136) = v7 + v8;
  *(v6 - 128) = v8;
  v10 = (*(v4 + 8 * (v3 ^ (v5 + 2393))))(v6 - 144);
  return (*(v4 + 8 * *(v6 - 104)))(v10);
}

uint64_t sub_2544308CC@<X0>(int a1@<W6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  v19 = a2 + 215;
  v20 = (a2 - 834311128) & 0x31BA93DE;
  v21 = ((a2 + 1491) ^ 0xE41C8EFB) + a18;
  v22 = (v21 < 0x1A80EF12) ^ (a1 + 51574520 < (v20 + 444656630));
  v23 = v21 < a1 + 51574520;
  if (v22)
  {
    v23 = a1 + 51574520 < (v20 + 444656630);
  }

  return (*(v18 + 8 * ((1972 * v23) ^ v19)))();
}

uint64_t sub_2544308E0@<X0>(uint64_t a1@<X8>)
{
  v9 = (*(*(v7 + 8) + 4 * v1) ^ (((v3 - 935298587) & 0x37BF83AB) - 1090653548)) + v2;
  *(*(a1 + 8) + 4 * v1) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((839 * (v8 > (v1 + 1))) ^ (v3 + 47))))();
}

uint64_t sub_254430958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, char a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22)
{
  a20 = a13;
  a21 = &a12;
  a22 = &a14;
  HIDWORD(a19) = v23 - 1802 - 143681137 * ((1624057928 - (&a19 | 0x60CD2848) + (&a19 | 0x9F32D7B7)) ^ 0xFE6A5C67) + 943;
  (*(v24 + 8 * ((v23 - 1802) ^ 0x877)))(&a19);
  LODWORD(a19) = (v23 - 464) ^ (((52438733 - (&a19 | 0x32026CD) + (&a19 | 0xFCDFD932)) ^ 0xE8F044A9) * v22);
  a22 = &a17;
  a20 = a13;
  (*(v24 + 8 * (v23 + 365)))(&a19);
  HIDWORD(a20) = (v23 - 1107) ^ (1388665877 * ((&a19 & 0xF42273C3 | ~(&a19 | 0xF42273C3)) ^ 0x8670EED0));
  a19 = a13;
  v25 = (*(v24 + 8 * ((v23 - 1802) ^ 0x870)))(&a19);
  return (*(v24 + 8 * (((a20 == 585076288) * (((v23 - 1220) ^ 0x387) + 831)) ^ (v23 - 1802))))(v25);
}

uint64_t sub_254430AD8(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v9 + 2;
  v15 = v11 + 2;
  v16 = vaddq_s8(vsubq_s8(*v14, vandq_s8(vaddq_s8(*v14, *v14), a1)), a2);
  v15[-1] = vaddq_s8(vsubq_s8(v14[-1], vandq_s8(vaddq_s8(v14[-1], v14[-1]), a1)), a2);
  *v15 = v16;
  return (*(v13 + 8 * (((v10 == 32) * v12) ^ (a8 + v8 + 2890))))();
}

uint64_t sub_254430AE8@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  *a3 = a1;
  v58 = (*(v55 + 48 * v56 + 8))(a4);
  return (*(v54 + 8 * ((1674 * (111 * (v57 ^ 0x35F) + 585076288 + v58 - ((2 * v58) & 0x45BF1C80) == 585078397)) ^ v57)))(v58, v59, v60, v61, 1163041899, 3901884390, 3708540091, 3310525547, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_254430F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = *(a21 + 24);
  v26 = (v24 - 184);
  *v26 = 0xA0A0A0A0A0A0A0A0;
  v26[1] = 0xA0A0A0A0A0A0A0A0;
  v27 = 1037613739 * ((((v24 - 168) | 0x4394FA62) - ((v24 - 168) & 0x4394FA62)) ^ 0x9296D71D);
  v26[3] = v26;
  v26[4] = v25;
  v26[5] = &STACK[0x220];
  v26[7] = &STACK[0x234];
  *(v24 - 168) = v27 + 683915340;
  *(v24 - 136) = (v21 + 1652) ^ v27;
  v28 = (*(v22 + 8 * (v21 ^ 0x968)))(v24 - 168);
  return (*(v22 + 8 * (((*(v24 - 132) == v23 + ((v21 - 1337031797) & 0x4FB17C66) - 38) * (((v21 + 141) | 0x400) + 1128)) ^ v21)))(v28);
}

uint64_t sub_254431104(uint64_t a1)
{
  v3 = (*(v1 + 18952))();
  if (v3 == 16)
  {
    v4 = -42029;
  }

  else
  {
    v4 = -42030;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  (*(v1 + 19136))(a1);
  return v5;
}

uint64_t sub_25443114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, int a25, int a26, int a27, unsigned int a28)
{
  v30 = a23 + 533067888 + (a27 & 0xE8222F7B) - 1843;
  v31 = v30 < 0x1FC5F870;
  v32 = v30 > a28;
  if (a28 < 0x1FC5F870 != v31)
  {
    v32 = v31;
  }

  return (*(v28 + 8 * ((!v32 * a26) ^ (v29 + 75))))();
}

uint64_t sub_254431158(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18)
{
  v21 = a3 + v18 + 64;
  v22 = v21 < a3;
  v23 = v21 > a18;
  if (a18 < a3 != v22)
  {
    v23 = v22;
  }

  return (*(v20 + 8 * (((2 * ((v23 ^ (a17 ^ a16)) & 1)) & 0xFB | (4 * ((v23 ^ a17 ^ a16) & 1))) ^ (a6 + v19 + 2543))))();
}

uint64_t sub_254431210(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v9 = (a4 + 4 * a6);
  *v9 = a1;
  v9[1] = a1;
  return (*(v8 + 8 * (((v6 == a6) * a5) ^ v7)))();
}

uint64_t sub_254431278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v34 = v32 ^ (a7 - 19);
  v35 = 2066391179 * ((((2 * (v33 - 128)) | 0xE860A852) - (v33 - 128) - 1949324329) ^ 0xDB17D631);
  *(v33 - 120) = &a22;
  *(v33 - 128) = v32 - v35 + 208;
  *(v33 - 124) = a12 - v35 + 982374325;
  v36 = (*(v31 + 8 * (v32 + 2403)))(v33 - 128);
  v37 = a31 & (v34 ^ 0x45E6C24Fu);
  *(&a22 + v37) = 32;
  return (*(v31 + 8 * ((2066 * (v37 > (((v32 + 725) | 0xD) ^ 0x338u))) ^ v32)))(v36);
}

uint64_t sub_2544318D0@<X0>(uint64_t a1@<X8>)
{
  v9 = (*(*(v7 + 8) + 4 * v2) ^ v4) + v1;
  *(*(a1 + 8) + 4 * v2) = v9 + v4 - ((((v3 + 785) | 0x9C) + v6) & (2 * v9));
  return (*(v5 + 8 * ((903 * (v2 + 1 == v8)) ^ v3)))();
}

uint64_t sub_254431944(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v20 = v11;
  HIDWORD(v21) = a3 ^ a8;
  LODWORD(v21) = a3 ^ v16;
  v22 = (v21 >> 27) + (a2 ^ v14 ^ v11 ^ v10) + (((v13 ^ 0xFBC750A1) + 70823775) ^ (v12 + 1934644154 + (v13 ^ 0x8CAFA989)) ^ ((v13 ^ 0xE9300DD7) + 382726697)) + 1282309385 + (((*(v9 + 4 * (v8 + v17)) ^ 0xD6B0B191) + 693063279) ^ ((*(v9 + 4 * (v8 + v17)) ^ 0x227C6C41) - 578579521) ^ ((*(v9 + 4 * (v8 + v17)) ^ 0xD6135390) + 703376496));
  v23 = (v22 ^ v19) & (2 * (v22 & 0xE3A3F1D7)) ^ v22 & 0xE3A3F1D7;
  v24 = ((2 * (v22 ^ 0xC59727ED)) ^ 0x4C69AC74) & (v22 ^ 0xC59727ED) ^ (2 * (v22 ^ 0xC59727ED)) & 0x2634D63A;
  v25 = v24 ^ 0x2214520A;
  v26 = (v24 ^ 0x4008430) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x98D358E8) & v25 ^ (4 * v25) & 0x2634D638;
  v28 = (v27 ^ 0x105020) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x26248612)) ^ 0x634D63A0) & (v27 ^ 0x26248612) ^ (16 * (v27 ^ 0x26248612)) & 0x2634D630;
  v30 = v28 ^ 0x2634D63A ^ (v29 ^ 0x22044200) & (v28 << 8);
  return (*(v15 + 8 * ((1145 * (v8 + 1 == v18 + 24)) ^ v12)))(v20, v20, v22 ^ (2 * ((v30 << 16) & 0x26340000 ^ v30 ^ ((v30 << 16) ^ 0x563A0000) & (((v29 ^ 0x430941A) << 8) & 0x26340000 ^ 0x2200000 ^ (((v29 ^ 0x430941A) << 8) ^ 0x34D60000) & (v29 ^ 0x430941A)))) ^ 0x3DF2A95Cu);
}

uint64_t sub_254431BA8@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 1617172167;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 160)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 32)
  {
    v12 = 585076288;
    v13 = *(v2 + 16);
    v14 = *(v2 + 24) ^ v3;
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 83)
    {
      v15 = 1996340594;
    }

    else
    {
      v15 = 1996340595;
    }

    *(result + 16) = 1704601733;
    *(result + 20) = v15;
    *(result + 24) = 585076288;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 + 1784)))();
    v12 = -585050727;
  }

  *(v2 + 8) = v12;
  return result;
}

uint64_t sub_254431C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v25 = 41 * (v24 ^ 0x54A);
  v26 = &a15;
  a15 = a14;
  HIDWORD(a16) = -843532609 * ((2 * (v26 & 0x2140EB78) - v26 + 1589580933) ^ 0x2F24000) + 740766347 * v21 + 530262041;
  LODWORD(a17) = (v25 + 1039) ^ (843532609 * ((2 * (v26 & 0x2140EB78) - v26 + 1589580933) ^ 0x2F24000));
  (*(v23 + 8 * (v25 + 2110)))(&a15);
  v27 = 1037613739 * ((-2076228419 - (&a15 | 0x843F44BD) + (&a15 | 0x7BC0BB42)) ^ 0xAAC2963D);
  a16 = a14;
  a17 = v19;
  a18 = (v25 + 1717) ^ v27;
  a19 = (v20 ^ 0x7EDAB7A6) + ((2 * v20) & 0xFDB56F4C) - 46695424 + v27;
  v28 = (*(v23 + 8 * (v25 + 2065)))(&a15);
  return (*(v23 + 8 * ((1392 * (a15 == v22 + (v25 ^ 0x412) - 1370)) ^ v25)))(v28);
}

uint64_t sub_254431DE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int32x4_t a20, int32x4_t a21)
{
  a20 = vdupq_n_s32(0x41020B41u);
  a21 = a20;
  return (*(v22 + 8 * ((3161 * (95 * (a3 ^ 0x5D5) - 657 == (v21 & 0xFFFFFFF8))) ^ (a3 - 324))))(a1, a2, &a20);
}

uint64_t sub_254431EB0()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_2544321C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v22 = 2066391179 * ((((v21 - 168) | 0x121ACDB7) - (v21 - 168) + ((v21 - 168) & 0xEDE53248)) ^ 0xBD3D4FAF);
  *(v21 - 160) = a2;
  *(v21 - 168) = v19 - v22 + 238;
  *(v21 - 164) = a19 - v22;
  v23 = (*(v20 + 8 * (v19 ^ 0x99F)))(v21 - 168);
  v24 = STACK[0x288];
  *(&STACK[0x244] + (v24 & 0x3F)) = 32;
  return (*(v20 + 8 * ((1683 * ((v24 & 0x3Fu) > v19 + 40)) ^ v19)))(v23);
}

uint64_t sub_2544322A4@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t, unint64_t *)@<X2>, char a3@<W3>, char a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (a1 + v10);
  *v14 = a4;
  v14[1] = v9;
  *(a1 + (a9 ^ 0x24) + v10) = v11;
  v14[3] = a3;
  v15 = 2066391179 * ((((v13 - 168) | 0xA783E59) - ((v13 - 168) & 0xA783E59)) ^ 0xA55FBC41);
  *(v13 - 168) = a9 - v15 + 215;
  *(v13 - 164) = 1440329777 - v15;
  *(v13 - 160) = a1;
  v17 = (*(v12 + 8 * (a9 + 2410)))(v13 - 168);
  return a2(v17, &STACK[0x244]);
}

uint64_t sub_254432364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = ((v14 - 640329365) & 0x262AA16F ^ 0xA04465B1) + a12;
  v16 = v12 - 1148174828 < v15;
  if (v12 > 0x446FC1EB != v15 < 0xBB903E14)
  {
    v16 = v15 < 0xBB903E14;
  }

  return (*(v13 + 8 * (((16 * !v16) | (32 * !v16)) ^ v14)))();
}

uint64_t sub_2544323E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v20 = 1037613739 * ((~((v19 - 128) | 0x5265C5AB) + ((v19 - 128) & 0x5265C5AB)) ^ 0x7C98172B);
  *(v19 - 112) = v20 + v15 - 292;
  *(v19 - 120) = &a13;
  *(v19 - 128) = (((v15 + 532) ^ v17 ^ 0x6DFF6BC4) + ((2 * v17) & 0xDBFEDF7E) - 1612793633) ^ v20;
  (*(v16 + 8 * (v15 + 1762)))(v19 - 128);
  *(v19 - 120) = &a15;
  *(v19 - 112) = a12;
  *(v19 - 128) = (v15 + 129) ^ (((((v19 - 128) | 0xAD4EE3FF) - (v19 - 128) + ((v19 - 128) & 0x52B11C00)) ^ 0xF103B77A) * v18);
  v21 = (*(v16 + 8 * (v15 + 1776)))(v19 - 128);
  return (*(v16 + 8 * (((*(v19 - 124) + ((6 * ((v15 + 532) ^ 0x456)) ^ 0x89324320) < 0x8C481266) * ((v15 + 532) ^ 0x7F5)) ^ (v15 + 532))))(v21);
}

uint64_t sub_254432548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = (v15 - 366) | 0x302;
  v21 = 1037613739 * ((2 * ((v19 - 136) & 0x20423820) - (v19 - 136) - 541210664) ^ 0xEBFEAA7);
  *(v19 - 136) = (v20 + (v16 ^ 0x5DFF699E) + ((2 * v16) & 0xBBFED33C) - 1344357454) ^ v21;
  *(v19 - 120) = v21 + v15 - 119;
  *(v19 - 128) = &a15;
  (*(v17 + 8 * (v15 + 1935)))(v19 - 136);
  *(v19 - 136) = (v20 - 102) ^ (843532609 * ((((2 * (v19 - 136)) | 0x863BCDD2) - (v19 - 136) - 1126033129) ^ 0x1F50B26C));
  *(v19 - 128) = a13;
  *(v19 - 120) = a14;
  v22 = (*(v17 + 8 * (v20 + 1545)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 132) > v18) * (((v20 - 205) | 0x45A) - 1717)) ^ v20)))(v22);
}

uint64_t sub_2544326E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  v24 = 1564307779 * ((2096269765 - (&a17 | 0x7CF289C5) + (&a17 | 0x830D763A)) ^ 0x1400BA29);
  a17 = a13;
  a22 = -1326587410 - v24;
  a21 = &a14;
  a19 = v23 - v24 - 2013067780;
  a20 = -1735251887 - v24;
  v25 = (*(v22 + 8 * (v23 ^ 0xD5B)))(&a17);
  return (*(v22 + 8 * (((a18 == 585076288) * ((((v23 + 1880947455) & 0x8FE306FE) - 436) ^ v23 ^ 0xC3)) ^ v23)))(v25);
}

uint64_t sub_2544327E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = a12 + a2 + 11 - 127962918;
  v15 = (v14 ^ 0xDC9AEEFF) & (2 * (v14 & 0xDEDCCEFF)) ^ v14 & 0xDEDCCEFF;
  v16 = (v14 ^ 0xD40B728D) << (*(v12 - 124) - 116);
  v17 = (v16 ^ 0x15AF78E4) & (v14 ^ 0xD40B728D) ^ v16 & 0xAD7BC72;
  v18 = v17 ^ 0xA508412;
  v19 = (v17 ^ 0x873860) & (4 * v15) ^ v15;
  v20 = ((4 * v18) ^ 0x2B5EF1C8) & v18 ^ (4 * v18) & 0xAD7BC70;
  v21 = (v20 ^ 0xA56B040) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x810C32)) ^ 0xAD7BC720) & (v20 ^ 0x810C32) ^ (16 * (v20 ^ 0x810C32)) & 0xAD7BC70;
  v23 = v21 ^ 0xAD7BC72 ^ (v22 ^ 0x8538400) & (v21 << 8);
  v25 = (v14 ^ (2 * ((v23 << 16) & 0xAD70000 ^ v23 ^ ((v23 << 16) ^ 0x3C720000) & (((v22 ^ 0x2843852) << 8) & 0xAD70000 ^ 0x8430000 ^ (((v22 ^ 0x2843852) << 8) ^ 0x57BC0000) & (v22 ^ 0x2843852))))) != 0xDBD7B61B && ((v14 ^ (2 * v23)) & 0xF) == 11;
  v26 = *(v13 + 8 * (((((a2 - 1968) | 0x443) ^ 0x46A) * v25) ^ (a2 + 11)));
  *(v12 - 128) = -42899;
  *(v12 - 124) = a2 - 363;
  return v26();
}

uint64_t sub_25443298C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = v3 < v4;
  v7 = a2 + 1;
  if (v6 == v7 > ((263 * (a1 ^ 0x122u)) ^ 0xFFFFFFFF56F8029DLL))
  {
    v6 = v7 + v2 + (a1 + 556) < v3;
  }

  return (*(v5 + 8 * ((94 * v6) | a1)))();
}

uint64_t sub_2544329FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v19 - 120) = &a13;
  *(v19 - 112) = v13;
  *(v19 - 144) = (v17 + 499) ^ (1037613739 * ((v19 - 1136119225 - 2 * ((v19 - 144) & 0xBC4832D7)) ^ 0x6D4A1FA8));
  *(v19 - 136) = &a13;
  *(v19 - 128) = v14;
  (*(v15 + 8 * (v17 + 606)))(v19 - 144);
  v20 = 210068311 * ((((v19 - 144) ^ 0x886E207A | 0x6E538E86) - ((v19 - 144) ^ 0x886E207A) + (((v19 - 144) ^ 0x886E207A) & 0x91AC7178)) ^ 0x74EB9158);
  *(v19 - 136) = v17 - v20 - 1398;
  *(v19 - 144) = v20 + ((v17 - 610) | 0x108) + 1053645359 * (v16 - 1) - 23808646;
  *(v19 - 128) = v18;
  v21 = (*(v15 + 8 * (v17 + 597)))(v19 - 144);
  return (*(v15 + 8 * ((110 * (*(v19 - 140) == ((v17 - 1645) ^ 0xEB84C7A9))) ^ v17)))(v21);
}

uint64_t sub_254432B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = v6 - v7;
  if (v5 > v6 - v7)
  {
    v9 = v5;
  }

  return (*(v8 + 8 * ((124 * (((17 * (a5 ^ 0x8B4)) ^ 0x909u) + v9 >= ((a5 + 898626987) & 0xCA7007FF) - 1475)) ^ a5)))();
}

uint64_t sub_254432BF4(uint64_t a1, double a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (a12 + v12);
  v17 = vaddq_s8(vsubq_s8(v16[1], vandq_s8(vaddq_s8(v16[1], v16[1]), a6)), a7);
  *&STACK[0x238] = vaddq_s8(vsubq_s8(*v16, vandq_s8(vaddq_s8(*v16, *v16), a6)), a7);
  *&STACK[0x248] = v17;
  LODWORD(v16) = ((2 * v13) ^ 0x2F6u ^ v14) == 64;
  return (*(v15 + 8 * (((v16 << 6) | (v16 << 7)) ^ v13)))(a1, v12 + 64);
}

uint64_t sub_254432D28(uint64_t result)
{
  if ((v2 + 2194) >= 0x7FFFFFFF)
  {
    v5 = -v4;
  }

  else
  {
    v5 = v3;
  }

  *(v1 + 4) = v5;
  *(result + 8) = 1737882874;
  return result;
}

uint64_t sub_254432D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  LODWORD(a17) = (v22 + 855) ^ (50899313 * ((958648193 - (&a17 | 0x3923CF81) + (&a17 | 0xC6DC307E)) ^ 0xD2F3ADE5));
  a20 = &a16;
  a18 = a14;
  (*(v20 + 8 * (v22 ^ 0xB9C)))(&a17);
  a20 = &a13;
  a18 = a14;
  LODWORD(a17) = (v22 + 855) ^ (50899313 * (&a17 ^ 0x142F9D9B));
  (*(v20 + 8 * (v22 + 1684)))(&a17);
  a17 = a14;
  HIDWORD(a18) = (v22 + 212) ^ (((((&a17 ^ 0xD70E0434) & 0xDF1E0776) + (&a17 ^ 0x2850A343) - ((&a17 ^ 0x2850A343) & 0xDF1E0776)) ^ 0x7AE3C6D9) * v21);
  v23 = (*(v20 + 8 * (v22 ^ 0xB97)))(&a17);
  return (*(v20 + 8 * ((492 * (((v22 + 28) ^ (a18 == (((v22 + 1264955) | 0x5D0C0408) ^ 0x7FC0DA68))) & 1)) ^ v22)))(v23);
}

uint64_t sub_254432F14()
{
  *(&STACK[0x244] + v1) = *(v6 + v0) - ((2 * *(v6 + v0)) & 0x40) - 96;
  v7 = v1 + 1 == (v2 ^ v3 ^ v4);
  return (*(v5 + 8 * (((2 * v7) | (v7 << 7)) ^ v2)))();
}

uint64_t sub_254432F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v27 = &a17 | 0x74D2E633;
  HIDWORD(a18) = -843532609 * ((1959978547 - v27 + (&a17 | 0x8B2D19CC)) ^ 0xD7604D49) + 740766347 * v24 + 530262041;
  LODWORD(a19) = (843532609 * ((1959978547 - v27 + (&a17 | 0x8B2D19CC)) ^ 0xD7604D49)) ^ 0x557;
  a17 = a14;
  (*(v25 + 19504))(&a17);
  v28 = 1037613739 * ((&a17 + 1172345238 - 2 * (&a17 & 0x45E09196)) ^ 0x94E2BCE9);
  a18 = a14;
  a19 = v22;
  a20 = v28 ^ 0x7FD;
  a21 = (v23 ^ 0xFF1ABFB7) + ((2 * v23) & 0xFE357F6E) + 2096591855 + v28;
  (*(v25 + 19144))(&a17);
  v29 = 1037613739 * ((&a17 + 105481739 - 2 * (&a17 & 0x649860B)) ^ 0xD74BAB74);
  a20 = v29 ^ 0x7FD;
  a21 = (v21 ^ 0xFDF6FBFE) + ((2 * v21) & 0xFBEDF7FC) + 2115712936 + v29;
  a18 = a14;
  a19 = v26;
  v30 = (*(v25 + 19144))(&a17);
  return (*(v25 + 8 * ((1928 * (a17 == 585076288)) ^ 0x348u)))(v30);
}

uint64_t sub_254433344(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, uint64_t a6, int a7)
{
  v19 = (((v10 ^ 0x432C8A61) - 1126992481) ^ ((v10 ^ 0x36736017) + v13) ^ (((4 * (a4 ^ 0x77B) + v14) ^ v10) + v15)) + v8;
  v20 = (((v12 ^ a5) + v11) ^ ((v12 ^ v18) + a7) ^ ((v12 ^ v16) + a4 - 1698 + v17)) + v8;
  v21 = (v20 < v9) ^ (v19 < v9);
  v22 = v19 < v20;
  if (v21)
  {
    v22 = v20 < v9;
  }

  return (*(v7 + 8 * ((v22 * a3) ^ a4)))();
}

uint64_t sub_254433590(uint64_t a1, int a2, unsigned int a3)
{
  v6 = v3 + ((a3 - 806139644) ^ 0xCFF3481C) + ((a3 - 806139644) & 0x300CB36D) + 1548713662;
  v7 = ((a2 + v5) > 0x46C12B3B) ^ (v6 < 0xB93ED4C4);
  v8 = a2 + v5 - 1187064636 > v6;
  if (v7)
  {
    v8 = (a2 + v5) > 0x46C12B3B;
  }

  return (*(v4 + 8 * ((1004 * v8) ^ a3)))();
}

uint64_t sub_2544336B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) + 466531078;
  v4 = *(a1 + 12) + 553960637;
  v5 = v3 < 0x8168DB83;
  v6 = v3 > v4;
  if (v5 != v4 < 0x8168DB83)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((15 * ((((v2 ^ 0x45) + v2) ^ v6) & 1)) ^ v2)))();
}

uint64_t sub_254433738()
{
  v6 = v2 < v3;
  v7 = v0 + 1;
  if (v6 == v7 > ((v4 - 792046208) & 0x2F35AA7F ^ 0xFFFFFFFFCCD57EBALL) + ((v4 + 192) ^ 0x140u))
  {
    v6 = v7 + v1 < v2;
  }

  return (*(v5 + 8 * ((83 * v6) ^ (v4 + 192))))();
}

uint64_t sub_254433814@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v6 + 8);
  v9 = ((2 * (v8[((a1 << 32) + 0x100000000) >> ((v4 + 14) ^ 0xC6u)] ^ v1)) << ~(v5 ^ 0x17)) | ((v8[a1] ^ v1) >> (v5 ^ 0x17));
  *v8 = v9 + v1 - (v2 & (2 * v9));
  return (*(v7 + 8 * ((991 * (v3 == 1)) ^ v4)))();
}

uint64_t sub_2544339B8@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 7 + ~v3 + v2) = vadd_s8(vsub_s8(*(v1 - 7 + ~v3 + v2), vand_s8(vadd_s8(*(v1 - 7 + ~v3 + v2), *(v1 - 7 + ~v3 + v2)), 0x4040404040404040)), 0xA0A0A0A0A0A0A0A0);
  v6 = v3 + ((4 * v4) ^ 0x39Cu) - 1476 == (v2 & 0x1F8);
  return (*(v5 + 8 * (v6 | (32 * v6) | v4)))();
}

uint64_t sub_254433A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23)
{
  v25 = (a21 ^ a5) + a22;
  v26 = a17 < 0x623E38E3;
  if (v26 == v25 > (((a16 & 0xA2AB65FF) - 83005455) & 0x4F28FFA) - 1648246462)
  {
    v26 = v25 + 1648244963 < a17;
  }

  return (*(v24 + 8 * ((997 * !v26) ^ a16 & 0xA2AB65FF)))(a1, a2, ((a5 + (a16 & 0xA2AB65FF) - 1518) ^ v23) + a23, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_254433F04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, unsigned int a27, int a28, char a29)
{
  v34 = &a29 + v29;
  v73 = *(v31 + 8 * a6);
  v65 = STACK[0x294];
  v66 = STACK[0x298];
  v67 = LOBYTE(STACK[0x2A4]);
  if (v67 == 2)
  {
    v70 = &v34[v33 + 1070022328];
    v71 = ((*v70 ^ 0xA0) << a26) + ((v70[1] ^ 0xA0) << 16) + ((v70[2] ^ 0xA0) << 8);
    *v30 = v71 + (v70[3] ^ 0xA0) + a5 - 2 * ((v71 + (v70[3] ^ 0xA0)) & (a5 + 32) ^ (v70[3] ^ 0xA0) & 0x20);
    v72 = *(v31 + 8 * (((4 * ((v33 + 1070022332) < 0x40)) | (((v33 + 1070022332) < 0x40) << 6)) ^ a27));
    return v72(v72, 0, 0, a2, 2819680316, 2684395583, 2550136832, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else if (v67 == 1)
  {
    v68 = &v34[v33 + 1070022328];
    v69 = *v68 ^ 0xA0;
    LODWORD(v68) = (((v68[2] ^ 0xA0) << 16) | ((v68[3] ^ 0xA0) << 24)) + ((v68[1] ^ 0xA0) << (v32 - 30)) + v69;
    *v30 = v68 + a5 - 2 * (v68 & (a5 + 10) ^ v69 & 0xA);
    return (*(v31 + 8 * ((235 * ((v33 + 1070022332) > 0x3F)) ^ (v32 + 1353))))(138477568, (v32 + 1374), 944308224, 1070022328, a3, a4, 3881679837, v32, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v35 = (((LODWORD(STACK[0x28C]) ^ 0x544E6B2F) - 1414425391) ^ ((LODWORD(STACK[0x28C]) ^ 0xD9B15A25) + 642688475) ^ ((LODWORD(STACK[0x28C]) ^ 0x13A7C5F5) - 329762293)) + (((LODWORD(STACK[0x28C]) ^ 0xB4707268) + 1267699096) ^ ((LODWORD(STACK[0x28C]) ^ 0xB9BE767F) + 1178700161) ^ ((LODWORD(STACK[0x28C]) ^ 0x9396F0E8) + 1818824472)) + 1517405149;
    v36 = (((LODWORD(STACK[0x290]) ^ 0x252FC43E) - 623887422) ^ ((LODWORD(STACK[0x290]) ^ 0xB0EF957B) + 1326475909) ^ ((LODWORD(STACK[0x290]) ^ 0xB98A5BA) - 194553274)) + (((LODWORD(STACK[0x290]) ^ 0xEC92C0FA) + 325926662) ^ ((LODWORD(STACK[0x290]) ^ 0x8379B43C) + 2089176004) ^ ((LODWORD(STACK[0x290]) ^ 0xF1B38039) + 239894471)) - 1976941934;
    v37 = (v36 ^ 0xA077A76B) & (2 * (v36 & 0xB287A76C)) ^ v36 & 0xB287A76C;
    v38 = ((2 * (v36 ^ 0xA478E933)) ^ 0x2DFE9CBE) & (v36 ^ 0xA478E933) ^ (2 * (v36 ^ 0xA478E933)) & 0x16FF4E5E;
    v39 = v38 ^ 0x12014241;
    v40 = (v38 ^ 0x43E0C10) & (4 * v37) ^ v37;
    v41 = ((4 * v39) ^ 0x5BFD397C) & v39 ^ (4 * v39) & 0x16FF4E5C;
    v42 = (v41 ^ 0x12FD0840) & (16 * v40) ^ v40;
    v43 = ((16 * (v41 ^ 0x4024603)) ^ 0x6FF4E5F0) & (v41 ^ 0x4024603) ^ (16 * (v41 ^ 0x4024603)) & 0x16FF4E50;
    v44 = v42 ^ 0x16FF4E5F ^ (v43 ^ 0x6F44400) & (v42 << 8);
    LODWORD(STACK[0x28C]) = v35 ^ ((v35 ^ 0x55998C48) - 1210471831) ^ ((v35 ^ 0x1A0669BA) - 129609829) ^ ((v35 ^ 0xA4DDC353) + 1184753012) ^ ((v35 ^ 0xF6FDFF7E) + 347986271) ^ 0x83E72D20;
    LODWORD(STACK[0x290]) = v36 ^ (2 * ((v44 << 16) & 0x16FF0000 ^ v44 ^ ((v44 << 16) ^ 0x4E5F0000) & (((v43 ^ 0x100B0A0F) << 8) & 0x16FF0000 ^ 0xB10000 ^ (((v43 ^ 0x100B0A0F) << 8) ^ 0x7F4E0000) & (v43 ^ 0x100B0A0F)))) ^ 0xD9FCF2D;
    v45 = (((v65 ^ 0x6CC2F713) - 1824716563) ^ ((v65 ^ 0xBAA1D1A7) + 1163800153) ^ ((v65 ^ 0x483BD24B) - 1211880011)) + (((LODWORD(STACK[0x294]) ^ 0x5B87B892) - 1535621266) ^ ((LODWORD(STACK[0x294]) ^ 0xB57A62EB) + 1250270485) ^ ((LODWORD(STACK[0x294]) ^ 0x70A52E86) - 1889873542)) + 1386761907;
    v46 = (v45 ^ 0xEAA5132B) & (2 * (v45 & 0xEA099B4B)) ^ v45 & 0xEA099B4B;
    v47 = ((2 * (v45 ^ 0x6EA531BF)) ^ 0x95955E8) & (v45 ^ 0x6EA531BF) ^ (2 * (v45 ^ 0x6EA531BF)) & 0x84ACAAF4;
    v48 = v47 ^ 0x84A4AA14;
    v49 = (v47 ^ 0x80060) & (4 * v46) ^ v46;
    v50 = ((4 * v48) ^ 0x12B2ABD0) & v48 ^ (4 * v48) & 0x84ACAAF4;
    v51 = (v50 ^ 0xA0AAD0) & (16 * v49) ^ v49;
    v52 = ((16 * (v50 ^ 0x840C0024)) ^ 0x4ACAAF40) & (v50 ^ 0x840C0024) ^ (16 * (v50 ^ 0x840C0024)) & 0x84ACAAF0;
    v53 = v51 ^ 0x84ACAAF4 ^ (v52 ^ 0x88AA00) & (v51 << 8);
    v54 = v45 ^ (2 * ((v53 << 16) & 0x4AC0000 ^ v53 ^ ((v53 << 16) ^ 0x2AF40000) & (((v52 ^ 0x842400B4) << 8) & 0x4AC0000 ^ (((v52 ^ 0x842400B4) << 8) ^ 0x2CAA0000) & (v52 ^ 0x842400B4) ^ 0x40000)));
    v55 = (((v66 ^ 0x41F3E25E) - 1106502238) ^ ((v66 ^ 0xE0DE7EFD) + 522289411) ^ ((v66 ^ 0x3F75685C) - 1064659036)) + (((LODWORD(STACK[0x298]) ^ 0x7EF359E) - 133117342) ^ ((LODWORD(STACK[0x298]) ^ 0x33E08DFF) - 870354431) ^ ((LODWORD(STACK[0x298]) ^ 0xAA574C9E) + 1437119330)) + 1944066477;
    v56 = (v55 ^ 0x828DDB18) & (2 * (v55 & 0xC8D1D051)) ^ v55 & 0xC8D1D051;
    v57 = ((2 * (v55 ^ 0x822D7BB8)) ^ 0x95F957D2) & (v55 ^ 0x822D7BB8) ^ (2 * (v55 ^ 0x822D7BB8)) & 0x4AFCABE8;
    v58 = v57 ^ 0x4A04A829;
    v59 = (v57 ^ 0xC803C0) & (4 * v56) ^ v56;
    v60 = ((4 * v58) ^ 0x2BF2AFA4) & v58 ^ (4 * v58) & 0x4AFCABE8;
    v61 = (v60 ^ 0xAF0ABA0) & (16 * v59) ^ v59;
    v62 = ((16 * (v60 ^ 0x400C0049)) ^ 0xAFCABE90) & (v60 ^ 0x400C0049) ^ (16 * (v60 ^ 0x400C0049)) & 0x4AFCABE0;
    v63 = v61 ^ 0x4AFCABE9 ^ (v62 ^ 0xAC8AA00) & (v61 << 8);
    LODWORD(STACK[0x294]) = v54 ^ 0x7C403A5C;
    LODWORD(STACK[0x298]) = v55 ^ (2 * ((v63 << 16) & 0x4AFC0000 ^ v63 ^ ((v63 << 16) ^ 0x2BE90000) & (((v62 ^ 0x40340169) << 8) & 0x4AFC0000 ^ 0x2540000 ^ (((v62 ^ 0x40340169) << 8) ^ 0x7CAB0000) & (v62 ^ 0x40340169)))) ^ 0xD6A0737C;
    return v73(385830480, &STACK[0x244], a1, a2, a3, a4, 3881679837, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t sub_254433F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v24 = 1037613739 * (&a18 ^ 0xD1022D7F);
  a21 = (v23 + 805) ^ v24;
  a22 = (a11 ^ 0x7E37F3EF) + ((2 * a11) & 0xFC6FE7DE) + v24 + v23 - 189 - 36029540;
  a19 = a14;
  a20 = a12;
  v25 = (*(v22 + 8 * (v23 ^ 0xD81)))(&a18);
  return (*(v22 + 8 * ((3222 * (a18 == 585076288)) ^ v23)))(v25);
}

uint64_t sub_254433FDC@<X0>(int a1@<W0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v12 = v7 + 32;
  v13 = (v12 ^ v10 ^ v6) + v5;
  v14 = *(v4 + v13 - 15);
  v15 = *(v4 + v13 - 31);
  v16 = a2 + v13;
  *(v16 - 15) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a3)), a4);
  *(v16 - 31) = vaddq_s8(vsubq_s8(v15, vandq_s8(vaddq_s8(v15, v15), a3)), a4);
  return (*(v11 + 8 * (((v8 != v12) * a1) ^ v9)))();
}

uint64_t sub_254433FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  *(*(a13 + 96) + 504) = v37 + 1;
  *(*(a13 + 96) + 496) = a15 - 1;
  v40 = 1785193651 * ((698681216 - ((v39 - 160) | 0x29A50780) + ((v39 - 160) | 0xD65AF87F)) ^ 0xC586145F);
  *(v39 - 144) = v40 ^ 0x93107673;
  *(v39 - 156) = v40 - 562358852;
  STACK[0x2D8] = &a28;
  v41 = (*(v38 + 19360))(v39 - 160);
  return (*(v38 + 8 * ((469 * (a15 - 393083650 + (a37 & 0x3Fu) + 679 < 0xFFFFFFC0)) ^ 0xD6u)))(v41);
}

uint64_t sub_2544341E0(int a1)
{
  v8 = (v5 - 32);
  v9 = (v6 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v3 != 32) * ((v4 ^ (v2 + 479)) * a1 - 1624)) ^ (v1 + v4 + 1651))))();
}

uint64_t sub_254434360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, char a18, int a19, int a20, char a21, char *a22, int a23, unsigned int a24, char *a25, int a26, char *a27, int *a28, uint64_t a29)
{
  a17 = 912550143;
  v31 = *(a2 + 4);
  v32 = *(a2 + 8);
  v33 = 1082434553 * ((&a22 - 691287185 - 2 * (&a22 & 0xD6CBCB6F)) ^ 0x4D8C3DE5);
  a25 = &a16;
  a24 = v31 + (((v30 - 10) | 0x10A) ^ 0x45815530) + v33;
  a22 = &a18;
  a28 = &a17;
  a29 = v32;
  a27 = &a21;
  a26 = v33 + v30 + 1588;
  v35 = (*(v29 + 8 * (v30 + 2260)))(&a22);
  return (*(v29 + 8 * ((434 * (a23 == 585076288)) ^ v30)))(v35, a2);
}

uint64_t sub_25443445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, uint64_t a18, char a19)
{
  a17 = v19 - 1047256521;
  *(v22 - 112) = (v21 - 1278) ^ (1785193651 * ((v22 - 120) ^ 0x13DCEC20));
  *(v22 - 104) = &a19;
  *(v22 - 120) = a15;
  (*(v20 + 8 * (v21 + 683)))(v22 - 120);
  *(v22 - 120) = (v21 - 1003) ^ (843532609 * ((((2 * (v22 - 120)) | 0xDF7688F4) - (v22 - 120) + 272939910) ^ 0xB3F610FF));
  *(v22 - 112) = &a16;
  *(v22 - 104) = a15;
  v23 = (*(v20 + 8 * (v21 + 644)))(v22 - 120);
  return (*(v20 + 8 * (((*(v22 - 116) <= 0x76CDBDD1u) * ((v21 - 1588) ^ v21 ^ 0x23C ^ 0x47D)) ^ v21)))(v23);
}

uint64_t sub_25443471C@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 ^ 0x2E4;
  v8 = v3;
  v7 = (v2 - 268) ^ (1785193651 * ((&v6 & 0x2CF33FA5 | ~(&v6 | 0x2CF33FA5)) ^ 0xC0D02C7A));
  v6 = a1;
  result = (*(v1 + 8 * (v2 ^ 0xB9F)))(&v6);
  *(v3 + 4) = 441 * v4 - *(v3 + 4) + 1484391661;
  return result;
}

uint64_t sub_2544347AC()
{
  v4 = v0 + 1969137881 + (v3 ^ 0x297);
  v5 = ((v2 - 1679191178) < 0xD24DFC73) ^ (v4 < 0xD24DFC73);
  v6 = v2 - 1679191178 > v4;
  if (v5)
  {
    v6 = (v2 - 1679191178) < 0xD24DFC73;
  }

  return (*(v1 + 8 * ((235 * v6) ^ v3)))();
}

uint64_t sub_254434820@<X0>(uint64_t a1@<X8>)
{
  v5 = ((1965075311 - (v7 | 0x7520AB6F) + (v7 | 0x8ADF5490)) ^ 0x5BDD79EF) * v3;
  v8 = v1;
  v7[0] = v2 ^ ((v2 ^ 0xCED0D82F) + 1022431055) ^ ((v2 ^ 0x21B6EBBE) - 745063200) ^ ((v2 ^ 0x7EFFFFFB) - 1931597669) ^ v5 ^ 0x9CA9A1FB ^ (((19 * (v4 ^ 0x818)) ^ 0x6E6632D5) + (v2 ^ 0x9C47E4F4));
  v7[1] = (v4 - 465) ^ v5;
  return (*(a1 + 8 * (v4 + 394)))(v7);
}

uint64_t sub_25443493C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v22 = HIDWORD(v14) + v19 * (*(*(a13 + 8) + 4) ^ v13) + (v20[1] ^ v13) + HIDWORD(v16) + v21 * (v17 ^ 0x80 ^ (v13 - 736) ^ *(*(a12 + 8) + 4));
  *v20 = v22 + v13 - (a2 & (2 * v22));
  return (*(v18 + 8 * (v17 | (2 * (v15 == 2)))))();
}

uint64_t sub_2544349BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = -542396526 - 1388665877 * (((&a15 | 0x70B6400A) - (&a15 & 0x70B6400A)) ^ 0xFD1B22E6);
  v18 = (*(v17 + 19416))(&a15);
  return (*(v17 + 8 * ((564 * (a16 == v16)) ^ 0x55Au)))(v18);
}

uint64_t sub_254434A54@<X0>(int a1@<W8>)
{
  v6 = (a1 + 1494221055) | 0x40F5020;
  *v1 = (v6 - 977257960) ^ v10;
  v12 = v9;
  v11 = v5 - ((&v11 + 1931221813 - 2 * (&v11 & 0x731C1B35)) ^ 0xFEB179D9) * v4 + v6;
  (*(v3 + 8 * (v6 ^ 0x5D1F5D77)))(&v11);
  v12 = v8;
  v11 = v5 + v6 - ((&v11 & 0xCE6B67F0 | ~(&v11 | 0xCE6B67F0)) ^ 0xBC39FAE3) * v4;
  (*(v3 + 8 * (v5 + v6 + 1083)))(&v11);
  return v2 ^ 0x22DF8E40u;
}

uint64_t sub_254434B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  (*(v27 + 8 * (v30 + v29 + 1748)))(a20 + a19, 0x100004077774924);
  v31 = (*(v27 + 8 * (v30 + v29 + 1806)))();
  *v28 = v31;
  return sub_254434C20(v31, 1662178187, 205881159, 656731889, 1215512924, 867708553, 78, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_254434C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, unsigned int a17)
{
  v18 = a8 + a14 + (a16 & 0xEC22DD53) - 1298;
  v19 = v18 < a8;
  v20 = v18 > a17;
  if (a17 < a8 != v19)
  {
    v20 = v19;
  }

  return (*(v17 + 8 * ((3976 * v20) ^ (a7 - 1172748959))))(3174);
}

uint64_t sub_254434C88(uint64_t a1, int a2)
{
  v7 = a2 + 997;
  v8 = v2 + v4 + (((v6 ^ 0x55F313D5) + ((a2 + 997) ^ 0x710) - 1441994040) ^ ((v6 ^ 0x216F78F2) - 560953586) ^ ((v6 ^ 0x5643E567) + a2 - 1447290869)) + 1770380162;
  v9 = v5 + 1857809721;
  v10 = (v9 < 0xCF2003FF) ^ (v8 < 0xCF2003FF);
  v11 = v8 > v9;
  if (v10)
  {
    v11 = v8 < 0xCF2003FF;
  }

  return (*(v3 + 8 * ((226 * !v11) ^ v7)))();
}

uint64_t sub_254434DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, uint64_t a18, int a19, int a20, uint64_t *a21, int a22, unsigned int a23, char *a24, int a25, int *a26, int *a27, uint64_t a28)
{
  a17 = 912550143;
  v31 = 1082434553 * ((&a21 & 0xB6C7C244 | ~(&a21 | 0xB6C7C244)) ^ 0xD27FCB31);
  a23 = v31 + a20 + 1166103710;
  a24 = &a16;
  a28 = a18;
  a25 = v31 + v28 + 541 + 742;
  a26 = &a20;
  a27 = &a17;
  a21 = &a18;
  v32 = (*(v29 + 8 * ((v28 + 541) ^ 0xA7E)))(&a21);
  return (*(v29 + 8 * (((a22 == 585076288) * ((((v28 + 541) ^ 0x223) + 1273) ^ 0xDBF)) ^ (v28 + 541))))(v32, v30);
}

uint64_t sub_254435228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  if (a12)
  {
    v13 = a11 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  return (*(v12 + 64 * v14 + 11800))();
}

uint64_t sub_2544352C0()
{
  v0.n128_u64[0] = 0x4040404040404040;
  v0.n128_u64[1] = 0x4040404040404040;
  v1.n128_u64[0] = 0xA0A0A0A0A0A0A0A0;
  v1.n128_u64[1] = 0xA0A0A0A0A0A0A0A0;
  return sub_2544352E4(v0, v1);
}

uint64_t sub_2544352E4@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = (v7 + v6 + a1);
  v12 = vaddq_s8(vsubq_s8(*(v10 + v6 + 16), vandq_s8(vaddq_s8(*(v10 + v6 + 16), *(v10 + v6 + 16)), a2)), a3);
  *v11 = vaddq_s8(vsubq_s8(*(v10 + v6), vandq_s8(vaddq_s8(*(v10 + v6), *(v10 + v6)), a2)), a3);
  v11[1] = v12;
  return (*(v8 + 8 * ((v6 + v5 - 1442 == v3) | (4 * (v6 + v5 - 1442 == v3)) | (v9 + v4 + 442))))();
}

uint64_t sub_254435344@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x244] + a1 + 72);
  v6 = ((2 * a1) & 0xCC7BEEF0) + (a1 ^ 0x663DF77B);
  *(v3 + v6 + (v2 ^ 0x12A ^ (v1 + 29))) = v5 ^ 0x5F;
  v7 = v6 + v1;
  *(v3 + v7) = (BYTE1(v5) ^ 0xF4) + (~(2 * (BYTE1(v5) ^ 0xF4)) | 0xBF) - 95;
  *(v3 + v7 + 1) = (BYTE2(v5) ^ 0x58) - ((v5 >> 15) & 0x40) - 96;
  *(v3 + v7 + 2) = (HIBYTE(v5) ^ 0x9E) - ((v5 >> 23) & 0x40) - 96;
  return (*(v4 + 8 * ((63 * (a1 + 4 >= LODWORD(STACK[0x2A0]))) ^ v2)))();
}

void sub_254435418(int a1@<W8>)
{
  if (a1 == 1384666459)
  {
    v2 = 585076288;
  }

  else
  {
    v2 = -585050728;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_254435478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = a14;
  *(v18 - 120) = &a15;
  *(v18 - 128) = (v17 - 377) ^ (1785193651 * ((((v18 - 136) | 0x2E57C884) - (v18 - 136) + ((v18 - 136) & 0xD1A83778)) ^ 0x3D8B24A4));
  (*(v15 + 8 * (v17 + 1584)))(v18 - 136);
  v19 = 1037613739 * ((1437982115 - ((v18 - 136) | 0x55B5DDA3) + ((v18 - 136) | 0xAA4A225C)) ^ 0x7B480F23);
  *(v18 - 120) = v19 + v17 - 523;
  *(v18 - 128) = a13;
  *(v18 - 136) = v19 ^ 0xDDE289F;
  (*(v15 + 8 * (v17 ^ 0xA07)))(v18 - 136);
  *(v18 - 128) = a13;
  *(v18 - 120) = a14;
  *(v18 - 136) = (v17 - 102) ^ (843532609 * ((v18 + 1751940523 - 2 * ((v18 - 136) & 0x686C7E33)) ^ 0x34212AB6));
  v20 = (*(v15 + 8 * (v17 + 1545)))(v18 - 136);
  return (*(v15 + 8 * (((*(v18 - 132) > v16 + (v17 ^ 0x595u) - 1755) * (v17 - 808)) ^ v17)))(v20);
}

uint64_t sub_254435600()
{
  v5 = v0 + 164;
  v6 = *(v3 + 48 * (v1 + v4)) == ((v5 + 1074271740) | 0xAAC38654) - 1834666004;
  return (*(v2 + 8 * (((2 * (((v5 - 1) ^ v6) & 1)) & 0xF7 | (8 * (((v5 - 1) ^ v6) & 1))) ^ v5)))();
}

uint64_t sub_254435648@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((73 * (v6 == ((a2 + v4 + 3089) ^ 0x5D5))) ^ (a2 + v4 + 3677))))();
}

uint64_t sub_254435688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  a17 = -542396526 - 1388665877 * (((&a17 | 0xCA7AEBAC) - (&a17 & 0xCA7AEBAC)) ^ 0x47D78940);
  v19 = (*(v18 + 19416))(&a17);
  return (*(v18 + 8 * (((a18 == 585076288) | (4 * (a18 == 585076288))) ^ 0x193u)))(v19);
}

void sub_254435724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, int *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = (a34 + 4 * v41);
  v43 = *v42;
  LODWORD(v42) = -468040725 * ((*(*a31 + (((v39 - 622) & 0xFFFFFFFFFFFFFFFCLL ^ 0x69CE0794) & *a35)) ^ v42) & 0x7FFFFFFF);
  LODWORD(v42) = v42 ^ (v42 >> 16);
  v44 = v42 * (v39 - 468041348);
  *(a39 + 4 * v41) ^= v43 ^ *(*(&off_286663530 + (v40 ^ (v40 - 128))) + HIBYTE(v44) - 3) ^ *(*(&off_286663530 + v39 - 623) + HIBYTE(v44) - 2) ^ *(*(&off_286663530 + v39 - 585) + HIBYTE(v44)) ^ (1139474432 * v42) ^ v44 ^ (851697649 * HIBYTE(v44));
  JUMPOUT(0x254435804);
}

uint64_t sub_254435840@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, char a12, int a13, int a14, char a15, char *a16, int a17, unsigned int a18, char *a19, int a20, char *a21, int *a22, uint64_t a23)
{
  v24 = a2 + 537;
  v25 = 24 * (((a2 - 149) | 0x91) ^ 0x196);
  a11 = 912550143;
  v26 = *(a1 + 4);
  v27 = *(a1 + 8);
  v28 = 1082434553 * ((((2 * &a16) | 0xADE11C0A) - &a16 + 688878075) ^ 0x4DB7788F);
  a16 = &a12;
  a20 = v28 + v24 + 742;
  a18 = v28 + v26 + 1166103710;
  a19 = &a10;
  a23 = v27;
  a21 = &a15;
  a22 = &a11;
  v30 = (*(v23 + 8 * (v24 + 1414)))(&a16);
  return (*(v23 + 8 * (((a17 == 585076288) * (v25 + 1146)) ^ v24)))(v30, a1);
}

uint64_t sub_2544359A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  if (v24 >= 0x20546623)
  {
    v26 = -237578219;
  }

  else
  {
    v26 = -1326587410;
  }

  v27 = 1564307779 * ((((2 * &a17) | 0xD8B5EA90) - &a17 + 329583288) ^ 0x7B57395B);
  a19 = v22 - v27 - 2013067380;
  a20 = -1928441662 - v27;
  a21 = &a12;
  a17 = a14;
  a22 = v26 - v27;
  v28 = (*(v25 + 8 * (v22 + 1595)))(&a17);
  return (*(v25 + 8 * (((a18 == ((v22 - 682120667) & 0xA9E ^ (v23 - 2036))) * ((7 * (v22 ^ 0x315)) ^ 0x982)) ^ v22)))(v28);
}

uint64_t sub_254435C38@<X0>(int a1@<W0>, int a2@<W7>, int a3@<W8>)
{
  HIDWORD(v15) = a1 ^ v9;
  LODWORD(v15) = a1 ^ (v14 + 94 * (v5 ^ 0x57C) - 658);
  v16 = (a2 ^ v7) & (a3 ^ 0x452635EB) ^ a2 & 0xDB7EC114;
  v17 = (v15 >> 27) + (((v4 ^ 0x58AF3FD8) - 1487880152) ^ ((v4 ^ 0xF24659) - 15877721) ^ ((v4 ^ 0xC6058D7E) + 972714626)) + (((*(v3 + 4 * (v6 + v10)) ^ 0x97739666) + 1754032538) ^ ((*(v3 + 4 * (v6 + v10)) ^ 0x9328BDC8) + 1826046520) ^ ((*(v3 + 4 * (v6 + v10)) ^ 0x2684A5EE) - 646227438)) + (v16 & 0x6FE68D40 ^ 0xD13F73BF ^ (v16 ^ 0xBED9FEFF) & (v13 & 0x1FEDE854 ^ 0x8E5192EB ^ (a2 ^ 0x81B51CAB) & (v13 ^ v11))) + 1480301356;
  return (*(v8 + 8 * ((3364 * (v6 + 1 == v12 + 4)) ^ v5)))(v17 ^ ((v17 ^ 0xDC0CC09A) + 527671602) ^ ((v17 ^ 0xADE700FC) + 1855480152) ^ ((v17 ^ 0x3634E38D) - 179600857) ^ ((v17 ^ 0x7B5FBDBF) - 1205806059) ^ 0xA2D86AAB);
}

uint64_t sub_254435ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = v19 + 2066391179 * ((&a17 & 0xC29BD8C6 | ~(&a17 | 0xC29BD8C6)) ^ 0x9243A521) + 822;
  a18 = &a13;
  v22 = (*(v20 + 8 * (v19 + 1467)))(&a17);
  return (*(v20 + 8 * (((a17 != 585076288) * (v21 + ((v19 + 719823926) & 0xD5185CD8) + ((v19 + 4210891) | 0x811D2043) + 327)) ^ v19)))(v22);
}

void sub_254435F98(unsigned int *a1, int a2)
{
  *(a1 + v4 + 4) = 85;
  *(a1 + (v3 + 2) + 4) = 73;
  v5 = ((a2 - v2 - 16643) & 0xFF7BFF76 ^ (v2 + 1)) + v3 + 4;
  *a1 = v5;
  v6 = a1 + 1;
  *(v6 + (v3 + 3)) = 68;
  *(v6 + v3) = 47;
  *(v6 + (v3 + 4)) = 61;
  *(v6 + v5) = 0;
  JUMPOUT(0x254427424);
}

uint64_t sub_254435FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v17 = (v10 ^ 0x41020B41u) + v11;
  *(v16 + 4 * v8) = v17 + v10 - ((v17 << (((v15 - 30) | a8) ^ v13)) & 0x82041682);
  return (*(v9 + 8 * (((v17 < (((v15 + 25) | 8u) ^ (v12 + 2653))) * v14) ^ v15)))();
}

uint64_t sub_254436024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25)
{
  LODWORD(a22) = (v26 + 783) ^ ((((&a22 | 0x8478356D) - &a22 + (&a22 & 0x7B87CA90)) ^ 0x9057A8F6) * v25);
  a23 = a21;
  a25 = &a19;
  (*(v28 + 8 * (v26 ^ 0xA54)))(&a22);
  LODWORD(a22) = (v26 + 783) ^ (((&a22 & 0xE4538AB0 | ~(&a22 | 0xE4538AB0)) ^ 0xF83E8D4) * v25);
  a25 = &a16;
  a23 = a21;
  (*(v28 + 8 * (v26 ^ 0xA54)))(&a22);
  HIDWORD(a23) = (v26 + 140) ^ ((&a22 ^ 0x8DAD62EC) * v27);
  a22 = a21;
  v29 = (*(v28 + 8 * (v26 ^ 0xA5F)))(&a22);
  return (*(v28 + 8 * (((a23 == 585076288) * ((v26 - 350) ^ 0xA08)) ^ v26)))(v29);
}

void sub_254436150(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a3 = a1;
  a4 = v7;
  a5 = v8 + 50899313 * (&a3 ^ 0x142F9D9B) + 672;
  a6 = v7;
  (*(v6 + 8 * (v8 ^ 0x8DE)))(&a3);
  JUMPOUT(0x25442A278);
}

uint64_t sub_254436208(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, unsigned int a42)
{
  v47 = v44[396] ^ ((*v44 & 0x7FFFFFFE | v44[623] & 0x80000000) >> 1);
  v44[623] = (v47 + a3 - (a2 & (2 * v47))) ^ *(v45 + 4 * (*v44 & 1));
  return (*(v43 + 8 * ((235 * (a42 > (v42 ^ (v46 + 340) ^ (v46 - 429)))) ^ v42)))();
}

uint64_t sub_254436278@<X0>(unsigned int a1@<W8>)
{
  v6 = *(&STACK[0x238] + a1 + 72);
  v7 = ((2 * a1) & 0xFE1EEFF8) + (a1 ^ 0x7F0F77FE);
  *(v4 + v7 + ((v2 - 1779354302) & 0x6A0EC97E ^ (v1 + 27))) = v6 ^ 0x5F;
  v8 = v7 + v1;
  *(v4 + v8) = (BYTE1(v6) ^ 0xF4) + (~(2 * (BYTE1(v6) ^ 0xF4)) | 0xBF) - 95;
  *(v4 + v8 + 1) = (BYTE2(v6) ^ 0x58) - ((v6 >> 15) & 0x40) - 96;
  *(v4 + v8 + 2) = (HIBYTE(v6) ^ 0x9E) - ((v6 >> 23) & 0x40) - 96;
  return (*(v5 + 8 * (((a1 + 4 >= LODWORD(STACK[0x294])) * v3) ^ v2)))();
}

void sub_2544365C0(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) == 742196933 || *(*a1 + 4) == 742196933;
  v1 = *(a1 + 8) + 1361651671 * ((a1 - 406323965 - 2 * (a1 & 0xE7C7FD03)) ^ 0x34E50D8F);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_254436718@<X0>(int a1@<W8>)
{
  *v2 = a1;
  v5 = v1 ^ 0x782;
  v10 = v7;
  v9 = (v1 ^ 0x38E) - ((((2 * (&v9 ^ 0xCBE2FE18)) | 0x4298190) - (&v9 ^ 0xCBE2FE18) - 34914504) ^ 0x445B5C3C) * v3 - 123;
  (*(v4 + 8 * ((v1 ^ 0x38E) + 960)))(&v9);
  v10 = v8;
  v9 = v5 - (((&v9 | 0xA8B6B5F6) - (&v9 & 0xA8B6B5F6)) ^ 0x251BD71A) * v3 + 913;
  (*(v4 + 8 * (v5 + 1996)))(&v9);
  return 0;
}

uint64_t sub_254436908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = v10 + v9 + 1606475097;
  if (v10 > 0x88D12A8C != v11 < 0x772ED573)
  {
    v12 = v10 > 0x88D12A8C;
  }

  else
  {
    v12 = a8 + 1999556408 + v10 > v11;
  }

  return (*(v8 + 8 * ((v12 * (((a8 - 781175612) & 0x2E8FCDFF) - 2188)) ^ a8)))();
}

uint64_t sub_254436990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _BYTE *a16)
{
  v18 = (STACK[0x2E0] + 31);
  v19 = -1023602255 - (((v16 ^ 0x17) + 31) & 2);
  a16[12] = (HIBYTE(v19) ^ 0xC2) - ((v19 >> 23) & 0x40) - 96;
  a16[13] = (BYTE2(v19) ^ 0xFD) - ((2 * (BYTE2(v19) ^ 0xFD)) & 0x40) - 96;
  a16[14] = (BYTE1(v19) ^ 0x11) - ((v19 >> 7) & 0x40) - 96;
  a16[15] = v19 ^ 0x10;
  *(v18 - 15) ^= *a16 ^ 0xA0;
  *(v18 - 14) ^= a16[1] ^ 0xA0;
  *(v18 - 13) ^= a16[2] ^ 0xA0;
  *(v18 - 12) ^= a16[3] ^ 0xA0;
  *(v18 - 11) ^= a16[4] ^ 0xA0;
  *(v18 - 10) ^= a16[5] ^ 0xA0;
  *(v18 - 9) ^= a16[6] ^ 0xA0;
  *(v18 - 8) ^= a16[7] ^ 0xA0;
  *(v18 - 7) ^= a16[8] ^ 0xA0;
  *(v18 - 6) ^= a16[9] ^ 0xA0;
  *(v18 - 5) ^= a16[10] ^ 0xA0;
  *(v18 - 4) ^= a16[11] ^ 0xA0;
  *(v18 - 3) ^= a16[12] ^ 0xA0;
  *(v18 - 2) ^= a16[13] ^ 0xA0;
  *(v18 - 1) ^= a16[14] ^ 0xA0;
  *v18 ^= a16[15] ^ 0xA0;
  return (*(v17 + 8 * ((v16 - 962) ^ 0x58)))(160);
}

uint64_t sub_254436BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, unsigned int a21)
{
  v24 = v23 + 856043689 > a21;
  if (a21 < a20 != v23 + 856043689 < (a5 ^ (a5 - 430)) + 856042603)
  {
    v24 = v23 + 856043689 < (a5 ^ (a5 - 430)) + 856042603;
  }

  return (*(v22 + 8 * (((((a6 + a5 - 122) ^ v24) & 1) * v21) | (a6 + a5 + 1568))))(4023107287, 143);
}

uint64_t sub_254436CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, int a23, int a24, int a25, char *a26, int a27)
{
  if (a13 >= 0x20546623)
  {
    v31 = -237578219;
  }

  else
  {
    v31 = -1326587410;
  }

  v32 = 1564307779 * ((&a22 + 637292271 - 2 * (&a22 & 0x25FC4EEF)) ^ 0xB2F182FC);
  a27 = v31 - v32;
  a26 = &a21;
  a22 = a20;
  a24 = v29 - v32 - 2013067003;
  a25 = -779692457 - v32;
  v33 = (*(v30 + 8 * (v29 + 1972)))(&a22);
  return (*(v30 + 8 * ((1883 * (a23 == (v28 ^ (v27 - 723) ^ (v29 - 105)))) ^ v29)))(v33);
}

uint64_t sub_254436EE8@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{
  v40 = STACK[0x490];
  STACK[0x408] = *(v38 + 8 * (LODWORD(STACK[0x2C8]) - 1537));
  STACK[0x530] = v40;
  LODWORD(STACK[0x53C]) = 1899262054;
  STACK[0x348] = a1;
  return (*(v38 + 8 * ((2490 * ((*(v40 + 68) & 0x3Fu) - 50 < (a38 & 0xA2E395D9 ^ 0x144) - 204)) ^ a38 & 0xA2E395D9)))();
}

void sub_254436F04(uint64_t a1)
{
  *(v2 + 48) = a1;
  LODWORD(STACK[0x3D0]) = v1;
  JUMPOUT(0x254436F58);
}

void sub_254436F98()
{
  LODWORD(STACK[0x334]) = STACK[0x4BC];
  *(v0 + 424) = *(v0 + 400);
  LODWORD(STACK[0x500]) = 912550143;
  JUMPOUT(0x25445EF48);
}

uint64_t sub_254436FCC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v9 + 1;
  if (v14 == 19)
  {
    v16 = 0;
  }

  else
  {
    v15 = (*(v10 + v14) ^ 0xA0) - (*(v11 + v14) ^ 0xA0);
    v16 = v15 + a8 - ((v15 << v12) & a1) == a8;
  }

  v17 = !v16;
  return (*(v13 + 8 * ((v17 * a2) ^ v8)))();
}

uint64_t sub_2544370B4(uint64_t a1)
{
  v4 = ((v1 ^ 0x492) - 533) | 0x150u;
  v5 = STACK[0x320];
  v6 = LODWORD(STACK[0x448]);
  v7 = (v6 << (((v1 ^ 0x92) - 51) ^ 0xE3u)) & 0x1F457F7EELL;
  *(v3 + 216) = ((v4 - 0x1468610805D40559) ^ v6) + v7 + 0x1468610805D40409;
  return (*(v2 + 8 * ((37 * (((v4 - 0x1468610805D40559) ^ v6) + v7 != 0xEB979EF7FA2BFBF7)) ^ v1 ^ 0x492)))(a1, v5);
}

uint64_t sub_254437144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v21 - 120) = (v17 + 621) ^ (((~((v21 - 120) | v18) + ((v21 - 120) & v18)) ^ 0x23427773) * v19);
  *(v21 - 112) = &a16;
  *(v21 - 104) = a13;
  v22 = (*(v16 + 8 * (v17 + 2268)))(v21 - 120);
  return (*(v16 + 8 * (((v20 + *(v21 - 116) + 251 >= 42 * (v17 ^ 0x7Eu) - 1952898528) * ((v17 ^ 0x2D7) - 515)) ^ v17)))(v22);
}

uint64_t sub_2544372E8(uint64_t a1, uint64_t a2, int a3)
{
  *(v7 + (a1 ^ a2 ^ v6) + v3) = *(v5 + (a1 ^ a2 ^ v6) + v3);
  v10 = v8 == a1;
  v11 = a1 + 8;
  v12 = v10;
  return (*(v9 + 8 * ((v12 * a3) | v4)))(v11);
}

uint64_t sub_25443731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a2 + v3 - 1 - 31);
  v7 = a1 + v3 - 1;
  *(v7 - 15) = *(a2 + v3 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((487 * (((v2 + v4 + 2711) ^ 0x6CFLL) == (v3 & 0xFFFFFFE0))) ^ (v2 + v4 + 1168))))();
}

uint64_t sub_25443737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v33 = *(v32 - 124);
  if (v33 == 1)
  {
    v35 = a6 + v27 + 3480;
    v39 = *(v32 - 156);
    v38 = *(v32 - 152);
    *(v32 - 164) = (8 * v38) ^ 0xA0;
    *(v32 - 163) = (v38 >> 5) ^ 0xA0;
    *(v32 - 162) = (a6 + v27 - 104) ^ (v38 >> 13) ^ 0xF4;
    *(v32 - 161) = (v38 >> 21) ^ 0xA0;
    *(v32 - 160) = ((__PAIR64__(v39, v38) >> 29) - ((2 * (__PAIR64__(v39, v38) >> 29)) & 0xF3) + 121) ^ 0xD9;
    *(v32 - 159) = (v39 >> 5) ^ 0xA0;
    *(v32 - 158) = (v39 >> 13) ^ 0xA0;
    v37 = (v39 >> 21) ^ 0xFFFFFFA0;
  }

  else
  {
    v34 = -391101199;
    if (v33 != 2)
    {
      goto LABEL_6;
    }

    v35 = v27 ^ (v27 - 844);
    v37 = *(v32 - 156);
    v36 = *(v32 - 152);
    *(v32 - 164) = (v37 >> 21) - (((v27 ^ (v27 - 76)) - 20) & (2 * (v37 >> 21))) - 96;
    *(v32 - 163) = (v37 >> 13) - ((v37 >> 12) & 0x40) - 96;
    *(v32 - 162) = (v37 >> 5) - ((v37 >> 4) & 0x40) - 96;
    *(v32 - 161) = (__PAIR64__(v37, v36) >> 29) - ((2 * (__PAIR64__(v37, v36) >> 29)) & 0x40) - 96;
    *(v32 - 160) = (v36 >> 21) - ((v36 >> 20) & 0x40) - 96;
    *(v32 - 159) = (v36 >> 13) - ((v36 >> 12) & 0x40) - 96;
    *(v32 - 158) = (v36 >> 5) - ((v36 >> 4) & 0x40) - 96;
    LOBYTE(v37) = (8 * (v36 + (~(2 * v36) | 0xFD)) - 112) ^ 0x28;
  }

  v34 = v35 ^ (v27 - 844);
  *(v32 - 157) = v37;
LABEL_6:
  a19 = a13 - 1165189149;
  a22 = v27 ^ (v27 - 1262);
  v40 = (v32 - 220);
  v41.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v41.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v42 = vdupq_n_s32(0x22DF8E60u);
  v43 = vdupq_n_s32(0x22DF8E40u);
  a23 = v31 - 16;
  a18 = v27 + 83754221;
  a16 = (v27 - 1124723990) & 0x5A59AFFF;
  a17 = v27 - 1124723990;
  v44 = *(v28 + 8 * (a6 + v34 + 2190));
  v45 = (&a27 + a8);
  a25 = a8 + 320;
  v46 = *(v32 - 148);
  v47 = *(v32 - 124);
  if (v47 != 2)
  {
    if (v47 == 1)
    {
      a20 = v44;
      v91 = vld4q_s8(v40);
      v48 = veorq_s8(v91.val[0], v41);
      v49 = vmovl_high_u8(v48);
      v50 = vmovl_high_u16(v49);
      v51 = vmovl_u16(*v49.i8);
      v52 = vmovl_u8(*v48.i8);
      v53 = vmovl_high_u16(v52);
      v54 = vmovl_u16(*v52.i8);
      v55 = veorq_s8(v91.val[1], v41);
      v56 = vmovl_u8(*v55.i8);
      v57 = vmovl_high_u8(v55);
      v58 = veorq_s8(v91.val[2], v41);
      _Q25 = vmovl_u8(*v58.i8);
      _Q24 = vmovl_high_u8(v58);
      __asm
      {
        SHLL2           V26.4S, V24.8H, #0x10
        SHLL2           V27.4S, V25.8H, #0x10
      }

      v91.val[0] = veorq_s8(v91.val[3], v41);
      v91.val[1] = vmovl_u8(*v91.val[0].i8);
      v91.val[2] = vmovl_u16(*v91.val[1].i8);
      v91.val[0] = vmovl_high_u8(v91.val[0]);
      v91.val[3] = vmovl_u16(*v91.val[0].i8);
      v91.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v91.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v57, 8uLL), v50));
      v91.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v91.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v57.i8, 8uLL), v51));
      v91.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v91.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v56, 8uLL), v53));
      v67 = vdupq_n_s32(0x22DF8E4Au);
      v91.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v91.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v56.i8, 8uLL), v54));
      v68 = veorq_s8(vandq_s8(v91.val[0], v67), (*&v50 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
      v69 = veorq_s8(vandq_s8(v91.val[3], v67), (*&v51 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
      v70 = veorq_s8(vandq_s8(v91.val[1], v67), (*&v53 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
      v71 = veorq_s8(vandq_s8(v91.val[2], v67), (*&v54 & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
      *v45 = vaddq_s32(vsubq_s32(v91.val[2], vaddq_s32(v71, v71)), v43);
      v45[1] = vaddq_s32(vsubq_s32(v91.val[1], vaddq_s32(v70, v70)), v43);
      v45[2] = vaddq_s32(vsubq_s32(v91.val[3], vaddq_s32(v69, v69)), v43);
      v45[3] = vaddq_s32(vsubq_s32(v91.val[0], vaddq_s32(v68, v68)), v43);
      JUMPOUT(0x25443B700);
    }

    JUMPOUT(0x25443BDD0);
  }

  a20 = v44;
  v90 = vld4q_s8(v40);
  v72 = veorq_s8(v90.val[0], v41);
  v73 = vmovl_high_u8(v72);
  v74 = vmovl_u8(*v72.i8);
  v75 = veorq_s8(v90.val[1], v41);
  _Q21 = vmovl_high_u8(v75);
  _Q20 = vmovl_u8(*v75.i8);
  v78 = vshll_n_s16(*_Q20.i8, 0x10uLL);
  __asm { SHLL2           V20.4S, V20.8H, #0x10 }

  v79 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm { SHLL2           V21.4S, V21.8H, #0x10 }

  v80 = veorq_s8(v90.val[2], v41);
  v81 = vmovl_u8(*v80.i8);
  v82 = vmovl_high_u8(v80);
  v90.val[0] = veorq_s8(v90.val[3], v41);
  v90.val[1] = vmovl_u8(*v90.val[0].i8);
  v90.val[2] = vmovl_u16(*v90.val[1].i8);
  v90.val[1] = vmovl_high_u16(v90.val[1]);
  v90.val[0] = vmovl_high_u8(v90.val[0]);
  v90.val[3] = vmovl_u16(*v90.val[0].i8);
  v90.val[0] = vmovl_high_u16(v90.val[0]);
  v83 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v82, 8uLL)), vshlq_n_s32(vmovl_high_u16(v73), 0x18uLL)), v90.val[0]);
  v84 = vorrq_s8(vorrq_s8(vorrq_s8(v79, vshll_n_u16(*v82.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v73.i8), 0x18uLL)), v90.val[3]);
  v85 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v81, 8uLL)), vshlq_n_s32(vmovl_high_u16(v74), 0x18uLL)), v90.val[1]);
  v86 = vorrq_s8(vorrq_s8(vorrq_s8(v78, vshll_n_u16(*v81.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v74.i8), 0x18uLL)), v90.val[2]);
  v90.val[0] = veorq_s8(vandq_s8(v83, v42), (*v90.val & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
  v90.val[3] = veorq_s8(vandq_s8(v84, v42), (*&v90.val[3] & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
  v90.val[1] = veorq_s8(vandq_s8(v85, v42), (*&v90.val[1] & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
  v90.val[2] = veorq_s8(vandq_s8(v86, v42), (*&v90.val[2] & __PAIR128__(0xFFFFFF20FFFFFF20, 0xFFFFFF20FFFFFF20)));
  *v45 = vaddq_s32(vsubq_s32(v86, vaddq_s32(v90.val[2], v90.val[2])), v43);
  v45[1] = vaddq_s32(vsubq_s32(v85, vaddq_s32(v90.val[1], v90.val[1])), v43);
  v45[2] = vaddq_s32(vsubq_s32(v84, vaddq_s32(v90.val[3], v90.val[3])), v43);
  v45[3] = vaddq_s32(vsubq_s32(v83, vaddq_s32(v90.val[0], v90.val[0])), v43);
  v87 = a22;
  v88 = &v45[347725083].i32[v29 + 2];
  *v88 = __ROR4__(v45[347724732].i32[v29 + (a22 + 137)] ^ v30 ^ *(v88 - 8) ^ *(v88 - 14) ^ *(v88 - 16), 31) ^ 0x1E6E67BF;
  return (*(v28 + 8 * ((393 * (v31 == 1390900271)) ^ v87)))(v46);
}

uint64_t sub_254437508(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 16448;
  a1.n128_u8[2] = 64;
  a1.n128_u8[3] = 64;
  a1.n128_u8[4] = 64;
  a1.n128_u8[5] = 64;
  a1.n128_u8[6] = 64;
  a1.n128_u8[7] = 64;
  a2.n128_u16[0] = -24416;
  a2.n128_u8[2] = -96;
  a2.n128_u8[3] = -96;
  a2.n128_u8[4] = -96;
  a2.n128_u8[5] = -96;
  a2.n128_u8[6] = -96;
  a2.n128_u8[7] = -96;
  return sub_254437534(a1, a2);
}

void sub_254437570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15[31] = 0x2C3D06C500000040;
  v15[32] = v15 + 33;
  v21 = v15 + 65;
  v15[65] = 0x2C3D06C500000040;
  v15[66] = v15 + 67;
  STACK[0x290] = (v15 + 99);
  v15[99] = 0x2C3D06C500000040;
  v15[100] = v15 + 101;
  STACK[0x298] = (v15 + 133);
  v15[133] = 0x2C3D06C500000040;
  v15[134] = v15 + 135;
  STACK[0x2A0] = (v15 + 167);
  v15[167] = 0x2C3D06C500000040;
  v15[168] = v15 + 169;
  v22 = *(v19 + 48) + 4;
  v23 = 1082434553 * ((((v20 - 200) ^ 0xB99EF0D7 | 0x783C5499) - (((v20 - 200) ^ 0xB99EF0D7) & 0x783C5499)) ^ 0x5AE552C4);
  v24 = v20 - 200;
  *(v24 + 8) = v22;
  *(v24 + 16) = a15;
  *(v20 - 176) = (v18 + 277) ^ v23;
  *(v20 - 196) = v23 + 902455986 + (((v17 ^ 0x9D8E7C02) + 1651606526) ^ ((v17 ^ 0xE7135133) + 418164429) ^ ((v17 ^ 0x5842A371) - 1480762225));
  (*(v16 + 8 * (v18 ^ 0x8E6)))(v20 - 200);
  v25 = (((2 * v18) ^ 0x574) + 585074666) ^ v17;
  v26 = v22 + v25;
  v27 = 1082434553 * ((-610083679 - ((v20 - 200) | 0xDBA2DCA1) + ((v20 - 200) | 0x245D235E)) ^ 0xBF1AD5D4);
  v28 = v20 - 200;
  *(v28 + 8) = v26;
  *(v28 + 16) = v21;
  *(v20 - 196) = v27 + 902455986 + (((v17 ^ 0x77FCECDB) - 2013064411) ^ ((v17 ^ 0x94D5F7DF) + 1797916705) ^ ((v17 ^ 0xC1F69544) + 1040804540));
  *(v20 - 176) = (v18 + 277) ^ v27;
  LODWORD(STACK[0x288]) = v18 + 2022;
  (*(v16 + 8 * (v18 + 2022)))(v20 - 200);
  v29 = 1082434553 * ((2 * ((v20 - 200) & 0x2D400518) - (v20 - 200) - 759170335) ^ 0x49F80C6B);
  v30 = STACK[0x290];
  v31 = v20 - 200;
  *(v31 + 8) = v26 + v25;
  *(v31 + 16) = v30;
  *(v20 - 196) = v29 + 902455986 + (((v17 ^ 0x6DF3F358) - 1844704088) ^ ((v17 ^ 0xC588C65C) + 980892068) ^ ((v17 ^ 0x8AA4BB44) + 1968915644));
  *(v20 - 176) = (v18 + 277) ^ v29;
  (*(v16 + 8 * (v18 ^ 0x8E6)))(v20 - 200);
  v32 = v26 + v25 + v25;
  v33 = 1082434553 * (((((v20 - 200) | 0xD28CD03A) ^ 0xFFFFFFFE) - (~(v20 - 200) | 0x2D732FC5)) ^ 0xB634D94F);
  v34 = v20 - 200;
  v35 = STACK[0x298];
  *(v34 + 8) = v32;
  *(v34 + 16) = v35;
  *(v20 - 196) = v33 + 902455986 + (((v17 ^ 0x271AC5B3) - 656065971) ^ ((v17 ^ 0x662C5A47) - 1714182727) ^ ((v17 ^ 0x63E911B4) - 1676218804));
  *(v20 - 176) = (v18 + 277) ^ v33;
  (*(v16 + 8 * (v18 ^ 0x8E6)))(v20 - 200);
  v36 = 1082434553 * ((v20 - 200) ^ 0x9B47F68A);
  *(v20 - 192) = v32 + v25;
  *(v20 - 184) = STACK[0x2A0];
  *(v20 - 196) = v36 + 902455986 + (((v17 ^ 0xAEF3DDBD) + 1359749699) ^ ((v17 ^ 0x29D8A3D0) - 702063568) ^ ((v17 ^ 0xA5F4F02D) + 1510674387));
  *(v20 - 176) = (v18 + 277) ^ v36;
  (*(v16 + 8 * SLODWORD(STACK[0x288])))(v20 - 200);
  JUMPOUT(0x254429C50);
}

uint64_t sub_254437A50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X5>, uint64_t a3@<X6>, int a4@<W8>)
{
  v14 = (((v13 ^ 0x141u) + v6) ^ HIDWORD(a2)) + (*(a3 + 4 * v7) ^ v4);
  v15 = v14 - (v9 & (2 * v14)) + v10;
  *(a3 + 4 * a1) = v13 ^ 0x5C8 ^ v11 ^ v15;
  *(a3 + 4 * v7) = HIDWORD(v15) ^ v12;
  return (*(v8 + 8 * (v13 ^ (31 * (v5 + 1 == a4)))))();
}

uint64_t sub_254437B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = (v18 + 302) ^ (((((v19 - 136) | 0x7836F61D) - (v19 - 136) + ((v19 - 136) & 0x87C909E0)) ^ 0x247BA298) * v16);
  *(v19 - 128) = &a15;
  *(v19 - 120) = a14;
  v20 = (*(v15 + 8 * (v18 + 1949)))(v19 - 136);
  return (*(v15 + 8 * (((*(v19 - 132) == v17 + 2) * (((v18 - 440) | 0x34C) ^ 0x664)) ^ v18)))(v20);
}

void sub_254438010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  *(v27 - 144) = (v24 + 1946) ^ (((((v27 - 144) | 0x9A337905) - (v27 - 144) + ((v27 - 144) & 0x65CC86F8)) ^ 0x4B31547A) * v26);
  *(v27 - 120) = &a24;
  *(v27 - 112) = a14;
  *(v27 - 136) = &a24;
  *(v27 - 128) = a13;
  (*(v25 + 8 * (v24 + 2053)))(v27 - 144);
  *(v27 - 120) = (v24 + 1124) ^ (1785193651 * ((((v27 - 144) | 0x46B7DCB0) - ((v27 - 144) & 0x46B7DCB0)) ^ 0x556B3090));
  *(v27 - 136) = &a22;
  *(v27 - 128) = a14;
  *(v27 - 144) = &a24;
  *(v27 - 112) = &a24;
  *(v27 - 104) = a13;
  (*(v25 + 8 * (v24 + 2045)))(v27 - 144);
  JUMPOUT(0x254430184);
}

uint64_t sub_254438200@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v34 = *(v31 + 4 * (v30 - 1));
  *(v31 + 4 * v30) = ((1566083941 * (v34 ^ (v34 >> 30))) ^ *(v31 + 4 * v30)) - v30;
  v35 = 1785193651 * ((0xDB8879DFA31538FALL - ((v33 - 144) | 0xDB8879DFA31538FALL) + a29) ^ 0x3043F00E4F362B25);
  *(v33 - 112) = v35 + 623;
  v36 = (a1 - 1203100070) ^ v35;
  *(v33 - 136) = ((a1 - 1203100070) ^ 0x21) + v35;
  *(v33 - 132) = v36;
  *(v33 - 116) = -1785193651 * ((-1558890246 - ((v33 - 144) | 0xA31538FA) + a29) ^ 0x4F362B25);
  *(v33 - 128) = (v30 + 1) ^ v35;
  *(v33 - 144) = -1284136444 - v35 + a1;
  *(v33 - 140) = v36 ^ 0x43;
  v37 = (*(v32 + 8 * (v29 + a1 + 1757)))(v33 - 144);
  return (*(v32 + 8 * *(v33 - 120)))(v37);
}

uint64_t sub_2544383A4@<X0>(int a1@<W8>)
{
  v5 = a1 - v4 - 1988;
  if (v1 >= 0x80000004)
  {
    v6 = -585050722;
  }

  else
  {
    v6 = 585076288;
  }

  return (*(v2 + 8 * (((v6 == 585076288) * (2 * (v5 ^ (v3 + 414)) + 308)) | (v4 + v5 + 828))))();
}

void sub_254438524(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a3 = a1;
  a4 = v7;
  a5 = v6 + 50899313 * ((((2 * &a3) | 0x9880616C) - &a3 + 868208458) ^ 0xD86FAD2D) + 261;
  (*(v5 + 8 * (v6 ^ 0xB79)))(&a3);
  JUMPOUT(0x254438584);
}

uint64_t sub_2544385B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v76 = (*(v75 - 152) + 1928284029) & 0x8D10B7DF;
  v77 = v74 + 16;
  *(v75 - 128) = *(v75 - 164) ^ v76 ^ 0xCE5921DF;
  *(v75 - 132) = *(v75 - 160) ^ 0x1978C64A;
  *(v75 - 136) = *(v75 - 168) ^ 0x8AA361C;
  *(v75 - 140) = *(v75 - 156) ^ 0xDCB3F494;
  *(v75 - 120) = v77;
  *(v75 - 144) = *(v75 - 124) < 0xADE3A53A;
  v78 = 223 * (v76 ^ 0x119);
  v79 = (*(v75 - 184) + v77);
  v80 = v79[5];
  *(v75 - 176) = 0;
  *(v75 - 172) = (v76 ^ 0x119) + 936;
  *(v75 - 152) = v78;
  v82 = *(v75 - 240);
  v81 = *(v75 - 232);
  v83 = *(v75 - 224);
  v84 = *(v75 - 248);
  v85 = *(v75 - 252);
  v86 = (((*(v81 + (((v76 ^ 0x19) - 88) ^ v78 ^ v80 ^ 0x93)) + 37) ^ 0x74) << 16) | ((*(v82 + (v79[4] ^ 2)) ^ 0x4A) << 24) | ((*(v83 + (v79[6] ^ 0xE2)) ^ 0x3B) << 8) | (v85 + 53 * *(v84 + (v79[7] ^ 0xBFLL))) ^ 0xFA;
  v87 = ((v85 + 53 * *(v84 + (v79[15] ^ 0x3CLL))) ^ 0x68 | ((*(v83 + (v79[14] ^ 8)) ^ 0x7F) << 8)) & 0xFF00FFFF | ((*(v82 + (v79[12] ^ 0xBDLL)) ^ 0x62) << 24) | (((*(v81 + (v79[13] ^ 0xCALL)) + 37) ^ 0xFD) << 16);
  v88 = (v85 + 53 * *(v84 + (v79[3] ^ 0x19))) ^ 0x38 | ((*(v82 + (*v79 ^ 0x50)) ^ 0x7F) << 24) | (((*(v81 + (v79[1] ^ 0x1ELL)) + 37) ^ 0x68) << 16) | ((*(v83 + (v79[2] ^ 6)) ^ 3) << 8);
  v89 = ((*(v82 + v79[8]) ^ 0x41) << 24) | (((*(v81 + (v79[9] ^ 0xB0)) + 37) ^ 0x86) << 16) | ((*(v83 + (v79[10] ^ 0x42)) ^ 0xFE) << 8) | (v85 + 53 * *(v84 + (v79[11] ^ 0x60))) ^ 0xDA;
  if ((((v85 + 53 * *(v84 + (v79[7] ^ 0xBFLL))) ^ 0xFA) & 2) != 0)
  {
    v90 = -2;
  }

  else
  {
    v90 = 2;
  }

  *(v75 - 164) = v86;
  *(v75 - 160) = v87;
  v91 = a66 ^ v87;
  v92 = a65 ^ (v90 + v86);
  *(v75 - 156) = v89;
  *(v75 - 168) = v88;
  v93 = *(&off_286663530 + (v76 - 127)) - 8;
  v94 = *&v93[4 * ((a64 ^ v89) >> 8)];
  HIDWORD(v96) = v94 ^ 0x1522;
  LODWORD(v96) = v94 ^ 0x36154000;
  v95 = v96 >> 14;
  *(v75 - 116) = v76;
  v97 = *(&off_286663530 + (v76 ^ 0x150)) - 8;
  v98 = *&v93[4 * ((a63 ^ v88) >> 8)];
  HIDWORD(v96) = v98 ^ 0x1522;
  LODWORD(v96) = v98 ^ 0x36154000;
  v99 = *(&off_286663530 + (v76 ^ 0x10E)) - 4;
  v100 = (-21582785 * *&v99[4 * (a64 ^ v89)] + 442626680) ^ (*&v97[4 * HIBYTE(v92)] + 139487130);
  v101 = (-21582785 * *&v99[4 * v92] + 442626680) ^ v95;
  v102 = *(&off_286663530 + (v76 - 159)) - 4;
  v103 = (*&v97[4 * ((a64 ^ v89) >> 24)] + 139487130) ^ (v96 >> 14);
  v104 = *&v102[4 * BYTE2(v92)];
  v105 = *&v93[4 * BYTE1(v92)];
  HIDWORD(v96) = v105 ^ 0x1522;
  LODWORD(v96) = v105 ^ 0x36154000;
  v106 = (v103 - 2119161259 - ((2 * v103) & 0x36054AA)) ^ v104 ^ (-21582785 * *&v99[4 * v91] + 442626680);
  v107 = *&v97[4 * HIBYTE(v91)] + 139487130;
  v108 = *&v102[4 * BYTE2(v91)];
  v109 = *&v93[4 * BYTE1(v91)];
  v110 = v107 ^ (v96 >> 14);
  HIDWORD(v96) = v109 ^ 0x1522;
  LODWORD(v96) = v109 ^ 0x36154000;
  v111 = v110 ^ (-21582785 * *&v99[4 * (a63 ^ v88)] + 442626680);
  v112 = v111 - 2119161259 - ((2 * v111) & 0x36054AA);
  v113 = a36 ^ (v106 + a38 - 2 * (v106 & a38));
  v114 = a62 ^ v108 ^ (*&v97[4 * ((a63 ^ v88) >> 24)] + 139487130) ^ 0x8E1E9161 ^ (v101 - 2119161259 - ((2 * v101) & 0x36054AA));
  v115 = a61 ^ *&v102[4 * ((a63 ^ v88) >> 16)] ^ (v96 >> 14) ^ 0x7A8BED94 ^ (v100 - 2119161259 - ((2 * v100) & 0x36054AA));
  v116 = a60 ^ *&v102[4 * ((a64 ^ v89) >> 16)] ^ 0x342D1067 ^ v112;
  v117 = *&v93[4 * ((v113 ^ 0xAB13) >> 8)];
  HIDWORD(v96) = v117 ^ 0x1522;
  LODWORD(v96) = v117 ^ 0x36154000;
  v118 = (v96 >> 14) ^ (*&v97[4 * HIBYTE(v114)] + 139487130);
  v119 = *&v97[4 * HIBYTE(v115)];
  v120 = (2 * v118) & 0x36054AA;
  v121 = v118 - 2119161259;
  v122 = *&v93[4 * BYTE1(v116)];
  HIDWORD(v96) = v122 ^ 0x1522;
  LODWORD(v96) = v122 ^ 0x36154000;
  v123 = v96 >> 14;
  v124 = v121 - v120;
  v125 = *&v93[4 * BYTE1(v114)];
  HIDWORD(v96) = v125 ^ 0x1522;
  LODWORD(v96) = v125 ^ 0x36154000;
  v126 = v96 >> 14;
  v127 = *&v93[4 * BYTE1(v115)];
  HIDWORD(v96) = v127 ^ 0x1522;
  LODWORD(v96) = v127 ^ 0x36154000;
  v128 = *&v102[4 * BYTE2(v114)];
  v129 = *&v97[4 * ((v113 ^ 0xC04AB13u) >> 24)];
  v130 = (-21582785 * *&v99[4 * v114] + 442626680) ^ (*&v97[4 * HIBYTE(v116)] + 139487130);
  v131 = *&v102[4 * BYTE2(v115)];
  v132 = *(v75 - 256) ^ *&v102[4 * BYTE2(v116)] ^ (-21582785 * *&v99[4 * v115] + 442626680);
  v133 = *&v102[4 * (BYTE2(v113) ^ 4)];
  v134 = -21582785 * *&v99[4 * (v113 ^ 0x33)] + 442626680;
  v135 = v132 ^ v124;
  v136 = a59 ^ v133 ^ (v96 >> 14) ^ 0xD9D684A ^ (v130 - 2119161259 - ((2 * v130) & 0x36054AA));
  v137 = v132 ^ v124 ^ 0x2F7BB36B;
  v138 = a58 ^ v128 ^ (v119 - 1979674129 - ((2 * v119 + 10538804) & 0x36054AA)) ^ v123 ^ 0x87DD46DC ^ v134;
  v139 = a57 ^ v131 ^ (-21582785 * *&v99[4 * v116] + 442626680) ^ v126 ^ 0x96521C3F ^ (v129 - 1979674129 - ((2 * v129 + 10538804) & 0x36054AA));
  v140 = *&v93[4 * BYTE1(v137)];
  HIDWORD(v96) = v140 ^ 0x1522;
  LODWORD(v96) = v140 ^ 0x36154000;
  v141 = v96 >> 14;
  v142 = *&v93[4 * BYTE1(v136)];
  HIDWORD(v96) = v142 ^ 0x1522;
  LODWORD(v96) = v142 ^ 0x36154000;
  v143 = *&v93[4 * BYTE1(v138)];
  v144 = -21582785 * *&v99[4 * v138] + 442626680;
  v145 = (*&v97[4 * HIBYTE(v138)] + 139487130) ^ (v96 >> 14);
  HIDWORD(v96) = v143 ^ 0x1522;
  LODWORD(v96) = v143 ^ 0x36154000;
  v146 = (-21582785 * *&v99[4 * v136] + 442626680) ^ v141;
  v147 = v145 ^ (-21582785 * *&v99[4 * v139] + 442626680);
  v148 = v146 - 2119161259 - ((2 * v146) & 0x36054AA);
  v149 = (*&v97[4 * HIBYTE(v136)] + 139487130) ^ (v96 >> 14);
  v150 = *&v93[4 * BYTE1(v139)];
  HIDWORD(v96) = v150 ^ 0x1522;
  LODWORD(v96) = v150 ^ 0x36154000;
  v151 = ((v96 >> 14) ^ v144) - 2119161259 - ((2 * ((v96 >> 14) ^ v144)) & 0x36054AA);
  v152 = -21582785 * *&v99[4 * v137] + 442626680;
  v153 = a74 ^ *&v102[4 * BYTE2(v137)] ^ (v147 - 2119161259 - ((2 * v147) & 0x36054AA));
  v154 = a56 ^ *&v102[4 * BYTE2(v139)] ^ 0x20094DF0 ^ ((v149 ^ v152) - 2119161259 - ((2 * (v149 ^ v152)) & 0x36054AA));
  v155 = a55 ^ *&v102[4 * BYTE2(v138)] ^ (*&v97[4 * HIBYTE(v139)] + 139487130) ^ 0xD8A932B2 ^ v148;
  BYTE2(v152) = BYTE2(v153) ^ 0x6F;
  v156 = a54 ^ *&v102[4 * BYTE2(v136)] ^ (*&v97[4 * (HIBYTE(v135) ^ 0xEE)] + 139487130) ^ 0xDBC82169 ^ v151;
  v157 = *&v102[4 * BYTE2(v154)];
  v158 = *&v93[4 * ((v153 ^ 0x9E59) >> 8)];
  v159 = *&v93[4 * BYTE1(v156)];
  HIDWORD(v96) = v158 ^ 0x1522;
  LODWORD(v96) = v158 ^ 0x36154000;
  v160 = v96 >> 14;
  HIDWORD(v96) = v159 ^ 0x1522;
  LODWORD(v96) = v159 ^ 0x36154000;
  v161 = (*&v97[4 * HIBYTE(v154)] + 139487130) ^ v160;
  v162 = *&v93[4 * BYTE1(v154)];
  v163 = (*&v97[4 * ((v153 ^ 0xD16F9E59) >> 24)] + 139487130) ^ (-21582785 * *&v99[4 * v155] + 442626680) ^ (v162 >> 14);
  v164 = v161 ^ (-21582785 * *&v99[4 * v156] + 442626680);
  v165 = *&v102[4 * BYTE2(v155)];
  v166 = (v96 >> 14) ^ (*&v97[4 * HIBYTE(v155)] + 139487130) ^ (-21582785 * *&v99[4 * v154] + 442626680);
  v167 = *&v99[4 * (v153 ^ 0x79)];
  v168 = *&v93[4 * BYTE1(v155)];
  HIDWORD(v96) = v168 ^ 0x1522;
  LODWORD(v96) = v168 ^ 0x36154000;
  v169 = a73 ^ v165 ^ (v164 - 2119161259 - ((2 * v164) & 0x36054AA));
  v170 = v169 ^ 0xE0349DAE;
  v171 = a53 ^ *&v102[4 * BYTE2(v152)] ^ 0xF4361671 ^ (v166 - 2119161259 - ((2 * v166) & 0x36054AA));
  v172 = a72 ^ v157 ^ (*&v97[4 * HIBYTE(v156)] + 139487130) ^ (v96 >> 14) ^ (-21582785 * v167 - 1676534579 - ((23943294 * v167 + 12838128) & 0x36054AA));
  v173 = a52 ^ *&v102[4 * BYTE2(v156)] ^ 0x7E1E5010 ^ ((v163 ^ (v162 << 18) ^ 0x5488D855) - 2119161259 - 2 * ((v163 ^ (v162 << 18) ^ 0x5488D855) & 0x1B02A57 ^ v163 & 2));
  v174 = (v169 ^ 0xE0349DAE) >> 24;
  v175 = (-21582785 * *&v99[4 * (v169 ^ 0x8E)] + 442626680) ^ (*&v97[4 * HIBYTE(v171)] + 139487130);
  v176 = v175 - 2119161259 - ((2 * v175) & 0x36054AA);
  v177 = *&v93[4 * BYTE1(v170)];
  HIDWORD(v96) = v177 ^ 0x1522;
  LODWORD(v96) = v177 ^ 0x36154000;
  v178 = v96 >> 14;
  v179 = *&v93[4 * ((a52 ^ *&v102[4 * BYTE2(v156)] ^ 0x5010 ^ ((v163 ^ 0xD855) + 10837 - 2 * ((v163 ^ 0xD855) & 0x2A57 ^ v163 & 2))) >> 8)];
  HIDWORD(v96) = v179 ^ 0x1522;
  LODWORD(v96) = v179 ^ 0x36154000;
  v180 = v96 >> 14;
  v181 = v178 ^ (-21582785 * *&v99[4 * v171] + 442626680) ^ (*&v97[4 * HIBYTE(v173)] + 139487130);
  v182 = *&v93[4 * ((v172 ^ 0x500A) >> 8)];
  HIDWORD(v96) = v182 ^ 0x1522;
  LODWORD(v96) = v182 ^ 0x36154000;
  v183 = v96 >> 14;
  v184 = *&v93[4 * BYTE1(v171)];
  HIDWORD(v96) = v184 ^ 0x1522;
  LODWORD(v96) = v184 ^ 0x36154000;
  v185 = *&v102[4 * BYTE2(v173)];
  v186 = *&v102[4 * BYTE2(v171)];
  v187 = (-21582785 * *&v99[4 * v173] + 442626680) ^ (*&v97[4 * ((v172 ^ 0x6754500Au) >> 24)] + 139487130) ^ (v96 >> 14);
  v188 = v187 - 2119161259 - ((2 * v187) & 0x36054AA);
  v189 = -21582785 * *&v99[4 * (v172 ^ 0x2A)] + 442626680;
  v190 = a51 ^ v185 ^ v183 ^ v176 ^ 0x541774FA;
  v191 = a50 ^ *&v102[4 * ((v172 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v181 - 2119161259 - ((2 * v181) & 0x36054AA));
  v192 = a49 ^ v186 ^ (*&v97[4 * v174] - 1979674129 - ((2 * *&v97[4 * v174] + 10538804) & 0x36054AA)) ^ v189 ^ 0x7DB5854F ^ v180;
  v193 = a48 ^ *&v102[4 * BYTE2(v170)] ^ 0x8EB61C45 ^ v188;
  v194 = *&v93[4 * BYTE1(v191)];
  v195 = *&v99[4 * v191];
  HIDWORD(v96) = v194 ^ 0x1522;
  LODWORD(v96) = v194 ^ 0x36154000;
  v196 = (v96 >> 14) - 2119161259 - ((2 * (v96 >> 14)) & 0x36054AA);
  v197 = *&v99[4 * (v190 - ((2 * v190) & 0x40)) + 128];
  v198 = *&v93[4 * BYTE1(v193)];
  HIDWORD(v96) = v198 ^ 0x1522;
  LODWORD(v96) = v198 ^ 0x36154000;
  v199 = (v96 >> 14) ^ (*&v97[4 * HIBYTE(v190)] + 139487130);
  v200 = *&v93[4 * BYTE1(v190)];
  HIDWORD(v96) = v200 ^ 0x1522;
  LODWORD(v96) = v200 ^ 0x36154000;
  v201 = v96 >> 14;
  v202 = *&v93[4 * BYTE1(v192)];
  HIDWORD(v96) = v202 ^ 0x1522;
  LODWORD(v96) = v202 ^ 0x36154000;
  v203 = a71 ^ *&v102[4 * BYTE2(v192)] ^ v201 ^ (*&v97[4 * HIBYTE(v193)] + 139487130);
  v204 = *&v97[4 * HIBYTE(v192)] + 139487130;
  v205 = *&v102[4 * BYTE2(v193)];
  v206 = *&v97[4 * HIBYTE(v191)] + 139487130;
  v207 = *&v102[4 * BYTE2(v191)];
  v208 = *&v99[4 * v192];
  v209 = -21582785 * *&v99[4 * v193] + 442626680;
  v210 = -21582785 * v208 + 442626680;
  v211 = v203 ^ (-21582785 * v195 - 1676534579 - ((23943294 * v195 + 12838128) & 0x36054AA));
  v212 = a47 ^ *&v102[4 * BYTE2(v190)] ^ v204 ^ v196 ^ v209 ^ 0x7C892C4A;
  v213 = a46 ^ v205 ^ v206 ^ (v96 >> 14) ^ 0x190B7FE4 ^ (442626680 - 2045685880 * v197 + 2024103095 * v197 - 2119161259 - 2 * ((442626680 - 2045685880 * v197 + 2024103095 * v197) & 0x1B02A57 ^ (2024103095 * v197) & 2));
  v214 = a45 ^ v207 ^ v210 ^ 0xCFA132BA ^ (v199 - 2119161259 - ((2 * v199) & 0x36054AA));
  v215 = v211 ^ 0x402CF460;
  v216 = (v211 ^ 0x402CF460u) >> 24;
  v217 = *&v102[4 * BYTE2(v214)];
  v218 = *&v93[4 * BYTE1(v212)];
  HIDWORD(v96) = v218 ^ 0x1522;
  LODWORD(v96) = v218 ^ 0x36154000;
  v219 = v96 >> 14;
  v220 = *&v93[4 * BYTE1(v214)];
  HIDWORD(v96) = v220 ^ 0x1522;
  LODWORD(v96) = v220 ^ 0x36154000;
  v221 = *&v99[4 * (v211 ^ 0x40)];
  v222 = HIBYTE(v214);
  v223 = (-21582785 * *&v99[4 * v213] + 442626680) ^ (v96 >> 14) ^ (*&v97[4 * v216] + 139487130);
  v224 = *&v93[4 * BYTE1(v213)];
  HIDWORD(v96) = v224 ^ 0x1522;
  LODWORD(v96) = v224 ^ 0x36154000;
  v225 = v96 >> 14;
  v226 = (*&v97[4 * HIBYTE(v213)] + 139487130) ^ v219 ^ (-21582785 * *&v99[4 * v214] + 442626680);
  v227 = (-21582785 * *&v99[4 * v212] + 442626680) ^ (*&v97[4 * v222] + 139487130);
  v228 = *&v97[4 * HIBYTE(v212)] + 139487130;
  v229 = *&v93[4 * BYTE1(v215)];
  HIDWORD(v96) = v229 ^ 0x1522;
  LODWORD(v96) = v229 ^ 0x36154000;
  v230 = a44 ^ *&v102[4 * BYTE2(v212)] ^ 0x2655A6B2 ^ (v223 - 2119161259 - ((2 * v223) & 0x36054AA));
  v231 = a43 ^ *&v102[4 * BYTE2(v213)] ^ (v96 >> 14) ^ 0x354150DE ^ (v227 - 2119161259 - ((2 * v227) & 0x36054AA));
  v232 = a42 ^ v217 ^ (-21582785 * v221 - 1676534579 - ((23943294 * v221 + 12838128) & 0x36054AA)) ^ v225 ^ v228 ^ 0x6005D395;
  v233 = a41 ^ *&v102[4 * BYTE2(v215)] ^ 0xD6EF510D ^ (v226 - 2119161259 - ((2 * v226) & 0x36054AA));
  v234 = *&v93[4 * ((a42 ^ v217 ^ (-21441 * v221 + 7373 - ((22654 * v221 - 6928) & 0x54AA)) ^ v225 ^ v228 ^ 0xD395) >> 8)];
  HIDWORD(v96) = v234 ^ 0x1522;
  LODWORD(v96) = v234 ^ 0x36154000;
  v235 = (v96 >> 14) - 2119161259 - ((2 * (v96 >> 14)) & 0x36054AA);
  v236 = *&v97[4 * HIBYTE(v230)];
  v237 = (-21582785 * *&v99[4 * v230] + 442626680) ^ (*&v97[4 * HIBYTE(v232)] + 139487130);
  v238 = v236 - 1979674129 - ((2 * v236 + 10538804) & 0x36054AA);
  v239 = *&v99[4 * v232];
  v240 = *&v93[4 * BYTE1(v231)];
  HIDWORD(v96) = v240 ^ 0x1522;
  LODWORD(v96) = v240 ^ 0x36154000;
  v241 = v96 >> 14;
  v242 = *&v93[4 * BYTE1(v230)];
  HIDWORD(v96) = v242 ^ 0x1522;
  LODWORD(v96) = v242 ^ 0x36154000;
  v243 = v96 >> 14;
  v244 = *&v93[4 * BYTE1(v233)];
  HIDWORD(v96) = v244 ^ 0x1522;
  LODWORD(v96) = v244 ^ 0x36154000;
  v245 = *&v102[4 * BYTE2(v230)];
  v246 = *&v102[4 * BYTE2(v231)] ^ *(v75 - 212) ^ (v96 >> 14) ^ (v237 - 2119161259 - ((2 * v237) & 0x36054AA));
  v247 = *&v102[4 * BYTE2(v232)];
  v248 = *&v97[4 * HIBYTE(v231)] + 139487130;
  BYTE2(v230) = BYTE2(v246) ^ 0x1C;
  v249 = a70 ^ v247 ^ v241 ^ v238 ^ (-21582785 * *&v99[4 * v233] + 442626680);
  v250 = a40 ^ v245 ^ (*&v97[4 * HIBYTE(v233)] + 139487130) ^ (-21582785 * *&v99[4 * v231] + 442626680) ^ v235 ^ 0xDE12593A;
  v251 = a39 ^ v248 ^ *&v102[4 * BYTE2(v233)] ^ (-21582785 * v239 - 1676534579 - ((23943294 * v239 + 12838128) & 0x36054AA)) ^ v243 ^ 0x8D19C5A6;
  v252 = *&v93[4 * BYTE1(v251)];
  HIDWORD(v96) = v252 ^ 0x1522;
  LODWORD(v96) = v252 ^ 0x36154000;
  v253 = *&v99[4 * (v246 ^ 0x30)];
  v254 = (v96 >> 14) - 2119161259 - ((2 * (v96 >> 14)) & 0x36054AA);
  v255 = *&v99[4 * v250];
  v256 = *&v93[4 * ((v246 ^ 0x5930) >> 8)];
  HIDWORD(v96) = v256 ^ 0x1522;
  LODWORD(v96) = v256 ^ 0x36154000;
  v257 = (v96 >> 14) - 2119161259 - ((2 * (v96 >> 14)) & 0x36054AA);
  v258 = (*&v97[4 * (HIBYTE(v246) ^ 0x50)] + 139487130) ^ (-21582785 * *&v99[4 * (v249 ^ 0xCB)] + 442626680);
  v259 = *&v93[4 * ((v249 ^ 0xA1CB) >> 8)];
  HIDWORD(v96) = v259 ^ 0x1522;
  LODWORD(v96) = v259 ^ 0x36154000;
  v260 = v96 >> 14;
  v261 = *&v97[4 * HIBYTE(v251)] + 139487130;
  v262 = *&v102[4 * ((v249 ^ 0x1398A1CB) >> 16)];
  v263 = *&v97[4 * HIBYTE(v250)] + 139487130;
  v264 = *&v97[4 * (HIBYTE(v249) ^ 0xD2)];
  LODWORD(v97) = *&v93[4 * BYTE1(v250)];
  HIDWORD(v96) = v97 ^ 0x1522;
  LODWORD(v96) = v97 ^ 0x36154000;
  v265 = a69 ^ v262 ^ v263 ^ (-21582785 * *&v99[4 * v251] + 442626680) ^ v257;
  v266 = v261 ^ a37 ^ v260 ^ *&v102[4 * BYTE2(v250)] ^ (-21582785 * v253 + 442626680);
  v267 = a68 ^ *&v102[4 * BYTE2(v230)] ^ v254 ^ (-21582785 * v255 + 442626680) ^ (v264 + 139487130);
  v268 = a67 ^ *&v102[4 * BYTE2(v251)] ^ (v96 >> 14) ^ (v258 - 2119161259 - ((2 * v258) & 0x36054AA));
  LODWORD(v102) = v267 ^ 0x7EC2C88;
  LODWORD(v97) = v265 ^ 0x9A25D878;
  v269 = v266 ^ 0xAD089B63;
  v270 = *(v75 - 116);
  v271 = *(&off_286663530 + (v270 ^ 0x107));
  v272 = *(v271 + 4 * ((v268 ^ 0x644667A6) >> 24));
  HIDWORD(v96) = v272 ^ 0x76;
  LODWORD(v96) = v272 ^ 0x916A4180;
  v273 = *(&off_286663530 + (v270 ^ 0x153)) - 4;
  *(v75 - 148) = *&v273[4 * ((v267 ^ 0x7EC2C88) >> 16)];
  v274 = *(&off_286663530 + v270 - 187) - 12;
  v275 = ((v267 ^ 0x88) - 417133636 - 2 * ((v267 ^ 0x7EC2C88) & 0xBD ^ v267 & 1)) ^ *&v274[4 * (v267 ^ 0xDB)] ^ (v96 >> 7);
  v276 = *&v273[4 * ((v268 ^ 0x644667A6) >> 16)];
  v277 = ((2 * v276) & 0xBB708860 ^ 0x46DF77FF) + 1552497403 + (((v276 ^ 0x597D3861) - 1501378657) ^ ((v276 ^ 0x54366FF5) - 1412853749) ^ ((v276 ^ 0xF39BA15E) + 207904418));
  v278 = (v265 ^ 0x78) - 417133636 - 2 * ((v265 ^ 0x9A25D878) & 0xBF ^ v265 & 3);
  v279 = v275 - 19859766 - ((2 * v275) & 0xFDA1ED94);
  v280 = *&v273[4 * ((v266 ^ 0xAD089B63) >> 16)];
  LODWORD(v273) = *&v273[4 * ((v265 ^ 0x9A25D878) >> 16)];
  v281 = *(&off_286663530 + (v270 ^ 0x18D)) - 8;
  v282 = ((v268 ^ 0xA6) - 417133636 + (~(2 * (v268 ^ 0x644667A6)) | 0xFFFFFE87) + 1) ^ (((v267 ^ 0x2C88) >> 8) - 1780344192 - ((v267 >> 7) & 0x100)) ^ *&v281[4 * (((v267 ^ 0x2C88) >> 8) ^ 0xF5)] ^ *&v274[4 * (v268 ^ 0xF5)];
  v283 = v282 - 19859766 - ((2 * v282) & 0xFDA1ED94);
  v284 = *(v271 + 4 * ((v265 ^ 0x9A25D878) >> 24));
  HIDWORD(v96) = v284 ^ 0x76;
  LODWORD(v96) = v284 ^ 0x916A4180;
  v285 = (v96 >> 7) - 19859766 - ((2 * (v96 >> 7)) & 0xFDA1ED94);
  v286 = *(v271 + 4 * (HIBYTE(v266) ^ 0xBD));
  HIDWORD(v96) = v286 ^ 0x76;
  LODWORD(v96) = v286 ^ 0x916A4180;
  v287 = v96 >> 7;
  v288 = *&v274[4 * (v265 ^ 0x2B)];
  LODWORD(v274) = *&v274[4 * (v266 ^ 0x30)];
  LODWORD(v102) = *(v271 + 4 * (v102 >> 24));
  HIDWORD(v96) = v102 ^ 0x76;
  LODWORD(v96) = v102 ^ 0x916A4180;
  LODWORD(v102) = *(v75 - 140) ^ *(v75 - 200) ^ v273 ^ v287 ^ v283;
  v289 = *(v75 - 136) ^ *(v75 - 208) ^ (((v266 ^ 0x9B63) >> 8) - 1780344192 - (((v266 ^ 0xAD089B63) >> 7) & 0x100)) ^ v278 ^ v288 ^ *&v281[4 * (((v266 ^ 0x9B63) >> 8) ^ 0xF5)] ^ (v96 >> 7) ^ v277;
  LODWORD(v97) = *(v75 - 132) ^ *(v75 - 204) ^ (BYTE1(v97) - 1780344192 - ((v97 >> 7) & 0x100)) ^ v280 ^ *&v281[4 * (BYTE1(v97) ^ 0xF5)] ^ v279;
  LODWORD(v99) = *(v75 - 128) ^ *(v75 - 196) ^ (v269 - 417133636 - ((2 * v269) & 0x178)) ^ *(v75 - 148) ^ (((v268 ^ 0x67A6) >> 8) - 1780344192 - ((v268 >> 7) & 0x100)) ^ v274 ^ *&v281[4 * (((v268 ^ 0x67A6) >> 8) ^ 0xF5)] ^ v285;
  v290 = *(&off_286663530 + (v270 ^ 0x134));
  v79[3] = *(v290 + (v289 ^ 0xDFLL)) ^ 0xC;
  v291 = *(&off_286663530 + (v270 & 0xAC1B7635)) - 8;
  v79[4] = (v291[(v99 >> 24) ^ 0x2CLL] + 77) ^ 0x78;
  *v79 = (v291[HIBYTE(v289) ^ 0x57] + 77) ^ 0xC8;
  v292 = *(&off_286663530 + (v270 & 0x567D6AAB)) - 8;
  v79[13] = (v292[BYTE2(v97) ^ 0x5CLL] - 105) ^ 0xC7;
  v79[11] = *(v290 + (v102 ^ 0x46)) ^ 0x48;
  v293 = *(&off_286663530 + v270 - 156) - 12;
  v79[14] = (127 - (BYTE1(v97) ^ 0xEE)) ^ 0x75 ^ v293[BYTE1(v97)];
  v79[2] = (127 - (BYTE1(v289) ^ 3)) ^ 0x8B ^ v293[BYTE1(v289) ^ 0xE6];
  v79[10] = (127 - (BYTE1(v102) ^ 0xAB)) ^ 0x6D ^ v293[BYTE1(v102) ^ 0x84];
  v79[15] = ~*(v290 + (v97 ^ 0x11));
  v79[5] = (v292[BYTE2(v99) ^ 0x44] - 105) ^ 0xE2;
  v79[8] = (v291[(v102 >> 24) ^ 0x26] + 77) ^ 0xA2;
  v79[7] = *(v290 + (v99 ^ 0x3DLL)) ^ 0xF5;
  v79[12] = (v291[(v97 >> 24) ^ 0x44] + 77) ^ 0x23;
  v79[1] = (v292[BYTE2(v289) ^ 0xA3] - 105) ^ 0x17;
  v79[6] = (127 - BYTE1(v99)) ^ 0xD0 ^ v293[BYTE1(v99) ^ 0x58];
  v294 = BYTE2(v102);
  LODWORD(v290) = *(v75 - 124);
  LODWORD(v102) = *(v75 - 120);
  v79[9] = (v292[v294 ^ 0xF8] - 105) ^ 0x90;
  v295 = v102 - 1377589942 < v290;
  if (*(v75 - 144) != (v102 - 1377589942) < 0xADE3A53A)
  {
    v295 = *(v75 - 144);
  }

  return (*(*(v75 - 192) + 8 * (((2 * v295) | (v295 << 6)) ^ v270)))();
}

uint64_t sub_2544386D4@<X0>(int a1@<W4>, int a2@<W8>)
{
  v6 = *(v4 + 48 * v2 + 36);
  v8 = (v6 + a1) < 0x80000004 && v6 != v5 + ((a2 - 1994) | 0x204) - 526;
  return (*(v3 + 8 * ((v8 * (a2 - 1943)) ^ a2)))();
}

void sub_254438734(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = 1785193651 * ((a1 & 0xCB705029 | ~(a1 | 0xCB705029)) ^ 0x275343F6);
  v2 = *(a1 + 32) ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 72);
  v5 = *(a1 + 16) + v1;
  v9 = 0x2C3D06C500000040;
  v10 = &v19;
  v15 = 0x2C3D06C500000082;
  v16 = &v21;
  v17 = 0x2C3D06C500000001;
  v18 = &v8;
  v13 = 0x2C3D06C500000082;
  v14 = &v22;
  v11 = 0x2C3D06C500000082;
  v12 = &v20;
  if (v3 | v4)
  {
    v6 = v5 == 1068229628;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X10, X17 }
}

void sub_254438878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, char *a20)
{
  a17 = (v21 - 464) ^ (((582313018 - (&a17 | 0x22B5643A) + (&a17 | 0xDD4A9BC5)) ^ 0xC965065E) * v20);
  a18 = a12;
  a20 = &a11;
  (*(v22 + 8 * (v21 + 365)))(&a17);
  JUMPOUT(0x25443095CLL);
}

uint64_t sub_25443890C()
{
  LODWORD(STACK[0x3C8]) = v0;
  *(v1 + 176) -= 432;
  return (*(v1 + 160))();
}

uint64_t sub_254438C50@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v5 + v6) = *(a1 + v6);
  return (*(v4 + 8 * (((v6 != 0) * (((v3 - 57314872) & 0x2CDC0BEA) - 606)) ^ (v1 + v3 + 1498))))();
}

uint64_t sub_254438D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  v67 = 1564307779 * ((((2 * (v66 - 200)) | 0x152DAC88) - (v66 - 200) - 177657412) ^ 0x9D9B1A57);
  v68 = (v66 - 200);
  v68[4] = a63;
  *v68 = &STACK[0x2EC];
  v68[1] = &STACK[0x360];
  *(v66 - 172) = ((v64 ^ 0xF5FFFFD2) + 1073733632 + ((37 * (v63 ^ 0x13E) - 335544523) & (2 * v64))) ^ v67;
  *(v66 - 184) = v67 + v63 + 1507;
  *(v66 - 180) = v67 + a62;
  v70 = (*(v65 + 8 * (v63 ^ 0x893)))(v66 - 200);
  v71 = *(v66 - 176);
  LODWORD(STACK[0x4A0]) = v71;
  return (*(v65 + 8 * ((170 * (v71 == (v63 ^ 0x7A7) + 585074598)) ^ v63)))(v70, a2);
}

uint64_t sub_254438F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v28 = v26 | 8;
  v29 = (v26 | 8) + 1403;
  *(v27 - 136) = &a24;
  *(v27 - 128) = a13;
  *(v27 - 144) = v29 ^ (1037613739 * ((((v27 - 144) | 0x1B1450DD) + (~(v27 - 144) | 0xE4EBAF22)) ^ 0xCA167DA3));
  *(v27 - 120) = &a24;
  *(v27 - 112) = a14;
  v30 = (v26 | 8) ^ 0xAFE;
  (*(v24 + 8 * v30))(v27 - 144);
  *(v27 - 120) = &a24;
  *(v27 - 112) = a14;
  *(v27 - 144) = v29 ^ (1037613739 * ((-432488676 - ((v27 - 144) | 0xE638BF1C) + ((v27 - 144) | 0x19C740E3)) ^ 0xC8C56D9C));
  *(v27 - 136) = &a24;
  *(v27 - 128) = a13;
  (*(v24 + 8 * v30))(v27 - 144);
  v31 = 210068311 * ((((v27 - 144) | 0x241951C7) - (v27 - 144) + ((v27 - 144) & 0xDBE6AE38)) ^ 0xB6CF6E63);
  *(v27 - 144) = v31 - 2131097897 + 1053645359 * v25;
  *(v27 - 136) = v28 - v31 - 494;
  *(v27 - 128) = a15;
  v32 = (*(v24 + 8 * (v28 ^ 0xAE7)))(v27 - 144);
  return (*(v24 + 8 * (((*(v27 - 140) == -343619839) * ((v28 ^ 0xFFFFFD73) + v28 - 543)) ^ v28)))(v32);
}

uint64_t sub_2544390A8@<X0>(int a1@<W3>, unint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W7>, int a6@<W8>)
{
  v14 = (a3 + 4 * v10);
  v15 = (*v14 ^ v6) + (v9 ^ HIDWORD(a2)) + v13 * (*(a4 + 4 * v10) ^ v6);
  *(v14 - 1) = (v15 + a6 - (v8 & (2 * v15))) ^ a1;
  return (*(v11 + 8 * (((v10 + 1 == v7) * a5) ^ v12)))();
}

uint64_t sub_254439228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v38 = *(&a21 + v33 + 72);
  v39 = ((2 * v33) & 0xDCBFFFF0) + (v33 ^ 0x6E5FFFFB) + v34;
  *(v36 + v39) = v38 ^ 0x5F;
  v40 = (v38 >> ((a7 + v35 + 35) ^ (a7 + 8))) ^ 0xFFFFFFF4;
  *(v36 + v39 + 1) = v40 + (~(2 * v40) | 0xBF) - 95;
  *(v36 + v39 + 2) = (BYTE2(v38) ^ 0x58) - ((v38 >> 15) & 0x40) - 96;
  *(v36 + v39 + 3) = (HIBYTE(v38) ^ 0x9E) - ((v38 >> 23) & 0x40) - 96;
  return (*(v37 + 8 * ((46 * (v33 + 4 >= a33)) ^ v35)))();
}

uint64_t sub_254439364@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 24);
  if ((a1 + v4) >= 0x7FFFFFFF)
  {
    v7 = 1484393866 - v1;
  }

  else
  {
    v7 = v1;
  }

  v10[1] = v7;
  *(v5 - 128) = v10;
  *(v5 - 120) = (v2 - 346) ^ (1785193651 * ((2 * ((v5 - 128) & 0x147EF280) - (v5 - 128) - 343863939) ^ 0xF85DE15D));
  *(v5 - 112) = v6;
  return (*(v3 + 8 * (v2 ^ 0xA51)))(v5 - 128);
}

uint64_t sub_2544394E8(uint64_t a1, int a2)
{
  if ((v3 + 644402922) < 0x8C02F767 != (v4 ^ 0xDD2071BF) > ((a2 + 1080834397) & 0xBF93C577 ^ 0x73FD09FB))
  {
    v5 = (v3 + 644402922) < 0x8C02F767;
  }

  else
  {
    v5 = v3 + 644402922 > (v4 ^ 0xDD2071BF) - 1945962649;
  }

  return (*(v2 + 8 * (((8 * v5) | (16 * v5)) ^ a2)))();
}

void sub_25443956C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) - 1564307779 * ((1625765565 - (a1 | 0x60E736BD) + (a1 | 0x9F18C942)) ^ 0x8150551);
  v2 = *(a1 + 8);
  v6 = v1 - 2066391179 * ((((2 * &v4) | 0x973D7B28) - &v4 + 878789228) ^ 0x64B93F8C) + 16;
  v4 = v2;
  v3 = *(&off_286663530 + v1 - 795) - 8;
  (*&v3[8 * (v1 ^ 0xAC2)])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_254439688@<X0>(void *a1@<X0>, int a2@<W2>, int a3@<W8>)
{
  v9 = *(*(v3 + 8) + 4 * v8);
  *(*a1 + (v5 + a3)) = (((a2 ^ 0xE8) - 68) ^ (v7 - 65) ^ v9) - (((a2 ^ 0xE8) - 69) & (2 * (((a2 ^ 0xE8) - 68) ^ (v7 - 65) ^ v9))) - 96;
  return (*(v4 + 8 * (a2 ^ 0x7E8 ^ (953 * (v5 - 1 == v6)))))();
}

uint64_t sub_2544396B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v7 = *(*a3 + (v5 - 1704601730)) ^ 0xA0;
  v8 = ((*(*a3 + ((a2 + 1853608137) & 0x91842DE3 ^ 0x9A65D618) + v5) ^ 0xA0) << (((2 * a2) ^ 0x44) - 16)) + ((*(*a3 + (v5 - 1704601732)) ^ 0xA0) << 16) + ((*(*a3 + (v5 - 1704601731)) ^ 0xA0) << 8) + v7;
  return (*(v4 + 8 * ((100 * (v6 - *(a1 + 12) + ((v8 + v3 - 2 * (v8 & (v3 + 32) ^ v7 & 0x20)) & 0xFFFFFF ^ 0xDF8E40) == -119766021)) ^ a2)))();
}

uint64_t sub_254439788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17)
{
  v19 = 50899313 * (&a16 ^ 0x142F9D9B);
  a16 = 44 - v19;
  a17 = v18 - v19 - 1205;
  (*(v17 + 8 * (v18 ^ 0xE8A)))(&a16);
  return sub_254432CC4();
}

void sub_2544397E8(uint64_t a1)
{
  v1 = *(a1 + 64) ^ (1785193651 * ((((2 * a1) | 0x96D81652) - a1 + 882111703) ^ 0xD8B0E709));
  __asm { BRAA            X9, X17 }
}

void sub_254439938(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (843532609 * ((((2 * a1) | 0x4B562ACC) - a1 - 631969126) ^ 0x79E641E3));
  if (*(*(a1 + 24) + 4) - 742196933 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 742196933;
  }

  else
  {
    v2 = 742196933 - *(*(a1 + 24) + 4);
  }

  if (*(*(a1 + 8) + 4) - 742196933 >= 0)
  {
    v3 = *(*(a1 + 8) + 4) - 742196933;
  }

  else
  {
    v3 = 742196933 - *(*(a1 + 8) + 4);
  }

  v7 = *(a1 + 24);
  v6[1] = v1 + 1564307779 * ((21488292 - (v6 | 0x147E2A4) + (v6 | 0xFEB81D5B)) ^ 0x69B5D148) + 448;
  v4 = *(&off_286663530 + (v1 ^ 0x1E5)) - 8;
  (*&v4[8 * (v1 ^ 0x8C1)])(v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X15, X17 }
}

_DWORD *sub_254439AAC()
{
  v7 = ((2 * ((v6 - 144) & 0x6754AF8) - (v6 - 144) - 108350207) ^ 0x62CD438B) * v9;
  *(v6 - 136) = v0 - v7 + ((v5 + 433) ^ 0x2A3C467C);
  *(v6 - 132) = v5 - v7 + 145;
  v3[2] = v2;
  *v3 = v4;
  (*(v1 + 8 * (v5 + 1940)))(v6 - 144);
  result = v12;
  *v11 = v10;
  *v12 = 585076288;
  return result;
}

void sub_254439B28()
{
  if (v0 == 1705903495)
  {
    v2 = 585076288;
  }

  else
  {
    v2 = -585050728;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_254439CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v24 = &a15;
  HIDWORD(a16) = -843532609 * ((v24 + 457192742 - 2 * (v24 & 0x1B403526)) ^ 0x470D61A3) + 740766347 * v21 + 530262041;
  LODWORD(a17) = (843532609 * ((v24 + 457192742 - 2 * (v24 & 0x1B403526)) ^ 0x470D61A3)) ^ 0x557;
  a15 = a10;
  (*(v23 + 19504))(&a15);
  v25 = 1037613739 * (((&a15 | 0xA54174CF) + (~&a15 | 0x5ABE8B30)) ^ 0x744359B1);
  a18 = v25 ^ 0x7FD;
  a19 = (v20 ^ 0x7C96F3E6) + ((2 * v20) & 0xF92DE7CC) - 8699968 + v25;
  a16 = a10;
  a17 = v19;
  v26 = (*(v23 + 19144))(&a15);
  return (*(v23 + 8 * ((959 * (a15 == ((v22 - 2) ^ 0x7E))) ^ 0x1A0u)))(v26);
}

uint64_t sub_254439F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v46 = 1785193651 * ((v45 + 1766605358 - 2 * ((v45 - 200) & 0x694C42F6)) ^ 0x7A90AED6);
  v47 = (v45 - 200);
  *v47 = &STACK[0x344];
  v47[2] = v44;
  v47[6] = 0;
  v47[7] = a41;
  v47[4] = v43;
  v47[5] = 0;
  *(v45 - 136) = (v42 + 220) ^ v46;
  *(v45 - 176) = 520691076 - v46;
  v48 = (*(v41 + 8 * (v42 ^ 0xBD0)))(v45 - 200);
  v49 = *(v45 - 192);
  LODWORD(STACK[0x52C]) = v49;
  return (*(v41 + 8 * (((v49 == 585076288) * (((v42 - 1262758741) & 0x4B442F5F) + ((v42 - 742963788) & 0x2C48BE56) - 442)) ^ v42)))(v48);
}

uint64_t sub_25443A1C4@<X0>(int a1@<W3>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v58 = &a54 + (a1 - 1);
  v59 = -468040725 * ((*(*v57 + (*a29 & 0x5C533D8)) ^ v58) & 0x7FFFFFFF);
  v60 = -468040725 * (v59 ^ HIWORD(v59));
  v61 = *(*(&off_286663530 + v55 - 11) + (v60 >> 24) + 3);
  v62 = *(*(&off_286663530 + (v55 ^ 0x42)) + (v60 >> 24) - 8);
  v63 = ((a2 >> v54) - ((2 * (a2 >> v54)) & 0xE0) + ((6 * (v55 ^ 0xA3) - 1361) | 0x140) - 97) ^ *(*(&off_286663530 + v55 - 58) + (v60 >> 24)) ^ v61 ^ v62 ^ v60 ^ (97 * (v60 >> 24));
  LODWORD(v60) = (((a2 >> v54) - ((2 * (a2 >> v54)) & 0xE0) + ((6 * (v55 ^ 0xA3) - 81) | 0x40) - 97) ^ *(*(&off_286663530 + v55 - 58) + (v60 >> 24)) ^ v61 ^ v62 ^ v60 ^ (97 * BYTE3(v60)));
  *v58 = v63 ^ 0x70;
  return (*(v56 + 8 * ((197 * (a1 == (v60 != 112))) ^ v55)))();
}

uint64_t sub_25443A2C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>)
{
  v9 = vaddq_s8(vsubq_s8(v8[1], vandq_s8(vaddq_s8(v8[1], v8[1]), a3)), a4);
  v10 = (a1 + a2);
  *v10 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a3)), a4);
  v10[1] = v9;
  return (*(v7 + 8 * ((842 * ((v6 & 0x60) - (v5 + 502) == -1334)) ^ v4)))();
}

void sub_25443A3BC(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 120) = ((a1 | 0x104) + 510) ^ (((((v18 - 144) | 0x68C5F042) - ((v18 - 144) & 0x68C5F042)) ^ 0x7B191C62) * v17);
  *(v18 - 112) = &a17;
  *(v18 - 104) = a6;
  *(v18 - 144) = &a17;
  *(v18 - 136) = &a11;
  *(v18 - 128) = a7;
  JUMPOUT(0x254428A98);
}

uint64_t sub_25443A424(unint64_t a1)
{
  *(v5 + 176) = v2 - 64;
  STACK[0x2F0] = a1;
  return (*(v3 + 8 * (((((18 * (v1 ^ 0x8E7)) ^ 0xF) + 1247) * (v4 > a1)) ^ (18 * (v1 ^ 0x8E7)))))();
}

void sub_25443A4A0(uint64_t a1)
{
  v1 = 50899313 * (((a1 | 0x43FA28CE) - (a1 & 0x43FA28CE)) ^ 0x57D5B555);
  __asm { BRAA            X10, X17 }
}

void sub_25443A668(uint64_t a1)
{
  if (*(*(a1 + 16) + 4) - 742196933 >= 0)
  {
    v2 = *(*(a1 + 16) + 4) - 742196933;
  }

  else
  {
    v2 = 742196933 - *(*(a1 + 16) + 4);
  }

  v1 = *a1 + 50899313 * ((((2 * a1) | 0xDC007AA6) - a1 + 301974189) ^ 0xFA2FA0C8);
  __asm { BRAA            X13, X17 }
}

void sub_25443A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v23 = 210068311 * ((2 * ((v22 - 144) & 0x2E7C458) - (v22 - 144) - 48743513) ^ 0x6FCE0403);
  *(v22 - 116) = v23 + a19 + 625508845 + (v20 ^ 0x305);
  *(v22 - 144) = v23 + v20 + 1180;
  *(v22 - 136) = v21;
  *(v22 - 128) = a10;
  (*(v19 + 8 * (v20 ^ 0x863)))(v22 - 144);
  JUMPOUT(0x25443A7E8);
}

uint64_t sub_25443A83C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  v45 = v42 - 1402;
  *a32 = a42 + 562464144;
  v46 = *a3;
  v47 = 1785193651 * ((((v44 - 144) | 0xBD4501380DAB19D0) - ((v44 - 144) & 0xBD4501380DAB19D0)) ^ 0xA97177161E77F5F0);
  v48 = (v45 - 1685896250) ^ v47;
  *(v44 - 136) = v47 + v45 - 1685896250 + 124;
  *(v44 - 132) = v48;
  *(v44 - 144) = -1284136444 - v47 + v45;
  *(v44 - 140) = v48 ^ 0xF1;
  *(v44 - 116) = -1785193651 * ((((v44 - 144) | 0xDAB19D0) - ((v44 - 144) & 0xDAB19D0)) ^ 0x1E77F5F0);
  *(v44 - 112) = v47 + 5119;
  *(v44 - 128) = v46 ^ v47;
  v49 = (*(v43 + 8 * (a5 + v45 + 1757)))(v44 - 144);
  return (*(v43 + 8 * *(v44 - 120)))(v49);
}

uint64_t sub_25443A9CC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v13 = 2 * (a1 ^ (v11 + 414));
  v14 = a1 ^ (v11 + 517);
  v15 = v12 + a1 + 966;
  v16 = v9 + (v14 ^ 0x33C5005);
  v17 = a9 - 465182427 < v16;
  if ((a9 - 465182427) < 0x1AAA4A24 != v16 < (v13 ^ 0x1AAA4968u))
  {
    v17 = v16 < (v13 ^ 0x1AAA4968u);
  }

  return (*(v10 + 8 * ((51 * !v17) ^ v15)))();
}

void sub_25443AA50(unint64_t a1@<X4>, unsigned __int8 *a2@<X8>)
{
  v7 = v3 + 18;
  v8 = &STACK[0x1800] + v2;
  *v8 = *a2;
  *(v8 + 1) = *(a2 + 1);
  *(v8 + 9) = *(a2 + 9);
  *(v8 + 13) = *(a2 + 13);
  v8[15] = a2[15];
  v10 = *a2;
  v9 = *(a2 + 1);
  *(v8 + 2) = v10;
  *(v8 + 3) = v9;
  v11 = *(v6 + 8 * (v7 - 932)) - 4;
  LOBYTE(v10) = *(v11 + (v8[5] ^ 0x56));
  v12 = *(v6 + 8 * (v7 - 897)) - 4;
  v13 = *(v12 + (v8[15] ^ (((v7 + 22) & 0x77) + 62)));
  v14 = *(v12 + (v8[7] ^ 0xB3));
  LODWORD(v10) = ((((v10 * v4 - 42) ^ (76 * v10 + 44)) << 16) ^ 0x5633B112) & ~v14 | v14 & 0xED;
  v15 = *(v12 + (v8[11] ^ 0x19));
  v16 = *(v6 + 8 * (v7 ^ 0x3B3)) - 4;
  v17 = *(v16 + (v8[2] ^ 0xA4));
  v18 = *(v6 + 8 * (v7 ^ 0x3FA)) - 4;
  v19 = *(v18 + (v8[12] ^ 0x28));
  v20 = (v17 ^ (v17 >> 5) ^ (v17 >> 3)) << 8;
  v21 = *(v18 + (*v8 ^ 0xBBLL));
  v22 = *(v11 + (v8[13] ^ 0xCFLL));
  v23 = v22 * v4 - 42;
  v24 = (((v21 ^ (v21 >> 3) ^ (v21 >> 2)) << 24) ^ 0xFD9A5D83) & (v20 ^ 0xFF9F1EBB) | v20 & 0xA200;
  LOBYTE(v21) = 76 * v22 + 44;
  v25 = *(v18 + (v8[8] ^ 4));
  v26 = (v23 ^ v21) << 16;
  v27 = (v26 ^ 0xFF4054FF) & ((((v19 ^ (v19 >> 3) ^ (v19 >> 2) ^ 0x15) << 24) ^ 0xCA1E60FE) & (v13 ^ 0xFFDF7696) ^ (v13 & 1 | 0x2DCE348C));
  v28 = (((v25 ^ (v25 >> 3) ^ (v25 >> 2)) << 24) ^ 0x31C0547) & (v15 ^ 0xFF1C9F36) | v15 & 0xB8;
  v29 = (v24 ^ 0x4F57A872) & (*(v12 + (v8[3] ^ 0xF1)) ^ 0xFFDFFF50) ^ (*(v12 + (v8[3] ^ 0xF1)) & 0xE | 0x10128200);
  v30 = *(v16 + (v8[6] ^ 0xAELL));
  LOBYTE(v25) = *(v11 + (v8[1] ^ 0x72));
  v31 = *(v16 + (v8[10] ^ 0x41));
  v32 = (*(v16 + (v8[14] ^ 0xC9)) ^ (*(v16 + (v8[14] ^ 0xC9)) >> 5) ^ (*(v16 + (v8[14] ^ 0xC9)) >> 3)) << 8;
  v33 = *(v18 + (v8[4] ^ 0x51));
  v34 = (v32 ^ 0xFFFFC0FF) & ((v27 | v26 & 0x2F0000) ^ 0xE1EBF27A);
  v35 = (v33 ^ (v33 >> 2) ^ ((v33 >> 3) | 0x40) ^ 0xE2) << 24;
  LODWORD(v10) = (v35 ^ 0x1FFFFFF) & (((((v30 ^ (v30 >> 5) ^ (v30 >> 3)) << 8) ^ 0xC97BA818) & (v10 ^ 0x9F734EE3) | v10 & 0x168400E7) ^ 0x68259A4);
  LOBYTE(v8) = *(v11 + (v8[9] ^ a1));
  v36 = (v31 ^ (v31 >> 5) ^ (v31 >> 3)) << 8;
  LODWORD(v8) = ((-127 * v8 + 55 * (-38 - 2 * v8)) ^ (76 * v8 + 44)) << 16;
  LODWORD(STACK[0x258]) = v29 & 0xA40CC7D1 ^ 0x60E09AB1 ^ ((((v25 * v4 - 42) ^ (76 * v25 + 44)) << 16) ^ 0x5B5A382E) & (v29 ^ 0xAF208C8D);
  LODWORD(STACK[0x270]) = v35 & 0x26000000 ^ 0x94FFF58D ^ v10;
  LODWORD(STACK[0x290]) = (v32 & 0x99C15989 | 0x663E8676) ^ v34;
  LODWORD(STACK[0x268]) = v8 & 0xB00000 ^ 0xE4DB90AE ^ (v8 ^ 0xFF1EFFFF) & ((v36 & 0xB300 | (v28 ^ 0xD76A49C3) & ~v36) ^ 0xF539A15A);
  STACK[0x288] = *(v5 + 456) + 7;
  JUMPOUT(0x25444BB60);
}

void sub_25443AAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v69 - 200) = (v66 - 1197042510) ^ (1785193651 * ((2 * (v68 & 0xD07F9A8) - v68 - 218626477) ^ 0xE124EA73));
  (*(v67 + 8 * (v66 ^ 0x932)))(v69 - 200);
  LODWORD(STACK[0x204]) = LODWORD(STACK[0x204]) + v66 + 217 - 316;
  v70 = v69 - 200;
  *(v70 + 16) = a65;
  *(v70 + 24) = a66;
  *v70 = 33 - -77 * (((v68 | 0x51) - (v68 & 0x51)) ^ 0x71);
  *(v69 - 196) = (v66 + 1715) ^ (1785193651 * (((v68 | 0xD8EA3851) - (v68 & 0xD8EA3851)) ^ 0xCB36D471));
  (*(v67 + 8 * (v66 ^ 0x940)))(v69 - 200);
  LODWORD(STACK[0x4A0]) = *(v69 - 192);
  LODWORD(STACK[0x208]) = 268435459;
  JUMPOUT(0x25443ABFCLL);
}

void sub_25443AC48(int a1@<W8>)
{
  v11 = (v7 + 851592136) & 0xCD3DBC37 ^ 0x40000033 | v6;
  v1 = *v8;
  v2 = *(v8 + 4) + a1;
  *(*v8 + v2) = (HIBYTE(v11) ^ 0x92) - ((v11 >> 23) & 0x40) - 96;
  *(v1 + v2 + 1) = (BYTE2(v11) ^ 0xCE) - ((v11 >> 15) & 0x40) - 96;
  *(v1 + v2 + 2) = (BYTE1(v11) ^ 0x5E) - ((v11 >> 7) & 0x40) - 96;
  *(v1 + v2 + 3) = v11 ^ 0x4D;
  v3 = *v8;
  v4 = ((v9 ^ 0x65DC2CC) - 1038483063) ^ v9 ^ ((v9 ^ 0xD1BA2C21) + 368963430) ^ ((v9 ^ 0x93A0212D) + 1474814570) ^ ((v9 ^ 0x7FFFF37B) - 1145556928);
  v5 = ((2 * (a1 + *(v8 + 4) + 4)) & 0x7FFDF6DE) + ((a1 + *(v8 + 4) + 4) ^ 0x3FFEFB6F) - 1073675119;
  *(*v8 + v5) = (HIBYTE(v4) ^ 0x3B) - ((2 * (HIBYTE(v4) ^ 0x3B)) & 0x40) - 96;
  *(v3 + v5 + 1) = (BYTE2(v4) ^ 0xB8) - ((2 * (BYTE2(v4) ^ 0xB8)) & 0x40) - 96;
  *(v3 + v5 + 2) = (BYTE1(v4) ^ 0x3C) - ((2 * (BYTE1(v4) ^ 0x3C)) & 0x40) - 96;
  *(v3 + v5 + 3) = ((v9 ^ 0xCC) - 119) ^ v9 ^ ((v9 ^ 0x21) + 102) ^ ((v9 ^ 0x2D) + 106) ^ ((v9 ^ 0x7B) + 64) ^ 0x1B;
  *(v8 + 4) = v10 - 1001929907;
  JUMPOUT(0x25442A88CLL);
}

void sub_25443AD14(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) ^ (1037613739 * (((a1 | 0xF3D86D6B) - (a1 & 0xF3D86D6B)) ^ 0x22DA4014));
  v2 = *(*(a1 + 8) + 4);
  if (v2 - 742196933 < 0)
  {
    v3 = 742196933 - v2;
  }

  else
  {
    v3 = v2 - 742196933;
  }

  v7 = *(a1 + 8);
  v6 = v1 + 1564307779 * ((v5 & 0x4D5E1142 | ~(v5 | 0x4D5E1142)) ^ 0x25AC22AE) - 726;
  v4 = *(&off_286663530 + (v1 ^ 0x67F)) - 8;
  (*&v4[8 * v1 + 6488])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_25443B0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v22 = 2066391179 * ((((v21 - 160) | 0x4AACDF) - ((v21 - 160) & 0x4AACDF)) ^ 0xAF6D2EC7);
  *(v21 - 160) = v20 - v22 + 211;
  *(v21 - 156) = a19 - v22;
  *(v21 - 152) = a2;
  v23 = (*(v19 + 8 * (v20 ^ 0x9BA)))(v21 - 160);
  v24 = STACK[0x27C];
  *(&STACK[0x238] + (v24 & 0x3F)) = 32;
  return (*(v19 + 8 * ((((v24 & 0x3Fu) > (((v20 ^ 0x2D) + 695) ^ 0x289u)) * (4 * (v20 ^ 0x2D) + 466)) ^ v20)))(v23);
}

void sub_25443BC68()
{
  v4 = (((v1 ^ 0x61236CE2) - 1629711586) ^ ((v1 ^ 0xEA10327) - 245433127) ^ ((v1 ^ 0xF1DA9B3A) + 237331654)) - 1698650414 + (((v0 ^ (v2 - 406)) - 271196854 + (*(v3 - 132) ^ 0x2779DDC5)) ^ ((*(v3 - 132) ^ 0x1C1FA2E8) - 471835368) ^ ((*(v3 - 132) ^ 0xA53E8BD2) + 1522627630));
  *(v3 - 132) = v4 ^ ((v4 ^ 0x80D0D81F) + 555850549) ^ ((v4 ^ 0xDABC0C56) + 2068664190) ^ ((v4 ^ 0xFB9DDB40) + 1517066348) ^ ((v4 ^ 0xFFFFB3DD) + 1578037495) ^ 0xC056482B;
  JUMPOUT(0x25443BDCCLL);
}

uint64_t sub_25443C364@<X0>(int a1@<W3>, unsigned int a2@<W4>, int a3@<W5>, uint64_t a4@<X8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int8x16_t a7@<Q4>, int8x16_t a8@<Q5>, int8x16_t a9@<Q6>, int32x4_t a10@<Q7>)
{
  v10 = v17 + 4 * a4;
  a6.i64[0] = *(v10 + 4);
  a6.i32[2] = *(v10 + 12);
  v11 = vextq_s8(a5, a6, 0xCuLL);
  v12 = a6;
  v12.i32[3] = *(v17 + 4 * (a4 + 4));
  v13 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v12, a8), vandq_s8(v11, a7)), 1uLL), *(v10 + 1588));
  v11.i32[0] = *(v18 + 4 * (*(v10 + 4) & (v15 ^ (v19 - 1374) ^ a2)));
  v11.i32[1] = *(v18 + 4 * (*(v10 + 8) & 1));
  v11.i32[2] = *(v18 + 4 * (*(v10 + 12) & 1));
  v11.i32[3] = *(v18 + 4 * (v12.i8[12] & 1));
  *v10 = veorq_s8(vaddq_s32(vsubq_s32(v13, vandq_s8(vaddq_s32(v13, v13), a9)), a10), v11);
  return (*(v16 + 8 * (((a4 == 220) * a3) ^ (a1 + v15 + 1000))))();
}

uint64_t sub_25443C36C@<X0>(int a1@<W8>, __int16 a2, char a3, char a4, char a5, __int16 a6, char a7, uint64_t a8, int a9, char *a10, char *a11, char *a12, char a13, unsigned int a14, int a15)
{
  v18 = *(v15 + 32);
  v19 = &a8;
  v20 = 742307843 * (((v19 | 0xC1B9F36) - (v19 & 0xC1B9F36)) ^ 0x12391263);
  a13 = (3 * (((v19 | 0x36) - (v19 & 0x36)) ^ 0x63)) ^ 0x1C;
  a11 = &a7;
  a12 = &a4;
  a8 = v18;
  a10 = &a5;
  a14 = (((a1 ^ 0xE34067D7) + 482318377) ^ ((a1 ^ 0xCE2B91D7) + 836005417) ^ (((v17 + 57) ^ 0xE744D77A) + (a1 ^ 0x18BB29CF))) - v20 - 1658674820;
  a15 = v17 - v20 - 473373938;
  v21 = (*(v16 + 8 * (v17 | 0x8AC)))(&a8);
  return (*(v16 + 8 * ((1393 * (a9 == 585076288)) ^ v17)))(v21);
}

uint64_t sub_25443C6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = v4 + 1;
  *(v9 + 4 * v10 + 908) = *(v9 + 4 * v10) ^ v8 ^ *(a3 + 4 * (*(v9 + 4 * v10 + 912) & 1)) ^ ((*(v9 + 4 * v10 + 912) & ((v3 + 332) ^ v6) | v5 & 0x80000000) >> 1);
  return (*(v7 + 8 * (((16 * (v10 == 395)) | ((v10 == 395) << 6)) ^ (v3 - 1474))))();
}

void sub_25443C758(uint64_t a1)
{
  v1 = *(a1 + 32) + 1785193651 * ((2 * (a1 & 0x3B308A28) - a1 + 1154446807) ^ 0x571399F7);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_25443C864(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = v7 - a3 + ((a7 - 1251) | 0x1D0) - 1490;
  if (v8 > v10)
  {
    v10 = v8;
  }

  return (*(v9 + 8 * ((489 * (v10 + 1 < ((a7 - 248) ^ 0x7C9u))) ^ a7)))();
}

uint64_t sub_25443C8B8@<X0>(uint64_t a1@<X8>)
{
  v4 = 1037613739 * (((v6 | 0xF04C5624) - v6 + (v6 & 0xFB3A9D8)) ^ 0x214E7B5B);
  v6[0] = (210479201 - v1 - ((((v3 - 321) ^ 0x362838D2) - 2 * v1) & 0x22EF12CA)) ^ v4;
  v6[1] = (v3 - 51) ^ v4;
  v7 = v2;
  return (*(a1 + 8 * (v3 ^ 0xFF8)))(v6);
}

uint64_t sub_25443C974()
{
  *(v6 - 136) = (v5 - 531) ^ (((v0 + 482914685 - 2 * (v0 & 0x1CC8B17D)) ^ 0x4085E5F8) * v4);
  *(v6 - 128) = v1;
  *(v6 - 120) = v3;
  v7 = (*(v2 + 8 * (v5 + 1116)))(v6 - 136);
  return (*(v2 + 8 * ((3291 * (*(v6 - 132) - 1993194962 < ((v5 - 774) ^ 0x89FA2270))) ^ v5)))(v7);
}

uint64_t sub_25443CABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (a9 + v11);
  *(v14 - 1) = v13;
  *v14 = v13;
  return (*(v12 + 8 * ((((v9 & 0x30) == 16) * (((v10 - 1216) | 0x4C0) - 402)) ^ (v10 - 1659))))();
}

uint64_t sub_25443CB7C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4) - 754193402;
  v5 = (v1 - 754193402 < 2135487179) ^ (v4 < (((v3 + 783675171) & 0xD14A0FFB) + 2135485968));
  v6 = v1 - 754193402 > v4;
  if (v5)
  {
    v7 = v1 - 754193402 < 2135487179;
  }

  else
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((46 * !v7) ^ v3)))();
}

uint64_t sub_25443CC00@<X0>(uint64_t a1@<X8>)
{
  v6 = (LODWORD(STACK[0x2EC]) ^ 0xFF9D3EE6) + 1006096352 + ((LODWORD(STACK[0x2EC]) << (((v1 - 16) | 0x42) ^ 0x6E)) & 0xFF3A7DCC);
  v7 = 1785193651 * ((1805028408 - ((v5 - 200) | 0x6B968C38) + ((v5 - 200) | 0x946973C7)) ^ 0x87B59FE7);
  v8 = (v5 - 200);
  v9 = STACK[0x248];
  *v8 = v4;
  v8[1] = v9;
  v8[5] = a1;
  v8[3] = STACK[0x250];
  *(v5 - 148) = v6 ^ v7;
  *(v5 - 168) = v7 + 1089841965 * v2 + 838164185;
  *(v5 - 184) = v7 + v1 + 1421512196;
  v10 = (*(v3 + 8 * (v1 ^ 0x88B)))(v5 - 200);
  v11 = *(v5 - 152);
  LODWORD(STACK[0x4A0]) = v11;
  return (*(v3 + 8 * ((2367 * (v11 == 585076288)) ^ v1)))(v10, v4);
}

void U4HBs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_25443CDB0()
{
  result = (*(v1 + 8 * (v3 + 2140)))(*v4);
  *v2 = 0;
  *v0 = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 56) = 1296220137;
  return result;
}

void sub_25443CDF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 16) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x254461BA0);
}

uint64_t sub_25443CE3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v34 = a1[4];
  v29 = a1[1];
  v30 = a1[2];
  v31 = v30[1];
  *(v28 - 120) = (v27 + 1065) ^ (1785193651 * ((-759068912 - ((v28 - 144) | 0xD2C18710) + ((v28 - 144) | 0x2D3E78EF)) ^ 0x3EE294CF));
  *(v28 - 144) = v31;
  *(v28 - 136) = a2;
  *(v28 - 128) = v30;
  *(v28 - 112) = &a24;
  *(v28 - 104) = v29;
  (*(v26 + 8 * (v27 ^ 0x8C2)))(v28 - 144);
  *(v28 - 120) = &a24;
  *(v28 - 112) = v30;
  *(v28 - 136) = &a22;
  *(v28 - 128) = v29;
  *(v28 - 144) = (v27 + 1887) ^ (1037613739 * ((((v28 - 144) | 0x572F00C9) - (v28 - 144) + ((v28 - 144) & 0xA8D0FF30)) ^ 0x862D2DB6));
  (*(v26 + 8 * (v27 + 1994)))(v28 - 144);
  *(v28 - 120) = (v27 + 1065) ^ (1785193651 * (((v28 - 144) & 0x91040498 | ~((v28 - 144) | 0x91040498)) ^ 0x7D271747));
  *(v28 - 112) = &a16;
  *(v28 - 104) = v29;
  *(v28 - 136) = &a22;
  *(v28 - 128) = v30;
  *(v28 - 144) = &a24;
  (*(v26 + 8 * (v27 ^ 0x8C2)))(v28 - 144);
  *(v28 - 120) = (v27 + 1065) ^ (1785193651 * ((((v28 - 144) | 0x7E43C897) - (v28 - 144) + ((v28 - 144) & 0x81BC3768)) ^ 0x6D9F24B7));
  *(v28 - 112) = &a20;
  *(v28 - 104) = v29;
  *(v28 - 136) = &a22;
  *(v28 - 128) = v30;
  *(v28 - 144) = &a16;
  (*(v26 + 8 * (v27 ^ 0x8C2)))(v28 - 144);
  *(v28 - 120) = (v27 + 1065) ^ (1785193651 * (((((v28 - 144) | 0xE5E67C54) ^ 0xFFFFFFFE) - (~(v28 - 144) | 0x1A1983AB)) ^ 0x9C56F8B));
  *(v28 - 112) = &a26;
  *(v28 - 104) = v29;
  *(v28 - 136) = &a22;
  *(v28 - 128) = v30;
  *(v28 - 144) = &a20;
  (*(v26 + 8 * (v27 ^ 0x8C2)))(v28 - 144);
  *(v28 - 136) = &a22;
  *(v28 - 128) = v30;
  *(v28 - 120) = (v27 + 1065) ^ (1785193651 * ((-66626470 - ((v28 - 144) | 0xFC075C5A) + ((v28 - 144) | 0x3F8A3A5)) ^ 0x10244F85));
  *(v28 - 144) = &a26;
  *(v28 - 112) = &a14;
  *(v28 - 104) = v29;
  (*(v26 + 8 * (v27 ^ 0x8C2)))(v28 - 144);
  *(v28 - 112) = &a10;
  *(v28 - 104) = v29;
  *(v28 - 120) = (v27 + 1065) ^ (1785193651 * ((v28 - 30250188 - 2 * ((v28 - 144) & 0xFE326BC4)) ^ 0xEDEE87E4));
  *(v28 - 136) = &a22;
  *(v28 - 128) = v30;
  *(v28 - 144) = &a14;
  (*(v26 + 8 * (v27 + 1986)))(v28 - 144);
  *(v28 - 120) = (v27 + 1065) ^ (1785193651 * ((((2 * (v28 - 144)) | 0x894864FA) - (v28 - 144) + 995872131) ^ 0xD778DE5D));
  *(v28 - 136) = &a22;
  *(v28 - 128) = v30;
  *(v28 - 144) = &a10;
  *(v28 - 112) = &a12;
  *(v28 - 104) = v29;
  (*(v26 + 8 * (v27 ^ 0x8C2)))(v28 - 144);
  *(v28 - 144) = &a12;
  *(v28 - 136) = &a22;
  *(v28 - 128) = v30;
  *(v28 - 120) = (v27 + 1065) ^ (1785193651 * (((v28 - 144) & 0x367F60B9 | ~((v28 - 144) | 0x367F60B9)) ^ 0xDA5C7366));
  *(v28 - 112) = &a22;
  *(v28 - 104) = v29;
  (*(v26 + 8 * (v27 + 1986)))(v28 - 144);
  *(v28 - 144) = *v30;
  *(v28 - 136) = (v27 + 44) ^ (1785193651 * ((v28 - 144) ^ 0x13DCEC20));
  *(v28 - 128) = &a18;
  (*(v26 + 8 * (v27 ^ 0x8D7)))(v28 - 144);
  *(v28 - 140) = v27 + 1388665877 * ((v28 - 144) ^ 0x8DAD62EC) + 875;
  *(v28 - 136) = v34;
  v32 = (*(v26 + 8 * (v27 + 1991)))(v28 - 144);
  return (*(v26 + 8 * ((22 * ((((v27 + 1415) ^ (((v27 - 423) | 0x404u) + *(v28 - 144) - 207203477 < 0x7FFFFFFF)) & 1) == 0)) ^ v27)))(v32);
}

uint64_t sub_25443D2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = *(STACK[0x260] + 52);
  v76 = (v75 ^ 0x2244A9E1) & (2 * (v75 & 0xAB16C1C9)) ^ v75 & 0xAB16C1C9;
  v77 = ((((v69 - 1324469572) & 0x4EF1CFDF) + 917491351) ^ (2 * (v75 ^ 0x304128F1))) & (v75 ^ 0x304128F1) ^ (2 * (v75 ^ 0x304128F1)) & 0x9B57E938;
  v78 = v77 ^ 0x89502908;
  v79 = (v77 ^ 0x11072020) & (4 * v76) ^ v76;
  v80 = ((4 * v78) ^ 0x6D5FA4E0) & v78 ^ (4 * v78) & 0x9B57E938;
  v81 = (v80 ^ 0x957A020) & (16 * v79) ^ v79;
  v82 = ((16 * (v80 ^ 0x92004918)) ^ 0xB57E9380) & (v80 ^ 0x92004918) ^ (16 * (v80 ^ 0x92004918)) & 0x9B57E930;
  v83 = v81 ^ 0x9B57E938 ^ (v82 ^ 0x91568100) & (v81 << 8);
  v84 = v75 ^ (2 * ((v83 << 16) & 0x1B570000 ^ v83 ^ ((v83 << 16) ^ 0x69380000) & (((v82 ^ 0xA016838) << 8) & 0x1B570000 ^ 0x8160000 ^ (((v82 ^ 0xA016838) << 8) ^ 0x57E90000) & (v82 ^ 0xA016838))));
  v85 = 210068311 * ((v74 - 1823643545 - 2 * ((v74 - 200) & 0x934D692F)) ^ 0x19B568B);
  *(v74 - 192) = v69 - v85 - 289;
  *(v74 - 188) = v85 ^ a69;
  *(v74 - 176) = ((v71 ^ 0xE5EF1AFE) + 2075783016 + ((2 * v71) & 0xCBDE35FC)) ^ v85;
  v86 = (v74 - 200);
  v86[2] = &STACK[0x17F0];
  *v86 = v72;
  v86[4] = v73;
  *(v74 - 160) = (v84 ^ 0xB0F4F2CF) + v85;
  v87 = (*(v70 + 8 * (v69 + 2167)))(v74 - 200);
  v88 = *(v74 - 156);
  LODWORD(STACK[0x4A0]) = v88;
  return (*(v70 + 8 * ((((v88 == 585076288) << 8) | ((v88 == 585076288) << 9)) ^ v69)))(v87, v72);
}

uint64_t sub_25443D54C()
{
  STACK[0x2A0] = v0;
  v4 = 1388665877 * ((v3 - 200) ^ 0x8DAD62EC);
  *(v3 - 184) = v4 + v2 - 589;
  *(v3 - 180) = v4 + 886104012;
  v5 = (v3 - 200);
  v5[4] = 0;
  *v5 = &STACK[0x4D0];
  v5[1] = &STACK[0x2CC];
  v6 = (*(v1 + 8 * (v2 ^ 0xAC0)))(v3 - 200);
  return (*(v1 + 8 * ((218 * (*(v3 - 176) == ((v2 - 863) | 0x41) + 585076223)) ^ v2)))(v6);
}

uint64_t sub_25443D6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a17 = 2066391179 * (((&a15 ^ 0x538ED3E5) - 554110797 - 2 * ((&a15 ^ 0x538ED3E5) & 0xDEF8F0B3)) ^ 0x2251A14E) + 1791;
  a16 = &a11;
  v19 = (*(v18 + 19488))(&a15);
  return (*(v18 + 8 * ((79 * (((a15 == ((v17 - 203) ^ 0x335)) ^ 0x31) & 1)) ^ 0x10Du)))(v19);
}

void sub_25443D774(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_286663530 + (v1 & 0x145DE947)) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 4640])(32, 0x101004023FF3BD5) == 0) * ((v1 ^ 0x4E) - 1217)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_25443D830(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 16448;
  a1.n128_u8[2] = 64;
  a1.n128_u8[3] = 64;
  a1.n128_u8[4] = 64;
  a1.n128_u8[5] = 64;
  a1.n128_u8[6] = 64;
  a1.n128_u8[7] = 64;
  a2.n128_u16[0] = -24416;
  a2.n128_u8[2] = -96;
  a2.n128_u8[3] = -96;
  a2.n128_u8[4] = -96;
  a2.n128_u8[5] = -96;
  a2.n128_u8[6] = -96;
  a2.n128_u8[7] = -96;
  return sub_25443D86C(a1, a2);
}

uint64_t sub_25443D8A8()
{
  v8 = (v5 + 5704238) & 0xFFA8F5CD;
  v9 = (v3 + v6 - 16);
  v14.val[1].i64[0] = (v3 + 13) & 0xF;
  v14.val[1].i64[1] = (v3 + 12) & 0xF;
  v14.val[2].i64[0] = (v3 + 11) & 0xF;
  v14.val[2].i64[1] = (v3 + 10) & 0xF;
  v14.val[3].i64[0] = (v3 + 9) & 0xF;
  v14.val[3].i64[1] = v3 & 0xF ^ 8;
  v15.val[0].i64[0] = (v3 + 7) & 0xF;
  v15.val[0].i64[1] = (v3 + 6) & 0xF;
  v15.val[1].i64[0] = (v3 + 5) & 0xF;
  v15.val[1].i64[1] = (v3 + 4) & 0xF;
  v15.val[2].i64[0] = (v3 + 3) & 0xF;
  v15.val[2].i64[1] = (v3 + 2) & 0xF;
  v15.val[3].i64[0] = (v3 + 1) & 0xF;
  v15.val[3].i64[1] = v3 & 0xF;
  v10.i64[0] = 0x6161616161616161;
  v10.i64[1] = 0x6161616161616161;
  v11.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v11.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v14.val[0].i64[0] = v4 & 0xF;
  v14.val[0].i64[1] = ((v8 ^ 7) + v3) & 0xF;
  v12.i64[0] = vqtbl4q_s8(v14, xmmword_254495210).u64[0];
  v12.i64[1] = vqtbl4q_s8(v15, xmmword_254495210).u64[0];
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*v9, *(v1 + v14.val[0].i64[0] - 15)), *(v14.val[0].i64[0] + v0 - 10)), *(((v8 + 1019) | 0x13) + v14.val[0].i64[0] + v2 - 1507)));
  v15.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v15.val[0], v15.val[0], 8uLL), v11), vmulq_s8(v12, v10)));
  *v9 = vextq_s8(v15.val[0], v15.val[0], 8uLL);
  return (*(v7 + 8 * (v8 | (4 * ((v3 & 0x10) != 16)))))(v3 + v6 - 32, (v3 & 0x10) - 16, 19);
}

uint64_t sub_25443DA14(_DWORD *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (1785193651 * (a1 ^ 0x13DCEC20));
  v3 = *(*(&off_286663530 + (v1 ^ 0xB8A695BF)) - 4);
  v4 = v1 - 1388665877 * (&v3 ^ 0x8DAD62EC) + 1197043372;
  return (*(*(&off_286663530 + (v1 ^ 0xB8A69551)) + (v1 ^ 0xB8A69CBD) - 1))(&v3);
}

uint64_t sub_25443DAF0@<X0>(int a1@<W8>)
{
  v8 = STACK[0x500];
  v9 = *(v6 + 424);
  v10 = STACK[0x334];
  v11 = &v7[6 * v2];
  v11[2] = v5;
  v11[3] = v10;
  *(v11 + 2) = v9;
  v11[6] = v8;
  *v7 = v1 + 1;
  LODWORD(STACK[0x3C8]) = v3;
  v13 = v3 + 77608952 > (((a1 + 820924) & 0xFFF37EDF) - 384129682) && v3 + 77608952 < SLODWORD(STACK[0x270]);
  return (*(v4 + 8 * ((408 * v13) ^ a1)))();
}

void sub_25443DB74(uint64_t a1)
{
  v1 = 1037613739 * (((a1 | 0x27A6E) - a1 + (a1 & 0xFFFD8591)) ^ 0xD1005711);
  v2 = *(a1 + 16) - v1;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_25443DC44(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

void sub_25443DC5C(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1785193651 * ((2 * (a1 & 0x60B1747C) - a1 + 525241219) ^ 0xC9267A3));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_25443DDDC@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 8) = -585050763;
  return result;
}

void sub_25443DDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(v9 + 16);
  **(v9 + 24) = v8;
  *v11 = a8;
  *v9 = *(v10 + 24);
}

uint64_t sub_25443DE44()
{
  v6 = STACK[0x2C8];
  *v3 = v3[623] + LODWORD(STACK[0x2C8]) - 999 + (((v2 | ~(LODWORD(STACK[0x2C8]) - 999)) & (LODWORD(STACK[0x2C8]) - 999 - v2) | v2 & ~(LODWORD(STACK[0x2C8]) - 999)) >> 31) - 622;
  v7 = STACK[0x2B8];
  *(v0 + 16) = (v4 + 1) ^ STACK[0x2B8];
  *(v5 - 192) = ((v6 - 1621) ^ 0x131F7F8C) + v7;
  *(v5 - 188) = v7 ^ (v6 - 1621) ^ 0x131F7FD0;
  *(v5 - 172) = -v7;
  *(v0 + 32) = v7 | 3;
  *(v5 - 200) = 55968316 - v7 + v6;
  *(v5 - 196) = (v6 + 320829864) ^ v7;
  (*(v1 + 8 * SLODWORD(STACK[0x2B4])))(v5 - 200);
  return (*(v1 + 8 * *(v5 - 176)))(v1);
}

uint64_t sub_25443DE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39)
{
  v44 = *(&a27 + v39 + 72);
  v45 = ((2 * v39) & 0xE9BBFFB0) + (v39 ^ 0xF4DDFFDA) + v40;
  *(a1 + v45) = v44 ^ 0x5F;
  *(a1 + v45 + 1) = ((v41 - a6 + 83) ^ BYTE1(v44) ^ 0x22) + (~(2 * ((v41 - a6 + 83) ^ BYTE1(v44) ^ 0x22)) | 0xBF) - 95;
  *(a1 + v45 + 2) = (BYTE2(v44) ^ 0x58) - ((v44 >> 15) & 0x40) - 96;
  *(a1 + v45 + 3) = (HIBYTE(v44) ^ 0x9E) - ((v44 >> 23) & 0x40) - 96;
  return (*(v43 + 8 * (((v39 + 4 >= a39) * v42) ^ v41)))();
}

uint64_t sub_25443E1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = (v16 + 2034) ^ (210068311 * ((~((v18 - 136) | 0xFA3A3475) + ((v18 - 136) & 0xFA3A3475)) ^ 0x9713F42E));
  *(v18 - 120) = &a15;
  *(v18 - 128) = a13;
  v19 = (*(v15 + 8 * (v16 + 2251)))(v18 - 136);
  return (*(v15 + 8 * ((7 * (v17 == (((v16 - 163) | 0x1B2) ^ ((v16 + 125) | 0x92) ^ 1))) ^ v16)))(v19);
}

uint64_t sub_25443E324(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = (v22 + 4 * v16);
  v26 = (((*v25 ^ v13) + HIDWORD(v17)) & ((v19 - 939485032) & v21 ^ v23)) + HIDWORD(v15) + v20 * (*(*(a13 + 8) + 4 * v16) ^ v13);
  *(v25 - 1) = v26 + v13 - (a2 & (2 * v26));
  return (*(v18 + 8 * (((v16 + 1 == v14) * v24) ^ (v19 + 760))))();
}

uint64_t sub_25443E4B0@<X0>(char a1@<W2>, char a2@<W3>, char a3@<W4>, uint64_t a4@<X8>)
{
  v7 = (v4 - 1061) | 0x404;
  v8 = *(v6 + 352);
  v9 = *(a4 + 72);
  *v8 = ((v9 >> (((v7 + 82) | 0x40) ^ a1)) ^ 0x9E) - ((2 * (v9 >> (((v7 + 82) | 0x40) ^ a1))) & 0x40) - 96;
  v8[1] = (BYTE2(v9) ^ 0x58) - ((v9 >> 15) & 0x40) - 96;
  v8[2] = (BYTE1(v9) ^ a2) - 2 * ((BYTE1(v9) ^ a2) & 0x28 ^ BYTE1(v9) & 8) - 96;
  v8[3] = v9 ^ a3;
  return (*(v5 + 8 * ((*(a4 + 92) > 4u) | (32 * (*(a4 + 92) > 4u)) | v7)))();
}

uint64_t sub_25443E674@<X0>(uint64_t a1@<X8>)
{
  v8 = v4 - a1;
  *(v8 + 91) = ((a1 + v2) ^ v3) * (a1 + v2 + 17);
  *(v8 + 90) = ((a1 + v2) ^ 0xBB) * (a1 + v2 + 18);
  return (*(v7 + 8 * (((a1 + v6 == 142) * v5) ^ v1)))();
}

uint64_t sub_25443E8B4()
{
  v3 = STACK[0x2C8];
  v4 = (LODWORD(STACK[0x2C8]) + 3497) ^ 0x13FF;
  v5 = STACK[0x228];
  v6 = STACK[0x270];
  *STACK[0x278] = 0;
  v7 = (v3 - 1492) | 0x251;
  v8 = ((v0 ^ (v0 >> 11)) << 7) & 0x9D2C5680 ^ v0 ^ (v0 >> 11);
  v9 = (v5 + (v6 - 1));
  v10 = -468040725 * ((*(*STACK[0x2A0] + (*STACK[0x298] & (5 * (v7 ^ 0x2FAu) + 233111087))) ^ v9) & ((v7 ^ 0x2DB) + 2147483639));
  v11 = -468040725 * (v10 ^ HIWORD(v10));
  v12 = *(*(v2 + 8 * (v7 ^ 0x2D9)) + (v11 >> 24) - 4) ^ ((((v8 - v4) << 15) & 0xEFC60000 ^ v8) >> (((v3 + 44) | 0x51) ^ 0xC1)) ^ v8 ^ *((v11 >> 24) + *(v2 + 8 * (v7 ^ 0x2CB)) + 2) ^ *((v11 >> 24) + *(v2 + 8 * (v7 - 582)) + 4) ^ v11;
  *v9 = (-123 * BYTE3(v11)) ^ v12;
  return (*(v1 + 8 * ((459 * (v6 == (v12 != (-123 * BYTE3(v11))))) ^ v7)))();
}

uint64_t sub_25443E8D0(uint64_t result)
{
  v2 = *(v1 + 8);
  *result = 0;
  *(result + 8) = 0x606416C6606416C6;
  *(result + 16) = 0x76FDBD71659A2885;
  *(result + 24) = 585076288;
  *v2 = result;
  *v1 = 585076288;
  return result;
}

uint64_t sub_25443EAE0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 48) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * ((((a2 | 0x2A0) ^ 0x568) + 1244) ^ 0x84E)) ^ (a2 | 0x2A0))))();
}

uint64_t sub_25443EB88()
{
  v6 = *(v1 + 8 * (v3 - 1781));
  v7 = *v0;
  v8 = v5 + 968669545;
  *(*v0 + v8) = (v2 ^ ((v4 + 4) >> 24)) - (((v4 + 4) >> 23) & 0x40) - 96;
  *(v7 + v8 + 1) = (((v4 + 4) >> 16) ^ 0xFD) - ((2 * (((v4 + 4) >> 16) ^ 0xFD)) & 0x40) - 96;
  *(v7 + (v5 + 968669547)) = (((v4 + 4) >> 8) ^ 0x11) - (((v4 + 4) >> 7) & 0x40) - 96;
  *(v7 + v8 + 3) = (v4 + 4) ^ 0x10;
  return v6();
}

uint64_t sub_25443EB9C@<X0>(unsigned int a1@<W8>)
{
  v7 = v5 ^ 0x144;
  v1 = ((811 * (v7 ^ 0x8E)) ^ 0x65B9BBEC) + v4;
  v2 = a1 - 689033710 < v1;
  if (a1 > 0x2911D1ED != v1 < 0xD6EE2E12)
  {
    v2 = v1 < 0xD6EE2E12;
  }

  return (*(v6 + 8 * ((!v2 * ((v7 + 918) ^ 0x438)) ^ v7)))(1204, 1623, 689033709, 3605933586);
}

uint64_t sub_25443EBD0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char a5@<W4>, char a6@<W7>, uint64_t a7@<X8>)
{
  v14 = (v10 + a1) & a2;
  v15 = (v9 - 1);
  *(v12 + v15) = *(v13 + v15) ^ *(a7 + ((v14 ^ a3) & v15)) ^ *(((v14 ^ a3) & v15) + v7 + 5) ^ *(((v14 ^ a3) & v15) + v8 + 1) ^ (((v14 ^ a3) & v15) * a5) ^ a6;
  return (*(v11 + 8 * (((v15 == v14 - 1622) * a4) ^ (v14 - 1147))))();
}

uint64_t sub_25443EC74()
{
  v4.i64[0] = 0x4040404040404040;
  v4.i64[1] = 0x4040404040404040;
  v5.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v5.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v2[72] = vaddq_s8(vsubq_s8(*(v0 + 4), vandq_s8(vaddq_s8(*(v0 + 4), *(v0 + 4)), v4)), v5);
  v6 = ((v1 + 30) | 8) == 524;
  return (*(v3 + 8 * (((4 * v6) | (16 * v6)) ^ v1)))();
}

uint64_t sub_25443ED40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v13.val[0].i64[0] = (v7 - v8 - 1) & 0xF;
  v13.val[0].i64[1] = (v7 - v8 + 14) & 0xF;
  v13.val[1].i64[0] = (v7 + a4 + 52 + 12 - v8) & 0xF;
  v13.val[1].i64[1] = (v7 - v8 + 12) & 0xF;
  v13.val[2].i64[0] = (v7 - v8 + 11) & 0xF;
  v13.val[2].i64[1] = (v7 - v8 + 10) & 0xF;
  v13.val[3].i64[0] = (v7 - v8 + 9) & 0xF;
  v13.val[3].i64[1] = (v7 - v8) & 0xF ^ 8;
  *(v7 + v9 - 8 - v8) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v7 + v9 - 8 - v8), *(v5 + v13.val[0].i64[0] - 7)), veor_s8(*(v13.val[0].i64[0] + v6 - 4), *(v13.val[0].i64[0] + v4 - 2)))), 0xA0A0A0A0A0A0A0A0), vmul_s8(*&vqtbl4q_s8(v13, xmmword_254495220), 0x6161616161616161)));
  v11 = 8 - (v7 & 0x18) == -v8;
  return (*(v10 + 8 * (((2 * v11) | (4 * v11)) ^ (a4 - 194))))(xmmword_254495220);
}

uint64_t sub_25443EE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = (v18 + 1057) ^ (210068311 * ((v19 - 136) ^ 0x92D63FA4));
  *(v19 - 128) = v17;
  *(v19 - 120) = &a15;
  v20 = (*(v16 + 8 * ((v18 - 119) ^ 0xD73)))(v19 - 136);
  return (*(v16 + 8 * (((v15 == ((v18 - 1400589567) & 0x537B4CFE ^ 0x47D)) * (v18 ^ 0x529)) ^ (v18 - 119))))(v20);
}

void OowSGu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 && a4 != 0 && a5 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_25443EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v21 - 112) = &a16;
  *(v21 - 104) = &a18;
  *(v21 - 120) = (v19 + 2111) ^ (210068311 * ((((2 * (v21 - 120)) | 0xFDAB7C42) - (v21 - 120) - 2127937057) ^ 0xEC038185));
  v22 = (*(v18 + 8 * (v19 ^ 0x928)))(v21 - 120);
  return (*(v18 + 8 * ((193 * (((v20 == ((v19 + 1589260123) & 0xA145D3E7) - 928) ^ (v19 - 101)) & 1)) ^ v19)))(v22);
}

uint64_t sub_25443F078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, int a16, char a17, __int16 a18, char a19, uint64_t a20, uint64_t a21, char *a22, char *a23)
{
  a21 = a12;
  a22 = &a17;
  a23 = &a19;
  HIDWORD(a20) = v23 - 143681137 * ((((&a20 | 0x6047A9B6) ^ 0xFFFFFFFE) - (~&a20 | 0x9FB85649)) ^ 0xFEE0DD99) - 352;
  (*(v25 + 8 * (v23 ^ 0xF64)))(&a20);
  LODWORD(a20) = (v23 + 43) ^ (50899313 * (((&a20 | 0xCFF8504F) + (~&a20 | 0x3007AFB0)) ^ 0xDBD7CDD5));
  a23 = &a14;
  a21 = a12;
  (*(v25 + 8 * (v23 + 872)))(&a20);
  HIDWORD(a21) = (v23 - 600) ^ ((((&a20 | 0x8F6D9D0E) - &a20 + (&a20 & 0x709262F0)) ^ 0x2C0FFE2) * v24);
  a20 = a12;
  v26 = (*(v25 + 8 * (v23 ^ 0xF63)))(&a20);
  return (*(v25 + 8 * (((a21 == ((v23 - 114) ^ 0x22DF8BDF)) * (v23 + 2160)) ^ v23)))(v26);
}

uint64_t sub_25443F230@<X0>(int a1@<W3>, int a2@<W8>)
{
  v9 = *(v8 + 288);
  *(v9 + 392) = v2;
  *(v9 + 396) = STACK[0x4BC];
  *(v9 + 400) = *(v8 + 400);
  *(v9 + 408) = 457955448 - v4 + LODWORD(STACK[0x500]);
  *(v9 + 416) = v5 + (v4 - 912550143);
  v10 = (*(v3 + a2 * a1 + 8))(STACK[0x268], v9 + 392);
  return (*(v6 + 8 * ((1539 * (((v7 - 538796890) & 0x201D63BD) + 585076288 + v10 - ((2 * v10) & 0x45BF1C80) == 585076977)) ^ v7)))();
}

uint64_t sub_25443F300@<X0>(uint64_t a1@<X8>)
{
  v6 = (v4 - 171) | 0xA0;
  v7 = (v6 ^ 0xB5Du) - 1017;
  *(v1 - 7 + (v7 ^ v3) + v2) = vadd_s8(vsub_s8(*(a1 - 7 + (v7 ^ v3) + v2), vand_s8(vadd_s8(*(a1 - 7 + (v7 ^ v3) + v2), *(a1 - 7 + (v7 ^ v3) + v2)), 0x4040404040404040)), 0xA0A0A0A0A0A0A0A0);
  return (*(v5 + 8 * ((21 * (((v6 ^ 0xFFFFF75D) & v2) - 8 != v3)) ^ v6)))();
}

uint64_t sub_25443F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v17 - 136) = v15;
  *(v17 - 128) = (v16 - 1413) ^ (1785193651 * ((((v17 - 136) | 0x90C84F90) - (v17 - 136) + ((v17 - 136) & 0x6F37B068)) ^ 0x8314A3B0));
  *(v17 - 120) = a14;
  v18 = (*(v14 + 8 * (v16 ^ 0xE24)))(v17 - 136);
  return (*(v14 + 8 * ((492 * (a11 < 1)) ^ (v16 - 1649))))(v18);
}

uint64_t sub_25443F47C()
{
  v6 = *(v3 + 4 * (v2 - 1));
  *(v3 + 4 * v2) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v3 + 4 * v2)) - v2;
  v7 = 1785193651 * ((2 * ((v5 - 144) & 0x7C4BD64882D22C18) - (v5 - 144) + 0x3B429B77D2DD3E2) ^ 0x17805F996EF13FC2);
  *(v5 - 116) = -1785193651 * ((2 * ((v5 - 144) & 0x82D22C18) - (v5 - 144) + 2100155362) ^ 0x6EF13FC2);
  *(v5 - 112) = v7 + 623;
  v8 = (v0 + 560218758) ^ v7;
  *(v5 - 136) = ((v0 + 560218758) ^ 0x30) + v7;
  *(v5 - 132) = v8;
  *(v5 - 144) = -1284136444 - v7 + v0;
  *(v5 - 140) = v8 ^ 0x44;
  *(v5 - 128) = (v2 + 1) ^ v7;
  v9 = (*(v1 + 8 * (v0 ^ (v4 + 2356))))(v5 - 144);
  return (*(v1 + 8 * *(v5 - 120)))(v9);
}

uint64_t sub_25443F614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 1037613739 * ((((v18 - 136) | 0x7D373CD7) - (v18 - 136) + ((v18 - 136) & 0x82C8C328)) ^ 0xAC3511A8);
  *(v18 - 128) = &a15;
  *(v18 - 136) = (((v17 + 1188946627) & 0xB9221FFE) + (v15 ^ 0x4FDFBAFF) + ((2 * v15) & 0x9FBF75FE) - 1107401119) ^ v19;
  *(v18 - 120) = v19 + v17 - 825;
  v20 = (*(v16 + 8 * (v17 ^ 0xD35)))(v18 - 136);
  return sub_25443F6CC(v20);
}

uint64_t sub_25443F6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v17 - 128) = v15;
  *(v17 - 120) = a14;
  *(v17 - 136) = (v16 - 1110) ^ (843532609 * ((((2 * (v17 - 136)) | 0xE09E9A4A) - (v17 - 136) + 263238363) ^ 0xAC0219A0));
  v18 = (*(v14 + 8 * (v16 ^ 0xE69)))(v17 - 136);
  return (*(v14 + 8 * ((118 * (((((v16 ^ 0x493) + 83) ^ (*(v17 - 132) > 2 * (v16 ^ 0x493u) + 1993193079)) & 1) == 0)) ^ v16)))(v18);
}

uint64_t sub_25443F7C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v9 = *a1;
  v10 = a1[4];
  v11 = a1[2];
  *a4 = v6;
  *v11 = v5;
  *v10 = v7;
  *v9 = v4 + v8;
  return sub_254431934(a1, a2, a3, 585076288);
}

uint64_t sub_25443F844@<X0>(int a1@<W8>)
{
  v10 = (v3 - 2);
  v11 = v2 + 2;
  *v10 = (v4 + 2 + v6) * (v11 ^ v7);
  *(v10 - 1) = (v11 ^ 0xBB) * (v11 + 18);
  return (*(v9 + 8 * (((v5 != 2) * v8) ^ a1)))();
}

uint64_t sub_25443F8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * (&a14 ^ 0x1E228D55);
  a14 = &a10;
  a15 = v22 + v21 - 405;
  a16 = v22 + 136222045;
  a17 = &a13;
  a18 = v19;
  v23 = (*(v20 + 8 * (v21 ^ 0xB66)))(&a14);
  return (*(v20 + 8 * ((481 * (((v21 + 1) ^ (*(v19 + 24) == ((v21 - 563) ^ (v18 + 69)))) & 1)) ^ v21)))(v23);
}

void sub_25443FB5C(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((~a1 & 0xB8C3CEDE | a1 & 0x473C3121) ^ 0x69C1E3A1));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_25443FC24@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  v21 = v15 < v16;
  *(&a14 + a1) = *(v20 + v14) - ((2 * *(v20 + v14)) & 0x40) - 96;
  if (v21 == v14 + 1 > v17)
  {
    v21 = v14 + ((v19 - 1317) ^ (v16 + 36)) < v15;
  }

  return (*(v18 + 8 * (((16 * !v21) | (32 * !v21)) ^ v19)))();
}

void sub_25443FD68()
{
  STACK[0x300] = v0;
  STACK[0x338] = STACK[0x290];
  *(v3 + 72) = *(v2 + 8 * v1);
  JUMPOUT(0x25443FDF0);
}

void sub_25443FE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = v15 + 210068311 * ((((2 * ((v16 - 144) ^ 0x3E4A2ADF)) | 0xF99A0790) - ((v16 - 144) ^ 0x3E4A2ADF) - 2093810632) ^ 0xD05116B3);
  *(v14 + 8) = v13;
  *(v14 + 16) = a11;
  *(v16 - 116) = v11 + 77970495 + v17;
  *(v16 - 144) = v17 + 1259;
  (*(v12 + 8 * (v15 ^ 0x82C)))(v16 - 144);
  JUMPOUT(0x25443FF04);
}

uint64_t sub_25443FF58(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  HIDWORD(v15) = a1 ^ (a3 + 106492617);
  LODWORD(v15) = a1 ^ v14;
  v16 = (a6 ^ 0x61A70B00) & (v6 ^ 0x6C55765B) ^ a6 & 0xF20D82A4;
  v17 = *(v10 + 4 * (a4 + v11));
  v18 = (v15 >> 27) + (((v7 ^ 0x3DE7D0C) - 64912652) ^ ((v7 ^ 0x98F2BE09) + 1728922103) ^ ((v7 ^ 0x57437FA) - 91502586)) + ((v16 ^ 0x9FFAFDFF) & (v8 & 0x27F6EA73 ^ 0x737F0E98 ^ (a6 ^ 0xB9AE1E8C) & (v8 ^ v12)) ^ (v16 | 0x752FEEEB)) + 922166343 + (((v17 ^ 0xC4A62156) + 995745450) ^ ((v17 ^ 0x8FCB5887) + 1882498937) ^ ((v17 ^ 0x69B2F791) - 1773336465));
  return (*(v9 + 8 * ((1047 * (a4 + 1 == v13 + 20)) ^ a3)))(v18 ^ ((v18 ^ 0xD5AD352D) + 829353406) ^ ((v18 ^ 0x5A4338C3) - 1098850220) ^ ((v18 ^ 0xFF2DD57F) + 468585968) ^ ((v18 ^ 0x6BFFFFFE) - 1891883153) ^ 0x8564D390);
}

uint64_t sub_254440314(uint64_t a1, int a2, __n128 a3)
{
  v8 = (v6 + 4 * v4);
  *v8 = a3;
  v8[1] = a3;
  return (*(v7 + 8 * (((a1 + v4 == v3) * a2) ^ v5)))();
}

uint64_t sub_2544403E4@<X0>(uint64_t a1@<X0>, int a2@<W5>, uint64_t a3@<X8>)
{
  v7 = v4 + 11 * (v5 ^ (a2 + 1139)) - 364;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((53 * (v7 == 0)) ^ (v3 + v5 + 958))))();
}

void sub_25444055C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) ^ (1785193651 * ((-2 - ((~a1 | 0x59E8E831) + (a1 | 0xA61717CE))) ^ 0x4A340411));
  v2 = *(&off_286663530 + v1 - 1744) - 8;
  v3 = (*a1 - 77 * ((-2 - ((~a1 | 0x31) + (a1 | 0xCE))) ^ 0x11));
  (*&v2[8 * (v1 ^ 0xE4A)])(*(&off_286663530 + (v1 ^ 0x789)) - 8, sub_25445A250);
  v4 = *(*(&off_286663530 + v1 - 1646) - 4);
  v6 = v1 - 210068311 * (((&v5 | 0xFF85511D) - &v5 + (&v5 & 0x7AAEE0)) ^ 0x6D536EB9) - 1082;
  v5 = v4;
  (*&v2[8 * (v1 ^ 0xE4D)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2544406C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = 210068311 * ((((v18 - 144) | 0x57D1837) + (~(v18 - 144) | 0xFA82E7C8)) ^ 0x97AB2792);
  *(v18 - 144) = v19 + 1053645359 * v17 + ((3 * (v16 ^ 0x624)) ^ 0x80FA07B9);
  *(v18 - 136) = v16 - v19 - 1215;
  *(v18 - 128) = a15;
  v20 = (*(v15 + 8 * (v16 + 780)))(v18 - 144);
  return (*(v15 + 8 * ((52 * (((((v16 ^ 0x624) + 244) ^ (*(v18 - 140) == -343619839)) & 1) == 0)) ^ v16)))(v20);
}

uint64_t sub_25444078C@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * (((v6 != 0) * v5) | v3)))();
}

uint64_t sub_254440A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  *(v44 - 112) = (v42 + 1) - v39 + ((-((~(v41 - 1340105759) + v37) ^ (v40 - (v41 - 1340105759))) | (~(v41 - 1340105759) + v37)) >> 63) - a37;
  *(v44 - 104) = -127650814 - v39 + v41;
  *(v44 - 124) = v43 - v39 + 34;
  *(v44 - 120) = v43 - v39 + 126;
  *(v44 - 144) = a36;
  *(v44 - 136) = v43 + v39;
  *(v44 - 128) = 1 - v39;
  v45 = (*(v38 + 8 * (v41 - 1340104064)))(v44 - 144);
  return (*(v38 + 8 * *(v44 - 132)))(v45);
}

void sub_254440E6C()
{
  LODWORD(STACK[0x204]) = 0;
  LODWORD(STACK[0x208]) = 0;
  STACK[0x240] = 742307843 * ((2 * ((v1 - 200) & 0x4224C4BBFB588900) - (v1 - 200) + 0x3DDB3B4404A776F9) ^ 0x8E47E62F1A85FBACLL);
  v2 = STACK[0x2C8];
  STACK[0x2C0] = ((((2 * (v1 - 200)) | 0xF3F3589B57002F82) - (v1 - 200) - 0x79F9AC4DAB8017C1) ^ 0x6DCDDA63B85CFBE1) * v0;
  STACK[0x2B8] = ((v1 - 200) ^ 0x1434762E13DCEC20) * v0;
  LODWORD(STACK[0x2B4]) = v2 ^ 0xF1A;
  STACK[0x2A8] = (v1 - 200) | 0xD136B1CBF38F3888;
  LODWORD(STACK[0x284]) = v2 + 943487081;
  LODWORD(STACK[0x280]) = v2 ^ 0x634;
  v3 = 1361651671 * (((~(v1 - 200) | 0xD317594E3965C452) + ((v1 - 200) | 0x2CE8A6B1C69A3BADLL)) ^ 0xFF45D58815B8CB20);
  STACK[0x238] = v3;
  STACK[0x230] = 5119 - v3;
  JUMPOUT(0x25444124CLL);
}

uint64_t sub_2544412C4()
{
  v0 = ((811 * (v4 ^ 0x8E)) ^ 0x65B9BBEC) + v3;
  v1 = v0 > 0xD6EE2E12;
  if (v0 < 0xD6EE2E12)
  {
    v1 = 1;
  }

  return (*(v5 + 8 * ((!v1 * ((v4 + 918) ^ 0x438)) ^ v4)))(1204, 1623, 689033709, 3605933586);
}

uint64_t sub_25444140C@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v7 = (v5 + a2);
  *v7 = v6;
  v7[1] = v6;
  return (*(v4 + 8 * (((49 * (((v3 - 19) | 1) ^ 0x110u) - 621 != ((((v3 - 19) | 1u) ^ 0xFFFFFFFFFFFFFEEDLL) & v2)) * a1) ^ ((v3 - 19) | 1))))();
}

void sub_254441468()
{
  v2 = (((v0 ^ 0xBC016B09) + 1140757751) ^ ((v0 ^ 0x96833516) + 1769786090) ^ ((v0 ^ 0xB4DAAAE0) + 1260737824)) - 1389735983 + (((LODWORD(STACK[0x29C]) ^ 0xA651F82A) + 1504577494) ^ ((LODWORD(STACK[0x29C]) ^ 0x16C62BDA) - 382086106) ^ (((19 * (v1 ^ 0x7C8) + 785327849) ^ LODWORD(STACK[0x29C])) - 785327887));
  LODWORD(STACK[0x29C]) = v2 ^ ((v2 ^ 0xDA3854F) - 2111561884) ^ ((v2 ^ 0xDEA24594) + 1361436601) ^ ((v2 ^ 0x58861AF7) - 687767332) ^ ((v2 ^ 0xFBFFBFFF) + 1954031060) ^ 0xEE20912C;
  JUMPOUT(0x2544415ACLL);
}

uint64_t sub_254441EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  v18 = v16 ^ v14;
  v19 = 1037613739 * ((&a10 & 0xC572F468 | ~(&a10 | 0xC572F468)) ^ 0xEB8F26E8);
  a10 = v19 - 1842001995;
  a13 = (v16 - 1346) ^ v19;
  a14 = 1001929919 - v19;
  a11 = v15;
  a12 = &a9;
  v20 = (*(v17 + 8 * (v16 + 940)))(&a10);
  return (*(v17 + 8 * (((*(v15 + 24) == 585076288) * (v18 - 1234)) ^ v16)))(v20);
}

uint64_t sub_254441F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, __int16 a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *a21, char *a22)
{
  a22 = &a14;
  a20 = a17;
  LODWORD(a19) = (v22 + 1462) ^ ((((&a19 | 0xF52E8B03) - &a19 + (&a19 & 0xAD174F8)) ^ 0xE1011698) * v26);
  (*(v25 + 8 * (v22 ^ 0x9FFu)))(&a19);
  HIDWORD(a19) = v23 - 143681137 * ((&a19 + 1379964591 - 2 * (&a19 & 0x524096AF)) ^ 0x33181D7F) - 814;
  a20 = a17;
  a21 = &a16;
  a22 = &a18;
  (*(v25 + 8 * (v23 + 406)))(&a19);
  LODWORD(a19) = (v23 - 419) ^ (((&a19 - 2062413471 - 2 * (&a19 & 0x85121161)) ^ 0x913D8CFA) * v26);
  a20 = a17;
  a22 = &a12;
  (*(v25 + 8 * (v23 ^ 0xEA6u)))(&a19);
  HIDWORD(a20) = (v23 - 1062) ^ (1388665877 * ((((&a19 | 0xD1F0AE10) ^ 0xFFFFFFFE) - (~&a19 | 0x2E0F51EF)) ^ 0xA3A23303));
  a19 = a17;
  v27 = (*(v25 + 8 * (v23 + 403)))(&a19);
  return (*(v25 + 8 * (((a20 == v24 + ((v23 - 352692264) & 0x1A1E8) - 416) * (((v23 - 2011) | 0x111) + 3770)) ^ v23)))(v27);
}

uint64_t sub_254442154(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = 1785193651 * (((a1 | 0xC645374) - a1 + (a1 & 0xF39BAC8B)) ^ 0x1FB8BF54);
  v3 = *(a1 + 16) - v2;
  v4 = *(a1 + 40);
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 52) ^ v2;
  v8 = 1037613739 * ((&v10 - 922434347 - 2 * (&v10 & 0xC904C4D5)) ^ 0x1806E9AA);
  v3 -= 1421512442;
  v12 = *(a1 + 24);
  v13 = v4;
  v10 = v7 + v8 - 315709066;
  v16 = v6;
  v14 = v8 ^ (v3 + 1633);
  v11 = v5;
  result = (*(*(&off_286663530 + v3) + v3 + 2324))(&v10);
  *(a1 + 48) = v15;
  return result;
}

void sub_254442458(_DWORD *a1)
{
  v1 = *a1 ^ (1037613739 * ((827773174 - (a1 | 0x3156D0F6) + (a1 | 0xCEA92F09)) ^ 0x1FAB0276));
  __asm { BRAA            X14, X17 }
}

uint64_t sub_2544427D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, int a15, unsigned int a16, char *a17, unsigned int a18)
{
  v21 = 1564307779 * (&a13 ^ 0x970DCC13);
  a13 = a11;
  a18 = -1326587410 - v21;
  a17 = &a12;
  a15 = v20 - v21 - 2013068633;
  a16 = 785679344 - v21;
  v22 = (*(v19 + 8 * (v20 + 342)))(&a13);
  return (*(v19 + 8 * (((a14 == v18) * (v20 - 1970)) ^ v20)))(v22);
}

uint64_t sub_254442870(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36, uint64_t a37, int a38)
{
  v45 = __ROR8__((((v44 >> 37) ^ 0xB25EF005AB75ED58) & ((v44 << 27) ^ 0xCC78E4037FFFFFFLL) | (v44 << 27) & 0x4DA10FFA50000000) ^ 0x5F129B732E669965, 27);
  v46 = v38 ^ a37;
  v47 = v45 ^ v41 ^ ((v39 ^ 0x1F2u) * a4) ^ 0xDF2FD76AC6737FFELL;
  v48 = v46 ^ v40;
  v49 = ((v45 ^ v43 ^ 0x8FAC09BD46B8859FLL) & (v45 ^ v41 ^ 0x2C01BDB81DFF5B92) ^ v47 & 0x83585061CA3F679ALL ^ 0x7CF7BFBF35F3D865) - (v45 ^ v43 ^ 0xFFDA330E570BC59ELL ^ v47);
  v50 = (v45 ^ v43 ^ 0x2741157E367EE82CLL) & (v46 ^ 0xF404AC7FACFD675);
  v51 = v46 & 0x2BB54CA2BAF90A29;
  v52 = v48 & 0x81991E843B4CB5C3 ^ (v48 ^ 0x6DDA2B25045D1B91) & (v46 ^ 0x7126ABBC3E7C9C49) ^ v45 ^ v43 ^ 0x306D32F4664299C4;
  v53 = v45 & 0xD704314D9CB62A29 ^ v48 ^ (v45 ^ 0x79B0DD242F90B494) & (v41 ^ 0x7D4AAE2E51263AD0);
  v54 = v52 ^ v46;
  v55 = v54 & 0xFFFFFFFFFFFFFFFELL;
  v56 = v50 ^ v51 ^ v47;
  v57 = (v48 ^ 0x9225D4DAFBA2E46ELL) & (v41 ^ 0xD1BF8B23F7743520);
  v58 = v48 & 0x840EEBBFC51BDA26 ^ 0x8004C09AC102C026 ^ v57;
  v59 = v56 ^ v52;
  v60 = v54 & 1;
  if ((v60 & v57) != 0)
  {
    v60 = -v60;
  }

  v61 = (v60 + v58) ^ v55;
  v62 = v53 ^ v41 ^ v49;
  v63 = v61 ^ 0xE23A92D8EEDBC9A1 ^ (8 * (v61 ^ 0xE23A92D8EEDBC9A1));
  *(&v64 + 1) = v61 ^ 0xE23A92D8EEDBC9A1;
  *&v64 = v61;
  v65 = (v64 >> 39) & 0x719DD405BFFFFFFFLL ^ v63 & 0xDEEFD83DB007F989 ^ (v63 ^ 0x211024C20DC00651) & ((v61 >> 61) ^ 0x211027C24FF80674) ^ (v63 & 0x92D72C8A467C9ECFLL ^ 0xEA523FA0216E4F9 ^ (v63 ^ 0x80C708004238100ELL) & ((v61 >> 61) ^ 0x92D72C8A467C9ECDLL)) & (((v61 ^ 0xE23A92D8EEDBC9A1) << 25) ^ 0xDEEDFB72537FFFFFLL);
  v66 = v53 ^ (v53 >> 1) ^ ((v53 >> 6) | (v53 << 63)) ^ ((v65 ^ 0x428D9009335882D1) + ((v53 << 58) ^ 0x4800000000000000) - 2 * ((v65 ^ 0x428D9009335882D1) & ((v53 << 58) ^ 0x4800000000000000)));
  v67 = v56 ^ 0x2C3E84AB766FFC48 ^ (v56 >> 7);
  v68 = (v62 >> 17) ^ (v62 >> 10) ^ v62 ^ 0xBB754D379FBF9CA7 ^ ((v62 ^ 0xBB754D379FBF9CA7) << 47) ^ ((v62 ^ 0xBB754D379FBF9CA7) << 54);
  *(&v64 + 1) = v56 ^ 0x2C3E84AB766FFC48;
  *&v64 = v56;
  v69 = ((v56 ^ 0x2C3E84AB766FFC48) << 57) ^ ((v56 ^ 0x2C3E84AB766FFC48) << 23) ^ __ROR8__((v64 >> 44) & 0xE0000000000FFFFFLL ^ 0xEC7FA769E7A481B4 ^ (((v67 >> 3) ^ 0x67AE04882CD55049) & ((v67 << 61) ^ 0xBFFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL | ((v67 >> 2) << 63)), 61);
  *(&v64 + 1) = v59 ^ 0xA80B140A9BC6EE21;
  *&v64 = v59;
  v70 = v59 ^ 0xA80B140A9BC6EE21 ^ __ROR8__(v59 ^ 0xA80B140A9BC6EE21, 19) ^ (v64 >> 28) ^ v69;
  v71 = v70 ^ 0x4450BB6432F4EBB4;
  v72 = v68 ^ v69 ^ 0x369D266F2226E234;
  v73 = (v68 ^ v69 ^ 0x9B550296467BE3C7) & (v70 ^ 0x4450BB6432F4EBB4);
  v74 = v70 & 0x5237DB069BA2FE0CLL;
  v75 = (v68 ^ 0x4CA051B7B821F6CLL) & (v66 ^ 0x458AEF0FF7B806FLL);
  v76 = v66 & 0x894E21F18B0AF5FCLL;
  v77 = (~(2 * v71) + v71) & (v65 ^ 0x428D9009335882D1);
  v78 = (v66 ^ 0x4A87CF6C42CD94A0) & (v65 ^ 0xBD726FF6CCA77D2ELL) ^ v65 & 0xB1209E634249EB30 ^ v71;
  v79 = (v68 ^ v69 ^ 0x25820000A204518) & 0xA6FDB92C5E715598 ^ (v68 ^ 0xD4866239510640F7) & v72 ^ v66;
  v80 = ((v78 & 0xE0096EE0D8B2C64DLL ^ 0x82628002A81E0952) & (v78 & 0x1FF6911F274D39B2 ^ 0xE25FEEEDF9FFD6FFLL) | v78 & 0x1D94111D074130A0) ^ 0x814AB724251943BCLL;
  if ((v77 & 0x100000000 & v72) != 0)
  {
    v81 = -(v77 & 0x100000000);
  }

  else
  {
    v81 = v77 & 0x100000000;
  }

  v82 = (v81 + v72) ^ v77 & 0xFFFFFFFEFFFFFFFFLL;
  v83 = v65 ^ v76 ^ v75 ^ 0xA7AA48E9920186A5 ^ v80;
  v84 = v82 - ((2 * v82) & 0x6450728D9A0C559CLL);
  v85 = (v79 ^ 0xB02726BCA1DBBAA2) >> 1;
  v86 = v82 ^ 0x9A383CF881807545;
  v87 = (v84 - 0x4DD7C6B932F9D532) ^ v80;
  v88 = v87 ^ 0xAC7C0FF4012565E3;
  v89 = v83 ^ __ROR8__(v83, 61) ^ (v83 << 25) ^ (v83 >> 39);
  v90 = v79 ^ ((v68 ^ v74 ^ 0xCD94BFEEE2280094 ^ v73) - ((2 * (v68 ^ v74 ^ 0xCD94BFEEE2280094 ^ v73)) & 0xABB93ED05F419452) - 0x2A236097D05F35D7) ^ 0x8316BD0FA6C6007;
  v91 = (v87 & 0x8000) == 0;
  v92 = v90 ^ __ROR8__(v90, 10);
  v93 = 0x8000;
  if (!v91)
  {
    v93 = -32768;
  }

  v94 = v92 ^ (v90 << 47) ^ (v90 >> 17);
  *(&v95 + 1) = v79 ^ 0xB02726BCA1DBBAA2;
  *&v95 = v79;
  v96 = v86 ^ (v86 >> 7) ^ (v86 << (v85 & 0x17) << (v85 & 0x17 ^ 0x17)) ^ ((v86 >> 41) | (v86 << 57));
  v97 = v85 ^ (v95 >> 6) ^ ((v79 ^ 0xB02726BCA1DBBAA2) & 0x9B6535C14F352826 ^ (v79 << 63) | (v79 ^ 0xB02726BCA1DBBAA2) & 0x649ACA3EB0CAD7D9) ^ v89;
  v98 = v88 ^ (v88 >> 19) ^ v96 ^ ((v93 + v88) >> 28) ^ (((v93 + v88) ^ 0x8000) << 36) ^ (((v93 + v88) ^ 0x8000) << 45);
  v99 = v98 ^ (v97 ^ 0x2C09C9AF2876EEALL) & ~v89;
  v100 = v89 & ~v98 ^ v96 ^ v94;
  v101 = v99 + v89 - 2 * (v98 & v89);
  v102 = v99 ^ 0x6E04C15915AB860ALL ^ v100;
  v103 = v102 >> 19;
  *(&v95 + 1) = (v102 >> 19) & v102 & 0x1A36E0206AEDLL ^ (v102 >> 28) ^ (((v102 >> 19) | v102) & 0xD8807A36E0206AEDLL | (v102 >> 19) & 0x5C91FDF9512 ^ v102 & 0x277F85C91FDF9512);
  *&v95 = (v102 << 36) ^ (v102 << 45) ^ *(&v95 + 1);
  v104 = v96 & ~v94 ^ v97 ^ 0x2C09C9AF2876EEALL;
  v105 = v101 ^ (v97 ^ 0xFD3F63650D789115) & v94;
  v106 = v104 ^ v94 ^ v98 & (((v96 ^ v94) - ((2 * (v96 ^ v94)) & 0x4BCF7563A6B4D67ELL) - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0);
  v107 = v100 ^ 0x26974B18501E2B14;
  v108 = v100 ^ 0x26974B18501E2B14 ^ ((v100 ^ 0x26974B18501E2B14uLL) >> 41);
  v109 = (v105 >> 39) ^ (v105 >> 61) ^ (8 * (v105 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v105 ^ 0x3278F838FE43D2BCLL) - (((v105 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v105 ^ 0x3278F838FE43D2BCLL))));
  v110 = v109 ^ 0x64F1F1;
  v111 = v108 ^ (v107 >> 7) ^ (v107 << 23) ^ (v107 << 57);
  v112 = v104 ^ 0x7955EAEC4D48B80CLL ^ (v104 << 63) ^ __ROR8__(v104 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v104 ^ 0x7955EAEC4D48B80CuLL) >> ((v67 & 8) == 0) >> ((v67 & 8) != 0));
  v113 = v109 ^ 0x64F1F1 ^ v112;
  v114 = (v109 ^ 0xFFFFFFFFFF9B0E0ELL) & v112;
  v115 = ((v106 ^ 0x7370AC685030CB36uLL) >> 17) ^ __ROR8__(v106 ^ 0x7370AC685030CB36, 10) ^ __ROR8__(__ROR8__(v106 ^ 0x7370AC685030CB36, 14) & 0xFFFC000000000007 ^ __ROR8__(v106 ^ 0x7370AC685030CB36, 61), 3);
  v116 = v115 ^ v111;
  *&v95 = __ROR8__(__ROR8__(v111, 7) ^ __ROR8__(__ROR8__(v95 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v117 = v111 & ~v115 ^ v113;
  v118 = v95 ^ 0xBBDB0FB7A00B9120 ^ v114;
  v119 = v109 ^ (((v113 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v113 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v115 ^ 0x425764BB58132BD4 ^ v118;
  v120 = (v95 ^ 0x4424F0485FF46EDFLL) & v110 ^ v116;
  v121 = (v120 ^ -v120 ^ (0x70C7A8D3F3643DFDLL - (v120 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v122 = v118 ^ 0x97F6A7E5F6E8F58ALL ^ v120;
  v123 = v117 ^ 0xD3DA1E3360BF843ALL ^ ((v117 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v117 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v124 = v115 ^ 0x44C9D571A5C4A51CLL ^ v117 ^ (v95 ^ 0xBBDB0FB7A00B9120) & ~v116;
  v126 = __ROR8__(__ROR8__(v119, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v119 ^ (8 * v119) ^ ((v119 >> 61) | (v119 << 25)), 23) ^ 0x735302FC48340548, 41);
  v127 = (v121 >> 7) ^ (v121 >> 41) ^ (v121 << 23) ^ (v121 << 57);
  v128 = v127 ^ v121;
  v129 = v122 ^ (v122 >> 28) ^ (v122 >> 19) ^ (v122 << 36) ^ (v122 << 45) ^ v127 ^ v121;
  v130 = v123 & 0xFFFFFFF7FFFFFFFFLL ^ (v117 << 63) ^ (v123 & 0x800000000 | ((v117 ^ 0xD3DA1E3360BF843ALL) << (v103 & 0x12) << (v103 & 0x12 ^ 0x3A))) ^ v126;
  if (v127 == v121)
  {
    v131 = 0;
  }

  else
  {
    v131 = v124 << 47;
  }

  v132 = v126 ^ 0x7E241A02A439A981;
  v125 = (v124 ^ (v124 >> 10) | (v124 << 54)) ^ (v124 << 54) & v124;
  v133 = (v131 ^ v125 | (v124 << 47)) ^ (v125 & (v124 << 47) & 0xFFFF800000000000 | (v124 >> 17));
  v134 = v130 ^ 0x7E241A02A439A981;
  v135 = v133 ^ v128 ^ v132 & ~v129;
  v136 = (~(2 * v132) + v132) & (v130 ^ 0x7E241A02A439A981) ^ v129;
  v137 = v135 ^ v136;
  v138 = v135 ^ v136 ^ 0x93C23431B76D41FLL;
  *(&v139 + 1) = v138;
  *&v139 = v135 ^ v136;
  v140 = v132 ^ 0x6005BE354A5BB0B2 ^ v136 ^ v133 & (v130 ^ 0x81DBE5FD5BC6567ELL);
  v141 = v128 & ~v133 ^ v134;
  v142 = v129 & ~(v133 ^ v128) ^ v133 ^ v141;
  v143 = (v140 << (v128 & 3) << (v128 & 3 ^ 3)) ^ v140 ^ ((v140 >> 39) ^ (v140 >> 61) | (v140 << 25));
  v144 = (v139 >> 62) ^ (4 * (v138 >> 28)) ^ 0x406FF36C296024B3;
  *(&v139 + 1) = v138;
  *&v139 = v137;
  v145 = ((v139 >> 19) ^ __ROR8__(v144, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v146 = v141 ^ 0x6DC4FB0BD4FFFF44 ^ ((v141 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v141 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v141 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v141 << 63));
  v147 = v143 ^ (__ROR8__(v142 ^ 0xF374A001D380BDC2, 17) ^ ((v142 ^ 0xF374A001D380BDC2) >> 10) ^ (((v142 ^ 0xF374A001D380BDC2) << 54) | (v142 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v142 ^ 0xF374A001D380BDC2) << 54) & (v142 ^ 0xF374A001D380BDC2) | v142 & 0x20)) & ~(v143 ^ v146) ^ 0x62030E578F798D5ALL ^ v135 ^ 0x2DB5B6AF87F64351 ^ ((v135 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v135 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v135 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v135 ^ 0x2DB5B6AF87F64351) >> 41) ^ (v138 << 36) ^ (((2 * v145) & 0xFFFFFFFF18D20D4ALL) + (v145 ^ 0xFFFFFFFF8C6906A5)) ^ v146 & ~v143;
  return (*(v42 + 8 * (v39 | (2 * (a36 <= 2 * (a38 & 1) + (a38 ^ 1u))))))(a1, (8 * v147) ^ (v147 >> 39) ^ ((v147 >> 61) | v147) ^ ((v147 >> 61) & v147 | (v147 << 25)));
}

uint64_t sub_254443784@<X0>(int a1@<W3>, int a2@<W8>)
{
  v5 = *(v3 + a2 * a1 + 36);
  LODWORD(STACK[0x3C8]) = v5;
  v6 = v5 - 946923030;
  v8 = v6 > -1408660042 && v6 < SLODWORD(STACK[0x278]);
  return (*(v4 + 8 * ((v8 * ((v2 + 1436) ^ 0x7D9)) ^ v2)))();
}

void cp2g1b9ro(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_254443E00(uint64_t a1, int a2)
{
  v14.val[1].i64[0] = (v6 + 13) & 0xF;
  v14.val[1].i64[1] = (v6 + 12) & 0xF;
  v14.val[2].i64[0] = (v6 + 11) & 0xF;
  v14.val[2].i64[1] = (v6 + 10) & 0xF;
  v14.val[3].i64[0] = (v6 + 9) & 0xF;
  v14.val[3].i64[1] = v7 & 0xF;
  v15.val[0].i64[0] = (v6 + 7) & 0xF;
  v15.val[0].i64[1] = (v6 + 6) & 0xF;
  v15.val[1].i64[0] = (v6 + 5) & 0xF;
  v15.val[1].i64[1] = (v6 + 4) & 0xF;
  v15.val[2].i64[0] = (v6 + 3) & 0xF;
  v15.val[2].i64[1] = (v6 + 2) & 0xF;
  v15.val[3].i64[0] = (v6 + 1) & 0xF;
  v15.val[3].i64[1] = v6 & 0xF;
  v9 = *(v8 - 192);
  v10 = vqtbl4q_s8(v15, xmmword_254495210).u64[0];
  v11.i64[0] = 0x7575757575757575;
  v11.i64[1] = 0x7575757575757575;
  v12 = ((a2 + 1062125195) & 0xC0B147FF ^ 0xFFFFFFFFFFFFF869) + v6;
  v14.val[0].i64[0] = v12 & 0xF;
  v14.val[0].i64[1] = (v6 + 14) & 0xF;
  v15.val[3].i64[0] = vqtbl4q_s8(v14, xmmword_254495210).u64[0];
  v15.val[3].i64[1] = v10;
  v15.val[0] = vrev64q_s8(vmulq_s8(v15.val[3], v11));
  *(*(v8 - 184) - 15 + v12) = veorq_s8(veorq_s8(veorq_s8(*(v4 + v14.val[0].i64[0] - 15), *(v2 - 15 + v12)), veorq_s8(*(v5 + v14.val[0].i64[0] - 15), *(v3 + v14.val[0].i64[0] - 15))), vextq_s8(v15.val[0], v15.val[0], 8uLL));
  return (*(v9 + 8 * ((3970 * ((v6 & 0x10) == 16)) ^ (a2 + 1713))))();
}

void sub_254443FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v30 - 120) = (14 * (v28 ^ 0x6E1) + 510) ^ (((78452377 - ((v30 - 144) | 0x4AD1699) + ((v30 - 144) | 0xFB52E966)) ^ 0xE88E0546) * v29);
  *(v30 - 112) = &a24;
  *(v30 - 104) = a13;
  *(v30 - 136) = &a28;
  *(v30 - 128) = a14;
  *(v30 - 144) = &a24;
  JUMPOUT(0x254428A98);
}

uint64_t sub_254444074@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>)
{
  v7 = *(a1 + v4 - 1 - 31);
  v8 = a2 + v4 - 1;
  *(v8 - 15) = vaddq_s8(vsubq_s8(*(a1 + v4 - 1 - 15), vandq_s8(vaddq_s8(*(a1 + v4 - 1 - 15), *(a1 + v4 - 1 - 15)), a3)), a4);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), a3)), a4);
  return (*(v6 + 8 * ((126 * ((((v5 - 499) | 0x240) ^ 0x250) == (v4 & 0xFFFFFFE0))) ^ v5)))();
}

uint64_t sub_25444425C(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (1082434553 * ((a1 - 587035644 - 2 * (a1 & 0xDD028C04)) ^ 0x46457A8E));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v6 = v1 + 875955015 - 1361651671 * ((2 * (&v5 & 0x44D668E8) - &v5 + 992581395) ^ 0xE80B679F);
  v7 = v2;
  v5 = v3;
  return (*(*(&off_286663530 + (v1 ^ 0xCBCA001F)) + v1 + 875956526))(&v5);
}

void sub_254444368(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v16 = (((((v15 - 144) | 0xFD070950) ^ 0xFFFFFFFE) - (~(v15 - 144) | 0x2F8F6AF)) ^ 0x99BF0025) * v10;
  *(v13 + 8) = v14;
  *(v13 + 16) = &a10;
  *(v15 - 140) = v16 + v11 + (a1 ^ 0xD33EF307);
  *(v15 - 120) = (a1 - 203) ^ v16;
  (*(v12 + 8 * (a1 + 1542)))(v15 - 144);
  JUMPOUT(0x2544443E8);
}

uint64_t sub_2544445E0(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  a6.i64[0] = *(v15 + 4);
  a6.i32[2] = *(v15 + 12);
  v6 = vextq_s8(a1, a6, 0xCuLL);
  v7 = a6;
  v7.i32[3] = *(v15 + 16);
  v8.i32[0] = *(v13 + 4 * (*(v15 + 4) & 1));
  v8.i32[1] = *(v13 + 4 * (*(v15 + 8) & 1));
  v8.i32[2] = *(v13 + 4 * (a6.i32[2] & v14));
  v8.i32[3] = *(v13 + 4 * (v7.i8[12] & 1));
  v9 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v7, a3), vandq_s8(v6, a2)), 1uLL), *(v15 - 908));
  *v15 = veorq_s8(vaddq_s32(vsubq_s32(v9, vandq_s8(vaddq_s32(v9, v9), a4)), a5), v8);
  return (*(v16 + 8 * (v11 ^ (8 * (v12 == 4)))))();
}

void sub_254445608(_DWORD *a1)
{
  v1 = *a1 ^ (210068311 * ((a1 & 0x333F3DED | ~(a1 | 0x333F3DED)) ^ 0x5E16FDB6));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_2544456D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = -542396526 - 1388665877 * (&a13 ^ 0x8DAD62EC);
  v16 = (*(v15 + 19416))(&a13);
  return (*(v15 + 8 * ((a14 != ((v14 - 1297) ^ 0x76F)) | (16 * (a14 != ((v14 - 1297) ^ 0x76F))) | 0x26Au)))(v16);
}

uint64_t sub_2544457E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, uint64_t a18)
{
  a15 = v21 + 843532609 * ((430221394 - (&a15 | 0x19A4A852) + (&a15 | 0xE65B57AD)) ^ 0xBA160328) + 836;
  a18 = v18;
  a16 = a11;
  v22 = (*(v20 + 8 * (v21 + 1674)))(&a15);
  return (*(v20 + 8 * (((a17 == (((v21 - 807) | 0x2D1) ^ (v19 - 417))) * (((v21 - 576718139) & 0x5D1F562D) - 1562331237)) ^ v21)))(v22);
}

uint64_t sub_2544458A8@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  v27 = v20 < v22;
  *(&a20 + v21) = *(v24 + a1) - ((((v26 + 81) & 0xF5) - 5) & (2 * *(v24 + a1))) - 96;
  v28 = a1 + 1;
  if (v27 == v28 > v23)
  {
    v27 = v28 + v22 < v20;
  }

  return (*(v25 + 8 * ((2038 * !v27) ^ v26)))();
}

uint64_t sub_254445B68@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  v23 = &a20 + v20 + 9;
  *(v23 - 1) = 0xA0A0A0A0A0A0A0A0;
  *v23 = 0xA0A0A0A0A0A0A0A0;
  return (*(v22 + 8 * ((46 * (((v21 - 8) ^ ((((v21 - 34) ^ 0x5B7) & a1) == 16)) & 1)) ^ (v21 - 34))))();
}

uint64_t sub_254445BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, __int16 a24, char a25, int a26, char a27, __int16 a28, char a29)
{
  v34 = 1082434553 * ((2 * ((v33 - 160) & 0x58893FE8) - (v33 - 160) + 662093846) ^ 0xBC31369C);
  STACK[0x300] = v29;
  STACK[0x2F0] = &a29;
  STACK[0x2E0] = &a23;
  *(v33 - 136) = v34 + v32 + 966;
  *(v33 - 148) = v34 + a7 + 1166103710;
  STACK[0x2D0] = &a25;
  STACK[0x2F8] = &a27;
  v35 = (*(v30 + 8 * (v32 + 1638)))(v33 - 160);
  return (*(v30 + 8 * (((*(v33 - 152) == v31 + (v32 ^ 0x7A5) - 1209) * (((v32 - 380) | 0x42) ^ 0x5B0)) ^ v32)))(v35);
}

uint64_t sub_254445CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W8>)
{
  if ((a7 - 2008440815) <= 0x10 && ((1 << (a7 + 17)) & 0x14103) != 0)
  {
    return (*(v7 + 8 * ((a6 - 355752386) ^ (2 * ((((-504359268 - a5) & 0x8DB8C3B ^ 0x403) & *(v8 + 48 * v9 + 40)) == 0)))))(a1, a2, a3, a4);
  }

  else
  {
    return sub_254445D18(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_254445E0C@<X0>(uint64_t a1@<X2>, int a2@<W3>, int a3@<W5>, int a4@<W8>, int8x16_t a5@<Q1>, int8x16_t a6@<Q3>)
{
  v10 = (v8 + (v7 + a4));
  v11 = *v10;
  v12 = v10[1];
  v13 = (a1 + v7);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a6)), a5);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a6)), a5);
  return (*(v9 + 8 * (((v7 == 32) * a2) ^ (a3 + v6 + 576))))();
}

void sub_254445F70()
{
  v4 = v1 + 163;
  v5 = (v1 + 1124419620) & 0xBCFAB7DB;
  *(v3 - 116) = v5;
  v6 = v0[5] ^ 0xE2;
  v7 = *(&off_286663530 + ((v1 + 163) ^ 0x139)) - 12;
  *(v3 - 148) = v2;
  v8 = v7[v6];
  v9 = *(&off_286663530 + (v4 ^ 0x1EA));
  v10 = *(v9 + (v0[15] ^ 0x92));
  v11 = (v5 ^ (v7[v0[13] ^ 0xB9] << 16) ^ 0x3385FC62) & (v10 ^ 0x33FFFCA3) | v10 & 0x86;
  v12 = *(v9 + (((v0[7] & 0xC0 ^ 0xBC5822885828F8E5) & (v0[7] & 0x3F ^ 0xBE5D2BA978F9FBDDLL) | v0[7] & 0x1A) ^ 0xBC5822885828F876));
  v13 = *(&off_286663530 + (v4 ^ 0x185)) - 8;
  v14 = (v12 ^ 0xFFFFFE0F) & ((v8 << 16) ^ 0xC49BAF2) | v12 & 0xD;
  v15 = ((((-87 * v13[v0[4] ^ 0x57] + 40) ^ 0xA8) << 24) ^ 0xCBD4F527) & (v14 ^ 0xF3054F84);
  v16 = v14 & 0x42B00D8;
  v17 = -87 * v13[v0[12] ^ 0x68] + 40;
  v18 = v13[v0[8] ^ 0xB9];
  v19 = *(&off_286663530 + (v4 ^ 0x115)) - 8;
  v20 = v19[v0[14] ^ 0xD6] + 68;
  v21 = ((v19[v0[6] ^ 0x87] + 68) ^ 0x30) << 8;
  v22 = (v21 | 0xC4391A4) ^ (v16 ^ 0x109E6453 ^ v15) & ~v21;
  v23 = (((v17 << 24) ^ 0x2CC95ACB) & ~((v20 ^ 0x27) << 8) & 0x3DC92C80 | ((v20 ^ 0x27) << 8) & 0x2400) ^ 0xE0A81C61 ^ ((((v17 << 24) ^ 0x2CC95ACB) & ~((v20 ^ 0x27) << 8) | ((v20 ^ 0x27) << 8) & 0xA500) ^ 0xE3368134) & (v11 ^ 0xF15B2FB4);
  v24 = ((*(v9 + (v0[3] ^ 0x29)) ^ 1) & 0xFFFF00FF | ((v7[v0[1] ^ 8] ^ 0x10) << 16) | (((-87 * v13[*v0 ^ 0xE1] + 40) ^ 0xDA) << 24) | (((v19[v0[2] ^ 0x8FLL] + 68) ^ 0xD8) << 8)) ^ 0x1B;
  v25 = (((-63 * v18 + 67 * (-72 - 8 * v18)) ^ 0xBC) << 24) | ((v7[v0[9] ^ 0x3BLL] ^ 0xE1) << 16) | (*(v9 + (v0[11] ^ 0x62)) ^ 0x42) & 0xFFFF00FF | (((v19[v0[10] ^ 0xB7] + 68) ^ 0xE7) << 8);
  v26 = *(&off_286663530 + v4 - 307) - 4;
  v27 = *(&off_286663530 + v4 - 381) - 8;
  v28 = *&v26[4 * (BYTE2(v23) ^ 0xBA)] ^ *&v27[4 * (v20 ^ 0x7E)] ^ 0xA91348FB;
  v29 = *(&off_286663530 + (v4 ^ 0x1DB)) - 8;
  v30 = (v28 - ((2 * v28) & 0x3E8BF584) + 524679874) ^ *&v29[4 * (v17 ^ 0x88)];
  v31 = *(&off_286663530 + (v4 ^ 0x1FA)) - 12;
  v32 = *&v31[4 * (v10 ^ 0x9F)];
  *(v3 - 208) = v24;
  v33 = v32 ^ v24 ^ (v30 - ((2 * v30) & 0xAFA1936) - 2055402341);
  *(v3 - 196) = v22;
  v34 = v33 ^ v22;
  v35 = v33;
  *(v3 - 200) = v25;
  v36 = v33 ^ v22 ^ v25;
  v37 = v34;
  v38 = *&v31[4 * ((v36 ^ v11 ^ 0x55) ^ 0x35)] ^ 0x3542F04E;
  v39 = v36 ^ v23 ^ 0xF83672DE;
  *(v3 - 156) = BYTE1(v39);
  v40 = v38 ^ *&v27[4 * (BYTE1(v39) ^ 0x9E)];
  v41 = (v40 - ((2 * v40) & 0x3E8BF584) + 524679874) ^ *&v29[4 * (HIBYTE(v39) ^ 0x86)];
  v42 = v35 ^ *&v26[4 * (BYTE2(v39) ^ 0xBA)] ^ (v41 - ((2 * v41) & 0x3259685C) + 422360110);
  v43 = v42 ^ v37 ^ 0xA25B684D;
  v44 = v42;
  *(v3 - 124) = v43;
  *(v3 - 204) = v23;
  v45 = v43 ^ 0xF73EC34E ^ v23;
  v46 = v45 ^ 0x7E4FB786;
  v47 = (v45 ^ 0x7E4FB786) >> 24;
  *(v3 - 232) = v47;
  v122 = ((v45 ^ 0x7E4FB786) >> 16);
  v48 = *&v29[4 * (v47 ^ 0x86)] ^ *&v26[4 * (v122 ^ 0xBA)];
  v124 = ((v45 ^ 0xB786) >> 8);
  v49 = ((v48 ^ 0x6694EEC) - ((2 * (v48 ^ 0x6694EEC)) & 0x607FF9AA) - 1337983787) ^ *&v27[4 * (v124 ^ 0x9E)];
  *(v3 - 152) = v45;
  v50 = v44 ^ *&v31[4 * (v45 ^ 0x6D)] ^ (v49 - ((2 * v49) & 0xAFA1936) - 2055402341);
  *(v3 - 128) = v50;
  v51 = v36 ^ 0xF83672DE;
  v50 ^= 0xFEB4AEEu;
  v52 = v50 ^ v36 ^ 0xF83672DE;
  v53 = v50;
  *(v3 - 168) = v52;
  v54 = v52 ^ v46;
  v55 = ((v52 ^ v46) >> 16);
  *(v3 - 224) = v55;
  v56 = *&v26[4 * (v55 ^ 0xBA)];
  *(v3 - 164) = BYTE1(v54);
  v57 = v56 ^ *&v27[4 * (BYTE1(v54) ^ 0x9E)] ^ 0xA91348FB;
  *(v3 - 172) = HIBYTE(v54);
  v58 = (v57 - ((2 * v57) & 0x3E8BF584) + 524679874) ^ *&v29[4 * (HIBYTE(v54) ^ 0x86)];
  *(v3 - 160) = v54;
  v59 = v53 ^ *&v31[4 * (v54 ^ 0xEB)];
  *(v3 - 248) = v53;
  v60 = v59 ^ (v58 - ((2 * v58) & 0xAFA1936) - 2055402341);
  v119 = v43 ^ 0x4E ^ v51;
  v61 = v60 ^ v43 ^ 0xF73EC34E ^ v51;
  v62 = v60;
  *(v3 - 132) = v61;
  v63 = v61 ^ 0x598844C8;
  v64 = v61 ^ 0x598844C8 ^ v54;
  v65 = v63;
  v116 = v63;
  v66 = *&v31[4 * (v64 ^ 0x83)] ^ *&v29[4 * (((v64 ^ 0xCD2CB9A0) >> 24) ^ 0x86)] ^ 0x9A38F659;
  v67 = (v66 - ((2 * v66) & 0x3259685C) + 422360110) ^ *&v26[4 * (((v64 ^ 0xCD5DCD68) >> 16) ^ 0xBA)];
  v68 = (v67 - ((2 * v67) & 0x607FF9AA) - 1337983787) ^ *&v27[4 * (((v64 ^ 0xCD68) >> 8) ^ 0x9E)];
  *(v3 - 240) = v53 ^ v43 ^ 0xF73EC34E;
  v69 = v53 ^ v43 ^ 0xF73EC34E ^ 0x7E4FB786;
  *(v3 - 136) = v69;
  v70 = v68 ^ v69;
  *(v3 - 256) = v70;
  v70 ^= 0xF39A3E26;
  BYTE1(v37) = BYTE1(v70) ^ BYTE1(v54);
  v71 = v70;
  v72 = *&v29[4 * (((v70 ^ v54) >> (v62 & 0x18) >> (v62 & 0x18 ^ 0x18)) ^ 0x86)];
  v73 = ((v70 ^ v54) >> 16);
  *(v3 - 252) = v73;
  v74 = v72 ^ *&v26[4 * (v73 ^ 0xBA)] ^ 0x6694EEC;
  v75 = (v74 - ((2 * v74) & 0x607FF9AA) - 1337983787) ^ *&v27[4 * (BYTE1(v37) ^ 0x9E)];
  v76 = v68 ^ v62 ^ *&v31[4 * ((v71 ^ v65 ^ v64 ^ 0x68) ^ 0x83)] ^ (v75 - ((2 * v75) & 0xAFA1936) - 2055402341);
  *(v3 - 140) = v76;
  *(v3 - 212) = v76 ^ 0x53DB0D92;
  v115 = v76 ^ 0x53DB0D92 ^ v71;
  v77 = v115 ^ 0xF73EC34E ^ v64 ^ 0xCD5DCD68 ^ 0xBF7FF0FA;
  v78 = v115 ^ 0x4E ^ v64 ^ 0x68;
  *(v3 - 176) = v78;
  v79 = *&v26[4 * (BYTE2(v77) ^ 0xBA)] ^ *&v31[4 * (v78 ^ 0x11)] ^ 0x9C51B8B5;
  LODWORD(v10) = (v79 - ((2 * v79) & 0x3E8BF584) + 524679874) ^ *&v29[4 * (HIBYTE(v77) ^ 0x86)];
  LODWORD(v9) = v76 ^ 0x53DB0D92 ^ *&v27[4 * (BYTE1(v77) ^ 0x9E)] ^ (v10 - ((2 * v10) & 0x607FF9AA) - 1337983787);
  *(v3 - 144) = v9;
  v114 = v115 ^ 0xF73EC34E ^ v71 ^ v65 ^ 0xCD5DCD68;
  v121 = v9 ^ 0x85DB0D92 ^ v115 ^ 0x484133B4 ^ v114;
  v80 = v121 ^ 0xBDE5CEDC ^ v77;
  v81 = *&v29[4 * (((v80 ^ 0x29A3E26) >> 24) ^ 0x86)] ^ *&v27[4 * (((v80 ^ 0x3E26) >> 8) ^ 0x9E)];
  v82 = ((v81 ^ 0xAF7A0617) - ((2 * (v81 ^ 0xAF7A0617)) & 0x3259685C) + 422360110) ^ *&v26[4 * (((v80 ^ 0x29A3E26) >> 16) ^ 0xBA)];
  v117 = v82 - ((2 * v82) & 0xAFA1936) - 2055402341;
  v118 = v9 ^ 0x85DB0D92 ^ *&v31[4 * (v121 ^ 0xDC ^ v77 ^ 0xCD)];
  *(v3 - 120) = 0;
  v83 = *(&off_286663530 + (v4 ^ 0x111));
  v84 = *(&off_286663530 + v4 - 402) - 8;
  v85 = *(&off_286663530 + (v4 ^ 0x1D9)) - 4;
  v86 = *(&off_286663530 + (v4 ^ 0x1A1)) - 4;
  v112 = *(v3 - 132) ^ 0xAF58D76C;
  v87 = (BYTE2(v112) ^ 0xFD84E2EB) - 1490932440 + *(v83 + 4 * (BYTE2(v112) ^ 0x7Bu));
  v88 = (v87 - ((2 * v87) & 0x200A7942) - 1878704991) ^ *&v85[4 * (v116 ^ 0xD4)];
  v113 = v88 - ((2 * v88) & 0x748B6818);
  LODWORD(v10) = (v122 ^ 0xFD84E219) - 1490932440 + *(v83 + 4 * (v122 ^ 0x89u));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x748B6818) - 1169837044) ^ *&v86[4 * (v124 ^ 0x93)];
  v123 = v10 - 1878704990 + (~(2 * v10) | 0xDFF586BD);
  v89 = *&v84[4 * ((v118 ^ ~v117) >> 24)];
  v90 = (-618635527 - 1244175227 * v89 - 730693536 * v89 - 2 * ((-618635527 - 1244175227 * v89 - 730693536 * v89) & 0x3A45B40D ^ (-618635527 - 1244175227 * v89) & 1) - 1169837044) ^ *&v86[4 * ((v118 ^ v117 ^ 0xA6D4) >> 8)];
  v111 = v90 - ((2 * v90) & 0x200A7942);
  v120 = (((v118 ^ v117) >> 16) ^ 0xFD84E202) - 1490932440 + *(v83 + 4 * (((v118 ^ v117) >> 16) ^ 0x92u));
  v91 = *(v3 - 232) ^ 0x32;
  LODWORD(v10) = (BYTE2(v71) ^ 0xFD84E2B1) - 1490932440 + *(v83 + 4 * (BYTE2(v71) ^ 0x21u));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x748B6818) - 1169837044) ^ *&v86[4 * (BYTE1(*(v3 - 256)) ^ 0x56)] ^ (-618635527 - 1974868763 * *&v84[4 * (HIBYTE(*(v3 - 256)) ^ 0x6D)]);
  *(v3 - 232) = v10 - ((2 * v10) & 0x200A7942);
  LODWORD(v10) = BYTE2(*(v3 - 136));
  LODWORD(v10) = (v10 ^ 0xFD84E2B8) - 1490932440 + *(v83 + 4 * (v10 ^ 0x28));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x200A7942) - 1878704991) ^ *&v85[4 * (*(v3 - 240) ^ 0xCE)];
  v92 = *(v3 - 124);
  v93 = *&v84[4 * v91];
  v94 = *(v3 - 168);
  *(v3 - 172) = -618635527 - 1974868763 * *&v84[4 * (HIBYTE(v92) ^ 0xE6)];
  *(v3 - 164) = *&v86[4 * (BYTE1(v114) ^ 0x50)];
  *(v3 - 156) = *&v86[4 * BYTE1(v112)];
  LODWORD(v31) = *(v83 + 4 * (BYTE2(v94) ^ 0xF4u));
  *(v3 - 168) = v113 - 1169837044;
  *(v3 - 176) = v10 - ((2 * v10) & 0x748B6818) - 1169837044;
  v95 = *&v85[4 * (*(v3 - 152) ^ 0xC9)];
  *(v3 - 212) = *&v85[4 * (v92 ^ 0x7D)];
  *(v3 - 152) = *&v85[4 * (v119 ^ 0x6A)];
  v96 = *&v85[4 * ((v118 ^ v117) ^ 0x1C)];
  *(v3 - 144) = (BYTE2(v94) ^ 0xFD84E264) - 1490932440 + v31;
  *(v3 - 160) = *&v85[4 * (*(v3 - 160) ^ 0xF2)];
  LODWORD(v86) = v95 ^ (-618635527 - 1974868763 * v93) ^ 0xADE18B96 ^ v123;
  v97 = *(&off_286663530 + (v4 ^ 0x121)) - 4;
  v98 = *(&off_286663530 + v4 - 397) - 12;
  v99 = *(&off_286663530 + v4 - 389) - 4;
  v100 = (((v98[*(v3 - 111) ^ 0xD5] + 37) ^ 0xED) << 16) | ((v99[*(v3 - 112) ^ 1] ^ 0x90) << 24);
  LODWORD(v26) = ((v97[*(v3 - 102) ^ 0x49] ^ 0x44) << 8) & 0xFF00FFFF | (((v98[*(v3 - 103) ^ 0xB3] + 37) ^ 0x59) << 16);
  v101 = (((v98[*(v3 - 99) ^ 0xDLL] + 37) ^ 0xA9) << 16) | ((v99[*(v3 - 100) ^ 0xCALL] ^ 2) << 24);
  v102 = *(v3 - 107) ^ 0x45;
  v103 = ((v97[*(v3 - 106) ^ 0xD5] ^ 0x67) << 8) | ((v99[*(v3 - 108) ^ 0xC2] ^ 0x5A) << 24);
  *(v3 - 232) = v98;
  *(v3 - 224) = v97;
  v104 = v103 & 0xFF00FFFF | (((v98[v102] + 37) ^ 0x16) << 16);
  v105 = *(&off_286663530 + (v4 ^ 0x12B)) - 12;
  v106 = v101 & 0xFFFFFF00 | ((v97[*(v3 - 98) ^ 0xC6] ^ 0x19) << 8) | (53 * v105[*(v3 - 97) ^ 0xCBLL] + 111) ^ 0x79;
  v107 = v100 & 0xFFFFFF00 | ((v97[*(v3 - 110) ^ 0xE7] ^ 0xFD) << 8) | (53 * v105[*(v3 - 109) ^ 0x8ALL] + 111) ^ 0xC9;
  v108 = v104 & 0xFFFFFF00 | (53 * v105[*(v3 - 105) ^ 0xB9] + 111) ^ 0x3C;
  v109 = *(v3 - 104) ^ 0x8ALL;
  v110 = *(v3 - 101) ^ 6;
  *(v3 - 248) = v105;
  *(v3 - 240) = v99;
  LOBYTE(v110) = v105[v110];
  *(v3 - 252) = 111;
  LODWORD(v26) = v26 & 0xFFFFFF00 | (53 * v110 + 111) ^ 0x87 | ((v99[v109] ^ 0x7D) << 24);
  *(v3 - 136) = v107 ^ 0x37373737;
  *(v3 - 132) = v106 ^ 0x37373737;
  *(v3 - 128) = v108 ^ 0x37373737;
  *(v3 - 140) = v26 ^ 0x37373737;
  *(v3 - 256) = v120 ^ v96 ^ (v111 - 1878704991);
  *(v3 - 124) = (((*(v3 - 148) ^ 0x47AAEFE1) + 1309545946) ^ ((*(v3 - 148) ^ 0x1C522755) + 368500078) ^ ((*(v3 - 148) ^ 0x3E45A62) + 172007515)) + 1546337355;
  *(v3 - 212) = v86;
  JUMPOUT(0x254448584);
}

uint64_t sub_254449CB0()
{
  v4 = (*(v1 + 8 * (v0 + 770)))();
  *(v3 + 176) -= 16;
  return (*(v1 + 8 * ((58 * (v2 == v0 + 585074666)) ^ (v0 - 1035))))(v4);
}

uint64_t sub_254449D0C()
{
  v8 = ((v2 - 1387022215 - 2 * (v2 & 0xAD53B879)) ^ 0x20FEDA95) * v0;
  *(v7 - 184) = v8 + v4 - 589;
  *(v7 - 180) = v8 + 886104012;
  v5[1] = &STACK[0x2CC];
  *v5 = &STACK[0x4D0];
  v5[4] = 0;
  v9 = (*(v3 + 8 * (v4 + 1600)))(v7 - 200);
  return (*(v3 + 8 * ((218 * (*(v7 - 176) == (v1 ^ (v6 - 130)) + v4 - 798)) ^ v4)))(v9);
}

uint64_t sub_25444A0D4@<X0>(uint64_t a1@<X2>, int a2@<W3>, int a3@<W8>)
{
  v8 = (v7 + 4 * v4);
  v9 = v4 + 1;
  *v8 = v8[397] ^ (v6 + a3 + 409 - 1622) ^ *(a1 + 4 * (*(v7 + 4 * v9) & 1)) ^ ((*(v7 + 4 * v9) & 0x7FFFFFFE | v3 & 0x80000000) >> 1);
  return (*(v5 + 8 * (((v9 == 227) * a2) ^ a3)))();
}

uint64_t sub_25444A180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = v17;
  *(v19 - 120) = &a15;
  *(v19 - 136) = (v18 - 280) ^ (((~((v19 - 136) | 0x23070613) + ((v19 - 136) & 0x23070613)) ^ 0x80B5AD69) * v15);
  v20 = (*(v16 + 8 * (v18 ^ 0xD57)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 132) <= 0x76CDBDD1u) * (((v18 - 993046020) & 0x3B30AE7F) - 1143)) | v18)))(v20);
}

uint64_t sub_25444A238@<X0>(unsigned int a1@<W8>)
{
  v4 = LODWORD(STACK[0x500]) - v1;
  v6 = v2 != 1093553926 && v4 == 2 * (((a1 - 589) | 0x19E) ^ 0x2B5) + 519465615;
  return (*(v3 + 8 * ((19 * v6) ^ a1)))();
}

uint64_t sub_25444A2D4()
{
  v6 = 1037613739 * (((v0 | 0x515DAF80) - (v0 & 0x515DAF80)) ^ 0x805F82FF);
  *(v5 - 136) = ((v4 ^ 0x2FFEB8BF) - 572559393 + ((v4 << (v1 + 12)) & 0x5FFD717E)) ^ v6;
  *(v5 - 120) = v6 + v1 - 178;
  *(v5 - 128) = v3;
  v7 = (*(v2 + 8 * (v1 ^ 0x8BC)))(v5 - 136);
  return sub_25444A370(v7);
}

uint64_t sub_25444A370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v17 - 128) = a13;
  *(v17 - 120) = a14;
  *(v17 - 136) = (v15 - 246) ^ (843532609 * ((~(v14 | 0xE929DDCB) + (v14 & 0xE929DDCB)) ^ 0x4A9B76B1));
  v18 = (*(v16 + 8 * (v15 ^ 0xA89)))(v17 - 136);
  return (*(v16 + 8 * ((((*(v17 - 132) - 1993194962) < 0xE34731A9) * (v15 + 765 + (v15 ^ 0x725) - 2968)) ^ v15)))(v18);
}

uint64_t sub_25444A420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v10 = *(a1 + 40);
  *v8 = 0;
  return (*(v9 + 8 * (((v10 == 0) | (2 * (v10 == 0))) ^ a8)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_25444A4C8()
{
  v2 = *(v1 + 19616);

  return v2(v0);
}

uint64_t sub_25444A4F4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, unsigned int a5@<W8>)
{
  v11 = a1 < a3;
  *(a2 + a5) = *(v10 + v5) - ((*(v10 + v5) << (v6 - 114)) & 0x40) - 96;
  if (v11 == v5 + 1 > v8)
  {
    v11 = v7 + v5 + 16 < a1;
  }

  return (*(v9 + 8 * ((v11 * a4) ^ v6)))();
}

void sub_25444A55C(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 120) = (a1 + 1124) ^ ((((v18 - 144) & 0x26C03F73 | ~((v18 - 144) | 0x26C03F73)) ^ 0xCAE32CAC) * v17);
  *(v18 - 112) = &a17;
  *(v18 - 104) = a6;
  *(v18 - 144) = &a17;
  *(v18 - 136) = &a9;
  *(v18 - 128) = a7;
  JUMPOUT(0x254428A98);
}

uint64_t sub_25444A664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * ((-900980446 - (&a14 | 0xCA4C2122) + (&a14 | 0x35B3DEDD)) ^ 0x2B915388);
  a14 = &a10;
  a17 = &a13;
  a18 = v18;
  a15 = v22 + v21 - 846;
  a16 = v22 + 126041229;
  v23 = (*(v19 + 8 * (v21 + 1261)))(&a14);
  return (*(v19 + 8 * (((*(v18 + 24) == v20) * ((v21 - 501) ^ 0xED9)) ^ v21)))(v23);
}

uint64_t sub_25444A74C@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v7 = v4 & 0x387ECEFF;
  v8 = (v7 + 1048267486) & 0x4184BABF;
  *(*(v2 + 8) + 4 * (v6 + v3 + v8)) = a1 ^ (v5 + 683) ^ v7;
  *(v2 + 4) = v6 + 1;
  v9 = v3 + v6 + 1;
  v10 = v9 + 2195;
  if (v9 + 2195 < 0)
  {
    v10 = -2195 - v9;
  }

  return (*(a2 + 8 * ((((v10 ^ 0x2EFD86CD) + (((1103 * (v8 ^ 0x891)) ^ 0x5DFB0504) & (2 * v10)) - 788367054 > ((1103 * (v8 ^ 0x891) - 892) ^ 0xFFFFFADD)) * ((1103 * (v8 ^ 0x891)) ^ 0x8B3)) ^ (1103 * (v8 ^ 0x891)))))();
}

void sub_25444A878(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *a1 != 0;
  v1 = *(a1 + 16) - 1564307779 * ((((2 * a1) | 0xCF99E5FC) - a1 + 405998850) ^ 0x70C13EED);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_25444A958(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  *(v4 - 124) = (a2 - 428) | 0x41;
  *(v4 - 112) = veorq_s8(*v6, xmmword_254495230);
  *(v4 - 136) = v3;
  if (v3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  v10 = *(v5 + 8 * ((4077 * v9) ^ a2));
  *(v4 - 128) = -42900;
  return v10(a1, a2);
}

uint64_t sub_25444A9B4()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_25444AB24()
{
  v5 = v2 + (v3 + 1144) - 2335;
  *(v0 + v5) = *(v1 + v5) ^ 0xA0;
  return (*(v4 + 8 * ((904 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_25444AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, int a22)
{
  *a6 = 0;
  *a7 = 0;
  a21 = -542396526 - 1388665877 * ((((&a21 | 0xBBADDC7A) ^ 0xFFFFFFFE) - (~&a21 | 0x44522385)) ^ 0xC9FF4169);
  v24 = (*(v23 + 19416))(&a21);
  return (*(v23 + 8 * ((551 * (a22 == v22)) ^ 0x44Bu)))(v24);
}

uint64_t sub_25444AC34(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  HIDWORD(v19) = a1 ^ v13;
  LODWORD(v19) = a1 ^ v18;
  v20 = (v19 >> 27) + (v10 ^ v15) + (*(v8 + 4 * (a3 + v14)) ^ v9) + (((a8 ^ v17) + v15 - ((((v11 + 711) | 0x220) + 1018290772) & (2 * (a8 ^ v17)))) ^ a2) + 376287579;
  return (*(v12 + 8 * ((306 * (a3 + 1 == v16 + 64)) ^ v11)))(v20 ^ ((v20 ^ 0xA41BD57) - 1179341522) ^ ((v20 ^ 0x16A070EB) - 1521131374) ^ ((v20 ^ 0x2F1CDFC7) - 1662398530) ^ ((v20 ^ 0x7FF7FDFE) - 872223355) ^ 0xD2521B7A, v17);
}

uint64_t sub_25444AF28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(v6 + 48 * v7 + 36);
  v10 = (v8 + a4) < 0x80000003 && v8 != ((v4 - 353641227) & 0xFFDFBFFE) - 1822557714;
  return (*(v5 + 8 * ((1371 * v10) ^ v4)))();
}

uint64_t sub_25444D5E0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = (a2 + v3 + a3);
  *v10 = v9;
  v10[1] = v9;
  return (*(v8 + 8 * ((((v5 ^ v7) + v3 != v4) * a1) ^ v6)))();
}

uint64_t sub_25444D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v58 = (*(v56 + 8 * (v55 ^ 0xB83)))(1576, 0x105004009637391);
  *(v57 + 56) = v58;
  return (*(v56 + 8 * (((v58 == 0) * (((v55 ^ 0x5FA) - 697) ^ ((v55 ^ 0x5FA) - 228) ^ 0x29A)) ^ v55 ^ 0x5FA)))(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_25444D678(uint64_t result)
{
  v1 = 143681137 * ((((2 * result) | 0x3AFF216F41EC697CLL) - result - 0x1D7F90B7A0F634BELL) ^ 0xACF6A203C1AEBF6ELL);
  v2 = *(result + 16) + v1;
  v3 = *(result + 40) - v1;
  v4 = v2 >= v3;
  v5 = v2 != v3;
  v6 = v4;
  if ((*result ^ (143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E))))
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = *(result + 32) + 143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E);
  }

  else
  {
    v7 = *(result + 4) - 143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E);
  }

  *(result + 28) = v7 ^ (*(result + 24) - 143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E));
  return result;
}

uint64_t sub_25444D7A8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_25444D7C0(uint64_t a1)
{
  v1 = *(a1 + 4) - 1388665877 * ((a1 & 0xF983F256 | ~(a1 | 0xF983F256)) ^ 0x8BD16F45);
  v2 = v1 ^ 0x11D;
  v3 = (v1 ^ 0xD3C2FC2F) + *(*(a1 + 8) + 4);
  if (v3 < 0)
  {
    v3 = -v3;
  }

  return (*(*(&off_286663530 + (v2 ^ 0x44E)) + ((582 * (v3 > ((((v2 + 34) | 0x204) - 283) ^ 0x514))) | v2) - 1))();
}

uint64_t sub_25444D8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v29 = &a17;
  HIDWORD(a18) = -843532609 * (((v29 | 0xD017C0C7) - v29 + (v29 & 0x2FE83F38)) ^ 0x8C5A9442) + 740766347 * v27 + 530262041;
  LODWORD(a19) = (843532609 * (((v29 | 0xD017C0C7) - v29 + (v29 & 0x2FE83F38)) ^ 0x8C5A9442)) ^ 0x557;
  a17 = a14;
  (*(v28 + 19504))(&a17);
  a17 = a14;
  HIDWORD(a18) = -843532609 * ((1342387609 - (&a17 | 0x50033599) + (&a17 | 0xAFFCCA66)) ^ 0xF3B19EE3) + 740766347 * v26 + 530262041;
  LODWORD(a19) = (843532609 * ((1342387609 - (&a17 | 0x50033599) + (&a17 | 0xAFFCCA66)) ^ 0xF3B19EE3)) ^ 0x557;
  (*(v28 + 19504))(&a17);
  v30 = 1037613739 * ((&a17 & 0x84BD5983 | ~(&a17 | 0x84BD5983)) ^ 0xAA408B03);
  a18 = a14;
  a19 = v24;
  a20 = v30 ^ 0x7FD;
  a21 = ((2 * v25) & 0xF9FDE76C) + (v25 ^ 0xFCFEF3B6) + 2131967984 + v30;
  (*(v28 + 19144))(&a17);
  v31 = 1037613739 * (((&a17 | 0xE9F5F9F5) - (&a17 & 0xE9F5F9F5)) ^ 0x38F7D48A);
  a20 = v31 ^ 0x7FD;
  a21 = (v23 ^ 0xFD7EB3B7) + ((2 * v23) & 0xFAFD676E) + 2123595759 + v31;
  a18 = a14;
  a19 = v22;
  (*(v28 + 19144))(&a17);
  HIDWORD(a18) = -843532609 * (&a17 ^ 0x5C4D5485) + 740766347 * *v21 + 530262041;
  LODWORD(a19) = (843532609 * (&a17 ^ 0x5C4D5485)) ^ 0x557;
  a17 = a14;
  v32 = (*(v28 + 19504))(&a17);
  return (*(v28 + 8 * ((119 * (a18 == 585076288)) ^ 0x59Fu)))(v32);
}

uint64_t sub_25444DC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v7 + 52) += (v6 ^ 0xAA) + ((v6 + 1283) ^ 0xFFFFF85E);
  STACK[0x260] = v7;
  LODWORD(STACK[0x3AC]) = *(v7 + 360);
  *(v9 + 176) -= 2432;
  LODWORD(STACK[0x4A0]) = a6;
  return (*(v8 + 8 * ((684 * (*(v9 + 16) == 0)) ^ v6)))();
}

uint64_t sub_25444DC7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = -542396526 - 1388665877 * (((&a15 | 0xE105652D) + (~&a15 | 0x1EFA9AD2)) ^ 0x6CA807C0);
  v18 = (*(v16 + 19416))(&a15);
  return (*(v16 + 8 * ((1779 * (a16 == v17)) ^ 0x185u)))(v18);
}

uint64_t sub_25444E108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v76 + 208) = v75;
  v88 = (&STACK[0x570] + a72 - 96);
  *v88 = 0x5F5F5F5F5F5F5F5FLL;
  v88[1] = 0xA0A0A0A0A6A0A0B2;
  v78 = (a5 ^ 0x8DAD62EC) * v72;
  *(v77 - 192) = (v73 + 1986155993) ^ v78;
  *(v77 - 200) = v78 ^ 0x43CEAAD2;
  (*(v74 + 8 * (v73 + 216)))(v77 - 200);
  LODWORD(STACK[0x2FC]) = 393083242;
  v79 = (*(v74 + 8 * (v73 ^ 0x1A8)))(336, 0x100004077774924);
  STACK[0x2E0] = v79;
  return (*(v74 + 8 * ((28 * (v79 != 0)) ^ v73)))(v79, v80, v81, v82, v83, v84, v85, v86, a9);
}

uint64_t sub_25444E25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * (((v2 + v4 + 1752) | 0xC2) - 993)) ^ (v2 + v4 + 1329))))();
}

void Mib5yocT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = !v8 && a6 != 0 && a7 != 0 && a8 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_25444E320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, unint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, _BYTE *a8, uint64_t a9, _BYTE *a10, uint64_t a11, _BYTE *a12, _BYTE *a13, _BYTE *a14, _BYTE *a15, uint64_t a16, uint64_t a17, _BYTE *a18, uint64_t a19, _BYTE *a20, uint64_t a21, _BYTE *a22, _BYTE *a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, uint64_t a39, uint64_t a40)
{
  *a8 = a2;
  *a12 = BYTE3(a2);
  a8[1] = BYTE6(v42);
  a7[1] = BYTE4(a2) ^ 0x30;
  a10[20] = v41;
  *a13 = BYTE5(v42);
  a10[64] = BYTE2(a2);
  a10[50] = BYTE3(a1);
  *a15 = BYTE1(a2);
  *a14 = a1;
  a10[26] = BYTE6(a1);
  *a23 = BYTE4(a1);
  a7[2] = v43 >> ((a30 + 109) & 0x7D ^ 0x75u);
  a10[45] = BYTE5(a1);
  *a26 = HIBYTE(a1);
  a10[11] = BYTE2(v43);
  *a27 = BYTE1(v41);
  *a7 = HIBYTE(v42);
  *a18 = BYTE2(v41);
  a10[52] = BYTE4(v41);
  *a22 = BYTE3(v41);
  v45 = *(a5 + 526 + (((v44 >> 33) & 0x80 | (v41 >> 41) & 0x7F) ^ 0x1D));
  a10[9] = BYTE6(v41);
  *a20 = (((v45 >> 4) | (16 * v45)) ^ 0xB ^ (((v45 >> 4) | (16 * v45)) >> 1) & 0x55) + 95;
  v46 = (*(a6 + (((v41 >> 51) & 0xE0 | (v44 >> 59)) ^ 0xF3)) ^ 0xBC) + 74;
  a10[39] = v40 ^ 0x53;
  *a25 = v46;
  v47 = *(a6 + (((v40 >> 3) & 0xE0 | (v40 >> 11)) ^ 0xEF));
  v48 = (a3 >> 38) ^ 0xB0;
  a10[49] = BYTE5(v40) ^ 0xBB;
  a10[63] = BYTE3(v40) ^ 0xC1;
  a10[13] = BYTE6(v40) ^ 0x15;
  *a24 = BYTE2(v40) ^ 0x1D;
  *a28 = (v47 ^ 0xBC) + 74;
  a10[36] = BYTE4(v40) ^ 0xF2;
  a10[60] = BYTE1(a3) ^ 0x54;
  a10[27] = BYTE2(a3) ^ 0x11;
  a10[40] = (v40 ^ 0x4F15BBF2C11DE053) >> (v43 & 0x38) >> (v43 & 0x38 ^ 0x38);
  a10[53] = BYTE3(a3) ^ 5;
  a10[59] = a3 ^ 0x4C;
  a10[22] = BYTE4(a3) ^ 0x2D;
  v49 = *(a9 + ((v48 & 0xFC | (a3 >> 46) & 3) ^ 0x97));
  a10[37] = -35 * ((((v48 & 0xFC | (a3 >> 46) & 3) ^ 0x86) - ((2 * v48) & 0xD0) + (v49 ^ 0xB2) + ((2 * v49) & 0x64) + 79) ^ 0x85);
  v50 = *(a5 + 526 + (((a3 >> 41) & 0x80 | (a3 >> 49) & 0x7F) ^ 0x56));
  a10[29] = HIBYTE(a3) ^ 0x30;
  a10[57] = (((v50 >> 4) | (16 * v50)) ^ 0xB) + ((((v50 >> 4) | (16 * v50)) >> 1) & 0x55) - 2 * ((((v50 >> 4) | (16 * v50)) >> 1) & 0x55 & (((v50 >> 4) | (16 * v50)) ^ 0xB)) + 95;
  **a16 = HIDWORD(a11) + 1;
  v52 = *a16;
  v53 = ((*(*a16 + 17) << 32) | (*(*a16 + 16) << 40) | (*(*a16 + 30) << 48)) ^ __ROR8__(((*(*a16 + 21) << 51) | (*(*a16 + 35) << 43) | (*(*a16 + 6) << 35) | __ROR8__(*(*a16 + 54), 5)) ^ 0x5B4A49F8D3C1ECB5, 35) ^ (*(*a16 + 42) << 56);
  v54 = *(*a16 + 15) | (*(*a16 + 32) << 8) | (*(*a16 + 7) << 16) | (*(*a16 + 34) << 24) | (*(*a16 + 61) << 40);
  v55 = v53 ^ 0x4E2F817BD9C3EF0CLL;
  v56 = *(&off_286663530 + a30 - 768);
  v57 = (*(v56 - 2 + (((((69 * v52[55]) - ((69 * v52[55]) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * v52[55])) ^ 0xD5)) - 18) ^ 0x57;
  v58 = (v57 >> 2) | (v57 << 6);
  v59 = ((*(*a16 + 51) << 56) | (*(*a16 + 56) << 48)) ^ 0xDC4DBC0B56EE06D0 ^ (((0xFFFFFFFF00000000 * v58) ^ (v54 - (v54 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32))) ^ ((v58 << 32) - ((v58 << 33) & 0x8C00000000) - 0x21DA6EB93ED233B7) ^ 0xDE259146C12DCC49) + v54);
  v63 = ((v52[4] >> 4) | (16 * v52[4])) ^ 0x5CLL;
  LOBYTE(v54) = (*(v56 - 2 + ((69 * *(*a16 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v60 = ((v54 >> 2) | (v54 << 6)) << 32;
  v61 = *(*a16 + 8) << 24;
  v62 = *(*a16 + 33) << 16;
  v64 = ((((v62 & 0x6B0000 ^ 0x2681D3205DB8615BLL ^ ((((((*(v56 + 529 + v63) >> 5) | (8 * *(v56 + 529 + v63))) << 8) ^ 0x6EEEDFC051536640) & (*(*a16 + 19) ^ 0x7EEFDFC5DF5BFFFELL) | *(*a16 + 19) & 0xBF) ^ 0xF603858133C762E6) & (v62 ^ 0xFEEFFFEFFFFFFFFFLL)) & ~v61 | v61 & 0xC0000000) ^ 0x6395E820C71DD87BLL) & ~v60 | v60 & 0xBE00000000) ^ ((v52[38] << 40) | (v52[43] << 48));
  return sub_25444EB30(0xFFFFFF0000000000 * v52[12], v56 + 529, ((v64 & 0x4AF54021979D7FCDLL ^ (v52[46] << 56) & 0x4A00000000000000 ^ 0xB50EBFFE69E28073) & ((v52[46] << 56) & 0xB500000000000000 ^ 0x7D9E5FF941E094E3 ^ v64 & 0xB50ABFDE68628032) | (v64 & 0x4AF54021979D7FCDLL ^ (v52[46] << 56) & 0x4A00000000000000) & 0x2610000961D6B0CLL) ^ 0xE8F77EB9B9D1FCE5, v43 & 0x38, v59, v55, a38, a40, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_25444EB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, int a12, int a13)
{
  v15 = (((a13 ^ 0x72AF067B) - 1924073083) ^ ((a13 ^ 0xA81A9048) + 1474654136) ^ (((v13 - 1880002614) & 0x700E8B1C ^ 0x795E591) + (a13 ^ 0xF86A1873))) - 46155828;
  v16 = v15 < 0xDA60298C;
  v17 = v15 > a11 - 631232956 + ((v13 - 1880002614) ^ 0x8FF175B7);
  if (a11 > 0x259FD673 != v16)
  {
    v17 = v16;
  }

  return (*(v14 + 8 * ((117 * v17) ^ v13)))();
}

uint64_t sub_25444ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = &a15;
  *(v19 - 120) = a14;
  *(v19 - 136) = (v18 - 404) ^ (((((v19 - 136) | 0xEC47E9E1) - (v19 - 136) + ((v19 - 136) & 0x13B81618)) ^ 0xB00ABD64) * v17);
  v20 = (*(v16 + 8 * (v18 + 1243)))(v19 - 136);
  return (*(v16 + 8 * ((230 * (*(v19 - 132) == v15 + ((v18 + 400) | 0x132) - 1852)) ^ v18)))(v20);
}

void sub_25444EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(a1 + 1424) = 0;
  memset((a1 + 1432), 160, 104);
  *(v8 + 96) = a1;
  *(v10 + 24) = v8 + 96;
  *(a1 + 476) = a7;
  *(v10 + 160) = *(v9 + 8 * v7);
  STACK[0x268] = v8;
  JUMPOUT(0x25444EE48);
}

uint64_t sub_25444EF84@<X0>(int a1@<W8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>, int8x16_t a6@<Q6>, int32x4_t a7@<Q7>)
{
  v13 = v8 + 4;
  a3.i32[0] = v9->i32[1];
  a3.i32[1] = *(v11 + 4 * (v13 + v7) + 1028);
  a3.i32[2] = v9->i32[3];
  v14 = vextq_s8(a2, a3, 0xCuLL);
  v15 = a3;
  v15.i32[3] = v9[1].i32[0];
  v16.i32[0] = *(v12 + 4 * (a3.i8[0] & 1));
  v16.i32[1] = *(v12 + 4 * (a3.i8[4] & 1));
  v16.i32[2] = *(v12 + 4 * (a3.i8[8] & 1));
  v16.i32[3] = *(v12 + 4 * (v15.i8[12] & 1));
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a5), vandq_s8(v14, a4)), 1uLL), *(v9 - 908));
  *v9 = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), a6)), a7), v16);
  return (*(v10 + 8 * (a1 | (4 * (v13 == 0)))))();
}

uint64_t sub_25444F410@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v4 = a1;
  *v3 = v2;
  v7 = (a2 ^ 0x957) + 1042;
  v11 = (a2 ^ 0x957) - 1388665877 * ((&v11 & 0xD517D837 | ~(&v11 | 0xD517D837)) ^ 0xA7454524) + 988;
  v12 = v9;
  (*(v6 + 8 * (a2 ^ 0x140)))(&v11);
  v11 = v7 - 1388665877 * ((((2 * &v11) | 0xEE8F6516) - &v11 - 2001187467) ^ 0xFAEAD067) - 54;
  v12 = v10;
  (*(v6 + 8 * (v7 + 1029)))(&v11);
  return v5 ^ 0x22DF8E40u;
}

uint64_t sub_25444F56C@<X0>(int a1@<W3>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  v26 = (a16 + 24 * v21);
  *v26 = v24;
  v26[1] = a2;
  *&v23[6 * v21 + 4] = v22;
  v26[4] = a19;
  *v23 = v20 + ((a3 + 1796801683) ^ 0x6B19064D) - 481;
  return (*(v25 + 8 * ((1475 * (v19 + a1 < ((a3 + 1796801683) & 0x94E6FAF7 ^ 0x800002A4))) ^ a3)))();
}

uint64_t sub_25444F668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, unsigned int a24, uint64_t a25, char *a26, char *a27)
{
  a24 = v28 - 143681137 * (((&a23 | 0x25E672BE) - (&a23 & 0x25E672BE)) ^ 0x44BEF96E) + 843;
  a25 = a22;
  a26 = &a17;
  a27 = &a19;
  v30 = (*(v29 + 8 * (v28 + 2063)))(&a23);
  return (*(v29 + 8 * ((((v28 - 60015159) & 0x393C3FD ^ 0x160) * (a13 < v27)) ^ v28)))(v30);
}

uint64_t sub_25444F78C()
{
  v9 = v2 - 2;
  v10 = v3 + 2;
  *(v9 + 91) = (v10 ^ v6) * (v10 + 17);
  *(v9 + v5) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v4 != 2) * v7) ^ v1)))();
}

uint64_t sub_25444F7B0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  result = (*(v3 + 8 * (a2 + 1262)))(*v4, a1, (a2 + *(v2 + 8) - 1617173318));
  *v2 = v6;
  *(v2 + 8) = v5;
  *(v2 + 12) = v5;
  return result;
}

uint64_t sub_25444F7FC@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 - 319) ^ (843532609 * (&v5 ^ 0x5C4D5485));
  v6 = a1;
  v7 = v3;
  v8 = v3;
  return (*(v1 + 8 * (v2 + 1650)))(&v5);
}

uint64_t sub_25444F8A8()
{
  LODWORD(STACK[0x2C8]) = v0;
  v4 = v3 - 200;
  *v4 = 32 - -77 * ((v3 + 56) ^ 0x20);
  *(v3 - 196) = (v1 + 484) ^ (1785193651 * ((v3 - 200) ^ 0x13DCEC20));
  *(v4 + 16) = &STACK[0x64DD113A6F6F281A];
  *(v4 + 24) = &STACK[0x68664AE5641118AE];
  v5 = (*(v2 + 8 * (v1 + 1009)))(v3 - 200);
  v6 = *(v3 - 192);
  LODWORD(STACK[0x4A0]) = v6;
  return (*(v2 + 8 * ((115 * (v6 == ((v1 + 422924971) & 0xE6CAAE77) + 585074666)) ^ v1)))(v5);
}

uint64_t sub_25444F980@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = a1 - 288538519 < a8 - 681621426;
  if ((a8 - 681621426) < 0xEECD4069 != a1 > 0x1132BF96)
  {
    v10 = (a8 - 681621426) < 0xEECD4069;
  }

  return (*(v8 + 8 * ((!v10 * ((3 * (v9 ^ 0x3E9)) ^ 0x7B3)) ^ v9)))();
}

uint64_t sub_25444FAE4()
{
  v4 = STACK[0x4F8];
  v5 = 1082434553 * ((2 * ((v3 - 200) & 0x6BFEDD18) - (v3 - 200) - 1811864863) ^ 0xF46D46B);
  v6 = (v3 - 200);
  v6[5] = &STACK[0x500];
  v6[6] = v4;
  v6[4] = &STACK[0x4BC];
  v6[2] = &STACK[0x3D4];
  *v6 = &STACK[0x4E0];
  *(v3 - 188) = v5 + v0 + 1166103710;
  *(v3 - 176) = v5 + v2 + 1173;
  v7 = (*(v1 + 8 * (v2 ^ 0xBCF)))(v3 - 200);
  return (*(v1 + 8 * (((*(v3 - 192) == 585076288) * ((v2 + 1033) ^ 0x776 ^ (97 * (v2 ^ 0x241)))) ^ v2)))(v7);
}

void sub_25444FC70(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v9 = ((2 * (&a3 & 0x71C62B78) - &a3 + 238670983) ^ 0xDF3BF9F8) * a1;
  a6 = (v7 - 1994) ^ v9;
  a7 = 1001929915 - v9;
  a3 = v9 - 1835950491;
  a5 = 0;
  (*(v8 + 8 * (v7 + 292)))(&a3);
  JUMPOUT(0x25444FCE4);
}

uint64_t sub_25444FD28(__n128 a1, __n128 a2)
{
  a1.n128_u32[0] = 4194368;
  a1.n128_u16[2] = 64;
  a1.n128_u16[3] = 64;
  a2.n128_u32[0] = 10485920;
  a2.n128_u16[2] = 160;
  a2.n128_u16[3] = 160;
  return sub_25444FD4C(a1, a2);
}

uint64_t sub_25444FD4C@<X0>(uint64_t a1@<X8>, int8x8_t a2@<D0>, int16x4_t a3@<D1>, uint8x8_t a4@<D2>)
{
  a4.i32[0] = *(v4 + v9 - v6);
  v12 = vmovl_u8(a4).u64[0];
  *(a1 + v9 - v6) = vuzp1_s8(vadd_s16(vsub_s16(v12, vand_s8(vadd_s16(v12, v12), a2)), a3), a2).u32[0];
  return (*(v11 + 8 * ((496 * (((v7 | v8) ^ v10) + v6 == 20)) ^ v5)))();
}

uint64_t sub_25444FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v19 - 120) = (v16 + 76) ^ (210068311 * ((((2 * (v19 - 120)) | 0xAA79F960) - (v19 - 120) + 717423440) ^ 0x47EAC314));
  *(v19 - 112) = &a14;
  *(v19 - 104) = &a16;
  v20 = (*(v17 + 8 * (v16 ^ 0x127)))(v19 - 120);
  return (*(v17 + 8 * (((v18 == (v16 ^ 0x82A) - 122) * ((v16 - 1919) ^ 0x42)) ^ v16)))(v20);
}

uint64_t sub_254450318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v18 - 120) = (v16 + 23) ^ (1785193651 * ((1370352031 - ((v18 - 144) | 0x51ADE99F) + ((v18 - 144) | 0xAE521660)) ^ 0xBD8EFA40));
  *(v18 - 112) = &a13;
  *(v18 - 104) = v14;
  *(v18 - 136) = &a11;
  *(v18 - 128) = v13;
  *(v18 - 144) = &a13;
  v19 = (*(v15 + 8 * (v16 + 944)))(v18 - 144);
  return (*(v15 + 8 * ((19 * (v17 - 207202448 < (v16 + 2147482180))) ^ (v16 - 1299))))(v19);
}

uint64_t sub_2544504B4()
{
  v3 = v0 & 0xD8B6B3FF;
  v4 = 1388665877 * ((2 * ((v2 - 200) & 0x40862830) - (v2 - 200) - 1082533939) ^ 0x32D4B521);
  *(v2 - 184) = v4 + (v0 & 0xD8B6B3FF) - 589;
  *(v2 - 180) = v4 + 886104014;
  v5 = (v2 - 200);
  v5[1] = &STACK[0x2CC];
  *v5 = &STACK[0x4D0];
  v5[4] = 0;
  v6 = (*(v1 + 8 * ((v0 & 0xD8B6B3FF) + 1600)))(v2 - 200);
  v7 = *(v1 + 8 * (((*(v2 - 176) == (v3 ^ 0x31E) + 585076223) * ((v3 - 798) ^ 0x9B)) ^ v3));
  STACK[0x2A0] = *(&off_286663530 + (v3 ^ 0x3FE)) - 8;
  return v7(v6);
}

uint64_t sub_2544505AC@<X0>(char a1@<W3>, int a2@<W4>, char a3@<W5>, uint64_t a4@<X6>, int a5@<W8>)
{
  v11 = v8 - 1;
  *(v5 + v11) = *(a4 + v11) ^ ((v11 & 0xF) * ((a5 + 30) ^ a1)) ^ *(*(v10 + 8 * v6) + (v11 & 0xF) - 12) ^ *(*(v10 + 8 * v7) + (v11 & 0xF) - 10) ^ *(*(v10 + 8 * (a5 - 249)) + (v11 & 0xF) - 5) ^ a3;
  return (*(v9 + 8 * (((v11 == 0) * a2) | a5)))();
}

uint64_t sub_254450608(uint64_t a1, int a2)
{
  v9 = v6 - 1;
  *(v7 + v9) = *(v4 + (v9 & 0xF)) ^ *(v2 + v9) ^ *(v5 + (v9 & 0xF)) ^ (117 * (v9 & 0xF)) ^ *(v3 + (v9 & 0xF));
  return (*(v8 + 8 * (((v9 != 0) * (((a2 + 2052805800) & 0x85A4ADDF) - 1155)) ^ (a2 + 378))))();
}

uint64_t sub_254450674@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(a1 + v6) = ((v5 - 10) ^ (v3 + 61) ^ 0xEB) + *(v2 + v6) - ((2 * *(v2 + v6)) & 0x40);
  return (*(v1 + 8 * ((26 * (v6 != 0)) ^ (v5 - 10))))(0);
}

uint64_t sub_2544506C4()
{
  v5 = 2066391179 * ((((v4 - 200) | 0xCE837F2) - ((v4 - 200) & 0xCE837F2)) ^ 0xA3CFB5EA);
  *(v4 - 192) = v3;
  *(v4 - 200) = v1 - v5 - 1369;
  *(v4 - 196) = v0 - v5 - 458932267;
  v6 = (*(v2 + 8 * (v1 + 826)))(v4 - 200);
  return (STACK[0x408])(v6);
}

void sub_2544508DC(char a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a3[3] ^ 0xA0;
  v6 = ((a3[1] ^ 0xA0) << (a1 ^ 0x40)) + ((*a3 ^ 0xA0) << 24) + ((a3[2] ^ 0xA0) << 8) + v5;
  **(v3 + 24) = v6 + v4 - 2 * (v6 & (v4 + 32) ^ v5 & 0x20);
  JUMPOUT(0x2544441B0);
}

uint64_t sub_254450944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = v15;
  *(v19 - 120) = &a15;
  *(v19 - 136) = (v18 + 573) ^ (((2 * ((v19 - 136) & 0x1E23C890) - (v19 - 136) - 505661585) ^ 0xBD9163EA) * v16);
  v20 = (*(v17 + 8 * (v18 + 2220)))(v19 - 136);
  return (*(v17 + 8 * ((784 * (*(v19 - 132) - 1993194962 < ((v18 + 1775909139) & 0x9625C7FB) - 874510829)) | v18)))(v20);
}

uint64_t sub_254450A00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  v12 = v9 + 32;
  v13 = (v12 ^ a3 ^ ((v8 ^ (v6 + 1488)) * a2)) + v7;
  v14 = *(v5 + v13 - 15);
  v15 = *(v5 + v13 - 31);
  v16 = a1 + v13;
  *(v16 - 15) = v14;
  *(v16 - 31) = v15;
  return (*(v11 + 8 * (((v10 == v12) * a4) ^ (a5 + v8 + 3374))))();
}

uint64_t sub_254450AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x270]) = v7;
  LODWORD(STACK[0x568]) = v6;
  LODWORD(STACK[0x56C]) = 729055380;
  v10 = *(v8 + 8 * (v4 - 1606));
  STACK[0x268] = v10;
  LODWORD(STACK[0x31C]) = *v10 - 562464143;
  v11 = *(v8 + 8 * (v4 ^ 0x6F5));
  STACK[0x278] = v11;
  v12 = *v11;
  v13 = STACK[0x240];
  v14 = v4 - 1622804168 + STACK[0x240];
  *(v9 - 164) = v14 + 87;
  *(v9 - 200) = v13;
  *(v9 - 176) = (v4 - 2030746294) ^ v13;
  *(v9 - 172) = v14;
  *(v9 - 168) = ((v4 - 1622804168) | 0x31) - v13;
  STACK[0x258] = v12;
  *(a4 + 8) = v13;
  *(a4 + 16) = v12 + v13;
  v15 = (*(v5 + 8 * (v4 + 787)))(v9 - 200);
  return (*(v5 + 8 * *(v9 - 160)))(v15);
}

uint64_t sub_254450BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, unsigned int a12, int a13, int a14, char *a15, char a16, uint64_t a17)
{
  v24 = v22 + *(v17 + 20) + 59;
  v25 = 1361651671 * ((-2 - ((~&a12 | 0x889C355) + (&a12 | 0xF7763CAA))) ^ 0xDBAB33D9);
  a15 = &a10;
  a17 = v21;
  a12 = v25 - 2082783094 + (((v23 ^ 0x89FDEBEE) + 1979847698) ^ ((v23 ^ 0xF0BDBEB2) + 256000334) ^ ((v23 ^ 0x5A377892 ^ (v20 - 972946579) & 0x39FDFF4A) - 1513585816));
  a13 = v20 - v25 + 270;
  a16 = v24 ^ (-41 * ((-2 - ((~&a12 | 0x55) + (&a12 | 0xAA))) ^ 0xD9));
  v26 = (*(v19 + 8 * (v20 ^ 0x8C3)))(&a12);
  return (*(v19 + 8 * ((1456 * (a14 == v18)) ^ v20)))(v26);
}

void sub_254450D28(int a1@<W8>)
{
  v2 = *(v1 + 4);
  if (v2 + 1405286715 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  *(v1 + 4) = v3 + v2;
  JUMPOUT(0x254450D9CLL);
}

uint64_t sub_254450ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, char *a17, int a18)
{
  v20 = 742307843 * ((&a15 & 0x1C6D3FDA | ~(&a15 | 0x1C6D3FDA)) ^ 0xFDB04D70);
  HIDWORD(a17) = 2059 - v20;
  a18 = v20 ^ 0x7F95312A;
  a16 = v20 + 2046340255;
  LODWORD(a17) = 48773732 - v20;
  (*(v19 + 19832))(&a15);
  a18 = 2066391179 * ((&a15 & 0x36BC93FF | ~(&a15 | 0x36BC93FF)) ^ 0x6664EE18) + 1791;
  a17 = &a10;
  v21 = (*(v19 + 19488))(&a15);
  return (*(v19 + 8 * ((2133 * (a15 == v18)) ^ 0x7E)))(v21);
}

uint64_t sub_254450FDC(uint64_t a1, uint64_t a2)
{
  STACK[0x2A0] = v2;
  v9 = STACK[0x4F4];
  v10 = ((v4 - 1336) ^ 0xE6402E50 ^ v9) & (2 * (v9 & v7)) ^ v9 & v7;
  v11 = ((2 * (v9 ^ 0x2F423102)) ^ 0x97867CDA) & (v9 ^ 0x2F423102) ^ (2 * (v9 ^ 0x2F423102)) & 0xCBC33E6C;
  v12 = v11 ^ 0x48410225;
  v13 = (v11 ^ 0xCA413C48) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x2F0CF9B4) & v12 ^ (4 * v12) & 0xCBC33E6C;
  v15 = (v14 ^ 0xB003820) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0xC0C30649)) ^ 0xBC33E6D0) & (v14 ^ 0xC0C30649) ^ (16 * (v14 ^ 0xC0C30649)) & 0xCBC33E60;
  v17 = v15 ^ 0xCBC33E6D ^ (v16 ^ 0x88032600) & (v15 << 8);
  *(*(v8 + 512) + 4 * (((v9 ^ (2 * ((v17 << 16) & 0x4BC30000 ^ v17 ^ ((v17 << 16) ^ 0x3E6D0000) & (((v16 ^ 0x43C0182D) << 8) & 0x4BC30000 ^ 0x8C10000 ^ (((v16 ^ 0x43C0182D) << 8) ^ 0x433E0000) & (v16 ^ 0x43C0182D))))) >> 2) ^ 0x19E15CED)) = v6;
  LODWORD(STACK[0x4F4]) = v9 + 4;
  return (*(v5 + 8 * ((39 * (v7 + v9 + 4 + ((v4 + 1182678497) & 0xB981BBEF) - 39 < ((v4 - 1336) ^ 0x135u) * v3 - 1097)) ^ (v4 - 1336))))(510551999, a2, 2474273582);
}

uint64_t sub_2544511FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, char *a19, unsigned int a20)
{
  v22 = 1564307779 * (((&a15 | 0x980E38FF) - &a15 + (&a15 & 0x67F1C700)) ^ 0xF03F4EC);
  a20 = -1326587410 - v22;
  a19 = &a13;
  a17 = v21 - v22 - 2013067275;
  a18 = 170731627 - v22;
  a15 = a11;
  v23 = (*(v20 + 8 * (v21 + 1700)))(&a15);
  return (*(v20 + 8 * ((490 * (a16 != (v21 ^ 0x5D1F56F7) - 977258701 + ((v21 - 335688672) & 0x140233E5))) ^ v21)))(v23);
}

uint64_t sub_254451410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v20 - 120) = (v16 - 1385) ^ (((((v20 - 120) | 0xC77E7CC1) - (v20 - 120) + ((v20 - 120) & 0x38818338)) ^ 0x9B332844) * v18);
  *(v20 - 112) = &a14;
  *(v20 - 104) = &a16;
  v21 = (*(v17 + 8 * (v16 | 0x106)))(v20 - 120);
  return (*(v17 + 8 * ((15 * (v19 + *(v20 - 116) + 252 < ((v16 - 1154472530) & 0x44CFD27Bu) - 758098787)) ^ v16)))(v21);
}

void sub_2544514CC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8) + 210068311 * ((2 * (a1 & 0x9D6ACF85) - a1 + 1653944442) ^ 0xF0430FDE);
  v2 = 1785193651 * ((v5 & 0x4B900E85 | ~(v5 | 0x4B900E85)) ^ 0xA7B31D5A);
  v8 = v2 ^ 0x93107673;
  v7 = v4;
  v6 = v1 + v2 - 562358880;
  v3 = *(&off_286663530 + v1 + 43) - 8;
  (*&v3[8 * v1 + 19136])(v5);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_254451830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *v28;
  v30 = *(v28 + 48);
  *(v27 - 172) = 134 * (a1 ^ 0x552);
  *(v27 - 112) = veorq_s8(*v29, xmmword_254495240);
  if (v25)
  {
    v31 = v30 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  v33 = *(v26 + 8 * ((53 * v32) ^ a1));
  *(v27 - 176) = -42900;
  return v33(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_254451930@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v11 + 2181;
  v15 = a11 + a1 < 0xFFFFFFFFFFFFFFE0 && a1 <= (((v13 - 2250) | 0x538) ^ 0xFFFFFAF8);
  return (*(v12 + 8 * ((v15 * (v13 - 1801)) ^ v13)))();
}

uint64_t sub_254451984@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE33 ^ ((v3 - 1077) | 0xC0u)) + v1;
  *(v5 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v4 + 8 * ((44 * ((v1 & 0xFFFFFFF8) - 8 == v2)) | v3)))(v2 + 8);
}

uint64_t sub_2544519D8(uint64_t a1, uint64_t a2)
{
  STACK[0x438] = *(v5 + 8 * v2);
  STACK[0x540] = v7;
  STACK[0x548] = v7;
  v14 = STACK[0x400];
  STACK[0x550] = &STACK[0x570] + STACK[0x400];
  STACK[0x400] = v14 + 320;
  v15 = *(v7 + 72);
  LODWORD(STACK[0x49C]) = v15;
  v16 = *(v7 + 76);
  LODWORD(STACK[0x504]) = v16;
  v17 = *(v7 + 80);
  LODWORD(STACK[0x4A8]) = v17;
  LODWORD(STACK[0x4B8]) = *(v7 + 84);
  v18 = *(v7 + 96);
  if (v18 == 2)
  {
    LODWORD(STACK[0x46C]) = *(v7 + 88);
    LODWORD(STACK[0x4F4]) = 461303953;
    return (*(v5 + 8 * ((39 * (v6 + 461303953 + ((((v4 - 1362) | 0x1A) + 1182679833) & 0xB981BBEF) - 39 < (((v4 - 1362) | 0x1A) ^ 0x135u) * v3 - 1097)) ^ ((v4 - 1362) | 0x1A))))(510551999, a2, 2474273582);
  }

  else
  {
    if (v18 == 1)
    {
      JUMPOUT(0x254460094);
    }

    v8 = (((v15 ^ 0xFF9B2043) + 6610877) ^ ((v15 ^ 0x22D48947) - 584354119) ^ ((v15 ^ 0x43175DFB) - 1125604859)) + (((*(v7 + 72) ^ 0x8934A5B7) + 1993038409) ^ ((*(v7 + 72) ^ 0xC1D3AAAF) + 1043092817) ^ ((*(v7 + 72) ^ 0xD6BFFBE7) + 692061209)) - 2015800673;
    v9 = (((v16 ^ 0xB86B90FB) + 1200910085) ^ ((v16 ^ 0xC1957DD6) + 1047167530) ^ ((v16 ^ 0xE7A619D2) + 408544814)) + (((*(v7 + 76) ^ 0x3DF96D31) - 1039756593) ^ ((*(v7 + 76) ^ 0xFD779197) + 42495593) ^ ((*(v7 + 76) ^ 0x5ED60859) - 1591085145)) - 1586806342;
    *(v7 + 72) = v8 ^ ((v8 ^ 0x1C34D8E7) - 1460908102) ^ ((v8 ^ 0x6FC22087) - 619005990) ^ ((v8 ^ 0x47AC6F3E) - 210438047) ^ ((v8 ^ 0x7F7DFFFF) - 878352222) ^ 0xD57F9C5E;
    *(v7 + 76) = v9 ^ ((v9 ^ 0x83DC0EFB) + 412788409) ^ ((v9 ^ 0x58CA5078) - 1014171588) ^ ((v9 ^ 0xC0D0F6C0) + 1536581252) ^ ((v9 ^ 0x7F7FFFFF) - 466004035) ^ 0xFAE1A343;
    v10 = (((v17 ^ 0xFFB6D05F) + 4796321) ^ ((v17 ^ 0xFE426B7) - 266610359) ^ ((v17 ^ 0x6E0A0217) - 1846149655)) + (((*(v7 + 80) ^ 0xE0EB6D5) - 235845333) ^ ((*(v7 + 80) ^ 0x94896275) + 1802935691) ^ ((*(v7 + 80) ^ 0x4DF205F) - 81731679)) + 1645368547;
    *(v7 + 80) = v10 ^ ((v10 ^ 0x7991BC09) - 1559353068) ^ ((v10 ^ 0x8C8CFB6E) + 1444114037) ^ ((v10 ^ 0x2FA2D278) - 180533405) ^ ((v10 ^ 0xFFDFFFFA) + 624978657) ^ 0xBB389E1A;
    v11 = STACK[0x540];
    v12 = (((LODWORD(STACK[0x4B8]) ^ 0x67FB4072) - 1744519282) ^ ((LODWORD(STACK[0x4B8]) ^ 0x34D88A40) - 886606400) ^ ((LODWORD(STACK[0x4B8]) ^ 0xCD7B3ECD) + 847561011)) + 1302227087 + (((*(v11 + 84) ^ 0xF1BD3147) + 239259321) ^ ((*(v11 + 84) ^ 0x412F979A) - 1093638042) ^ ((*(v11 + 84) ^ 0x2ECA5222) - 785011234));
    *(v11 + 84) = v12 ^ ((v12 ^ 0x826F1A39) + 1836882776) ^ ((v12 ^ 0xBC99E659) + 1401579320) ^ ((v12 ^ 0xC1E5790E) + 787937377) ^ ((v12 ^ 0xEFFFFBFF) + 15497874) ^ 0x8EB48A6E;
    STACK[0x400] -= 320;
    return (STACK[0x438])();
  }
}

uint64_t sub_2544519E0()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 5) ^ 0xA0;
  return (*(v6 + 8 * ((2674 * (v7 == 0)) ^ (v4 - 118))))();
}

uint64_t sub_254451A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29)
{
  v35 = (v30 + 4 * (v29 + v32));
  *v35 = __ROR4__(*(v35 - 3) ^ v34 ^ *(v35 - 8) ^ *(v35 - 14) ^ *(v35 - 16), 31) ^ 0x1E6E67BF;
  return (*(v31 + 8 * ((11 * (v29 + 1 != v33 + 80)) ^ a29)))();
}

uint64_t sub_254451AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v18 - 136) = (v17 + 557) ^ (1037613739 * ((~((v18 - 136) | 0xEB500E6C) + ((v18 - 136) & 0xEB500E6C)) ^ 0xC5ADDCEC));
  *(v18 - 112) = a14;
  *(v18 - 104) = a12;
  *(v18 - 128) = a14;
  *(v18 - 120) = a15;
  v19 = (*(v16 + 8 * (v17 + 664)))(v18 - 136);
  return (*(v16 + 8 * ((84 * (((v15 >> 2) & a11) == v17 + v17 - 765 - 2745)) ^ (v17 + 62))))(v19);
}

void sub_254451BE4(uint64_t a1@<X8>, uint64_t a2)
{
  v7 = v2 + 482;
  v8 = 103 * ((v2 + 482) ^ 0x2D0);
  *(v6 - 116) = v2 + 619 + 1564307779 * ((v6 - 1200467235 - 2 * ((v6 - 120) & 0xB8725355)) ^ 0x2F7F9F46);
  *(v6 - 112) = a1;
  v9 = (v2 + 482) ^ 0xBBA;
  (*(v4 + 8 * v9))(v6 - 120);
  v10 = *(v6 - 120);
  *(v6 - 116) = v7 + 137 + 1564307779 * ((2 * ((v6 - 120) & 0x1BBD07B8) - (v6 - 120) - 465373113) ^ 0x734F3454);
  *(v6 - 112) = v3;
  (*(v4 + 8 * v9))(v6 - 120);
  v11 = ((*(v6 - 120) + v10) * (v8 ^ 0xFE11018B) + *(v6 - 120) * v10 - 156479088) * v5;
  HIDWORD(a2) = (v11 ^ 0x6CFD4ED5) - 1086343184 + ((2 * v11) & 0xD9FA9DAA);
  *(v6 - 112) = (v7 - 260) ^ (1785193651 * ((v6 - 373950789 - 2 * ((v6 - 120) & 0xE9B5F733)) ^ 0xFA691B13));
  *(v6 - 120) = &a2;
  *(v6 - 104) = v3;
  (*(v4 + 8 * (v7 ^ 0xBA7)))(v6 - 120);
  JUMPOUT(0x25445D764);
}

uint64_t sub_254452BB4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7)
{
  a4 = (v9 + 562) ^ (50899313 * ((1215718518 - (&a4 | 0x48766476) + (&a4 | 0xB7899B89)) ^ 0xA3A60612));
  a7 = a1;
  a5 = a3;
  v10 = (*(v8 + 8 * ((v9 - 57) ^ 0xAA8)))(&a4);
  return (*(v8 + 8 * (((a6 != v7) * (2 * (v9 - 57) - 1903)) ^ (v9 - 57))))(v10);
}

uint64_t sub_254452C58@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(*(v5 + 8) + 4 * v2) ^ v4) + v1;
  *(*(a1 + 8) + 4 * v2) = (v8 - (((v3 + 668) ^ 0xC242F72C) & (2 * v8)) + 1629583575) ^ 0x20237396;
  return (*(v7 + 8 * ((92 * (v6 > (v2 + 1))) ^ (v3 + 439))))(866995999);
}

uint64_t sub_254452D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, unsigned int a22, char *a23, int a24)
{
  v25 = 742307843 * (((&a21 | 0x5968BC8D) - &a21 + (&a21 & 0xA6974370)) ^ 0x474A31D8);
  a22 = v25 + 2046340255;
  LODWORD(a23) = 48773732 - v25;
  HIDWORD(a23) = 2059 - v25;
  a24 = v25 ^ 0x7F95312A;
  (*(v24 + 19832))(&a21);
  a23 = &a19;
  a24 = 2066391179 * ((2 * (&a21 & 0x7B729D90) - &a21 + 76374637) ^ 0xABAAE075) + 1791;
  v26 = (*(v24 + 19488))(&a21);
  return (*(v24 + 8 * ((4062 * (a21 == 585076288)) ^ 0x7A5u)))(v26);
}

uint64_t sub_254452EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, __int16 a17, char a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27)
{
  LODWORD(a24) = (v28 + 1238) ^ (((((&a24 | 0xA8EBF36) ^ 0xFFFFFFFE) - (~&a24 | 0xF57140C9)) ^ 0xE15EDD52) * v27);
  a25 = a23;
  a27 = &a18;
  v30 = (*(v29 + 8 * (v28 + 2067)))(&a24);
  return sub_254436024(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_25445307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20)
{
  v23 = a20 < a19;
  if (v23 == v20 > 0x71AE94F0)
  {
    v23 = v20 + (v21 ^ 0x8E516C7C) < a20;
  }

  return (*(v22 + 8 * ((247 * v23) ^ v21)))();
}

uint64_t sub_2544530DC@<X0>(unsigned int a1@<W8>)
{
  v6 = *(v5 - 220 + a1 + 72);
  v7 = ((((v2 - 1065352448) | 0x28304070) - 754009844) ^ a1) + ((2 * a1) & 0x777DFBF8) + v1;
  *(v3 + v7) = (HIBYTE(v6) ^ 0x9E) - ((v6 >> 23) & 0x40) - 96;
  *(v3 + v7 + 1) = (BYTE2(v6) ^ 0x58) - ((v6 >> 15) & 0x40) - 96;
  *(v3 + v7 + 2) = (BYTE1(v6) ^ 0xF4) - 2 * ((BYTE1(v6) ^ 0xF4) & 0x28 ^ BYTE1(v6) & 8) - 96;
  *(v3 + v7 + 3) = v6 ^ 0x5F;
  return (*(v4 + 8 * ((2458 * (a1 + 4 < *(v5 - 128))) ^ v2)))();
}

void sub_2544531C4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v8 = 50899313 * ((((2 * &a3) | 0x4940F114) - &a3 - 614496394) ^ 0x308FE511);
  a3 = v5;
  a4 = (273612181 - v6 - ((62673212 - (v6 << ((((v7 ^ 0x4A) - 6) | 0x40) ^ 0x42))) & 0x4E1A9EE)) ^ v8;
  a5 = v8 + (v7 ^ 0x94A) - 1061;
  (*(a1 + 8 * ((v7 ^ 0x94A) + 350)))(&a3);
  JUMPOUT(0x254434914);
}

uint64_t sub_254453324@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *(v4 + 216) = v2;
  *(a1 + v2) = (&STACK[0x428] ^ 0xBA) * (&STACK[0x428] + 17);
  return (*(v3 + 8 * ((3042 * (v2 == 0)) ^ a2)))();
}

uint64_t sub_25445336C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + v4 - 220 + 8);
  *(v5 - 1) = 0xA0A0A0A0A0A0A0A0;
  *v5 = 0xA0A0A0A0A0A0A0A0;
  return (*(v3 + 8 * ((((((v1 + 2051800608) & 0x85B401AD ^ 0xFFFFFFFFFFFFFF5DLL) & a1) != 16) * (((v1 + 2051800608) & 0x85B401AD) - 59)) ^ (v1 + 2051800608) & 0x85B401AD)))();
}

uint64_t sub_2544534A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = ((((v5 ^ 0x68) + 14) ^ v5 ^ ((v5 ^ 0x3F) + 91)) ^ (((v5 ^ 9) + ((a4 - 77) & 0xFE) + 115) ^ ((v5 ^ ((a4 + 120) | 0x22) ^ 0x26) + 34))) & 0x7F;
  v8 = v6 != 26 && (v6 ^ 0x1Au) < 5;
  return (*(v4 + 8 * ((173 * v8) ^ a4)))();
}

uint64_t sub_2544536D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26, uint64_t a27, int a28)
{
  v34 = (((((v30 - 1491885619) & 0x8EC5F78) - 1887) ^ (v30 - 359115427) & 0x1567A4F9) & a3) + 16;
  v31 = 2066391179 * (((&a25 ^ 0xAB02460 | 0x20039B97) + (&a25 ^ 0x9297 | 0xDFFC6468)) ^ 0xA59734EE);
  a28 = v30 - v31 - 917;
  a25 = v31 + ((a3 - a13 + 1704601733) ^ 0x76FDD577) + ((2 * (a3 - a13 + 1704601733)) & 0xEDFBAAEE) - 374363200;
  a26 = ((v34 ^ 0xBFFDEEB7) + 2134851436 + ((2 * v34) & 0x7FFBDD60)) ^ v31;
  a27 = v28;
  v32 = (*(v29 + 8 * (v30 ^ 0xCF1)))(&a25);
  return (*(v29 + 8 * ((3540 * (*(v28 + 24) == 585076288)) ^ v30)))(v32);
}

uint64_t sub_2544539A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  (*(v23 + 8 * (v26 ^ (v26 + 2367))))(a21 + a23, 0x100004077774924);
  v27 = (*(v23 + 8 * (v24 + v26 + 1806)))();
  *v25 = v27;
  return sub_254453A5C(v27, v28, 1812433253, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void sub_254453B18(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

void Fc3vhtJDvr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_254454160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int *a7)
{
  v10 = (v7 - 1137) | 0x20;
  v11 = (v10 + 845659842) & 0xCD983FDF;
  *v13 = a1;
  *a7 = v14 ^ (a6 - 211) ^ v10;
  v17 = v11 - ((&v17 & 0x5C61B2BA | ~(&v17 | 0x5C61B2BA)) ^ 0x2E332FA9) * v8 + 853;
  v18 = v16;
  (*(v9 + 8 * (v11 + 1936)))(&v17);
  v18 = v15;
  v17 = (v11 ^ 0x584) - (((&v17 | 0xF77B7FF) - &v17 + (&v17 & 0xF0884800)) ^ 0x82DAD513) * v8 + 217;
  (*(v9 + 8 * ((v11 ^ 0x584) + 1300)))(&v17);
  return 0;
}

uint64_t sub_254454814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5) ^ 0xA0;
  return (*(v4 + 8 * (((v5 == 0) * (((v3 - 170) | 0x100) + 1793)) ^ v3)))();
}

uint64_t sub_2544549DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = -542396526 - 1388665877 * (((&a15 | 0x87EB4F9F) + (~&a15 | 0x7814B060)) ^ 0xA462D72);
  v18 = (*(v17 + 19416))(&a15);
  return (*(v17 + 8 * ((1636 * (a16 == v16)) ^ 0x142u)))(v18);
}

void sub_254454A68(_DWORD *a1)
{
  v1 = *a1 - 843532609 * (((a1 ^ 0x88EA6F2) & 0xE4B4B0D1 | ~(a1 ^ 0x88EA6F2 | 0xE4B4B0D1)) ^ 0x4F88BD59);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_254454B2C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x244] + a2 + 72);
  v7 = (((2 * v3) ^ 0x777B7114) & (2 * a2)) + (a2 ^ 0xBBBDBB7D) + v2;
  *(a1 + v7) = (HIBYTE(v6) ^ 0x9E) - ((v6 >> 23) & 0x40) - 96;
  *(a1 + v7 + 1) = (BYTE2(v6) ^ 0x58) - ((v6 >> 15) & 0x40) - 96;
  *(a1 + v7 + 2) = (BYTE1(v6) ^ 0xF4) - 2 * ((BYTE1(v6) ^ 0xF4) & 0x28 ^ BYTE1(v6) & 8) - 96;
  *(a1 + v7 + 3) = v6 ^ 0x5F;
  return (*(v5 + 8 * (((a2 + 4 < LODWORD(STACK[0x2A0])) * v4) ^ v3)))();
}

uint64_t sub_254454C04@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = v28 + 276;
  v32 = (*(v30 - 172) ^ (a1 + 90)) & a28;
  v33 = ((v28 + 276) ^ 0xC25AB285) & (2 * (a28 ^ 0x1AC74677)) ^ ((2 * (a28 ^ 0x1AC74677)) ^ 0x84B5673E) & (a28 ^ 0x1AC74677);
  v34 = (v33 ^ 0x80102301) & (4 * ((a28 ^ 0x9ADDE5E7) & (2 * v32) ^ v32)) ^ (a28 ^ 0x9ADDE5E7) & (2 * v32) ^ v32;
  v35 = ((4 * (v33 ^ 0x424A9081)) ^ 0x96ACE7C) & (v33 ^ 0x424A9081) ^ (4 * (v33 ^ 0x424A9081)) & 0xC25AB39C;
  v36 = (v35 ^ 0x4A8203) & (16 * v34) ^ v34;
  v37 = ((16 * (v35 ^ 0xC2103183)) ^ 0x25AB39F0) & (v35 ^ 0xC2103183) ^ (16 * (v35 ^ 0xC2103183)) & 0xC25AB390;
  v38 = v36 ^ 0xC25AB39F ^ (v37 ^ 0xA3100) & (v36 << 8);
  v39 = a28 ^ (2 * ((v38 << 16) & 0x425A0000 ^ v38 ^ ((v38 << 16) ^ 0x339F0000) & (((v37 ^ 0xC250820F) << 8) & 0x425A0000 ^ 0x480000 ^ (((v37 ^ 0xC250820F) << 8) ^ 0x5AB30000) & (v37 ^ 0xC250820F))));
  v40 = (v31 + 135) | 0x208;
  *(v30 - 172) = v40;
  v41 = v40 - 932;
  v43 = v39 == 1478267606 || (v39 & 0xF) != v41;
  v44 = *(v29 + 8 * ((((v31 - 92) ^ v43) & 1 | (32 * (((v31 - 92) ^ v43) & 1))) ^ v31));
  *(v30 - 176) = -42899;
  return v44();
}

uint64_t sub_254454DA8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, uint64_t a14, uint64_t a15, unint64_t a16, int a17, int a18)
{
  v24 = v18 - 314;
  *a13 = a1;
  LODWORD(STACK[0x28C]) = a18;
  STACK[0x290] = a16;
  LODWORD(STACK[0x298]) = a17 - v22 + 457955448;
  STACK[0x2A0] = v19 + (v22 - 912550143);
  v25 = v18;
  v26 = (*(v21 + 48 * v23 + 8))(a6);
  return (*(v20 + 8 * (((v26 + 585076288 - ((v24 ^ 0x45BF1D62) & (2 * v26)) == 585076288) * (v25 + 1026)) ^ v25)))();
}

uint64_t sub_254454F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v4 - 384091779) & 0xAD8B62FD) - 245;
  v7 = *(a2 + v6 + v3 - 31);
  v8 = a1 + v6 + v3;
  *(v8 - 15) = *(a2 + v6 + v3 - 15);
  *(v8 - 31) = v7;
  return (*(v5 + 8 * ((1115 * ((v3 & 0xFFFFFFE0) == 32)) ^ (v2 + v4 + 771))))();
}

uint64_t sub_25445506C(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v9 + 2;
  v15 = v11 + 2;
  v16 = vaddq_s8(vsubq_s8(*v14, vandq_s8(vaddq_s8(*v14, *v14), a1)), a2);
  v15[-1] = vaddq_s8(vsubq_s8(v14[-1], vandq_s8(vaddq_s8(v14[-1], v14[-1]), a1)), a2);
  *v15 = v16;
  return (*(v13 + 8 * (((v10 != 32) * v12) ^ (a8 + v8 + 463))))();
}

uint64_t sub_25445508C@<X0>(uint64_t a1@<X8>)
{
  v11 = v1 + v5 + (*(*(v9 + 8) + 4 * v2) ^ v6);
  *(*(a1 + 8) + 4 * v2) = v11 + v6 - ((v8 + (v4 ^ v3) - 1218) & (2 * v11));
  return (*(v7 + 8 * (v4 | (4 * (v2 + 1 == v10)))))();
}

uint64_t sub_2544550E0@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v5 = vmovl_u8(a2).u64[0];
  *(a1 - 4 + v2) = vuzp1_s8(v5, v5).u32[0];
  return (*(v4 + 8 * ((247 * ((((((v3 + 622543955) & 0xDAE4BB7B) + 279) ^ (((((v3 + 622543955) & 0xDAE4BB7B) - 623) & v2) == 4)) & 1) == 0)) ^ (v3 + 622543955) & 0xDAE4BB7B)))();
}

_DWORD *sub_25445514C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if ((v2 + v5 - 1) >= 0x7FFFFFFF)
  {
    v7 = ((v6 - 483258067) & 0x1CCDEEB7) - v4;
  }

  else
  {
    v7 = v3;
  }

  *(a2 + 4) = v7;
  *result = 1025405994;
  return result;
}

uint64_t sub_254455208@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, char a4@<W4>, int a5@<W8>)
{
  v11 = v8 - 1;
  *(a1 + v11) = *(v10 + v11) ^ *(v5 + (v11 & 0xF)) ^ *((v11 & 0xF) + v6 + 2) ^ ((v11 & 0xF) * a4) ^ *(v7 + (v11 & 0xF)) ^ a3;
  return (*(v9 + 8 * ((15 * (v11 != ((459 * (a5 ^ 0xD5u)) ^ a2))) ^ a5)))();
}

uint64_t sub_254455274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x3CC]) = 2;
  STACK[0x440] = 0;
  LODWORD(STACK[0x394]) = 0;
  LODWORD(STACK[0x4CC]) = 0;
  return (*(v65 + 8 * ((((v64 & 2) == ((2 * a8) ^ 0x764) - 1622) * (a8 - 116)) ^ a8)))(a1, a2, a3, a4, a5, a64 + 2048, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_254455328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, char *a17, int a18)
{
  v21 = 742307843 * (((&a15 | 0x664CA9AE) - (&a15 & 0x664CA9AE)) ^ 0x786E24FB);
  HIDWORD(a17) = v20 - v21 + 1670;
  a18 = v21 ^ 0x7F95312A;
  a16 = v21 + 2046340255;
  LODWORD(a17) = 48773732 - v21;
  (*(v18 + 8 * (v20 + 2090)))(&a15);
  a18 = v20 + 2066391179 * (((&a15 | 0x51AE5FF2) - &a15 + (&a15 & 0xAE51A008)) ^ 0xFE89DDEA) + 1402;
  a17 = &a11;
  v22 = (*(v18 + 8 * (v20 + 2047)))(&a15);
  return (*(v18 + 8 * ((1136 * (a15 == (v20 ^ (v19 + 389)))) ^ v20)))(v22);
}

void sub_254455438(uint64_t a1)
{
  v2 = off_286663B10 - 4;
  v3 = off_286663980 - 8;
  v4 = *(&off_286663530 + (*(off_286663980 + (*(off_286663B10 + (-35 * ((qword_27F5F9C50 + dword_27F5F9E00) ^ 0xD2)) - 4) ^ 0xA4u) - 8) ^ (-35 * ((qword_27F5F9C50 + dword_27F5F9E00) ^ 0xD2))) + 18);
  v5 = *(v4 - 4);
  v6 = *(&off_286663530 + (*(off_2866639E8 + (*(off_2866636E0 + (-35 * ((qword_27F5F9C50 - v5) ^ 0xD2))) ^ 0x41u) - 8) ^ (-35 * ((qword_27F5F9C50 - v5) ^ 0xD2))) - 65);
  v7 = v5 ^ &v11 ^ *(v6 - 4);
  v8 = (1865875933 * v7) ^ 0x1E71746347E125D2;
  v9 = 1865875933 * (v7 ^ 0x1E71746347E125D2);
  *(v4 - 4) = v8;
  *(v6 - 4) = v9;
  LODWORD(v6) = *(v4 - 4);
  v10 = *(&off_286663530 + ((-35 * (dword_27F5F9E00 ^ 0xD2 ^ qword_27F5F9C50)) ^ byte_25448EB30[byte_254489B80[(-35 * (dword_27F5F9E00 ^ 0xD2 ^ qword_27F5F9C50))] ^ 0x30]) - 4) - 8;
  (*&v10[8 * (*(off_2866636F0 + (*(off_286663A98 + (-35 * (v6 ^ 0xD2 ^ v9)) - 12) ^ 0x5Cu) - 8) ^ (-35 * (v6 ^ 0xD2 ^ v9))) + 17152])(*(&off_286663530 + ((-35 * ((v9 + v6) ^ 0xD2)) ^ v3[v2[(-35 * ((v9 + v6) ^ 0xD2))] ^ 0x61]) + 118) - 4, sub_254423940);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_254455674@<X0>(int a1@<W2>, int a2@<W3>, unsigned int a3@<W8>)
{
  v6 = *(v5 + 48 * v3 + 36);
  v8 = v6 != a1 && (a3 ^ 0x6E1 ^ (a2 - 415)) + v6 < a3 + 2147482557;
  return (*(v4 + 8 * ((21 * v8) ^ a3)))();
}

uint64_t sub_2544557E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

void sub_254455A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a63 + 1560) = **(v63 + 272);
  *(a63 + 1552) = **(v63 + 200);
  v64 = *(v63 + 24);
  *(*v64 + 488) = *(a55 + 8);
  *(*v64 + 480) = *a55;
  JUMPOUT(0x254455A90);
}

uint64_t sub_254455C10()
{
  v5 = *(*(v1 + 40) + v0) - *(v4 + v0);
  v6 = (v5 ^ 0x3BDF3FFB) + ((2 * v2) ^ 0xFD61C76C) + ((2 * v5) & 0x77BE7FF6);
  v8 = v0 == 15 || v6 != 960564969;
  return (*(v3 + 8 * ((7 * v8) ^ v2)))();
}

void sub_254455CD0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12) - 50899313 * ((-2 - ((a1 | 0xB0C40541) + (~a1 | 0x4F3BFABE))) ^ 0x5B146725);
  v3 = *a1;
  v5 = v1 - 2066391179 * (((&v3 | 0xDD4C64B3) - (&v3 & 0xDD4C64B3)) ^ 0x726BE6AB) - 114;
  v2 = *(&off_286663530 + v1 - 925) - 8;
  (*&v2[8 * (v1 ^ 0xA44)])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_254455DF8()
{
  v5 = 742307843 * ((v1 - 144) ^ 0xB39CDD6B1E228D55);
  v2 = *off_286663A48;
  *(v1 - 144) = v5;
  *(v1 - 112) = -1963702373 - v5;
  *(v1 - 108) = v5 - 1963702291;
  *(v1 - 136) = v2 + v5;
  *(v1 - 128) = v5;
  *(v1 - 120) = v5 ^ 0x86F54BA0;
  *(v1 - 116) = v5 - 1963702392;
  v3 = (*(v0 + 19272))(v1 - 144);
  return (*(v0 + 8 * *(v1 - 104)))(v3);
}

void sub_25445610C()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *(&off_286663530 + (*(off_2866638B0 + (*(off_286663658 + (-35 * ((qword_27F5F9C50 - dword_27F5F9C60) ^ 0xD2)) - 8) ^ 0xCDu) - 12) ^ (-35 * ((qword_27F5F9C50 - dword_27F5F9C60) ^ 0xD2))) + 16);
  v1 = *(v0 - 4);
  v2 = *(&off_286663530 + ((-35 * (v1 ^ qword_27F5F9C50 ^ 0xD2)) ^ *(off_2866638B0 + (*(off_286663658 + (-35 * (v1 ^ qword_27F5F9C50 ^ 0xD2)) - 8) ^ 0x81u) - 12)) - 78);
  v3 = 1865875933 * ((*(v2 - 4) + v1) ^ &v8 ^ 0x1E71746347E125D2);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  LOBYTE(v3) = -35 * ((v3 + *(v0 - 4)) ^ 0xD2);
  **(&off_286663530 + (*(off_286663980 + *(off_286663B10 + v3 - 4) - 8) ^ v3) - 103) = 585076288;
  v4 = off_2866639A0 - 12;
  v5 = off_2866638D8 - 4;
  v6 = *(&off_286663530 + ((-35 * ((qword_27F5F9C50 + dword_27F5F9C60) ^ 0xD2)) ^ byte_25448E830[byte_254489A80[(-35 * ((qword_27F5F9C50 + dword_27F5F9C60) ^ 0xD2))] ^ 0xE4]) + 61) - 8;
  v7 = (*&v6[8 * (*(off_2866638D8 + (*(off_2866639A0 + (-35 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xD2)) - 12) ^ 0xAEu) - 4) ^ (-35 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xD2))) + 18576])(512, 0x100004077774924);
  *(*(&off_286663530 + ((-35 * (*(v0 - 4) ^ 0xD2 ^ *(v2 - 4))) ^ v5[v4[(-35 * (*(v0 - 4) ^ 0xD2 ^ *(v2 - 4)))] ^ 0xAE]) - 40) - 4) = v7;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_25445635C()
{
  v11 = v9;
  v12 = &v7;
  LODWORD(v10) = (v4 - 497) ^ (50899313 * (((&v10 | 0xC5EFC192) - &v10 + (&v10 & 0x3A103E68)) ^ 0xD1C05C09));
  (*(v1 + 8 * (v4 + 332)))(&v10);
  HIDWORD(v11) = (v4 - 1140) ^ ((((&v10 | 0xCF5B26D7) + (~&v10 | 0x30A4D928)) ^ 0x42F6443A) * v2);
  v10 = v9;
  (*(v1 + 8 * (v4 ^ 0x15Fu)))(&v10);
  if (v11 == (v3 ^ (v0 - 517)))
  {
    v5 = v7;
  }

  else
  {
    v5 = v11;
  }

  v11 = v9;
  LODWORD(v10) = v4 - (((&v10 | 0xD86E12C8) - (&v10 & 0xD86E12C8)) ^ 0x55C37024) * v2 - 777;
  (*(v1 + 8 * (v4 ^ 0x172u)))(&v10);
  LODWORD(v10) = v3 - ((((2 * &v10) | 0xDAC1614C) - &v10 + 312430426) ^ 0x60CDD24A) * v2 + 681;
  v11 = v8;
  (*(v1 + 8 * (v3 + 1764)))(&v10);
  return v5 ^ v0;
}

uint64_t sub_2544565F0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  v17 = &a14 + a1;
  *v17 = 0xA0A0A0A0A0A0A0A0;
  *(v17 + 1) = 0xA0A0A0A0A0A0A0A0;
  LODWORD(v17) = ((v15 - 1935754256) & 0x73613FAB) - 915 != (((v15 - 6) - 2065) & v14);
  return (*(v16 + 8 * ((2 * v17) | (4 * v17) | (v15 - 6))))();
}

uint64_t sub_254456658(uint64_t a1)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v4 + v5);
  return (*(v3 + 8 * (((v1 + 107) ^ (v5 == 0)) & 1 | (16 * (((v1 + 107) ^ (v5 == 0)) & 1)) | (v1 - 368))))();
}

uint64_t sub_2544566D8(int a1)
{
  v4 = ((a1 - 235) | 0xBAu) + v1 + (((a1 - 203) | 0x9Au) ^ 0xFFFFFFFFFFFFFFFDLL);
  v5 = v1 + 3552647805 < v2;
  if (v2 < 0xD3C11A7C != v4 > 0xFFFFFFFF2C3EE583)
  {
    v5 = v2 < 0xD3C11A7C;
  }

  return (*(v3 + 8 * ((477 * v5) ^ a1)))();
}

uint64_t sub_254456754@<X0>(uint64_t a1@<X1>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, unint64_t *))
{
  v17 = (a1 + v15);
  *v17 = a2;
  v17[1] = v13;
  v17[2] = v14;
  *(v15 + a1 + a5 - 25) = v16;
  return sub_254424774(a1, a5, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void sub_254456A90()
{
  *(v2 - 144) = v3;
  v4 = *(&off_286663530 + (v1 ^ 0x4D7)) - 4;
  v5 = v4[v0[3] ^ 0xDELL] ^ v0[3];
  v6 = *(&off_286663530 + (v1 ^ 0x4CA)) - 12;
  v7 = (v6[(v0[4] ^ (((v1 - 18) | 0x8A) + 12))] << 24) - 2013265920;
  v8 = *(&off_286663530 + (v1 ^ 0x42C)) - 4;
  v9 = v8[v0[14] ^ 0x82];
  v10 = *(&off_286663530 + v1 - 971) - 8;
  v11 = v10[v0[5] ^ 0x6DLL] << 16;
  v12 = ((((v8[v0[6]] << 8) ^ 0x484F3879) & (v7 ^ 0xDDCFFFFB) | v7 & 0xB7000000) ^ 0xFF47E749) & (v11 ^ 0xFFFDFFFF);
  v13 = v11 & 0xFFF7FFFF;
  LOBYTE(v11) = (v0[15] - ((2 * v0[15]) & 0xCA) + 101) ^ v4[v0[15] ^ 0xFDLL];
  v14 = (v6[v0[8] ^ 0x70] << 24) - 2013265920;
  v15 = v10[v0[13] ^ 0xC7];
  v16 = ((v8[v0[10] ^ 0x48] << 8) ^ 0x40578A7D) & ~v14 | v14 & 0xBFFFFFFF;
  v17 = v4[v0[11] ^ 0xD3] ^ v0[11];
  v18 = ((v10[v0[1] ^ 0x40] << 16) ^ 0x2256A0F5) & (v5 ^ 0xFAFFB037);
  v19 = v18 | v5 & 0xA;
  v20 = (v6[v0[12] ^ 0xBDLL] - 120) ^ 0x1B;
  v21 = ((v6[v0[12] ^ 0xBDLL] - 120) ^ 0x1B) << 24;
  v22 = v8[v0[2] ^ 0x87];
  LODWORD(v8) = ((v15 << 16) ^ 0x93979F80) & ~v21;
  v23 = ((v8 | v21 & 0x6C000000) ^ 0x6C65607F) & (((v11 & 7 ^ 0x174FF04) & ((v9 << 8) ^ 0x174F907) | v11 & 0xF8) ^ 0xFDF3C395);
  LODWORD(v10) = (v10[v0[9] ^ 0x7CLL] ^ 0xE3) << 16;
  v24 = v10 & 0x470000 | ((v17 & 1 | 0x304EDE42) ^ (v17 ^ 0xFFFFFFC2) & (v16 ^ 0x1BA12383)) & ~v10;
  v25 = ((((v22 << 8) ^ 0xF35B320B) & (v19 ^ 0xD1A65FB8) | v18 & 0xA400F4) ^ 0xF3FBACFF) + (((v6[*v0 ^ 9] - 120) ^ 0x85) << 24);
  v26 = (v0[7] + (~(2 * v0[7]) | 0x35) + 102) ^ v4[v0[7] ^ 0x2FLL];
  v27 = v23 ^ v8 & 0x3780000;
  v28 = v26 & 0x21 | (v13 ^ 0xD50135EE ^ v12) & ~v26;
  *(v2 - 160) = v28;
  v29 = v28 ^ 0x442B488C;
  v30 = *(&off_286663530 + (v1 ^ 0x431)) - 8;
  v31 = *&v30[4 * (v15 ^ 0x8D)];
  HIDWORD(v32) = v31 ^ 0x4DD5E3E;
  LODWORD(v32) = v31 ^ 0xAAAAAAAA;
  v33 = *(&off_286663530 + (v1 & 0x1CBEE123));
  v34 = -219980569 * *(v33 + 4 * (v20 ^ 0xB4u)) + 1967459632;
  v35 = v11 ^ 0x78u;
  v36 = *(&off_286663530 + v1 - 987) - 4;
  LODWORD(v15) = *&v36[4 * v35];
  v37 = v9 ^ 0x2B;
  v38 = *(&off_286663530 + v1 - 1029) - 12;
  v39 = *&v38[4 * v37];
  *(v2 - 152) = v25;
  *(v2 - 148) = v24;
  v40 = v25 ^ (v32 >> 27) ^ (690312999 * v15 - 2129320617) ^ v34 ^ (-36060539 * v39 - 984278238) ^ 0x1A;
  *(v2 - 168) = v40 ^ v29;
  v41 = v24 ^ 0x72B863BD ^ v40 ^ v29;
  *(v2 - 156) = v27;
  v42 = v41 ^ v27;
  v43 = *&v30[4 * (((v42 ^ 0x9EC65823) >> 16) ^ 0x6B)];
  HIDWORD(v32) = v43 ^ 0x4DD5E3E;
  LODWORD(v32) = v43 ^ 0xAAAAAAAA;
  v44 = (690312999 * *&v36[4 * (v42 ^ 0x62)] - 2129320617) ^ (v32 >> 27) ^ (-36060539 * *&v38[4 * (((v42 ^ 0x5823) >> 8) ^ 0xAF)] - 984278238) ^ (-219980569 * *(v33 + 4 * (HIBYTE(v42) ^ 0xBF)) + 1967459632);
  *(v2 - 176) = v42;
  *(v2 - 172) = v41;
  *(v2 - 164) = v40;
  *(v2 - 180) = v44 ^ v29;
  JUMPOUT(0x254457680);
}

uint64_t sub_254458DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v24 = (v18 - 1413163974) & 0x543B2EF7;
  v25 = 1037613739 * (((~(v23 - 120) & 0x41C4CE94) - (~(v23 - 120) | 0x41C4CE95)) ^ 0x90C6E3EA);
  *(v23 - 120) = ((v19 ^ 0x2FDFEEFE) - 570541664 + ((v24 + 1606407977) & (2 * v19))) ^ v25;
  *(v23 - 112) = &a18;
  *(v23 - 104) = v25 + v18 - 606;
  (*(v20 + 8 * (v18 ^ 0xAE8)))(v23 - 120);
  *(v23 - 112) = &a16;
  *(v23 - 104) = a15;
  *(v23 - 120) = (v24 - 1003) ^ (((((v23 - 120) | 0xCEEDB92B) - (v23 - 120) + ((v23 - 120) & 0x311246D0)) ^ 0x92A0EDAE) * v21);
  v26 = (*(v20 + 8 * (v24 ^ 0xF84)))(v23 - 120);
  return (*(v20 + 8 * ((13 * (((((v18 + 58) & 0xF7) + 28) ^ (*(v23 - 116) > v22)) & 1)) ^ v24)))(v26);
}

uint64_t sub_254459180@<X0>(uint64_t a1@<X8>)
{
  v7 = 461 * (v3 ^ 0x16D);
  v8 = (v7 ^ 0x39B) + v5;
  *(*(a1 + 8) + 4 * (v5 + v1)) = v6 ^ v4;
  v9 = (v7 + 1691123621) & 0x9B337EE7;
  *(a1 + 4) = v8;
  v10 = (v9 ^ (v1 + 481)) + v8;
  if (v10 < 0)
  {
    v10 = -v10;
  }

  v11 = ((v10 ^ 0x7EFFCFD5) + ((2 * v10) & 0xFDFF9FAA) - 2130694102) > ((v9 + 154) ^ 0xFFFFFD3E);
  return (*(v2 + 8 * (((4 * v11) | (8 * v11)) ^ v9)))();
}

uint64_t sub_2544593E0(unint64_t a1, double a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v13 = (v12 + (v8 + v7));
  v14 = *v13;
  v15 = v13[1];
  v16 = (&STACK[0x244] + v8);
  *v16 = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a6)), a7);
  v16[1] = vaddq_s8(vsubq_s8(v15, vandq_s8(vaddq_s8(v15, v15), a6)), a7);
  return (*(v11 + 8 * ((((((v9 - 1282) | v10) ^ a1) + v8 != 64) * a1) | v9)))();
}

uint64_t sub_254459630@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, int a3@<W8>)
{
  v6 = v3 + (a3 ^ v4) - 1726;
  *(a1 + v6) = *(a2 + v6) - ((2 * *(a2 + v6)) & 0x40) - 96;
  return (*(v5 + 8 * ((a3 - 1477) | (4 * (v6 != 0)))))();
}

uint64_t sub_254459A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, char *a20, unsigned int a21)
{
  if (a10 >= (v24 ^ 0x205467A6u))
  {
    v25 = -237578219;
  }

  else
  {
    v25 = -1326587410;
  }

  v26 = 1564307779 * (&a16 ^ 0x970DCC13);
  a18 = v22 - v26 - 2013067436;
  a19 = -114228803 - v26;
  a21 = v25 - v26;
  a16 = a12;
  a20 = &a13;
  v27 = (*(v23 + 8 * (v22 ^ 0xA03)))(&a16);
  return (*(v23 + 8 * (((a17 == v21) * ((v22 - 1834536337) & 0x395 ^ 0x7CA)) ^ v22)))(v27);
}

uint64_t sub_254459B5C@<X0>(uint64_t a1@<X8>)
{
  v10 = (((v2 + 671879070) & 0xD7F3F7E2) - 2001) & v7;
  *(v8 + v7) = *(v1 + v7) ^ *(v3 + v10) ^ *(v10 + v5 + 5) ^ *(v10 + v4 + 2) ^ (89 * ((((v2 - 98) & 0xE2) + 47) & v7)) ^ 0xA0;
  return (*(v9 + 8 * ((212 * (((v7 + 1) ^ a1) != v6)) ^ v2)))();
}

uint64_t sub_254459CD0()
{
  v0.n128_u64[0] = 0x4040404040404040;
  v0.n128_u64[1] = 0x4040404040404040;
  v1.n128_u64[0] = 0xA0A0A0A0A0A0A0A0;
  v1.n128_u64[1] = 0xA0A0A0A0A0A0A0A0;
  return sub_254459D04(v0, v1);
}

uint64_t sub_254459D04@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = ~v7 + v4;
  v12 = *(a1 + v11 - 15);
  v13 = *(a1 + v11 - 31);
  v14 = v3 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a2)), a3);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  return (*(v10 + 8 * (((v8 + v7 == v5) * v9) ^ v6)))();
}

void sub_254459DE8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) - 50899313 * ((2 * (a1 & 0x166522FE) - a1 - 375726847) ^ 0xFDB5409A);
  if (*(*(a1 + 8) + 4) - 742196933 >= 0)
  {
    v2 = *(*(a1 + 8) + 4) - 742196933;
  }

  else
  {
    v2 = 742196933 - *(*(a1 + 8) + 4);
  }

  if (*(*a1 + 4) - 742196933 >= 0)
  {
    v3 = *(*a1 + 4) - 742196933;
  }

  else
  {
    v3 = 742196933 - *(*a1 + 4);
  }

  v7 = *(a1 + 8);
  v6[1] = v1 + 1564307779 * (((v6 | 0x26D6EE91) + (~v6 | 0xD929116E)) ^ 0xB1DB2283) - 132;
  v4 = *(&off_286663530 + (v1 ^ 0x3A1)) - 8;
  (*&v4[8 * (v1 ^ 0xA85)])(v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_254459F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int32x4_t a18, int32x4_t a19)
{
  a18 = vdupq_n_s32(0x41020B41u);
  a19 = a18;
  v21 = 5 * (v19 ^ 0x83Fu) - 1471;
  v22 = *(v20 + 8 * ((((a2 & 0xFFFFFFF8) == 8) * v21) ^ (v19 - 1395)));
  return v22(a1, a2, &a18, v21, 8, v22, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_25445A130(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  HIDWORD(v16) = a1 ^ 0x658F4FF;
  LODWORD(v16) = a1 ^ v15;
  v17 = (v16 >> 27) + (a2 ^ v12) + ((v12 + (v6 ^ v8) - ((2 * (v6 ^ v8)) & 0x3CB1E9FE)) ^ v5) - 184399299 + (*(v10 + 4 * ((v7 ^ 0x760u ^ (v11 - 505)) + a5)) ^ v13);
  return (*(v9 + 8 * ((2145 * (a5 + 1 == v14 + 80)) ^ v7)))(v17 ^ ((v17 ^ 0x20317F97) - 179238896) ^ ((v17 ^ 0x8E12110D) + 1534224022) ^ ((v17 ^ 0xFB431BA3) + 774073404) ^ ((v17 ^ 0x7FFFFD5E) - 1432384825) ^ 0xB4C77C98, v5);
}

uint64_t sub_25445A250()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = off_286663B10 - 4;
  v1 = off_286663980 - 8;
  v2 = *(&off_286663530 + (*(off_286663980 + *(off_286663B10 + (-35 * ((qword_27F5F9C50 - dword_27F5F9C58) ^ 0xD2)) - 4) - 8) ^ (-35 * ((qword_27F5F9C50 - dword_27F5F9C58) ^ 0xD2))) - 3);
  v3 = *(&off_286663530 + ((-35 * ((qword_27F5F9C50 - *v2) ^ 0xD2)) ^ byte_25448E730[byte_254489980[(-35 * ((qword_27F5F9C50 - *v2) ^ 0xD2))] ^ 9]) - 117);
  v4 = (*(v3 - 4) + *v2) ^ &v12;
  v5 = 1865875933 * v4 - 0x391B123DE35E87B6;
  v6 = 1865875933 * (v4 ^ 0x1E71746347E125D2);
  *v2 = v5;
  *(v3 - 4) = v6;
  LOBYTE(v6) = -35 * (*v2 ^ 0xD2 ^ v6);
  v14 = *(&off_286663530 + (*(off_2866638D8 + (*(off_2866639A0 + v6 - 12) ^ 0x49u) - 4) ^ v6) - 23) - 4;
  v13[0] = (2066391179 * (((v13 | 0x8101ABD9) - v13 + (v13 & 0x7EFE5420)) ^ 0x2E2629C1)) ^ 0x28F;
  v7 = *(&off_286663530 + ((-35 * ((qword_27F5F9C50 + dword_27F5F9C58) ^ 0xD2)) ^ byte_2544922D0[byte_25448EA30[(-35 * ((qword_27F5F9C50 + dword_27F5F9C58) ^ 0xD2))] ^ 0xA4]) - 95) - 8;
  (*&v7[8 * ((-35 * ((*(v3 - 4) - *v2) ^ 0xD2)) ^ v1[v0[(-35 * ((*(v3 - 4) - *v2) ^ 0xD2))] ^ 0x61]) + 18920])(v13);
  v8 = off_286663658 - 8;
  v9 = off_2866638B0 - 12;
  v14 = *(&off_286663530 + (*(off_2866638B0 + (*(off_286663658 + (-35 * ((*(v3 - 4) + *v2) ^ 0xD2)) - 8) ^ 0xCDu) - 12) ^ (-35 * ((*(v3 - 4) + *v2) ^ 0xD2))) + 67);
  v13[0] = (2066391179 * (((v13 | 0x6A2FB481) - (v13 & 0x6A2FB481)) ^ 0xC5083699)) ^ 0x28F;
  (*&v7[8 * (*(off_2866639E8 + (*(off_2866636E0 + (-35 * ((*(v3 - 4) - *v2) ^ 0xD2))) ^ 0xE4u) - 8) ^ (-35 * ((*(v3 - 4) - *v2) ^ 0xD2))) + 19128])(v13);
  v10 = 50899313 * (v13 ^ 0x142F9D9B);
  LOBYTE(v13[0]) = 43 - v10;
  v13[1] = 610 - v10;
  return (*&v7[8 * ((-35 * ((*(v3 - 4) + *v2) ^ 0xD2)) ^ v9[v8[(-35 * ((*(v3 - 4) + *v2) ^ 0xD2))] ^ 0x81]) + 18880])(v13);
}

void sub_25445AAF4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = (v5 ^ 0x71F7F58DEFFDBECBLL) - 0x3318969D8A68ALL + ((v5 << (a4 ^ 0xE1u)) & 0x196);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_25445AC38(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = ~v14 + v11;
  v17 = *(v8 + v16 - 15);
  v18 = *(v8 + v16 - 31);
  v19 = a8 + v16;
  *(v19 - 15) = v17;
  *(v19 - 31) = v18;
  return (*(v15 + 8 * (((v14 + (v13 ^ v10) - 2321 == v12) * a1) ^ (v9 + v13 + 2143))))();
}

void sub_25445AD94(int a1@<W8>)
{
  LODWORD(STACK[0x4B8]) = v2;
  LODWORD(STACK[0x4F4]) = 461304033;
  v6 = STACK[0x540];
  v7 = ((*(v6 + 88) ^ 0x439E18F8) + ((v3 + 322075401) & 0xECCD86F7 ^ 0xBC61E15E)) ^ ((*(v6 + 88) ^ 0x4939DCDA) - 1228528858) ^ ((*(v6 + 88) ^ 0x94FF30DD) + 1795215139);
  LODWORD(STACK[0x46C]) = v1;
  v8 = (((v1 ^ 0x4B0A62DF) - 1258971871) ^ ((v1 ^ 0x5F0A8398) - 1594524568) ^ ((v1 ^ 0x8A5815B8) + 1973938760)) + 1807331906 + v7;
  *(v6 + 88) = v8 ^ ((v8 ^ 0x9A37F6CE) + 1255129462) ^ ((v8 ^ 0x5B6BE751) - 1953246997) ^ ((v8 ^ 0x11A42634) - 1050930800) ^ ((v8 ^ 0xFFFFFFEF) + 789039189) ^ 0xB15F3CBB;
  LODWORD(STACK[0x49C]) = a1;
  LODWORD(STACK[0x504]) = v5;
  LODWORD(STACK[0x4A8]) = v4;
  JUMPOUT(0x25445AF24);
}

uint64_t sub_25445B410(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, int8x16_t *a6)
{
  v11 = (v10 + v6);
  v12 = vaddq_s8(vsubq_s8(v11[1], vandq_s8(vaddq_s8(v11[1], v11[1]), a4)), a1);
  *a6 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a4)), a1);
  a6[1] = v12;
  return (*(v8 + 8 * (v9 + v7 + 1173)))();
}

uint64_t sub_25445B478@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0x40) - 96;
  return (*(v1 + 8 * (((v6 == 0) * v4) ^ v5)))(0);
}

void gLg1CWr7p()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *(&off_286663530 + ((-35 * (dword_27F5F9C68 ^ 0xD2 ^ qword_27F5F9C50)) ^ byte_25448E730[byte_254489980[(-35 * (dword_27F5F9C68 ^ 0xD2 ^ qword_27F5F9C50))] ^ 0xF6]) - 164);
  v1 = *(&off_286663530 + (*(off_2866639E8 + (*(off_2866636E0 + (-35 * ((qword_27F5F9C50 + *v0) ^ 0xD2))) ^ 0xE4u) - 8) ^ (-35 * ((qword_27F5F9C50 + *v0) ^ 0xD2))) + 13);
  v2 = &v4[*(v1 - 4) - *v0];
  *v0 = (1865875933 * v2) ^ 0x1E71746347E125D2;
  *(v1 - 4) = 1865875933 * (v2 ^ 0x1E71746347E125D2);
  v5[0] = -542396526 - 1388665877 * (((v5 | 0x1A1A5330) - v5 + (v5 & 0xE5E5ACC8)) ^ 0x97B731DC);
  LOBYTE(v1) = -35 * ((*(v1 - 4) - *v0) ^ 0xD2);
  v3 = *(&off_286663530 + ((-35 * (dword_27F5F9C68 ^ 0xD2 ^ qword_27F5F9C50)) ^ byte_25448E730[byte_254489980[(-35 * (dword_27F5F9C68 ^ 0xD2 ^ qword_27F5F9C50))] ^ 0xF6]) - 134) - 8;
  (*&v3[8 * (*(off_286663980 + (*(off_286663B10 + v1 - 4) ^ 0xC3u) - 8) ^ v1) + 18400])(v5);
  __asm { BRAA            X8, X17 }
}

void sub_25445B784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v16 - 112) = (v15 + 217) ^ (1785193651 * ((549613448 - ((v16 - 120) | 0x20C26F88) + ((v16 - 120) | 0xDF3D9077)) ^ 0xCCE17C57));
  *(v16 - 120) = &a14;
  *(v16 - 104) = a11;
  (*(v14 + 8 * (v15 ^ 0x982)))(v16 - 120);
  JUMPOUT(0x25445B7FCLL);
}

uint64_t sub_25445B99C@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, char a4@<W8>, int8x16_t a5@<Q0>, int8x8_t a6@<D1>)
{
  v13 = v10 - 8;
  v15.val[0].i64[0] = (v9 + v13 - 1) & 0xF;
  v15.val[0].i64[1] = (v9 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v9 + v13 + a4 + 38) & 0xF;
  v15.val[1].i64[1] = (v9 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v9 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v9 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v9 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v9 + v13) & 0xF ^ 8;
  *(a1 + v13) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a1 + v13)), veor_s8(*(v6 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v7 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a5), a6)));
  return (*(v12 + 8 * (((v11 == v13) * a3) ^ a2)))();
}

uint64_t sub_25445B9A4@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v41 = v38[396] ^ (((((v39 + a2 - 151006206) | 0x9002684) + 807377264) & *v38 | v38[623] & 0x80000000) >> 1);
  v38[623] = (v41 + v36 - (a1 & (2 * v41))) ^ *(v40 - 152 + 4 * (*v38 & 1));
  return (*(v37 + 8 * ((194 * (a36 > 0x26F)) ^ a2)))();
}

uint64_t sub_25445C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  if (v18 + a16 + 1 >= 0)
  {
    v19 = v18 + a16 + 1;
  }

  else
  {
    v19 = ~(v18 + a16);
  }

  return (*(v17 + 8 * (((((v19 ^ 0xAC7D7ED7) + ((v16 - 6) ^ 0x7FBF86E6) + ((2 * v19) & 0x58FAFDAE) + v18) >= 0) * (v16 + 395)) ^ (v16 - 6))))(1090652993);
}

uint64_t sub_25445C494(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  HIDWORD(v16) = a1 ^ 0x658F4FF;
  LODWORD(v16) = a1 ^ v15;
  v17 = (v16 >> 27) + (v9 ^ v13 ^ v7 ^ a2) + (((a5 ^ 0x16754CFF) - 376786175) ^ ((a5 ^ 0x635F1082) - 1667174530) ^ ((a5 ^ 0xEB72A882) + (((v8 - 1391) | 0x12B) ^ 0x148D5605))) - 1385417376 + (((*(v11 + 4 * (a7 + v12)) ^ 0xC0E7D5BA) + 1058548294) ^ ((*(v11 + 4 * (a7 + v12)) ^ 0xCD5A5DBF) + 849715777) ^ ((*(v11 + 4 * (a7 + v12)) ^ 0x2F620645) - 794953285));
  return (*(v10 + 8 * ((113 * (a7 + 1 != v14 + 40)) ^ v8)))(v17 ^ ((v17 ^ 0x589D5452) - 633639634) ^ ((v17 ^ 0x2B96413D) - 1456441277) ^ ((v17 ^ 0xF3852C9C) + 1898124772) ^ ((v17 ^ 0xFDD7FF73) + 2138162701) ^ 0xE301327F, a1, a1, v7, v7);
}

void sub_25445C640(uint64_t a1)
{
  v1 = *(a1 + 8) + 1388665877 * ((-2 - ((a1 | 0xD3DFA21E) + (~a1 | 0x2C205DE1))) ^ 0xA18D3F0D);
  v2 = *(&off_286663530 + (v1 ^ 0x385)) - 8;
  v3 = *a1;
  (*&v2[8 * (v1 ^ 0xA9F)])(*(&off_286663530 + (v1 ^ 0x358)) - 4, sub_254423940);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_25445C710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v7 + 48 * v10 + 36);
  v13 = v11 != v9 && a5 + ((v5 - 1271963185) & 0x4BD09FFEu) + v11 - 988 < (v5 ^ (v8 + 518)) + 130029567;
  return (*(v6 + 8 * ((1960 * v13) ^ v5)))();
}

uint64_t sub_25445C7C8@<X0>(uint64_t a1@<X0>, int a2@<W7>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * (((v7 != 0) * ((v5 - a3) ^ 0x779)) ^ (a2 + v5 + 10))))();
}

uint64_t sub_25445C800(int a1, uint64_t a2, int a3, int a4)
{
  HIDWORD(v14) = a1 ^ v8;
  LODWORD(v14) = a1 ^ v13;
  v15 = (v14 >> 27) + (a4 ^ v10 ^ v12 ^ v6) + (((a3 ^ 0xC2980DD7) + 1030222377) ^ ((a3 ^ 0xC1D29D5E) + 1043161762) ^ ((a3 ^ 0x9D126476) + 1659739018)) + 1611267667 + (((*(v4 + 4 * (a2 + v9)) ^ 0xCA31C8A6) + 902707034) ^ ((*(v4 + 4 * (a2 + v9)) ^ 0xF9393162) + 113692318) ^ ((*(v4 + 4 * (a2 + v9)) ^ 0x11D77784) - 299333508));
  v16 = (v15 ^ 0xD9296A0C) & (2 * (v15 & 0xD008708D)) ^ v15 & 0xD008708D;
  v17 = ((2 * (v15 ^ 0x79292B0E)) ^ 0x5242B706) & (v15 ^ 0x79292B0E) ^ (2 * (v15 ^ 0x79292B0E)) & 0xA9215B82;
  v18 = v17 ^ 0xA9214881;
  v19 = (v17 ^ 0x200) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0xA4856E0C) & v18 ^ (4 * v18) & 0xA9215B80;
  v21 = (v20 ^ 0xA0014A00) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x9201183)) ^ 0x9215B830) & (v20 ^ 0x9201183) ^ (16 * (v20 ^ 0x9201183)) & 0xA9215B80;
  v23 = v21 ^ 0xA9215B83 ^ (v22 ^ 0x80011800) & (v21 << 8);
  return (*(v7 + 8 * ((57 * (a2 + 1 != v11 + 24)) ^ v5)))(v15 ^ (2 * ((v23 << 16) & 0x29210000 ^ v23 ^ ((v23 << 16) ^ 0x5B830000) & (((v22 ^ 0x29204383) << 8) & 0x29210000 ^ 0x8200000 ^ (((v22 ^ 0x29204383) << 8) ^ 0x215B0000) & (v22 ^ 0x29204383)))) ^ 0xE103374);
}

uint64_t sub_25445CAA0()
{
  v4 = STACK[0x490];
  v5 = 1785193651 * ((((v3 - 200) | 0xDC4669B0) - (v3 - 200) + ((v3 - 200) & 0x23B99648)) ^ 0xCF9A8590);
  *(v3 - 192) = STACK[0x490];
  *(v3 - 196) = v1 - 562358948 + v5 + 26;
  *(v3 - 184) = v5 ^ 0x93107673;
  v6 = (*(v2 + 8 * (v1 + 2350)))(v3 - 200);
  STACK[0x408] = *(v2 + 8 * v1);
  v7 = STACK[0x2A0];
  STACK[0x530] = v4;
  LODWORD(STACK[0x53C]) = 1899262057;
  STACK[0x348] = v7;
  return (*(v2 + 8 * ((2490 * ((*(v4 + 68) & 0x3Fu) - 47 < ((v1 - 1439295047) & 0x55C9E7C8 ^ 0x144u) - 204)) ^ (v1 - 1439295047) & 0x55C9E7C8)))(v6);
}

uint64_t sub_25445CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, unsigned int a17, char *a18, int a19)
{
  v21 = 742307843 * ((((2 * &a16) | 0x9EDFA06A) - &a16 + 814755787) ^ 0xD14D5D60);
  a17 = v21 + 2046340255;
  LODWORD(a18) = 48773732 - v21;
  HIDWORD(a18) = 2059 - v21;
  a19 = v21 ^ 0x7F95312A;
  (*(v20 + 19832))(&a16);
  a18 = &a14;
  a19 = 2066391179 * (((&a16 | 0xFB847BEE) - &a16 + (&a16 & 0x47B8410)) ^ 0x54A3F9F6) + 1791;
  v22 = (*(v20 + 19488))(&a16);
  return (*(v20 + 8 * ((8 * (a16 != v19)) | (16 * (a16 != v19)) | 0x542u)))(v22);
}