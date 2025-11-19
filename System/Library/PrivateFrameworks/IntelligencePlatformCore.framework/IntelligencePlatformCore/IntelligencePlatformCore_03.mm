void ViewDatabaseArtifact.Property.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ViewDatabaseArtifact.Property();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v11 = (v10 - v9);
  v12 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4412704();
  sub_1C4F02BA8();
  if (!v0)
  {
    sub_1C4418280(v42, v43);
    sub_1C4412704();
    *v11 = sub_1C4F02888();
    v11[1] = v13;
    sub_1C4418280(v42, v43);
    sub_1C4412704();
    v14 = sub_1C4F02888();
    v16 = v14;
    v17 = v15;
    v18 = v14 == 0x676E69727473 && v15 == 0xE600000000000000;
    if (v18 || (sub_1C442D554() & 1) != 0 || (v16 == 1415071060 ? (v19 = v17 == 0xE400000000000000) : (v19 = 0), v19 || (sub_1C4407DA8() & 1) != 0 || (v16 == 1852797802 ? (v20 = v17 == 0xE400000000000000) : (v20 = 0), v20 || (sub_1C4407DA8() & 1) != 0)))
    {

      sub_1C440A9C4();
      sub_1C4EFBDD8();
    }

    else
    {
      v21 = v16 == 7630441 && v17 == 0xE300000000000000;
      if (v21 || (sub_1C442D554() & 1) != 0 || (v16 == 0x52454745544E49 ? (v22 = v17 == 0xE700000000000000) : (v22 = 0), v22 || (sub_1C442D554() & 1) != 0 || (v16 == 5525065 ? (v23 = v17 == 0xE300000000000000) : (v23 = 0), v23 || (sub_1C442D554() & 1) != 0 || (v16 == 0x72656765746E69 ? (v24 = v17 == 0xE700000000000000) : (v24 = 0), v24 || (sub_1C442D554() & 1) != 0))))
      {

        sub_1C440A9C4();
        sub_1C4EFBE08();
      }

      else
      {
        v25 = v16 == 0x74616F6C66 && v17 == 0xE500000000000000;
        if (v25 || (sub_1C442D554() & 1) != 0 || (v16 == 1279346002 ? (v26 = v17 == 0xE400000000000000) : (v26 = 0), v26 || (sub_1C4407DA8() & 1) != 0 || (v16 == 0x454C42554F44 ? (v27 = v17 == 0xE600000000000000) : (v27 = 0), v27 || (sub_1C442D554() & 1) != 0 || (v16 == 0x656C62756F64 ? (v28 = v17 == 0xE600000000000000) : (v28 = 0), v28 || (sub_1C442D554() & 1) != 0))))
        {

          sub_1C440A9C4();
          sub_1C4EFBDE8();
        }

        else
        {
          v29 = v16 == 1635017060 && v17 == 0xE400000000000000;
          if (v29 || (sub_1C4407DA8() & 1) != 0 || (v16 == 1112493122 ? (v30 = v17 == 0xE400000000000000) : (v30 = 0), v30 || (sub_1C4407DA8() & 1) != 0 || (v16 == 1684632949 ? (v31 = v17 == 0xE400000000000000) : (v31 = 0), v31 || (sub_1C4407DA8() & 1) != 0)))
          {

            sub_1C440A9C4();
            sub_1C4EFBDB8();
          }

          else
          {
            v32 = v16 == 7958113 && v17 == 0xE300000000000000;
            if (!v32 && (sub_1C442D554() & 1) == 0)
            {
              v33 = v16 == 5852737 && v17 == 0xE300000000000000;
              if (!v33 && (sub_1C442D554() & 1) == 0)
              {
                v34 = v16 == 1280266050 && v17 == 0xE400000000000000;
                if (v34 || (sub_1C4407DA8() & 1) != 0 || (v16 == 0x4E41454C4F4F42 ? (v35 = v17 == 0xE700000000000000) : (v35 = 0), v35 || (sub_1C442D554() & 1) != 0))
                {

                  sub_1C440A9C4();
                  sub_1C4EFBDF8();
                  goto LABEL_21;
                }

                v36 = v16 == 1702125924 && v17 == 0xE400000000000000;
                if (v36 || (sub_1C4407DA8() & 1) != 0 || (v16 == 0x454D495445544144 ? (v37 = v17 == 0xE800000000000000) : (v37 = 0), v37 || (sub_1C442D554() & 1) != 0))
                {

                  sub_1C440A9C4();
                  sub_1C4EFBE18();
                  goto LABEL_21;
                }

                v38 = v16 == 1819047278 && v17 == 0xE400000000000000;
                if (!v38 && (sub_1C4407DA8() & 1) == 0)
                {
                  *&v40 = 0xD000000000000016;
                  *(&v40 + 1) = 0x80000001C4F92760;
                  MEMORY[0x1C6940010](v16, v17);

                  sub_1C450B034();
                  swift_allocError();
                  *v39 = 0xD000000000000016;
                  *(v39 + 8) = 0x80000001C4F92760;
                  *(v39 + 16) = 0;
                  *(v39 + 24) = 0xE000000000000000;
                  *(v39 + 32) = v40;
                  *(v39 + 48) = v41;
                  *(v39 + 64) = 3;
                  swift_willThrow();
                  sub_1C440962C(v42);
                  sub_1C440962C(v2);

                  goto LABEL_4;
                }
              }
            }

            sub_1C440A9C4();
            sub_1C4EFBDA8();
          }
        }
      }
    }

LABEL_21:
    sub_1C440962C(v42);
    sub_1C443CCBC(v11, v4);
    sub_1C440962C(v2);
    sub_1C443CE28(v11, type metadata accessor for ViewDatabaseArtifact.Property);
    goto LABEL_4;
  }

  sub_1C440962C(v2);
LABEL_4:
  sub_1C43FBC80();
}

void sub_1C443A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v10[3] = a1;
  v10[4] = a2;
  sub_1C443AE34(sub_1C4437948, v10, a3, a4, a5, a6, a7, a8, v10[0], v10[1]);
}

uint64_t sub_1C443A790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v26[1] = a4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v27 = v26 - v8;
  v9 = sub_1C4EFBC98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EFB678();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v26 - v20;
  sub_1C4EFB648();
  sub_1C4EFB638();
  *&v29[0] = a2;
  *(&v29[0] + 1) = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v15 + 32))(v19, v21, v14);
  sub_1C4EFBC88();
  v22 = v31;
  sub_1C4EFBEE8();
  if (v22)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v10 + 8))(v13, v9);
  v24 = sub_1C4EFB768();
  v25 = v27;
  sub_1C440BAA8(v27, 1, 1, v24);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1C4EFB9A8();

  sub_1C4420C3C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
  return sub_1C4420C3C(v25, &unk_1EC0C06C0, &unk_1C4F10DB0);
}

unint64_t sub_1C443AAB4()
{
  sub_1C441AE30();
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v11[2] = v2;
  v11[3] = v3;
  sub_1C445E5B0(sub_1C445E5CC, v11);
  if (!v4 || (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), sub_1C4402E08(), v5 = sub_1C445EDA0(), v5 == 13))
  {
    v11[4] = 0;
    v12 = 0xE000000000000000;
    sub_1C4F02248();

    sub_1C442AC70();
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v7 = sub_1C4402E08();
    MEMORY[0x1C6940010](v7);

    v6 = v12;
    sub_1C446D0DC();
    sub_1C441C114();
    v8 = swift_allocError();
    sub_1C441689C(v8, v9);
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

void sub_1C443ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4400368();
  v33 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v33);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C43FC318();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4406E1C();
  v23 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v12)
  {
    goto LABEL_8;
  }

  v24 = v12;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v25 = *(v20 + 8);
  v26 = sub_1C43FCE84();
  v25(v26);
  if (v11)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v27 = v12;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v28 = sub_1C43FCE84();
  v25(v28);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C441D1F8())
  {

    goto LABEL_8;
  }

  v29 = sub_1C43FD75C();
  v30(v29);
  v31 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v31, v32);
  __break(1u);
}

void sub_1C443AE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4417168();
  v42 = *v10;
  v43 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v43);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C4433378();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v25 = sub_1C442BAE8(v17, v18, v19, v20, v21, v22, v23, v24, v41);
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4406E1C();
  v31 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  _s10ViewConfigVMa(0);
  sub_1C444FD74();
  if (!v11)
  {
    goto LABEL_7;
  }

  v32 = v11;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v33 = *(v28 + 8);
  v34 = sub_1C43FCE84();
  v33(v34);
  if (v12)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v35 = v11;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v36 = sub_1C43FCE84();
  v33(v36);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C43FEF9C())
  {

    goto LABEL_7;
  }

  v37 = sub_1C440F670();
  v38(v37);
  v39 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v39, v40);
  __break(1u);
}

void sub_1C443B054(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *(*(v1 + 16) + 16);

  v6 = sub_1C443AAB4();

  if (!v2)
  {
    v7 = *(v3 + 24);
    os_unfair_lock_lock((v7 + 24));
    sub_1C444F290((v7 + 16), v6, v3, a1);
    os_unfair_lock_unlock((v7 + 24));
  }
}

uint64_t sub_1C443B0F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_1C443B054(v0 + 16);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_1C4409678((v0 + 16), v4);
  v6 = *(v5 + 8);
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1C445F5D8;
  v9 = *(v0 + 112);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);

  return v13(v11, v10, v9, v4, v5);
}

uint64_t sub_1C443B274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v6 = 0;
  v7 = 0;
  v54 = a2 & 0xC000000000000001;
  v55 = sub_1C4428DA0();
  v52 = a2 & 0xFFFFFFFFFFFFFF8;
  v53 = a2;
  v8 = MEMORY[0x1E69E7CC8];
  while (v55 != v6)
  {
    if (v54)
    {
      v9 = MEMORY[0x1C6940F90](v6, v53);
    }

    else
    {
      if (v6 >= *(v52 + 16))
      {
        goto LABEL_35;
      }

      v9 = *(v53 + 8 * v6 + 32);
    }

    v10 = v9;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = sub_1C443ED0C([v9 configIdentifier]);
    if (v4)
    {

      v46 = v7;
      return sub_1C44239FC(v46);
    }

    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v56 = v10;
    sub_1C44239FC(v7);
    swift_isUniquelyReferenced_nonNull_native();
    *&v59[0] = v8;
    v19 = sub_1C443B6C8(v15, v16, v17, v18);
    if (__OFADD__(*(v8 + 16), (v20 & 1) == 0))
    {
      goto LABEL_36;
    }

    v21 = v19;
    v22 = v20;
    sub_1C456902C(&unk_1EC0C6070, &unk_1C4F6A1E0);
    v8 = *&v59[0];
    if (sub_1C4F02458())
    {
      v23 = sub_1C443B6C8(v15, v16, v17, v18);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_39;
      }

      v21 = v23;
    }

    if (v22)
    {
    }

    else
    {
      *(*&v59[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v25 = *(v8 + 48) + 32 * v21;
      *v25 = v15;
      *(v25 + 8) = v16;
      *(v25 + 16) = v17;
      *(v25 + 24) = v18;
      *(*(v8 + 56) + 8 * v21) = MEMORY[0x1E69E7CC0];
      v26 = *(v8 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_38;
      }

      *(v8 + 16) = v28;
    }

    v29 = (*(v8 + 56) + 8 * v21);
    v30 = v56;
    MEMORY[0x1C6940330]();
    v4 = 0;
    if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();

    ++v6;
    v7 = sub_1C48362FC;
  }

  v57 = v7;
  v58 = v4;
  v31 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  v32 = 1 << *(v8 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v8 + 64);
  v35 = (v32 + 63) >> 6;
  if (!v34)
  {
LABEL_24:
    while (1)
    {
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v36 >= v35)
      {

        v48 = *a1;
        v47 = a1[1];
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C445DC44(v48, v47, v59, v61, v50);
        v46 = v57;
        return sub_1C44239FC(v46);
      }

      v34 = *(v8 + 64 + 8 * v36);
      ++v31;
      if (v34)
      {
        goto LABEL_27;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  while (1)
  {
    v36 = v31;
LABEL_27:
    v37 = __clz(__rbit64(v34)) | (v36 << 6);
    v38 = *(v8 + 48) + 32 * v37;
    v40 = *v38;
    v39 = *(v38 + 8);
    v41 = *(v38 + 24);
    v42 = *(*(v8 + 56) + 8 * v37);
    v43 = *(v38 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C4437EE8(v40, v39, v43, v41, v42, a1);
    if (v58)
    {
      break;
    }

    v45 = v44;
    v34 &= v34 - 1;

    sub_1C445CB24(v45);
    v31 = v36;
    if (!v34)
    {
      goto LABEL_24;
    }
  }

  return sub_1C44239FC(v57);
}

unint64_t sub_1C443B6C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1C443309C();
  sub_1C4F01298();
  sub_1C4409528(a3);
  sub_1C4F01298();

  MEMORY[0x1C69417F0](a4);
  v8 = sub_1C4F02B68();

  return sub_1C443B784(a1, a2, a3, a4, v8);
}

unint64_t sub_1C443B784(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = *(v5 + 48) + 32 * v7;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = *v11 == a1 && *(v11 + 8) == a2;
      if (v14 || (sub_1C4F02938() & 1) != 0)
      {
        v15 = 0xE700000000000000;
        v16 = 0x6C6F72746E6F63;
        switch(v12)
        {
          case 1:
            v16 = 0x6764656C776F6E6BLL;
            v15 = 0xEE00687061724765;
            break;
          case 2:
            v16 = 0x7055737961776C61;
            v17 = 1702125924;
            goto LABEL_14;
          case 3:
            v15 = 0xE500000000000000;
            v16 = 0x656D6F6962;
            break;
          case 4:
            v15 = 0xE400000000000000;
            v16 = 2003134838;
            break;
          case 5:
            v16 = 0xD000000000000010;
            v15 = 0x80000001C4F842B0;
            break;
          case 6:
            v16 = 0xD000000000000014;
            v15 = 0x80000001C4F842D0;
            break;
          case 7:
            v16 = 0x6163696669746F6ELL;
            v17 = 1852795252;
LABEL_14:
            v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        v18 = 0xE700000000000000;
        v19 = 0x6C6F72746E6F63;
        switch(a3)
        {
          case 1:
            v19 = 0x6764656C776F6E6BLL;
            v18 = 0xEE00687061724765;
            break;
          case 2:
            v19 = 0x7055737961776C61;
            v20 = 1702125924;
            goto LABEL_23;
          case 3:
            v18 = 0xE500000000000000;
            v19 = 0x656D6F6962;
            break;
          case 4:
            v18 = 0xE400000000000000;
            v19 = 2003134838;
            break;
          case 5:
            v19 = 0xD000000000000010;
            v18 = 0x80000001C4F842B0;
            break;
          case 6:
            v19 = 0xD000000000000014;
            v18 = 0x80000001C4F842D0;
            break;
          case 7:
            v19 = 0x6163696669746F6ELL;
            v20 = 1852795252;
LABEL_23:
            v18 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        if (v16 == v19 && v15 == v18)
        {

LABEL_33:
          if (v13 == a4)
          {
            return v7;
          }

          goto LABEL_34;
        }

        v22 = sub_1C4F02938();

        if (v22)
        {
          goto LABEL_33;
        }
      }

LABEL_34:
      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

__n128 sub_1C443BAD4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C443BAE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  sub_1C4F02AF8();
  sub_1C443BB40(v6, v1, v2, v4, v3);
  return sub_1C4F02B68();
}

uint64_t sub_1C443BB40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1C4F01298();
  sub_1C4409528(a4);
  sub_1C4F01298();

  return MEMORY[0x1C69417F0](a5);
}

uint64_t sub_1C443BBA8(void *a1, uint64_t *a2)
{
  v4 = _s6ConfigVMa();
  v5 = *(*(v4 - 8) + 64);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 state];
  sub_1C4F01138();

  v10 = sub_1C443BE78();
  if (v10 == 5)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1C4F02248();

    v32 = 0xD00000000000001ELL;
    v33 = 0x80000001C4FC3990;
    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v11 = [a1 state];
    v12 = sub_1C4F01138();
    v14 = v13;

    MEMORY[0x1C6940010](v12, v14);

    v15 = v32;
    v16 = v33;
    sub_1C446D0DC();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v18 = v10;
    v19 = *a2;
    v30 = a2[1];
    v31 = v19;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = [a1 triggered];
    sub_1C4438D00(v8);
    v28 = v8[*(v4 + 48)];
    sub_1C443C284(v8, _s6ConfigVMa);
    v20 = sub_1C443D554(a1);
    v22 = v21;
    v23 = sub_1C445CA14(a1);
    v25 = v24;
    v15 = swift_allocObject();
    sub_1C445CA78(v31, v30, v29, v28 & 1, v20, v22, v23, v25, v18);
  }

  sub_1C440129C();
  return v15;
}

uint64_t _s6ConfigVMa()
{
  result = qword_1EDDFF080;
  if (!qword_1EDDFF080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C443BE78()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C443BEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C443BF44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  sub_1C43FBCE0(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C443BFA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C443C008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C443C070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C0C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C443C180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C1D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FD3F8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C443C2E4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *v6;
    v9 = *v6;
    result = a1(&v9);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8;
    }

    ++v6;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C443C388()
{
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C443C3D0()
{
  result = qword_1EDDFED88;
  if (!qword_1EDDFED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED88);
  }

  return result;
}

uint64_t sub_1C443C424@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C4018, &unk_1C4F57000);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C443C7AC();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v17) = 0;
  v10 = sub_1C4F02678();
  v12 = v11;
  v16 = v10;
  sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
  sub_1C443CB4C(&unk_1EDDFEA60);
  sub_1C4407CBC();
  sub_1C4F026C8();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D0B4(&qword_1EDDFEA58);
  sub_1C4407CBC();
  sub_1C4F026C8();
  sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
  sub_1C443D1E4(&unk_1EDDFEA70);
  sub_1C4407CBC();
  sub_1C4F02658();
  v13 = sub_1C4413694();
  v14(v13);
  result = sub_1C440962C(a1);
  *a2 = v16;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v17;
  a2[4] = v17;
  return result;
}

double sub_1C443C764@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C443C424(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C443C7AC()
{
  result = qword_1EDDFED98;
  if (!qword_1EDDFED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED98);
  }

  return result;
}

