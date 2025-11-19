uint64_t sub_22B957164(void *a1, uint64_t a2, void *a3, void *a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v8 = sub_22BA0FD8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v64 - v16;
  v67 = &type metadata for FileManagerProvider;
  v68 = &off_283F53B48;
  v66[0] = a3;
  v18 = a3;
  [a1 setStatusValue_];
  v19 = [a4 recordID];
  v20 = [v19 zoneID];

  v21 = [v20 zoneName];
  if (!v21)
  {
    sub_22BA0FFFC();
    v21 = sub_22BA0FFCC();
  }

  [a1 setZoneName_];

  sub_22BA106BC();
  v22 = sub_22BA0FFCC();

  [a1 setRecordType_];

  v23 = [a4 recordID];
  v24 = [v23 recordName];

  if (!v24)
  {
    sub_22BA0FFFC();
    v24 = sub_22BA0FFCC();
  }

  [a1 setRecordName_];

  v25 = [a4 modificationDate];
  if (v25)
  {
    v26 = v25;
    sub_22BA0FD5C();

    v27 = sub_22BA0FCFC();
    (*(v9 + 8))(v17, v8);
  }

  else
  {
    v27 = 0;
  }

  [a1 setDateRead_];

  v28 = [a4 modificationDate];
  if (v28)
  {
    v29 = v28;
    sub_22BA0FD5C();

    v30 = sub_22BA0FCFC();
    (*(v9 + 8))(v14, v8);
  }

  else
  {
    v30 = 0;
  }

  [a1 setModificationDate_];

  v31 = [a4 recordChangeTag];
  [a1 setChangeTag_];

  v32 = sub_22B9358B4(v66, v67);
  v33 = sub_22B955688(*v32, a4);
  sub_22B9527A8(v33);
  if (v34)
  {
    v35 = sub_22BA0FFCC();
  }

  else
  {
    v35 = 0;
  }

  [a1 setGuid_];

  sub_22B952CD4(v33);
  if (v36)
  {
    v37 = sub_22BA0FFCC();
  }

  else
  {
    v37 = 0;
  }

  [a1 setParentID_];

  v38 = objc_opt_self();
  v39 = sub_22BA0FF5C();

  v65 = 0;
  v40 = [v38 dataWithPropertyList:v39 format:200 options:0 error:&v65];

  v41 = v65;
  if (v40)
  {
    v42 = sub_22BA0FCAC();
    v44 = v43;

    v45 = [a1 data];
    if (!v45)
    {
      type metadata accessor for RemoteRecordData();
      v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [a1 setData_];
      v45 = v46;
    }

    v47 = [a1 data];
    if (v47)
    {
      v48 = v47;
      v49 = sub_22BA0FC8C();
      [v48 setData_];
      sub_22B9359BC(v42, v44);
    }

    else
    {
      sub_22B9359BC(v42, v44);
    }
  }

  else
  {
    v50 = v41;
    v51 = sub_22BA0FB6C();

    swift_willThrow();
    sub_22B975FD8(4, v51, 0, 0);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v52 = sub_22BA0FEFC();
    sub_22B936CA8(v52, qword_28141AD40);
    v53 = a4;
    v54 = v51;
    v55 = sub_22BA0FEDC();
    v56 = sub_22BA1044C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412546;
      *(v57 + 4) = v53;
      *v58 = v53;
      *(v57 + 12) = 2112;
      v59 = v53;
      v60 = v51;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 14) = v61;
      v58[1] = v61;
      _os_log_impl(&dword_22B92A000, v55, v56, "Failed to serialize binary data for record %@ with: %@", v57, 0x16u);
      sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v58, -1, -1);
      MEMORY[0x23189ADD0](v57, -1, -1);
    }

    else
    {
    }
  }

  result = sub_22B936C4C(v66);
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B957874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D4F80, &qword_22BA13E68);
    v3 = sub_22BA108BC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_22B958068(v6 + 40 * v4, v20);
      v7 = *(v3 + 40);
      result = sub_22BA1084C();
      v9 = ~(-1 << *(v3 + 32));
      for (i = result & v9; ; i = (i + 1) & v9)
      {
        v11 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v11) == 0)
        {
          break;
        }

        sub_22B958068(*(v3 + 48) + 40 * i, v19);
        v12 = MEMORY[0x231899EC0](v19, v20);
        result = sub_22B9580C4(v19);
        if (v12)
        {
          sub_22B9580C4(v20);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v11;
      v13 = *(v3 + 48) + 40 * i;
      v14 = v20[0];
      v15 = v20[1];
      *(v13 + 32) = v21;
      *v13 = v14;
      *(v13 + 16) = v15;
      v16 = *(v3 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (!v17)
      {
        *(v3 + 16) = v18;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_22B9579D4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_22BA1080C())
    {
LABEL_3:
      sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
      v3 = sub_22BA108BC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_22BA1080C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x231899FA0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_22BA1071C();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_22BA1072C();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_22BA1071C();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_22BA1072C();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_22B957CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
    v3 = sub_22BA108BC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22BA10D3C();

      sub_22BA1008C();
      result = sub_22BA10D6C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_22BA10C6C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t *sub_22B957E80(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22B957F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B957FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncFiles.FileMove();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B95800C(uint64_t a1)
{
  v2 = type metadata accessor for SyncFiles.FileMove();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22B958118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1);
  v8 = sub_22BA10C3C();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_22BA0FB5C();

  v12 = [v11 userInfo];
  v13 = sub_22BA0FF6C();

  v61 = v11;
  sub_22B958B58();
  type metadata accessor for CKError(0);
  v14 = v11;
  if (swift_dynamicCast())
  {

    v15 = v59;
    v16 = [v14 userInfo];
    v17 = sub_22BA0FF6C();

    v18 = *MEMORY[0x277CCA7E8];
    v19 = sub_22BA0FFFC();
    if (*(v17 + 16))
    {
      v21 = sub_22B990A58(v19, v20);
      v23 = v22;

      if (v23)
      {
        sub_22B936B20(*(v17 + 56) + 32 * v21, &v61);

        type metadata accessor for CKUnderlyingError(0);
        if (swift_dynamicCast())
        {
          v24 = v59;
          v59 = [v14 code];
          v61 = sub_22BA10C1C();
          v62 = v25;
          MEMORY[0x231899730](47, 0xE100000000000000);
          v59 = v24;
          sub_22B958BA4(&qword_281414CA0, type metadata accessor for CKUnderlyingError);
          sub_22BA0FB2C();
          v58[0] = v58[1];
          v26 = sub_22BA10C1C();
          MEMORY[0x231899730](v26);

          v28 = v61;
          v27 = v62;
          v61 = v24;
          sub_22BA0FB2C();
          v29 = stringForCKUnderlyingErrorCode();
          v30 = sub_22BA0FFFC();
          v32 = v31;

LABEL_17:
          v48 = [v14 domain];
          v49 = sub_22BA0FFFC();
          v51 = v50;

          v61 = v49;
          v62 = v51;
          MEMORY[0x231899730](10272, 0xE200000000000000);
          MEMORY[0x231899730](v28, v27);

          MEMORY[0x231899730](2112041, 0xE300000000000000);
          MEMORY[0x231899730](v30, v32);

          goto LABEL_18;
        }

LABEL_16:
        v61 = [v14 code];
        v28 = sub_22BA10C1C();
        v27 = v46;
        v61 = v15;
        sub_22B958BA4(&unk_281414CE8, type metadata accessor for CKError);
        sub_22BA0FB2C();
        v29 = stringForCKErrorCode();
        v30 = sub_22BA0FFFC();
        v32 = v47;
        goto LABEL_17;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  v33 = *MEMORY[0x277CCA450];
  v34 = sub_22BA0FFFC();
  if (!*(v13 + 16))
  {

    goto LABEL_19;
  }

  v36 = sub_22B990A58(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_22B936B20(*(v13 + 56) + 32 * v36, &v61);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v52 = [v14 domain];
    v53 = sub_22BA0FFFC();
    v55 = v54;

    v61 = v53;
    v62 = v55;
    MEMORY[0x231899730](10272, 0xE200000000000000);
    v59 = [v14 code];
    v56 = sub_22BA10C1C();
    MEMORY[0x231899730](v56);

    MEMORY[0x231899730](41, 0xE100000000000000);

    return v61;
  }

  v40 = v59;
  v39 = v60;
  v41 = [v14 domain];
  v42 = sub_22BA0FFFC();
  v44 = v43;

  v61 = v42;
  v62 = v44;
  MEMORY[0x231899730](10272, 0xE200000000000000);
  v59 = [v14 code];
  v45 = sub_22BA10C1C();
  MEMORY[0x231899730](v45);

  MEMORY[0x231899730](2112041, 0xE300000000000000);
  MEMORY[0x231899730](v40, v39);
LABEL_18:

  return v61;
}

id sub_22B9587B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1);
  v8 = sub_22BA10C3C();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_22BA0FB5C();

  v12 = [v11 userInfo];
  v13 = sub_22BA0FF6C();

  v14 = *MEMORY[0x277CCA7E8];
  v15 = sub_22BA0FFFC();
  if (!*(v13 + 16))
  {

    goto LABEL_9;
  }

  v17 = sub_22B990A58(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_22B936B20(*(v13 + 56) + 32 * v17, &v32);

  sub_22B958B58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v32 = [v11 code];
    v23 = sub_22BA10C1C();
    goto LABEL_11;
  }

  v20 = v31;
  v31 = [v11 code];
  v32 = sub_22BA10C1C();
  v33 = v21;
  MEMORY[0x231899730](47, 0xE100000000000000);
  v31 = [v20 code];
  v22 = sub_22BA10C1C();
  MEMORY[0x231899730](v22);

  v23 = v32;
  v24 = v33;
LABEL_11:
  v32 = v23;
  v33 = v24;
  MEMORY[0x231899730](8250, 0xE200000000000000);
  v25 = [v11 domain];
  v26 = sub_22BA0FFFC();
  v28 = v27;

  MEMORY[0x231899730](v26, v28);

  return v32;
}

void sub_22B958AE0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v1 = sub_22BA0FFCC();
  v2 = [v0 initWithDomain:v1 code:0 userInfo:0];

  qword_28141ACC0 = v2;
}

unint64_t sub_22B958B58()
{
  result = qword_281414A88;
  if (!qword_281414A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414A88);
  }

  return result;
}

uint64_t sub_22B958BA4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_22B958C00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22B958C14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22B958C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22B958CD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return (sub_22B959648)(a1, a2);
}

uint64_t sub_22B958DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = a3;
  return MEMORY[0x2822009F8](sub_22B958DC8, 0, 0);
}

uint64_t sub_22B958DC8()
{
  v1 = *sub_22B9358B4((*(v0 + 120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B958E44, v1, 0);
}

uint64_t sub_22B958E44()
{
  v1 = IMDMessageRecordCalculateLocalCloudKitStatistics();
  if (v1)
  {
    v2 = v1;
    *(v0 + 136) = sub_22BA0FF6C();

    v3 = [objc_opt_self() sharedInstance];
    v4 = sub_22BA0FF5C();
    [v3 setValue:v4 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19D00]];

    v5 = sub_22B958F7C;
  }

  else
  {
    v5 = sub_22B9592DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B958F7C()
{
  v24 = v0;
  v1 = *(v0 + 136);
  if (!*(v1 + 16))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD40);
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1044C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B92A000, v3, v4, "Fetched empty statistics from IMDPersistence, that shouldn't occur.", v5, 2u);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }
  }

  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *MEMORY[0x277D19D28];
  *(v0 + 56) = sub_22BA0FFFC();
  *(v0 + 64) = v9;
  sub_22BA1086C();
  *(v0 + 80) = sub_22B9349C8(&qword_27D8D4F90, &unk_22BA13F50);
  *(v0 + 56) = v6;
  sub_22B936C98((v0 + 56), (v0 + 88));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v1;
  sub_22B9BB21C((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_22B9580C4(v0 + 16);
  sub_22B9358B4((v7 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v7 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v11 = off_283F58AB0;
  type metadata accessor for CloudState();

  v11();

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v12 = sub_22BA0FEFC();
  sub_22B936CA8(v12, qword_28141AD40);
  v13 = sub_22BA0FEDC();
  v14 = sub_22BA1046C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;

    v17 = sub_22BA0FF7C();
    v19 = v18;

    v20 = sub_22B99153C(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_22B92A000, v13, v14, "Setting the following sync statistics on our CloudKit state: %s", v15, 0xCu);
    sub_22B936C4C(v16);
    MEMORY[0x23189ADD0](v16, -1, -1);
    MEMORY[0x23189ADD0](v15, -1, -1);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B9592DC()
{
  v24 = v0;
  v1 = sub_22B9BBEF0(MEMORY[0x277D84F90]);
  if (!*(v1 + 16))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD40);
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1044C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B92A000, v3, v4, "Fetched empty statistics from IMDPersistence, that shouldn't occur.", v5, 2u);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }
  }

  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *MEMORY[0x277D19D28];
  *(v0 + 56) = sub_22BA0FFFC();
  *(v0 + 64) = v9;
  sub_22BA1086C();
  *(v0 + 80) = sub_22B9349C8(&qword_27D8D4F90, &unk_22BA13F50);
  *(v0 + 56) = v6;
  sub_22B936C98((v0 + 56), (v0 + 88));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v1;
  sub_22B9BB21C((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_22B9580C4(v0 + 16);
  sub_22B9358B4((v7 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v7 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v11 = off_283F58AB0;
  type metadata accessor for CloudState();

  v11();

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v12 = sub_22BA0FEFC();
  sub_22B936CA8(v12, qword_28141AD40);
  v13 = sub_22BA0FEDC();
  v14 = sub_22BA1046C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;

    v17 = sub_22BA0FF7C();
    v19 = v18;

    v20 = sub_22B99153C(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_22B92A000, v13, v14, "Setting the following sync statistics on our CloudKit state: %s", v15, 0xCu);
    sub_22B936C4C(v16);
    MEMORY[0x23189ADD0](v16, -1, -1);
    MEMORY[0x23189ADD0](v15, -1, -1);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B959648(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return MEMORY[0x2822009F8](sub_22B959668, 0, 0);
}

uint64_t sub_22B959668()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  v0[28] = v1;
  v0[29] = sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Preparing sync statistics", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = _s17MessagesCloudSync0C11CoordinatorC28readServerCountsFromDefaultsSDySSSDySSs5Int64VGGyFZ_0();
  v0[30] = v5;
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_22B9597D0;
  v8 = v0[26];
  v7 = v0[27];

  return sub_22B958DA8(v8, v7, v5);
}

uint64_t sub_22B9597D0()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B9598CC, 0, 0);
}

uint64_t sub_22B9598CC()
{
  v16 = v0;
  sub_22B9E2BA4(*(v0 + 240), v0 + 16);
  if ((*(v0 + 96) & 1) == 0)
  {
    v1 = *(v0 + 232);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1046C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 136315138;
      v6 = *(v0 + 16);
      *(v0 + 120) = *(v0 + 32);
      v7 = *(v0 + 64);
      *(v0 + 136) = *(v0 + 48);
      *(v0 + 152) = v7;
      *(v0 + 168) = *(v0 + 80);
      v15 = v5;
      *(v0 + 104) = v6;
      v8 = sub_22BA1005C();
      v10 = sub_22B99153C(v8, v9, &v15);

      *(v4 + 4) = v10;
      _os_log_impl(&dword_22B92A000, v2, v3, "Has server counts: %s", v4, 0xCu);
      sub_22B936C4C(v5);
      MEMORY[0x23189ADD0](v5, -1, -1);
      MEMORY[0x23189ADD0](v4, -1, -1);
    }
  }

  v11 = *(v0 + 208);
  v12 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore;
  *(v0 + 256) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore;
  v13 = *sub_22B9358B4((v11 + v12), *(v11 + v12 + 24));

  return MEMORY[0x2822009F8](sub_22B959A68, v13, 0);
}

uint64_t sub_22B959A68()
{
  *(v0 + 264) = sub_22B9A3088();
  *(v0 + 272) = v1;
  if (v2)
  {
    v3 = sub_22B959AE4;
  }

  else
  {
    v3 = sub_22B959BC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B959AE4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 96))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    goto LABEL_12;
  }

  v10 = *(v3 + 48);
  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v3 + 64);
  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = *(v3 + 80);
  v8 = __OFADD__(v13, v14);
  v5 = v13 + v14;
  if (v8)
  {
LABEL_15:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_8:
  *(v3 + 288) = v5;
  v15 = (*(v3 + 208) + *(v3 + 256));
  a2 = *sub_22B9358B4(v15, v15[3]);
  a1 = sub_22B95A048;
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B959BC0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 96))
  {
    v4 = *(v3 + 272);
    goto LABEL_10;
  }

  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = *(v3 + 48);
  v7 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = *(v3 + 64);
  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = *(v3 + 80);
  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  *(v3 + 280) = v14;
  if (v7)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = *(v3 + 272);
  if (v4 < v14)
  {
    if (v14 + 0x4000000000000000 >= 0)
    {
      v15 = (*(v3 + 208) + *(v3 + 256));
      a2 = *sub_22B9358B4(v15, v15[3]);
      v16 = sub_22B959E14;
      goto LABEL_23;
    }

LABEL_34:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

LABEL_10:
  v17 = *(v3 + 264);
  *(v3 + 296) = v17;
  *(v3 + 304) = v4;
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  sub_22B936CA8(*(v3 + 224), qword_28141AD28);
  v18 = sub_22BA0FEDC();
  v19 = sub_22BA1046C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = v17;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v4;
    _os_log_impl(&dword_22B92A000, v18, v19, "Starting sync (totalProcessed: %lld, totalDownloads: %lld)", v20, 0x16u);
    MEMORY[0x23189ADD0](v20, -1, -1);
  }

  if (*(v3 + 96))
  {
    goto LABEL_21;
  }

  v21 = *(v3 + 32);
  v22 = *(v3 + 16);
  v7 = __OFADD__(v22, v21);
  v23 = v22 + v21;
  if (v7)
  {
    goto LABEL_30;
  }

  v24 = *(v3 + 48);
  v7 = __OFADD__(v23, v24);
  v25 = v23 + v24;
  if (v7)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v26 = *(v3 + 64);
  v7 = __OFADD__(v25, v26);
  v27 = v25 + v26;
  if (v7)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v28 = *(v3 + 80);
  v7 = __OFADD__(v27, v28);
  v29 = v27 + v28;
  if (v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v29 < 1)
  {
LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  v30 = 1;
LABEL_22:
  *(v3 + 97) = v30;
  a2 = *(*(v3 + 208) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v3 + 312) = a2;
  v16 = sub_22B95A270;
LABEL_23:
  a1 = v16;
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B959E14()
{
  sub_22B9E45D8(*(v0 + 264), 2 * *(v0 + 280), 0);

  return MEMORY[0x2822009F8](sub_22B959E88, 0, 0);
}

uint64_t sub_22B959E88()
{
  v1 = *(v0 + 264);
  v2 = 2 * *(v0 + 280);
  *(v0 + 296) = v1;
  *(v0 + 304) = v2;
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  sub_22B936CA8(*(v0 + 224), qword_28141AD28);
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = v1;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v2;
    _os_log_impl(&dword_22B92A000, v3, v4, "Starting sync (totalProcessed: %lld, totalDownloads: %lld)", v5, 0x16u);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  if (*(v0 + 96))
  {
    goto LABEL_12;
  }

  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v0 + 48);
  v11 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v0 + 64);
  v11 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = *(v0 + 80);
  v11 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v11)
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  if (v18 >= 1)
  {
    v19 = 1;
    goto LABEL_13;
  }

