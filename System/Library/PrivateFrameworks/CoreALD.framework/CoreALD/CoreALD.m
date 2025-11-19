uint64_t sub_244486000(mach_port_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v16 = 1;
  v17 = a2;
  v18 = 16777472;
  v19 = a3;
  v20 = *MEMORY[0x277D85EF8];
  v21 = a3;
  reply_port = mig_get_reply_port();
  v15.msgh_remote_port = a1;
  v15.msgh_local_port = reply_port;
  v15.msgh_bits = -2147478253;
  *&v15.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&v15, 3, 0x38u, 0x40u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(v15.msgh_local_port);
    return v11;
  }

  if (v15.msgh_id == 71)
  {
    v13 = 4294966988;
  }

  else if (v15.msgh_id == 1300)
  {
    if ((v15.msgh_bits & 0x80000000) != 0)
    {
      v13 = 4294966996;
      if (v16 == 1 && v15.msgh_size == 56 && !v15.msgh_remote_port && HIBYTE(v18) == 1)
      {
        v14 = v19;
        if (v19 == v21)
        {
          *a4 = v17;
          *a5 = v14;
          return 0;
        }
      }
    }

    else if (v15.msgh_size == 36)
    {
      v13 = 4294966996;
      if (HIDWORD(v17))
      {
        if (v15.msgh_remote_port)
        {
          v13 = 4294966996;
        }

        else
        {
          v13 = HIDWORD(v17);
        }
      }
    }

    else
    {
      v13 = 4294966996;
    }
  }

  else
  {
    v13 = 4294966995;
  }

  mach_msg_destroy(&v15);
  return v13;
}

void aslgmuibau()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *(&off_278E1E340 + (byte_244EBB7F0[byte_244EBB4DC[(-33 * (dword_27EDF0238 ^ 0xE6 ^ dword_27EDF0230)) - 12] ^ 0x12] ^ (-33 * (dword_27EDF0238 ^ 0xE6 ^ dword_27EDF0230))) - 232);
  v1 = *(v0 - 4);
  v2 = *(&off_278E1E340 + (byte_244EBB3D8[(byte_244EBB080[(-33 * (v1 ^ dword_27EDF0230 ^ 0xE6))] ^ 0x47) - 8] ^ (-33 * (v1 ^ dword_27EDF0230 ^ 0xE6))) - 15);
  v3 = v1 ^ &v8 ^ *v2;
  v4 = 374990303 * v3 + 0x24F21E6E749180E6;
  v5 = 374990303 * (v3 ^ 0x24F21E6E749180E6);
  *(v0 - 4) = v4;
  *v2 = v5;
  LOBYTE(v2) = -33 * (*(v0 - 4) ^ 0xE6 ^ v5);
  v6 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 - dword_27EDF0238) ^ 0xE6)) ^ byte_244EBB3D0[byte_244EBB080[(-33 * ((dword_27EDF0230 - dword_27EDF0238) ^ 0xE6))] ^ 0xDE]) - 80);
  v7 = (*(v6 + 8 * ((byte_244EBB91C[(byte_244EBB5F4[v2 - 4] ^ 6) - 12] ^ v2) + 2313)))(24, 0x1010040E2407E0ALL) == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2444867C4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 1928817158;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 18616))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((83 * (v3 == 0)) ^ 0x786u)))();
}

void fm23w5mn5o()
{
  v0 = *(&off_278E1E340 + (byte_244EBB7F0[byte_244EBB4DC[(-33 * ((dword_27EDF0230 - qword_27EDF0260) ^ 0xE6)) - 12] ^ 0xCA] ^ (-33 * ((dword_27EDF0230 - qword_27EDF0260) ^ 0xE6))) - 187);
  v1 = (*v0 ^ qword_27EDF0260) - &v4;
  v2 = 374990303 * v1 - 0x2973A7D8B8FCF9A6;
  v3 = 374990303 * (v1 ^ 0x24F21E6E749180E6);
  qword_27EDF0260 = v2;
  *v0 = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_244489774()
{
  (*(v1 + 18360))();
  *(v0 + 8) = 0;
  return (*(v1 + 8 * ((26 * (*(v0 + 24) == 0)) ^ 0x6ACu)))();
}

uint64_t sub_2444897C8()
{
  *(v0 + 36) = 0;
  *v0 = 0;
  return (*(v1 + 8 * (((*(v0 + 48) == 0) * ((((v2 - 713) | 0x6F) ^ 0xFFFFFE96) + ((v2 - 1444122715) & 0x56138F4B))) ^ v2)))();
}

uint64_t sub_2444898B8@<X0>(int a1@<W8>)
{
  v3 = a1 - 331;
  (*(v2 + 8 * (a1 + 1709)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * ((465 * ((((v3 + 1) ^ (*(v1 + 64) == 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_244489904()
{
  (*(v1 + 8 * (v2 + 2040)))();
  *(v0 + 64) = 0;
  *(v0 + 76) = 0;
  *(v0 + 40) = 0;
  return 0;
}

void tn46gtiuhw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || a6 == 0 || a7 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2444899E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, void *a24)
{
  *a4 = 0;
  *a23 = 0;
  *a24 = 0;
  *a7 = 0;
  return (*(v24 + 8 * ((2 * (qword_27EDF14E0 != 0)) | (8 * (qword_27EDF14E0 != 0)) | 0x7F4u)))();
}

uint64_t sub_244489A3C()
{
  (*(v0 + 8 * (v2 ^ (v2 + 1837))))();
  *(v1 + 8) = 0;
  return (*(v0 + 8 * ((122 * (*(v1 + 24) != 0)) ^ (v2 - 313511984))))();
}

uint64_t sub_244489A88()
{
  (*(v1 + 8 * (v3 + v0)))();
  *(v2 + 24) = 0;
  *(v2 + 36) = 0;
  *v2 = 0;
  return (*(v1 + 8 * ((2022 * (*(v2 + 48) == 0)) ^ (v3 - 313512197))))();
}

uint64_t sub_244489B04()
{
  v4 = v0 + v3 - 168;
  *(v2 + 76) = 0;
  *(v2 + 40) = 0;
  v5 = (*(v1 + 8 * (v3 ^ 0x12AFDDFAu)))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v1 + 8 * ((140 * (((v3 + 10) ^ v5) & 1)) ^ v4)))();
}

uint64_t sub_244489C44(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 1600883628;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * ((v1 & 0x1082467Bu) + 676)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((641 * (v1 & 0x1082467B ^ 0x670) - 1708297092) & 0x65D2877F) - 668)) ^ v1 & 0x1082467B)))(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24448D970(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_278E1E340 + (byte_244EBB7F0[byte_244EBB4D0[(-33 * (dword_27EDF0268 ^ 0xE6 ^ dword_27EDF0230))] ^ 0xCA] ^ (-33 * (dword_27EDF0268 ^ 0xE6 ^ dword_27EDF0230))) - 201);
  v3 = *(v2 - 4);
  v4 = *(&off_278E1E340 + (byte_244EBB3D8[(byte_244EBB080[(-33 * (v3 ^ dword_27EDF0230 ^ 0xE6))] ^ 0x29) - 8] ^ (-33 * (v3 ^ dword_27EDF0230 ^ 0xE6))) - 57);
  v5 = (*v4 ^ v3) - &v12;
  v6 = 374990303 * v5 - 0x2973A7D8B8FCF9A6;
  v7 = 374990303 * (v5 ^ 0x24F21E6E749180E6);
  *(v2 - 4) = v6;
  *v4 = v7;
  LOBYTE(v7) = -33 * ((v7 + *(v2 - 4)) ^ 0xE6);
  v8 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 + dword_27EDF0268) ^ 0xE6)) ^ byte_244EBB3D0[byte_244EBB080[(-33 * ((dword_27EDF0230 + dword_27EDF0268) ^ 0xE6))] ^ 8]) - 210);
  v9 = (*(v8 + 8 * ((byte_244EBB6F8[(byte_244EBB2D8[v7 - 8] ^ 0x9B) - 8] ^ v7) + 2093)))(a2);
  v10 = *(v8 + 8 * (((-33 * ((*v4 - *(v2 - 4)) ^ 0xE6)) ^ byte_244EBB7F0[byte_244EBB4D0[(-33 * ((*v4 - *(v2 - 4)) ^ 0xE6))] ^ 0xC6]) + 2130));

  return v10(v9);
}

void qi864985u0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_24448DC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, unsigned int a42, uint64_t a43, uint64_t a44)
{
  *a34 = 0;
  *a33 = 0;
  *a35 = 0;
  *a27 = 0;
  return (*(v44 + 8 * ((157 * (a1 != 0)) ^ 0x435u)))(a1, 0x1010040E2407E0ALL, a3, a4, a5, 2824441987, 1470527604, a8, a9, "com.apple.adid", &unk_27EDF14D0, 0x27EDF14D4, &unk_27EDF1530, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, &unk_27EDF152C, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a1, &unk_27EDF14D8, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_2444901E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46)
{
  v49 = a7 + a6 - 741;
  *(v48 - 184) = a31;
  *(v48 - 176) = a23;
  *(v48 - 168) = v46;
  v50 = STACK[0x228];
  v51 = (*(v47 + 8 * (a6 ^ 0xA8599874)))(*(STACK[0x228] - 0x480BDD9F782E0BC2));
  *(v50 - 0x480BDD9F782E0BC2) = STACK[0x240];
  *STACK[0x238] = a46;
  v52 = STACK[0x230];
  v49 ^= 0x544u;
  v53 = a36 - ((2 * a36) & 0xBF601E716098044ALL) - 0x204FF0C74FB3FDDBLL;
  v54 = (((2 * *STACK[0x230]) & 0x1F3FBFB3CLL) + *(v50 - 0x480BDD9F782E0BC2) - 0x6FFDF3DBF9FDFD9ELL + (v49 ^ *STACK[0x230] ^ 0x6FFDF3DBF9FDFEC8));
  *v54 = HIBYTE(v53) ^ 0xDF;
  v54[1] = BYTE6(v53) ^ 0xB0;
  v54[2] = BYTE5(v53) ^ 0xF;
  v54[3] = BYTE4(v53) ^ 0x38;
  v54[4] = ((a36 - ((2 * a36) & 0x6098044A) - 1337195995) >> 24) ^ 0xB0;
  v54[5] = BYTE2(v53) ^ 0x4C;
  v54[6] = BYTE1(v53) ^ 2;
  v54[7] = (a36 - ((2 * a36) & 0x4A) + 37) ^ 0x25;
  *v52 += 8;
  return (*(v47 + 8 * ((v49 - 41605335) & 0x27AD7FF ^ (v49 - 1239734584) & 0x49E4D7F7 ^ 0x7EC ^ v49)))(v51);
}

uint64_t sub_244491068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44)
{
  *(v47 + 8) = v44;
  *(v49 - 240) = v48;
  v50 = a44 > ((((v45 + 999) | 0x24u) - 1122) ^ 0x1043uLL);
  return (*(v46 + 8 * (((16 * v50) | (32 * v50)) ^ v45)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_2444910F4@<X0>(int a1@<W8>)
{
  v4 = v1 - 17;
  v5 = ((2 * (2 * v2 + 1136543488)) & 0xFFE3FD98) + ((v4 - 206) ^ 0xFFF1FF34 ^ (2 * v2 + 1136543488));
  if ((a1 + 71527666) < 0x4435CF2 != v5 + 72441382 < 0x4435CF2)
  {
    v6 = v5 + 72441382 < 0x4435CF2;
  }

  else
  {
    v6 = v5 + 72441382 > (v4 ^ 0x4436E34u) + a1;
  }

  return (*(v3 + 8 * ((!v6 | (16 * !v6)) ^ v4)))(72441382);
}

uint64_t sub_2444911A0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v37 = a1 & 0xEAFBFFF7;
  v38 = a1 & 0xEAFBFFF7 ^ 0xA8599868;
  (*(v36 + 8 * v38))(STACK[0x250]);
  (*(v36 + 8 * v38))(STACK[0x258]);
  return (*(v36 + 8 * ((472 * (STACK[0x248] == 0)) ^ (v37 + 1470526586))))(STACK[0x248], v39, v40, v41, v42, v43, v44, v45, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_244491558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  a38 = 0;
  a56 = 0;
  v58 = *(&off_278E1E340 + (v56 ^ 0x166));
  a41 = 0x3B2641292A8BB94FLL;
  v59 = (*(v57 + 8 * (v56 ^ 0x860)))(*v58, *(a53 - 0x480BDD9F782E0BC2), *(a53 - 0x480BDD9F782E0BB6), &a38, &a56);
  return (*(v57 + 8 * ((1802 * ((v56 ^ 0x1D) + (v59 ^ 0x7DFA53FA) + ((((v56 - 50595189) & 0xAB5D9483) + 1402673009) & (2 * v59)) == -1912973978)) ^ v56)))(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_2444916AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v62 = (v57 + 404960270) & 0xE7DCCBFC;
  v63 = v62 ^ 0xF7;
  v64 = (*(v58 + 8 * (v62 ^ 0x860)))(*v59, *(v56 - 0x480BDD9F782E0BC2), *(v56 + v60), &a38, &a56);
  v65 = (v64 ^ 0x6D5BD7DA) - 1610712064 + ((v64 << (v63 + 126)) & 0xDAB7AFB4);
  v66 = -45017;
  if (v65 != 492458973)
  {
    if (v65 == 224023514)
    {
      v67 = (*(v58 + 18616))(24, 0x1010040E2407E0ALL) == 0;
      return (*(v58 + 8 * ((243 * v67) ^ 0x77F)))();
    }

    *(v61 - 104) = (946232179 * (((((v61 - 108) | 0x27E32E66) ^ 0xFFFFFFFE) - (~(v61 - 108) | 0xD81CD199)) ^ 0x4867ED56)) ^ 0xE41B307;
    *(v61 - 100) = -946232179 * (((((v61 - 108) | 0x27E32E66) ^ 0xFFFFFFFE) - (~(v61 - 108) | 0xD81CD199)) ^ 0x4867ED56) + 158895975 * v65 - 1863531543;
    v64 = (*(v58 + 18640))(v61 - 108);
    if (*(v61 - 108) == 2096038059)
    {
      v66 = -45016;
    }

    else
    {
      v66 = 0;
    }
  }

  a49 = 0x3B2641292A8BB94FLL;
  return (*(v58 + 8 * ((220 * (v66 == 0)) ^ 0x26D)))(v64);
}

uint64_t sub_244491CD0@<X0>(int a1@<W8>)
{
  v4 = ((13 * (a1 ^ 0x2C7)) ^ 0x488A77A4) + *(v1 + v2);
  v5 = *(v1 - 0x3B2641292A8BB947) + 235894228;
  v6 = v4 < 0x6C305254;
  v7 = v4 > v5;
  if (v5 < (a1 ^ 0x2C7u) + 1815106125 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((27 * v7) | a1)))();
}

uint64_t sub_244491D68()
{
  v5 = *(v2 - 0x3B2641292A8BB94FLL);
  v6 = (*(v5 + (v0 - 598071897)) << ((v1 - 79) ^ 0x14)) | (*(v5 + (v0 - 598071896)) << 16) | (*(v5 + (v0 - 598071895)) << 8) | *(v5 + (v1 ^ 0xDC5A25F1) + v0);
  *(v2 + v3) = v0 + 4;
  return (*(v4 + 8 * ((1614 * (v6 == 0)) ^ v1)))();
}

uint64_t sub_244491E30()
{
  v4 = v0 + 934922426 > (v1 - 46217589);
  if ((v0 + 934922426) < 0x5B5FA30B != v1 - 46217589 < ((v2 + 754) ^ 0x5B5FA046u))
  {
    v4 = (v0 + 934922426) < 0x5B5FA30B;
  }

  return (*(v3 + 8 * ((!v4 * ((v2 + 1687) ^ 0x606)) ^ v2)))();
}

uint64_t sub_244491EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v44 = *(v39 + (v38 + v37 + 6));
  v45 = v37 + (v40 ^ 0x194u) - 1886;
  *(v41 + v42) = v45;
  return (*(v43 + 8 * (v40 | (v41 != a8) | (8 * (v41 != a8)))))(v45, v44, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_244491F30(int a1)
{
  v6 = v5 + a1 + v1;
  v7 = v6 - 1281185265;
  v8 = v6 > 0x4C5D55F0;
  v9 = v7 > v2 + 1434570127;
  if ((v2 + 1434570127) < 0xB3A2AA0F == v8)
  {
    LOBYTE(v8) = v9;
  }

  return (*(v4 + 8 * ((((v8 ^ (v3 - 89)) & 1) * (((v3 + 1862076534) & 0x9102F7FF) - 1768)) ^ v3)))();
}

uint64_t sub_244491FF4()
{
  v4 = (v2 + 880455098) & 0xCB854FEF;
  v5 = (((v4 - 1413) | 0x194) ^ 0x7308F95F) + v1;
  v6 = ((v4 - 569) ^ 0x388DF5D2) + v0;
  v7 = v5 < 0x96AED31F;
  v8 = v5 > v6;
  if (v6 < 0x96AED31F != v7)
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((101 * v8) ^ v4)))();
}

uint64_t sub_244492084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v53 = (*(v47 + (v48 + v46 + 1)) << (v49 + 123)) | (*(v47 + (v48 + v46)) << 24) | (*(v47 + (v48 + v46 + 2)) << (-41 * (v49 ^ 0x97) + 90)) | *(v47 + (v48 + v46 + 3));
  v54 = (v48 + 4);
  *(v50 + v51) = v54;
  v55 = *(v52 + 8 * (v49 ^ (37 * (v50 != a8))));
  return v55(471 * (v49 ^ 0x197u), v53, v54, 4294922294, v55, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_244492104(int a1, int a2, int a3)
{
  v6 = a2 + a3 + v3;
  v7 = v6 + ((a1 + 473) ^ 0x584) - 1827015181;
  v8 = v4 + 888740214;
  v9 = v6 > 0x6CE60A09;
  v10 = (v8 < 0x9319F5F6) ^ v9;
  v11 = v7 > v8;
  if (v10)
  {
    v11 = v9;
  }

  return (*(v5 + 8 * (((2 * !v11) | (16 * !v11)) ^ a1)))();
}

void sub_244492184(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  *(v28 + v29) = v27;
  *(v32 - 188) = 0;
  *a27 = (*(v30 + 8 * (a1 + 1623)))(v31, 0x100004077774924);
  JUMPOUT(0x2444921F0);
}

uint64_t sub_244492360@<X0>(int a1@<W0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = a2 + 84;
  v28 = (*(v25 + 8 * (v27 ^ 0xAE1)))(a2 - 841 + a1 + ((69 * (v27 ^ 0x3FD)) ^ 0x20D1232Fu), 0x100004077774924);
  *(v26 - 200) = v28;
  return (*(v25 + 8 * ((v28 == 0) ^ v27)))(v28, v29, v30, v31, v32, 2824441987, 1470527604, v33, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

void sub_244492470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = v7 + 1497;
  (*(v10 + 8 * (v7 + 1497 + a7)))();
  *v11 = 0;
  *(v11 + 8) = v9;
  *(v11 + 12) = v8;
  (*(v10 + 8 * (v12 ^ 0xA8599874)))(v11);
  JUMPOUT(0x244491BECLL);
}

void y1rKtVxYz7()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 - dword_27EDF0248) ^ 0xE6)) ^ byte_244EBAF80[byte_244EBBA10[(-33 * ((dword_27EDF0230 - dword_27EDF0248) ^ 0xE6))] ^ 0x46]) - 13);
  v1 = *(v0 - 4);
  v2 = *(&off_278E1E340 + (byte_244EBB3D8[(byte_244EBB080[(-33 * (v1 ^ dword_27EDF0230 ^ 0xE6))] ^ 0x47) - 8] ^ (-33 * (v1 ^ dword_27EDF0230 ^ 0xE6))) - 15);
  v3 = 374990303 * ((*v2 + v1) ^ &v6 ^ 0x24F21E6E749180E6);
  *(v0 - 4) = v3;
  *v2 = v3;
  LOBYTE(v2) = -33 * ((v3 - *(v0 - 4)) ^ 0xE6);
  v4 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 + dword_27EDF0248) ^ 0xE6)) ^ byte_244EBB3D0[byte_244EBB080[(-33 * ((dword_27EDF0230 + dword_27EDF0248) ^ 0xE6))] ^ 0x29]) - 59);
  v5 = (*(v4 + 8 * ((byte_244EBB91C[(byte_244EBB5F4[v2 - 4] ^ 0x3B) - 12] ^ v2) + 2204)))(24, 0x1010040E2407E0ALL) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_244492724(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 702097218;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 18616))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((4 * (v3 != 0)) | (32 * (v3 != 0)) | 0x591u)))();
}

uint64_t sub_244492780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 8) = v4 + 4096;
  v8 = *(v6 + 8 * ((33 * (v5 == 0)) | 0x682));
  *(v7 - 200) = 0x3B2189A141C2236ELL;
  return v8(a1, a2, a3, a4, 1836502009, 2458467582);
}

uint64_t sub_244492810()
{
  v3 = v0 - 869;
  v4 = *(v1 + 12) - 2107051196;
  v5 = ((v3 - 1767937508) & 0x696096D6) + 1485817838 + *(v1 + 8);
  v6 = v4 < 0x8268F340;
  v7 = v4 > v5;
  if (v6 != v5 < ((2 * (v3 ^ 0x11E)) ^ 0x8268F746))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return (*(v2 + 8 * ((2970 * v8) ^ v3)))();
}

uint64_t sub_2444928B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = *(v16 + 8 * (((((v14 - 2138496000) | 0x120014F8) + (v14 ^ 0x6DF ^ (a5 - 2616))) * (v15 == 0)) ^ v14));
  *(v17 - 200) = 0x3B2189A141C2236ELL;
  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_244492920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v20 = a5 + v18;
  v21 = (v20 - 1501) | 0x400;
  v22 = v20 - 2180;
  v23 = ((v21 - 139040590) & (2 * (2 * a18 - 1404194436))) + ((2 * a18 - 1404194436) ^ 0x7BDB37E7);
  if ((a18 + 1280268130) < 0x76287EA0 != (v23 - 95598919) < 0x76287EA0)
  {
    v24 = (v23 - 95598919) < 0x76287EA0;
  }

  else
  {
    v24 = v23 - 95598919 > (a18 + 1280268130);
  }

  return (*(v19 + 8 * ((732 * v24) ^ v22)))();
}

void uv5t6nhkui()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *(&off_278E1E340 + ((-33 * (dword_27EDF0250 ^ 0xE6 ^ dword_27EDF0230)) ^ byte_244EBB3D0[byte_244EBB080[(-33 * (dword_27EDF0250 ^ 0xE6 ^ dword_27EDF0230))] ^ 0xDE]) - 65);
  v1 = *(v0 - 4);
  v2 = *(&off_278E1E340 + (byte_244EBB3D0[byte_244EBB080[(-33 * ((dword_27EDF0230 - v1) ^ 0xE6))] ^ 0x29] ^ (-33 * ((dword_27EDF0230 - v1) ^ 0xE6))) - 57);
  v3 = &v8[*v2 - v1];
  v4 = (374990303 * v3) ^ 0x24F21E6E749180E6;
  v5 = 374990303 * (v3 ^ 0x24F21E6E749180E6);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 - dword_27EDF0250) ^ 0xE6)) ^ byte_244EBB7F0[byte_244EBB4D0[(-33 * ((dword_27EDF0230 - dword_27EDF0250) ^ 0xE6))] ^ 0xCA]) - 189);
  v7 = *(v6 + 8 * ((16 * ((*(v6 + 8 * (((-33 * (*(v0 - 4) ^ 0xE6 ^ v5)) ^ byte_244EBB3D0[byte_244EBB080[(-33 * (*(v0 - 4) ^ 0xE6 ^ v5))] ^ 0x6B]) + 2120)))(24, 0x1010040E2407E0ALL) == 0)) | 0x608u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_244495D5C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 176741048;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 18616))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((77 * (v3 == 0)) ^ 0x38Du)))();
}

void p435tmhbla()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 + dword_27EDF0258) ^ 0xE6)) ^ byte_244EBB7F0[byte_244EBB4D0[(-33 * ((dword_27EDF0230 + dword_27EDF0258) ^ 0xE6))] ^ 0x12]) - 221);
  v1 = -33 * ((dword_27EDF0230 - *v0) ^ 0xE6);
  v2 = *(&off_278E1E340 + (byte_244EBB6F8[(byte_244EBB2D8[v1 - 8] ^ 0x9B) - 8] ^ v1) - 225);
  v3 = *v0 ^ &v8 ^ *v2;
  v4 = 374990303 * v3 - 0x2973A7D8B8FCF9A6;
  v5 = 374990303 * (v3 ^ 0x24F21E6E749180E6);
  *v0 = v4;
  *v2 = v5;
  v6 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 + dword_27EDF0258) ^ 0xE6)) ^ byte_244EBB910[byte_244EBB5F0[(-33 * ((dword_27EDF0230 + dword_27EDF0258) ^ 0xE6))] ^ 0x3B]) - 101);
  v7 = *(v6 + 8 * ((58 * ((*(v6 + 8 * ((byte_244EBB3D8[(byte_244EBB080[(-33 * ((v5 - *v0) ^ 0xE6))] ^ 0xDE) - 8] ^ (-33 * ((v5 - *v0) ^ 0xE6))) + 2225)))(24, 0x1010040E2407E0ALL) == 0)) ^ 0x698u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_244499830(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 356543837;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 18616))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((76 * (v3 == 0)) ^ 0x7ACu)))();
}

int *sub_24449CC30(int *result)
{
  v1 = 2096038060;
  v2 = result[2] + 946232179 * ((result - 872058873 - 2 * (result & 0xCC057007)) ^ 0x5C7E4CC8);
  if (v2 > 619031481)
  {
    if (v2 > 1418287327)
    {
      if (v2 <= 1740855248)
      {
        if (v2 > 1731303306)
        {
          v3 = v2 == 1731303307;
          v4 = 1736079278;
        }

        else
        {
          v3 = v2 == 1418287328;
          v4 = 1577183303;
        }
      }

      else if (v2 <= 1899751223)
      {
        v3 = v2 == 1740855249;
        v4 = 1890199282;
      }

      else
      {
        v3 = v2 == 1899751224 || v2 == 2049095257;
        v4 = 2058647199;
      }
    }

    else if (v2 <= 1100495377)
    {
      if (v2 > 941599402)
      {
        v3 = v2 == 941599403;
        v4 = 946375374;
      }

      else
      {
        v3 = v2 == 619031482;
        v4 = 787479399;
      }
    }

    else if (v2 <= 1259391352)
    {
      v3 = v2 == 1100495378;
      v4 = 1105271349;
    }

    else
    {
      v3 = v2 == 1259391353 || v2 == 1264167324;
      v4 = 1413511357;
    }
  }

  else if (v2 > -806256323)
  {
    if (v2 <= -334344369)
    {
      if (v2 > -647360348)
      {
        v3 = v2 == -647360347;
        v4 = -493240343;
      }

      else
      {
        v3 = v2 == -806256322;
        v4 = -652136318;
      }
    }

    else if (v2 <= -165896452)
    {
      v3 = v2 == -334344368;
      v4 = -175448393;
    }

    else
    {
      v3 = v2 == -165896451 || v2 == 147119528;
      v4 = 460135507;
    }
  }

  else if (v2 <= -1759632173)
  {
    if (v2 > -1918528148)
    {
      v3 = v2 == -1918528147;
      v4 = -1764408143;
    }

    else
    {
      v3 = v2 == -2086976064;
      v4 = -2077424122;
    }
  }

  else if (v2 <= -1600736198)
  {
    v3 = v2 == -1759632172;
    v4 = -1605512168;
  }

  else
  {
    v3 = v2 == -1600736197 || v2 == -1441840222;
    v4 = -811032293;
  }

  if (!v3 && v2 != v4)
  {
    v1 = 2096038059;
  }

  *result = v1;
  return result;
}

void fy34trz2st()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 + dword_27EDF0270) ^ 0xE6)) ^ byte_244EBAF80[byte_244EBBA10[(-33 * ((dword_27EDF0230 + dword_27EDF0270) ^ 0xE6))] ^ 0x46]) - 17);
  v1 = *(v0 - 4);
  v2 = *(&off_278E1E340 + (byte_244EBB6F8[(byte_244EBB2D8[(-33 * (v1 ^ dword_27EDF0230 ^ 0xE6)) - 8] ^ 0xE5) - 8] ^ (-33 * (v1 ^ dword_27EDF0230 ^ 0xE6))) - 166);
  v3 = (*v2 - v1) ^ &v8;
  v4 = 374990303 * (v3 - 0x24F21E6E749180E6);
  v5 = 374990303 * (v3 ^ 0x24F21E6E749180E6);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 - dword_27EDF0270) ^ 0xE6)) ^ byte_244EBB7F0[byte_244EBB4D0[(-33 * ((dword_27EDF0230 - dword_27EDF0270) ^ 0xE6))] ^ 0xC6]) - 143);
  v7 = *(v6 + 8 * ((23 * ((*(v6 + 8 * ((byte_244EBB3D8[(byte_244EBB080[(-33 * ((v5 + *(v0 - 4)) ^ 0xE6))] ^ 0x29) - 8] ^ (-33 * ((v5 + *(v0 - 4)) ^ 0xE6))) + 2246)))(24, 0x1010040E2407E0ALL) == 0)) ^ 0x321u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_24449D158()
{
  v2 = *(v1 - 152);
  *v2 = 0;
  *(v2 + 8) = 1370989366;
  *(v2 + 16) = 0;
  v3 = (*(v0 + 18616))(4096, 0x100004077774924);
  *v2 = v3;
  return (*(v0 + 8 * (((2 * (v3 == 0)) | (8 * (v3 == 0))) ^ 0x1D6u)))();
}

uint64_t sub_2444A004C@<X0>(int a1@<W8>)
{
  v4 = a1 - 545;
  (*(v2 + 8 * (a1 + 987)))();
  return (*(v2 + 8 * ((490 * (((*(v1 + 32 * v3 + 24) == 0) ^ (v4 - 32)) & 1)) ^ v4)))();
}

uint64_t sub_2444A01E0()
{
  v0 = *(&off_278E1E340 + (byte_244EBB3D0[byte_244EBB080[(-33 * ((dword_27EDF0230 - dword_27EDF0240) ^ 0xE6))] ^ 0xDE] ^ (-33 * ((dword_27EDF0230 - dword_27EDF0240) ^ 0xE6))) - 68);
  v1 = *(&off_278E1E340 + ((-33 * ((dword_27EDF0230 + *v0) ^ 0xE6)) ^ byte_244EBB3D0[byte_244EBB080[(-33 * ((dword_27EDF0230 + *v0) ^ 0xE6))] ^ 8]) - 208);
  v2 = (*v1 + *v0) ^ &v12;
  v3 = (374990303 * v2) ^ 0x24F21E6E749180E6;
  v4 = 374990303 * (v2 ^ 0x24F21E6E749180E6);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v3) = *v0;
  v5 = *(&off_278E1E340 + ((-33 * (dword_27EDF0240 ^ 0xE6 ^ dword_27EDF0230)) ^ byte_244EBB6F0[byte_244EBB2D0[(-33 * (dword_27EDF0240 ^ 0xE6 ^ dword_27EDF0230))] ^ 0x9B]) - 227);
  (*(v5 + 8 * (((-33 * ((v4 - v3) ^ 0xE6)) ^ byte_244EBAF80[byte_244EBBA10[(-33 * ((v4 - v3) ^ 0xE6))] ^ 3]) + 2073)))(**(&off_278E1E340 + (byte_244EBAF80[byte_244EBBA10[(-33 * (v3 ^ 0xE6 ^ v4))] ^ 0x46] ^ (-33 * (v3 ^ 0xE6 ^ v4))) - 2));
  v6 = *v0;
  v7 = *v1;
  (*(v5 + 8 * ((byte_244EBB6F8[(byte_244EBB2D8[(-33 * ((v7 + v6) ^ 0xE6)) - 8] ^ 0x78) - 8] ^ (-33 * ((v7 + v6) ^ 0xE6))) + 2157)))(**(&off_278E1E340 + ((-33 * (v6 ^ 0xE6 ^ v7)) ^ byte_244EBB3D0[byte_244EBB080[(-33 * (v6 ^ 0xE6 ^ v7))] ^ 0x47]) - 4));
  v8 = -33 * (*v0 ^ 0xE6 ^ *v1);
  v9 = **(&off_278E1E340 + (byte_244EBB7F0[byte_244EBB4DC[v8 - 12] ^ 0x12] ^ v8) - 247);
  v10 = *(v5 + 8 * ((byte_244EBB180[byte_244EBBB10[v8] ^ 0xAE] ^ v8) + 2115));

  return v10(v9);
}

void rsegvyrt87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = !v6 && a6 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2444A0508(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (*(v5 + 18616))(24, 0x1010040E2407E0ALL) != 0;
  return (*(v5 + 8 * (((2 * v6) | (8 * v6)) ^ 0x1E2u)))();
}

uint64_t sub_2444A0570(uint64_t a1)
{
  *(v5 - 216) = v3;
  *(v5 - 176) = v2;
  *(v5 - 180) = v1;
  *a1 = 0;
  *(a1 + 8) = 1498326249;
  *(a1 + 16) = 0;
  v7 = (*(v4 + 18616))(4096, 0x100004077774924);
  *a1 = v7;
  return (*(v4 + 8 * ((75 * (v7 == 0)) ^ 0x416u)))();
}

uint64_t gJa8aF901k(uint64_t a1)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    v1 = off_2857CD2B8(24, 0x1010040E2407E0ALL) == 0;
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

void sub_2444A4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  *(v26 - 208) = a2;
  (*(v22 + 8 * (v25 + v24)))(*(v23 - 0x12480D0875C6795FLL));
  *(v23 - 0x12480D0875C6795FLL) = a14;
  *a15 = a22;
  JUMPOUT(0x2444A4BE0);
}

uint64_t sub_2444A4CFC@<X0>(int a1@<W8>)
{
  *(v3 - 184) = v2 - 0x12480D0875C67953;
  v4 = *(v2 - 0x12480D0875C67953) + 1060460739;
  v5 = *(v2 - 0x12480D0875C67957) + 538943584;
  v6 = v4 < 0x3F3558BF;
  v7 = v4 > v5;
  if (v6 != v5 < 0x3F3558BF)
  {
    v7 = v6;
  }

  return (*(v1 + 8 * ((v7 * (((a1 | 0xA) - 1750) ^ 0xC8)) ^ (a1 | 0xA))))();
}

uint64_t sub_2444A4D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = *(v16 + 8 * (((((v17 == 0x12480D0875C6795FLL) ^ (v15 + 38)) & 1) * (v15 ^ 0xCC)) ^ v15));
  *(v19 - 144) = v18;
  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_2444A4DF4()
{
  v4 = v0 + 1812171254;
  v5 = v3 + ((v1 - 1176506587) & 0x6F337E77);
  v6 = (v5 + 26) | 0x48;
  v7 = v5 - 1500;
  v8 = (v0 + 1812171254) < 0x8B194251;
  v9 = ((2 * ((v0 << (v6 - 88)) - 1043034302)) & 0xFF7B70BC) + (((v0 << (v6 - 88)) - 1043034302) ^ 0xFFBDB85F);
  if (v8 != v9 - 1956935182 < 0x8B194251)
  {
    v10 = v9 - 1956935182 < 0x8B194251;
  }

  else
  {
    v10 = v9 - 1956935182 > v4;
  }

  return (*(v2 + 8 * ((253 * v10) ^ v7)))();
}

uint64_t sub_2444A4EBC@<X0>(int a1@<W8>)
{
  v8 = *(v7 - 184);
  v9 = *(v4 + v2);
  v10 = ((2 * a1) & 0x3ECF7B7E) + (a1 ^ 0x1F67BDBF) - 526892479;
  *(v9 + v10 + 1) = 43;
  *(v9 + v10 + 2) = -115;
  v11 = ((v1 ^ 0x796) - 1879) | 0x10;
  *(v9 + v10) = 99;
  *(v9 + v10 + 3) = 110;
  v12 = *v8 + (v11 ^ 0x98);
  *(v7 - 184) = v8;
  *v8 = v12;
  return (*(v3 + 8 * ((v11 - v5 + 2139) ^ (v6 - 1340) ^ (v11 + 622) ^ v11)))(0);
}

uint64_t sub_2444A50DC@<X0>(int a1@<W8>)
{
  v3 = *(v2 - 0x12480D0875C67953) + 1669628363;
  v4 = (((a1 - 738) | 0x403) ^ 0x446ECD43) + *(v2 - 0x12480D0875C67957);
  v5 = v3 < ((4 * (a1 + 108)) ^ 0x63848C1Fu);
  v6 = v3 > v4;
  if (v5 != v4 < 0x638481C7)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((1711 * v6) ^ (a1 + 108))))();
}

uint64_t sub_2444A51F0@<X0>(int a1@<W8>)
{
  v3 = v1 - 767098853;
  v4 = (v1 - 767098853) < 0xF15CB876;
  v5 = ((2 * ((v1 << ((a1 - 103) ^ 0xA5)) - 1043034302)) & 0x7F2B7FFC) + (((v1 << ((a1 - 103) ^ 0xA5)) - 1043034302) ^ 0x3F95BFFF);
  if (v4 != (v5 - 1312360329) < 0xF15CB876)
  {
    v6 = (v5 - 1312360329) < 0xF15CB876;
  }

  else
  {
    v6 = v5 - 1312360329 > v3;
  }

  return (*(v2 + 8 * ((21 * v6) ^ a1)))();
}

uint64_t sub_2444A5298@<X0>(_DWORD *a1@<X1>, int a2@<W8>)
{
  v7 = (v3 + 1069329841) & 0xC04353F7;
  v8 = *(v5 + v2);
  v9 = ((v7 - 9444756) ^ a2) + ((2 * a2) & 0xFEDFCB7A) + 9443907;
  *(v8 + v9) = 0;
  *(v8 + v9 + 1) = 0;
  *(v8 + v9 + 2) = 0;
  *(v8 + v9 + 3) = 1;
  *a1 += 4;
  return (*(v4 + 8 * ((v6 + ((v7 + 499) | 0x83) - 2044) ^ ((v7 + 148671) | 0x29112602) ^ v7)))(0);
}

uint64_t sub_2444A54C0()
{
  v3 = *(v2 - 0x12480D0875C67953) - 1543138800 + ((v0 - 1547) | 0xC8) - 499;
  v4 = *(v2 - 0x12480D0875C67957) - 2064655951;
  v5 = v3 < 0xA4059210;
  v6 = v3 > v4;
  if (v4 < 0xA4059210 != v5)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((127 * v6) ^ v0)))();
}

uint64_t sub_2444A55D0@<X0>(int a1@<W8>)
{
  v3 = v1 - 297313185;
  v4 = (v1 - 297313185) < 0xD5D14B6;
  v5 = ((83 * (a1 ^ 0xBF) + 2141940186) & (2 * (2 * v1 - 1043034302))) + ((2 * v1 - 1043034302) ^ 0x3FD5B87F);
  if (v4 != (v5 - 846767049) < 0xD5D14B6)
  {
    v6 = (v5 - 846767049) < 0xD5D14B6;
  }

  else
  {
    v6 = v5 - 846767049 > v3;
  }

  return (*(v2 + 8 * ((1151 * v6) ^ a1)))();
}

uint64_t sub_2444A567C@<X0>(_DWORD *a1@<X1>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = a31 - 0x204FF0C74FB3FDDBLL - ((2 * a31) & 0xBF601E716098044ALL);
  v36 = (((((v31 - 1647) ^ 0x8CCu) + 0x1FFDA9737) & (2 * a2)) + (a2 ^ 0x6FD5BDDCFFED4F9DLL) + *(v34 + v32) - 0x6FD5BDDCFFED4F9DLL);
  *v36 = HIBYTE(v35) ^ 0xDF;
  v36[1] = BYTE6(v35) ^ 0xB0;
  v36[2] = BYTE5(v35) ^ 0xF;
  v36[3] = BYTE4(v35) ^ 0x38;
  v36[4] = ((a31 - 1337195995 - ((2 * a31) & 0x6098044Au)) >> 24) ^ 0xB0;
  v36[5] = BYTE2(v35) ^ 0x4C;
  v36[6] = ((a31 + 549 - ((2 * a31) & 0x44A)) >> 8) ^ 2;
  v36[7] = (a31 + 37 - ((2 * a31) & 0x4A)) ^ 0x25;
  *a1 += 8;
  return (*(v33 + 8 * ((v31 - 1647) ^ 0x29136E74 ^ (((v31 - 1647) ^ 0x8CC) + 722990844) & 0xFDFB6F12 ^ (v31 - 1647) ^ 0x8CC)))(0);
}

uint64_t sub_2444A5960()
{
  v3 = *(v2 - 0x12480D0875C67953) + 1462469809;
  v4 = ((v0 - 1133739216) & 0x43937FBF ^ 0x3815C955) + *(v2 - 0x12480D0875C67957);
  v5 = v3 < 0x572B84A9;
  v6 = v3 > v4;
  if (v5 != v4 < 0x572B84A9)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((v6 * (v0 ^ 0x233)) ^ v0)))();
}

uint64_t sub_2444A5A58@<X0>(int a1@<W8>)
{
  v3 = v1 - 127215729;
  v4 = (v1 - 127215729) < 0x17808FE6;
  v5 = (((2 * v1 - 1043034302) << (a1 + 127)) & 0x7FABF6BC) + ((2 * v1 - 1043034302) ^ 0xBFD5FB5F);
  if (v4 != v5 + 1470796935 < 0x17808FE6)
  {
    v6 = v5 + 1470796935 < 0x17808FE6;
  }

  else
  {
    v6 = v5 + 1470796935 > v3;
  }

  return (*(v2 + 8 * (a1 ^ (8 * v6))))();
}

uint64_t sub_2444A5AF4@<X0>(_DWORD *a1@<X1>, unsigned int a2@<W8>)
{
  v7 = *(v6 - 216) - 0x204FF0C74FB3FDDBLL - ((2 * *(v6 - 216)) & 0xBF601E716098044ALL);
  v8 = (((2 * a2) & 0x1FBDF9F5ALL) + (a2 ^ 0xD555B9DAFDEFCFADLL) + *(v5 + v3) + 0x2AAA462502103053);
  *v8 = HIBYTE(v7) ^ ((v2 ^ 0x6C) + 14) ^ 0x8E;
  v8[1] = BYTE6(v7) ^ 0xB0;
  v8[2] = BYTE5(v7) ^ 0xF;
  v8[3] = BYTE4(v7) ^ 0x38;
  v8[4] = BYTE3(v7) ^ 0xB0;
  v8[5] = BYTE2(v7) ^ 0x4C;
  v8[6] = BYTE1(v7) ^ 2;
  v8[7] = v7 ^ 0x25;
  *a1 += 8;
  return (*(v4 + 8 * (((((v2 ^ 0x6C) - 1076658857) & 0x693FEE77) - 689136923 + (((v2 ^ 0x6C) + 465) | 0x300) - 2441) ^ ((v2 ^ 0x6C) + 270))))(0);
}

uint64_t sub_2444A5DBC@<X0>(int a1@<W8>)
{
  v3 = a1 + 1944;
  v4 = a1 + 417;
  v5 = (*(v1 + 8 * ((a1 + 1944) ^ 0xE9F)))();
  v6 = *(v1 + 8 * (v3 + 361));
  *(v2 - 200) = v5;
  v6();
  v7 = (*(v1 + 8 * (v3 ^ 0xE85)))(*(v2 - 152), 0);
  *(v2 - 168) = 0;
  return (*(v1 + 8 * (((v7 != 0) * ((v4 ^ 0xFFFFFF36) + v4)) ^ v3)))(4294922293);
}

uint64_t sub_2444A5E84()
{
  v4 = *(v1 + 8 * (v0 + 1897));
  v5 = *(v3 - 152);
  *(v3 - 192) = v2;
  v6 = *(v1 + 8 * (((v4(v5, v2, 0) == 0) * (((v0 - 531815362) & 0x1FB2DBF7) - 384)) ^ v0));
  *(v3 - 168) = *(v3 - 192);
  return v6(4294922293);
}

uint64_t sub_2444A5EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  (*(v26 + 8 * (v24 ^ 0x8F2u)))(v27, *(&off_278E1E340 + v24 - 456));
  (*(v26 + 8 * (v24 ^ 0x921u)))(v27);
  (*(v26 + 8 * (v24 + 1827)))(v27, *(v28 - 200));
  v29 = (*(v26 + 8 * (v24 ^ 0x8C2u)))();
  return (*(v26 + 8 * (((v29 == *(&off_278E1E340 + (v24 ^ 0x1F3u)) - 8) * ((22 * (v24 ^ 0x1CC) + 936) ^ (46 * (v24 ^ 0x1D0)))) ^ v24)))(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, v25, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2444A6034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  (*(v29 + 8 * (v30 ^ 0x92Du)))(a28, *(v31 - 200));
  v32 = (*(v29 + 8 * (v30 + 1854)))();
  return (*(v29 + 8 * (((v32 == v28) * ((((v30 + 41) | 0x52) - 221) ^ (14 * (v30 ^ 0x1C0)))) ^ v30)))(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2444A60F4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = a1 - 1824;
  v25 = ((a1 - 975151488) & 0x3A1F99CA) + 272;
  (*(v22 + 8 * ((a1 - 1824) ^ 0x92D)))(a21, *(v23 - 200));
  v26 = (*(v22 + 8 * (v24 + 1854)))();
  return (*(v22 + 8 * (((v26 == v21) * (v25 ^ 0x483)) ^ v24)))(v26, v27, v28, v29, v30, v31, v32, v33, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_2444A61D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  (*(v29 + 8 * (v30 + 1827)))(a28, *(v31 - 200));
  v32 = (*(v29 + 8 * (v30 ^ 0x8C2u)))();
  return (*(v29 + 8 * (((v32 == v28) * ((9 * (v30 ^ 0x195)) ^ (v30 + 1488))) ^ v30)))(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2444A6294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  (*(v29 + 8 * (v30 + 1827)))(a28, *(v31 - 200));
  v32 = (*(v29 + 8 * (v30 ^ 0x8C2)))();
  return (*(v29 + 8 * (((v32 == v28) * ((((v30 - 54274553) ^ 0xD5D0B9CC) - 689137526) ^ (v30 - 54274553) & 0x33C2A73)) ^ v30)))(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2444A632C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = (*(v33 + 8 * (v32 ^ 0xB4D)))(a32, v34, v35 - 120);
  v37 = *(v33 + 8 * ((((((v32 + 151013296) ^ (v36 == 0)) & 1) == 0) * (((v32 + 151013296) | 0x20132410) - 689139158)) ^ v32));
  *(v35 - 176) = 0x35C0D798A9E6E68CLL;
  return v37(v36, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_2444A63BC()
{
  v4 = v2 ^ (v0 | 0x846);
  v5 = (*(v1 + 8 * (v4 + 803)))(24, 0x1010040E2407E0ALL);
  v6 = *(v1 + 8 * (((v5 == 0) * (((v4 + 135273486) | 0x21034C10) - 689139203)) ^ v4));
  *(v3 - 176) = 0x35C0D798A9E6E68CLL;
  return v6(v5, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_2444A6450(uint64_t a1)
{
  *(v3 - 160) = a1 + 0x35C0D798A9E6E68CLL;
  *a1 = 0;
  *(a1 + 8) = 281037310;
  *(a1 + 12) = 0;
  v5 = (*(v2 + 8 * ((v1 + 665) ^ 0x19A)))(4096, 0x100004077774924);
  *a1 = v5;
  return (*(v2 + 8 * (((v5 == 0) * (((89 * ((v1 + 665) ^ 0x89A) - 1503) | 0x12) ^ 0x227)) ^ (v1 + 665))))();
}

uint64_t sub_2444A64F4()
{
  v5 = *(v1 + 8 * ((((((v0 + 959669975) & 0xEFDFFF3B) - 3136) ^ ((v0 + 1054721) | 0x29034E12)) * (v2 == 0)) ^ v0));
  *(v4 - 176) = v3;
  return v5();
}

uint64_t sub_2444A6550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  (*(v29 + 8 * (v28 ^ 0x291366E5)))(v30);
  *(v31 - 176) = 0x35C0D798A9E6E68CLL;
  *(v31 - 160) = v28;
  (*(v29 + 8 * (v28 ^ 0x291366F9)))(*(v31 - 192));
  (*(v29 + 8 * (v28 ^ 0x291366F9)))(a28);
  return (*(v29 + 8 * (((8 * (*(v31 - 200) == 0)) | ((*(v31 - 200) == 0) << 6)) ^ (v28 - 689138311))))();
}

uint64_t sub_2444A6A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v37 = *(v33 + 8 * ((v34 - 694) ^ ((a32 == 0) | (32 * (a32 == 0)))));
  *(v36 - 168) = v35;
  return v37(v32);
}

uint64_t sub_2444A6A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  (*(v33 + 8 * (v34 - 12)))();
  v37 = *(v33 + 8 * ((v34 - 694) ^ ((a32 == 0) | (32 * (a32 == 0)))));
  *(v36 - 168) = v35;
  return v37(v32);
}

uint64_t sub_2444A6AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  (*(v35 + 8 * (*(v39 - 160) ^ v33)))(a32);
  *(v39 - 168) = v38;
  if (v32 == -45004)
  {
    *(v39 - 160) = v34;
    *(v39 - 128) = 0;
    *(v39 - 132) = 0;
    v47 = (*(v35 + 8 * (v37 ^ (v37 - 1804))))(**(&off_278E1E340 + v37 - 689139200), *(v36 - 0x12480D0875C6795FLL), *(v36 - 0x12480D0875C67953), v39 - 128, v39 - 132);
    return (*(v35 + 8 * ((((v47 ^ 0x7FFFF3A8) - 187965984 + ((2 * v47) & 0xFFFFE750) == -2067017333) * ((v37 ^ (v37 + 124)) + 1890)) ^ (v37 - 689138200))))(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }

  else if (v32)
  {
    return (*(v35 + 8 * ((v36 == 0x12480D0875C6795FLL) ^ 0x394u)))(v32, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }

  else
  {
    return (*(v35 + 8 * (((*(v39 - 176) == 0x35C0D798A9E6E68CLL) * (7 * ((v37 + 293) ^ 0x29136E12) - 2020)) ^ 0x34E)))(4294922294);
  }
}

uint64_t sub_2444A6C6C()
{
  v7 = (*(v1 + 8 * (v3 ^ 0xAEE)))(*v4, *(v2 + v0), *(v2 - 0x12480D0875C67953), v6 - 128, v6 - 132);
  if (((v3 + 672211462) | 0x1024812) + (v7 ^ 0xF7CFD3BA) + ((2 * v7) & 0xEF9FA774) == 551764428)
  {
    v8 = (*(v1 + 8 * (v5 - 689136891)))(24, 0x1010040E2407E0ALL) == 0;
    return (*(v1 + 8 * ((((v5 - 87) ^ v8) & 1 | (8 * (((v5 - 87) ^ v8) & 1))) ^ (v5 - 689137869))))();
  }

  else if (((v3 + 672211462) | 0x1024812) + (v7 ^ 0xF7CFD3BA) + ((2 * v7) & 0xEF9FA774) == 820199887)
  {
    return (*(v1 + 8 * ((v2 == 0x12480D0875C6795FLL) ^ 0x394u)))(4294922279);
  }

  else
  {
    *(v6 - 104) = (v5 - 449952523) ^ (946232179 * ((1523044408 - ((v6 - 108) | 0x5AC7D038) + ((v6 - 108) | 0xA5382FC7)) ^ 0x35431308));
    *(v6 - 100) = -946232179 * ((1523044408 - ((v6 - 108) | 0x5AC7D038) + ((v6 - 108) | 0xA5382FC7)) ^ 0x35431308) + 158895975 * (((v3 + 672211462) | 0x1024812) + (v7 ^ 0xF7CFD3BA) + ((2 * v7) & 0xEF9FA774) + 1407750076) - 2055274265;
    (*(v1 + 8 * (v5 ^ (v5 - 1802))))(v6 - 108);
    v10 = *(v1 + 8 * ((1169 * (*(v6 - 108) != 2096038059)) ^ (v5 - 689139062)));
    *(v6 - 176) = 0x35C0D798A9E6E68CLL;
    return v10(4294922280);
  }
}

uint64_t sub_2444A6D80(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 281037310;
  *(a1 + 12) = 0;
  v4 = (*(v2 + 8 * (v1 & 0xF8F5BDFD ^ 0xCAE)))(4096, 0x100004077774924);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * (((2 * (v1 & 0xF8F5BDFD)) ^ 0xE04) - 1278)) ^ v1 & 0xF8F5BDFD)))();
}

uint64_t sub_2444A7194()
{
  (*(v2 + 8 * (v0 ^ (v4 - 1837))))(v3);
  (*(v2 + 8 * (v0 - 689136882)))(**(&off_278E1E340 + v0 - 689139211), *(v5 - 128), *(v5 - 132));
  v6 = *(v2 + 8 * (v0 - 689139062));
  *(v5 - 176) = v1;
  return v6(4294922293);
}

uint64_t sub_2444A72AC()
{
  v6 = *(v5 - 176);
  v7 = *(v6 - 0x35C0D798A9E6E68CLL);
  v8 = ((((v2 + 1071115931) & 0xE93B7EDA) - 1262761748) ^ v1) + ((2 * v1) & 0xBB9E6DFC) + 573622530;
  v9 = (*(v7 + v8) << 24) | (*(v7 + v8 + 1) << 16) | (*(v7 + v8 + 2) << 8) | *(v7 + v8 + 3);
  *(v6 + v3) = v0;
  return (*(v4 + 8 * (v2 ^ (45 * (v6 != 0x35C0D798A9E6E68CLL)))))(v9);
}

uint64_t sub_2444A7368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v4 + 8 * (v2 + 2139)))(a2);
  v10 = *(v8 - 176);
  *(v10 - 0x35C0D798A9E6E68CLL) = 0;
  *(v10 + v6) = 281037310;
  *(v10 + v3) = 0;
  (*(v4 + 8 * (v2 ^ 0x86B)))(v10 - 0x35C0D798A9E6E68CLL);
  return (*(v4 + 8 * ((v5 == 0x12480D0875C6795FLL) ^ ((v2 ^ (v7 + 124)) - 689138302))))(a1);
}

uint64_t sub_2444A73E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31)
{
  v38 = *(v31 + 8 * (v35 + v33));
  v40 = v38(*(a2 + a6));
  *(a2 + a6) = a24;
  *a31 = v32;
  *(v36 - 144) = v34;
  return (*(v31 + 1864 * (v35 ^ (v35 + 2))))(v40);
}

uint64_t sub_2444A75C4@<X0>(uint64_t a1@<X8>)
{
  v6 = (v5 + v3 - 431) - 1865;
  v7 = *(v1 + v6 + v2 - 31);
  v8 = a1 + v6 + v2;
  *(v8 - 15) = *(v1 + v6 + v2 - 15);
  *(v8 - 31) = v7;
  return (*(v4 + 8 * (((2 * ((v2 & 0xFFFFFFE0) == 32)) | (4 * ((v2 & 0xFFFFFFE0) == 32))) ^ (v5 + v3 - 1756))))();
}

uint64_t sub_2444A7750@<X0>(uint64_t a1@<X8>)
{
  v6 = a1 + -8 - v3;
  v7 = v1 + -8 - v3;
  *(v6 + v2) = *(v7 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * ((v4 - 1563) ^ 0xEF)) ^ v4)))(v6 - 8, v7 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_2444A7814()
{
  *(v0 - 0x35C0D798A9E6E684) = *(v2 - 132) + 281037310 + (~(2 * *(v2 - 132)) | 0xDE7F6C03) + 1;
  *(v0 - 0x35C0D798A9E6E680) = 0;
  (*(v1 + 18688))(MEMORY[0x280AC0078], *(v2 - 128), *(v2 - 132));
  v3 = *(v1 + 8296);
  *(v2 - 176) = v0;
  return v3(0);
}

uint64_t sub_2444A7874@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v4 + 8 * ((55 * (v6 != 0)) | (v5 + v3 - 943))))();
}

void sub_2444A7964(int a1@<W8>)
{
  *(v1 - 0x35C0D798A9E6E68CLL) = 0;
  *(v1 - 0x35C0D798A9E6E684) = 281037310;
  *(v1 - 0x35C0D798A9E6E680) = 0;
  (*(v2 + 8 * (a1 ^ (v3 - 1837))))(v1 - 0x35C0D798A9E6E68CLL);
  JUMPOUT(0x2444A79E0);
}

void sub_2444A7B04(int a1@<W8>)
{
  v5 = (a1 + 553737621) | 0x8120E00;
  (*(v2 + 8 * (v5 + v1)))();
  *(v3 - 0x12480D0875C6795FLL) = 0;
  *(v3 - 0x12480D0875C67957) = 521517151;
  *(v3 - 0x12480D0875C67953) = 0;
  (*(v2 + 8 * (v5 ^ (v4 - 1837))))(v3 - 0x12480D0875C6795FLL);
  JUMPOUT(0x2444A4A1CLL);
}

uint64_t jkag7Bg01u(uint64_t a1, uint64_t a2)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

void sub_2444A8128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, uint64_t a15, int a16, int a17)
{
  v20 = *(v19 - 144);
  (*(v17 + 8 * (v18 ^ (v18 + 1967))))(*v20);
  *v20 = a13;
  *a14 = a17;
  JUMPOUT(0x2444A8178);
}

uint64_t sub_2444A8254()
{
  v4 = *(v1 + 12);
  *(v3 - 200) = v1 + 12;
  v5 = *(v1 + 8) + 1483252616;
  v6 = v4 + 1857411767 > v5;
  if ((v4 + 1857411767) < 0x6EB5DAB3 != v5 < (v0 ^ 0x1Eu) + 1857410335)
  {
    v6 = (v4 + 1857411767) < 0x6EB5DAB3;
  }

  return (*(v2 + 8 * ((42 * v6) ^ v0)))();
}

uint64_t sub_2444A82CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *(v16 + 8 * (((((v15 == 0) ^ (v14 + 112)) & 1) * (((v14 + 524438184) & 0xE0BDB7FE) - 877)) ^ v14));
  *(v18 - 168) = v17;
  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2444A831C@<X0>(int a1@<W8>)
{
  v3 = v1 - 2115817657;
  v4 = (v1 - 2115817657) < 0x9830666E;
  v5 = ((2 * (2 * v1 - 748318294)) & 0x6D9FEFDC) + ((2 * v1 - 748318294) ^ 0xB6CFF7EF);
  if (v4 != v5 - 513773953 < 0x9830666E)
  {
    v6 = v5 - 513773953 < 0x9830666E;
  }

  else
  {
    v6 = v5 - 513773953 > v3;
  }

  return (*(v2 + 8 * ((57 * v6) ^ a1)))();
}

uint64_t sub_2444A83BC@<X0>(int a1@<W6>, int a2@<W8>)
{
  v6 = *(v5 - 160);
  v7 = *(v5 - 200);
  *(v5 - 160) = v6;
  v8 = *(v6 - 0x6C5686C3B68BD9EDLL);
  v9 = ((2 * a2) & 0x3F5DED7A) + (a2 ^ 0x1FAEF6BD) - 531560125;
  *(v8 + v9 + 1) = -2;
  *(v8 + v9 + 2) = 99;
  *(v8 + v9) = -123;
  *(v8 + v9 + 3) = -80;
  v10 = (v2 ^ 0x735) + *v7 - 669;
  *(v5 - 200) = v7;
  *v7 = v10;
  return (*(v3 + 8 * ((a1 + v4 + (v2 ^ 0x735) - 673 + (((v2 ^ 0x735) + 318757658) & 0xED0023D5) - 21) ^ v2 ^ 0x735)))(0);
}

uint64_t sub_2444A864C()
{
  v3 = ((v0 - 1496468967) & 0x59324EF7 ^ 0x9B4A95A7) + *(v1 + 12);
  v4 = *(v1 + 8) - 2063769515;
  v5 = v3 < (v0 ^ 0x33B) - 1689610921;
  v6 = v3 > v4;
  if (v4 < 0x9B4A9780 != v5)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((1759 * v6) ^ v0)))();
}

uint64_t sub_2444A8734@<X0>(unsigned int a1@<W8>)
{
  v3 = v1 + 1683409370;
  v4 = (v1 + 1683409370) < 0x7AA40101;
  v5 = ((2 * (2 * v1 - 748318294)) & 0x2CDAEE54) + ((2 * v1 - 748318294) ^ 0x166D772B);
  v6 = a1 + 1681295226 + v5;
  v7 = v6 < 0x7AA40101;
  v8 = v6 > v3;
  if (v4 != v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(v2 + 8 * ((1973 * v9) ^ a1)))(374159147, 3546649002, (v5 - 2113536));
}

uint64_t sub_2444A87D0@<X0>(_DWORD *a1@<X1>, int a2@<W6>, int a3@<W8>)
{
  v6 = *(v5 - 160);
  v7 = v3 ^ 0x88;
  *(v5 - 160) = v6;
  v8 = *(v6 - 0x6C5686C3B68BD9EDLL);
  v9 = (a3 ^ 0x9A2FB4FB) + 1708148836 + ((2 * a3) & 0x345F69F6);
  *(v8 + v9 + v7) = 0;
  *(v8 + v9 + 674) = 0;
  *(v8 + v9 + 675) = 0;
  *(v8 + v9 + 676) = 1;
  *a1 += 4;
  return (*(v4 + 8 * ((a2 + ((v7 + 159387239) | 0x801180A4) - 1172) ^ v7)))(0);
}

uint64_t sub_2444A8A20()
{
  v3 = *(v1 + 12) - 1144163714;
  v4 = *(v1 + 8) - 1518322869;
  v5 = v3 < (v0 ^ 0xBBCD743C);
  v6 = v3 > v4;
  if (v5 != v4 < 0xBBCD7276)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((v6 * (v0 - 1348)) ^ v0)))();
}

uint64_t sub_2444A8AD4@<X0>(int a1@<W8>)
{
  v3 = ((a1 - 791513051) & 0x2F2D877F) - 1620559275 + ((2 * (2 * v1 - 748318294)) & 0x6DBEFED4) + ((2 * v1 - 748318294) ^ 0xB6DF7F6B);
  v4 = v3 < 0x5647BF2B;
  v5 = v3 > v1 + 1073383432;
  if ((v1 + 1073383432) < 0x5647BF2B != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((960 * v6) ^ a1)))();
}

uint64_t sub_2444A8B88@<X0>(_DWORD *a1@<X1>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = *(v6 - 160);
  v8 = v4 - ((2 * v4) & 0xBF601E716098044ALL) - 0x204FF0C74FB3FDDBLL;
  *(v6 - 160) = v7;
  v9 = (*(v7 - 0x6C5686C3B68BD9EDLL) + ((2 * a3) & 0x1B6DBBB5ALL) - 0x4D7FFDDFDB6DDDADLL + ((v3 - 1188) ^ a3 ^ 0x4D7FFDDFDB6DDC0BLL));
  *v9 = HIBYTE(v8) ^ 0xDF;
  v9[1] = BYTE6(v8) ^ 0xB0;
  v9[2] = BYTE5(v8) ^ 0xF;
  v9[3] = BYTE4(v8) ^ 0x38;
  v9[4] = ((v4 - ((2 * v4) & 0x6098044A) - 1337195995) >> 24) ^ 0xB0;
  v9[5] = BYTE2(v8) ^ 0x4C;
  v9[6] = BYTE1(v8) ^ 2;
  v9[7] = (v4 - ((2 * v4) & 0x4A) + 37) ^ 0x25;
  *a1 += 8;
  return (*(v5 + 8 * ((a2 + ((v3 - 537407645) ^ 0xDFF7D6F8) + ((v3 - 537407645) & 0xA999BBFE) - 1806) ^ (v3 - 1188))))(0);
}

void sub_2444A8CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, uint64_t a25, _DWORD *a26)
{
  v30 = *(v29 - 160);
  (*(v26 + 8 * (v28 ^ (v28 + 1967))))(*(v30 - 0x6C5686C3B68BD9EDLL));
  *(v30 - 0x6C5686C3B68BD9EDLL) = a17;
  *a26 = a24;
  *(v29 - 168) = v27;
  JUMPOUT(0x2444A8D1CLL);
}

uint64_t sub_2444A8EA4()
{
  v5 = (*(v2 + 8 * (v0 ^ 0xEAC)))();
  (*(v2 + 8 * (v0 ^ 0xEAA)))(v5, *(v1 + 8 * (v0 - 1951)) - 4, **(v4 - 144), *(*(v4 - 144) + 12));
  v6 = (*(v2 + 8 * (v0 ^ 0xEB6)))(*(v4 - 184), 0);
  *(v4 - 192) = 0;
  return (*(v2 + 8 * (((((v0 ^ (v3 - 1) ^ (v6 == 0)) & 1) == 0) * (((v0 + 149) | 0x10) - 2017)) ^ v0)))(4294922293);
}

uint64_t sub_2444A8F70()
{
  v7 = v0;
  v5 = *(v2 + 8 * ((((*(v2 + 8 * (v1 ^ 0x15A)))(*(v4 - 184), v0, 0) == 0) * ((v3 + (v1 ^ 0x996) - 477) ^ (v3 + v1 - 2128))) ^ v1));
  *(v4 - 192) = v7;
  return v5(4294922293);
}

uint64_t sub_2444A8FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v36 + 8 * (v33 ^ 0x8E3)))(v35, *(v34 + 8 * (v33 - 439)));
  (*(v36 + 8 * (v33 + 1840)))(v35);
  (*(v36 + 8 * (v33 ^ 0x93C)))(v35, a33);
  v37 = (*(v36 + 8 * (v33 ^ 0x8D3)))();
  return (*(v36 + 8 * (((v37 == *(v34 + 8 * (v33 ^ 0x1E2)) - 8) * ((5 * (v33 ^ 0x1FD)) ^ ((v33 + 122) | 0xC) ^ 0x730)) ^ v33)))(v37, v38, v39, v40, v41, v42, 1986950975, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2444A9134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v35 + 8 * (v33 ^ 0x93C)))(a27, a33);
  v36 = (*(v35 + 8 * (v33 ^ 0x8D3)))();
  return (*(v35 + 8 * (((v36 == v34) * ((v33 + 920) ^ 0xC93)) ^ v33)))(v36, v37, v38, v39, v40, v41, 1986950975, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2444A91F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v35 + 8 * (v33 ^ 0x93C)))(a27, a33);
  v36 = (*(v35 + 8 * (v33 + 1871)))();
  return (*(v35 + 8 * (((v36 == v34) * ((((v33 + 2116632545) & 0x81D6BF7F) + 1626) ^ (v33 - 123))) ^ v33)))(v36, v37, v38, v39, v40, v41, 1986950975, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2444A92C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v35 + 8 * (v33 ^ 0x93Cu)))(a27, a33);
  v36 = (*(v35 + 8 * (v33 + 1871)))();
  return (*(v35 + 8 * (((v36 == v34) * (((v33 - 191) | 0x20) ^ 0x10D)) ^ v33)))(v36, v37, v38, v39, v40, v41, 1986950975, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2444A9374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v35 + 8 * (v33 + 1844)))(a27, a33);
  v37 = (*(v35 + 8 * (v33 + 1871)))();
  return (*(v35 + 8 * (((v37 == v34) * ((v33 - 159) ^ (v36 + 1951) ^ (v36 + v33 - 454))) ^ v33)))(v37, v38, v39, v40, v41, v42, 1986950975, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2444A94EC(uint64_t a1)
{
  *(v3 - 176) = a1 + 0x2E327D748A1637BALL;
  *a1 = 0;
  *(a1 + 8) = -1365982155;
  *(a1 + 12) = 1021085946;
  *(a1 + 16) = 0;
  v5 = (*(v2 + 8 * (v1 + 865)))(4096, 0x100004077774924);
  *a1 = v5;
  return (*(v2 + 8 * (((((v1 + 53) ^ (v5 == 0)) & 1) * (((v1 - 1398) | 0x85) + 750)) ^ v1)))();
}

uint64_t sub_2444A981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v39 = v34;
  (*(v35 + 8 * (v34 ^ (v37 + 1967))))(v36);
  *(v38 - 152) = -45003;
  *(v38 - 176) = 0x2E327D748A1637BALL;
  (*(v35 + 8 * (v39 ^ (v37 + 1947))))(a34);
  (*(v35 + 8 * (v39 + 1986950975)))(a27);
  return (*(v35 + 8 * ((99 * (a33 != 0)) ^ (v39 + 1986949777))))(a33, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_2444A9B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  (*(v32 + 8 * v29))();
  v34 = *(v32 + 8 * ((v30 + v28 - 1314) ^ (26 * (a28 != 0))));
  *(v33 - 192) = v31;
  return v34(*(v33 - 152));
}

uint64_t sub_2444A9BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v38 + 8 * (v35 + a7)))(a28);
  v47 = *(v40 - 176);
  v48 = *(v40 - 144);
  v49 = *(v40 - 152);
  *(v40 - 192) = v37;
  if (v49 == -45004)
  {
    *(v40 - 176) = v47;
    *(v40 - 128) = 0;
    *(v40 - 132) = 0;
    v50 = (*(v38 + 8 * (v39 + 1986951016)))(**(v36 + 8 * (v39 ^ (v39 + 18))), *v48, *(v48 + 12), v40 - 128, v40 - 132);
    return (*(v38 + 8 * ((13 * (((v39 + 1986949365) ^ 0x6C55F15A ^ v50) - 1208250752 + ((2 * v50) & 0xD8ABE7F6) != 877757054)) ^ (v39 + 1986950347))))(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else if (v49)
  {
    return (*(v38 + 8 * ((492 * (v48 != 0)) ^ 0x4F6)))(v49, v41, v42, v43, v44, v45, 1986950975, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
    return (*(v38 + 8 * ((247 * (a35 == 0x2E327D748A1637BALL)) ^ 0x56D)))(4294922294);
  }
}

uint64_t sub_2444AA2AC()
{
  (*(v2 + 8 * (v1 + v0 + 12)))(v3);
  (*(v2 + 8 * (v0 + 1986951028)))(**(&off_278E1E340 + v0 + 1986948699), *(v4 - 128), *(v4 - 132));
  return (*(v2 + 8 * (v0 + 1986949114)))(4294922293);
}

uint64_t sub_2444AA2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29)
{
  v34 = *(v33 - 152);
  v35 = (*(v30 + 8 * (v32 ^ (v32 + 1967))))(*(v34 + v29));
  *(v34 + v29) = a21;
  *a29 = v31;
  return (*(v30 + 8 * (v32 ^ 0x899199C0)))(v35);
}

uint64_t sub_2444AA530@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v6 = (a2 + v3 - 16);
  v7 = *(v2 + v3 - 16);
  *(v6 - 1) = *(v2 + v3 - 16 - 16);
  *v6 = v7;
  return (*(v5 + 8 * ((a1 + v4 - 1379) | (4 * ((((v3 & 0xFFFFFFE0) == 32) ^ (v4 - 1)) & 1)))))((v3 & 0xFFFFFFE0) - 32);
}

uint64_t sub_2444AA628@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFCABLL ^ v4 ^ 0x7A0u) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((729 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_2444AA6F0()
{
  v2 = *(v1 - 152);
  *(v2 - 0x2E327D748A1637B2) = *(v1 - 132) - 1365982155 - ((2 * *(v1 - 132)) & 0x5D29886A);
  *(v2 - 0x2E327D748A1637AELL) = 1021085946;
  (*(v0 + 18688))(MEMORY[0x280AC0078], *(v1 - 128), *(v1 - 132));
  return (*(v0 + 10504))(0);
}

uint64_t sub_2444AA754@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v6 = v4 - 1;
  *(a2 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((309 * (v6 == 0)) ^ (a1 + v3 - 1691))))();
}

void sub_2444AA848(int a1@<W8>)
{
  *(v1 + v2) = 0;
  *(v1 - 0x2E327D748A1637B2) = -1365982155;
  *(v1 - 0x2E327D748A1637AELL) = 1021085946;
  (*(v3 + 8 * (a1 ^ (v4 + 1967))))(v1 + v2);
  JUMPOUT(0x2444AA8CCLL);
}

uint64_t sub_2444AAA30@<X0>(int a1@<W6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v33 = *(a29 - 0x2E327D748A1637BALL);
  v34 = (*(v33 + v29) << 24) | (*(v33 + v29 + 1) << 16) | (*(v33 + v29 + 2) << 8);
  v35 = *(v33 + v29 + 3);
  *(a29 + v30) = a2 + 4;
  if (!(v34 | v35))
  {
    return (*(v31 + 8 * (a1 + v32 + ((v32 ^ 0x89919997) - 2099) * (a29 == 0x2E327D748A1637BALL) - 1097)))(4294922294);
  }

  if ((v34 | v35) == 0xFFFF4FFB)
  {
    return (*(v31 + 8 * (((*(*(&off_278E1E340 + a1 + v32 - 2283) + 1) != 0) * ((a1 + v32 - 2110) ^ 0xB6)) ^ (a1 + v32 - 2110))))();
  }

  return (*(v31 + 8 * (((a29 == 0x2E327D748A1637BALL) ^ (a1 - 114)) & 1 | (16 * (((a29 == 0x2E327D748A1637BALL) ^ (a1 - 114)) & 1)) | (a1 - 1986950553))))();
}

void sub_2444AAE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v40 = v35 & 0xFDB5B7BD;
  (*(v38 + 8 * (a7 + (v35 & 0xFDB5B7BD) + 12)))();
  *(a35 - 0x2E327D748A1637BALL) = 0;
  *(a35 + v37) = -1365982155;
  *(a35 + v36) = 1021085946;
  (*(v38 + 8 * (v40 ^ (v39 + 1967))))(a35 - 0x2E327D748A1637BALL);
  JUMPOUT(0x2444AAF0CLL);
}

void sub_2444AAF8C()
{
  (*(v2 + 8 * (v0 ^ (v3 + 1967))))();
  v5 = *(v4 - 144);
  *v5 = 0;
  *(v5 + 8) = v1;
  *(v5 + 12) = 0;
  (*(v2 + 8 * (v0 ^ (v3 + 1967))))(v5);
  JUMPOUT(0x2444A7DA8);
}

void asabc800ag(uint64_t a1, uint64_t a2)
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

uint64_t sub_2444AB07C(uint64_t a1, _DWORD *a2)
{
  *v2 = 0;
  *a2 = 0;
  v4 = (*(v3 + 18616))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v3 + 8 * ((43 * v4) ^ 0x255)))(4294922293);
}

void sub_2444AB50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  v32 = *(v31 - 216);
  (*(v28 + 8 * (v29 + v30)))(*v32);
  *v32 = a20;
  *a22 = a28;
  JUMPOUT(0x2444AB558);
}

uint64_t sub_2444AB62C@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 12) + 337029729;
  v4 = *(v1 + 8) - 1750764443;
  v5 = v3 < (((a1 ^ 0x7C4) + 295926496) & 0xEE5C82DB) + 337029018;
  v6 = v3 > v4;
  if (v4 < 0x1416AA5D != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((614 * v7) ^ a1 ^ 0x7C4)))();
}

uint64_t sub_2444AB6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v26 = *(v24 + 8 * ((19 * (((v23 == 0) ^ (v21 - 2)) & 1)) ^ (v21 + 188)));
  *(v25 - 160) = v22;
  return v26(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_2444AB71C()
{
  v3 = (v1 + 1617) ^ 0x5E;
  v4 = v0 + 750906971 + v3;
  v5 = ((2 * (2 * v0 + 119378960)) & 0xF9FFEFF8) + ((2 * v0 + 119378960) ^ 0x7CFFF7FC);
  if (v4 < 0xA9332AD9 != v5 + 741552861 < 0xA9332AD9)
  {
    v6 = v5 + 741552861 < 0xA9332AD9;
  }

  else
  {
    v6 = v5 + 741552861 > v4;
  }

  return (*(v2 + 8 * ((94 * !v6) ^ v3)))(741552861);
}

void sub_2444AB7DC(int a1@<W8>)
{
  v5 = *(*(v4 - 232) - 0x278CA84CAC3EBFB8);
  v6 = ((2 * a1) & 0xBDCD7D7A) + (a1 ^ 0xDEE6BEBD);
  *(v5 + v6 + 555303236) = 9;
  v7 = (v2 - 704) | 0x80;
  *(v5 + v6 + 555303235) = 114;
  *(v5 + v6 + 555303237) = 111;
  *(v5 + v6 + (v7 ^ 0x211941C5)) = -26;
  *v1 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2444ABA0C@<X0>(int a1@<W8>)
{
  v3 = 278 * (a1 ^ 0x7AA);
  v4 = *(v1 + 12) - 1950409642;
  v5 = *(v1 + 8) + 256763482;
  v6 = v4 < 0x8BBF1C52;
  v7 = v4 > v5;
  if (v6 != v5 < (((v3 ^ 0x5A8) + 1178) ^ 0x8BBF1932))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return (*(v2 + 8 * ((1003 * v8) ^ v3)))();
}

uint64_t sub_2444ABADC@<X0>(int a1@<W8>)
{
  v3 = v1 - 1564676531;
  v4 = (v1 - 1564676531) < 0x1F2E2441;
  v5 = ((2 * (2 * v1 + 119378960)) & 0xFEE3FBFC) + ((a1 + 407) ^ 0xFF71F9F5 ^ (2 * v1 + 119378960));
  if (v4 != v5 + 532424258 < 0x1F2E2441)
  {
    v6 = v5 + 532424258 < 0x1F2E2441;
  }

  else
  {
    v6 = v5 + 532424258 > v3;
  }

  return (*(v2 + 8 * ((1738 * v6) ^ a1)))();
}

void sub_2444ABB7C(int a1@<W8>)
{
  v5 = *(*(v4 - 232) - 0x278CA84CAC3EBFB8);
  v6 = ((2 * a1) & 0xBEE5FBF2) + (a1 ^ 0x5F72FDF9);
  *(v5 + v6 - 1601371640) = 0;
  v7 = v2 - 112;
  *(v5 + v6 - 1601371641) = 0;
  *(v5 + v6 - 1601371639) = 0;
  *(v5 + v6 + (v7 ^ 0xA08D025C)) = 1;
  *v1 += 4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2444ABD8C@<X0>(int a1@<W8>)
{
  v5 = a1 + 2084;
  v6 = (a1 - 2654300) & 0x7EFDFD5F;
  v7 = (a1 + 1063) | 8;
  v8 = (*(v2 + 8 * ((a1 + 2084) ^ 0x123)))();
  (*(v2 + 8 * (v5 + 221)))(v8, *(&off_278E1E340 + v5 - 2072) - 4, *v1, *(v1 + 12));
  v9 = (*(v2 + 8 * (v5 + 249)))(*(v4 - 224), 0) == 0;
  return (*(v2 + 8 * ((v9 * ((v6 ^ (v3 - 1304)) + v7)) ^ v5)))(4294922293);
}

uint64_t sub_2444ABED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = v33;
  (*(v35 + 8 * (v34 + 2090)))(v33, *(&off_278E1E340 + v34 - 236));
  (*(v35 + 8 * (v34 + 2043)))(v36);
  (*(v35 + 8 * (v34 + 2047)))(v36, a33);
  v37 = (*(v35 + 8 * (v34 ^ 0x9EE)))();
  return (*(v35 + 8 * (((v37 == *(&off_278E1E340 + (v34 ^ 0xDF)) - 8) * (((v34 + 1371450851) & 0xAE4153FF) + 806)) | v34)))(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2444AC00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v35 + 8 * (v33 ^ 0x801u)))(a24, a33);
  v36 = (*(v35 + 8 * (v33 ^ 0x9EEu)))();
  return (*(v35 + 8 * (((v36 == v34) * ((v33 ^ 0x74) + v33 - 91 + 2247)) ^ v33)))(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2444AC0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v35 + 8 * (v33 + 2047)))(a24, a33);
  v36 = (*(v35 + 8 * (v33 + 2074)))();
  return (*(v35 + 8 * (((v36 == v34) * ((v33 ^ 0x74) + ((v33 - 205774336) & 0xC43DDE7) + 185)) ^ v33)))(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2444AC1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v35 + 8 * (v33 + 2047)))(a24, a33);
  v36 = (*(v35 + 8 * (v33 + 2074)))();
  return (*(v35 + 8 * (((v36 == v34) * (((v33 - 1857005836) & 0x2EAFA89F) + 779)) ^ v33)))(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2444AC258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v45 = (*(v35 + 8 * (v33 ^ 0x819u)))(a24, a33);
  v36 = (*(v35 + 8 * (v33 ^ 0x9F6u)))();
  return (*(v35 + 8 * (((v36 != v34) * (v33 ^ 0x74 ^ (11 * (v33 ^ 0xEE)))) | v33)))(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v45, a29, a30);
}

uint64_t sub_2444AC3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *a1 = 0;
  *(a1 + 8) = 573122899;
  *(a1 + 12) = 644361910;
  v33 = (*(v31 + 8 * (v30 + 2090)))(4096, 0x100004077774924);
  *a1 = v33;
  return (*(v31 + 8 * (((v33 == 0) * ((v30 + 144887554) & 0xF75D35B3 ^ (v30 + 197675392) & 0xF437B7DF ^ 0x607)) ^ v30)))(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_2444AC4E4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = a1 + 1706;
  (*(v27 + 8 * (a1 + 1706 + v29)))(v28);
  (*(v27 + 8 * (v29 + v30 - 12)))(a27);
  (*(v27 + 8 * (v30 ^ 0x7ED575EF)))(a17);
  return (*(v27 + 8 * ((44 * (a26 == 0)) ^ (v29 + v30 - 47))))(a26, v31, v32, v33, v34, v35, v36, v37, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_2444ACB4C()
{
  *(v3 - 120) = 0;
  *(v3 - 132) = 0;
  v4 = (*(v2 + 8 * (v0 + 1920)))(**(&off_278E1E340 + (v0 ^ 0x186)), *v1, *(v1 + 12), v3 - 120, v3 - 132);
  return (*(v2 + 8 * ((61 * (((v0 ^ ((v4 ^ 0x67DD9DCF) - 4457734 + (((v0 - 1587890603) & 0x5EA549BF ^ 0xCFBB3A37) & (2 * v4)) == 2006554828)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_2444ACC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v37 = (*(v33 + 8 * (v30 ^ 0x8BDu)))(*v34, *v32, *(v32 + 12), v36 - 120, v36 - 132);
  v45 = (v37 ^ 0xEF9BB9DB) + ((v30 - v35 + 1870) ^ 0x928A3EA) + ((2 * v37) & 0xDF3773B6);
  if (v45 == v29)
  {
    v55 = 4294922279;
  }

  else
  {
    if (v45 == 1738119369)
    {
      v46 = (*(v33 + 8 * (v35 + v31 + 32)))(24, 0x1010040E2407E0ALL);
      return (*(v33 + 8 * (((v46 != 0) * (v35 + v31 - 2229)) ^ (v35 + v31 - 1874))))(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
    }

    v56 = (v36 - 108) | 0x211FEA39;
    *(v36 - 104) = (946232179 * ((v56 - ((v36 - 108) & 0x211FEA39)) ^ 0xB164D6F6)) ^ 0xE41B307;
    *(v36 - 100) = -946232179 * ((v56 - ((v36 - 108) & 0x211FEA39)) ^ 0xB164D6F6) + 158895975 * v45 + 854492864;
    (*(v33 + 8 * (v35 + 2127920423)))(v36 - 108);
    if (*(v36 - 108) == 2096038059)
    {
      v55 = 4294922280;
    }

    else
    {
      v55 = 0;
    }
  }

  return (*(v33 + 8 * ((2408 * (v55 == 0)) ^ 0x1BC)))(v55, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_2444AD520()
{
  v3 = ((v0 - 1365082606) & 0x515D7F4B ^ 0x1E342672) + *(v2 - 0x5444F50BE4A2A300);
  v4 = *(v2 - 0x5444F50BE4A2A304) + 577972889;
  v5 = v3 < 0x449C53EC;
  v6 = v3 > v4;
  if (v4 < 0x449C53EC != v5)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((968 * v6) ^ v0)))(4294922262);
}

uint64_t sub_2444AD5C8@<X0>(int a1@<W8>)
{
  v5 = *(v4 + v3);
  v6 = (*(v5 + (a1 - 644361910)) << 24) | (*(v5 + (a1 - 644361909)) << 16) | (*(v5 + (a1 - 644361908)) << ((v1 ^ 0x4B) + 5)) | *(v5 + (a1 - 644361907));
  *(v4 - 0x5444F50BE4A2A300) = a1 + v1 - 447 - 389;
  return (*(v2 + 8 * ((27 * (v6 != 0)) ^ v1)))();
}

uint64_t sub_2444AD694@<X0>(int a1@<W8>)
{
  v4 = v2 ^ 0x2E2;
  v5 = (v2 ^ 0x96C00BED) + v1;
  v6 = ((v2 ^ 0x2E2) - 867) | 0x181;
  if ((a1 - 1837038327) < 0xB8E933B7 != v5 < 0xB8E933B7)
  {
    v7 = (a1 - 1837038327) < 0xB8E933B7;
  }

  else
  {
    v7 = a1 - 1837038327 > v5;
  }

  return (*(v3 + 8 * ((v7 * (v6 ^ 0x190)) ^ v4)))(0);
}

uint64_t sub_2444AD710@<X0>(int a1@<W8>)
{
  v7 = v3 ^ 0x530;
  v8 = (*(v1 + (a1 + v4)) << 24) | (*(v1 + (a1 + v4 + 1)) << 16) | (*(v1 + (a1 + v4 + 2)) << ((v7 + 96) & 0xCD ^ v2)) | *(v1 + (a1 + v4 + 3));
  *(v6 - 0x5444F50BE4A2A300) = a1 + v7 - 1313 - 306;
  return (*(v5 + 8 * ((235 * (v8 != 0)) ^ v7)))(0);
}

uint64_t sub_2444AD7AC()
{
  v6 = *(v2 + 8 * (v1 ^ 0x82D));
  *(v5 - 160) = v0 << (((v1 + 83) & 0xFBu) + 124);
  *(v5 - 152) = v0;
  v7 = v6();
  v9 = v3 == 0x5444F50BE4A2A30CLL || v7 == 0;
  return (*(v2 + 8 * ((v9 * (v4 + ((v1 + 2144697309) & 0xFEFFFFEC) - 2171)) ^ v1)))(4294922294);
}

uint64_t sub_2444AD850()
{
  v7 = *(v4 - 0x5444F50BE4A2A300);
  *(v6 - 168) = v0;
  v8 = v1 - v3 + 997;
  v9 = v5 + v1 - 1998;
  v10 = v5 + v1 - 306;
  v11 = *(v4 - 0x5444F50BE4A2A304) + 924791912;
  v12 = ((v7 + 853552917) < 0x59485DBB) ^ (v11 < ((v9 + 1497914677) ^ v8));
  v13 = v7 + 853552917 > v11;
  if (v12)
  {
    v13 = (v7 + 853552917) < 0x59485DBB;
  }

  return (*(v2 + 8 * (v10 | (32 * v13))))(341);
}

uint64_t sub_2444AD95C@<X0>(char a1@<W0>, unint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, unsigned int a7@<W7>, uint64_t a8@<X8>)
{
  v19 = bswap64(*(*(v18 + v17) + (((v13 + v15 - 4) << ((9 * (((v14 + 67) | 1) ^ a1)) ^ a3)) & a4) + ((v13 + v15 - 4) ^ a2) + 0x6443011D005CB20ALL));
  *(v10 - 3) = (v19 + a8 - (a5 & (2 * v19))) ^ a8;
  LODWORD(v19) = *(v18 + v8);
  *(v18 + v8) = v19 + 8;
  v20 = *(v18 + v17);
  *(v10 - 1) = (*(v20 + (v13 + v19 + 4)) << 24) | (*(v20 + (v13 + v19 + 5)) << 16) | (*(v20 + (v13 + v19 + 6)) << 8) | *(v20 + (v13 + v19 + 7));
  LODWORD(v19) = *(v18 + v8);
  *(v18 + v8) = v19 + 4;
  v21 = *(v18 + v17);
  *v10 = (*(v21 + (v19 + v13)) << 24) | (*(v21 + (v19 + v13 + 1)) << 16) | (*(v21 + (v19 + v13 + 2)) << 8) | *(v21 + (v19 + v13 + 3));
  LODWORD(v19) = *(v18 + v8);
  *(v18 + v8) = v19 + 4;
  LODWORD(v19) = v19 + v13 + *(v10 - 1) + *v10;
  v22 = v19 + v9;
  v23 = *(v18 + v11) + a6;
  v24 = v19 > a7;
  v25 = v24 ^ (v23 < v9);
  v26 = v22 > v23;
  if (!v25)
  {
    v24 = v26;
  }

  return (*(v16 + 8 * ((v24 * v12) ^ v14)))();
}

uint64_t sub_2444ADABC()
{
  *(v1 + 4) = *(v8 + v7) + v9;
  v10 = *(v8 + v0) + v5;
  *(v8 + v0) = v10;
  *(v1 + 12) = *(v8 + v7) + (v4 + v10 + v3 + 593 - 1713);
  *(v8 + v0) += *v1;
  return (*(v6 + 8 * (((v3 - 466) * (v2 == 0)) ^ v3)))();
}

uint64_t sub_2444ADBD4@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  *(v5 + v3) = 0;
  v7 = v3 + ((a1 - 288) | 0x180u) - 392;
  v8 = a2 + v3 + 1 < v2;
  if (v2 < a2 != v7 > 0xFFFFFFFF2A28F990)
  {
    v8 = v2 < a2;
  }

  return (*(v6 + 8 * ((v8 * v4) ^ a1)))(4294922262);
}

uint64_t sub_2444ADC38()
{
  v3 = (*(v1 + 8 * (v0 + 618)))(*(v2 - 160), 0x1010040F32E1FD2);
  **(v2 - 144) = v3;
  return (*(v1 + 8 * (((v3 == 0) * (((v0 - 1701) | 0x121) ^ 0xFDB)) ^ v0)))();
}

uint64_t sub_2444ADCF8()
{
  *(v3 - 208) = v0;
  v4 = 32 * v0;
  v5 = *(v3 - 168) + v4;
  v6 = *(v3 - 144);
  *(*v6 + v4) = *v5;
  *(*v6 + v4 + 8) = *(v5 + 8);
  v7 = *(v5 + 12);
  *(v3 - 184) = v5 + 12;
  *(v3 - 176) = v5 + 8;
  *(*v6 + v4 + 12) = v7;
  *(*v6 + v4 + 16) = 0;
  *(*v6 + v4 + 24) = 0;
  *(*v6 + v4 + 16) = (*(v2 + 8 * (v1 ^ 0xBF9)))(*(v5 + 8), 0x100004077774924);
  return (*(v2 + 8 * (((*(*v6 + v4 + 16) == 0) * ((v1 ^ 0x227) + v1 - 691 - 230)) ^ v1)))();
}

void sub_2444ADDC8()
{
  v1 = *(v0 - 208);
  v2 = *(v0 - 168);
  *(v0 - 192) = v1;
  *(v0 - 200) = v2 + 32 * v1 + 16;
  JUMPOUT(0x2444ADDFCLL);
}

uint64_t sub_2444ADFE8@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = *(v3 + v4 - 1 - 31);
  v8 = a3 + v4 - 1;
  *(v8 - 15) = *(v3 + v4 - 1 - 15);
  *(v8 - 31) = v7;
  return (*(v6 + 8 * (((((v5 + 1326) ^ a1) == (v4 & 0xFFFFFFE0)) * a2) ^ v5)))();
}

uint64_t sub_2444AE164@<X0>(uint64_t a1@<X8>)
{
  v8 = v2 - 1;
  *(a1 + v8) = *(v1 + v8);
  return (*(v6 + 8 * (((v8 == (v3 ^ (v7 + 583) ^ v5)) * v4) ^ v3)))();
}

uint64_t sub_2444AE1A0()
{
  v3 = *(v2 - 160) & 0x874AB96F;
  v4 = (*(v0 + 8 * (v1 ^ (v1 - 2289))))(**(v2 - 184), 0x100004077774924);
  v5 = *(v2 - 144);
  v6 = 32 * *(v2 - 192);
  *(*v5 + v6 + 24) = v4;
  return (*(v0 + 8 * (((*(*v5 + v6 + 24) == 0) * (v3 + 133)) ^ (v1 - 2127918736))))();
}

uint64_t sub_2444AE304()
{
  (*(v3 + 8 * (v0 + v5)))();
  v6 = *(v4 + 32 * v1 + 24) == 0;
  return (*(v3 + 8 * (((2 * v6) | (4 * v6)) ^ (v2 - 476))))();
}

uint64_t sub_2444AE37C@<X0>(int a1@<W8>)
{
  v5 = (a1 + 87) | 9;
  v6 = a1 ^ 0x9DE;
  (*(v1 + 8 * (a1 ^ 0x9DE)))(v2);
  **(v4 - 144) = 0;
  (*(v1 + 8 * v6))(*(v4 - 168));
  return (*(v1 + 8 * (((v3 == 0x5444F50BE4A2A30CLL) * (((v5 ^ 0x388) + 220) ^ 0x2E8)) ^ v5)))(4294922293);
}

uint64_t sub_2444AE450()
{
  (*(v3 + 8 * (v1 + v7)))();
  *(v6 + v5) = 0;
  *(v6 - 0x5444F50BE4A2A304) = 573122899;
  *(v6 - 0x5444F50BE4A2A300) = 644361910;
  (*(v3 + 8 * (v1 ^ (v4 - 1809))))(v6 + v5);
  return (*(v3 + 8 * ((((v7 + v1 + 712748680) & 0xD5844EFD ^ (v7 + v1 - 663)) * (v2 == 0)) ^ (v7 + v1 - 1782))))(v0);
}

void sub_2444AE568()
{
  *v1 = 0;
  *(v1 + 8) = 2087794168;
  *(v1 + 12) = 0;
  (*(v2 + 8 * (v0 + v3)))(v1);
  sub_2444AB0E8();
}

void sub_2444AE5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35)
{
  (*(v36 + 8 * (v35 ^ 0x9DE)))(*(v37 - 168));
  *a35 = *(v37 - 152);
  JUMPOUT(0x2444AE3C4);
}

void Gg9q7vHg34(unint64_t a1, uint64_t a2)
{
  v3 = a1 > 0xFFFFFFFFFFFFFFEFLL && a2 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2444AE744(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v3 = (*(v2 + 18616))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v2 + 8 * ((123 * v3) ^ 0x823u)))(4294922293);
}

void sub_2444AEBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, uint64_t a16, int a17, int a18)
{
  v21 = *(v20 - 144);
  (*(v18 + 8 * (v19 ^ (v19 + 1875))))(*v21);
  *v21 = a14;
  *a15 = a18;
  JUMPOUT(0x2444AEC38);
}

uint64_t sub_2444AED50()
{
  v4 = *(v1 + 12);
  *(v3 - 200) = v1 + 12;
  v5 = *(v1 + 8) - 704710245;
  v6 = v4 - 304030200 > v5;
  if ((v4 - 304030200) < 0xEDE0DE04 != v5 < ((v0 + 78) ^ 0xA26) - 304032275)
  {
    v6 = (v4 - 304030200) < 0xEDE0DE04;
  }

  return (*(v2 + 8 * ((1014 * v6) ^ v0)))();
}

uint64_t sub_2444AEDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = *(v17 + 8 * (((((v15 - 541) | 0x640) - 1607) * (v16 == 0)) ^ v15));
  *(v19 - 160) = v18;
  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_2444AEE08@<X0>(int a1@<W8>)
{
  v3 = (a1 + 649809922) & 0xD944AFFB;
  v4 = (v3 ^ 0x1DF059B6) + v1;
  v5 = (((v3 ^ 0x1A3) + 1070330891) & (2 * (2 * v1 - 801360082))) + ((2 * v1 - 801360082) ^ 0x1FE5FDFF);
  if (v4 < 0x35D24449 != (v5 + 367806026) < 0x35D24449)
  {
    v6 = (v5 + 367806026) < 0x35D24449;
  }

  else
  {
    v6 = v5 + 367806026 > v4;
  }

  return (*(v2 + 8 * (((2 * !v6) | (4 * !v6)) ^ v3)))();
}

void sub_2444AEECC(int a1@<W8>)
{
  v5 = *(v4 - 152);
  v6 = *(v4 - 200);
  v7 = (v1 - 1171) | 1;
  *(v4 - 152) = v5;
  v8 = *(v5 - 0x77A519BB6C10A1BALL);
  v9 = ((v7 - 536874186) ^ a1) + ((2 * a1) & 0xBFFFED76) + 536873285;
  *(v8 + v9 + 1) = 91;
  *(v8 + v9 + 2) = 44;
  *(v8 + v9) = 56;
  *(v8 + v9 + 3) = -24;
  v10 = *v6 + 4;
  *(v4 - 200) = v6;
  *v6 = v10;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2444AF12C()
{
  v3 = *(v1 + 12) - 1417951348;
  v4 = *(v1 + 8) + ((v0 + 368) ^ 0x9399E0C3);
  v5 = v3 < 0xAB7BC788;
  v6 = v3 > v4;
  if (v5 != v4 < ((v0 + 368) ^ 0xAB7BC454))
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((25 * v6) ^ v0)))();
}

uint64_t sub_2444AF1E8@<X0>(int a1@<W8>)
{
  v3 = v1 - 1613715873;
  v4 = (v1 - 1613715873) < 0xB7B28AC4;
  v5 = ((2 * ((v1 << (a1 + 39)) - 801360082)) & 0x6FE3C8F0) + (((v1 << (a1 + 39)) - 801360082) ^ 0xB7F1E479);
  if (v4 != v5 - 4151733 < 0xB7B28AC4)
  {
    v6 = v5 - 4151733 < 0xB7B28AC4;
  }

  else
  {
    v6 = v5 - 4151733 > v3;
  }

  return (*(v2 + 8 * ((1489 * v6) ^ a1)))();
}

uint64_t sub_2444AF288@<X0>(int a1@<W8>)
{
  v6 = *(v5 - 152);
  *(v5 - 152) = v6;
  v7 = *(v6 - 0x77A519BB6C10A1BALL);
  v8 = ((2 * a1) & 0x76F7CC72) + (((v3 ^ 0x59) + 997974708) ^ a1) - 997975609;
  *(v7 + v8) = 0;
  *(v7 + v8 + 1) = 0;
  *(v7 + v8 + 2) = 0;
  *(v7 + v8 + 3) = 1;
  *v1 += 4;
  return (*(v2 + 8 * ((((((v3 ^ 0x59) - 899) | 0x890) ^ 0x3AEB1BF1) + v4 + (v3 ^ 0x59) - 901) ^ v3 ^ 0x59)))(0);
}

uint64_t sub_2444AF4B8@<X0>(int a1@<W8>)
{
  v4 = a1 + 22;
  v5 = (a1 - 2194) | 0x408;
  v6 = *(v1 + 12);
  *(v3 - 208) = v1 + 12;
  v7 = *(v1 + 8) - 1332476917;
  v8 = v6 - 931796868 > v7;
  if (v7 < 0xC875E874 != v6 - 931796868 < ((827 * (v5 ^ 0x40A)) ^ 0xC875EE02))
  {
    v8 = v6 - 931796868 < ((827 * (v5 ^ 0x40A)) ^ 0xC875EE02);
  }

  return (*(v2 + 8 * ((420 * v8) ^ v4)))();
}

uint64_t sub_2444AF58C@<X0>(int a1@<W8>)
{
  v3 = a1 - 14;
  v4 = (v3 ^ 0xD93C6D7) + v1;
  v5 = ((2 * (2 * v1 - 801360082)) & 0x6FC7EAFC) + ((2 * v1 - 801360082) ^ 0xB7E3F57F);
  if (v4 < 0x2575AC52 != v5 + 1838266067 < (((v3 - 294) | 0x408) ^ 0x2575A85Au))
  {
    v6 = v5 + 1838266067 < (((v3 - 294) | 0x408) ^ 0x2575A85Au);
  }

  else
  {
    v6 = v5 + 1838266067 > v4;
  }

  return (*(v2 + 8 * (((2 * !v6) | (16 * !v6)) ^ v3)))();
}

uint64_t sub_2444AF644@<X0>(int a1@<W6>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v27 = *(v26 - 152);
  v28 = *(v26 - 208);
  *(v26 - 152) = v27;
  v29 = *(v27 - 0x77A519BB6C10A1BALL) + ((2 * a2) & 0x1BADAFBFALL) - 0x675FFED8DD6D7DFDLL + ((v24 - 131) ^ a2 ^ 0x675FFED8DD6D7E78);
  *v29 = -1;
  *(v29 + 2) = -1;
  *(v29 + 3) = -1;
  *(v29 + 7) = (a24 - ((2 * a24) & 0x4A) + 37) ^ 0x25;
  LODWORD(v29) = *v28 + 8;
  *(v26 - 208) = v28;
  *v28 = v29;
  return (*(v25 + 8 * ((a1 + ((v24 - 131) ^ 0xC514F457) + ((v24 - 999) | 0x580) - 3690) ^ (v24 - 131))))(0);
}

uint64_t sub_2444AF8CC()
{
  v3 = (*(v0 + 8 * (v1 + 2149)))();
  (*(v0 + 8 * (v1 ^ 0x9A3)))(v3, *(&off_278E1E340 + v1 - 150) - 4, **(v2 - 144), *(*(v2 - 144) + 12));
  v4 = (*(v0 + 8 * (v1 ^ 0x9BF)))(*(v2 - 168), 0);
  *(v2 - 192) = 0;
  return (*(v0 + 8 * (((((v1 - 45) ^ (v4 == 0)) & 1) * (((v1 + 199551825) & 0xF41B177F) - 876)) ^ v1)))(4294922293);
}

uint64_t sub_2444AF9B0()
{
  v6 = v0;
  v4 = *(v2 + 8 * ((((*(v2 + 8 * (v1 + 1431)))(*(v3 - 168), v0, 0) == 0) * (((v1 - 2129351523) | 0x440047C2) + 988481595)) ^ v1));
  *(v3 - 192) = v6;
  return v4(4294922293);
}

uint64_t sub_2444AFA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = v34 - 660;
  (*(v35 + 8 * (v37 ^ 0x9FA)))(v36, *(&off_278E1E340 + v37 - 208));
  (*(v35 + 8 * (v37 ^ 0x829)))(v36);
  (*(v35 + 8 * (v37 ^ 0x825)))(v36, a34);
  v38 = (*(v35 + 8 * (v37 + 2102)))();
  return (*(v35 + 8 * (((v38 == *(&off_278E1E340 + (v37 ^ 0xFB)) - 8) * (((v37 - 223) | 0xE1) + 3 * (v37 ^ 0x27A) - 366)) ^ v37)))(v38, v39, v40, v41, v42, v43, 988483877, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_2444AFB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(v36 + 8 * (v34 + 2075)))(a27, a34);
  v37 = (*(v36 + 8 * (v34 ^ 0x9CA)))();
  return (*(v36 + 8 * (((v37 == v35) * (3 * (v34 ^ 0x8C) + ((v34 + 1808) ^ 0x82))) ^ v34)))(v37, v38, v39, v40, v41, v42, 988483877, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_2444AFC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(v36 + 8 * (v34 ^ 0x825)))(a27, a34);
  v37 = (*(v36 + 8 * (v34 + 2102)))();
  return (*(v36 + 8 * (((v37 == v35) * (222 * (v34 ^ 0xDA) + ((v34 + 1808) ^ 0xFFFFF895))) ^ v34)))(v37, v38, v39, v40, v41, v42, 988483877, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_2444AFD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(v36 + 8 * (v34 + 2075)))(a27, a34);
  v37 = (*(v36 + 8 * (v34 ^ 0x9CA)))();
  return (*(v36 + 8 * (((v37 == v35) * (83 * ((v34 - 755806448) & 0x2D0CB7FF ^ 0x7EC) - 194)) ^ v34)))(v37, v38, v39, v40, v41, v42, 988483877, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_2444AFE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  (*(v36 + 8 * (v34 ^ 0x825)))(a27, a34);
  v37 = (*(v36 + 8 * (v34 + 2102)))();
  return (*(v36 + 8 * (((v37 == v35) * (((v34 ^ 0xC514F70D) + 988483613) ^ 0x366)) ^ v34)))(v37, v38, v39, v40, v41, v42, 988483877, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_2444AFF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = ((v27 + 63) | 0x93) - a7;
  v30 = (*(v28 + 8 * (v27 ^ 0x9F6)))(24, 0x1010040E2407E0ALL);
  return (*(v28 + 8 * ((((v30 == 0) ^ (v29 - 1)) & 1 | (4 * (((v30 == 0) ^ (v29 - 1)) & 1))) ^ v27)))(v30, v31, v32, v33, v34, v35, 988483877, v36, a9, a10, a11, a12, a13, a14, a15, a1, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_2444AFFA0(uint64_t a1)
{
  *(v3 - 176) = a1 + 0x2D8A91BAB5CE5450;
  *a1 = 0;
  *(a1 + 8) = -1570205966;
  *(a1 + 12) = 1459387577;
  *(a1 + 16) = 0;
  v5 = (*(v1 + 8 * (v2 ^ 0xDA4)))(4096, 0x100004077774924);
  *a1 = v5;
  return (*(v1 + 8 * ((114 * (((v2 + 32) ^ (v5 == 0)) & 1)) ^ v2)))();
}

void sub_2444B01CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  (*(v8 + 8 * (v7 + a7)))(v9);
  *(v10 - 176) = v7;
  (*(v8 + 8 * (v7 ^ 0xC514FF39)))();
  (*(v8 + 8 * (v7 + 988483865)))();
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2444B05E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  (*(v31 + 8 * v33))();
  v35 = *(v31 + 8 * ((v32 - 1925) ^ (235 * (a29 != 0))));
  *(v34 - 192) = v30;
  return v35(v29);
}

uint64_t sub_2444B0638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v37 + 8 * (*(v39 - 176) ^ 0xC514FF39)))(a29);
  v46 = *(v39 - 144);
  *(v39 - 192) = v36;
  if (v35 == -45004)
  {
    *(v39 - 176) = v38;
    *(v39 - 120) = 0;
    *(v39 - 132) = 0;
    v47 = (*(v37 + 18592))(dword_27EDF1528, *v46, *(v46 + 12), v39 - 120, v39 - 132);
    return (*(v37 + 8 * ((851 * ((v47 ^ 0xF7D57D7E) + 2147481568 + ((2 * v47) & 0xEFAAFAFC) == -2016053919)) ^ 0x528)))(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  }

  else if (v35)
  {
    return (*(v37 + 8 * ((15 * (((v46 == 0) ^ 0xFB) & 1)) ^ 0x627)))(v35, v40, v41, v42, v43, v44, 988483877, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  }

  else
  {
    return (*(v37 + 8 * ((103 * (a35 != 0x2D8A91BAB5CE5450)) ^ 0x324)))(4294922294);
  }
}

uint64_t sub_2444B07DC()
{
  v6 = (*(v1 + 8 * (v2 + 1004)))(*v3, *v0, *(v0 + 12), v5 - 120, v5 - 132);
  if (v4 + v2 + (v6 ^ 0x77DDFF5E) + ((2 * v6) & 0xEFBBFEBC) == 1022557272)
  {
    v7 = *(v1 + 8 * ((((*(v1 + 8 * (v4 ^ (v4 + 1779))))(24, 0x1010040E2407E0ALL) == 0) * (v4 ^ (v4 - 176) ^ 0x730)) ^ (v4 + 988482557)));
    return v7();
  }

  else if (v4 + v2 + (v6 ^ 0x77DDFF5E) + ((2 * v6) & 0xEFBBFEBC) == 1290992731)
  {
    return (*(v1 + 8 * ((15 * (((*(v5 - 144) == 0) ^ 0xFB) & 1)) ^ 0x627)))(4294922279, 0x1010040E2407E0ALL);
  }

  else
  {
    v9 = (v5 - 108) | 0x45AC5797;
    *(v5 - 104) = (v4 + 1227668277) ^ (946232179 * ((v9 - ((v5 - 108) & 0x45AC5797)) ^ 0xD5D76B58));
    *(v5 - 100) = -946232179 * ((v9 - ((v5 - 108) & 0x45AC5797)) ^ 0xD5D76B58) + 158895975 * (v4 + v2 + (v6 ^ 0x77DDFF5E) + ((2 * v6) & 0xEFBBFEBC) + 987920646) - 1748399155;
    (*(v1 + 8 * (v4 ^ (v4 + 1782))))(v5 - 108, 0x1010040E2407E0ALL);
    return (*(v1 + 8 * ((585 * (*(v5 - 108) != 2096038059)) ^ (v4 + 988481974))))(4294922280);
  }
}

uint64_t sub_2444B08D8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = -1570205966;
  *(a1 + 12) = 1459387577;
  *(a1 + 16) = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x9E7)))(4096, 0x100004077774924);
  *a1 = v4;
  return (*(v2 + 8 * ((480 * ((((v1 - 226) ^ (v4 == 0)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_2444B0A18@<X0>(int a1@<W6>, int a2@<W8>)
{
  *(v6 - 184) = v5;
  v7 = a1 + v2 - 1319;
  v8 = ((((v3 << (((a1 + v2 + 41) | 0x87) ^ 0xA6)) ^ 0x44D11DE4) - 1570205966 - ((2 * ((v3 << (((a1 + v2 + 41) | 0x87) ^ 0xA6)) ^ 0x44D11DE4)) & 0x44D11DE4)) ^ 0xA2688EF2) > a2 + 4096;
  return (*(v4 + 8 * ((4 * v8) | (32 * v8) | v7)))();
}

uint64_t sub_2444B0B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v34 = *(v31 + 8 * ((v32 - 1925) ^ (235 * (a29 != 0))));
  *(v33 - 192) = v30;
  return v34(v29, a2, a3, a4, a5, a6, 988483877);
}

uint64_t sub_2444B0D50()
{
  (*(v2 + 8 * (v0 + v1)))(v3);
  (*(v2 + 8 * (v0 ^ 0xC514FEF2)))(**(&off_278E1E340 + v0 + 988481589), *(v4 - 120), *(v4 - 132));
  return (*(v2 + 8 * (v0 + 988481974)))(4294922293);
}

uint64_t sub_2444B0E50(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 0x2D8A91BAB5CE5450);
  v8 = (*(v7 + (v4 + v3 - 4)) << 24) | (*(v7 + (v4 + v3 - 3)) << 16) | (*(v7 + ((v5 - 1265422744) & 0x4B6CD53B ^ (v4 + 807)) + v3) << 8) | *(v7 + (v4 + v3 - 1));
  *(a2 + v2) = v3 + 4;
  return (*(v6 + 8 * ((537 * (v8 == 0)) ^ v5)))();
}

uint64_t sub_2444B0F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21)
{
  v28 = (*(v24 + (v22 + v23)) << 24) | (*(v24 + (v22 + v23 + v25 + 494 - 900)) << 16) | (*(v24 + (v22 + v23 + 2)) << 8) | *(v24 + (v22 + v23 + 3));
  *(a2 + v21) = v22 + 8;
  *a21 = v28;
  return (*(v26 + 8 * ((((((v27 + v25 + 494 - 901) ^ (a2 == 0x2D8A91BAB5CE5450)) & 1) == 0) * (((v25 + 494) ^ 0xBC7) - 2102)) ^ (v25 + 494))))(0);
}

void sub_2444B107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  (*(v10 + 8 * (v7 + a7)))();
  *(v9 + v8) = 0;
  *(v9 - 0x2D8A91BAB5CE5448) = -1570205966;
  *(v9 - 0x2D8A91BAB5CE5444) = 1459387577;
  (*(v10 + 8 * (v7 + 988483877)))(v9 + v8);
  JUMPOUT(0x2444B10F8);
}

uint64_t sub_2444B1100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28)
{
  v35 = (*(v29 + 8 * (v32 + a7)))(*(a8 + v30));
  *(a8 + v30) = a22;
  *a28 = v28;
  *(v33 - 160) = v31;
  return (*(v29 + 6512))(v35);
}

uint64_t sub_2444B1388@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v6 = ((v4 + 1151430653) & 0xF64998F4 ^ 0xFFFFFFFFFFFFFF3BLL) + v3;
  v7 = *(v2 + v6 - 15);
  v8 = *(v2 + v6 - 31);
  v9 = a2 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((121 * ((v3 & 0xFFFFFFE0) == 32)) ^ (a1 + v4 - 1466))))(-197);
}

uint64_t sub_2444B1488@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF972 ^ (v4 + 688)) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((1947 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_2444B1564()
{
  v2 = *(v1 - 184);
  *(v2 - 0x2D8A91BAB5CE5448) = *(v1 - 132) - 1570205966 - ((2 * *(v1 - 132)) & 0x44D11DE4);
  *(v2 - 0x2D8A91BAB5CE5444) = 1459387577;
  (*(v0 + 18688))(MEMORY[0x280AC0078], *(v1 - 120), *(v1 - 132));
  return (*(v0 + 7688))(0);
}

uint64_t sub_2444B15C8@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a2 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((679 * (v6 == 0)) ^ (a1 + v4 - 845))))();
}

void sub_2444B16AC(int a1@<W8>)
{
  v4 = a1 & 0xDF97FFDB;
  (*(v3 + 8 * ((a1 & 0xDF97FFDB) + v1)))();
  *(v2 - 0x2D8A91BAB5CE5450) = 0;
  *(v2 - 0x2D8A91BAB5CE5448) = -1570205966;
  *(v2 - 0x2D8A91BAB5CE5444) = 1459387577;
  (*(v3 + 8 * (v4 ^ 0xC514FF25)))(v2 - 0x2D8A91BAB5CE5450);
  JUMPOUT(0x2444B174CLL);
}

void sub_2444B1860(int a1@<W6>, int a2@<W8>)
{
  v5 = a2 - 155;
  (*(v2 + 8 * (a2 - 155 + a1)))();
  v6 = *(v4 - 144);
  *v6 = 0;
  *(v6 + 8) = 400680041;
  *(v6 + 12) = 0;
  (*(v2 + 8 * (v5 ^ (v3 + 1875))))(v6);
  sub_2444AE798();
}

uint64_t OZpDoyky(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF10E0) ^ 0x27)) ^ byte_244FB9590[byte_244F6B3B0[(49 * ((qword_27EDF1468 - dword_27EDF10E0) ^ 0x27))] ^ 0x9E]) + 315);
  v2 = *(&off_278E1E490 + (byte_244FB9690[byte_244F6B4B0[(49 * ((qword_27EDF1468 + *v1) ^ 0x27))] ^ 0xB5] ^ (49 * ((qword_27EDF1468 + *v1) ^ 0x27))) + 587);
  v3 = (*v2 - *v1) ^ &v8;
  *v1 = 2085698353 * v3 - 0x1FC28598584843D9;
  *v2 = 2085698353 * (v3 ^ 0xE03D7A67A7B7BC27);
  v4 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF10E0) ^ 0x27)) ^ byte_244FB9390[byte_244F6B0B0[(49 * ((qword_27EDF1468 + dword_27EDF10E0) ^ 0x27))] ^ 0x4E]) - 30);
  v5 = *(v4 + 8504);
  v6 = 412655981 * (&v9 ^ 0x13AC0AB1CD791582);
  v11 = v6 ^ 0x9DC89039;
  v9 = v5 ^ v6;
  v12 = a1;
  (*(v4 + 8 * (((49 * ((*v2 - *v1) ^ 0x27)) ^ byte_244FB9690[byte_244F6B4B0[(49 * ((*v2 - *v1) ^ 0x27))] ^ 0x7D]) + 22847) - 8))(&v9);
  return (v10 - 1216124116);
}

uint64_t xrPnDyPw()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = *(&off_278E1E490 + ((49 * (dword_27EDF10C0 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244FB9690[byte_244F6B4B0[(49 * (dword_27EDF10C0 ^ 0x27 ^ qword_27EDF1468))] ^ 0x6F]) + 554);
  v1 = 49 * ((qword_27EDF1468 - *v0) ^ 0x27);
  v2 = *(&off_278E1E490 + (byte_244F1BEB4[(byte_245010C34[v1 - 4] ^ 0x92) - 4] ^ v1) + 629);
  v3 = *v2 - *v0 - &v8;
  *v0 = 2085698353 * v3 + 0x70361C3DEDF0077;
  *v2 = 2085698353 * (v3 ^ 0xE03D7A67A7B7BC27);
  v4 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF10C0) ^ 0x27)) ^ byte_244F6B2B0[byte_244F1BDB0[(49 * ((qword_27EDF1468 - dword_27EDF10C0) ^ 0x27))] ^ 0x67]) - 72);
  v5 = *(v4 + 8616);
  v6 = 810199703 * ((((2 * &v9) | 0xF7EB74D2280EDF7CLL) - &v9 + 0x40A4596EBF89042) ^ 0xF0206DDFF28E7933);
  v11 = v6 + 1007956397;
  v10 = v5 ^ v6;
  (*(v4 + 8 * ((byte_244FB969C[(byte_244F6B4BC[(49 * ((*v2 + *v0) ^ 0x27)) - 12] ^ 0x6F) - 12] ^ (49 * ((*v2 + *v0) ^ 0x27))) + 22810) - 8))(&v9);
  return v9;
}

uint64_t g4Bksweo(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF08C8) ^ 0x27)) ^ byte_244FB9490[byte_244F6B1B0[(49 * ((qword_27EDF1468 - dword_27EDF08C8) ^ 0x27))] ^ 0x70]) + 1370);
  v11 = *(&off_278E1E490 + (byte_244FB949C[(byte_244F6B1B0[(49 * (*v10 ^ qword_27EDF1468 ^ 0x27))] ^ 0x70) - 12] ^ (49 * (*v10 ^ qword_27EDF1468 ^ 0x27))) + 568);
  v12 = (*v11 - *v10) ^ &v15;
  *v10 = 2085698353 * v12 + 0x70361C3DEDF0077;
  *v11 = 2085698353 * (v12 ^ 0xE03D7A67A7B7BC27);
  v13 = 412655981 * (((v16 | 0x451B4092) - (v16 & 0x451B4092)) ^ 0x88625510);
  v17 = a5;
  v18 = a7;
  v24 = (a2 ^ 0x7FDFEDFD) + ((2 * a2) & 0xFFBFDBFA) - v13 - 1640195396;
  v25 = v13 + 1534947661 * a4 + 187598475;
  v19 = a1;
  v21 = a3;
  v22 = a9;
  v20 = v13 + 5033;
  v23 = a10;
  v16[0] = a8 - ((2 * a8) & 0x7EE08B28) - v13 - 1083161196;
  v16[1] = v13 ^ ((a6 ^ 0xBFBF7E67) + 1684012508 + ((2 * a6) & 0x7F7EFCCE));
  LOBYTE(v10) = 49 * ((*v11 + *v10) ^ 0x27);
  (*(*(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF08C8) ^ 0x27)) ^ byte_244FB9490[byte_244F6B1B0[(49 * ((qword_27EDF1468 + dword_27EDF08C8) ^ 0x27))] ^ 0x70]) - 26) + (byte_244FB969C[(byte_244F6B4BC[v10 - 12] ^ 0xB5) - 12] ^ v10) + 22931))(v16);
  return (v26 - 1216124116);
}

uint64_t TBQFRWlW(uint64_t a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF1480) ^ 0x27)) ^ byte_244FB9690[byte_244F6B4B0[(49 * ((qword_27EDF1468 - dword_27EDF1480) ^ 0x27))] ^ 0xB5]) + 262);
  v4 = 49 * ((qword_27EDF1468 - *v3) ^ 0x27);
  v5 = *(&off_278E1E490 + (byte_244FB969C[(byte_244F6B4BC[v4 - 12] ^ 0xEA) - 12] ^ v4) + 461);
  v6 = 2085698353 * (*v3 ^ &v11 ^ 0xE03D7A67A7B7BC27 ^ *v5);
  *v3 = v6;
  *v5 = v6;
  v7 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF1480) ^ 0x27)) ^ byte_244F1BEB0[byte_245010C30[(49 * ((qword_27EDF1468 - dword_27EDF1480) ^ 0x27))] ^ 0x92]) + 35);
  v8 = *(v7 + 8600);
  v9 = 810199703 * (((~v12 | 0xF9AFB056C9304A2ELL) + (v12 | 0x6504FA936CFB5D1)) ^ 0xD85981FD046A35DLL);
  v13 = a3;
  v14 = a1;
  v15 = v8 ^ v9;
  v12[0] = -401983495 - v9;
  v12[1] = v9 ^ ((a2 ^ 0xEFCDDB7F) + 2142699516 + ((2 * a2) & 0xDF9BB6FE));
  (*(v7 + 8 * ((byte_244FB949C[(byte_244F6B1B0[(49 * ((*v5 + *v3) ^ 0x27))] ^ 0xF9) - 12] ^ (49 * ((*v5 + *v3) ^ 0x27))) + 22980) - 8))(v12);
  return (v16 - 1216124116);
}

uint64_t CWeMQvFE(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF03C8) ^ 0x27)) ^ byte_244FB9590[byte_244F6B3B0[(49 * ((qword_27EDF1468 + dword_27EDF03C8) ^ 0x27))] ^ 0xE4]) + 340);
  v6 = *(&off_278E1E490 + (byte_244FB949C[(byte_244F6B1B0[(49 * ((qword_27EDF1468 - *v5) ^ 0x27))] ^ 0xF9) - 12] ^ (49 * ((qword_27EDF1468 - *v5) ^ 0x27))) + 671);
  v7 = 2085698353 * ((*v6 - *v5) ^ &v12 ^ 0xE03D7A67A7B7BC27);
  *v5 = v7;
  *v6 = v7;
  v8 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF03C8) ^ 0x27)) ^ byte_244FB9590[byte_244F6B3B0[(49 * ((qword_27EDF1468 + dword_27EDF03C8) ^ 0x27))] ^ 7]) - 49);
  v9 = *(v8 + 8112);
  v10 = 399162391 * (((&v13 | 0xE71625EF17CBB405) - &v13 + (&v13 & 0x18E9DA10E8344BF8)) ^ 0x330FB94959D46C2);
  v17 = -1420357021 - v10;
  v18 = a5;
  v13 = v9 ^ v10;
  v15 = a3;
  v16 = a1;
  v19 = v10 + a2;
  v20 = a4 - v10;
  (*(v8 + 8 * ((byte_244FB9598[(byte_244F6B3B8[(49 * ((*v6 - *v5) ^ 0x27)) - 8] ^ 0xE4) - 8] ^ (49 * ((*v6 - *v5) ^ 0x27))) + 23056) - 8))(&v13);
  return v14;
}

uint64_t qENIaLkr(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF1120) ^ 0x27)) ^ byte_244FB9590[byte_244F6B3B0[(49 * ((qword_27EDF1468 + dword_27EDF1120) ^ 0x27))] ^ 7]) + 1401);
  v2 = *(v1 - 4);
  v3 = *(&off_278E1E490 + (byte_244F6B2B0[byte_244F1BDB8[(49 * ((qword_27EDF1468 + v2) ^ 0x27)) - 8] ^ 0x67] ^ (49 * ((qword_27EDF1468 + v2) ^ 0x27))) + 522);
  v4 = 2085698353 * ((*v3 - v2) ^ &v9 ^ 0xE03D7A67A7B7BC27);
  *(v1 - 4) = v4;
  *v3 = v4;
  v5 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF1120) ^ 0x27)) ^ byte_244F6B2B0[byte_244F1BDB0[(49 * ((qword_27EDF1468 - dword_27EDF1120) ^ 0x27))] ^ 0x67]) - 72);
  v6 = 715682041 * (((&v10 | 0x66A1E7A50D7FE2F5) - &v10 + (&v10 & 0x995E185AF2801D08)) ^ 0x1F706480F83919A7);
  v12 = *(v5 + 8768) - v6;
  v11 = v6 ^ 0x7CDBC4F6;
  v10 = a1;
  v7 = 49 * (*(v1 - 4) ^ 0x27 ^ *v3);
  return (*(v5 + 8 * ((byte_244FB969C[(byte_244F6B4BC[v7 - 12] ^ 0xEA) - 12] ^ v7) + 22771) - 8))(&v10);
}

uint64_t QSIlMWCo(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF03A8) ^ 0x27)) ^ byte_244F1BEB0[byte_245010C30[(49 * ((qword_27EDF1468 + dword_27EDF03A8) ^ 0x27))] ^ 0x78]) + 1225);
  v2 = *(v1 - 4);
  v3 = *(&off_278E1E490 + (byte_244FB969C[(byte_244F6B4BC[(49 * ((qword_27EDF1468 + v2) ^ 0x27)) - 12] ^ 0xB5) - 12] ^ (49 * ((qword_27EDF1468 + v2) ^ 0x27))) + 587);
  v4 = 2085698353 * ((*v3 + v2) ^ &v9 ^ 0xE03D7A67A7B7BC27);
  *(v1 - 4) = v4;
  *v3 = v4;
  v5 = *(&off_278E1E490 + ((49 * (dword_27EDF03A8 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244F1BEB0[byte_245010C30[(49 * (dword_27EDF03A8 ^ 0x27 ^ qword_27EDF1468))] ^ 0x92]) + 35);
  v6 = *(v5 + 8320);
  v7 = 412655981 * (((&v10 | 0xE24A9EF550D064A4) - (&v10 & 0xE24A9EF550D064A4)) ^ 0xF1E694449DA97126);
  v13 = a1;
  v10 = v6 ^ v7;
  v12 = v7 ^ 0x9DC89039;
  (*(v5 + 8 * ((byte_244F6B2B0[byte_244F1BDB8[(49 * ((*v3 - *(v1 - 4)) ^ 0x27)) - 8] ^ 7] ^ (49 * ((*v3 - *(v1 - 4)) ^ 0x27))) + 22805) - 8))(&v10);
  return v11;
}

uint64_t SljH37Yp(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF10F0) ^ 0x27)) ^ byte_244FB9490[byte_244F6B1B0[(49 * ((qword_27EDF1468 - dword_27EDF10F0) ^ 0x27))] ^ 0x1C]) + 113);
  v2 = 49 * (*v1 ^ qword_27EDF1468 ^ 0x27);
  v3 = *(&off_278E1E490 + (byte_244FB9598[(byte_244F6B3B8[v2 - 8] ^ 0x9E) - 8] ^ v2) + 503);
  v4 = (*v3 + *v1) ^ &v9;
  *v1 = 2085698353 * v4 - 0x1FC28598584843D9;
  *v3 = 2085698353 * (v4 ^ 0xE03D7A67A7B7BC27);
  v5 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF10F0) ^ 0x27)) ^ byte_244FB9490[byte_244F6B1B0[(49 * ((qword_27EDF1468 - dword_27EDF10F0) ^ 0x27))] ^ 0xF9]) + 77);
  v6 = *(v5 + 8272);
  v7 = 412655981 * (((&v10 | 0x90C5C21111769DECLL) - &v10 + (&v10 & 0x6F3A3DEEEE896210)) ^ 0x8369C8A0DC0F886ELL);
  v12 = v7 ^ 0x9DC89039;
  v13 = a1;
  v10 = v6 ^ v7;
  (*(v5 + 8 * ((byte_244F6B2B0[byte_244F1BDB8[(49 * (*v1 ^ 0x27 ^ *v3)) - 8] ^ 7] ^ (49 * (*v1 ^ 0x27 ^ *v3))) + 22805) - 8))(&v10);
  return v11;
}

uint64_t cdHFeFDJ(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF10C8) ^ 0x27)) ^ byte_244F1BEB0[byte_245010C30[(49 * ((qword_27EDF1468 + dword_27EDF10C8) ^ 0x27))] ^ 0x92]) + 186);
  v2 = *(v1 - 4);
  v3 = *(&off_278E1E490 + (byte_244FB9490[byte_244F6B1B0[(49 * ((qword_27EDF1468 - v2) ^ 0x27))] ^ 0x70] ^ (49 * ((qword_27EDF1468 - v2) ^ 0x27))) + 568);
  v4 = v2 ^ &v7 ^ *v3;
  *(v1 - 4) = 2085698353 * v4 + 0x1FC28598584843D9;
  *v3 = 2085698353 * (v4 ^ 0xE03D7A67A7B7BC27);
  v5 = 399162391 * (v8 ^ 0x8256F2C7);
  v8[0] = v5 ^ 0x423;
  v8[2] = v5 ^ ((a1 ^ 0x1FEFFF37) - 17972 + ((2 * a1) & 0x3FDFFE6E));
  LOBYTE(v3) = 49 * (*(v1 - 4) ^ 0x27 ^ *v3);
  (*(*(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF10C8) ^ 0x27)) ^ byte_244FB9590[byte_244F6B3B0[(49 * ((qword_27EDF1468 - dword_27EDF10C8) ^ 0x27))] ^ 0xE4]) + 58) + (v3 ^ byte_244FB9490[byte_244F6B1B0[v3] ^ 0x1C]) + 23009))(v8);
  return (v8[1] - 1216124116);
}

uint64_t jYWQDEvI(int a1, uint64_t a2, int a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(&off_278E1E490 + ((49 * (dword_27EDF10B8 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244FB9590[byte_244F6B3B0[(49 * (dword_27EDF10B8 ^ 0x27 ^ qword_27EDF1468))] ^ 0x9E]) + 241);
  v5 = *(v4 - 4);
  v6 = *(&off_278E1E490 + (byte_244FB949C[(byte_244F6B1B0[(49 * (v5 ^ qword_27EDF1468 ^ 0x27))] ^ 0xF9) - 12] ^ (49 * (v5 ^ qword_27EDF1468 ^ 0x27))) + 671);
  v7 = (*v6 - v5) ^ &v10;
  *(v4 - 4) = 2085698353 * v7 + 0x70361C3DEDF0077;
  *v6 = 2085698353 * (v7 ^ 0xE03D7A67A7B7BC27);
  *a4 = 0;
  LODWORD(v7) = (a1 ^ 0x73FBBE53) + ((2 * a1) & 0xE7F77CA6);
  v8 = 810199703 * ((((v11 | 0x30BF4B96) ^ 0xFFFFFFFE) - (~v11 | 0xCF40B469)) ^ 0x29C9A2E4);
  v12 = a2;
  v13 = a4;
  v11[2] = v8 ^ (a3 - ((2 * a3) & 0x1C4C2FD2) + 237377513);
  v11[3] = v8 ^ 0x423;
  v11[0] = v7 - 50462784 + v8;
  LODWORD(v4) = 2085698353 * ((*v6 - *(v4 - 4)) ^ 0xA7B7BC27);
  (*(*(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF10B8) ^ 0x27)) ^ byte_244FB9590[byte_244F6B3B0[(49 * ((qword_27EDF1468 + dword_27EDF10B8) ^ 0x27))] ^ 0xE4]) + 58) + (byte_244F6B2B0[byte_244F1BDB8[v4 - 8] ^ 7] ^ v4) + 22825))(v11);
  return (v11[1] - 1216124116);
}

uint64_t sub_2444B31D0(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF03B0) ^ 0x27)) ^ byte_244F1BEB0[byte_245010C30[(49 * ((qword_27EDF1468 + dword_27EDF03B0) ^ 0x27))] ^ 0x78]) + 725);
  v3 = *(v2 - 4);
  v4 = *(&off_278E1E490 + (byte_244FB9598[(byte_244F6B3B8[(49 * ((qword_27EDF1468 - v3) ^ 0x27)) - 8] ^ 0xE4) - 8] ^ (49 * ((qword_27EDF1468 - v3) ^ 0x27))) + 652);
  v5 = (*v4 ^ v3) - &v11;
  *(v2 - 4) = 2085698353 * v5 + 0x1FC28598584843D9;
  *v4 = 2085698353 * (v5 ^ 0xE03D7A67A7B7BC27);
  v6 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 + dword_27EDF03B0) ^ 0x27)) ^ byte_244FB9590[byte_244F6B3B0[(49 * ((qword_27EDF1468 + dword_27EDF03B0) ^ 0x27))] ^ 0xE4]) + 58);
  v7 = *(v6 + 8744);
  v8 = 1649972239 * ((~&v12 & 0x1D543C62D040173DLL | &v12 & 0xE2ABC39D2FBFE8C2) ^ 0x7C4002790BF83B45);
  v12 = v8 - 721054033;
  v13 = a1;
  v15 = v7 - v8;
  v16 = a2;
  v9 = 49 * ((*v4 - *(v2 - 4)) ^ 0x27);
  (*(v6 + 8 * ((byte_244FB969C[(byte_244F6B4BC[v9 - 12] ^ 0xEA) - 12] ^ v9) + 22755) - 8))(&v12);
  return v14;
}

uint64_t sub_2444B34A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a7)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(v8 + 8 * ((v9 + 1811553482) ^ (v11 | (16 * v11)))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2444B3514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8, unsigned int a9, uint64_t a10)
{
  v14 = (*(v11 + 8 * (v12 ^ 0x5F83)))(*(a2 + 4), 26, v10, a10, v10, &a6);
  a9 = (v14 ^ 0x5B7ED5F6) - 318914850 + ((v14 << (((v12 - 24) & 0xEB) - 98)) & 0xB6FDABEC);
  return (*(v11 + 8 * ((28 * (a9 != 1216124116)) ^ v12)))(a1);
}

uint64_t sub_2444B363C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 0x42CE2971C619E368) - 1217468904;
  if (v5 < 0)
  {
    v5 = 1217468904 - *(a2 - 0x42CE2971C619E368);
  }

  return (*(v2 + 8 * ((45 * ((((v3 + 1811551837) ^ ((v4 - 389374977) < (4 * v5))) & 1) == 0)) ^ (v3 + 1811548390))))(a1, 3905590263);
}

uint64_t sub_2444B3714@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  LODWORD(a15) = HIDWORD(a12) - 1701743476;
  *(v19 - 81) = SHIDWORD(a12) > v15 - 445744112;
  *(v19 - 100) = v18;
  *(v19 - 96) = 1516216390;
  v20 = *(v17 + 8 * v15);
  *(v19 - 92) = 1319274195;
  *(v19 - 88) = -553927775;
  return v20(a1, (v18 + a2), 1892, 2495750143, 2778750938, 3060, 1903, 1273947573, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a3 - 0x42CE2971C619E364, a15, v16 - 0x7F09B0D6C67146B0);
}

uint64_t sub_2444B3890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = (v14 ^ a8) + v10;
  v16 = v9 ^ (v15 < v12);
  v17 = v15 < v8;
  if (v16)
  {
    v17 = v9;
  }

  return (*(v11 + 8 * ((v17 * v13) ^ v14)))();
}

uint64_t sub_2444B3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = *(a9 - 0x42CE2971C619E368) - 1217468904;
  if (v14 < 0)
  {
    v14 = 1217468904 - *(a9 - 0x42CE2971C619E368);
  }

  return (*(v10 + 8 * ((14 * (v14 << (((v12 + 87) | 0x44u) + 4) > (v13 - 281723628))) ^ (v11 + v12 - 10))))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_2444B3A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(a14) = ((v14 + 1126) ^ 0x5527) + HIDWORD(a11) + 1369770712;
  *(v18 - 81) = SHIDWORD(a11) > 777696415;
  *(v18 - 100) = 2124070664;
  *(v18 - 96) = v17;
  v19 = *(v16 + 8 * (v14 + 1126));
  *(v18 - 92) = -553927775;
  *(v18 - 88) = 1524979132;
  return v19(a1, 4294952188, 1900482935, 2394484463, 4139, 16520, 10969, 20929, a3, a2 - 0x42CE2971C619E364, a5, a6, a7, a8, a9, a10, a11, a12, a2 - 0x42CE2971C619E364, a14, v15 - 0x7686F8486790A672);
}

uint64_t sub_2444B3B78()
{
  v8 = v2 + v5 < v0;
  if (v1 != v2 + v5 < v6)
  {
    v8 = v1;
  }

  return (*(v3 + 8 * ((((v4 - 83345728) & 0x4F795FF ^ v7) * v8) ^ v4)))();
}

uint64_t sub_2444B3C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  if (a9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  return (*(v11 + 8 * (((757 * (v12 ^ 0x94060860) - 2257) * v14) ^ (v12 + 1811561503))))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_2444B3CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t *a14, int *a15, int a16)
{
  a14 = &a9;
  a9 = v16;
  a15 = &a10;
  a10 = v19 - 613490926;
  v23 = (*(v17 + 8 * (v20 ^ 0x52D3)))(*(a2 + 4), 26, &a9, 16, &a9, &a8);
  a16 = (v23 ^ 0x5CFD9EDF) - 344001035 + ((v20 - v18 + 636827768) & (2 * v23));
  a13 = v21;
  return (*(v17 + 8 * ((12303 * (a8 == 16)) ^ v20)))(a1);
}

uint64_t sub_2444B3DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v24 = a22 - (((a9 + 2147464406) ^ 0xA794279E) & (2 * a22)) + 332010495;
  HIDWORD(a14) = (v24 ^ 0x6C086804) - 1090527568 + ((v24 << (v23 + ((a9 - 42) | 3) + 5)) & 0xFF84F7F6 ^ 0x278427F6);
  return (*(v22 + 8 * ((105 * (HIDWORD(a14) == 1052924587)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14);
}

uint64_t sub_2444B4194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  v32 = (*(v29 + 8 * (v30 ^ 0x7CDB9D36)))(a29);
  *a28 = 0;
  return (*(v29 + 8 * (v31 + v30 + 338)))(v32);
}

uint64_t sub_2444B4260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  v34 = (*(v33 + 8 * (v32 ^ 0x475E)))(a32);
  *a31 = 0;
  return (*(v33 + 8 * v32))(v34);
}

uint64_t sub_2444B42E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  v36 = (*(v34 + 8 * (v35 - 1213174138)))(a34);
  *a33 = 0;
  return (*(v34 + 8 * ((3403 * (v35 < 0xC7D23CA8)) ^ (v35 - 1213195744))))(v36);
}

uint64_t sub_2444B434C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v33 = *(a30 + 56);
  *(v32 - 192) = a30 + 56;
  *(v32 - 184) = v33;
  return (*(v31 + 8 * (((v33 == 0) * ((v30 + 13) ^ 0xD89 ^ ((v30 - 1017) | 0x980))) ^ v30)))();
}

uint64_t sub_2444B4390()
{
  v3 = (*(v0 + 8 * (v1 + 21424)))(*(v2 - 184));
  **(v2 - 192) = 0;
  return (*(v0 + 8 * v1))(v3);
}

uint64_t sub_2444B43CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v33 = *(a30 + 112);
  *(v32 - 176) = a30 + 112;
  *(v32 - 168) = v33;
  return (*(v30 + 8 * ((v33 == 0) | v31)))();
}

uint64_t sub_2444B43FC()
{
  v3 = (v1 - 520) | 0x209;
  v4 = (*(v0 + 8 * (v3 + 20021)))(*(v2 - 168));
  **(v2 - 176) = 0;
  return (*(v0 + 8 * v3))(v4);
}

uint64_t sub_2444B444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v33 = *(a30 + 72);
  *(v32 - 160) = a30 + 72;
  *(v32 - 152) = v33;
  return (*(v31 + 8 * ((991 * (((v33 == 0) ^ (v30 + 25 + v30 + 17 + 1)) & 1)) ^ v30)))();
}

uint64_t sub_2444B44AC@<X0>(int a1@<W8>)
{
  v3 = a1 & 0x10923EB1;
  v4 = (*(v1 + 8 * (a1 & 0x10923EB1 ^ 0x5F70u)))(*(v2 - 152));
  **(v2 - 160) = 0;
  return (*(v1 + 8 * v3))(v4);
}

uint64_t sub_2444B44E8()
{
  *(v3 - 0xEF0A890CD1B92F6) = 0xEECF187EEECF187ELL;
  *(v3 - 0xEF0A890CD1B92EELL) = 0xD3AE80F00000000;
  *(v3 - 0xEF0A890CD1B92FELL) = 0xEECF187E00000000;
  *(v3 - 0xEF0A890CD1B92E6) = 0xEECF187E00000000;
  *(v3 - 0xEF0A890CD1B92DELL) = 0;
  *(v3 - 0xEF0A890CD1B92D6) = 0xEECF187E00000000;
  *(v3 - 0xEF0A890CD1B92BELL) = 29774;
  *(v3 - 0xEF0A890CD1B927ALL) = -288417666;
  *(v3 - 0xEF0A890CD1B9266) = 0xE206B8E60261FC89;
  *(v3 - 0xEF0A890CD1B925ELL) = 0x536781F300000000;
  *(v3 - 0xEF0A890CD1B9256) = 0;
  *(v3 - 0xEF0A890CD1B924ELL) = 0;
  *(v3 - 0xEF0A890CD1B9246) = 0;
  *(v3 - 0xEF0A890CD1B923ELL) = 0u;
  *(v3 - 0xEF0A890CD1B922ELL) = 0x2FE96BF99103990CLL;
  *(v3 - 0xEF0A890CD1B9226) = -43034704;
  *(v3 - 0xEF0A890CD1B921ELL) = 0x3E824DD18A22A034;
  *(v3 - 0xEF0A890CD1B9216) = 0;
  *(v3 - 0xEF0A890CD1B920ELL) = 0;
  *(v3 - 0xEF0A890CD1B9206) = 0;
  *(v3 - 0xEF0A890CD1B92CELL) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B92C6) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B92BCLL) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B92B4) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B92ACLL) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B92A4) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B929CLL) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B9294) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B928CLL) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B9284) = 0x1616161616161616;
  *(v3 - 0xEF0A890CD1B9276) = 0u;
  return (*(v0 + 8 * (v1 + v2)))();
}

uint64_t sub_2444B493C@<X0>(int a1@<W4>, int a2@<W8>)
{
  v7 = v6 + (v4 ^ a1);
  v8 = (a2 + v2 < v5) ^ (v7 < v5);
  v9 = v7 < a2 + v2;
  if (v8)
  {
    v9 = a2 + v2 < v5;
  }

  return (*(v3 + 8 * ((62 * !v9) ^ v4)))();
}

uint64_t sub_2444B49D4()
{
  v5 = (*(v1 + 8 * (v3 ^ 0x5032)))();
  *(*v4 + v0 * v2 + 24) = 0;
  return (*(v1 + 8 * v3))(v5, 21514, 2834958701, 21, 30373, 6548);
}

uint64_t sub_2444B4A30@<X0>(int a1@<W8>)
{
  *(v3 - 144) = v1;
  v4 = *(v1 + 136);
  *(v3 - 136) = v1 + 136;
  *(v3 - 128) = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((a1 ^ 0xFFFFA3BE) + a1 + 15302)) | a1)))();
}

uint64_t sub_2444B4A6C@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 6;
  v4 = (*(v1 + 8 * (a1 ^ 0x49A9)))(*(v2 - 128));
  **(v2 - 136) = 0;
  return (*(v1 + 8 * v3))(v4);
}

uint64_t sub_2444B4AA4()
{
  v3 = *(v2 - 144);
  v4 = *(v3 + 152);
  *(v2 - 120) = v3 + 152;
  *(v2 - 112) = v4;
  return (*(v0 + 8 * (((v4 == 0) * (v1 - 37114 + 8817 * (v1 ^ 0x4C2D))) ^ v1)))();
}

uint64_t sub_2444B4AF0()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x634F)))(*(v2 - 112));
  **(v2 - 120) = 0;
  return (*(v0 + 8 * v1))(v3);
}

uint64_t sub_2444B4B2C()
{
  v3 = *(v2 - 144);
  v4 = *(v3 + 104);
  *(v2 - 104) = v3 + 104;
  *(v2 - 96) = v4;
  return (*(v1 + 8 * (((((v4 == 0) ^ (v0 - 1)) & 1) * ((v0 - 13537) ^ 0x101F)) ^ v0)))();
}

uint64_t sub_2444B4B70()
{
  v3 = (v0 + 134484768) | 0x5430608;
  v4 = (*(v1 + 8 * (v3 - 222757962)))(*(v2 - 96));
  **(v2 - 104) = 0;
  return (*(v1 + 8 * (v3 ^ 0xD4751F8 ^ (12880 * (v3 != 216559333)))))(v4);
}

uint64_t sub_2444B4C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  v18 = (*(v16 + 8 * (v17 + 18859)))(a16);
  *a14 = 0;
  return (*(v16 + 8 * v17))(v18);
}

uint64_t sub_2444B4CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  v20 = (*(v19 + 8 * (v18 + 19520)))(a18);
  *a17 = 0;
  return (*(v19 + 8 * ((v18 + 128324507) ^ (v18 + 128327451) ^ (5768 * (v18 == 1786873066)))))(v20);
}

uint64_t sub_2444B4D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  v22 = (*(v21 + 8 * (v20 + 10380)))(a20);
  *a19 = 0;
  return (*(v21 + 8 * v20))(v22);
}

uint64_t sub_2444B4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  v22 = (*(v19 + 8 * (v20 ^ 0x7CDB9D36)))(a19);
  *a18 = 0;
  return (*(v19 + 8 * (v21 + v20 + 1593)))(v22);
}

uint64_t sub_2444B4F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  HIDWORD(a12) = a22;
  LODWORD(a13) = 252138521;
  return (*(v23 + 8 * v22))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2444B50B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25)
{
  v28 = a25 + 1207532112 < (a14 + 877893150);
  if (a14 + 877893150 < v27 != a25 + 1207532112 < v27)
  {
    v28 = a14 + 877893150 < v27;
  }

  return (*(v26 + 8 * ((v28 * (((789 * (v25 ^ 0x1D43)) ^ 0x6EE2) + 8038)) ^ v25)))(a1, a2, a3, a4);
}

uint64_t sub_2444B51E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  v31 = (*(v28 + 8 * (v27 ^ 0x5F70)))(a27);
  *a26 = 0;
  return (*(v28 + 8 * (((a11 != 2) * ((v29 + ((v27 - 1309) ^ (v30 + 205)) + 2947) ^ ((v27 - 1309) | 0x3000))) ^ v27)))(v31);
}

uint64_t sub_2444B5858@<X0>(int a1@<W1>, int a2@<W8>)
{
  if (v3 + (*(v6 + 7) ^ v4) + ((*(v6 + 7) << (((a1 - 83) | 0xA2) + v7)) & 0x1F0) - 6 == a2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  return (*(v2 + 8 * ((v8 | (32 * v8)) ^ a1)))();
}

uint64_t sub_2444B59EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = *(v38 + 8 * (v39 + 1647801406));
  a37 = v37;
  *(v40 - 112) = &a36;
  *(v40 - 104) = v39 + 867706601 * ((((v40 - 120) | 0x23B0A1BC) - (v40 - 120) + ((v40 - 120) & 0xDC4F5E40)) ^ 0x27A99BD7) - 1274421176;
  v41 = (*(v38 + 8 * (v39 ^ 0x9DC8C9CA)))(v40 - 120);
  return (*(v38 + 8 * ((v39 + 1647801406) ^ 0x7F)))(v41);
}

uint64_t sub_2444B5CDC@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W4>, uint64_t a5@<X8>)
{
  v14 = a1 + (a5 + a3 + ((a3 < v8) << 32)) * v12;
  v15 = v9 + v14;
  *v15 = a4;
  *(v15 + 8) = v7;
  *(v10 + v14) = v6;
  return (*(v13 + 8 * (((v11 == a3) * a2) ^ v5)))();
}

uint64_t sub_2444B5DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, __int16 a26, __int16 a27, char a28, char a29, int a30, int a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  HIDWORD(a13) = (a38 ^ 0x633C8C11) - 34668738 + ((v42 + 1314) ^ 0x31826B6C ^ (2 * a38) & 0xB5F377FC);
  a42 = HIDWORD(a13);
  a31 = a41;
  a32 = 442954001;
  a33 = v43;
  return (*(v44 + 8 * (v42 + 1314)))(&a29, 11465, -442954001, 24, a5, 4604, a40, v46 - 120, a9, a37, a36, a35, a13, a14, a15, a16, a14 + v45, a18, a19, a20, a21, a14 + v45, &a25, &a29);
}

uint64_t sub_2444B5EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v36 = v29 + (*v32 - 1829552036) * v31;
  v37 = *a17 + v33 * v31;
  v38 = (v37 + v30);
  v39 = *(v37 + v30 + 8);
  v40 = *(v37 - 0x65F2B306F7450B25);
  v41 = v28;
  LODWORD(v38) = *v38;
  *(v35 - 176) = *(v28 + 8 * v34);
  *(v35 - 168) = a14;
  *(v35 - 144) = v36;
  *(v35 - 136) = v39;
  *(v35 - 128) = v40;
  *(v35 - 160) = v38;
  *(v35 - 120) = v35 - 176;
  *(v35 - 112) = v34 - 1649972239 * ((((2 * (v35 - 120)) | 0x46FC6B36) - (v35 - 120) + 1552009829) ^ 0x78C619E3) - 2112970043;
  (*(v28 + 8 * (v34 ^ 0x5D97)))(v35 - 120);
  return (*(v41 + 8 * (v34 ^ 0x17EB)))(&a28, 11465, -442954001, 24, 447214964, 4604, v29, v35 - 120);
}

uint64_t sub_2444B6090(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, uint64_t a41, unint64_t a42, uint64_t a43)
{
  *v44 = 1829552036;
  *a1 = 56;
  v49 = *(v43 + v46 * a4 - 0x65F2B306F7450B2DLL);
  a37 = *(v45 + 8 * v47);
  a38 = a7;
  a40 = a14;
  a42 = v49 - ((((v47 + 1664956828) & 0x9CC2EEA6) + (283 * (v47 ^ 0x467u)) + 2 * v49 + 0x3E15C9EE06B16FECLL) & 0x21C8E11199E63B1CLL) - 0x1010AA802FB411F3;
  a41 = a12;
  a43 = a11;
  *(v48 - 104) = v47 + 867706601 * ((2 * (a8 & 0x48A3DA80) - a8 - 1218697863) ^ 0xB3451F12) + 1372744734;
  *(v48 - 112) = &a37;
  v50 = (*(v45 + 8 * (v47 ^ 0x5D90)))(v48 - 120);
  return (*(v45 + 8 * ((81 * (*(v48 - 120) == 1216124116)) ^ (v47 + 15317))))(v50);
}

uint64_t sub_2444B6338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  v23 = (*(v21 + 8 * (v22 + 10764)))(a21);
  *a20 = 0;
  return (*(v21 + 8 * v22))(v23);
}

uint64_t sub_2444B63C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  v25 = (*(v23 + 8 * (v24 + 12233)))(a23);
  *a22 = 0;
  return (*(v23 + 8 * v24))(v25);
}

uint64_t sub_2444B6444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  v26 = (*(v24 + 8 * (v25 ^ 0x5DC8)))(a19);
  *a24 = 0;
  return (*(v24 + 8 * v25))(v26);
}

uint64_t sub_2444B6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = *(v38 + 8 * (v39 + 1647801333));
  a37 = v37;
  *(v40 - 112) = &a36;
  *(v40 - 104) = v39 + 867706601 * ((v40 - 1764833086 - 2 * ((v40 - 120) & 0x96CEC93A)) ^ 0x92D7F351) - 1274421176;
  v41 = (*(v38 + 8 * (v39 ^ 0x9DC8C9CA)))(v40 - 120);
  return (*(v38 + 8 * ((v39 + 1647801333) & 0x93E40ED9)))(v41);
}

uint64_t sub_2444B651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a36 = *(v38 + 8 * (v39 + 1647801398));
  a37 = v37;
  *(v40 - 104) = v39 + 867706601 * ((1084079366 - ((v40 - 120) | 0x409DBD06) + ((v40 - 120) | 0xBF6242F9)) ^ 0xBB7B7892) - 1274421176;
  *(v40 - 112) = &a36;
  v41 = (*(v38 + 8 * (v39 ^ 0x9DC8C9CA)))(v40 - 120);
  return (*(v38 + 8 * ((v39 + 1647801398) ^ 0x67)))(v41);
}

uint64_t sub_2444B698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 - 0x58A0B944F98C117) = 522934631;
  *(v16 - 0x58A0B944F98C113) = 969228270;
  v19 = (*(v17 + 8 * (v18 ^ 0x6ECF)))(49152);
  *(v16 - 0x58A0B944F98C10FLL) = v19 + 0x65F2B306F7450B35;
  return (*(v17 + 8 * ((((v18 ^ 0x33 ^ (v19 == 0)) & 1) * (((v18 - 12490) | 0x11A) - 1722)) ^ v18)))(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2444B6B68(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v13 = *v10 + v5 * a1;
  *(v13 + a2) = v8;
  *(v13 + a3) = v7;
  *(v13 + a4) = v6;
  return (*(v12 + 8 * ((7 * (v5 + 1 < (a5 ^ *v11))) ^ v9)))();
}

uint64_t sub_2444B6C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  (*(v20 + 8 * (v21 ^ 0x5E37)))(a19);
  v22 = (*(v20 + 8 * (v21 ^ 0x5E4E)))(*v19);
  return (*(v20 + 8 * v21))(v22);
}

uint64_t sub_2444B6E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t a30, _DWORD *a31, int a32, uint64_t a33, uint64_t a34)
{
  v38 = (*(v35 + 8 * (v36 ^ 0x7566)))(*(a14 + v37) + v34);
  *(a14 + v37) = a34;
  *a31 = a32;
  *(a14 - 0x58A0B944F98C117) = a28;
  return (*(v35 + 8 * v36))(v38);
}

uint64_t sub_2444B70D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = (v20 + 1323347638) & 0xC7A0DFBC;
  v23 = v20 + v18;
  if (v16)
  {
    v24 = a8 == 0x6C39C03BD79DCDAALL;
  }

  else
  {
    v24 = 1;
  }

  v26 = !v24 && v19 == 1613761145;
  HIDWORD(a16) = v17;
  return (*(v21 + 8 * (((v22 + 10890) * v26) ^ v23)))(3349209020, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2444B7178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _BYTE *a17, _BYTE *a18, _BYTE *a19, _BYTE *a20, _BYTE *a21, _BYTE *a22, _BYTE *a23, _BYTE *a24)
{
  *a17 = HIBYTE(v24) ^ 0xC2;
  *a18 = BYTE6(v24) ^ 0xF4;
  *a19 = BYTE5(v24) ^ 1;
  *a20 = (v27 + 63) ^ BYTE4(v24);
  *a21 = BYTE3(v24) ^ 0xF2;
  *a22 = BYTE2(v24) ^ 0x69;
  *a23 = BYTE1(v24) ^ 0x6C;
  *a24 = v24 ^ 0x6F;
  *(v28 - 56) = &STACK[0x6DA19B60B64001E];
  *(v28 - 44) = v27 + ((2 * ((v28 - 56) & 0x3CDD9D98) - (v28 - 56) - 1021156765) ^ 0xDC09746F) * v25 + 7324;
  v29 = (*(v26 + 8 * (v27 ^ 0x4FED)))(v28 - 56);
  return (*(v26 + 8 * v27))(v29);
}

uint64_t sub_2444B72CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v23 = v21 + v19;
  if (v17)
  {
    v24 = a9 == 0;
  }

  else
  {
    v24 = 1;
  }

  v26 = !v24 && v20 == ((v21 + 1066596541) & 0xD6EE95B5 ^ 0xB6017D1);
  HIDWORD(a17) = v18;
  return (*(v22 + 8 * ((16755 * v26) ^ v23)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_2444B7350@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, _BYTE *a11, _BYTE *a12, _BYTE *a13, _BYTE *a14, _BYTE *a15, _BYTE *a16, _BYTE *a17)
{
  v24 = 0xD7F2E7CF945952C9 * v19 - ((0x2FE5CF9F28B2A592 * v19 + 0x384F882D05BBCF04) & 0x2D499BF041B57C08) + 0x52CC920EA3B8A586;
  *a10 = (v24 >> ((v22 - 115) ^ 0x79u)) ^ 0x46;
  *a11 = BYTE6(v24) ^ 0xF4;
  *a12 = BYTE5(v24) ^ 0x9D;
  *a13 = BYTE4(v24) ^ 0xA8;
  *a14 = BYTE3(v24) ^ 0x70;
  *a15 = BYTE2(v24) ^ 0x8A;
  *a16 = BYTE1(v24) ^ 0xEE;
  *a17 = v24 ^ 0x54;
  *(v23 - 96) = v17;
  *(v23 - 88) = v18;
  *(v23 - 112) = v20 + 0x161916C101ED93CCLL;
  *(v23 - 104) = 1995614616;
  *(v23 - 80) = a1;
  *(v23 - 72) = 190841445;
  *(v23 - 52) = (v22 + 12805) ^ (810199703 * (((v23 - 56) & 0x31B0353C | ~((v23 - 56) | 0x31B0353C)) ^ 0x28C6DC4E));
  *(v23 - 48) = v23 + 0x26A3D7DFBA9CA72;
  v25 = (*(v21 + 8 * (v22 + 17528)))(v23 - 56);
  return (*(v21 + 8 * v22))(v25);
}

uint64_t sub_2444B7560(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF1498) ^ 0x27)) ^ byte_244FB9390[byte_244F6B0B0[(49 * ((qword_27EDF1468 - dword_27EDF1498) ^ 0x27))] ^ 0x4E]) + 398);
  v3 = 49 * ((qword_27EDF1468 - *v2) ^ 0x27);
  v4 = *(&off_278E1E490 + (byte_244F6B2B0[byte_244F1BDB8[v3 - 8] ^ 7] ^ v3) + 484);
  v5 = (*v4 + *v2) ^ &v11;
  *v2 = (2085698353 * v5) ^ 0xE03D7A67A7B7BC27;
  *v4 = 2085698353 * (v5 ^ 0xE03D7A67A7B7BC27);
  v6 = *(&off_278E1E490 + ((49 * (dword_27EDF1498 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244F1BEB0[byte_245010C30[(49 * (dword_27EDF1498 ^ 0x27 ^ qword_27EDF1468))] ^ 0x92]) + 35);
  v7 = *(v6 + 8824);
  v8 = 1649972239 * ((2 * (&v12 & 0x45B5B5C927EC4EA8) - &v12 + 0x3A4A4A36D813B153) ^ 0x5B5E742D03AB9D2BLL);
  v12 = v8 - 721054033;
  v13 = a1;
  v15 = v7 - v8;
  v16 = a2;
  v9 = 49 * ((*v4 - *v2) ^ 0x27);
  (*(v6 + 8 * ((byte_244FB9598[(byte_244F6B3B8[v9 - 8] ^ 0x9E) - 8] ^ v9) + 22797) - 8))(&v12);
  return v14;
}

void sub_2444B778C(uint64_t a1)
{
  v1 = *(a1 + 4) + 201256697 * (((a1 | 0xFA33EA18) - (a1 | 0x5CC15E7) + 97261031) ^ 0x8C8CEC51);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2444B78CC()
{
  v2 = *(v0 + 8 * (v1 + 10381));
  STACK[0x318] = v0;
  v3 = v2(16);
  v4 = *(STACK[0x318] + 8 * ((38 * (v3 != 0)) | (v1 - 9000)));
  STACK[0x310] = v1;
  return v4(v3, 748495533);
}

uint64_t sub_2444B7954(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  STACK[0x7F8] = a1 + v9;
  STACK[0x528] = *(a8 + 8 * v8);
  return (*(a8 + 8 * (v8 ^ 0x16C ^ (v8 - 805414749) & 0x3001AED9)))();
}

uint64_t sub_2444B7A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 - 0x5E73700AE0FE6D99) + 0x44046241CC2D2A4ELL - ((*(a11 - 0x5E73700AE0FE6D99) << ((v11 + 15) ^ 0x29u)) & 0x8808C483985A549CLL);
  STACK[0x518] = STACK[0x7F8];
  LODWORD(STACK[0x470]) = -389574230;
  STACK[0x5C0] = v12;
  LODWORD(STACK[0x774]) = 1558321607;
  return (*(a8 + 8 * v11))();
}

uint64_t sub_2444B7CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 - 0x5E73700AE0FE6DA1) + ((v11 + 9743) ^ 0x44046241CC2D0466) - ((2 * *(a11 - 0x5E73700AE0FE6DA1)) & 0x8808C483985A549CLL);
  STACK[0x518] = STACK[0x7F8];
  LODWORD(STACK[0x470]) = 2144214069;
  STACK[0x5C0] = v12;
  LODWORD(STACK[0x774]) = -630578138;
  return (*(a8 + 8 * v11))();
}

uint64_t sub_2444B7E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x7C8];
  LODWORD(STACK[0x69C]) = STACK[0x4CC];
  return (*(a8 + 8 * (((((v9 == 0) ^ (v8 - 80)) & 1) * (((v8 - 223237200) ^ 0xF2B1FB85) - 3054)) ^ v8)))(a1, a2, 1216081105);
}

uint64_t sub_2444B7EDC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  STACK[0x878] = 0;
  LODWORD(STACK[0x7D4]) = 2119702974;
  STACK[0x428] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x804]) = 237377513;
  STACK[0x5E8] = 0;
  return (*(a1 + 8 * (a2 | (4 * ((a2 ^ 0xA1 ^ (v2 == ((a2 - 2094) ^ 0xE2613D3))) & 1)))))();
}

uint64_t sub_2444B7F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v9 - 224) & 0x39733966A4E533F2;
  *(v9 - 216) = *(a8 + 8 * v8) ^ (810199703 * ((v9 - 224 - 2 * v10 + 0x39733966A4E533F2) ^ 0x32A6EED0426C257FLL));
  *(v9 - 208) = 810199703 * ((v9 - 224 - 2 * v10 - 1528482830) ^ 0x426C257F) + v8 + 1007955315;
  v11 = (*(a8 + 8 * (v8 + 21799)))(v9 - 224);
  return (*(STACK[0x318] + 8 * ((((v8 + 11462) | 0x38) - 2829) ^ v8 ^ ((*(v9 - 224) != 1216124116) << 6))))(v11);
}

uint64_t sub_2444B7FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 + 73;
  STACK[0xA50] = *(a8 + 8 * v10);
  *(v9 - 224) = v10 + 1649972239 * ((2 * ((v9 - 224) & 0xDFFA8A8) - (v9 - 224) - 234858668) ^ 0x29B87B2C) - 572929518;
  *(v9 - 216) = &STACK[0xA50];
  v11 = (*(a8 + 8 * (v10 ^ 0x5D79)))(v9 - 224);
  v12 = STACK[0x318];
  v13 = *(v9 - 220);
  v14 = *(&off_278E1E490 + (v10 ^ 0x6C0));
  v15 = *(&off_278E1E490 + (v10 ^ 0x728));
  if (v13 == 93)
  {
    v16 = v15 - 4;
  }

  else
  {
    v16 = v14 - 12;
  }

  STACK[0x5E8] = v16;
  v17 = (v15 + 20);
  v18 = (v14 + 12);
  if (v13 == 93)
  {
    v18 = v17;
  }

  return (*(v12 + 8 * ((50 * (v10 ^ 0x47F) - 265) ^ v10 ^ ((*v18 == 68) * ((v10 + 687588208) & 0xD7047FFF ^ 0x2B7B)))))(v11);
}

uint64_t sub_2444B811C@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3)
{
  v7 = (v4 + 40);
  v8 = (v3 + 40);
  if (a2 == 93)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *v9;
  v11 = STACK[0x3C0];
  STACK[0x3E8] = &a3 + STACK[0x3C0] - 0x2CB6053A2532749BLL;
  STACK[0x3C0] = v11 + 48;
  STACK[0x360] = v5;
  STACK[0x488] = 0x19847B594A0B84A2;
  STACK[0x3D8] = 0x6286B82630F8F22CLL;
  STACK[0x600] = v10;
  return (*(a1 + 8 * (((v10 != 0x58FA20369C313ACELL) | (8 * (v10 != 0x58FA20369C313ACELL))) ^ v6)))();
}

uint64_t sub_2444B8218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0xDD5)))(112);
  v10 = STACK[0x318];
  STACK[0x4D8] = v9 + 0x19847B594A0B84A2;
  return (*(v10 + 8 * (((v9 == 0) * (((v8 - 13040) | 0x1018) - 12592)) ^ v8)))();
}

uint64_t sub_2444B828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = -318161901;
  *(a1 + 4) = 2142665936;
  *(a1 + 72) = 1253342090;
  *(a1 + 76) = 1253342090;
  *(a1 + 80) = 11781;
  *(a1 + 8) = v12;
  *(a1 + 16) = v12;
  *(a1 + 24) = v12;
  *(a1 + 32) = v12;
  *(a1 + 40) = v12;
  *(a1 + 48) = v12;
  *(a1 + 56) = v12;
  *(a1 + 64) = v12;
  v13 = STACK[0x4D8];
  *(v13 - 0x19847B594A0B844ELL) = 1956268794;
  *(v13 + v10) = 2136666251;
  *(v13 + v11) = v12;
  *(v13 - 0x19847B594A0B8442) = v12;
  *(v13 - 0x19847B594A0B8436) = -15;
  *v8 = v13;
  return (*(a8 + 8 * (v9 - 3624)))();
}

uint64_t sub_2444B83B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = STACK[0x600];
  *(v8 + v9) = 2136666267;
  *(v8 - 0x19847B594A0B843BLL) = *(v11 - 0x58FA20369C313AB7);
  *(v8 - 0x19847B594A0B843CLL) = *(v11 - 0x58FA20369C313AB8);
  *(v8 - 0x19847B594A0B843DLL) = *(v11 - 0x58FA20369C313AB9);
  *(v8 - 0x19847B594A0B843ELL) = *(v11 - 0x58FA20369C313ABALL);
  *(v8 - 0x19847B594A0B843FLL) = *(v11 - 0x58FA20369C313ABBLL);
  *(v8 - 0x19847B594A0B8440) = *(v11 - 0x58FA20369C313ABCLL);
  *(v8 - 0x19847B594A0B8441) = *(v11 - 0x58FA20369C313ABDLL);
  *(v8 - 0x19847B594A0B8442) = *(v11 - 0x58FA20369C313ABELL);
  *(v8 - 0x19847B594A0B8443) = *(v11 - 0x58FA20369C313ABFLL);
  *(v8 - 0x19847B594A0B8444) = *(v11 - 0x58FA20369C313AC0);
  *(v8 - 0x19847B594A0B8445) = *(v11 - 0x58FA20369C313AC1);
  *(v8 - 0x19847B594A0B8446) = *(v11 - 0x58FA20369C313AC2);
  *(v8 - 0x19847B594A0B8447) = *(v11 - 0x58FA20369C313AC3);
  *(v8 - 0x19847B594A0B8448) = *(v11 - 0x58FA20369C313AC4);
  *(v8 - 0x19847B594A0B8449) = *(v11 - 0x58FA20369C313AC5);
  *(v8 + v10) = *(v11 - 0x58FA20369C313AC6);
  return (*(a8 + 8 * (((16 * (STACK[0x488] != a2)) | (32 * (STACK[0x488] != a2))) ^ LODWORD(STACK[0x240]))))();
}

uint64_t sub_2444B8660@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v5 = STACK[0x220] & 0xC22F9F7F;
  *(v4 - 0x19847B594A0B844ELL) = *(a4 - 0x58FA20369C313ACELL);
  return (*(a3 + 8 * (((*(a4 - 0x58FA20369C313ACALL) == (LOBYTE(STACK[0x308]) - 118)) * (v5 ^ 0x13A9)) ^ LODWORD(STACK[0x230]))))(47, a1, a2, 2674604645, 2045, 1620374373);
}

uint64_t sub_2444B8800@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 0x58FA20369C313AB6);
  *(v2 - 0x19847B594A0B848ALL) = *(a2 - 0x58FA20369C313AA6);
  *(v2 - 0x19847B594A0B849ALL) = v4;
  return (*(a1 + 16 * (v3 ^ 0x2B6)))();
}

uint64_t sub_2444B88B0@<X0>(unint64_t a1@<X1>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v4 = STACK[0x3E8];
  *v4 = 0x44046241CC2D2A4ELL;
  *(v4 + 8) = *(a3 - 0x58FA20369C313A62) + 237377513 - ((*(a3 - 0x58FA20369C313A62) << (v3 ^ 0x2E)) & 0x1C4C2FD2);
  *(v4 + 16) = 0;
  *(v4 + 24) = -190490885;
  *(v4 + 28) = 342509981;
  *(v4 + 32) = 237377517;
  *(v4 + 36) = 1708581762;
  STACK[0x3B0] = v4;
  LODWORD(STACK[0x770]) = 0;
  STACK[0x408] = a1;
  v5 = (*(a2 + 8 * (v3 + 18070)))(128);
  v6 = STACK[0x318];
  STACK[0x860] = v5 + 0x6286B82630F8F22CLL;
  return (*(v6 + 8 * ((103 * (((v3 + 36) ^ (v5 == 0)) & 1)) ^ v3)))();
}

uint64_t sub_2444B8A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * (v8 ^ 0xBC4 ^ (5189 * (v8 - 249320142 >= (v8 ^ 0x30E6u) + 1764382267))));
  LODWORD(STACK[0x2D0]) = v9;
  return v10();
}

uint64_t sub_2444B8B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = STACK[0x670];
  *(v9 + v10) = 2136666267;
  *(v9 - 0x19847B594A0B843BLL) = *(v12 - 0x58FA20369C313AB7);
  *(v9 - 0x19847B594A0B843CLL) = *(v12 - 0x58FA20369C313AB8);
  *(v9 - 0x19847B594A0B843DLL) = *(v12 - 0x58FA20369C313AB9);
  *(v9 - 0x19847B594A0B843ELL) = *(v12 - 0x58FA20369C313ABALL);
  *(v9 - 0x19847B594A0B843FLL) = *(v12 - 0x58FA20369C313ABBLL);
  *(v9 - 0x19847B594A0B8440) = *(v12 - 0x58FA20369C313ABCLL);
  *(v9 - 0x19847B594A0B8441) = *(v12 - 0x58FA20369C313ABDLL);
  *(v9 - 0x19847B594A0B8442) = *(v12 - 0x58FA20369C313ABELL);
  *(v9 - 0x19847B594A0B8443) = *(v12 - 0x58FA20369C313ABFLL);
  *(v9 - 0x19847B594A0B8444) = *(v12 - 0x58FA20369C313AC0);
  *(v9 - 0x19847B594A0B8445) = *(v12 - 0x58FA20369C313AC1);
  *(v9 - 0x19847B594A0B8446) = *(v12 - 0x58FA20369C313AC2);
  *(v9 - 0x19847B594A0B8447) = *(v12 - 0x58FA20369C313AC3);
  *(v9 - 0x19847B594A0B8448) = *(v12 - 0x58FA20369C313AC4);
  *(v9 - 0x19847B594A0B8449) = *(v12 - 0x58FA20369C313AC5);
  *(v9 + v11) = *(v12 - 0x58FA20369C313AC6);
  return (*(a8 + 8 * ((((((v8 + 3826) ^ (*(v12 - 0x58FA20369C313ACALL) == 14)) & 1) == 0) * (2731 * (v8 ^ 0x3A5C) - 5402)) ^ v8)))();
}

uint64_t sub_2444B8FB0@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 0x58FA20369C313AB6);
  *(v3 - 0x19847B594A0B848ALL) = *(a2 - 0x58FA20369C313AA6);
  *(v3 - 0x19847B594A0B849ALL) = v4;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_2444B9060@<X0>(unint64_t a1@<X1>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(v3 - 0x19847B594A0B844ELL) = *(a3 - 0x58FA20369C313ACELL);
  v5 = STACK[0x3C0];
  STACK[0x568] = &STACK[0xA60] + STACK[0x3C0] + (v4 - 10511) - 0x2CB6053A2532917DLL;
  STACK[0x3C0] = v5 + 32;
  v6 = STACK[0x7A8];
  STACK[0x700] = STACK[0x7A8];
  STACK[0x638] = 0;
  STACK[0x7D8] = 0;
  STACK[0x750] = 0;
  LODWORD(STACK[0x6F8]) = 0;
  STACK[0x358] = a1;
  STACK[0x4E0] = 0;
  v7 = (*(a2 + 8 * (v4 ^ 0x624C)))();
  if (v6)
  {
    v8 = LODWORD(STACK[0x72C]) == (((v4 - 15205) | 0x4583) ^ 0x7E585C11);
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(STACK[0x318] + 8 * ((86 * v9) ^ v4)))(v7);
}

uint64_t sub_2444B915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0x1C6A)))(128);
  v10 = STACK[0x318];
  STACK[0x680] = v9 + 0x6286B82630F8F22CLL;
  return (*(v10 + 8 * (((v9 == 0) * (7 * (v8 ^ 0x4C5A) + ((v8 - 13101) ^ 0xFFFFA8DD))) ^ v8)))();
}

uint64_t sub_2444B92BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * ((v8 - 12119) ^ 0x1FBE));
  LODWORD(STACK[0x2F0]) = 237377513;
  LODWORD(STACK[0x2E0]) = 237377513;
  LODWORD(STACK[0x2B0]) = v9;
  return v10();
}

uint64_t sub_2444B9300(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x644]) = a3;
  LODWORD(STACK[0x37C]) = STACK[0x2E0];
  LODWORD(STACK[0x344]) = STACK[0x2F0];
  LODWORD(STACK[0x5FC]) = STACK[0x2D0];
  return (*(a8 + 8 * v8))(a1, 748495533, 1216081105, a4, a5, (v8 - 11998) | 0x1002u);
}

uint64_t sub_2444B9348(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x644]) = STACK[0x2B0];
  LODWORD(STACK[0x37C]) = STACK[0x2E0];
  LODWORD(STACK[0x344]) = STACK[0x2F0];
  LODWORD(STACK[0x5FC]) = a3;
  return (*(a8 + 8 * v8))(a1, 748495533, 1216081105);
}

uint64_t sub_2444B9390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x644]) = v11;
  LODWORD(STACK[0x37C]) = 237377513;
  LODWORD(STACK[0x344]) = 237377513;
  LODWORD(STACK[0x5FC]) = STACK[0x2D0];
  STACK[0x3C0] = v10;
  return (*(a8 + 8 * v9))(a1, 748495533, v8, a4, a5, (v9 - 383));
}

uint64_t sub_2444B93D0@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x644]) = STACK[0x2B0];
  LODWORD(STACK[0x37C]) = STACK[0x2E0];
  LODWORD(STACK[0x344]) = STACK[0x2F0];
  LODWORD(STACK[0x5FC]) = STACK[0x2D0];
  return (*(a1 + 8 * (((v3 - 22468 + ((v3 - 4152) | 0x68A)) * (a2 != v2)) ^ (v3 + 5436))))();
}

uint64_t sub_2444B9480@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x644]) = STACK[0x2B0];
  LODWORD(STACK[0x37C]) = STACK[0x2E0];
  LODWORD(STACK[0x344]) = STACK[0x2F0];
  LODWORD(STACK[0x5FC]) = STACK[0x2D0];
  return (*(a1 + 8 * ((((v3 - 64239930) & 0x3D408FB ^ 0xE8) * (a2 == v2)) | (v3 + 5260))))();
}

uint64_t sub_2444B9528(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x2C0];
  LODWORD(STACK[0x644]) = a3;
  LODWORD(STACK[0x37C]) = STACK[0x2E0];
  LODWORD(STACK[0x344]) = STACK[0x2F0];
  LODWORD(STACK[0x5FC]) = STACK[0x2D0];
  return (*(a8 + 8 * v8))(a1, 748495533);
}

uint64_t sub_2444B9564(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x210];
  LODWORD(STACK[0x644]) = STACK[0x2B0];
  LODWORD(STACK[0x37C]) = STACK[0x2E0];
  LODWORD(STACK[0x344]) = STACK[0x2F0];
  LODWORD(STACK[0x5FC]) = a3;
  return (*(a8 + 8 * v8))(a1, 748495533);
}

uint64_t sub_2444B959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x644]) = STACK[0x2B0];
  LODWORD(STACK[0x37C]) = STACK[0x2E0];
  LODWORD(STACK[0x344]) = STACK[0x2F0];
  LODWORD(STACK[0x5FC]) = v9;
  return (*(a8 + 8 * v8))(a1, 748495533, 1216081107);
}

uint64_t sub_2444B9600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x644]) = STACK[0x2B0];
  LODWORD(STACK[0x37C]) = STACK[0x2E0];
  LODWORD(STACK[0x344]) = STACK[0x2F0];
  LODWORD(STACK[0x5FC]) = v9;
  return (*(a8 + 8 * ((v8 + 4772) ^ v8)))(a1, 0x19847B594A0B84A2);
}

uint64_t sub_2444B965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x644]) = v9;
  LODWORD(STACK[0x37C]) = 237377513;
  LODWORD(STACK[0x344]) = 237377513;
  LODWORD(STACK[0x5FC]) = STACK[0x2D0];
  return (*(a8 + 8 * (v8 ^ 0x43E ^ (859 * (v8 ^ 0xE0)))))(a1, 0x19847B594A0B84A2);
}

uint64_t sub_2444B9730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(a3 - 0x6286B82630F8F21CLL) = *(v4 - 0x19847B594A0B84A2);
  *(a3 - 0x6286B82630F8F1D4) = *(v4 - 0x19847B594A0B845ALL);
  *(a3 - 0x6286B82630F8F1D0) = *(v4 - 0x19847B594A0B8456);
  *(a3 - 0x6286B82630F8F1CCLL) = *(v4 - 0x19847B594A0B8452);
  *(a3 - 0x6286B82630F8F1CBLL) = *(v4 - 0x19847B594A0B8451);
  *(a3 - 0x6286B82630F8F1B4) = *(v4 + v5);
  *(a3 - 0x6286B82630F8F1C8) = *(v4 - 0x19847B594A0B844ELL);
  *(a3 - 0x6286B82630F8F1B0) = *(v4 - 0x19847B594A0B8436) & 1 | 0xE8;
  return (*(a2 + 8 * v3))(a1, a3 - 0x6286B82630F8F1F5, v4 - 0x19847B594A0B847BLL, (v3 - 1335), v3 ^ 0x8D9u, (v3 - 1727), 69, (v3 ^ 0x1BD3u) - 85);
}

uint64_t sub_2444B98D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, char a7, char a8)
{
  v13 = (v9 - 1) & 0xF;
  *(a2 + v9) = a8 ^ *(a3 + v9) ^ (v13 * a7) ^ *(*(v12 + 8 * a4) + v13) ^ *(*(v12 + 8 * a6) + v13) ^ *(v13 + *(v12 + 8 * a5) - 4 + 6);
  return (*(v11 + 8 * (((v9 == -31) * v10) ^ v8)))();
}

uint64_t sub_2444B998C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, int a6)
{
  v10 = STACK[0x318];
  *(a2 + v6) = *(v8 + ((v6 - 1) & 0xF)) ^ *(a3 + v6) ^ *(((v6 - 1) & 0xF) + v9 + 6) ^ a5 ^ (((v6 - 1) & 0xF) * a4) ^ *(a1 + ((v6 - 1) & 0xF));
  return (*(v10 + 8 * (((v6 == -31) * a6) ^ v7)))();
}

uint64_t sub_2444B99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 + v10 + (v9 - 9577) + (((v9 - 11372) | 0x70Bu) ^ 0x49023CCCE6ED117CLL);
  v12 = v8 + 0x6286B82630F8F22CLL;
  v13 = *(&off_278E1E490 + (v9 ^ 0x57D0)) + v12 - 108;
  v14 = v12 - 103;
  v16 = v13 >= 0x10 && v11 >= 0x10 && *(&off_278E1E490 + (v9 ^ 0x52E5)) + v14 - 4 >= 0x10;
  v17 = *(&off_278E1E490 + v9 - 20308) + v14 - 4;
  v19 = !v16 || v17 < 0x10;
  return (*(a8 + 8 * ((2 * v19) | (8 * v19) | v9)))();
}

uint64_t sub_2444B9AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v5 = *(v4 - 0x19847B594A0B849ELL);
  *(a3 - 0x6286B82630F8F218) = v5;
  return (*(a2 + 8 * (((v5 == v3 + 2142659923) * (((v3 + 6315) | 0x110) ^ 0xFDB)) ^ v3)))(a1, 0x19847B594A0B84A2, 1216124116);
}

uint64_t sub_2444B9C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v7 - 1884422493;
  v11 = STACK[0x318];
  *(v9 + v10) = *(v8 + v7 - 1884422493) ^ *(a1 + v10) ^ *(a3 + v10 + 1) ^ ((((v6 - 51) | 0x69) + 48) * v10) ^ *(a5 + v10 + 1) ^ 0x5D;
  return (*(v11 + 8 * (v6 ^ (8 * (v7 - 1 == v5)))))();
}

uint64_t sub_2444B9E0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x644]) = STACK[0x2B0];
  LODWORD(STACK[0x37C]) = STACK[0x2E0];
  LODWORD(STACK[0x344]) = STACK[0x2F0];
  LODWORD(STACK[0x5FC]) = a3;
  return (*(a8 + 8 * v8))(a1, 748495533, 1216081105);
}

uint64_t sub_2444B9F10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *(v8 - 0x6286B82630F8F224) = a1 + v10;
  return (*(a8 + 8 * ((((((v9 - 5608) | 0xA40) ^ 0xFFFFF551) + ((v9 - 1367607869) & 0x5183F578)) * (v8 == 0x6286B82630F8F22CLL)) ^ (v9 + 2461))))();
}

uint64_t sub_2444BA00C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *v8 = a1 + v10;
  return (*(a8 + 8 * ((((((v9 - 14652) ^ (STACK[0x3B0] == 0)) & 1) == 0) * ((v9 + 1741208294) & 0x98373BFD ^ 0x311D)) ^ (v9 + 3009))))();
}

uint64_t sub_2444BA164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, int a3@<W8>)
{
  v7 = *v6;
  STACK[0x460] = *(a2 + 8 * v4);
  STACK[0x538] = v7;
  LODWORD(STACK[0x7EC]) = v5;
  STACK[0x5E0] = v3;
  return (*(a2 + 8 * (((v3 == 0) * (a3 - 12521)) ^ (a3 - 8314))))(a1, 748495533, 1216081105);
}

uint64_t sub_2444BA2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 224) = v8 - 1230911237 * ((v9 - 224) ^ 0x5303B2F5) + 12564;
  v10 = (*(a8 + 8 * (v8 ^ 0x5870)))(v9 - 224);
  v11 = STACK[0x318];
  STACK[0x528] = *(STACK[0x318] + 8 * v8);
  return (*(v11 + 8 * ((v8 + 2025) ^ v8)))(v10, 748495533);
}

uint64_t sub_2444BA4EC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = *(v2 - 0x6286B82630F8F224);
  STACK[0x348] = v4;
  return (*(a1 + 8 * (((v4 == v3) * (((a2 - 787) ^ 0x42A2) + a2 - 15860)) ^ a2)))();
}

uint64_t sub_2444BA5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8 - 1218;
  v10 = (*(a8 + 8 * (v9 ^ 0x54C9)))(32);
  v11 = STACK[0x318];
  STACK[0x6C8] = v10 + 0x750C1ABFB0567FDBLL;
  return (*(v11 + 8 * ((v10 == 0) | v9)))();
}

uint64_t sub_2444BA660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (v8 + 680617705) & 0xD76EBF7F;
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v12 = v9 ^ 0xE2617E9u;
  STACK[0x910] = v12;
  LODWORD(v12) = ((v12 + 10) ^ 0xEB7F997C) + ((2 * (v12 + 10)) & 0xD6FF32F8) + v11 - 573 + (v11 ^ 0x2488) + 518731115;
  *(a1 + 16) = v12;
  v13 = (*(a8 + 8 * (v11 ^ 0x6AB0)))((v12 - 174790684));
  v14 = STACK[0x318];
  *(a1 + 24) = v13;
  return (*(v14 + 8 * (v11 ^ (2 * (v13 != 0)))))();
}

uint64_t sub_2444BA760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x660] = v8;
  STACK[0x830] = &STACK[0x660];
  LODWORD(STACK[0x74C]) = -1466197634;
  return (*(a8 + 8 * (v9 - 8245)))();
}

uint64_t sub_2444BA840(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v20 = *v13 + v14 - 0x60F92125641679AALL;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((2 * v21 + 0x1358004F76A1D6FCLL) & 0x52654FF3073825D0) - v21 - 0x36DEA8213EECFE67;
  v23 = __ROR8__(v22 ^ 0xE00389A0A8DA2F85, 8);
  v22 ^= 0xAD63889D725D7471;
  v24 = (((2 * (v23 + v22)) & 0x6AB7D0CE24EE43E8) - (v23 + v22) - 0x355BE867127721F5) ^ 0x471A5E4766B61801;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) & 0xE674F2A747EA81D8) - (v26 + v25) + 0xCC586AC5C0ABF13) ^ 0x4DEDDAF47191399ALL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x1717D4ABBED3C077;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) & 0x652AFBEC07153E02) - (v31 + v30) - 0x32957DF6038A9F02) ^ 0x21E20EB6234EB32ELL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x3098A71738BBE723;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((v8 - ((v36 + v35) | v8) + ((v36 + v35) | 0x1E5940AE4771D176)) ^ 0x4E71FBCDA0D3A4F6, 8) + ((v8 - ((v36 + v35) | v8) + ((v36 + v35) | 0x1E5940AE4771D176)) ^ 0x4E71FBCDA0D3A4F6 ^ __ROR8__(v35, 61));
  v38 = __ROR8__((v20 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((0x7653FFD844AF1481 - v38) & 0x968887040D1C5000) + v38 - 0x7653FFD844AF1482 - ((v38 - 0x7653FFD844AF1482) & 0x928887040D1C5000);
  v40 = __ROR8__(v39 ^ 0x244656A2D9A59292, 8);
  v41 = *(v18 + 8 * v19);
  *v20 = ((((v37 & v10 ^ 0x372A12000080EE21) + (v37 ^ 0x885028F6F338005ELL) - ((v37 ^ 0x885028F6F338005ELL) & v10)) ^ 0xDF82493E1D77B0BDLL) >> (8 * (v20 & 7u))) ^ HIBYTE(v17) ^ 0x12;
  v42 = v39 ^ 0x6926579F0322C966;
  v43 = (v12 - ((v40 + (v39 ^ 0x6926579F0322C966)) | v12) + ((v40 + (v39 ^ 0x6926579F0322C966)) | 0xF0E418D3F39C0B0DLL)) ^ 0x7D5A510C78A2CD07;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a8;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1717D4ABBED3C077;
  v48 = __ROR8__(v47, 8);
  v49 = v47 ^ __ROR8__(v46, 61);
  v50 = (((2 * (v48 + v49)) | 0x1FB1BCB025A9A32) - (v48 + v49) - 0xFD8DE5812D4D19) ^ 0xEC75015A5E169EC9;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x3098A71738BBE723;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x5028BB63E7A27580;
  *(v20 + 1) = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v53, 61))) ^ a7) >> (8 * ((v20 + 1) & 7))) ^ BYTE2(v17) ^ 0x1C;
  v55 = __ROR8__((v20 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = (v55 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v57 = (__ROR8__((v55 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v56) ^ 0x8DBE49DF8B3EC60ALL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = __ROR8__((((2 * ((v59 + v58) ^ 0x13AC9FC9158C886CLL)) | 0x26C2470D59C93E66) - ((v59 + v58) ^ 0x13AC9FC9158C886CLL) - 0x13612386ACE49F33) ^ 0x41E5E01794F391D6, 8);
  v61 = (((2 * ((v59 + v58) ^ 0x13AC9FC9158C886CLL)) | 0x26C2470D59C93E66) - ((v59 + v58) ^ 0x13AC9FC9158C886CLL) - 0x13612386ACE49F33) ^ 0x41E5E01794F391D6 ^ __ROR8__(v58, 61);
  v62 = (v60 + v61) ^ 0x1717D4ABBED3C077;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0xEC888CBFDF3BD3D0;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (v9 - ((v66 + v65) | v9) + ((v66 + v65) | 0x756319745B15AE33)) ^ v15;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x5028BB63E7A27580;
  *(v20 + 2) = (((__ROR8__(v69, 8) + (v69 ^ __ROR8__(v68, 61))) ^ a7) >> (8 * ((v20 + 2) & 7))) ^ BYTE1(v17) ^ v16;
  v70 = __ROR8__((v20 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = (v70 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v72 = (__ROR8__((v70 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v71) ^ 0x8DBE49DF8B3EC60ALL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ a8;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x1717D4ABBED3C077;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (v11 - ((v78 + v77) | v11) + ((v78 + v77) | a5)) ^ a1;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0x3098A71738BBE723;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x5028BB63E7A27580;
  *(v20 + 3) = v17 ^ a4 ^ (((__ROR8__(v83, 8) + (v83 ^ __ROR8__(v82, 61))) ^ a7) >> (8 * ((v20 + 3) & 7)));
  return v41();
}

uint64_t sub_2444BB184()
{
  v6 = *(v4 + 8 * v2);
  v7 = *v5;
  v8 = *v5 + 4;
  v9 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = ((2 * v9 + 0x1358004F76A1D6FCLL) & 0xB543C47627A6A004) - v9 + 0x17B21D9D30DBC47FLL;
  v11 = v10 ^ 0x1390CC6238956D6FLL;
  v10 ^= 0x5EF0CD5FE212369BuLL;
  v12 = (__ROR8__(v11, 8) + v10) ^ v0;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x41285C582D9B8689;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) & 0x3EC3AD2A46AC9354) - (v16 + v15) + 0x609E296ADCA9B655) ^ 0x7789FDC1627A7622;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xEC888CBFDF3BD3D0;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x3098A71738BBE723;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x5028BB63E7A27580;
  v24 = __ROR8__(v23, 8);
  v25 = __ROR8__(v22, 61);
  *(v7 + 4) = v3 ^ 0x93 ^ (((v24 + (v23 ^ v25) - ((2 * (v24 + (v23 ^ v25))) & 0x9FF91FBD96B0FA88) - 0x3003702134A782BCLL) ^ 0xA744FC26378F238CLL) >> (8 * (v8 & 7u)));
  v26 = __ROR8__((v7 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = v26 - ((2 * v26 + 0x1358004F76A1D6FCLL) & 0x53F10677A11C3C64) + 0x37A483638BDF09B0;
  v28 = v27 ^ 0x1F36529D0437DCA0;
  v27 ^= 0x525653A0DEB08754uLL;
  v29 = (__ROR8__(v28, 8) + v27) ^ v0;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x41285C582D9B8689;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0xD9CB08B4ECE0576CLL) + 0x6CE5845A76702BB6) ^ 0x7BF250F1C8A3EBC1;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xEC888CBFDF3BD3D0;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xD648B671C1CE70FALL) - (v38 + v37) + 0x14DBA4C71F18C782) ^ 0x244303D027A320A1;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x5028BB63E7A27580;
  *(v7 + 5) = v1 ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v7 + 5) & 7))) ^ 0xEE;
  return v6();
}

uint64_t sub_2444BB600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x550] = 0x750C1ABFB0567FDBLL;
  STACK[0x3B8] = *(a8 + 8 * v8);
  return (*(a8 + 8 * ((((v8 + 3439) | 0x4704) ^ 0x5CFB) + v8)))(a1, 748495533);
}

uint64_t sub_2444BB670@<X0>(unsigned int a1@<W8>)
{
  v6 = ((v1 - 13221) ^ 0xFFFFFC84) + v4;
  v7 = (v6 | ((v6 < a1) << 32)) - 1819935941;
  v8 = v7 + v2 + 10;
  v9 = __ROR8__((v3 + v7) & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (v9 - 0x16480F2CA374302ALL) ^ 0xB74DE7873E22183;
  v11 = __ROR8__((v9 - 0x16480F2CA374302ALL) ^ 0x46CB58E297BC5F34, 8) + v10;
  v12 = (((2 * v11) | 0x5A674FDF1756D5A2) - v11 + 0x52CC58107454952FLL) ^ 0xBAEC1222C318C06BLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x8EFC952A6735A9DCLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xECC83F369EF51C3ELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) | 0x6B3C3A68AAE458CALL) - ((v18 + v17) | 0x94C3C597551BA735) - 0x6B3C3A68AAE458CBLL) ^ 0xCA1EA81159D0CDAELL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = (v21 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v23 = (__ROR8__(v19, 8) + v20) ^ 0x3DFD662A599D9AF9;
  v24 = (__ROR8__((v21 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v22) ^ 0x8DBE49DF8B3EC60ALL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = v23 ^ __ROR8__(v20, 61);
  v27 = (__ROR8__(v24, 8) + v25) ^ 0x41285C582D9B8689;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0x1CDA1B05ADC53F2CLL) - 0x7192F27D291D606ALL) ^ 0x997AD92968315FE1;
  v31 = __ROR8__(v30, 8);
  v32 = (__ROR8__(v23, 8) + v26) ^ 0xF5D96172F3B103E6;
  v33 = v30 ^ __ROR8__(v28, 61);
  v34 = (((v31 + v33) | 0x276D29752D95C365) - ((v31 + v33) | 0xD892D68AD26A3C9ALL) - 0x276D29752D95C366) ^ 0xCBE5A5CAF2AE10B5;
  v35 = __ROR8__(v32, 8) + (v32 ^ __ROR8__(v26, 61));
  v36 = v34 ^ __ROR8__(v33, 61);
  v37 = STACK[0x318];
  v38 = (__ROR8__(v34, 8) + v36) ^ 0x3098A71738BBE723;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8) + v39;
  v41 = (v35 ^ 0x8A3898548E787E8BLL) >> (8 * ((v3 + v6 + 59) & 7));
  v42 = (((2 * v40) | 0x6A6BEF16EAD396BALL) - v40 + 0x4ACA08748A9634A3) ^ 0xE51D4CE892CBBEDDLL;
  *v8 = (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v39, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * (v8 & 7u))) ^ v41 ^ *(v3 + v7);
  return (*(v37 + 8 * (((v6 != a1) * v5) | v1)))();
}

uint64_t sub_2444BBA78()
{
  v2 = LODWORD(STACK[0xA28]) - ((2 * LODWORD(STACK[0xA28])) & 0x7F9C07A6) - 1077017645;
  v3 = (v2 ^ 0xC491BC3C) - 442205864 + ((v2 << (((v0 ^ 0x45) + 54) ^ 0x39)) & (1332 * (v0 ^ 0x61043945) - 155224714) ^ 0x769C0786);
  return (*(v1 + 8 * (v0 ^ 0x6104332F ^ (230 * (((v3 - v0) | (v0 - v3)) >> 31)))))();
}

uint64_t sub_2444BBB4C@<X0>(unsigned int a1@<W8>)
{
  v7 = (v4 - 1);
  v8 = (v7 | ((v7 < a1) << 32)) - 1627666759;
  v9 = v8 + v2;
  v10 = *(v3 + v8);
  v11 = __ROR8__((v3 + v8) & 0xFFFFFFFFFFFFFFF8, 8) + ((v1 - 980555886) & 0x3A723F3D ^ 0x89AC0027BB50DA46);
  v12 = v11 ^ 0xFFAED09B0E3E9966;
  v13 = __ROR8__(v11 ^ 0xB2CED1A6D4B9C292, 8) + (v11 ^ 0xFFAED09B0E3E9966);
  v14 = ((v13 | 0xD408256BCF0DF4BALL) - (v13 | 0x2BF7DA9430F20B45) + 0x2BF7DA9430F20B45) ^ 0x59B66CB4443332B0;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0xB30143A17B512198) - (v16 + v15) - 0x5980A1D0BDA890CCLL) ^ 0x18A8FD8890331645 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__((((2 * (v16 + v15)) | 0xB30143A17B512198) - (v16 + v15) - 0x5980A1D0BDA890CCLL) ^ 0x18A8FD8890331645, 8) + v17) ^ 0x1717D4ABBED3C077;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x2F2FE27F94D7D59CLL) - (v20 + v19) + 0x68680EC035941532) ^ 0x7B1F7D801550391ELL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((v23 + v22) | 0x398F0AE4B26C3B04) - ((v23 + v22) | 0xC670F51B4D93C4FBLL);
  v25 = __ROR8__((v9 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v24 - 0x398F0AE4B26C3B05) ^ 0x917ADF38AD7DC27;
  v27 = (0x7653FFD844AF1481 - v25) & 0xA16C8C544D5E23C8 | (v25 + 0x9AC0027BB50EB7ELL) & 0x5A9373ABB2A1DC37;
  v28 = v27 ^ 0x13A25DF299E7E15ALL;
  v27 ^= 0x5EC25CCF4360BAAEuLL;
  v29 = v26 ^ __ROR8__(v22, 61);
  v30 = __ROR8__(v28, 8) + v27;
  v31 = __ROR8__(v26, 8) + v29;
  v32 = (v30 - ((2 * v30) & 0xABB5637936BDEFB4) + 0x55DAB1BC9B5EF7DALL) ^ 0xD864F863106031D0;
  v33 = v32 ^ __ROR8__(v27, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x41285C582D9B8689;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0xB0D7263BF68D6C1ALL) - (v36 + v35) + 0x27946CE204B949F3) ^ 0xCF7C47B64595767ALL;
  v38 = (v31 - ((2 * v31) & 0x4E27738A1387A88) + 0x2713B9C509C3D44) ^ 0x525980FFB73E48C4;
  v39 = v37 ^ __ROR8__(v35, 61);
  v40 = (__ROR8__(v37, 8) + v39) ^ 0xEC888CBFDF3BD3D0;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x3098A71738BBE723;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v38, 8) + (v38 ^ __ROR8__(v29, 61));
  v45 = (__ROR8__(v42, 8) + v43) ^ 0x5028BB63E7A27580;
  *(v9 + 10) = ((v44 ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v3 + v7 - 71) & 7))) ^ (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v43, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v9 + 10) & 7))) ^ v10;
  return (*(v6 + 8 * (((v7 != a1) * v5) ^ v1)))();
}

uint64_t sub_2444BC14C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 0x750C1ABFB0567FC3);
  v5 = __ROR8__((v4 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = *(a1 + 8 * v3);
  v7 = ((0x1653FFD844AF1481 - v5) & 0x130468B0ADC0E86ELL) + v5 - 0x7653FFD844AF1482 - ((v5 - 0x7653FFD844AF1482) & 0x130468B0ADC0E86ELL);
  v8 = v7 ^ 0xA1CAB91679792AFCLL;
  v7 ^= 0xECAAB82BA3FE7108;
  v9 = __ROR8__(v8, 8);
  v10 = (((2 * (v9 + v7)) & 0x8FCBB528808EB37CLL) - (v9 + v7) + 0x381A256BBFB8A641) ^ 0xB5A46CB43486604BLL;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0x54FF189EF0F80B50) + 0x2A7F8C4F787C05A8) ^ 0x6B57D01755E78321;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x1717D4ABBED3C077;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0x15C8C1EBA79D52F6) - (v17 + v16) + 0x751B9F0A2C315684) ^ 0x999313B5F30A8554;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__((v20 + v19 - ((2 * (v20 + v19)) & 0x596CDF2F575C1AE0) - 0x534990685451F290) ^ 0x9C2EC8809315EA53, 8);
  v22 = (v20 + v19 - ((2 * (v20 + v19)) & 0x596CDF2F575C1AE0) - 0x534990685451F290) ^ 0x9C2EC8809315EA53 ^ __ROR8__(v19, 61);
  v4[10] = (((__ROR8__((v21 + v22) ^ 0x5028BB63E7A27580, 8) + ((v21 + v22) ^ 0x5028BB63E7A27580 ^ __ROR8__(v22, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v4 + 10) & 7u))) ^ HIBYTE(a2) ^ 0x91;
  v23 = __ROR8__((v4 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((0x7653FFD844AF1481 - v23) & 0x70831D5BAED8CA38) + v23 - 0x7653FFD844AF1482 - ((v23 - 0x7653FFD844AF1482) & 0x70831D5BAED8CA38);
  v25 = v24 ^ 0xC24DCCFD7A6108AALL;
  v24 ^= 0x8F2DCDC0A0E6535ELL;
  v26 = __ROR8__(v25, 8);
  v27 = __ROR8__((((2 * (v26 + v24)) & 0x6E525F98C78DC348) - (v26 + v24) - 0x37292FCC63C6E1A5) ^ 0x456899EC1707D851, 8);
  v28 = (((2 * (v26 + v24)) & 0x6E525F98C78DC348) - (v26 + v24) - 0x37292FCC63C6E1A5) ^ 0x456899EC1707D851 ^ __ROR8__(v24, 61);
  v29 = (v27 + v28 - ((2 * (v27 + v28)) & 0xC56FF7F50AB548DALL) - 0x1D4804057AA55B93) ^ 0xA39FA7A2A8C122E4;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x1717D4ABBED3C077;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xEC888CBFDF3BD3D0;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0x7A6D1720E44E8DA0) - (v35 + v34) + 0x42C9746F8DD8B930) ^ 0x8DAE2C874A9CA1F3;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xB9A93452FE95BBA4) - (v38 + v37) - 0x5CD49A297F4ADDD3) ^ 0xF303DEB5671757ADLL;
  v4[11] = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((v4 + 11) & 7u))) ^ BYTE6(a2) ^ 0xE;
  v40 = __ROR8__((v4 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = ((2 * (v40 - 0x7653FFD844AF1482)) | 0x45442B74ECC86264) - (v40 - 0x7653FFD844AF1482) - 0x22A215BA76643132;
  v42 = v41 ^ 0x906CC41CA2DDF3A0;
  v41 ^= 0xDD0CC521785AA854;
  v43 = (__ROR8__(v42, 8) + v41) ^ 0x8DBE49DF8B3EC60ALL;
  v44 = __ROR8__(v43, 8);
  v45 = v43 ^ __ROR8__(v41, 61);
  v46 = (v44 + v45 - ((2 * (v44 + v45)) & 0x621F3207827676ACLL) + 0x310F9903C13B3B56) ^ 0x7027C55BECA0BDDFLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((v48 + v47) & 0xF2F70C921EAF6767 ^ 0x129204900E202063) + ((v48 + v47) & 0xD08F36DE1509898 ^ 0x8536880509889) - 1) ^ 0x58D835330A3789CLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((v51 + v50) | 0x79E82E87A79FB37) - ((v51 + v50) | 0xF8617D17858604C8) - 0x79E82E87A79FB38) ^ 0xEB160E57A54228E7;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) | 0x595BEEF0A4B15B5ELL) - (v54 + v53) + 0x53520887ADA75251) ^ 0x9C35506F6AE34A8CLL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) | 0x6A5ED517B9BA5572) - (v57 + v56) - 0x352F6A8BDCDD2AB9) ^ 0x6507D1E83B7F5F39;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v4[12] = (((((v60 + v59) | 0x5FAF6B1693D6825ALL) - ((v60 + v59) | 0xA05094E96C297DA5) - 0x5FAF6B1693D6825BLL) ^ 0x371718EE6F01DC92) >> (8 * ((v4 + 12) & 7u))) ^ BYTE5(a2) ^ 0xCE;
  v61 = __ROR8__((v4 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = ((2 * (v61 - 0x7653FFD844AF1482)) | 0x726974BEE01D68F0) - (v61 - 0x7653FFD844AF1482) - 0x3934BA5F700EB478;
  v63 = v62 ^ 0x8BFA6BF9A4B776EALL;
  v62 ^= 0xC69A6AC47E302D1ELL;
  v64 = (__ROR8__(v63, 8) + v62) ^ 0x8DBE49DF8B3EC60ALL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x41285C582D9B8689;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x1717D4ABBED3C077;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xEC888CBFDF3BD3D0;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x3098A71738BBE723;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x5028BB63E7A27580;
  v75 = ((__ROR8__(v74, 8) + (v74 ^ __ROR8__(v73, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v4 + 13) & 7u));
  v76 = __ROR8__((v4 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((0x7653FFD844AF1481 - v76) & 0xFE542F78DA5444B9) + v76 - 0x7653FFD844AF1482 - ((v76 - 0x7653FFD844AF1482) & 0xFA542F78DA5444B9);
  v78 = v77 ^ 0x4C9AFEDE0EED862BLL;
  v77 ^= 0x1FAFFE3D46ADDDFuLL;
  v79 = (__ROR8__(v78, 8) + v77) ^ 0x8DBE49DF8B3EC60ALL;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = __ROR8__((((v81 + v80) & 0x23EC8C234378AF19 ^ 0x3C8000341608D11) + ((v81 + v80) & 0xDC1373DCBC8750E6 ^ 0xDC006048288600E1) - 1) ^ 0x9EE03C13447D0B78, 8);
  v83 = (((v81 + v80) & 0x23EC8C234378AF19 ^ 0x3C8000341608D11) + ((v81 + v80) & 0xDC1373DCBC8750E6 ^ 0xDC006048288600E1) - 1) ^ 0x9EE03C13447D0B78 ^ __ROR8__(v80, 61);
  v84 = (v82 + v83) ^ 0x1717D4ABBED3C077;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) | 0xEBEEBD579C80540CLL) - (v86 + v85) + 0xA08A15431BFD5FALL) ^ 0x197FD214117BF9D6;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x3098A71738BBE723;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (v91 + v90 - ((2 * (v91 + v90)) & 0x1D2A56B20491C28) + 0xE952B590248E14) ^ 0x50C1E9D67786FB94;
  v93 = ((__ROR8__(v92, 8) + (v92 ^ __ROR8__(v90, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v4 + 14) & 7u));
  v94 = __ROR8__((v4 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v95 = ((v94 - 0x7653FFD844AF1482) | 0x3482ED2F4BE36F82) - ((v94 - 0x7653FFD844AF1482) | 0xCB7D12D0B41C907DLL) - 0x3482ED2F4BE36F83;
  v96 = v95 ^ 0x864C3C899F5AAD10;
  v95 ^= 0xCB2C3DB445DDF6E4;
  v97 = (__ROR8__(v96, 8) + v95) ^ 0x8DBE49DF8B3EC60ALL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v4[13] = v75 ^ BYTE4(a2) ^ 0x63;
  v4[14] = v93 ^ BYTE3(a2) ^ 0x19;
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x41285C582D9B8689;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x1717D4ABBED3C077;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((2 * (v103 + v102)) | 0x421E3E46FF8178FELL) - (v103 + v102) + 0x5EF0E0DC803F4381) ^ 0x4D87939CA0FB6FAFLL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x3098A71738BBE723;
  v107 = __ROR8__(v106, 8);
  v108 = v106 ^ __ROR8__(v105, 61);
  v109 = (v107 + v108) ^ 0x5028BB63E7A27580;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  LOBYTE(v110) = (((((v111 + v110) | 0xC03966FD3C50E4A5) - ((v111 + v110) | 0x3FC69902C3AF1B5ALL) + 0x3FC69902C3AF1B5ALL) ^ 0xA8811505C087BA6DLL) >> (8 * ((v4 + 15) & 7u))) ^ BYTE2(a2) ^ 0x9C;
  v112 = __ROR8__((v4 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v4[15] = v110;
  v113 = ((2 * (v112 - 0x7653FFD844AF1482)) | 0x75D79D827AEEC060) - (v112 - 0x7653FFD844AF1482) + 0x4514313EC2889FD0;
  v114 = __ROR8__(v113 ^ 0x8251F67E9CEA2A2, 8);
  v113 ^= 0x45451E5A3349F956uLL;
  v115 = (v114 + v113) ^ 0x8DBE49DF8B3EC60ALL;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x41285C582D9B8689;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x1717D4ABBED3C077;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0xEC888CBFDF3BD3D0;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x3098A71738BBE723;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0x5028BB63E7A27580;
  v126 = __ROR8__(v125, 8);
  v127 = __ROR8__(v124, 61);
  v4[16] = (((((v126 + (v125 ^ v127)) | 0xD08AEA42F2DFEC1BLL) - ((v126 + (v125 ^ v127)) | 0x2F7515BD0D2013E4) + 0x2F7515BD0D2013E4) ^ 0xB83299BA0E08B2D3) >> (8 * ((v4 + 16) & 7u))) ^ BYTE1(a2) ^ 0xD8;
  v128 = __ROR8__((v4 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v129 = ((2 * v128 + 0x1358004F76A1D6FCLL) & 0xF72D73938192B118) - v128 - 0x942B9F17C1A440BLL;
  v130 = v129 ^ 0x32A79790EB8F65E1;
  v129 ^= 0x7FC796AD31083E15uLL;
  v131 = (__ROR8__(v130, 8) + v129) ^ 0x8DBE49DF8B3EC60ALL;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0x41285C582D9B8689;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0x1717D4ABBED3C077;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0xEC888CBFDF3BD3D0;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x3098A71738BBE723;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x5028BB63E7A27580;
  v4[17] = (((__ROR8__(v141, 8) + (v141 ^ __ROR8__(v140, 61))) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v4 + 17) & 7u))) ^ a2 ^ 0x3B;
  return v6();
}

uint64_t sub_2444BCE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x790] = 0x750C1ABFB0567FDBLL;
  STACK[0x3B8] = *(v8 + 8 * (v7 - 11675));
  return (*(v8 + 8 * ((v7 - 11675) ^ 0x5AE3 ^ (2251 * (v7 ^ 0x3132)))))(a1, 748495533, a3, a4, a5, a6, a7, v8);
}

uint64_t sub_2444BD148@<X0>(unsigned int a1@<W0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>)
{
  v22 = (v6 - 1);
  v23 = v22 == a1;
  v24 = (v22 | ((v22 < a1) << 32)) + v12;
  v25 = v24 + v7 + 10;
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = -2 - (((0x7653FFD844AF1481 - v26) | 0x4D40EBB8E606437CLL) + ((v26 + 0x9AC0027BB50EB7ELL) | 0xB2BF144719F9BC83));
  v28 = __ROR8__(v27 ^ 0xFF8E3A1E32BF81EELL, 8);
  v27 ^= 0xB2EE3B23E838DA1ALL;
  v29 = (v28 + v27 - ((2 * (v28 + v27)) & 0x53FCDAE653451284) + a4) ^ a5;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x41285C582D9B8689;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x1717D4ABBED3C077;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v9 - ((v35 + v34) | v9) + ((v35 + v34) | v13)) ^ a3;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((v14 & (2 * (v38 + v37))) - (v38 + v37) + v15) ^ v16;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v8 - ((v41 + v40) | v8) + ((v41 + v40) | v17)) ^ v18;
  v43 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v40, 61));
  *v25 = ((((a2 & (2 * v43)) - v43 + v20) ^ v21) >> (8 * (v25 & 7u))) ^ *(v11 + v24);
  v44 = v23;
  return (*(v19 + 8 * ((v44 * a6) ^ v10)))(1295574005);
}

uint64_t sub_2444BD304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x850] = 0x750C1ABFB0567FDBLL;
  STACK[0x3B8] = *(v8 + 8 * (v7 - 11671));
  return (*(v8 + 8 * (v7 - 31382 + ((v7 - 11922) | 0x5548))))(a1, 748495533, a3, a4, a5, a6, a7, v8);
}

uint64_t sub_2444BD4B8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(v5 - 0x750C1ABFB0567FDBLL) = v3;
  *(v3 - 0x750C1ABFB0567FD3) = *(a2 + v2);
  *(a2 + v2) = v3;
  return (*(a1 + 8 * v4))();
}

uint64_t sub_2444BD508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x550];
  v10 = *(STACK[0x550] - 0x750C1ABFB0567FD3);
  v11 = STACK[0x6C8];
  *(v11 - 0x750C1ABFB0567FD3) = v10;
  *(v11 - 0x750C1ABFB0567FDBLL) = *(v9 - 0x750C1ABFB0567FDBLL);
  return (*(a8 + 8 * (((v10 == 0x750C1ABFB0567FDBLL) * ((((v8 + 513221987) & 0xE168CEAB) - 5399) ^ v8 ^ 0x7F10)) ^ v8)))();
}

uint64_t sub_2444BD794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 + 453344482)))();
  v11 = STACK[0x318];
  *(STACK[0x550] - 0x750C1ABFB0567FC3) = 0;
  return (*(v11 + 8 * ((v9 + (v8 ^ (v9 + 3631)) + 10) ^ v8 ^ (594 * (v8 > 0x656C4111)))))(v10, 748495533);
}

uint64_t sub_2444BD87C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 + 19635)))(a2 - 0x750C1ABFB0567FDBLL);
  v4 = STACK[0x318];
  STACK[0x550] = 0x750C1ABFB0567FDBLL;
  return (*(v4 + 8 * (((LODWORD(STACK[0x6D4]) == (v2 ^ 0x487C99D9)) * ((v2 + 1217) ^ 0x44AB)) ^ v2)))(v3, 748495533);
}

uint64_t sub_2444BD960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a8 + 8 * (v8 + 17790)))();
  v12 = STACK[0x318];
  *(v9 - 0x750C1ABFB0567FC3) = 0;
  return (*(v12 + 8 * v8))(v11, 748495533, a3);
}

uint64_t sub_2444BDA68@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *(a2 + v2) = v3;
  *(a2 - 0x146375EC570BCC2FLL) = v3;
  return (*(a1 + 8 * ((v4 - 1157) | 0x485)))();
}

uint64_t sub_2444BDBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 - 224) = v9 - 1230911237 * ((((v10 - 224) | 0x847E1CC3) - (v10 - 224) + ((v10 - 224) & 0x7B81E338)) ^ 0xD77DAE36) + 7362;
  v11 = (*(a8 + 8 * (v9 + 17438)))(v10 - 224);
  v12 = STACK[0x318];
  *(v8 - 0x58FA20369C313A5ELL) = *(v10 - 216) ^ (((v9 - 221324760) & 0xD311D7F) + 1489731291);
  return (*(v12 + 8 * v9))(v11, 748495533);
}

uint64_t sub_2444BDC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 - 0x58FA20369C313A5ALL);
  STACK[0x498] = STACK[0x3D8];
  LODWORD(STACK[0x6BC]) = -937630092;
  LODWORD(STACK[0x7E8]) = -156791547;
  LODWORD(STACK[0x570]) = v10;
  LODWORD(STACK[0x75C]) = 37735920;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_2444BDD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x600] - 0x58FA20369C313A5ELL);
  STACK[0x498] = STACK[0x3D8];
  LODWORD(STACK[0x6BC]) = -937630092;
  LODWORD(STACK[0x7E8]) = -214693917;
  LODWORD(STACK[0x570]) = v9;
  LODWORD(STACK[0x75C]) = 246724067;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444BDEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = STACK[0x3D8];
  v12 = STACK[0x3C0];
  v13 = &a9 + STACK[0x3C0] - 0x2CB6053A2532749BLL;
  STACK[0x630] = v13;
  v14 = v13 + 16;
  STACK[0x7B0] = (v13 + 16);
  STACK[0x4F0] = (v13 + 48);
  STACK[0x3C0] = v12 + 80;
  (*(a8 + 8 * (v9 + 8327)))();
  v15 = (*(STACK[0x318] + 8 * (v9 + 8327)))(v14, 0, 32);
  v16 = STACK[0x318];
  STACK[0x4A0] = v10;
  STACK[0x520] = 0;
  LODWORD(STACK[0x80C]) = 237377513;
  STACK[0x5B0] = 0;
  LODWORD(STACK[0x640]) = 2119702974;
  STACK[0x458] = v11;
  return (*(v16 + 8 * ((((5 * ((v9 - 1812636007) & 0x6C0A79DE ^ 0x1197)) ^ 0x1B1) * (v11 == 0x6286B82630F8F22CLL)) ^ v9)))(v15, 748495533, 1216081105);
}

uint64_t sub_2444BDFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x438] = 0;
  LODWORD(STACK[0x748]) = 2119702974;
  return (*(a8 + 8 * (v8 ^ 0x3003 ^ (37 * (v8 ^ 0x22)))))();
}

uint64_t sub_2444BE1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v9;
  STACK[0x838] = v11;
  STACK[0x648] = *(a8 + 8 * v8);
  STACK[0x320] = 0;
  LODWORD(STACK[0x5DC]) = 1821082113;
  LODWORD(STACK[0x60C]) = 237377513;
  return (*(a8 + 8 * (((v13 == v12) * (((v10 - 12600) | 0x684) - 1628)) ^ (v10 + 3856))))(a1, a2, 1216081105);
}

uint64_t sub_2444BE2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (v8 + 13) & 0xF;
  LODWORD(STACK[0x5DC]) = v9 - v11 + 16;
  return (*(a8 + 8 * ((6731 * ((16 - v11) + (v8 - 1329610397) < (v10 ^ 0x2B ^ (v10 + 9723) ^ 0xFFFFC5D8uLL))) ^ v10)))(a1, a2, 1216081110);
}

uint64_t sub_2444BE354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (v10 ^ 0x525A5C43) + v9 + v8 - (((v10 ^ 0x3A2E) + 474742426) & (2 * (v9 + v8) + 141065944));
  LODWORD(STACK[0x60C]) = v12;
  v13 = (*(a8 + 8 * (v10 + 20143)))(v12 ^ 0xE2617E9u);
  v14 = STACK[0x318];
  STACK[0x320] = v13;
  return (*(v14 + 8 * (((v13 == 0) * v11) ^ v10)))();
}

uint64_t sub_2444BE940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a1 + v14 - 0x6844FBE6A61D15B6;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((0x16480F2CA3743029 - v19) & 0x24D95A6FCF82AE4ELL) + v19 + v9 - ((v19 + v9) & 0x20D95A6FCF82AE4ELL);
  v21 = __ROR8__(v20 ^ 0x6212028D583EF17ALL, 8);
  v20 ^= 0x2FAD8417BC608FCDuLL;
  v22 = (((2 * (v21 + v20)) & 0x863DF203D7CD43ELL) - (v21 + v20) + 0x7BCE106FE14195E0) ^ 0x6C11A5A2A9F23F5ALL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x8EFC952A6735A9DCLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a3;
  v27 = __ROR8__(v26, 8);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (((2 * (v27 + v28)) & 0x2EA57472DD57E1E0) - (v27 + v28) - 0x1752BA396EABF0F1) ^ 0x498FD7BF62609A6BLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = *(a8 + 8 * v13);
  v32 = __ROR8__(v29, 8);
  v33 = __ROR8__((v32 + v30 - ((2 * (v32 + v30)) & 0xE88C35A3C70E36C8) + 0x74461AD1E3871B64) ^ 0x49BB7CFBBA1A819DLL, 8);
  v34 = (v32 + v30 - ((2 * (v32 + v30)) & 0xE88C35A3C70E36C8) + 0x74461AD1E3871B64) ^ 0x49BB7CFBBA1A819DLL ^ __ROR8__(v30, 61);
  v35 = (v33 + v34 - ((2 * (v33 + v34)) & 0x2A07DFB7FD806E98) - 0x6AFC1024013FC8B4) ^ 0x60DA8EA90D7134AALL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  *v18 = (((0xFB6983405B4ED50FLL - ((v37 + v36) | 0xFB6983405B4ED50FLL) + ((v37 + v36) | 0x4967CBFA4B12AF0)) ^ 0x8EAEE4EB2AC9547BLL) >> (8 * (v18 & 7u))) ^ HIBYTE(v15) ^ 0xC0;
  v38 = __ROR8__((v18 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = v38 - ((2 * v38 + 0x136FE1A6B9179FACLL) & 0x2781D76CBF2F0836) + 0x178DC89BC2353F1;
  v40 = v39 ^ 0x510BB354C82BDB2FLL;
  v39 ^= 0x1CB435CE2C75A598uLL;
  v41 = (__ROR8__(v40, 8) + v39) ^ 0x17DFB5CD48B3AABALL;
  v42 = __ROR8__(v41, 8);
  v43 = __ROR8__(v39, 61);
  v44 = (((2 * (v42 + (v41 ^ v43))) & 0x5EF68222E9BD709CLL) - (v42 + (v41 ^ v43)) + 0x5084BEEE8B2147B1) ^ 0xDE782BC4EC14EE6DLL;
  v45 = v44 ^ __ROR8__(v41 ^ v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a3;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (0x3868A1A2089D6C1FLL - ((v48 + v47) | 0x3868A1A2089D6C1FLL) + ((v48 + v47) | 0xC7975E5DF76293E0)) ^ 0x66B5CC2404560684;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((2 * (v51 + v50)) | 0xEF359D77A13F518CLL) - (v51 + v50) + 0x86531442F60573ALL) ^ 0xCA67A8918902323FLL ^ __ROR8__(v50, 61);
  v53 = (__ROR8__((((2 * (v51 + v50)) | 0xEF359D77A13F518CLL) - (v51 + v50) + 0x86531442F60573ALL) ^ 0xCA67A8918902323FLL, 8) + v52) ^ a2;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  *(v18 + 1) = (((((v55 + v54) & 0xFEDA796B56DB599BLL ^ 0x6A08414100124098) + ((v55 + v54) & 0x1258694A924A664 ^ 0x204A1202401) - 1) ^ 0xE030DB112F4A1A13) >> (8 * ((v18 + 1) & 7))) ^ BYTE2(v15) ^ 0x18;
  v56 = __ROR8__((v18 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v57 = ((2 * (v56 + v9)) | 0x942AC465F311F89ELL) - (v56 + v9) - 0x4A156232F988FC4FLL;
  v58 = __ROR8__(v57 ^ 0xCDE3AD06E34A37BLL, 8);
  v57 ^= 0x4161BC4A8A6ADDCCuLL;
  v59 = (v58 + v57) ^ 0x17DFB5CD48B3AABALL;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x8EFC952A6735A9DCLL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = __ROR8__((v63 + v62 - ((2 * (v63 + v62)) & 0x289691EA58AD6270) + 0x144B48F52C56B138) ^ 0xF88377C3B2A3AD06, 8);
  v65 = (v63 + v62 - ((2 * (v63 + v62)) & 0x289691EA58AD6270) + 0x144B48F52C56B138) ^ 0xF88377C3B2A3AD06 ^ __ROR8__(v62, 61);
  v66 = (v64 + v65) ^ 0xA1229279F3349564;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (v68 + v67 - ((2 * (v68 + v67)) & 0xFA695A78BC373002) + 0x7D34AD3C5E1B9801) ^ 0x40C9CB16078602F8;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ a2;
  *(v18 + 2) = (((__ROR8__(v71, 8) + (v71 ^ __ROR8__(v70, 61))) ^ a6) >> (8 * ((v18 + 2) & 7))) ^ BYTE1(v15) ^ 0xF7;
  v72 = __ROR8__((v18 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v73 = ((v72 + v9) | 0xCA9151DD609C8C82) - ((v72 + v9) | 0x356EAE229F63737DLL) + 0x356EAE229F63737DLL;
  v74 = v73 ^ 0x8C5A093FF720D3B6;
  v73 ^= 0xC1E58FA5137EAD01;
  v75 = (__ROR8__(v74, 8) + v73) ^ 0x17DFB5CD48B3AABALL;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (0xE0D40237F8085144 - ((v77 + v76) | 0xE0D40237F8085144) + ((v77 + v76) | v16)) ^ v17;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ a3;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = __ROR8__(((v11 & (2 * ((v82 + v81) ^ v8))) - ((v82 + v81) ^ v8) + v12) ^ v10, 8);
  v84 = ((v11 & (2 * ((v82 + v81) ^ v8))) - ((v82 + v81) ^ v8) + v12) ^ v10 ^ __ROR8__(v81, 61);
  v85 = (v83 + v84) ^ 0x3DFD662A599D9AF9;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ a2;
  *(v18 + 3) = v15 ^ (((__ROR8__(v87, 8) + (v87 ^ __ROR8__(v86, 61))) ^ a6) >> (8 * ((v18 + 3) & 7))) ^ 4;
  return v31();
}

uint64_t sub_2444BF050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = v9;
  *v10 = v11;
  return (*(a8 + 8 * a5))(v12);
}

uint64_t sub_2444BF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = ((25 * (v10 ^ 0x4CFC)) ^ 0x37BC) - *(v9 - 0x750C1ABFB0567FCBLL) + 1032332124;
  v12 = ((v8 - 472067288) < 0x331D11C5) ^ (v11 < 0x331D11C5);
  v13 = v8 - 472067288 > v11;
  if (v12)
  {
    v14 = (v8 - 472067288) < 0x331D11C5;
  }

  else
  {
    v14 = v13;
  }

  return (*(a8 + 8 * ((19 * v14) ^ v10)))();
}

uint64_t sub_2444BF364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = ((a3 + 8310) ^ 0xFFFFCEC7) + v7;
  v16 = (v15 | ((v15 < v5) << 32)) + 0x4B8DE68F16A59B27;
  v17 = v16 + v8 - 0x4B8DE68F2D2D9D44;
  v18 = *v17;
  v19 = a4 + a5 + a3 + a1 + 0x34921A70DAD451FBLL + v16;
  v20 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((0x653FFD844AF1481 - v20) & 0x68192F52EEDDDAFLL) + v20 + v10 - ((v20 + v10) & 0x28192F52EEDDDAFLL);
  v22 = v21 ^ 0xB44F4353FA541F3DLL;
  v21 ^= 0xF92F426E20D344C9;
  v23 = __ROR8__(v22, 8);
  v24 = __ROR8__((a2 - ((v23 + v21) | a2) + ((v23 + v21) | 0x469495A91D8C25D5)) ^ 0xCB2ADC7696B2E3DFLL, 8);
  v25 = (a2 - ((v23 + v21) | a2) + ((v23 + v21) | 0x469495A91D8C25D5)) ^ 0xCB2ADC7696B2E3DFLL ^ __ROR8__(v21, 61);
  v26 = (v24 + v25) ^ v11;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v12;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x2D1F34E73514C3DCLL) - 0x6970658C65759E12) ^ 0x7A0716CC45B1B23ELL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = v33 + v32 - ((2 * (v33 + v32)) & 0xCE208E478446816ELL) - 0x18EFB8DC3DDCBF49;
  v35 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v34 ^= 0xD788E034FA98A794;
  v36 = ((2 * (v35 + v6)) | 0x28EEB20E853F7082) - (v35 + v6) - 0x14775907429FB841;
  v37 = v34 ^ __ROR8__(v32, 61);
  v38 = __ROR8__(v36 ^ 0x52BC01E5D523E775, 8);
  v36 ^= 0x1F03877F317D99C2uLL;
  v39 = __ROR8__(v34, 8) + v37;
  v40 = (((2 * (v38 + v36)) | 0x706841FC22E0D7B8) - (v38 + v36) + 0x47CBDF01EE8F9424) ^ 0xAFEB953359C3C166;
  v41 = v40 ^ __ROR8__(v36, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v13;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * v39) | 0xB55A8D32B8DC1880) - v39 - 0x5AAD46995C6E0C40) ^ 0xA85FDFABBCC79C0;
  v46 = (((v44 + v43) ^ 0x94E285B32A857C8ELL) - ((2 * ((v44 + v43) ^ 0x94E285B32A857C8ELL)) & 0xC27F96A12606E26) + 0x613FCB509303713) ^ 0x7E394630BD4057A3;
  v47 = v46 ^ __ROR8__(v43, 61);
  v48 = __ROR8__(v46, 8) + v47;
  v49 = __ROR8__(v45, 8) + (v45 ^ __ROR8__(v37, 61));
  v50 = (((2 * v48) & 0xA32AFCE7CDD2825ALL) - v48 + 0x2E6A818C1916BED2) ^ 0x8F4813F5EA222BB6;
  v51 = v50 ^ __ROR8__(v47, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v14;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) | 0x10C451FDEBF960B8) - (v54 + v53) + 0x779DD7010A034FA4) ^ 0x7DBB498C064DB3BALL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = ((v49 - ((2 * v49) & 0x1FE01D123E3422C8) + 0xFF00E891F1A1164) ^ 0x67487D71E3CD4FACLL) >> (8 * (v17 & 7u));
  v59 = STACK[0x318];
  *v19 = (((v9 - ((v57 + v56) | v9) + ((v57 + v56) | 0x36646C87B986A7D1)) ^ 0xBC5CF4D337FED95ALL) >> (8 * (v19 & 7u))) ^ v58 ^ v18;
  return (*(v59 + 8 * ((25 * (v15 != v5)) ^ a3)))();
}

uint64_t sub_2444BF83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x310] - 10107;
  STACK[0x308] = STACK[0x320];
  v9 = LODWORD(STACK[0x5DC]) - ((2 * LODWORD(STACK[0x5DC]) + 652803070) & 0xD71894E4) - 16725903;
  return (*(a8 + 8 * ((114 * (((2 * v9) & 0x4F6EFDBE ^ 0x470894A4) + (v9 ^ 0xCC3B34AD) + 1559886266 == 78739609)) ^ v8)))();
}

uint64_t sub_2444BFAE0@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W4>, int a4@<W5>, uint64_t a5@<X7>, int a6@<W8>)
{
  STACK[0x280] = *(a5 + 8 * ((a6 ^ 0x3832) + 5289));
  v11 = v8;
  v12 = a3 + a2 + a4;
  *&STACK[0x220] = vdupq_n_s64(0x38uLL);
  *&STACK[0x230] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  LODWORD(STACK[0x210]) = v12 - 5;
  *&STACK[0x2D0] = vdupq_n_s64(v10);
  *&STACK[0x2E0] = vdupq_n_s64(v7);
  *&STACK[0x200] = vdupq_n_s64(v11);
  *&STACK[0x2B0] = vdupq_n_s64(v6);
  *&STACK[0x2C0] = vdupq_n_s64(v9);
  *&STACK[0x290] = vdupq_n_s64(0x553B2A364E371E0CuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x3DFD662A599D9AF9uLL);
  return (STACK[0x280])(4294967280, -(a1 & 0xFFFFFFF0), (v12 + 2), (v12 + 7), (v12 - 2), (v12 - 1), (v12 + 1));
}

uint64_t sub_2444BFCE8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int8x16_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int8x16_t a52, int64x2_t a53, int8x16_t a54, int8x16_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int8x16_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v88 = (LODWORD(STACK[0x210]) + a1 + 16);
  v89 = v66 + v67 + v68;
  *&v90 = v89 + (v73 + a1 + 16);
  *(&v90 + 1) = v89 + (v71 + a1 + 16);
  *&STACK[0x280] = v90;
  *&v90 = v89 + v88;
  *(&v90 + 1) = v89 + (v77 + a1 + 16);
  *&STACK[0x270] = v90;
  v91.i64[0] = v89 + (a7 + a1 + 16);
  v91.i64[1] = v89 + (v72 + a1 + 16);
  v92.i64[0] = v89 + (v74 + a1 + 16);
  v92.i64[1] = v89 + (a3 + a1 + 16);
  v93.i64[0] = v89 + (v76 + a1 + 16);
  v94.i64[0] = v89 + (a4 + a1 + 16);
  v94.i64[1] = v89 + (v70 + a1 + 16);
  v93.i64[1] = v89 + (v69 + a1 + v65 + 16);
  v95 = *&STACK[0x230];
  v96 = vandq_s8(v93, *&STACK[0x230]);
  v97 = vandq_s8(v94, *&STACK[0x230]);
  v98 = vandq_s8(v92, *&STACK[0x230]);
  v99 = vandq_s8(v91, *&STACK[0x230]);
  v100 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v104 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v100, v100), *&STACK[0x2E0]), *&STACK[0x2D0]), v100);
  v105 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v101, v101), *&STACK[0x2E0]), *&STACK[0x2D0]), v101);
  v106 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v102, v102), *&STACK[0x2E0]), *&STACK[0x2D0]), v102);
  *&STACK[0x260] = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v103, v103), *&STACK[0x2E0]), *&STACK[0x2D0]), v103);
  v107 = vaddq_s64(v105, *&STACK[0x200]);
  v108 = vaddq_s64(v104, *&STACK[0x200]);
  v109 = *&STACK[0x200];
  v110 = veorq_s8(v108, v78);
  v111 = veorq_s8(v107, v78);
  v112 = veorq_s8(v107, a60);
  v113 = veorq_s8(v108, a60);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v82);
  v115 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v113), v82);
  v118 = veorq_s8(v117, v116);
  v119 = veorq_s8(v114, v115);
  v120 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v119);
  v122 = veorq_s8(vaddq_s64(v120, v118), v81);
  v123 = veorq_s8(v121, v81);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v125 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v125);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v128 = *&STACK[0x2C0];
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, *&STACK[0x2C0]), vorrq_s8(v126, v84)), v84), a55);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, *&STACK[0x2C0]), vorrq_s8(v127, v84)), v84), a55);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v132 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v133 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v132);
  v135 = vaddq_s64(v133, v131);
  v136 = *&STACK[0x2B0];
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v134, a54), vorrq_s8(v134, v83)), v83), *&STACK[0x2B0]);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v135, a54), vorrq_s8(v135, v83)), v83), *&STACK[0x2B0]);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v140 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v87);
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v140), v87);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v144 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v145 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v144);
  v147 = vaddq_s64(v145, v143);
  v148 = *&STACK[0x290];
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), *&STACK[0x290]), v147), a53), a52);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), *&STACK[0x290]), v146), a53), a52);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v152 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v153 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v155.i64[0] = v89 + (a63 + a1 + 16);
  v155.i64[1] = v89 + (a65 + a1 + 16);
  *&STACK[0x240] = v155;
  v156 = vaddq_s64(v106, v109);
  v157 = vaddq_s64(v154, v152);
  v158 = vaddq_s64(v153, v151);
  v270.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v157, v157), v85), v157), v86), v80), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), v79)));
  v270.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), v85), v158), v86), v80), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v79)));
  v159 = veorq_s8(v156, v78);
  v160 = veorq_s8(v156, a60);
  v161 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v82);
  v163 = veorq_s8(v162, v161);
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v81);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, v128), vorrq_s8(v166, v84)), v84), a55);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = v136;
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, a54), vorrq_s8(v169, v83)), v83), v136);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v87);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v148), v175), a53), a52);
  v136.i64[0] = v89 + (a6 + a1 + 16);
  v136.i64[1] = v89 + (a5 + a1 + 16);
  *&STACK[0x250] = v136;
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL)));
  v178 = vsubq_s64(vorrq_s8(vaddq_s64(v177, v177), v85), v177);
  v179 = vandq_s8(v136, v95);
  v180 = vaddq_s64(*&STACK[0x260], v109);
  v270.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v178, v86), v80), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v79)));
  v181 = veorq_s8(v180, v78);
  v182 = veorq_s8(v180, a60);
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v82);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v81);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v187, v128), vorrq_s8(v187, v84)), v84), a55);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190, a54), vorrq_s8(v190, v83)), v83), v170);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v87);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), v148), v195), a53), a52);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v199 = vandq_s8(v155, v95);
  v200 = vaddq_s64(v198, v197);
  v201 = vandq_s8(*&STACK[0x270], v95);
  v270.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v200, v200), v85), v200), v86), v80), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v79)));
  v202 = vandq_s8(*&STACK[0x280], v95);
  v203 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v207 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v203, v203), *&STACK[0x2E0]), *&STACK[0x2D0]), v203);
  v208 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v206, v206), *&STACK[0x2E0]), *&STACK[0x2D0]), v206);
  v209 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v204, v204), *&STACK[0x2E0]), *&STACK[0x2D0]), v204), v109);
  v210 = vaddq_s64(v207, v109);
  v206.i64[0] = vqtbl4q_s8(v270, a45).u64[0];
  v211 = veorq_s8(v210, v78);
  v270.val[0] = veorq_s8(v209, v78);
  v270.val[1] = veorq_s8(v209, a60);
  v270.val[2] = veorq_s8(v210, a60);
  v270.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270.val[0], 0x38uLL), v270.val[0], 8uLL), v270.val[1]), v82);
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v270.val[2]), v82);
  v213 = vsraq_n_u64(vshlq_n_s64(v270.val[1], 3uLL), v270.val[1], 0x3DuLL);
  v270.val[1] = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v270.val[2], 3uLL), v270.val[2], 0x3DuLL));
  v270.val[2] = veorq_s8(v270.val[0], v213);
  v214 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270.val[0], 0x38uLL), v270.val[0], 8uLL), v270.val[2]);
  v270.val[0] = veorq_s8(vaddq_s64(v214, v270.val[1]), v81);
  v216 = vsraq_n_u64(vshlq_n_s64(v270.val[1], 3uLL), v270.val[1], 0x3DuLL);
  v217 = veorq_s8(v215, v81);
  v270.val[1] = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v270.val[2], 3uLL), v270.val[2], 0x3DuLL));
  v270.val[2] = veorq_s8(v270.val[0], v216);
  v218 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270.val[0], 0x38uLL), v270.val[0], 8uLL), v270.val[2]);
  v270.val[0] = vaddq_s64(v218, v270.val[1]);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v219, *&STACK[0x2C0]), vorrq_s8(v219, v84)), v84), a55);
  v270.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v270.val[0], *&STACK[0x2C0]), vorrq_s8(v270.val[0], v84)), v84), a55);
  v270.val[1] = veorq_s8(v270.val[0], vsraq_n_u64(vshlq_n_s64(v270.val[1], 3uLL), v270.val[1], 0x3DuLL));
  v270.val[2] = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v270.val[2], 3uLL), v270.val[2], 0x3DuLL));
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v270.val[2]);
  v270.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270.val[0], 0x38uLL), v270.val[0], 8uLL), v270.val[1]);
  v222 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v221, a54), vorrq_s8(v221, v83)), v83), *&STACK[0x2B0]);
  v270.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v270.val[0], a54), vorrq_s8(v270.val[0], v83)), v83), *&STACK[0x2B0]);
  v270.val[1] = veorq_s8(v270.val[0], vsraq_n_u64(vshlq_n_s64(v270.val[1], 3uLL), v270.val[1], 0x3DuLL));
  v270.val[2] = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v270.val[2], 3uLL), v270.val[2], 0x3DuLL));
  v270.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270.val[0], 0x38uLL), v270.val[0], 8uLL), v270.val[1]), *&STACK[0x2A0]);
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v270.val[2]), *&STACK[0x2A0]);
  v224 = vsraq_n_u64(vshlq_n_s64(v270.val[1], 3uLL), v270.val[1], 0x3DuLL);
  v270.val[1] = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v270.val[2], 3uLL), v270.val[2], 0x3DuLL));
  v270.val[2] = veorq_s8(v270.val[0], v224);
  v225 = vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270.val[0], 0x38uLL), v270.val[0], 8uLL), v270.val[2]);
  v270.val[0] = vaddq_s64(v225, v270.val[1]);
  v270.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v270.val[0], v270.val[0]), *&STACK[0x290]), v270.val[0]), a53), a52);
  v227 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v226, v226), *&STACK[0x290]), v226), a53), a52);
  v228 = vsraq_n_u64(vshlq_n_s64(v270.val[1], 3uLL), v270.val[1], 0x3DuLL);
  v270.val[1] = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v270.val[2], 3uLL), v270.val[2], 0x3DuLL));
  v270.val[2] = veorq_s8(v270.val[0], v228);
  v229 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v230 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v205, v205), *&STACK[0x2E0]), *&STACK[0x2D0]), v205), v109);
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270.val[0], 0x38uLL), v270.val[0], 8uLL), v270.val[2]);
  v270.val[0] = vaddq_s64(v229, v270.val[1]);
  v270.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v231, v231), v85), v231), v86), v80), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x280], 3uLL), v79)));
  v270.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v270.val[0], v270.val[0]), v85), v270.val[0]), v86), v80), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x270], 3uLL), v79)));
  v232 = veorq_s8(v230, v78);
  v233 = veorq_s8(v230, a60);
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), v82);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), v81);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v238, *&STACK[0x2C0]), vorrq_s8(v238, v84)), v84), a55);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240);
  v242 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v241, a54), vorrq_s8(v241, v83)), v83), *&STACK[0x2B0]);
  v243 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v244 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243), *&STACK[0x2A0]);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v246, v246), *&STACK[0x290]), v246), a53), a52);
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL)));
  v249 = vaddq_s64(v208, v109);
  v270.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v248, v248), v85), v248), v86), v80), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x240], 3uLL), v79)));
  v250 = veorq_s8(v249, v78);
  v251 = veorq_s8(v249, a60);
  v252 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v251), v82);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253), v81);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255);
  v257 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v256, *&STACK[0x2C0]), vorrq_s8(v256, v84)), v84), a55);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258);
  v260 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v259, a54), vorrq_s8(v259, v83)), v83), *&STACK[0x2B0]);
  v261 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v262 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v261), *&STACK[0x2A0]);
  v263 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL));
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263);
  v265 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v264, v264), *&STACK[0x290]), v264), a53), a52);
  v266 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL)));
  v267 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v266, v266), v85), v266), v86), v80), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x250], 3uLL), v79)));
  v206.i64[1] = vqtbl4q_s8(v270, a45).u64[0];
  v268 = vrev64q_s8(v206);
  *(v89 + (a4 + a1 + 16) - 15) = vextq_s8(v268, v268, 8uLL);
  return (*(a8 + 8 * ((7645 * (a2 == a1)) ^ v75)))((a1 - 16));
}

uint64_t sub_2444C09D0(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a8 + 8 * a2);
  *&STACK[0x2E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  LODWORD(STACK[0x2C0]) = a3 & 0xFFFFFFF8;
  *&STACK[0x2D0] = xmmword_245010D40;
  return v8(0);
}

uint64_t sub_2444C0B30(int a1, unsigned int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, int8x16_t a10, int64x2_t a11, int8x16_t a12, int64x2_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16)
{
  v37 = v16 + v17 + v18;
  v38.i64[0] = v37 + (a5 + a1);
  v38.i64[1] = v37 + (a4 + a1);
  v39.i64[0] = v37 + (a7 + a1);
  v39.i64[1] = v37 + (a6 + a1);
  v40.i64[0] = v37 + (v19 + a1);
  v40.i64[1] = v37 + (a8 + a1);
  v41.i64[0] = v37 + (v21 + a1);
  v41.i64[1] = v37 + (v20 + a1);
  v42 = vandq_s8(v41, *&STACK[0x2E0]);
  v43 = vandq_s8(v40, *&STACK[0x2E0]);
  v44 = vandq_s8(v39, *&STACK[0x2E0]);
  v45 = vandq_s8(v38, *&STACK[0x2E0]);
  v46 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v50 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v48, v48), a11), a12), v48);
  v51 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v49, v49), a11), a12), v49);
  v52 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v47, v47), a11), a12), v47), a13);
  v53 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v46, v46), a11), a12), v46), a13);
  v54 = veorq_s8(v53, a14);
  v55 = veorq_s8(v52, a14);
  v56 = veorq_s8(v52, v23);
  v57 = veorq_s8(v53, v23);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56), v24);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57), v24);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v61 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61);
  v64 = veorq_s8(vaddq_s64(v62, v60), v25);
  v65 = veorq_s8(v63, v25);
  v66 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, v26), vorrq_s8(v70, a15)), a15), v27);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, v26), vorrq_s8(v71, a15)), a15), v27);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v74);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, v28), vorrq_s8(v76, a16)), a16), v29);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, v28), vorrq_s8(v77, a16)), a16), v29);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v80), v30);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81), v30);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v86 = veorq_s8(v82, v83);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = vaddq_s64(v87, v85);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), v31), v89), v32), v33);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), v31), v88), v32), v33);
  v92 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v94 = veorq_s8(v90, v92);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v97 = vaddq_s64(v50, a13);
  v98 = vaddq_s64(v96, v94);
  v99 = vaddq_s64(v95, v93);
  v136.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), v34), v98), v35), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a10)));
  v136.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), v34), v99), v35), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a10)));
  v100 = veorq_s8(v97, a14);
  v101 = veorq_s8(v97, v23);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v24);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v25);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, v26), vorrq_s8(v106, a15)), a15), v27);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v28), vorrq_s8(v109, a16)), a16), v29);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v30);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), v31), v114), v32), v33);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL)));
  v117 = vaddq_s64(v51, a13);
  v136.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), v34), v116), v35), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a10)));
  v118 = veorq_s8(v117, a14);
  v119 = veorq_s8(v117, v23);
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v24);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v25);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v26), vorrq_s8(v124, a15)), a15), v27);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v28), vorrq_s8(v127, a16)), a16), v29);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v30);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), v31), v132), v32), v33);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL)));
  v136.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), v34), v134), v35), v36), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a10)));
  *(v41.i64[0] - 7) = vrev64_s8(*&vqtbl4q_s8(v136, *&STACK[0x2D0]));
  return (*(v22 + 8 * (((2 * (a3 == a1)) | (4 * (a3 == a1))) ^ a2)))((a1 - 8));
}

uint64_t sub_2444C11F0@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v23 = STACK[0x308] + STACK[0x2F0] - 0x42E78BF86F2CC6A0 + (v9 + a2);
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (((v24 << ((v13 | a1) ^ a3)) + v14) & v21) - v24 + v17;
  v26 = v25 ^ v20;
  v27 = v25 ^ a5;
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x17DFB5CD48B3AABALL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x8EFC952A6735A9DCLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v7 - ((v32 + v31) | v7) + ((v32 + v31) | v18)) ^ v19;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v8 - ((v35 + v34) | v8) + ((v35 + v34) | v22)) ^ v10;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x3DFD662A599D9AF9;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = __ROR8__((((2 * (v40 + v39)) & 0x553B2A364E371E0CLL) - (v40 + v39) + v11) ^ v16, 8) + ((((2 * (v40 + v39)) & 0x553B2A364E371E0CLL) - (v40 + v39) + v11) ^ v16 ^ __ROR8__(v39, 61));
  *v23 = ((((2 * v41) | 0x253E0A1B83585B58) - v41 + v12) ^ 0x98A79D594FD45327) >> (8 * (v23 & 7u));
  return (*(a6 + 8 * (((v9 - 1 != v15) * a4) ^ (a7 + 1210))))();
}

uint64_t sub_2444C1388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39)
{
  *STACK[0x838] = STACK[0x308];
  *a39 = STACK[0x60C];
  return (*(a8 + 8 * v39))(a1, 748495533, 1216124116);
}

uint64_t sub_2444C1458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x6D8] = STACK[0x4A0];
  LODWORD(STACK[0x784]) = -149197095;
  STACK[0x5A0] = v8;
  LODWORD(STACK[0x414]) = 237377529;
  LODWORD(STACK[0x54C]) = 1728746235;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_2444C14F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v11 - 224) = v10 - 1230911237 * ((2 * ((v11 - 224) & 0x1293D198) - (v11 - 224) + 1835806307) ^ 0x3E6F9C96) - 7141;
  v12 = (*(a8 + 8 * (v10 + 2935)))(v11 - 224);
  v13 = STACK[0x318];
  v14 = *(v11 - 216);
  v15 = (v9 + v8 - 1927405770);
  *v15 = v14 ^ 0xB0;
  v15[1] = v10 ^ 0x48 ^ BYTE1(v14) ^ 0xAE;
  return (*(v13 + 8 * ((231 * (v9 == (v10 - 7720) + 1927393411)) ^ v10)))(v12, 748495533);
}

uint64_t sub_2444C15C8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v7 = v4 + v3 + v2;
  *(v7 + 2) = BYTE2(a2) ^ 0xED;
  *(v7 + 3) = HIBYTE(a2) ^ 0x56;
  return (*(a1 + 8 * (((v3 == (v5 + 4384) + v6) * (v5 - 7872)) ^ v5)))();
}

uint64_t sub_2444C1618@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  *(v2 + 4) = (a2 >> (((v5 - 59) ^ 0x6Bu) - 113)) ^ 0x80;
  *(v2 + 5) = BYTE5(a2) ^ 0x40;
  return (*(a1 + 8 * ((v5 + 5061) ^ (505 * (v4 != v3 + 10)))))();
}

uint64_t sub_2444C1678@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v7 = v6 + v5 + v4;
  *(v7 + 6) = (a2 >> (((v2 - 82) & 0xFBu) - 11)) ^ 0x8D;
  *(v7 + 7) = HIBYTE(a2) ^ 0x35;
  return (*(a1 + 8 * (v2 ^ (49 * (v5 + 8 == v3 + 16)))))();
}

uint64_t sub_2444C17E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x520];
  STACK[0x3F0] = STACK[0x520];
  v11 = *(STACK[0x458] - 0x6286B82630F8F1C8);
  v12 = STACK[0x458] - 0x18B00F50F48C0FALL;
  v13 = STACK[0x630];
  v14 = (*(STACK[0x458] - 0x6286B82630F8F1B4) ^ 0x90634597) + 1073106688 + ((2 * *(STACK[0x458] - 0x6286B82630F8F1B4)) & 0xDE736A38 ^ 0xDE316010);
  v15 = 201256697 * ((v9 - 224) ^ 0x76BF0649);
  *(v9 - 172) = (LODWORD(STACK[0x80C]) ^ 0xC6E9B556) + v15;
  *(v9 - 216) = v13;
  *(v9 - 168) = v10;
  *(v9 - 184) = v14 ^ v15;
  *(v9 - 180) = ((v8 + 10822) ^ 0x14C72F0) - v15 + v11 - ((2 * v11 + 382429722) & (((v8 + 4741) | 0x240) ^ 0xEBCD01E4));
  *(v9 - 224) = v8 - v15 + 15308;
  *(v9 - 208) = v15 ^ 0x68BD8DA2;
  *(v9 - 200) = v10;
  *(v9 - 192) = v12;
  v16 = (*(a8 + 8 * (v8 + 21500)))(v9 - 224);
  return (*(STACK[0x318] + 8 * ((17125 * (*(v9 - 176) == 1216124116)) ^ v8)))(v16, 748495533);
}

uint64_t sub_2444C196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x7B0];
  STACK[0x6D8] = STACK[0x4A0];
  LODWORD(STACK[0x784]) = -106723608;
  STACK[0x5A0] = v9;
  LODWORD(STACK[0x414]) = 237377481;
  LODWORD(STACK[0x54C]) = -1360020710;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444C1A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x3F0];
  v10 = STACK[0x80C];
  STACK[0x6D8] = STACK[0x4A0];
  LODWORD(STACK[0x784]) = -217172434;
  STACK[0x5A0] = v9;
  LODWORD(STACK[0x414]) = v10;
  LODWORD(STACK[0x54C]) = -153820359;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444C1BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * v8);
  LODWORD(STACK[0x2D0]) = v9 - 2119401822;
  LODWORD(STACK[0x2F0]) = (v9 - 1879947835) & 0x700DCF53;
  LODWORD(STACK[0x2C0]) = v9 - 5565;
  LODWORD(STACK[0x2E0]) = 1253341538;
  LODWORD(STACK[0x2B0]) = v9 - 5605;
  return v10();
}

uint64_t sub_2444C1C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *v8;
  STACK[0x668] = *(a8 + 8 * v10);
  return (*(a8 + 8 * (((v11 == 0x146375EC570BCC2FLL) * (((v9 + 11005967) & 0xFF580FFF) + ((v9 + 57864498) & 0xFC8D397E) - 14269)) ^ v9)))(a1, a2, 1216081105);
}

uint64_t sub_2444C1CF8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v8 = 715682041 * ((((v7 - 224) | 0xA4F69578) - ((v7 - 224) & 0xA4F69578)) ^ 0x51B06E2A);
  *(v7 - 184) = (v6 + 9580) ^ v8;
  *(v7 - 192) = v5;
  *(v7 - 196) = v8 ^ 0xBDD8363C;
  *(v7 - 208) = v2;
  *(v7 - 224) = v3;
  *(v7 - 216) = ((a2 ^ 0x3FFD92FF) + ((2 * a2) & 0x38482564) + v6 - 402724600) ^ v8;
  *(v7 - 212) = -715682041 * ((((v7 - 224) | 0xA4F69578) - ((v7 - 224) & 0xA4F69578)) ^ 0x51B06E2A) + 975743565 * v4 - 1926566409;
  v9 = (*(a1 + 8 * (v6 + 21325)))(v7 - 224);
  return (*(STACK[0x318] + 8 * v6))(v9, 748495533, *(v7 - 200));
}

uint64_t sub_2444C2064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, unsigned int a6@<W8>)
{
  STACK[0x308] = *(a5 + 8 * v6);
  STACK[0x8A8] = 0;
  return (*(a5 + 8 * (((STACK[0x8A8] >= (a6 ^ 0x44B4uLL)) * v7) ^ a6)))(a1, a2, a3, a4, 1984758740, 0xD06F0ADDD55D4C72, 0x7B40F62ECA6A8A16);
}

uint64_t sub_2444C22D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 == 1984758740;
  if (v8 == 1984758740)
  {
    v11 = 40;
  }

  else
  {
    v11 = 39;
  }

  LOBYTE(STACK[0x3E5]) = v11;
  return (*(a8 + 8 * (((2 * ((((v9 - 11940) ^ v10) & 1) == 0)) & 0xDF | (32 * (((v9 + 92) ^ ~v10) & 1))) ^ (v9 + 2377))))(a1, 748495533);
}

uint64_t sub_2444C238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x568];
  *v9 = 0u;
  v9[1] = 0u;
  return (*(a8 + 8 * ((((v8 - 227) | 0x482) ^ 0x1C8C) + v8)))();
}

uint64_t sub_2444C2544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4F0];
  STACK[0x6D8] = STACK[0x4A0];
  LODWORD(STACK[0x784]) = 1375866203;
  STACK[0x5A0] = v9;
  LODWORD(STACK[0x414]) = 237377481;
  LODWORD(STACK[0x54C]) = 1052379992;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444C2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (v8 + 1061) | 0x10;
  v12 = (*(a8 + 8 * (v11 ^ 0x19F5)))(((v11 - 3832) ^ 0xCF3212B1) + v10 - v9);
  return (*(STACK[0x318] + 8 * (((v12 == 0) * (((v11 - 15392) | 0x12A2) ^ 0x16B0)) | v11)))();
}

uint64_t sub_2444C2898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v12 = (v9 + a7);
  v13 = ((2 * v12) & 0x1F78FFFFALL) + (v12 ^ 0x7D775FF7FBC7FFFDLL) + a1;
  v14 = v13 - 0x7D775FF7FBC7FFFDLL;
  *v14 = 0;
  *(v13 + ((v10 - 5610) ^ 0x8288A00804381812)) = 0;
  *(v14 + 2) = 0;
  *(((2 * (v12 + 4)) & 0x1CFBAFFBCLL) + ((v12 + 4) ^ 0xF7E9CEEFE7DD7FDELL) + a1 + 0x816311018228022) = -9392;
  v15 = ((2 * (v12 + 6)) & 0xF70EFFF2) + ((v12 + 6) ^ 0x3EF7FFFE7B877FF9) + a1 - 0x3EF7FFFE7B877FF9;
  *v15 = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = (-31 - (v11 + 2 * ((16 - v11) & 0xFD ^ v8 & 0xC))) ^ 0xD1;
  return (*(a8 + 8 * (v10 | (4 * (((16 - v11) ^ 0x7A53F9E64C7DBFEFLL) + 2 * ((16 - v11) & 0xFLL) == 0x7A53F9E64C7DBFEFLL)))))();
}

uint64_t sub_2444C2A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v10 = a1;
  *v9 = v11;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444C2AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x878] = STACK[0x5B0];
  LODWORD(STACK[0x7D4]) = STACK[0x640];
  return (*(a8 + 8 * v8))(a1, a2, 1216124116);
}

uint64_t sub_2444C2AD0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x584]) = a3;
  STACK[0x818] = &STACK[0x4A0];
  LODWORD(STACK[0x334]) = a2 - 3;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444C2B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = ((v9 - 15240) | 0x1501) - *(v8 - 0x750C1ABFB0567FCBLL) - 299440670;
  v12 = ((v10 - 1293023559) < 0xE3BBE34A) ^ (v11 < 0xE3BBE34A);
  v13 = v10 - 1293023559 > v11;
  if (v12)
  {
    v14 = (v10 - 1293023559) < 0xE3BBE34A;
  }

  else
  {
    v14 = v13;
  }

  return (*(a8 + 8 * ((!v14 * ((v9 - 15240) ^ 0x96)) | v9)))();
}

uint64_t sub_2444C2DEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = ((v10 - 7775) ^ 0xFFFFF719) + a2;
  v14 = (v13 | ((v13 < v9) << 32)) + 0x11AE0A4DF081507ELL;
  v15 = v14 + a3 - 0x11AE0A4E51860416;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (v8 - v16) & 0xED4F91AA4A423CBDLL | (v16 + a5) & 0x12B06E55B5BDC342;
  v18 = v17 ^ 0x5F81400C9EFBFE2FLL;
  v17 ^= 0x12E14131447CA5DBuLL;
  v19 = (__ROR8__(v18, 8) + v17) ^ v12;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ v7;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (a4 - ((v22 + v23) | a4) + ((v22 + v23) | 0x8D3B3089BCC3568ELL)) ^ 0x9A2CE422021096F9;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0xF728AA7174275F3ALL) - (v26 + v25) + 0x46BAAC745EC5063) ^ 0x171CD98765287C4DLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xE1834BC7A0790E66) - (v29 + v28) + 0xF3E5A1C2FC378CCLL) ^ 0x3FA6FD0B17789FEFLL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) & 0x660E5FCC7C2DD5DALL) - (v32 + v31) + 0x4CF8D019C1E91512) ^ 0x1CD06B7A264B6092;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  *(a1 + a7 + v14) = (((((2 * (v35 + v34)) | 0xC86F2EB5B2D86E6CLL) - (v35 + v34) - 0x6437975AD96C3736) ^ 0xC8FE4A225BB69FELL) >> (8 * (v15 & 7u))) ^ *v15;
  return (*(v11 + 8 * ((28542 * (v13 == v9)) ^ v10)))();
}

uint64_t sub_2444C308C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v9 < v11;
  *(v10 + v8 - 0x1A4A7C6654488C80) = 0;
  v14 = ((v12 + 493465782) & 0xE296395F ^ 0xE5B5839A983F0CCDLL) + v10;
  v15 = v13 ^ (v14 < v11);
  v16 = v14 < v9;
  if (!v15)
  {
    v13 = v16;
  }

  return (*(a8 + 8 * (v12 | (4 * !v13))))();
}

uint64_t sub_2444C31F4@<X0>(int a1@<W2>, uint64_t a2@<X7>, int a3@<W8>)
{
  LODWORD(STACK[0x59C]) = a1;
  STACK[0x830] = &STACK[0x3D8];
  LODWORD(STACK[0x74C]) = -2137597137;
  return (*(a2 + 8 * a3))();
}

uint64_t sub_2444C325C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = a2 & 0x2C0C7F51;
  v3 = STACK[0x59C];
  STACK[0x3C0] += (v2 - 7630) ^ (v2 - 1855516823) & 0x6E98FF7Du ^ 0xFFFFFFFFFFFFCA6BLL;
  return (*(a1 + 8 * ((1907 * (v3 == 1216124116)) ^ v2)))();
}

uint64_t sub_2444C32CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0xA50] = *(a8 + 8 * v8);
  *(v9 - 224) = v8 + 1649972239 * ((2 * ((v9 - 224) & 0x5A96F598) - (v9 - 224) + 627640935) ^ 0xFED1261F) - 572929518;
  *(v9 - 216) = &STACK[0xA50];
  v10 = (*(a8 + 8 * (v8 + 21879)))(v9 - 224);
  v11 = *(v9 - 220) == ((v8 + 108) & 0x5D ^ 0x10);
  return (*(STACK[0x318] + 8 * ((v8 + 20325) ^ v8 ^ (v11 | (4 * v11)))))(v10);
}

uint64_t sub_2444C3394()
{
  v4 = STACK[0x5E8];
  v5 = STACK[0x878];
  v6 = STACK[0x7D4];
  v7 = *(v0 + 8 * v1);
  v8 = 715682041 * ((2 * (v2 & 0x4A02D3ECD472B398) - v2 + 0x35FD2C132B8D4C65) ^ 0x4C2CAF36DECBB737);
  *(v3 - 204) = v1 - v8 - 1811545066;
  *(v3 - 216) = v5;
  *(v3 - 200) = v7 + v8;
  *(v3 - 192) = v4;
  *(v3 - 224) = v6 - v8 - 1506212048;
  v9 = (*(v0 + 8 * (v1 ^ 0x5DBD)))(v3 - 224);
  return (*(STACK[0x318] + 8 * ((v1 ^ 0x176B) + v1)))(v9);
}

uint64_t sub_2444C3470()
{
  v4 = v1 - 88;
  v5 = (v1 + 1210351489) | 0x5810D0;
  v6 = STACK[0x5E8];
  v7 = STACK[0x878];
  v8 = STACK[0x7D4];
  v9 = 715682041 * (((v2 | 0x67281EC5C2FAE0BELL) - v2 + (v2 & 0x98D7E13A3D051F40)) ^ 0x1EF99DE037BC1BECLL);
  *(v3 - 200) = *(v0 + 8 * v4) + v9;
  *(v3 - 192) = v6;
  *(v3 - 224) = v8 - v9 - 1627215493;
  *(v3 - 216) = v7;
  *(v3 - 204) = -1811545066 - v9 + v4 + 34;
  v10 = (*(v0 + 8 * (v4 ^ 0x5DDB)))(v3 - 224);
  return (*(STACK[0x318] + 8 * ((v5 - 1216119164) ^ v4)))(v10);
}

uint64_t sub_2444C35C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, int a4@<W8>)
{
  STACK[0x7A8] = v4;
  LODWORD(STACK[0x72C]) = v5;
  STACK[0x670] = 0x58FA20369C313ACELL;
  LODWORD(STACK[0x4BC]) = 237377513;
  LODWORD(STACK[0x55C]) = 237377513;
  STACK[0x6A8] = 0x6286B82630F8F22CLL;
  STACK[0x628] = 0x19847B594A0B84A2;
  return (*(a3 + 8 * (((a4 ^ 0x496 ^ (28 * (a4 ^ 0x3463))) * (v4 != 0)) ^ a4)))(a1, a2, 1216081105);
}

uint64_t sub_2444C36F0@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  STACK[0x328] = *(a1 + 8 * a2);
  LODWORD(STACK[0x2B0]) = STACK[0x644];
  LODWORD(STACK[0x2E0]) = STACK[0x37C];
  v3 = *(a1 + 8 * (v2 + 2680));
  LODWORD(STACK[0x2F0]) = STACK[0x344];
  LODWORD(STACK[0x2D0]) = STACK[0x5FC];
  v4 = STACK[0x310];
  v5 = STACK[0x310] - 8042;
  LODWORD(STACK[0x2A0]) = STACK[0x310] - 1175;
  LODWORD(STACK[0x210]) = v5;
  LODWORD(STACK[0x290]) = v5 ^ 0x11C1;
  LODWORD(STACK[0x260]) = v5 ^ 0x1D38;
  LODWORD(STACK[0x250]) = 53 * (v5 ^ 0x1198);
  LODWORD(STACK[0x240]) = v5 ^ 0x421B;
  v6 = 2 * (v5 ^ 0x1358);
  LODWORD(STACK[0x308]) = 1057 * (v6 ^ 0x528);
  LODWORD(STACK[0x230]) = v6;
  LODWORD(STACK[0x220]) = v6 + 1037069955;
  LODWORD(STACK[0x2C0]) = v4 ^ 0x399D;
  LODWORD(STACK[0x280]) = v4 - 4392;
  LODWORD(STACK[0x270]) = v4 + 8392;
  return v3();
}

uint64_t sub_2444C3990@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v3 + 13795)))(a2 - 0x19847B594A0B84A2);
  v4 = STACK[0x318];
  *v2 = 0x19847B594A0B84A2;
  return (*(v4 + 8 * v3))(1264);
}

uint64_t sub_2444C3C44@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  STACK[0x810] = *(a1 + 8 * v3);
  STACK[0x4C0] = v2;
  LODWORD(STACK[0x394]) = v4;
  STACK[0x690] = a2;
  STACK[0x760] = 0x6D1444320B6CD339;
  LODWORD(STACK[0x3FC]) = 237377513;
  STACK[0x578] = 0x44046241CC2D2A4ELL;
  STACK[0x478] = 0;
  v7 = (*(a1 + 8 * (v5 + 9108)))(16);
  v8 = STACK[0x318];
  STACK[0x4B0] = v7 + v6;
  return (*(v8 + 8 * (((v7 == 0) * ((8 * v5) ^ 0x1B1E4)) ^ v5)))();
}

uint64_t sub_2444C3CFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  return (*(a8 + 8 * (v8 ^ 0x1AC08)))();
}

uint64_t sub_2444C3DD4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 ^ 0x84E;
  v4 = -121 * (a2 ^ 0xF7);
  v5 = (*(a1 + 8 * ((a2 ^ 0x84E) + 9497)))(v2 ^ 0xE2617E9u);
  return (*(STACK[0x318] + 8 * ((27 * (((v5 == 0) ^ v4) & 1)) ^ v3)))();
}

uint64_t sub_2444C3E50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = v28 - ((2 * v28) & 0x9A76DF1A) - 851742835;
  v31 = ((v29 + 1703883492) & 0x9A70FEEA ^ 0x7BDEA21C) & (2 * v30) ^ 0x1A569E1A;
  v32 = *(a8 + 8 * (v29 ^ (50 * (v31 + (v30 ^ 0x70D420F2) + 1981019605 != 872629588))));
  STACK[0x308] = a1;
  return v32(a1, v31, a3, a4, 0x89AC0027BB50EB7ELL, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_2444C4108@<X0>(unint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X6>, unint64_t a4@<X7>, unint64_t a5@<X8>)
{
  STACK[0x240] = *(STACK[0x318] + 8 * ((v6 + 6325) | 0x1218));
  *&STACK[0x2D0] = vdupq_n_s64(v10);
  *&STACK[0x2E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2C0] = vdupq_n_s64(v11);
  *&STACK[0x2F0] = vdupq_n_s64(v5);
  *&STACK[0x2A0] = vdupq_n_s64(0x3098A71738BBE723uLL);
  *&STACK[0x2B0] = vdupq_n_s64(a3);
  *&STACK[0x280] = vdupq_n_s64(v9);
  *&STACK[0x290] = vdupq_n_s64(0xF9C5301C6E543EF0);
  *&STACK[0x260] = vdupq_n_s64(a1);
  *&STACK[0x270] = vdupq_n_s64(a4);
  *&STACK[0x250] = vdupq_n_s64(a5);
  return (STACK[0x240])(-(v8 & 0xFFFFFFF0), (a2 + v7 + 1108390003));
}

uint64_t sub_2444C5010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *(STACK[0x318] + 8 * v5);
  *&STACK[0x2E0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2D0] = vdupq_n_s64(a5);
  LODWORD(STACK[0x2B0]) = ((1349 * (v5 ^ 0x3F5A)) ^ 0xFFFFC0C4) & v6;
  *&STACK[0x2C0] = xmmword_245010D40;
  return v7(1349 * (v5 ^ 0x3F5Au));
}

uint64_t sub_2444C517C@<X0>(int a1@<W0>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X8>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v35 = (v16 + v12 + v19);
  v36.i64[0] = v9 + (v16 + v14);
  v36.i64[1] = v9 + (v16 + v17);
  v37.i64[0] = v9 + (v16 + v15);
  v37.i64[1] = v9 + (v16 + v20);
  v38.i64[0] = v9 + (v16 + v11);
  v38.i64[1] = v9 + (v16 + v10);
  v39.i64[0] = v9 + v35;
  v39.i64[1] = v9 + (v16 + v13);
  v40 = vandq_s8(v38, *&STACK[0x2F0]);
  v41 = vandq_s8(v37, *&STACK[0x2F0]);
  v42 = vandq_s8(v39, *&STACK[0x2F0]);
  v43 = vandq_s8(v36, *&STACK[0x2F0]);
  v44 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v46 = vaddq_s64(v44, *&STACK[0x2D0]);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), *&STACK[0x2D0]);
  v48 = vaddq_s64(v45, *&STACK[0x2D0]);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), *&STACK[0x2D0]);
  v50 = vsubq_s64(vorrq_s8(v46, a5), vorrq_s8(v46, a6));
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v49, a5), vorrq_s8(v49, a6)), a6);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(v47, a5), vorrq_s8(v47, a6)), a6);
  v53 = veorq_s8(v52, a7);
  v54 = veorq_s8(v51, a7);
  v55 = veorq_s8(v51, a8);
  v56 = veorq_s8(v52, a8);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55), a9);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56), a9);
  v59 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v60 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v61 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v60);
  v63 = vaddq_s64(v61, v59);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), v21), v63), v22), v23);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v62, v62), v21), v62), v22), v23);
  v66 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = veorq_s8(vaddq_s64(v69, v67), v24);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v73 = veorq_s8(v70, v24);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v71, v72);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = vaddq_s64(v76, v74);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, v25), vorrq_s8(v77, v26)), v26), v27);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, v25), vorrq_s8(v78, v26)), v26), v27);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81), v28);
  v84 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v82), v28);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v87 = veorq_s8(v83, v84);
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = vaddq_s64(v88, v86);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v90, v90), v29), v90), v30), v31);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v89, v89), v29), v89), v30), v31);
  v93 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v95 = vaddq_s64(v50, a6);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), veorq_s8(v91, v93));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v94);
  v134.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v32)), v33), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), *&STACK[0x2E0])));
  v134.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(v97, v97), v32)), v33), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x2E0])));
  v98 = veorq_s8(v95, a7);
  v99 = veorq_s8(v95, a8);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), a9);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), v21), v102), v22), v23);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v24);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, v25), vorrq_s8(v107, v26)), v26), v27);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v28);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), v29), v112), v30), v31);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL)));
  v115 = vaddq_s64(vsubq_s64(vorrq_s8(v48, a5), vorrq_s8(v48, a6)), a6);
  v134.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v32)), v33), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), *&STACK[0x2E0])));
  v116 = veorq_s8(v115, a7);
  v117 = veorq_s8(v115, a8);
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), a9);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), v21), v120), v22), v23);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v24);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v125, v25), vorrq_s8(v125, v26)), v26), v27);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v28);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), v29), v130), v30), v31);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL)));
  v134.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v132, vandq_s8(vaddq_s64(v132, v132), v32)), v33), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x2E0])));
  *(v39.i64[0] - 7) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(a2 + v35)), 0x5D5D5D5D5D5D5D5DLL), *&vqtbl4q_s8(v134, *&STACK[0x2C0])));
  return (*(a4 + 8 * (((v16 != v18) * a3) ^ a1)))();
}

uint64_t sub_2444C5880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = (v12 + v15 + 3084);
  v25 = STACK[0x308] + v24;
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((v26 + a4) | v20) - ((v26 + a4) | v10) + v10;
  v28 = v27 ^ v21;
  v29 = v27 ^ a2;
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x8DBE49DF8B3EC60ALL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((v23 & (2 * (v32 + v31))) - (v32 + v31) + a3) ^ v22;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x1717D4ABBED3C077;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__((v11 - ((v37 + v36) | v11) + ((v37 + v36) | v8)) ^ a6, 8);
  v39 = (v11 - ((v37 + v36) | v11) + ((v37 + v36) | v8)) ^ a6 ^ __ROR8__(v36, 61);
  v40 = (v38 + v39) ^ 0x3098A71738BBE723;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) | 0xF9C5301C6E543EF0) - (v42 + v41) + v19) ^ a7;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  *v25 = *(v18 + v24) ^ v16 ^ (((v45 + v44 - (a1 & (2 * (v45 + v44))) + a8) ^ a5) >> (8 * (v25 & 7u)));
  return (*(STACK[0x318] + 8 * (((((v9 + 2986) ^ v14) + v15 == 872629588) * v17) ^ v13)))();
}

uint64_t sub_2444C59F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  STACK[0x590] = STACK[0x308];
  LODWORD(STACK[0x728]) = a37;
  return (*(STACK[0x318] + 8 * v37))(a1, a2, 1216124116);
}

uint64_t sub_2444C5A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 919912233)))();
  v10 = STACK[0x318];
  STACK[0x878] = 0;
  return (*(v10 + 8 * (v8 ^ 0xC92BABCC ^ (32446 * (v8 != ((v8 + 919896151) ^ 0x70B87DCC))))))(v9);
}

uint64_t sub_2444C5C10@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  STACK[0x3A8] = *(a1 + 8 * a2);
  STACK[0x3C8] = v3;
  LODWORD(STACK[0x39C]) = v4;
  STACK[0x3D0] = v2;
  STACK[0x3A0] = 0x5738AE879297DDADLL;
  LODWORD(STACK[0x808]) = 237377513;
  LOWORD(STACK[0x3E6]) = -18976;
  LODWORD(STACK[0x398]) = 237377513;
  LODWORD(STACK[0x504]) = 237377513;
  STACK[0x7C0] = 0xC9D452B5095AACA7;
  STACK[0x468] = 0;
  v7 = (*(a1 + 8 * (v5 ^ 0x1D61)))(16);
  v8 = STACK[0x318];
  STACK[0x828] = v7 + v6;
  return (*(v8 + 8 * (((v7 != 0) * ((((v5 + 474918744) & 0xE3B13D3B) + 778) ^ v5 ^ 0x70B1)) ^ v5)))();
}

uint64_t sub_2444C5CE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444C5D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = ((v8 - 1827474572) & 0x6CECF75E ^ 0xA8C751788EBDF425) + v9;
  v13 = v11 <= ((v8 + 2239) ^ 0x2155F42DuLL) || v11 >= (v10 ^ 0xE2617E9u) + 559269142;
  return (*(a8 + 8 * ((235 * v13) ^ v8)))();
}

uint64_t sub_2444C5DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x3D0];
  STACK[0x7F0] = STACK[0x3D0];
  return (*(a8 + 8 * ((((v8 - 1009737681) & 0x3C2F7DBC ^ 0x310C) * (v9 == 0)) ^ v8)))(a1, a2, 1216081105);
}

uint64_t sub_2444C5E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v6 = ((2 * a4) & 0x16FF7FDB4) + (a4 ^ 0x7FF5BFF7B7FBFEDALL);
  STACK[0xA00] = v6 - 0x80006E400C8D240;
  STACK[0xA08] = v4;
  return (*(a3 + 8 * ((2768 * (v6 - v4 + ((v5 + 7660) ^ 0xD742EE8FDA9BEFF1) < (((v5 - 4811) | 0x10Au) ^ 0xFFFFFFFFFFFFFE7DLL))) ^ (v5 + 44))))(a1, a2, 1216081110);
}

uint64_t sub_2444C5FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 0x6286B82630F8F22CLL);
  STACK[0x858] = 0x750C1ABFB0567FDBLL;
  STACK[0x5B8] = 0x53377708C3FEF58ALL;
  return (*(a3 + 8 * (((v5 == 0x146375EC570BCC2FLL) * (((v4 - 5580) | 0x100) - 760)) ^ v4)))(a1, a2, 1216081105);
}

uint64_t sub_2444C625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x858] - 0x750C1ABFB0567FC3);
  STACK[0x798] = v9;
  return (*(a8 + 8 * (((v9 == 0) * ((((v8 + 253418648) & 0xF0E539FD) - 491) ^ 0x27AA)) | v8)))();
}

uint64_t sub_2444C62D4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0xA6B181C) << 32)) + ((a2 - 9715) | 0x2408u) + 0x6185E4838C3A04D9;
  STACK[0x918] = v3;
  v4 = STACK[0x5B8];
  STACK[0x920] = STACK[0x5B8];
  return (*(a1 + 8 * ((5910 * (v3 - v4 - 0xE4E6D7AD2A64EFFLL < (((a2 - 10607) | 0x188u) ^ 0xFFFFFFFFFFFFFE78))) ^ a2)))();
}

uint64_t sub_2444C63B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LOWORD(STACK[0x906]) = a6;
  v8 = *(v7 + 8 * ((v6 - 12189) ^ 0x554 ^ (3599 * (((v6 - 12189) ^ 0x6654BCB7u) < 0x7BF7E681))));
  LODWORD(STACK[0x270]) = a6;
  return v8();
}

uint64_t sub_2444C6ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t a63)
{
  v69 = STACK[0x310] + 7274;
  v70 = STACK[0x310] - 6468;
  v71 = (v68 ^ v67) + a67;
  STACK[0x908] = v71 + 10;
  v71 -= 0x19671AC57B5B6C18;
  v72 = v71 < 0xDAE48C71;
  v73 = v71 > a63;
  if (a63 < 0xDAE48C71 != v72)
  {
    v74 = v72;
  }

  else
  {
    v74 = v73;
  }

  return (*(a8 + 8 * (((v69 ^ 0x420A) * v74) ^ v70)))(a1, 748495533);
}

uint64_t sub_2444C6CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a8 + 8 * ((a6 - 12224) ^ 0xB5C));
  LODWORD(STACK[0x270]) = 8855;
  return v8();
}

uint64_t sub_2444C6CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = (STACK[0x310] - 12520) | 0x2082;
  v58 = STACK[0x310] + 5622;
  v59 = (v56 ^ v55) + a55;
  STACK[0x8E8] = v59 + 10;
  v59 -= 0x8293202BEF5A06CLL;
  v60 = v59 < 0x18540880;
  v61 = v59 > a51;
  if (a51 < 0x18540880 != v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = v61;
  }

  return (*(STACK[0x318] + 8 * (((v57 ^ 0x20B9) * !v62) ^ v58)))(a1, 748495533);
}

uint64_t sub_2444C6EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * ((v8 - 12194) ^ 0xB56));
  LODWORD(STACK[0x2C0]) = 8855;
  return v9();
}

uint64_t sub_2444C6EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v37 = STACK[0x310];
  LODWORD(STACK[0x8B4]) = v36;
  return (*(a8 + 8 * (v37 - 10777)))(a1, a2, a3, a4, STACK[0x280], a36);
}

uint64_t sub_2444C6F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = STACK[0x310] + 9535;
  v63 = (((STACK[0x310] ^ 0x203B) + 237373158) ^ v61) + a61;
  STACK[0x8F8] = v63 + 10;
  v63 -= 0x695AC7023A4DDD72;
  v64 = v63 < 0x9262B2C3;
  v65 = v63 > a57;
  if (a57 < 0x9262B2C3 != v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = v65;
  }

  return (*(a8 + 8 * (((2 * !v66) | (8 * !v66)) ^ v62)))(a1, 748495533, 1216081110);
}

uint64_t sub_2444C7154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(a8 + 8 * (v16 - 9848));
  LODWORD(STACK[0x308]) = 8855;
  return v17(a1, a2, a3, a4, (v16 - 12204), a16);
}

uint64_t sub_2444C71DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = STACK[0x310] - 10210;
  LODWORD(STACK[0x8BC]) = v70;
  v72 = (v70 ^ v69) + a69;
  STACK[0x8C0] = v72 + 10;
  v72 -= 0x5738AE8704BA8F0DLL;
  v73 = v72 < 0x8DDD4E96;
  v74 = v72 > a35;
  if (a35 < 0x8DDD4E96 != v73)
  {
    v75 = v73;
  }

  else
  {
    v75 = v74;
  }

  return (*(a8 + 8 * (v71 ^ (214 * v75))))(a1, 748495533);
}

uint64_t sub_2444C7390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a8 + 8 * ((a5 - 2024) ^ 0xB58));
  LODWORD(STACK[0x250]) = 8855;
  return v8();
}

uint64_t sub_2444C73C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = STACK[0x310] + 10206;
  v36 = (v34 ^ v33) + a33;
  STACK[0x8A0] = v36 + 10;
  v36 -= 0x225E44567F8F44C1;
  v37 = v36 < 0x5D4F4E40;
  v38 = v36 > a31;
  if (a31 < 0x5D4F4E40 != v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  return (*(STACK[0x318] + 8 * (v35 ^ (51 * v39))))(a1, 748495533);
}

uint64_t sub_2444C7574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * (a5 ^ 0x3AB5 ^ v8));
  LODWORD(STACK[0x2E0]) = 8855;
  return v9();
}

uint64_t sub_2444C75CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v51 = (STACK[0x310] - 12600) | 0x1103;
  v52 = STACK[0x310] + 8898;
  v53 = (v50 ^ v49) + a49;
  STACK[0x8D8] = v53 + 10;
  v54 = (v51 ^ 0xE579612B435462E5) + v53;
  v55 = v54 < 0x6163683C;
  v56 = v54 > a45;
  if (a45 < 0x6163683C != v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = v56;
  }

  return (*(STACK[0x318] + 8 * ((1991 * v57) ^ v52)))(a1, 748495533, 1216081110);
}

uint64_t sub_2444C77D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *(a8 + 8 * ((2820 * (a5 - 858114851 >= (a5 - 1976143617))) ^ (a5 + 62)));
  LODWORD(STACK[0x2F0]) = 8855;
  return v14(a1, a2, a3, a4, a5, a14);
}

uint64_t sub_2444C7D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  LOWORD(STACK[0x8E6]) = a6;
  v29 = *(v28 + 8 * (v27 - 9848));
  LODWORD(STACK[0x2C0]) = a6;
  return v29(a1, a2, a3, a4, (v27 - 12177), a27);
}

uint64_t sub_2444C7DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LOWORD(STACK[0x8BA]) = a6;
  v8 = *(v7 + 8 * ((v6 - 12239) ^ 0xBA9));
  LODWORD(STACK[0x250]) = a6;
  return v8();
}

uint64_t sub_2444C7E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  LOWORD(STACK[0x89E]) = a6;
  v21 = *(v20 + 8 * (v19 - 9848));
  LODWORD(STACK[0x2E0]) = a6;
  return v21(a1, a2, a3, a4, (v19 - 12206), a19);
}

uint64_t sub_2444C7E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LOWORD(STACK[0x8F6]) = a6;
  v8 = *(v7 + 8 * ((v6 - 12179) ^ 0xB65));
  LODWORD(STACK[0x308]) = a6;
  return v8();
}

uint64_t sub_2444C7EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LOWORD(STACK[0x8D6]) = a6;
  v8 = *(v7 + 8 * ((v6 - 12215) ^ 0xB41));
  LODWORD(STACK[0x2F0]) = a6;
  return v8();
}

uint64_t sub_2444C7EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x310] + 5415;
  LODWORD(STACK[0x6EC]) = v8;
  LODWORD(STACK[0x308]) = LOWORD(STACK[0x8F6]);
  return (*(a8 + 8 * v9))(a1, 748495533);
}

uint64_t sub_2444C7F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x980] + (v9 ^ v8) - 0x364195DC58782F59;
  v11 = STACK[0x978] - 0x35CAAECA0DD8782ALL;
  v12 = v10 < 0xAB224E16;
  v13 = v10 > v11;
  if (v12 != v11 < 0xAB224E16)
  {
    v13 = v12;
  }

  return (*(a8 + 8 * ((26 * v13) ^ (STACK[0x310] - 4751))))(a1, 748495533, 1216081110);
}

uint64_t sub_2444C8100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 673 * (STACK[0x310] ^ 0x313D);
  v10 = STACK[0x310] - 742;
  LODWORD(STACK[0x474]) = v8;
  return (*(a8 + 8 * v10))(a1, 748495533, a3, a4, STACK[0x908], v9);
}

uint64_t sub_2444C8138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x310] - 10021;
  LODWORD(STACK[0x424]) = v8;
  return (*(a8 + 8 * v9))(a1, 748495533);
}

uint64_t sub_2444C8168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x930] + (v9 ^ v8) - 0x36DDCF56B3B4CEB9;
  v11 = STACK[0x928] - 0x959E3D6F1C5593DLL;
  v12 = v10 < 0x80C6D9CD;
  v13 = v10 > v11;
  if (v12 != v11 < 0x80C6D9CD)
  {
    v13 = v12;
  }

  return (*(a8 + 8 * ((112 * !v13) ^ (STACK[0x310] - 3476))))(a1, 748495533, 1216081110);
}

uint64_t sub_2444C8310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x310] - 3036;
  LODWORD(STACK[0x6FC]) = v8;
  return (*(a8 + 8 * v9))(a1, 748495533, a3, a4, STACK[0x8A0]);
}

uint64_t sub_2444C83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x920] + (v9 ^ v8) - 0x53377708A3CB2509;
  v11 = STACK[0x918] - 0x6185E48376717408;
  v12 = v10 < 0x2033D077;
  v13 = v10 > v11;
  if (v12 != v11 < (STACK[0x310] - 2478) + 540256493)
  {
    v13 = v12;
  }

  return (*(a8 + 8 * ((246 * !v13) ^ (STACK[0x310] - 1987))))(a1, 748495533);
}

uint64_t sub_2444C8550@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v5 = STACK[0x798];
  STACK[0x5B8] = a2;
  LODWORD(STACK[0x344]) = v4;
  STACK[0x4E0] = v5 + v2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_2444C8674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x310] - 7038;
  LODWORD(STACK[0x504]) = v8;
  return (*(a8 + 8 * v9))(a1, 748495533);
}

uint64_t sub_2444C86A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x950] + (v9 ^ v8) - 0x3937C2FC59DA490ALL;
  v11 = STACK[0x948] - 0x3EE76E8574B62F02;
  v12 = v10 < 0x25AD4CAD;
  v13 = v10 > v11;
  if (v12 != v11 < 0x25AD4CAD)
  {
    v13 = v12;
  }

  return (*(a8 + 8 * ((STACK[0x310] + 520) ^ (2 * !v13))))(a1, 748495533, 1216081110);
}

uint64_t sub_2444C87E8@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v5 = STACK[0x840];
  STACK[0x720] = a2;
  STACK[0x7D8] = v5 + v2;
  return (*(a1 + 8 * (((v4 == ((v3 - 8200) | 0x2008) + 237364881) * ((5563 * ((v3 + 2393) ^ 0x3A93)) ^ 0x4089)) ^ (v3 + 2393))))();
}

uint64_t sub_2444C88AC@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v7 = STACK[0x7D8];
  v8 = 810199703 * ((115761975 - ((v6 - 224) | 0x6E66337) + ((v6 - 224) | 0xF9199CC8)) ^ 0x1F908A45);
  *(v6 - 224) = v2;
  *(v6 - 176) = v2;
  *(v6 - 208) = a2;
  *(v6 - 192) = v7;
  *(v6 - 184) = v5 - v8 - 5271;
  *(v6 - 216) = v8 ^ v3 ^ 0xB7E2A918;
  *(v6 - 212) = v8 + (v4 ^ 0x77E77F9E) - 572807296 + ((v4 << ((v5 - 50) ^ 0x85)) & 0xEFCEFF3C);
  v9 = (*(a1 + 8 * (v5 + 11652)))(v6 - 224);
  return (*(STACK[0x318] + 8 * v5))(v9);
}

uint64_t sub_2444C8994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x940] + (v9 ^ v8) - 0x497720B6F2396C0ELL;
  v11 = STACK[0x938] - 0x7FB74D314D4A07C4;
  v12 = v10 < 0xBC4EF7E0;
  v13 = v10 > v11;
  if (v12 != v11 < 0xBC4EF7E0)
  {
    v13 = v12;
  }

  return (*(a8 + 8 * ((STACK[0x310] + 219) | (4 * !v13))))(a1, 748495533, 1216081110);
}

uint64_t sub_2444C8AF4@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v5 = STACK[0x7B8];
  STACK[0x370] = a2;
  STACK[0x638] = v5 + v2;
  return (*(a1 + 8 * (((v4 == ((v3 + 4797) | 0x80) + 237370680) * (v3 ^ 0x223C)) ^ v3)))();
}

uint64_t sub_2444C8B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x680] - 0x6286B82630F8F22CLL);
  STACK[0x6B0] = 0x750C1ABFB0567FDBLL;
  STACK[0x720] = 0x3937C2FC7F8795C1;
  return (*(a8 + 8 * (((v9 != 0x146375EC570BCC2FLL) * ((19 * (v8 ^ 0x1AEE) + 11709) ^ v8 ^ 0x2BF9)) | v8)))(a1, a2, 1216081105);
}

uint64_t sub_2444C8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = ((((STACK[0x310] + 34594538) | 0xC618E0C) - 4949573) ^ v8) + STACK[0x960] - 0x1DBFBB4C494A8F88;
  v10 = STACK[0x958] - 0x2B3607D09CDB718ALL;
  v11 = v9 < 0xE8610844;
  v12 = v9 > v10;
  if (v10 < 0xE8610844 != v11)
  {
    v12 = v11;
  }

  return (*(a8 + 8 * ((47 * v12) ^ (STACK[0x310] + 7581))))(a1, 748495533);
}

uint64_t sub_2444C8E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x310] - 7700;
  LODWORD(STACK[0x678]) = v8;
  LODWORD(STACK[0x2F0]) = LOWORD(STACK[0x8D6]);
  return (*(a8 + 8 * v9))(a1, 748495533);
}

uint64_t sub_2444C90A4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = a2 - 12493;
  *STACK[0x560] = (v2 + 6511) ^ LODWORD(STACK[0x6FC]) ^ 0xE2626D1;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_2444C9328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, int a4@<W8>)
{
  LODWORD(STACK[0x4BC]) = a4;
  v5 = STACK[0x6A8];
  STACK[0x650] = STACK[0x6A8];
  return (*(a3 + 8 * ((13 * ((((67 * (v4 ^ 0x3179)) ^ 0xCD9 ^ (v5 == 0x6286B82630F8F22CLL)) & 1) == 0)) ^ (v4 + 1754))))(a1, a2, 1216081105);
}

uint64_t sub_2444C9394@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 0x6286B82630F8F224);
  STACK[0x368] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x424]) = v3;
  STACK[0x530] = 0x8293202D749A8F6;
  return (*(a1 + 8 * (((v4 == 0x146375EC570BCC2FLL) * ((((v2 - 17264155) & 0x10753D4) + 7486) ^ 0x2302)) ^ v2)))();
}

uint64_t sub_2444C95A8@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v63 = a63 - 0x5738AE879297DDA9 + STACK[0x7F0];
  v64 = *(v63 + 13);
  v65 = v63 + 13;
  v66 = (v63 + 13) & 0xFFFFFFFFFFFFFFF8;
  v67 = __ROR8__((v63 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = (0x7653FFD844AF1481 - v67) & ((a2 + 7038) - 0x4AA07F3841EDD872) | (v67 + 0x9AC0027BB50EB7ELL) & 0x4AA07F3841EDA739;
  v69 = v68 ^ 0x79151616AAB9A54;
  v68 ^= 0x4AF1505CB02CC1A0uLL;
  v70 = (__ROR8__(v69, 8) + v68) ^ 0x8DBE49DF8B3EC60ALL;
  v71 = __ROR8__(v70, 8);
  v72 = v70 ^ __ROR8__(v68, 61);
  v73 = (((v71 + v72) | 0x32D0D64D4270688ELL) - ((v71 + v72) | 0xCD2F29B2BD8F9771) - 0x32D0D64D4270688FLL) ^ 0x73F88A156FEBEE07;
  v74 = __ROR8__(v73, 8);
  v75 = v73 ^ __ROR8__(v72, 61);
  v76 = (((2 * (v74 + v75)) | 0x562CC8E4F1BBEDCCLL) - (v74 + v75) - 0x2B16647278DDF6E6) ^ 0x3C01B0D9C60E3691;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0xEC888CBFDF3BD3D0;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((v80 + v79) | 0x266D8F709B2661D1) - ((v80 + v79) | 0xD992708F64D99E2ELL) - 0x266D8F709B2661D2) ^ 0x16F52867A39D86F2;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((v83 + v82) | 0xFE7D31885E37F5C1) - ((v83 + v82) | 0x182CE77A1C80A3ELL) + 0x182CE77A1C80A3ELL) ^ 0xAE558AEBB9958041;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  LODWORD(v63) = (((v86 + v85 - ((2 * (v86 + v85)) & 0x8951FAF1706958CALL) + 0x44A8FD78B834AC65) ^ 0x2C108E8044E3F2ADLL) >> (8 * ((a63 + 87 + LOBYTE(STACK[0x7F0]) + 6) & 7))) ^ *(v63 + 6);
  v87 = (((v63 - ((2 * v63) & 0x72) + 248) << 56) - 0x3F00000000000000) ^ 0xB900000000000000;
  v88 = __ROR8__((v65 - 6) & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v89 = __ROR8__(v88 ^ 0xB2CED1A6D4B9C292, 8);
  v88 ^= 0xFFAED09B0E3E9966;
  v90 = (((2 * (v89 + v88)) | 0xD7FAD21042F2E9F6) - (v89 + v88) - 0x6BFD6908217974FBLL) ^ 0xE64320D7AA47B2F1;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((v92 + v91) | 0x3A2808815C23D964) - ((v92 + v91) | 0xC5D7F77EA3DC269BLL) - 0x3A2808815C23D965) ^ 0x7B0054D971B85FEDLL;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0x1717D4ABBED3C077;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((2 * ((v97 + v96) ^ 0xD408842FB46A4E43)) & 0x440D90F0109BC5F4) - ((v97 + v96) ^ 0xD408842FB46A4E43) - 0x2206C878084DE2FBLL) ^ 0xE5793F179CE38096;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x3098A71738BBE723;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0x5028BB63E7A27580;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (((((((v104 + v103) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v65 - 6) & 7))) ^ *(v65 - 6)) - ((2 * ((((v104 + v103) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v65 - 6) & 7))) ^ *(v65 - 6))) & 0x36) + 7714) << 48) - 0x7000000000000) ^ 0x1E1B000000000000;
  v106 = (v87 - ((2 * v87) & 0x3400000000000000) + 0x1AFDFF6CEB6F6797) ^ 0x1AFDFF6CEB6F6797 | (v105 - ((2 * v105) & 0xD3A000000000000) + 0x69DEA13325AFA26) ^ 0x69DEA13325AFA26;
  v107 = __ROR8__((v65 - 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v108 = ((2 * (v107 - 0x7653FFD844AF1482)) | 0x57766318D8555E06) - (v107 - 0x7653FFD844AF1482) - 0x2BBB318C6C2AAF03;
  v109 = __ROR8__(v108 ^ 0x9975E02AB8936D91, 8);
  v108 ^= 0xD415E11762143665;
  v110 = (v109 + v108) ^ 0x8DBE49DF8B3EC60ALL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (v112 + v111 - ((2 * (v112 + v111)) & 0x178196D87B910AFELL) + 0xBC0CB6C3DC8857FLL) ^ 0x4AE89734105303F6;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x1717D4ABBED3C077;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xEC888CBFDF3BD3D0;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x3098A71738BBE723;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((2 * (v121 + v120)) & 0x1A9298E04E50232ELL) - (v121 + v120) + 0x72B6B38FD8D7EE68) ^ 0x229E08EC3F759BE8;
  v123 = __ROR8__(v122, 8);
  v124 = __ROR8__(v120, 61);
  v125 = (((((((v123 + (v122 ^ v124)) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v65 - 5) & 7))) ^ *(v65 - 5)) - ((2 * ((((v123 + (v122 ^ v124)) ^ 0x68B873F8FCD75EC8uLL) >> (8 * ((v65 - 5) & 7))) ^ *(v65 - 5))) & 0x36) + 8426327) << 40) - 0x3C0000000000) ^ 0x80931B0000000000;
  v126 = (v106 - ((2 * v106) & 0xC5C7542C082005ALL) - 0x79D1C55E9FBEFFD3) ^ 0x862E3AA16041002DLL | (v125 - ((2 * v125) & 0x3B8D840000000000) + 0x5DC6C2ECF9DE3A52) ^ 0x5DC6C2ECF9DE3A52;
  v127 = __ROR8__((v65 - 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v128 = (v127 - 0x7653FFD844AF1482) ^ 0xFFAED09B0E3E9966;
  v129 = (__ROR8__((v127 - 0x7653FFD844AF1482) ^ 0xB2CED1A6D4B9C292, 8) + v128) ^ 0x8DBE49DF8B3EC60ALL;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x41285C582D9B8689;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (v133 + v132 - ((2 * (v133 + v132)) & 0x178B388C2E3B00A6) + 0xBC59C46171D8053) ^ 0x1CD248EDA9CE4024;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (((2 * (v136 + v135)) | 0x630BB4B9EEC52676) - (v136 + v135) + 0x4E7A25A3089D6CC5) ^ 0x5D0D56E3285940EBLL;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x3098A71738BBE723;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x5028BB63E7A27580;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (((((2 * (v143 + v142)) & 0xDD2F4BB1125BA10ALL) - (v143 + v142) + 0x11685A2776D22F7ALL) ^ 0x79D029DF8A0571B2) >> (8 * ((v65 - 4) & 7))) ^ *(v65 - 4);
  v145 = (((~(2 * v144) | 0xFFFFFF2D) + v144 - 1358946198) << 32) ^ 0xAF00206900000000;
  v146 = (v126 - ((2 * v126) & 0x311FD92E949EB106) - 0x67701368B5B0A77DLL) ^ 0x988FEC974A4F5883 | (v145 - ((2 * v145) & 0x56DE00000000) - 0x624A94900DDC5735) ^ 0x9DB56B6FF223A8CBLL;
  v147 = __ROR8__((v65 - 3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x7653FFD844AF1482;
  v148 = __ROR8__(v147 ^ 0xB2CED1A6D4B9C292, 8);
  v147 ^= 0xFFAED09B0E3E9966;
  v149 = (v148 + v147) ^ 0x8DBE49DF8B3EC60ALL;
  v150 = v149 ^ __ROR8__(v147, 61);
  v151 = __ROR8__(v149, 8);
  v152 = (((v151 + v150) | 0x2AABDA015CBFF13FLL) - ((v151 + v150) | 0xD55425FEA3400EC0) - 0x2AABDA015CBFF140) ^ 0x6B838659712477B6;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0x1717D4ABBED3C077;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = (__ROR8__(v154, 8) + v155) ^ 0xEC888CBFDF3BD3D0;
  v157 = v156 ^ __ROR8__(v155, 61);
  v158 = (__ROR8__(v156, 8) + v157) ^ 0x3098A71738BBE723;
  v159 = v158 ^ __ROR8__(v157, 61);
  v160 = (__ROR8__(v158, 8) + v159) ^ 0x5028BB63E7A27580;
  v161 = v160 ^ __ROR8__(v159, 61);
  v162 = __ROR8__(v160, 8);
  v163 = (((((((((2 * (v162 + v161)) | 0x5AE51A94776BB02ELL) - (v162 + v161) + 0x528D72B5C44A27E9) ^ 0xC5CAFEB2C76286DFLL) >> (8 * ((v65 - 3) & 7))) ^ *(v65 - 3)) - ((2 * ((((((2 * (v162 + v161)) | 0x5AE51A94776BB02ELL) - (v162 + v161) + 0x528D72B5C44A27E9) ^ 0xC5CAFEB2C76286DFLL) >> (8 * ((v65 - 3) & 7))) ^ *(v65 - 3))) & 0x12ELL)) << 24) - 0x5880801B69000000) ^ 0xA77F7FE497000000;
  v164 = (v146 - ((2 * v146) & 0x2678A5D1C62DCC80) + 0x133C52E8E316E640) ^ 0x133C52E8E316E640 | (v163 - ((2 * v163) & 0x173C036D12000000) + 0xB9E01B689F783ACLL) ^ 0xB9E01B689F783ACLL;
  v165 = v164 - ((2 * v164) & 0xA81A98E1C9DEAB4ELL);
  v166 = __ROR8__((v65 - 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v167 = ((0x7653FFD844AF1481 - v166) & 0xB30B0E04CEBC8992) + v166 - 0x7653FFD844AF1482 - ((v166 - 0x7653FFD844AF1482) & 0xB30B0E04CEBC8992);
  v168 = v167 ^ 0x1C5DFA21A054B00;
  v167 ^= 0x4CA5DE9FC08210F4uLL;
  v169 = (__ROR8__(v168, 8) + v167) ^ 0x8DBE49DF8B3EC60ALL;
  v170 = v169 ^ __ROR8__(v167, 61);
  v171 = __ROR8__(v169, 8);
  v172 = (((2 * (v171 + v170)) & 0x3F33FA72E4ED7622) - (v171 + v170) + 0x606602C68D8944EELL) ^ 0x214E5E9EA012C267;
  v173 = v172 ^ __ROR8__(v170, 61);
  v174 = (__ROR8__(v172, 8) + v173) ^ 0x1717D4ABBED3C077;
  v175 = __ROR8__(v174, 8);
  v176 = v174 ^ __ROR8__(v173, 61);
  v177 = (v175 + v176 - ((2 * (v175 + v176)) & 0x1E478AE932743620) + 0xF23C574993A1B10) ^ 0xE3AB49CB4601C8C0;
  v178 = v177 ^ __ROR8__(v176, 61);
  v179 = (__ROR8__(v177, 8) + v178) ^ 0x3098A71738BBE723;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = __ROR8__(v179, 8);
  v182 = (((2 * (v181 + v180)) & 0x55781032AF4E8526) - (v181 + v180) - 0x2ABC081957A74294) ^ 0x856B4C854FFAC8ECLL;
  v183 = v182 ^ __ROR8__(v180, 61);
  v184 = __ROR8__(v182, 8);
  v185 = (((((((v184 + v183) ^ 0x68B873F8FCD75EC8) >> (8 * ((v65 - 2) & 7))) ^ *(v65 - 2)) - ((2 * ((((v184 + v183) ^ 0x68B873F8FCD75EC8) >> (8 * ((v65 - 2) & 7))) ^ *(v65 - 2))) & 0x15ELL)) << 16) + 0x30A78F5762AF0000) ^ 0x30A78F5762AF0000;
  v186 = (v165 - 0x2BF2B38F1B10AA59) ^ 0xD40D4C70E4EF55A7 | (v185 - ((2 * v185) & 0x3CB82722D9E20000) - 0x61A3EC6E930EB5C6) ^ 0x9E5C13916CF14A3ALL;
  v187 = *--v65;
  v188 = __ROR8__(v65 & 0xFFFFFFFFFFFFFFF8, 8);
  v189 = ((0x7653FFD844AF1481 - v188) & 0x529ADAA51514455CLL) + v188 - 0x7653FFD844AF1482 - ((v188 - 0x7653FFD844AF1482) & 0x529ADAA51514455CLL);
  v190 = v189 ^ 0xE0540B03C1AD87CELL;
  v189 ^= 0xAD340A3E1B2ADC3ALL;
  v191 = __ROR8__(v190, 8);
  v192 = (((v191 + v189) | 0x7DB19439D5F1CCCCLL) - ((v191 + v189) | 0x824E6BC62A0E3333) - 0x7DB19439D5F1CCCDLL) ^ 0xF00FDDE65ECF0AC6;
  v193 = v192 ^ __ROR8__(v189, 61);
  v194 = __ROR8__(v192, 8);
  v195 = (((v194 + v193) & 0x788A5C50FF477F5FLL ^ 0x882404046034B0BLL) + ((v194 + v193) & 0x8775A3AF00B880A0 ^ 0x8175010600388081) - 1) ^ 0xC8DF1D1E6BA04D02;
  v196 = v195 ^ __ROR8__(v193, 61);
  v197 = (__ROR8__(v195, 8) + v196) ^ 0x1717D4ABBED3C077;
  v198 = v197 ^ __ROR8__(v196, 61);
  v199 = __ROR8__(v197, 8);
  v200 = (((2 * (v199 + v198)) | 0x75FF21A51885509ELL) - (v199 + v198) - 0x3AFF90D28C42A84FLL) ^ 0xD6771C6D53797B9FLL;
  v201 = v200 ^ __ROR8__(v198, 61);
  v202 = __ROR8__(v200, 8);
  v203 = __ROR8__((((2 * (v202 + v201)) | 0x5CA5DE9B2A16C314) - (v202 + v201) - 0x2E52EF4D950B618ALL) ^ 0x1ECA485AADB086A9, 8);
  v204 = (((2 * (v202 + v201)) | 0x5CA5DE9B2A16C314) - (v202 + v201) - 0x2E52EF4D950B618ALL) ^ 0x1ECA485AADB086A9 ^ __ROR8__(v201, 61);
  v205 = (((v203 + v204) | 0xACFB152F5E235A2ALL) - ((v203 + v204) | 0x5304EAD0A1DCA5D5) + 0x5304EAD0A1DCA5D5) ^ 0xFCD3AE4CB9812FAALL;
  LODWORD(v65) = (((__ROR8__(v205, 8) + (v205 ^ __ROR8__(v204, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * (v65 & 7u))) ^ v187;
  v206 = (((v65 - ((2 * v65) & 0xD8)) << 8) + 0x656F4C2EF9FB6C00) ^ 0x656F4C2EF9FB6C00;
  v207 = (v186 - ((2 * v186) & 0xAB50CDA986396698) - 0x2A57992B3CE34CB4) ^ 0xD5A866D4C31CB34CLL | (v206 - ((2 * v206) & 0x4D0D95807EF16400) + 0x2686CAC03F78B2CELL) ^ 0x2686CAC03F78B2CELL;
  v208 = __ROR8__(v66, 8);
  v209 = v208 - ((2 * v208 + 0x1358004F76A1D6FCLL) & 0x41AF948D421BCAB4) + 0x2E83CA6E5C5ED0D8;
  v210 = __ROR8__(v209 ^ 0x16191BE075B427C8, 8);
  v209 ^= 0x5B791ADDAF337C3CuLL;
  v211 = (v210 + v209) ^ 0x8DBE49DF8B3EC60ALL;
  v212 = v211 ^ __ROR8__(v209, 61);
  v213 = __ROR8__(v211, 8);
  v214 = (((2 * (v213 + v212)) & 0x55C06E2F00B4CAB4) - (v213 + v212) - 0x2AE03717805A655BLL) ^ 0x943794B0523E1C2CLL;
  v215 = v214 ^ __ROR8__(v212, 61);
  v216 = __ROR8__(v214, 8);
  v217 = (((2 * (v216 + v215)) | 0x9B94C29DE3853946) - (v216 + v215) + 0x32359EB10E3D635DLL) ^ 0xDADDB5E54F115CD4;
  v218 = v217 ^ __ROR8__(v215, 61);
  v219 = (__ROR8__(v217, 8) + v218) ^ 0xEC888CBFDF3BD3D0;
  v220 = v219 ^ __ROR8__(v218, 61);
  v221 = __ROR8__(v219, 8);
  v222 = (((2 * (v221 + v220)) | 0xF8965BD215354BBELL) - (v221 + v220) + 0x3B4D216F5655A21) ^ 0xCCD38AFE322142FCLL;
  v223 = v222 ^ __ROR8__(v220, 61);
  v224 = __ROR8__(v222, 8);
  v225 = (((v224 + v223) | 0xAE369C8CF25F2B72) - ((v224 + v223) | 0x51C963730DA0D48DLL) + 0x51C963730DA0D48DLL) ^ 0xFE1E27EF15FD5EF2;
  v226 = ((__ROR8__(v225, 8) + (v225 ^ __ROR8__(v223, 61))) ^ 0x68B873F8FCD75EC8) >> (8 * ((a63 + 87 + LOBYTE(STACK[0x7F0]) + 13) & 7));
  v227 = (v207 - ((2 * v207) & 0x453D573D1F5CC204) - 0x5D61546170519EFELL) ^ 0xA29EAB9E8FAE6102 | ((v226 ^ v64) - ((2 * (v226 ^ v64)) & 0x1FALL) - 0x655FB5C7BC995903) ^ 0x9AA04A384366A6FDLL;
  STACK[0x7C0] = v227 - 0x362BAD4AF6A55359 - ((2 * v227) & 0x93A8A56A12B5594ELL);
  return (*(a1 + 8 * a2))();
}

uint64_t sub_2444CA740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x3A0] = STACK[0x8C0];
  LODWORD(STACK[0x808]) = STACK[0x8B4];
  LOWORD(STACK[0x3E6]) = STACK[0x8BA];
  LODWORD(STACK[0x398]) = STACK[0x8BC];
  return (*(a8 + 8 * (v8 - 7616)))(a1, a2, 1216124116);
}

uint64_t sub_2444CA858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, unint64_t a4@<X8>)
{
  STACK[0x4F8] = a4;
  LODWORD(STACK[0xA10]) = v6;
  LOWORD(STACK[0xA16]) = v5;
  v8 = STACK[0x398];
  LODWORD(STACK[0xA18]) = STACK[0x398];
  LODWORD(STACK[0xA1C]) = STACK[0x504];
  STACK[0xA20] = STACK[0x7C0];
  STACK[0x450] = STACK[0x468];
  v10 = a4 != v7 && ((((v4 - 1729) | 0x1A00) + 237364881 + ((v4 + 620714082) & 0xDB00BF7D) - 2290) ^ v8) < 0xFFFFFFF6;
  return (*(a3 + 8 * ((15264 * v10) ^ v4)))(a1, a2, 1216081105);
}

uint64_t sub_2444CA8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 ^ 0x46B0)))(32);
  STACK[0x448] = v10 + 0x750C1ABFB0567FDBLL;
  return (*(a8 + 8 * (((v10 == 0) * ((v8 ^ 0x3C56) - 28330 + ((v8 + 1944633066) & 0x8C176DF9))) ^ v8)))();
}

uint64_t sub_2444CA974(uint64_t a1)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v5 = v2 ^ 0xE2617E9u;
  STACK[0xA28] = v5;
  LODWORD(v5) = ((v5 + 10) ^ 0x4B6B1F5C) - 1090520896 + (((v5 + 10) << (v1 ^ 0x58)) & 0x96D63EB8);
  *(a1 + 16) = v5;
  v6 = (*(v3 + 8 * (v1 ^ 0x159C)))((v5 - 174790684));
  *(a1 + 24) = v6;
  return (*(v3 + 8 * (((2 * (v6 == 0)) | (4 * (v6 == 0))) ^ v1)))();
}

uint64_t sub_2444CACEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v8 = v4 + 12141;
  *(a4 - 0x58FA20369C313A5ELL) = STACK[0x55C];
  *(a4 + v5) = v7 + (v6 ^ v7) - (((871 * (v8 ^ 0x3817)) ^ 0x1C4C3ED1) & (2 * (v6 ^ v7) + 2)) + 1;
  return (*(a3 + 8 * v8))(a1, a2, 1216124116);
}

uint64_t sub_2444CADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, unint64_t a4@<X8>)
{
  v7 = STACK[0x768];
  STACK[0x658] = a4;
  LODWORD(STACK[0x804]) = v6;
  return (*(a3 + 8 * (((v7 + v4 == 0) * (((v5 + 1635759653) & 0x9E807FE2 ^ 0xFFFFF4C7) + v5 + 11230)) ^ v5)))(a1, a2, 1216081107);
}

uint64_t sub_2444CAE08(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 + 7779)))((35 * (v8 ^ 0x3A0Au) + 237364913) ^ LODWORD(STACK[0x804]));
  v11 = STACK[0x318];
  STACK[0x988] = v10 + 0x3E0DD92B1DE16FEALL;
  if (v10)
  {
    v12 = 1216124116;
  }

  else
  {
    v12 = a3;
  }

  LODWORD(STACK[0x994]) = v12;
  return (*(v11 + 8 * (((v10 != 0) * (((v8 + 1215583406) | 0x804C4) - 1216123974)) ^ v8)))();
}

uint64_t sub_2444CAF3C@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v5 = STACK[0x6E0];
  STACK[0x540] = a2;
  LODWORD(STACK[0x37C]) = v4;
  STACK[0x750] = v5 + v2;
  return (*(a1 + 8 * (((*(STACK[0x680] - 0x6286B82630F8F1B0) & (LODWORD(STACK[0x6F8]) != (v3 ^ 0x4FE7))) * ((361 * (v3 ^ 0x4FFA)) ^ 0x377B)) ^ v3)))();
}

uint64_t sub_2444CAFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 - 0x6286B82630F8F22CLL);
  STACK[0x7E0] = 0x750C1ABFB0567FDBLL;
  STACK[0x370] = 0x497720B7AE8863F8;
  return (*(a8 + 8 * (((v10 == 0x146375EC570BCC2FLL) * (((v8 ^ 0x4899) + 10820) ^ ((v8 ^ 0x4899) + 10682))) ^ v8 ^ 0x4899)))(a1, a2, 1216081105);
}

uint64_t sub_2444CB284@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v5 = STACK[0x418];
  STACK[0x710] = a2;
  LODWORD(STACK[0x804]) = v4;
  return (*(a1 + 8 * (((((3 * (v3 ^ 0x3DB) - 1087883031) & 0x40D7B17D) - 12589) * (v5 + v2 == 0)) ^ v3)))();
}

uint64_t sub_2444CB2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 4852)))((25 * (v8 ^ 0x4729) + (v8 ^ 0xE25A060u)) ^ LODWORD(STACK[0x804]));
  v10 = STACK[0x318];
  STACK[0x968] = v9 + 0x3E0DD92B1DE16FEALL;
  if (v9)
  {
    v11 = 1216124116;
  }

  else
  {
    v11 = 1216081107;
  }

  LODWORD(STACK[0x974]) = v11;
  return (*(v10 + 8 * (((v9 == 0) | (2 * (v9 == 0))) ^ v8)))();
}

uint64_t sub_2444CB394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  STACK[0x308] = v30;
  v31 = v29 - ((v29 << (((v28 - 47) | 0x32) - 58)) & 0xAD076CC) + 90717030;
  return (*(a8 + 8 * ((226 * (((2 * v31) & 0xBCF6DDCA ^ 0x8D054C8) + (v31 ^ 0xDB135583) + 771620320 == 209284293)) ^ (v28 - 2246))))(a1, v31 ^ 0xDB135583, (2 * v31) & 0xBCF6DDCA ^ 0x8D054C8, a4, ((2 * v31) & 0xBCF6DDCA ^ 0x8D054C8) + (v31 ^ 0xDB135583) + 771620320, a6, 0x89AC0027BB50EB7ELL, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_2444CB458(unint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x308] - a1 < 0x10 || a3 + a2 + ((v8 - 14247) ^ 0x2184838Fu) < ((v8 + 31) ^ 0x4A52u);
  v11 = *(a8 + 8 * ((121 * v10) ^ v8));
  STACK[0x2E0] = a1;
  return v11();
}

uint64_t sub_2444CB59C(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v16 = *(a8 + 8 * (v8 ^ 0x5F51));
  *&STACK[0x2C0] = vdupq_n_s64(a7);
  *&STACK[0x2D0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2A0] = vdupq_n_s64(v10);
  *&STACK[0x2B0] = vdupq_n_s64(0x7F265DEF06E3E4EEuLL);
  *&STACK[0x290] = vdupq_n_s64(v12);
  *&STACK[0x280] = vdupq_n_s64(v15);
  *&STACK[0x2F0] = vdupq_n_s64(v11);
  *&STACK[0x260] = vdupq_n_s64(v14);
  *&STACK[0x270] = vdupq_n_s64(v13);
  *&STACK[0x240] = vdupq_n_s64(0x132D349F19D3D9FEuLL);
  *&STACK[0x250] = vdupq_n_s64(0x3098A71738BBE723uLL);
  return v16(-(v9 & 0xFFFFFFF0), (a3 + a2 + a4 + 3), (a3 + a2 + a4 + 4), (a3 + a2 + a4 + 5), (a3 + a2 + a4 + 6), 17037, 4294967280);
}

uint64_t sub_2444CC568(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v15 = *(a8 + 8 * v8);
  *&STACK[0x2C0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2A0] = vdupq_n_s64(0x7F265DEF06E3E4EEuLL);
  *&STACK[0x2B0] = vdupq_n_s64(a7);
  *&STACK[0x280] = vdupq_n_s64(v12);
  *&STACK[0x290] = vdupq_n_s64(v11);
  LODWORD(STACK[0x230]) = v10 & 0xFFFFFFF8;
  *&STACK[0x260] = vdupq_n_s64(v13);
  *&STACK[0x270] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x250] = vdupq_n_s64(v14);
  *&STACK[0x240] = xmmword_245010D40;
  return v15((a3 + a2 + v8 - v9 + 562314750), (a3 + a2 + a4 - v9 + 1), (a3 + a2 + a4 - v9 + 2), (a3 + a2 + a4 - v9 + 3), (a3 + a2 + a4 - v9 + 4));
}

uint64_t sub_2444CC710@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v32 = (v10 + v9);
  v33.i64[0] = a8 + (a2 + v9);
  v33.i64[1] = a8 + (v13 + v9);
  v34.i64[0] = a8 + (a4 + v9);
  v34.i64[1] = a8 + (a3 + v9);
  v35.i64[0] = a8 + (a1 + v9);
  v35.i64[1] = a8 + (a5 + v9);
  v36.i64[0] = a8 + v32;
  v36.i64[1] = a8 + (a6 + v9);
  v37 = vandq_s8(v36, *&STACK[0x2D0]);
  v38 = vandq_s8(v35, *&STACK[0x2D0]);
  v39 = vandq_s8(v34, *&STACK[0x2D0]);
  v40 = vandq_s8(v33, *&STACK[0x2D0]);
  v41 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v46 = *&STACK[0x2A0];
  v45 = *&STACK[0x2B0];
  v47 = vaddq_s64(v43, *&STACK[0x2B0]);
  v48 = vaddq_s64(v42, *&STACK[0x2B0]);
  v50 = *&STACK[0x280];
  v49 = *&STACK[0x290];
  *&STACK[0x2F0] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x290], v44), *&STACK[0x280]), vorrq_s8(vaddq_s64(v44, *&STACK[0x2B0]), *&STACK[0x2A0]));
  v51 = vaddq_s64(vorrq_s8(vsubq_s64(v49, v43), v50), vorrq_s8(v47, v46));
  v52 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(v49, v41), v50), vorrq_s8(vaddq_s64(v41, v45), v46)));
  v53 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(v49, v42), v50), vorrq_s8(v48, v46)));
  v54 = veorq_s8(v53, *&STACK[0x260]);
  v55 = veorq_s8(v52, *&STACK[0x260]);
  v56 = veorq_s8(v52, *&STACK[0x250]);
  v57 = veorq_s8(v53, *&STACK[0x250]);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56), v17);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57), v17);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = vaddq_s64(v63, v61);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v65, v65), v18), v65), v19), v20);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v64, v64), v18), v64), v19), v20);
  v68 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v69 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = veorq_s8(v66, v68);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v72, v21), vorrq_s8(v72, v22)), v22), v23);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v73, v21), vorrq_s8(v73, v22)), v22), v23);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v77);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v76);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(v79, vandq_s8(vaddq_s64(v79, v79), v24)), v25), v26);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(v78, vandq_s8(vaddq_s64(v78, v78), v24)), v25), v26);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v27);
  v88 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v89 = veorq_s8(v86, v27);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v88);
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = vaddq_s64(v92, v90);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v94, v94), v28), v94), v29), v30);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v93, v93), v28), v93), v29), v30);
  v97 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v98 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v99 = veorq_s8(v95, v97);
  v100 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v102 = vsubq_s64(*&STACK[0x270], v51);
  v103 = vaddq_s64(v101, v99);
  v104 = vaddq_s64(v100, v98);
  v143.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), v31), v103), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), *&STACK[0x2C0])));
  v143.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v31), v104), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), *&STACK[0x2C0])));
  v105 = veorq_s8(v102, *&STACK[0x260]);
  v106 = veorq_s8(v102, *&STACK[0x250]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v17);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v109, v109), v18), v109), v19), v20);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v21), vorrq_s8(v112, v22)), v22), v23);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), v24)), v25), v26);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v27);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), v28), v120), v29), v30);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL)));
  v123 = vsubq_s64(*&STACK[0x270], *&STACK[0x2F0]);
  v143.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v31), v122), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), *&STACK[0x2C0])));
  v124 = veorq_s8(v123, *&STACK[0x260]);
  v125 = veorq_s8(v123, *&STACK[0x250]);
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v17);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), v18), v128), v19), v20);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v21), vorrq_s8(v131, v22)), v22), v23);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(v134, vandq_s8(vaddq_s64(v134, v134), v24)), v25), v26);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v27);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v139, v139), v28), v139), v29), v30);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL)));
  v143.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), v31), v141), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), *&STACK[0x2C0])));
  *(v11 + v32) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(a8 + v32 - 7)), 0x5D5D5D5D5D5D5D5DLL), *&vqtbl4q_s8(v143, *&STACK[0x240])));
  return (*(a7 + 8 * (((v12 == v9) * v14) ^ v8)))();
}

uint64_t sub_2444CCE4C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v22 = (v4 + v7);
  v23 = STACK[0x308] + v22;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v9 - (((v12 - v24) | v14) + ((v24 + a2) | v8));
  v26 = v25 ^ v15;
  v27 = v25 ^ v16;
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x8DBE49DF8B3EC60ALL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((v19 | (2 * (v30 + v29))) - (v30 + v29) + v20) ^ v21;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((v5 - ((v33 + v32) | v5) + ((v33 + v32) | a4)) ^ 0x9085EC444E5742A3, 8);
  v35 = (v5 - ((v33 + v32) | v5) + ((v33 + v32) | a4)) ^ 0x9085EC444E5742A3 ^ __ROR8__(v32, 61);
  v36 = (v34 + v35 - (v17 & (2 * (v34 + v35))) + v13) ^ v18;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x3098A71738BBE723;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) | 0x132D349F19D3D9FELL) - (v40 + v39) + 0x766965B073161301) ^ 0xD9BE212C6B4B997FLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  *(STACK[0x2E0] + v22) = *v23 ^ v10 ^ (((((2 * (v43 + v42)) | 0x378D21D8533D4CDCLL) - (v43 + v42) + a1) ^ 0x737EE314D549F8A6) >> (8 * (v23 & 7u)));
  return (*(a3 + 8 * (((v4 == 209284294) * v11) ^ v6)))();
}

uint64_t sub_2444CCFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x310] + 5530;
  STACK[0x428] = STACK[0x968];
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444CD150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, unint64_t a4@<X8>)
{
  STACK[0x540] = a4;
  LODWORD(STACK[0x37C]) = v5;
  return (*(a3 + 8 * v4))(a1, a2, 1216081111);
}

uint64_t sub_2444CD200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, unint64_t a4@<X8>)
{
  STACK[0x5B8] = a4;
  LODWORD(STACK[0x344]) = v5;
  return (*(a3 + 8 * ((((v4 - 1397344463) & 0x56E433BF) - 60452725) ^ v4 ^ (2184 * (v4 == 875956606)))))(a1, a2, 1216081111);
}

uint64_t sub_2444CD3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(v9 - 0x6286B82630F8F1CBLL) == ((v8 + 52) ^ 0x16))
  {
    a3 = 1216081108;
  }

  else
  {
    a3 = a3;
  }

  return (*(a8 + 8 * v8))(a1, a2, a3);
}

uint64_t sub_2444CD43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = STACK[0x310] - 10339;
  STACK[0x428] = STACK[0x988];
  return (*(a8 + 8 * v8))(a1, a2, LODWORD(STACK[0x994]));
}

uint64_t sub_2444CD52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x6A8];
  STACK[0x688] = STACK[0x6A8];
  return (*(a8 + 8 * (((v9 == 0x6286B82630F8F22CLL) * (((v8 - 1926) | 0x1001) ^ 0x112E)) ^ v8)))(a1, a2, 1216081105);
}

uint64_t sub_2444CD57C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 0x6286B82630F8F224);
  STACK[0x738] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x474]) = v3;
  STACK[0x338] = 0x19671AC6563FF893;
  return (*(a1 + 8 * (((v4 != 0x146375EC570BCC2FLL) * ((((v2 - 2030) | 0x301) + 18951) ^ 0x4D83)) ^ (v2 + 19855))))();
}

uint64_t sub_2444CD64C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v7 = *(v5 - 0x6286B82630F8F1B4);
  v8 = 1197783899 * *(v5 - 0x6286B82630F8F1C8) - 2138716457;
  v9 = 1649972239 * ((v6 - 1033528668 - 2 * ((v6 - 224) & 0xC2659B84)) ^ 0x19DDB7FC);
  *(v6 - 176) = v5 + 0x154269182B6B91FALL;
  *(v6 - 192) = v2;
  *(v6 - 200) = v8 ^ v9;
  *(v6 - 196) = v9 ^ v3 ^ 0x5351E767;
  *(v6 - 184) = ((v4 - 9522) ^ v7 ^ 0xA128F0) - v9 + ((2 * v7) & 0xFFF7BFFE ^ 0xFEB5A116) - 1824774238;
  *(v6 - 180) = v4 - v9 + 322427643;
  *(v6 - 216) = v2;
  *(v6 - 208) = a2;
  *(v6 - 224) = 1270344271 - v9;
  v10 = (*(a1 + 8 * (v4 + 11641)))(v6 - 224);
  return (*(STACK[0x318] + 8 * v4))(v10);
}

uint64_t sub_2444CD950(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  a1[1] = 0x750C1ABFB0567FDBLL;
  *(v8 - 0x6286B82630F8F224) = a1 + 0x146375EC570BCC2FLL;
  LODWORD(STACK[0x71C]) = 1216124116;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_2444CDAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v6 = *(a4 - 0x6286B82630F8F22CLL);
  STACK[0x620] = 0x750C1ABFB0567FDBLL;
  STACK[0x540] = 0x36DDCF57347BA890;
  return (*(a3 + 8 * (((v6 == v5) * (((v4 - 12310) | 0x280) + 53)) ^ (v4 - 3937))))(a1, a2, 1216081105);
}

uint64_t sub_2444CDC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x620] - 0x750C1ABFB0567FC3);
  STACK[0x6E0] = v9;
  return (*(a8 + 8 * ((((((v8 - 1916878567) & 0x72413538) - 3414) ^ ((v8 - 14566) | 0x2000)) * (v9 == 0)) ^ v8)))(a1, a2, 1216081105);
}

uint64_t sub_2444CDCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, int a4@<W8>)
{
  v5 = (v4 | ((v4 < ((a4 + 642090484) & 0xD9BA597F ^ 0xA6B1968)) << 32)) + 0x959E3D768211AEELL;
  STACK[0x928] = v5;
  v6 = STACK[0x540];
  STACK[0x930] = STACK[0x540];
  return (*(a3 + 8 * ((3300 * (v5 - v6 + 0x2D83EB7FC1EF757CLL < 0xFFFFFFFFFFFFFFF6)) | a4)))(a1, a2, 1216081110);
}

uint64_t sub_2444CDDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x7E0] - 0x750C1ABFB0567FC3);
  STACK[0x7B8] = v9;
  return (*(a8 + 8 * (((v9 == 0) * (((272 * (v8 ^ 0x3A48)) ^ 0xFFFFEDC1) + 350 * (v8 ^ 0x3A4C))) ^ v8)))(a1, a2, 1216081105);
}

uint64_t sub_2444CDE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, int a4@<W8>)
{
  v5 = (v4 | ((v4 < 0xA6B181C) << 32)) + 0x7FB74D31FF2DE788;
  STACK[0x938] = v5;
  v6 = STACK[0x370];
  STACK[0x940] = STACK[0x370];
  return (*(a3 + 8 * ((3658 * (v5 - v6 - 0x36402C7A5B109BB6 < (((a4 - 8540) | 0x42u) ^ 0xFFFFFFFFFFFFCE58) + ((a4 - 4320) | 0x2018u))) ^ a4)))(a1, a2, 1216081110);
}

uint64_t sub_2444CDF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, int a4@<W8>)
{
  v4 = *(STACK[0x6B0] - 0x750C1ABFB0567FC3);
  STACK[0x840] = v4;
  return (*(a3 + 8 * ((22 * ((((3 * (a4 ^ 0x25C8) - 11704) ^ (v4 == 0)) & 1) == 0)) ^ a4)))(a1, a2, 1216081105);
}

uint64_t sub_2444CDFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9 | 0x404;
  v11 = ((v9 | 0x404) ^ 0x36BC) - 12198;
  v12 = (v8 | ((v8 < 0xA6B181C) << 32)) + 0x3EE76E858FF86393;
  STACK[0x948] = v12;
  v13 = STACK[0x720];
  STACK[0x950] = STACK[0x720];
  return (*(a8 + 8 * (((v12 - v13 - 0x5AFAB891ADBE5F8 < 0xFFFFFFFFFFFFFFF6) * (v11 ^ 0x215D)) ^ v10)))(a1, a2, 1216081110);
}

uint64_t sub_2444CE154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x6A8] = v9;
  STACK[0x3C0] += (v8 + 5724) ^ 0xFFFFFFFFFFFFB874;
  return (*(a8 + 8 * (v8 - 5599)))();
}

uint64_t sub_2444CE24C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  STACK[0x6C0] = 0x750C1ABFB0567FDBLL;
  STACK[0x710] = 0x1DBFBB4D31AB97D6;
  return (*(a1 + 8 * ((((v2 ^ 0x3ADF) + v2 - 2255 - 13361) * (a2 == v3)) ^ v2)))();
}

uint64_t sub_2444CE308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x610] = STACK[0x680];
  STACK[0x830] = &STACK[0x610];
  LODWORD(STACK[0x74C]) = -794798131;
  return (*(a8 + 8 * ((v8 - 1785113453 + v8 - 1785095944) ^ (13076 * (v8 > 0x7634BB46)))))();
}

uint64_t sub_2444CE36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x680] = 0x6286B82630F8F22CLL;
  v9 = STACK[0x71C];
  STACK[0x6A8] = 0x6286B82630F8F22CLL;
  STACK[0x3C0] -= 32;
  return (*(a8 + 8 * ((((9162 * (v8 ^ 0x1280) + 603648891) & 0xDC04D5F3 ^ 0x18D8) * (v9 == 1216124116)) ^ v8)))();
}

uint64_t sub_2444CE430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x6C0] - 0x750C1ABFB0567FC3);
  STACK[0x418] = v9;
  return (*(a8 + 8 * (((v9 != 0) * (((v8 + 1846178169) & 0x91F57B7C ^ 0xFFFFC6F5) + (v8 ^ 0x4C2C))) ^ v8)))();
}

uint64_t sub_2444CE4A8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < ((a2 + 10442) ^ 0xA6B2924u)) << 32)) + 0x2B3607D17AD161B2;
  STACK[0x958] = v3;
  v4 = STACK[0x710];
  STACK[0x960] = STACK[0x710];
  return (*(a1 + 8 * ((15781 * (v3 - v4 + 63 * (a2 ^ 0x868u) - 0xD764C845390E37CLL < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_2444CE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x428] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x804]) = v9;
  return (*(a8 + 8 * (v8 - 9416)))();
}

uint64_t sub_2444CE608@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  STACK[0x5F0] = 0x750C1ABFB0567FDBLL;
  STACK[0x658] = 0x364195DD039A7D79;
  return (*(a1 + 8 * ((((((v2 - 639770360) & 0x26223DBF) - 11666) ^ (v2 + 13042) ^ 0x4627) * (a2 != 0x146375EC570BCC2FLL)) ^ (v2 + 13042))))();
}

uint64_t sub_2444CE71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x5F0] - 0x750C1ABFB0567FC3);
  STACK[0x768] = v9;
  return (*(a8 + 8 * ((1992 * (((v9 == 0) ^ (v8 + 69)) & 1)) ^ v8)))(a1, a2, 1216081105);
}

uint64_t sub_2444CE788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v5 = v4 | 0x1C80;
  v6 = (a4 | ((a4 < 0xA6B181C) << 32)) + ((v5 - 7444) ^ 0x35CAAECAAE8FAFBBLL);
  STACK[0x978] = v6;
  v7 = STACK[0x658];
  STACK[0x980] = STACK[0x658];
  return (*(a3 + 8 * ((12216 * (v6 - v7 + 0x76E7124A9FB72FLL < ((v5 + 4741) ^ 0xFFFFFFFFFFFFCECELL))) ^ v5)))(a1, a2, 1216081110);
}

uint64_t sub_2444CE870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x428] = 0x3E0DD92B1DE16FEALL;
  LODWORD(STACK[0x804]) = v9;
  return (*(a8 + 8 * (v8 - 11235)))(a1, a2, a3, a4, a5, (v8 - 8246) | 1u);
}

uint64_t sub_2444CE904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x738] - 0x750C1ABFB0567FC3);
  STACK[0x440] = v9;
  return (*(a8 + 8 * (((v9 != 0) * (((v8 - 908205875) ^ 0xC9DDF5AE) + ((v8 - 908205875) & 0x36225FAF) - 26012)) ^ v8)))();
}

uint64_t sub_2444CE980@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0xA6B181C) << 32)) + 0x3E4BC2E0D5AC09FBLL;
  STACK[0x998] = v3;
  v4 = STACK[0x338];
  STACK[0x9A0] = STACK[0x338];
  return (*(a1 + 8 * (((v3 - v4 - 0x24E4A81A89D7298ELL < 0xFFFFFFFFFFFFFFF6) * (1046 * (a2 ^ 0x184F) + 4660)) ^ a2)))();
}

uint64_t sub_2444CEA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(STACK[0x688] - 0x6286B82630F8F22CLL);
  STACK[0x730] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x6EC]) = v9;
  STACK[0x868] = 0x695AC702CCB0903FLL;
  return (*(a8 + 8 * (((((v8 + 97) ^ (v10 == 0x146375EC570BCC2FLL)) & 1) * (v8 ^ 0x4DAC)) ^ v8)))(a1, a2, 1216081105);
}

uint64_t sub_2444CEB18@<X0>(int a1@<W8>)
{
  v2 = *(v1 + 8 * a1);
  STACK[0x2D0] = STACK[0x440];
  STACK[0x2B0] = STACK[0x6A0];
  STACK[0x2A0] = STACK[0x848];
  STACK[0x290] = STACK[0x740];
  STACK[0x240] = STACK[0x768];
  STACK[0x230] = STACK[0x418];
  STACK[0x220] = STACK[0x840];
  STACK[0x210] = STACK[0x7B8];
  STACK[0x280] = STACK[0x7F0];
  STACK[0x200] = STACK[0x6E0];
  STACK[0x260] = STACK[0x708];
  LODWORD(STACK[0x270]) = LOWORD(STACK[0x906]);
  LODWORD(STACK[0x308]) = LOWORD(STACK[0x8F6]);
  LODWORD(STACK[0x2C0]) = LOWORD(STACK[0x8E6]);
  LODWORD(STACK[0x2F0]) = LOWORD(STACK[0x8D6]);
  LODWORD(STACK[0x250]) = LOWORD(STACK[0x8BA]);
  LODWORD(STACK[0x2E0]) = LOWORD(STACK[0x89E]);
  return v2(0x4767FC0E15A24441);
}

uint64_t sub_2444CF6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x730] - 0x750C1ABFB0567FC3);
  STACK[0x6A0] = v9;
  return (*(a8 + 8 * (((v9 == 0) * ((13 * (v8 ^ 0x4D6B)) ^ ((v8 - 11198) | 0x80) ^ 0x31EC)) ^ v8)))(a1, a2, 1216081105);
}

uint64_t sub_2444CF740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, int a4@<W8>)
{
  v5 = (v4 | ((v4 < 0xA6B181C) << 32)) + (a4 ^ 0x2145 ^ (a4 - 4067) ^ 0x7138FE41F0326493);
  STACK[0x9A8] = v5;
  v6 = STACK[0x868];
  STACK[0x9B0] = STACK[0x868];
  return (*(a3 + 8 * ((2154 * (v5 - v6 - 0x7DE373F2DECFC1ALL < 0xFFFFFFFFFFFFFFF6)) ^ a4)))(a1, a2, 1216081110);
}

uint64_t sub_2444CF868@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v2 = *(STACK[0x368] - 0x750C1ABFB0567FC3);
  STACK[0x848] = v2;
  return (*(a1 + 8 * (((v2 == 0) * ((2 * a2) ^ 0x4C88)) | a2)))();
}

uint64_t sub_2444CF8C8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 ^ 0xFFFFD9B4;
  v4 = (v2 | ((v2 < 0xA6B181C) << 32)) + 0x2F8206C2D9410235;
  STACK[0x9B8] = v4;
  v5 = STACK[0x530];
  STACK[0x9C0] = STACK[0x530];
  return (*(a1 + 8 * (v3 ^ 0xFFFFD9B8 ^ (4779 * ((((v3 + 9) << 32) & ~(v4 - v5 + ((v3 + 372) ^ 0xD8A72B3FF39D8FF1)) | ((v4 - v5 + ((v3 + 372) ^ 0xD8A72B3FF39D8FF1)) ^ ~((v3 + 9) << 32)) & (v4 - v5 + ((v3 + 372) ^ 0xD8A72B3FF39D8FF1) - (v3 | ((v3 + 9) << 32)))) >> 63)))))();
}

uint64_t sub_2444CF9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(STACK[0x650] - 0x6286B82630F8F22CLL);
  STACK[0x5A8] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x678]) = v8;
  STACK[0x480] = 0x1A869ED51E0EF460;
  return (*(a8 + 8 * (((v10 == 0x146375EC570BCC2FLL) * (((v9 - 1639058767) ^ 0x61B1EF32) + ((v9 - 1639058767) & 0x61B1EFFF))) ^ v9)))(a1, a2, 1216081105);
}

uint64_t sub_2444CFAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, int a4@<W8>)
{
  v4 = *(STACK[0x5A8] - 0x750C1ABFB0567FC3);
  STACK[0x740] = v4;
  return (*(a3 + 8 * (((v4 != 0) * ((a4 + 1050512228) & 0xC16255BF ^ 0x1122)) ^ a4)))(a1, a2, 1216081105);
}

uint64_t sub_2444CFB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, int a4@<W8>)
{
  v5 = a4 - 10042;
  v6 = v4 + ((v5 - 2177) | 0x180u) + ((v4 < ((v5 - 2177) ^ 0x1127u) + 174786329) << 32) + 0x703858511BA2F93FLL;
  STACK[0x9C8] = v6;
  v7 = STACK[0x480];
  STACK[0x9D0] = STACK[0x480];
  return (*(a3 + 8 * ((17547 * (v6 - v7 - 0x55B1B97C07FF1EA9 < 0xFFFFFFFFFFFFFFF6)) ^ v5)))(a1, a2, 1216081110);
}

uint64_t sub_2444CFC2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x580]) = a3;
  STACK[0x830] = &STACK[0x6A8];
  LODWORD(STACK[0x74C]) = 1485970656;
  return (*(a8 + 8 * a6))();
}

uint64_t sub_2444CFD60@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  STACK[0x560] = v2;
  STACK[0x5D0] = 0x750C1ABFB0567FDBLL;
  LODWORD(STACK[0x6FC]) = v4;
  STACK[0x400] = 0x225E4456DCDE930BLL;
  return (*(a1 + 8 * ((43 * ((((((v3 + 1930353649) & 0x8CF13D7D) - 11696) ^ (a2 == v5)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_2444CFE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  LODWORD(STACK[0xA44]) = v4;
  STACK[0xA48] = v6;
  return (*(a3 + 8 * (((a4 == v7) * (((v5 + 1559157265) & 0xA310FFCC) - 8660)) ^ v5)))(a1, a2, 1216081105);
}

uint64_t sub_2444CFEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v9;
  STACK[0x6F0] = *v9;
  return (*(a8 + 8 * ((v10 == 0x750C1ABFB0567FDBLL) ^ v8)))(a1, a2, 1216081113);
}

uint64_t sub_2444D0028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  *(v7 - 0x750C1ABFB0567FDBLL) = v5;
  *(v5 - 0x750C1ABFB0567FD3) = *(a4 + v4);
  *(a4 + v4) = v5;
  return (*(a3 + 8 * (v6 | 0xC06)))(a1, a2, 1216124116);
}

uint64_t sub_2444D01F0@<X0>(void *a1@<X8>)
{
  *(v2 - 0x750C1ABFB0567FDBLL) = v1;
  *(v1 - 0x750C1ABFB0567FD3) = *a1;
  return (*(v4 + 8 * (v3 & 0xE3A0FDB3)))();
}

uint64_t sub_2444D0290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x5D0] - 0x750C1ABFB0567FC3);
  STACK[0x708] = v9;
  return (*(a8 + 8 * (((v9 == 0) * (v8 - 24407 + ((v8 - 14313) | 0x740))) ^ v8)))();
}

uint64_t sub_2444D0300@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (v2 | ((v2 < 0xA6B181C) << 32)) + (a2 - 5685) + 0x5C1C31095AF4ABE1;
  STACK[0xA30] = v3;
  v4 = STACK[0x400];
  STACK[0xA38] = STACK[0x400];
  return (*(a1 + 8 * ((20695 * (v3 - v4 - 0x39BDECB288813290 < (a2 + 6511) - 12610)) ^ a2)))();
}

uint64_t sub_2444D04AC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x4EC]) = a3;
  STACK[0x818] = &STACK[0x7F8];
  LODWORD(STACK[0x334]) = a2 - 4;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444D04DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x790];
  v10 = *(STACK[0x790] - 0x750C1ABFB0567FD3);
  v11 = STACK[0x448];
  *(v11 - 0x750C1ABFB0567FD3) = v10;
  *(v11 - 0x750C1ABFB0567FDBLL) = *(v9 - 0x750C1ABFB0567FDBLL);
  return (*(a8 + 8 * (((v10 != 0x750C1ABFB0567FDBLL) * (((v8 + 4296) | 0x23) - 8794)) ^ (v8 - 366))))();
}

uint64_t sub_2444D073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8 | 0xC;
  v10 = (*(a8 + 8 * ((v8 | 0xC) ^ 0x793C)))();
  v11 = STACK[0x318];
  *(STACK[0x790] - 0x750C1ABFB0567FC3) = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_2444D07D8@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v2 + 8 * (v1 + 16986)))(a1 - 0x750C1ABFB0567FDBLL);
  STACK[0x790] = 0x750C1ABFB0567FDBLL;
  return (*(v2 + 8 * (((LODWORD(STACK[0x5F8]) == 1216124116) * (((v1 - 4961) | 0x3010) + 2630)) ^ v1)))(v3);
}

uint64_t sub_2444D08CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 + 13976)))();
  v11 = STACK[0x318];
  *(v8 - 0x750C1ABFB0567FC3) = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_2444D0974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 - 0x750C1ABFB0567FDBLL;
  v12 = (*(a8 + 8 * (v9 + 21035)))(v10);
  return (*(STACK[0x318] + 8 * v9))(v12, 748495533, a3);
}

uint64_t sub_2444D09BC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x354]) = a3;
  STACK[0x508] = STACK[0x828];
  STACK[0x818] = &STACK[0x508];
  LODWORD(STACK[0x334]) = a2 - 2;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444D0A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x850];
  v10 = *(STACK[0x850] - 0x750C1ABFB0567FD3);
  v11 = STACK[0x388];
  *(v11 - 0x750C1ABFB0567FD3) = v10;
  *(v11 - 0x750C1ABFB0567FDBLL) = *(v9 - 0x750C1ABFB0567FDBLL);
  return (*(a8 + 8 * (((v10 == 0x750C1ABFB0567FDBLL) * ((((v8 - 18701) | 0x52D3) ^ 0xFFFFB389) + v8 - 10744)) ^ v8)))();
}

uint64_t sub_2444D0C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0x54C7)))();
  v10 = STACK[0x318];
  *(STACK[0x850] - 0x750C1ABFB0567FC3) = 0;
  return (*(v10 + 8 * v8))(v9);
}

uint64_t sub_2444D0D34@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8 * (v2 + 19537)))(a2 - 0x750C1ABFB0567FDBLL);
  v4 = STACK[0x318];
  STACK[0x850] = 0x750C1ABFB0567FDBLL;
  return (*(v4 + 8 * v2))(v3);
}

uint64_t sub_2444D0E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  *(a4 + v4) = v5;
  *(a4 - 0x146375EC570BCC2FLL) = v5;
  return (*(a3 + 8 * v6))(a1, a2, 1216124116);
}

uint64_t sub_2444D0EEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v11 = *v9;
  STACK[0x788] = *v9;
  return (*(a8 + 8 * (((v11 == v10) * (((v8 + a4) ^ a5) + ((v8 + a4) | a6) + a7)) ^ v8)))();
}

uint64_t sub_2444D1064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 ^ 0x4F77)))();
  v11 = STACK[0x318];
  *(v8 - 0x750C1ABFB0567FC3) = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_2444D10C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 8 * (v10 + 17055)))(v8 - 0x146375EC570BCC2FLL);
  v11 = STACK[0x318];
  *v9 = 0x146375EC570BCC2FLL;
  return (*(v11 + 8 * v10))(1, 748495533, 4294947575, 4294951797, 3168, 1548, 4294954157);
}

uint64_t sub_2444D1270(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x818] = &STACK[0x588];
  LODWORD(STACK[0x334]) = a2 - 5;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444D134C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x818] = STACK[0x778] - 0x6286B82630F8F22CLL;
  LODWORD(STACK[0x334]) = a2 - 1;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444D1544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (v8 - 855157570) & 0x32F8BF3A;
  v10 = (*(a8 + 8 * (v9 + 10376)))();
  return (*(STACK[0x318] + 8 * (v9 - 6078)))(v10);
}

uint64_t sub_2444D1770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, unint64_t a4@<X8>)
{
  STACK[0x4D0] = a4;
  LODWORD(STACK[0x9D8]) = v8;
  LOWORD(STACK[0x9DE]) = v4;
  LODWORD(STACK[0x9E0]) = v10;
  LODWORD(STACK[0x9E4]) = v5;
  STACK[0x9E8] = v6;
  STACK[0x9F0] = v9;
  v13 = a4 != v11 && (v10 ^ (v7 + 237370543)) < 0xFFFFFFF6;
  return (*(a3 + 8 * ((v13 * (v7 ^ 0x4D32)) ^ v7)))(a1, a2, 1216081105);
}

uint64_t sub_2444D17CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8 + 15942;
  v10 = (v8 + 4393) ^ 0x1D5A;
  v11 = (v8 + 4393) | 0x1208;
  v12 = (*(a8 + 8 * ((v8 + 15942) ^ 0xBA)))(32);
  v13 = STACK[0x318];
  STACK[0x388] = v12 + 0x750C1ABFB0567FDBLL;
  return (*(v13 + 8 * (((v12 == 0) * (v10 + v11 - 28343)) ^ v9)))();
}

uint64_t sub_2444D1854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x750C1ABFB0567FDBLL;
  *(a1 + 8) = 0x750C1ABFB0567FDBLL;
  v11 = v8 ^ 0xE2617E9u;
  STACK[0x9F8] = v11;
  LODWORD(v11) = ((v11 - 12590 + (v9 ^ 0xF52)) ^ 0xCEFBBCDD) + 997153599 + ((2 * (v11 - 12590 + (v9 ^ 0xF52))) & 0x9DF779BA);
  *(a1 + 16) = v11;
  v12 = (*(a8 + 8 * (v9 ^ 0x67AF)))(((v9 + 417613885) & 0xE71B7BF8) - 174790684 + v11 - 672);
  v13 = STACK[0x318];
  *(a1 + 24) = v12;
  return (*(v13 + 8 * ((31 * (v12 == 0)) ^ v9)))();
}

uint64_t sub_2444D19C4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X7>, int a3@<W8>)
{
  v4 = a3 + 1;
  v6 = (*(a2 + 8 * (a3 + 2508)))();
  v7 = STACK[0x318];
  *(v3 - 0x750C1ABFB0567FC3) = 0;
  return (*(v7 + 8 * v4))(v6, 748495533, a1);
}

uint64_t sub_2444D1A58@<X0>(uint64_t a1@<X2>, uint64_t a2@<X7>, int a3@<W8>)
{
  v4 = a3 - 6042;
  v5 = v3 - 0x750C1ABFB0567FDBLL;
  v7 = (*(a2 + 8 * ((a3 - 6042) ^ 0x405E)))(v5);
  return (*(STACK[0x318] + 8 * v4))(v7, 748495533, a1);
}

uint64_t sub_2444D1CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v10 = (((v8 - 0x6D1444320B6CD335) << ((a7 ^ 0x52u) + 9)) & 0x777FB71BF7B6AE3ELL) + ((v8 - 0x6D1444320B6CD335) ^ 0xFBBFDB8DFBDB571FLL) + 0x44024720424A8E1;
  STACK[0x2F0] = v10;
  STACK[0x2E0] = v10 + 1;
  STACK[0x2D0] = ((v8 - 0x6D1444320B6CD333) ^ 0x5B7F5AF77AEFCFAFLL) - 0x432C008030040AA2 + ((2 * (v8 - 0x6D1444320B6CD333)) & 0x36FEB5EEF5DF9F5ELL);
  LODWORD(STACK[0x308]) = STACK[0x884];
  v11 = *(a8 + 8 * (a7 + 17428));
  LODWORD(STACK[0x2B0]) = 1307 * (v9 ^ 0x313D);
  STACK[0x2C0] = (v9 - 12599);
  return v11(a1, 463407057, 121000587, 37327398, 3103784960);
}

uint64_t sub_2444D1F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  v13 = v8 + (v10 ^ a7) - 0x6D144431CBA47B1FLL;
  v14 = v13 < 0x3FC8581A;
  v15 = v13 > v9;
  if (v9 < 0x3FC8581A != v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return (*(a8 + 8 * ((v12 * v16) ^ v11)))();
}

uint64_t sub_2444D210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x310] + 704;
  v10 = *(a8 + 8 * ((STACK[0x310] - 11874) ^ 0x4468));
  LODWORD(STACK[0x308]) = v8;
  return v10(a1, a2, a3, a4, a5, v9);
}

uint64_t sub_2444D21E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x308] = STACK[0x388] - 0x750C1ABFB0567FC3;
  LODWORD(STACK[0x2A0]) = SLOWORD(STACK[0x9DE]) ^ 0xFFFFDD8C;
  LODWORD(STACK[0x2D0]) = STACK[0x9E0];
  LODWORD(STACK[0x2B0]) = 237377517;
  LODWORD(STACK[0x210]) = STACK[0x9E4];
  STACK[0x2F0] = STACK[0x448] - 0x750C1ABFB0567FC3;
  LODWORD(STACK[0x290]) = SLOWORD(STACK[0xA16]) ^ 0x260E;
  STACK[0x2E0] = STACK[0x6C8] - 0x750C1ABFB0567FC3;
  v9 = *(a8 + 8 * (v8 + 588));
  LODWORD(STACK[0x2C0]) = STACK[0xA18];
  LODWORD(STACK[0x200]) = STACK[0xA1C];
  v10 = STACK[0x310];
  LODWORD(STACK[0x280]) = STACK[0x310] - 5540;
  LODWORD(STACK[0x270]) = STACK[0x69C];
  LODWORD(STACK[0x260]) = v10 + 4880;
  LODWORD(STACK[0x250]) = v10 - 5383;
  v11 = (v10 + 695737971) & 0xD687FA7F;
  LODWORD(STACK[0x220]) = v11;
  LODWORD(STACK[0x240]) = v11 - 28950;
  LODWORD(STACK[0x230]) = v10 - 4977;
  return v9(0x33D28E749AC589F9);
}

uint64_t sub_2444D2408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = STACK[0x310] - 6813;
  LODWORD(STACK[0x884]) = STACK[0x308];
  LOWORD(STACK[0x88A]) = v8;
  LODWORD(STACK[0x88C]) = v11;
  STACK[0x890] = v9;
  LODWORD(STACK[0x3FC]) = v10;
  return (*(a8 + 8 * v12))(a1, 748495533);
}

uint64_t sub_2444D24C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x884]) = STACK[0x308];
  LOWORD(STACK[0x88A]) = v8;
  LODWORD(STACK[0x88C]) = v11;
  STACK[0x890] = v9;
  return (*(a8 + 8 * ((((((v10 + 1569348028) ^ 0x5D8A486D) + 1010) ^ (v10 + 1569348028) & 0xA275BBDD) * (v11 == 237377505)) ^ v10)))(a1, 748495533, 1216081110);
}

uint64_t sub_2444D2558@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v4 = (v3 - 0x6D1444320B6CD335 + a2);
  v5 = (v4[6] << 56) | (*(a2 + ((5 * (v2 ^ 0x1F16u)) ^ 0x92EBBBCDF4930313) + v3) << 48) | (v4[8] << 40) | (v4[9] << 32) | (v4[10] << 24) | (v4[11] << 16) | (v4[12] << 8) | v4[13];
  STACK[0x578] = v5 + 0x44046241CC2D2A4ELL - ((2 * v5) & 0x8808C483985A549CLL);
  return (*(a1 + 8 * v2))();
}

uint64_t sub_2444D2654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  LODWORD(STACK[0x884]) = STACK[0x308];
  LOWORD(STACK[0x88A]) = v3;
  LODWORD(STACK[0x88C]) = v7;
  STACK[0x890] = v4;
  STACK[0x478] = a3 + v6 + (v5 ^ 0x92EBBBCDF4933A4ALL);
  return (*(a2 + 8 * v5))(a1, 748495533);
}

uint64_t sub_2444D26BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x760] = v9;
  v12 = LODWORD(STACK[0x884]) == ((v10 - 11202) ^ 0xE261416) && v8 == 7865;
  return (*(a8 + 8 * ((2 * v12) | (4 * v12) | v10)))();
}

uint64_t sub_2444D273C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x884]) = STACK[0x308];
  LOWORD(STACK[0x88A]) = v8;
  LODWORD(STACK[0x88C]) = v10;
  STACK[0x890] = v9;
  return (*(a8 + 8 * v11))(a1, 748495533, 1216081110);
}

uint64_t sub_2444D278C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x7A4]) = a3;
  STACK[0x5C8] = STACK[0x4B0];
  STACK[0x818] = &STACK[0x5C8];
  LODWORD(STACK[0x334]) = a2 + 2;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_2444D285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 74 * (v8 ^ 0x2E26);
  STACK[0x4A8] = *(a8 + 8 * v9);
  return (*(a8 + 8 * ((((v9 + 5660) | 0x111) - 5535) ^ v9 ^ (2261 * (v9 != 2040154670)))))();
}

uint64_t sub_2444D2B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v8 - 6788) | 0x8C3;
  v11 = *v9;
  STACK[0x778] = *v9;
  return (*(a8 + 8 * ((420 * (((((v10 ^ 0x52CB) - 12132) ^ (v11 == 0x6286B82630F8F22CLL)) & 1) == 0)) ^ v10)))();
}

uint64_t sub_2444D2B7C@<X0>(int a1@<W1>, uint64_t a2@<X7>, int a3@<W8>)
{
  STACK[0x818] = v3 - 0x6286B82630F8F224;
  LODWORD(STACK[0x334]) = a1;
  return (*(a2 + 8 * a3))();
}

uint64_t sub_2444D32BC@<X0>(uint64_t a1@<X7>, unsigned int a2@<W8>)
{
  v4 = v2 + 40 * a2;
  v5 = *(v4 + 24);
  v6 = *v4;
  STACK[0x518] = STACK[0x538];
  LODWORD(STACK[0x470]) = v5;
  STACK[0x5C0] = v6;
  LODWORD(STACK[0x774]) = 1475489413;
  return (*(a1 + 8 * ((((v3 - 1473604600) & 0x9F8C7F7C ^ 0x47B6C9E8) + v3) ^ (2682 * (v3 != 404171547)))))();
}

uint64_t sub_2444D3470@<X0>(uint64_t a1@<X7>, unsigned int a2@<W8>)
{
  v5 = v2 + 40 * a2;
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  STACK[0x6D8] = STACK[0x538];
  LODWORD(STACK[0x784]) = v6;
  STACK[0x5A0] = v4;
  LODWORD(STACK[0x414]) = v7;
  LODWORD(STACK[0x54C]) = 522545884;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_2444D3A2C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3)
{
  v6 = v3 + a1 + 899;
  a3 = *(v4 + 8 * v6);
  *(v5 - 64) = a1 + 867706601 * (((v5 - 80) & 0x86DB113D | ~((v5 - 80) | 0x86DB113D)) ^ 0x7D3DD4A9) + 364789460;
  *(v5 - 72) = &a3;
  v7 = (*(v4 + 8 * (a1 ^ 0x3C14685E)))(v5 - 80);
  return (*(v4 + 8 * (v6 ^ 0x7DC)))(v7);
}

uint64_t sub_2444D3AC0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3)
{
  v6 = v3 + a1;
  a3 = *(v4 + 8 * (v3 + a1 + 973));
  *(v5 - 72) = &a3;
  *(v5 - 64) = a1 + 867706601 * ((((2 * (v5 - 80)) | 0xCB968680) - (v5 - 80) + 439663808) ^ 0xE1D2792B) + 364789460;
  v7 = (*(v4 + 8 * (a1 ^ 0x3C14685E)))(v5 - 80);
  return (*(v4 + 8 * (v6 + 959)))(v7);
}

uint64_t sub_2444D3C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a21 = *(v21 + 8 * v22);
  *(v23 - 72) = &a21;
  *(v23 - 80) = v22 + 1649972239 * ((((v23 - 80) | 0x7B034BEA) - ((v23 - 80) & 0x7B034BEA)) ^ 0xA0BB6792) - 572929518;
  v24 = (*(v21 + 8 * (v22 + 21879)))(v23 - 80);
  return (*(v21 + 8 * (v22 ^ (111 * (*(v23 - 76) != 93)) ^ 0x441C)))(v24);
}

uint64_t sub_2444D3D94(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(&off_278E1E490 + ((49 * (dword_27EDF03D0 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244F1BEB0[byte_245010C30[(49 * (dword_27EDF03D0 ^ 0x27 ^ qword_27EDF1468))] ^ 0x92]) - 11);
  v3 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - *v2) ^ 0x27)) ^ byte_244FB9390[byte_244F6B0B0[(49 * ((qword_27EDF1468 - *v2) ^ 0x27))] ^ 0x4E]) + 564);
  v4 = 2085698353 * (&v10[*v3 - *v2] ^ 0xE03D7A67A7B7BC27);
  *v2 = v4;
  *v3 = v4;
  v5 = *(&off_278E1E490 + ((49 * (dword_27EDF03D0 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244F1BEB0[byte_245010C30[(49 * (dword_27EDF03D0 ^ 0x27 ^ qword_27EDF1468))] ^ 0x92]) + 35);
  v6 = *(v5 + 8208);
  v7 = 1649972239 * ((-2 - ((~&v11 | 0xF1E9B8CD3DCB043) + (&v11 | 0xF0E164732C234FBCLL))) ^ 0x6E0AA59708649C3BLL);
  v11 = v7 - 721054033;
  v14 = v6 - v7;
  v15 = a2;
  v12 = a1;
  v8 = 49 * (*v2 ^ 0x27 ^ *v3);
  (*(v5 + 8 * ((byte_244FB969C[(byte_244F6B4BC[v8 - 12] ^ 0x7D) - 12] ^ v8) + 22820) - 8))(&v11);
  return v13;
}

void sub_2444D3FB4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) + 810199703 * (((a1 | 0x1C0F07DF) - (a1 | 0xE3F0F820) - 470747104) ^ 0xFA861152);
  v2 = (v1 - 1788884205);
  v4 = &v3[0x1EAD339E98DCA7C0] + ((2 * *(a1 + 32)) | 0xA96630B391A7010) - *(a1 + 32) + v2 + 2;
  v3[0] = ((2 * v4) & 0x16EC2DCA) + (v4 ^ 0xB7616E5);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_2444D4350()
{
  v7 = *(v2 + 56) ^ v4;
  v8 = *(v2 + 40);
  v9 = (v1 & 0x9494909) + (v5 & 0x9494909) + ((v1 ^ v5) & 0x52921452) + 2 * (v5 & 0x52921452 & v1) + 2 * ((((v6 + 578815167) | 0x482045A1) ^ 0xCE84FF47) & v5 & v1) + (((v1 & 0xA424A2A4) - ((((v6 + 578815167) | 0x482045A1) ^ 0xCE84FF47) & v5) + 1212761416) & 0xA424A2A4);
  v10 = *(v0 + 8 * (v6 - 4646));
  v11 = *v10;
  v12 = *(v0 + 8 * (v6 ^ 0x120C));
  v13 = *(v12 + 4 * v11);
  v14 = (v9 ^ v5) + (v9 ^ v5) * v13;
  if (v9 == v5)
  {
    v15 = *(v12 + 4 * v11);
  }

  else
  {
    v15 = 0;
  }

  *(v12 + 4 * v11) = (v14 + v15) * v13;
  *v10 = (v11 + 1) % 6u;
  if (v8)
  {
    v16 = (v7 - 93) >= 2u;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  return (*(v3 + 8 * ((3534 * v17) ^ v6)))();
}

uint64_t sub_2444D4474@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t *a12, char a13, int a14, unsigned int a15, unsigned int a16, unint64_t *a17, uint64_t a18)
{
  v24 = 382044259 * (*(v18 + 4) - v20) - 206392985;
  v25 = a1 - 66;
  v26 = 412655981 * (((&a12 | 0x323FCE7E) - &a12 + (&a12 & 0xCDC03180)) ^ 0xFF46DBFC);
  a12 = &STACK[0xF74CC9F94CAEB58];
  a15 = v26 + v21 - 4995;
  a16 = v26 + (v24 ^ 0xAFDFDEDF) + ((2 * v24) & 0x5FBFBDBE) + 2034214898;
  a13 = v25 ^ (109 * (((&a12 | 0x7E) - &a12 + (&a12 & 0x80)) ^ 0xFC));
  a17 = &STACK[0x3F61B537691F9D92];
  a18 = v22;
  v27 = (*(v19 + 8 * (v21 ^ 0x49B5)))(&a12);
  return (*(v19 + 8 * ((8657 * (a14 == ((v21 + 1805700196) & 0xFEFF7DFB) - 572770575)) ^ v21)))(v27);
}

uint64_t sub_2444D45C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v22 = (v21 + 1788884980) + ((2 * a16) & 0x1FFC9FB7CLL) + (a16 ^ 0xFEBD9A4FFFE4FDBELL) + 0x14265B052F6B202;
  v24 = v22 >= (((v21 - 9673) | 0x400u) ^ 0xBD7C09B9uLL) && v22 <= (a20 - 2001140827) + 3179023775u;
  return (*(v20 + 8 * ((967 * v24) ^ v21)))();
}

uint64_t sub_2444D4994@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v19 = ((2 * ((v13 ^ (a1 - 1013) ^ (v16 - 1788893638)) + v12)) & 0xFCF5FBEA) + (((v13 ^ (a1 - 1013) ^ (v16 - 1788893638)) + v12) ^ 0x7E7AFDF5);
  v20 = v19 - 610576690 > a12 - 489727896;
  if (a12 - 489727896 < v14 != v19 - 610576690 < v14)
  {
    v20 = v19 - 610576690 < v14;
  }

  if (v18 > v19 - 2121989621)
  {
    v20 = 1;
  }

  return (*(v15 + 8 * ((61 * v20) ^ (v16 + v17))))();
}

uint64_t sub_2444D4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, int a15)
{
  v18 = v15 ^ a12;
  v20 = a15 == a14 && v18 == -1306004692;
  return (*(v16 + 8 * ((61 * ((v20 ^ (v17 + 26)) & 1)) ^ (v17 - 1788892810))))();
}

uint64_t sub_2444D4FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v14 = (((v12 - 689851875) | 0x22040A81) ^ 0x2082FC92) + a9;
  v15 = a10 - 1041264112 + ((32 * v10) ^ 0xC4C2FD20) + 4 > 0x7EEAABFC;
  if (v15 == v14 < 0x81155403)
  {
    v15 = a10 - 1041264112 + ((32 * v10) ^ 0xC4C2FD20) - 2129308665 > v14;
  }

  return (*(v11 + 8 * ((45 * v15) ^ (v13 + v12 + 2229))))();
}

uint64_t sub_2444D5094@<X0>(unsigned int a1@<W8>, int a2, int a3)
{
  v7 = *(v5 + 24);
  *(v7 - 0x79B0837E92812339) = ((2 * ((v4 ^ a1) + 1)) & 0x1BBFDFDFELL) + (((v4 ^ a1) + 1) ^ 0xEFFAFFBFDDFEFEFFLL) + (((v3 - 1090898175) | 0x48200C61) ^ 0x7EE7D1DB555B8663);
  *(v7 - 0x79B0837E92812331) = ((a3 + 868650979) | (((a3 + 868650979) < 0x71D6FDCF) << 32)) + 0x44D59A3CF50F14C8;
  return (*(v6 + 8 * ((5691 * (v3 < 0xCA235C13)) ^ (v3 - 1669731529))))();
}

void FbLnABIk(uint64_t a1, uint64_t a2)
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
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2444D5228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13)
{
  v14 = 1649972239 * ((((2 * &a9) | 0x9BE4A8AD573C021ALL) - &a9 - 0x4DF25456AB9E010DLL) ^ 0x2CE66A4D70262D75);
  v15 = *(v13 + 8088) - v14;
  a9 = v14 - 721054033;
  a12 = v15;
  a13 = a2;
  a10 = a1;
  v16 = (*(v13 + 183984))(&a9);
  return (*(v13 + 34376))(v16);
}

void sub_2444D530C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1 + 1459227061 * (a1 ^ 0xA382AC9);
  v2 = *(a1 + 24);
  v3 = *(&off_278E1E490 + v1 - 7789) - 8;
  (*&v3[8 * (v1 ^ 0x4706)])(v4, 0, 32);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_2444D55A0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, char a4@<W5>, int a5@<W6>, char a6@<W7>, int a7@<W8>)
{
  v26 = (a2 ^ 0x38) + 56 - ((v7 + 2 * (a2 ^ 0x38) + a6) & a4);
  v27 = ((((2 * a2) ^ 0xE61CE270) - ((2 * ((2 * a2) ^ 0xE61CE270)) & 0x44444444) + 34) & 0xA4 ^ 0x20) + (a2 ^ 0x31051B6A);
  v28 = ((38 * (a2 ^ 0x38)) & 0x19EE) + (((a2 ^ 0x38) * a3) ^ 0xE7C7ECF7) + 406328073;
  v29 = v28 - ((((v28 * v15) >> 32) + ((v28 - ((v28 * v15) >> 32)) >> 1)) >> 6) * v16;
  *(v22 + (((v18 & (2 * v29)) + (v29 ^ v17) + v19 < v20) << 32) + ((v18 & (2 * v29)) + (v29 ^ v17) + v21)) = v23;
  v30 = a5 + (((2 * v27) & 0x600A2FDE) + (v27 ^ 0x78EFF7EF)) * a3 - ((((a5 + (((2 * v27) & 0x600A2FDE) + (v27 ^ 0x78EFF7EF)) * a3) * v25) >> 32) >> 7) * a7;
  *(((4 * (2 * (v30 & 0x7F) + (v30 ^ v9))) | ((2 * (v30 & 0x7F) + (v30 ^ v9) + v10 < v12) << 34)) + v8 + v13) = v14;
  return (*(v24 + 8 * (((((v26 + 1) & 0xC0) == 0) * a1) ^ v11)))();
}

uint64_t sub_2444D5934(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = (((v69 - 11300) | a5) ^ v74 & (2 * v70) ^ 0x1F11) + (v70 ^ a1);
  v78 = ((2 * ((a7 + 19 * v77) % 0x49u)) & 0xE4) + (((a7 + 19 * v77) % 0x49u) ^ v73);
  *(&a68 + ((v75 + v78 + 1278 < 0x7F424470) << 32) + (v78 + 10850446)) = *(v72 + (a2 + v71)) - ((2 * *(v72 + (a2 + v71))) & 0x40) + 32;
  return (*(v76 + 8 * ((127 * ((a3 & ~(v77 - ((v68 + 2 * v77) & 0xBE5639CA) - 1553944599)) != 0)) ^ v69)))();
}

uint64_t sub_2444D5AD4(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = v71 + 1573974481;
  v79 = (((v69 - 3908) | a3) ^ 0x77DE5BFE) + v71 * v73;
  v80 = v79 - ((((v79 * a5) >> 32) + ((v79 - ((v79 * a5) >> 32)) >> 1)) >> 6) * v74;
  LODWORD(v81) = v71 * v73 + v76;
  v82 = (v80 ^ a7) + 2 * (v80 & 0x1F) + 2008023032;
  if (v79 >= 0xFFFFFFB7)
  {
    v81 = v81;
  }

  else
  {
    v81 = v82;
  }

  v83 = &a69 + (v81 | ((v81 < 0x71A8AE97) << 32));
  v85 = v78 > 0x9AE03173 && v78 < v70;
  v83[v75] = *(v72 + (a2 - 1529879034)) - ((2 * *(v72 + (a2 - 1529879034))) & 0x40) + 32;
  return (*(v77 + 8 * ((252 * v85) ^ v69)))();
}

uint64_t sub_2444D5BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(a16) = a2;
  v67 = (12 * (a8 ^ 0x1C7E) - 3185) * a18 + 895107397;
  v68 = v67 - ((((v67 * a5) >> 32) + ((v67 - ((v67 * a5) >> 32)) >> 1)) >> 6) * v65;
  *(&a65 + (((v68 ^ 0xFEAFEDFF) + 2 * v68 + 2147187710 < 0x7EAB69FD) << 32) + ((v68 ^ 0xFEAFEDFF) + 2 * v68 + 22024705)) = -96;
  return (*(v66 + 8 * (a8 ^ (13 * ((a18 - 404990905) < 0x3F)))))(a1, a2, a3, a4, a5, a6, 13, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2444D5C9C@<X0>(unsigned int a1@<W4>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = v67 + v68;
  v76 = v67 + 1;
  v77 = v76 * v70 + 895107251 - (((((v76 * v70 + 895107251) * a1) >> 32) + ((v76 * v70 + 895107251 - (((v76 * v70 + 895107251) * a1) >> 32)) >> 1)) >> 6) * v71;
  v78 = (v77 ^ v73) + 2 * (v77 & 0x3F) + v66;
  if ((v76 * v70 + 895107324) < 0x49)
  {
    v78 = v76 * v70 + 1800260267;
  }

  if (v75 >= (a3 ^ 0x11F1u) - 3201)
  {
    v79 = v78;
  }

  else
  {
    v79 = (v76 * v70 + 1800260340);
  }

  *(&a65 + (v79 | ((v79 < v69) << 32)) + v65) = v72;
  return (*(v74 + 8 * ((((v76 - 404990905) < 0x3F) * a2) ^ a3)))();
}

uint64_t sub_2444D5D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = HIBYTE(a18);
  LOBYTE(STACK[0x20D]) = (((v63 + 123) & 0xDB) + 81) ^ BYTE4(a18);
  LOBYTE(STACK[0x230]) = BYTE6(a18) ^ 0xC6;
  HIDWORD(a18) = HIBYTE(HIDWORD(a18)) ^ 0x24E64E28;
  LOBYTE(STACK[0x21D]) = v65 ^ 4;
  return (*(v64 + 8 * v63))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_2444D5E40(uint64_t a1, unsigned int a2, int a3, int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = (4 * v68 - 2 * ((4 * v68 + ((v67 + 513) ^ 0x2DFBF961)) & 0x26E0A85C ^ (4 * v68) & 4) - 1797492502) ^ 0xA6E0A85A;
  v75 = v74 - ((2 * v74 - 1195559644) & v73);
  v76 = 76 * v68 - 1304683131;
  v77 = 76 * v68 - 1448091014;
  v75 -= 1150923535;
  v78 = 76 * v68 - 1448090960 - (((((76 * v68 - 1448090960) * a5) >> 32) + ((76 * v68 - 1448090960 - (((76 * v68 - 1448090960) * a5) >> 32)) >> 1)) >> 6) * v71;
  v79 = ((v73 ^ (2 * v75)) - ((2 * (v73 ^ (2 * v75))) & 0x5D5E9F84) + 783241154) & 0x4742CAE0;
  v80 = ((((v79 ^ 0x6024AC0) + (v75 ^ 0xFCA6D72F)) ^ 0x6EFD8DFE) + ((2 * ((v79 ^ 0x6024AC0) + (v75 ^ 0xFCA6D72F))) & 0xDDFB1BFC)) * v69 + 154060670;
  v81 = v77 - ((((v77 * a5) >> 32) + ((v77 - ((v77 * a5) >> 32)) >> 1)) >> 6) * v71;
  v82 = (v81 ^ 0x689D3FEF) - 1611728173 + ((2 * v81) & 0xDE);
  v83 = *(&a67 + ((((2 * v78) & 0x48) + (v78 ^ 0xD7B977A4) + 2145898496 < 0x57A147A4) << 32) + (((2 * v78) & 0x48) + (v78 ^ 0xD7B977A4) + 675711068));
  if (v77 < 0xFFFFFFB7)
  {
    v76 = v82;
  }

  v84 = v76 - 143407810 - (((((v76 - 143407810) * a5) >> 32) + ((v76 - 143407810 - (((v76 - 143407810) * a5) >> 32)) >> 1)) >> 6) * v71;
  v85 = ((2 * ((v80 - 1174425925) % 0x92)) & 0x1F8) + (((v80 - 1174425925) % 0x92) ^ 0xEF9AFBFC);
  v86 = ((2 * v84) & 0x8A) + (v84 ^ 0x33B3F6C5);
  v87 = v80 - 1174425944 - (((((v80 - 1174425944) * a5) >> 32) + ((v80 - 1174425944 - (((v80 - 1174425944) * a5) >> 32)) >> 1)) >> 6) * v71;
  v88 = ((2 * v87) & 0xF8) + (v87 ^ 0x76A7D3FC);
  v89 = v68 * v69 - 362021467 - ((((v68 * v69 - 362021467) * a2) >> 32) >> 7) * a3;
  v90 = 2 * (v89 & 0x7F) + (v89 ^ 0xFEAFD7F);
  v91 = (v83 ^ 0x20) - ((2 * (v83 ^ 0x20)) & 0x174);
  v92 = v88 | (((v88 - 538968876) < 0x5687D0D0) << 32);
  v93 = *(&a67 + (v86 | (((v86 - 318767296) < 0x20B3F605) << 32)) - 867432133) ^ 0x20;
  v94 = v93 - ((2 * v93) & 0x1D8);
  if (v85 + 275055620 >= 0x49)
  {
    v95 = 1902468535;
  }

  else
  {
    v95 = 1902468608;
  }

  v96 = ((((v94 << 8) - 1823872000) ^ 0x9349EC00) + a4 - ((2 * (((v94 << 8) - 1823872000) ^ 0x9349EC00)) & 0x66AD1600)) ^ a4 | ((((v91 << 16) - 1917190144) ^ 0x8DBA0000) + 276411821 - ((2 * (((v91 << 16) - 1917190144) ^ 0x8DBA0000)) & 0x20F20000)) ^ 0x1079B5AD;
  v97 = *(&a67 + v92 - 1990710268) ^ 0x20;
  v98 = (v96 + v70 - ((2 * v96) & 0x30BF2C6C)) ^ v70 | (v97 + a6 - ((2 * v97) & 0x144)) ^ a6;
  v99 = (((v98 - ((2 * v98) & 0x81B8FC)) << 8) + 1088192000) ^ 0x40DC7E00;
  v100 = *(&a67 + ((v95 + v85) | ((v95 + v85 < 0x610059FC) << 32)) - 1627412988) ^ 0x20;
  v101 = (v99 + 551647684 - ((2 * v99) & 0x41C2F200)) ^ 0x20E179C4 | (v100 + 1462182196 - ((2 * v100) & 0x68)) ^ 0x57272134;
  *(((4 * v90) | ((v90 - 23085324 < 0xE8ABC73) << 34)) + a8 - 1068234236) = (v101 ^ 0x5DFEE7D5) - 17302033 + ((2 * v101) & 0xBBFDCFAA);
  return (*(v72 + 8 * ((7681 * (v68 == 1149308395)) ^ v67)))();
}

uint64_t sub_2444D6314@<X0>(unsigned int a1@<W1>, int a2@<W2>, int a3@<W6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v12 = (((a5 - 1177101232) & 0xFBFFFFFF) + ((a3 - 10149) ^ 0x942F362B) - ((2 * (a5 - 1177101232)) & 0x205E78CE)) ^ ((a5 + 30858320) & 0x4000000 | 0xEACBB641);
  v13 = (((v12 ^ 0xC4BAE7E0) - (v12 ^ 0x811B75D7) - ((2 * ((v12 ^ 0xC4BAE7E0) - (v12 ^ 0x811B75D7))) & 0xFDFA5950) - 16962392) ^ 0x102D356) + (v12 ^ 0xC4BAE7E0);
  v14 = ((2 * a5 - 2 * ((2 * a5 + 1940764832) & 0x5AE54CFE ^ (2 * a5) & 2) - 829225572) & 0xFFFFFFE3 ^ 0x5AE54CE0) + (v13 ^ 0x6F7B79AA) + ((2 * v13) & 0xDEF6F354) - 1870363050;
  v15 = (((2 * v14) & 0xEDEFFDDE) + (v14 ^ 0xF6F7FEEF)) * v6;
  v16 = v15 - 1416095428 - ((((v15 - 1416095428) * a1) >> 32) >> 7) * a2;
  v17 = ((2 * v16) & 0x13E) + (v16 ^ 0xFF955B9F);
  v18 = ((2 * v16) & 0xF2) + (v16 ^ 0x5EFDFB79);
  v19 = ((v17 + 1409023867 < 0x53915B1A) << 32) + (v17 + 6988897);
  if (v15 - 1416095428 >= 0xCAD3FCDC)
  {
    v20 = -1825802049;
  }

  else
  {
    v20 = 1577088411;
  }

  v21 = *(a4 + 4 * v19);
  v22 = v15 + 1301783457 + v20 - ((((v15 + 1301783457 + v20) * a1) >> 32) >> 7) * a2;
  v23 = ((2 * v22) & 0x1BA) + (v22 ^ 0x6ECD7FDD);
  v24 = *(((4 * v18) | ((v18 - 9748737 < 0x5E693A78) << 34)) + a4 - 0x17BF7EDE4);
  v25 = v23 - 168361984 >= 0x64C47FDD;
  v26 = 4 * v23;
  v27 = a5 * v6 - 890085693;
  v28 = v27 * a1;
  v29 = !v25;
  v30 = v27 - (v28 >> 39) * a2;
  v31 = 2 * v30;
  v32 = v26 | (v29 << 34);
  v33 = ((2 * v30) & 0x16C) + (v30 ^ 0x37BF7FB6);
  v25 = v33 - 806356244 >= 0x7AF7AA2;
  v34 = 4 * v33;
  v35 = !v25;
  v36 = v21 + 60;
  v37 = v21 - 1559684548;
  v38 = v34 | (v35 << 34);
  HIDWORD(v39) = v24 + 72252;
  LODWORD(v39) = v37;
  v40 = ((__PAIR64__(v36, v37) >> 7) + v5 - ((2 * (__PAIR64__(v36, v37) >> 7)) & 0xFAB65140)) ^ v5;
  v41 = ((v39 >> 18) + v7 - ((2 * (v39 >> 18)) & 0xD04B8312)) ^ v7;
  v42 = v41 + v40;
  v43 = (v41 & v40) - ((2 * (v41 & v40)) & 0x66E7FA72);
  v44 = *(((4 * ((v31 & 0x1F6) + (v30 ^ 0x7FBAFDFBu))) | (((v31 & 0x1F6) + (v30 ^ 0x7FBAFDFBu) - 1140998434 < 0x3BB8BCD9) << 34)) + a4 - 0x1FEEBF7ECLL);
  v45 = (v42 ^ 0xDE8DFDFF) + ((2 * v42) & 0xBD1BFBFE) + 561119746 + ((((2 * v43 + 1726478962) ^ 0x66E7FA72) - 2 * (((2 * v43 + 1726478962) ^ 0x66E7FA72) & 0x6E7FD1EE ^ (2 * v43 + 1726478962) & 8) - 293613082) ^ 0x11802E19);
  v46 = (((a5 * v6 - 890085788) % 0x87u) ^ 0xBDFDEEFF) + 2 * ((a5 * v6 - 890085788) % 0x87u);
  HIDWORD(v39) = v44 + 72252;
  LODWORD(v39) = *(((4 * ((v31 & 0x1E8) + (v30 ^ 0x7EBFEFF4u))) | (((v31 & 0x1E8) + (v30 ^ 0x7EBFEFF4u) - 134578512 < 0x76BA6EA4) << 34)) + a4 - 0x1FAFFBFD0) - 1559684548;
  v47 = v39 >> 19;
  v48 = (v31 & 0x1BA) + (v30 ^ 0xD7EB1FDD);
  v49 = v45 - ((2 * v45) & 0x97A6AFD2);
  v50 = ((v48 + 1878912932 < 0x47E90F81) << 32) + (v48 + 672456739);
  v51 = ((2 * ((a5 * v6 - 890085959) % 0x87u)) & 0x1FA) + (((a5 * v6 - 890085959) % 0x87u) ^ 0x34FAFCFD);
  HIDWORD(v39) = *(v38 + a4 - 3741187800) + 72252;
  LODWORD(v39) = v44 - 1559684548;
  LODWORD(v38) = ((((*(v32 + a4 - 0x1BB35FF74) - 1559684548) >> 3) - (((*(v32 + a4 - 0x1BB35FF74) - 1559684548) >> 2) & 0x192E7D8C) + 1821851334) ^ 0x2744692F ^ (v49 + 1272141801)) + (((v39 >> 17) - ((2 * (v39 >> 17)) & 0x63C36DE8) + 836876020) ^ (v47 - ((2 * v47) & 0xF4A664CC) + 2052272742) ^ (((*(a4 + 4 * v50) - 1559684548) >> 10) - (((*(a4 + 4 * v50) - 1559684548) >> 9) & 0x4554A0) + 1734519376) ^ 0x2CD02EC2);
  v52 = (a5 * v6 - 890085655) % 0x87u;
  LODWORD(v38) = (v38 ^ 0x7FF7E5FE) - 587268154 + ((2 * v38) & 0xFFEFCBFC);
  v53 = ((2 * v52) & 0x19C) + (v52 ^ 0xEFF3DECE);
  *(a4 + 4 * (((v53 + 1003436852 < 0x2BC31A02) << 32) + (v53 + 269230386))) = v38;
  v54 = a5 * v6 - ((38 * a5 - 1780171310) & v10) - 1403214182;
  v55 = ((2 * v52) & 0x1E4) + (v52 ^ 0xFBFEBFF2);
  v56 = v9 + (v10 ^ (2 * v54)) - ((2 * (v10 ^ (2 * v54))) & 0x8EC93320) + 257;
  v57 = (4 * v51) | ((v51 - 13766804 < 0x3428EC69) << 34);
  v58 = *(a4 + 4 * (((v46 + 2147450716 < 0x3DFD6E5B) << 32) + (v46 + 1107431681))) - 1559684548 + v38;
  v59 = (((v56 & 0xFFFFFEF2 ^ v9) + (v54 ^ 0x1E95B8C8)) ^ 0xE3F7AAFF) + 470308097 + ((2 * ((v56 & 0xFFFFFEF2 ^ v9) + (v54 ^ 0x1E95B8C8))) & 0xC7EF55FE);
  v60 = v59 % 0x87 + v8 - ((2 * (v59 % 0x87)) & 0x162);
  *(a4 + 4 * (((v55 + 1598551968 < 0x5B46B792) << 32) + (v55 + 67190798))) = v58;
  if ((v54 ^ v8) > 0x86)
  {
    v54 = v60;
  }

  *(a4 + 4 * ((v54 ^ v8 ^ 0x25FF3DDBB7F7F6FDLL) + ((2 * (v54 ^ v8)) & 0x16FEFEDFALL)) + 0x680308912020240CLL) = *(v57 + a4 - 3555455988u) - 1559684548 + v58;
  return (*(v11 + 8 * ((29681 * (a5 == 1177101295)) ^ a3)))();
}

uint64_t sub_2444D6B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  LODWORD(STACK[0x408]) = 1155980024;
  LODWORD(STACK[0x3BC]) = 211315269;
  LODWORD(STACK[0x324]) = -1671613447;
  LODWORD(STACK[0x370]) = -335668561;
  LODWORD(STACK[0x3AC]) = -692848096;
  LODWORD(STACK[0x368]) = 129226263;
  LODWORD(STACK[0x3B4]) = 627422664;
  LODWORD(STACK[0x44C]) = 1317232379;
  LODWORD(STACK[0x444]) = -48505602;
  LODWORD(STACK[0x454]) = 1573107497;
  LODWORD(STACK[0x3F8]) = -527399741;
  LODWORD(STACK[0x30C]) = 1256565158;
  LODWORD(STACK[0x284]) = -1968241940;
  LODWORD(STACK[0x28C]) = 601791717;
  LODWORD(STACK[0x360]) = -1033308646;
  LODWORD(STACK[0x350]) = -631348519;
  LODWORD(STACK[0x400]) = 864422482;
  LODWORD(v39) = a33 ^ 0xA6D0961B;
  HIDWORD(v39) = a35 - 139613062;
  LODWORD(STACK[0x43C]) = 2038916167;
  LODWORD(STACK[0x3A4]) = 1655341084;
  LODWORD(STACK[0x31C]) = -690430446;
  LODWORD(STACK[0x3F0]) = 1912657947;
  v37 = ((2 * a35 - ((4 * a35 + 515289576) & 0x1F37E620) + 2130136069) & 0x7D887632 ^ 0xD887210) + ((((a35 - 139613062) ^ 0xBEC43B19) + 103797998 - ((2 * ((a35 - 139613062) ^ 0xBEC43B19)) & 0xC5FA9DC)) ^ 0x62FD4EE);
  LODWORD(STACK[0x2C0]) = 698409262;
  LODWORD(STACK[0x2B8]) = -1183728731;
  LODWORD(STACK[0x304]) = -959413829;
  LODWORD(STACK[0x3E8]) = -2898352;
  LODWORD(STACK[0x2FC]) = 879370626;
  LODWORD(STACK[0x2D0]) = -987057323;
  LODWORD(STACK[0x2C8]) = -1757232619;
  LODWORD(STACK[0x314]) = -1570398246;
  LODWORD(STACK[0x358]) = 1524178625;
  LODWORD(STACK[0x2B0]) = 689005327;
  LODWORD(STACK[0x2A8]) = -2076557203;
  LODWORD(STACK[0x41C]) = 657906498;
  LODWORD(STACK[0x39C]) = -524125812;
  LODWORD(STACK[0x27C]) = 1950566856;
  LODWORD(STACK[0x274]) = 257425968;
  LODWORD(STACK[0x348]) = 1159300313;
  LODWORD(STACK[0x424]) = -790707108;
  LODWORD(STACK[0x3D8]) = -867427990;
  LODWORD(STACK[0x38C]) = -1022232380;
  LODWORD(STACK[0x26C]) = -2008094309;
  LODWORD(STACK[0x264]) = 397527976;
  LODWORD(STACK[0x434]) = 98526567;
  LODWORD(STACK[0x3E0]) = 1522646687;
  LODWORD(STACK[0x42C]) = 1962075076;
  LODWORD(STACK[0x384]) = 239346339;
  LODWORD(STACK[0x254]) = -638595168;
  LODWORD(STACK[0x25C]) = 2048109047;
  LODWORD(STACK[0x330]) = 1130780750;
  LODWORD(STACK[0x394]) = 1432830197;
  LODWORD(STACK[0x338]) = 25166494;
  LODWORD(STACK[0x298]) = 930074728;
  LODWORD(STACK[0x2A0]) = -413657847;
  LODWORD(STACK[0x240]) = -181303316;
  LODWORD(STACK[0x24C]) = 726449091;
  LODWORD(STACK[0x2F4]) = -1992270216;
  LODWORD(STACK[0x2EC]) = -339516153;
  LODWORD(STACK[0x2D8]) = 1751667747;
  LODWORD(STACK[0x2E4]) = 1064196700;
  LODWORD(STACK[0x3C8]) = 1906375755;
  LODWORD(STACK[0x3D0]) = 450218055;
  LODWORD(STACK[0x340]) = -1498051111;
  LODWORD(STACK[0x37C]) = 1459078463;
  HIDWORD(a28) = v35 ^ 0xA;
  LODWORD(a31) = v35 ^ 0x32ED;
  LODWORD(STACK[0x414]) = 2031669574;
  return (*(v36 + 8 * v35))(a24 - ((v35 ^ 0x59477D76) & (2 * a24 + 833204532)) - 981953481, v37 - 1398555747 - ((2 * v37) & 0x5947773A), a3, (a25 ^ 0xD3CAE3C9) - ((2 * (a25 ^ 0xD3CAE3C9) + 815268616) & 0xB391C944) + 1913972262, 0, 63, 0, (HIDWORD(a23) ^ 0x25452993) - ((2 * (HIDWORD(a23) ^ 0x25452993) - 807383524) & 0xB391C944) - 1044837456, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v39, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_2444D76E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, int a24, int a25, int a26, uint64_t a27, unsigned int a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  v41 = ((2 * ((v37 ^ 0x72) - 240)) & 0xFE56F87A) + (((v37 ^ 0x72) - 240) ^ 0x7F2B7C3D);
  v42 = (a22 ^ 0x4E621E16) - ((2 * (a22 ^ 0x4E621E16) + 698163934) & 0x3F84A7C2) - 191830704;
  v43 = ((((2 * a26) ^ 0xA795C792) - ((2 * ((2 * a26) ^ 0xA795C792)) & 0x35F814C0) + 452725345) & 0x30980308 ^ 0x10980200) + (a26 ^ 0x4B86E24D);
  v44 = (v43 ^ 0x7773FF6D) + v36 + ((2 * v43) & 0xEEE7FEDA) - 2004090733;
  v45 = (2 * ((v39 & (v42 ^ 0x9FC253E1)) - ((2 * (v39 & (v42 ^ 0x9FC253E1))) & 0x6A21453C)) - 366918340) ^ 0xEA21453C;
  v46 = ((v45 + 1154166890 - ((2 * v45) & 0x899660D4)) ^ 0x44CB306A) + (v42 ^ a36 ^ 0x460AB743);
  return (*(a30 + 8 * a32))(a28, (v41 - 61) - 731663429 - ((2 * (v41 + 195)) & 0x176) + 29, v40 ^ v38, v44 + 428270773 - ((2 * v44) & 0x330DC96A), a32, v46 - 1458172100 - ((2 * v46) & 0x522C1E78), ((2 * (a24 + a3 - 521299010)) & 0xBE65DEF4) + ((a24 + a3 - 521299010) ^ 0x5F32EF7A), 2798687771, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2444D7D28@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, unsigned int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v21 = (a5 & (2 * v10) ^ a6) + (v10 ^ a3);
  v22 = ((v21 - ((a7 + 2 * v21) & v8) + v12) & 0xFC ^ v14) < 0x3C;
  v23 = v15 + v21 * v13 - (((((v15 + v21 * v13) * a4) >> 32) + ((v15 + v21 * v13 - (((v15 + v21 * v13) * a4) >> 32)) >> 1)) >> 6) * v17;
  v24 = (v18 & (2 * v23)) + (v23 ^ v16);
  *((v24 | ((v24 + a1 < v11) << 32)) + a2 + v9) = v19;
  return (*(v20 + 8 * (((4 * v22) | (16 * v22)) ^ a8)))();
}

uint64_t sub_2444D7DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  HIDWORD(a18) = (((v34 - 1592551279) & 0x405A2FFB) + 619060792) ^ a32;
  LODWORD(a20) = HIDWORD(a32);
  LODWORD(a21) = HIDWORD(a34);
  HIDWORD(a34) = 1948932122;
  return (*(v35 + 8 * (v34 ^ 0x1E9249FF ^ (29649 * (v34 > 0xF9DB0217)))))(a1, 4072265289, a3, 4082535209, a5, 3717784482, a7, a30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_2444D7E78()
{
  v6 = *(v4 + 8 * v0);
  v7 = 1649972239 * ((((v5 - 160) | 0x96281106E8C6DDE8) - ((v5 - 160) & 0x96281106E8C6DDE8)) ^ 0xF73C2F1D337EF190);
  *(v5 - 160) = v7 - 721055101 + v0;
  v1[97] = v6 - v7;
  v1[98] = v3;
  v1[95] = v2;
  v8 = (*(v4 + 8 * (v0 ^ 0x5DFA)))(v5 - 160);
  return (*(v4 + 8 * (v0 ^ 0x2507 ^ (3541 * (*(v5 - 144) == ((v0 + 1216119506) ^ v0 ^ 0x1606))))))(v8);
}

uint64_t sub_2444D8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = 1143492667 * ((v71 - 160) ^ 0x1F2B160C);
  v68[94] = &a67;
  v68[96] = a11;
  v68[97] = v69;
  *(v71 - 152) = v67 - v72 + 9958;
  *(v71 - 128) = v72 + 999845765;
  v73 = (*(v70 + 8 * (v67 ^ 0x53A2)))(v71 - 160);
  return (*(v70 + 8 * (((*(v71 - 148) == (((v67 - 2442) | 0x2103) ^ 0x487CB5F7)) * ((v67 ^ 0x1B80) + 415)) ^ v67)))(v73);
}

uint64_t sub_2444D86C8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (v17 - 12830) | 0x401;
  v23 = *(a17 + 8);
  *a1 = (a12 ^ *(a17 + 4)) & 1;
  v24 = *(v20 + 8 * v22);
  v25 = 867706601 * ((((v21 - 160) | 0xB92F6400BE48E3B9) - ((v21 - 160) & 0xB92F6400BE48E3B9)) ^ 0x280A1BE3BA51D9D2);
  *(v21 - 120) = v25 + v22 - 59111567;
  STACK[0x510] = v19;
  STACK[0x500] = a15;
  STACK[0x4F0] = v18;
  STACK[0x4E8] = v23;
  STACK[0x4E0] = v24 + v25;
  v26 = (*(v20 + 8 * (v22 + 21978)))(v21 - 160);
  return (*(v20 + 8 * ((24421 * (*(v21 - 136) == ((v22 + 1216123445) ^ (v22 - 511)))) ^ (v22 + 1369))))(v26);
}

uint64_t sub_2444D88BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _BYTE *a31)
{
  *a31 = 0;
  *(v31 + 83) = 0;
  *(v31 + 75) = 0;
  return (*(v33 + 8 * (v32 + 4845)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_2444D8A48@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = a1 ^ 0x5FCE733;
  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v23 = (*(v20 + 8 * (v18 + 18342)))(v17 + v22, 74, 0, -1, *(&off_278E1E490 + (v18 ^ 0x11E6)) - 4);
  return (*(v20 + 8 * v18))(v23, v24, v25, v26, v27, v28, v29, v30, v19, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_2444D8AF0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28)
{
  v34 = (*(v31 + 8 * (v33 ^ 0xBC0)))(v29 + (a1 ^ v30), 74, 0, -1, *(v28 + 8 * (v33 - 20815)) - 2);
  v35 = *(a24 + a27);
  if ((v35 - 127) < 0xFFFFFFA1)
  {
    LOBYTE(v35) = 46;
  }

  *(a25 + a28) = v35;
  *(a25 + a28 + 1) = 0;
  v37 = v32 <= 0x32467CE7 || v32 >= a22;
  return (*(v31 + 8 * (v33 | (77 * v37))))(v34);
}

uint64_t sub_2444D8CD8@<X0>(int a1@<W8>)
{
  (*(v6 + 8 * (v5 ^ v1)))(v2 + (a1 ^ 0x5FCE733), 74, 0, -1, *(v4 + 8 * (v5 - 1050)));
  v7 = ((v3 + 1) & 0xF) == v5 - 2590;
  return (*(v6 + 8 * (v7 | (8 * v7) | v5)))();
}

uint64_t sub_2444D8D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  if (*(v24 + 88))
  {
    v26 = *(v24 + 72) == 0;
  }

  else
  {
    v26 = 1;
  }

  v28 = !v26 && *(v24 + 80) == 8;
  return (*(v25 + 8 * ((2226 * v28) ^ a24)))();
}

uint64_t sub_2444D8DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v48 = &a41 + v43 + ((a24 + 818494854) & 0xCF36DEDF);
  v49 = v48 - 0x1D328C5E81157E5;
  v50 = *(v44 + 96);
  *v49 = v42;
  *(v49 + 2) = ((2 * v50) & 0xFBD7DFBC) + 926769016 + (v50 ^ 0xFDEBF105 ^ (a24 - 750994326) & 0x2CC35FFB);
  *(v49 + 2) = v41;
  *(v49 + 6) = 1144786314;
  *(v49 + 4) = a25;
  *(v49 + 10) = 1117684363;
  *(v47 - 144) = (a24 + 7177) ^ (810199703 * (((v45 | (v47 - 160)) - ((v47 - 160) & v45)) ^ 0xBE36BA14));
  STACK[0x4E8] = (v48 + 0x101C53C50565AF45);
  v51 = (*(v46 + 8 * (a24 ^ 0x585F)))(v47 - 160);
  return (*(v46 + 8 * ((7404 * (*(v47 - 160) == 1216124116)) ^ a24)))(v51);
}

uint64_t sub_2444D90AC@<X0>(_BYTE *a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34)
{
  v40 = *(a11 + 32);
  v41 = a2 - 3249;
  v42 = *v36;
  a1[15] = v42[15];
  a1[14] = v42[14];
  a1[13] = v42[13];
  a1[12] = v42[12];
  a1[11] = v42[11];
  a1[10] = v42[10];
  a1[9] = v42[9];
  a1[8] = v42[8];
  a1[7] = v42[7];
  a1[6] = v42[6];
  a1[5] = v42[5];
  a1[4] = v42[4];
  a1[3] = v42[3];
  a1[2] = v42[2];
  a1[1] = v42[1];
  *a1 = *v42;
  *(v37 + 48) = a1;
  *(v37 + 56) = 16;
  *(v37 + 64) = v35;
  *(v37 + 68) = v34;
  v43 = a2 - 6867;
  *(v37 + 16) = a32;
  *(v37 + 24) = a34 - 534201213;
  *(v37 + 8) = *(a14 + 24);
  v44 = *(v38 + 8 * (a2 - 6867));
  v45 = v37;
  v46 = 412655981 * ((~(v39 - 160) & 0xAFBDF94F456A2A30 | (v39 - 160) & 0x504206B0BA95D5CFLL) ^ 0xBC11F3FE88133FB2);
  STACK[0x4F0] = v37;
  *(v39 - 148) = (a2 - 1647808162) ^ v46;
  STACK[0x4E0] = v44 ^ v46;
  v47 = (*(v38 + 8 * (a2 ^ 0x472A)))(v39 - 160);
  *v40 = v45;
  return (*(v38 + 8 * (v41 ^ v43 ^ 0x1F88)))(v47);
}

uint64_t sub_2444D92B8(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(&off_278E1E490 + ((49 * ((qword_27EDF1468 - dword_27EDF03B8) ^ 0x27)) ^ byte_244FB9490[byte_244F6B1B0[(49 * ((qword_27EDF1468 - dword_27EDF03B8) ^ 0x27))] ^ 0xF9]) + 719);
  v3 = *(&off_278E1E490 + (byte_244FB9690[byte_244F6B4B0[(49 * ((qword_27EDF1468 + *v2) ^ 0x27))] ^ 0x6F] ^ (49 * ((qword_27EDF1468 + *v2) ^ 0x27))) + 633);
  v4 = (*v3 ^ *v2) - &v8;
  *v2 = 2085698353 * (v4 + 0x1FC28598584843D9);
  *v3 = 2085698353 * (v4 ^ 0xE03D7A67A7B7BC27);
  v5 = *(&off_278E1E490 + ((49 * (dword_27EDF03B8 ^ 0x27 ^ qword_27EDF1468)) ^ byte_244FB9390[byte_244F6B0B0[(49 * (dword_27EDF03B8 ^ 0x27 ^ qword_27EDF1468))] ^ 0x4E]) - 30);
  v6 = 1649972239 * ((2 * (&v9 & 0x745425B55FBF7778) - &v9 - 0x745425B55FBF777FLL) ^ 0xEABFE4517BF8A4F9);
  v12 = *(v5 + 8784) - v6;
  v13 = a2;
  v10 = a1;
  v9 = v6 - 721054033;
  (*(v5 + 8 * (((49 * ((*v3 + *v2) ^ 0x27)) ^ byte_244FB9690[byte_244F6B4B0[(49 * ((*v3 + *v2) ^ 0x27))] ^ 0xB5]) + 22881) - 8))(&v9);
  return v11;
}

void sub_2444D94E4()
{
  v0 = MEMORY[0x28223BE20]();
  v1 = *(v0 + 8) + 1649972239 * ((820602444 - (v0 | 0x30E9664C) + (v0 | 0xCF1699B3)) ^ 0x14AEB5CB);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2444D962C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(v3 - 0x3ABE94B902506D8ELL);
  STACK[0xF80] = *(v3 - 0x3ABE94B902506D9ELL);
  STACK[0xF90] = v5;
  STACK[0xFB8] = *(v3 - 0x3ABE94B902506D7ELL);
  STACK[0xFD8] = *(v3 - 0x3ABE94B902506D6ELL);
  v6 = *(v3 - 0x3ABE94B902506D66);
  v7 = a3 - 5168;
  STACK[0xFA0] = *(v3 - 0x3ABE94B902506D5ELL);
  v8 = *(v3 - 0x3ABE94B902506D56);
  STACK[0xF40] = *(v3 - 0x3ABE94B902506D4ELL);
  STACK[0xF38] = *(v3 - 0x3ABE94B902506D46);
  STACK[0xF98] = *(v3 - 0x3ABE94B902506D36);
  STACK[0xFC8] = *(v3 - 0x3ABE94B902506D26);
  return (*(v4 + 8 * v7))(a1, v6, v8);
}

uint64_t sub_2444D98E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v11)
  {
    v13 = v8 == 724620664;
  }

  else
  {
    v13 = 1;
  }

  v16 = v13 && v9 != 0 && v10 == 1813021072;
  return (*(v12 + 8 * (((3 * (a8 ^ 0x786) - 9431) * v16) ^ a8)))();
}

uint64_t sub_2444D99C8(uint64_t a1)
{
  LODWORD(STACK[0xF28]) = v6;
  LODWORD(STACK[0xF20]) = v5;
  STACK[0xF00] = v3;
  v7 = *(v4 + 8 * (((((v1 - 943) | 0x422) - 7169) * **(v2 + 8 * (v1 - 5892))) ^ v1));
  return v7(a1, v7, *(v2 + 8 * (v1 - 5547)));
}

uint64_t sub_2444D9A54@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  *(v6 + 28) = 0;
  *(*a1 + 128) = 0;
  v7 = *a1;
  *(v5 + 42) = 99;
  *(v4 + 2) = -82;
  *(v5 + 23) = -33;
  v7[364] = 31;
  *(v6 + 99) = -6;
  *(v4 + 109) = 51;
  v7[312] = -63;
  *(v6 + 78) = -5;
  *(v6 + 38) = -110;
  *(v6 + 47) = -43;
  *(v4 + 48) = -119;
  *(v5 + 28) = -49;
  *(v5 + 3) = 61;
  *(v5 + 10) = 10;
  *v6 = 110;
  v7[254] = -77;
  *(v6 + 75) = 26;
  v7[152] = 60;
  *(v6 + 65) = 41;
  *(v4 + 124) = -64;
  v7[27] = 12;
  *(v4 + 50) = -113;
  *(v5 + 11) = 91;
  *(v5 + 39) = -5632;
  v7[84] = -9;
  *(v5 + 44) = -38;
  *(v6 + 89) = -97;
  v7[405] = 11;
  *(v6 + 33) = -93;
  *(v4 + 3) = -11;
  *(v5 + 32) = -120;
  *(v6 + 42) = -69;
  *(v4 + 58) = 90;
  *(v5 + 19) = 117;
  *(v6 + 73) = -37;
  v7[3] = 114;
  *(v6 + 101) = -66;
  *(v4 + 216) = -32;
  *(v5 + 21) = 86;
  v8 = *a1;
  *(v5 + 47) = -88;
  v8[42] = 24;
  *(v4 + 73) = 70;
  *(v5 + 8) = 94;
  *(v5 + 26) = -32;
  *(v5 + 31) = -99;
  *(v6 + 23) = 11;
  *(v6 + 100) = -12;
  v8[396] = 28;
  v8[251] = -108;
  *(v4 + 217) = 125;
  v8[355] = -67;
  *(v5 + 27) = -111;
  *(v6 + 62) = 60;
  *(v4 + 181) = -42;
  *(v6 + 52) = -117;
  *(v4 + 62) = 120;
  v8[4] = -26;
  *(v6 + 60) = 0;
  v8[175] = 15;
  *(v4 + 103) = -23;
  *(v6 + 36) = -114;
  *(v4 + 94) = 111;
  v8[77] = -125;
  *(v4 + 17) = 104;
  *(v6 + 14) = -45;
  *(v4 + 151) = -32;
  v8[337] = 8;
  v8[32] = 44;
  *(v6 + 83) = -97;
  *(v6 + 90) = -25;
  v8[189] = -86;
  v8[388] = -61;
  v8[62] = 65;
  *(v6 + 34) = -107;
  *(v4 + 63) = 85;
  *(v6 + 10) = 39;
  v8[386] = 20;
  *(v5 + 37) = -65;
  v8[30] = 115;
  *(v4 + 104) = 0;
  v9 = *a1;
  *(v4 + 172) = -70;
  *(v6 + 45) = 90;
  v9[34] = 55;
  *(v6 + 106) = 54;
  *(v6 + 79) = -17;
  *(v4 + 195) = -20;
  *(v4 + 219) = 116;
  v9[240] = -108;
  *(v6 + 7) = 81;
  *(v6 + 85) = -5714;
  *(v6 + 96) = -114;
  v9[328] = -102;
  *(v6 + 76) = 105;
  *(v4 + 5) = 88;
  *(v4 + 207) = 92;
  v9[350] = -79;
  *(v6 + 32) = 14;
  *(v6 + 107) = -107;
  *(v6 + 71) = 93;
  *(v6 + 15) = -39;
  v9[122] = -114;
  v9[268] = 125;
  v9[363] = 33;
  *(v6 + 92) = -108;
  *(v4 + 97) = -116;
  v9[163] = -63;
  v9[345] = 124;
  *(v4 + 91) = -19;
  *(v4 + 66) = -88;
  *(v6 + 20) = -107;
  *(v6 + 81) = 72;
  *(v6 + 22) = -71;
  v9[417] = 47;
  *(v4 + 18) = -9;
  *(v4 + 202) = 109;
  *(v6 + 55) = -24;
  *(v4 + 175) = 118;
  v9[307] = -121;
  v9[8] = 7;
  *v2 = 1;
  return (*(v3 + 8 * a2))();
}

uint64_t sub_2444D9E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  STACK[0x1CD8] = v9;
  STACK[0x1CE0] = v11 - 0x6B3C8627D09F0389;
  STACK[0x1CE8] = v12;
  STACK[0x1CF0] = v13;
  STACK[0x1CF8] = v18;
  v19 = *(v17 + 28) - ((2 * *(v17 + 28)) & 0x31B09C4C) + 416828966;
  STACK[0xC18] = a7;
  v20 = *a7;
  LODWORD(STACK[0x2D0C]) = v7 + 16;
  LODWORD(STACK[0x2D10]) = v7 + 16;
  v21 = 2 * v19;
  LODWORD(STACK[0x2D14]) = v8;
  LODWORD(STACK[0x2D18]) = v7;
  LODWORD(STACK[0x2D1C]) = v7;
  v22 = ((2 * ((v21 & 0xA ^ 8) + (v19 ^ 0x18D84E23))) & 0x9EAFB4D8) + (((v21 & 0xA ^ 8) + (v19 ^ 0x18D84E23)) ^ 0x4F57DA6C);
  STACK[0xC10] = v16;
  LODWORD(STACK[0xFAC]) = v19;
  STACK[0xC80] = v15;
  STACK[0xC88] = v17;
  v23 = v22 + (v19 ^ 0xE727B1D9) - ((2 * (v22 + (v19 ^ 0xE727B1D9)) + 1632652074) & 0x6ADD6024) - 434711129;
  STACK[0xF30] = v20;
  v24 = v19 ^ 0x2DB6FE31;
  v25 = (v19 ^ 0x76AE735A) + ((2 * v19) & 0x23138506 ^ 0x2030102) + 522085138 + v22;
  v26 = (v21 ^ 0xCE4F63B3) + v22 - 1331157611 + ((v25 - ((2 * v25) & 0x6ADD6024) + 896446482) ^ v24);
  STACK[0xF60] = (v23 ^ v24) << 32;
  STACK[0xF58] = v14;
  v27 = *(v14 + 8 * v10);
  LODWORD(STACK[0xF68]) = v26;
  LODWORD(STACK[0xF50]) = v26 + 187369526;
  return v27();
}

uint64_t sub_2444DA4CC()
{
  v6 = LODWORD(STACK[0xF68]) > 0xF4D4F7C9;
  v7 = v5 ^ 0x97B05BFFA6F3F9CBLL ^ v4;
  v8 = v2 ^ (LODWORD(STACK[0xF70]) - 1813021040);
  v9 = v5 ^ 0x97B05BFFA6F3F9CBLL ^ v3;
  STACK[0xF70] = v1 ^ 0x1FA4;
  v10 = (v1 ^ 0xFFFFFFFFFFFFDD89 ^ ((v8 ^ 0x8D2630942CABBFCALL) - 2084615497 + (v8 ^ 0x55339B94DDC61F51) + ((2 * v8) ^ 0x5598C8D64473C15DLL) + (v1 ^ 0x7C40973D))) + (v8 ^ 0x8D2630942CABBFCALL);
  v11 = v10 ^ STACK[0xF60];
  v12 = v11 ^ 0x11C9D5289D2B24B8;
  v13 = v11 ^ 0x11C9D5289D2B24B8 ^ v0;
  *(&v14 + 1) = v4 ^ 0x72E;
  *&v14 = v4 ^ 0x83CE1E4848810000;
  v15 = (v9 ^ 0xD3BBB3D42DAF0934) & (v7 ^ 0x4771B586DE0C778) ^ __ROR8__(v14 >> 16, 48);
  v16 = v9 ^ 0x2C444C2BD250F6CBLL;
  v17 = (v13 ^ 0xF9F66B2D3F5B077BLL) & ~v11 ^ v9;
  v18 = ((v7 ^ 0xFB88E4A7921F3887 | v4 ^ 0x7C31E1B7B77EF8D1) - ((2 * (v7 ^ 0xFB88E4A7921F3887 | v4 ^ 0x7C31E1B7B77EF8D1)) & 0xF08DF5DFB53C7F52) + 0x7846FAEFDA9E3FA9) ^ v5 ^ 0x97B05BFFA6F3F9CBLL ^ v13;
  v19 = v11 & v16 ^ v7;
  v20 = v17 ^ (((v13 ^ 0x60994D2C0A4F884) & (v4 ^ 0x83CE1E484881072ELL)) - 0x7EE50E1C87C752ALL + (~(2 * ((v13 ^ 0x60994D2C0A4F884) & (v4 ^ 0x83CE1E484881072ELL))) | 0xFDCA1C390F8EA55)) ^ 0x2BAA1CCA1A2C83E1;
  v21 = (v15 & 0x8000000000000 ^ 0xF3B8FBF5EDE7FDFBLL) + 2 * (v15 & 0x8000000000000);
  v22 = v21 + 0x7FDF1F3FBE1D37C0;
  v23 = (v20 + 0x11C9D5289D2B24B8 - ((2 * v20) & 0x2393AA513A564970)) ^ v12;
  v24 = v21 + 0xC47040A12180205;
  v25 = 0x6751172B99ED33B6 - v21;
  if (((v18 ^ 0x60994D2C0A4F884) & v24) != 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = v22;
  }

  v27 = v17 ^ v19;
  v28 = ((v18 ^ 0x60994D2C0A4F884) - 0x73981B35AC0535BBLL + v26) ^ v15 & 0xFFF7FFFFFFFFFFFFLL;
  v29 = (v17 ^ v19 ^ 0x3CD4ACD7470966D2) << (v10 & 0x24 ^ 0x24) << (v10 & 0x24);
  v30 = v27 >> 19;
  v31 = ((v27 >> 28) | (v27 << 45)) ^ v27 ^ v29;
  v32 = v30 & 0x396EB864796;
  v33 = (((v23 << 25) ^ 0x626B7FDDE0000000) + 0x15F8061506E8BA3DLL - ((2 * ((v23 << 25) ^ 0x626B7FDDE0000000)) & 0x2BF00C2A0C000000)) ^ 0x15F8061506E8BA3DLL;
  v34 = v31 & 0xB22B6396EB864796;
  v35 = v31 & 0x4DD49C691479B869 ^ v30 & 0x1C691479B869;
  v36 = ((v23 ^ 0xFC0C0EA2F29303D1 ^ (((v23 >> 39) ^ (v23 >> 61) ^ 0x9E61EF) - ((2 * ((v23 >> 39) ^ (v23 >> 61) ^ 0x9E61EF)) & 0x259DA42) - 0x4CC307EC38D312DFLL)) + v33 - 2 * (v33 & (v23 ^ 0x4F30F6B135BFEEF0))) ^ (8 * v23);
  *(&v38 + 1) = v28 ^ 0x2AD4;
  *&v38 = v28 ^ 0xFE929044E4EA0000;
  v37 = v38 >> 17;
  v39 = ((v18 ^ (v18 >> 1) ^ (v18 << 58) ^ 0x9D669E0BF1CB0878) + ((v18 >> 6) ^ 0xF913AFCA85C83ELL) - 2 * ((v18 ^ (v18 >> 1) ^ 0x1669E0BF1CB0878) & ((v18 >> 6) ^ 0xF913AFCA85C83ELL))) ^ ((~v18 << 63) | 0x7B0DA603043A4595);
  *(&v38 + 1) = v28 ^ 0x2D4;
  *&v38 = v28 ^ 0xFE929044E4EA2800;
  v40 = v36 ^ 0x491F6D36F70D4A87 ^ v39;
  v41 = (v36 ^ 0x86784A765200887FLL) & (v39 ^ 0xDAFCFED5CE142771) ^ v36 & 0xA1F158D6CA2E62E4;
  v42 = v19 ^ (v19 << 23) ^ (v19 >> 7) ^ ((v19 >> 41) | (v19 << 57));
  v43 = (v38 >> 10) ^ v28 ^ v37;
  v44 = v43 ^ 0x83003766B0DD9C39;
  v45 = (v35 | v34 ^ v32) ^ v42;
  v46 = v45 ^ 0xA25207603368728DLL;
  v47 = (v41 ^ 0x8070485642000064) + (v45 ^ 0xA25207603368728DLL);
  v48 = v43 ^ 0x83003766B0DD9C39 ^ v42;
  v49 = v43 ^ 0x16D6FBB1B15D52BLL;
  v50 = (v40 ^ 0xB46A8143A137876DLL) & (v43 ^ 0xFE929044E4EA2AD4);
  v51 = (v41 ^ 0x70485642000064) & (v45 ^ 0x225207603368728DLL);
  v52 = (v36 ^ 0x7987B589ADFF7780) & (v45 ^ 0x5DADF89FCC978D72) ^ v48;
  v53 = v47 - 2 * v51 + 0x5CFCCC278EAE57 - ((2 * (v47 - 2 * v51)) & 0xB9F9984F1D5CAELL);
  v54 = v53 ^ (v50 + 0x5CFCCC278EAE57 - ((2 * v50) & 0xB9F9984F1D5CAELL));
  v55 = (v54 + 0x3098D8BF5AF23D08 + (~(2 * v54) | 0x9ECE4E814A1B85F1)) ^ v36 ^ 0x491F6D36F70D4A87;
  v56 = v40 ^ v49 & (v42 ^ 0xB25CEC2E2CB131CALL);
  v57 = ((v53 ^ v52) << 36) ^ ((v53 ^ v52) >> 19);
  v58 = (((v48 ^ 0x3031B4F3877978D8) & v46) - ((2 * ((v48 ^ 0x3031B4F3877978D8) & v46)) & 0x78B5EE4F09A1998ALL) + 0x3C5AF72784D0CCC5) ^ v56 ^ 0x77CF899BDA18B457;
  v59 = (v58 - ((2 * v58) & 0xFB254E44A86F6DDALL) + 0x7D92A7225437B6EDLL) ^ v44;
  *(&v38 + 1) = v57 ^ 0x4B01B1843F3;
  *&v38 = v57 ^ 0xF9A6400000000000;
  v60 = v38 >> 44;
  *(&v38 + 1) = v60 ^ 0xA3BC;
  *&v38 = v60 ^ ((v53 ^ v52) >> 8) ^ 0xD445B6FA5D700000;
  v61 = v38 >> 20;
  *&v38 = __ROR8__(v59, 35);
  v62 = (v38 & 0xFFFFFF801FFFFFFFLL ^ 0xF85549800F3F5028) + 0x55D48338D3C4ED49 - 2 * ((v38 & 0xFFFFFF801FFFFFFFLL ^ 0xF85549800F3F5028) & 0x55D4830013C4ED4BLL ^ (v59 >> 35) & 2);
  v63 = (v62 ^ 0x55D48338D3C4ED49) + ((v59 << 39) ^ 0x9B7877AD25C4922DLL) - 2 * ((v62 ^ 0x55D4832801C48009) & ((v59 << 39) ^ 0x1B7877AD25C4922DLL));
  v64 = ((v52 << 57) ^ 0x7600000000000000) - ((2 * ((v52 << 57) ^ 0x7600000000000000)) & 0xEFFFFFFFFFFFFFFFLL);
  v65 = (v59 & 0xFFFFFFFFFE000000 ^ ((v63 - ((2 * v63) & 0x4C757FF26D6531E6) + 0x263ABFF936B298F3) << 25)) & 0xFFFFFFFFFE000000 | ((v63 - ((2 * v63) & 0x4C757FF26D6531E6) + 0x263ABFF936B298F3) >> 39);
  v66 = v55 ^ (v55 >> 39) ^ (v55 >> 61) ^ (8 * v55) ^ (v55 << 25);
  v67 = (((v56 >> 1) ^ (v56 << 58) ^ 0xC9753674D812E9FCLL) - ((2 * ((v56 >> 1) ^ (v56 << 58) ^ 0xC9753674D812E9FCLL)) & 0x7738615B74B30806) + 0x3B9C30ADBA598403) ^ v56 ^ v66;
  v68 = (v61 ^ ((v53 ^ v52) << 45) ^ 0x4C9F200000000000) - 2 * ((v61 ^ ((v53 ^ v52) << 45) ^ 0x4C9F200000000000) & 0x5E21A0E4C0315D3BLL ^ v61 & 0x20) - 0x21DE5F1B3FCEA2E5;
  v69 = (v52 >> 7) ^ (v52 >> 41) ^ (v52 << 23) ^ (0x8222051D9C0D77ELL - v64) & 0x7200000000000000 ^ (v64 - 0x8222051D9C0D77FLL) & 0x8C00000000000000;
  v70 = v69 ^ v52;
  v71 = (((v67 & 0x4D12B5F2E9E966F4 ^ 0x400235E0090926E4 | (v56 >> 6) & 0x112B5F2E9E966F4 ^ 0x102A1B2A0C00644) ^ (v67 ^ 0x235E0090926E4) & ((v56 >> 6) & 0x112B5F2E9E966F4 ^ 0x102A1B2A0C00644) | v67 & 0xB2ED4A0D1616990BLL ^ (v56 >> 6) & 0x2ED4A0D1616990BLL) ^ 0x906D4A080200090BLL) - ((2 * (((v67 & 0x4D12B5F2E9E966F4 ^ 0x400235E0090926E4 | (v56 >> 6) & 0x112B5F2E9E966F4 ^ 0x102A1B2A0C00644) ^ (v67 ^ 0x235E0090926E4) & ((v56 >> 6) & 0x112B5F2E9E966F4 ^ 0x102A1B2A0C00644) | v67 & 0xB2ED4A0D1616990BLL ^ (v56 >> 6) & 0x2ED4A0D1616990BLL) ^ 0x906D4A080200090BLL)) & 0x279CA1CE3B7F42ALL);
  v72 = ((v59 >> 17) | (v59 << 54)) ^ (v59 << 47) ^ v65;
  *(&v38 + 1) = (v71 - 0x7CC31AF18E2405EBLL) ^ 0x13CE50E71DBFA15;
  *&v38 = v71 + 0x13CE50E71DBFA15;
  v73 = v38 >> 57;
  v74 = v69 ^ v53 ^ v68;
  v75 = ((v72 ^ 0x62B4D1AF3F732A94) - (v70 ^ 0x42EA273DBFBE1A5ELL ^ v72)) ^ ((v70 ^ 0xDFA1096D7F32CF35) + 1);
  v76 = (v70 ^ 0xA3630281D573D644 ^ (v75 - ((2 * v75) & 0x67BE826AB7DCD1CLL) - 0x7CC20BECAA411972)) + (v72 ^ 0x62B4D1AF3F732A94);
  v77 = v76 + 0x6AC18F88C24BD3B4 - ((2 * v76) & 0xD5831F118497A768);
  *(&v38 + 1) = v73 ^ (v56 << 6) ^ 0x64;
  *&v38 = v73 ^ 0xF26B2BD4003FDD00;
  v78 = (v38 >> 7) - ((2 * (v38 >> 7)) & 0x48F06C6596D82026) + 0x24783632CB6C1013;
  v79 = (v74 ^ 0x52BBBC0A6BFBDF21) & (v66 ^ 0xB9502BAD0775E91FLL);
  v80 = (v78 ^ 0xED9CE065636C6FA9) & (v66 ^ 0x46AFD452F88A16E0) ^ v74;
  v81 = v77 ^ v79;
  v82 = v80 ^ v77 ^ v79;
  v83 = v80 ^ 0x10542A84ABB49FD1 ^ (((v78 ^ 0x12631F9A9C939056) & (v72 ^ 0x62B4D1AF3F732A94)) - ((2 * ((v78 ^ 0x12631F9A9C939056) & (v72 ^ 0x62B4D1AF3F732A94))) & 0x7A20D2E27F617E1ELL) - 0x42EF968EC04F40F1);
  v84 = (v83 - ((2 * v83) & 0xB432CA25157BB5FELL) + 0x5A1965128ABDDAFFLL) ^ v66;
  v85 = (v77 ^ 0x6AC18F88C24BD3B4) & (v72 ^ 0x9D4B2E50C08CD56BLL) ^ v78;
  *(&v38 + 1) = v82 ^ 0x6D839;
  *&v38 = v82 ^ 0xA32EE49EDBA80000;
  v86 = (((v38 >> 19) ^ (v82 << 36) ^ 0xBAED839000000000) - 2 * (((v38 >> 19) ^ (v82 << 36) ^ 0xBAED839000000000) & 0x3E7B49FA7534DE39 ^ (v38 >> 19) & 8) - 0x4184B6058ACB21CFLL) ^ v82;
  *(&v38 + 1) = ((v38 >> 19) - 2 * ((v38 >> 19) & 0x7534DE39 ^ (v38 >> 19) & 8) + 1966399025) ^ v82 ^ 0xD3;
  *&v38 = v86 ^ 0x106A8882F526CA00;
  v87 = v38 >> 8;
  *(&v38 + 1) = v87 ^ 0xD3F25E65BBCCCLL;
  *&v38 = v87 ^ 0xDB00000000000000;
  v88 = v38 >> 56;
  v89 = v84 & 0xFFFFFFFFBFFFFFFFLL ^ __ROR8__(v84, 39) ^ (8 * v84) ^ (v84 & 0x40000000 | (v84 >> 61));
  *(&v38 + 1) = v81 ^ 0x1F;
  *&v38 = v81 ^ 0xDD9E4A23417D1A80;
  v90 = v85 ^ (v85 << 58) ^ (v85 >> 1) ^ (v85 << 63) ^ (v85 >> 6) ^ 0x56E2D144E34F7934 ^ v89;
  v91 = ((v38 >> 7) - ((2 * (v38 >> 7)) & 0x6FA73CB5E12D7E54) - 0x482C61A50F6940D6) ^ v81;
  *(&v38 + 1) = v91 ^ 0x1D479B1EBA5B5;
  *&v38 = v91 ^ 0x6A4C000000000000;
  v92 = v38 >> 49;
  *(&v38 + 1) = v92 ^ 0x370F;
  *&v38 = v92 ^ 0x97E49BAEE23C0000;
  v93 = (v38 >> 15) ^ __ROR8__(v81, 41) ^ (v82 >> 28) ^ v88;
  v94 = ((v90 - ((2 * v90) & 0x9D9AE922C11D62C2) - 0x31328B6E9F714E9FLL) ^ 0x204A10DFC6DC248DLL) & (v89 ^ 0x47B7365BFCFCD976) ^ v89 & 0xEE87644EA65295ECLL;
  *(&v38 + 1) = v94 ^ 0x44AA4509164;
  *&v38 = v94 ^ 0x4687200000000000;
  v95 = v38 >> 43;
  *(&v38 + 1) = v93 ^ 0x14E4A5D42B0;
  *&v38 = v93 ^ 0x7FBF900000000000;
  v96 = v95 ^ ((v38 >> 43) - ((2 * (v38 >> 43)) & 0x1D7B9E604EB5EDELL) - 0x7F14230CFD8A5091);
  STACK[0xF48] = (v96 ^ 0x2C14680C2408E6A1) - 2 * ((v96 ^ 0x2C14680C2408E6A1) & 0x4CFD7710A7CBAB14 ^ v96 & 4) - 0x330288EF583454F0;
  v97 = LODWORD(STACK[0xF78]) - 1123517118;
  if (v6 != v97 < 0xB2B0836)
  {
    v98 = v6;
  }

  else
  {
    v98 = LODWORD(STACK[0xF50]) > v97;
  }

  return (*(STACK[0xF58] + 8 * (v1 ^ (246 * v98))))();
}

uint64_t sub_2444DC13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0xF78]) = a5;
  LODWORD(STACK[0xF70]) = *(&STACK[0x2D0C] + 2283 * (v5 ^ 0x7C40B54C) + a5 - 1310900343);
  return (*(STACK[0xF58] + 8 * ((52499 * (v5 < 0x35BC9267)) ^ (v5 - 2084597881))))();
}

uint64_t sub_2444DC1D4@<X0>(unsigned int a1@<W5>, unsigned int a2@<W8>)
{
  v4 = v2 + (((v3 ^ 0x66A6) + 4875) ^ 0x4DFEB60C);
  v5 = (a2 < a1) ^ (v4 < a1);
  v6 = a2 > v4;
  if (v5)
  {
    v6 = a2 < a1;
  }

  return (*(STACK[0xF58] + 8 * ((467 * !v6) ^ v3)))();
}

uint64_t sub_2444DC9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X8>)
{
  v10 = a3 >> 61;
  v11 = STACK[0xF70];
  v12 = 2 * STACK[0xF70];
  STACK[0xF78] = v12 ^ 0x4AACu;
  v13 = v3 ^ 0x2F85503DCC580DB3;
  v14 = ((2 * (v10 ^ 5) + 10) & 0xF7 ^ 0x9F) + (v10 ^ 5) + (v12 ^ 0xD7);
  v15 = (v7 >> 61) ^ 1;
  v16 = (v7 >> 61) ^ 6;
  v17 = STACK[0xC88];
  *(v17 + 99) = BYTE2(v9) ^ 0x53;
  v18 = STACK[0xC10];
  v18[3] = BYTE2(v5) ^ 0x49;
  v18[42] = BYTE1(v9) ^ 0x28;
  v19 = STACK[0xF30];
  v19[152] = BYTE1(v5) ^ 0x1C;
  *(v17 + 78) = BYTE3(v9) ^ 0xA2;
  v19[254] = BYTE4(v9) ^ 0xCE;
  if ((v16 & v15) != 0)
  {
    v20 = v14;
  }

  else
  {
    v20 = v9 ^ 0xAF;
  }

  v21 = STACK[0xC80];
  v21[48] = BYTE5(v9) ^ 2;
  v19[312] = HIBYTE(a1) ^ 0x49;
  *(v17 + 33) = HIBYTE(v5) ^ 0x20;
  v19[364] = v5 ^ 0x20;
  v18[28] = BYTE6(a1) ^ 0xE0;
  *(v17 + 47) = BYTE6(v5) ^ 0x10;
  v18[23] = v20 ^ 0xBB;
  v18[39] = BYTE3(v5) ^ 0x40;
  v21[109] = BYTE4(v5) ^ 0x18;
  v18[11] = v4 ^ 0xE9;
  v22 = (((STACK[0xF48] >> 21) ^ 0x1E) + 3) & 0x10;
  v19[27] = BYTE5(v5) ^ 3;
  v23 = *(a2 + (((v4 >> 7) & 0xFE | (v4 >> 15) & 1) ^ 0xF7));
  v21[124] = BYTE3(v4) ^ 0x9E;
  *(v17 + 75) = v3 ^ 0x44;
  v18[32] = BYTE4(v4) ^ 0xD7;
  v19[3] = ((v3 ^ 0xCC580DB3) >> 24) ^ 0xB3;
  v18[44] = BYTE2(v13);
  v18[40] = 55 * (v23 ^ 0x80);
  v21[216] = BYTE6(v4) ^ 0x1C;
  v21[2] = HIBYTE(v4) ^ 0x8C;
  *(v17 + 101) = BYTE4(v13) ^ 0x58;
  *(v17 + 38) = BYTE5(v4) ^ 0xAE;
  v18[10] = (v4 ^ 0x8C1CAED79EAEE8E9) >> v22 >> (v22 ^ 0x10u);
  v18[19] = BYTE1(v13) ^ 0xB5;
  v24 = *(v6 + (((v3 >> 35) & 0xE0 | (v13 >> 43) & 0x1F) ^ 0xEB));
  v21[3] = HIBYTE(v13) ^ 0xDA;
  v25 = 16 * (v24 ^ 4) * (v24 ^ 4) - (((v24 ^ 4) * (v24 ^ 4u)) >> 1 << 6) + 104;
  v26 = v25 ^ 0x68;
  v27 = v24 ^ 0xA4;
  v28 = v25 ^ 0x68 | v24 ^ 0xA4;
  v29 = v25 ^ 0x97;
  v30 = v24 ^ 0x5B;
  v31 = v26 & (v24 ^ 0x24);
  if (v3 == 0xF53F4F657F58B844)
  {
    v32 = 0;
  }

  else
  {
    v32 = v26;
  }

  v19[405] = HIBYTE(v8) ^ 0xC9;
  v18[21] = BYTE1(v8) ^ 0xA3;
  *(v17 + 89) = v8 ^ 0x8A;
  *v17 = (v27 ^ v32 | v26) ^ 0x50 ^ (v30 + v29 + v28 + 2 * v31 + 2);
  v21[50] = BYTE6(v13) ^ 0xBA;
  *(v17 + 42) = BYTE6(v8) ^ 0xEF;
  *(v17 + 65) = BYTE4(v8) ^ 0x6A;
  v19[84] = BYTE2(v8) ^ 0x69;
  v21[58] = BYTE3(v8) ^ 0xE7;
  *(v17 + 73) = BYTE5(v8) ^ 0x93;
  *(v17 + 28) = (LODWORD(STACK[0xFAC]) ^ 0x18D84E26) + 1;
  v33 = *STACK[0xC18];
  v34 = *(v33 + 128) + 416828966 - ((2 * *(v33 + 128)) & 0x31B09C4C);
  v35 = *(&off_278E1E490 + v11 - 15652);
  STACK[0xF30] = v35 + 803;
  STACK[0xF60] = v35 + 8;
  STACK[0xF48] = v33;
  STACK[0xF18] = v35 + 533;
  LODWORD(STACK[0xFAC]) = v34;
  STACK[0xF10] = v35 - 4;
  STACK[0xF50] = (v34 ^ 0x18D84E26u) << 32;
  return (*(STACK[0xF58] + 8 * v11))(119);
}

uint64_t sub_2444DEFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0xF78];
  v9 = (STACK[0xF78] + 2146852608) & 0x80096FFD;
  STACK[0xF70] = v6;
  v10 = *(&STACK[0x2D0C] + (v9 ^ 0xFFFFFFFF96133896) + v6);
  LODWORD(STACK[0xF68]) = v10;
  return (*(STACK[0xF58] + 8 * v8))(a1, a2, a3, a4, a5, a6, (v10 - 1597643233), (v7 + 8));
}

uint64_t sub_2444DF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v13 = a7 < a8;
  if (v13 == v12 + v11 < (v10 ^ v9) - 125 + v8)
  {
    v13 = v12 + v11 < a7;
  }

  return (*(STACK[0xF58] + 8 * ((35 * !v13) ^ v10)))();
}

uint64_t sub_2444DF0D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  v8 = (v6 - 614653451) ^ v7;
  v9 = __clz(v8 | ((v7 + 8720) | 0xD01) ^ a3);
  return (*(STACK[0xF58] + 8 * ((2 * (a6 & ~((v8 & v7) >> (v9 ^ 0x1F)))) & 0xFFFFFFFB | (4 * ((((v8 & v7) >> (v9 ^ 0x1F)) & 1) == 0)) | v7 ^ a5)))();
}

uint64_t sub_2444DF81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v12 = v11;
  v13 = (v9 >> ((v11 ^ 0x40u) - 90)) ^ 0x8F;
  v14 = STACK[0xC10];
  v14[8] = BYTE4(v9) ^ 0x8F;
  v15 = STACK[0xC88];
  v15[62] = v9 ^ 0x72;
  v15[83] = BYTE5(v9) ^ 0xC4;
  v16 = STACK[0xF48];
  v16[355] = BYTE3(v9) ^ 0x86;
  v17 = STACK[0xC80];
  *(v17 + 217) = BYTE2(v9) ^ 0xC5;
  v16[42] = v13;
  v15[100] = BYTE6(v9) ^ 0xCC;
  v18 = STACK[0xF18];
  v19 = *(STACK[0xF18] + (((HIBYTE(v9) ^ 0xD5) - 44) ^ 0xEELL));
  v20 = ((a8 >> 23) & 0x19A ^ 0x12) + (BYTE3(a8) ^ 0xDF8FB6D6);
  v14[47] = BYTE2(a8) ^ 0x63;
  *(v17 + 62) = BYTE1(a8) ^ 0x39;
  v15[52] = a8 ^ 0x2D;
  v14[26] = v19 ^ 0x23;
  v21 = *(STACK[0xF30] + (111 * v20 + 29) - ((94 * v20 + 58) & 0x6E) + 55);
  v16[175] = BYTE5(a8) ^ 0x97;
  *(v17 + 181) = BYTE4(a8) ^ 5;
  *(v17 + 94) = ((v21 + 13) ^ 0x4B) - 24;
  v22 = STACK[0xF10] + 268;
  v23 = *(v22 + (((a8 >> 41) & 0x80 | (a8 >> 49) & 0x7F) ^ 0x6A));
  v15[14] = HIBYTE(a8) ^ 0x71;
  HIDWORD(v25) = v23 + 5;
  LODWORD(v25) = (v23 << 24) - 452984832;
  v24 = v25 >> 28;
  v15[23] = a7 ^ 0x6B;
  HIDWORD(v25) = v24 ^ 3;
  LODWORD(v25) = (v24 ^ 0x70) << 24;
  v26 = v25 >> 28;
  HIDWORD(v25) = v26;
  LODWORD(v25) = ((v26 - ((2 * v26) & 0x50) - 88) ^ 0xA8) << 24;
  v27 = (v25 >> 25) - ((2 * (v25 >> 25)) & 0xFFFFFFC3) + 97;
  HIDWORD(v25) = v27 ^ 0x61;
  LODWORD(v25) = v27 << 24;
  v28 = (v25 >> 31) + (~(2 * (v25 >> 31)) | 0x19) - 12;
  v16[388] = BYTE1(a7) ^ 0x9B;
  v16[396] = ((2 * v28) & 0x62 ^ 0x20) + (v28 ^ 0x63);
  v29 = STACK[0xF60];
  v30 = *(STACK[0xF60] + (((a7 >> 9) & 0x80 | (a7 >> 17) & 0x7F) ^ 0xA0));
  v14[31] = BYTE3(a7) ^ 0xE;
  v15[34] = BYTE5(a7) ^ 0x3E;
  v16[251] = (-95 * v30) ^ 0xD2;
  v16[32] = BYTE4(a7) ^ 0xF6;
  v31 = *(v18 + ((((a7 >> 47) & 0xA8 ^ 0xA0) + (BYTE6(a7) ^ 0xC)) ^ 0xEELL));
  *(v17 + 17) = BYTE4(v10) ^ 0xC4;
  v16[189] = v10 ^ 0x2A;
  v14[27] = HIBYTE(a7) ^ 0x74;
  *(v17 + 73) = BYTE2(v10) ^ 0xCF;
  *(v17 + 103) = BYTE1(v10) ^ 0x89;
  v14[37] = v31 ^ 0x23;
  v15[60] = BYTE5(v10) ^ 0x9A;
  v16[4] = BYTE3(v10) ^ 0xA8;
  v32 = *(v29 + (((v10 >> 41) & 0x80 | (v10 >> 49) & 0x7F) ^ 0xEC));
  v16[337] = v8 ^ 0xC6;
  v15[10] = BYTE2(v8) ^ 0x5E;
  *(v17 + 151) = BYTE3(v8) ^ 0xB3;
  v16[30] = BYTE1(v8) ^ 0x51;
  v16[77] = (-95 * v32) ^ 0xD2;
  v16[386] = HIBYTE(v10) ^ 0xBF;
  LOBYTE(v22) = *(v22 + (((v8 >> 25) & 0x80 | (v8 >> 33) & 0x7F) ^ 0x80)) - 27;
  v15[90] = BYTE6(v8) ^ 0xD5;
  v16[62] = BYTE5(v8) ^ 0x87;
  *(v17 + 63) = (v22 ^ 0x16) - 79;
  v15[36] = (-95 * *(v29 + (((v8 >> 49) & 0x80 | (v8 >> 57)) ^ 0xA2))) ^ 0xD2;
  v33 = STACK[0xC18];
  *(*STACK[0xC18] + 128) = (LODWORD(STACK[0xFAC]) ^ 0x18D84E26) + 1;
  v34 = ((2 * *(v17 + 104)) & 0xFEEE985E) + (*(v17 + 104) ^ 0xFF774C2F);
  LODWORD(STACK[0xFB4]) = v34 + 2130493440;
  v35 = *v33;
  v36 = *(&off_278E1E490 + (v12 ^ 0x2FFC));
  STACK[0xF08] = v36 + 550;
  STACK[0xF10] = v36 + 279;
  STACK[0xF18] = v36 + 821;
  v37 = v34 + 8958929;
  STACK[0xF30] = v35;
  v38 = ((2 * v37) & 0xBFFFEE4E ^ 0xA) + (v37 ^ 0xDFFFF722) + 536870914;
  STACK[0xF68] = v37 << 32;
  v39 = v38 + (v37 ^ (-8958929 - v34) ^ (v38 + 2258)) + 2263;
  v40 = *(STACK[0xF58] + 8 * v12);
  LODWORD(STACK[0xF60]) = v39;
  LODWORD(STACK[0xF50]) = v39 - 705300163;
  return v40();
}

uint64_t sub_2444E0014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xF70]) = LODWORD(STACK[0xF60]) > 0x2A0A06C2;
  LODWORD(STACK[0xF48]) = (a8 - 21292) | 0x1488;
  v8 = LODWORD(STACK[0xF78]) - 1526664495;
  v9 = STACK[0xF70];
  if (LODWORD(STACK[0xF70]) == v8 < 0xD5F5F93D)
  {
    v9 = v8 < LODWORD(STACK[0xF50]);
  }

  return (*(STACK[0xF58] + 8 * (a8 ^ (195 * (v9 ^ 1)))))();
}

uint64_t sub_2444E2074(uint64_t a1, uint64_t a2)
{
  v9 = v3 < v8;
  v10 = ((v4 + 303641263) & 0xEDE6DFFE ^ v5) + v2;
  v11 = v9 ^ (v10 < v8);
  v12 = v10 < v3;
  if (!v11)
  {
    v9 = v12;
  }

  return (*(v7 + 8 * ((v9 * v6) ^ v4)))(a1, a2, v12);
}

uint64_t sub_2444E286C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = STACK[0xF48];
  v15 = STACK[0xF30];
  v15[350] = v11 ^ 0x4E;
  v16 = *(v12 + (((v11 >> ((7 * (v14 ^ 0xB9)) ^ 0x1Au)) & 1 | ((v14 + 6761) - 11813) & (v11 >> 7)) ^ 0x49)) ^ 0x3D;
  v15[122] = BYTE2(v11) ^ 0x23;
  v17 = STACK[0xC88];
  v17[45] = v16;
  v18 = (HIBYTE(v7) ^ 0x5D) - ((2 * (HIBYTE(v7) ^ 0x5D) + 412) & 0x2AE) + 1445003301;
  LOBYTE(v11) = *(STACK[0xF08] + ((-31 * (BYTE3(v11) ^ 0xA4)) ^ 0x8ALL)) ^ 0x42;
  v19 = STACK[0xC80];
  *(v19 + 18) = v7 ^ 0x9A;
  *(v19 + 195) = BYTE5(v10) ^ 0x87;
  *(v19 + 5) = BYTE4(v11) ^ 0x6E;
  v17[96] = v11 + 43;
  v20 = ((v7 >> 1) & 0x80 | (v7 >> 9)) ^ 0x95;
  v21 = v20 + 754604752 - 2 * (v20 & 0xD7 ^ (v7 >> 9) & 2);
  *(v19 + 207) = HIBYTE(v10) ^ 0xBF;
  v17[15] = BYTE6(v10) ^ 0x86;
  v22 = STACK[0xF10];
  v17[79] = ((v21 + 5) ^ 0x4E ^ *(STACK[0xF10] + ((v21 + 5) ^ 0x2CFA5AD0u))) - 85;
  v17[32] = BYTE2(v7) ^ 0x7D;
  v23 = STACK[0xF18];
  v24 = *(STACK[0xF18] + (((HIBYTE(v7) ^ 0x5D) - ((2 * (HIBYTE(v7) ^ 0x5D) - 100) & 0xAE) + 37) ^ 0xBDLL)) ^ ((v18 ^ 0x42) - (v18 ^ 0xA6));
  v15[240] = BYTE5(v8) ^ 0x2C;
  HIDWORD(v25) = v24 ^ 1;
  LODWORD(v25) = (v24 ^ 0x5C) << 24;
  v17[55] = BYTE4(v8) ^ 0xF;
  v17[86] = v25 >> 26;
  v15[363] = BYTE6(v8) ^ 0x88;
  v26 = *(v12 + (((v8 >> 55) & 0xFE | ((0x7877D3F0A33BA547 - a4) >> 63)) ^ 0x6D));
  v17[106] = v9 ^ 0xBE;
  v17[20] = BYTE3(v9) ^ 0x5B;
  v17[7] = BYTE4(v9) ^ 0x60;
  *(v19 + 202) = v26 ^ 0x3D;
  v15[34] = BYTE2(v9) ^ 0x96;
  v17[85] = BYTE5(v9) ^ 0x73;
  v17[76] = BYTE1(v9) ^ 0x9E;
  v27 = ((v9 >> 49) & 0x7F | (v9 >> 41) & 0x80) ^ 0x3E;
  v28 = v27 - ((2 * v27) & 0xEEEEEEEE) - 580435337;
  v29 = (((v28 ^ 0xDD674277) - (v28 ^ 0xDD6742C8)) ^ 0xFFFFFFFE) + (v28 ^ 0xDD674277) - 461151136 - ((2 * ((((v28 ^ 0xDD674277) - (v28 ^ 0xDD6742C8)) ^ 0xFFFFFFFE) + (v28 ^ 0xDD674277))) & 0xC906C9B4) + 122;
  v30 = ((2 * ((HIBYTE(v9) ^ 0xCC) - ((2 * (HIBYTE(v9) ^ 0xCC) + 412) & 0xFFFFFFE7) + 835585217)) & 0x108 ^ 0xFFFFFEFF) + (((HIBYTE(v9) ^ 0xCC) - ((2 * (HIBYTE(v9) ^ 0xCC) - 100) & 0xE7) - 63) ^ 0xF3);
  v31 = v30 - ((2 * v30 + 626852106) & 0x2418C7BEu) - 990190492;
  v15[268] = (v29 ^ *(v22 + (v29 ^ 0xE4836460)) ^ 0xFE) - 85;
  v32 = *(v23 + (v31 ^ 0xA0E2E3B1));
  v17[81] = BYTE1(a1) ^ 0x62;
  *(v19 + 172) = a1 ^ 0x68;
  LODWORD(v31) = v32 ^ ((v31 ^ 0x4E) - (v31 ^ 0xAA));
  v15[163] = BYTE2(a1) ^ 0x99;
  HIDWORD(v25) = v31 ^ 1;
  LODWORD(v25) = (v31 ^ 0x5C) << 24;
  *(v19 + 175) = BYTE4(a1) ^ 0xAC;
  v33 = (WORD1(a7) ^ 0xD1A8) - ((2 * (WORD1(a7) ^ 0xD1A8) + 412) & 0x39C72) - 1835938041;
  v34 = ((a1 >> 55) & 1 | (a1 >> 47) & 0xFE) ^ 0x89;
  *(v19 + 219) = BYTE5(a1) ^ 0xC6;
  *(v19 + 97) = v25 >> 26;
  v15[345] = BYTE3(a1) ^ 0x4D;
  v35 = *(v12 + ((v34 - ((2 * v34) & 0x1A8) + 1646941140) ^ 0x622A53D4) + ((2 * (v34 - ((2 * v34) & 0x1A8) + 1646941140)) & 0xC6 ^ 0xFFFFFF7F) + 100) ^ 0x3D;
  v17[107] = a7 ^ 0xB3;
  v15[417] = BYTE1(a7) ^ 0x1A;
  v15[328] = v35;
  *(v19 + 66) = HIBYTE(a1) ^ 0x2D;
  v36 = (v33 ^ 0x2C) - (v33 ^ 0xC8);
  v37 = *(v23 + (((BYTE2(a7) ^ 0xA8) - ((2 * (BYTE2(a7) ^ 0xA8) - 100) & 0x72) + 7) ^ 0xD3));
  v17[92] = BYTE4(a7) ^ 0x1D;
  *(v19 + 91) = BYTE6(a7) ^ 0xE2;
  HIDWORD(v25) = v37 ^ v36 ^ 1;
  LODWORD(v25) = (v37 ^ v36 ^ 0x5C) << 24;
  v15[8] = BYTE5(a7) ^ 0xF;
  v17[71] = v25 >> 26;
  v17[22] = BYTE3(a7) ^ 0xD1;
  v15[307] = HIBYTE(a7) ^ 0xBE;
  *(v19 + 104) = LODWORD(STACK[0xFB4]) - 2121534510;
  return (*(v13 + 8 * (v14 ^ (101 * (LODWORD(STACK[0xF28]) != 261766274)))))();
}

uint64_t sub_2444E2DC0(uint64_t a1, int a2)
{
  LODWORD(STACK[0xF8C]) = ((a2 + 1096675026) & 0xBEA1EF1B ^ 0xFEEBC6AF) + (*(v2 + 28) ^ 0x7FF5FF67) + ((((a2 - 12002) | 0x290E) ^ 0xFFEBD781) & (2 * *(v2 + 28)));
  if (STACK[0xF40])
  {
    v4 = STACK[0xF38] == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  v6 = *(v3 + 8 * (a2 ^ (8 * (v5 ^ 1))));
  LODWORD(STACK[0xF18]) = v5;
  return v6();
}

uint64_t sub_2444E2E58@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v8 = *v7;
  STACK[0xF78] = (a2 - 805046479) | 0x26C3C920u;
  v9 = *(a1 + 8 * (a2 - 1679));
  STACK[0xF08] = v9 + 534;
  STACK[0xF60] = v9 + 4;
  STACK[0xF10] = v8;
  STACK[0xF50] = (v2 + v3) << 32;
  v10 = v4 ^ v5;
  if ((v4 ^ v5) <= 1)
  {
    v10 = 1;
  }

  v11 = *(v6 + 8 * a2);
  LODWORD(STACK[0xF48]) = v10 + 1028118023;
  return v11(115766871);
}

uint64_t sub_2444E33E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (a8 - 154681263);
  v14 = STACK[0xF68];
  v15 = ~v12 & 0x400000;
  LODWORD(STACK[0xF68]) = (a8 + 5129) | 0x280;
  STACK[0xF78] = v13;
  v16 = (v9 ^ 0x7E568416374A58FELL) - v15 - 2 * ((v13 ^ 0x59713C1A1EC80D79) & ((v9 ^ 0x7E568416374A58FELL) - v15) ^ (v9 ^ 0x7E568416374A58FELL) & 0x1A) + 0x59713C1AE80FC001;
  v17 = v11 ^ ((v14 - 434564449) + STACK[0xF50]);
  v18 = v17 ^ v8;
  if ((((((a8 + 5129) | 0x280) - 9115) ^ v9) & v15) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v9 ^ 0x2727B80CDF4598FFLL ^ v15;
  }

  v20 = a7 ^ v12;
  v21 = v19 ^ v12 & 0xFFFFFFFFFFBFFFFFLL;
  v22 = (a7 ^ v12 ^ 0xAC2DC9522390D844) & (v17 ^ 0x49408070691920C3);
  *(&v24 + 1) = v21 ^ 0x14FEF603D9BB156;
  *&v24 = v21 ^ 0x4444444444444444;
  v23 = v24 >> 57;
  v25 = (v21 ^ 0x4C4271AA202797C6) & (v9 ^ 0x81A97BE9C8B5A701) ^ v9 & 0x90D9ECA1DBC2690;
  *(&v24 + 1) = v23 ^ 0x60;
  *&v24 = v23 ^ 0x494AE2C5C932A500;
  v26 = v24 >> 7;
  v27 = v18 & 0x8000000000000 ^ 0xD7FDF67BDDFF9FADLL;
  *(&v24 + 1) = v18 ^ 0x2BA310;
  *&v24 = v18 ^ 0x2A38799645000000;
  v28 = v24 >> 24;
  v29 = v27 + 0x3ADFBDBDFFB8E3F7;
  v30 = ((v28 << 24) ^ 0x6AC3589963000000) + 0x55A4ADF7B40E67ABLL - ((2 * ((v28 << 24) ^ 0x6AC3589963000000)) & 0xAB495BEF68000000);
  v31 = v20 ^ v26 ^ 0xD9A2A3D114EDABD0;
  v32 = v20 ^ 0x193036149F7FCE9ALL;
  if (v30 == 0x55A4ADF7B40E67ABLL)
  {
    v31 = v32;
  }

  v33 = ((v18 ^ 0x2A387996452BA310 | v17 ^ 0xB6BF7F8F96E6DF3CLL) - 0x544C44BD1529A513 - ((2 * (v18 ^ 0x2A387996452BA310 | v17 ^ 0xB6BF7F8F96E6DF3CLL)) & 0x57677685D5ACB5DALL)) ^ v8;
  v34 = v25 | (0xD7F5F67BDDFF9FACLL - v27);
  v35 = 0xEACBAAB5BBB82351 - v27;
  if (v34 == -1)
  {
    v35 = v29;
  }

  v36 = ((v25 ^ 0x1091AC808B42600) - 0x12D5B439DDB883A4 + v35) ^ v18 & 0xFFF7FFFFFFFFFFFFLL;
  v37 = ((v30 ^ 0x55A4ADF7B40E67ABLL | (v28 >> 40)) ^ 0x953CA7669CFFFFFFLL) & (v9 ^ 0x7E568416374A58FELL);
  v38 = v17 ^ 0xD4AC927ABCB723FDLL ^ (v37 - ((2 * v37) & 0x3BD82415AB5C067CLL) - 0x6213EDF52A51FCC2);
  v39 = (v38 - ((2 * v38) & 0xC3EF433ACB026DCELL) - 0x1E085E629A7EC919) ^ (v33 + 0x4AE200B94310E921 - ((2 * v33) & 0x95C401728621D242)) ^ v32;
  v40 = v21 ^ v22;
  v41 = v36 ^ v9 ^ (((v31 ^ 0x4AE200B94310E921) & (v26 ^ 0x3F6D6A3A746D9AB5)) - ((2 * ((v31 ^ 0x4AE200B94310E921) & (v26 ^ 0x3F6D6A3A746D9AB5))) & 0x35CA1512A7BB2D9ELL) - 0x651AF576AC226931);
  v42 = v39 ^ (v39 >> 39);
  v43 = ((v41 >> 10) & 0x40000 ^ 0x2DDDEDC6EC0EEBFELL) + 2 * ((v41 >> 10) & 0x40000);
  v44 = v43 - 0x10088020006C070;
  *(&v46 + 1) = v42 ^ 2;
  *&v46 = v42 ^ (8 * v39) ^ 0x566CB9CC2139EFB0;
  v45 = v46 >> 3;
  *(&v46 + 1) = v45 ^ 0x162B8FA26E3C742;
  *&v46 = v39 ^ v45 ^ 0xC000000000000000;
  v47 = v43 - 0x2DDDEDC6EC0EEBFELL;
  v48 = (v46 >> 61) ^ (v39 << 25);
  *(&v46 + 1) = v40 ^ 0x1B2EB7DB6D4;
  *&v46 = v40 ^ 0x3D3E680000000000;
  v49 = (v36 << 58) ^ (~v36 << 63) ^ (v36 >> 1) ^ (v36 >> 6);
  v50 = __ROR8__(v41, 10) >> 49;
  v51 = (v46 >> 41) ^ v40;
  v52 = (v40 >> 7) ^ 0x3D4415618EAB4DB9 ^ v51;
  v53 = v51 ^ 0x3D3E69B2EB7DB6D4;
  v54 = v53 - v52;
  v55 = v36 ^ ((v49 ^ 0xE5777741CAED5F4DLL) - 2 * ((v49 ^ 0xE5777741CAED5F4DLL) & 0x109143DE729CC5FFLL ^ v49 & 0x10) - 0x6F6EBC218D633A11) ^ v48;
  v56 = 0x5ABB538BD817178CLL - v43;
  if ((v47 & (v41 ^ 0xCE83F70921BC0000)) != 0)
  {
    v44 = v56;
  }

  *(&v57 + 1) = v50 ^ 0x117A;
  *&v57 = (32 * v41) & 0xFFFFFFFDFFFFFFFFLL ^ (v41 >> 2) ^ 0x4B795B57CBA30000;
  v58 = (v57 >> 15) ^ (v41 << 47) ^ ((v41 ^ 0x3011674DC55647F5) - 0x2CDD65C4EC082B8ELL + v44);
  v59 = (v58 ^ (((v40 >> 7) ^ 0xD1F1DF2422179BD1 ^ ((v54 ^ (((v40 >> 7) ^ 0xFF85832C9A290492) + 1)) - ((2 * (v54 ^ (((v40 >> 7) ^ 0xFF85832C9A290492) + 1))) & 0xA31747EE8F82C178) - 0x2E745C08B83E9F44)) + v53) ^ (v40 << 57) ^ 0x54420AA3D678207CLL) & (v58 ^ 0x3BDF55C2987DF83) ^ v55;
  *(&v57 + 1) = v59 ^ 0x4CD7FABC6;
  *&v57 = v59 ^ 0x672BC94000000000;
  v60 = v57 >> 36;
  *(&v57 + 1) = v60 ^ 0xBF9709;
  *&v57 = v60 ^ 0xD34551CD10000000;
  STACK[0xF30] = v57 >> 28;
  return (*(v10 + 8 * (a8 ^ (60 * (LODWORD(STACK[0xF70]) == LODWORD(STACK[0xF48]))))))();
}

uint64_t sub_2444E5468(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0xF78];
  v10 = (STACK[0xF78] + a4) | 8;
  LODWORD(STACK[0xF70]) = a8;
  LODWORD(STACK[0xF68]) = *(STACK[0xF38] + 4 * (a8 - 1028118024));
  return (*(v8 + 8 * (v9 ^ 0xF6C7DE16 ^ (12927 * (v9 > v10 + 864834051)))))();
}

uint64_t sub_2444E54F4@<X0>(int a1@<W0>, unsigned int a2@<W2>, int a3@<W8>)
{
  v9 = v5 < a2;
  if (v9 == v3 < v8 + a3 + a1 + ((v8 + v4) & 0x2EF8BA7Bu))
  {
    v9 = v3 < v5;
  }

  return (*(v6 + 8 * ((!v9 * v7) ^ v8)))();
}

uint64_t sub_2444E5B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = STACK[0xF68];
  v10 = STACK[0xC10];
  v10[23] = (((LODWORD(STACK[0xF68]) - 82) | 7) + 19) ^ v5;
  v11 = STACK[0xC80];
  v11[48] = BYTE5(v5) ^ 0x7E;
  v12 = STACK[0xF10];
  v12[254] = BYTE4(v5) ^ 0xC9;
  v13 = STACK[0xC88];
  v13[99] = BYTE2(v5) ^ 0xD8;
  v10[42] = BYTE1(v5) ^ 0x4E;
  v13[78] = BYTE3(v5) ^ 0x46;
  v14 = STACK[0xF08];
  v15 = *(STACK[0xF08] + (((v5 >> 41) & 0x80 | (v5 >> 49) & 0x7F) ^ 0x12));
  v16 = v15 & 0x80;
  v17 = v15 << (v8 & 1) << !(v8 & 1);
  v12[312] = HIBYTE(v5) ^ 4;
  v18 = (v17 | (v16 >> 7)) - 2 * ((v17 | (v16 >> 7)) & 0x6F ^ v17 & 4) + 107;
  v12[152] = BYTE1(v6) ^ 0xFC;
  v13[47] = BYTE6(v6) ^ 0x4C;
  v10[3] = BYTE2(v6) ^ 0x5D;
  v11[109] = BYTE4(v6) ^ 0xDA;
  v10[28] = (v18 ^ (-48 * (v18 ^ 0x6B) - ((-96 * (v18 ^ 0x6B)) & 0xC0) + 107) ^ 0xF) - 37;
  v10[39] = BYTE3(v6) ^ 0xFD;
  v10[40] = BYTE1(a3) ^ 0x62;
  v12[364] = v6 ^ 0x1F;
  v12[27] = BYTE5(v6) ^ 0x32;
  v10[32] = BYTE4(a3) ^ 0xDE;
  v10[11] = a3 ^ 0x3E;
  v10[10] = BYTE2(a3) ^ 0xDC;
  v13[33] = HIBYTE(v6) ^ 0xE0;
  v13[38] = BYTE5(a3) ^ 0x32;
  v11[124] = BYTE3(a3) ^ 0xCB;
  v19 = *(STACK[0xF60] + (BYTE6(a3) ^ 0xDDLL));
  v11[2] = HIBYTE(a3) ^ 0xB6;
  v10[44] = BYTE2(v4) ^ 0x96;
  v12[3] = BYTE3(v4) ^ 0xE4;
  v20 = STACK[0xF30] & 0x10;
  v11[216] = ((v19 >> 3) | (32 * v19)) ^ 0x1B;
  v10[19] = BYTE1(v4) ^ 0xAB;
  v13[75] = v4 ^ 0x88;
  v13[101] = BYTE4(v4) ^ 0xA3;
  *v13 = BYTE5(v4) ^ 0x24;
  LODWORD(v4) = *(v14 + (((v4 >> 41) & 0x80 | (v4 >> 49) & 0x7F) ^ 0xE1));
  v13[65] = BYTE4(v3) ^ 0xD5;
  LODWORD(v4) = ((v4 >> 7) | (2 * v4)) + (~(2 * ((v4 >> 7) | (2 * v4))) | 0xD) + 122;
  v13[73] = BYTE5(v3) ^ 0x59;
  v11[3] = HIBYTE(v4) ^ 0x39;
  v10[21] = BYTE1(v3) ^ 0xD6;
  v12[84] = (v3 ^ 0x3C59D5643CD6C1uLL) >> (v20 ^ 0x10u) >> v20;
  v11[58] = BYTE3(v3) ^ 0x64;
  v13[89] = v3 ^ 0xC1;
  v11[50] = (v4 ^ (48 * (v4 ^ 9) + 121) ^ 0xF) - 37;
  v12[405] = HIBYTE(v3);
  v13[42] = BYTE6(v3) ^ 0x3C;
  return (*(v7 + 8 * v9))();
}

uint64_t sub_2444E5E80()
{
  *(v3 + 28) = ((v0 - 1214264145) & 0x48605FA1 ^ 0x811E617C) + v1;
  LODWORD(STACK[0xF8C]) = ((v0 + 1338135920) & 0xB03DB1CF ^ *(*v5 + 128) ^ 0xFFE1EF22) + 2130697208 + ((2 * *(*v5 + 128)) & 0xFFC3BF5A) + 3968;
  return (*(v4 + 8 * (v0 ^ (29 * v2))))();
}

uint64_t sub_2444E5F18@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v8 = (v4 ^ v5 ^ (v2 + v3)) - ((2 * (v4 ^ v5 ^ (v2 + v3))) & 0x8620BA20) + 1125145872;
  v9 = *(a1 + 8 * (a2 ^ 0x34E1));
  v10 = ((2 * ((v8 ^ 0x43105D10) + 2 * ((v2 + 18756827) & (v4 ^ v5)))) & 0xFDFFFF1C) + (((v8 ^ 0x43105D10) + 2 * ((v2 + 18756827) & (v4 ^ v5))) ^ 0x7EFFFF8E);
  STACK[0xF30] = v9 + 802;
  STACK[0xF48] = v7;
  v11 = (v10 - v2 - ((2 * (v10 - v2) - 3958994) & 0x909C0308) + 1211092251) ^ v8;
  v12 = v11 ^ 0xB5E5C94;
  HIDWORD(v14) = v11 ^ 0xC94;
  LODWORD(v14) = v11 ^ 0xB5E5000;
  v13 = v14 >> 12;
  HIDWORD(v14) = v13 ^ 0x568C8;
  LODWORD(v14) = v13 ^ 0xDD900000;
  LODWORD(STACK[0xF68]) = v10 - 149652490 + ((v14 >> 20) ^ 0xA9737226);
  STACK[0xF10] = v9 - 12;
  STACK[0xF60] = v12 << 32;
  return (*(v6 + 8 * a2))();
}

uint64_t sub_2444E6650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = STACK[0xF68];
  v12 = LODWORD(STACK[0xF68]) < 0x76147B83;
  v13 = v8 ^ ((LODWORD(STACK[0xF70]) - 434564449) + STACK[0xF60]);
  STACK[0xF70] = (a8 - 3916) | 0x810u;
  *(&v15 + 1) = v10 ^ 0x115;
  *&v15 = v10 ^ 0x72A5261A8C5CE000;
  v14 = v15 >> 11;
  *(&v15 + 1) = v14 ^ 0x24B9E028CB269;
  *&v15 = v14 ^ 0x5FA0000000000000;
  v16 = (v15 >> 53) ^ v13;
  *(&v15 + 1) = v16 ^ 0x3E;
  *&v15 = v16 ^ 0x1273D1D7377ADF00;
  v17 = v15 >> 7;
  *(&v15 + 1) = v17 ^ 0x19C5FFA36801EFLL;
  *&v15 = v17 ^ 0x5800000000000000;
  STACK[0xF50] = ((v15 >> 57) ^ 0xF31D002E4BFF0853) & (v9 ^ 0xC7B4EE7D5C0E028BLL) ^ (v15 >> 57) & 0xA650FDFCF635E231;
  v18 = LODWORD(STACK[0xF78]) + 1554050813;
  if (v12 != v18 < 0x76147B83)
  {
    v19 = v12;
  }

  else
  {
    v19 = v11 > v18;
  }

  return (*(STACK[0xF58] + 8 * (a8 | v19)))(v11 > v18);
}

uint64_t sub_2444E8530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0xF78]) = v3;
  v5 = *(STACK[0xF38] + 4 * (v3 + ((v4 - 10956) ^ 0xE68C79DC)));
  LODWORD(STACK[0xF70]) = v5;
  return (*(STACK[0xF58] + 8 * v4))(a1, a2, a3, (v5 - 1379537679));
}

uint64_t sub_2444E8590@<X0>(unsigned int a1@<W3>, int a2@<W5>, int a3@<W8>)
{
  v6 = a1 < v4;
  v7 = a3 + ((v3 + a2) & v5);
  v8 = v6 ^ (v7 < v4);
  v9 = a1 > v7;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(STACK[0xF58] + 8 * (((8 * v6) | (16 * v6)) ^ v3)))();
}

uint64_t sub_2444E8C84@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = STACK[0xF70];
  v8 = (BYTE2(v4) ^ 0x23) - 2 * (((STACK[0xF70] + 88) & 0xF5 ^ 0x17) & (BYTE2(v4) ^ 0x23) ^ BYTE2(v4) & 0x14) - 93;
  v9 = STACK[0xC88];
  v9[83] = BYTE5(a1) ^ 0xD;
  v10 = STACK[0xF48];
  v10[42] = BYTE1(a1) ^ 0x47;
  v11 = STACK[0xC80];
  v11[217] = BYTE2(a1) ^ 0x5E;
  v11[62] = BYTE1(v4) ^ 0xF8;
  v9[100] = BYTE6(a1) ^ 0x13;
  v12 = (*&v8 | 0xFFFFFFBF) - (v8 ^ 0xFFFFFF1C) - ((2 * ((*&v8 | 0xFFFFFFBF) - (v8 ^ 0xFFFFFF1C))) & 0x69E18550) - 1259289944;
  v9[62] = a1 ^ 0xF3;
  v13 = STACK[0xC10];
  v13[8] = BYTE4(a1) ^ 0xC4;
  v13[26] = HIBYTE(a1) ^ 0x1E;
  v14 = v8 & 0x40 ^ v12;
  HIDWORD(v16) = v14 ^ 0xC2DC;
  LODWORD(v16) = v12 ^ 0xB4F00000;
  v15 = v16 >> 17;
  v10[355] = BYTE3(a1) ^ 0x28;
  v9[52] = v4 ^ 0x7F;
  HIDWORD(v16) = v15 ^ 0x593C;
  LODWORD(v16) = v15 ^ 0x75A20000;
  v17 = STACK[0xF30];
  LOBYTE(v14) = v14 ^ *(STACK[0xF30] + ((v16 >> 15) ^ 0xB278EB85));
  v10[175] = BYTE5(v3) ^ 0x5D;
  v11[94] = BYTE3(v4) ^ 0x3A;
  v18 = (v14 ^ 0x74) & 0x34 ^ 0xFB;
  v19 = ((2 * (v14 ^ 0x74)) & 0xDF ^ 0x52) + (v14 ^ 0xA2);
  if ((v2 ^ 0x754C0063B1020324uLL) >= 0xD289BF66B4C2EEBALL)
  {
    v20 = (v2 ^ 0x25) - ((2 * (v2 ^ 0x25) - 116) & 0x2A) + 91;
  }

  else
  {
    v20 = v5;
  }

  if ((v2 ^ 0x754C0063B1020324uLL) >= 0xD289BF66B4C2EEBALL)
  {
    v21 = -29;
  }

  else
  {
    v21 = 89;
  }

  v10[396] = BYTE6(v3) ^ 0x74;
  v11[181] = BYTE4(v3) ^ 0xAF;
  v13[31] = BYTE3(v2) ^ 0xB1;
  v9[14] = HIBYTE(v4) ^ 0x1B;
  v9[23] = (v21 ^ 0x4C ^ v20) + 2 * ((v20 ^ 0x10) & (v21 ^ 0x59));
  v10[388] = BYTE1(v2) ^ 3;
  v10[251] = BYTE2(v2) ^ 2;
  v10[32] = BYTE4(v2) ^ 0x63;
  v13[47] = v19 + 2 * (v18 - v19) + 111;
  v22 = STACK[0xF10] + 272;
  v23 = *(v22 + ((-17 * BYTE5(v2)) ^ 0x5CLL));
  v13[37] = BYTE6(v2) ^ 0x4C;
  v11[103] = ((a2 ^ 0x8CCC) + ((2 * a2) & 0xF8 ^ 0xFF67) + 125) >> 8;
  v10[337] = v6 ^ 0x7B;
  v10[386] = HIBYTE(a2) ^ 0xB1;
  HIDWORD(v24) = v23 ^ 1;
  LODWORD(v24) = (v23 ^ 0xFFFFFF9F) << 24;
  v25 = STACK[0xF50] & 0x28;
  v13[27] = HIBYTE(v2) ^ 0x75;
  v10[77] = BYTE6(a2) ^ 0xC;
  v10[4] = BYTE3(a2) ^ 0xB;
  v11[17] = BYTE4(a2) ^ 0xB6;
  v11[73] = BYTE2(a2) ^ 0xBD;
  v10[189] = a2 ^ 0xCC;
  v9[34] = v24 >> 27;
  v9[60] = (a2 ^ 0xB10C69B60BBD8CCCLL) >> v25 >> (v25 ^ 0x28u);
  v10[30] = BYTE1(v6) ^ 0xE8;
  v26 = *(v22 + ((-17 * (BYTE2(v6) ^ 2)) ^ 0x5CLL));
  v11[151] = BYTE3(v6) ^ 0x90;
  v11[63] = BYTE4(v6) ^ 0x18;
  HIDWORD(v24) = v26 ^ 1;
  LODWORD(v24) = (v26 ^ 0xFFFFFF9F) << 24;
  v9[10] = v24 >> 27;
  v10[62] = (BYTE5(v6) ^ 0x62 ^ *(v17 + (BYTE5(v6) ^ 0xF9))) + 75;
  v27 = *(v17 + (BYTE6(v6) ^ 0x91)) ^ HIWORD(v6);
  HIDWORD(v24) = v27 ^ 0xA;
  LODWORD(v24) = v27 << 24;
  v28 = v24 >> 29;
  HIDWORD(v24) = v28 ^ 0xFFFFFFFD;
  LODWORD(v24) = (v28 ^ 0xFFFFFFDF) << 24;
  v9[36] = HIBYTE(v6) ^ 0x47;
  v9[90] = ((v24 >> 27) ^ 0xBB) + 75;
  return (*(STACK[0xF58] + 8 * v7))();
}

uint64_t sub_2444E9130()
{
  *(v5 + 128) = v3 + v0 + 1;
  LODWORD(STACK[0xFC4]) = (*(v6 + 104) ^ 0x5F7BBB3E) - 170540 + ((((v1 - 21088) | 0xC08) - 1091082444) & (2 * *(v6 + 104)));
  return (*(v4 + 8 * (((6151 * (v1 ^ 0x55A3) - 18434) * (v2 ^ 1)) | v1)))();
}

uint64_t sub_2444E91B4@<X0>(uint64_t a1@<X3>, int a2@<W4>, int a3@<W8>)
{
  v8 = *v7;
  v9 = *(a1 + 8 * (a3 ^ 0xE5C));
  v10 = v4 ^ 0xCA746859 ^ (a3 + 974232540);
  v11 = v3 + a2;
  v12 = ((2 * (v3 + a2 + v10)) & 0xCBDFFCE6) + ((v3 + a2 + v10) ^ 0xE5EFFE73);
  STACK[0xF10] = v9;
  v13 = ((2 * v4) & 0x32EFFFBE ^ 0x300EF000) + (v4 ^ 0xE1F087DF);
  v14 = ((v13 - 427294687 + v10 + 1) ^ 0xFFFFFFFC) + v13;
  v15 = (v14 - 427294687) ^ (v11 - 1);
  STACK[0xF08] = v9 + 536;
  v16 = ((v14 + 9961902 + v12) << 32) - (((v14 + 9961902 + v12) << 33) & 0x8398618E00000000);
  STACK[0xF18] = v8;
  v17 = v16 + 0x41CC30C72282841FLL;
  v16 = 0xBE33CF38DD7D7BE0 - v16;
  v12 += 437256589;
  v18 = (v4 ^ v5 ^ v12) + 2 * (v12 & (v4 ^ v5));
  v19 = v15 - ((2 * v15) & 0xCF20175A) - 409990227;
  v20 = (v18 - ((2 * v18) & 0xCF20175A) - 409990227) ^ v19;
  STACK[0xF68] = v16 & 0x100000000000000;
  v21 = v16 & 0x100000000000000 | 0xB815421FF40535;
  STACK[0xF50] = v17 & 0xFEFFFFFF00000000;
  v22 = (v20 + v12 - ((2 * (v20 + v12)) & 0xCF20175A) - 409990227) ^ v19;
  v23 = *(v6 + 8 * a3);
  STACK[0xF60] = v21;
  STACK[0xF30] = 0x1702A843FE80A6ALL - v21;
  LODWORD(STACK[0xF48]) = v22;
  LODWORD(STACK[0xF28]) = v22 - 2001371324;
  return v23();
}

uint64_t sub_2444E98C8@<X0>(int a1@<W8>)
{
  v1 = LODWORD(STACK[0xF48]) > 0x774A80BB;
  STACK[0xF70] = 337 * (a1 ^ 0xF0Cu);
  v2 = LODWORD(STACK[0xF78]) + 1895569915;
  v3 = v1 ^ (v2 < 0x88B57F44);
  v4 = LODWORD(STACK[0xF28]) > v2;
  if (v3)
  {
    v4 = v1;
  }

  return (*(STACK[0xF58] + 8 * (a1 ^ (87 * v4))))();
}

uint64_t sub_2444EB774(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0xF78]) = a3;
  v6 = a3 + ((v5 - v4 - 1802) ^ 0xE8469ABE);
  v7 = *(STACK[0xF40] + 8 * v6);
  LODWORD(STACK[0xF70]) = *(STACK[0xF38] + 4 * v6);
  return (*(v3 + 8 * (v5 ^ v4 ^ (4533 * (v5 > 0xBF9321B7)))))(v7);
}

uint64_t sub_2444EB7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = v11 < v12;
  if (v15 == v14 + v13 < (v10 + v9 + a8))
  {
    v15 = v11 > v14 + v13;
  }

  return (*(STACK[0xF58] + 8 * ((v15 * v8) ^ v10)))();
}

uint64_t sub_2444EBF04(uint64_t a1)
{
  v6 = STACK[0xF70];
  v7 = STACK[0xF70] ^ 0x16 ^ BYTE2(v4) ^ 0xA2;
  v8 = STACK[0xF18];
  v8[350] = v5 ^ 0x71;
  v9 = STACK[0xF10];
  v10 = STACK[0xF10] + 277;
  v11 = *(v10 + ((-111 * (BYTE1(v5) ^ 0x79)) ^ 0x1FLL));
  v12 = STACK[0xC80];
  v12[5] = BYTE4(v5) ^ 0x7D;
  v13 = STACK[0xC88];
  v13[15] = BYTE6(v5) ^ 0x1A;
  v8[122] = BYTE2(v5) ^ 0x31;
  v12[207] = HIBYTE(v5) ^ 0xED;
  v13[79] = BYTE1(v4) ^ 0xBD;
  v13[96] = BYTE3(v5) ^ 0xC;
  v12[18] = v4 ^ 0x80;
  v12[195] = BYTE5(v5) ^ 0xA3;
  v13[45] = (v11 ^ (((2 * v11) & 0xE7 ^ 0x60) - 2 * (((2 * v11) & 0xE7 ^ 0x60) & 0x26 ^ (2 * v11) & 4) + 51) ^ 0x78) + ((2 * v11) & 0x30 ^ 0x20);
  v13[32] = v7;
  v14 = ((v4 >> 42) & 0x3E00 | (v4 >> 34) & 0x1C000) ^ 0x19000;
  v15 = *(v10 + ((-111 * (BYTE3(v4) ^ 0x2E)) ^ 0x1FLL));
  v13[55] = BYTE4(v4) ^ 0x74;
  v8[240] = BYTE5(v4) ^ 0x33;
  v13[86] = (v15 ^ 0x39 ^ (((4 * v15) & 0xC7 ^ 0x3F) + ((2 * v15) & 0xE7 ^ 0x60) - 21)) - 104;
  v16 = *(STACK[0xF08] + (((((((v14 - ((2 * v14) & 0x13C00) + 1728880461) ^ 0x670C9F4D) - ((v14 - ((2 * v14) & 0x13C00) + 1728880461) ^ 0xD8927EEB)) ^ 0xFFFFFFFC) + ((v14 - ((2 * v14) & 0x13C00) + 1728880461) ^ 0x670C9F4D)) >> 9) ^ 0x5FCF8FLL));
  v17 = ((v16 >> 1) | (v16 << 7)) - ((2 * ((v16 >> 1) | (v16 << 7))) & 0xFFB8) + 92;
  v13[106] = v2 ^ 0x16;
  v12[202] = HIBYTE(v4) ^ 0xCC;
  v18 = (v17 >> 3) ^ (v17 >> 1);
  v8[363] = -51 * (v17 ^ 0xEC ^ ((v18 ^ 0x25) - 2 * ((v18 ^ 0x25) & 0x5E ^ v18 & 2) + 92));
  v19 = *(v9 + (BYTE1(v2) ^ 0xCALL) + 799);
  v8[345] = BYTE3(a1) ^ 0x55;
  v12[172] = a1 ^ 0x9F;
  v8[268] = BYTE6(v2) ^ 0xAD;
  v13[20] = BYTE3(v2) ^ 0x1C;
  v8[34] = BYTE2(v2) ^ 0xFA;
  v13[81] = BYTE1(a1) ^ 0x94;
  v13[85] = BYTE5(v2) ^ 0x4A;
  v12[97] = HIBYTE(v2) ^ 3;
  v13[76] = ((2 * (v19 ^ (v19 >> 4) ^ (v19 >> 7))) & 0x66 ^ 0x22) + (v19 ^ (v19 >> 4) ^ (v19 >> 7) ^ 0x22);
  v13[7] = BYTE4(v2) ^ 0x9F;
  v12[175] = BYTE4(a1) ^ 0xFD;
  v8[163] = BYTE2(a1) ^ 0xF6;
  v12[219] = BYTE5(a1) ^ 0x73;
  v20 = *(v10 + ((-111 * (BYTE6(a1) ^ 0xAE)) ^ 0x1FLL));
  v8[417] = BYTE1(v1) ^ 0x76;
  v12[66] = HIBYTE(a1) ^ 0x3F;
  v13[107] = v1 ^ 0xC1;
  v8[328] = (v20 ^ 0x19 ^ (((2 * v20) & 0xE7 ^ 0x60) - ((2 * ((2 * v20) & 0xE7 ^ 0x60)) & 0x84) + 82)) + ((2 * v20) & 0x30 ^ 0x20);
  v21 = *(v10 + ((-111 * (BYTE2(v1) ^ 0xDF)) ^ 0x1FLL));
  v22 = (2 * v21) & 0xFFFFFFE7;
  LODWORD(v10) = ((2 * v21) & 0xFFFFFFF4 ^ 0xFFFFFFA4) + (v21 ^ 0xFFFFFFA9);
  v13[22] = BYTE3(v1) ^ 0xA1;
  v13[92] = BYTE4(v1) ^ 0x5D;
  v23 = ((v21 ^ 0x2C ^ v22 ^ 0x60) + v10 - 121) ^ -(v22 ^ 0x60);
  v8[307] = HIBYTE(v1) ^ 0xA3;
  v8[8] = BYTE5(v1) ^ 0x52;
  v12[91] = BYTE6(v1) ^ 0x42;
  v13[71] = v10 + (v22 ^ (v23 - ((2 * v23) & 0xF3) - 7) ^ 0x99) + 30;
  return (*(v3 + 8 * v6))();
}

uint64_t sub_2444EC3A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  STACK[0x12E4] = 0x7E3BE0BE7E3BE0BELL;
  STACK[0x1350] = 0xD5C34B04D5C34B04;
  STACK[0x1358] = 0xD5C34B04D5C34B04;
  STACK[0x12EC] = 0x7E3BE0BE7E3BE0BELL;
  v5 = LODWORD(STACK[0xF20]) - 1139033517;
  LODWORD(STACK[0xC60]) = v5;
  v6 = v5 < 0x4AD0C804;
  STACK[0x26A0] = 0x5C396FC1DE186021;
  STACK[0x26A8] = 0x7D69C5FD026B0DF7;
  LODWORD(STACK[0x26B0]) = -1550347673;
  LOWORD(STACK[0x26B4]) = -28916;
  LODWORD(STACK[0xEF0]) = v6;
  v7 = *(v4 + 8 * ((((a3 + 1469931370) & 0xA8627DC3 ^ 0x2550) * v6) ^ (a3 + 4046)));
  v8 = *(a4 + 8 * (a3 - 17981));
  STACK[0x12F4] = 0x7E3BE0BE7E3BE0BELL;
  STACK[0x1360] = 0xD5C34B04D5C34B04;
  STACK[0x1368] = 0xD5C34B04D5C34B04;
  v9 = *(a4 + 8 * (a3 ^ 0x4C82)) - 8;
  STACK[0x12FC] = 0x7E3BE0BE7E3BE0BELL;
  v10 = *(a4 + 8 * (a3 ^ 0x4CC1)) - 4;
  STACK[0x1304] = 0x7E3BE0BE7E3BE0BELL;
  v11 = *(a4 + 8 * (a3 - 17010));
  STACK[0xF50] = *(a4 + 8 * (a3 ^ 0x4B3B)) - 8;
  STACK[0x1370] = 0xD5C34B04D5C34B04;
  STACK[0x1378] = 0xD5C34B04D5C34B04;
  STACK[0x130C] = 0x7E3BE0BE7E3BE0BELL;
  STACK[0x1314] = 0x7E3BE0BE7E3BE0BELL;
  STACK[0x1380] = 0xD5C34B04D5C34B04;
  STACK[0x1388] = 0xD5C34B04D5C34B04;
  LODWORD(STACK[0x12E0]) = 2117853374;
  LODWORD(STACK[0x131C]) = 2117853374;
  STACK[0xF30] = v8 - 8;
  STACK[0xF38] = v9;
  STACK[0xF20] = v11 - 12;
  STACK[0xF70] = v10;
  return v7(a1, 0x94C379D82F60FC8BLL, 0x94C379D82F60FC82, 0x94C379D82F60FC84);
}

uint64_t sub_2444EC5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v20 = a8 + 64;
  *(v10 + 22) = v8;
  LOWORD(STACK[0x26BE]) = 20539;
  LODWORD(STACK[0xF78]) = a8;
  v21 = STACK[0xF00];
  *(v10 + 32) = *STACK[0xF00] - ((2 * *STACK[0xF00]) & 0x18) + 12;
  *(v10 + 33) = v21[1] - ((v20 ^ 0x9B) & (2 * v21[1])) + 12;
  *(v10 + 34) = v21[2] - ((2 * v21[2]) & 0x18) + 12;
  *(v10 + 35) = v21[3] + (~(2 * v21[3]) | 0xE7) + 13;
  *(v10 + 36) = v21[4] - ((2 * v21[4]) & 0x18) + 12;
  *(v10 + 37) = v21[5] - ((2 * v21[5]) & 0x18) + 12;
  *(v10 + 38) = v21[6] - ((2 * v21[6]) & 0x18) + 12;
  *(v10 + 39) = v21[7] - ((2 * v21[7]) & 0x18) + 12;
  *(v10 + 40) = v21[8] - ((2 * v21[8]) & 0x18) + 12;
  *(v10 + 41) = v21[9] - ((2 * v21[9]) & 0x18) + 12;
  v22 = *(v9 + ((v21[10] + 103) ^ 0xA0)) - 77;
  HIDWORD(v23) = v22 ^ 5;
  LODWORD(v23) = (v22 ^ 0x60) << 24;
  LOBYTE(STACK[0x26CA]) = (v23 >> 27) - ((2 * (v23 >> 27)) & 0x18) + 12;
  LOBYTE(STACK[0x26CB]) = v21[11] - ((2 * v21[11]) & 0x18) + 12;
  LOBYTE(STACK[0x26CC]) = v21[12] - ((2 * v21[12]) & 0x18) + 12;
  LOBYTE(STACK[0x26CD]) = v21[13] - ((2 * v21[13]) & 0x18) + 12;
  LOBYTE(STACK[0x26CE]) = v21[14] - ((2 * v21[14]) & 0x18) + 12;
  LOBYTE(STACK[0x26CF]) = v21[15] - ((2 * v21[15]) & 0x18) + 12;
  LOBYTE(STACK[0x26D0]) = v21[16] - ((2 * v21[16]) & 0x18) + 12;
  v24 = *(v9 + ((v21[17] + 103) ^ 0xA0)) - 77;
  HIDWORD(v23) = v24 ^ 5;
  LODWORD(v23) = (v24 ^ 0x60) << 24;
  LOBYTE(STACK[0x26D1]) = (v23 >> 27) - ((2 * (v23 >> 27)) & 0x18) + 12;
  LOBYTE(STACK[0x26D2]) = v21[18] - ((2 * v21[18]) & 0x18) + 12;
  LOBYTE(STACK[0x26D3]) = v21[19] - ((2 * v21[19]) & 0x18) + 12;
  LOBYTE(STACK[0x26D4]) = v21[20] - ((2 * v21[20]) & 0x18) + 12;
  LOBYTE(STACK[0x26D5]) = v21[21] - ((2 * v21[21]) & 0x18) + 12;
  LOBYTE(STACK[0x26D6]) = v21[22] + (~(2 * v21[22]) | 0xE7) + 13;
  v25 = *(v11 + (v21[23] ^ 0xAALL));
  HIDWORD(v23) = v25 ^ 0xFFFFFFF1;
  LODWORD(v23) = ~v25 << 24;
  LOBYTE(STACK[0x26D7]) = (v23 >> 30) ^ 0x40;
  LOBYTE(STACK[0x26D8]) = v21[24] - ((2 * v21[24]) & 0x18) + 12;
  LOBYTE(STACK[0x26D9]) = v21[25] - ((2 * v21[25]) & 0x18) + 12;
  LOBYTE(STACK[0x26DA]) = v21[26] - ((2 * v21[26]) & 0x18) + 12;
  v26 = *(a5 + ((v21[27] + 55) ^ 0xFDLL)) ^ 0x8A;
  LOBYTE(STACK[0x26DB]) = 59 * v26 - ((22 * v26) & 0x18) + 12;
  LOBYTE(STACK[0x26DC]) = v21[28] - ((2 * v21[28]) & 0x18) + 12;
  LOBYTE(STACK[0x26DD]) = v21[29] + (~(2 * v21[29]) | 0xE7) + 13;
  LOBYTE(STACK[0x26DE]) = v21[30] - ((2 * v21[30]) & 0x18) + 12;
  LOBYTE(STACK[0x26DF]) = v21[31] - ((2 * v21[31]) & 0x18) + 12;
  v27 = STACK[0xF80];
  v28 = STACK[0xF80];
  LOBYTE(STACK[0x26E0]) = *STACK[0xF80] - ((2 * *STACK[0xF80]) & 0x18) + 12;
  LOBYTE(STACK[0x26E1]) = v27[1] - ((2 * v27[1]) & 0x18) + 12;
  LOBYTE(STACK[0x26E2]) = v27[2] - ((2 * v27[2]) & 0x18) + 12;
  LOBYTE(STACK[0x26E3]) = v27[3] - ((2 * v27[3]) & 0x18) + 12;
  LOBYTE(STACK[0x26E4]) = v27[4] - ((2 * v27[4]) & 0x18) + 12;
  LOBYTE(STACK[0x26E5]) = v27[5] - ((2 * v27[5]) & 0x18) + 12;
  LOBYTE(STACK[0x26E6]) = v27[6] - ((2 * v27[6]) & 0x18) + 12;
  LOBYTE(STACK[0x26E7]) = v27[7] - ((2 * v27[7]) & 0x18) + 12;
  LOBYTE(STACK[0x26E8]) = v27[8] - ((2 * v27[8]) & 0x18) + 12;
  LOBYTE(STACK[0x26E9]) = v27[9] - ((2 * v27[9]) & 0x18) + 12;
  LOBYTE(STACK[0x26EA]) = v27[10] + (~(2 * v27[10]) | 0xE7) + 13;
  LOBYTE(STACK[0x26EB]) = v27[11] - ((2 * v27[11]) & 0x18) + 12;
  LOBYTE(STACK[0x26EC]) = v27[12] - ((2 * v27[12]) & 0x18) + 12;
  LOBYTE(STACK[0x26ED]) = v28[13] - ((2 * v28[13]) & 0x18) + 12;
  LOBYTE(STACK[0x26EE]) = v28[14] - ((2 * v28[14]) & 0x18) + 12;
  LOBYTE(STACK[0x26EF]) = v28[15] - ((2 * v28[15]) & 0x18) + 12;
  LOBYTE(STACK[0x26F0]) = v28[16] - ((2 * v28[16]) & 0x18) + 12;
  LOBYTE(STACK[0x26F1]) = v28[17] - ((2 * v28[17]) & 0x18) + 12;
  LOBYTE(STACK[0x26F2]) = v28[18] - ((2 * v28[18]) & 0x18) + 12;
  LOBYTE(STACK[0x26F3]) = v28[19] - ((2 * v28[19]) & 0x18) + 12;
  v30 = (*(v19 + (((v28[20] >> 1) | (v28[20] << 7)) ^ 0x5CLL)) + 96) ^ 0x4E;
  LOBYTE(STACK[0x26F4]) = v30 + ~(2 * ((v30 + 12) & 0xF ^ v30 & 3)) + 105;
  LOBYTE(STACK[0x26F5]) = v28[21] - ((2 * v28[21]) & 0x18) + 12;
  LOBYTE(STACK[0x26F6]) = v28[22] - ((2 * v28[22]) & 0x18) + 12;
  LOBYTE(STACK[0x26F7]) = v28[23] - ((2 * v28[23]) & 0x18) + 12;
  LOBYTE(STACK[0x26F8]) = v28[24] - ((2 * v28[24]) & 0x18) + 12;
  v31 = STACK[0xF80];
  LOBYTE(STACK[0x26F9]) = *(STACK[0xF80] + 25) - ((2 * *(STACK[0xF80] + 25)) & 0x18) + 12;
  LOBYTE(STACK[0x26FA]) = *(v31 + 26) - ((2 * *(v31 + 26)) & 0x18) + 12;
  LOBYTE(STACK[0x26FB]) = *(v31 + 27) - ((2 * *(v31 + 27)) & 0x18) + 12;
  LOBYTE(STACK[0x26FC]) = *(v31 + 28) + (~(2 * *(v31 + 28)) | 0xE7) + 13;
  LOBYTE(STACK[0x26FD]) = *(v31 + 29) - ((2 * *(v31 + 29)) & 0x18) + 12;
  LOBYTE(STACK[0x26FE]) = *(v31 + 30) - ((2 * *(v31 + 30)) & 0x18) + 12;
  LODWORD(v31) = (*(v19 + (((*(v31 + 31) >> 1) | (*(v31 + 31) << 7)) ^ 0x5CLL)) + 96) ^ 0x4E;
  v32 = v31 - 2 * ((v31 + 12) & 0xE ^ v31 & 2) + 104;
  STACK[0xA68] = v32;
  LOBYTE(STACK[0x26FF]) = v32;
  v33 = STACK[0xF90];
  v34 = STACK[0xF90];
  LOBYTE(STACK[0x2700]) = *(STACK[0xF90] - 0x6B3C8627D09F0389) - ((2 * *(STACK[0xF90] - 0x6B3C8627D09F0389)) & 0x18) + 12;
  LOBYTE(STACK[0x2701]) = *(v33 - 0x6B3C8627D09F0388) - ((2 * *(v33 - 0x6B3C8627D09F0388)) & 0x18) + 12;
  LOBYTE(STACK[0x2702]) = *(v33 - 0x6B3C8627D09F0387) - ((2 * *(v33 - 0x6B3C8627D09F0387)) & 0x18) + 12;
  v35 = *(STACK[0xF50] + ((*(v33 - 0x6B3C8627D09F0386) + 103) ^ 0xA0));
  HIDWORD(v23) = v35 ^ 0x2F;
  LODWORD(v23) = (v35 ^ 0x40) << 24;
  v36 = (v23 >> 30) - ((2 * (v23 >> 30)) & 0xFFFFFFE3) + 113;
  HIDWORD(v23) = v36 ^ 1;
  LODWORD(v23) = (v36 ^ 0x70) << 24;
  LOBYTE(STACK[0x2703]) = (v23 >> 27) - ((2 * (v23 >> 27)) & 0x18) + 12;
  LOBYTE(STACK[0x2704]) = *(v33 - 0x6B3C8627D09F0385) - ((2 * *(v33 - 0x6B3C8627D09F0385)) & 0x18) + 12;
  LOBYTE(STACK[0x2705]) = *(v33 - 0x6B3C8627D09F0384) + (~(2 * *(v33 - 0x6B3C8627D09F0384)) | 0xE7) + 13;
  LOBYTE(STACK[0x2706]) = *(v33 - 0x6B3C8627D09F0383) - ((2 * *(v33 - 0x6B3C8627D09F0383)) & 0x18) + 12;
  LOBYTE(STACK[0x2707]) = *(v33 - 0x6B3C8627D09F0382) + (~(2 * *(v33 - 0x6B3C8627D09F0382)) | 0xE7) + 13;
  LOBYTE(STACK[0x2708]) = *(v33 - 0x6B3C8627D09F0381) - ((2 * *(v33 - 0x6B3C8627D09F0381)) & 0x18) + 12;
  LOBYTE(STACK[0x2709]) = *(v33 - 0x6B3C8627D09F0380) - ((2 * *(v33 - 0x6B3C8627D09F0380)) & 0x18) + 12;
  LOBYTE(STACK[0x270A]) = *(v33 - 0x6B3C8627D09F037FLL) - ((2 * *(v33 - 0x6B3C8627D09F037FLL)) & 0x18) + 12;
  LOBYTE(STACK[0x270B]) = *(v33 + a3) - ((2 * *(v33 + a3)) & 0x18) + 12;
  LOBYTE(STACK[0x270C]) = *(v34 + a6) - ((2 * *(v34 + a6)) & 0x18) + 12;
  LOBYTE(STACK[0x270D]) = *(v34 + a4) - ((2 * *(v34 + a4)) & 0x18) + 12;
  LOBYTE(STACK[0x270E]) = *(v34 + v18) + (~(2 * *(v34 + v18)) | 0xE7) + 13;
  LOBYTE(STACK[0x270F]) = *(v34 + v17) - ((2 * *(v34 + v17)) & 0x18) + 12;
  LOBYTE(STACK[0x2710]) = *(v34 + v16) - ((2 * *(v34 + v16)) & 0x18) + 12;
  LOBYTE(STACK[0x2711]) = *(v34 + v14) - ((2 * *(v34 + v14)) & 0x18) + 12;
  LOBYTE(STACK[0x2712]) = *(v34 + v13) - ((2 * *(v34 + v13)) & 0x18) + 12;
  LOBYTE(STACK[0x2713]) = *(v34 + v12) - ((2 * *(v34 + v12)) & 0x18) + 12;
  LOBYTE(STACK[0x2714]) = *(v34 + a2) - ((2 * *(v34 + a2)) & 0x18) + 12;
  LOBYTE(STACK[0x2715]) = *(v34 - 0x6B3C8627D09F0374) - ((2 * *(v34 - 0x6B3C8627D09F0374)) & 0x18) + 12;
  LOBYTE(STACK[0x2716]) = *(v34 - 0x6B3C8627D09F0373) - ((2 * *(v34 - 0x6B3C8627D09F0373)) & 0x18) + 12;
  LOBYTE(STACK[0x2717]) = *(v34 - 0x6B3C8627D09F0372) - ((2 * *(v34 - 0x6B3C8627D09F0372)) & 0x18) + 12;
  LOBYTE(STACK[0x2718]) = *(v34 - 0x6B3C8627D09F0371) - ((2 * *(v34 - 0x6B3C8627D09F0371)) & 0x18) + 12;
  v37 = *(a5 + ((*(v34 - 0x6B3C8627D09F0370) + 55) ^ 0xFDLL)) ^ 0x8A;
  LOBYTE(STACK[0x2719]) = 59 * v37 - ((22 * v37) & 0x18) + 12;
  v38 = STACK[0xF90];
  LOBYTE(STACK[0x271A]) = *(STACK[0xF90] - 0x6B3C8627D09F036FLL) - ((2 * *(STACK[0xF90] - 0x6B3C8627D09F036FLL)) & 0x18) + 12;
  LOBYTE(STACK[0x271B]) = *(v38 - 0x6B3C8627D09F036ELL) - ((2 * *(v38 - 0x6B3C8627D09F036ELL)) & 0x18) + 12;
  LOBYTE(STACK[0x271C]) = *(v38 - 0x6B3C8627D09F036DLL) - ((2 * *(v38 - 0x6B3C8627D09F036DLL)) & 0x18) + 12;
  LOBYTE(v25) = *(a5 + ((*(v38 - 0x6B3C8627D09F036CLL) + 55) ^ 0xFDLL)) ^ 0x8A;
  LOBYTE(STACK[0x271D]) = 59 * v25 - ((22 * v25) & 0x18) + 12;
  LODWORD(a3) = *(v11 + (*(v38 - 0x6B3C8627D09F036BLL) ^ 0xAALL));
  HIDWORD(v23) = a3 ^ 0xFFFFFFF1;
  LODWORD(v23) = ~a3 << 24;
  LOBYTE(STACK[0x271E]) = (v23 >> 30) ^ 0x40;
  LOBYTE(STACK[0x271F]) = *(v38 - 0x6B3C8627D09F036ALL) - ((2 * *(v38 - 0x6B3C8627D09F036ALL)) & 0x18) + 12;
  return (*(v15 + 8 * SLODWORD(STACK[0xF78])))();
}

uint64_t sub_2444ED210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v9 + 22) = v8;
  *(v9 + 30) = 0x3800A9ED9664503BLL;
  *(v9 + 38) = 0x9FBF1DD55D854A61;
  *(v9 + 46) = 0x67624A077A0071D9;
  LOWORD(STACK[0x26D6]) = 1928;
  STACK[0x26D8] = 0x55BAB34F72E3F96CLL;
  STACK[0x26E0] = 0x2CF7AB21834150A2;
  STACK[0x26E8] = 0x9FE15AA6322E6D60;
  STACK[0x26F0] = 0xCA2036F0C72351F5;
  STACK[0x26F8] = 0xF9B2D4916D0E9BCALL;
  STACK[0x2700] = 0xF4CC9C5F635259C6;
  STACK[0x2708] = 0x6402B03C8EE5A92BLL;
  STACK[0x2710] = 0x2597F6EAEF54FFD3;
  STACK[0xA68] = 166;
  STACK[0x2718] = 0x4D99A97A7487A321;
  return (*(v10 + 8 * a8))();
}

uint64_t sub_2444ED824(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v10 = (v6 ^ 0x9590B0D9) + 943125365 + 26159025 * (v8 - 701096784 + (*(&STACK[0x26A0] + v8 - 701096784) ^ (((v7 + 45) & 0xBD) - 9)));
  v11 = (v10 ^ 0xDC7BFF7E) + 595853442 + ((2 * v10) & 0xB8F7FEFC);
  v12 = a4 ^ (((v11 % 0x101) ^ v11) + a3 - 820595028 - ((2 * (((v11 % 0x101) ^ v11) + a3 - 820595028)) & 0x137AA194) - 1984081718);
  v13 = v12 ^ a6 ^ 0x2932CF0E;
  v14 = ((2 * ((a4 ^ 0x4010F590) - v13)) & 0x7DA7FE9C) + (((a4 ^ 0x4010F590) - v13) ^ 0xBED3FF4E);
  v15 = ((2 * (v13 + a3 - 820595028)) & 0xFD7AF71E) + ((v13 + a3 - 820595028) ^ 0xFEBD7B8F);
  HIDWORD(v16) = v13;
  LODWORD(v16) = v12 ^ a6;
  v12 ^= 0xA6FD205B;
  v17 = (v16 >> 31) + v15 - v14 - 1072266305;
  v18 = (v17 - ((2 * v17) & 0xCE57F3E) + 108183455) ^ v12;
  v19 = v18 - ((2 * v18 - 1944460726) & 0x83B3EA08) + 132572713;
  v20 = *(v9 + (v19 >> 29) + 168);
  HIDWORD(v16) = v20 ^ 0xFFFFFFF1;
  LODWORD(v16) = ~v20 << 24;
  v21 = ((v14 + 1093402802) ^ 0x41D9F504 ^ v19) - ((2 * ((v14 + 1093402802) ^ 0x41D9F504 ^ v19)) & 0x9B92B8B4) - 842441638;
  v22 = ((2 * (v15 + 21136498 + (v19 ^ 0xBE260AFB))) & 0xB6EBDFF2) + ((v15 + 21136498 + (v19 ^ 0xBE260AFB)) ^ 0xDB75EFF9);
  v23 = v19 ^ v12;
  v24 = ((8 * v19) ^ 0xECFA820 | (v16 >> 30) ^ 0x4C) - 613027847 - v22 + (v21 ^ 0x3236A3A5) + 1;
  v25 = (v24 - ((2 * v24) & 0x8F569536) + 1202408091) ^ v23;
  v26 = v25 - 2 * ((v25 + 122599922) & 0x45A6F07 ^ v25 & 1) + 195635448;
  v27 = ((2 * (v22 + 613027847 + (v26 ^ 0x45A6F06))) & 0xF277B8FE) + ((v22 + 613027847 + (v26 ^ 0x45A6F06)) ^ 0xF93BDC7F);
  v28 = ((2 * (v26 ^ v21)) & 0xBFEBF5AE ^ 0x932264A8) + (v26 ^ v21 ^ 0x9666C98B);
  HIDWORD(v16) = v26 ^ 0x45A6F06;
  LODWORD(v16) = v26;
  v29 = (v16 >> 28) - v27 - v28 + 1496438614;
  v30 = (v29 - ((2 * v29) & 0x87E24B3A) + 1139877277) ^ v26 ^ v23;
  v31 = v30 - ((2 * v30 + 194350342) & 0x2B2161B2) - 1688504484;
  return (*(STACK[0xF58] + 8 * ((18552 * (v8 == 701096911)) ^ v7)))(1074853264, a2, ((2 * (v31 ^ (v27 + 113517441))) & 0xFFFADEEA ^ 0x2B2040A2) + (v31 ^ (v27 + 113517441) ^ 0x6A6DDFAC) + 820763103, v28 - 1609956055 + (v31 ^ 0x9590B0D9) + 1074853264 - ((2 * (v28 - 1609956055 + (v31 ^ 0x9590B0D9))) & 0x8021EB20));
}

uint64_t sub_2444EDC68@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W7>, unsigned int a6@<W8>)
{
  STACK[0x28A1] = 0x40B0A09080F0E0DLL;
  LODWORD(STACK[0x28A9]) = 460293;
  LOWORD(STACK[0x28AD]) = 513;
  *(&STACK[0x28A0] + ((v6 - 8210) ^ v10 & 0xF)) = 12;
  *((((v14 - 1791983455) % 0xFu) | &STACK[0x28A0]) + 1) = STACK[0x28A1];
  HIDWORD(v15) = LOBYTE(STACK[0x28A2]);
  LODWORD(v15) = (HIDWORD(v15) ^ 0xC) << 24;
  v16 = *(&off_278E1E490 + (v6 ^ 0x20DE)) - 4;
  v17 = v16[(v15 >> 25) ^ 0x60];
  LODWORD(STACK[0x3F8]) = 8;
  *((((a2 ^ a6) % 0xE) | &STACK[0x28A0]) + 2) = ((-21 * v17 - 120) ^ 0x21) - ((22 * v17 + 8) & 0x18) + 104;
  v18 = ((v12 - (v13 ^ 0x431384BB)) ^ 0x6FBEACEE) - 1108476936 + ((2 * (v12 - (v13 ^ 0x431384BB))) & 0xDF7D59DC);
  *((((v13 ^ 0x431384BBu) % 0xD) | &STACK[0x28A0]) + 3) = STACK[0x28A3];
  v19 = ((2 * a2) & 0xAFABEFFC ^ 0x2F88AC88) + (a2 ^ 0x6839A9BB);
  v20 = ((2 * (a5 + v18 - 771479108)) & 0xFFFF7FAE ^ 0xB098138A) + ((a5 + v18 - 771479108) ^ 0xA7B3F63A);
  *((((v18 + v19 - 1490820905) % 0xC) | &STACK[0x28A0]) + 4) = STACK[0x28A4];
  *((((v20 + 16425) % 0xB) | &STACK[0x28A0]) + 5) = STACK[0x28A5];
  *((((v19 - 724530755) % 0xA) | &STACK[0x28A0]) + 6) = STACK[0x28A6];
  v21 = (v13 ^ 0x431384BB) + a5 + v18 - v19;
  *((((v21 + 702161338) % 9) | &STACK[0x28A0]) + 7) = STACK[0x28A7];
  v22 = v18 + v19 + v19;
  *(&STACK[0x28A8] | (v22 + 815115048) & 7) = STACK[0x28A8];
  v23 = v22 + 815115048 - ((2 * v22 - 1574015392) & 0xBEFCE7F0);
  v24 = (v23 ^ 0xDF7E73F8) + ((v21 + 702161338) ^ 0x60351916) - ((2 * ((v23 ^ 0xDF7E73F8) + ((v21 + 702161338) ^ 0x60351916))) & 0x98E00086) - 865075133;
  v25 = ((2 * (v24 ^ (v21 + 702177763 + v20))) & 0x7E735D5E ^ 0x18600006) + (v24 ^ (v21 + 702177763 + v20) ^ 0xF349AEEC);
  *((((v25 - 1060744879) % 7) | &STACK[0x28A0]) + 9) = STACK[0x28A9];
  *((((v19 + 896502175) % 6) | &STACK[0x28A0]) + 0xA) = STACK[0x28AA];
  *((((v24 ^ 0xCC700043) % 5) | &STACK[0x28A0]) + 0xB) = STACK[0x28AB];
  v26 = v24 ^ v23;
  *(&STACK[0x28A0] | v26 & 3 ^ 0xFLL) = STACK[0x28AC];
  v27 = (v26 ^ 0x130E73BB) - ((2 * (v26 ^ 0x130E73BB) + 1704417200) & 0xF7A2C122) - 1365439383;
  LODWORD(STACK[0x724]) = v27;
  v28 = (v25 - 1060744879 + (v24 ^ 0xCC700043)) ^ v27;
  LODWORD(STACK[0xF78]) = v28;
  *((((v28 ^ 0x7BD16091) % 3) | &STACK[0x28A0]) + 0xD) = STACK[0x28AD];
  LODWORD(STACK[0xF10]) = v24;
  v29 = v19 + (v24 ^ 0xCE1DFBA0) - v25 + 1957247055;
  v30 = *(&off_278E1E490 + (v6 ^ 0x250B));
  v31 = *(v30 + (v29 & 1 ^ 5));
  HIDWORD(v15) = v31 ^ 5;
  LODWORD(v15) = ~v31 << 24;
  *(&STACK[0x28A0] + ((v15 >> 30) ^ 0x18u) + 14) = STACK[0x28AE];
  LODWORD(STACK[0x28A0]) = 252579084;
  LOWORD(STACK[0x28A4]) = 2312;
  STACK[0x28A6] = 0x100070605040B0ALL;
  LOWORD(STACK[0x28AE]) = 770;
  v32 = (&STACK[0x28A0] | v8 & 0xF ^ 9);
  v33 = STACK[0xF20];
  v34 = *(STACK[0xF20] + (((*v32 ^ 0xC) + 103) ^ 0xA0)) - 77;
  HIDWORD(v15) = v34 ^ 5;
  LODWORD(v15) = (v34 ^ 0x60) << 24;
  LOBYTE(STACK[0x28A0]) = (v15 >> 27) - ((2 * (v15 >> 27)) & 0x18) + 12;
  *v32 = 12;
  LOBYTE(v34) = STACK[0x28A1];
  LOBYTE(STACK[0x28A1]) = *((((v11 + 168075) % 0xFu) | &STACK[0x28A0]) + 1);
  *((((v11 + 168075) % 0xFu) | &STACK[0x28A0]) + 1) = v34;
  LOBYTE(v28) = STACK[0x28A2];
  LOBYTE(STACK[0x28A2]) = *((((a4 ^ a1) % 0xE) | &STACK[0x28A0]) + 2);
  *((((a4 ^ a1) % 0xE) | &STACK[0x28A0]) + 2) = v28;
  LOBYTE(v34) = STACK[0x28A3];
  LOBYTE(STACK[0x28A3]) = *((((v9 ^ 0xD6619544) % 0xD) | &STACK[0x28A0]) + 3);
  *((((v9 ^ 0xD6619544) % 0xD) | &STACK[0x28A0]) + 3) = v34;
  v35 = ((v7 - (v9 ^ 0xD6619544)) ^ 0x5FDD5FC7) - 1367350976 + ((2 * (v7 - (v9 ^ 0xD6619544))) & 0xBFBABF8E);
  v36 = ((2 * a4) & 0xF3DFB7FE ^ 0xC2CE0350) + (a4 ^ 0x9888FE57);
  v37 = v35 + v36;
  v38 = *(v33 + (((LOBYTE(STACK[0x28A4]) ^ 0xC) + 103) ^ 0xA0)) - 77;
  HIDWORD(v15) = v38 ^ 5;
  LODWORD(v15) = (v38 ^ 0x60) << 24;
  LOBYTE(STACK[0x28A4]) = *((((v35 + v36 + 609838261) % 0xC) | &STACK[0x28A0]) + 4);
  *((((v35 + v36 + 609838261) % 0xC) | &STACK[0x28A0]) + 4) = (v15 >> 27) - ((2 * (v15 >> 27)) & 0x18) + 12;
  v39 = v35 + a3;
  v40 = ((2 * (v39 - 1061587547)) & 0xFE6FFE7A ^ 0xB008925A) + ((v39 - 1061587547) ^ 0x277BB6D0);
  v41 = STACK[0x28A5];
  LOBYTE(STACK[0x28A5]) = *((((v40 - 2134376253) % 0xB) | &STACK[0x28A0]) + 5);
  *((((v40 - 2134376253) % 0xB) | &STACK[0x28A0]) + 5) = v41;
  v42 = STACK[0x28A6];
  LOBYTE(STACK[0x28A6]) = *((((v36 + 850830780) % 0xA) | &STACK[0x28A0]) + 6);
  *((((v36 + 850830780) % 0xA) | &STACK[0x28A0]) + 6) = v42;
  LODWORD(v32) = (v9 ^ 0xD6619544) + v39 - v36;
  v43 = STACK[0x28A7];
  LOBYTE(STACK[0x28A7]) = *((((v32 - 1163308636) % 9u) | &STACK[0x28A0]) + 7);
  *((((v32 - 1163308636) % 9u) | &STACK[0x28A0]) + 7) = v43;
  v44 = (v32 - 1163308636) ^ 0x60351916;
  v45 = v32 + 997282407 + v40;
  LODWORD(v32) = v37 + v36 + 928402494 - ((2 * (v37 + v36 + 928402494) + 1773737374) & 0x4080BA7E);
  v46 = v32 - 1793267698;
  v47 = ((v32 - 1793267698) ^ 0xA0405D3F) + v44 - ((2 * (((v32 - 1793267698) ^ 0xA0405D3F) + v44)) & 0x479352AE);
  v48 = &STACK[0x28A0] + (59 * (*(STACK[0xF30] + ((((-31 - v32) & 7u) + 55) ^ 0xFDLL)) ^ 0x8A));
  LOBYTE(v40) = STACK[0x28A8];
  LOBYTE(STACK[0x28A8]) = v48[8];
  v48[8] = v40;
  LODWORD(v48) = v47 + 600418647;
  v49 = ((2 * ((v47 + 600418647) ^ v45)) & 0x8DF3FACE ^ 0x593528E) + ((v47 + 600418647) ^ v45 ^ 0xE5305430);
  v50 = *(STACK[0xF50] + (((v49 + 956695193) % 7 + 103) ^ 0xA0));
  HIDWORD(v15) = v50 ^ 0x2F;
  LODWORD(v15) = (v50 ^ 0x40) << 24;
  v51 = (v15 >> 30) - ((2 * (v15 >> 30)) & 0x5C) - 82;
  HIDWORD(v15) = v51 ^ 6;
  LODWORD(v15) = (v51 ^ 0xAAAAAAAA) << 24;
  v52 = &STACK[0x28A0] + (v15 >> 27);
  LOBYTE(v33) = STACK[0x28A9];
  LOBYTE(STACK[0x28A9]) = v52[9];
  v52[9] = v33;
  STACK[0xF40] = v16;
  LOBYTE(v52) = v16[((((v36 - 1823103586) % 6) & 1) << 7) | ((((v36 - 1823103586) % 6) ^ 0x45D20106) >> 1) ^ 0x22E90083 | 0x60];
  LODWORD(STACK[0xF18]) = -120;
  v53 = &STACK[0x28A0] + (((-120 - 21 * v52) ^ 0x21) + 92);
  v54 = STACK[0x28AA];
  LOBYTE(STACK[0x28AA]) = v53[10];
  v53[10] = v54;
  LOBYTE(v33) = STACK[0x28AB];
  LOBYTE(STACK[0x28AB]) = *(((((v47 + 600418647) ^ 0x23C9A957) % 5) | &STACK[0x28A0]) + 0xB);
  *((((v48 ^ 0x23C9A957) % 5) | &STACK[0x28A0]) + 0xB) = v33;
  LODWORD(v33) = (v47 + 600418647) ^ v46;
  LOBYTE(v40) = STACK[0x28AC];
  v55 = (&STACK[0x28A0] | 0xC | v33 & 3);
  LOBYTE(STACK[0x28AC]) = *v55;
  *v55 = v40;
  v56 = v49 + 956695193 + ((v47 + 600418647) ^ 0x23C9A957);
  LODWORD(v48) = v36 + (v48 ^ 0x21A452B4) - v49 + 1515168518;
  v57 = (v33 ^ 0x8389F468) - ((2 * (v33 ^ 0x8389F468) + 1704417200) & 0xF7A2C122) - 1365439383;
  LODWORD(STACK[0x708]) = v57;
  v58 = v56 ^ v57;
  LODWORD(STACK[0xC54]) = v58;
  v59 = LOBYTE(STACK[0x28AD]) ^ 9;
  v60 = ((v58 ^ 0x7BD16091u) % 3) | &STACK[0x28A0];
  STACK[0xF08] = v30;
  LODWORD(v59) = *(v30 + v59);
  HIDWORD(v15) = v59 ^ 5;
  LODWORD(v15) = ~v59 << 24;
  LOBYTE(STACK[0x28AD]) = *(v60 + 13);
  *(v60 + 13) = (v15 >> 30) ^ 0x14;
  LOBYTE(v59) = STACK[0x28AE];
  v61 = (&STACK[0x28A0] | 0xE | v48 & 1);
  LOBYTE(STACK[0x28AE]) = *v61;
  *v61 = v59;
  LODWORD(STACK[0x718]) = v29 - ((2 * v29) & 0x11530DC4) - 2002155806;
  LODWORD(STACK[0x710]) = v48 - ((2 * v48) & 0x336D2944) - 1716087646;
  return (*(STACK[0xF58] + 8 * v6))(168244357, 4128204736, 3143754332, 1892078418, 985272911, 946039209, 1534898098, 90);
}

uint64_t sub_2444EEC38(uint64_t a1, int a2)
{
  LODWORD(STACK[0xEE8]) = v5;
  LODWORD(STACK[0xEE0]) = v2;
  LODWORD(STACK[0xEF8]) = v3;
  LODWORD(STACK[0xF00]) = v6;
  LODWORD(STACK[0x728]) = LODWORD(STACK[0xF78]) ^ 0x3C5F88B1;
  LODWORD(STACK[0x5B0]) = a2 + 536320496;
  v8 = *(v4 + 8 * (v7 - 2254));
  LODWORD(STACK[0xF68]) = 2050455268;
  LODWORD(STACK[0xF60]) = (v7 - 16259) | 0x624;
  return v8(3351305293, 3068868522, 1185502211, 128440027, 580916488);
}

uint64_t sub_2444EED50@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v22 = v19 + (a8 + (*(&STACK[0x26A0] + a8) ^ (LODWORD(STACK[0xF60]) + 86))) * a3;
  v23 = v22 + v18 - v20 + 1006631348 + (v22 + 1663880022) % 0x101u;
  v24 = LODWORD(STACK[0xF68]) - 1324807063;
  v25 = (v23 ^ v24) - ((2 * (v23 ^ v24) + 118836238) & 0xD68A76C) + 574552509;
  v26 = ((2 * (v25 ^ (v18 - 1349815189))) & 0xFE77B766 ^ 0xC60A764) + (v25 ^ (v18 - 1349815189) ^ 0x798F8805);
  v27 = ((v20 - 692566515) ^ v11 ^ v25) + v8 - (v10 & (2 * ((v20 - 692566515) ^ v11 ^ v25)));
  v28 = ((2 * ((v25 ^ v11) + v24)) & 0xCFB3FDFA) + (((v25 ^ v11) + v24) ^ 0xE7D9FEFD);
  HIDWORD(v29) = v25 ^ v11;
  LODWORD(v29) = v25;
  v30 = v26 - v28 + (((v29 >> 31) + v8 - (v10 & (2 * (v29 >> 31)))) ^ v27) + 1755194186;
  v31 = ((2 * ((v30 ^ v14) + (v27 ^ v8))) & 0xF7FF95FE) + (((v30 ^ v14) + (v27 ^ v8)) ^ 0xFBFFCAFF);
  v32 = (v30 ^ a4) + v26 - ((2 * ((v30 ^ a4) + v26) + 25708700) & v13) + 1616510193;
  HIDWORD(v29) = v30;
  LODWORD(v29) = ~v30;
  v33 = (v30 ^ v14 ^ (v28 + 405143811)) + v9 - ((2 * (v30 ^ v14 ^ (v28 + 405143811))) & 0x326DE9E2);
  v34 = (v33 ^ v9) + 626105547 + ((v31 + 67122433) ^ v32 ^ (((v29 >> 30) ^ 0xE160A490) - (v13 & (2 * ((v29 >> 30) ^ 0xE160A490))) - 543827805));
  v35 = v34 - ((2 * v34) & 0xDC8FA41A);
  v36 = v35 - 297283059;
  v37 = *(v21 + ((((v15 - v35) >> 29) + 103) ^ 0xA0)) - 77;
  v38 = ((2 * (v36 ^ v33)) & 0xBBBBDDEC ^ 0xAAA24DE8) + (v36 ^ v33 ^ 0xAAACC80A);
  v39 = (v36 ^ v15) + v31 + 814192832 - ((2 * ((v36 ^ v15) + v31) + 134244868) & 0x590EC77C);
  v40 = v36 ^ v32;
  HIDWORD(v29) = v37 ^ 5;
  LODWORD(v29) = (v37 ^ 0x60) << 24;
  v41 = (((8 * v36) ^ 0x723E9068) + (v29 >> 27) + v16 - 2 * ((((8 * v36) ^ 0x723E9068) + (v29 >> 27)) & (v16 + 1) ^ ((v29 & 0x8000000) != 0))) ^ v39;
  v42 = v38 + ((v41 - ((2 * v41) & 0x63A4155C) + 835848878) ^ v40);
  v43 = v42 + 580121570;
  v42 += 359263931;
  LODWORD(STACK[0xF48]) = (a2 & (2 * (v42 ^ v40)) ^ a5) + (v42 ^ v40 ^ 0x6AA7917B);
  LODWORD(STACK[0xF28]) = (a6 & (2 * (v42 ^ v39)) ^ a7) + (v42 ^ v39 ^ a1);
  LODWORD(STACK[0xF68]) = v38 + v17 + v43;
  return (*(STACK[0xF58] + 8 * (((2 * (a8 != 127)) | (4 * (a8 != 127))) ^ v12)))();
}

uint64_t sub_2444EF0E8(double a1, double a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8)
{
  v10 = v9;
  v11 = -v9;
  LODWORD(STACK[0xCD0]) = 0;
  v12 = STACK[0xF60];
  v13 = STACK[0xF28];
  v14 = ((2 * ((v8 + 45 * (v12 ^ 0xE8B) + 552298777) ^ (v13 + 204562473))) & 0xFA57BFFE) + ((v8 + 45 * (v12 ^ 0xE8B) + 552298777) ^ (v13 + 204562473) ^ 0x7D2BDFFF);
  v15 = STACK[0xF48];
  v16 = v14 + LODWORD(STACK[0xF48]) - LODWORD(STACK[0xF28]);
  v17 = STACK[0xF68];
  v18 = LODWORD(STACK[0xF68]) - v14;
  v19 = v11 - ((-896017422 - 2 * v10) & 0xB6424E5C) + 1080890663;
  LODWORD(STACK[0xF78]) = v19;
  v20 = STACK[0xEF8];
  v21 = v20 - ((2 * v20 + 39033092) & 0xCC70AA4E) - 412999255;
  v22 = STACK[0xF00];
  v23 = ((2 * ((v22 + 1538859052) ^ v21)) & 0x9BDFFBE8 ^ 0x8850AA48) + ((v22 + 1538859052) ^ v21 ^ 0x2BD7A8D3);
  LODWORD(STACK[0x7A0]) = v21;
  v24 = STACK[0xEE0];
  v25 = ((2 * ((v21 ^ 0x66385527) - LODWORD(STACK[0xEE0]) + 1938535698)) & 0xF9ADF8AE) + (((v21 ^ 0x66385527) - LODWORD(STACK[0xEE0]) + 1938535698) ^ 0xFCD6FC57);
  v26 = LODWORD(STACK[0xEE8]) ^ 0x1157A467;
  v27 = v26 - v22 + v23;
  v28 = LODWORD(STACK[0xEE0]) - v23;
  v29 = ((v28 + 1204427345 + v27 + 686819764) ^ 0xFCF2FBEB) + 51184661 + ((2 * (v28 + 1204427345 + v27 + 686819764)) & 0xF9E5F7D6);
  LODWORD(STACK[0xD70]) = 180509838 - v18;
  LODWORD(STACK[0xD58]) = -1142114133 - v23 - ((-1702750452 - 2 * v23) & 0xDD575A4A);
  LODWORD(STACK[0xD60]) = -1502675712 - v16 - ((446059484 - 2 * v16) & 0x3247A624);
  LODWORD(STACK[0xEE8]) = v25 - 1506867267;
  LODWORD(STACK[0xD30]) = 199800457 - v25 - ((914260632 - 2 * v25) & 0xE152EA7A);
  LODWORD(STACK[0xD68]) = v28 - 1091240972;
  LODWORD(STACK[0xD20]) = v27 + 1531844669;
  LODWORD(STACK[0xD10]) = -2018014632 - v10;
  LODWORD(STACK[0xD28]) = 40198457 - v24 - ((272890846 - 2 * v24) & 0xF486C694);
  LODWORD(STACK[0xD18]) = -32985174 - v26 - ((256665626 - 2 * v26) & 0xECC4F73A);
  LODWORD(STACK[0xD08]) = v17 - 46558490;
  LODWORD(STACK[0xCD8]) = -1073025054 - v13;
  LODWORD(STACK[0xD00]) = 514082964 - v8 - ((-1294994136 - 2 * v8) & 0x8A789C00);
  LODWORD(STACK[0xCE0]) = v22 + 601452261;
  LODWORD(STACK[0xCE8]) = v20 - 2119983039;
  LODWORD(STACK[0xCF8]) = v14 + 553381333;
  LODWORD(STACK[0xCF0]) = v15 - 1689928365;
  LODWORD(STACK[0x714]) = LODWORD(STACK[0xF10]) ^ 0xACBA992D;
  LODWORD(STACK[0xF00]) = (v19 ^ 0x24DED8D1) + v18 - 1649771265 + v16 - v10 + 933952348 - ((2 * ((v19 ^ 0x24DED8D1) + v18 - 1649771265 + v16 - v10 + 933952348)) & 0x63DBA26A) + 837669173;
  LODWORD(STACK[0xEC8]) = (v25 + v23 - 439819894 + v27 + v25 + 686819764) ^ 0xECEA5711;
  LODWORD(STACK[0xEE0]) = (v29 ^ 0xA073485) - ((2 * (v29 ^ 0xA073485)) & 0x8FEED0E2) - 940087183;
  v30 = *(STACK[0xF58] + 8 * v12);
  v31.n128_u64[0] = 0xC0C0C0C0C0C0C0CLL;
  v31.n128_u64[1] = 0xC0C0C0C0C0C0C0CLL;
  v32.n128_u64[0] = 0xEBEBEBEBEBEBEBEBLL;
  v32.n128_u64[1] = 0xEBEBEBEBEBEBEBEBLL;
  v33.n128_u64[0] = 0x2121212121212121;
  v33.n128_u64[1] = 0x2121212121212121;
  v34.n128_u64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v34.n128_u64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v35.n128_u64[0] = 0x101010101010101;
  v35.n128_u64[1] = 0x101010101010101;
  v36.n128_u64[0] = 0x5A5A5A5A5A5A5A5ALL;
  v36.n128_u64[1] = 0x5A5A5A5A5A5A5A5ALL;
  a7.n128_u16[0] = 3084;
  a7.n128_u8[2] = 12;
  a7.n128_u8[3] = 12;
  a7.n128_u8[4] = 12;
  a7.n128_u8[5] = 12;
  a7.n128_u8[6] = 12;
  a7.n128_u8[7] = 12;
  a8.n128_u16[0] = -5141;
  a8.n128_u8[2] = -21;
  a8.n128_u8[3] = -21;
  a8.n128_u8[4] = -21;
  a8.n128_u8[5] = -21;
  a8.n128_u8[6] = -21;
  a8.n128_u8[7] = -21;
  STACK[0xC58] = &STACK[0x2858];
  LODWORD(STACK[0x750]) = 172;
  LODWORD(STACK[0x578]) = 234;
  return v30(-57397025, v31, v32, v33, v34, v35, v36, a7, a8);
}

uint64_t sub_2444EF5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  LODWORD(STACK[0xE30]) = v9;
  LODWORD(STACK[0xE3C]) = v10;
  LODWORD(STACK[0xE40]) = v8;
  STACK[0xCC8] = a5;
  STACK[0xCB8] = v6;
  if (v6 >= 0xC9DAFA0C)
  {
    v12 = 3386571276;
  }

  else
  {
    v12 = v6;
  }

  STACK[0xEF8] = (v12 + 1) & 0x1FFFFFFF0;
  STACK[0xEB0] = ((v12 + 1) & 0xFFFFFFF0) - 16;
  STACK[0xCC0] = a6;
  STACK[0xED0] = a6 << 6;
  v13 = 127 - (a6 << 6);
  if (v13 >= 0xC9DAFA0C)
  {
    LODWORD(v13) = -908396020;
  }

  LODWORD(STACK[0xED8]) = v13 + 1;
  STACK[0xD78] = v7;
  v14 = ((v11 + 207) ^ 0x11Eu ^ (a1 + 2346)) + v7;
  STACK[0xCB0] = v14;
  v15 = *(STACK[0xF58] + 8 * ((19632 * (v14 < 0x41)) ^ v11));
  STACK[0xF48] = *(&off_278E1E490 + (v11 ^ 0xE4D)) - 12;
  v16 = *(&off_278E1E490 + (v11 ^ 0xCE4));
  STACK[0xF60] = *(&off_278E1E490 + (v11 ^ 0x907)) - 12;
  STACK[0xF68] = v16 - 4;
  STACK[0xF10] = *(&off_278E1E490 + (v11 ^ 0xEA1)) - 4;
  STACK[0xF28] = *(&off_278E1E490 + (v11 ^ 0xE1B)) - 4;
  return v15();
}