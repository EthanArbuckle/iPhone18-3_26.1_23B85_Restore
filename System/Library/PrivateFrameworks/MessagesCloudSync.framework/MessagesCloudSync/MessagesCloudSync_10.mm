uint64_t sub_22BA027BC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22BA02580(*a1);
  v5 = v4;
  if (v3 == sub_22BA02580(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22BA02844()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA02580(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA028A8()
{
  sub_22BA02580(*v0);
  sub_22BA1008C();
}

uint64_t sub_22BA028FC()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA02580(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0295C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22BA02EF8();
  *a2 = result;
  return result;
}

unint64_t sub_22BA0298C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22BA02580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22BA029BC()
{
  result = qword_27D8D5BA8;
  if (!qword_27D8D5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5BA8);
  }

  return result;
}

uint64_t sub_22BA02A10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22B936B20((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_22BA02A5C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22B936B20(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_22B936C98(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_22B936BEC(v22, &qword_27D8D5BB0, &qword_22BA1AC28);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_22BA02BBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_22BA02A5C(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_22B936C98(v49, v47);
  v14 = *a5;
  result = sub_22B990A58(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_22B9D877C(v20, a4 & 1);
    v22 = *a5;
    result = sub_22B990A58(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22BA10CBC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_22B9EBF40();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_22B936B20(*(*a5 + 56) + 32 * result, v46);
    sub_22B936C4C(v47);

    v26 = *(v24 + 56);
    sub_22B936C4C((v26 + v25));
    sub_22B936C98(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_22B936C98(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_22BA02A5C(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_22B936C98(v49, v47);
        v35 = *a5;
        result = sub_22B990A58(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_22B9D877C(v39, 1);
          v40 = *a5;
          result = sub_22B990A58(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_22B936B20(*(*a5 + 56) + 32 * result, v46);
          sub_22B936C4C(v47);

          v34 = *(v32 + 56);
          sub_22B936C4C((v34 + v33));
          sub_22B936C98(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_22B936C98(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_22BA02A5C(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_22B951944();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22BA02EF8()
{
  v0 = sub_22BA10C7C();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22BA02F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22BA02FEC();
}

uint64_t sub_22BA02FEC()
{
  v1[9] = v0;
  v2 = *(*(sub_22B9349C8(&qword_27D8D5BB8, &qword_22BA1AC58) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for RecoverableMessageRecord();
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = *(*(sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = sub_22BA0FD8C();
  v1[21] = v7;
  v8 = *(v7 - 8);
  v1[22] = v8;
  v9 = *(v8 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BA031D8, 0, 0);
}

uint64_t sub_22BA031D8()
{
  v125 = v0;
  v1 = *(v0 + 72);
  v2 = *v1;
  *(v0 + 208) = *v1;
  v3 = v1[1];
  *(v0 + 216) = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  sub_22B9934AC(v1 + *(*(v0 + 96) + 52), v6, &unk_27D8D4A90, &qword_22BA126A0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_22B936BEC(*(v0 + 160), &unk_27D8D4A90, &qword_22BA126A0);
LABEL_4:
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 72);
    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD10);
    sub_22B966144(v9, v8);
    sub_22B966144(v9, v7);
    v11 = sub_22BA0FEDC();
    v121 = sub_22BA1044C();
    v12 = os_log_type_enabled(v11, v121);
    v13 = *(v0 + 120);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v123 = v117;
      *v14 = 136315394;
      v15 = *(v13 + 8);
      v16 = *(v0 + 120);
      if (v15)
      {
        *(v0 + 48) = *v16;
        *(v0 + 56) = v15;

        v17 = sub_22BA1005C();
        v19 = v18;
        sub_22B9661A8(v16);
      }

      else
      {
        v17 = 7104878;
        sub_22B9661A8(*(v0 + 120));
        v19 = 0xE300000000000000;
      }

      v37 = *(v0 + 168);
      v36 = *(v0 + 176);
      v38 = *(v0 + 152);
      v39 = *(v0 + 112);
      v40 = *(v0 + 96);
      v41 = sub_22B99153C(v17, v19, &v123);

      *(v14 + 4) = v41;
      *(v14 + 12) = 2080;
      sub_22B9934AC(v39 + *(v40 + 52), v38, &unk_27D8D4A90, &qword_22BA126A0);
      if ((*(v36 + 48))(v38, 1, v37) == 1)
      {
        v42 = 7104878;
        sub_22B936BEC(*(v0 + 152), &unk_27D8D4A90, &qword_22BA126A0);
        v43 = 0xE300000000000000;
      }

      else
      {
        v44 = *(v0 + 184);
        v45 = *(v0 + 192);
        v47 = *(v0 + 168);
        v46 = *(v0 + 176);
        (*(v46 + 32))(v45, *(v0 + 152), v47);
        (*(v46 + 16))(v44, v45, v47);
        v42 = sub_22BA1005C();
        v43 = v48;
        (*(v46 + 8))(v45, v47);
      }

      sub_22B9661A8(*(v0 + 112));
      v49 = sub_22B99153C(v42, v43, &v123);

      *(v14 + 14) = v49;
      _os_log_impl(&dword_22B92A000, v11, v121, "Failed reading recoverable message record, guid: %s, deleteDate: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v117, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    else
    {
      v20 = *(v0 + 112);

      sub_22B9661A8(v20);
      sub_22B9661A8(v13);
    }

    sub_22BA0423C();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    goto LABEL_23;
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 72);
  (*(*(v0 + 176) + 32))(*(v0 + 200), *(v0 + 160), *(v0 + 168));
  v23 = (v22 + *(v21 + 56));
  v24 = *v23;
  *(v0 + 224) = *v23;
  v25 = v23[1];
  *(v0 + 232) = v25;
  if (v25 >> 60 != 15)
  {

    sub_22B936A3C(v24, v25);
    v34 = sub_22BA0FC8C();
    v35 = JWDecodeCodableObjectWithStandardAllowlist();

    if (v35)
    {
      sub_22BA107AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v123 = 0u;
      v124 = 0u;
    }

    v75 = v124;
    *(v0 + 16) = v123;
    *(v0 + 32) = v75;
    if (*(v0 + 40))
    {
      sub_22B99F640();
      if (swift_dynamicCast())
      {
        v76 = *(v0 + 64);
        v77 = qword_28141ADC8;
        *(v0 + 240) = v76;
        *(v0 + 248) = v77;
        if (v77)
        {
          v78 = qword_28141ADD0;
          *(v0 + 256) = qword_28141ADD0;
          *(v0 + 264) = *(v78 + 248);
          *(v0 + 272) = (v78 + 248) & 0xFFFFFFFFFFFFLL | 0x5D04000000000000;
          if (qword_281416450 != -1)
          {
            swift_once();
          }

          sub_22BA102EC();
          v30 = sub_22BA1029C();
          v32 = v79;
          v33 = sub_22BA03EF0;
          goto LABEL_38;
        }

        sub_22B952500();
        v104 = swift_allocError();
        swift_willThrow();
        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v105 = sub_22BA0FEFC();
        sub_22B936CA8(v105, qword_28141AD10);

        v106 = v104;
        v107 = sub_22BA0FEDC();
        v108 = sub_22BA1044C();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v120 = v0;
          v110 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *&v123 = v116;
          *v109 = 136315394;
          v111 = sub_22B99153C(v2, v3, &v123);

          *(v109 + 4) = v111;
          *(v109 + 12) = 2112;
          v112 = v104;
          v113 = _swift_stdlib_bridgeErrorToNSError();
          *(v109 + 14) = v113;
          *v110 = v113;
          _os_log_impl(&dword_22B92A000, v107, v108, "Encountered error moving recoverable message part for guid %s %@", v109, 0x16u);
          sub_22B936BEC(v110, &qword_27D8D4CD0, qword_22BA14360);
          v114 = v110;
          v0 = v120;
          MEMORY[0x23189ADD0](v114, -1, -1);
          sub_22B936C4C(v116);
          MEMORY[0x23189ADD0](v116, -1, -1);
          MEMORY[0x23189ADD0](v109, -1, -1);
        }

        else
        {
        }

        v100 = *(v0 + 200);
        v102 = *(v0 + 168);
        v101 = *(v0 + 176);
        swift_willThrow();
        sub_22B9359A8(v24, v25);

LABEL_52:
        (*(v101 + 8))(v100, v102);
LABEL_23:
        v52 = *(v0 + 192);
        v51 = *(v0 + 200);
        v53 = *(v0 + 184);
        v55 = *(v0 + 152);
        v54 = *(v0 + 160);
        v57 = *(v0 + 136);
        v56 = *(v0 + 144);
        v59 = *(v0 + 120);
        v58 = *(v0 + 128);
        v60 = *(v0 + 112);
        v115 = *(v0 + 88);
        v118 = *(v0 + 80);

        v61 = *(v0 + 8);

        return v61();
      }
    }

    else
    {

      sub_22B936BEC(v0 + 16, &unk_27D8D5A30, qword_22BA13390);
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v80 = *(v0 + 144);
    v81 = *(v0 + 72);
    v82 = sub_22BA0FEFC();
    sub_22B936CA8(v82, qword_28141AD10);
    sub_22B966144(v81, v80);
    v83 = sub_22BA0FEDC();
    v84 = sub_22BA1044C();
    v85 = os_log_type_enabled(v83, v84);
    v86 = *(v0 + 144);
    if (v85)
    {
      v122 = v84;
      v88 = *(v0 + 96);
      v87 = *(v0 + 104);
      v89 = *(v0 + 80);
      v90 = *(v0 + 88);
      v91 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *&v123 = v119;
      *v91 = 136315138;
      sub_22B966144(v86, v90);
      (*(v87 + 56))(v90, 0, 1, v88);
      sub_22B9934AC(v90, v89, &qword_27D8D5BB8, &qword_22BA1AC58);
      if ((*(v87 + 48))(v89, 1, v88) == 1)
      {
        v92 = 7104878;
        sub_22B936BEC(*(v0 + 80), &qword_27D8D5BB8, &qword_22BA1AC58);
        v93 = 0xE300000000000000;
      }

      else
      {
        v95 = *(v0 + 128);
        v94 = *(v0 + 136);
        v96 = *(v0 + 96);
        sub_22BA04290(*(v0 + 80), v94);
        sub_22B966144(v94, v95);
        v92 = sub_22BA1005C();
        v93 = v97;
        sub_22B9661A8(v94);
      }

      v98 = *(v0 + 144);
      sub_22B936BEC(*(v0 + 88), &qword_27D8D5BB8, &qword_22BA1AC58);
      sub_22B9661A8(v98);
      v99 = sub_22B99153C(v92, v93, &v123);

      *(v91 + 4) = v99;
      _os_log_impl(&dword_22B92A000, v83, v122, "Error decoding recoverable message part body into an attributed string: %s", v91, 0xCu);
      sub_22B936C4C(v119);
      MEMORY[0x23189ADD0](v119, -1, -1);
      MEMORY[0x23189ADD0](v91, -1, -1);
    }

    else
    {

      sub_22B9661A8(v86);
    }

    v100 = *(v0 + 200);
    v102 = *(v0 + 168);
    v101 = *(v0 + 176);
    sub_22BA0423C();
    swift_allocError();
    *v103 = 1;
    swift_willThrow();
    sub_22B9359A8(v24, v25);
    goto LABEL_52;
  }

  v26 = qword_28141ADC8;
  *(v0 + 280) = qword_28141ADC8;
  if (!v26)
  {
    sub_22B952500();
    v63 = swift_allocError();
    swift_willThrow();
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v64 = sub_22BA0FEFC();
    sub_22B936CA8(v64, qword_28141AD10);
    v65 = v63;
    v66 = sub_22BA0FEDC();
    v67 = sub_22BA1044C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      v70 = v63;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 4) = v71;
      *v69 = v71;
      _os_log_impl(&dword_22B92A000, v66, v67, "Error encountered moving recoverable message %@", v68, 0xCu);
      sub_22B936BEC(v69, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v69, -1, -1);
      MEMORY[0x23189ADD0](v68, -1, -1);
    }

    v72 = *(v0 + 200);
    v73 = *(v0 + 168);
    v74 = *(v0 + 176);

    swift_willThrow();
    (*(v74 + 8))(v72, v73);
    goto LABEL_23;
  }

  v27 = qword_28141ADD0;
  *(v0 + 288) = qword_28141ADD0;
  sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
  v28 = swift_allocObject();
  *(v0 + 296) = v28;
  *(v28 + 16) = xmmword_22BA13CB0;
  *(v28 + 32) = v2;
  *(v28 + 40) = v3;
  *(v0 + 304) = *(v27 + 240);
  *(v0 + 312) = (v27 + 240) & 0xFFFFFFFFFFFFLL | 0x8468000000000000;
  v29 = qword_281416450;

  if (v29 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v30 = sub_22BA1029C();
  v32 = v31;
  v33 = sub_22BA040A0;
LABEL_38:

  return MEMORY[0x2822009F8](v33, v30, v32);
}

uint64_t sub_22BA03EF0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 248);
  (*(v0 + 264))(*(v0 + 208), *(v0 + 216), *(v0 + 200), *(v0 + 240));

  return MEMORY[0x2822009F8](sub_22BA03F78, 0, 0);
}

uint64_t sub_22BA03F78()
{
  v1 = v0[30];
  sub_22B9359A8(v0[28], v0[29]);

  v2 = v0[24];
  v3 = v0[23];
  v4 = v0[20];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v12 = v0[11];
  v13 = v0[10];
  (*(v0[22] + 8))(v0[25], v0[21]);

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_22BA040A0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  (*(v0 + 304))(*(v0 + 296), *(v0 + 200));

  return MEMORY[0x2822009F8](sub_22BA04124, 0, 0);
}

uint64_t sub_22BA04124()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v11 = v0[11];
  v12 = v0[10];
  (*(v0[22] + 8))(v0[25], v0[21]);

  v9 = v0[1];

  return v9(1);
}

unint64_t sub_22BA0423C()
{
  result = qword_27D8D5BC0;
  if (!qword_27D8D5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5BC0);
  }

  return result;
}

uint64_t sub_22BA04290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoverableMessageRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BA04308()
{
  result = qword_27D8D5BC8;
  if (!qword_27D8D5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5BC8);
  }

  return result;
}

uint64_t sub_22BA0435C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_22B9358B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22BA045B0(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_22BA04650()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B943E68;

  return sub_22BA045B0(v2, v4);
}

uint64_t sub_22BA04704(uint64_t a1, void *a2)
{
  v3 = sub_22B9358B4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_22BA047D0()
{
  v7 = v0;
  v1 = *(v0 + 16);
  v2 = sub_22B9358B4((v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v6 = *(*sub_22B9358B4((v1 + 16), *(v1 + 40)) + 17);
  v3 = *v2;
  sub_22BA0903C(&v6);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22BA04874(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 24);
  v6 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B947814;

  return (sub_22BA04FE8)(a1, a2, v7, v6);
}

uint64_t sub_22BA0493C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22B945AC8;

  return v7();
}

uint64_t sub_22BA04A24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22B943E68;

  return v8();
}

uint64_t sub_22BA04B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_22BA04DF8(a3, v26 - v12);
  v14 = sub_22BA1030C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_22B936BEC(v13, &unk_27D8D5780, &qword_22BA13DB0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22BA102FC();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_22BA1029C();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_22BA1006C() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);

    return v24;
  }

LABEL_8:
  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22BA04DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BA04E68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B945AC8;

  return sub_22B99134C(a1, v5);
}

uint64_t sub_22BA04F20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B943E68;

  return sub_22B99134C(a1, v5);
}

uint64_t sub_22BA04FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  return MEMORY[0x2822009F8](sub_22BA0500C, 0, 0);
}

uint64_t sub_22BA0500C()
{
  v1 = v0[36];
  v2 = *(*sub_22B9358B4((v0[34] + 16), *(v0[34] + 40)) + 100);
  v0[2] = v0;
  v0[3] = sub_22BA05144;
  v3 = swift_continuation_init();
  v0[25] = sub_22B9349C8(&qword_27D8D5BD0, &qword_22BA1AE28);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_22BA04704;
  v0[21] = &unk_283F587F8;
  v0[22] = v3;
  [v1 verifyAllPreReqsWithRequireEnablement:v2 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22BA05144()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    v3 = sub_22BA05734;
  }

  else
  {
    v3 = sub_22BA05254;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22BA05254()
{
  if (v0[37])
  {
    v0[10] = v0;
    v0[15] = v0 + 42;
    v0[11] = sub_22BA05468;
    v1 = swift_continuation_init();
    v0[33] = sub_22B9349C8(&unk_27D8D4EE0, qword_22BA138F0);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_22BA0435C;
    v0[29] = &unk_283F58820;
    v0[30] = v1;
    [swift_unknownObjectRetain() sendDeviceIDToCloudKitWithCompletion_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
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
      _os_log_impl(&dword_22B92A000, v3, v4, "Missing backup controller did not send ping for iCloud quota grace", v5, 2u);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6(0, 0);
  }
}

uint64_t sub_22BA05468()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_22BA0598C;
  }

  else
  {
    v3 = sub_22BA05578;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22BA05578()
{
  if (*(v0 + 336))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141AD40);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1046C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 296);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Sent ping for quota grace to iCloud";
LABEL_10:
      _os_log_impl(&dword_22B92A000, v2, v3, v7, v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD40);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1044C();
    v9 = os_log_type_enabled(v2, v3);
    v10 = *(v0 + 296);
    if (v9)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Did not successfully ping iCloud for quota grace";
      goto LABEL_10;
    }
  }

  swift_unknownObjectRelease();
  v11 = *(v0 + 8);

  return v11(0, 0);
}

uint64_t sub_22BA05734()
{
  v1 = v0[38];
  swift_willThrow();
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_22BA05824;
  v4 = v0[34];
  v3 = v0[35];

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/SyncPreReqsVerifierStep.swift", 115, 2);
}

uint64_t sub_22BA05824()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22BA05920, 0, 0);
}

uint64_t sub_22BA05920()
{
  v1 = *(v0 + 304);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 304);

  return v2();
}

uint64_t sub_22BA0598C()
{
  v1 = v0[39];
  v2 = v0[37];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_22BA05A54;
  v4 = v0[39];
  v5 = v0[34];

  return sub_22B97D504(v4);
}

uint64_t sub_22BA05A54()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22BA05B50, 0, 0);
}

uint64_t sub_22BA05B50()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 312);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B92A000, v4, v5, "Error pinging iCloud for quota grace: %@", v8, 0xCu);
    sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0, 0);
}

uint64_t sub_22BA05D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BA05D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22BA05DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277CBC3E0]);
  sub_22BA0826C();
  v8 = sub_22BA101DC();
  v9 = [v7 initWithRecordIDs_];

  if (a2)
  {

    sub_22BA1059C();
  }

  v10 = v9;
  v11 = sub_22B99BA10(a3, a4, 0x6863746566, 0xE500000000000000);
  [v10 setGroup_];

  v12 = (a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v13 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v13 setQualityOfService_];
  [v13 setAllowsCellularAccess_];
  v14 = v12[3];
  v15 = v12[4];
  sub_22B9358B4(v12, v14);
  v16 = (*(v15 + 8))(v14, v15);
  if (v16)
  {
    v17 = v16;
    [v13 setAllowsCellularAccess_];
    [v13 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v10 setConfiguration_];

  return v10;
}