LABEL_12:
  v19 = 0;
LABEL_13:
  *(v0 + 97) = v19;
  v7 = *(*(v0 + 208) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 312) = v7;
  v6 = sub_22B95A270;
  v8 = 0;

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22B95A048()
{
  sub_22B9E45D8(0, 2 * *(v0 + 288), 0);

  return MEMORY[0x2822009F8](sub_22B95A0BC, 0, 0);
}

uint64_t sub_22B95A0BC()
{
  v1 = 2 * *(v0 + 288);
  *(v0 + 296) = 0;
  *(v0 + 304) = v1;
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  sub_22B936CA8(*(v0 + 224), qword_28141AD28);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134218240;
    *(v4 + 4) = 0;
    *(v4 + 12) = 2048;
    *(v4 + 14) = v1;
    _os_log_impl(&dword_22B92A000, v2, v3, "Starting sync (totalProcessed: %lld, totalDownloads: %lld)", v4, 0x16u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  if (*(v0 + 96))
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v0 + 48);
  v10 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = *(v0 + 64);
  v10 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(v0 + 80);
  v10 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v10)
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  if (v17 >= 1)
  {
    v18 = 1;
    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
LABEL_13:
  *(v0 + 97) = v18;
  v6 = *(*(v0 + 208) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 312) = v6;
  v5 = sub_22B95A270;
  v7 = 0;

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22B95A270()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 97);
  v4 = *(v0 + 296);
  swift_beginAccess();
  *(v1 + 120) = v4;
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  v5 = *(v0 + 8);

  return v5(0, 0);
}

uint64_t type metadata accessor for ItemRecord()
{
  result = qword_281416190;
  if (!qword_281416190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B95A3A0()
{
  result = type metadata accessor for MessageRecord();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActionRecord();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22B95A56C()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA10D5C();
  return sub_22BA10D6C();
}

uint64_t sub_22B95A5E4()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA10D5C();
  return sub_22BA10D6C();
}

uint64_t sub_22B95A628@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B95C3CC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22B95A6C8()
{
  result = qword_27D8D4F98;
  if (!qword_27D8D4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4F98);
  }

  return result;
}

