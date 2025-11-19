uint64_t sub_10001CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = a4;
  v25 = a6;
  v15 = sub_1000057A0(&qword_10009E6D8, &qword_10007DA48);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  if (a9)
  {
    sub_10007AC0C();
  }

  sub_1000187C8(a1, v18, &qword_10009E6D8, &qword_10007DA48);
  v19 = sub_10007AAEC();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v21 = sub_10007AACC();
    (*(v20 + 8))(v18, v19);
  }

  if (a8)
  {
    v22 = sub_10007AB7C();
  }

  else
  {
    v22 = 0;
  }

  v26 = v21;
  v27 = a2;
  v28 = a3;
  v29 = v24;
  v30 = a5;
  v31 = v25;
  v32 = a7;
  v33 = v22;

  sub_1000057A0(&qword_10009E6F0, &qword_10007DA70);
  return sub_10007B30C();
}

uint64_t sub_10001CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_1000057A0(&qword_10009E6D8, &qword_10007DA48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v28 - v14;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v29 = v16;
  if (a2)
  {
    sub_10007AADC();
    v18 = sub_10007AAEC();
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v19 = sub_10007AAEC();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  if (a3)
  {
    v20 = sub_10007B19C();
    a3 = v21;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v22 = 0;
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v24 = 0;
    goto LABEL_11;
  }

  v20 = 0;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v22 = sub_10007B19C();
  a4 = v23;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_7:
  v24 = sub_10007B19C();
  a5 = v25;
LABEL_11:

  v26 = a6;
  v29(v15, v20, a3, v22, a4, v24, a5, a6);

  return sub_100008824(v15, &qword_10009E6D8, &qword_10007DA48);
}

void sub_10001D0E8(uint64_t a1)
{
  v2 = sub_1000057A0(&qword_10009E6D0, &qword_10007DA40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  sub_100005C8C(0, &qword_10009E390, OS_dispatch_queue_ptr);
  v7 = sub_10007B44C();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_10001D4C8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D56C;
  aBlock[3] = &unk_100096198;
  v10 = _Block_copy(aBlock);

  BRSharingCopyCurrentUserNameAndDisplayHandle();
  _Block_release(v10);
}

uint64_t sub_10001D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000057A0(&qword_10009E6D8, &qword_10007DA48);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v17 - v10;
  sub_1000187C8(a1, v17 - v10, &qword_10009E6D8, &qword_10007DA48);
  v12 = sub_10007AAEC();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v14 = sub_10007AACC();
    (*(v13 + 8))(v11, v12);
  }

  if (a4)
  {
    v15 = sub_10007AB7C();
  }

  else
  {
    v15 = 0;
  }

  v17[0] = v14;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = v15;

  sub_1000057A0(&qword_10009E6D0, &qword_10007DA40);
  return sub_10007B30C();
}

uint64_t sub_10001D434()
{
  v1 = sub_1000057A0(&qword_10009E6D0, &qword_10007DA40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001D4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(sub_1000057A0(&qword_10009E6D0, &qword_10007DA40) - 8) + 80);

  return sub_10001D2B4(a1, a2, a3, a4);
}

uint64_t sub_10001D56C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000057A0(&qword_10009E6D8, &qword_10007DA48);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_10007AADC();
    v14 = sub_10007AAEC();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_10007AAEC();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  if (a3)
  {
    v16 = sub_10007B19C();
    a3 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a4;
  v13(v11, v16, a3, a4);

  return sub_100008824(v11, &qword_10009E6D8, &qword_10007DA48);
}

uint64_t sub_10001D6F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001D710(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = sub_1000057A0(&qword_10009E710, &qword_10007DAA8);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = &v43 - v5;
  v6 = sub_10007AC4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v9;
  v10 = sub_1000057A0(&qword_10009E708, &qword_10007DAA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v43 - v16;
  v47 = sub_10007AC2C();
  sub_10007ABFC(v18);
  v20 = v19;
  aBlock[0] = 0;
  v21 = [v19 br_typeIdentifierWithError:aBlock];

  v22 = aBlock[0];
  if (v21)
  {
    v44 = v10;
    v45 = v4;
    v46 = v3;
    sub_10007B19C();
    v23 = v22;

    v24 = objc_allocWithZone(BRShareCopyShareURLOperation);
    sub_10007ABFC(v25);
    v27 = v26;
    v28 = sub_10007B15C();

    v29 = [v24 initWithFileURL:v27 documentType:v28];

    if (v29)
    {
      [v29 setQualityOfService:25];
      v30 = v48;
      (*(v7 + 16))(v48, a2, v6);
      v32 = v50;
      v31 = v51;
      v33 = v46;
      (*(v51 + 16))(v50, v52, v46);
      v34 = (*(v7 + 80) + 17) & ~*(v7 + 80);
      v35 = (v49 + *(v31 + 80) + v34) & ~*(v31 + 80);
      v36 = swift_allocObject();
      v36[16] = v47;
      (*(v7 + 32))(&v36[v34], v30, v6);
      (*(v31 + 32))(&v36[v35], v32, v33);
      aBlock[4] = sub_10001E448;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001DDF4;
      aBlock[3] = &unk_1000962B0;
      v37 = _Block_copy(aBlock);

      [v29 setCopyShareURLCompletionBlock:v37];
      _Block_release(v37);
      if (qword_10009DF40 != -1)
      {
        swift_once();
      }

      [qword_10009E6B8 addOperation:v29];
    }

    else
    {
      (*(v7 + 56))(v17, 1, 1, v6);
      v41 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
      v42 = *(v44 + 48);
      sub_100018608(v17, v13);
      *&v13[v42] = v41;
      sub_10007B30C();
    }
  }

  else
  {
    v38 = aBlock[0];
    sub_10007AB8C();

    swift_willThrow();
    (*(v7 + 56))(v17, 1, 1, v6);
    v39 = sub_10007AB7C();
    v40 = *(v10 + 48);
    sub_100018608(v17, v13);
    *&v13[v40] = v39;
    sub_10007B30C();
  }
}

uint64_t sub_10001DC94(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1000057A0(&qword_10009E708, &qword_10007DAA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v17 - v12;
  if (a3)
  {
    sub_10007AC0C();
  }

  sub_1000187C8(a1, v13, &unk_10009ED10, &qword_10007D310);
  if (a2)
  {
    v14 = sub_10007AB7C();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v6 + 48);
  sub_100018608(v13, v9);
  *&v9[v15] = v14;
  sub_1000057A0(&qword_10009E710, &qword_10007DAA8);
  return sub_10007B30C();
}

uint64_t sub_10001DDF4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_10007AC1C();
    v12 = sub_10007AC4C();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_10007AC4C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_100008824(v9, &unk_10009ED10, &qword_10007D310);
}

id sub_10001DF48()
{
  v0 = objc_opt_self();
  if (![v0 mightHaveDataSeparatedAccountDescriptor])
  {
    return 0;
  }

  result = [v0 allLoggedInAccountDescriptors];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_100005C8C(0, &qword_10009E6E0, BRAccountDescriptor_ptr);
  v3 = sub_10007B2AC();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = sub_10007B64C();
  if (!v4)
  {
LABEL_19:

    return 0;
  }

LABEL_5:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_10007B5DC();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v6 isDataSeparated])
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_19;
    }
  }

  v9 = [v7 accountIdentifier];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_10007B19C();

  return v10;
}

uint64_t sub_10001E0E4(uint64_t a1)
{
  v4 = *(sub_10007AC4C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DACC;

  return sub_1000198A8(a1, v1 + v5);
}

uint64_t sub_10001E1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(sub_10007AC4C() - 8);
  v17 = ((*(v16 + 80) + 17) & ~*(v16 + 80)) + *(v16 + 64);
  v18 = *(sub_1000057A0(&qword_10009E6F0, &qword_10007DA70) - 8);
  v20 = v8 + ((v17 + *(v18 + 80)) & ~*(v18 + 80));
  return sub_10001CD20(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));
}

uint64_t sub_10001E330(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10007AC4C() - 8);
  v8 = ((*(v7 + 80) + 17) & ~*(v7 + 80)) + *(v7 + 64);
  v9 = *(*(sub_1000057A0(&qword_10009E700, &qword_10007DA90) - 8) + 80);
  v10 = *(v3 + 16);

  return sub_10001C790(a1, a2, a3, v10);
}

uint64_t sub_10001E448(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10007AC4C() - 8);
  v6 = ((*(v5 + 80) + 17) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(*(sub_1000057A0(&qword_10009E710, &qword_10007DAA8) - 8) + 80);
  v8 = *(v2 + 16);

  return sub_10001DC94(a1, a2, v8);
}