uint64_t sub_22BA05FA0()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Removing afterRow marker for AttachmentAssetDownload", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(*sub_22B9358B4((v5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
  v7 = sub_22BA0FFCC();
  [v6 removeObjectForKey_];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22BA0611C(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22BA061B0, 0, 0);
}

uint64_t sub_22BA061B0()
{
  v21 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[6] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v3 = *(*sub_22B9358B4((v1 + v2), *(v1 + v2 + 24)) + 24);
  v4 = sub_22B9375B4(0xAu, 0);
  v0[7] = v4;

  if (v4)
  {
    v5 = v4;
    v6 = [v5 stringValue];
    v7 = sub_22BA0FFFC();
    v9 = v8;
  }

  else
  {
    v9 = 0xE800000000000000;
    v7 = 0x29747365776F6C28;
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v10 = sub_22BA0FEFC();
  v0[8] = sub_22B936CA8(v10, qword_28141AD40);

  v11 = sub_22BA0FEDC();
  v12 = sub_22BA1046C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 134218242;
    *(v13 + 4) = 200;
    *(v13 + 12) = 2080;
    v15 = sub_22B99153C(v7, v9, v20);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_22B92A000, v11, v12, "Downloading limit %lld assets from %s", v13, 0x16u);
    sub_22B936C4C(v14);
    MEMORY[0x23189ADD0](v14, -1, -1);
    MEMORY[0x23189ADD0](v13, -1, -1);
  }

  else
  {
  }

  v0[9] = *(v0[5] + 64);
  v0[2] = v4;
  sub_22BA102EC();
  v0[10] = sub_22BA102DC();
  v16 = sub_22BA1029C();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22BA0646C, v16, v17);
}