uint64_t sub_22B95A71C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6570795467736DLL;
  }

  else
  {
    v2 = 0x65707954627553;
  }

  if (*a2)
  {
    v3 = 0x6570795467736DLL;
  }

  else
  {
    v3 = 0x65707954627553;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22BA10C6C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_22B95A7A4()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B95A81C()
{
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B95A878()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B95A8EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA10AAC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22B95A94C(uint64_t *a1@<X8>)
{
  v2 = 0x65707954627553;
  if (*v1)
  {
    v2 = 0x6570795467736DLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_22B95A984()
{
  if (*v0)
  {
    return 0x6570795467736DLL;
  }

  else
  {
    return 0x65707954627553;
  }
}

uint64_t sub_22B95A9B8@<X0>(char *a1@<X8>)
{
  v2 = sub_22BA10AAC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_22B95AA28(uint64_t a1)
{
  v2 = sub_22B93641C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B95AA64(uint64_t a1)
{
  v2 = sub_22B93641C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B95AAA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for ActionRecord();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v60 = &v58 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v64 = &v58 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v62 = &v58 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v61 = &v58 - v18;
  v19 = type metadata accessor for MessageRecord();
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v58 - v26;
  v28 = sub_22B9349C8(&qword_27D8D4B80, &qword_22BA12C30);
  v66 = *(v28 - 8);
  v29 = *(v66 + 64);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v58 - v31;
  v33 = type metadata accessor for ItemRecord();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1[3];
  v39 = a1[4];
  v68 = a1;
  sub_22B9358B4(a1, v38);
  sub_22B93641C();
  v40 = v67;
  sub_22BA10D8C();
  if (!v40)
  {
    v42 = v27;
    v58 = v24;
    v59 = v37;
    v43 = v64;
    v44 = v65;
    v67 = v33;
    LOBYTE(v69[0]) = 0;
    v45 = sub_22BA10ACC();
    v47 = v46;
    LOBYTE(v69[0]) = 1;
    sub_22B936470();
    sub_22BA10B3C();
    if (v47)
    {
      if (v45 == 0x4D65707954627553 && v47 == 0xEA00000000006773)
      {

LABEL_8:
        v70 = 0;
        v49 = v68;
        goto LABEL_9;
      }

      v48 = sub_22BA10C6C();

      if (v48)
      {
        goto LABEL_8;
      }
    }

    if (v70 > 2u)
    {
      v61 = v28;
      if (v70 > 4u)
      {
        v52 = v63;
        v50 = v68;
        if (v70 == 5)
        {
          sub_22B935B38(v68, v69);
          v54 = v62;
          sub_22B9C5BA4(v69, v62);
          (*(v66 + 8))(v32, v61);
          v53 = v59;
          sub_22B95BD3C(v54, v59, type metadata accessor for ActionRecord);
        }

        else
        {
          sub_22B935B38(v68, v69);
          v56 = v60;
          sub_22B9C5BA4(v69, v60);
          (*(v66 + 8))(v32, v61);
          v53 = v59;
          sub_22B95BD3C(v56, v59, type metadata accessor for ActionRecord);
        }
      }

      else
      {
        v52 = v63;
        v50 = v68;
        if (v70 == 3)
        {
          sub_22B935B38(v68, v69);
          sub_22B9C5BA4(v69, v43);
          (*(v66 + 8))(v32, v61);
          v53 = v59;
          sub_22B95BD3C(v43, v59, type metadata accessor for ActionRecord);
        }

        else
        {
          sub_22B935B38(v68, v69);
          sub_22B9C5BA4(v69, v44);
          (*(v66 + 8))(v32, v61);
          v53 = v59;
          sub_22B95BD3C(v44, v59, type metadata accessor for ActionRecord);
        }
      }

      goto LABEL_19;
    }

    v49 = v68;
    if (v70)
    {
      v50 = v68;
      if (v70 != 1)
      {
        sub_22B935B38(v68, v69);
        v55 = v61;
        sub_22B9C5BA4(v69, v61);
        (*(v66 + 8))(v32, v28);
        v53 = v59;
        sub_22B95BD3C(v55, v59, type metadata accessor for ActionRecord);
        goto LABEL_18;
      }

      sub_22B935B38(v68, v69);
      v51 = v58;
      sub_22B931DCC(v69, v58);
      (*(v66 + 8))(v32, v28);
LABEL_17:
      v53 = v59;
      sub_22B95BD3C(v51, v59, type metadata accessor for MessageRecord);
LABEL_18:
      v52 = v63;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      sub_22B95BD3C(v53, v52, type metadata accessor for ItemRecord);
      v41 = v50;
      return sub_22B936C4C(v41);
    }

LABEL_9:
    v50 = v49;
    sub_22B935B38(v49, v69);
    v51 = v42;
    sub_22B931DCC(v69, v42);
    (*(v66 + 8))(v32, v28);
    goto LABEL_17;
  }

  v41 = v68;
  return sub_22B936C4C(v41);
}

uint64_t sub_22B95B21C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ItemRecord();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B95BDA4(v2, v8);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    a1[3] = type metadata accessor for ActionRecord();
    v9 = sub_22B95BE08(&qword_27D8D4FA0, type metadata accessor for ActionRecord);
    v10 = type metadata accessor for ActionRecord;
  }

  else
  {
    a1[3] = type metadata accessor for MessageRecord();
    v9 = sub_22B95BE08(&qword_281415D40, type metadata accessor for MessageRecord);
    v10 = type metadata accessor for MessageRecord;
  }

  v11 = v10;
  a1[4] = v9;
  v12 = sub_22B957E80(a1);
  return sub_22B95BD3C(v8, v12, v11);
}

uint64_t sub_22B95B39C()
{
  sub_22B95B21C(v4);
  v0 = v5;
  v1 = v6;
  sub_22B9358B4(v4, v5);
  v2 = (*(v1 + 24))(v0, v1);
  sub_22B936C4C(v4);
  return v2;
}

uint64_t sub_22B95B418()
{
  sub_22B95B21C(v4);
  v0 = v5;
  v1 = v6;
  sub_22B9358B4(v4, v5);
  v2 = (*(v1 + 48))(v0, v1);
  sub_22B936C4C(v4);
  return v2;
}

uint64_t sub_22B95B494()
{
  sub_22B95B21C(v4);
  v0 = v5;
  v1 = v6;
  sub_22B9358B4(v4, v5);
  v2 = (*(v1 + 56))(v0, v1);
  sub_22B936C4C(v4);
  return v2;
}

uint64_t sub_22B95B530()
{
  v1 = v0[7];
  sub_22B95B21C(v0 + 2);
  v2 = v0[5];
  v3 = v0[6];
  sub_22B9358B4(v0 + 2, v2);
  v4 = *(v3 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_22B95B660;

  return v8(v2, v3);
}

uint64_t sub_22B95B660(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_22B95B7F4;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_22B95B788;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B95B788()
{
  v1 = *(v0 + 80);
  sub_22B936C4C((v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_22B95B7F4()
{
  sub_22B936C4C(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_22B95B858(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22B95B878, 0, 0);
}

uint64_t sub_22B95B878()
{
  v1 = v0[8];
  sub_22B95B21C(v0 + 2);
  v2 = v0[5];
  v3 = v0[6];
  sub_22B9358B4(v0 + 2, v2);
  v4 = *(v3 + 112);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_22B95B9B0;
  v7 = v0[7];

  return v9(v7, v2, v3);
}

uint64_t sub_22B95B9B0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22B95BB28;
  }

  else
  {
    v3 = sub_22B95BAC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B95BAC4()
{
  sub_22B936C4C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B95BB28()
{
  sub_22B936C4C(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_22B95BBA4(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D4FA8, &unk_22BA14760);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B93641C();
  sub_22BA10D9C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_22B95BCB8(uint64_t a1)
{
  *(a1 + 8) = sub_22B95BE08(&qword_2814161A8, type metadata accessor for ItemRecord);
  result = sub_22B95BE08(&qword_2814161B0, type metadata accessor for ItemRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B95BD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B95BDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B95BE08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B95BE50(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (qword_2814161B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_28141ADF8;
    if (*(qword_28141ADF8 + 16) && (v5 = sub_22B990A58(v3, a2), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      result = swift_endAccess();
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return result;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = qword_28141ADF8;
      qword_28141ADF8 = 0x8000000000000000;
      v9 = v7 + 1;
    }

    else
    {
      swift_endAccess();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = qword_28141ADF8;
      qword_28141ADF8 = 0x8000000000000000;
      v9 = 0;
    }

    sub_22B9BABE4(v9, v3, a2, isUniquelyReferenced_nonNull_native);
    qword_28141ADF8 = v10;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22B95BFAC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22BA0FA0C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B95C06C, 0, 0);
}

uint64_t sub_22B95C06C()
{
  v1 = qword_28141ADC8;
  v0[6] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[7] = qword_28141ADD0;
    v0[8] = *(v2 + 32);
    v0[9] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x177D000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v4 = sub_22BA1029C();

    return MEMORY[0x2822009F8](sub_22B95C1C0, v4, v3);
  }

  else
  {
    v5 = v0[5];
    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_22B95C1C0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  *(v0 + 80) = (*(v0 + 64))(*(v0 + 16)) & 1;

  return MEMORY[0x2822009F8](sub_22B95C23C, 0, 0);
}

uint64_t sub_22B95C23C()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    if (qword_281414F10 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = [v4 guid];
    v6 = [v4 cloudKitRecordID];
    IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit();

    v7 = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
    sub_22BA0FFCC();
    sub_22BA0F9FC();
    v8 = sub_22BA0F9EC();
    (*(v2 + 8))(v1, v3);
    [v7 postNotification_];
  }

  v9 = *(v0 + 40);

  v10 = *(v0 + 8);
  v11 = *(v0 + 80);

  return v10(v11);
}

uint64_t sub_22B95C3CC(char a1)
{
  if ((a1 & 0xF8) != 0)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

unint64_t sub_22B95C3F8()
{
  result = qword_281414DE8[0];
  if (!qword_281414DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281414DE8);
  }

  return result;
}

unint64_t sub_22B95C470()
{
  result = qword_27D8D4FB0;
  if (!qword_27D8D4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FB0);
  }

  return result;
}

unint64_t sub_22B95C4C8()
{
  result = qword_27D8D4FB8;
  if (!qword_27D8D4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FB8);
  }

  return result;
}

unint64_t sub_22B95C520()
{
  result = qword_2814161C0;
  if (!qword_2814161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814161C0);
  }

  return result;
}

unint64_t sub_22B95C578()
{
  result = qword_2814161C8;
  if (!qword_2814161C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814161C8);
  }

  return result;
}

uint64_t sub_22B95C5E8()
{
  v0 = sub_22BA0F9BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22BA0F9AC();
  qword_28141AD60 = result;
  return result;
}

uint64_t sub_22B95C628(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return (sub_22B95D6B4)(a1, a2);
}

uint64_t sub_22B95C6DC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (v16 < result)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_22B95C7E8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_22B95C8F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x70756F724778616DLL;
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    if (a1 != 7)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000016;
    if (a1 != 4)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B95CA28(void *a1)
{
  v3 = v1;
  v5 = sub_22B9349C8(&qword_27D8D4FC0, &qword_22BA143E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22[-v9];
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B95DFE8();
  sub_22BA10D9C();
  v12 = *v3;
  v22[15] = 0;
  sub_22BA10BDC();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v13 = v3[1];
  v22[14] = 1;
  sub_22BA10BDC();
  v14 = v3[2];
  v22[13] = 2;
  sub_22BA10BDC();
  v15 = v3[3];
  v22[12] = 3;
  sub_22BA10BDC();
  v16 = v3[4];
  v22[11] = 4;
  sub_22BA10BDC();
  v17 = v3[5];
  v22[10] = 5;
  sub_22BA10BDC();
  v18 = v3[6];
  v22[9] = 6;
  sub_22BA10BDC();
  v19 = v3[7];
  v22[8] = 7;
  sub_22BA10BDC();
  v21 = v3[8];
  v22[7] = 8;
  sub_22BA10BDC();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_22B95CC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B95E03C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B95CCC4(uint64_t a1)
{
  v2 = sub_22B95DFE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B95CD00(uint64_t a1)
{
  v2 = sub_22B95DFE8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_22B95CD3C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22B95E320(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_22B95CDA8(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = v3;
  v6 = a1;
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v11);
    v13 = v21 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a2(v13, v10, v6);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v17 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v17;
    goto LABEL_2;
  }

  v18 = swift_slowAlloc();
  v19 = v5;
  v20 = sub_22B95D2F0(v18, v10, v6, a3);
  result = MEMORY[0x23189ADD0](v18, -1, -1);
  if (!v19)
  {
    result = v20;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B95CF18(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v20 = result;
  v21 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    if (*(*(v3 + 56) + 8 * v13) >= 2)
    {
      v22 = *(*(v3 + 48) + 16 * v13);
      v23 = *(*(v3 + 48) + 16 * v13 + 8);
      sub_22B936ACC();

      v14 = sub_22BA1075C();
      if (v14[2] < 3uLL)
      {
      }

      else
      {
        v16 = v14[8];
        v15 = v14[9];

        v17 = sub_22BA1011C();

        v3 = a3;

        if ((v17 & 1) == 0)
        {
          *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v21++, 1))
          {
            __break(1u);
            return sub_22B936140(v20, a2, v21, v3);
          }
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22B936140(v20, a2, v21, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B95D104(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v20 = result;
  v21 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    if (*(*(v3 + 56) + 8 * v13) >= 2)
    {
      v22 = *(*(v3 + 48) + 16 * v13);
      v23 = *(*(v3 + 48) + 16 * v13 + 8);
      sub_22B936ACC();

      v14 = sub_22BA1075C();
      if (v14[2] < 3uLL)
      {
      }

      else
      {
        v16 = v14[8];
        v15 = v14[9];

        v17 = sub_22BA1011C();

        v3 = a3;

        if (v17)
        {
          *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v21++, 1))
          {
            __break(1u);
            return sub_22B936140(v20, a2, v21, v3);
          }
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22B936140(v20, a2, v21, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_22B95D2F0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_22B95D378@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22B95CDA8(a1, sub_22B95D104, sub_22B95D104);
  result = sub_22B95CDA8(a1, sub_22B95CF18, sub_22B95CF18);
  v6 = result;
  if (*(result + 16))
  {
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(result + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(result + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v7;
LABEL_11:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(*(result + 56) + ((v13 << 9) | (8 * v14)));
      v16 = __OFADD__(v8, v15);
      v8 += v15;
      if (v16)
      {
        __break(1u);
LABEL_14:
        v17 = *(result + 16);
        if (v17)
        {
          v18 = v8 / v17;
          if (!*(v4 + 16))
          {
            goto LABEL_41;
          }

LABEL_16:
          v19 = 0;
          v20 = 0;
          v21 = 1 << *(v4 + 32);
          v22 = -1;
          if (v21 < 64)
          {
            v22 = ~(-1 << v21);
          }

          v23 = v22 & *(v4 + 64);
          v24 = (v21 + 63) >> 6;
          do
          {
            if (!v23)
            {
              while (1)
              {
                v25 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
                  goto LABEL_55;
                }

                if (v25 >= v24)
                {
                  goto LABEL_28;
                }

                v23 = *(v4 + 64 + 8 * v25);
                ++v19;
                if (v23)
                {
                  v19 = v25;
                  goto LABEL_25;
                }
              }
            }

            v25 = v19;
LABEL_25:
            v26 = __clz(__rbit64(v23));
            v23 &= v23 - 1;
            v27 = *(*(v4 + 56) + ((v25 << 9) | (8 * v26)));
            v16 = __OFADD__(v20, v27);
            v20 += v27;
          }

          while (!v16);
          __break(1u);
LABEL_28:
          v28 = *(v4 + 16);
          if (!v28)
          {
            goto LABEL_57;
          }

          v29 = v20 / v28;
          v30 = v18 + v20 / v28;
          if (!__OFADD__(v18, v20 / v28))
          {
            goto LABEL_30;
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return result;
      }
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_14;
      }

      v11 = *(result + 64 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v18 = 0;
  if (*(v4 + 16))
  {
    goto LABEL_16;
  }

LABEL_41:
  v29 = 0;
  v30 = v18;
LABEL_30:
  v53 = v18;
  if (*(result + 16))
  {

    v32 = sub_22B95C6DC(v31);
    v34 = v33;

    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v32;
    }

    if (*(v6 + 16))
    {

      v37 = sub_22B95C7E8(v36);
      v39 = v38;

      if (v39)
      {
        v40 = 0;
      }

      else
      {
        v40 = v37;
      }

      if (!*(v4 + 16))
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    }
  }

  else
  {
LABEL_43:
    v35 = 0;
  }

  v40 = 0;
  if (!*(v4 + 16))
  {
LABEL_39:
    v41 = 0;
    goto LABEL_52;
  }

LABEL_45:

  v43 = sub_22B95C6DC(v42);
  v45 = v44;

  if (v45)
  {
    v41 = 0;
  }

  else
  {
    v41 = v43;
  }

  if (*(v4 + 16))
  {

    v47 = sub_22B95C7E8(v46);
    v49 = v48;

    if (v49)
    {
      v47 = 0;
    }

    goto LABEL_53;
  }

LABEL_52:
  v47 = 0;
LABEL_53:
  v50 = v30 / 2;
  v51 = *(v6 + 16);

  v52 = *(v4 + 16);

  *a2 = v35;
  a2[1] = v40;
  a2[2] = v41;
  a2[3] = v47;
  a2[4] = v51;
  a2[5] = v52;
  a2[6] = v53;
  a2[7] = v29;
  a2[8] = v50;
  return result;
}

uint64_t sub_22B95D6B4(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  v3 = *(*(sub_22BA1003C() - 8) + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B95D744, 0, 0);
}

uint64_t sub_22B95D744()
{
  v42 = v0;
  type metadata accessor for CloudState();
  if (!sub_22BA0876C())
  {
    if (qword_281414B68 != -1)
    {
      swift_once();
    }

    v1 = qword_28141ACF0;
    v2 = sub_22BA1039C();
    v3 = sub_22BA0FFCC();
    [v1 setObject:v2 forKey:v3];

    v4 = sub_22B972028();
    if (v4)
    {
      sub_22B95D378(v4, (v0 + 16));

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v5 = sub_22BA0FEFC();
      sub_22B936CA8(v5, qword_28141AD40);
      v6 = sub_22BA0FEDC();
      v7 = sub_22BA1046C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v41[0] = v9;
        *v8 = 136315138;
        v10 = *(v0 + 64);
        *(v0 + 264) = *(v0 + 48);
        *(v0 + 280) = v10;
        *(v0 + 296) = *(v0 + 80);
        v11 = *(v0 + 32);
        *(v0 + 232) = *(v0 + 16);
        *(v0 + 248) = v11;
        v12 = sub_22BA1005C();
        v14 = sub_22B99153C(v12, v13, v41);

        *(v8 + 4) = v14;
        _os_log_impl(&dword_22B92A000, v6, v7, "Posting duplicates telemetry with value: %s", v8, 0xCu);
        sub_22B936C4C(v9);
        MEMORY[0x23189ADD0](v9, -1, -1);
        MEMORY[0x23189ADD0](v8, -1, -1);
      }

      if (qword_281414F00 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 16);
      *(v0 + 104) = *(v0 + 32);
      v16 = *(v0 + 64);
      *(v0 + 120) = *(v0 + 48);
      *(v0 + 136) = v16;
      *(v0 + 152) = *(v0 + 80);
      *(v0 + 88) = v15;
      sub_22B95DE9C();
      v17 = sub_22BA0F99C();
      *(v0 + 328) = v17;
      *(v0 + 336) = v18;
      v19 = v17;
      v20 = v18;
      v21 = *(v0 + 320);
      sub_22BA1002C();
      v22 = sub_22BA1000C();
      *(v0 + 344) = v23;
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        v26 = swift_task_alloc();
        *(v0 + 352) = v26;
        *v26 = v0;
        v26[1] = sub_22B95DD04;
        v28 = *(v0 + 304);
        v27 = *(v0 + 312);
        v48 = 97;
        v47 = 47;
        v46 = 2;
        v45 = 21;
        v44 = "performStep(context:)";

        return sub_22B9E81AC(v28, v27, v24, v25, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ReportDiagnosticTelemetryStep.swift", 121, 2);
      }

      v30 = sub_22BA0FEDC();
      v31 = sub_22BA1044C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v41[0] = v33;
        *v32 = 136315138;
        v34 = *(v0 + 64);
        *(v0 + 192) = *(v0 + 48);
        *(v0 + 208) = v34;
        *(v0 + 224) = *(v0 + 80);
        v35 = *(v0 + 32);
        *(v0 + 160) = *(v0 + 16);
        *(v0 + 176) = v35;
        v36 = sub_22BA1005C();
        v38 = sub_22B99153C(v36, v37, v41);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_22B92A000, v30, v31, "Failed to get json string for statistics: %s", v32, 0xCu);
        sub_22B936C4C(v33);
        MEMORY[0x23189ADD0](v33, -1, -1);
        MEMORY[0x23189ADD0](v32, -1, -1);
      }

      sub_22B9359BC(v19, v20);
    }
  }

  v39 = *(v0 + 320);

  v40 = *(v0 + 8);

  return v40(0, 0);
}

uint64_t sub_22B95DD04()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B95DE1C, 0, 0);
}

uint64_t sub_22B95DE1C()
{
  v1 = v0[41];
  v2 = v0[42];
  sub_22B972AB4();
  sub_22B9359BC(v1, v2);
  v3 = v0[40];

  v4 = v0[1];

  return v4(0, 0);
}

unint64_t sub_22B95DE9C()
{
  result = qword_281415558;
  if (!qword_281415558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415558);
  }

  return result;
}

uint64_t sub_22B95DEF0(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_22B95DF58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B95DF7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B95DF9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

unint64_t sub_22B95DFE8()
{
  result = qword_281415570;
  if (!qword_281415570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415570);
  }

  return result;
}

uint64_t sub_22B95E03C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000022BA1C8E0 == a2;
  if (v3 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022BA1C900 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022BA1C920 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70756F724778616DLL && a2 == 0xED0000746E756F43 || (sub_22BA10C6C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022BA1C940 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BA1C960 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BA1C980 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1C9A0 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022BA1C9C0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_22BA10C6C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22B95E320@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D4FC8, &qword_22BA143F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B95DFE8();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(a1);
  }

  v37 = 0;
  v12 = sub_22BA10B2C();
  v36 = 1;
  v13 = sub_22BA10B2C();
  v35 = 2;
  v14 = sub_22BA10B2C();
  v34 = 3;
  v28 = sub_22BA10B2C();
  v33 = 4;
  v27 = sub_22BA10B2C();
  v32 = 5;
  v26 = sub_22BA10B2C();
  v31 = 6;
  v25 = sub_22BA10B2C();
  v30 = 7;
  v24 = sub_22BA10B2C();
  v29 = 8;
  v23 = sub_22BA10B2C();
  (*(v6 + 8))(v10, v5);
  result = sub_22B936C4C(a1);
  *a2 = v12;
  a2[1] = v13;
  v17 = v27;
  v16 = v28;
  a2[2] = v14;
  a2[3] = v16;
  v19 = v25;
  v18 = v26;
  a2[4] = v17;
  a2[5] = v18;
  v20 = v23;
  v21 = v24;
  a2[6] = v19;
  a2[7] = v21;
  a2[8] = v20;
  return result;
}

uint64_t getEnumTagSinglePayload for DuplicateStatistics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DuplicateStatistics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B95E718()
{
  result = qword_27D8D4FD0;
  if (!qword_27D8D4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FD0);
  }

  return result;
}

unint64_t sub_22B95E770()
{
  result = qword_281415560;
  if (!qword_281415560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415560);
  }

  return result;
}

unint64_t sub_22B95E7C8()
{
  result = qword_281415568;
  if (!qword_281415568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415568);
  }

  return result;
}

uint64_t type metadata accessor for DatabaseRecord()
{
  result = qword_281415AA0;
  if (!qword_281415AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B95E878()
{
  result = type metadata accessor for ChatLockRecord();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ChatRecord(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ItemRecord();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AttachmentRecord();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for RecoverableMessageRecord();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for MessageUpdateRecord();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for UnknownRecord();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_22B95E950(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1684632935;
    v5 = 0x615465676E616863;
    if (a1 != 2)
    {
      v5 = 0x614E64726F636572;
    }

    if (a1)
    {
      v4 = 6518387;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F697461657263;
    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x795464726F636572;
    if (a1 != 4)
    {
      v2 = 0x656D614E656E6F7ALL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B95EA88()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9B3760();
  return sub_22BA10D6C();
}

uint64_t sub_22B95EAD8()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9B3760();
  return sub_22BA10D6C();
}

uint64_t sub_22B95EB1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B960AD4();
  *a2 = result;
  return result;
}

unint64_t sub_22B95EB4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B95E950(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22B95EB94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B960AD4();
  *a1 = result;
  return result;
}

uint64_t sub_22B95EBCC(uint64_t a1)
{
  v2 = sub_22B9358F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B95EC08(uint64_t a1)
{
  v2 = sub_22B9358F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B95EC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  updated = type metadata accessor for MessageUpdateRecord();
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8, v5);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecoverableMessageRecord();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v73 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttachmentRecord();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v76 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ItemRecord();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ChatRecord(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ChatLockRecord();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v75 = *(v29 - 8);
  v30 = *(v75 + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v68 - v32;
  v34 = type metadata accessor for DatabaseRecord();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v36);
  v38 = (&v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a1[3];
  v39 = a1[4];
  v80 = a1;
  sub_22B9358B4(a1, v40);
  sub_22B9358F8();
  v41 = v78;
  sub_22BA10D8C();
  if (!v41)
  {
    v69 = v28;
    v70 = v23;
    v43 = v76;
    v44 = v77;
    v45 = v75;
    v71 = v38;
    v78 = v34;
    LOBYTE(v79[0]) = 3;
    v46 = v33;
    v47 = sub_22BA10B1C();
    v49 = v48;
    LOBYTE(v79[0]) = 4;
    v50 = sub_22BA10B1C();
    v52 = v51;

    v68 = v50;
    v53 = sub_22B9C2E30();
    if (v53 > 3)
    {
      if (v53 <= 5)
      {
        v68 = v46;
        if (v53 == 4)
        {

          v54 = v80;
          sub_22B935B38(v80, v79);
          v57 = v73;
          sub_22B9651F8(v79, v73);
          (*(v45 + 8))(v68, v29);
          v56 = v71;
          sub_22B960BEC(v57, v71, type metadata accessor for RecoverableMessageRecord);
          v58 = v74;
        }

        else
        {

          v54 = v80;
          sub_22B935B38(v80, v79);
          sub_22B9809D8(v79, v44);
          v58 = v74;
          (*(v45 + 8))(v68, v29);
          v56 = v71;
          sub_22B960BEC(v44, v71, type metadata accessor for MessageUpdateRecord);
        }

        goto LABEL_14;
      }

      (*(v45 + 8))(v46, v29);
      v60 = v71;
      *v71 = v47;
      v60[1] = v49;
      v60[2] = v68;
      v60[3] = v52;
      v61 = type metadata accessor for UnknownRecord();
      *(v60 + 2) = 0u;
      *(v60 + 3) = 0u;
      *(v60 + 4) = 0u;
      *(v60 + 5) = 0u;
      v62 = v61[10];
      v63 = sub_22BA0FD8C();
      v64 = *(*(v63 - 8) + 56);
      v64(v60 + v62, 1, 1, v63);
      v56 = v60;
      v64(v60 + v61[11], 1, 1, v63);
      v65 = (v60 + v61[12]);
      *v65 = 0;
      v65[1] = 0;
      v54 = v80;
    }

    else
    {
      v68 = v46;
      v54 = v80;
      if (v53 > 1)
      {
        if (v53 == 2)
        {

          sub_22B935B38(v54, v79);
          v59 = v72;
          sub_22B95AAA0(v79, v72);
          (*(v45 + 8))(v68, v29);
          v56 = v71;
          sub_22B960BEC(v59, v71, type metadata accessor for ItemRecord);
        }

        else
        {

          sub_22B935B38(v54, v79);
          sub_22BA0DC9C(v79, v43);
          (*(v45 + 8))(v68, v29);
          v56 = v71;
          sub_22B960BEC(v43, v71, type metadata accessor for AttachmentRecord);
        }
      }

      else
      {
        if (v53)
        {

          sub_22B935B38(v54, v79);
          v67 = v70;
          sub_22B989BF8(v79, v70);
          (*(v45 + 8))(v68, v29);
          v56 = v71;
          sub_22B960BEC(v67, v71, type metadata accessor for ChatRecord);
          v58 = v74;
          goto LABEL_14;
        }

        sub_22B935B38(v54, v79);
        v55 = v69;
        sub_22B960F04(v79, v69);
        (*(v45 + 8))(v68, v29);
        v56 = v71;
        sub_22B960BEC(v55, v71, type metadata accessor for ChatLockRecord);
      }
    }

    v58 = v74;
LABEL_14:
    swift_storeEnumTagMultiPayload();
    sub_22B960BEC(v56, v58, type metadata accessor for DatabaseRecord);
    v42 = v54;
    return sub_22B936C4C(v42);
  }

  v42 = v80;
  return sub_22B936C4C(v42);
}

uint64_t sub_22B95F48C(void *a1)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_22B9349C8(&qword_27D8D5018, &qword_22BA14750);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v46 = &v46 - v6;
  v7 = sub_22B9349C8(&qword_27D8D5020, &qword_22BA14758);
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v46 - v10;
  v12 = sub_22B9349C8(&qword_27D8D4FA8, &unk_22BA14760);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for ChatRecord(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ChatLockRecord();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DatabaseRecord();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B960B88(v2, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v40 = v13;
        sub_22B960D44(v32, type metadata accessor for DatabaseRecord);
        v41 = v51[4];
        sub_22B9358B4(v51, v51[3]);
        sub_22B93641C();
        sub_22BA10D9C();
        return (*(v40 + 8))(v17, v12);
      }

      sub_22B960BEC(v32, v22, type metadata accessor for ChatRecord);
      sub_22B98B2F8(v51);
      v36 = type metadata accessor for ChatRecord;
      v37 = v22;
    }

    else
    {
      sub_22B960BEC(v32, v27, type metadata accessor for ChatLockRecord);
      sub_22B96150C(v51);
      v36 = type metadata accessor for ChatLockRecord;
      v37 = v27;
    }

    return sub_22B960D44(v37, v36);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_22B960D44(v32, type metadata accessor for DatabaseRecord);
      v38 = v51[4];
      sub_22B9358B4(v51, v51[3]);
      sub_22B960C9C();
      v39 = v46;
      sub_22BA10D9C();
      return (*(v49 + 8))(v39, v50);
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v42 = sub_22BA0FEFC();
    sub_22B936CA8(v42, qword_28141AD40);
    v43 = sub_22BA0FEDC();
    v44 = sub_22BA1044C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22B92A000, v43, v44, "Tried to encode unknown database record.", v45, 2u);
      MEMORY[0x23189ADD0](v45, -1, -1);
    }
  }

  else if (EnumCaseMultiPayload != 3)
  {
    sub_22B960D44(v32, type metadata accessor for DatabaseRecord);
    v34 = v51[4];
    sub_22B9358B4(v51, v51[3]);
    sub_22B960CF0();
    sub_22BA10D9C();
    return (*(v47 + 8))(v11, v48);
  }

  return sub_22B960D44(v32, type metadata accessor for DatabaseRecord);
}

uint64_t sub_22B95FA40@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v53 = type metadata accessor for UnknownRecord();
  v1 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53, v2);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for MessageUpdateRecord();
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated, v5);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for RecoverableMessageRecord();
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49, v8);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttachmentRecord();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ItemRecord();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ChatRecord(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ChatLockRecord();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DatabaseRecord();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B960B88(v55, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v36 = type metadata accessor for MessageUpdateRecord;
        v41 = v52;
        sub_22B960BEC(v34, v52, type metadata accessor for MessageUpdateRecord);
        v42 = v56;
        v56[3] = updated;
        v43 = &unk_281415528;
        v44 = type metadata accessor for MessageUpdateRecord;
      }

      else
      {
        v36 = type metadata accessor for UnknownRecord;
        v41 = v54;
        sub_22B960BEC(v34, v54, type metadata accessor for UnknownRecord);
        v42 = v56;
        v56[3] = v53;
        v43 = &unk_27D8D5000;
        v44 = type metadata accessor for UnknownRecord;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v36 = type metadata accessor for AttachmentRecord;
        sub_22B960BEC(v34, v14, type metadata accessor for AttachmentRecord);
        v37 = v56;
        v56[3] = v10;
        v37[4] = sub_22B960C54(&qword_2814159B0, type metadata accessor for AttachmentRecord);
        v38 = sub_22B957E80(v37);
        v39 = v14;
LABEL_15:
        v47 = v36;
        return sub_22B960BEC(v39, v38, v47);
      }

      v36 = type metadata accessor for RecoverableMessageRecord;
      v41 = v50;
      sub_22B960BEC(v34, v50, type metadata accessor for RecoverableMessageRecord);
      v42 = v56;
      v56[3] = v49;
      v43 = &unk_27D8D5008;
      v44 = type metadata accessor for RecoverableMessageRecord;
    }

    v42[4] = sub_22B960C54(v43, v44);
    v38 = sub_22B957E80(v42);
    v39 = v41;
    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    v36 = type metadata accessor for ChatLockRecord;
    sub_22B960BEC(v34, v29, type metadata accessor for ChatLockRecord);
    v45 = v56;
    v56[3] = v25;
    v45[4] = sub_22B960C54(&qword_27D8D5010, type metadata accessor for ChatLockRecord);
    v38 = sub_22B957E80(v45);
    v39 = v29;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v36 = type metadata accessor for ChatRecord;
    sub_22B960BEC(v34, v24, type metadata accessor for ChatRecord);
    v40 = v56;
    v56[3] = v20;
    v40[4] = sub_22B960C54(&qword_281416388, type metadata accessor for ChatRecord);
    v38 = sub_22B957E80(v40);
    v39 = v24;
    goto LABEL_15;
  }

  sub_22B960BEC(v34, v19, type metadata accessor for ItemRecord);
  v46 = v56;
  v56[3] = v15;
  v46[4] = sub_22B960C54(&qword_2814161A0, type metadata accessor for ItemRecord);
  v38 = sub_22B957E80(v46);
  v39 = v19;
  v47 = type metadata accessor for ItemRecord;
  return sub_22B960BEC(v39, v38, v47);
}

uint64_t sub_22B960088()
{
  v1 = v0[7];
  sub_22B95FA40(v0 + 2);
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    sub_22B9358B4(v0 + 2, v0[5]);
    v4 = *(v3 + 104);
    v9 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_22B960204;

    return v9(v2, v3);
  }

  else
  {
    sub_22B960B20((v0 + 2));
    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_22B960204(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_22B95B7F4;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_22B96032C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B96032C()
{
  sub_22B936C4C((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 80) & 1;

  return v1(v2);
}

uint64_t sub_22B960398()
{
  sub_22B95FA40(v3);
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    sub_22B9358B4(v3, v4);
    v0 = (*(v1 + 24))(v0, v1);
    sub_22B936C4C(v3);
  }

  else
  {
    sub_22B960B20(v3);
  }

  return v0;
}

uint64_t sub_22B96042C()
{
  sub_22B95FA40(v3);
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    sub_22B9358B4(v3, v4);
    v0 = (*(v1 + 48))(v0, v1);
    sub_22B936C4C(v3);
  }

  else
  {
    sub_22B960B20(v3);
  }

  return v0;
}

uint64_t sub_22B9604C0()
{
  sub_22B95FA40(v3);
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    sub_22B9358B4(v3, v4);
    v0 = (*(v1 + 56))(v0, v1);
    sub_22B936C4C(v3);
  }

  else
  {
    sub_22B960B20(v3);
  }

  return v0;
}

uint64_t sub_22B960554()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22B960068();
}

uint64_t sub_22B9605E0(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_22B960710(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22B960730, 0, 0);
}

uint64_t sub_22B960730()
{
  v1 = v0[8];
  sub_22B95FA40(v0 + 2);
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    sub_22B9358B4(v0 + 2, v0[5]);
    v4 = *(v3 + 112);
    v10 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_22B95B9B0;
    v7 = v0[7];

    return v10(v7, v2, v3);
  }

  else
  {
    sub_22B960B20((v0 + 2));
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22B9608E0(uint64_t a1)
{
  *(a1 + 8) = sub_22B960C54(&qword_281415AB0, type metadata accessor for DatabaseRecord);
  result = sub_22B960C54(&qword_27D8D4FD8, type metadata accessor for DatabaseRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22B960968()
{
  result = qword_27D8D4FE0;
  if (!qword_27D8D4FE0)
  {
    sub_22B948760(&qword_27D8D4FE8, qword_22BA145E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FE0);
  }

  return result;
}

unint64_t sub_22B9609D0()
{
  result = qword_27D8D4FF0;
  if (!qword_27D8D4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4FF0);
  }

  return result;
}

unint64_t sub_22B960A28()
{
  result = qword_281415AB8;
  if (!qword_281415AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415AB8);
  }

  return result;
}

unint64_t sub_22B960A80()
{
  result = qword_281415AC0;
  if (!qword_281415AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415AC0);
  }

  return result;
}

uint64_t sub_22B960AD4()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22B960B20(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D4FF8, &qword_22BA14748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B960B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B960BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B960C54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B960C9C()
{
  result = qword_281415550;
  if (!qword_281415550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415550);
  }

  return result;
}

unint64_t sub_22B960CF0()
{
  result = qword_27D8D5028;
  if (!qword_27D8D5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5028);
  }

  return result;
}

uint64_t sub_22B960D44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ChatLockRecord()
{
  result = qword_281415B70;
  if (!qword_281415B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B960E18()
{
  sub_22B960EB4();
  if (v0 <= 0x3F)
  {
    sub_22B934C68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B960EB4()
{
  if (!qword_281414C40)
  {
    v0 = sub_22BA1074C();
    if (!v1)
    {
      atomic_store(v0, &qword_281414C40);
    }
  }
}

uint64_t sub_22B960F04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v54 - v10;
  v12 = sub_22B9349C8(&qword_27D8D5040, &qword_22BA14808);
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v54 - v15;
  v17 = type metadata accessor for ChatLockRecord();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[3];
  v22 = a1[4];
  v61 = a1;
  sub_22B9358B4(a1, v23);
  sub_22B961AD0();
  v24 = v16;
  v25 = v60;
  sub_22BA10D8C();
  if (v25)
  {
    return sub_22B936C4C(v61);
  }

  v26 = v11;
  v56 = v8;
  v60 = v21;
  v70 = 0;
  v27 = v58;
  v28 = v59;
  v29 = sub_22BA10ACC();
  v31 = v60;
  *v60 = v29;
  v31[1] = v32;
  v69 = 1;
  v31[2] = sub_22BA10ACC();
  v31[3] = v33;
  v68 = 2;
  v31[4] = sub_22BA10ACC();
  v31[5] = v34;
  v67 = 3;
  v31[6] = sub_22BA10ACC();
  v31[7] = v35;
  v66 = 4;
  v31[8] = sub_22BA10ACC();
  v31[9] = v36;
  v65 = 5;
  v31[10] = sub_22BA10ACC();
  v31[11] = v37;
  sub_22BA0FD8C();
  v64 = 6;
  v54[1] = sub_22B961C4C(&unk_281416C00, MEMORY[0x277CC9578]);
  sub_22BA10AFC();
  v55 = 0;
  sub_22B935A74(v26, v31 + v17[10]);
  v63 = 7;
  v39 = v55;
  v38 = v56;
  sub_22BA10AFC();
  v55 = v39;
  if (v39)
  {
    (*(v27 + 8))(v24, v28);
    v40 = 0;
    v41 = v60;
  }

  else
  {
    v41 = v60;
    sub_22B935A74(v38, v60 + v17[11]);
    v62 = 8;
    v42 = v55;
    v43 = sub_22BA10ACC();
    v55 = v42;
    if (!v42)
    {
      v51 = v43;
      v52 = v44;
      (*(v27 + 8))(v24, v28);
      v53 = (v41 + v17[12]);
      *v53 = v51;
      v53[1] = v52;
      sub_22B961B8C(v41, v57);
      sub_22B936C4C(v61);
      return sub_22B961BF0(v41);
    }

    (*(v27 + 8))(v24, v28);
    v40 = 1;
  }

  sub_22B936C4C(v61);
  v45 = v41[1];

  v46 = v41[3];

  v47 = v41[5];

  v48 = v41[7];

  v49 = v41[9];

  v50 = v41[11];

  result = sub_22B961B24(v41 + v17[10]);
  if (v40)
  {
    return sub_22B961B24(v41 + v17[11]);
  }

  return result;
}

uint64_t sub_22B96150C(void *a1)
{
  v3 = v1;
  v5 = sub_22B9349C8(&qword_27D8D5050, &qword_22BA14810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31[-v9];
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B961AD0();
  sub_22BA10D9C();
  v12 = *v3;
  v13 = v3[1];
  v31[31] = 0;
  sub_22BA10B7C();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v31[30] = 1;
    sub_22BA10B7C();
    v16 = v3[4];
    v17 = v3[5];
    v31[29] = 2;
    sub_22BA10B7C();
    v18 = v3[6];
    v19 = v3[7];
    v31[28] = 3;
    sub_22BA10B7C();
    v20 = v3[8];
    v21 = v3[9];
    v31[27] = 4;
    sub_22BA10B7C();
    v22 = v3[10];
    v23 = v3[11];
    v31[26] = 5;
    sub_22BA10B7C();
    v24 = type metadata accessor for ChatLockRecord();
    v25 = v24[10];
    v31[25] = 6;
    sub_22BA0FD8C();
    sub_22B961C4C(&qword_27D8D5058, MEMORY[0x277CC9578]);
    sub_22BA10BAC();
    v26 = v24[11];
    v31[24] = 7;
    sub_22BA10BAC();
    v27 = (v3 + v24[12]);
    v28 = *v27;
    v29 = v27[1];
    v31[15] = 8;
    sub_22BA10B7C();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_22B96180C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1684632935;
    v5 = 0x615465676E616863;
    if (a1 != 2)
    {
      v5 = 0x614E64726F636572;
    }

    if (a1)
    {
      v4 = 0x65636976726573;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F697461657263;
    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x795464726F636572;
    if (a1 != 4)
    {
      v2 = 0x656D614E656E6F7ALL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B961948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B961DAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B961970(uint64_t a1)
{
  v2 = sub_22B961AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9619AC(uint64_t a1)
{
  v2 = sub_22B961AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B961A4C(uint64_t a1)
{
  *(a1 + 8) = sub_22B961C4C(&qword_27D8D5030, type metadata accessor for ChatLockRecord);
  result = sub_22B961C4C(&qword_27D8D5038, type metadata accessor for ChatLockRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22B961AD0()
{
  result = qword_27D8D5048;
  if (!qword_27D8D5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5048);
  }

  return result;
}

uint64_t sub_22B961B24(uint64_t a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B961B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatLockRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B961BF0(uint64_t a1)
{
  v2 = type metadata accessor for ChatLockRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B961C4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B961CA8()
{
  result = qword_27D8D5060;
  if (!qword_27D8D5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5060);
  }

  return result;
}

unint64_t sub_22B961D00()
{
  result = qword_27D8D5068;
  if (!qword_27D8D5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5068);
  }

  return result;
}

unint64_t sub_22B961D58()
{
  result = qword_27D8D5070;
  if (!qword_27D8D5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5070);
  }

  return result;
}

uint64_t sub_22B961DAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632935 && a2 == 0xE400000000000000;
  if (v3 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615465676E616863 && a2 == 0xE900000000000067 || (sub_22BA10C6C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL || (sub_22BA10C6C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x795464726F636572 && a2 == 0xEA00000000006570 || (sub_22BA10C6C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_22BA10C6C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1BAE0 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1BB00 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_22BA10C6C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22B9620AC()
{
  v0 = [swift_getObjCClassFromMetadata() processInfo];
  v1 = [v0 environment];

  v2 = sub_22BA0FF6C();
  if (*(v2 + 16) && (v3 = sub_22B990A58(0x49545345545F5349, 0xEF434E59535F474ELL), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    if (v7 == 49 && v6 == 0xE100000000000000)
    {

      return 1;
    }

    else
    {
      v9 = sub_22BA10C6C();

      return v9 & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_22B9621E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return (sub_22B962298)(a1, a2);
}

uint64_t sub_22B9622B8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isUnderFirstDataProtectionLock];

  if (v2)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1044C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, v4, v5, "Under first data protection lock could not proceed with sync", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }

    sub_22B944A5C();
    swift_allocError();
    *v7 = xmmword_22BA14930;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    v0[3] = sub_22B936CA8(v10, qword_28141AD40);
    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1046C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B92A000, v11, v12, "Not under first data protection lock, proceeding to reload store if necessary", v13, 2u);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    v14 = v0[2];

    v16 = *(v14 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
    v15 = *(v14 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase + 8);
    ObjectType = swift_getObjectType();
    v18 = *(v15 + 16);
    v21 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[4] = v20;
    *v20 = v0;
    v20[1] = sub_22B9625F0;

    return v21(ObjectType, v15);
  }
}

uint64_t sub_22B9625F0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B96272C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4(0, 0);
  }
}

uint64_t sub_22B96272C()
{
  v1 = v0[3];
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1044C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Could not load sync store cannot continue sync.", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = v0[5];
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t sub_22B962808()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B962924()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B962A3C()
{
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B962B88()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[24];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 sub_22B962C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22B962C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B962CAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B962D1C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x536C616974696E69;
    v6 = 0x6369646F69726570;
    if (a1 != 2)
    {
      v6 = 0x795370756B636162;
    }

    if (a1)
    {
      v5 = 0x6C6C69666B636162;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74696E4972657375;
    v2 = 0x7274656D656C6574;
    if (a1 != 7)
    {
      v2 = 0x7361685074736574;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 != 4)
    {
      v3 = 0x6C6E4F746E756F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B962E88()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9B3A48();
  return sub_22BA10D6C();
}

uint64_t sub_22B962ED8()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B9B3A48();
  return sub_22BA10D6C();
}

uint64_t sub_22B962F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B964CB8();
  *a2 = result;
  return result;
}

unint64_t sub_22B962F4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B962D1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22B962F94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B964CB8();
  *a1 = result;
  return result;
}

uint64_t sub_22B962FCC(uint64_t a1)
{
  v2 = sub_22B9642A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B963008(uint64_t a1)
{
  v2 = sub_22B9642A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B963058()
{
  *v0;
  *v0;
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B963164@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B964D04();
  *a2 = result;
  return result;
}

void sub_22B963194(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73736572676F7270;
  v5 = 0xEB0000000073746ELL;
  v6 = 0x656D686361747461;
  v7 = 0x800000022BA1BBF0;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0x556567617373656DLL;
    v7 = 0xEE00736574616470;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7374616863;
  if (v2 != 1)
  {
    v10 = 0x736567617373656DLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_22B963268()
{
  v1 = *v0;
  v2 = 0x73736572676F7270;
  v3 = 0x656D686361747461;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x556567617373656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7374616863;
  if (v1 != 1)
  {
    v5 = 0x736567617373656DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22B963338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B964D04();
  *a1 = result;
  return result;
}

uint64_t sub_22B96336C(uint64_t a1)
{
  v2 = sub_22B9642FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9633A8(uint64_t a1)
{
  v2 = sub_22B9642FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9633E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = sub_22B9349C8(&qword_27D8D5078, &qword_22BA14AC8);
  v66 = *(v65 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v65, v4);
  v63 = &v55 - v5;
  v6 = sub_22B9349C8(&qword_27D8D5080, &qword_22BA14AD0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v55 - v17;
  v19 = sub_22B9349C8(&qword_27D8D5088, &qword_22BA14AD8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v55 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v86 = a1;
  sub_22B9358B4(a1, v26);
  sub_22B9642A8();
  v27 = v67;
  sub_22BA10D8C();
  if (v27)
  {
    return sub_22B936C4C(v86);
  }

  v61 = v15;
  v60 = v11;
  v67 = 0;
  v62 = v20;
  v28 = *(v66 + 56);
  v29 = v65;
  v28(v18, 1, 1, v65);
  v30 = byte_283F511F8;
  LOBYTE(v74[0]) = byte_283F511F8;
  if ((sub_22BA10B5C() & 1) == 0)
  {
    v30 = byte_283F511F9;
    LOBYTE(v74[0]) = byte_283F511F9;
    if ((sub_22BA10B5C() & 1) == 0)
    {
      v30 = byte_283F511FA;
      LOBYTE(v74[0]) = byte_283F511FA;
      if ((sub_22BA10B5C() & 1) == 0)
      {
        v30 = byte_283F511FB;
        LOBYTE(v74[0]) = byte_283F511FB;
        if ((sub_22BA10B5C() & 1) == 0)
        {
          v30 = byte_283F511FC;
          LOBYTE(v74[0]) = byte_283F511FC;
          if ((sub_22BA10B5C() & 1) == 0)
          {
            v30 = byte_283F511FD;
            LOBYTE(v74[0]) = byte_283F511FD;
            if ((sub_22BA10B5C() & 1) == 0)
            {
              v30 = byte_283F511FE;
              LOBYTE(v74[0]) = byte_283F511FE;
              if ((sub_22BA10B5C() & 1) == 0)
              {
                v30 = byte_283F511FF;
                LOBYTE(v74[0]) = byte_283F511FF;
                if ((sub_22BA10B5C() & 1) == 0)
                {
                  v30 = byte_283F51200;
                  LOBYTE(v74[0]) = byte_283F51200;
                  if ((sub_22BA10B5C() & 1) == 0)
                  {
                    v59 = v18;
                    goto LABEL_17;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v31 = byte_22BA14E6E[v30];
  LOBYTE(v74[0]) = v30;
  sub_22B9642FC();
  v32 = v61;
  v33 = v67;
  sub_22BA10ABC();
  if (v33)
  {
    v34 = v18;
LABEL_13:
    sub_22B964350(v34);
    (*(v62 + 8))(v24, v19);
    return sub_22B936C4C(v86);
  }

  v58 = v31;
  v67 = 0;
  sub_22B964350(v18);
  v28(v32, 0, 1, v29);
  sub_22B9643B8(v32, v18);
  v36 = v60;
  sub_22B964428(v18, v60);
  v37 = v66;
  v38 = (*(v66 + 48))(v36, 1, v29);
  v59 = v18;
  if (v38 == 1)
  {
    sub_22B964350(v36);
LABEL_17:
    v39 = MEMORY[0x277D84F90];
    v61 = sub_22B9BB998(MEMORY[0x277D84F90]);
    v40 = sub_22B9BB998(v39);
    v41 = sub_22B9BB998(v39);
    v60 = sub_22B9BB998(v39);
    v42 = sub_22B9BB998(v39);
    v43 = 9;
    v44 = v64;
    v45 = v62;
    goto LABEL_18;
  }

  v52 = v63;
  (*(v37 + 32))(v63, v36, v29);
  sub_22B9349C8(&qword_27D8D5090, &qword_22BA14AE0);
  LOBYTE(v68) = 1;
  sub_22B9647A8(&qword_27D8D5098, sub_22B964700, sub_22B964754);
  v53 = v67;
  sub_22BA10B3C();
  if (v53)
  {
    (*(v37 + 8))(v52, v29);
    v34 = v59;
    goto LABEL_13;
  }

  v61 = v74[0];
  LOBYTE(v68) = 2;
  sub_22BA10B3C();
  v45 = v62;
  v57 = v74[0];
  LOBYTE(v68) = 3;
  v67 = 0;
  sub_22BA10B3C();
  v56 = v74[0];
  LOBYTE(v68) = 4;
  v54 = v65;
  sub_22BA10B3C();
  v60 = v74[0];
  LOBYTE(v68) = 5;
  sub_22BA10B3C();
  v67 = 0;
  v42 = v74[0];
  (*(v37 + 8))(v52, v54);
  v44 = v64;
  v43 = v58;
  v40 = v57;
  v41 = v56;
LABEL_18:
  sub_22B964350(v59);
  (*(v45 + 8))(v24, v19);
  LOBYTE(v68) = v43;
  DWORD1(v68) = *&v85[3];
  *(&v68 + 1) = *v85;
  *&v69 = 0;
  *(&v68 + 1) = 0;
  BYTE8(v69) = 0;
  *(&v69 + 9) = *v84;
  HIDWORD(v69) = *&v84[3];
  v46 = v61;
  *&v70 = v61;
  *(&v70 + 1) = v40;
  v47 = v60;
  *&v71 = v41;
  *(&v71 + 1) = v60;
  v48 = v40;
  v49 = MEMORY[0x277D84F90];
  *&v72 = v42;
  *(&v72 + 1) = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  *(v44 + 80) = MEMORY[0x277D84F90];
  v50 = v71;
  *(v44 + 32) = v70;
  *(v44 + 48) = v50;
  *(v44 + 64) = v72;
  v51 = v69;
  *v44 = v68;
  *(v44 + 16) = v51;
  sub_22B964698(&v68, v74);
  sub_22B936C4C(v86);
  LOBYTE(v74[0]) = v43;
  *(v74 + 1) = *v85;
  HIDWORD(v74[0]) = *&v85[3];
  v74[1] = 0;
  v74[2] = 0;
  v75 = 0;
  *v76 = *v84;
  *&v76[3] = *&v84[3];
  v77 = v46;
  v78 = v48;
  v79 = v41;
  v80 = v47;
  v81 = v42;
  v82 = v49;
  v83 = v49;
  return sub_22B9646D0(v74);
}

uint64_t sub_22B963E54(void *a1)
{
  v30 = sub_22B9349C8(&qword_27D8D50B0, &qword_22BA14AE8);
  v33 = *(v30 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v30, v4);
  v6 = &v26 - v5;
  v7 = sub_22B9349C8(&qword_27D8D50B8, &qword_22BA14AF0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - v10;
  v12 = *v1;
  v14 = v1[4];
  v13 = v1[5];
  v15 = v1[7];
  v28 = v1[6];
  v29 = v13;
  v26 = v1[8];
  v27 = v15;
  v16 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9642A8();

  sub_22BA10D9C();
  v17 = byte_22BA14E77[v12];
  v18 = v30;
  LOBYTE(v36) = v17;
  sub_22B9642FC();
  v34 = v7;
  sub_22BA10B6C();
  v36 = v14;
  v35 = 1;
  sub_22B9349C8(&qword_27D8D5090, &qword_22BA14AE0);
  sub_22B9647A8(&qword_281414C68, sub_22B964838, sub_22B96488C);
  v19 = v6;
  v20 = v32;
  sub_22BA10BEC();
  if (v20)
  {

    (*(v33 + 8))(v6, v18);
    return (*(v31 + 8))(v11, v34);
  }

  else
  {
    v22 = v28;
    v32 = v11;
    v23 = v33;

    v36 = v29;
    v35 = 2;
    sub_22BA10BEC();
    v36 = v22;
    v35 = 3;
    v24 = v18;
    sub_22BA10BEC();
    v25 = v31;
    v36 = v27;
    v35 = 4;
    sub_22BA10BEC();
    v36 = v26;
    v35 = 5;
    sub_22BA10BEC();
    (*(v23 + 8))(v19, v24);
    return (*(v25 + 8))(v32, v34);
  }
}

unint64_t sub_22B9642A8()
{
  result = qword_281416A20;
  if (!qword_281416A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A20);
  }

  return result;
}

unint64_t sub_22B9642FC()
{
  result = qword_281416A48;
  if (!qword_281416A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A48);
  }

  return result;
}

uint64_t sub_22B964350(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5080, &qword_22BA14AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B9643B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5080, &qword_22BA14AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B964428(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5080, &qword_22BA14AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B964498(char a1)
{
  v2 = v1[3];
  v16[2] = v1[2];
  v16[3] = v2;
  v16[4] = v1[4];
  v17 = *(v1 + 10);
  v3 = v1[1];
  v16[0] = *v1;
  v16[1] = v3;
  if ((a1 - 1) > 4u)
  {
    v6 = MEMORY[0x277D84F90];

    return sub_22B9BB998(v6);
  }

  else
  {
    v4 = *(&off_27871A600 + (a1 - 1));
    swift_getKeyPath();
    v10 = v1[2];
    v11 = v1[3];
    v12 = v1[4];
    v13 = *(v1 + 10);
    v8 = *v1;
    v9 = v1[1];
    sub_22B964698(v16, v14);

    swift_getAtKeyPath();

    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v12;
    v15 = v13;
    v14[0] = v8;
    v14[1] = v9;
    sub_22B9646D0(v14);
    return v7;
  }
}

uint64_t sub_22B9645B8()
{
  v0 = sub_22BA0F9BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22BA0F9AC();
  qword_281416A60 = result;
  return result;
}

uint64_t sub_22B9645F8(uint64_t a1, char a2)
{
  swift_beginAccess();
  if ((a2 - 1) >= 5u)
  {
  }

  else
  {
    v3 = *(&off_27871A600 + (a2 - 1));
    swift_getKeyPath();
    swift_setAtWritableKeyPath();
  }

  return swift_endAccess();
}

unint64_t sub_22B964700()
{
  result = qword_27D8D50A0;
  if (!qword_27D8D50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50A0);
  }

  return result;
}

unint64_t sub_22B964754()
{
  result = qword_27D8D50A8;
  if (!qword_27D8D50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50A8);
  }

  return result;
}

uint64_t sub_22B9647A8(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(&qword_27D8D5090, &qword_22BA14AE0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B964838()
{
  result = qword_281416678[0];
  if (!qword_281416678[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281416678);
  }

  return result;
}

unint64_t sub_22B96488C()
{
  result = qword_281416648;
  if (!qword_281416648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416648);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncStatsCollector.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncStatsCollector.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B964A44()
{
  result = qword_27D8D50C0;
  if (!qword_27D8D50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50C0);
  }

  return result;
}

unint64_t sub_22B964A9C()
{
  result = qword_27D8D50C8;
  if (!qword_27D8D50C8)
  {
    sub_22B948760(&qword_27D8D50D0, qword_22BA14C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50C8);
  }

  return result;
}

unint64_t sub_22B964B04()
{
  result = qword_27D8D50D8;
  if (!qword_27D8D50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50D8);
  }

  return result;
}

unint64_t sub_22B964B5C()
{
  result = qword_281416A38;
  if (!qword_281416A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A38);
  }

  return result;
}

unint64_t sub_22B964BB4()
{
  result = qword_281416A40;
  if (!qword_281416A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A40);
  }

  return result;
}

unint64_t sub_22B964C0C()
{
  result = qword_281416A28;
  if (!qword_281416A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A28);
  }

  return result;
}

unint64_t sub_22B964C64()
{
  result = qword_281416A30;
  if (!qword_281416A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416A30);
  }

  return result;
}

uint64_t sub_22B964CB8()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22B964D04()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22B964D50()
{
  type metadata accessor for ImportContextFactory();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28141AD90 = v0;
  return result;
}

uint64_t sub_22B964D8C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

id sub_22B964DE0(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22BA0FBBC();
  v7[0] = 0;
  LODWORD(a2) = [a2 removeItemAtURL:v3 error:v7];

  if (a2)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_22BA0FB6C();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22B964EA4(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22BA0FBBC();
  v5 = sub_22BA0FBBC();
  v9[0] = 0;
  LODWORD(a3) = [a3 moveItemAtURL:v4 toURL:v5 error:v9];

  if (a3)
  {
    result = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_22BA0FB6C();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22B964F88(uint64_t a1, char a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22BA0FBBC();
  v9[0] = 0;
  LODWORD(a3) = [a3 createDirectoryAtURL:v5 withIntermediateDirectories:a2 & 1 attributes:0 error:v9];

  if (a3)
  {
    result = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_22BA0FB6C();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for RecoverableMessageRecord()
{
  result = qword_2814150B8;
  if (!qword_2814150B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B9650DC()
{
  sub_22B9651AC(319, &qword_281414C40);
  if (v0 <= 0x3F)
  {
    sub_22B934C68();
    if (v1 <= 0x3F)
    {
      sub_22B9651AC(319, &unk_281416C20);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B9651AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22BA1074C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_22B9651F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_22B9349C8(&qword_27D8D50F0, &qword_22BA14FE8);
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v85 = &v77 - v6;
  v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v77 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v77 - v17;
  v19 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v86 = *(v19 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v77 - v22;
  v24 = type metadata accessor for RecoverableMessageRecord();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = (&v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[3];
  v29 = a1[4];
  v88 = a1;
  sub_22B9358B4(a1, v30);
  sub_22B9358F8();
  v31 = v87;
  sub_22BA10D8C();
  if (v31)
  {
    return sub_22B936C4C(v88);
  }

  v32 = v18;
  v87 = v24;
  LOBYTE(v89) = 0;
  *v28 = sub_22BA10ACC();
  v28[1] = v34;
  LOBYTE(v89) = 1;
  v35 = sub_22BA10ACC();
  v36 = v86;
  v28[2] = v35;
  v28[3] = v37;
  LOBYTE(v89) = 2;
  v79 = 0;
  v28[4] = sub_22BA10ACC();
  v28[5] = v38;
  LOBYTE(v89) = 3;
  v28[6] = sub_22BA10ACC();
  v28[7] = v39;
  LOBYTE(v89) = 4;
  v28[8] = sub_22BA10ACC();
  v28[9] = v40;
  LOBYTE(v89) = 5;
  v41 = sub_22BA10ACC();
  v80 = 0;
  v28[10] = v41;
  v28[11] = v42;
  v43 = sub_22BA0FD8C();
  LOBYTE(v89) = 6;
  v44 = sub_22B9660FC(&unk_281416C00, MEMORY[0x277CC9578]);
  v45 = v32;
  v46 = v43;
  v78 = v45;
  v79 = v44;
  v47 = v80;
  sub_22BA10AFC();
  v48 = v47;
  if (v47)
  {
    (*(v36 + 8))(v23, v19);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v80 = v47;
    v53 = v87;
    goto LABEL_8;
  }

  sub_22B935A74(v78, v28 + v87[10]);
  LOBYTE(v89) = 7;
  v52 = v15;
  sub_22BA10AFC();
  v80 = 0;
  v53 = v87;
  sub_22B935A74(v52, v28 + v87[11]);
  LOBYTE(v89) = 8;
  v61 = v80;
  v62 = sub_22BA10ACC();
  v80 = v61;
  if (v61)
  {
    (*(v86 + 8))(v23, v19);
    v50 = 0;
    v51 = 0;
    v49 = 1;
    goto LABEL_8;
  }

  v78 = 0;
  v79 = v19;
  v64 = v23;
  v65 = (v28 + v53[12]);
  *v65 = v62;
  v65[1] = v63;
  v66 = v88[4];
  sub_22B9358B4(v88, v88[3]);
  sub_22B960CF0();
  v67 = v80;
  sub_22BA10D8C();
  v80 = v67;
  if (!v67)
  {
    LOBYTE(v89) = 0;
    v68 = sub_22BA10B0C();
    v80 = 0;
    v70 = v69;
    v50 = 1;
    v71 = 1;
    if ((v70 & 1) == 0)
    {
      result = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v72 = result;
      sub_22BA0FD5C();

      v71 = 0;
    }

    v73 = v82;
    (*(*(v46 - 8) + 56))(v82, v71, 1, v46);
    sub_22B935A74(v73, v28 + v87[13]);
    LOBYTE(v89) = 1;
    if (sub_22BA10B5C())
    {
      v90 = 1;
      sub_22B9363C8();
      v74 = v80;
      sub_22BA10AFC();
      v80 = v74;
      if (v74)
      {
        (*(v83 + 8))(v85, v84);
        (*(v86 + 8))(v64, v79);
        v49 = 1;
        v51 = 1;
        goto LABEL_22;
      }

      (*(v83 + 8))(v85, v84);
      (*(v86 + 8))(v64, v79);
      v75 = v87[14];
      v76 = v89;
    }

    else
    {
      (*(v83 + 8))(v85, v84);
      (*(v86 + 8))(v64, v79);
      v75 = v87[14];
      v76 = xmmword_22BA14F50;
    }

    *(v28 + v75) = v76;
    sub_22B966144(v28, v81);
    sub_22B936C4C(v88);
    return sub_22B9661A8(v28);
  }

  (*(v86 + 8))(v64, v79);
  v51 = 0;
  v49 = 1;
  v50 = 1;
LABEL_22:
  v53 = v87;
  v48 = v78;
LABEL_8:
  sub_22B936C4C(v88);
  v54 = v28[1];

  v55 = v28[3];

  v56 = v28[5];

  v57 = v28[7];

  v58 = v28[9];

  v59 = v28[11];

  if (v48)
  {
    if (v49)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = sub_22B961B24(v28 + v53[10]);
    if (v49)
    {
LABEL_10:
      result = sub_22B961B24(v28 + v53[11]);
      if ((v50 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  if (!v50)
  {
LABEL_11:
    if (v51)
    {
      return sub_22B961B24(v28 + v53[13]);
    }

    return result;
  }

LABEL_15:
  v60 = *(v28 + v53[12] + 8);

  if (v51)
  {
    return sub_22B961B24(v28 + v53[13]);
  }

  return result;
}

uint64_t sub_22B965B60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x79646F4274726170;
  }

  else
  {
    v4 = 0x61446574656C6564;
  }

  if (v3)
  {
    v5 = 0xEA00000000006574;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x79646F4274726170;
  }

  else
  {
    v6 = 0x61446574656C6564;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEA00000000006574;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22BA10C6C();
  }

  return v9 & 1;
}

uint64_t sub_22B965C0C()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B965C94()
{
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B965D08()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B965D8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA10AAC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22B965DEC(uint64_t *a1@<X8>)
{
  v2 = 0x61446574656C6564;
  if (*v1)
  {
    v2 = 0x79646F4274726170;
  }

  v3 = 0xEA00000000006574;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22B965E30()
{
  if (*v0)
  {
    result = 0x79646F4274726170;
  }

  else
  {
    result = 0x61446574656C6564;
  }

  *v0;
  return result;
}

uint64_t sub_22B965E70@<X0>(char *a1@<X8>)
{
  v2 = sub_22BA10AAC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_22B965ED4(uint64_t a1)
{
  v2 = sub_22B960CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B965F10(uint64_t a1)
{
  v2 = sub_22B960CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B965F64(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5020, &qword_22BA14758);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B960CF0();
  sub_22BA10D9C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_22B966078(uint64_t a1)
{
  *(a1 + 8) = sub_22B9660FC(&qword_27D8D50E0, type metadata accessor for RecoverableMessageRecord);
  result = sub_22B9660FC(&qword_27D8D50E8, type metadata accessor for RecoverableMessageRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B9660FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B966144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoverableMessageRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9661A8(uint64_t a1)
{
  v2 = type metadata accessor for RecoverableMessageRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B966218()
{
  result = qword_27D8D50F8;
  if (!qword_27D8D50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D50F8);
  }

  return result;
}

unint64_t sub_22B966270()
{
  result = qword_27D8D5100;
  if (!qword_27D8D5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5100);
  }

  return result;
}

unint64_t sub_22B9662C8()
{
  result = qword_27D8D5108;
  if (!qword_27D8D5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5108);
  }

  return result;
}

uint64_t sub_22B96631C(void *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v101 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v83 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v83 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v83 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v83 - v20;
  v22 = type metadata accessor for MessageRecord();
  v23 = (a1 + v22[24]);
  v25 = *v23;
  v24 = v23[1];
  v98 = v24;
  v90 = v25;
  if (v24)
  {
    sub_22B9349C8(&qword_27D8D5110, &unk_22BA15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = 0x6E6F737265505A46;
    *(inited + 40) = 0xEA00000000004449;
    *(inited + 48) = v25;
    *(inited + 56) = v24;

    v27 = sub_22B9BB884(inited);
    swift_setDeallocating();
    sub_22B967A40(inited + 32);
    sub_22B98BF80(v27);

    v96 = sub_22BA0FF5C();
  }

  else
  {
    v96 = 0;
  }

  sub_22B94498C(a1 + v22[14], v21);
  v28 = sub_22BA0FD8C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v31 = v30(v21, 1, v28);
  v100 = 0;
  if (v31 != 1)
  {
    v100 = sub_22BA0FCFC();
    (*(v29 + 8))(v21, v28);
  }

  sub_22B94498C(a1 + v22[15], v18);
  if (v30(v18, 1, v28) == 1)
  {
    v95 = 0;
  }

  else
  {
    v95 = sub_22BA0FCFC();
    (*(v29 + 8))(v18, v28);
  }

  sub_22B94498C(a1 + v22[16], v14);
  if (v30(v14, 1, v28) == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_22BA0FCFC();
    (*(v29 + 8))(v14, v28);
  }

  sub_22B94498C(a1 + v22[17], v10);
  result = v30(v10, 1, v28);
  if (result == 1)
  {
    v94 = 0;
  }

  else
  {
    v94 = sub_22BA0FCFC();
    result = (*(v29 + 8))(v10, v28);
  }

  v34 = (a1 + v22[22]);
  if (v34[1])
  {
    v35 = *v34;
    result = sub_22BA0FFCC();
    v36 = result;
  }

  else
  {
    v36 = 0;
  }

  v99 = 0;
  v37 = (a1 + v22[18]);
  if (v37[1] != 1)
  {
    v38 = v37[3];
    if (v38 >> 60 != 15)
    {
      v39 = v37[2];
      sub_22B936A50(v39, v37[3]);
      v99 = sub_22BA0FC8C();
      result = sub_22B9359A8(v39, v38);
    }
  }

  v40 = a1 + v22[19];
  if (v40[8])
  {
    v41 = 0;
  }

  else
  {
    v41 = *v40;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v91 = v41;
  if (a1[1])
  {
    v42 = *a1;
    v93 = sub_22BA0FFCC();
  }

  else
  {
    v93 = 0;
  }

  v43 = v101;
  if (a1[3])
  {
    v44 = a1[2];
    v92 = sub_22BA0FFCC();
    if (v98)
    {
LABEL_30:
      v98 = sub_22BA0FFCC();
      goto LABEL_33;
    }
  }

  else
  {
    v92 = 0;
    if (v98)
    {
      goto LABEL_30;
    }
  }

  v98 = 0;
LABEL_33:
  v45 = a1 + v22[26];
  v89 = *v45;
  v88 = v45[8];
  v46 = (a1 + v22[28]);
  if (v46[1])
  {
    v47 = *v46;
    v101 = sub_22BA0FFCC();
  }

  else
  {
    v101 = 0;
  }

  v90 = v32;
  v48 = (a1 + v22[29]);
  if (v48[1] >> 60 == 15)
  {
    v49 = 0;
  }

  else
  {
    v50 = *v48;
    v49 = sub_22BA0FC8C();
  }

  v51 = (a1 + v22[30]);
  if (v51[1])
  {
    v52 = *v51;
    v53 = sub_22BA0FFCC();
  }

  else
  {
    v53 = 0;
  }

  sub_22B94498C(a1 + v22[31], v43);
  result = v30(v43, 1, v28);
  if (result == 1)
  {
    v54 = 0;
  }

  else
  {
    v55 = v43;
    v54 = sub_22BA0FCFC();
    result = (*(v29 + 8))(v55, v28);
  }

  v56 = a1 + v22[20];
  if (v56[8])
  {
    v57 = 0;
  }

  else
  {
    v57 = *v56;
  }

  if ((v57 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (HIDWORD(v57))
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v58 = a1 + v22[23];
  v59 = *v58;
  v60 = v58[8];
  v61 = (a1 + v22[35]);
  v62 = v61[1];
  v87 = a1;
  if (v62)
  {
    v63 = *v61;
    v64 = sub_22BA0FFCC();
  }

  else
  {
    v64 = 0;
  }

  v86 = v64;
  if (v60)
  {
    v59 = 0;
  }

  if (v88)
  {
    v65 = 0;
  }

  else
  {
    v65 = v89;
  }

  v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v82 = v64;
  v81 = v59;
  LODWORD(v80) = v57;
  v79 = v54;
  v85 = v53;
  v78 = v53;
  v84 = v49;
  v77 = v49;
  v76 = v65;
  v67 = v98;
  v68 = v92;
  v69 = v93;
  v97 = v54;
  v70 = v99;
  v72 = v95;
  v71 = v96;
  v73 = v100;
  v74 = v90;
  v75 = v94;
  v91 = [v66 initWithSenderInfo:v96 time:v100 timeRead:v95 timeDelivered:v90 timePlayed:v94 subject:v36 body:0 bodyData:v99 attributes:0 fileTransferGUIDs:0 flags:v91 guid:v93 messageID:0 account:0 accountID:0 service:v92 handle:v98 roomName:0 unformattedID:0 countryCode:0 expireState:v76 balloonBundleID:v101 payloadData:v77 expressiveSendStyleID:v78 timeExpressiveSendPlayed:v79 bizIntent:0 locale:0 biaReferenceID:0 errorType:v80 threadIdentifier:0 syndicationRanges:0 syncedSyndicationRanges:0 partCount:v81 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:0 cloudKitChatID:v82];

  sub_22B93697C(v87);
  return v91;
}

void sub_22B966A88(void *a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v14 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v119 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v117 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v117 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v117 - v28;
  if (a1)
  {
    v117 = a5;
    v118 = a6;
    v30 = a1;
    v123 = a3;
    v120 = a4;
    sub_22B9B26C0(a1, v29);
    v31 = sub_22BA0FD8C();
    v32 = *(*(v31 - 8) + 48);
    v121 = *(v31 - 8);
    v122 = v32;
    v33 = 0;
    if (v32(v29, 1, v31) != 1)
    {
      v33 = sub_22BA0FCFC();
      (*(v121 + 8))(v29, v31);
    }

    [v7 setTimeExpressiveSendPlayed_];

    a4 = v120;
    sub_22B9B26CC(a1, v26);
    if (v122(v26, 1, v31) == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = sub_22BA0FCFC();
      (*(v121 + 8))(v26, v31);
    }

    [v7 setTimePlayed_];

    sub_22B9B26D8(a1, v22);
    if (v122(v22, 1, v31) == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_22BA0FCFC();
      (*(v121 + 8))(v22, v31);
    }

    [v7 setTimeRead_];

    v45 = [v30 baloonBundleId];
    [v7 setBalloonBundleID_];

    v46 = [v30 expressiveSendId];
    [v7 setExpressiveSendStyleID_];

    v47 = [v30 messageBodyData];
    if (v47)
    {
      v48 = v47;
      v49 = sub_22BA0FCAC();
      v51 = v50;

      v52 = sub_22BA0FC8C();
      sub_22B9359BC(v49, v51);
    }

    else
    {

      v52 = 0;
    }

    [v7 setBodyData_];

    v53 = [v30 messageSubject];
    [v7 setSubject_];

    v54 = v30;
    v55 = [v54 messageSummaryInfo];
    if (v55)
    {
      v56 = v55;
      v57 = sub_22BA0FCAC();
      v59 = v58;

      v60 = sub_22BA0FC8C();
      sub_22B9359BC(v57, v59);
    }

    else
    {
      v60 = 0;
    }

    v61 = JWDecodeDictionary();

    if (v61)
    {
      v62 = sub_22BA0FF6C();

      v63 = sub_22B98963C(v62);

      if (v63)
      {
        sub_22B98C248(v63);

        v63 = sub_22BA0FF5C();
      }

      a4 = v120;
    }

    else
    {

      v63 = 0;
    }

    [v7 setMessageSummaryInfo_];

    v64 = [v54 payloadData];
    if (v64)
    {
      v65 = v64;
      v66 = sub_22BA0FCAC();
      v68 = v67;

      v69 = sub_22BA0FC8C();
      sub_22B9359BC(v66, v68);
    }

    else
    {

      v69 = 0;
    }

    [v7 setPayloadData_];

    v70 = v119;
    v71 = a1;
    v38 = v123;
    sub_22B9B26E4(v71, v119);
    if (v122(v70, 1, v31) == 1)
    {
      v72 = 0;
    }

    else
    {
      v72 = sub_22BA0FCFC();
      (*(v121 + 8))(v70, v31);
    }

    v43 = v117;
    a6 = v118;
    [v7 setTimeDelivered_];

    v73 = [v54 expireState];
    [v7 setExpireState_];
    if (a2)
    {
LABEL_33:
      v74 = [a2 threadIdentifier];
      [v7 setThreadIdentifier_];

      if (!v38)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v35 = sub_22BA0FEFC();
    sub_22B936CA8(v35, qword_28141AD10);

    v36 = sub_22BA0FEDC();
    v37 = sub_22BA1044C();

    v38 = a3;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = a5;
      v42 = v40;
      v124 = v40;
      *v39 = 136315138;
      v43 = v41;
      *(v39 + 4) = sub_22B99153C(v41, a6, &v124);
      _os_log_impl(&dword_22B92A000, v36, v37, "No Proto for IMMessageItem %s", v39, 0xCu);
      sub_22B936C4C(v42);
      MEMORY[0x23189ADD0](v42, -1, -1);
      MEMORY[0x23189ADD0](v39, -1, -1);

      if (a2)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v43 = a5;

      if (a2)
      {
        goto LABEL_33;
      }
    }
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v80 = sub_22BA0FEFC();
  sub_22B936CA8(v80, qword_28141AD10);

  v81 = sub_22BA0FEDC();
  v82 = sub_22BA1042C();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v124 = v84;
    *v83 = 136315138;
    *(v83 + 4) = sub_22B99153C(v43, a6, &v124);
    _os_log_impl(&dword_22B92A000, v81, v82, "No Proto2 for IMMessageItem %s", v83, 0xCu);
    sub_22B936C4C(v84);
    MEMORY[0x23189ADD0](v84, -1, -1);
    MEMORY[0x23189ADD0](v83, -1, -1);
  }

  if (!v38)
  {
LABEL_34:
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v75 = sub_22BA0FEFC();
    sub_22B936CA8(v75, qword_28141AD10);

    v76 = sub_22BA0FEDC();
    v77 = sub_22BA1042C();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v124 = v79;
      *v78 = 136315138;
      *(v78 + 4) = sub_22B99153C(v43, a6, &v124);
      _os_log_impl(&dword_22B92A000, v76, v77, "No Proto3 for IMMessageItem %s", v78, 0xCu);
      sub_22B936C4C(v79);
      MEMORY[0x23189ADD0](v79, -1, -1);
      MEMORY[0x23189ADD0](v78, -1, -1);
    }

    if (!a4)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_46:
  v85 = v38;
  [v7 setCMMState_];
  v86 = [v85 cmmAssetOffset];

  [v7 setCMMAssetOffset_];
  if (!a4)
  {
    return;
  }

LABEL_47:
  v87 = a4;
  if ([v87 hasActualService])
  {
    v88 = [v87 actualService];
    [v7 setService_];
  }

  if ([v87 hasScheduleType] && (objc_msgSend(v87, sel_hasScheduleState) & 1) != 0)
  {
    if ([v87 hasScheduleType])
    {
      v89 = [v87 scheduleType];

      v90 = v89;
    }

    else
    {

      v90 = 0;
    }

    [v7 setScheduleType_];
    if ([v87 hasScheduleState])
    {
      v91 = [v87 scheduleState];

      v92 = v91;
    }

    else
    {

      v92 = 0;
    }

    [v7 setScheduleState_];
  }

  else
  {
  }

  if ([v87 hasActualParentChatId])
  {
    v93 = [v87 actualParentChatId];
    if (v93)
    {
      v94 = v93;
      v95 = sub_22BA0FFFC();
      v97 = v96;
      v98 = [v7 cloudKitChatID];
      if (v98)
      {
        v99 = v98;
        v100 = sub_22BA0FFFC();
        v102 = v101;

        if (v95 == v100 && v97 == v102)
        {

          return;
        }

        v103 = sub_22BA10C6C();

        if (v103)
        {

          return;
        }
      }

      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v104 = sub_22BA0FEFC();
      sub_22B936CA8(v104, qword_28141AD10);

      v105 = v7;
      v106 = sub_22BA0FEDC();
      v107 = sub_22BA1042C();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v124 = v109;
        *v108 = 136315394;
        v110 = sub_22B99153C(v95, v97, &v124);

        *(v108 + 4) = v110;
        *(v108 + 12) = 2080;
        v111 = [v105 cloudKitChatID];
        if (v111)
        {
          v112 = v111;
          v113 = sub_22BA0FFFC();
          v115 = v114;
        }

        else
        {
          v115 = 0xE300000000000000;
          v113 = 7104878;
        }

        v116 = sub_22B99153C(v113, v115, &v124);

        *(v108 + 14) = v116;
        _os_log_impl(&dword_22B92A000, v106, v107, "Taking %s from proto4 over %s", v108, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v109, -1, -1);
        MEMORY[0x23189ADD0](v108, -1, -1);
      }

      else
      {
      }

      [v105 setCloudKitChatID_];
    }
  }
}

id sub_22B967888(uint64_t a1)
{
  v2 = type metadata accessor for MessageRecord();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B9679F4();
  sub_22B936918(a1, v7);
  v8 = sub_22B96631C(v7);
  v9 = a1 + *(v3 + 144);
  v10 = *v9;
  if (*v9 == 1)
  {
    return v8;
  }

  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v21 = v13;
  v22 = v10;
  v14 = v11;
  v15 = v12;
  result = [v8 guid];
  if (result)
  {
    v17 = result;
    v18 = sub_22BA0FFFC();
    v20 = v19;

    sub_22B966A88(v10, v11, v12, v13, v18, v20);

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_22B9679F4()
{
  result = qword_281414B90;
  if (!qword_281414B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B90);
  }

  return result;
}

uint64_t sub_22B967A40(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5118, &qword_22BA16E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B967AB8()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B967B1C()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B967B68@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA10AAC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_22B967BE8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22BA10AAC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22B967C40(uint64_t a1)
{
  v2 = sub_22B968C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B967C7C(uint64_t a1)
{
  v2 = sub_22B968C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B967CB8()
{
  v0 = sub_22BA0FA9C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22BA0FA8C();
  qword_28141ADD8 = result;
  return result;
}

uint64_t sub_22B967CF8()
{
  v0 = sub_22BA0FADC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_22BA0FACC();
  result = sub_22BA0FAAC();
  qword_27D8DE1D0 = v3;
  return result;
}

uint64_t sub_22B967D44(void *a1, uint64_t a2)
{
  v5 = sub_22B9349C8(&qword_27D8D5138, &qword_22BA15218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31 - v9;
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B968C40();
  sub_22BA10D9C();
  v12 = *(a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v32 = v10;
    v33 = v6;
    v34 = v5;
    v36 = v2;
    v43 = MEMORY[0x277D84F90];
    sub_22B968140(0, v12, 0);
    v13 = v43;
    v14 = (a2 + 72);
    while (1)
    {
      v35 = v13;
      v15 = *(v14 - 5);
      v16 = *(v14 - 4);
      v17 = *(v14 - 3);
      v18 = *(v14 - 2);
      v20 = *(v14 - 1);
      v19 = *v14;
      v21 = qword_27D8D4980;

      if (v21 != -1)
      {
        swift_once();
      }

      v37 = v15;
      v38 = v16;
      v39 = v17;
      v40 = v18;
      v41 = v20;
      v42 = v19;
      sub_22B968CE8();
      v22 = v36;
      v23 = sub_22BA0FABC();
      if (v22)
      {
        break;
      }

      v25 = v23;
      v26 = v24;
      v36 = 0;

      v13 = v35;
      v43 = v35;
      v28 = *(v35 + 16);
      v27 = *(v35 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22B968140((v27 > 1), v28 + 1, 1);
        v13 = v43;
      }

      v14 += 6;
      *(v13 + 16) = v28 + 1;
      v29 = v13 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      if (!--v12)
      {
        v6 = v33;
        v5 = v34;
        v10 = v32;
        goto LABEL_11;
      }
    }

    (*(v33 + 8))(v32, v34);
  }

  else
  {
LABEL_11:
    v37 = v13;
    sub_22B9349C8(&qword_27D8D5128, &qword_22BA15208);
    sub_22B968D3C(&qword_27D8D5148, sub_22B968DB4);
    sub_22BA10BEC();
    (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_22B96806C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22B9688AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

size_t sub_22B9680C0(size_t a1, int64_t a2, char a3)
{
  result = sub_22B968180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B9680E0(char *a1, int64_t a2, char a3)
{
  result = sub_22B968358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B968100(char *a1, int64_t a2, char a3)
{
  result = sub_22B968464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B968120(char *a1, int64_t a2, char a3)
{
  result = sub_22B968570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B968140(char *a1, int64_t a2, char a3)
{
  result = sub_22B968690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22B968160(char *a1, int64_t a2, char a3)
{
  result = sub_22B96879C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22B968180(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22B9349C8(&qword_27D8D5180, &unk_22BA15390);
  v10 = *(type metadata accessor for DatabaseRecord() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DatabaseRecord() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22B968358(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5160, &qword_22BA15228);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B968464(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22B968570(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5130, &qword_22BA15210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B968690(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5158, &qword_22BA15220);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22B96879C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22B9688AC(uint64_t *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D5120, &qword_22BA15200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v24 - v7;
  v9 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B968C40();
  sub_22BA10D8C();
  if (v1)
  {
    goto LABEL_3;
  }

  sub_22B9349C8(&qword_27D8D5128, &qword_22BA15208);
  sub_22B968D3C(&unk_281414C30, sub_22B9363C8);
  sub_22BA10AFC();
  if (v32)
  {
    v11 = v32;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  if (!v12)
  {

    (*(v4 + 8))(v8, v3);
    v4 = MEMORY[0x277D84F90];
LABEL_3:
    sub_22B936C4C(a1);
    return v4;
  }

  v26 = v8;
  v27 = v4;
  v28 = v3;
  v29 = a1;
  v36 = MEMORY[0x277D84F90];
  result = sub_22B968120(0, v12, 0);
  v13 = 0;
  v4 = v36;
  v14 = (v11 + 40);
  v30 = v12;
  v31 = v11;
  while (v13 < *(v11 + 16))
  {
    v16 = *(v14 - 1);
    v15 = *v14;
    sub_22B936A50(v16, *v14);
    if (qword_2814158B8 != -1)
    {
      swift_once();
    }

    sub_22B968C94();
    sub_22BA0FA7C();
    result = sub_22B9359BC(v16, v15);
    v18 = v32;
    v17 = v33;
    v19 = v34;
    v20 = v35;
    v36 = v4;
    v22 = *(v4 + 16);
    v21 = *(v4 + 24);
    if (v22 >= v21 >> 1)
    {
      v24 = v35;
      v25 = v34;
      result = sub_22B968120((v21 > 1), v22 + 1, 1);
      v20 = v24;
      v19 = v25;
      v4 = v36;
    }

    ++v13;
    *(v4 + 16) = v22 + 1;
    v23 = v4 + 48 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v17;
    *(v23 + 48) = v19;
    *(v23 + 64) = v20;
    v14 += 2;
    v11 = v31;
    if (v30 == v13)
    {
      (*(v27 + 8))(v26, v28);

      a1 = v29;
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B968C40()
{
  result = qword_2814158D0;
  if (!qword_2814158D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158D0);
  }

  return result;
}

unint64_t sub_22B968C94()
{
  result = qword_281415E58;
  if (!qword_281415E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E58);
  }

  return result;
}

unint64_t sub_22B968CE8()
{
  result = qword_27D8D5140;
  if (!qword_27D8D5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5140);
  }

  return result;
}

uint64_t sub_22B968D3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(&qword_27D8D5128, &qword_22BA15208);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B968DB4()
{
  result = qword_27D8D5150;
  if (!qword_27D8D5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5150);
  }

  return result;
}

unint64_t sub_22B968E1C()
{
  result = qword_27D8D5178;
  if (!qword_27D8D5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5178);
  }

  return result;
}

unint64_t sub_22B968E74()
{
  result = qword_2814158C0;
  if (!qword_2814158C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158C0);
  }

  return result;
}

unint64_t sub_22B968ECC()
{
  result = qword_2814158C8;
  if (!qword_2814158C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814158C8);
  }

  return result;
}

uint64_t sub_22B968F20()
{
  type metadata accessor for RecordStoreRegistry();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_28141AE28 = result;
  return result;
}

uint64_t sub_22B968F70@<X0>(void *a1@<X8>)
{
  v2 = *(sub_22BA0FDCC() - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20]();
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_28141AE20;
  if (qword_28141AE20)
  {
    v8 = qword_28141AE08;
    if (qword_28141AE08)
    {
      v41 = a1;
      v39 = v4;
      v9 = qword_281414B60;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain_n();
      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_281414B68;
      v11 = qword_28141ACE8;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = qword_28141ACF0;
      v40 = type metadata accessor for CloudState();
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = v12;
      v13[6] = v7;
      v13[7] = v8;
      v14 = v12;
      v15 = sub_22BA0FFCC();
      v38 = v14;
      v16 = [v14 stringForKey_];

      if (v16)
      {
        v17 = sub_22BA0FFFC();
        v19 = v18;
      }

      else
      {
        sub_22BA0FDBC();
        v32 = sub_22BA0FD9C();
        v33 = v2;
        v17 = v32;
        v19 = v34;
        (*(v33 + 8))(v6, v39);

        v35 = sub_22BA0FFCC();
        v16 = sub_22BA0FFCC();
        [v38 setObject:v35 forKey:v16];
      }

      v13[4] = v17;
      v13[5] = v19;
      v36 = v41;
      v41[3] = v40;
      v36[4] = &off_283F589F0;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      *v36 = v13;
    }

    else
    {
      v26 = qword_281414D30;
      swift_unknownObjectRetain();
      if (v26 != -1)
      {
        swift_once();
      }

      v27 = sub_22BA0FEFC();
      sub_22B936CA8(v27, qword_28141AD40);
      v28 = sub_22BA0FEDC();
      v29 = sub_22BA1044C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_22B92A000, v28, v29, "No syncStateManager found for cloudState", v30, 2u);
        MEMORY[0x23189ADD0](v30, -1, -1);
      }

      sub_22B96F460();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v20 = sub_22BA0FEFC();
    sub_22B936CA8(v20, qword_28141AD40);
    v21 = sub_22BA0FEDC();
    v22 = sub_22BA1044C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22B92A000, v21, v22, "No syncTokenStore found for cloudState", v23, 2u);
      MEMORY[0x23189ADD0](v23, -1, -1);
    }

    sub_22B96F460();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  return result;
}

__n128 sub_22B969400@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 1952540739;
  *(&v11 + 1) = 0xE400000000000000;
  LOBYTE(v12) = 0;
  *(&v12 + 1) = 0x6F5465676E616863;
  v13 = 0xEB000000006E656BLL;
  v14.n128_u64[0] = &unk_283F51378;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 1952540739;
  v18[1] = 0xE400000000000000;
  v19 = 0;
  v20 = 0x6F5465676E616863;
  v21 = 0xEB000000006E656BLL;
  v22 = 0;
  v23 = &unk_283F51378;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B9695D0@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0x3174616843;
  *(&v11 + 1) = 0xE500000000000000;
  LOBYTE(v12) = 1;
  *(&v12 + 1) = 0xD000000000000010;
  v13 = 0x800000022BA1CCA0;
  v14.n128_u64[0] = &unk_283F513A8;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0x3174616843;
  v18[1] = 0xE500000000000000;
  v19 = 1;
  v20 = 0xD000000000000010;
  v21 = 0x800000022BA1CCA0;
  v22 = 0;
  v23 = &unk_283F513A8;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B9697A8@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 1952540739;
  *(&v11 + 1) = 0xE400000000000000;
  LOBYTE(v12) = 0;
  *(&v12 + 1) = 0xD000000000000018;
  *&v13 = 0x800000022BA1CA80;
  *(&v13 + 1) = &unk_283F513D8;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 1952540739;
  v18[1] = 0xE400000000000000;
  v19 = 0;
  v20 = 0xD000000000000018;
  v21 = 0x800000022BA1CA80;
  v22 = &unk_283F513D8;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96997C@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0x6567617373654DLL;
  *(&v11 + 1) = 0xE700000000000000;
  LOBYTE(v12) = 2;
  *(&v12 + 1) = 0xD000000000000013;
  v13 = 0x800000022BA1C4C0;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0x6567617373654DLL;
  v18[1] = 0xE700000000000000;
  v19 = 2;
  v20 = 0xD000000000000013;
  v21 = 0x800000022BA1C4C0;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B969B54@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  strcpy(&v11, "ChatBotMessage");
  HIBYTE(v11) = -18;
  LOBYTE(v12) = 7;
  *(&v12 + 1) = 0xD000000000000019;
  v13 = 0x800000022BA1CC80;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  strcpy(v18, "ChatBotMessage");
  v18[15] = -18;
  v18[16] = 7;
  v19 = 0xD000000000000019;
  v20 = 0x800000022BA1CC80;
  v21 = 0;
  v22 = 0;
  v23 = a1 & 1;
  v24 = 0;
  v25 = 1;
  v27 = 0;
  v28 = 0;
  v26 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B969D38@<Q0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for OSActivity();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v8 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v9 = swift_unknownObjectRetain();
  os_activity_scope_enter(v9, (v8 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v14[104] = 1;
  *&v15 = 0x656D686361747441;
  *(&v15 + 1) = 0xEA0000000000746ELL;
  LOBYTE(v16) = 3;
  *(&v16 + 1) = 0xD000000000000019;
  *&v17 = 0x800000022BA1CAC0;
  *(&v17 + 1) = a2;
  v18.n128_u64[0] = a3;
  v18.n128_u8[8] = a1 & 1;
  *&v19 = 0;
  BYTE8(v19) = 1;
  v21 = 0;
  v20 = v8;
  v22[0] = 0x656D686361747441;
  v22[1] = 0xEA0000000000746ELL;
  v23 = 3;
  v24 = 0xD000000000000019;
  v25 = 0x800000022BA1CAC0;
  v26 = a2;
  v27 = a3;
  v28 = a1 & 1;
  v29 = 0;
  v30 = 1;
  v32 = 0;
  v33 = 0;
  v31 = v8;
  sub_22B951748(&v15, v14);
  sub_22B96F8A4(v22);
  a4[3] = &type metadata for SyncZoneInfo;
  a4[4] = &off_283F57268;
  v10 = swift_allocObject();
  *a4 = v10;
  v11 = v20;
  *(v10 + 80) = v19;
  *(v10 + 96) = v11;
  *(v10 + 112) = v21;
  v12 = v16;
  *(v10 + 16) = v15;
  *(v10 + 32) = v12;
  result = v18;
  *(v10 + 48) = v17;
  *(v10 + 64) = result;
  return result;
}

__n128 sub_22B969F24@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0xD000000000000011;
  *(&v11 + 1) = 0x800000022BA1CC40;
  LOBYTE(v12) = 8;
  *(&v12 + 1) = 0xD00000000000001CLL;
  *&v13 = 0x800000022BA1CC60;
  *(&v13 + 1) = &unk_283F51538;
  v14.n128_u64[0] = &unk_283F51598;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0xD000000000000011;
  v18[1] = 0x800000022BA1CC40;
  v19 = 8;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000022BA1CC60;
  v22 = &unk_283F51538;
  v23 = &unk_283F51598;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96A10C@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0x73657461647055;
  *(&v11 + 1) = 0xE700000000000000;
  LOBYTE(v12) = 4;
  *(&v12 + 1) = 0xD000000000000011;
  v13 = 0x800000022BA1CC20;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0x73657461647055;
  v18[1] = 0xE700000000000000;
  v19 = 4;
  v20 = 0xD000000000000011;
  v21 = 0x800000022BA1CC20;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96A2E4@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0xD000000000000012;
  *(&v11 + 1) = 0x800000022BA1CBE0;
  LOBYTE(v12) = 5;
  *(&v12 + 1) = 0xD00000000000001DLL;
  v13 = 0x800000022BA1CC00;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0xD000000000000012;
  v18[1] = 0x800000022BA1CBE0;
  v19 = 5;
  v20 = 0xD00000000000001DLL;
  v21 = 0x800000022BA1CC00;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96A4BC@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0xD000000000000019;
  *(&v11 + 1) = 0x800000022BA1CB90;
  LOBYTE(v12) = 9;
  *(&v12 + 1) = 0xD000000000000024;
  v13 = 0x800000022BA1CBB0;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0xD000000000000019;
  v18[1] = 0x800000022BA1CB90;
  v19 = 9;
  v20 = 0xD000000000000024;
  v21 = 0x800000022BA1CBB0;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

__n128 sub_22B96A694@<Q0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_2814160E0 != -1)
  {
    swift_once();
  }

  *(v4 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  v10[104] = 1;
  *&v11 = 0xD000000000000010;
  *(&v11 + 1) = 0x800000022BA1CB50;
  LOBYTE(v12) = 6;
  *(&v12 + 1) = 0xD00000000000001BLL;
  v13 = 0x800000022BA1CB70;
  v14.n128_u64[0] = 0;
  v14.n128_u8[8] = a1 & 1;
  *&v15 = 0;
  BYTE8(v15) = 1;
  v17 = 0;
  v16 = v4;
  v18[0] = 0xD000000000000010;
  v18[1] = 0x800000022BA1CB50;
  v19 = 6;
  v20 = 0xD00000000000001BLL;
  v21 = 0x800000022BA1CB70;
  v22 = 0;
  v23 = 0;
  v24 = a1 & 1;
  v25 = 0;
  v26 = 1;
  v28 = 0;
  v29 = 0;
  v27 = v4;
  sub_22B951748(&v11, v10);
  sub_22B96F8A4(v18);
  a2[3] = &type metadata for SyncZoneInfo;
  a2[4] = &off_283F57268;
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v16;
  *(v6 + 80) = v15;
  *(v6 + 96) = v7;
  *(v6 + 112) = v17;
  v8 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v8;
  result = v14;
  *(v6 + 48) = v13;
  *(v6 + 64) = result;
  return result;
}

uint64_t sub_22B96A870@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  if (v3 > 4)
  {
    if (*a1 <= 6u)
    {
      if (v3 == 5)
      {
        return sub_22B96BDB4(a3);
      }

      else
      {
        v25 = 6;
        v18 = *MEMORY[0x277D86298];
        v21 = sub_22BA0FFCC();
        IMBagIntValueWithDefault();

        sub_22B9DBA9C();
        sub_22B96C910(&v25, 12, 13, v22, a2 & 1, a3);
        return swift_unknownObjectRelease();
      }
    }

    else if (v3 == 7)
    {
      return sub_22B96C35C(a2 & 1, a3);
    }

    else if (v3 == 8)
    {
      return sub_22B96C6D8(a2 & 1, a3);
    }

    else
    {
      sub_22B96F460();
      swift_allocError();
      *v14 = 2;
      return swift_willThrow();
    }
  }

  else
  {
    if (*a1 <= 1u)
    {
      if (!*a1)
      {
        return sub_22B96AA6C(a3);
      }

      v23 = 1;
      sub_22B9DBCF0();
      v7 = v17;
      v8 = &v23;
      v9 = a2 & 1;
      v10 = a3;
      v11 = 2;
      v12 = 3;
    }

    else
    {
      if (v3 == 2)
      {
        return sub_22B96B890(a2 & 1, a3);
      }

      if (v3 != 3)
      {
        return sub_22B96C070(a2 & 1, a3);
      }

      v24 = 3;
      sub_22B9DB944();
      v7 = v6;
      v8 = &v24;
      v9 = a2 & 1;
      v10 = a3;
      v11 = 6;
      v12 = 7;
    }

    sub_22B96C910(v8, v11, v12, v7, v9, v10);
    return swift_unknownObjectRelease();
  }
}