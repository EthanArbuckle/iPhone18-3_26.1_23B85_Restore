void sub_FA4(id a1)
{
  qword_151E8 = objc_alloc_init(IDEDataProvider_SpriteKit);

  _objc_release_x1();
}

void sub_10CC(id a1)
{
  v4[0] = @"spritekit.fps";
  v4[1] = @"spritekit.traversals";
  v4[2] = @"spritekit.frametime";
  v4[3] = @"spritekit.clienttime";
  v4[4] = @"spritekit.physictime";
  v4[5] = @"spritekit.consttime";
  v4[6] = @"spritekit.actiontime";
  v4[7] = @"spritekit.emittertime";
  v4[8] = @"spritekit.rendertime";
  v1 = [NSArray arrayWithObjects:v4 count:9];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_151F8;
  qword_151F8 = v2;
}

void sub_12C8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [*(*(a1 + 40) + 24) objectForKey:{v6, v8}];
        [v7 BOOLValue];
        [*(a1 + 48) addObject:v6];
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void sub_1530(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [*(*(a1 + 40) + 24) objectForKey:{v6, v8}];
        if ([v7 BOOLValue])
        {
          [*(*(a1 + 40) + 24) removeObjectForKey:v6];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void sub_17B0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        v7 = +[NSMutableDictionary dictionary];
        if ([*(a1 + 40) captureAttributes:*(a1 + 48) toDictionary:v7 forPID:v6])
        {
          [*(a1 + 56) setObject:v7 forKeyedSubscript:v6];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void sub_19B0(id a1)
{
  qword_15208 = objc_alloc_init(IDEDataProvider_NetworkStatistics);

  _objc_release_x1();
}

void sub_1AC4(id a1)
{
  qword_15218 = [NSSet setWithArray:&off_11820];

  _objc_release_x1();
}

void sub_2328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

void sub_248C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = IDEDataProvider_NetworkStatistics;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2674(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 40))
  {
    v3 = dispatch_queue_create("NStatManager queue", 0);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    block[5] = _NSConcreteStackBlock;
    block[6] = 3221225472;
    block[7] = sub_28A4;
    block[8] = &unk_10578;
    block[9] = v6;
    *(*(a1 + 32) + 40) = NStatManagerCreate();
    v8 = *(*(a1 + 32) + 40);
    NStatManagerAddAllUDP();
    v9 = *(*(a1 + 32) + 40);
    NStatManagerAddAllTCP();
    v2 = *(a1 + 32);
  }

  v10 = *(v2 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3B4C;
  block[3] = &unk_105A0;
  block[4] = v2;
  dispatch_sync(v10, block);
  v11 = +[NSDate date];
  v12 = *(*(a1 + 32) + 40);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v13 = v11;
  NStatManagerQueryAllSourcesUpdate();
}

uint64_t sub_28A4(uint64_t a1, const void *a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 48));
  CFRetain(a2);
  v7 = *(a1 + 32);
  NStatSourceSetDescriptionBlock();
  v6 = *(a1 + 32);
  NStatSourceSetCountsBlock();
  v5 = *(a1 + 32);
  return NStatSourceSetRemovedBlock();
}