uint64_t sub_22BA0646C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];

  v4 = [v2 batchOfRecordsMissingAssetsAfterRow:v0 + 2 withLimit:200];
  v5 = v0[2];
  v0[11] = v4;
  v0[12] = v5;
  v6 = v5;

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22BA0653C, 0, 0);
}

uint64_t sub_22BA0653C()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  if (v1)
  {
    sub_22BA0826C();
    sub_22B977228();
    v2 = sub_22BA0FF6C();
    v0[13] = v2;

    if (*(v2 + 16))
    {
      v3 = v0[12];
      if (v3)
      {
        v4 = v3;
        v5 = [v4 stringValue];
        v6 = sub_22BA0FFFC();
        v8 = v7;
      }

      else
      {
        v8 = 0xE500000000000000;
        v6 = 0x296C696E28;
      }

      v13 = v0[8];

      v14 = sub_22BA0FEDC();
      v15 = sub_22BA1046C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28[0] = v17;
        *v16 = 136315138;
        v18 = sub_22B99153C(v6, v8, v28);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_22B92A000, v14, v15, "Updating afterRow to %s", v16, 0xCu);
        sub_22B936C4C(v17);
        MEMORY[0x23189ADD0](v17, -1, -1);
        MEMORY[0x23189ADD0](v16, -1, -1);
      }

      else
      {
      }

      v19 = v0[12];
      v20 = (v0[3] + v0[6]);
      v21 = *(*sub_22B9358B4(v20, v20[3]) + 24);
      v22 = sub_22BA0FFCC();
      [v21 setObject:v19 forKey:v22];

      v23 = swift_task_alloc();
      v0[14] = v23;
      *v23 = v0;
      v23[1] = sub_22BA06894;
      v24 = v0[4];
      v25 = v0[5];
      v26 = v0[3];
      v27 = *MEMORY[0x277D85DE8];

      return sub_22BA06D08(v26, v24, v2);
    }
  }

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_22BA06AB8;
  v10 = v0[3];
  v11 = *MEMORY[0x277D85DE8];

  return sub_22BA05F80(v10);
}

uint64_t sub_22BA06894(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *(*v3 + 104);
  v13 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v9 = sub_22BA06C78;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 128) = a1;
    v9 = sub_22BA06A10;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22BA06A10()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 128);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3(v1, v2 & 1);
}

uint64_t sub_22BA06AB8()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 136);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22BA06BE0, 0, 0);
}

uint64_t sub_22BA06BE0()
{
  v4 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 8);
  v2 = *MEMORY[0x277D85DE8];

  return v1(0, 0);
}

uint64_t sub_22BA06C78()
{
  v5 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);
  v3 = *MEMORY[0x277D85DE8];

  return v1();
}

uint64_t sub_22BA06D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[55] = a3;
  v4[56] = v3;
  v4[53] = a1;
  v4[54] = a2;
  v5 = sub_22B9349C8(&qword_27D8D5BD8, &qword_22BA1AF10);
  v4[57] = v5;
  v6 = *(v5 - 8);
  v4[58] = v6;
  v7 = *(v6 + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v8 = sub_22B9349C8(&qword_27D8D5BE0, &qword_22BA1AF18);
  v4[61] = v8;
  v9 = *(v8 - 8);
  v4[62] = v9;
  v10 = *(v9 + 64) + 15;
  v4[63] = swift_task_alloc();
  v11 = sub_22B9349C8(&qword_27D8D5BE8, &qword_22BA1AF20);
  v4[64] = v11;
  v12 = *(v11 - 8);
  v4[65] = v12;
  v13 = *(v12 + 64) + 15;
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BA06ECC, 0, 0);
}

uint64_t sub_22BA06ECC()
{
  v44 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = sub_22B9358B4((v2 + 24), *(v2 + 48));
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v0 + 440);
    v39 = sub_22B980248(v4, 0);
    v41 = sub_22B9547F0(&v43, v39 + 4, v4, v5);

    v6 = sub_22B951944();
    if (v41 != v4)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v6, v7, v8);
    }

    v9 = v39;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v34 = *(v0 + 544);
  v35 = *(v0 + 536);
  v10 = *(v0 + 520);
  v11 = *(v0 + 512);
  v32 = *(v0 + 504);
  v12 = *(v0 + 496);
  v33 = *(v0 + 488);
  v36 = *(v0 + 528);
  v37 = *(v0 + 480);
  v38 = *(v0 + 464);
  v40 = *(v0 + 456);
  v42 = *(v0 + 472);
  v13 = *(v0 + 424);
  v14 = *(v0 + 432);
  v15 = sub_22B9358B4((v2 + 24), *(v2 + 48))[5];
  v16 = v3[12];
  v18 = *(v3 + 4);
  v17 = *(v3 + 5);
  *(v0 + 64) = *(v3 + 3);
  *(v0 + 80) = v18;
  *(v0 + 96) = v17;
  *(v0 + 112) = v16;
  v20 = *(v3 + 1);
  v19 = *(v3 + 2);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v20;
  *(v0 + 48) = v19;

  v21 = sub_22BA05DC8(v9, v15, v13, v14);
  *(v0 + 552) = v21;

  v22 = sub_22B9358B4((v2 + 24), *(v2 + 48));
  v23 = *v22;
  v24 = *(v22 + 1);
  *(v0 + 152) = *(v22 + 2);
  *(v0 + 136) = v24;
  *(v0 + 120) = v23;
  v25 = *(v22 + 3);
  v26 = *(v22 + 4);
  v27 = *(v22 + 5);
  *(v0 + 216) = v22[12];
  *(v0 + 200) = v27;
  *(v0 + 184) = v26;
  *(v0 + 168) = v25;
  *(v0 + 352) = &type metadata for SyncZoneInfo;
  *(v0 + 360) = &off_283F57268;
  v28 = swift_allocObject();
  *(v0 + 328) = v28;
  memmove((v28 + 16), v22, 0x68uLL);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = swift_task_alloc();
  v30[2] = v21;
  v30[3] = v29;
  v30[4] = v13;
  v30[5] = v14;
  v30[6] = v0 + 328;
  (*(v12 + 104))(v32, *MEMORY[0x277D858A0], v33);
  sub_22B951748(v0 + 120, v0 + 224);
  sub_22BA1035C();

  (*(v10 + 32))(v35, v34, v11);

  sub_22B936C4C((v0 + 328));
  (*(v10 + 16))(v36, v35, v11);
  sub_22B95194C(&qword_27D8D5BF0, &qword_27D8D5BE8, &qword_22BA1AF20);
  sub_22BA1032C();
  (*(v38 + 32))(v42, v37, v40);
  (*(v10 + 8))(v35, v11);
  *(v0 + 560) = 0;
  v6 = sub_22BA07290;
  v7 = 0;
  v8 = 0;

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BA07290()
{
  v1 = v0[59];
  swift_beginAccess();
  v2 = sub_22B95194C(&qword_27D8D5BF8, &qword_27D8D5BD8, &qword_22BA1AF10);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[71] = v4;
  *v4 = v0;
  v4[1] = sub_22BA0737C;
  v5 = v0[59];
  v6 = v0[57];

  return MEMORY[0x282200308](v0 + 49, v6, v2);
}