uint64_t sub_10001E544()
{
  v1 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1000057A0(&qword_10009E720, &qword_10007DAC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_10007AC4C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_10001E6F4(void *a1, uint64_t a2)
{
  v5 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000057A0(&qword_10009E720, &qword_10007DAC0) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10001C114(a1, a2, v9, v2 + v6);
}

id sub_10001E7F4()
{
  sub_10007ABFC(__stack_chk_guard);
  v1 = v0;
  v2 = BRSharingCreateShareForItemAtURL();

  if (!v2)
  {
    v3 = 0;
  }

  return v2;
}

uint64_t sub_10001E888(uint64_t a1)
{
  v4 = *(sub_10007AC4C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DACC;

  return sub_10001ADFC(a1, v1 + v5);
}

uint64_t sub_10001E964()
{
  v1 = sub_10007AC4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001E9EC(uint64_t a1)
{
  v4 = *(sub_10007AC4C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D9D8;

  return sub_10001B02C(a1, v1 + v5);
}

uint64_t sub_10001EAF0(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_10007AC4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 17) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_1000057A0(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v13 + v14, v15 | 7);
}

uint64_t sub_10001EC44(uint64_t a1)
{
  v3 = *(sub_10007AC4C() - 8);
  v4 = ((*(v3 + 80) + 17) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(*(sub_1000057A0(&qword_10009E728, &unk_10007DAF8) - 8) + 80);
  return sub_10001BA5C(a1, *(v1 + 16));
}

id sub_10001ED64()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v40 - v6;
  v8 = objc_allocWithZone(ISIcon);
  v9 = sub_10007B15C();
  v10 = [v8 initWithType:v9];

  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [objc_allocWithZone(ISImageDescriptor) initWithSize:128.0 scale:{128.0, v13}];
  v15 = [v10 imageForDescriptor:v14];
  if (!v15)
  {

    return 0;
  }

  v16 = v15;
  v17 = v16;
  if ([v16 placeholder])
  {
    v18 = [v10 prepareImageForDescriptor:v14];
    v19 = v16;
    if (v18)
    {
      v20 = v18;

      v19 = v20;
    }

    sub_10007AE0C();
    v17 = v19;
    v21 = sub_10007AE1C();
    v22 = sub_10007B41C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v41 = v0;
      v24 = v23;
      *v23 = 67109120;
      *(v23 + 1) = [v17 placeholder];

      _os_log_impl(&_mh_execute_header, v21, v22, "iOS appIcon placeholder;  did prepareImage(forDescriptor:), is still placeHolder: %{BOOL}d", v24, 8u);
      v0 = v41;
    }

    else
    {

      v21 = v17;
    }

    (*(v1 + 8))(v7, v0);
  }

  sub_10007AE0C();
  v26 = v17;
  v27 = sub_10007AE1C();
  v28 = sub_10007B41C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v5;
    v31 = v16;
    v32 = v14;
    v33 = v10;
    v34 = v1;
    v35 = v0;
    v36 = v30;
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v37 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "iOS appIcon image: %@", v29, 0xCu);
    sub_10001F1A4(v36);
    v0 = v35;
    v1 = v34;
    v10 = v33;
    v14 = v32;
    v16 = v31;
    v5 = v41;
  }

  (*(v1 + 8))(v5, v0);
  result = [v26 CGImage];
  if (result)
  {
    v39 = result;
    v25 = [objc_allocWithZone(UIImage) initWithCGImage:result];

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001F1A4(uint64_t a1)
{
  v2 = sub_1000057A0(&qword_10009F570, &qword_10007DAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 8)
  {
    v8 = v7 - 7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10001F364(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10001F378(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

BOOL sub_10001F3AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 8;
  v5 = v3 == 9;
  v6 = v3 & 0xFE;
  v8 = v3 == 7 || v2 == v3;
  if (v2 == 7)
  {
    v8 = 1;
  }

  if (v6 == 8)
  {
    v8 = 0;
  }

  if (v2 == 9)
  {
    v8 = v5;
  }

  if (v2 == 8)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_10001F3FC()
{
  v1 = *v0;
  v2 = 0x69636570736E752ELL;
  v3 = 0x726568746F2ELL;
  if (v1 != 6)
  {
    v3 = 2037276974;
  }

  v4 = 0x6972616661732ELL;
  if (v1 != 4)
  {
    v4 = 0x726F66656572662ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F467365746F6E2ELL;
  if (v1 != 2)
  {
    v5 = 0x65646E696D65722ELL;
  }

  if (*v0)
  {
    v2 = 0x7365746F6E2ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001F500(unsigned __int8 a1)
{
  if (a1 == 8)
  {
    return 0x6E776F6E6B6E752ELL;
  }

  if (a1 == 9)
  {
    return 0x6E656D75636F642ELL;
  }

  sub_10007B5CC(19);

  v3 = 0xEC00000064656966;
  v4 = 0x69636570736E752ELL;
  v5 = 0xE600000000000000;
  v6 = 0x726568746F2ELL;
  if (a1 != 6)
  {
    v6 = 2037276974;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6972616661732ELL;
  if (a1 != 4)
  {
    v8 = 0x726F66656572662ELL;
    v7 = 0xE90000000000006DLL;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000007265646CLL;
  v10 = 0x6F467365746F6E2ELL;
  if (a1 != 2)
  {
    v10 = 0x65646E696D65722ELL;
    v9 = 0xEA00000000007372;
  }

  if (a1)
  {
    v4 = 0x7365746F6E2ELL;
    v3 = 0xE600000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11._countAndFlagsBits = v4;
  }

  else
  {
    v11._countAndFlagsBits = v6;
  }

  if (a1 <= 3u)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  v11._object = v12;
  sub_10007B21C(v11);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  sub_10007B21C(v13);
  return 0xD000000000000010;
}

uint64_t sub_10001F6F4(char a1)
{
  result = 0x7265646C6F66;
  switch(a1)
  {
    case 1:
      result = 0x746E656D75636F64;
      break;
    case 2:
      result = 0x6873646165727073;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 6710384;
      break;
    case 7:
      result = 1702129518;
      break;
    case 8:
      result = 0x6C6F467365746F6ELL;
      break;
    case 9:
      result = 1953720684;
      break;
    case 10:
      result = 0x70756F7247626174;
      break;
    case 11:
      result = 0x6D726F6665657266;
      break;
    case 12:
      result = 0x43636972656E6567;
      break;
    case 13:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001F8A8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001F6F4(*a1);
  v5 = v4;
  if (v3 == sub_10001F6F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10007B6BC();
  }

  return v8 & 1;
}

Swift::Int sub_10001F930()
{
  v1 = *v0;
  sub_10007B74C();
  sub_10001F6F4(v1);
  sub_10007B1EC();

  return sub_10007B76C();
}

uint64_t sub_10001F994()
{
  sub_10001F6F4(*v0);
  sub_10007B1EC();
}

Swift::Int sub_10001F9E8()
{
  v1 = *v0;
  sub_10007B74C();
  sub_10001F6F4(v1);
  sub_10007B1EC();

  return sub_10007B76C();
}

uint64_t sub_10001FA48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021A5C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10001FA78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001F6F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001FAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007AD1C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10007AE2C();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  v8 = __chkstk_darwin(v6);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v57 - v10;
  v11 = sub_1000057A0(&qword_10009E730, qword_10007DB90);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v57 - v17;
  __chkstk_darwin(v16);
  v20 = &v57 - v19;
  v21 = sub_10007ADDC();
  v64 = *(v21 - 8);
  v65 = v21;
  v22 = *(v64 + 64);
  v23 = __chkstk_darwin(v21);
  v58 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v61 = &v57 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v57 - v28;
  __chkstk_darwin(v27);
  v31 = &v57 - v30;
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD000000000000014;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000817D0 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD000000000000019;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  sub_10007ADEC();
  v33 = v64;
  v57 = *(v64 + 48);
  if (v57(v20, 1, v65) == 1)
  {
    sub_1000210A8(v20);

    sub_10007AD0C();
    v34 = v65;
    (*(v33 + 56))(v15, 1, 1, v65);
    sub_10007AD6C();
    if (v57(v18, 1, v34) == 1)
    {
      sub_1000210A8(v18);
    }

    else
    {
      v43 = v34;
      v44 = v61;
      (*(v33 + 32))(v61, v18, v34);
      v45 = v59;
      sub_10007AE0C();
      v46 = v58;
      (*(v33 + 16))(v58, v44, v34);
      v47 = sub_10007AE1C();
      v48 = sub_10007B41C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = v46;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v66 = v51;
        *v50 = 136315138;
        v60 = sub_10007AD2C();
        v53 = v52;
        v54 = *(v33 + 8);
        v54(v49, v43);
        v55 = sub_100037C08(v60, v53, &v66);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v47, v48, "utiOfItem(fromCKShareType)--type from filename extension: %s", v50, 0xCu);
        sub_10000585C(v51);
      }

      else
      {

        v54 = *(v33 + 8);
        v54(v46, v43);
      }

      (*(v62 + 8))(v45, v63);
      v56 = v61;
      a1 = sub_10007AD2C();
      v54(v56, v43);
    }
  }

  else
  {
    v35 = v20;
    v36 = v65;
    (*(v33 + 32))(v31, v35, v65);
    sub_10007AD7C();
    v37 = sub_10007ADCC();
    v38 = *(v33 + 8);
    v38(v29, v36);
    v39 = v60;
    sub_10007AE0C();
    v40 = sub_10007AE1C();
    v41 = sub_10007B41C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      *(v42 + 4) = v37 & 1;
      _os_log_impl(&_mh_execute_header, v40, v41, "utiOfItem(fromCKShareType)--ckShareType is a UTType. Is file system item: %{BOOL}d", v42, 8u);
    }

    (*(v62 + 8))(v39, v63);
    a1 = sub_10007AD2C();
    v38(v31, v36);
  }

  return a1;
}

unint64_t sub_1000202B0(uint64_t a1, void *a2)
{
  v49 = a2;
  v3 = sub_10007AC4C();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  v5 = __chkstk_darwin(v3);
  v45 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = sub_10007AE2C();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  v11 = __chkstk_darwin(v9);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_10007AABC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057A0(&qword_10009E738, &unk_10007E780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007CF20;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v21 = NSURLTypeIdentifierKey;
  sub_10005FA34(inited);
  swift_setDeallocating();
  sub_100021640(inited + 32);
  sub_10007ABBC();
  v22 = v8;
  v23 = v14;
  v24 = v50;

  v25 = sub_10007AA7C();
  if (v26)
  {
    v27 = v25;
    (*(v16 + 8))(v19, v15);
    return v27;
  }

  v46 = v19;
  sub_10007AE0C();
  v32 = v24;
  v33 = v22;
  (*(v24 + 16))(v22, a1, v3);
  v34 = sub_10007AE1C();
  v35 = sub_10007B3FC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51[0] = v45;
    *v36 = 136315138;
    sub_10002169C();
    v37 = sub_10007B69C();
    v38 = v33;
    v40 = v39;
    (*(v32 + 8))(v38, v3);
    v41 = sub_100037C08(v37, v40, v51);
    v42 = v23;
    v43 = v41;

    *(v36 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "resourceValues(forKeys:) returned nil for typeIdentifier (UTI) for URL: %s", v36, 0xCu);
    sub_10000585C(v45);

    (*(v47 + 8))(v42, v48);
  }

  else
  {

    (*(v32 + 8))(v33, v3);
    (*(v47 + 8))(v23, v48);
  }

  (*(v16 + 8))(v46, v15);
  if (v49)
  {
    v29 = v49;
    sub_10007B4FC();
    v30 = sub_10007B50C();

    if (v30)
    {
      v51[2] = v30;
      sub_1000057A0(&unk_10009E7A0, &unk_10007DBA8);
      if (swift_dynamicCast())
      {
        v31 = sub_10001FAA4(v51[0], v51[1]);

        return v31;
      }
    }
  }

  return 0;
}

uint64_t sub_1000209A0()
{
  v0 = sub_10007ADDC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007ADAC();
  v5 = sub_10007ADBC();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    return 0;
  }

  sub_10007AD4C();
  v8 = sub_10007ADBC();
  v6(v4, v0);
  if (v8)
  {
    return 3;
  }

  sub_10007AD3C();
  v9 = sub_10007ADBC();
  v6(v4, v0);
  if (v9)
  {
    return 2;
  }

  sub_10007AD8C();
  v10 = sub_10007ADBC();
  v6(v4, v0);
  if (v10)
  {
    return 4;
  }

  sub_10007AD9C();
  v11 = sub_10007ADBC();
  v6(v4, v0);
  if (v11)
  {
    return 5;
  }

  sub_10007AD5C();
  v12 = sub_10007ADBC();
  v6(v4, v0);
  if (v12)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100020B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007AD1C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000057A0(&qword_10009E730, qword_10007DB90);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = sub_10007ADDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669)
  {
    return 1;
  }

  v19 = v16;
  if (sub_10007B6BC())
  {
    return 1;
  }

  if (a1 == 0x737265626D756ELL && a2 == 0xE700000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x7365676170 && a2 == 0xE500000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x65746F6E79656BLL && a2 == 0xE700000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_10007B6BC() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0xD000000000000016 && 0x8000000100081790 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_10007B6BC() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000817B0 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000817D0 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_10007B6BC() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000817F0 == a2 || (sub_10007B6BC() & 1) != 0)
  {
    return 11;
  }

  sub_10007AD0C();
  (*(v14 + 56))(v10, 1, 1, v19);
  sub_10007AD6C();
  if ((*(v14 + 48))(v12, 1, v19) == 1)
  {
    sub_1000210A8(v12);
    return 12;
  }

  else
  {
    (*(v14 + 32))(v18, v12, v19);
    v21 = sub_1000209A0();
    (*(v14 + 8))(v18, v19);
    return v21;
  }
}

uint64_t sub_1000210A8(uint64_t a1)
{
  v2 = sub_1000057A0(&qword_10009E730, qword_10007DB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007AD1C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v31[1] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000057A0(&qword_10009E730, qword_10007DB90);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v31 - v15;
  __chkstk_darwin(v14);
  v18 = v31 - v17;
  v19 = sub_10007ADDC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v31 - v25;
  v27 = sub_10007AC4C();
  if ((*(*(v27 - 8) + 48))(a3, 1, v27) == 1)
  {
    if (a1 == 0xD000000000000014 && 0x8000000100081830 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 7;
    }

    else if (a1 == 0xD000000000000016 && 0x8000000100081790 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 8;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001000817B0 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 9;
    }

    else if (a1 == 0xD000000000000019 && 0x8000000100081810 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 10;
    }

    else if (a1 == 0x6C656D726163 && a2 == 0xE600000000000000 || (sub_10007B6BC() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000817F0 == a2 || (sub_10007B6BC() & 1) != 0)
    {
      return 11;
    }

    else
    {
      result = 11;
      if (a1 != 0x6D726F6665657266 || a2 != 0xE800000000000000)
      {
        if (sub_10007B6BC())
        {
          return 11;
        }

        else
        {
          return 12;
        }
      }
    }
  }

  else
  {

    sub_10007ADEC();
    v31[0] = a1;
    v29 = *(v20 + 48);
    if (v29(v18, 1, v19) == 1)
    {
      sub_1000210A8(v18);

      sub_10007AD0C();
      (*(v20 + 56))(v13, 1, 1, v19);
      sub_10007AD6C();
      if (v29(v16, 1, v19) == 1)
      {
        sub_1000210A8(v16);
        return 1;
      }

      (*(v20 + 32))(v24, v16, v19);
      v30 = sub_1000209A0();
      (*(v20 + 8))(v24, v19);
    }

    else
    {
      (*(v20 + 32))(v26, v18, v19);
      v30 = sub_1000209A0();
      (*(v20 + 8))(v26, v19);
    }

    return v30;
  }

  return result;
}

uint64_t sub_100021640(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002169C()
{
  result = qword_10009EB10;
  if (!qword_10009EB10)
  {
    sub_10007AC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UTISupport.SharingItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UTISupport.SharingItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitAppType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitAppType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000219B0()
{
  result = qword_10009E7B8;
  if (!qword_10009E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E7B8);
  }

  return result;
}

unint64_t sub_100021A08()
{
  result = qword_10009E7C0;
  if (!qword_10009E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E7C0);
  }

  return result;
}

uint64_t sub_100021A5C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000958F0;
  v6._object = a2;
  v4 = sub_10007B68C(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t *sub_100021AB0()
{
  v113 = sub_10007AE2C();
  v115 = *(v113 - 8);
  v1 = *(v115 + 64);
  v2 = __chkstk_darwin(v113);
  v111 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v109 = &v104 - v5;
  v6 = __chkstk_darwin(v4);
  v110 = &v104 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = (&v104 - v9);
  v11 = __chkstk_darwin(v8);
  v13 = &v104 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = (&v104 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = &v104 - v18;
  __chkstk_darwin(v17);
  v21 = &v104 - v20;
  v112 = v0;
  v22 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v23 = v116;
  if (v116)
  {
    return v23;
  }

  v108 = v19;
  v104 = v13;
  v105 = v10;
  v106 = v16;
  v24 = v115;
  sub_10007AE0C();
  v25 = sub_10007AE1C();
  v26 = sub_10007B41C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "configuredContainer needsBundleIDOverride initially true", v27, 2u);
  }

  v28 = *(v24 + 8);
  v29 = v21;
  v30 = v113;
  v115 = v24 + 8;
  v28(v29, v113);
  v31 = v112;
  v32 = *(v112 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v33 = v116;
  v107 = v28;
  v34 = v108;
  if (v116)
  {
    sub_10007AE0C();
    v35 = v33;
    v36 = sub_10007AE1C();
    v37 = sub_10007B41C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v116 = v106;
      *v38 = 136315138;
      v39 = v35;
      v40 = [v39 description];
      v41 = sub_10007B19C();
      LODWORD(v105) = v37;
      v42 = v30;
      v43 = v41;
      v45 = v44;

      v46 = sub_100037C08(v43, v45, &v116);

      *(v38 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v105, "configuredContainer using setupInfo: %s", v38, 0xCu);
      sub_10000585C(v106);

      v31 = v112;

      v107(v34, v42);
    }

    else
    {

      v28(v34, v30);
    }

    v56 = [v35 containerOptions];
    v57 = [v56 applicationBundleIdentifierOverrideForContainerAccess];

    v23 = v114;
    if (v57)
    {

      v58 = 0;
    }

    else
    {

      v58 = 1;
    }
  }

  else
  {
    v47 = *(v31 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v48 = v116;
    if (v116)
    {
      v49 = v106;
      sub_10007AE0C();
      v50 = v48;
      v51 = sub_10007AE1C();
      v52 = sub_10007B41C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v50;
        *v54 = v48;
        v55 = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "configuredContainer with id: %@", v53, 0xCu);
        sub_10001F1A4(v54);
        v28 = v107;

        v49 = v106;
      }

      else
      {
        v55 = v51;
        v51 = v50;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (v116 != 9)
      {
        v97 = v104;
        sub_10007AE0C();
        v98 = sub_10007AE1C();
        v99 = sub_10007B3FC();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "configuredContainer throwing as it can't build a container", v100, 2u);
        }

        v28(v97, v30);
        v96 = "replaceContainer()";
        v86 = 0xD000000000000019;
        goto LABEL_36;
      }

      v59 = *(v31 + 24);
      sub_10007B19C();
      sub_10007B1BC();

      v60 = objc_allocWithZone(CKContainerID);
      v61 = sub_10007B15C();

      v62 = [v60 initWithContainerIdentifier:v61 environment:1];

      sub_100008A60(v62, 0);

      v49 = v105;
      sub_10007AE0C();

      v51 = sub_10007AE1C();
      v63 = sub_10007B41C();

      if (os_log_type_enabled(v51, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138412290;
        v66 = *(v31 + 24);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_10007AF3C();

        v28 = v107;

        v49 = v105;

        v67 = v116;
        *(v64 + 4) = v116;
        *v65 = v67;
        _os_log_impl(&_mh_execute_header, v51, v63, "configuredContainer with containerID: %@", v64, 0xCu);
        sub_10001F1A4(v65);
      }
    }

    v28(v49, v30);
    v58 = 1;
    v23 = v114;
  }

  v68 = *(v31 + 24);

  sub_100009298();

  if (v23)
  {
    return v23;
  }

  v69 = *(v31 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v23 = v116;
  if (!v116)
  {
LABEL_29:
    v86 = 0xD000000000000033;
    v87 = v111;
    sub_10007AE0C();

    v88 = sub_10007AE1C();
    v89 = sub_10007B41C();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v118 = v91;
      *v90 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
      v92 = sub_10007B1AC();
      v94 = sub_100037C08(v92, v93, &v118);

      *(v90 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v88, v89, "configuredContainer throwing as it doesn't have a container or nil sourceAppBundleID: %s", v90, 0xCu);
      sub_10000585C(v91);

      v95 = v111;
    }

    else
    {

      v95 = v87;
    }

    v107(v95, v113);
    v96 = "configuredContainer()";
LABEL_36:
    v23 = 0x8000000100081870;
    v101 = v96 | 0x8000000000000000;
    sub_100005AB8();
    swift_allocError();
    *v102 = 0xD000000000000015;
    *(v102 + 8) = 0x8000000100081870;
    *(v102 + 16) = 0;
    *(v102 + 24) = v86;
    *(v102 + 32) = v101;
    *(v102 + 40) = 10;
    swift_willThrow();
    return v23;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v70 = v117;
  if (!v117)
  {

    goto LABEL_29;
  }

  v114 = 0;
  v71 = v113;
  v72 = v116;
  v73 = v110;
  sub_10007AE0C();
  v74 = sub_10007AE1C();
  v75 = sub_10007B41C();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 67109120;
    *(v76 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v74, v75, "configuredContainer about to return container, needsBundleIDOverride: %{BOOL}d", v76, 8u);
    v73 = v110;
  }

  v107(v73, v71);
  if (v58)
  {
    v77 = [v23 options];
    v78 = sub_10007B15C();
    [v77 setApplicationBundleIdentifierOverride:v78];

    v79 = v109;
    sub_10007AE0C();

    v80 = sub_10007AE1C();
    v81 = sub_10007B41C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v116 = v83;
      *v82 = 136315138;
      v84 = sub_100037C08(v72, v70, &v116);

      *(v82 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v80, v81, "configuredContainer options applicationBundleIDOverride set to: %s", v82, 0xCu);
      sub_10000585C(v83);

      v85 = v109;
    }

    else
    {

      v85 = v79;
    }

    v107(v85, v71);
  }

  else
  {
  }

  return v23;
}

double sub_100022874@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1000228F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_1000229DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_100022A6C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_10007AF4C();
}

uint64_t sub_100022BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_10007AE2C();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = sub_10007AABC();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();
  v11 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v12 = sub_10007AC4C();
  v4[24] = v12;
  v13 = *(v12 - 8);
  v4[25] = v13;
  v14 = *(v13 + 64) + 15;
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100022D94, 0, 0);
}

uint64_t sub_100022D94()
{
  v1 = v0[15];
  v2 = (v0[16] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI);
  v3 = v2[1];
  *v2 = v0[14];
  v2[1] = v1;

  v0[27] = sub_10007B32C();

  v0[28] = sub_10007B31C();
  v5 = sub_10007B2EC();

  return _swift_task_switch(sub_100022E54, v5, v4);
}

uint64_t sub_100022E54()
{
  v1 = *(v0 + 224);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 232) = sub_1000099C0();

  return _swift_task_switch(sub_100022EDC, 0, 0);
}

uint64_t sub_100022EDC()
{
  v1 = *(v0 + 216);
  *(v0 + 240) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_100022F68, v3, v2);
}

uint64_t sub_100022F68()
{
  v2 = v0[29];
  v1 = v0[30];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[31] = sub_100079A54(v2);

  return _swift_task_switch(sub_100022FFC, 0, 0);
}

uint64_t sub_100022FFC()
{
  v1 = *(v0 + 216);
  *(v0 + 256) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_100023088, v3, v2);
}

uint64_t sub_100023088()
{
  v2 = v0[31];
  v1 = v0[32];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[33] = sub_10006098C(v2);

  return _swift_task_switch(sub_10002311C, 0, 0);
}

uint64_t sub_10002311C()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[16];
  v5 = v0[13];
  v6 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel;
  v7 = *(v4 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel);
  *(v4 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel) = v0[33];

  v8 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_fileOrFolderURL;
  swift_beginAccess();
  sub_100025294(v5, v4 + v8);
  swift_endAccess();
  sub_1000087B4(v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100008824(v0[23], &unk_10009ED10, &qword_10007D310);
  }

  else
  {
    v9 = v0[22];
    (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
    sub_1000057A0(&qword_10009E738, &unk_10007E780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10007DE70;
    *(inited + 32) = NSURLIsPackageKey;
    *(inited + 40) = NSURLIsDirectoryKey;
    v11 = NSURLIsPackageKey;
    v12 = NSURLIsDirectoryKey;
    sub_10005FA34(inited);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    sub_10007ABBC();
    v13 = v0[25];
    v14 = v0[24];
    v15 = v0[21];
    v16 = v0[22];
    v17 = v0[20];
    v25 = v0[16];
    log = v0[26];

    v18 = sub_10007AAAC();
    v19 = sub_10007AA6C();
    (*(v15 + 8))(v16, v17);
    (*(v13 + 8))(log, v14);
    *(v25 + 16) = v19 & ~v18 & 1;
  }

  v20 = *(v4 + v6);
  v0[34] = v20;
  if (!v20)
  {
    return sub_10007B63C();
  }

  v21 = v0[27];

  v0[35] = sub_10007B31C();
  v23 = sub_10007B2EC();

  return _swift_task_switch(sub_1000237A8, v23, v22);
}

uint64_t sub_1000237A8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[16];
  v4 = v0[13];

  sub_100024360(v3, 0, v4, 0, v2);

  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[19];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_100023864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10002388C, 0, 0);
}

uint64_t sub_10002388C()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIFileOrSetup);
  v3 = v2[1];
  *v2 = v0[4];
  v2[1] = v1;

  v0[7] = sub_10007B32C();

  v0[8] = sub_10007B31C();
  v5 = sub_10007B2EC();

  return _swift_task_switch(sub_10002394C, v5, v4);
}

uint64_t sub_10002394C()
{
  v1 = *(v0 + 64);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 72) = sub_1000099C0();

  return _swift_task_switch(sub_1000239D4, 0, 0);
}

uint64_t sub_1000239D4()
{
  v1 = *(v0 + 56);
  *(v0 + 80) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_100023A60, v3, v2);
}

uint64_t sub_100023A60()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[11] = sub_100079A54(v2);

  return _swift_task_switch(sub_100023AF4, 0, 0);
}

uint64_t sub_100023AF4()
{
  v1 = *(v0 + 56);
  *(v0 + 96) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_100023B80, v3, v2);
}

uint64_t sub_100023B80()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[13] = sub_10006098C(v2);

  return _swift_task_switch(sub_100023C14, 0, 0);
}

uint64_t sub_100023C14()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel);
  *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel) = v0[13];

  v0[14] = sub_10007B31C();
  v5 = sub_10007B2EC();

  return _swift_task_switch(sub_100023CC0, v5, v4);
}

uint64_t sub_100023CC0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  sub_100024360(v3, v4, v5, 0, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100023D50()
{
  *(v0 + 16) = 2;
  v1 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_fileOrFolderURL;
  v2 = sub_10007AC4C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_itemUTI);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_share) = 0;
  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel) = 0;
  v4 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI);
  *v4 = nullsub_1;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPISharingURL);
  *v5 = nullsub_1;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIFileOrSetup);
  *v6 = nullsub_1;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIRemove);
  *v7 = nullsub_1;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIMail);
  *v8 = nullsub_1;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIMetadata);
  *v9 = nullsub_1;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIUserStatus);
  *v10 = nullsub_1;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_appIcon) = 0;
  v11 = (v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_appName);
  *v11 = 0;
  v11[1] = 0;
  return v0;
}

uint64_t sub_100023EE4()
{
  sub_100008824(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_fileOrFolderURL, &unk_10009ED10, &qword_10007D310);
  v1 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_itemUTI + 8);

  v2 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel);

  v3 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI + 8);

  v4 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPISharingURL + 8);

  v5 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIFileOrSetup + 8);

  v6 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIRemove + 8);

  v7 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIMail + 8);

  v8 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIMetadata + 8);

  v9 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPIUserStatus + 8);

  v10 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_appName + 8);

  return v0;
}