void sub_29F8(uint64_t a1, void *a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 48));
  v4 = a2;
  v5 = sub_2F64((*(a1 + 32) + 96), (a1 + 40));
  v6 = v4;
  v7 = [v6 objectForKeyedSubscript:kNStatSrcKeyPID];
  v8 = [v7 copy];
  v9 = v8;
  v10 = *v5;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *v5;
  }

  objc_storeStrong(v5, v11);

  v12 = [v6 objectForKeyedSubscript:kNStatSrcKeyInterface];
  v13 = [v12 integerValue];
  if (qword_15230 != -1)
  {
    sub_80E4();
  }

  v14 = qword_15228;
  v15 = [NSNumber numberWithUnsignedLong:v13];
  v16 = [v14 objectForKey:v15];

  v17 = v16;
  if (!v16)
  {
    v46 = xmmword_92B0;
    v47 = v13;
    v48 = 1;
    v44 = 180;
    if (sysctl(&v46, 6u, uu, &v44, 0, 0) || ([NSString stringWithUTF8String:uu], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = [NSString stringWithFormat:@"%i", v13];
    }

    v18 = qword_15228;
    v19 = [NSNumber numberWithUnsignedLong:v13];
    [v18 setObject:v16 forKey:v19];

    v17 = v16;
    if (!v16)
    {
      v17 = v5[41];
    }
  }

  objc_storeStrong(v5 + 41, v17);

  v20 = [v6 objectForKeyedSubscript:kNStatSrcKeyProvider];
  v21 = [v20 copy];
  v22 = v21;
  v23 = v5[42];
  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v5[42];
  }

  objc_storeStrong(v5 + 42, v24);

  v25 = [v6 objectForKeyedSubscript:kNStatSrcKeyTCPState];
  v26 = [v25 copy];
  v27 = v26;
  v28 = v5[43];
  if (v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v5[43];
  }

  objc_storeStrong(v5 + 43, v29);

  v30 = [v6 objectForKeyedSubscript:kNStatSrcKeyLocal];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
    sub_3FE4(v5 + 8, [v31 bytes], objc_msgSend(v31, "length"));
    sub_408C((v5 + 1), v5[42]);
  }

  v33 = [v6 objectForKeyedSubscript:kNStatSrcKeyRemote];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
    sub_3FE4(v5 + 64, [v34 bytes], objc_msgSend(v34, "length"));
    sub_408C(v5 + 4, v5[42]);
  }

  v36 = [v6 objectForKeyedSubscript:@"fuuid"];
  if ([v36 length])
  {
    v37 = [[NSUUID alloc] initWithUUIDString:v36];
    memset(uu, 0, 16);
    [v37 getUUIDBytes:uu];
    if (v37 && !uuid_is_null(uu))
    {
      while (1)
      {
        v41 = nw_path_copy_path_for_client();
        v42 = v41;
        if (!v41 || nw_path_get_status(v41) == nw_path_status_invalid)
        {
          v38 = 0;
          goto LABEL_35;
        }

        v39 = nw_path_copy_parameters();
        account_id = nw_parameters_get_account_id();
        if (account_id)
        {
          v38 = [NSString stringWithUTF8String:account_id];
          goto LABEL_34;
        }

        v46 = 0uLL;
        nw_parameters_get_parent_id();
        if (uuid_is_null(&v46))
        {
          break;
        }

        *uu = v46;
      }

      v38 = 0;
LABEL_34:

LABEL_35:
    }

    else
    {
      v38 = 0;
    }

    v43 = v5[45];
    v5[45] = v38;
  }
}

void *sub_2F64(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9 + 3;
}

void sub_3438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4730(va);
  _Unwind_Resume(a1);
}