unint64_t sub_1C443C808(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0x736E6D756C6F63;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x73657865646E69;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnstructuredDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C443C970);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C443C998(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C46A9848(v4);
    sub_1C440D274();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C443CA2C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4717DDC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C443CAB4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C46A9848(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C443CB4C(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B8A300(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityEventPerson.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t type metadata accessor for ViewDatabaseArtifact.Property()
{
  result = qword_1EDDFF050;
  if (!qword_1EDDFF050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C443CCBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewDatabaseArtifact.Property();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C443CD20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CD78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CDD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FD3F8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C443CF84(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C440D274();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C443CFE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C443D054(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C443D0B4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C443D11C(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = sub_1C44F0D20();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C443D174(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB020, &qword_1C4F1DB20);
    v4();
    sub_1C440D274();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C443D1E4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB020, &qword_1C4F1DB20);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C443D258(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (sub_1C4EFA6C8() == *a2 && v5 == a2[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C4F02938();
  }

  return v7 & 1;
}

uint64_t sub_1C443D2E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
    v8 = v5 + *(a4 + 40);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C443D36C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D3AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D3EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 27))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D42C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
    v9 = a1 + *(a3 + 40);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C443D514(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D554(void *a1)
{
  v1 = [a1 initialBookmark];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4EF9A68();

  return v3;
}

void sub_1C443D5B8()
{
  sub_1C43FFC44();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v8 == v9)
  {
LABEL_7:
    sub_1C44108C0(v7);
    if (v4)
    {
      sub_1C4422208(v10, v11, v12, v13, v14, v15);
      v16 = sub_1C44182F4();
      j__malloc_size(v16);
      sub_1C4402B0C();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1C44330CC();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1C4405788();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v8)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1C443D694()
{
  result = qword_1EDDFCED0;
  if (!qword_1EDDFCED0)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCED0);
  }

  return result;
}

uint64_t sub_1C443D71C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C443D814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C441FC74();
  v31 = sub_1C4EFB1E8();
  v12 = sub_1C43FCDF8(v31);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FC010();
  v16 = sub_1C4EFAD98();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v11)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v22 = v11;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v23 = *(v19 + 8);
  v24 = sub_1C43FD574();
  v23(v24);
  if (v10)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v25 = v11;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v26 = sub_1C43FD574();
  v23(v26);
  sub_1C4425150();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C442DFA8())
  {

    goto LABEL_8;
  }

  v27 = sub_1C44132A8();
  v28(v27);
  v29 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v29, v30);
  __break(1u);
}

void sub_1C443DA6C()
{
  sub_1C43FE96C();
  sub_1C44054CC();
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = sub_1C4EFB768();
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440A82C();
  if (sub_1C4424B10(v3) == v5 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v16 = sub_1C442E6C0();

    if ((v16 & 1) == 0)
    {
      sub_1C442F794();
      v0 = v1;
      if (v1)
      {
        goto LABEL_11;
      }
    }
  }

  swift_unownedRetainStrong();
  v17 = sub_1C4440C6C(v4);
  sub_1C441CEF4();

  if (!v0)
  {
    v18 = *(v17 + 320);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v19 = sub_1C4404370();
    v20 = sub_1C445BE04(v19, xmmword_1C4F0CE60);
    v21 = MEMORY[0x1E69A0138];
    v19[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v19[4].n128_u64[0] = v21;
    v19[2].n128_u64[0] = v20;
    v19[2].n128_u64[1] = v22;
    sub_1C4401F74();
    sub_1C4466DA4();
    sub_1C4EFC088();
    v23 = sub_1C441B144();
    v24(v23, v10);
    v25 = sub_1C44179F4();
    sub_1C43FF8A0(v25, v26, v27, v10);
    sub_1C443474C();
    sub_1C44150DC();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v28, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

LABEL_11:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C443DCD0(uint64_t *a1, uint64_t a2, __int16 a3, uint64_t a4, char a5, char a6)
{
  sub_1C442E860(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 80) = a5;
  sub_1C440962C(a1);
  *(v6 + 88) = MEMORY[0x1E69E7CC0];
  *(v6 + 72) = a4;
  *(v6 + 81) = a6;
  return v6;
}

uint64_t sub_1C443DD68()
{
  v1 = *(*(*(v0 + 16) + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);

  v2 = sub_1C440CABC();
  v4 = sub_1C443DD50(v2, v3);

  return v4;
}

uint64_t sub_1C443DE38@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C443DE64(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C443DE64(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_unownedRetain();

  a2(&v9, v7, a4);

  result = swift_unownedRelease();
  if (!v4)
  {
    return v9;
  }

  return result;
}

void sub_1C443DEE4(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  sub_1C443DA6C();
  if (!v2)
  {
    *a2 = v5;
  }
}

uint64_t sub_1C443DF88()
{
  *(v1 + 16) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C443DFC8()
{

  return sub_1C4EFF808();
}

uint64_t sub_1C443E01C(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1C441D828(v1, v2, va);
}

uint64_t sub_1C443E038()
{
  v2 = *(v0 - 296);
}

uint64_t sub_1C443E050()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_1C443E074@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *(v1 - 160) = 4;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C443E0A4()
{
  v4 = (v2 + *(v0 + 32));
  *v4 = v1;
  v4[1] = v3;
  v5 = v2 + *(v0 + 40);
}

uint64_t sub_1C443E0CC@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  v3 = *(v1 - 280);

  return sub_1C4F02618();
}

uint64_t sub_1C443E108()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 96);

  return sub_1C4F02658();
}

uint64_t sub_1C443E140()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 312);
  return result;
}

uint64_t sub_1C443E154()
{
  v2 = *(v0 - 376);
  v3 = *(v0 - 184);

  return sub_1C44344B8(v2, v3);
}

void sub_1C443E178()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

unint64_t sub_1C443E19C()
{
  *(v2 - 81) = *(v0 + *(v1 + 48));
  *(v2 - 82) = 8;

  return sub_1C44C1190();
}

uint64_t sub_1C443E1C0()
{
  v2 = *(v0 - 440);
  v3 = *(v0 - 448);

  return sub_1C44239FC(v2);
}

BOOL sub_1C443E1FC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C443E220()
{
  result = *(v1 - 208) + v0;
  v3 = *(v1 - 248);
  return result;
}

uint64_t sub_1C443E23C@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>)
{
  *a2 = v3;
  a2[1] = result;
  *(v4 + *(v5 + 44)) = a3;
  v6 = *(v5 + 48);
  return result;
}

uint64_t sub_1C443E29C@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  v3 = *(v1 - 128);

  return sub_1C4F02618();
}

uint64_t sub_1C443E2D8()
{

  return sub_1C449AC9C();
}

void sub_1C443E2F0()
{
  v1 = v0[58];
  v3 = v0[51];
  v2 = v0[52];
}

uint64_t sub_1C443E304()
{
}

uint64_t sub_1C443E31C()
{
  v2 = *(*(v0 - 104) + *(*(v0 - 232) + 48));
}

uint64_t sub_1C443E33C()
{

  return sub_1C4F01578();
}

double sub_1C443E358@<D0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t sub_1C443E374()
{
  v1 = v0[9];
  v2 = v0[7];
  return v0[1];
}

uint64_t sub_1C443E388()
{
  v2 = *(v0 - 1136);
  v3 = *(v0 - 1144);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C443E3A8()
{
  result = v0;
  v3 = *(v1 - 184);
  return result;
}

uint64_t sub_1C443E3B4()
{
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
}

uint64_t sub_1C443E3CC()
{
  v4 = *(v2 + 16);
  v5 = *(v3 - 176);
  *(v3 - 392) = v1;
  result = v0;
  v7 = *(v3 - 184);
  *(v3 - 400) = v2 + 16;
  *(v3 - 408) = v4;
  return result;
}

uint64_t sub_1C443E418@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;

  return swift_willThrow();
}

uint64_t sub_1C443E438(uint64_t result)
{
  *(result + 23) = HIBYTE(v1);
  *(result + 21) = HIDWORD(v1) >> 8;
  return result;
}

uint64_t sub_1C443E44C(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, __n128 *a5)
{
  a5[1] = a3;
  a5[2] = a2;
  a5[3] = a1;
  a5[4].n128_u8[0] = 5;

  return swift_willThrow();
}

void sub_1C443E4A0()
{
  *(v0 - 200) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 424) = 0;
}

uint64_t sub_1C443E4B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a3 - 256);
  *v3 = result;
  v3[1] = a2;
  return result;
}

uint64_t sub_1C443E4D0()
{

  return sub_1C4F026C8();
}

uint64_t sub_1C443E4F4@<X0>(void *a1@<X8>)
{
  result = *(v1 + 224);
  *a1 = *(v1 + 208);
  a1[1] = result;
  return result;
}

uint64_t sub_1C443E504@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v3 = *(v1 - 352);
  v4 = *(v1 - 152);

  return sub_1C4F02618();
}

uint64_t sub_1C443E52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Transformers(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443E5DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E5EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E60C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E61C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E62C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E63C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E65C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E67C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E68C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E70C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E71C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E72C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E74C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E76C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E78C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E79C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E80C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E87C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E90C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E91C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EAAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EC0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EC24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C443EC8C(void *a1, uint64_t a2)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    [a1 timestamp];
    v6 = v5;
    result = swift_beginAccess();
    *(a2 + 16) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C443ED0C(void *a1)
{
  v2 = [a1 view];
  v3 = sub_1C4F01138();

  v4 = [a1 sourceType];
  sub_1C4F01138();

  if (sub_1C4440C20() == 8)
  {

    sub_1C4401394();
    sub_1C4F02248();

    v5 = [a1 sourceType];
    v6 = sub_1C4F01138();
    v8 = v7;

    MEMORY[0x1C6940010](v6, v8);

    v3 = 0x80000001C4FC62F0;
    sub_1C446D0DC();
    swift_allocError();
    *v9 = 0xD000000000000027;
    *(v9 + 8) = 0x80000001C4FC62F0;
    *(v9 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    [a1 index];
  }

  return v3;
}

uint64_t sub_1C443EF00()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[23];
  result = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[17];
  v9 = *(v7 + 8);
  return result;
}

uint64_t sub_1C443EF28()
{

  return MEMORY[0x1EEDC59A8]();
}

uint64_t sub_1C443EF40()
{
  v2 = *(v0 - 408);
  v3 = *(v0 - 416);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C443EF88()
{
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  return swift_setDeallocating();
}

uint64_t sub_1C443EFB4()
{
  v2 = *(*(v0 + 288) + 64);
  *(v0 + 344) = v2;

  return sub_1C4428DA0(v2);
}

uint64_t sub_1C443EFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1C448D19C(a1, v3);
}

uint64_t sub_1C443F058@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 128);
  result = *(v4 + v3);
  *(v4 + v3) = a1;
  return result;
}

void sub_1C443F07C()
{
  v2 = (v0 + *(v1 + 36));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v1 + 40);
}

uint64_t sub_1C443F090()
{
  v2 = *(v0 - 256);

  return sub_1C4F026C8();
}

uint64_t sub_1C443F0E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C443F134()
{

  return sub_1C4F02858();
}

uint64_t sub_1C443F170(uint64_t a1)
{
  *(v1 + 104) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_1C443F184()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v5 = v0[14];
  v6 = v0[6];
  v7 = v0[16] + 16;

  return sub_1C4F00978();
}

double sub_1C443F1DC()
{
  *(v0 - 208) = 0;
  *(v0 - 200) = 0xE000000000000000;
  return v1;
}

uint64_t sub_1C443F1FC(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for HUTenPointContext.VirtualInteraction(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C443F24C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_1C443F264()
{
  v1 = *(*(v0 - 264) + 8);
  result = *(v0 - 272);
  v3 = *(v0 - 184);
  return result;
}

uint64_t sub_1C443F280()
{
  *(v2 + *(v1 + 48)) = v0;
  *(v2 + *(v1 + 52)) = 0;
  v6 = *(v4 - 184);
  v7 = *(v4 - 136);

  return sub_1C4471988(v6, v3);
}

uint64_t sub_1C443F2B4(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_1C443F2D4()
{

  return sub_1C440BAA8(v0, 0, 1, v1);
}

uint64_t sub_1C443F2F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v3 = *(v2 - 584);
  v4 = *(v2 - 248);
  return result;
}

__n128 sub_1C443F30C()
{
  v3 = *(v1 + v0 + 16);
  result = *(v1 + v0 + 32);
  v4 = *(v1 + v0 + 48);
  v5 = *(v1 + v0);
  return result;
}

void sub_1C443F350()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C443F3B4()
{
  *(v2 - 72) = v1;

  return sub_1C46DA590(v0 + 752, v0 + 352);
}

uint64_t sub_1C443F3EC()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_1C443F410()
{
  v1 = *(v0 - 168);
  v2 = *(*(v0 - 176) + 8);
  return *(v0 - 160);
}

uint64_t sub_1C443F438(uint64_t result)
{
  *(v1 - 304) = result;
  *(v1 - 168) = result;
  return result;
}

uint64_t sub_1C443F470()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_1C443F48C()
{
  *(v1 - 152) = 4;
  result = v0;
  v4 = *(v1 - 216);
  v3 = *(v1 - 208);
  return result;
}

uint64_t sub_1C443F4C0@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v3 = *(v1 - 288);
  return result;
}

uint64_t sub_1C443F504()
{
  *(v3 - 216) = v1;
  *(v3 - 208) = v0;
  *(v3 - 88) = v2;
  v5 = *(v3 - 104);
  v6 = *(v3 - 96);

  return sub_1C4F026E8();
}

uint64_t sub_1C443F534(uint64_t result)
{
  v3 = (v1 - *(v2 - 128)) >> 6;
  v4 = *(v2 - 96);
  *(v2 - 152) = v4 + 32;
  *(v2 - 144) = v4 + 16;
  *(v2 - 136) = result;
  return result;
}

uint64_t sub_1C443F558()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1C443F58C()
{
  v2 = *v0;
  v3 = *(v1 - 128);
  return *(v1 - 136);
}

uint64_t sub_1C443F5A0()
{
  v2 = *(v0 - 160);

  return sub_1C448C9D8();
}

void sub_1C443F5BC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[11];
}

uint64_t *sub_1C443F5E8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return sub_1C4422F90((v1 - 168));
}

uint64_t *sub_1C443F614(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_1C4422F90((v1 + 32));
}

uint64_t sub_1C443F63C(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for HUTenPointContext.AppCategoryDistribution(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C443F6AC()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C443F720()
{

  return sub_1C4F02938();
}

uint64_t sub_1C443F750()
{
  *(v2 - 248) = v1;
  v4 = v0[1];
  *(v2 - 176) = *v0;
  *(v2 - 160) = v4;
  *(v2 - 144) = v0[2];
  *(v2 - 135) = *(v0 + 41);
  v5 = *(v2 - 168);
  *(v2 - 104) = *(v2 - 176);
  *(v2 - 96) = v5;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

char *sub_1C443F7B0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 168) = a1;

  return sub_1C459D088(0, v2, 0);
}

uint64_t sub_1C443F7D4()
{
  *(v1 + 8) = *(v0 + 136);
  *(v1 + 16) = v2;
  return v1 + 24;
}

void sub_1C443F7E4()
{
  *(v2 - 208) = v0;
  *(v2 - 200) = v1;

  JUMPOUT(0x1C6940010);
}

void sub_1C443F800()
{
  *(v1 - 144) = v0;
  v3 = *(v1 - 72);

  sub_1C4C75350();
}

uint64_t sub_1C443F82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *(v18 + 16) = v15;

  return sub_1C441D670(&a15, v18 + v17 * v16 + 32);
}

uint64_t sub_1C443F84C(unint64_t *a1)
{

  return sub_1C4CCCA7C(a1, v1, v2);
}

uint64_t sub_1C443F87C(uint64_t a1, uint64_t a2)
{
  *(v2 - 360) = sub_1C442B738(a1, a2);

  return sub_1C4F00968();
}

uint64_t sub_1C443F8C4()
{
  v1 = *(*(v0 - 328) + 8);
  result = *(v0 - 352);
  v3 = *(v0 - 320);
  return result;
}

uint64_t sub_1C443F8E4()
{
  v2 = *(v0 - 200);

  return sub_1C4F02658();
}

void sub_1C443F95C()
{
  sub_1C441581C();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1C441172C();
  if (v6 == v7)
  {
LABEL_7:
    sub_1C442DD18(v5);
    if (v2)
    {
      sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
      v8 = sub_1C44108A0();
      sub_1C4418FDC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1C4412BE8();
        sub_1C445ECD8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
    sub_1C43FEA6C();
    goto LABEL_12;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C443FA34()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
}

BOOL sub_1C443FA44(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C443FA60()
{
  v2 = *(v0 - 104);

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1C443FA78()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void sub_1C443FAA4()
{
  v0[(v2 >> 6) + 8] |= 1 << v2;
  *(v0[6] + 2 * v2) = v1;
  *(v0[7] + 4 * v2) = v3;
  v4 = v0[2];
}

uint64_t sub_1C443FAEC()
{

  return sub_1C4F02938();
}

uint64_t sub_1C443FB60()
{

  return sub_1C4485354(v1, v0);
}

__n128 sub_1C443FBE0(__n128 *a1)
{
  result = *(v1 - 448);
  a1[1] = result;
  return result;
}

uint64_t sub_1C443FBF4(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t sub_1C443FC2C(unint64_t *a1)
{

  return sub_1C4401CBC(a1, v1, v2);
}

uint64_t sub_1C443FC80()
{
  v3 = *(v0 + 20);
  v4 = *(v2 - 128);
  *(v2 - 120) = *(*(v2 - 120) + 32);
  return v1 + v3;
}

uint64_t sub_1C443FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C440BAA8(a1, a2, a3, a4);
  v6 = *(v4 + 20);
  return result;
}

void sub_1C443FD80()
{
  *(v0 - 760) = 0;
  *(v0 - 768) = 0;
  *(v0 - 744) = 0;
  *(v0 - 752) = 0;
  *(v0 - 720) = 0;
  *(v0 - 736) = 0;
  *(v0 - 184) = 0;
  *(v0 - 728) = 0;
  *(v0 - 776) = 0;
  *(v0 - 784) = 0;
  *(v0 - 792) = 0;
  *(v0 - 800) = 0;
}

uint64_t sub_1C443FDE0()
{

  return sub_1C4EF9DD8();
}

uint64_t sub_1C443FDF8()
{

  return swift_dynamicCast();
}

uint64_t sub_1C443FE10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{

  return static Transformers.reportError(error:context:config:pipelineType:)(a1, 0x6E6576456566696CLL, 0xE900000000000074, a4, a5);
}

void sub_1C443FE38()
{
  v3 = v1[199];
  v4 = v1[68];
  v5 = v1[67];
  v6 = v1[66];
}

void sub_1C443FE70(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  sub_1C459EA10();
}

uint64_t sub_1C443FE94()
{

  return swift_dynamicCast();
}

uint64_t sub_1C443FEE0()
{

  return sub_1C4F02938();
}

uint64_t sub_1C443FF00()
{

  return sub_1C4F01578();
}

BOOL sub_1C443FF34()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C443FF4C()
{

  return swift_once();
}

uint64_t sub_1C443FF6C()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

uint64_t sub_1C443FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 184) = v4;
  *(v5 - 104) = a4;
  return 0;
}

uint64_t sub_1C443FFC8()
{

  return swift_once();
}

uint64_t sub_1C443FFF0(uint64_t a1)
{

  return sub_1C4BAFAC8(a1, v2, v1, sub_1C4BAF8E8);
}

uint64_t sub_1C444001C@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;

  return sub_1C4EFB658();
}

uint64_t sub_1C4440060()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];
  return v0[122];
}