uint64_t sub_100024000()
{
  sub_100023EE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelDelegateSPI()
{
  result = qword_10009E7F8;
  if (!qword_10009E7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000240AC()
{
  sub_10002417C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10002417C()
{
  if (!qword_10009E808)
  {
    sub_10007AC4C();
    v0 = sub_10007B55C();
    if (!v1)
    {
      atomic_store(v0, &qword_10009E808);
    }
  }
}

uint64_t sub_1000241D4(uint64_t a1)
{
  result = sub_100024E84(&qword_10009E8F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100024240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_1000242C0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_10007AF4C();
}

uint64_t sub_100024360(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v72 = a2;
  v73 = a3;
  v7 = sub_10007AE2C();
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  __chkstk_darwin(v7);
  v75 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v71 = &v68 - v15;
  v16 = __chkstk_darwin(v14);
  v70 = &v68 - v17;
  __chkstk_darwin(v16);
  v19 = &v68 - v18;
  v20 = sub_10007AC4C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v74 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100024E84(&qword_10009E8F8);
  sub_10005DE38();
  a5[6] = v24;
  swift_unknownObjectWeakAssign();
  v25 = *(sub_10004F634() + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_share);
  v26 = v25;
  swift_unknownObjectRelease();
  if (v25)
  {
    v27 = a5[3];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v78 = v25;

    sub_10007AF4C();
  }

  v28 = a5[3];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v29 = v78;
  if (v78)
  {
    v30 = a5[3];

    v31 = [v29 containerID];
    sub_100008A60(v31, 0);

    sub_10004EE9C(0, a4 & 1);
  }

  else
  {
    v32 = a5[2];

    sub_1000781B4(2u);

    v33 = a5[2];

    sub_100078534(1u);
  }

  v34 = a5[3];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v35 = v78;
  if (v78)
  {
    v68 = v21;
    v36 = v20;
    v37 = v7;
    v38 = [v78 containerIdentifier];
    v39 = sub_10007B19C();
    v41 = v40;

    sub_10007B19C();
    v42 = sub_10007B1BC();
    v44 = v43;

    if (v39 == v42 && v41 == v44)
    {

LABEL_11:
      swift_getKeyPath();
      swift_getKeyPath();
      v78 = xmmword_10007DE80;

      sub_10007AF4C();

      v7 = v37;
      v20 = v36;
      v21 = v68;
      goto LABEL_14;
    }

    v45 = sub_10007B6BC();

    if (v45)
    {
      goto LABEL_11;
    }

    v7 = v37;
    v20 = v36;
    v21 = v68;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v78 = 0xD000000000000013;
  *(&v78 + 1) = 0x8000000100081A20;

  sub_10007AF4C();
LABEL_14:
  sub_1000087B4(v73, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100008824(v19, &unk_10009ED10, &qword_10007D310);
    v46 = sub_100050218();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v78) = v46;

    sub_10007AF4C();
    v47 = v75;
    v48 = v72;
    if (v72)
    {
      v49 = a5[3];
      swift_getKeyPath();
      swift_getKeyPath();
      *&v78 = v48;
      v50 = v48;

      sub_10007AF4C();
    }
  }

  else
  {
    v51 = v74;
    (*(v21 + 32))(v74, v19, v20);
    v52 = v70;
    (*(v21 + 16))(v70, v51, v20);
    (*(v21 + 56))(v52, 0, 1, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v71;
    sub_10007AF3C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000087B4(v52, v69);

    sub_10007AF4C();
    sub_1000572DC(v53);
    sub_100008824(v53, &unk_10009ED10, &qword_10007D310);
    sub_100008824(v52, &unk_10009ED10, &qword_10007D310);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v78) = 9;

    sub_10007AF4C();
    v54 = *(sub_10004F634() + 16);
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v78) = v54 & 1;

    sub_10007AF4C();
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = xmmword_10007DE80;

    sub_10007AF4C();
    v55 = a5[3];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v56 = v78;
    if (!v78)
    {
      v57 = a5[3];
      sub_10007B19C();
      sub_10007B1BC();

      v58 = objc_allocWithZone(CKContainerID);
      v59 = sub_10007B15C();

      v56 = [v58 initWithContainerIdentifier:v59 environment:1];

      sub_100008A60(v56, 0);
    }

    v47 = v75;

    (*(v21 + 8))(v74, v20);
  }

  sub_10007AE0C();

  v60 = sub_10007AE1C();
  v61 = sub_10007B41C();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v77 = v63;
    *v62 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
    v64 = sub_10007B1AC();
    v66 = sub_100037C08(v64, v65, &v77);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "setUpForExplicitSPI final sourceAppBundleID: %s.", v62, 0xCu);
    sub_10000585C(v63);
  }

  (*(v76 + 8))(v47, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v78) = 1;

  return sub_10007AF4C();
}

uint64_t sub_100024E84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModelDelegateSPI();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100024F98(void *a1)
{
  v2 = v1;
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_10007AE2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v13 = a1;
  v14 = sub_10007AE1C();
  v15 = sub_10007B3FC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v9;
    v17 = v16;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v17 = 136315138;
    v18 = v13;
    v19 = [v18 description];
    v34 = v7;
    v20 = v19;
    v21 = sub_10007B19C();
    v31 = v8;
    v22 = v13;
    v24 = v23;

    v25 = sub_100037C08(v21, v24, &v35);
    v13 = v22;

    *(v17 + 4) = v25;
    v7 = v34;
    _os_log_impl(&_mh_execute_header, v14, v15, "cancelAppExtension error: %s", v17, 0xCu);
    sub_10000585C(v32);

    (*(v33 + 8))(v12, v31);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v26 = *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI);
  v27 = *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI + 8);
  v28 = sub_10007AC4C();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);

  v26(v7, 0, v13);

  return sub_100008824(v7, &unk_10009ED10, &qword_10007D310);
}

uint64_t sub_100025294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100025304()
{
  result = qword_10009E900;
  if (!qword_10009E900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E900);
  }

  return result;
}

uint64_t sub_100025350(uint64_t a1, uint64_t a2)
{
  v2[93] = a2;
  v2[87] = a1;
  v3 = sub_1000057A0(&qword_10009E6F8, &unk_10007DA80);
  v2[94] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();

  return _swift_task_switch(sub_100025418, 0, 0);
}

uint64_t sub_100025418()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  *(v0 + 816) = *(v2 + 48);
  *(v0 + 820) = *(v2 + 64);
  v4 = swift_task_alloc();
  *(v0 + 792) = v4;
  *(v4 + 16) = v3;
  swift_asyncLet_begin();
  v5 = *(v0 + 776);

  return _swift_asyncLet_get(v0 + 16, v5, sub_1000254DC, v0 + 656);
}

uint64_t sub_1000254F8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  v4 = *(v0 + 752);
  sub_1000187C8(*(v0 + 776), v3, &qword_10009E6F8, &unk_10007DA80);
  *(v0 + 800) = *v3;
  v5 = *(v4 + 48);
  *(v0 + 808) = *(v3 + *(v4 + 64));
  sub_10002591C(v3 + v5, v2 + v1, &unk_10009ED10, &qword_10007D310);
  v6 = *(v0 + 776);

  return _swift_asyncLet_finish(v0 + 16, v6, sub_1000255C4, v0 + 704);
}

uint64_t sub_1000255E0()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 820);
  v5 = *(v0 + 784);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);

  *v5 = v2;
  *(v5 + v4) = v1;
  sub_1000187C8(v5, v6, &qword_10009E6F8, &unk_10007DA80);

  v8 = *(v6 + *(v7 + 64));
  sub_100008824(v6 + *(v7 + 48), &unk_10009ED10, &qword_10007D310);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v12 = *(v0 + 760);
  if (v8)
  {
    sub_100005AB8();
    swift_allocError();
    *v13 = 0xD000000000000010;
    *(v13 + 8) = 0x8000000100081A70;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = v8;
    *(v13 + 40) = 5;
    swift_willThrow();
    sub_100008824(v9, &qword_10009E6F8, &unk_10007DA80);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 752);
    v20 = *(v0 + 696);
    sub_1000187C8(v9, v10, &qword_10009E6F8, &unk_10007DA80);
    v21 = *v10;
    v17 = *(v16 + 48);

    sub_10002591C(v9, v11, &qword_10009E6F8, &unk_10007DA80);
    v18 = *(v16 + 48);

    sub_10002591C(v11 + v18, v20, &unk_10009ED10, &qword_10007D310);
    sub_100008824(v10 + v17, &unk_10009ED10, &qword_10007D310);

    v19 = *(v0 + 8);

    return v19(v21);
  }
}

uint64_t sub_10002587C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DACC;

  return sub_10001902C(a1, v4);
}

uint64_t sub_10002591C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000057A0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100025984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v6 + 976) = a6;
  *(v6 + 808) = a5;
  *(v6 + 800) = a4;
  *(v6 + 792) = a3;
  *(v6 + 784) = a2;
  *(v6 + 776) = a1;
  v7 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  *(v6 + 816) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  v9 = sub_10007AE2C();
  *(v6 + 848) = v9;
  v10 = *(v9 - 8);
  *(v6 + 856) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();

  return _swift_task_switch(sub_100025ADC, 0, 0);
}

uint64_t sub_100025ADC()
{
  v85 = v0;
  v1 = *(v0 + 784);
  v2 = sub_10007B15C();
  v3 = NSSelectorFromString(v2);

  if ([v1 respondsToSelector:v3])
  {
    v4 = [*(v0 + 784) br_isCloudDocsShare];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 896);
  v6 = *(v0 + 808);
  sub_10007AE0C();

  v7 = sub_10007AE1C();
  v8 = sub_10007B41C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 896);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  if (v9)
  {
    v83 = v4;
    v13 = *(v0 + 801);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v84 = v15;
    *v14 = 136315394;
    v16 = sub_10001F500(v13);
    v18 = sub_100037C08(v16, v17, &v84);
    LOBYTE(v4) = v83;

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v7, v8, "saveShare attr.sharingType: %s, isCloudDocsShare: %{BOOL}d", v14, 0x12u);
    sub_10000585C(v15);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 904) = v19;
  if ((*(v0 + 800) & 0xFE00) == 0x800)
  {
    v20 = 1;
  }

  else
  {
    v20 = v4;
  }

  if (v20)
  {
    v21 = *(v0 + 872);
    v22 = *(v0 + 840);
    v23 = *(v0 + 784);
    v24 = (v0 + 776);
    v25 = *(v0 + 776);
    sub_10007AE0C();
    sub_1000187C8(v25, v22, &unk_10009ED10, &qword_10007D310);
    v26 = v23;
    v27 = sub_10007AE1C();
    v28 = sub_10007B41C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 872);
    v31 = *(v0 + 856);
    v32 = *(v0 + 848);
    v33 = *(v0 + 840);
    if (v29)
    {
      v34 = *(v0 + 832);
      v79 = *(v0 + 816);
      v35 = *(v0 + 784);
      v81 = *(v0 + 848);
      v36 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v84 = v78;
      *v36 = 136315650;
      sub_1000187C8(v33, v34, &unk_10009ED10, &qword_10007D310);
      v37 = sub_10007B1AC();
      v39 = v38;
      sub_100008824(v33, &unk_10009ED10, &qword_10007D310);
      v40 = sub_100037C08(v37, v39, &v84);
      v24 = (v0 + 776);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2112;
      *(v36 + 14) = v35;
      *v77 = v35;
      *(v36 + 22) = 1024;
      *(v36 + 24) = [v35 allowsAccessRequests];

      _os_log_impl(&_mh_execute_header, v27, v28, "saveShare performing CloudDocs (fileURL) operation %s -- %@\n allowsAccessRequests: %{BOOL}d", v36, 0x1Cu);
      sub_100008824(v77, &qword_10009F570, &qword_10007DAF0);

      sub_10000585C(v78);

      v41 = v81;
      v42 = v30;
    }

    else
    {
      v74 = *(v0 + 784);

      sub_100008824(v33, &unk_10009ED10, &qword_10007D310);
      v42 = v30;
      v41 = v32;
    }

    v19(v42, v41);
    v75 = swift_task_alloc();
    *(v0 + 952) = v75;
    v75[1] = vextq_s8(*v24, *v24, 8uLL);
    sub_1000057A0(&qword_10009E718, &qword_10007DAB8);
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_100026710, v0 + 656);
  }

  else
  {
    v43 = *(v0 + 888);
    v44 = *(v0 + 784);
    v45 = type metadata accessor for CloudKitOperations();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    v48 = swift_allocObject();
    *(v0 + 912) = v48;
    v48[2] = 0xD000000000000021;
    v48[3] = 0x8000000100081B20;
    v48[4] = 0xD000000000000016;
    v48[5] = 0x8000000100081B50;
    v48[6] = 0xD00000000000001DLL;
    v48[7] = 0x8000000100081B70;
    *(v0 + 712) = 0;
    *(v0 + 720) = 0;
    sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
    sub_10007AF0C();
    sub_10007AE0C();
    v49 = v44;
    v50 = sub_10007AE1C();
    v51 = sub_10007B41C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 784);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v52;
      *v54 = v52;
      v55 = v52;
      _os_log_impl(&_mh_execute_header, v50, v51, "saveShare performing CloudKit operation %@", v53, 0xCu);
      sub_100008824(v54, &qword_10009F570, &qword_10007DAF0);
    }

    v56 = *(v0 + 888);
    v57 = *(v0 + 856);
    v58 = *(v0 + 848);
    v59 = *(v0 + 792);

    *(v0 + 920) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = (v19)(v56, v58);
    if (v59)
    {
      v68 = *(v0 + 976);
      v69 = *(v0 + 800);
      v80 = *(v0 + 808);
      v82 = *(v0 + 792);
      v70 = *(v0 + 784);
      v71 = swift_task_alloc();
      *(v0 + 928) = v71;
      *(v71 + 16) = v48;
      *(v71 + 24) = v70;
      *(v71 + 32) = v69;
      *(v71 + 34) = BYTE2(v69);
      *(v71 + 35) = BYTE3(v69);
      *(v71 + 36) = BYTE4(v69);
      *(v71 + 37) = BYTE5(v69) & 1;
      *(v71 + 38) = BYTE6(v69) & 1;
      *(v71 + 40) = v80;
      *(v71 + 48) = v68 & 1;
      *(v71 + 49) = HIBYTE(v68) & 1;
      *(v71 + 56) = v82;
      v72 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v73 = swift_task_alloc();
      *(v0 + 936) = v73;
      v67 = sub_100026D54();
      *v73 = v0;
      v73[1] = sub_100026298;
      v65 = sub_100026CF8;
      v60 = v0 + 728;
      v63 = 0xD000000000000029;
      v64 = 0x80000001000810B0;
      v61 = 0;
      v62 = 0;
      v66 = v71;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v60, v61, v62, v63, v64, v65, v66, v67);
  }
}

uint64_t sub_100026298()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v7 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v4 = sub_100026594;
  }

  else
  {
    v5 = *(v2 + 928);

    v4 = sub_1000263B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000263B4()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 784);
  v3 = *(v0 + 728);
  sub_10007AE0C();
  v4 = v2;
  v5 = sub_10007AE1C();
  v6 = sub_10007B41C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 912);
  if (v7)
  {
    v9 = *(v0 + 784);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "saveShare completed CloudKit operation %@", v10, 0xCu);
    sub_100008824(v11, &qword_10009F570, &qword_10007DAF0);
  }

  else
  {
    v13 = *(v0 + 912);
  }

  v14 = *(v0 + 920);
  (*(v0 + 904))(*(v0 + 880), *(v0 + 848));
  v15 = *(v0 + 896);
  v16 = *(v0 + 888);
  v17 = *(v0 + 880);
  v18 = *(v0 + 872);
  v19 = *(v0 + 864);
  v20 = *(v0 + 840);
  v21 = *(v0 + 832);
  v22 = *(v0 + 824);

  v23 = *(v0 + 8);

  return v23(v3);
}

uint64_t sub_100026594()
{
  v1 = v0[116];
  v2 = v0[114];

  swift_setDeallocating();
  v3 = *(v2 + 3);

  v4 = *(v2 + 5);

  v5 = *(v2 + 7);

  v6 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants18CloudKitOperations__ckSourceAppBundleID;
  v7 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  (*(*(v7 - 8) + 8))(&v2[v6], v7);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 52);
  swift_deallocClassInstance();
  v10 = v0[118];
  v11 = v0[112];
  v12 = v0[111];
  v13 = v0[110];
  v14 = v0[109];
  v15 = v0[108];
  v16 = v0[105];
  v17 = v0[104];
  v18 = v0[103];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100026710()
{
  v1 = v0[87];
  v0[120] = v1;
  v2 = v0[88];
  v0[121] = v2;
  v3 = v2;
  v4 = v1;

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, sub_10002678C, v0 + 92);
}

uint64_t sub_1000267A8()
{
  v53 = v0;
  v1 = v0[119];
  v2 = v0[108];
  v3 = v0[103];
  v4 = v0[98];
  v5 = v0[97];

  sub_10007AE0C();
  sub_1000187C8(v5, v3, &unk_10009ED10, &qword_10007D310);
  v6 = v4;
  v7 = sub_10007AE1C();
  v8 = sub_10007B41C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[113];
  v11 = v0[108];
  v12 = v0[106];
  if (v9)
  {
    v13 = v0[104];
    v14 = v0[103];
    v48 = v0[102];
    v51 = v0[107];
    v15 = v0[98];
    v50 = v0[113];
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v16 = 136315650;
    sub_1000187C8(v14, v13, &unk_10009ED10, &qword_10007D310);
    v17 = sub_10007B1AC();
    v49 = v12;
    v19 = v18;
    sub_100008824(v14, &unk_10009ED10, &qword_10007D310);
    v20 = sub_100037C08(v17, v19, &v52);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v15;
    *v46 = v15;
    *(v16 + 22) = 1024;
    *(v16 + 24) = [v15 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v7, v8, "saveShare completed CloudDocs (fileURL) operation %s\n %@\n allowsAccessRequests: %{BOOL}d", v16, 0x1Cu);
    sub_100008824(v46, &qword_10009F570, &qword_10007DAF0);

    sub_10000585C(v47);

    v50(v11, v49);
  }

  else
  {
    v21 = v0[103];
    v22 = v0[98];

    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v10(v11, v12);
  }

  v23 = v0[121];
  v24 = v0[120];
  if (v23)
  {
    sub_100005AB8();
    swift_allocError();
    *v25 = 0xD000000000000032;
    *(v25 + 8) = 0x8000000100081AB0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    *(v25 + 16) = v23;
    *(v25 + 40) = 4;
    swift_willThrow();

LABEL_6:
    v26 = v0[112];
    v27 = v0[111];
    v28 = v0[110];
    v29 = v0[109];
    v30 = v0[108];
    v31 = v0[105];
    v32 = v0[104];
    v33 = v0[103];

    v34 = v0[1];

    return v34();
  }

  if (!v24)
  {
    sub_100005AB8();
    swift_allocError();
    *v45 = 0xD000000000000032;
    *(v45 + 8) = 0x8000000100081AB0;
    *(v45 + 16) = xmmword_10007E1C0;
    *(v45 + 32) = 0x8000000100081AF0;
    *(v45 + 40) = 11;
    swift_willThrow();
    goto LABEL_6;
  }

  v36 = v0[112];
  v37 = v0[111];
  v38 = v0[110];
  v39 = v0[109];
  v40 = v0[108];
  v41 = v0[105];
  v42 = v0[104];
  v43 = v0[103];

  v44 = v0[1];

  return v44(v24);
}

uint64_t sub_100026C4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D9D8;

  return sub_100018DC0(a1, v5, v4);
}

void sub_100026CF8(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 37))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 38))
  {
    v3 = 0;
  }

  v4 = *(v1 + 32) | (*(v1 + 36) << 32) | v2;
  if (*(v1 + 49))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_1000037F8(a1, *(v1 + 16), *(v1 + 24), v4 | v3, *(v1 + 40), v5 | *(v1 + 48), *(v1 + 56));
}