void sub_346C(uint64_t a1, void *a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 48));
  v4 = a2;
  v5 = sub_2F64((*(a1 + 32) + 96), (a1 + 40));
  v6 = *(v5 + 16);
  *(v5 + 21) = *(v5 + 17);
  v7 = *(v5 + 19);
  *(v5 + 23) = *(v5 + 18);
  *(v5 + 25) = v7;
  v5[27] = v5[40];
  v8 = *(v5 + 15);
  *(v5 + 15) = *(v5 + 14);
  *(v5 + 17) = v8;
  *(v5 + 19) = v6;
  sub_4244(v23, v4);
  v9 = v23[5];
  *(v5 + 18) = v23[4];
  *(v5 + 19) = v9;
  v5[40] = v24;
  v10 = v23[1];
  *(v5 + 14) = v23[0];
  *(v5 + 15) = v10;
  v11 = v23[3];
  *(v5 + 16) = v23[2];
  *(v5 + 17) = v11;
  v12 = [*v5 intValue];
  v13 = *(a1 + 32);
  v14 = *(v13 + 64);
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = vcnt_s8(v14);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = v12;
    if (v14 <= v12)
    {
      v16 = v12 % v14;
    }
  }

  else
  {
    v16 = (v14 - 1) & v12;
  }

  v17 = *(*(v13 + 56) + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v19 = v18->u64[1];
    if (v19 == v12)
    {
      break;
    }

    if (v15.u32[0] > 1uLL)
    {
      if (v19 >= v14)
      {
        v19 %= v14;
      }
    }

    else
    {
      v19 &= v14 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_18;
    }

LABEL_17:
    v18 = v18->i64[0];
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  if (v18[1].i32[0] != v12)
  {
    goto LABEL_17;
  }

  v20 = v18[9];
  v18[8] = vaddq_s64(vsubq_s64(*(v5 + 14), *(v5 + 15)), v18[8]);
  v18[9] = vaddq_s64(vsubq_s64(*(v5 + 15), *(v5 + 17)), v20);
  v21 = v18[11];
  v18[10] = vaddq_s64(vsubq_s64(*(v5 + 16), *(v5 + 19)), v18[10]);
  v18[11] = vaddq_s64(vsubq_s64(*(v5 + 17), *(v5 + 21)), v21);
  v22 = v18[13];
  v18[12] = vaddq_s64(vsubq_s64(*(v5 + 18), *(v5 + 23)), v18[12]);
  v18[13] = vaddq_s64(vsubq_s64(*(v5 + 19), *(v5 + 25)), v22);
  v18[14].i64[0] += v5[40] - v5[27];
}

void sub_3824(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void sub_3850(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 48));
  v2 = *(a1 + 40);
  v3 = NStatSourceCopyCounts();
  v4 = sub_2F64((*(a1 + 32) + 96), (a1 + 40));
  if (v3)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    *(v4 + 21) = *(v4 + 17);
    v7 = *(v4 + 19);
    *(v4 + 23) = *(v4 + 18);
    *(v4 + 25) = v7;
    v4[27] = v4[40];
    v8 = *(v4 + 15);
    *(v4 + 15) = *(v4 + 14);
    *(v4 + 17) = v8;
    *(v4 + 19) = v6;
    sub_4244(&v31, v3);
    v9 = v36;
    *(v5 + 18) = v35;
    *(v5 + 19) = v9;
    v5[40] = v37;
    v10 = v32;
    *(v5 + 14) = v31;
    *(v5 + 15) = v10;
    v11 = v34;
    *(v5 + 16) = v33;
    *(v5 + 17) = v11;
  }

  v12 = *(a1 + 40);
  v13 = (*(a1 + 32) + 96);
  v14 = *(*(a1 + 32) + 104);
  if (!*&v14)
  {
    goto LABEL_49;
  }

  v15 = 0x9DDFEA08EB382D69 * ((8 * (*(a1 + 40) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(a1 + 40)));
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ (v15 >> 47) ^ v15);
  v17 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  v18 = vcnt_s8(v14);
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = v17;
    if (v17 >= *&v14)
    {
      v19 = v17 % *&v14;
    }
  }

  else
  {
    v19 = v17 & (*&v14 - 1);
  }

  v20 = *v13;
  v21 = *(*v13 + 8 * v19);
  if (!v21)
  {
    goto LABEL_49;
  }

  v22 = *v21;
  if (!v22)
  {
    goto LABEL_49;
  }

  v23 = *&v14 - 1;
  while (1)
  {
    v24 = v22[1];
    if (v24 == v17)
    {
      break;
    }

    if (v18.u32[0] > 1uLL)
    {
      if (v24 >= *&v14)
      {
        v24 %= *&v14;
      }
    }

    else
    {
      v24 &= v23;
    }

    if (v24 != v19)
    {
      goto LABEL_49;
    }

LABEL_19:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_49;
    }
  }

  if (v22[2] != v12)
  {
    goto LABEL_19;
  }

  v25 = *v22;
  if (v18.u32[0] > 1uLL)
  {
    if (v17 >= *&v14)
    {
      v17 %= *&v14;
    }
  }

  else
  {
    v17 &= v23;
  }

  v26 = *(v20 + 8 * v17);
  do
  {
    v27 = v26;
    v26 = *v26;
  }

  while (v26 != v22);
  if (v27 == (*(a1 + 32) + 112))
  {
    goto LABEL_38;
  }

  v28 = v27[1];
  if (v18.u32[0] > 1uLL)
  {
    if (v28 >= *&v14)
    {
      v28 %= *&v14;
    }
  }

  else
  {
    v28 &= v23;
  }

  if (v28 == v17)
  {
LABEL_40:
    if (v25)
    {
      v29 = v25[1];
      goto LABEL_42;
    }
  }

  else
  {
LABEL_38:
    if (!v25)
    {
      goto LABEL_39;
    }

    v29 = v25[1];
    if (v18.u32[0] > 1uLL)
    {
      v30 = v25[1];
      if (v29 >= *&v14)
      {
        v30 = v29 % *&v14;
      }
    }

    else
    {
      v30 = v29 & v23;
    }

    if (v30 != v17)
    {
LABEL_39:
      *(v20 + 8 * v17) = 0;
      v25 = *v22;
      goto LABEL_40;
    }

LABEL_42:
    if (v18.u32[0] > 1uLL)
    {
      if (v29 >= *&v14)
      {
        v29 %= *&v14;
      }
    }

    else
    {
      v29 &= v23;
    }

    if (v29 != v17)
    {
      *(*v13 + 8 * v29) = v27;
      v25 = *v22;
    }
  }

  *v27 = v25;
  *v22 = 0;
  --v13[3];
  *&v31 = v22;
  *(&v31 + 1) = v13;
  LOBYTE(v32) = 1;
  *(&v32 + 1) = 0;
  DWORD1(v32) = 0;
  sub_4730(&v31);
  v12 = *(a1 + 40);