uint64_t sub_1C44400AC()
{

  return swift_slowAlloc();
}

uint64_t sub_1C4440130(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[10];
  v4 = v2[7];
  v5 = v2[8];
  v6 = v2[6];
  return v2[5];
}

void sub_1C44401D4()
{
  v4 = (v2 + *(v3 + 32));
  *v4 = v1;
  v4[1] = v0;
  v5 = v2 + *(v3 + 40);
}

uint64_t sub_1C4440220(uint64_t result)
{
  *(v1 - 272) = result;
  v2 = *(result - 8);
  return result;
}

id sub_1C4440254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C4F01108();

  v8 = sub_1C4F01108();

  v9 = sub_1C4F01108();

  v10 = sub_1C4F01108();

  v11 = [v5 initWithView:v7 sourceType:v8 index:a5 updateType:v9 sourceIdentifier:v10];

  return v11;
}

uint64_t sub_1C4440344(uint64_t a1, double a2)
{
  sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  *(v4 + 56) = sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
  *(v4 + 32) = a1;
  *(v4 + 88) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = a2;
  swift_unknownObjectRetain();
  v5 = objc_autoreleasePoolPush();
  sub_1C4440420(&v7);

  objc_autoreleasePoolPop(v5);
  return v7;
}

void sub_1C4440420(uint64_t *a1@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = sub_1C4F01658();
  v12[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v12];

  v5 = v12[0];
  if (v4)
  {
    v6 = sub_1C4EF9A68();
    v8 = v7;
  }

  else
  {
    v9 = v5;
    v10 = sub_1C4EF97A8();

    swift_willThrow();
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a1 = v6;
  a1[1] = v8;
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1C4440590(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1C4440600(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  sub_1C44344B8(a1, a2);
  v3 = objc_autoreleasePoolPush();
  sub_1C43FD024();
  sub_1C4434BD0(v4, v5, v6, v7);
  if (v2)
  {
    v8 = sub_1C43FD024();
    sub_1C441DFEC(v8, v9);
    objc_autoreleasePoolPop(v3);
LABEL_10:
    v20 = sub_1C43FD024();
    sub_1C441DFEC(v20, v21);
    return v3;
  }

  objc_autoreleasePoolPop(v3);
  v10 = v27;
  if (!v27)
  {
    v18 = sub_1C43FD024();
    sub_1C441DFEC(v18, v19);
    v3 = 0x80000001C4FC3BF0;
    sub_1C4C6D7FC();
    sub_1C43FFB2C();
    *v17 = 0xD000000000000026;
    v17[1] = 0x80000001C4FC3BF0;
    goto LABEL_9;
  }

  v11 = *(v27 + 16);
  if (v11 < 2)
  {

    v12 = sub_1C43FD024();
    sub_1C441DFEC(v12, v13);
    sub_1C4F02248();

    sub_1C43FBDF0();
    v28 = v14;
    v29 = v11;
    v15 = sub_1C4F02858();
    MEMORY[0x1C6940010](v15);

    MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FC3C40);
    v3 = 0xD000000000000012;
    v16 = v28;
    sub_1C4C6D7FC();
    sub_1C43FFB2C();
    *v17 = 0xD000000000000012;
    v17[1] = v16;
LABEL_9:
    sub_1C440DB00(v17, 1);
    goto LABEL_10;
  }

  sub_1C442B870(v27 + 32, &v27);
  sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
  result = sub_1C441508C();
  if (*(v10 + 16) >= 2uLL)
  {
    if (result)
    {
      v3 = v29;
    }

    else
    {
      v3 = 0;
    }

    sub_1C442B870(v10 + 64, &v27);
    v23 = sub_1C43FD024();
    sub_1C441DFEC(v23, v24);

    v25 = sub_1C43FD024();
    sub_1C441DFEC(v25, v26);
    sub_1C441508C();
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C444088C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 40);
  v8 = sub_1C43FBC98();
  v9(v8);
  return v4;
}

uint64_t sub_1C44408D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 40);
  v8 = sub_1C43FBC98();
  v9(v8);
  return v4;
}

void sub_1C4440948()
{
  v2 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v2;

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4440968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t sub_1C4440978(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = v2;
  return result;
}

uint64_t sub_1C4440988()
{

  return sub_1C456902C(v0, v1);
}

void sub_1C44409B0()
{
  *(v1 + 16) = v0;
  v3 = *(v2 - 208);
  v4 = v1 + *(v2 - 216);
}

uint64_t sub_1C44409C8()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_1C44409E0(double a1)
{
  *v3 = a1;
  v5 = v2 + *(v1 + 28);

  return sub_1C4EF9AD8();
}

id sub_1C4440A14()
{
  v4 = *(*(v1 + 48) + ((v0 << 9) | (8 * __clz(__rbit64(v2)))));
  v5 = *(v1 + 16);

  return v4;
}

uint64_t sub_1C4440A4C()
{
  *(v3 - 408) = v0;
  sub_1C441DFEC(v1, v2);
  v4 = *(v3 - 448);

  return sub_1C4F00DA8();
}

uint64_t sub_1C4440AAC()
{
}

uint64_t sub_1C4440AE4(uint64_t result)
{
  *(v3 + 40) = result;
  *(result + 16) = v2;
  *(result + 24) = v5;
  *(result + 32) = v1;
  *(result + 40) = v4;
  return result;
}

uint64_t sub_1C4440B80()
{
  v1 = *(*(v0 - 240) + 32);
  result = *(v0 - 248);
  v3 = *(v0 - 128);
  return result;
}

void sub_1C4440B98()
{
  v2 = (v1 + *(v0 + 48));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v0 + 52);
}

void sub_1C4440BB0()
{
  *(v0 - 184) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 264) = 0;
}

void *sub_1C4440BDC(uint64_t a1)
{
  *(v4 - 96) = v2;
  sub_1C440BAA8(v2 + v3, 1, 1, a1);
  v5 = v1;
  v7 = v1[3];
  v6 = v1[4];
  *(v4 - 104) = v5;
  return sub_1C4409678(v5, v7);
}

uint64_t sub_1C4440C20()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_1C4440CDC(uint64_t a1@<X8>)
{
  v5 = (a1 + 16 * v4);
  *v5 = v3;
  v5[1] = v2;
  v6 = *(v1 + 56) + 32 * v4;
}

uint64_t sub_1C4440CF0()
{
  v2 = *(v0 + 112);

  return sub_1C4F00978();
}

BOOL sub_1C4440D08()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C4440D20()
{

  return type metadata accessor for FeatureValue(0);
}

void sub_1C4440D4C(double a1)
{
  *(v2 + 384) = a1;
  *(v2 + 408) = v1;
  *(v2 + 416) = 0xD000000000000010;
}

uint64_t sub_1C4440D6C()
{
  v3 = *(v1 - 128);
  v4 = *(v1 - 192);

  return sub_1C4471988(v3, v0);
}

uint64_t sub_1C4440D8C()
{

  return sub_1C4F01FC8();
}

void sub_1C4440DBC()
{
  v1 = *(v0 - 104);
  *(v0 - 240) = 1701869940;
  *(v0 - 232) = 0xE400000000000000;
}

uint64_t sub_1C4440DD4()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C4440E74()
{

  return sub_1C4D4E63C(v0, type metadata accessor for WalletEmailOrderStructs.ShipmentFullFillmentEmailRelationshipType);
}

uint64_t sub_1C4440EB0()
{
  v3 = *(v0 + 32);
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

void sub_1C4440EE4()
{
  v7 = (v1 + v0[8]);
  *v7 = v2;
  v7[1] = v4;
  v8 = (v1 + v0[10]);
  *v8 = *(v5 - 208);
  v8[1] = v3;
  *(v1 + v0[11]) = v6;
  v9 = v0[12];
}

uint64_t sub_1C4440F10@<X0>(void *a1@<X8>)
{
  result = *(v2 - 96);
  *a1 = *(v2 - 104);
  a1[1] = result;
  v4 = *(v1 + 44);
  return result;
}

id sub_1C4440F4C(id a1)
{
  v4 = v1[8];
  v3 = v1[9];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  v8 = v1[3];

  return a1;
}

uint64_t sub_1C4440F6C()
{

  return swift_allocObject();
}

uint64_t sub_1C4440FE4()
{
  *(v0 + 12) = 2080;
  v3 = *(v1 - 200);
  v4 = *(v1 - 216);

  return sub_1C441D828(v3, v4, (v1 - 168));
}

uint64_t sub_1C4441018()
{
  v2 = *(v0 - 472);
}

uint64_t sub_1C4441034()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C44410C0(uint64_t a1)
{

  return sub_1C440BAA8(v2 + v1, 1, 1, a1);
}

uint64_t sub_1C4441118()
{
  result = v1;
  v3 = *(v0 + 256);
  return result;
}

uint64_t sub_1C444115C()
{

  return sub_1C4F01108();
}

void sub_1C4441190()
{
  v1 = v0[162];
  v2 = v0[160];
  v3 = v0[155];
  v4 = v0[154];
  v5 = v0[152] + v0[156];
}

uint64_t sub_1C44411D4()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1C44411F4()
{
  result = v0;
  v3 = *(v1 - 288);
  v4 = *(v1 - 496);
  v5 = *(v1 - 544);
  v6 = *(v1 - 552);
  return result;
}

uint64_t sub_1C4441274(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;
  v14 = (v12 + *(v11 + 2256));
  v15 = *v14;
  v16 = v14[1];

  return sub_1C441D828(v15, v16, &a10);
}

uint64_t sub_1C44412A4()
{
  *(v1 - 96) = 0;
  *(v1 - 88) = 0;
  return v0;
}

uint64_t sub_1C44412B8()
{

  return sub_1C4EFBED8();
}

uint64_t sub_1C44412D0()
{
  *(v3 - 296) = v1;
  v4 = *(v2 + 8);
  return v0;
}

uint64_t sub_1C44412E8(uint64_t result)
{
  *(result + 16) = sub_1C4A9493C;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1C4441300()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4441324()
{

  return sub_1C4D4E63C(v0, v1);
}

uint64_t sub_1C44413AC()
{
  v2 = *(v1 - 192);
  v3 = *(*(v1 - 200) + 8);
  return v0;
}

uint64_t sub_1C44413EC@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;
  result = v1 - 112;
  v3 = *(v1 - 200);
  return result;
}

uint64_t sub_1C4441424()
{

  return sub_1C4EFDAB8();
}

void sub_1C444146C()
{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
}

uint64_t sub_1C4441478()
{
  v3 = *(v0 - 3);
  v4 = *(v0 - 2);
  *(v1 - 119) = *(v0 - 23);
  *(v1 - 144) = v3;
  *(v1 - 128) = v4;
  v5 = *v0;

  return sub_1C45A2358(v1 - 144, v1 - 208);
}

__n128 sub_1C44414A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  *(v20 - 88) = v19;
  v22 = *(v19 + 24);
  v23 = *(v19 + 16) + 1;
  return result;
}

uint64_t sub_1C4441528()
{
}

__n128 sub_1C4441540()
{
  result = *(v0 - 144);
  *(v0 - 128) = *(v0 - 160);
  *(v0 - 112) = result;
  v2 = *(v0 - 104);
  return result;
}

uint64_t sub_1C4441550(unint64_t *a1)
{

  return sub_1C4401CBC(a1, v1, v2);
}

uint64_t sub_1C444157C()
{

  return sub_1C4EFB968();
}

uint64_t sub_1C4441594()
{
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[18];

  return swift_bridgeObjectRelease_n();
}

__n128 sub_1C4441608(uint64_t a1)
{
  *(v3 + 72) = a1;
  result = *(v3 + 40);
  v5 = *(v3 + 56);
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

void sub_1C4441634(uint64_t a1)
{
  v6 = *(v1 + 104);
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v6;

  sub_1C4422934();
}

uint64_t sub_1C44416E4()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 304);
  return result;
}

unint64_t sub_1C4441740(uint64_t a1)
{
  *(v2 - 66) = *(v1 + *(a1 + 20));
  *(v2 - 67) = 1;

  return sub_1C44911D0();
}

uint64_t sub_1C4441764()
{
  v2 = *(v0 - 1032);
  v3 = *(v0 - 1040);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4441790(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_1C44417B0(uint64_t a1@<X8>)
{
  v1 = *(a1 - 256);
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) + 32;
}

uint64_t sub_1C44417E0()
{
  v4 = *(v0 + 16);
  result = v2 + *(v1 + 24);
  v6 = *(v3 - 200);
  return result;
}

uint64_t sub_1C4441818()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 208);

  return sub_1C4F02658();
}

void sub_1C4441860(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69A9748];

  sub_1C4EDDAFC(319, a2, v3);
}

uint64_t sub_1C4441894()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C44418B4()
{
  v2 = *(v0 + 32);
  result = *(v1 - 120);
  v4 = *(v1 - 152);
  return result;
}

uint64_t sub_1C44418D0()
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C44418F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1C444192C()
{

  JUMPOUT(0x1C6940F90);
}

double sub_1C4441944@<D0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t sub_1C444197C(uint64_t a1)
{
  v3 = STACK[0x308];

  return sub_1C4471988(v1, a1);
}

void sub_1C44419A8()
{
  *(v1 - 376) = v0;
  *(v1 - 72) = v0;
  v2 = *(*(v1 - 368) + 16);
}

uint64_t sub_1C44419D8()
{
  *(v1 - 184) = *(v0 + 376);

  return sub_1C44E3634(v1 - 240);
}

uint64_t sub_1C4441A00()
{
  *(v3 - 136) = v0;
  *(v3 - 128) = v1;
  v5 = *(v3 - 176);
  v4 = *(v3 - 168);
  return v2;
}

uint64_t sub_1C4441A18()
{

  return swift_beginAccess();
}

uint64_t sub_1C4441A88()
{
  result = v0;
  v4 = *(v1 - 224);
  v3 = *(v1 - 216);
  return result;
}

uint64_t sub_1C4441AD4()
{
  v2 = *(*(v1 - 280) + 8);
  result = v0;
  v4 = *(v1 - 272);
  return result;
}

uint64_t sub_1C4441AF0@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  v3 = *(v1 - 288);
  v4 = *(v1 - 136);

  return sub_1C4F02618();
}

uint64_t sub_1C4441B18(uint64_t a1)
{
  sub_1C4415EA8();
  sub_1C4441254();
  v2 = sub_1C4F02058();
  if (v2[2] != 2)
  {

    return a1;
  }

  if (v2[2])
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = v2[6];
    v7 = v2[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    a1 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);

    if (v2[2] >= 2uLL)
    {
      v8 = v2[8];
      v9 = v2[9];
      v10 = v2[10];
      v11 = v2[11];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C441DE88();
      MEMORY[0x1C693FEF0](v12, v13);

      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C4441C50(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      return;
    default:
      sub_1C43FE984();
      break;
  }
}

id sub_1C4441D18(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return [a1 isEqual_];
    }

    return 0;
  }

  return !a2;
}

id sub_1C4441D58(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1C4EF9A38();
    sub_1C441DFEC(a2, a3);
  }

  if (a5 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1C4EF9A38();
    sub_1C441DFEC(a4, a5);
  }

  v17 = sub_1C4F01108();

  v18 = [v8 initWithConfigIdentifier:a1 initialBookmark:v13 latestBookmark:v16 state:v17 triggered:a8 & 1];

  return v18;
}

uint64_t sub_1C4441E74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C4569F78();
}

uint64_t sub_1C4442200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (a3)
  {
    swift_unknownObjectRetain();
    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_self();
    v13 = sub_1C4F01108();
    LOBYTE(v23) = 0;
    v14 = [v12 publisherForStream:v13 device:a4 account:a5 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v23];

    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      v28 = sub_1C44425B8;
      v29 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1C4442530;
      v27 = &unk_1F44092E0;
      v17 = _Block_copy(&aBlock);

      v28 = nullsub_1;
      v29 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1C443EC24;
      v27 = &unk_1F4409308;
      v18 = _Block_copy(&aBlock);
      v19 = [v14 sinkWithBookmark:a3 completion:v17 receiveInput:v18];

      _Block_release(v18);
      _Block_release(v17);

      swift_beginAccess();
      v9 = *v16;
      swift_unknownObjectRetain();

      objc_autoreleasePoolPop(v11);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v21 = 0;
      *(v21 + 8) = 0xE000000000000000;
      *(v21 + 16) = 0xD000000000000013;
      *(v21 + 24) = 0x80000001C4FC3CA0;
      *(v21 + 32) = v9;
      *(v21 + 40) = a2;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0xE000000000000000;
      *(v21 + 64) = 2;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      objc_autoreleasePoolPop(v11);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1C4CC0D58(a1, a2, a4, a5);
    if (!v5)
    {
      return v20;
    }
  }

  return v9;
}

uint64_t sub_1C44424E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C4442530(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

uint64_t sub_1C44425D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

void sub_1C4442638()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C4618, &qword_1C4F5A9D0);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C44429A8();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);

    sub_1C441DFEC(0, 0xF000000000000000);
  }

  else
  {
    sub_1C440B4B8();
    v10 = sub_1C4F026B8();
    sub_1C4442B3C();
    sub_1C4401054();
    sub_1C4F026C8();
    sub_1C440B4B8();
    v21 = sub_1C4F026B8();
    LOBYTE(v23) = 3;
    sub_1C440B4B8();
    v11 = sub_1C4F02618();
    v13 = v12;
    v20 = v11;
    sub_1C4442D08();
    sub_1C4401054();
    sub_1C4F026C8();
    v19 = v23;
    LOBYTE(v23) = 5;
    sub_1C440B4B8();
    v18 = sub_1C4F02688();
    LOBYTE(v22[0]) = 6;
    sub_1C4442E20();
    sub_1C4401054();
    sub_1C4F026C8();
    sub_1C444C16C();
    sub_1C4401054();
    sub_1C4F02658();
    v18 &= 1u;
    v14 = sub_1C4408A58();
    v15(v14);
    v16 = v33;
    v17 = v34;
    sub_1C441DFEC(0, 0xF000000000000000);
    v22[0] = v10;
    LOBYTE(v22[1]) = 0;
    v22[2] = v21;
    v22[3] = v20;
    v22[4] = v13;
    v22[5] = v19;
    LOBYTE(v22[6]) = v18;
    BYTE1(v22[6]) = 5;
    v22[7] = v16;
    v22[8] = v17;
    sub_1C4443048(v22, &v23);
    sub_1C440962C(v2);
    v23 = v10;
    v24 = 0;
    v25 = v21;
    v26 = v20;
    v27 = v13;
    v28 = v19;
    v29 = v18;
    v30 = 5;
    v31 = v16;
    v32 = v17;
    sub_1C444AF3C(&v23);
    memcpy(v4, v22, 0x48uLL);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

unint64_t sub_1C44429A8()
{
  result = qword_1EDDFDF58[0];
  if (!qword_1EDDFDF58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFDF58);
  }

  return result;
}