unint64_t sub_100026D54()
{
  result = qword_10009F3E0;
  if (!qword_10009F3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009F3E0);
  }

  return result;
}

void sub_100026DA0(uint64_t a1, unint64_t a2)
{
  v5 = sub_10007AE2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v11 = v10;
  v12 = *(v2 + 16);
  v13 = *(v2 + 40);
  if (v13 <= 3)
  {
LABEL_7:
    if (v13 - 1 < 3)
    {
      if (v12)
      {
        v14 = v12;
LABEL_16:
        v16 = v14;

        v11 = v16;
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (*(v2 + 40) > 7u)
  {
    if (v13 != 8)
    {
      if (v13 == 11)
      {
        v14 = sub_100028464(*(v2 + 24), *(v2 + 32));
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (!v12)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_18;
  }

  if (v13 != 4)
  {
    if (v13 != 5)
    {
      goto LABEL_19;
    }

    if (!v12)
    {
      __break(1u);
      goto LABEL_7;
    }

LABEL_18:
    v11 = v12;
    goto LABEL_19;
  }

  if (!v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = v12;
  sub_100027710(32);
  if (v15)
  {
    sub_100027238();
    if (!v14)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_19:
  v17 = [v11 userInfo];
  v18 = sub_10007B11C();

  if (!*(v18 + 16) || (v19 = sub_100037AD8(0xD000000000000011, 0x8000000100081B90), (v20 & 1) == 0))
  {

    v21 = 0;
    goto LABEL_24;
  }

  sub_1000057F8(*(v18 + 56) + 32 * v19, v44);

  sub_100027DA0();
  if (swift_dynamicCast())
  {
    v21 = v43;
LABEL_24:
    v22 = a1;
    v23 = sub_10002759C(0xD000000000000011, 0x8000000100081B90);

    v11 = v23;
    goto LABEL_25;
  }

  v22 = a1;
LABEL_25:
  sub_10007AE0C();

  v24 = v11;
  v25 = sub_10007AE1C();
  v26 = sub_10007B3FC();

  if (os_log_type_enabled(v25, v26))
  {
    v40 = v9;
    v41 = v6;
    v42 = v5;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v27 = 136315394;
    v29 = sub_10007B26C();
    sub_10004F544(v29, v30, v22, a2);
    v32 = v31;

    if (v32)
    {
      v33 = 0;
      v34 = 0xE000000000000000;
    }

    else
    {
      sub_10007B27C();
      v35 = sub_10007B1DC();
      v34 = v36;

      v33 = v35;
    }

    v37 = sub_100037C08(v33, v34, v44);

    *(v27 + 4) = v37;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v24;
    *v28 = v24;
    v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "returning %s mapped error: %@", v27, 0x16u);
    sub_100008824(v28, &qword_10009F570, &qword_10007DAF0);

    sub_10000585C(v39);

    (*(v41 + 8))(v40, v42);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

void sub_100027238()
{
  swift_willThrow();
  v1 = v0;
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    type metadata accessor for CKError(0);
    v16 = v1;
    if (swift_dynamicCast())
    {
      sub_100027D58(&qword_10009E0B8, type metadata accessor for CKError);
      sub_10007AB3C();
      if (v19 == 32)
      {
        v17 = v20;
        sub_10007AB7C();
      }

      else
      {
      }
    }

    goto LABEL_21;
  }

  sub_100027D58(&qword_10009E080, type metadata accessor for BRError);
  sub_10007AB3C();
  if (v19 != 17)
  {

    goto LABEL_17;
  }

  v2 = v20;
  v3 = sub_10007AB7C();

  v4 = [v3 underlyingErrors];
  v5 = sub_10007B2AC();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v7;
      while (1)
      {
        if (v8 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v5 + 32 + 8 * v8);
        v7 = v8 + 1;
        swift_errorRetain();
        v10 = sub_10007AB7C();
        sub_100027710(32);
        v12 = v11;

        if (v12)
        {
          break;
        }

        ++v8;
        if (v6 == v7)
        {
          goto LABEL_22;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100027DEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_100027DEC((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
      }

      _swiftEmptyArrayStorage[2] = v15;
      _swiftEmptyArrayStorage[v14 + 4] = v9;
    }

    while (v6 - 1 != v8);
  }

LABEL_22:

  if (_swiftEmptyArrayStorage[2])
  {
    v18 = _swiftEmptyArrayStorage[4];
    swift_errorRetain();

    sub_10007AB7C();
  }

  else
  {
  }

LABEL_21:
}

id sub_10002759C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 userInfo];
  v7 = sub_10007B11C();

  v15 = v7;
  sub_10002806C(a1, a2, v14);
  sub_100008824(v14, &qword_10009E928, &unk_10007E220);
  v8 = [v3 domain];
  if (!v8)
  {
    sub_10007B19C();
    v8 = sub_10007B15C();
  }

  v9 = [v3 code];
  v10 = objc_allocWithZone(NSError);
  isa = sub_10007B10C().super.isa;

  v12 = [v10 initWithDomain:v8 code:v9 userInfo:isa];

  return v12;
}

void sub_100027710(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    type metadata accessor for CKError(0);
    v14 = v3;
    if (swift_dynamicCast())
    {
      sub_100027D58(&qword_10009E0B8, type metadata accessor for CKError);
      sub_10007AB3C();
    }

    return;
  }

  sub_100027D58(&qword_10009E080, type metadata accessor for BRError);
  sub_10007AB3C();
  if (v15 != 17)
  {

    goto LABEL_9;
  }

  v4 = v16;
  v5 = sub_10007AB7C();

  v6 = [v5 underlyingErrors];
  v7 = sub_10007B2AC();

  v8 = 0;
  v9 = *(v7 + 16);
  while (1)
  {
    if (v9 == v8)
    {
LABEL_7:

      return;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = v8 + 1;
    v11 = *(v7 + 8 * v8 + 32);
    swift_errorRetain();
    v12 = sub_10007AB7C();
    v13 = sub_100027710(a1);

    v8 = v10;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_100027988(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  type metadata accessor for BRError(0);
  if (swift_dynamicCast())
  {
    sub_100027D58(&qword_10009E080, type metadata accessor for BRError);
    sub_10007AB3C();
    if (v30 == 17)
    {
      v4 = v31;
      v5 = sub_10007AB7C();

      v6 = [v5 underlyingErrors];
      v7 = sub_10007B2AC();

      v8 = 0;
      v9 = *(v7 + 16);
      while (v9 != v8)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = v8 + 1;
        v11 = *(v7 + 8 * v8 + 32);
        swift_errorRetain();
        v12 = sub_10007AB7C();
        v13 = sub_100027988(a1);

        v8 = v10;
        if (v13)
        {
          break;
        }
      }

LABEL_15:

      return;
    }
  }

  type metadata accessor for CKError(0);
  v14 = v3;
  if (swift_dynamicCast())
  {
    sub_100027D58(&qword_10009E0B8, type metadata accessor for CKError);
    sub_10007AB3C();
    if (v30 == CKErrorCodeForUnderlyingErrorCode())
    {
      v4 = v31;
      v15 = sub_10007AB7C();

      v16 = [v15 underlyingErrors];
      v17 = sub_10007B2AC();

      v18 = 0;
      v19 = *(v17 + 16);
      while (v19 != v18)
      {
        if (v18 >= *(v17 + 16))
        {
LABEL_24:
          __break(1u);
          return;
        }

        v20 = v18 + 1;
        v21 = *(v17 + 8 * v18 + 32);
        swift_errorRetain();
        v22 = sub_10007AB7C();
        v23 = sub_100027988(a1);

        v18 = v20;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }
  }

  v24 = [v14 domain];
  v25 = sub_10007B19C();
  v27 = v26;

  if (v25 == sub_10007B19C() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_10007B6BC();

    if ((v29 & 1) == 0)
    {
      return;
    }
  }

  [v14 code];
}

uint64_t sub_100027D58(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100027DA0()
{
  result = qword_10009E908;
  if (!qword_10009E908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E908);
  }

  return result;
}

void *sub_100027DEC(void *a1, int64_t a2, char a3)
{
  result = sub_100027E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100027E0C(char *a1, int64_t a2, char a3)
{
  result = sub_100027F60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100027E2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000057A0(&qword_10009E910, &qword_10007E208);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100027F60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000057A0(&qword_10009E930, &qword_10007E230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_10002806C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100037AD8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000282C0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1000285C4((*(v12 + 56) + 32 * v9), a3);
    sub_100028110(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100028110(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007B59C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_10007B74C();

      sub_10007B1EC();
      v14 = sub_10007B76C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1000282C0()
{
  v1 = v0;
  sub_1000057A0(&unk_10009F400, qword_10007E5B0);
  v2 = *v0;
  v3 = sub_10007B65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000057F8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000285C4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_100028464(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000057A0(&qword_10009E918, &unk_10007E210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10007CF20;
    *(inited + 32) = sub_10007B19C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000381B0(inited);
    swift_setDeallocating();
    sub_100008824(inited + 32, &qword_10009E920, &qword_10007F580);
    v6 = CKErrorDomain;
    v7.super.isa = sub_10007B10C().super.isa;
  }

  else
  {
    v6 = CKErrorDomain;
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(NSError) initWithDomain:v6 code:1 userInfo:v7.super.isa];

  return v8;
}

_OWORD *sub_1000285C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_1000285E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000285F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0xD)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10002863C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 sub_1000286A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000286CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100028718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100028778()
{
  result = sub_100028798();
  qword_1000A23C8 = result;
  return result;
}

id sub_100028798()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(NSXPCConnection);
  v6 = sub_10007B15C();
  v58 = [v5 initWithServiceName:v6];

  v7 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP12CloudSharing17SPIHelperProtocol_];
  outCount = 0;
  protocol_copyMethodDescriptionList(&OBJC_PROTOCOL____TtP12CloudSharing17SPIHelperProtocol_, 1, 1, &outCount);
  v8 = outCount;
  if (outCount != 23)
  {
    sub_10007AE0C();
    v9 = sub_10007AE1C();
    v10 = sub_10007B3FC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = 23;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "SPIHelper function count for allowed classes (%ld) doesn't match the number of functions in the protocol: %ld", v11, 0x16u);
    }

    (*(v1 + 8))(v4, v0);
  }

  v39 = "addToCloudKitSharing:containerSetupInfo:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:withReply:";
  v40 = "addToCloudKitSharing:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
  v41 = "addToShareFromSharingURL:containerSetupInfo:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:withReply:";
  v42 = "removeFromShareFromSharingURL:containerSetupInfo:withReply:";
  v43 = "removeFromShare:containerSetupInfo:withReply:";
  v44 = "removeFromShareForFileURL:withReply:";
  v45 = "mailContentFromSharingURL:share:fileURL:appName:appIconData:withReply:";
  v46 = "getMetadataFromShareFromSharingURL:containerSetupInfo:withReply:";
  v47 = "updateShare:containerSetupInfo:withReply:";
  v48 = "currentUserSharingStatusFor:withReply:";
  v49 = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:withReply:";
  v50 = "addParticipantsToShareWithURLWrapper:share:emailAddresses:phoneNumbers:permissionType:allowOthersToInvite:withReply:";
  v51 = "addParticipantsToShareWithURLWrapper:share:emailAddresses:phoneNumbers:optionsGroups:withReply:";
  v52 = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:permissionType:allowOthersToInvite:withReply:";
  v53 = "addParticipantsToShare:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:withReply:";
  v54 = "existingShareForFileWithURLWrapper:withReply:";
  v55 = "userNameAndEmailWithURLWrapper:containerSetupInfo:withReply:";
  v56 = "forciblyShareFolder:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:withReply:";
  v57 = "forciblyShareFolder:emailAddresses:phoneNumbers:optionsGroups:withReply:";
  v12 = CKErrorUserInfoClasses();
  sub_10007B3BC();

  isa = sub_10007B38C().super.isa;
  [v7 setClasses:isa forSelector:"sharingStatusForWithURLWrapper:withReply:" argumentIndex:1 ofReply:1];

  v14 = sub_10007B38C().super.isa;
  [v7 setClasses:v14 forSelector:"sharingStatusFor:withReply:" argumentIndex:1 ofReply:1];

  v15 = sub_10007B38C().super.isa;
  [v7 setClasses:v15 forSelector:"startFileSharingWithURLWrapper:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:withReply:" argumentIndex:2 ofReply:1];

  v16 = sub_10007B38C().super.isa;
  [v7 setClasses:v16 forSelector:"startFileSharingWithURLWrapper:emailAddresses:phoneNumbers:optionsGroups:withReply:" argumentIndex:2 ofReply:1];

  v17 = sub_10007B38C().super.isa;
  [v7 setClasses:v17 forSelector:v39 argumentIndex:2 ofReply:1];

  v18 = sub_10007B38C().super.isa;
  [v7 setClasses:v18 forSelector:v40 argumentIndex:2 ofReply:1];

  v19 = sub_10007B38C().super.isa;
  [v7 setClasses:v19 forSelector:v41 argumentIndex:2 ofReply:1];

  v20 = sub_10007B38C().super.isa;
  [v7 setClasses:v20 forSelector:v42 argumentIndex:1 ofReply:1];

  v21 = sub_10007B38C().super.isa;
  [v7 setClasses:v21 forSelector:v43 argumentIndex:1 ofReply:1];

  v22 = sub_10007B38C().super.isa;
  [v7 setClasses:v22 forSelector:v44 argumentIndex:1 ofReply:1];

  v23 = sub_10007B38C().super.isa;
  [v7 setClasses:v23 forSelector:v45 argumentIndex:2 ofReply:1];

  v24 = sub_10007B38C().super.isa;
  [v7 setClasses:v24 forSelector:v46 argumentIndex:1 ofReply:1];

  v25 = sub_10007B38C().super.isa;
  [v7 setClasses:v25 forSelector:v47 argumentIndex:2 ofReply:1];

  v26 = sub_10007B38C().super.isa;
  [v7 setClasses:v26 forSelector:v48 argumentIndex:1 ofReply:1];

  v27 = sub_10007B38C().super.isa;
  [v7 setClasses:v27 forSelector:v49 argumentIndex:2 ofReply:1];

  v28 = sub_10007B38C().super.isa;
  [v7 setClasses:v28 forSelector:v50 argumentIndex:2 ofReply:1];

  v29 = sub_10007B38C().super.isa;
  [v7 setClasses:v29 forSelector:v51 argumentIndex:2 ofReply:1];

  v30 = sub_10007B38C().super.isa;
  [v7 setClasses:v30 forSelector:v52 argumentIndex:2 ofReply:1];

  v31 = sub_10007B38C().super.isa;
  [v7 setClasses:v31 forSelector:v53 argumentIndex:2 ofReply:1];

  v32 = sub_10007B38C().super.isa;
  [v7 setClasses:v32 forSelector:v54 argumentIndex:2 ofReply:1];

  v33 = sub_10007B38C().super.isa;
  [v7 setClasses:v33 forSelector:v55 argumentIndex:2 ofReply:1];

  v34 = sub_10007B38C().super.isa;
  [v7 setClasses:v34 forSelector:v56 argumentIndex:2 ofReply:1];

  v35 = sub_10007B38C().super.isa;
  [v7 setClasses:v35 forSelector:v57 argumentIndex:2 ofReply:1];

  v36 = v58;
  [v58 setRemoteObjectInterface:v7];
  [v36 resume];

  return v36;
}

uint64_t static InitiateSharing.functionCount(inProtocol:)(Protocol *a1)
{
  outCount = 0;
  protocol_copyMethodDescriptionList(a1, 1, 1, &outCount);
  return outCount;
}

uint64_t sub_10002902C()
{
  result = sub_10002904C();
  qword_1000A23D0 = result;
  return result;
}

uint64_t sub_10002904C()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10009DF48 != -1)
  {
    swift_once();
  }

  v5 = qword_1000A23C8;
  aBlock[4] = sub_1000292A8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002947C;
  aBlock[3] = &unk_100097A68;
  v6 = _Block_copy(aBlock);
  v7 = v5;
  v8 = [v7 remoteObjectProxyWithErrorHandler:v6];
  _Block_release(v6);

  sub_10007B56C();
  swift_unknownObjectRelease();
  sub_1000057A0(&qword_10009E978, &qword_10007E5C8);
  if (swift_dynamicCast())
  {
    return v13[1];
  }

  sub_10007AE0C();
  v10 = sub_10007AE1C();
  v11 = sub_10007B3FC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to create SPIHelper remote object proxy", v12, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_1000292A8(uint64_t a1)
{
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  swift_errorRetain();
  v7 = sub_10007AE1C();
  v8 = sub_10007B3FC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136315138;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v11 = sub_10007B1AC();
    v13 = sub_100037C08(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received SPIHelper remoteObjectProxy error: %s", v9, 0xCu);
    sub_10000585C(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_10002947C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void InitiateSharing.callForSharingStatus(_:reply:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AC4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007AE2C();
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v21 = *(v13 + 16);
  v45 = a1;
  v21(v16, a1, v12);
  v22 = sub_10007AE1C();
  v23 = sub_10007B41C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = v9;
    v25 = v24;
    v26 = swift_slowAlloc();
    v39 = a3;
    v37 = v26;
    aBlock[0] = v26;
    *v25 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v27 = sub_10007B69C();
    v28 = a2;
    v30 = v29;
    (*(v13 + 8))(v16, v12);
    v31 = sub_100037C08(v27, v30, aBlock);
    a2 = v28;

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "callForSharingStatus url: %s", v25, 0xCu);
    sub_10000585C(v37);
    a3 = v39;

    v9 = v38;
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  (*(v43 + 8))(v20, v44);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v32 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v34 = sub_10007AB9C();
    sub_10007ACAC();
    v35 = swift_allocObject();
    *(v35 + 16) = a2;
    *(v35 + 24) = a3;
    aBlock[4] = sub_100038330;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100029D60;
    aBlock[3] = &unk_100096910;
    v36 = _Block_copy(aBlock);

    [v32 sharingStatusForWithURLWrapper:v34 withReply:v36];

    _Block_release(v36);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v33 = v40;
    sub_10007AB6C();
    v34 = sub_10007AA1C();
    (*(v42 + 8))(v33, v9);
    a2(0, v34);
  }
}

uint64_t sub_100029C10()
{
  swift_willThrow();
  v1 = v0;
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  sub_100005C8C(0, &qword_10009E900, NSError_ptr);
  if (swift_dynamicCast())
  {
    v2 = [v11 code];
    if (v2 == sub_10007AE3C())
    {
      v3 = [v11 domain];
      v4 = sub_10007B19C();
      v6 = v5;

      if (v4 == sub_10007B19C() && v6 == v7)
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_10007B6BC();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void InitiateSharing.callForFileSharing(_:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v116 = a7;
  v117 = a8;
  v107 = a6;
  v108 = a4;
  v109 = a5;
  v118 = a3;
  v10 = sub_10007AA3C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v102 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10007AA4C();
  v103 = *(v104 - 8);
  v13 = *(v103 + 64);
  __chkstk_darwin(v104);
  v101 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v106 = &v100 - v17;
  v18 = sub_10007AC4C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10007AE2C();
  v120 = *(v23 - 8);
  v24 = *(v120 + 64);
  v25 = __chkstk_darwin(v23);
  v113 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v112 = &v100 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v100 - v30;
  v32 = __chkstk_darwin(v29);
  v111 = &v100 - v33;
  v34 = __chkstk_darwin(v32);
  v110 = &v100 - v35;
  __chkstk_darwin(v34);
  v37 = &v100 - v36;
  sub_10007AE0C();
  v38 = *(v19 + 16);
  v115 = a1;
  v39 = a1;
  v40 = v18;
  v38(v22, v39, v18);
  v41 = sub_10007AE1C();
  v42 = sub_10007B41C();
  v43 = os_log_type_enabled(v41, v42);
  v119 = a2;
  v105 = v18;
  v114 = v19;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v100 = v31;
    v45 = v44;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v47 = sub_10007B69C();
    v48 = v40;
    v50 = v49;
    (*(v19 + 8))(v22, v48);
    v51 = sub_100037C08(v47, v50, aBlock);

    *(v45 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "callForFileSharing url: %s", v45, 0xCu);
    sub_10000585C(v46);

    v31 = v100;
  }

  else
  {

    (*(v19 + 8))(v22, v18);
  }

  v52 = *(v120 + 8);
  v52(v37, v23);
  v53 = v23;
  v54 = v110;
  sub_10007AE0C();

  v55 = sub_10007AE1C();
  v56 = sub_10007B3DC();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_10007B2BC();
    v61 = sub_100037C08(v59, v60, aBlock);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v55, v56, "callForFileSharing emailAddresses: %s", v57, 0xCu);
    sub_10000585C(v58);
  }

  v52(v54, v53);
  v62 = v111;
  sub_10007AE0C();

  v63 = sub_10007AE1C();
  v64 = sub_10007B3DC();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    v67 = sub_10007B2BC();
    v69 = sub_100037C08(v67, v68, aBlock);

    *(v65 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v63, v64, "callForFileSharing phoneNumbers: %s", v65, 0xCu);
    sub_10000585C(v66);
  }

  v52(v62, v53);
  sub_10007AE0C();
  v70 = sub_10007AE1C();
  v71 = sub_10007B3DC();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 136315138;
    v121 = v108;
    aBlock[0] = v73;
    type metadata accessor for ParticipantPermission(0);
    v74 = sub_10007B1AC();
    v76 = sub_100037C08(v74, v75, aBlock);

    *(v72 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v70, v71, "callForFileSharing accessType: %s", v72, 0xCu);
    sub_10000585C(v73);
  }

  v52(v31, v53);
  v77 = v112;
  sub_10007AE0C();
  v78 = sub_10007AE1C();
  v79 = sub_10007B3DC();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 136315138;
    v121 = v109;
    aBlock[0] = v81;
    type metadata accessor for ParticipantPermission(0);
    v82 = sub_10007B1AC();
    v84 = sub_100037C08(v82, v83, aBlock);

    *(v80 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v78, v79, "callForFileSharing permissionType: %s", v80, 0xCu);
    sub_10000585C(v81);
  }

  v52(v77, v53);
  v85 = v113;
  sub_10007AE0C();
  v86 = sub_10007AE1C();
  v87 = sub_10007B3DC();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 67109120;
    *(v88 + 4) = v107 & 1;
    _os_log_impl(&_mh_execute_header, v86, v87, "callForFileSharing allowOthersToInvite: %{BOOL}d", v88, 8u);
  }

  v52(v85, v53);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v89 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v94 = sub_10007AB9C();
    sub_10007ACAC();
    isa = sub_10007B29C().super.isa;
    v96 = sub_10007B29C().super.isa;
    v97 = swift_allocObject();
    v98 = v117;
    *(v97 + 16) = v116;
    *(v97 + 24) = v98;
    aBlock[4] = sub_1000383A0;
    aBlock[5] = v97;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096960;
    v99 = _Block_copy(aBlock);

    [v89 startFileSharingWithURLWrapper:v94 emailAddresses:isa phoneNumbers:v96 accessType:v108 permissionType:v109 allowOthersToInvite:v107 & 1 withReply:v99];

    _Block_release(v99);
    swift_unknownObjectRelease();
  }

  else
  {
    v90 = v106;
    (*(v114 + 56))(v106, 1, 1, v105);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v91 = v101;
    v92 = v104;
    sub_10007AB6C();
    v93 = sub_10007AA1C();
    (*(v103 + 8))(v91, v92);
    v116(v90, 0, v93);

    sub_100008824(v90, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_10002AAC0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_10007AC1C();
    v14 = sub_10007AC4C();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_10007AC4C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a3;
  v17 = a4;
  v13(v11, a3, a4);

  return sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
}

void sub_10002AC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  sub_1000187C8(a1, &v18 - v10, &unk_10009ED10, &qword_10007D310);
  v12 = sub_10007AC4C();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_10007ABFC(v14);
    v15 = v16;
    (*(v13 + 8))(v11, v12);
  }

  if (a3)
  {
    v17 = sub_10007AB7C();
  }

  else
  {
    v17 = 0;
  }

  (*(a4 + 16))(a4, v15, a2, v17);
}

void InitiateSharing.callForFileSharing(_:emailAddresses:phoneNumbers:optionsGroups:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void *), uint64_t a6)
{
  v96 = a6;
  v98 = a4;
  v99 = a5;
  v100 = a3;
  v8 = sub_10007AA3C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v88 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AA4C();
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  __chkstk_darwin(v11);
  v87 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v93 = &v85 - v16;
  v17 = sub_10007AC4C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007AE2C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v102 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v95 = &v85 - v28;
  v29 = __chkstk_darwin(v27);
  v101 = &v85 - v30;
  __chkstk_darwin(v29);
  v32 = &v85 - v31;
  sub_10007AE0C();
  v33 = *(v18 + 16);
  v97 = a1;
  v33(v21, a1, v17);
  v34 = sub_10007AE1C();
  v35 = sub_10007B41C();
  v36 = os_log_type_enabled(v34, v35);
  v94 = a2;
  v91 = v18;
  v92 = v17;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v86 = v22;
    v38 = v37;
    v85 = swift_slowAlloc();
    aBlock[0] = v85;
    *v38 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v39 = sub_10007B69C();
    v40 = v23;
    v42 = v41;
    (*(v18 + 8))(v21, v17);
    v43 = sub_100037C08(v39, v42, aBlock);
    v23 = v40;

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "callForFileSharing url: %s", v38, 0xCu);
    sub_10000585C(v85);

    v22 = v86;
  }

  else
  {

    (*(v18 + 8))(v21, v17);
  }

  v44 = *(v23 + 8);
  v44(v32, v22);
  v45 = v101;
  sub_10007AE0C();

  v46 = sub_10007AE1C();
  v47 = sub_10007B3DC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    v50 = sub_10007B2BC();
    v52 = sub_100037C08(v50, v51, aBlock);

    *(v48 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "callForFileSharing emailAddresses: %s", v48, 0xCu);
    sub_10000585C(v49);

    v53 = v101;
  }

  else
  {

    v53 = v45;
  }

  v44(v53, v22);
  v54 = v95;
  sub_10007AE0C();

  v55 = sub_10007AE1C();
  v56 = sub_10007B3DC();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_10007B2BC();
    v61 = sub_100037C08(v59, v60, aBlock);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v55, v56, "callForFileSharing phoneNumbers: %s", v57, 0xCu);
    sub_10000585C(v58);
  }

  v44(v54, v22);
  v62 = v102;
  sub_10007AE0C();

  v63 = sub_10007AE1C();
  v64 = sub_10007B3DC();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v67 = sub_10007B2BC();
    v69 = v22;
    v70 = sub_100037C08(v67, v68, aBlock);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v63, v64, "callForFileSharing optionsGroups: %s", v65, 0xCu);
    sub_10000585C(v66);

    v71 = v102;
    v72 = v69;
  }

  else
  {

    v71 = v62;
    v72 = v22;
  }

  v44(v71, v72);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v73 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v78 = sub_10007AB9C();
    sub_10007ACAC();
    isa = sub_10007B29C().super.isa;
    v80 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v81 = sub_10007B29C().super.isa;
    v82 = swift_allocObject();
    v83 = v96;
    *(v82 + 16) = v99;
    *(v82 + 24) = v83;
    aBlock[4] = sub_100046430;
    aBlock[5] = v82;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000969B0;
    v84 = _Block_copy(aBlock);

    [v73 startFileSharingWithURLWrapper:v78 emailAddresses:isa phoneNumbers:v80 optionsGroups:v81 withReply:v84];

    _Block_release(v84);
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = v93;
    (*(v91 + 56))(v93, 1, 1, v92);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v75 = v87;
    v76 = v90;
    sub_10007AB6C();
    v77 = sub_10007AA1C();
    (*(v89 + 8))(v75, v76);
    v99(v74, 0, v77);

    sub_100008824(v74, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForCloudKitAddToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(uint64_t, void, void *), uint64_t a9)
{
  v115 = a8;
  v117 = a7;
  v118 = a5;
  v119 = a6;
  v13 = sub_10007AA3C();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v107 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10007AA4C();
  v108 = *(v109 - 8);
  v16 = *(v108 + 64);
  __chkstk_darwin(v109);
  v106 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v105 = &v105 - v20;
  v122 = sub_10007AE2C();
  v21 = *(v122 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v122);
  v113 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v112 = &v105 - v26;
  v27 = __chkstk_darwin(v25);
  v111 = &v105 - v28;
  v29 = __chkstk_darwin(v27);
  v110 = &v105 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v105 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v105 - v35;
  __chkstk_darwin(v34);
  v38 = &v105 - v37;
  sub_10007AE0C();
  v39 = a1;
  v40 = sub_10007AE1C();
  v41 = sub_10007B41C();

  v42 = os_log_type_enabled(v40, v41);
  v120 = a3;
  v121 = a4;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v39;
    *v44 = v39;
    v45 = v39;
    _os_log_impl(&_mh_execute_header, v40, v41, "callForCloudKitAddToShare share: %@", v43, 0xCu);
    sub_100008824(v44, &qword_10009F570, &qword_10007DAF0);
  }

  v114 = v39;

  v46 = *(v21 + 8);
  v46(v38, v122);
  sub_10007AE0C();
  v47 = a2;
  v48 = sub_10007AE1C();
  v49 = sub_10007B41C();
  v116 = v47;

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    v52 = v116;
    *(v50 + 4) = v116;
    *v51 = v52;
    v53 = v52;
    _os_log_impl(&_mh_execute_header, v48, v49, "callForCloudKitAddToShare containerSetupInfo: %@", v50, 0xCu);
    sub_100008824(v51, &qword_10009F570, &qword_10007DAF0);
  }

  v54 = v122;
  v46(v36, v122);
  sub_10007AE0C();

  v55 = sub_10007AE1C();
  v56 = sub_10007B3DC();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_10007B2BC();
    v61 = sub_100037C08(v59, v60, aBlock);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v55, v56, "callForCloudKitAddToShare emailAddresses: %s", v57, 0xCu);
    sub_10000585C(v58);
  }

  v46(v33, v54);
  v62 = v110;
  sub_10007AE0C();

  v63 = sub_10007AE1C();
  v64 = sub_10007B3DC();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v111;
  if (v65)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock[0] = v68;
    *v67 = 136315138;
    v69 = sub_10007B2BC();
    v71 = sub_100037C08(v69, v70, aBlock);

    *(v67 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "callForCloudKitAddToShare phoneNumbers: %s", v67, 0xCu);
    sub_10000585C(v68);
  }

  v72 = v62;
  v73 = v122;
  v46(v72, v122);
  sub_10007AE0C();
  v74 = sub_10007AE1C();
  v75 = sub_10007B3DC();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 136315138;
    v123 = v118;
    aBlock[0] = v77;
    type metadata accessor for ParticipantPermission(0);
    v78 = sub_10007B1AC();
    v80 = sub_100037C08(v78, v79, aBlock);

    *(v76 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v74, v75, "callForCloudKitAddToShare accessType: %s", v76, 0xCu);
    sub_10000585C(v77);
  }

  v46(v66, v73);
  v81 = v112;
  sub_10007AE0C();
  v82 = sub_10007AE1C();
  v83 = sub_10007B3DC();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v84 = 136315138;
    v123 = v119;
    aBlock[0] = v85;
    type metadata accessor for ParticipantPermission(0);
    v86 = sub_10007B1AC();
    v88 = sub_100037C08(v86, v87, aBlock);

    *(v84 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v82, v83, "callForCloudKitAddToShare permissionType: %s", v84, 0xCu);
    sub_10000585C(v85);
  }

  v46(v81, v73);
  v89 = v113;
  sub_10007AE0C();
  v90 = sub_10007AE1C();
  v91 = sub_10007B3DC();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 67109120;
    *(v92 + 4) = v117 & 1;
    _os_log_impl(&_mh_execute_header, v90, v91, "callForCloudKitAddToShare allowOthersToInvite: %{BOOL}d", v92, 8u);
  }

  v46(v89, v73);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v93 = qword_1000A23D0;
  v94 = v114;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v96 = sub_10007B29C().super.isa;
    v97 = swift_allocObject();
    *(v97 + 16) = v115;
    *(v97 + 24) = a9;
    aBlock[4] = sub_100046430;
    aBlock[5] = v97;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096A00;
    v98 = _Block_copy(aBlock);

    LOBYTE(v104) = v117 & 1;
    [v93 addToCloudKitSharing:v94 containerSetupInfo:v116 emailAddresses:isa phoneNumbers:v96 accessType:v118 permissionType:v119 allowOthersToInvite:v104 withReply:v98];
    _Block_release(v98);
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = sub_10007AC4C();
    v100 = v105;
    (*(*(v99 - 8) + 56))(v105, 1, 1, v99);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v101 = v106;
    v102 = v109;
    sub_10007AB6C();
    v103 = sub_10007AA1C();
    (*(v108 + 8))(v101, v102);
    v115(v100, 0, v103);

    sub_100008824(v100, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForCloudKitAddToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v96 = a6;
  v97 = a7;
  v94 = a4;
  v95 = a5;
  v10 = sub_10007AA3C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v88 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007AA4C();
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = *(v89 + 64);
  __chkstk_darwin(v13);
  v87 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v86 = &v85 - v18;
  v101 = sub_10007AE2C();
  v19 = *(v101 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v101);
  v99 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v93 = &v85 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v85 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v85 - v29;
  __chkstk_darwin(v28);
  v32 = &v85 - v31;
  sub_10007AE0C();
  v33 = a1;
  v34 = sub_10007AE1C();
  v35 = sub_10007B41C();

  v36 = os_log_type_enabled(v34, v35);
  v100 = a3;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v33;
    *v38 = v33;
    v39 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "callForCloudKitAddToShare share: %@", v37, 0xCu);
    sub_100008824(v38, &qword_10009F570, &qword_10007DAF0);
  }

  v92 = v33;

  v40 = v101;
  v98 = *(v19 + 8);
  v98(v32, v101);
  sub_10007AE0C();
  v41 = a2;
  v42 = sub_10007AE1C();
  v43 = sub_10007B41C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&_mh_execute_header, v42, v43, "callForCloudKitAddToShare containerSetupInfo: %@", v44, 0xCu);
    sub_100008824(v45, &qword_10009F570, &qword_10007DAF0);

    v40 = v101;
  }

  v47 = v98;
  v98(v30, v40);
  sub_10007AE0C();

  v48 = sub_10007AE1C();
  v49 = sub_10007B3DC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    v52 = sub_10007B2BC();
    v54 = sub_100037C08(v52, v53, aBlock);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "callForCloudKitAddToShare emailAddresses: %s", v50, 0xCu);
    sub_10000585C(v51);
    v40 = v101;
  }

  v47(v27, v40);
  v55 = v93;
  sub_10007AE0C();

  v56 = sub_10007AE1C();
  v57 = sub_10007B3DC();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v58 = 136315138;
    v60 = sub_10007B2BC();
    v62 = sub_100037C08(v60, v61, aBlock);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "callForCloudKitAddToShare phoneNumbers: %s", v58, 0xCu);
    sub_10000585C(v59);
    v40 = v101;

    v47 = v98;
  }

  v47(v55, v40);
  v63 = v99;
  sub_10007AE0C();

  v64 = sub_10007AE1C();
  v65 = sub_10007B3DC();

  v66 = os_log_type_enabled(v64, v65);
  v91 = v41;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock[0] = v68;
    *v67 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v69 = sub_10007B2BC();
    v71 = v47;
    v72 = sub_100037C08(v69, v70, aBlock);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v64, v65, "callForCloudKitAddToShare optionsGroups: %s", v67, 0xCu);
    sub_10000585C(v68);

    v71(v99, v101);
  }

  else
  {

    v47(v63, v40);
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v73 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v75 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v76 = sub_10007B29C().super.isa;
    v77 = swift_allocObject();
    v78 = v97;
    *(v77 + 16) = v96;
    *(v77 + 24) = v78;
    aBlock[4] = sub_100046430;
    aBlock[5] = v77;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096A50;
    v79 = _Block_copy(aBlock);

    [v73 addToCloudKitSharing:v92 containerSetupInfo:v91 emailAddresses:isa phoneNumbers:v75 optionsGroups:v76 withReply:v79];
    _Block_release(v79);
    swift_unknownObjectRelease();
  }

  else
  {
    v80 = sub_10007AC4C();
    v81 = v86;
    (*(*(v80 - 8) + 56))(v86, 1, 1, v80);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v82 = v87;
    v83 = v90;
    sub_10007AB6C();
    v84 = sub_10007AA1C();
    (*(v89 + 8))(v82, v83);
    v96(v81, 0, v84);

    sub_100008824(v81, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForSharingURLAddToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void, void, Class), uint64_t a9)
{
  v119 = a8;
  v121 = a7;
  v122 = a5;
  v123 = a6;
  v125 = a4;
  v12 = sub_10007AA3C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v110 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10007AA4C();
  v111 = *(v112 - 8);
  v15 = *(v111 + 64);
  __chkstk_darwin(v112);
  v109 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007AC4C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10007AE2C();
  v120 = *(v127 - 8);
  v22 = v120[8];
  v23 = __chkstk_darwin(v127);
  v118 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v117 = &v108 - v26;
  v27 = __chkstk_darwin(v25);
  v116 = &v108 - v28;
  v29 = __chkstk_darwin(v27);
  v115 = &v108 - v30;
  v31 = __chkstk_darwin(v29);
  v126 = &v108 - v32;
  v33 = __chkstk_darwin(v31);
  v114 = &v108 - v34;
  __chkstk_darwin(v33);
  v36 = &v108 - v35;
  sub_10007AE0C();
  v37 = *(v18 + 16);
  v113 = a1;
  v37(v21, a1, v17);
  v38 = sub_10007AE1C();
  v39 = sub_10007B41C();
  v40 = os_log_type_enabled(v38, v39);
  v124 = a3;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v108 = a2;
    v43 = v42;
    aBlock[0] = v42;
    *v41 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v44 = sub_10007B69C();
    v46 = v45;
    (*(v18 + 8))(v21, v17);
    v47 = sub_100037C08(v44, v46, aBlock);

    *(v41 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "callForSharingURLAddToShare sharingURL: %s", v41, 0xCu);
    sub_10000585C(v43);
    a2 = v108;
  }

  else
  {

    (*(v18 + 8))(v21, v17);
  }

  v48 = v120;
  v49 = v120[1];
  v50 = v127;
  v49(v36, v127);
  v51 = v48;
  v52 = v114;
  sub_10007AE0C();
  v53 = a2;
  v54 = sub_10007AE1C();
  v55 = sub_10007B41C();
  v120 = v53;

  v56 = os_log_type_enabled(v54, v55);
  v57 = v116;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    v60 = v120;
    *(v58 + 4) = v120;
    *v59 = v60;
    v61 = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "callForSharingURLAddToShare containerSetupInfo: %@", v58, 0xCu);
    sub_100008824(v59, &qword_10009F570, &qword_10007DAF0);
    v50 = v127;
  }

  v49(v52, v50);
  v62 = v126;
  sub_10007AE0C();

  v63 = sub_10007AE1C();
  v64 = sub_10007B3DC();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    v67 = sub_10007B2BC();
    v69 = sub_100037C08(v67, v68, aBlock);

    *(v65 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v63, v64, "callForSharingURLAddToShare emailAddresses: %s", v65, 0xCu);
    sub_10000585C(v66);

    v50 = v127;
  }

  v49(v62, v50);
  v70 = v115;
  sub_10007AE0C();

  v71 = sub_10007AE1C();
  v72 = sub_10007B3DC();

  v73 = os_log_type_enabled(v71, v72);
  v126 = (v51 + 1);
  if (v73)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    aBlock[0] = v75;
    *v74 = 136315138;
    v76 = sub_10007B2BC();
    v78 = sub_100037C08(v76, v77, aBlock);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v71, v72, "callForSharingURLAddToShare phoneNumbers: %s", v74, 0xCu);
    sub_10000585C(v75);
    v50 = v127;
  }

  v49(v70, v50);
  sub_10007AE0C();
  v79 = sub_10007AE1C();
  v80 = sub_10007B3DC();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 136315138;
    v128 = v122;
    aBlock[0] = v82;
    type metadata accessor for ParticipantPermission(0);
    v83 = sub_10007B1AC();
    v85 = sub_100037C08(v83, v84, aBlock);

    *(v81 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v79, v80, "callForSharingURLAddToShare accessType: %s", v81, 0xCu);
    sub_10000585C(v82);
    v50 = v127;
  }

  v49(v57, v50);
  v86 = v117;
  sub_10007AE0C();
  v87 = sub_10007AE1C();
  v88 = sub_10007B3DC();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 136315138;
    v128 = v123;
    aBlock[0] = v90;
    type metadata accessor for ParticipantPermission(0);
    v91 = sub_10007B1AC();
    v93 = sub_100037C08(v91, v92, aBlock);

    *(v89 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v87, v88, "callForSharingURLAddToShare permissionType: %s", v89, 0xCu);
    sub_10000585C(v90);
    v50 = v127;
  }

  v49(v86, v50);
  v94 = v118;
  sub_10007AE0C();
  v95 = sub_10007AE1C();
  v96 = sub_10007B3DC();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 67109120;
    *(v97 + 4) = v121 & 1;
    _os_log_impl(&_mh_execute_header, v95, v96, "callForSharingURLAddToShare allowOthersToInvite: %{BOOL}d", v97, 8u);
  }

  v49(v94, v50);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v98 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(&v130);
    v100 = v99;
    isa = sub_10007B29C().super.isa;
    v102.super.isa = sub_10007B29C().super.isa;
    v103 = swift_allocObject();
    *(v103 + 16) = v119;
    *(v103 + 24) = a9;
    aBlock[4] = sub_1000383C8;
    aBlock[5] = v103;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002DDAC;
    aBlock[3] = &unk_100096AA0;
    v104 = _Block_copy(aBlock);

    LOBYTE(v107) = v121 & 1;
    [v98 addToShareFromSharingURL:v100 containerSetupInfo:v120 emailAddresses:isa phoneNumbers:v102.super.isa accessType:v122 permissionType:v123 allowOthersToInvite:v107 withReply:v104];
    _Block_release(v104);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v105 = v109;
    v106 = v112;
    sub_10007AB6C();
    v102.super.isa = sub_10007AA1C();
    (*(v111 + 8))(v105, v106);
    v119(0, 0, v102.super.isa);
  }
}