uint64_t sub_22BA0737C()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v7 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v4 = sub_22BA07870;
  }

  else
  {
    swift_endAccess();
    v5 = *(v2 + 400);
    *(v2 + 584) = *(v2 + 392);
    *(v2 + 592) = v5;
    *(v2 + 409) = *(v2 + 408);
    v4 = sub_22BA074AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22BA074AC()
{
  v1 = *(v0 + 409);
  if (v1 != 255)
  {
    if (v1)
    {
      v2 = *(v0 + 592);
      v3 = *(v0 + 584);
      if (!*(*(v0 + 440) + 16) || (v4 = sub_22B990B14(*(v0 + 584)), (v5 & 1) == 0))
      {
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v25 = sub_22BA0FEFC();
        sub_22B936CA8(v25, qword_28141AD40);
        v26 = v2;
        v27 = v3;
        v28 = v2;
        v29 = v27;
        v30 = sub_22BA0FEDC();
        v31 = sub_22BA1044C();

        v32 = os_log_type_enabled(v30, v31);
        v33 = *(v0 + 409);
        v34 = *(v0 + 592);
        v35 = *(v0 + 584);
        if (v32)
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412546;
          v38 = _swift_stdlib_bridgeErrorToNSError();
          *(v36 + 4) = v38;
          *(v36 + 12) = 2112;
          *(v36 + 14) = v29;
          *v37 = v38;
          v37[1] = v35;
          _os_log_impl(&dword_22B92A000, v30, v31, "While fetching assets, got an error %@ for a recordID %@ we didn't expect to fetch", v36, 0x16u);
          sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v37, -1, -1);
          MEMORY[0x23189ADD0](v36, -1, -1);

          sub_22BA082C8(v35, v34, v33);
        }

        else
        {

          sub_22BA082C8(v35, v34, v33);
        }

        v22 = sub_22BA07290;
        v23 = 0;
        v24 = 0;
        goto LABEL_17;
      }

      v6 = *(v0 + 448);
      v7 = (*(*(v0 + 440) + 56) + 16 * v4);
      *(v0 + 616) = *v7;
      *(v0 + 624) = v7[1];
      *(v0 + 632) = *(v6 + 64);

      *(v0 + 640) = sub_22BA0FFCC();
      sub_22BA102EC();
      *(v0 + 648) = sub_22BA102DC();
      v8 = sub_22BA1029C();
      v10 = v9;
      v11 = sub_22BA07B4C;
    }

    else
    {
      *(v0 + 600) = *(*(v0 + 448) + 64);
      sub_22BA102EC();
      *(v0 + 608) = sub_22BA102DC();
      v8 = sub_22BA1029C();
      v10 = v21;
      v11 = sub_22BA07A44;
    }

    v22 = v11;
    v23 = v8;
    v24 = v10;
LABEL_17:

    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  v12 = *(v0 + 552);
  v13 = *(v0 + 544);
  v14 = *(v0 + 536);
  v15 = *(v0 + 528);
  v16 = *(v0 + 504);
  v17 = *(v0 + 480);
  (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));

  v18 = *(v0 + 8);
  v19 = *(v0 + 560);

  return v18(v19, 1);
}

uint64_t sub_22BA07870()
{
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22BA078D8, 0, 0);
}

uint64_t sub_22BA078D8()
{
  *(v0 + 416) = *(v0 + 576);
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22BA07968, 0, 0);
}

uint64_t sub_22BA07968()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 504);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 456);
  v8 = *(v0 + 464);

  (*(v8 + 8))(v6, v7);

  v9 = *(v0 + 8);
  v10 = *(v0 + 576);

  return v9();
}

uint64_t sub_22BA07A44()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];

  [v2 updateAssetUsingRecord_];

  return MEMORY[0x2822009F8](sub_22BA07AC8, 0, 0);
}

uint64_t sub_22BA07AC8()
{
  v1 = *(v0 + 560);
  sub_22BA082C8(*(v0 + 584), *(v0 + 592), *(v0 + 409));
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 560) = v1 + 1;
    v2 = sub_22BA07290;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22BA07B4C()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];

  [v3 markTransferAsNotSuccessfullyDownloadedWithGUID_];

  return MEMORY[0x2822009F8](sub_22BA07BD4, 0, 0);
}

uint64_t sub_22BA07BD4()
{
  v24 = v0;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 624);
  v2 = *(v0 + 592);
  v3 = sub_22BA0FEFC();
  sub_22B936CA8(v3, qword_28141AD40);
  v4 = v2;

  v5 = v2;
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1046C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 624);
  if (v8)
  {
    v10 = *(v0 + 616);
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v22 = *(v0 + 409);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v13 = 136315394;
    v16 = sub_22B99153C(v10, v9, &v23);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22B92A000, v6, v7, "Failed to fetch asset for attachment %s %@", v13, 0x16u);
    sub_22B95DEF0(v14);
    MEMORY[0x23189ADD0](v14, -1, -1);
    sub_22B936C4C(v15);
    MEMORY[0x23189ADD0](v15, -1, -1);
    MEMORY[0x23189ADD0](v13, -1, -1);

    sub_22BA082C8(v12, v11, v22);
  }

  else
  {
    v18 = *(v0 + 592);
    v19 = *(v0 + 584);
    v20 = *(v0 + 409);

    sub_22BA082C8(v19, v18, v20);
  }

  return MEMORY[0x2822009F8](sub_22BA07290, 0, 0);
}

uint64_t sub_22BA07E28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22BA0800C();
}

uint64_t sub_22BA07EC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22BA0611C(a1, a2);
}

uint64_t sub_22BA07F6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22BA0813C();
}

uint64_t sub_22BA08028()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Starting Attachment asset download", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22BA08158()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Finished Attachment asset download", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_22BA0826C()
{
  result = qword_281414BE0;
  if (!qword_281414BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414BE0);
  }

  return result;
}

void sub_22BA082C8(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_22B99C258(a1, a2, a3 & 1);
  }
}

unint64_t sub_22BA082E0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000015;
    if (a1 != 8)
    {
      v4 = 0xD000000000000023;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000012;
    }

    v5 = 0xD000000000000014;
    if (a1 == 5)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x616E614D74616863;
    v2 = 0xD000000000000015;
    if (a1 != 3)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000012;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_22BA08458()
{
  result = qword_27D8D5C00;
  if (!qword_27D8D5C00)
  {
    sub_22B948760(&qword_27D8D5C08, qword_22BA1AF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5C00);
  }

  return result;
}

uint64_t sub_22BA084BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_22BA082E0(*a1);
  v5 = v4;
  if (v3 == sub_22BA082E0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22BA08544()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA082E0(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA085A8()
{
  sub_22BA082E0(*v0);
  sub_22BA1008C();
}

uint64_t sub_22BA085FC()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA082E0(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0865C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22BA08720();
  *a2 = result;
  return result;
}

unint64_t sub_22BA0868C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22BA082E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22BA086CC()
{
  result = qword_27D8D5C10;
  if (!qword_27D8D5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5C10);
  }

  return result;
}

uint64_t sub_22BA08720()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

BOOL sub_22BA0876C()
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v0 = sub_22BA0A634(6u, 0);
  return (v1 & 1) == 0 && v0 >= sub_22B9317A8();
}

uint64_t sub_22BA08828(unsigned __int8 a1, const char *a2)
{
  v4 = *(v2 + 24);
  v5 = sub_22B92DA70(a1, 0);
  if (v5)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v6 = sub_22BA0FEFC();
    sub_22B936CA8(v6, qword_28141AD40);
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B92A000, v7, v8, a2, v9, 2u);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }
  }

  return v5 & 1;
}

id sub_22BA08920()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    return [v1 syncCancelled];
  }

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
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_22B97D720();
    v10 = sub_22B99153C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error setting sync date: %s", v6, 0xCu);
    sub_22B936C4C(v7);
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  v11 = sub_22BA0FEDC();
  v12 = sub_22BA1044C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B92A000, v11, v12, "StateManager was nil in CloudState, returning false for isSyncCancelled.", v13, 2u);
    MEMORY[0x23189ADD0](v13, -1, -1);
  }

  return 0;
}

id sub_22BA08AEC(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    swift_unknownObjectRetain();
    v6 = sub_22BA0FFCC();
    v7 = [v5 tokenForKey_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD40);

    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_22B99153C(0xD000000000000023, 0x800000022BA1FF70, &v14);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_22B99153C(a1, a2, &v14);
      _os_log_impl(&dword_22B92A000, v9, v10, "%s: Missing sync token store, did not update change token %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    return 0;
  }

  return v7;
}