uint64_t sub_1C4442A04(char a1)
{
  result = 0x6564724F77656976;
  switch(a1)
  {
    case 1:
      result = 0x5364656C62616E65;
      break;
    case 2:
      result = 0x4374706D65747461;
      break;
    case 3:
      result = 0x73654D726F727265;
      break;
    case 4:
      result = 0x736E6F6974706FLL;
      break;
    case 5:
      result = 0x724373656C626174;
      break;
    case 6:
      result = 0x6570795466666964;
      break;
    case 7:
      result = 0x6B72616D6B6F6F62;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4442B3C()
{
  result = qword_1EDDFE630;
  if (!qword_1EDDFE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE630);
  }

  return result;
}

unint64_t sub_1C4442BF0()
{
  result = qword_1EDDFE638;
  if (!qword_1EDDFE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE638);
  }

  return result;
}

unint64_t sub_1C4442C44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4442C70(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C4442C70(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t _s24IntelligencePlatformCore20ObservedBehaviorTypeOwet_0_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 5);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

unint64_t sub_1C4442D08()
{
  result = qword_1EDDFE008;
  if (!qword_1EDDFE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE008);
  }

  return result;
}

unint64_t sub_1C4442DBC()
{
  result = qword_1EDDFE010;
  if (!qword_1EDDFE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE010);
  }

  return result;
}

void *sub_1C4442E10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1C4442E20()
{
  result = qword_1EDDFF8E8;
  if (!qword_1EDDFF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8E8);
  }

  return result;
}

uint64_t sub_1C4442E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4442E20();
  v7 = sub_1C4442EEC();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

unint64_t sub_1C4442EEC()
{
  result = qword_1EDDFF8F0;
  if (!qword_1EDDFF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8F0);
  }

  return result;
}

uint64_t sub_1C4442F40()
{
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4442F90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4442F40();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppCategoryContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C4443088(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C44430DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, unsigned __int8 a8@<W7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v17 = a8;
  sub_1C4EF9C88();
  v18 = _s20BookmarkLoadingStateVMa();
  *(a9 + v18[5]) = MEMORY[0x1E69E7CC0];
  *(a9 + v18[6]) = 0;
  v21 = v18[7];
  *(a9 + v21) = 0;
  v20 = v18[8];
  *(a9 + v20) = 0;
  *(a9 + v18[9]) = 0;
  *(a9 + v18[10]) = 0;
  *(a9 + v18[11]) = 0;

  swift_unownedRetain();
  sub_1C4428D8C(a6, a7);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C44448F0(a3, a4, a5, v17 == 1, a10, v10, a1, a2, a9, a6, a7, a3, a4, a5);
  if (v24)
  {
    return sub_1C44649A8(a9);
  }

  if (*(a9 + v21) == 1)
  {
    *(a9 + v20) = 0;
  }

  return result;
}

unint64_t sub_1C444323C()
{
  result = qword_1EDDECB48[0];
  if (!qword_1EDDECB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDECB48);
  }

  return result;
}

unint64_t sub_1C4443290()
{
  result = qword_1EDDFDF40;
  if (!qword_1EDDFDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDF40);
  }

  return result;
}

uint64_t sub_1C44432E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4443348();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C4443348()
{
  result = qword_1EDDFDF38;
  if (!qword_1EDDFDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDF38);
  }

  return result;
}

void sub_1C444339C(void *a1@<X8>)
{
  sub_1C4442638();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

uint64_t sub_1C44433E8()
{
  *(v5 + v2[5]) = v1;
  v8 = (v5 + v2[7]);
  *v8 = v3;
  v8[1] = v4;
  *(v5 + v2[8]) = v0;
  *(v5 + v2[9]) = *(v6 - 132) & 1;

  return type metadata accessor for PhaseStores();
}

void sub_1C4443428(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t sub_1C444343C()
{
  v2 = *(v0 - 744);
  v3 = *(v0 - 752);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4443468()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C4443490@<X0>(uint64_t a1@<X8>)
{
  v3[12] = a1;
  v3[13] = v1;
  v3[9] = v2;

  return sub_1C4EFB728();
}

uint64_t sub_1C44434E0()
{
  *(v2 - 224) = v1;
  *(v2 - 264) = v0;

  return sub_1C4EFF0C8();
}

uint64_t sub_1C4443524()
{
  v1 = *(*(v0 - 88) + 44);
  *(v0 - 72) = 7;
  return 0;
}

uint64_t sub_1C444353C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  v5 = sub_1C444B1C0(a1, a2, a3);
  return v6(v5);
}

uint64_t sub_1C4443600@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v10 = v8;
  v33 = a7;
  v31 = a8;
  v32 = a6;
  v30 = a5;
  v29 = a4;
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1C444AF90();
  _s7MetricsO7PayloadVMa();
  v19 = sub_1C443EFD8();
  if (!sub_1C44157D4(v19, 1, v9))
  {
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v20, v21, v22, v23);
    v24 = *(v9 + 52);
    sub_1C468282C();
  }

  v25 = (v18)(v34, 0);
  v26 = *(v10 + 16);
  MEMORY[0x1EEE9AC00](v25);
  *(&v28 - 8) = a1;
  *(&v28 - 7) = a2;
  *(&v28 - 6) = a3;
  *(&v28 - 5) = v10;
  *(&v28 - 4) = v29;
  *(&v28 - 12) = v30;
  *(&v28 - 2) = v32;
  *(&v28 - 8) = v33;
  sub_1C4443580(sub_1C44435C0, (&v28 - 10));
  return sub_1C4464A74();
}

void sub_1C44437BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4404F80();
  v40 = *v10;
  v41 = sub_1C4EFB1E8();
  v11 = sub_1C43FCDF8(v41);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v39 = v14;
  sub_1C43FD1D0();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v24 = sub_1C43FEFC4(v16, v17, v18, v19, v20, v21, v22, v23, v39);
  v25 = sub_1C43FCDF8(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4406E1C();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8);
  sub_1C440D510();
  sub_1C4EFB2C8();
  if (!v42)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v30 = v42;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v31 = *(v27 + 8);
  v32 = sub_1C43FD574();
  v31(v32);
  if (v10)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v33 = v42;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v34 = sub_1C43FD574();
  v31(v34);
  sub_1C4425150();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C442DFA8())
  {

    goto LABEL_8;
  }

  v35 = sub_1C4400510();
  v36(v35);
  v37 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v37, v38);
  __break(1u);
}

void sub_1C4443A38(uint64_t a1, uint64_t a2)
{
  sub_1C440DD3C();
  if (v5 == v6)
  {
    *(v2 + 16) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1C4EF9CD8();
    v8 = sub_1C4412B9C(*(v7 + 28));

    sub_1C440BAA8(v8, v9, a2, v10);
  }
}