LABEL_49:
  CFRelease(v12);
}

__n128 sub_3B4C(uint64_t a1)
{
  for (i = *(*(a1 + 32) + 72); i; i = *i)
  {
    v2 = *(i + 10);
    *(i + 9) = *(i + 11);
    v3 = *(i + 13);
    *(i + 11) = *(i + 12);
    *(i + 13) = v3;
    result = *(i + 8);
    v5 = *(i + 9);
    *(i + 3) = result;
    *(i + 5) = v5;
    i[15] = i[28];
    *(i + 7) = v2;
  }

  return result;
}

void sub_3B9C(uint64_t a1)
{
  v7 = *(a1 + 32);
  v2 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C80;
  block[3] = &unk_104C0;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v2, block);
}

void sub_3C80(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [NSMutableDictionary dictionaryWithCapacity:32, v11];
        [v10 setObject:v9 forKeyedSubscript:@"pid"];
        [v10 setObject:*(a1 + 48) forKeyedSubscript:@"time"];
        if ([*(a1 + 32) captureAttributes:*(a1 + 56) toDictionary:v10 forPID:v9])
        {
          [*(*(a1 + 32) + 32) setObject:v10 forKeyedSubscript:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

uint64_t sub_3E4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_3E64(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_3FE4(unsigned __int8 *__dst, unsigned __int8 *__src, size_t __n)
{
  if (__n - 29 >= 0xFFFFFFFFFFFFFFE4)
  {
    v5 = *__src;
    if (v5 <= __n && (v5 != *__dst || memcmp(__src, __dst, v5)))
    {
      memcpy(__dst, __src, __n);
      v7 = *(__dst + 4);
      *(__dst + 4) = 0;

      v8 = *(__dst + 5);
      *(__dst + 5) = 0;
    }
  }
}

void sub_408C(const sockaddr *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*&a1[2].sa_len || !*&a1[2].sa_data[6])
  {
    if (v3)
    {
      if ([v3 isEqualToString:@"UDP"])
      {
        v5 = 26;
      }

      else
      {
        v5 = 10;
      }
    }

    else
    {
      v5 = 10;
    }

    v6 = getnameinfo(a1, a1->sa_len, v16, 0x401u, v15, 0x20u, v5);
    if (v6)
    {
      v7 = *&a1[2].sa_len;
      *&a1[2].sa_len = @"?";

      v8 = *&a1[2].sa_data[6];
      *&a1[2].sa_data[6] = @"?";

      v9 = [NSString stringWithUTF8String:gai_strerror(v6)];
    }

    else
    {
      v10 = [NSString stringWithUTF8String:v16];
      v11 = *&a1[2].sa_len;
      *&a1[2].sa_len = v10;

      v12 = [NSString stringWithUTF8String:v15];
      v13 = *&a1[2].sa_data[6];
      *&a1[2].sa_data[6] = v12;

      v9 = 0;
    }

    v14 = *&a1[3].sa_len;
    *&a1[3].sa_len = v9;
  }
}

void sub_4208(id a1)
{
  qword_15228 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void *sub_4244(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:kNStatSrcKeyRxPackets];
    *a1 = [v5 integerValue];

    v6 = [v4 objectForKeyedSubscript:kNStatSrcKeyRxBytes];
    a1[1] = [v6 integerValue];

    v7 = [v4 objectForKeyedSubscript:kNStatSrcKeyTxPackets];
    a1[2] = [v7 integerValue];

    v8 = [v4 objectForKeyedSubscript:kNStatSrcKeyTxBytes];
    a1[3] = [v8 integerValue];

    v9 = [v4 objectForKeyedSubscript:kNStatSrcKeyRxDupeBytes];
    a1[4] = [v9 integerValue];

    v10 = [v4 objectForKeyedSubscript:kNStatSrcKeyRxOOOBytes];
    a1[5] = [v10 integerValue];

    v11 = [v4 objectForKeyedSubscript:kNStatSrcKeyTxReTx];
    a1[6] = [v11 integerValue];

    v12 = [v4 objectForKeyedSubscript:kNStatSrcKeyConnectAttempt];
    a1[7] = [v12 integerValue];

    v13 = [v4 objectForKeyedSubscript:kNStatSrcKeyConnectSuccess];
    a1[8] = [v13 integerValue];

    v14 = [v4 objectForKeyedSubscript:kNStatSrcKeyRxCellularBytes];
    a1[9] = [v14 integerValue];

    v15 = [v4 objectForKeyedSubscript:kNStatSrcKeyTxCellularBytes];
    a1[10] = [v15 integerValue];

    v16 = [v4 objectForKeyedSubscript:kNStatSrcKeyRxWiFiBytes];
    a1[11] = [v16 integerValue];

    v17 = [v4 objectForKeyedSubscript:kNStatSrcKeyTxWiFiBytes];
    a1[12] = [v17 integerValue];
  }

  else
  {
    a1[12] = 0;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return a1;
}

void sub_44F8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_46FC();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_46FC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_4730(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_47B8(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_47B8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_4988(id a1)
{
  qword_15238 = objc_alloc_init(IDEDataProvider_Energy);

  _objc_release_x1();
}

void sub_4A8C(id a1)
{
  v4[0] = @"energy.cost";
  v4[1] = @"energy.overhead";
  v4[2] = @"energy.version";
  v4[3] = @"energy.cpu.cost";
  v4[4] = @"energy.cpu.overhead";
  v4[5] = @"energy.networking.cost";
  v4[6] = @"energy.networkning.overhead";
  v4[7] = @"energy.location.cost";
  v4[8] = @"energy.location.overhead";
  v4[9] = @"energy.gpu.cost";
  v4[10] = @"energy.gpu.overhead";
  v4[11] = @"energy.display.cost";
  v4[12] = @"energy.display.overhead";
  v4[13] = @"energy.appstate.cost";
  v4[14] = @"energy.appstate.overhead";
  v4[15] = @"energy.thermalstate.cost";
  v4[16] = @"energy.inducedthermalstate.cost";
  v1 = [NSArray arrayWithObjects:v4 count:17];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_15248;
  qword_15248 = v2;
}

uint64_t sub_552C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 longValue];
    v3 = -1;
    v4 = 2;
    v5 = 3;
    if (v2 != (&dword_1C + 2))
    {
      v5 = -1;
    }

    if (v2 != &dword_14)
    {
      v4 = v5;
    }

    if (v2 == (&dword_8 + 2))
    {
      v3 = 1;
    }

    if (!v2)
    {
      v3 = 0;
    }

    if (v2 <= 19)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

void sub_5BB0(id a1)
{
  qword_15258 = objc_alloc_init(IDEDataProvider_SceneKit);

  _objc_release_x1();
}

void sub_5CD8(id a1)
{
  v4[0] = @"scenekit.fps";
  v4[1] = @"scenekit.primcnt";
  v4[2] = @"scenekit.frmtime";
  v4[3] = @"scenekit.phytime";
  v4[4] = @"scenekit.prttime";
  v4[5] = @"scenekit.animtime";
  v4[6] = @"scenekit.clientTime";
  v4[7] = @"scenekit.rendertime";
  v4[8] = @"scenekit.consttime";
  v4[9] = @"scenekit.cpuidletime";
  v4[10] = @"scenekit.cawaittime";
  v4[11] = @"scenekit.shaderGenerationCount";
  v4[12] = @"scenekit.shaderCompilationTime";
  v4[13] = @"scenekit.deviceutil";
  v4[14] = @"scenekit.rendererutil";
  v4[15] = @"scenekit.tilerutil";
  v1 = [NSArray arrayWithObjects:v4 count:16];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_15268;
  qword_15268 = v2;
}

void sub_5F18(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [*(*(a1 + 40) + 24) objectForKey:{v6, v8}];
        if ([v7 BOOLValue])
        {
          [*(a1 + 48) addObject:v6];
        }

        else
        {
          [v6 intValue];
          if (_SCNStartCollectingPerformanceStatisticsForPid())
          {

            [*(*(a1 + 40) + 24) setObject:&__kCFBooleanTrue forKey:v6];
            v7 = &__kCFBooleanTrue;
            [*(a1 + 48) addObject:v6];
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void sub_644C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [*(*(a1 + 40) + 24) objectForKey:{v6, v8}];
        if ([v7 BOOLValue])
        {
          [v6 intValue];
          _SCNStopCollectingPerformanceStatisticsForPid();
          [*(*(a1 + 40) + 24) removeObjectForKey:v6];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void sub_66D8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = +[NSMutableDictionary dictionary];
        v8 = [*(a1 + 40) containsObject:@"shaders"];
        v9 = *(a1 + 48);
        if (!v8)
        {
          if (![v9 captureAttributes:*(a1 + 40) toDictionary:v7 forPID:v6])
          {
            goto LABEL_11;
          }

LABEL_10:
          [*(a1 + 56) setObject:v7 forKeyedSubscript:v6];
          goto LABEL_11;
        }

        if ([v9 captureShadersToDictionary:v7 forPID:v6])
        {
          goto LABEL_10;
        }

LABEL_11:

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

void sub_6CAC(id a1)
{
  qword_15278 = objc_alloc_init(IDEDataProvider_procinfo);

  _objc_release_x1();
}

void sub_6D9C(id a1)
{
  qword_15288 = [NSSet setWithArray:&off_11838];

  _objc_release_x1();
}

void sub_7DA4(uint64_t a1)
{
  v2 = +[NSDate date];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = [NSMutableDictionary dictionaryWithCapacity:32];
        [v7 setObject:v6 forKeyedSubscript:@"pid"];
        [v7 setObject:v2 forKeyedSubscript:@"time"];
        if ([*(a1 + 40) captureAttributes:*(a1 + 48) toDictionary:v7 forPID:v6])
        {
          [*(a1 + 56) setObject:v7 forKeyedSubscript:v6];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}