void sub_22BA08CC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(v3 + 48);
  if (v6)
  {
    swift_unknownObjectRetain();
    oslog = sub_22BA0FFCC();
    [v6 persistToken:a1 forKey:oslog];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD40);

    oslog = sub_22BA0FEDC();
    v9 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_22B99153C(0xD00000000000001ELL, 0x800000022BA1DB20, &v13);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_22B99153C(a2, a3, &v13);
      _os_log_impl(&dword_22B92A000, oslog, v9, "%s: Missing sync token store, did not update server change token for key (%s)", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }
  }
}

void sub_22BA08EA4(char a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    if (a1)
    {
      v4 = sel_setSyncStopped;
    }

    else
    {
      v4 = sel_setSyncStarted;
    }

    [v3 v4];
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    oslog = sub_22BA0FEDC();
    v6 = sub_22BA1044C();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = sub_22B97D720();
      v11 = sub_22B99153C(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_22B92A000, oslog, v6, "Encountered error sync status: %s", v7, 0xCu);
      sub_22B936C4C(v8);
      MEMORY[0x23189ADD0](v8, -1, -1);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }
  }
}

uint64_t sub_22BA0903C(_BYTE *a1)
{
  v2 = sub_22BA0FD8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v47 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v47 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v47 - v19;
  result = MEMORY[0x28223BE20](v18, v21);
  v24 = &v47 - v23;
  v25 = *a1;
  if (v25 <= 1)
  {
    if (*a1)
    {
      if (v25 == 1)
      {
        sub_22BA0FD7C();
        v30 = sub_22BA09CBC();
        if (v30)
        {
          v31 = v30;
          swift_unknownObjectRetain();
          v32 = sub_22BA0FCFC();
          v33 = sub_22BA0FFCC();
          [v31 setSyncDate:v32 forKey:v33 shouldOverride:0];

          swift_unknownObjectRelease();
        }

        v34 = *(v3 + 8);
        v34(v20, v2);
        sub_22BA0FD7C();
        v35 = sub_22BA09CBC();
        if (v35)
        {
          v36 = v35;
          swift_unknownObjectRetain();
          v37 = sub_22BA0FCFC();
          v38 = sub_22BA0FFCC();
          [v36 setSyncDate:v37 forKey:v38 shouldOverride:1];

          swift_unknownObjectRelease();
        }

        return (v34)(v16, v2);
      }
    }

    else
    {
      sub_22BA0FD7C();
      v39 = sub_22BA09CBC();
      if (v39)
      {
        v40 = v39;
        swift_unknownObjectRetain();
        v41 = sub_22BA0FCFC();
        v42 = sub_22BA0FFCC();
        [v40 setSyncDate:v41 forKey:v42 shouldOverride:0];

        swift_unknownObjectRelease();
      }

      return (*(v3 + 8))(v24, v2);
    }
  }

  else
  {
    if (v25 - 2 < 2)
    {
LABEL_5:
      sub_22BA0FD7C();
      v26 = sub_22BA09CBC();
      if (v26)
      {
        v27 = v26;
        swift_unknownObjectRetain();
        v28 = sub_22BA0FCFC();
        v29 = sub_22BA0FFCC();
        [v27 setSyncDate:v28 forKey:v29 shouldOverride:1];

        swift_unknownObjectRelease();
      }

      return (*(v3 + 8))(v12, v2);
    }

    if (v25 != 4)
    {
      if (v25 != 6)
      {
        return result;
      }

      goto LABEL_5;
    }

    sub_22BA0FD7C();
    v43 = sub_22BA09CBC();
    if (v43)
    {
      v44 = v43;
      swift_unknownObjectRetain();
      v45 = sub_22BA0FCFC();
      v46 = sub_22BA0FFCC();
      [v44 setSyncDate:v45 forKey:v46 shouldOverride:1];

      swift_unknownObjectRelease();
    }

    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_22BA09450(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = sub_22BA0FD8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_22BA0FD7C();
  if (v12 > 3)
  {
    if (v12 == 4)
    {
      if ((a2 & 1) == 0)
      {
        return (*(v7 + 8))(v11, v6);
      }

      v25 = sub_22BA09CBC();
      if (v25)
      {
        v26 = v25;
        swift_unknownObjectRetain();
        v27 = sub_22BA0FCFC();
        v28 = sub_22BA0FFCC();
        [v26 setSyncDate:v27 forKey:v28 shouldOverride:0];

        swift_unknownObjectRelease();
      }

      v17 = sub_22BA09CBC();
      if (!v17)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (v12 != 6)
    {
LABEL_16:
      if ((a2 & 1) == 0)
      {
        return (*(v7 + 8))(v11, v6);
      }

      goto LABEL_22;
    }

LABEL_11:
    if ((a2 & 1) == 0)
    {
      return (*(v7 + 8))(v11, v6);
    }

    v18 = sub_22BA09CBC();
    if (v18)
    {
      v19 = v18;
      swift_unknownObjectRetain();
      v20 = sub_22BA0FCFC();
      v21 = sub_22BA0FFCC();
      [v19 setSyncDate:v20 forKey:v21 shouldOverride:0];

      swift_unknownObjectRelease();
    }

    v17 = sub_22BA09CBC();
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if ((v12 - 1) < 3)
  {
    goto LABEL_11;
  }

  if (v12)
  {
    goto LABEL_16;
  }

  if ((a2 & 1) == 0)
  {
    return (*(v7 + 8))(v11, v6);
  }

  v13 = sub_22BA09CBC();
  if (v13)
  {
    v14 = v13;
    swift_unknownObjectRetain();
    v15 = sub_22BA0FCFC();
    v16 = sub_22BA0FFCC();
    [v14 setSyncDate:v15 forKey:v16 shouldOverride:0];

    swift_unknownObjectRelease();
  }

  v17 = sub_22BA09CBC();
  if (v17)
  {
LABEL_15:
    v22 = v17;
    swift_unknownObjectRetain();
    v23 = sub_22BA0FCFC();
    v24 = sub_22BA0FFCC();
    [v22 setSyncDate:v23 forKey:v24 shouldOverride:1];

    swift_unknownObjectRelease();
  }

LABEL_22:
  v29 = sub_22BA09CBC();
  if (v29)
  {
    v30 = v29;
    swift_unknownObjectRetain();
    v31 = sub_22BA0FCFC();
    v32 = sub_22BA0FFCC();
    [v30 setSyncDate:v31 forKey:v32 shouldOverride:1];

    swift_unknownObjectRelease();
  }

  v33 = *(v3 + 56);
  if (v33)
  {
    v34 = sub_22BA0FCFC();
    [v33 setLastSyncDate_];
  }

  return (*(v7 + 8))(v11, v6);
}

id sub_22BA0980C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  v8 = sub_22BA0FEFC();
  sub_22B936CA8(v8, qword_28141AD28);
  v9 = sub_22BA0FEDC();
  v10 = sub_22BA1046C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = v11;
    *v11 = 134217984;
    if (a2 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a2;
    }

    *(v11 + 4) = fmin(a1 / v13, 1.0);
    _os_log_impl(&dword_22B92A000, v9, v10, "Download Progress: %f", v11, 0xCu);
    MEMORY[0x23189ADD0](v12, -1, -1);
  }

  v14 = *(v4 + 56);
  if (v14)
  {
    [*(v4 + 56) setCloudKitHasAvailableRecordsToDownload_];
    if (a2 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = a2;
    }

    [v14 setLastSyncDownloadProgress_];
  }

  result = sub_22BA09CBC();
  if (result)
  {

    return [result sendBroadcastToClient];
  }

  return result;
}

void sub_22BA099D8(unsigned __int8 *a1, void *a2, void *a3)
{
  v5 = *a1;
  v6 = *(v3 + 24);
  [v6 setBool:1 forKey:*a2];
  v7 = sub_22BA0FFCC();

  [v6 setObject:v7 forKey:*a3];
}

uint64_t sub_22BA09BB4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22BA09C30()
{
  v1 = *(*v0 + 56);
  if (v1)
  {
    v2 = sub_22BA0FF5C();
    [v1 setCloudKitSyncStatistics_];
  }
}

uint64_t sub_22BA09CBC()
{
  v1 = *(v0 + 56);
  if (!v1)
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
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      v7 = sub_22B97D720();
      v9 = sub_22B99153C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_22B92A000, v3, v4, "Encountered error setting sync date: %s", v5, 0xCu);
      sub_22B936C4C(v6);
      MEMORY[0x23189ADD0](v6, -1, -1);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }
  }

  return v1;
}