void sub_1C4443AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9, unsigned __int8 a10)
{
  v68 = a7;
  v67 = a6;
  v17 = sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v60 - v19;
  sub_1C4449828();
  if (v10)
  {
    return;
  }

  v66 = 0;
  v21 = v67;
  v61 = a1;
  v62 = v20;
  v22 = v68;
  v64 = a4;
  v65 = a3;
  v63 = a8;
  v23 = v72;
  if (v72)
  {
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443048(&v71, &v69);
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CD8();

    sub_1C444AF3C(&v71);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v69 = v28;
      *v27 = 136446722;
      v29 = sub_1C444AB08();
      v31 = sub_1C441D828(v29, v30, &v69);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = sub_1C4CC2358(v23);
      v34 = sub_1C441D828(v32, v33, &v69);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      if (v75)
      {
        v35 = v74;
      }

      else
      {
        v35 = 0;
      }

      if (v75)
      {
        v36 = v75;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v37 = sub_1C441D828(v35, v36, &v69);

      *(v27 + 24) = v37;
      _os_log_impl(&dword_1C43F8000, v25, v26, "ViewUpdate: %{public}s: View is %s: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v28, -1, -1);
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    sub_1C444AF3C(&v71);
    v38 = v63;
    updated = _s17ViewUpdateRequestVMa(0);
    sub_1C440BAA8(v38, 1, 1, updated);
    return;
  }

  v40 = v73;
  v41 = a5;
  if (qword_1EDDECB20 != -1)
  {
    swift_once();
  }

  v60 = qword_1EDE2D2B0;
  if (qword_1EDE2D2B0 < v40)
  {
    v42 = v40;
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v43 = sub_1C4F00978();
    sub_1C442B738(v43, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CD8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446210;
      v48 = sub_1C444AB08();
      v50 = sub_1C441D828(v48, v49, &v69);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1C43F8000, v44, v45, "ViewUpdate: %{public}s: Detected crashed process during view update", v46, 0xCu);
      sub_1C440962C(v47);
      MEMORY[0x1C6942830](v47, -1, -1);
      MEMORY[0x1C6942830](v46, -1, -1);
    }

    v69 = 0;
    v70 = 0xE000000000000000;
    sub_1C4F02248();

    v69 = 0xD00000000000001BLL;
    v70 = 0x80000001C4FC67A0;
    v76 = v42;
    v51 = sub_1C4F02858();
    MEMORY[0x1C6940010](v51);

    MEMORY[0x1C6940010](543584032, 0xE400000000000000);
    v76 = v60;
    v52 = sub_1C4F02858();
    MEMORY[0x1C6940010](v52);

    v53 = v69;
    v54 = v70;
    sub_1C446D0DC();
    swift_allocError();
    *v55 = v53;
    *(v55 + 8) = v54;
    *(v55 + 16) = 2;
    swift_willThrow();
    goto LABEL_23;
  }

  v56 = sub_1C4445828(v71, a9);
  v57 = v62;
  v58 = v66;
  sub_1C444412C(v61, a2, &v71, v65, v64, v41, v21, v22, v62, v56 & 1, a10);
  if (v58)
  {
LABEL_23:
    sub_1C444AF3C(&v71);
    return;
  }

  v59 = _s17ViewUpdateRequestVMa(0);
  if (sub_1C44157D4(v57, 1, v59) == 1)
  {
    sub_1C4BBAC48();
  }

  sub_1C444AF3C(&v71);
  sub_1C4464A04(v57, v63);
}

uint64_t sub_1C444412C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11)
{
  LODWORD(v125) = a8;
  v124 = a7;
  v121 = a3;
  v117 = a9;
  v126 = a11;
  v122 = _s20BookmarkLoadingStateVMa();
  v17 = sub_1C43FBCE0(v122);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v118 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v114 - v22;
  v24 = *(v11 + 24);
  v25 = *(v11 + 120);
  v131[0] = a1;
  v131[1] = a2;
  v131[2] = v24;
  v131[3] = v25;
  v131[4] = 0;

  swift_unownedRetain();
  v119 = a4;
  v120 = a6;
  v123 = a5;
  v26 = a6;
  v27 = v126;
  v28 = v127;
  sub_1C44430DC(a1, a2, a4, a5, v26, v124, v125, v126, v23, v131);
  v127 = v28;
  if (v28)
  {

    swift_unownedRelease();
  }

  v114 = v11;
  v115 = v25;
  v116 = v24;
  v31 = v23[v122[6]] != 1 || v27 == 1;
  v32 = v122;
  if (v31)
  {
    v46 = v120;
    v45 = v123;
    v47 = v121;
  }

  else
  {
    v40 = a1;
    v41 = a1;
    v42 = a2;
    v43 = a2;
    v44 = v119;
    v45 = v123;
    v46 = v120;
    sub_1C440B768(v41, v43, v119, v123, v120, *&v23[v122[5]], 1, 0);
    v127 = 0;
    v47 = v121;
    v48 = v118;
    sub_1C44430DC(v40, v42, v44, v45, v46, v124, v125, 1u, v118, v131);
    v127 = 0;
    sub_1C44649A8(v23);
    sub_1C4CE01B8(v48, v23);
    v27 = 1;
    v32 = v122;
  }

  v33 = v47;
  v34 = v23;
  v35 = v127;
  v38 = sub_1C44638A4(v33, v29, v45, v46, v23, 0, v27);
  v127 = v35;
  if (v35)
  {

    swift_unownedRelease();
    sub_1C43FFF1C();

    sub_1C4412914();
    v39 = v23;
    return sub_1C44649A8(v39);
  }

  v49 = v36;
  v50 = v38;
  v126 = v27;
  v125 = v34;
  LODWORD(v124) = v37;
  sub_1C4441C50(v37);
  if (v52 == 0xD000000000000013 && 0x80000001C4F87C40 == v51)
  {

    v55 = v125;
  }

  else
  {
    v54 = sub_1C4F02938();

    v55 = v125;
    if ((v54 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  *(v55 + v32[9]) = 1;
  sub_1C441A9F4();
  if (!v31)
  {
    v73 = v55;
    sub_1C450B034();
    v74 = swift_allocError();
    v75->n128_u64[0] = 0xD00000000000003CLL;
    v75->n128_u64[1] = 0x80000001C4FC4890;
    sub_1C4413C3C(v130, v129, v128, v74, v75);
    v127 = v76;
    swift_willThrow();

    swift_unownedRelease();

    sub_1C43FFF1C();

    sub_1C4412914();
    v39 = v73;
    return sub_1C44649A8(v39);
  }

LABEL_21:
  if ((*(v55 + v32[7]) & 1) == 0)
  {
    sub_1C4441C50(v124);
    if (v78 == 0x65676E6168436F6ELL && v77 == 0xE900000000000073)
    {

      v56 = v119;
    }

    else
    {
      v80 = sub_1C4F02938();

      v56 = v119;
      if ((v80 & 1) == 0 && [v49 triggered])
      {
        *(v125 + v32[8]) = 1;
      }
    }

    if ((*(v125 + v32[8]) & 1) == 0)
    {
      v84 = *(v125 + v32[5]);
      sub_1C441A9F4();
      v85 = sub_1C44208A8();
      sub_1C440B768(v85, v86, v87, v88, v46, v89, 0, v90);
      v127 = 0;
      v64 = v117;
      goto LABEL_39;
    }

LABEL_33:
    sub_1C442D81C();
    sub_1C4464208();
    v127 = 0;
    sub_1C442D81C();
    sub_1C446452C();
    v127 = 0;
    v91 = v124;
    LODWORD(v119) = WORD1(v124);
    LODWORD(v118) = v124 >> 8;
    v121 = v82;
    v122 = v81;
    LODWORD(v120) = v83;

    swift_unownedRelease();
    sub_1C43FFF1C();

    sub_1C4412914();
    v92 = v32[5];
    v93 = v46;
    v94 = v125;
    v116 = v49;
    v95 = *(v125 + v92);
    v96 = v32;
    v97 = v56;
    updated = _s17ViewUpdateRequestVMa(0);
    v99 = updated[7];
    v100 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v100);
    v102 = v117;
    (*(v101 + 16))(v117 + v99, v94);
    sub_1C441A9F4();
    v103 = *(v94 + v96[9]);
    v104 = v31;
    v105 = *(v94 + v96[10]);
    v106 = *(v94 + v96[11]);
    v107 = v123;
    *v102 = v97;
    *(v102 + 8) = v107;
    v108 = v116;
    *(v102 + 16) = v93;
    *(v102 + 24) = v108;
    *(v102 + 32) = v50;
    *(v102 + 40) = v91;
    *(v102 + 41) = v118;
    *(v102 + 42) = v119;
    *(v102 + 48) = v95;
    *(v102 + updated[8]) = v104;
    *(v102 + updated[9]) = v103;
    *(v102 + updated[10]) = v105;
    *(v102 + updated[11]) = v106;
    *(v102 + updated[12]) = v120 & 1;
    v109 = (v102 + updated[13]);
    v110 = v121;
    *v109 = v122;
    v109[1] = v110;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44649A8(v94);
    v111 = v102;
    v112 = 0;
    v113 = updated;
    return sub_1C440BAA8(v111, v112, 1, v113);
  }

  v56 = v119;
  if (*(v55 + v32[8]) == 1)
  {
    goto LABEL_33;
  }

  v57 = *(v55 + v32[5]);
  sub_1C441A9F4();
  v58 = sub_1C44208A8();
  sub_1C440B768(v58, v59, v60, v61, v46, v62, 1, v63);
  v64 = v117;
  v127 = 0;
  v65 = sub_1C442D81C();
  sub_1C4CE66C4(v65, v66, v67, v68, v69, v70, v71, v72, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
  v127 = 0;
LABEL_39:

  swift_unownedRelease();

  sub_1C44649A8(v125);
  v113 = _s17ViewUpdateRequestVMa(0);
  v111 = v64;
  v112 = 1;
  return sub_1C440BAA8(v111, v112, 1, v113);
}

uint64_t _s20BookmarkLoadingStateVMa()
{
  result = qword_1EDDEBF40;
  if (!qword_1EDDEBF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C44448F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v130 = a8;
  v128 = a7;
  v151 = a6;
  LODWORD(v126) = a4;
  v122 = a1;
  v132 = a14;
  v131 = a11;
  v129 = a10;
  v16 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v123 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v124 = &v96 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v125 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v96 - v24;
  v26 = sub_1C4EFB768();
  v127 = *(v26 - 8);
  v27 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a5;
  v32 = *a5;
  v31 = a5[1];
  swift_unownedRetainStrong();
  v33 = sub_1C4440C6C(v32);
  if (v14)
  {

LABEL_6:

LABEL_7:

    swift_unownedRelease();
    sub_1C4463890(v129, v131);
  }

  else
  {
    v34 = v33;
    v120 = v29;
    v121 = v26;
    v118 = v30;
    v119 = v25;

    v35 = *(v34 + 168);

    swift_unownedRetainStrong();
    v36 = sub_1C4440C6C(v32);
    v37 = v127;
    v117 = v35;
    if (v126)
    {

      v38 = *(v36 + 192);

      swift_unownedRetainStrong();
      v39 = sub_1C4440C6C(v32);
      v108 = v38;

      v40 = (v39 + 184);
    }

    else
    {

      v41 = *(v36 + 200);

      swift_unownedRetainStrong();
      v43 = sub_1C4440C6C(v32);
      v108 = v41;

      v40 = (v43 + 176);
    }

    v44 = *v40;

    swift_unownedRetainStrong();
    v45 = sub_1C4440C6C(v32);
    v46 = v117;
    v47 = v45;
    v105 = a13;
    v104 = a12;
    v103 = a9;

    v107 = *(v47 + 256);

    v48 = 0;
    v127 = v37 + 8;
    v100 = xmmword_1C4F0CE60;
    v115 = xmmword_1C4F0D130;
    v117 = v46;
    v109 = v44;
    while (1)
    {
      while (1)
      {
        if (v48 == 8)
        {

          goto LABEL_7;
        }

        v49 = *(&unk_1F43D2FB8 + v48 + 32);
        v126 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
        v50 = swift_allocObject();
        *(v50 + 16) = v100;
        *(v50 + 56) = MEMORY[0x1E69E6530];
        *(v50 + 64) = MEMORY[0x1E69A0180];
        *(v50 + 32) = v122;
        *(v50 + 96) = &_s10SourceTypeON;
        *(v50 + 104) = sub_1C444323C();
        *(v50 + 72) = v49;
        v51 = v127;
        v52 = v48;
        v53 = v120;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v54 = v121;
        v116 = *v51;
        v116(v53, v121);
        v55 = v119;
        sub_1C440BAA8(v119, 1, 1, v54);
        sub_1C44458E0();
        memset(v140, 0, 40);
        v48 = v52 + 1;
        v102 = sub_1C4EFB3E8();
        sub_1C4420C3C(v140, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v55, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v101 = *(v102 + 16);
        if (v101)
        {
          break;
        }
      }

      result = sub_1C4447568(v49, v141);
      v56 = 0;
      v57 = v102;
      v58 = v102 + 32;
      v59 = v125;
      v97 = v102 + 32;
      v98 = v52 + 1;
LABEL_12:
      if (v56 != v101)
      {
        break;
      }

      sub_1C440962C(v141);
    }

    if (v56 < *(v57 + 16))
    {
      v60 = v58 + 56 * v56;
      v61 = *v60;
      v62 = *(v60 + 16);
      v63 = *(v60 + 32);
      v150 = *(v60 + 48);
      v149[1] = v62;
      v149[2] = v63;
      v149[0] = v61;
      v64 = swift_allocObject();
      *(v64 + 16) = v115;
      v65 = *&v149[0];
      *(v64 + 56) = MEMORY[0x1E69E6530];
      *(v64 + 64) = MEMORY[0x1E69A0180];
      *(v64 + 32) = v65;
      sub_1C444808C(v149, v140);
      v66 = v120;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v67 = v121;
      v116(v66, v121);
      sub_1C440BAA8(v59, 1, 1, v67);
      memset(v140, 0, 40);
      v68 = sub_1C4EFB988();
      v99 = v56 + 1;
      sub_1C4420C3C(v140, &unk_1EC0BC770, &qword_1C4F10DC0);
      result = sub_1C4420C3C(v59, &unk_1EC0C06C0, &unk_1C4F10DB0);
      v69 = 0;
      v106 = *(v68 + 16);
      while (1)
      {
        if (v106 == v69)
        {

          result = sub_1C44636BC(v149);
          v48 = v98;
          v56 = v99;
          v57 = v102;
          v58 = v97;
          goto LABEL_12;
        }

        if (v69 >= *(v68 + 16))
        {
          break;
        }

        v70 = v68;
        v71 = *(v68 + 8 * v69 + 32);
        v72 = swift_allocObject();
        *(v72 + 16) = v115;
        *(v72 + 56) = MEMORY[0x1E69E6530];
        *(v72 + 64) = MEMORY[0x1E69A0180];
        *(v72 + 32) = v71;
        v73 = v120;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v74 = v121;
        v116(v73, v121);
        v75 = v124;
        sub_1C440BAA8(v124, 1, 1, v74);
        sub_1C444C538();
        memset(v137, 0, 40);
        sub_1C4EFB408();
        sub_1C4420C3C(v137, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v75, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v76 = *&v140[48];
        if (*&v140[48] >> 60 == 11)
        {
          sub_1C44636BC(v149);

          *&v137[0] = 0;
          *(&v137[0] + 1) = 0xE000000000000000;
          sub_1C4F02248();

          *&v137[0] = 0xD00000000000002ELL;
          *(&v137[0] + 1) = 0x80000001C4FAAEC0;
          *&v134 = v71;
          v85 = sub_1C4F02858();
          MEMORY[0x1C6940010](v85);

          v86 = v137[0];
          sub_1C450B034();
          swift_allocError();
          *v87 = v86;
          v89 = v137[1];
          v88 = v137[2];
          *(v87 + 16) = v137[0];
          *(v87 + 32) = v89;
          *(v87 + 48) = v88;
          *(v87 + 64) = 5;
          swift_willThrow();

          sub_1C440962C(v141);
          goto LABEL_6;
        }

        v77 = *&v140[16];
        v110 = *v140;
        v111 = *&v140[8];
        v148[0] = *v140;
        v148[1] = *&v140[8];
        v148[2] = *&v140[16];
        v148[3] = *&v140[24];
        v113 = *&v140[24];
        v114 = *&v140[32];
        v148[4] = *&v140[32];
        v148[5] = *&v140[40];
        v78 = *&v140[40];
        v148[6] = *&v140[48];
        v79 = swift_allocObject();
        *(v79 + 16) = v115;
        *(v79 + 56) = MEMORY[0x1E69E6530];
        *(v79 + 64) = MEMORY[0x1E69A0180];
        v112 = v77;
        *(v79 + 32) = v77;
        v80 = v120;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v81 = v121;
        v116(v80, v121);
        v82 = v123;
        sub_1C440BAA8(v123, 1, 1, v81);
        sub_1C444C5E8();
        memset(v138, 0, sizeof(v138));
        v139 = 0;
        sub_1C4EFB408();
        sub_1C4420C3C(v138, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v82, &unk_1EC0C06C0, &unk_1C4F10DB0);
        memcpy(v137, v140, 0x48uLL);
        v68 = v70;
        if (!*(&v137[1] + 1))
        {
          sub_1C44636BC(v149);

          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          sub_1C4F02248();

          *&v134 = 0xD00000000000001DLL;
          *(&v134 + 1) = 0x80000001C4FAAEF0;
          v90 = v112;
          v133 = v112;
          v91 = sub_1C4F02858();
          MEMORY[0x1C6940010](v91);

          v92 = v134;
          sub_1C450B034();
          swift_allocError();
          *v93 = v92;
          v95 = v135;
          v94 = v136;
          *(v93 + 16) = v134;
          *(v93 + 32) = v95;
          *(v93 + 48) = v94;
          *(v93 + 64) = 5;
          swift_willThrow();

          sub_1C44652C4(v110, v111, v90, v113, v114, v78, v76);
          sub_1C440962C(v141);
          goto LABEL_6;
        }

        v142 = *v140;
        v143 = *&v140[16];
        v144 = *(&v137[1] + 1);
        v145 = *&v140[32];
        v146 = *&v140[48];
        v147 = *&v140[64];
        sub_1C4445F60(v141, &v142, v148, v149, v151, v128, v130, v103, v129, SHIDWORD(v129), v131, v104, v105, v132);
        v84 = v113;
        v83 = v114;
        sub_1C4420C3C(v137, &qword_1EC0C6340, &qword_1C4F6BAA0);
        result = sub_1C44652C4(v110, v111, v112, v84, v83, v78, v76);
        ++v69;
        v59 = v125;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4445828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = sub_1C4F02AE8();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

void sub_1C44458B4(void *a1@<X8>)
{
  sub_1C4409528(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1C44458E0()
{
  result = qword_1EDDF8690;
  if (!qword_1EDDF8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8690);
  }

  return result;
}

uint64_t sub_1C4445934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4445998();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C4445998()
{
  result = qword_1EDDF8678;
  if (!qword_1EDDF8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8678);
  }

  return result;
}

void sub_1C44459EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, unsigned __int8 a14)
{
  sub_1C43FE96C();
  v16 = v15;
  v18 = v17;
  v19 = sub_1C456902C(&qword_1EC0C4598, &qword_1C4F5A040);
  sub_1C43FCDF8(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  v27 = v16[4];
  sub_1C4409678(v16, v16[3]);
  sub_1C4445D68();
  sub_1C441BD4C();
  if (v14)
  {
    sub_1C440962C(v16);
  }

  else
  {
    sub_1C442D510();
    v28 = sub_1C4F026B8();
    sub_1C442D510();
    v29 = sub_1C4F026B8();
    sub_1C444CC50();
    sub_1C44254C0();
    v43 = v29;
    sub_1C442D510();
    v41 = sub_1C4F026B8();
    v42 = a14;
    sub_1C441D9A4();
    sub_1C44254C0();
    sub_1C442D510();
    v40 = sub_1C4F02688();
    v48 = 6;
    sub_1C442D510();
    v39 = sub_1C4F02688();
    v47 = 7;
    sub_1C442D510();
    v38 = sub_1C4F02688();
    v46 = 8;
    sub_1C442D510();
    v37 = sub_1C4F02688();
    v45 = 9;
    sub_1C442D510();
    v36 = sub_1C4F02688();
    v44 = 10;
    sub_1C442D510();
    v30 = sub_1C4F02678();
    v35 = v31;
    v32 = v30;
    v39 &= 1u;
    v40 &= 1u;
    v37 &= 1u;
    v38 &= 1u;
    v36 &= 1u;
    (*(v21 + 8))(v26, v19);
    sub_1C440962C(v16);
    v33 = v43;
    *v18 = v28;
    *(v18 + 8) = v33;
    *(v18 + 16) = v42;
    *(v18 + 24) = v41;
    *(v18 + 32) = a11;
    LOBYTE(v33) = v39;
    *(v18 + 33) = v40;
    *(v18 + 34) = v33;
    LOBYTE(v33) = v37;
    *(v18 + 35) = v38;
    *(v18 + 36) = v33;
    *(v18 + 37) = v36;
    v34 = v35;
    *(v18 + 40) = v32;
    *(v18 + 48) = v34;
  }

  sub_1C43FBC80();
}

double sub_1C4445D18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1C44459EC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SBYTE2(v13), SBYTE3(v13), SBYTE4(v13), BYTE5(v13));
  if (!v9)
  {
    *a9 = v13;
    *(a9 + 16) = v14;
    result = *&v15;
    *(a9 + 32) = v15;
    *(a9 + 48) = v16;
  }

  return result;
}

unint64_t sub_1C4445D68()
{
  result = qword_1EDDF86A8;
  if (!qword_1EDDF86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86A8);
  }

  return result;
}

unint64_t sub_1C4445DC4(char a1)
{
  result = 0x6564724F77656976;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7954656372756F73;
      break;
    case 3:
      result = 0x6E496769666E6F63;
      break;
    case 4:
      result = 0x656C756465686373;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6465726975716572;
      break;
    case 7:
      result = 0x6F69725068676968;
      break;
    case 8:
      result = 0x56646C6975626572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x6769666E6F63;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

void sub_1C4445F60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v126 = a8;
  v137 = a7;
  v127 = a5;
  v128 = a6;
  v19 = sub_1C4EF9CD8();
  v125 = *(v19 - 8);
  v20 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  sub_1C4409678(a1, v23);
  (*(v24 + 8))(v130, a2, a3, a4, v23, v24);
  if (!v14)
  {
    v25 = v128;
    v122 = v22;
    v124 = a3;
    v123 = v19;
    v26 = BYTE1(v130[0]);
    v27 = *(a2 + 48);
    v28 = a2;
    if ((v130[0] & 0x100) != 0)
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        v29 = v128;
        v30 = *(a2 + 16);
        v31 = *(a2 + 24);
        v32 = *(a2 + 32);
        v33 = *(a2 + 8);
        v34 = v137;
        v35 = 1;
LABEL_7:
        sub_1C4420C94(v29, v34, v33, v30, v31, v32, 11, v35, v117, v118, SWORD2(v118), SBYTE6(v118), SHIBYTE(v118), v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
LABEL_14:
        if (v14)
        {
          goto LABEL_15;
        }

        v137 = 0;
LABEL_19:
        v39 = LOBYTE(v130[0]);
        LODWORD(v128) = *(v28 + 8);
        sub_1C4409528(v128);
        if (v41 == 0x6764656C776F6E6BLL && v40 == 0xEE00687061724765)
        {
        }

        else
        {
          v43 = sub_1C4F02938();

          if ((v43 & 1) == 0)
          {
            v44 = (v133 >> 60 != 15) & v26;
            if (v131 >> 60 == 15)
            {
              v44 = 1;
            }

            if (!v44)
            {
              v39 = 2;
            }
          }
        }

        v127 = v130[1];
        v121 = v131;
        if (((v131 >> 60 == 15) & v26 & (v133 >> 60 != 15)) != 0)
        {
          v45 = 1;
        }

        else
        {
          v45 = v39;
        }

        v46 = v45;
        sub_1C4441C50(v45);
        if (v48 == 0x676E616843736168 && v47 == 0xEA00000000007365)
        {

          v51 = a4;
        }

        else
        {
          v50 = sub_1C4F02938();

          v51 = a4;
          if ((v50 & 1) == 0)
          {
            if (v26)
            {
LABEL_50:
              v60 = v51[32];
              if (sub_1C4424B10(v51[32]) == 1701736302 && v61 == 0xE400000000000000)
              {

                goto LABEL_15;
              }

              v63 = sub_1C4F02938();

              if (v63)
              {
LABEL_15:
                sub_1C4465270(v130);
                return;
              }

              HIDWORD(v120) = v46;
              v64 = v28;
              v119 = a14;
              v118 = a13;
              v65 = v126;
              if ((a11 & 0x8000) == 0)
              {
                goto LABEL_56;
              }

              v77 = sub_1C4424B10(a9);
              v79 = v78;
              if (v77 == sub_1C4424B10(v60) && v79 == v80)
              {

                goto LABEL_75;
              }

              v82 = sub_1C4F02938();

              if ((v82 & 1) == 0)
              {
LABEL_56:
                v66 = HIDWORD(v120);
                sub_1C4441C50(SBYTE4(v120));
                if (v68 == 0x65676E6168436F6ELL && v67 == 0xE900000000000073)
                {

                  LODWORD(v125) = 0;
                  goto LABEL_84;
                }

                v70 = sub_1C4F02938();

                if ((v70 & 1) != 0 || (*(a4 + 33) & 1) == 0)
                {
                  LODWORD(v125) = 0;
                  goto LABEL_84;
                }

                v71 = *(v124 + 32);
                v72 = v125;
                v73 = v122;
                v74 = v123;
                (*(v125 + 16))(v122, v65, v123);
                sub_1C4EF9AD8();
                v76 = v75;
                (*(v72 + 8))(v73, v74);
                if (v71 >= v76)
                {
                  LODWORD(v125) = 0;
                  v66 = HIDWORD(v120);
                  goto LABEL_84;
                }
              }

LABEL_75:
              v66 = HIDWORD(v120);
              sub_1C4441C50(SBYTE4(v120));
              if (v84 == 0xD000000000000013 && 0x80000001C4F87C40 == v83)
              {
              }

              else
              {
                v86 = sub_1C4F02938();

                if ((v86 & 1) == 0)
                {
                  LODWORD(v125) = 1;
                  goto LABEL_84;
                }
              }

              v87 = *(a4 + 36);
              LODWORD(v125) = 1;
              if (v87)
              {
                *(v65 + *(_s20BookmarkLoadingStateVMa() + 24)) = 1;
              }

LABEL_84:
              v88 = 44;
              switch(v66)
              {
                case 1:
                  v88 = 36;
                  goto LABEL_86;
                case 3:
                case 4:
                  break;
                default:
LABEL_86:
                  *(v65 + *(_s20BookmarkLoadingStateVMa() + v88)) = 1;
                  break;
              }

              if (v125)
              {
                sub_1C4441C50(v66);
                if (v90 == 0x65676E6168436F6ELL && v89 == 0xE900000000000073)
                {
                }

                else
                {
                  v92 = sub_1C4F02938();

                  if ((v92 & 1) == 0)
                  {
                    *(v65 + *(_s20BookmarkLoadingStateVMa() + 32)) = 1;
                  }
                }
              }

              sub_1C4409528(*(a4 + 16));
              v95 = *(a4 + 24);
              if (v95 < 0xFFFFFFFF80000000)
              {
                __break(1u);
              }

              else if (v95 <= 0x7FFFFFFF)
              {
                LODWORD(v124) = v60;
                *(v64 + 32);
                v96 = v93;
                v97 = v94;
                v99 = *(v64 + 16);
                v98 = *(v64 + 24);
                objc_allocWithZone(MEMORY[0x1E69A9EE8]);
                v100 = v119;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v101 = sub_1C4440254(v118, v100, v96, v97, v95);
                v102 = v132;
                v103 = v133;
                LOBYTE(v96) = BYTE4(v120);
                sub_1C4441C50(SBYTE4(v120));
                v123 = v104;
                v106 = v105;
                objc_allocWithZone(MEMORY[0x1E69A9F18]);
                v107 = v101;
                v108 = v127;
                v109 = v121;
                sub_1C4431E64(v127, v121);
                sub_1C4431E64(v102, v103);
                v110 = sub_1C4441D58(v107, v108, v109, v102, v103, v123, v106, v125);
                v111 = *(v64 + 40);
                v112 = *(_s20BookmarkLoadingStateVMa() + 20);
                v113 = v126;
                sub_1C4465218();
                v114 = *(*(v113 + v112) + 16);
                sub_1C446359C();
                sub_1C4465270(v130);

                v115 = *(v113 + v112);
                *(v115 + 16) = v114 + 1;
                v116 = v115 + 24 * v114;
                *(v116 + 32) = v110;
                *(v116 + 40) = v111;
                *(v116 + 48) = v96;
                *(v116 + 49) = v128;
                *(v116 + 50) = v124;
                return;
              }

              __break(1u);
              JUMPOUT(0x1C4446A88);
            }

LABEL_43:
            if (v51[34])
            {
              if (qword_1EDDFD018 != -1)
              {
                swift_once();
              }

              v52 = sub_1C4F00978();
              sub_1C442B738(v52, qword_1EDE2DDF8);
              v53 = v124;
              sub_1C444C58C(v124, v129);
              v54 = sub_1C4F00968();
              v55 = sub_1C4F01CF8();
              if (os_log_type_enabled(v54, v55))
              {
                v56 = v46;
                v57 = swift_slowAlloc();
                *v57 = 134217984;
                *(v57 + 4) = *(v53 + 16);
                sub_1C444053C(v53);
                _os_log_impl(&dword_1C43F8000, v54, v55, "ViewUpdate: required source is unavailable: %ld", v57, 0xCu);
                v58 = v57;
                v46 = v56;
                MEMORY[0x1C6942830](v58, -1, -1);
              }

              else
              {
                sub_1C444053C(v53);
              }

              v59 = v126;

              *(v59 + *(_s20BookmarkLoadingStateVMa() + 28)) = 1;
            }

            goto LABEL_50;
          }
        }

        if (v51[37])
        {
          v46 = 1;
        }

        if (v26)
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }
    }

    else if (*(a2 + 48))
    {
      v29 = v128;
      v30 = *(a2 + 16);
      v31 = *(a2 + 24);
      v32 = *(a2 + 32);
      v33 = *(a2 + 8);
      v34 = v137;
      v35 = 0;
      goto LABEL_7;
    }

    v137 = 0;
    v36 = v134;
    v37 = v135;
    v136[0] = *(a2 + 56);
    v38 = v136[0];
    if (v135 >> 60 == 15)
    {
      if (*(&v136[0] + 1) >> 60 == 15)
      {
        sub_1C4431E64(v134, v135);
        sub_1C445FFF0(v136, v129, &qword_1EC0BD330, &qword_1C4F2DAF0);
        sub_1C441DFEC(v36, v37);
LABEL_18:
        v28 = a2;
        goto LABEL_19;
      }
    }

    else if (*(&v136[0] + 1) >> 60 != 15)
    {
      sub_1C4431E64(v134, v135);
      sub_1C4431E64(v36, v37);
      sub_1C445FFF0(v136, v129, &qword_1EC0BD330, &qword_1C4F2DAF0);
      LODWORD(v127) = MEMORY[0x1C6938740](v36, v37, v38, *(&v38 + 1));
      sub_1C441DFEC(v36, v37);
      sub_1C441DFEC(v38, *(&v38 + 1));
      sub_1C441DFEC(v36, v37);
      if (v127)
      {
        goto LABEL_18;
      }

LABEL_13:
      v28 = a2;
      v14 = v137;
      sub_1C4BB91E0(*a2, v36, v37, v25);
      goto LABEL_14;
    }

    sub_1C4431E64(v134, v135);
    sub_1C445FFF0(v136, v129, &qword_1EC0BD330, &qword_1C4F2DAF0);
    sub_1C441DFEC(v36, v37);
    sub_1C441DFEC(v38, *(&v38 + 1));
    goto LABEL_13;
  }
}

void sub_1C4446A9C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = *MEMORY[0x1E69E9840];
  v10 = sub_1C4F01188();
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = v4[4];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  v125 = v18;
  v126 = a3;
  v127 = v15;
  v128 = v14;
  v129 = a4;
  v22 = v5;
  v4[4] = v21;
  if (v21 >= 51)
  {
    [objc_opt_self() clearCache];
    v4[4] = 1;
  }

  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C4404C28();
  v26 = sub_1C4441B18(v25);
  v28 = v27;
  if (v29)
  {
    v30 = v4[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v31 = sub_1C4402CD0();
    v32 = sub_1C44F9274(v31);

    v130 = v32;
    if (!v32)
    {

      sub_1C4F02248();

      sub_1C43FBDF0();
      *&v135 = 0xD000000000000017;
      *(&v135 + 1) = v67;
      v68 = sub_1C4402CD0();
      MEMORY[0x1C6940010](v68);

      sub_1C450B034();
      sub_1C43FFB2C();
      *v69 = v135;
      v71 = v136;
      v70 = v137;
      *(v69 + 16) = v135;
      *(v69 + 32) = v71;
      *(v69 + 48) = v70;
      *(v69 + 64) = 5;
      swift_willThrow();
      goto LABEL_36;
    }
  }

  else
  {
    v130 = 0;
  }

  v33 = v22;
  if (*(a1 + 32) && *(a1 + 32) == 1)
  {

    goto LABEL_12;
  }

  v34 = sub_1C4F02938();

  if ((v34 & 1) == 0)
  {
    v53 = a2[5];
    v52 = a2[6];
    if (v52 >> 60 != 15)
    {
      v54 = *(a1 + 40);
      v55 = a2[3];
      v56 = sub_1C440E994();
      if (v58 == v59)
      {
        sub_1C444C58C(v56, v57);
        v60 = sub_1C440E994();
        sub_1C444C58C(v60, v61);

        v63 = *(a1 + 56);
        v62 = *(a1 + 64);
        sub_1C4431E64(v63, v62);
        v64 = 4;
        v65 = v53;
        v66 = v52;
LABEL_31:
        *v129 = v64;
        *(v129 + 1) = 1;
        *(v129 + 8) = v53;
        *(v129 + 16) = v52;
        *(v129 + 24) = v65;
        *(v129 + 32) = v66;
        *(v129 + 40) = v63;
        *(v129 + 48) = v62;
        goto LABEL_36;
      }

      sub_1C444C58C(v56, v57);
      v85 = sub_1C440E994();
      sub_1C444C58C(v85, v86);
    }

    v87 = sub_1C440E994();
    sub_1C444C58C(v87, v88);
    v89 = sub_1C440E994();
    sub_1C444C58C(v89, v90);
    v91 = sub_1C4440600(v53, v52);
    if (v33)
    {
      sub_1C444053C(a2);
      sub_1C444053C(a2);
      goto LABEL_35;
    }

    v94 = v91;
    v95 = v92;
    v123 = v53;
    v96 = *(a1 + 56);
    v66 = *(a1 + 64);
    if (v66 >> 60 == 15)
    {
      v121 = v96;
      sub_1C4404898();
      _s11BiomeSourceCMa();
      v97 = v4[2];
      swift_unknownObjectRetain();
      v106 = sub_1C4447924(v26, v28, v130, v97, v95);
      swift_unknownObjectRetain();
      v65 = sub_1C4442200(v26, v28, v94, v130, v97);
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = sub_1C44089C8();
      sub_1C4431E64(v98, v99);
      v100 = sub_1C44089C8();
      sub_1C4431E64(v100, v101);
      swift_unknownObjectRetain();

      v102 = sub_1C44089C8();
      sub_1C44344B8(v102, v103);
      v104 = sub_1C44089C8();
      v65 = sub_1C4440600(v104, v105);
      v106 = v107;
      v121 = v96;
      v108 = sub_1C44089C8();
      sub_1C441DFEC(v108, v109);
    }

    v53 = v123;
    if (v94)
    {
      v110 = v66;
      sub_1C4404898();
      if (v95 == v106)
      {
        _s11BiomeSourceCMa();
        swift_unknownObjectRetain();
        v66 = v94;
        v111 = sub_1C4441D18(v94, v65);
        swift_unknownObjectRelease();
        if (v111)
        {
          sub_1C444053C(a2);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease_n();
          v64 = 4;
          v65 = v123;
          v52 = v124;
          v66 = v124;
          v63 = v121;
          v62 = v110;
          goto LABEL_31;
        }

        sub_1C441DFEC(v121, v110);
        sub_1C444053C(a2);
        sub_1C444053C(a2);
LABEL_48:
        sub_1C4440344(v65, v106);
        v63 = sub_1C44261BC();
        v62 = v118;
        swift_unknownObjectRelease();

        sub_1C441ECD8();
        swift_unknownObjectRelease_n();
        v64 = 3;
        v52 = v124;
        goto LABEL_31;
      }

      sub_1C441DFEC(v121, v66);
      sub_1C444053C(a2);
      sub_1C444053C(a2);
      v113 = sub_1C4EF9348();
      v114 = *(v113 + 48);
      v115 = *(v113 + 52);
      swift_allocObject();
      sub_1C4EF9338();
      v66 = 0;
      v116 = *(v126 + 40);
      v117 = *(v126 + 48);
      sub_1C4F01178();
      sub_1C4F01148();
      sub_1C441F098();
      (*(v127 + 8))(v125, v128);
      sub_1C4CC2274();
      sub_1C4EF9328();

      v119 = sub_1C4402CD0();
      sub_1C4434000(v119, v120);
      v131 = v135;
      v132 = v136;
      v133 = v137;
      v134 = v138;
      sub_1C445DA1C(&v131);
      if (BYTE8(v132) != 2 && (BYTE8(v132) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_1C444053C(a2);
      sub_1C441DFEC(v121, v66);
      sub_1C444053C(a2);
    }

    sub_1C444053C(a2);
    sub_1C4440344(v65, v106);
    v63 = sub_1C44261BC();
    v62 = v112;

    sub_1C441ECD8();
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    v53 = 0;
    v52 = 0xF000000000000000;
    v64 = 1;
    goto LABEL_31;
  }

LABEL_12:
  v35 = a2[5];
  if (a2[6] >> 60 == 15)
  {
    sub_1C4404898();
    v36 = 0;
    goto LABEL_16;
  }

  v37 = sub_1C440E994();
  sub_1C444C58C(v37, v38);
  v39 = sub_1C440E994();
  sub_1C444C58C(v39, v40);
  v41 = sub_1C44633C0();
  if (v22)
  {
LABEL_35:
    sub_1C444053C(a2);

    goto LABEL_36;
  }

  v36 = v41;
  sub_1C4404898();
  sub_1C441DFEC(v42, v43);
LABEL_16:
  if (*(a1 + 64) >> 60 == 15)
  {
    v44 = objc_opt_self();
    v45 = sub_1C4F01108();

    v46 = v4[2];
    *&v135 = 0;
    v47 = v36;
    v48 = [v44 latestDeleteBookmarkForStream:v45 account:v46 device:v130 bookmark:v36 error:&v135];

    v49 = v135;
    if (v48)
    {
      v122 = v35;
      swift_unknownObjectRetain();
      v50 = 0;
      v51 = 0xF000000000000000;
LABEL_27:
      _s11BiomeSourceCMa();
      v79 = sub_1C4441D18(v47, v48);
      swift_unknownObjectRelease();
      if (v79)
      {
        v80 = 4;
      }

      else
      {
        v80 = 1;
      }

      v81 = sub_1C4CC0860(v48, v50, v51);
      v66 = v82;
      v63 = sub_1C4CC0860(v48, v50, v51);
      v84 = v83;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v62 = v84;
      v65 = v81;
      sub_1C441DFEC(v50, v51);
      v64 = v80;
      v53 = v122;
      v52 = v124;
      goto LABEL_31;
    }

    v78 = v49;
    sub_1C444053C(a2);
    sub_1C4EF97A8();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = v36;
    v122 = v35;
    v72 = *(a1 + 56);
    v73 = sub_1C4402120();
    sub_1C44344B8(v73, v74);

    sub_1C4402120();
    v75 = sub_1C44633C0();
    if (!v33)
    {
      v48 = v75;
      v50 = v76;
      v51 = v77;
      swift_unknownObjectRetain();
      goto LABEL_27;
    }

    sub_1C444053C(a2);

    swift_unknownObjectRelease();
  }

LABEL_36:
  v93 = *MEMORY[0x1E69E9840];
}

id sub_1C4447514()
{
  if (qword_1EDE1C9D0 != -1)
  {
    dispatch_once(&qword_1EDE1C9D0, &unk_1F4415ED8);
  }

  v1 = qword_1EDE1C9D8;

  return v1;
}

uint64_t sub_1C4447568@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  switch(result)
  {
    case 1:
      v17 = v2[2];
      result = sub_1C4CE07B0();
      if (!v3)
      {
        v18 = result;
        v19 = _s27KnowledgeGraphRequestSourceCMa();
        result = swift_allocObject();
        *(result + 16) = v18;
        v16 = &off_1F440AF28;
        goto LABEL_13;
      }

      return result;
    case 2:
      v9 = &_s25AlwaysUpdateRequestSourceVN;
      v10 = &off_1F44091F0;
      goto LABEL_7;
    case 3:
      v11 = v2[4];
      v12 = *(v2[3] + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
      v13 = v11;
      os_unfair_lock_lock((v12 + 24));
      v14 = *(*(v12 + 16) + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      os_unfair_lock_unlock((v12 + 24));
      v15 = _s18BiomeRequestSourceCMa();
      swift_allocObject();
      result = sub_1C4447E50(v11, v14);
      v16 = &off_1F44092A8;
      a2[3] = v15;
      goto LABEL_14;
    case 4:
      v7 = *v2;
      v8 = v2[1];
      a2[3] = &_s17ViewRequestSourceVN;
      a2[4] = &off_1F440BA00;
      *a2 = v7;
      a2[1] = v8;

      return swift_unownedRetain();
    case 5:
      v20 = *v2;
      v21 = v2[1];
      v23 = v2[2];
      v22 = v2[3];
      v31 = v2[4];
      v24 = swift_allocObject();
      v25 = *(v2 + 1);
      *(v24 + 16) = *v2;
      *(v24 + 32) = v25;
      *(v24 + 48) = v2[4];
      v26 = _s21KeyValueRequestSourceCMa();
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1C4CE021C;
      *(v27 + 24) = v24;
      a2[3] = v26;
      a2[4] = &off_1F440AE70;
      *a2 = v27;

      swift_unownedRetain();

      return sub_1C445FFF0(&v31, v30, &qword_1EC0C6150, &unk_1C4F6AAD0);
    case 6:
      v28 = v2[2];
      result = sub_1C4CE0894();
      if (v3)
      {
        return result;
      }

      v29 = result;
      v19 = _s33GlobalKnowledgeGraphRequestSourceCMa();
      result = swift_allocObject();
      *(result + 16) = v29;
      v16 = &off_1F440AA08;
LABEL_13:
      a2[3] = v19;
LABEL_14:
      a2[4] = v16;
      *a2 = result;
      return result;
    case 7:
      v9 = &_s25NotificationRequestSourceVN;
      v10 = &off_1F440B1C8;
LABEL_7:
      a2[3] = v9;
      a2[4] = v10;
      return result;
    default:
      sub_1C450B034();
      v5 = swift_allocError();
      v6->n128_u64[0] = 0xD000000000000026;
      v6->n128_u64[1] = 0x80000001C4FC48D0;
      sub_1C4413C3C(v30[2], v30[1], v30[0], v5, v6);
      return swift_willThrow();
  }
}

uint64_t sub_1C4447854()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unownedRelease();
  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double sub_1C44478D0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  sub_1C4446A9C(a1, a2, a3, v10);
  if (!v5)
  {
    v9 = v10[1];
    *a4 = v10[0];
    *(a4 + 16) = v9;
    result = *&v11;
    *(a4 + 32) = v11;
    *(a4 + 48) = v12;
  }

  return result;
}

double sub_1C4447924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v24 = objc_autoreleasePoolPush();
  v10 = objc_opt_self();
  v11 = sub_1C4F01108();
  v12 = sub_1C4F019C8();
  sub_1C4447C04();
  v13 = sub_1C4F01EC8();
  LOBYTE(v23) = 0;
  v14 = [v10 publisherForStream:v11 device:a3 account:a4 startTime:v12 endTime:0 maxEvents:v13 lastN:0 reversed:v23];

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v29 = nullsub_1;
    v30 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1C44405F8;
    v28 = &unk_1F44093F8;
    v16 = _Block_copy(&aBlock);
    v29 = sub_1C443EC84;
    v30 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1C443EC24;
    v28 = &unk_1F4409420;
    v17 = _Block_copy(&aBlock);

    v18 = [v14 sinkWithCompletion:v16 receiveInput:v17];

    _Block_release(v17);
    _Block_release(v16);

    swift_beginAccess();
    a5 = *(v15 + 16);

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    sub_1C4F02248();

    sub_1C43FBDF0();
    v26 = v19;
    MEMORY[0x1C6940010](a1, a2);
    v20 = v26;
    sub_1C446D0DC();
    sub_1C43FFB2C();
    *v21 = 0xD00000000000002DLL;
    v21[1] = v20;
    sub_1C440DB00(v21, 3);
    objc_autoreleasePoolPop(v24);
  }

  return a5;
}

unint64_t sub_1C4447C04()
{
  result = qword_1EDDFE8E0;
  if (!qword_1EDDFE8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFE8E0);
  }

  return result;
}

void sub_1C4447D1C(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t, __int128 *)@<X1>, _OWORD *a3@<X8>)
{
  v15[4] = *MEMORY[0x1E69E9840];
  *&v13 = 0;
  a2(v15, a1, &v13);
  v4 = v13;
  sub_1C443E52C(v15, &v13);
  v5 = v14;
  v6 = v4;
  if (v5)
  {
    sub_1C4448244(v15);
    sub_1C44482AC(&v13, a3);
  }

  else
  {
    sub_1C4448244(&v13);
    if (!v6)
    {
      v7 = *MEMORY[0x1E69A9E30];
      v8 = sub_1C4F01138();
      v10 = v9;
      v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1C463FB20(v8, v10, 1, 0);
    }

    swift_willThrow();
    sub_1C4448244(v15);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C4447E50(void *a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v29 = a2 & 0xC000000000000001;
  v30 = sub_1C4428DA0(a2);
  v27 = a1;
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v30 == v5)
    {

      result = v28;
      *(v28 + 24) = v6;
      return result;
    }

    if (v29)
    {
      v7 = MEMORY[0x1C6940F90](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v7 deviceIdentifier];
    v10 = sub_1C4F01138();
    v12 = v11;

    v13 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1C445FAA8(v10, v12);
    if (__OFADD__(v6[2], (v15 & 1) == 0))
    {
      goto LABEL_20;
    }

    v16 = v14;
    v17 = v15;
    sub_1C456902C(&qword_1EC0C5D98, qword_1C4F67F28);
    if (sub_1C4F02458())
    {
      v18 = sub_1C445FAA8(v10, v12);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v16 = v18;
    }

    if (v17)
    {

      v20 = v6[7];
      v21 = *(v20 + 8 * v16);
      *(v20 + 8 * v16) = v13;
    }

    else
    {
      v6[(v16 >> 6) + 8] |= 1 << v16;
      v22 = (v6[6] + 16 * v16);
      *v22 = v10;
      v22[1] = v12;
      *(v6[7] + 8 * v16) = v13;

      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_21;
      }

      v6[2] = v25;
    }

    ++v5;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C44480E8()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C4EFF108();
  os_unfair_lock_lock((v1 + 24));
  sub_1C44483F8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  objc_autoreleasePoolPop(v0);
}

void sub_1C4448194(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  sub_1C4F00208();
}

uint64_t sub_1C4448244(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1C44482AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t storeEnumTagSinglePayload for Transformers(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4448304()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  sub_1C4F01138();
  sub_1C4F01298();

  return sub_1C4F02B68();
}

uint64_t sub_1C4448370()
{
  v1 = v0 + OBJC_IVAR___GDBiomeStreamStoreCache_inner;
  v2 = *(v0 + OBJC_IVAR___GDBiomeStreamStoreCache_inner);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);

  sub_1C44480E8();
}

void sub_1C44483F8(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1C4448194(a1, *(v1 + 16));
}

double sub_1C444843C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if ((*(a3 + 16))(a3, a1, a2))
  {
    sub_1C4F02078();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_1C44484B8()
{
  sub_1C43FE96C();
  sub_1C4401F00();
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C440101C();
  v9 = sub_1C43FCDF8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C441C544();
  v12 = sub_1C440F090();
  sub_1C441E000(v12);
  sub_1C4402530();
  if (!v1)
  {
    v13 = *(v3 + 32);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v14 = sub_1C4404370();
    *(v14 + 16) = xmmword_1C4F0CE60;
    v15 = MEMORY[0x1E69E6530];
    v16 = MEMORY[0x1E69A0180];
    *(v14 + 56) = MEMORY[0x1E69E6530];
    *(v14 + 64) = v16;
    *(v14 + 32) = v2;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = 0;
    sub_1C4EFB728();
    sub_1C4441A40();
    sub_1C4EFC088();
    v17 = sub_1C43FBF04();
    v18(v17);
    v19 = sub_1C44038D0();
    sub_1C43FF8A0(v19, v20, v21, v8);
    sub_1C443474C();
    sub_1C4EFB9A8();
    sub_1C44B9028();
    sub_1C4420C3C(&v22, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v0, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4448688(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C440101C();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  swift_unownedRetainStrong();
  v19 = sub_1C4440C6C(a2);

  if (!v3)
  {
    v21 = *(v19 + 112);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E6530];
    *(v22 + 16) = xmmword_1C4F0D130;
    v24 = MEMORY[0x1E69A0180];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = a1;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v13 + 8))(v18, v10);
    v25 = sub_1C44038D0();
    sub_1C440FD0C(v25, v26, v27, v10);
    sub_1C4423A0C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4448844(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1C4448884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4432434(v12);
  v33 = *v10;
  v34 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v34);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FC010();
  v17 = sub_1C4EFAD98();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C4EFB2C8();
  if (!v11)
  {
    sub_1C443137C();
    memcpy(a10, v35, 0x48uLL);
    goto LABEL_8;
  }

  v23 = v11;
  sub_1C4EFA798();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v24 = *(v20 + 8);
  v25 = sub_1C4409D0C();
  v24(v25);
  if (v10)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v26 = v11;
  sub_1C4EFAAC8();
  sub_1C440D510();
  sub_1C4EFAD68();
  sub_1C442FDF8();
  v27 = sub_1C4409D0C();
  v24(v27);
  v35[0] = v11;
  v28 = v11;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442DFA8())
  {

    goto LABEL_8;
  }

  v29 = sub_1C44132A8();
  v30(v29);
  v31 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v31, v32);
  __break(1u);
}

void sub_1C4448B0C(uint64_t a1@<X0>, int a2@<W2>, uint64_t *a3@<X8>)
{
  v37 = sub_1C4F00978();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - v12;
  v38 = a2;
  if (sub_1C4424B10(a2) == 1702259052 && v13 == 0xE400000000000000)
  {

LABEL_8:
    sub_1C444B528(a1);
    if (v3)
    {
      return;
    }

    goto LABEL_10;
  }

  v15 = sub_1C4F02938();

  if (v15)
  {
    goto LABEL_8;
  }

LABEL_10:
  v34 = a3;
  v17 = (v7 + 8);
  *&v16 = 134217984;
  v36 = v16;
  while (1)
  {
    sub_1C444BB08();
    if (v3)
    {
      break;
    }

    if (v19)
    {
      v27 = v35;
      sub_1C4F00178();
      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CC8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1C43F8000, v28, v29, "SourceUpdater: mayNeedUpdateViewsLive: returning nil", v30, 2u);
        MEMORY[0x1C6942830](v30, -1, -1);
      }

      (*v17)(v27, v37);
      v31 = v34;
      *v34 = 0;
      v31[1] = 0;
      v31[2] = 0;
      return;
    }

    v20 = v18;
    sub_1C44484B8();
    v23 = v22;
    if (v22)
    {
      v32 = v21;
      sub_1C4448688(v20, a1);
      v33 = v34;
      *v34 = v20;
      v33[1] = v32;
      v33[2] = v23;
      return;
    }

    sub_1C4F00178();
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CF8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = v36;
      *(v26 + 4) = v20;
      _os_log_impl(&dword_1C43F8000, v24, v25, "SourceUpdater: mayNeedUpdateViews: %ld: view was not enabled.", v26, 0xCu);
      MEMORY[0x1C6942830](v26, -1, -1);
    }

    (*v17)(v11, v37);
    sub_1C4CE9968();
  }
}

uint64_t sub_1C4448E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4448EA4()
{
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  sub_1C4EF9CC8();
  sub_1C4448FB4();
  if (v1)
  {
    v10 = *(v5 + 8);
  }

  else
  {
    v13 = *(v5 + 8);
  }

  v11 = sub_1C43FD024();
  v12(v11);
  return sub_1C43FD2BC();
}

void sub_1C4448FB4()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C4F00978();
  v5 = sub_1C43FCDF8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v8);
  if (sub_1C4424B10(v3) == 1702259052 && v9 == 0xE400000000000000)
  {
  }

  else
  {
    v11 = sub_1C442E6C0();

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v13 = *(*(v0 + 128) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate15FrontEventQueue_lockedBox);

  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  swift_beginAccess();
  v15 = *(v14 + 40);
  *(v14 + 40) = MEMORY[0x1E69E7CD0];
  os_unfair_lock_unlock((v13 + 24));

  if (*(v15 + 16))
  {
    v45[3] = sub_1C456902C(&unk_1EC0C6190, &qword_1C4F6B4A8);
    sub_1C442F49C();
    v45[4] = sub_1C4401CBC(v16, &unk_1EC0C6190, &qword_1C4F6B4A8);
    v45[0] = v15;
    sub_1C4418244();
    v12 = sub_1C440962C(v45);
    if (v1)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

LABEL_12:
  v17 = *(v0 + 16);
  MEMORY[0x1EEE9AC00](v12);
  *(&v41 - 16) = v3;
  sub_1C444BAA0();
  if (!v1)
  {
    v21 = v20;
    if (v20)
    {
      v22 = v18;
      v23 = v19;
      sub_1C4F00178();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = sub_1C4F00968();
      v25 = sub_1C4F01CC8();

      if (os_log_type_enabled(v24, v25))
      {
        sub_1C43FECF0();
        v26 = swift_slowAlloc();
        v43 = v26;
        sub_1C43FEC60();
        v44 = swift_slowAlloc();
        v45[0] = v44;
        *v26 = 136315138;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v27 = sub_1C4D11C18(v22, v23, v21);
        v42 = v25;
        v28 = v27;
        v30 = v29;

        v31 = sub_1C441D828(v28, v30, v45);

        v32 = v43;
        *(v43 + 1) = v31;
        _os_log_impl(&dword_1C43F8000, v24, v42, "SourceUpdater: mayNeedUpdateViews: returning %s", v32, 0xCu);
        sub_1C440962C(v44);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v33 = sub_1C44068C0();
        MEMORY[0x1C6942830](v33);
      }

      v34 = sub_1C4434300();
      v35(v34);
    }

    else
    {
      sub_1C4F00178();
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CC8();
      if (os_log_type_enabled(v36, v37))
      {
        sub_1C43FD1A8();
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1C43F8000, v36, v37, "SourceUpdater: mayNeedUpdateViews: returning nil", v38, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v39 = sub_1C441B144();
      v40(v39, v4);
    }
  }

LABEL_13:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C44493A8()
{
  v2 = *v0;

  return sub_1C4F021C8();
}

uint64_t sub_1C44493E8()
{
  v2 = *(v0 - 360);
  v3 = *(v0 - 368);

  return sub_1C44239FC(v2);
}

uint64_t sub_1C4449408(uint64_t a1, uint64_t a2)
{

  return sub_1C4460108(a1, a2, v2, v3);
}

uint64_t sub_1C4449420()
{

  return swift_beginAccess();
}

void sub_1C444949C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 == 2)
  {
    LOBYTE(v4) = sub_1C45D1DBC();
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DF70);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      sub_1C44190DC();
      sub_1C442C478();
      if (!v16)
      {
        v13 = v15;
      }

      if (v11 == 2)
      {
        v17 = v12;
      }

      else
      {
        v17 = v14;
      }

      if (v11 == 2)
      {
        v18 = v10;
      }

      else
      {
        v18 = v13;
      }

      v19 = sub_1C441D828(v17, v18, &v22);

      *(v8 + 4) = v19;
      sub_1C441F46C(&dword_1C43F8000, v20, v21, "Battery: device %s");
      sub_1C440962C(v9);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    *(v3 + 16) = v4;
  }

  *a2 = v4;
}

uint64_t sub_1C44496AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1C4449710()
{
  sub_1C446BD4C();

  v1(v2, v0);

  return swift_unownedRelease();
}

uint64_t sub_1C4449770()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C4449710();
}