void sub_10002DDAC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a3;
  v9 = a4;
  v8(a2, a3, a4);
}

void sub_10002DFD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_10007AB7C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2);
}

void InitiateSharing.callForSharingURLRemoveShare(_:containerSetupInfo:reply:)(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v63 = a2;
  v64 = a4;
  v62 = a3;
  v5 = sub_10007AA3C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007AE2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v53 - v22;
  sub_10007AE0C();
  v24 = *(v12 + 16);
  v61 = a1;
  v24(v15, a1, v11);
  v25 = sub_10007AE1C();
  v26 = sub_10007B41C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v56 = v21;
    v28 = v27;
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v28 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v29 = sub_10007B69C();
    v54 = v16;
    v30 = v17;
    v32 = v31;
    (*(v12 + 8))(v15, v11);
    v33 = sub_100037C08(v29, v32, aBlock);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "callForSharingURLRemoveShare sharingURL: %s", v28, 0xCu);
    sub_10000585C(v55);

    v21 = v56;

    v34 = *(v30 + 8);
    v35 = v54;
    v34(v23, v54);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    v34 = *(v17 + 8);
    v34(v23, v16);
    v35 = v16;
  }

  sub_10007AE0C();
  v36 = v63;
  v37 = v63;
  v38 = sub_10007AE1C();
  v39 = sub_10007B41C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v35;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v37;
    *v42 = v36;
    v43 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "callForSharingURLRemoveShare containerSetupInfo: %@", v41, 0xCu);
    sub_100008824(v42, &qword_10009F570, &qword_10007DAF0);

    v35 = v40;
  }

  v34(v21, v35);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v44 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v45);
    v47 = v46;
    v48 = swift_allocObject();
    v49 = v64;
    *(v48 + 16) = v62;
    *(v48 + 24) = v49;
    aBlock[4] = sub_1000383F0;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100096AF0;
    v50 = _Block_copy(aBlock);

    [v44 removeFromShareFromSharingURL:v47 containerSetupInfo:v37 withReply:v50];
    _Block_release(v50);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v51 = v57;
    v52 = v60;
    sub_10007AB6C();
    v47 = sub_10007AA1C();
    (*(v59 + 8))(v51, v52);
    v62(0, v47);
  }
}