uint64_t _s17MessagesCloudSync0C11CoordinatorC28readServerCountsFromDefaultsSDySSSDySSs5Int64VGGyFZ_0()
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v0 = 0;
  v1 = MEMORY[0x277D84F98];
  do
  {
    v2 = v0 + 1;
    v3 = qword_28141ACF0;
    v4 = byte_283F50DF0[v0 + 32];
    v5 = sub_22BA0A80C(v4, qword_28141ACF0);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    v8 = sub_22BA0A950(v4, v3);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v11 = sub_22BA082E0(v4);
    v13 = v12;
    sub_22B9349C8(&qword_27D8D5C80, &qword_22BA1B090);
    inited = swift_initStackObject();
    strcpy((inited + 32), "total_records");
    *(inited + 16) = xmmword_22BA13410;
    *(inited + 46) = -4864;
    *(inited + 48) = v7;
    strcpy((inited + 56), "live_records");
    *(inited + 69) = 0;
    *(inited + 70) = -5120;
    *(inited + 72) = v10;
    v15 = sub_22B9BC140(inited);
    swift_setDeallocating();
    sub_22B9349C8(&qword_27D8D5C88, &qword_22BA1B098);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BB5DC(v15, v11, v13, isUniquelyReferenced_nonNull_native);

    v0 = v2;
  }

  while (v2 != 10);
  return v1;
}

unint64_t sub_22BA09FF4()
{
  result = qword_27D8D5C90;
  if (!qword_27D8D5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5C90);
  }

  return result;
}

void sub_22BA0A048(uint64_t *a1)
{
  v2 = sub_22BA0FD8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ActionRecord();
  v14 = (a1 + *(v13 + 68));
  if (v14[1])
  {
    v15 = *v14;
    v16 = sub_22BA0FFCC();
  }

  else
  {
    v16 = 0;
  }

  sub_22B94498C(a1 + *(v13 + 64), v12);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    v17 = 0;
    if (a1[1])
    {
LABEL_6:
      v18 = *a1;
      v19 = sub_22BA0FFCC();
      goto LABEL_9;
    }
  }

  else
  {
    v17 = sub_22BA0FCFC();
    (*(v3 + 8))(v12, v2);
    if (a1[1])
    {
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_9:
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSender:v16 time:v17 guid:v19 type:1];

  if (v20)
  {
    v21 = v20;
    sub_22BA0FD6C();
    v22 = sub_22BA0FCFC();
    (*(v3 + 8))(v7, v2);
    [v21 setTimeRead_];

    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_22BA0A2A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    [v3 setChangeType_];
    sub_22B977794();
    if (v5)
    {
      v6 = sub_22BA0FFCC();
    }

    else
    {
      v6 = 0;
    }

    [v3 setOtherHandle_];

    v13 = sub_22B977D30();
    if (v13)
    {
      sub_22B98C248(v13);

      osloga = sub_22BA0FF5C();

      [v3 setMessageSummaryInfo_];
    }

    else
    {
      [v3 setMessageSummaryInfo_];
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD10);

    oslog = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_22B99153C(a2, a3, &v16);
      _os_log_impl(&dword_22B92A000, oslog, v10, "No Proto for IMParticipantChangeItem %s", v11, 0xCu);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }
  }
}

uint64_t sub_22BA0A4D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = sub_22B9358B4((v0 + 24), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  v8 = v1;
  v9 = sub_22BA10C5C();
  (*(v4 + 8))(v7, v2);
  [v8 removeObserver_];

  swift_unknownObjectRelease();
  sub_22B936C4C((v0 + 24));
  return swift_deallocClassInstance();
}

uint64_t sub_22BA0A634(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  sub_22B92DB4C(a1);
  v5 = sub_22BA0FFCC();

  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_22B949698(v11);
  }

  return a2;
}

void sub_22BA0A728()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22BA0FFCC();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_28141ACE8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_22BA0A7A0()
{
  v0 = *MEMORY[0x277D19A08];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = v0;
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    qword_28141ACF0 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BA0A80C(unsigned __int8 a1, void *a2)
{
  sub_22BA108FC();

  *&v11[0] = 0xD000000000000014;
  *(&v11[0] + 1) = 0x800000022BA20140;
  v4 = sub_22BA082E0(a1);
  MEMORY[0x231899730](v4);

  v5 = sub_22BA0FFCC();

  v6 = [a2 objectForKey_];

  if (v6)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B949698(v11);
    return 0;
  }
}

uint64_t sub_22BA0A950(unsigned __int8 a1, void *a2)
{
  sub_22BA108FC();

  *&v11[0] = 0xD000000000000013;
  *(&v11[0] + 1) = 0x800000022BA20120;
  v4 = sub_22BA082E0(a1);
  MEMORY[0x231899730](v4);

  v5 = sub_22BA0FFCC();

  v6 = [a2 objectForKey_];

  if (v6)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22B949698(v11);
    return 0;
  }
}

void sub_22BA0AA94(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v5 = sub_22BA10D2C();
  sub_22BA108FC();

  v6 = sub_22BA082E0(a2);
  MEMORY[0x231899730](v6);

  v7 = sub_22BA0FFCC();

  [a3 setObject:v5 forKey:v7];
}

uint64_t sub_22BA0AB6C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x800000022BA1C1D0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v3 == 1)
  {
    v6 = 0x800000022BA1C1D0;
  }

  else
  {
    v6 = 0x800000022BA1C1F0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F737265505A46;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEA00000000004449;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000017;
    v4 = 0x800000022BA1C1F0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6E6F737265505A46;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000004449;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22BA10C6C();
  }

  return v11 & 1;
}

uint64_t sub_22BA0AC4C()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0ACF8()
{
  *v0;
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22BA0AD90()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0AE38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22BA0B3C0();
  *a2 = result;
  return result;
}

void sub_22BA0AE68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004449;
  v4 = 0xD000000000000013;
  v5 = 0x800000022BA1C1D0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000017;
    v5 = 0x800000022BA1C1F0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6E6F737265505A46;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_22BA0AED0()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F737265505A46;
  }
}

uint64_t sub_22BA0AF34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BA0B3C0();
  *a1 = result;
  return result;
}

uint64_t sub_22BA0AF5C(uint64_t a1)
{
  v2 = sub_22BA0B658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BA0AF98(uint64_t a1)
{
  v2 = sub_22BA0B658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BA0AFD4(void *a1)
{
  v3 = v1;
  v5 = sub_22B9349C8(&qword_27D8D5CA8, &unk_22BA1B250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22BA0B658();
  sub_22BA10D9C();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v17) = 0;
  sub_22BA10BCC();
  if (!v2)
  {
    v17 = *(v3 + 1);
    v16 = 1;
    sub_22B9349C8(&qword_27D8D5478, &unk_22BA173E0);
    sub_22B993430();
    sub_22BA10BEC();
    v17 = *(v3 + 2);
    v16 = 2;
    sub_22BA10BEC();
  }

  return (*(v6 + 8))(v10, v5);
}

double sub_22BA0B1A0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22BA0B40C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_22BA0B1FC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_22BA0B244(v7, v8) & 1;
}

uint64_t sub_22BA0B244(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22BA10C6C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_22BA10C6C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

__n128 sub_22BA0B308(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22BA0B31C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22BA0B364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BA0B3C0()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22BA0B40C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5CA0, &qword_22BA1B248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22BA0B658();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(a1);
  }

  v28 = 0;
  v12 = sub_22BA10B1C();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_22BA10ACC();
  v24 = v15;
  v26 = 2;
  v16 = sub_22BA10ACC();
  v17 = v10;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  result = sub_22B936C4C(a1);
  *a2 = v25;
  a2[1] = v14;
  v21 = v24;
  a2[2] = v23;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v19;
  return result;
}

unint64_t sub_22BA0B658()
{
  result = qword_281415E70[0];
  if (!qword_281415E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281415E70);
  }

  return result;
}

unint64_t sub_22BA0B6C0()
{
  result = qword_27D8D5CB0;
  if (!qword_27D8D5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5CB0);
  }

  return result;
}

unint64_t sub_22BA0B718()
{
  result = qword_281415E60;
  if (!qword_281415E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E60);
  }

  return result;
}

unint64_t sub_22BA0B770()
{
  result = qword_281415E68;
  if (!qword_281415E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415E68);
  }

  return result;
}

uint64_t sub_22BA0B7C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22BA0C17C();
}

uint64_t sub_22BA0B864(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22BA0B884, 0, 0);
}

uint64_t sub_22BA0B884()
{
  v33 = v0;
  v1 = [*(v0 + 16) guid];
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = v1;
    v4 = sub_22BA0FFFC();
    v6 = v5;

    v7 = [v2 service];
    if (!v7)
    {
LABEL_5:

LABEL_6:
      v1 = 0;
      goto LABEL_7;
    }

    v8 = v7;
    v9 = sub_22BA0FFFC();
    v11 = v10;
    v12 = *MEMORY[0x277D1A5F0];
    v13 = [v12 containsObject_];

    if (v13)
    {

      goto LABEL_5;
    }

    v16 = *(v0 + 24);
    v17 = v16 + *(type metadata accessor for ActionRecord() + 84);
    v18 = *v17;
    v19 = *(v17 + 24);
    if (*v17 != 1 && v19 != 0)
    {
      v22 = *(v17 + 8);
      v21 = *(v17 + 16);
      sub_22B9E1B94(*v17, v22, v21, *(v17 + 24));
      v23 = v19;
      if ([v23 hasActualParentChatId])
      {
        v24 = [v23 actualParentChatId];

        if (v24)
        {

          goto LABEL_6;
        }
      }

      else
      {
      }
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v25 = sub_22BA0FEFC();
    sub_22B936CA8(v25, qword_28141AD10);

    v26 = sub_22BA0FEDC();
    v27 = sub_22BA1042C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315394;
      v30 = sub_22B99153C(v4, v6, &v32);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      v31 = sub_22B99153C(v9, v11, &v32);

      *(v28 + 14) = v31;
      _os_log_impl(&dword_22B92A000, v26, v27, "Message %s has non legacy service %s, but cloud is missing proto4 overrides", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v29, -1, -1);
      MEMORY[0x23189ADD0](v28, -1, -1);
    }

    else
    {
    }

    v1 = 1;
  }