void sub_1C44497AC(void *a1@<X8>)
{
  sub_1C4449828();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

void sub_1C4449808(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1C44497AC(a1);
}

void sub_1C4449828()
{
  sub_1C43FE96C();
  v3 = v2;
  v51 = v4;
  v6 = v5;
  v7 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  v13 = sub_1C4EFB768();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C44247B4();
  v19 = sub_1C444A7BC(v3);

  if (!v0)
  {
    v20 = *(v19 + 24);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v21 = sub_1C44331AC();
    v22 = MEMORY[0x1E69E6530];
    *(v21 + 16) = xmmword_1C4F0D130;
    v23 = MEMORY[0x1E69A0180];
    *(v21 + 56) = v22;
    *(v21 + 64) = v23;
    *(v21 + 32) = v51;
    sub_1C4EFB728();
    sub_1C4EFC088();
    (*(v16 + 8))(v1, v13);
    sub_1C440DB38();
    sub_1C440BAA8(v24, v25, v26, v27);
    sub_1C4443290();
    memset(v44, 0, sizeof(v44));
    v45 = 0;
    sub_1C4EFB408();
    sub_1C4420C3C(v44, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v42 = v46;
    v43 = v47;
    v28 = v48;
    v40 = v49;
    v41 = v50;
    if (v48 == 1)
    {
      v37.n128_u64[0] = 0;
      v37.n128_u64[1] = 0xE000000000000000;
      sub_1C4F02248();

      sub_1C43FBDF0();
      v37.n128_u64[0] = 0xD00000000000001ALL;
      v37.n128_u64[1] = v29;
      v36[1] = v51;
      v30 = sub_1C4F02858();
      MEMORY[0x1C6940010](v30);

      v31 = v37;
      sub_1C450B034();
      v32 = swift_allocError();
      *v33 = v31;
      sub_1C443E44C(v39, v38, v37, v32, v33);
    }

    else
    {

      v34 = v43;
      *v6 = v42;
      *(v6 + 16) = v34;
      *(v6 + 32) = v28;
      v35 = v41;
      *(v6 + 40) = v40;
      *(v6 + 56) = v35;
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4449BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[48] = a5;
  v6[49] = v5;
  v6[46] = a3;
  v6[47] = a4;
  v6[44] = a1;
  v6[45] = a2;
  v7 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64) + 15;
  v6[50] = swift_task_alloc();
  updated = _s17ViewUpdateRequestVMa(0);
  v6[51] = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v10 = *(*(sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8) - 8) + 64) + 15;
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4449D34, v5, 0);
}

uint64_t sub_1C4449CC4()
{
  sub_1C444A808();
  sub_1C444CBFC();

  return sub_1C4EFBA18();
}

uint64_t sub_1C4449D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v143 = v10;
  v11 = *(v10[49] + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager);
  sub_1C4443600(v10[44], v10[45], v10[46], *(v10[48] + 56), *(v10[48] + 64), *(v10[48] + 72), *(v10[48] + 80), v10[54]);
  v13 = v10[53];
  v12 = v10[54];
  v14 = v10[51];
  sub_1C44DDE2C();
  v15 = sub_1C440EF74();
  v17 = &xmmword_1EDDFD000;
  if (sub_1C44157D4(v15, v16, v14) == 1)
  {
    sub_1C4420C3C(v10[53], &qword_1EC0BE5A8, &qword_1C4F376A8);
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v18 = v10[46];
    v19 = sub_1C4F00978();
    sub_1C43FCEE8(v19, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C4428F14();

    if (sub_1C444AD54())
    {
      v22 = v10[45];
      v21 = v10[46];
      v23 = v10[44];
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440A2C8();
      v142[0] = swift_slowAlloc();
      *v18 = 136446210;
      sub_1C43FD018();
      v24 = sub_1C444AB08();
      sub_1C441D828(v24, v25, v142);
      sub_1C4D1ED44();
      *(v18 + 4) = v22;
      sub_1C4415A90();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_1C4415138();
      v31 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v31);
    }

    v32 = v10[49];
    sub_1C444AF90();
    sub_1C44249A8();
    v33 = _s7MetricsO7PayloadVMa();
    if (!sub_1C44157D4(v14, 1, v33))
    {
      *(v14 + 32) = 3;
    }

    v34 = sub_1C4401EF4();
    v32(v34);
    sub_1C4420C3C(v10[54], &qword_1EC0BE5A8, &qword_1C4F376A8);
    sub_1C4413FF0();

    sub_1C43FC1B0();

    return v35();
  }

  v37 = v10[52];
  v38 = v10[49];
  sub_1C446268C();
  v39 = sub_1C444AF90();
  v41 = v40;
  v42 = _s7MetricsO7PayloadVMa();
  v10[55] = v42;
  if (!sub_1C44157D4(v41, 1, v42))
  {
    *(v41 + v42[17]) = *(v10[52] + *(v10[51] + 36));
  }

  (v39)(v10 + 16, 0);
  v43 = v10[49];
  sub_1C444AF90();
  sub_1C44106D4();
  v46 = sub_1C4462128(v44, v45);
  if (!sub_1C44157D4(v46, v47, v42))
  {
    *(v10 + v42[18] + 128) = *(v10[52] + *(v10[51] + 40));
  }

  v43(v10 + 20, 0);
  v48 = v10[49];
  v49 = sub_1C444AF90();
  v51 = v50;
  v52 = sub_1C4462128(v49, v50);
  if (!sub_1C44157D4(v52, v53, v42))
  {
    *(v51 + v42[19]) = *(v10[52] + *(v10[51] + 44));
  }

  (v49)(v10 + 24, 0);
  if (*(v10[52] + *(v10[51] + 32)) == 1)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v54 = v10[46];
    v55 = sub_1C4F00978();
    sub_1C43FCEE8(v55, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v56 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C443E1FC())
    {
      v57 = v10[45];
      v139 = v10[46];
      v58 = v10[44];
      sub_1C43FECF0();
      v59 = swift_slowAlloc();
      sub_1C43FEC60();
      v60 = swift_slowAlloc();
      v142[0] = v60;
      *v59 = 136446210;
      sub_1C43FD574();
      v61 = sub_1C444AB08();
      sub_1C441D828(v61, v62, v142);
      sub_1C443EFD8();

      *(v59 + 4) = v58;
      v17 = &xmmword_1EDDFD000;
      sub_1C4403218(&dword_1C43F8000, v63, v64, "ViewUpdate: %{public}s: Full rebuild required");
      sub_1C440962C(v60);
      v65 = sub_1C4416E14();
      MEMORY[0x1C6942830](v65);
LABEL_26:
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  else
  {
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C4400FC0();
      swift_once();
    }

    v66 = v10[46];
    v67 = sub_1C4F00978();
    sub_1C43FCEE8(v67, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v56 = sub_1C4F00968();
    v68 = sub_1C4F01CB8();

    if (sub_1C443E1FC())
    {
      v70 = v10[45];
      v69 = v10[46];
      sub_1C43FECF0();
      v71 = swift_slowAlloc();
      sub_1C43FEC60();
      v72 = swift_slowAlloc();
      v142[0] = v72;
      *v71 = 136315138;
      v73 = sub_1C43FD018();
      *(v71 + 4) = sub_1C441D828(v73, v74, v75);
      _os_log_impl(&dword_1C43F8000, v56, v68, "ViewUpdate: %s: Update is required", v71, 0xCu);
      sub_1C440962C(v72);
      v17 = &xmmword_1EDDFD000;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      goto LABEL_26;
    }
  }

  v76 = v10[49];
  v77 = sub_1C444AF90();
  v79 = sub_1C4462128(v77, v78);
  if (!sub_1C44157D4(v79, v80, v42))
  {
    v81 = v10[50];
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v82, v83, v84, v85);
    v86 = v42[15];
    sub_1C468282C();
  }

  (v77)(v10 + 28, 0);
  v87 = v10[49] + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery;
  if ((*(v87 + 8) & 0xC000) == 0x8000)
  {
    v88 = *v87;
    if (sub_1C4424B10(*v87) == 1702259052 && v89 == 0xE400000000000000)
    {
    }

    else
    {
      v91 = sub_1C442E6C0();

      if ((v91 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  v88 = 11;
LABEL_38:
  v92 = (v10[52] + *(v10[51] + 52));
  v93 = *v92;
  v10[56] = *v92;
  v94 = v92[1];
  v10[57] = v94;
  if (v94 && v88 != 11)
  {
    sub_1C442E860(v10[48] + 16, (v10 + 2));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0C6448, &qword_1C4F6D858);
    sub_1C456902C(&qword_1EC0C6450, &qword_1C4F6D860);
    if (swift_dynamicCast())
    {
      v95 = v10[49];
      sub_1C440962C(v10 + 7);
      v96 = sub_1C444AF90();
      v98 = v97;
      v99 = sub_1C4462128(v96, v97);
      if (!sub_1C44157D4(v99, v100, v42))
      {
        v101 = *(v98 + 24);
        *(v98 + 16) = v93;
        *(v98 + 24) = v94;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      (v96)(v10 + 40, 0);
      if (*(v17 + 3) != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v102 = v10[46];
      v103 = sub_1C4F00978();
      sub_1C43FCEE8(v103, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v104 = sub_1C4F00968();
      sub_1C4F01CF8();

      if (sub_1C444AD54())
      {
        v105 = v10[45];
        v140 = v10[46];
        sub_1C43FEC60();
        v106 = swift_slowAlloc();
        v142[0] = swift_slowAlloc();
        *v106 = 136446722;
        *(v106 + 4) = sub_1C441D828(v105, v140, v142);
        *(v106 + 12) = 2082;
        v107 = sub_1C43FE990();
        *(v106 + 14) = sub_1C441D828(v107, v108, v109);
        *(v106 + 22) = 2082;
        v110 = sub_1C43FE990();
        *(v106 + 24) = sub_1C441D828(v110, v111, v112);
        sub_1C43FD0B4();
        _os_log_impl(v113, v114, v115, v116, v106, 0x20u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v117 = sub_1C4416E14();
        MEMORY[0x1C6942830](v117);
      }

      v118 = v10[46];
      v141 = *(v10 + 22);
      v119 = *(v11 + 16);
      v120 = swift_task_alloc();
      *(v120 + 16) = v93;
      *(v120 + 24) = v94;
      *(v120 + 32) = v88;
      *(v120 + 40) = v141;
      *(v120 + 56) = v118;

      v121 = sub_1C49559CC(sub_1C4D1E008, v120);
      v10[58] = v121;
      v126 = v121;

      v127 = swift_task_alloc();
      v10[59] = v127;
      *v127 = v10;
      v127[1] = sub_1C4D147AC;
      v129 = v10[48];
      v128 = v10[49];
      v130 = v10[46];
      v131 = v10[47];
      v132 = v10[44];
      v133 = v10[45];
      v145 = v126;
      v146 = v129;
      v134 = sub_1C440F4D4(v128);

      return sub_1C4D15B00(v134, v88, v93, v94, v135, v136, v137, v138, a9, a10);
    }
  }

  v122 = swift_task_alloc();
  v10[62] = v122;
  *v122 = v10;
  v122[1] = sub_1C445B354;
  v123 = v10[52];
  v124 = v10[45];
  v125 = v10[46];
  sub_1C440F4D4(v10[44]);

  return sub_1C4464BF4();
}

unint64_t sub_1C444A808()
{
  result = qword_1EDDF9D40;
  if (!qword_1EDDF9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D40);
  }

  return result;
}

void sub_1C444A85C()
{
  sub_1C43FE96C();
  sub_1C441FC74();
  v31 = sub_1C4EFB1E8();
  v2 = sub_1C43FCDF8(v31);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v14 = sub_1C4410D94(v6, v7, v8, v9, v10, v11, v12, v13, v30);
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4406E1C();
  sub_1C4414B64(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BE598, &qword_1C4F37690);
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v1)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v20 = v1;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v21 = *(v17 + 8);
  v22 = sub_1C43FD574();
  v21(v22);
  if (v0)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v23 = v1;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v24 = sub_1C43FD574();
  v21(v24);
  v25 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C442BBD0())
  {

    goto LABEL_8;
  }

  v26 = sub_1C4400510();
  v27(v26);
  v28 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v28, v29);
  __break(1u);
}

uint64_t sub_1C444AB08()
{
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  v0 = sub_1C4404C28();
  MEMORY[0x1C6940010](v0);
  return v2;
}

uint64_t sub_1C444AB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C4EF9CD8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
      v10 = *(a3 + 40);
    }

    return sub_1C44157D4(a1 + v10, a2, v9);
  }
}