void sub_10002E714(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_10002E7A4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10007AB7C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void InitiateSharing.callForRemoveShare(_:containerSetupInfo:reply:)(void *a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  __chkstk_darwin(v9);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AE2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  sub_10007AE0C();
  v20 = a1;
  v21 = sub_10007AE1C();
  v22 = sub_10007B41C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = a2;
    v25 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v25 = v20;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "callForRemoveShare share: %@", v23, 0xCu);
    sub_100008824(v25, &qword_10009F570, &qword_10007DAF0);
    a2 = v24;
  }

  v27 = *(v13 + 8);
  v27(v19, v12);
  sub_10007AE0C();
  v28 = a2;
  v29 = sub_10007AE1C();
  v30 = sub_10007B41C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v12;
    v32 = v20;
    v33 = a2;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v27;
    v36 = v35;
    *v34 = 138412290;
    *(v34 + 4) = v28;
    *v35 = v33;
    v20 = v32;
    v12 = v31;
    v37 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "callForRemoveShare containerSetupInfo: %@", v34, 0xCu);
    sub_100008824(v36, &qword_10009F570, &qword_10007DAF0);
    v27 = v46;
  }

  v27(v17, v12);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v38 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v39 = swift_allocObject();
    v40 = v52;
    *(v39 + 16) = v51;
    *(v39 + 24) = v40;
    aBlock[4] = sub_100046254;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100096B40;
    v41 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v38 removeFromShare:v20 containerSetupInfo:v28 withReply:v41];
    _Block_release(v41);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v42 = v47;
    v43 = v50;
    sub_10007AB6C();
    v44 = sub_10007AA1C();
    (*(v49 + 8))(v42, v43);
    v51(0, v44);
  }
}

void InitiateSharing.callForFileURLRemoveShare(_:reply:)(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v9);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AC4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007AE2C();
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = *(v46 + 64);
  __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v21 = *(v13 + 16);
  v45 = a1;
  v21(v16, a1, v12);
  v22 = sub_10007AE1C();
  v23 = sub_10007B41C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = a3;
    v25 = v24;
    v39 = swift_slowAlloc();
    v40 = a2;
    aBlock[0] = v39;
    *v25 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v26 = sub_10007B69C();
    v27 = v9;
    v29 = v28;
    (*(v13 + 8))(v16, v12);
    v30 = sub_100037C08(v26, v29, aBlock);
    v9 = v27;

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "callForFileURLRemoveShare url: %s", v25, 0xCu);
    sub_10000585C(v39);
    a2 = v40;

    a3 = v41;
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  (*(v46 + 8))(v20, v47);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v31 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v32);
    v34 = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = a2;
    *(v35 + 24) = a3;
    aBlock[4] = sub_100046254;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100096B90;
    v36 = _Block_copy(aBlock);

    [v31 removeFromShareForFileURL:v34 withReply:v36];
    _Block_release(v36);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v37 = v42;
    sub_10007AB6C();
    v34 = sub_10007AA1C();
    (*(v44 + 8))(v37, v9);
    a2(0, v34);
  }
}

void InitiateSharing.callForMailContent(_:share:fileURL:appName:appIconData:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void (*a8)(void, void, void, void, void *), uint64_t a9)
{
  v124 = a7;
  v125 = a8;
  v123 = a6;
  v126 = a4;
  v130 = a3;
  v119 = a2;
  v11 = sub_10007AA3C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v111 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10007AA4C();
  v112 = *(v113 - 8);
  v14 = *(v112 + 64);
  __chkstk_darwin(v113);
  v110 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v115 - 8) + 64);
  v17 = __chkstk_darwin(v115);
  v117 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v114 = &v107 - v20;
  __chkstk_darwin(v19);
  v120 = &v107 - v21;
  v22 = sub_10007AC4C();
  v23 = *(v22 - 8);
  v24 = v23[8];
  __chkstk_darwin(v22);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10007AE2C();
  v131 = *(v27 - 8);
  v28 = *(v131 + 8);
  v29 = __chkstk_darwin(v27);
  v128 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v121 = &v107 - v32;
  v33 = __chkstk_darwin(v31);
  v127 = &v107 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v107 - v36;
  __chkstk_darwin(v35);
  v39 = &v107 - v38;
  sub_10007AE0C();
  v40 = v23[2];
  v118 = a1;
  v40(v26, a1, v22);
  v41 = sub_10007AE1C();
  v42 = sub_10007B41C();
  v43 = os_log_type_enabled(v41, v42);
  v129 = a5;
  v122 = v22;
  v116 = v23;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v108 = v27;
    v46 = v45;
    aBlock[0] = v45;
    *v44 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v47 = sub_10007B69C();
    v48 = v22;
    v50 = v49;
    v109 = v23[1];
    v109(v26, v48);
    v51 = sub_100037C08(v47, v50, aBlock);

    *(v44 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "callForMailContent sharingURL: %s", v44, 0xCu);
    sub_10000585C(v46);
    v27 = v108;
  }

  else
  {

    v109 = v23[1];
    v109(v26, v22);
  }

  v52 = *(v131 + 1);
  v52(v39, v27);
  sub_10007AE0C();
  v53 = v119;
  v54 = sub_10007AE1C();
  v55 = sub_10007B41C();

  v56 = os_log_type_enabled(v54, v55);
  v131 = v52;
  v57 = v120;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    *(v58 + 4) = v53;
    *v59 = v53;
    v60 = v53;
    _os_log_impl(&_mh_execute_header, v54, v55, "callForMailContent share: %@", v58, 0xCu);
    sub_100008824(v59, &qword_10009F570, &qword_10007DAF0);

    v52 = v131;
  }

  v52(v37, v27);
  v61 = v127;
  sub_10007AE0C();
  sub_1000187C8(v130, v57, &unk_10009ED10, &qword_10007D310);
  v62 = sub_10007AE1C();
  v63 = sub_10007B41C();
  v64 = os_log_type_enabled(v62, v63);
  v119 = v53;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    sub_1000187C8(v57, v114, &unk_10009ED10, &qword_10007D310);
    v67 = sub_10007B1AC();
    v68 = v57;
    v69 = v67;
    v71 = v70;
    sub_100008824(v68, &unk_10009ED10, &qword_10007D310);
    v72 = sub_100037C08(v69, v71, aBlock);

    *(v65 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v62, v63, "callForMailContent fileURL: %s", v65, 0xCu);
    sub_10000585C(v66);
    v52 = v131;

    v73 = v127;
  }

  else
  {

    sub_100008824(v57, &unk_10009ED10, &qword_10007D310);
    v73 = v61;
  }

  v52(v73, v27);
  v75 = v123;
  v74 = v124;
  v76 = v129;
  v77 = v121;
  sub_10007AE0C();

  v78 = sub_10007AE1C();
  v79 = sub_10007B3DC();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock[0] = v81;
    *v80 = 136315138;
    *(v80 + 4) = sub_100037C08(v126, v76, aBlock);
    _os_log_impl(&_mh_execute_header, v78, v79, "callForMailContent appName: %s", v80, 0xCu);
    sub_10000585C(v81);
    v52 = v131;
  }

  v52(v77, v27);
  v82 = v128;
  sub_10007AE0C();
  sub_100038418(v75, v74);
  v83 = sub_10007AE1C();
  v84 = sub_10007B3EC();
  sub_10003846C(v75, v74);
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock[0] = v86;
    *v85 = 136315138;
    v87 = sub_10007AC5C();
    v89 = v27;
    v90 = sub_100037C08(v87, v88, aBlock);

    *(v85 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v83, v84, "callForMailContent appIconData: %s", v85, 0xCu);
    sub_10000585C(v86);

    v131(v128, v89);
  }

  else
  {

    v52(v82, v27);
  }

  v91 = v122;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v92 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v93);
    v95 = v94;
    v96 = v117;
    sub_1000187C8(v130, v117, &unk_10009ED10, &qword_10007D310);
    if ((v116[6])(v96, 1, v91) == 1)
    {
      v98 = 0;
    }

    else
    {
      v102 = v96;
      sub_10007ABFC(v97);
      v98 = v103;
      v109(v102, v91);
    }

    v104 = sub_10007B15C();
    isa = sub_10007AC6C().super.isa;
    v105 = swift_allocObject();
    *(v105 + 16) = v125;
    *(v105 + 24) = a9;
    aBlock[4] = sub_1000384C0;
    aBlock[5] = v105;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002FF84;
    aBlock[3] = &unk_100096BE0;
    v106 = _Block_copy(aBlock);

    [v92 mailContentFromSharingURL:v95 share:v119 fileURL:v98 appName:v104 appIconData:isa withReply:v106];
    _Block_release(v106);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v99 = v110;
    v100 = v113;
    sub_10007AB6C();
    isa = sub_10007AA1C();
    (*(v112 + 8))(v99, v100);
    v125(0, 0, 0, 0, isa);
  }
}

uint64_t sub_10002FF84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_10007B19C();
    v10 = v9;
    if (v5)
    {
LABEL_3:
      v11 = sub_10007B19C();
      v5 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:

  v13 = a4;
  v7(v8, v10, v11, v5, a4);
}

void sub_10003029C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2)
  {
    v9 = sub_10007B15C();
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v8 = sub_10007B15C();
  }

LABEL_4:
  if (a5)
  {
    v10 = sub_10007AB7C();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

void InitiateSharing.callForMetadataFromShareURL(_:containerSetupInfo:reply:)(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v63 = a2;
  v64 = a4;
  v62 = a3;
  v5 = sub_10007AA3C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007AE2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v53 - v22;
  sub_10007AE0C();
  v24 = *(v12 + 16);
  v61 = a1;
  v24(v15, a1, v11);
  v25 = sub_10007AE1C();
  v26 = sub_10007B41C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v56 = v21;
    v28 = v27;
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v28 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v29 = sub_10007B69C();
    v54 = v16;
    v30 = v17;
    v32 = v31;
    (*(v12 + 8))(v15, v11);
    v33 = sub_100037C08(v29, v32, aBlock);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "callForMetadataFromShareURL sharingURL: %s", v28, 0xCu);
    sub_10000585C(v55);

    v21 = v56;

    v34 = *(v30 + 8);
    v35 = v54;
    v34(v23, v54);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    v34 = *(v17 + 8);
    v34(v23, v16);
    v35 = v16;
  }

  sub_10007AE0C();
  v36 = v63;
  v37 = v63;
  v38 = sub_10007AE1C();
  v39 = sub_10007B41C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v35;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v37;
    *v42 = v36;
    v43 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "callForMetadataFromShareURL containerSetupInfo: %@", v41, 0xCu);
    sub_100008824(v42, &qword_10009F570, &qword_10007DAF0);

    v35 = v40;
  }

  v34(v21, v35);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v44 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v45);
    v47 = v46;
    v48 = swift_allocObject();
    v49 = v64;
    *(v48 + 16) = v62;
    *(v48 + 24) = v49;
    aBlock[4] = sub_1000384E8;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C29C;
    aBlock[3] = &unk_100096C30;
    v50 = _Block_copy(aBlock);

    [v44 getMetadataFromShareFromSharingURL:v47 containerSetupInfo:v37 withReply:v50];
    _Block_release(v50);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v51 = v57;
    v52 = v60;
    sub_10007AB6C();
    v47 = sub_10007AA1C();
    (*(v59 + 8))(v51, v52);
    v62(0, v47);
  }
}

uint64_t sub_100030A34(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, void (*a6)(char *, void *, void *))
{
  v10 = sub_10007AC4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a5);
  sub_10007AC1C();
  _Block_copy(v15);
  v16 = a4;
  v17 = a1;
  a6(v14, a4, v15);
  _Block_release(v15);
  _Block_release(v15);

  return (*(v11 + 8))(v14, v10);
}