LABEL_7:
  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_22BA0BBE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22BA0BC94;

  return (sub_22BA0B864)(a1);
}

uint64_t sub_22BA0BC94(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    *(v4 + 40) = a1 & 1;

    return MEMORY[0x2822009F8](sub_22BA0BDE8, 0, 0);
  }
}

void sub_22BA0BDE8()
{
  v37 = v0;
  if (*(v0 + 40) != 1)
  {
    v16 = *(v0 + 16);
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17 && (v18 = v17, v19 = *(v0 + 24), objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
    {
      v21 = v20;
      v22 = *(v0 + 16);
      v23 = [v18 messageSummaryInfo];
      if (v23)
      {
LABEL_19:

        v34 = [v21 messageSummaryInfo];
        if (!v34)
        {
          v15 = 1;
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v24 = *(v0 + 16);
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25 && (v26 = v25, v27 = *(v0 + 24), objc_opt_self(), (v28 = swift_dynamicCastObjCClass()) != 0))
      {
        v21 = v28;
        v29 = *(v0 + 16);
        v23 = [v26 messageSummaryInfo];
        if (v23)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v30 = *(v0 + 16);
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          goto LABEL_24;
        }

        v31 = v15;
        v32 = *(v0 + 24);
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          goto LABEL_24;
        }

        v21 = v15;
        v33 = *(v0 + 16);
        v23 = [v31 messageSummaryInfo];
        if (v23)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_22:
    v15 = 0;
    goto LABEL_24;
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1043C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    v10 = [v7 guid];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = sub_22BA0FFFC();
    v13 = v12;

    v14 = sub_22B99153C(v11, v13, &v36);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_22B92A000, v4, v5, "Bad chatID found in message %s, marking for resync", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);

    v15 = 1;
  }

  else
  {

    v15 = 1;
  }

LABEL_24:
  v35 = *(v0 + 8);

  v35(v15);
}

uint64_t sub_22BA0C19C()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for ActionRecord() + 88));
  v3 = *v2;
  v0[6] = *v2;
  v4 = v2[1];
  v0[7] = v4;
  sub_22B95BE50(v3, v4);
  v5 = sub_22B9C7220();
  v0[8] = v5;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_22BA0C274;

  return sub_22B95BFAC(v5);
}

uint64_t sub_22BA0C274(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_22BA0C638;
  }

  else
  {
    *(v4 + 248) = a1 & 1;
    v7 = sub_22BA0C3A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22BA0C3A0()
{
  if (*(v0 + 248) == 1)
  {
    if (qword_281414F10 != -1)
    {
      swift_once();
    }

    v1 = [*(v0 + 64) guid];
    if (!v1)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v4 = v1;
    v5 = sub_22BA0FFFC();
    v7 = v6;

    sub_22B99F8F8(v5, v7);
    v9 = v8;
    *(v0 + 88) = v8;

    if (v9)
    {
      v10 = v9;
      v11 = swift_task_alloc();
      *(v0 + 96) = v11;
      *v11 = v0;
      v11[1] = sub_22BA0C69C;
      v12 = *(v0 + 64);
      v13 = *(v0 + 40);

      return sub_22BA0BBE4(v10, v12);
    }

    v18 = qword_28141ADC8;
    *(v0 + 120) = qword_28141ADC8;
    if (v18)
    {
      v19 = qword_28141ADD0;
      *(v0 + 128) = qword_28141ADD0;
      *(v0 + 136) = *(v19 + 24);
      *(v0 + 144) = (v19 + 24) & 0xFFFFFFFFFFFFLL | 0xB149000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v20 = sub_22BA1029C();
      v3 = v21;
      *(v0 + 152) = v20;
      *(v0 + 160) = v21;
      v1 = sub_22BA0CC7C;
      v2 = v20;

      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v15 = *(v0 + 64);
    sub_22B952500();
    swift_allocError();
  }

  else
  {
    v15 = *(v0 + 64);
    sub_22B9F3DB4();
    swift_allocError();
    *v16 = 0;
  }

  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22BA0C638()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22BA0C69C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v7 = sub_22BA0C914;
  }

  else
  {
    *(v4 + 249) = a1 & 1;
    v7 = sub_22BA0C7D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22BA0C7D0()
{
  v1 = *(v0 + 40);
  [*(v0 + 88) setCloudKitSyncState_];
  if (*(v1 + 56))
  {
    v2 = *(*(v0 + 40) + 48);
    v3 = sub_22BA0FFCC();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 40);
  [*(v0 + 88) setCloudKitRecordID_];

  if (*(v4 + 40))
  {
    v5 = *(*(v0 + 40) + 32);
    v6 = sub_22BA0FFCC();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 88);
  [v7 setCloudKitRecordChangeTag_];

  [v7 setCloudKitServerChangeTokenBlob_];
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_22BA0C980;
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);

  return sub_22B9A1FF0(v7, v9, v11, v10);
}

uint64_t sub_22BA0C914()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22BA0C980()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22BA0CA7C, 0, 0);
}

void sub_22BA0CA7C()
{
  v19 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v7 guid];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v13 = sub_22BA0FFFC();
    v15 = v14;

    v16 = sub_22B99153C(v13, v15, &v18);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_22B92A000, v4, v5, "Updated existing action item for %s", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  v17(1);
}

uint64_t sub_22BA0CC7C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  *(v0 + 250) = (*(v0 + 136))(*(v0 + 64)) & 1;

  return MEMORY[0x2822009F8](sub_22BA0CCF8, 0, 0);
}

void sub_22BA0CCF8()
{
  v20 = v0;
  if (*(v0 + 250) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = sub_22BA0CF78;
    v2 = *(v0 + 64);

    sub_22B9A29DC(v2);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 64);
    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD10);
    v5 = v3;
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 64);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = [v9 guid];

      if (!v12)
      {
        __break(1u);
        return;
      }

      v13 = sub_22BA0FFFC();
      v15 = v14;

      v16 = sub_22B99153C(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v6, v7, "Should not store action record for %s, account or alias mismatch", v10, 0xCu);
      sub_22B936C4C(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    else
    {
    }

    v17 = *(v0 + 64);
    sub_22BA0D698();
    swift_allocError();
    swift_willThrow();

    v18 = *(v0 + 8);

    v18();
  }
}

uint64_t sub_22BA0CF78()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22BA0D074, 0, 0);
}

uint64_t sub_22BA0D074()
{
  v32 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v10 = [v7 guid];

    if (!v10)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    v14 = sub_22BA0FFFC();
    v16 = v15;

    v17 = sub_22B99153C(v14, v16, &v31);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_22B92A000, v4, v5, "Created action item for %s", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);

    if (!v0[7])
    {
LABEL_6:
      v18 = sub_22BA0FEDC();
      v19 = sub_22BA1044C();
      v20 = os_log_type_enabled(v18, v19);
      v21 = v0[8];
      if (v20)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22B92A000, v18, v19, "No parentChatID to add this message to", v22, 2u);
        MEMORY[0x23189ADD0](v22, -1, -1);
      }

      v23 = v0[1];

      return v23(1);
    }
  }

  else
  {

    if (!v0[7])
    {
      goto LABEL_6;
    }
  }

  v25 = qword_28141ADC8;
  v0[22] = qword_28141ADC8;
  if (v25)
  {
    v26 = qword_28141ADD0;
    v0[23] = qword_28141ADD0;
    v0[24] = *(v26 + 72);
    v0[25] = (v26 + 72) & 0xFFFFFFFFFFFFLL | 0x91C7000000000000;
    v27 = v0[19];
    v28 = v0[20];

    v11 = sub_22BA0D3BC;
    v12 = v27;
    v13 = v28;

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v29 = v0[8];
  sub_22B952500();
  swift_allocError();
  swift_willThrow();

  v30 = v0[1];

  return v30();
}

uint64_t sub_22BA0D3BC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  (*(v0 + 192))(*(v0 + 64), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2822009F8](sub_22BA0D434, 0, 0);
}

uint64_t sub_22BA0D434()
{
  v1 = qword_28141ADC8;
  v0[26] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[27] = qword_28141ADD0;
    if (qword_2814161B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_28141ADF8;
    if (*(qword_28141ADF8 + 16) && (v4 = sub_22B990A58(v0[6], v0[7]), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);
    }

    else
    {
      v6 = -1;
    }

    v0[28] = v6;
    swift_endAccess();
    v0[29] = *(v2 + 80);
    v0[30] = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
    v7 = v0[19];
    v8 = v0[20];

    return MEMORY[0x2822009F8](sub_22BA0D5A8, v7, v8);
  }

  else
  {
    v9 = v0[7];
    v10 = v0[8];

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22BA0D5A8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 208);
  (*(v0 + 232))(*(v0 + 64), *(v0 + 48), *(v0 + 56), *(v0 + 224));

  return MEMORY[0x2822009F8](sub_22BA0D630, 0, 0);
}