void sub_1C444AC74(uint64_t a1@<X8>)
{
  v6 = ~*(v5 - 128);
  *v2 = v3;
  v2[1] = v1;
  v2[2] = v6;
  v2[3] = a1;
  v2[4] = v4;
}

uint64_t sub_1C444AC90()
{
  result = v0[26];
  v2 = v0[23];
  v3 = v0[16];
  v4 = *(v0[24] + 8);
  return result;
}

void sub_1C444ACA4()
{
  v1 = v0[70];
  v3 = v0[69];
  v2 = v0[68];
}

uint64_t sub_1C444ACBC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C444ACD8@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = a1;
  v2[2] = a1;
  v4 = v2 + *(v1 + 28);

  return sub_1C4F00318();
}

uint64_t sub_1C444AD04@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 136) = v1;
  *(v3 - 128) = a1;
  v5 = v2[14];
  *(v3 - 120) = v2[15];
  *(v3 - 112) = v5;
  v6 = v2[11];
  v7 = v2[7];
  *(v3 - 104) = v2[10];
  *(v3 - 96) = v7;
}

BOOL sub_1C444AD54()
{

  return os_log_type_enabled(v0, v1);
}

__n128 sub_1C444AD6C()
{
  result = *(v0 + 408);
  v2 = *(v0 + 424);
  return result;
}