void sub_100030B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10007AB7C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t InitiateSharing.callForUpdateShare(_:containerSetupInfo:reply:)(void *a1, void *a2, void (*a3)(uint64_t, void, void *), uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  __chkstk_darwin(v9);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v52 = &v51 - v14;
  v15 = sub_10007AE2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  sub_10007AE0C();
  v23 = a1;
  v24 = sub_10007AE1C();
  v25 = sub_10007B41C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = a2;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v23;
    *v28 = v23;
    v29 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "callForUpdateShare share: %@", v27, 0xCu);
    sub_100008824(v28, &qword_10009F570, &qword_10007DAF0);

    a2 = v26;
  }

  v30 = *(v16 + 8);
  v30(v22, v15);
  sub_10007AE0C();
  v31 = a2;
  v32 = sub_10007AE1C();
  v33 = sub_10007B41C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v15;
    v35 = v23;
    v36 = a2;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51 = v30;
    v39 = v38;
    *v37 = 138412290;
    *(v37 + 4) = v31;
    *v38 = v36;
    v23 = v35;
    v15 = v34;
    v40 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "callForUpdateShare containerSetupInfo: %@", v37, 0xCu);
    sub_100008824(v39, &qword_10009F570, &qword_10007DAF0);
    v30 = v51;
  }

  v30(v20, v15);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v41 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v42 = swift_allocObject();
    v43 = v58;
    *(v42 + 16) = v57;
    *(v42 + 24) = v43;
    aBlock[4] = sub_100046430;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096C80;
    v44 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v41 updateShare:v23 containerSetupInfo:v31 withReply:v44];
    _Block_release(v44);
    return swift_unknownObjectRelease();
  }

  else
  {
    v46 = sub_10007AC4C();
    v47 = v52;
    (*(*(v46 - 8) + 56))(v52, 1, 1, v46);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v48 = v53;
    v49 = v56;
    sub_10007AB6C();
    v50 = sub_10007AA1C();
    (*(v55 + 8))(v48, v49);
    v57(v47, 0, v50);

    return sub_100008824(v47, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100031204(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void InitiateSharing.callForCurrentUserSharingStatus(_:reply:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v31[1] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007AE2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v18 = a1;
  v19 = sub_10007AE1C();
  v20 = sub_10007B41C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31[0] = a2;
    v22 = a3;
    v23 = v21;
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v18;
    *v24 = v18;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "callForCurrentUserSharingStatus share: %@", v23, 0xCu);
    sub_100008824(v24, &qword_10009F570, &qword_10007DAF0);

    a3 = v22;
    a2 = v31[0];
  }

  (*(v14 + 8))(v17, v13);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v26 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    *(v27 + 24) = a3;
    aBlock[4] = sub_100038510;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000316DC;
    aBlock[3] = &unk_100096CD0;
    v28 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v26 currentUserSharingStatusFor:v18 withReply:v28];
    _Block_release(v28);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v29 = v33;
    sub_10007AB6C();
    v30 = sub_10007AA1C();
    (*(v32 + 8))(v12, v29);
    a2(0, v30);
  }
}

void sub_1000316E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void InitiateSharing.callForAddParticipantsToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void *), uint64_t a6)
{
  v82 = a5;
  v83 = a6;
  v81 = a4;
  v85 = a3;
  v8 = sub_10007AA3C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v76 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AA4C();
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  __chkstk_darwin(v11);
  v75 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v74 = &v74 - v16;
  v17 = sub_10007AE2C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v84 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v74 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v74 - v26;
  __chkstk_darwin(v25);
  v29 = &v74 - v28;
  sub_10007AE0C();
  v30 = a1;
  v31 = sub_10007AE1C();
  v32 = sub_10007B41C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v80 = v24;
    v34 = v18;
    v35 = v17;
    v36 = a2;
    v37 = v33;
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v30;
    *v38 = v30;
    v39 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "callForAddParticipantsToShare share: %@", v37, 0xCu);
    sub_100008824(v38, &qword_10009F570, &qword_10007DAF0);

    a2 = v36;
    v17 = v35;
    v18 = v34;
    v24 = v80;
  }

  v80 = v30;

  v40 = *(v18 + 8);
  v40(v29, v17);
  sub_10007AE0C();
  v41 = a2;
  v42 = sub_10007AE1C();
  v43 = sub_10007B41C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&_mh_execute_header, v42, v43, "callForAddParticipantsToShare containerSetupInfo: %@", v44, 0xCu);
    sub_100008824(v45, &qword_10009F570, &qword_10007DAF0);
  }

  v79 = v41;

  v40(v27, v17);
  sub_10007AE0C();

  v47 = sub_10007AE1C();
  v48 = sub_10007B3DC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    v51 = sub_10007B2BC();
    v53 = sub_100037C08(v51, v52, aBlock);

    *(v49 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v47, v48, "callForAddParticipantsToShare emailAddresses: %s", v49, 0xCu);
    sub_10000585C(v50);
  }

  v40(v24, v17);
  v54 = v84;
  sub_10007AE0C();

  v55 = sub_10007AE1C();
  v56 = sub_10007B3DC();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_10007B2BC();
    v61 = sub_100037C08(v59, v60, aBlock);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v55, v56, "callForAddParticipantsToShare phoneNumbers: %s", v57, 0xCu);
    sub_10000585C(v58);

    v62 = v84;
  }

  else
  {

    v62 = v54;
  }

  v40(v62, v17);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v63 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v65 = sub_10007B29C().super.isa;
    v66 = swift_allocObject();
    v67 = v83;
    *(v66 + 16) = v82;
    *(v66 + 24) = v67;
    aBlock[4] = sub_100046430;
    aBlock[5] = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096D20;
    v68 = _Block_copy(aBlock);

    [v63 addParticipantsToShare:v80 containerSetupInfo:v79 emailAddresses:isa phoneNumbers:v65 withReply:v68];
    _Block_release(v68);
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = sub_10007AC4C();
    v70 = v74;
    (*(*(v69 - 8) + 56))(v74, 1, 1, v69);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v71 = v75;
    v72 = v78;
    sub_10007AB6C();
    v73 = sub_10007AA1C();
    (*(v77 + 8))(v71, v72);
    v82(v70, 0, v73);

    sub_100008824(v70, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForAddParticipantsToShareWithURLWrapper(_:share:emailAddresses:phoneNumbers:permissionType:allowOthersToInvite:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v94 = a7;
  v95 = a8;
  v92 = a6;
  v93 = a5;
  v89 = a2;
  v11 = sub_10007AA3C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007AA4C();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  __chkstk_darwin(v14);
  v84 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v83 = &v83 - v19;
  v98 = sub_10007AE2C();
  v20 = *(v98 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v98);
  v91 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v90 = &v83 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v83 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v83 - v30;
  __chkstk_darwin(v29);
  v33 = &v83 - v32;
  sub_10007AE0C();
  v34 = a1;
  v35 = sub_10007AE1C();
  v36 = sub_10007B41C();

  v37 = os_log_type_enabled(v35, v36);
  v96 = a3;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v34;
    *v39 = v34;
    v40 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "callForAddParticipantsToShare urlWrapper: %@", v38, 0xCu);
    sub_100008824(v39, &qword_10009F570, &qword_10007DAF0);
  }

  v88 = v34;

  v41 = *(v20 + 8);
  v42 = v98;
  v41(v33, v98);
  sub_10007AE0C();

  v43 = sub_10007AE1C();
  v44 = sub_10007B3DC();

  v45 = os_log_type_enabled(v43, v44);
  v97 = a4;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    v48 = sub_10007B2BC();
    v50 = sub_100037C08(v48, v49, aBlock);
    v42 = v98;

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v43, v44, "callForAddParticipantsToShare emailAddresses: %s", v46, 0xCu);
    sub_10000585C(v47);
  }

  v41(v31, v42);
  v51 = v93;
  sub_10007AE0C();

  v52 = sub_10007AE1C();
  v53 = sub_10007B3DC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = sub_10007B2BC();
    v58 = sub_100037C08(v56, v57, aBlock);

    *(v54 + 4) = v58;
    v42 = v98;
    _os_log_impl(&_mh_execute_header, v52, v53, "callForAddParticipantsToShare phoneNumbers: %s", v54, 0xCu);
    sub_10000585C(v55);
  }

  v41(v28, v42);
  v59 = v90;
  sub_10007AE0C();
  v60 = sub_10007AE1C();
  v61 = sub_10007B3DC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v99 = v51;
    aBlock[0] = v63;
    *v62 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v64 = sub_10007B1AC();
    v66 = sub_100037C08(v64, v65, aBlock);

    *(v62 + 4) = v66;
    v42 = v98;
    _os_log_impl(&_mh_execute_header, v60, v61, "callForAddParticipantsToShare permissionType: %s", v62, 0xCu);
    sub_10000585C(v63);
  }

  v41(v59, v42);
  v67 = v92;
  v68 = v91;
  sub_10007AE0C();
  v69 = sub_10007AE1C();
  v70 = sub_10007B3DC();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 67109120;
    *(v71 + 4) = v67 & 1;
    _os_log_impl(&_mh_execute_header, v69, v70, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v71, 8u);
  }

  v41(v68, v42);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v72 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v74 = sub_10007B29C().super.isa;
    v75 = swift_allocObject();
    v76 = v95;
    *(v75 + 16) = v94;
    *(v75 + 24) = v76;
    aBlock[4] = sub_100046430;
    aBlock[5] = v75;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096D70;
    v77 = _Block_copy(aBlock);

    [v72 addParticipantsToShareWithURLWrapper:v88 share:v89 emailAddresses:isa phoneNumbers:v74 permissionType:v51 allowOthersToInvite:v67 & 1 withReply:v77];
    _Block_release(v77);
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = sub_10007AC4C();
    v79 = v83;
    (*(*(v78 - 8) + 56))(v83, 1, 1, v78);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v80 = v84;
    v81 = v87;
    sub_10007AB6C();
    v82 = sub_10007AA1C();
    (*(v86 + 8))(v80, v81);
    v94(v79, 0, v82);

    sub_100008824(v79, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForAddParticipantsToShareWithURLWrapper(_:share:emailAddresses:phoneNumbers:optionsGroups:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v93 = a6;
  v94 = a7;
  v91 = a2;
  v92 = a5;
  v97 = a4;
  v9 = sub_10007AA3C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v87 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AA4C();
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = *(v88 + 64);
  __chkstk_darwin(v12);
  v86 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v85 = &v83 - v17;
  v18 = sub_10007AE2C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v96 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v83 - v27;
  __chkstk_darwin(v26);
  v30 = &v83 - v29;
  sub_10007AE0C();
  v31 = a1;
  v32 = sub_10007AE1C();
  v33 = sub_10007B41C();

  v34 = os_log_type_enabled(v32, v33);
  v95 = a3;
  if (v34)
  {
    v35 = v25;
    v36 = swift_slowAlloc();
    v37 = v19;
    v38 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v31;
    *v38 = v31;
    v39 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "callForAddParticipantsToShare urlWrapper: %@", v36, 0xCu);
    sub_100008824(v38, &qword_10009F570, &qword_10007DAF0);
    v19 = v37;

    v25 = v35;
  }

  v42 = *(v19 + 8);
  v40 = v19 + 8;
  v41 = v42;
  v42(v30, v18);
  sub_10007AE0C();

  v43 = sub_10007AE1C();
  v44 = sub_10007B3DC();

  v45 = os_log_type_enabled(v43, v44);
  v90 = v31;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v84 = v41;
    v47 = v46;
    v48 = swift_slowAlloc();
    v83 = v40;
    v49 = v48;
    aBlock[0] = v48;
    *v47 = 136315138;
    v50 = sub_10007B2BC();
    v52 = sub_100037C08(v50, v51, aBlock);

    *(v47 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v43, v44, "callForAddParticipantsToShare emailAddresses: %s", v47, 0xCu);
    sub_10000585C(v49);

    v41 = v84;
  }

  v41(v28, v18);
  v53 = v18;
  sub_10007AE0C();

  v54 = sub_10007AE1C();
  v55 = sub_10007B3DC();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v41;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_10007B2BC();
    v61 = sub_100037C08(v59, v60, aBlock);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v54, v55, "callForAddParticipantsToShare phoneNumbers: %s", v57, 0xCu);
    sub_10000585C(v58);

    v41 = v56;

    v56(v25, v53);
  }

  else
  {

    v41(v25, v18);
  }

  v62 = v96;
  sub_10007AE0C();

  v63 = sub_10007AE1C();
  v64 = sub_10007B3DC();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v67 = sub_10007B2BC();
    v69 = v41;
    v70 = sub_100037C08(v67, v68, aBlock);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v63, v64, "callForAddParticipantsToShare optionsGroups: %s", v65, 0xCu);
    sub_10000585C(v66);

    v69(v96, v53);
  }

  else
  {

    v41(v62, v53);
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v71 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v73 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v74 = sub_10007B29C().super.isa;
    v75 = swift_allocObject();
    v76 = v94;
    *(v75 + 16) = v93;
    *(v75 + 24) = v76;
    aBlock[4] = sub_100046430;
    aBlock[5] = v75;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096DC0;
    v77 = _Block_copy(aBlock);

    [v71 addParticipantsToShareWithURLWrapper:v90 share:v91 emailAddresses:isa phoneNumbers:v73 optionsGroups:v74 withReply:v77];
    _Block_release(v77);
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = sub_10007AC4C();
    v79 = v85;
    (*(*(v78 - 8) + 56))(v85, 1, 1, v78);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v80 = v86;
    v81 = v89;
    sub_10007AB6C();
    v82 = sub_10007AA1C();
    (*(v88 + 8))(v80, v81);
    v93(v79, 0, v82);

    sub_100008824(v79, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_1000334A0(void *a1, int a2, void *a3, void *a4, int a5, int a6, int a7, void *aBlock, void (*a9)(id, id, uint64_t, uint64_t, uint64_t, void *))
{
  v12 = _Block_copy(aBlock);
  v13 = sub_10007B2AC();
  v14 = sub_10007B2AC();
  sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
  v15 = sub_10007B2AC();
  _Block_copy(v12);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  a9(v16, v17, v13, v14, v15, v12);
  _Block_release(v12);
  _Block_release(v12);
}

void InitiateSharing.callForAddParticipantsToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:permissionType:allowOthersToInvite:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v101 = a7;
  v102 = a8;
  v100 = a6;
  v105 = a5;
  v99 = a4;
  v103 = a2;
  v10 = sub_10007AA3C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v93 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007AA4C();
  v94 = *(v13 - 8);
  v95 = v13;
  v14 = *(v94 + 64);
  __chkstk_darwin(v13);
  v92 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v91 = &v91 - v18;
  v19 = sub_10007AE2C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v98 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v97 = &v91 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v91 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v91 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v91 - v33;
  __chkstk_darwin(v32);
  v36 = &v91 - v35;
  sub_10007AE0C();
  v37 = a1;
  v38 = sub_10007AE1C();
  v39 = sub_10007B41C();

  v40 = os_log_type_enabled(v38, v39);
  v104 = a3;
  v106 = v19;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v37;
    *v42 = v37;
    v43 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "callForAddParticipantsToShare share: %@", v41, 0xCu);
    sub_100008824(v42, &qword_10009F570, &qword_10007DAF0);

    v19 = v106;
  }

  v96 = v37;

  v44 = *(v20 + 8);
  v44(v36, v19);
  sub_10007AE0C();
  v45 = v103;
  v46 = sub_10007AE1C();
  v47 = sub_10007B41C();
  v103 = v45;

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    v50 = v103;
    *(v48 + 4) = v103;
    *v49 = v50;
    v51 = v50;
    _os_log_impl(&_mh_execute_header, v46, v47, "callForAddParticipantsToShare containerSetupInfo: %@", v48, 0xCu);
    sub_100008824(v49, &qword_10009F570, &qword_10007DAF0);

    v19 = v106;
  }

  v44(v34, v19);
  sub_10007AE0C();

  v52 = sub_10007AE1C();
  v53 = sub_10007B3DC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = sub_10007B2BC();
    v58 = sub_100037C08(v56, v57, aBlock);

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "callForAddParticipantsToShare emailAddresses: %s", v54, 0xCu);
    sub_10000585C(v55);
    v19 = v106;
  }

  v44(v31, v19);
  sub_10007AE0C();

  v59 = sub_10007AE1C();
  v60 = sub_10007B3DC();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136315138;
    v63 = sub_10007B2BC();
    v65 = sub_100037C08(v63, v64, aBlock);

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v59, v60, "callForAddParticipantsToShare phoneNumbers: %s", v61, 0xCu);
    sub_10000585C(v62);
    v19 = v106;
  }

  v44(v28, v19);
  v66 = v105;
  v67 = v97;
  sub_10007AE0C();
  v68 = sub_10007AE1C();
  v69 = sub_10007B3DC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v107 = v66;
    aBlock[0] = v71;
    *v70 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v72 = sub_10007B1AC();
    v74 = sub_100037C08(v72, v73, aBlock);

    *(v70 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v68, v69, "callForAddParticipantsToShare permissionType: %s", v70, 0xCu);
    sub_10000585C(v71);
    v19 = v106;
  }

  v44(v67, v19);
  v75 = v100;
  v76 = v98;
  sub_10007AE0C();
  v77 = sub_10007AE1C();
  v78 = sub_10007B3DC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 67109120;
    *(v79 + 4) = v75 & 1;
    _os_log_impl(&_mh_execute_header, v77, v78, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v79, 8u);
    v19 = v106;
  }

  v44(v76, v19);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v80 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v82 = sub_10007B29C().super.isa;
    v83 = swift_allocObject();
    v84 = v102;
    *(v83 + 16) = v101;
    *(v83 + 24) = v84;
    aBlock[4] = sub_100046430;
    aBlock[5] = v83;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096E10;
    v85 = _Block_copy(aBlock);

    [v80 addParticipantsToShare:v96 containerSetupInfo:v103 emailAddresses:isa phoneNumbers:v82 permissionType:v105 allowOthersToInvite:v75 & 1 withReply:v85];
    _Block_release(v85);
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = sub_10007AC4C();
    v87 = v91;
    (*(*(v86 - 8) + 56))(v91, 1, 1, v86);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v88 = v92;
    v89 = v95;
    sub_10007AB6C();
    v90 = sub_10007AA1C();
    (*(v94 + 8))(v88, v89);
    v101(v87, 0, v90);

    sub_100008824(v87, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_1000340A0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void (*a10)(id, id, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v15 = _Block_copy(a9);
  v16 = sub_10007B2AC();
  v17 = sub_10007B2AC();
  _Block_copy(v15);
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a10(v18, v19, v16, v17, a7, a8, v15);
  _Block_release(v15);
  _Block_release(v15);
}

void InitiateSharing.callForAddParticipantsToShare(_:containerSetupInfo:emailAddresses:phoneNumbers:optionsGroups:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v96 = a6;
  v97 = a7;
  v94 = a4;
  v95 = a5;
  v10 = sub_10007AA3C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v88 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007AA4C();
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = *(v89 + 64);
  __chkstk_darwin(v13);
  v87 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v86 = &v85 - v18;
  v101 = sub_10007AE2C();
  v19 = *(v101 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v101);
  v99 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v93 = &v85 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v85 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v85 - v29;
  __chkstk_darwin(v28);
  v32 = &v85 - v31;
  sub_10007AE0C();
  v33 = a1;
  v34 = sub_10007AE1C();
  v35 = sub_10007B41C();

  v36 = os_log_type_enabled(v34, v35);
  v100 = a3;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v33;
    *v38 = v33;
    v39 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "callForAddParticipantsToShare share: %@", v37, 0xCu);
    sub_100008824(v38, &qword_10009F570, &qword_10007DAF0);
  }

  v92 = v33;

  v40 = v101;
  v98 = *(v19 + 8);
  v98(v32, v101);
  sub_10007AE0C();
  v41 = a2;
  v42 = sub_10007AE1C();
  v43 = sub_10007B41C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&_mh_execute_header, v42, v43, "callForAddParticipantsToShare containerSetupInfo: %@", v44, 0xCu);
    sub_100008824(v45, &qword_10009F570, &qword_10007DAF0);

    v40 = v101;
  }

  v47 = v98;
  v98(v30, v40);
  sub_10007AE0C();

  v48 = sub_10007AE1C();
  v49 = sub_10007B3DC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    v52 = sub_10007B2BC();
    v54 = sub_100037C08(v52, v53, aBlock);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "callForAddParticipantsToShare emailAddresses: %s", v50, 0xCu);
    sub_10000585C(v51);
    v40 = v101;
  }

  v47(v27, v40);
  v55 = v93;
  sub_10007AE0C();

  v56 = sub_10007AE1C();
  v57 = sub_10007B3DC();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v58 = 136315138;
    v60 = sub_10007B2BC();
    v62 = sub_100037C08(v60, v61, aBlock);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "callForAddParticipantsToShare phoneNumbers: %s", v58, 0xCu);
    sub_10000585C(v59);
    v40 = v101;

    v47 = v98;
  }

  v47(v55, v40);
  v63 = v99;
  sub_10007AE0C();

  v64 = sub_10007AE1C();
  v65 = sub_10007B3DC();

  v66 = os_log_type_enabled(v64, v65);
  v91 = v41;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock[0] = v68;
    *v67 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v69 = sub_10007B2BC();
    v71 = v47;
    v72 = sub_100037C08(v69, v70, aBlock);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v64, v65, "callForAddParticipantsToShare optionsGroups: %s", v67, 0xCu);
    sub_10000585C(v68);

    v71(v99, v101);
  }

  else
  {

    v47(v63, v40);
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v73 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v75 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v76 = sub_10007B29C().super.isa;
    v77 = swift_allocObject();
    v78 = v97;
    *(v77 + 16) = v96;
    *(v77 + 24) = v78;
    aBlock[4] = sub_100046430;
    aBlock[5] = v77;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096E60;
    v79 = _Block_copy(aBlock);

    [v73 addParticipantsToShare:v92 containerSetupInfo:v91 emailAddresses:isa phoneNumbers:v75 optionsGroups:v76 withReply:v79];
    _Block_release(v79);
    swift_unknownObjectRelease();
  }

  else
  {
    v80 = sub_10007AC4C();
    v81 = v86;
    (*(*(v80 - 8) + 56))(v86, 1, 1, v80);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v82 = v87;
    v83 = v90;
    sub_10007AB6C();
    v84 = sub_10007AA1C();
    (*(v89 + 8))(v82, v83);
    v96(v81, 0, v84);

    sub_100008824(v81, &unk_10009ED10, &qword_10007D310);
  }
}