uint64_t sub_22BA0D630()
{
  v1 = *(v0 + 8);

  return v1(1);
}

unint64_t sub_22BA0D698()
{
  result = qword_27D8D5CB8;
  if (!qword_27D8D5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5CB8);
  }

  return result;
}

unint64_t sub_22BA0D700()
{
  result = qword_27D8D5CC0;
  if (!qword_27D8D5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5CC0);
  }

  return result;
}

uint64_t sub_22BA0D75C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BA0D7CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_22BA0D90C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata accessor for AttachmentRecord()
{
  result = qword_2814159A0;
  if (!qword_2814159A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22BA0DBA0()
{
  sub_22B9651AC(319, &qword_281414C40);
  if (v0 <= 0x3F)
  {
    sub_22B934C68();
    if (v1 <= 0x3F)
    {
      sub_22B9651AC(319, &qword_281415630);
      if (v2 <= 0x3F)
      {
        sub_22B9651AC(319, &unk_281416C20);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22BA0DC9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v49 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v50 = v44 - v9;
  v10 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v53 = v44 - v14;
  v15 = sub_22B9349C8(&qword_27D8D5CC8, &qword_22BA1B588);
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v44 - v18;
  v20 = type metadata accessor for AttachmentRecord();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22BA0EF24();
  v26 = v55;
  sub_22BA10D8C();
  if (v26)
  {
    return sub_22B936C4C(a1);
  }

  v55 = v19;
  v46 = v24;
  v47 = v15;
  v45 = v20;
  v27 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9358F8();
  v28 = v53;
  sub_22BA10D8C();
  v57[0] = 0;
  v29 = sub_22BA10ACC();
  v30 = v46;
  *v46 = v29;
  v30[1] = v31;
  v57[0] = 1;
  v30[2] = sub_22BA10ACC();
  v30[3] = v32;
  v57[0] = 2;
  v44[2] = 0;
  v30[4] = sub_22BA10ACC();
  v30[5] = v33;
  v57[0] = 3;
  v30[6] = sub_22BA10ACC();
  v30[7] = v34;
  v57[0] = 4;
  v30[8] = sub_22BA10ACC();
  v30[9] = v35;
  v57[0] = 5;
  v30[10] = sub_22BA10ACC();
  v30[11] = v36;
  v37 = sub_22BA0FD8C();
  v57[0] = 6;
  sub_22BA0EF78(&unk_281416C00, MEMORY[0x277CC9578]);
  v44[1] = v37;
  sub_22BA10AFC();
  sub_22B935A74(v50, v30 + v45[10]);
  v57[0] = 7;
  v38 = v49;
  sub_22BA10AFC();
  sub_22B935A74(v38, v30 + v45[11]);
  v57[0] = 8;
  v39 = sub_22BA10ACC();
  v40 = (v46 + v45[12]);
  *v40 = v39;
  v40[1] = v41;
  v57[343] = 0;
  sub_22BA0EFC0();
  sub_22BA10AFC();
  memcpy(v46 + v45[13], v57, 0x140uLL);
  v57[342] = 1;
  sub_22B9363C8();
  sub_22BA10AFC();
  (*(v52 + 8))(v28, v51);
  (*(v54 + 8))(v55, v47);
  v42 = v46;
  *(v46 + v45[14]) = v56;
  sub_22B97CACC(v42, v48);
  sub_22B936C4C(a1);
  return sub_22B9AD928(v42);
}

uint64_t sub_22BA0E6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AttachmentRecord();
  memcpy(v16, (v3 + *(v7 + 52)), sizeof(v16));
  if (sub_22B97CA68(v16) != 1)
  {
    v8 = v16[39];
    if (v16[39])
    {
      if (*(v16[39] + 16))
      {

        v9 = sub_22B990A58(a1, a2);
        if (v10)
        {
          v11 = (*(v8 + 56) + (v9 << 6));
          v12 = *v11;
          v13 = v11[1];

          sub_22BA0FC1C();
        }
      }
    }
  }

  v15 = sub_22BA0FC4C();
  return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
}

uint64_t sub_22BA0E7BC()
{
  v1 = type metadata accessor for AttachmentRecord();
  memcpy(v9, (v0 + *(v1 + 52)), sizeof(v9));
  if (sub_22B97CA68(v9) != 1)
  {
    v2 = v9[39];
    if (v9[39])
    {
      if (*(v9[39] + 16))
      {

        v3 = sub_22B990A58(6386028, 0xE300000000000000);
        if (v4)
        {
          v5 = (*(v2 + 56) + (v3 << 6));
          v7 = *v5;
          v6 = v5[1];

          return v7;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_22BA0E878()
{
  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  v1 = *(type metadata accessor for AttachmentRecord() + 52);
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  v2 = 0;
  if (sub_22B97CA68(__dst) != 1)
  {
    v2 = __dst[24];
  }

  memcpy(v13, (v0 + v1), sizeof(v13));
  if (sub_22B97CA68(v13) == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v13[38];
  }

  memcpy(v12, (v0 + v1), sizeof(v12));
  if (sub_22B97CA68(v12) == 1)
  {
    v4 = 0;
    if (v2)
    {
LABEL_10:
      v5 = sub_22BA0FFCC();
      goto LABEL_13;
    }
  }

  else
  {
    v4 = v12[6];

    if (v2)
    {
      goto LABEL_10;
    }
  }

  v5 = 0;
LABEL_13:
  v6 = sub_22BA0FFCC();
  if (v3)
  {
    v7 = sub_22BA0FFCC();
    if (v4)
    {
LABEL_15:
      v8 = sub_22BA0FFCC();
      goto LABEL_18;
    }
  }

  else
  {
    v7 = 0;
    if (v4)
    {
      goto LABEL_15;
    }
  }

  v8 = 0;
LABEL_18:
  v9 = IMDCopyAttachmentPersistentPath();

  if (v9)
  {
    v10 = sub_22BA0FFFC();
  }

  else
  {

    return 0;
  }

  return v10;
}

uint64_t sub_22BA0EA9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x617461646174656DLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x800000022BA1BAB0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x617461646174656DLL;
  }

  if (*a2)
  {
    v7 = 0x800000022BA1BAB0;
  }

  else
  {
    v7 = 0xE800000000000000;
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

uint64_t sub_22BA0EB48()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0EBD0()
{
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22BA0EC44()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0ECC8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_22BA0ED28(unint64_t *a1@<X8>)
{
  v2 = 0x800000022BA1BAB0;
  v3 = 0x617461646174656DLL;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_22BA0ED6C()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_22BA0EDAC@<X0>(char *a1@<X8>)
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

uint64_t sub_22BA0EE10(uint64_t a1)
{
  v2 = sub_22BA0EF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BA0EE4C(uint64_t a1)
{
  v2 = sub_22BA0EF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BA0EEA0(uint64_t a1)
{
  *(a1 + 8) = sub_22BA0EF78(&qword_2814159B8, type metadata accessor for AttachmentRecord);
  result = sub_22BA0EF78(&qword_2814159C0, type metadata accessor for AttachmentRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22BA0EF24()
{
  result = qword_2814159D8;
  if (!qword_2814159D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159D8);
  }

  return result;
}

uint64_t sub_22BA0EF78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22BA0EFC0()
{
  result = qword_281415638;
  if (!qword_281415638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415638);
  }

  return result;
}

unint64_t sub_22BA0F028()
{
  result = qword_27D8D5CD0;
  if (!qword_27D8D5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5CD0);
  }

  return result;
}

unint64_t sub_22BA0F080()
{
  result = qword_2814159C8;
  if (!qword_2814159C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159C8);
  }

  return result;
}

unint64_t sub_22BA0F0D8()
{
  result = qword_2814159D0;
  if (!qword_2814159D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159D0);
  }

  return result;
}

uint64_t sub_22BA0F12C()
{
  sub_22BA102EC();
  result = sub_22BA102DC();
  qword_281416458 = result;
  return result;
}

uint64_t static CloudSyncWorkActor.shared.getter()
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22BA0F1E0()
{
  if (qword_281416450 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22BA0F28C()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0F36C()
{
  *v0;
  *v0;
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22BA0F438()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22BA0F514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22BA0F81C();
  *a2 = result;
  return result;
}

void sub_22BA0F544(unint64_t *a1@<X8>)
{
  v2 = 0xEE0064756F6C4369;
  v3 = 0x6D6F724664616572;
  v4 = 0x800000022BA1C230;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x646574726F706D69;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x546E657474697277;
    v2 = 0xEF64756F6C43696FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22BA0F6A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BA0F7C8();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_22BA0F6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22BA0F7C8();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_22BA0F774()
{
  result = qword_281416670;
  if (!qword_281416670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416670);
  }

  return result;
}

unint64_t sub_22BA0F7C8()
{
  result = qword_281416668;
  if (!qword_281416668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416668);
  }

  return result;
}

uint64_t sub_22BA0F81C()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_22BA0F874()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22BA0FFCC();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22BA0F8E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22BA1090C();
  *a1 = result;
  return result;
}

id sub_22BA0F910()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22BA0FFCC();
  v2 = [v0 initWithEntityName_];

  return v2;
}