uint64_t sub_1C444AD8C()
{
  v2 = *(v0 - 72);
  v3 = *(v0 - 184);

  return sub_1C4EFF808();
}

void sub_1C444ADB0(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  v3 = *(v2 + 60);
}

void sub_1C444ADC8()
{

  sub_1C459E828();
}

void *sub_1C444ADEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[8] = a2;
  result[4] = 1702259052;
  result[5] = 0xE400000000000000;
  return result;
}

uint64_t sub_1C444AE08()
{

  return sub_1C4F02938();
}

uint64_t sub_1C444AE28()
{

  return sub_1C446C37C(sub_1C4D1ECA8, v0);
}

uint64_t sub_1C444AE50()
{

  return swift_slowAlloc();
}

uint64_t sub_1C444AECC(double a1)
{
  v5 = (v1 + v2[10]);
  v6 = *(v3 - 136);
  *v5 = *(v3 - 144);
  v5[1] = v6;
  *(v1 + v2[11]) = a1;
  *(v1 + v2[12]) = *(v3 - 148);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C444AF0C()
{
  v4 = (v2 + *(v3 + 32));
  *v4 = v0;
  v4[1] = v1;
  v5 = v2 + *(v3 + 40);
}

void sub_1C444B010()
{

  JUMPOUT(0x1C69417F0);
}

void *sub_1C444B028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C440BAA8(a1, a2, a3, v3);

  return objc_autoreleasePoolPush();
}

void sub_1C444B050()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C444B094()
{

  return sub_1C4F01298();
}

uint64_t sub_1C444B0C8()
{
  result = *(v0 + 24);
  *(v1 + 472) = result;
  *(v1 + 593) = *(result + 32);
  return result;
}

id sub_1C444B0E8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1C444B100()
{

  return sub_1C4F02BF8();
}

void sub_1C444B120()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0[4] + 16);
}

void sub_1C444B16C()
{
  v2 = *(v0 - 208);
  v1 = *(v0 - 200);
  v3 = *(v0 - 216);
}

uint64_t sub_1C444B198()
{
  v2 = *(v0 - 96);

  return sub_1C4F026C8();
}

uint64_t sub_1C444B1FC(uint64_t result)
{
  *(v2 - 96) = result;
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_1C444B20C()
{

  return type metadata accessor for PairGenerator();
}

uint64_t sub_1C444B260()
{
  result = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 192);
  return result;
}

uint64_t sub_1C444B290(uint64_t result, uint64_t a2)
{
  *(v2 + 232) = result;
  *(v2 + 240) = a2;
  return result;
}

uint64_t sub_1C444B2B4()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C444B2CC(uint64_t result)
{
  *(v1 - 112) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_1C444B2E4()
{

  return sub_1C4F02478();
}

uint64_t sub_1C444B308()
{
}

void sub_1C444B37C()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t sub_1C444B38C(uint64_t result)
{
  if (result)
  {
    v2 = result;
  }

  else
  {
    v2 = v1;
  }

  v3 = *(v2 + 16);
  return result;
}

__n128 sub_1C444B39C()
{
  v1 = v0[6].n128_u64[0];
  v0[19].n128_u64[1] = v0[5].n128_u64[1];
  v0[20].n128_u64[0] = v1;
  v0[20].n128_u64[1] = v0[6].n128_u64[1];
  result = v0[7];
  v0[21] = result;
  v0[22].n128_u64[0] = v0[8].n128_u64[0];
  v3 = v0[9].n128_u8[8];
  return result;
}

__n128 *sub_1C444B3D0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = sub_1C44549EC;
  result[2].n128_u64[1] = v2;
  return result;
}

uint64_t sub_1C444B3EC(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1C442E860(v1, va);
}

void sub_1C444B420()
{

  sub_1C4B46D4C();
}

uint64_t sub_1C444B45C()
{
  v3 = *(v1 + 16);
  result = v0 + *(*(v2 - 248) + 20);
  v5 = *(v2 - 240);
  return result;
}

uint64_t sub_1C444B498(uint64_t result)
{
  *(v3 - 120) = v2;
  *(v3 - 136) = result;
  v4 = *v1;
  return result;
}

uint64_t sub_1C444B4CC()
{
  v7 = (v3 + v0[10]);
  *v7 = v1;
  v7[1] = v2;
  *(v3 + v0[11]) = v6;
  *(v3 + v0[12]) = *(v4 - 116);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C444B528(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v47 - v11;
  v13 = sub_1C4EFB768();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  sub_1C4EF9AE8();
  v23 = v22;
  swift_unownedRetainStrong();
  v24 = sub_1C4466DA4();
  v25 = sub_1C4440C6C(v24);
  if (!v1)
  {
    v26 = v25;
    v48 = v9;
    *&v49 = a1;

    v27 = *(v26 + 408);

    v52 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v28 = sub_1C44331AC();
    v29 = MEMORY[0x1E69E63B0];
    *(v28 + 16) = xmmword_1C4F0D130;
    v30 = MEMORY[0x1E69A0168];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v23;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v31 = *(v16 + 8);
    v31(v21, v13);
    sub_1C43FCF64();
    sub_1C440BAA8(v32, v33, v34, v13);
    sub_1C43FD428();
    v35 = sub_1C4EFB958();
    v50 = v31;
    v51 = v35;
    v47[1] = v16 + 8;
    v47[2] = v27;
    sub_1C4420C3C(&v53, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
    swift_unownedRetainStrong();
    v36 = sub_1C4440C6C(v49);

    v37 = *(v36 + 416);

    v49 = xmmword_1C4F0CE60;
    for (i = v48; ; sub_1C4420C3C(i, &unk_1EC0C06C0, &unk_1C4F10DB0))
    {
      v39 = sub_1C444B8FC();
      if (v40)
      {
        break;
      }

      v41 = v39;
      v42 = sub_1C4404370();
      *(v42 + 16) = v49;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      v43 = sub_1C444ADEC(v42, MEMORY[0x1E69A0138]);
      v43[12] = MEMORY[0x1E69E6530];
      v43[13] = MEMORY[0x1E69A0180];
      v43[9] = v41;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v50(v21, v13);
      v44 = sub_1C44179F4();
      sub_1C440BAA8(v44, v45, v46, v13);
      sub_1C4EFC0A8();
    }
  }

  sub_1C4402144();
}

uint64_t sub_1C444B8FC()
{
  sub_1C43FC20C();
  sub_1C4401CBC(&qword_1EDDF0060, &unk_1EC0BC928, &qword_1C4F29AF0);
  sub_1C43FD2BC();
  if (sub_1C4EFB4B8())
  {
    return 0;
  }

  sub_1C4401CBC(&unk_1EDDF0050, &unk_1EC0BC928, &qword_1C4F29AF0);
  sub_1C4EFB2A8();

  sub_1C4EFC098();
  sub_1C4460A3C();

  if (!v0)
  {
    v1 = v3;
    if (v4)
    {
      sub_1C4416AA8();
      sub_1C4EFB4C8();
    }
  }

  return v1;
}

uint64_t sub_1C444BA6C()
{
  v2 = *v0;
  result = sub_1C4448EA4();
  if (v1)
  {
    return v4;
  }

  return result;
}

void sub_1C444BAA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  sub_1C440CABC();
  sub_1C444A85C();
}

void sub_1C444BB08()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v50 = v9 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = sub_1C4EFB768();
  v15 = sub_1C43FCDF8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  sub_1C44058BC();
  if (sub_1C4424B10(v4) == 1702259052 && v18 == 0xE400000000000000)
  {
  }

  else
  {
    v20 = sub_1C442E6C0();

    if ((v20 & 1) == 0)
    {
      v21 = sub_1C4BB44E0(v4, v2);
      if (!v0)
      {
        v22 = v21;
        swift_unownedRetainStrong();
        v23 = sub_1C4440C6C(v2);
        sub_1C441CEF4();

        v24 = *(v23 + 352);

        sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
        v25 = sub_1C4404370();
        v26 = sub_1C445BE04(v25, xmmword_1C4F0CE60);
        v27 = MEMORY[0x1E69A0138];
        v25[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v25[4].n128_u64[0] = v27;
        v28 = MEMORY[0x1E69E6530];
        v25[2].n128_u64[0] = v26;
        v25[2].n128_u64[1] = v29;
        v30 = MEMORY[0x1E69A0180];
        v25[6].n128_u64[0] = v28;
        v25[6].n128_u64[1] = v30;
        v25[4].n128_u64[1] = v22;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v31 = sub_1C4434300();
        v32(v31);
        v33 = v50;
        sub_1C43FCF64();
        sub_1C43FF8A0(v34, v35, v36, v14);
        sub_1C440C810();
        sub_1C4EFB9A8();

        sub_1C4420C3C(v51, &unk_1EC0BC770, &qword_1C4F10DC0);
        v37 = v33;
LABEL_11:
        sub_1C4420C3C(v37, &unk_1EC0C06C0, &unk_1C4F10DB0);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  swift_unownedRetainStrong();
  v38 = sub_1C4440C6C(v2);
  sub_1C441CEF4();

  if (!v0)
  {
    v39 = *(v38 + 344);

    sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v40 = sub_1C44331AC();
    v41 = sub_1C445BE04(v40, xmmword_1C4F0D130);
    v42 = MEMORY[0x1E69A0138];
    v40[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v40[4].n128_u64[0] = v42;
    v40[2].n128_u64[0] = v41;
    v40[2].n128_u64[1] = v43;
    sub_1C4EFB728();
    sub_1C4EFC088();
    v44 = sub_1C4434300();
    v45(v44);
    sub_1C43FCF64();
    sub_1C43FF8A0(v46, v47, v48, v14);
    sub_1C443474C();
    sub_1C4EFB9A8();

    sub_1C4420C3C(v51, &unk_1EC0BC770, &qword_1C4F10DC0);
    v37 = v13;
    goto LABEL_11;
  }

LABEL_12:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C444BF04(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_unownedRetain();

  a2(&v9, v7, a4);

  result = swift_unownedRelease();
  if (!v4)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1C444BF88@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C444BF04(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

unint64_t sub_1C444BFB8()
{
  *(v2 - 168) = v0;

  return sub_1C457AF20(v1);
}

uint64_t sub_1C444BFF0()
{
  *(v0 - 65) = 0;

  return sub_1C4F02678();
}

uint64_t sub_1C444C02C()
{
  v1 = *(v0 - 224);
  v2 = *(*(v0 - 232) + 32);
  return *(v0 - 216);
}

uint64_t sub_1C444C060()
{
  v2 = *(v0 - 360);
}

uint64_t sub_1C444C088(uint64_t a1, ...)
{
  va_start(va, a1);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);

  return sub_1C441D828(v3, v4, va);
}

uint64_t sub_1C444C0A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 - 256);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C444C140(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C444C16C()
{
  result = qword_1EDDFE890;
  if (!qword_1EDDFE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE890);
  }

  return result;
}

uint64_t sub_1C444C1C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C444C21C()
{
  v4 = *v2;

  return sub_1C445FAA8(v1, v0);
}

uint64_t sub_1C444C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 424);

  return sub_1C48687D0(a1, a2, a3, a4);
}

uint64_t sub_1C444C250@<X0>(uint64_t a1@<X8>)
{

  return sub_1C4460108(v4 + a1, v3, v1, v2);
}

uint64_t sub_1C444C2B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C4F02458();
}

uint64_t sub_1C444C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 + 1960) = a1;
  *(a1 + 16) = a9;
  sub_1C441D670((v10 + 1056), a1 + 32);

  return sub_1C443113C(v11, v9);
}

uint64_t sub_1C444C328()
{
  *(v3 - 208) = v1;
  sub_1C441DFEC(v0, v2);
  v4 = *(v3 - 304);

  return sub_1C4F00DA8();
}

uint64_t sub_1C444C370()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 112);

  return swift_arrayInitWithTakeFrontToBack();
}

uint64_t sub_1C444C3BC()
{

  return sub_1C4F016D8();
}

uint64_t sub_1C444C42C()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 184);

  return sub_1C441D828(v2, v3, (v0 - 168));
}

uint64_t sub_1C444C48C()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_1C444C4C0()
{
  v2 = *(v1 - 304);
  result = *(v0 + v2);
  *(v0 + v2) = *(v1 - 112);
  return result;
}

uint64_t sub_1C444C500@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  v3 = *(v1 - 272);
  v4 = *(v1 - 128);

  return sub_1C4F02618();
}

uint64_t sub_1C444C528@<X0>(void *a1@<X8>)
{
  result = *(v2 - 112);
  *a1 = *(v2 - 120);
  a1[1] = result;
  v4 = *(v1 + 44);
  return result;
}

unint64_t sub_1C444C538()
{
  result = qword_1EDDF86C8;
  if (!qword_1EDDF86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86C8);
  }

  return result;
}

unint64_t sub_1C444C5E8()
{
  result = qword_1EDDF8840;
  if (!qword_1EDDF8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8840);
  }

  return result;
}

uint64_t sub_1C444C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C444C6A0();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C444C6A0()
{
  result = qword_1EDDF86B0;
  if (!qword_1EDDF86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF86B0);
  }

  return result;
}

void sub_1C444C6F4()
{
  sub_1C4414FE4();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C45B0, &qword_1C4F5A050);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C444C970();
  sub_1C441BD4C();
  if (v0)
  {
    sub_1C440962C(v2);
    sub_1C441DFEC(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v22) = 0;
    v12 = sub_1C4F026B8();
    sub_1C440103C(1);
    v13 = sub_1C4F026B8();
    sub_1C440103C(2);
    v21 = sub_1C4F026B8();
    sub_1C440103C(3);
    sub_1C4F02698();
    v15 = v14;
    sub_1C440103C(4);
    sub_1C4F02698();
    v17 = v16;
    sub_1C444C16C();
    sub_1C4F02658();
    v18 = *(v7 + 8);
    v19 = sub_1C43FE990();
    v20(v19);
    sub_1C441DFEC(0, 0xF000000000000000);
    sub_1C4431E64(v22, v23);
    sub_1C440962C(v2);
    sub_1C441DFEC(v22, v23);
    *v4 = v12;
    v4[1] = v13;
    v4[2] = v21;
    v4[3] = v15;
    v4[4] = v17;
    v4[5] = v22;
    v4[6] = v23;
  }

  sub_1C440A17C();
}

double sub_1C444C920@<D0>(uint64_t a1@<X8>)
{
  sub_1C444C6F4();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

unint64_t sub_1C444C970()
{
  result = qword_1EDDF86E0[0];
  if (!qword_1EDDF86E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF86E0);
  }

  return result;
}

unint64_t sub_1C444C9CC(char a1)
{
  result = 0x6449656372756F73;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6D695479426E7572;
      break;
    case 5:
      result = 0x6B72616D6B6F6F62;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}