void InitiateSharing.callForExistingShareForFile(_:reply:)(uint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  __chkstk_darwin(v9);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v46 - v14;
  v16 = sub_10007AC4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10007AE2C();
  v54 = *(v21 - 8);
  v55 = v21;
  v22 = *(v54 + 64);
  __chkstk_darwin(v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v56 = v17;
  (*(v17 + 16))(v20, a1, v16);
  v25 = sub_10007AE1C();
  v26 = sub_10007B41C();
  v27 = os_log_type_enabled(v25, v26);
  v53 = v16;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v48 = a3;
    v29 = v28;
    v30 = swift_slowAlloc();
    v47 = v15;
    v31 = v30;
    aBlock[0] = v30;
    *v29 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v32 = sub_10007B69C();
    v33 = a2;
    v35 = v34;
    (*(v56 + 8))(v20, v16);
    v36 = sub_100037C08(v32, v35, aBlock);
    a2 = v33;

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "callForExistingShareForFile url: %s", v29, 0xCu);
    sub_10000585C(v31);
    v15 = v47;

    a3 = v48;

    (*(v54 + 8))(v24, v55);
    v37 = v56;
  }

  else
  {

    v38 = v56;
    (*(v56 + 8))(v20, v16);
    (*(v54 + 8))(v24, v55);
    v37 = v38;
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v39 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v43 = sub_10007AB9C();
    sub_10007ACAC();
    v44 = swift_allocObject();
    *(v44 + 16) = a2;
    *(v44 + 24) = a3;
    aBlock[4] = sub_100046430;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096EB0;
    v45 = _Block_copy(aBlock);

    [v39 existingShareForFileWithURLWrapper:v43 withReply:v45];

    _Block_release(v45);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v37 + 56))(v15, 1, 1, v53);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v40 = v49;
    v41 = v52;
    sub_10007AB6C();
    v42 = sub_10007AA1C();
    (*(v51 + 8))(v40, v41);
    a2(v15, 0, v42);

    sub_100008824(v15, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_100035340(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, void *))
{
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a4);
  sub_10007AC1C();
  _Block_copy(v13);
  v14 = a1;
  a5(v12, v13);
  _Block_release(v13);
  _Block_release(v13);

  return (*(v9 + 8))(v12, v8);
}

void InitiateSharing.callForUserNameAndEmail(_:containerSetupInfo:reply:)(uint64_t a1, void *a2, void (*a3)(void, void, void *), uint64_t a4)
{
  v73 = a4;
  v77 = a3;
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  __chkstk_darwin(v9);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10007AC4C();
  v76 = *(v78 - 8);
  v12 = *(v76 + 64);
  __chkstk_darwin(v78);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v14 = *(*(v71 - 8) + 64);
  v15 = __chkstk_darwin(v71);
  v74 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v65 - v18;
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  v22 = sub_10007AE2C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v65 - v28;
  sub_10007AE0C();
  v72 = a1;
  sub_1000187C8(a1, v21, &unk_10009ED10, &qword_10007D310);
  v30 = sub_10007AE1C();
  v31 = sub_10007B41C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v65 = v22;
    v33 = v32;
    v34 = swift_slowAlloc();
    v66 = v23;
    v35 = v34;
    aBlock[0] = v34;
    *v33 = 136315138;
    sub_1000187C8(v21, v19, &unk_10009ED10, &qword_10007D310);
    v36 = sub_10007B1AC();
    v71 = a2;
    v37 = v27;
    v39 = v38;
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v40 = sub_100037C08(v36, v39, aBlock);
    v27 = v37;
    a2 = v71;

    *(v33 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "callForUserNameAndEmail url: %s", v33, 0xCu);
    sub_10000585C(v35);
    v41 = v66;

    v42 = *(v41 + 8);
    v43 = v65;
    v42(v29, v65);
  }

  else
  {

    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v42 = *(v23 + 8);
    v42(v29, v22);
    v43 = v22;
  }

  sub_10007AE0C();
  v44 = a2;
  v45 = sub_10007AE1C();
  v46 = sub_10007B41C();

  v47 = os_log_type_enabled(v45, v46);
  v48 = v75;
  if (v47)
  {
    v49 = v43;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = a2;
    v53 = v51;
    *v50 = 138412290;
    *(v50 + 4) = v44;
    *v51 = v52;
    v54 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "callForUserNameAndEmail containerSetupInfo: %@", v50, 0xCu);
    sub_100008824(v53, &qword_10009F570, &qword_10007DAF0);

    v43 = v49;
  }

  v42(v27, v43);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v55 = qword_1000A23D0;
  v56 = v76;
  v57 = v74;
  if (qword_1000A23D0)
  {
    sub_1000187C8(v72, v74, &unk_10009ED10, &qword_10007D310);
    if ((*(v56 + 48))(v57, 1, v78) == 1)
    {
      swift_unknownObjectRetain();
      sub_100008824(v57, &unk_10009ED10, &qword_10007D310);
      v58 = 0;
    }

    else
    {
      (*(v56 + 32))(v48, v57, v78);
      swift_unknownObjectRetain();
      v58 = sub_10007AB9C();
      sub_10007ACAC();
      (*(v56 + 8))(v48, v78);
    }

    v62 = swift_allocObject();
    v63 = v73;
    *(v62 + 16) = v77;
    *(v62 + 24) = v63;
    aBlock[4] = sub_100038538;
    aBlock[5] = v62;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035D58;
    aBlock[3] = &unk_100096F00;
    v64 = _Block_copy(aBlock);

    [v55 userNameAndEmailWithURLWrapper:v58 containerSetupInfo:v44 withReply:v64];

    _Block_release(v64);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v59 = v67;
    v60 = v70;
    sub_10007AB6C();
    v61 = sub_10007AA1C();
    (*(v69 + 8))(v59, v60);
    v77(0, 0, v61);
  }
}

void sub_100035D58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

void sub_100035F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_10007AB7C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

void InitiateSharing.callForForciblyShareFolder(_:emailAddresses:phoneNumbers:accessType:permissionType:allowOthersToInvite:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v110 = a7;
  v111 = a8;
  v109 = a6;
  v113 = a3;
  v114 = a5;
  v104 = a4;
  v10 = sub_10007AA3C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v100 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10007AA4C();
  v101 = *(v102 - 8);
  v13 = *(v101 + 64);
  __chkstk_darwin(v102);
  v99 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v98 = &v96 - v17;
  v18 = sub_10007AC4C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10007AE2C();
  v115 = *(v23 - 8);
  v24 = *(v115 + 64);
  v25 = __chkstk_darwin(v23);
  v107 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v106 = &v96 - v28;
  v29 = __chkstk_darwin(v27);
  v105 = &v96 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v96 - v32;
  __chkstk_darwin(v31);
  v35 = &v96 - v34;
  sub_10007AE0C();
  v36 = *(v19 + 16);
  v103 = a1;
  v37 = a1;
  v38 = v18;
  v36(v22, v37, v18);
  v39 = sub_10007AE1C();
  v40 = sub_10007B41C();
  v41 = os_log_type_enabled(v39, v40);
  v112 = a2;
  v97 = v18;
  v108 = v19;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v96 = v23;
    v44 = v43;
    aBlock[0] = v43;
    *v42 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v45 = sub_10007B69C();
    v46 = v38;
    v48 = v47;
    (*(v19 + 8))(v22, v46);
    v49 = sub_100037C08(v45, v48, aBlock);

    *(v42 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "callForForciblyShareFolder folderURL: %s", v42, 0xCu);
    sub_10000585C(v44);
    v23 = v96;
  }

  else
  {

    (*(v19 + 8))(v22, v18);
  }

  v50 = *(v115 + 8);
  v50(v35, v23);
  sub_10007AE0C();

  v51 = sub_10007AE1C();
  v52 = sub_10007B3DC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    v55 = sub_10007B2BC();
    v57 = sub_100037C08(v55, v56, aBlock);

    *(v53 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v51, v52, "callForForciblyShareFolder emailAddresses: %s", v53, 0xCu);
    sub_10000585C(v54);
  }

  v50(v33, v23);
  v58 = v114;
  v59 = v105;
  sub_10007AE0C();

  v60 = sub_10007AE1C();
  v61 = sub_10007B3DC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    v64 = sub_10007B2BC();
    v66 = sub_100037C08(v64, v65, aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "callForForciblyShareFolder phoneNumbers: %s", v62, 0xCu);
    sub_10000585C(v63);
  }

  v50(v59, v23);
  v67 = v106;
  sub_10007AE0C();
  v68 = sub_10007AE1C();
  v69 = sub_10007B3DC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v116 = v58;
    aBlock[0] = v71;
    *v70 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v72 = sub_10007B1AC();
    v74 = sub_100037C08(v72, v73, aBlock);

    *(v70 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v68, v69, "callForForciblyShareFolder permissionType: %s", v70, 0xCu);
    sub_10000585C(v71);
  }

  v50(v67, v23);
  v76 = v107;
  v75 = v108;
  sub_10007AE0C();
  v77 = sub_10007AE1C();
  v78 = sub_10007B3DC();
  v79 = os_log_type_enabled(v77, v78);
  v80 = v109;
  if (v79)
  {
    v81 = swift_slowAlloc();
    *v81 = 67109120;
    *(v81 + 4) = v80 & 1;
    _os_log_impl(&_mh_execute_header, v77, v78, "callForForciblyShareFolder allowOthersToInvite: %{BOOL}d", v81, 8u);
  }

  v50(v76, v23);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v82 = qword_1000A23D0;
  v83 = v114;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v84);
    v86 = v85;
    isa = sub_10007B29C().super.isa;
    v88 = sub_10007B29C().super.isa;
    v89 = swift_allocObject();
    v90 = v111;
    *(v89 + 16) = v110;
    *(v89 + 24) = v90;
    aBlock[4] = sub_100046430;
    aBlock[5] = v89;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096F50;
    v91 = _Block_copy(aBlock);

    [v82 forciblyShareFolder:v86 emailAddresses:isa phoneNumbers:v88 accessType:v104 permissionType:v83 allowOthersToInvite:v80 & 1 withReply:v91];
    _Block_release(v91);
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = v98;
    (*(v75 + 56))(v98, 1, 1, v97);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v93 = v99;
    v94 = v102;
    sub_10007AB6C();
    v95 = sub_10007AA1C();
    (*(v101 + 8))(v93, v94);
    v110(v92, 0, v95);

    sub_100008824(v92, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_100036B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, const void *a9, void (*a10)(char *, uint64_t, uint64_t, uint64_t, uint64_t, void, void *))
{
  v23 = a8;
  v22 = a7;
  v12 = sub_10007AC4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a9);
  sub_10007AC1C();
  v18 = sub_10007B2AC();
  v19 = sub_10007B2AC();
  _Block_copy(v17);
  v20 = a1;
  a10(v16, v18, v19, a6, v22, v23, v17);
  _Block_release(v17);
  _Block_release(v17);

  return (*(v13 + 8))(v16, v12);
}

void InitiateSharing.callForForciblyShareFolder(_:emailAddresses:phoneNumbers:optionsGroups:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void *), uint64_t a6)
{
  v97 = a5;
  v98 = a6;
  v102 = a4;
  v96 = a3;
  v8 = sub_10007AA3C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v90 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AA4C();
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  __chkstk_darwin(v11);
  v89 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v88 = &v86 - v16;
  v17 = sub_10007AC4C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007AE2C();
  v94 = *(v22 - 8);
  v23 = *(v94 + 64);
  v24 = __chkstk_darwin(v22);
  v100 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v99 = &v86 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v86 - v29;
  __chkstk_darwin(v28);
  v32 = &v86 - v31;
  sub_10007AE0C();
  v33 = *(v18 + 16);
  v93 = a1;
  v33(v21, a1, v17);
  v34 = sub_10007AE1C();
  v35 = sub_10007B41C();
  v36 = os_log_type_enabled(v34, v35);
  v101 = a2;
  v87 = v17;
  v95 = v18;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v86 = v22;
    v38 = v37;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v40 = sub_10007B69C();
    v41 = v17;
    v43 = v42;
    (*(v18 + 8))(v21, v41);
    v44 = sub_100037C08(v40, v43, aBlock);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "callForForciblyShareFolder folderURL: %s", v38, 0xCu);
    sub_10000585C(v39);

    v22 = v86;
  }

  else
  {

    (*(v18 + 8))(v21, v17);
  }

  v45 = *(v94 + 8);
  v45(v32, v22);
  sub_10007AE0C();

  v46 = sub_10007AE1C();
  v47 = sub_10007B3DC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    v50 = sub_10007B2BC();
    v52 = sub_100037C08(v50, v51, aBlock);

    *(v48 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "callForForciblyShareFolder emailAddresses: %s", v48, 0xCu);
    sub_10000585C(v49);
  }

  v45(v30, v22);
  v53 = v99;
  sub_10007AE0C();

  v54 = sub_10007AE1C();
  v55 = sub_10007B3DC();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136315138;
    v58 = sub_10007B2BC();
    v60 = sub_100037C08(v58, v59, aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "callForForciblyShareFolder phoneNumbers: %s", v56, 0xCu);
    sub_10000585C(v57);

    v61 = v99;
  }

  else
  {

    v61 = v53;
  }

  v45(v61, v22);
  v62 = v100;
  sub_10007AE0C();

  v63 = sub_10007AE1C();
  v64 = sub_10007B3DC();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v67 = sub_10007B2BC();
    v69 = sub_100037C08(v67, v68, aBlock);

    *(v65 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v63, v64, "callForAddParticipantsToShare optionsGroups: %s", v65, 0xCu);
    sub_10000585C(v66);

    v70 = v100;
  }

  else
  {

    v70 = v62;
  }

  v45(v70, v22);
  v71 = v95;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v72 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v73);
    v75 = v74;
    isa = sub_10007B29C().super.isa;
    v77 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v78 = sub_10007B29C().super.isa;
    v79 = swift_allocObject();
    v80 = v98;
    *(v79 + 16) = v97;
    *(v79 + 24) = v80;
    aBlock[4] = sub_100046430;
    aBlock[5] = v79;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100096FA0;
    v81 = _Block_copy(aBlock);

    [v72 forciblyShareFolder:v75 emailAddresses:isa phoneNumbers:v77 optionsGroups:v78 withReply:v81];
    _Block_release(v81);
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = v88;
    (*(v71 + 56))(v88, 1, 1, v87);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v83 = v89;
    v84 = v92;
    sub_10007AB6C();
    v85 = sub_10007AA1C();
    (*(v91 + 8))(v83, v84);
    v97(v82, 0, v85);

    sub_100008824(v82, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_100037708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t, void *))
{
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a7);
  sub_10007AC1C();
  v17 = sub_10007B2AC();
  v18 = sub_10007B2AC();
  sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
  v19 = sub_10007B2AC();
  _Block_copy(v16);
  v20 = a1;
  a8(v15, v17, v18, v19, v16);
  _Block_release(v16);
  _Block_release(v16);

  return (*(v12 + 8))(v15, v11);
}

id InitiateSharing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InitiateSharing.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitiateSharing();
  return objc_msgSendSuper2(&v2, "init");
}

id InitiateSharing.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitiateSharing();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static InitiateSharing.hashableClassSet(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSMutableSet) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000057A0(&qword_10009E940, qword_10007E570);
      [v2 addObject:sub_10007B6DC()];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v6 = v2;
  sub_10007B3AC();

  result = sub_10007B63C();
  __break(1u);
  return result;
}

unint64_t sub_100037AD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10007B74C();
  sub_10007B1EC();
  v6 = sub_10007B76C();

  return sub_100037B50(a1, a2, v6);
}

unint64_t sub_100037B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10007B6BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100037C08(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100037CD4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000057F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000585C(v11);
  return v7;
}

unint64_t sub_100037CD4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100037DE0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10007B5EC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100037DE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100037E2C(a1, a2);
  sub_100037F5C(&off_100095710);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100037E2C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100038048(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10007B5EC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10007B22C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100038048(v10, 0);
        result = sub_10007B5BC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}