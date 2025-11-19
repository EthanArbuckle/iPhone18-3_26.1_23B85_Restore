uint64_t sub_1BE5095EC()
{
  sub_1BE509644();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1BE509644()
{
  if (!qword_1EBDACC00)
  {
    v0 = sub_1BE54B3DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDACC00);
    }
  }
}

unint64_t sub_1BE509690()
{
  result = qword_1EBDACC08;
  if (!qword_1EBDACC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACC08);
  }

  return result;
}

uint64_t sub_1BE5096E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1BE4C7470(v4);
  v6 = *(v5 + 16);
  v7 = sub_1BE4D9800();
  v8(v7);
  return a2;
}

uint64_t sub_1BE509740()
{
  sub_1BE4E021C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_1BE4E4408(v6);
  *v7 = v8;
  v7[1] = sub_1BE4E43A8;
  v9 = sub_1BE4FFA4C();

  return sub_1BE50492C(v9, v10, v11, v3, v4, v5);
}

uint64_t sub_1BE5097F0()
{
  sub_1BE4E021C();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_1BE4E4408(v8);
  *v9 = v10;
  v9[1] = sub_1BE4E43A8;

  return sub_1BE5055AC(v4, v2, v5, v6, v7);
}

uint64_t sub_1BE5098A8()
{
  sub_1BE4E021C();
  sub_1BE4D97A4();
  v1 = *(sub_1BE54B40C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = sub_1BE4E4408(v5);
  *v6 = v7;
  v6[1] = sub_1BE4E43A8;
  v8 = sub_1BE4FFA4C();

  return sub_1BE50676C(v8, v9, v10, v11, v4);
}

uint64_t sub_1BE5099AC()
{
  sub_1BE4E4418();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = sub_1BE4E4408(v5);
  *v6 = v7;
  v6[1] = sub_1BE4DF8E8;

  return sub_1BE4E3B40(v2, v4);
}

uint64_t sub_1BE509A58()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE5039EC(v3, v4, v5, v6);
}

uint64_t sub_1BE509BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SettingsObserver_subscribers;
  sub_1BE50A9A0();
  swift_beginAccess();
  sub_1BE4DC9A0();
  v5 = *(*(a2 + v4) + 16);
  sub_1BE4DCA14(v5);
  v6 = *(a2 + v4);
  *(v6 + 16) = v5 + 1;
  sub_1BE50A368(v8, v6 + 16 * v5 + 32);
  *(a2 + v4) = v6;
  return swift_endAccess();
}

uint64_t sub_1BE509C4C(uint64_t a1, uint64_t a2)
{
  v62 = sub_1BE54B40C();
  v56 = *(v62 - 8);
  v4 = *(v56 + 64);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v57 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = v52 - v7;
  v8 = sub_1BE4BF11C(&qword_1EBDACC18, &qword_1BE5500D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = v52 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v58 = v13;
  v15 = 0;
  v53 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v52[0] = v17;
  v52[1] = v56 + 16;
  v59 = v52 - v12;
  v60 = (v56 + 32);
  v54 = (v56 + 8);
  while (v21)
  {
    v61 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_13:
    v27 = v53;
    v28 = v55;
    v29 = v56;
    v30 = v62;
    (*(v56 + 16))(v55, *(v53 + 48) + *(v56 + 72) * v23, v62);
    v31 = *(*(v27 + 56) + v23);
    v32 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
    v33 = *(v32 + 48);
    v34 = *(v29 + 32);
    v24 = v58;
    v34(v58, v28, v30);
    *(v24 + v33) = v31;
    sub_1BE4C63F8(v24, 0, 1, v32);
    v14 = v59;
LABEL_14:
    sub_1BE4D9204(v24, v14, &qword_1EBDACC18, &qword_1BE5500D0);
    v35 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
    v36 = sub_1BE4C63BC(v14, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v57;
    v40 = v62;
    (*v60)(v57, v14, v62);
    v41 = v14[v38];
    v42 = sub_1BE52F6F0();
    v44 = v43;
    (*v54)(v39, v40);
    if ((v44 & 1) == 0)
    {
      return v37;
    }

    if (*(*(a2 + 56) + v42))
    {
      if (*(*(a2 + 56) + v42) == 1)
      {
        v45 = 0xE500000000000000;
        v46 = 0x6369736162;
        if (!v41)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v46 = 0x696D694C64726168;
        v45 = 0xEB00000000646574;
        if (!v41)
        {
LABEL_24:
          v47 = 0xE800000000000000;
          v48 = 0x6465636E61766461;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v45 = 0xE800000000000000;
      v46 = 0x6465636E61766461;
      if (!v41)
      {
        goto LABEL_24;
      }
    }

    if (v41 == 1)
    {
      v47 = 0xE500000000000000;
      v48 = 0x6369736162;
    }

    else
    {
      v48 = 0x696D694C64726168;
      v47 = 0xEB00000000646574;
    }

LABEL_26:
    if (v46 == v48 && v45 == v47)
    {

      v14 = v59;
      v21 = v61;
    }

    else
    {
      v50 = sub_1BE54CCDC();

      v14 = v59;
      v21 = v61;
      if ((v50 & 1) == 0)
      {
        return v37;
      }
    }
  }

  v24 = v58;
  while (1)
  {
    v25 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      v51 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
      sub_1BE4C63F8(v24, 1, 1, v51);
      v61 = 0;
      goto LABEL_14;
    }

    v26 = *(v52[0] + 8 * v25);
    ++v15;
    if (v26)
    {
      v61 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) | (v25 << 6);
      v15 = v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE50A278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE50A2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE50A3C4()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE503578(v3, v4, v5, v6);
}

uint64_t sub_1BE50A450()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE506A84(v3, v4, v5, v6);
}

uint64_t sub_1BE50A4DC()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE507144(v3, v4, v5, v6);
}

uint64_t sub_1BE50A568(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1BE50A5B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_1BE50A884(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1BE50A618()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  sub_1BE50A800(v1);

  return sub_1BE522DDC();
}

unint64_t sub_1BE50A6A4()
{
  result = qword_1EBDACC80;
  if (!qword_1EBDACC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDACC80);
  }

  return result;
}

uint64_t sub_1BE50A6E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1BE50AADC();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BE50A724()
{
  sub_1BE4E4418();
  sub_1BE50A868();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE50A800(v1);

  return sub_1BE5086DC(v3, v4, v5, v6);
}

uint64_t sub_1BE50A7E0()
{

  return swift_once();
}

void sub_1BE50A868()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void sub_1BE50A89C()
{

  sub_1BE50BA3C();
}

uint64_t sub_1BE50A8C8(unsigned __int8 *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

uint64_t sub_1BE50A8E0()
{
  *(v0 + 8) = sub_1BE505C08;
  result = *(v1 + 160);
  v3 = *(v1 + 104);
  return result;
}

uint64_t sub_1BE50A920@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8 * (v1 >> 6) + 64) |= 1 << v1;
  v3 = *(a1 + 16);
  return *(v2 + 48) + *(a1 + 72) * v1;
}

uint64_t sub_1BE50A974()
{

  return swift_once();
}

uint64_t sub_1BE50A9AC()
{
  result = *(v0 + 24);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_1BE50A9C0()
{

  return sub_1BE4C63BC(v0 + v2, 4, v1);
}

void sub_1BE50AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1BE508B1C(a1, 0xD000000000000011, a3, 49, 0xE100000000000000);
}

uint64_t sub_1BE50AA34()
{
  v3 = *(v1 - 128);

  return sub_1BE4C5338(v3, v0, (v1 - 104));
}

uint64_t sub_1BE50AA50()
{

  return sub_1BE507D40();
}

uint64_t sub_1BE50AA7C()
{

  return swift_beginAccess();
}

uint64_t sub_1BE50AAC4()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE50AB00()
{

  return sub_1BE507D40();
}

uint64_t sub_1BE50AB18()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE50AB7C()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE50AB94()
{
  v3[3] = sub_1BE4BF11C(&qword_1EBDACC88, &qword_1BE550480);
  v3[4] = sub_1BE4C6A14(&qword_1EBDACC90, &qword_1EBDACC88, &qword_1BE550480);
  sub_1BE50B648(v3);
  sub_1BE4BF11C(&qword_1EBDACC98, &qword_1BE550488);
  sub_1BE4C6A14(&qword_1EBDACCA0, &qword_1EBDACC98, &qword_1BE550488);
  sub_1BE54BD0C();
  MEMORY[0x1BFB47EC0](v3);
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  v1[2] = v0;
  v1[3] = sub_1BE50AD20;
  v1[4] = 0;

  sub_1BE54C9CC();
}

uint64_t sub_1BE50AD20@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = sub_1BE54B76C();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBDB0C00;
  v6 = sub_1BE54BF6C();
  v8 = v7;
  v10 = v9;
  sub_1BE54B75C();
  v11 = sub_1BE54BF4C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1BE4C68C8(v6, v8, v10 & 1);

  result = (*(v21 + 8))(v4, v1);
  v19 = v22;
  *v22 = v11;
  v19[1] = v13;
  *(v19 + 16) = v15 & 1;
  v19[3] = v17;
  return result;
}

void sub_1BE50AF0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v2[3] = sub_1BE4BF11C(&qword_1EBDACCA8, &qword_1BE550490);
    v2[4] = sub_1BE4C6A14(&qword_1EBDACCB0, &qword_1EBDACCA8, &qword_1BE550490);
    sub_1BE50B648(v2);
    sub_1BE4BF11C(&qword_1EBDACCB8, &qword_1BE550498);
    sub_1BE50B6C0();
    sub_1BE54BD0C();
    MEMORY[0x1BFB47EC0](v2);
  }
}

uint64_t sub_1BE50B04C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1BE54BC5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE4BF11C(&qword_1EBDACCB8, &qword_1BE550498);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v20 - v13);
  if (sub_1BE54B54C())
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BE54B53C();
  }

  KeyPath = swift_getKeyPath();
  if (v15)
  {
    sub_1BE54BC4C();
  }

  else
  {
    sub_1BE54BC3C();
  }

  v17 = (v14 + *(v11 + 36));
  v18 = sub_1BE4BF11C(&qword_1EBDACCD0, &qword_1BE5504A0);
  (*(v7 + 32))(v17 + *(v18 + 28), v10, v6);
  *v17 = KeyPath;
  *v14 = a1;
  v14[1] = a2;
  sub_1BE50B7A4(v14, a3);
}

uint64_t sub_1BE50B220(uint64_t a1)
{
  v2 = sub_1BE54BC5C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BE54B8EC();
}

id sub_1BE50B348(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_1BE54C6DC();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_1BE50B46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v7 = sub_1BE54C6DC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

id sub_1BE50B550(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BE50B5E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BE50B63C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t *sub_1BE50B648(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1BE50B6A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1BE50AF0C();
}

unint64_t sub_1BE50B6C0()
{
  result = qword_1EBDACCC0;
  if (!qword_1EBDACCC0)
  {
    sub_1BE4C5948(&qword_1EBDACCB8, &qword_1BE550498);
    sub_1BE4C6A14(&qword_1EBDACCA0, &qword_1EBDACC98, &qword_1BE550488);
    sub_1BE4C6A14(&qword_1EBDACCC8, &qword_1EBDACCD0, &qword_1BE5504A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACCC0);
  }

  return result;
}

uint64_t sub_1BE50B7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDACCB8, &qword_1BE550498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BE50B814@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1BE52F67C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1BE4C6FB8(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1BE50B878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BE52F67C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1BE50B8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BE52F67C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_1BE50B920(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 3;
  }

  v3 = sub_1BE52F6F0();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 3;
  }
}

double sub_1BE50B96C@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1BE52F784(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 40 * v5;

    sub_1BE4C6918(v7, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1BE50B9D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1BE52F850(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1BE4C6FB8(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1BE50BA3C()
{
  sub_1BE4FFB64();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v9);
  v11 = *(v10 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1BE511B08();
  sub_1BE51170C(v13, v14, &qword_1EBDAC3A8, &qword_1BE550DA0);
  v15 = sub_1BE54C91C();
  v16 = sub_1BE4C63BC(v0, 1, v15);

  if (v16 == 1)
  {
    sub_1BE511848(v0, &qword_1EBDAC3A8, &qword_1BE550DA0);
  }

  else
  {
    sub_1BE54C90C();
    sub_1BE50A884(v15);
    (*(v17 + 8))(v0, v15);
  }

  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1BE511848(v6, &qword_1EBDAC3A8, &qword_1BE550DA0);
    sub_1BE4D9838();
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1BE54C87C();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1BE54C75C();
  sub_1BE4D9838();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;

  swift_task_create();

  sub_1BE511848(v6, &qword_1EBDAC3A8, &qword_1BE550DA0);

LABEL_9:
  sub_1BE4FFB4C();
}

void sub_1BE50BCEC()
{
  sub_1BE4FFB64();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v9);
  v11 = *(v10 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00]();
  v12 = sub_1BE511B08();
  sub_1BE51170C(v12, v13, &qword_1EBDAC3A8, &qword_1BE550DA0);
  v14 = sub_1BE54C91C();
  v15 = sub_1BE4C63BC(v0, 1, v14);

  if (v15 == 1)
  {
    sub_1BE511848(v0, &qword_1EBDAC3A8, &qword_1BE550DA0);
  }

  else
  {
    sub_1BE54C90C();
    sub_1BE50A884(v14);
    (*(v16 + 8))(v0, v14);
  }

  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1BE511848(v6, &qword_1EBDAC3A8, &qword_1BE550DA0);
    sub_1BE4D9838();
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    sub_1BE4BF11C(&qword_1EBDACD78, &qword_1BE550648);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1BE54C87C();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1BE54C75C();
  sub_1BE4D9838();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;

  sub_1BE4BF11C(&qword_1EBDACD78, &qword_1BE550648);
  swift_task_create();

  sub_1BE511848(v6, &qword_1EBDAC3A8, &qword_1BE550DA0);

LABEL_9:
  sub_1BE4FFB4C();
}

uint64_t sub_1BE50BFB0()
{
  sub_1BE4BF11C(&qword_1EBDABE48, &unk_1BE550660);
  result = swift_allocObject();
  *(result + 16) = xmmword_1BE5504E0;
  v2 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier);
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  *(result + 32) = v2;
  v4 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupRequestsToggleSpecifier);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 40) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 48) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_requestDialogToggleSpecifier);
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 56) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier);
  if (v7)
  {
    *(result + 64) = v7;
    v8 = v2;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    return v3;
  }

LABEL_11:
  __break(1u);
  return result;
}

void GenerativePartnerServicePSSettingsManager.init(parentController:settings:)()
{
  sub_1BE4FFB64();
  v147 = v1;
  v152 = v2;
  v3 = sub_1BE54AF6C();
  v4 = sub_1BE4C7570(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BE4C757C();
  v156 = v8 - v7;
  v9 = sub_1BE54AD8C();
  v10 = sub_1BE4C7500(v9);
  v155 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1BE4C757C();
  v16 = v15 - v14;
  v17 = sub_1BE54C6BC();
  v18 = sub_1BE4C7570(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1BE4C757C();
  v23 = v22 - v21;
  v148 = sub_1BE54ADAC();
  v24 = sub_1BE4C7500(v148);
  v153 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1BE4C757C();
  v30 = (v29 - v28);
  v31 = sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500);
  sub_1BE4C7570(v31);
  v33 = *(v32 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v138 - v35;
  v37 = &v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousPartnerID];
  *v37 = 0;
  *(v37 + 1) = 0;
  *(v37 + 2) = 0;
  v38 = &v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousAvailability];
  v39 = sub_1BE54B12C();
  sub_1BE4C63F8(v36, 1, 1, v39);
  *v38 = 0;
  v40 = *(sub_1BE4BF11C(&qword_1EBDACCF0, &qword_1BE550508) + 28);
  v41 = sub_1BE4BF11C(&qword_1EBDACCF8, &qword_1BE550510);
  sub_1BE4C7570(v41);
  bzero(v38 + v40, *(v42 + 64));
  sub_1BE50CD10(v36, v38 + v40);
  v43 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_observer;
  *&v0[v43] = [objc_allocWithZone(type metadata accessor for SettingsObserver()) init];
  swift_unknownObjectWeakInit();
  v44 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_groupSpecifier;
  v45 = objc_opt_self();
  v46 = v23;
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v47 = sub_1BE4C52BC(v9, qword_1EBDB0C08);
  v49 = v155 + 16;
  v48 = *(v155 + 16);
  v150 = v47;
  v151 = v9;
  v149 = v48;
  (v48)(v16);
  sub_1BE54AF2C();
  sub_1BE511AA4();
  sub_1BE54ADBC();
  v50 = sub_1BE54C72C();
  *&v0[v44] = sub_1BE510ACC(v50, v51, v45);
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupRequestsToggleSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_requestDialogToggleSpecifier] = 0;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier] = 0;
  v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock] = 1;
  swift_unknownObjectWeakAssign();
  v52 = v147;
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_settings] = v147;
  v53 = type metadata accessor for GenerativePartnerServicePSSettingsManager();
  v160.receiver = v0;
  v160.super_class = v53;
  v154 = v53;
  v143 = v52;
  v54 = objc_msgSendSuper2(&v160, sel_init);
  v55 = *&v54[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_groupSpecifier];
  if (!v55)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v56 = *&v54[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_settings];
  v57 = v54;
  [v56 addObject_];
  v58 = *&v57[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_observer];
  v59 = v57;
  v60 = v58;
  sub_1BE509BA4(v59, v60);

  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480();
  }

  v61 = off_1EDDD6898;
  v62 = v59;
  v63 = sub_1BE539620();
  sub_1BE53FD60();

  v64 = v61[3];
  sub_1BE510DF8(v62, v64);

  sub_1BE54C65C();
  v155 = v49;
  v149(v16, v150, v151);
  sub_1BE54AF2C();
  v144 = v46;
  v145 = v16;
  sub_1BE511AD0();
  sub_1BE511AA4();
  sub_1BE54ADBC();
  v147 = v30;
  v65 = sub_1BE54C72C();
  v67 = v66;
  v159 = v154;
  v157 = v62;
  v68 = objc_allocWithZone(MEMORY[0x1E69C5748]);
  v69 = sub_1BE511AE0(v65, v67, &v157);
  v70 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier;
  v71 = *&v62[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier];
  *&v62[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupButtonSpecifier] = v69;
  v72 = v69;

  if (!v69)
  {
    goto LABEL_18;
  }

  v73 = sub_1BE4BF11C(&qword_1EBDACD48, &qword_1BE550518);
  inited = swift_initStackObject();
  v142 = xmmword_1BE54DC10;
  *(inited + 16) = xmmword_1BE54DC10;
  v75 = *MEMORY[0x1E69C5860];
  v157 = sub_1BE54C70C();
  v158 = v76;
  v77 = MEMORY[0x1E69E6158];
  sub_1BE54CA8C();
  v78 = type metadata accessor for ExternalAISetupPlacardCell();
  *(inited + 96) = sub_1BE4BF11C(&qword_1EBDACD50, &unk_1BE550520);
  *(inited + 72) = v78;
  v79 = *MEMORY[0x1E69C5918];
  v157 = sub_1BE54C70C();
  v158 = v80;
  sub_1BE54CA8C();
  *(inited + 168) = v77;
  sub_1BE511B98();
  *(inited + 144) = 0x6C616E7265747845;
  *(inited + 152) = v81;
  v82 = sub_1BE54C61C();
  sub_1BE510B7C(v82, v72);

  v83 = *&v62[v70];
  if (!v83)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v146 = v73;
  v139 = sel_showExternalAISetUpSelectionSheet;
  v140 = v79;
  [v83 setButtonAction_];
  v84 = v147;
  if (qword_1EBDABA50 != -1)
  {
    swift_once();
  }

  v85 = v148;
  v86 = sub_1BE4C52BC(v148, qword_1EBDB0BC0);
  v87 = *(v153 + 16);
  v153 += 16;
  v141 = v87;
  v87(v84, v86, v85);
  v88 = sub_1BE54C72C();
  v90 = v89;
  v91 = v154;
  v159 = v154;
  v157 = v62;
  v92 = objc_allocWithZone(MEMORY[0x1E69C5748]);
  v93 = v62;
  v94 = sub_1BE510218(v88, v90, &v157, sel_setAllowSetupRequests_, sel_allowSetupRequests, 0, 6, 0);
  v95 = *&v93[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupRequestsToggleSpecifier];
  *&v93[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_setupRequestsToggleSpecifier] = v94;
  v96 = v94;

  if (!v94)
  {
    goto LABEL_20;
  }

  v97 = swift_initStackObject();
  v138 = xmmword_1BE54E1A0;
  *(v97 + 16) = xmmword_1BE54E1A0;
  v98 = *MEMORY[0x1E69C59A0];
  v157 = sub_1BE54C70C();
  v158 = v99;
  v100 = MEMORY[0x1E69E6158];
  sub_1BE54CA8C();
  sub_1BE511E6C();
  v101 = sub_1BE54C72C();
  *(v97 + 96) = v100;
  *(v97 + 72) = v101;
  *(v97 + 80) = v102;
  v103 = sub_1BE54C61C();
  sub_1BE510B7C(v103, v96);

  v159 = v91;
  v157 = v93;
  v104 = type metadata accessor for GenerativePartnerSettingsPanelController();
  v105 = objc_allocWithZone(MEMORY[0x1E69C5748]);
  v106 = v93;
  v107 = sub_1BE510218(45, 0xE100000000000000, &v157, 0, 0, v104, 1, 0);
  v108 = *&v106[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier];
  *&v106[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier] = v107;
  v109 = v107;

  if (!v107)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v110 = swift_initStackObject();
  *(v110 + 16) = v142;
  v157 = sub_1BE54C70C();
  v158 = v111;
  sub_1BE54CA8C();
  *(v110 + 96) = v100;
  *(v110 + 72) = 0x6C616E7265747845;
  sub_1BE511B98();
  *(v110 + 80) = v112;
  v157 = sub_1BE54C70C();
  v158 = v113;
  sub_1BE54CA8C();
  *(v110 + 168) = v100;
  *(v110 + 144) = 45;
  *(v110 + 152) = 0xE100000000000000;
  v114 = sub_1BE54C61C();
  sub_1BE510B7C(v114, v109);

  if (qword_1EBDABA58 != -1)
  {
    swift_once();
  }

  v115 = v148;
  v116 = sub_1BE4C52BC(v148, qword_1EBDB0BD8);
  v141(v147, v116, v115);
  sub_1BE54C72C();
  sub_1BE511B74();
  v117 = v154;
  v159 = v154;
  v157 = v106;
  objc_allocWithZone(MEMORY[0x1E69C5748]);
  v118 = v106;
  v119 = sub_1BE511B8C();
  v122 = sub_1BE510218(v119, v120, v121, sel_setShouldConfirmRequests_, sel_shouldConfirmRequests, 0, 6, 0);
  v123 = *&v118[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_requestDialogToggleSpecifier];
  *&v118[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_requestDialogToggleSpecifier] = v122;

  sub_1BE54C65C();
  v149(v145, v150, v151);
  sub_1BE54AF2C();
  sub_1BE511AD0();
  sub_1BE511AA4();
  sub_1BE54ADBC();
  sub_1BE54C72C();
  sub_1BE511B74();
  v159 = v117;
  v157 = v118;
  v124 = objc_allocWithZone(MEMORY[0x1E69C5748]);
  v125 = sub_1BE511B8C();
  v128 = sub_1BE511AE0(v125, v126, v127);
  v129 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier;
  v130 = *&v118[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier];
  *&v118[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_partnerSwitcherSpecifier] = v128;
  v131 = v128;

  v132 = v152;
  if (!v128)
  {
    goto LABEL_22;
  }

  v133 = swift_initStackObject();
  *(v133 + 16) = v138;
  v134 = *MEMORY[0x1E69C5820];
  v157 = sub_1BE54C70C();
  v158 = v135;
  sub_1BE54CA8C();
  *(v133 + 96) = MEMORY[0x1E69E6370];
  *(v133 + 72) = 1;
  v136 = sub_1BE54C61C();
  sub_1BE510B7C(v136, v131);

  v137 = *&v118[v129];
  if (v137)
  {
    [v137 setButtonAction_];
    sub_1BE50D28C();

    v118[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock] = 0;
    sub_1BE4FFB4C();
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1BE50CD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BE50CDC4()
{
  v1 = v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousPartnerID;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousPartnerID));
  sub_1BE50CE28((v1 + 8), v0);

  os_unfair_lock_unlock(v1);
}

void sub_1BE50CE28(uint64_t *a1, uint64_t a2)
{
  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B1FC();

  if (v24)
  {
    sub_1BE4C52F4(v23, v24);
    v5 = sub_1BE54B28C();
    v7 = v6;
    sub_1BE4C58A8(v23);
  }

  else
  {
    sub_1BE511848(v23, &qword_1EBDAC550, &qword_1BE54F7D0);
    v5 = 0;
    v7 = 0;
  }

  if (*(a2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock))
  {
LABEL_5:

    return;
  }

  v9 = *a1;
  v8 = a1[1];
  if (v7)
  {
    if (v8)
    {
      if (v5 == v9 && v7 == v8)
      {
        goto LABEL_5;
      }

      v11 = *a1;
      v12 = a1[1];
      if (sub_1BE54CCDC())
      {
        goto LABEL_5;
      }
    }
  }

  else if (!v8)
  {
    return;
  }

  v25 = v2;
  *a1 = v5;
  a1[1] = v7;
  v13 = qword_1EBDABAA8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_1BE54B2EC();
  sub_1BE4C52BC(v14, qword_1EBDB0C38);

  v15 = sub_1BE54B2BC();
  v16 = sub_1BE54C97C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23[0] = v22;
    *v17 = 136446722;
    *(v17 + 4) = sub_1BE4C5338(0xD00000000000001ELL, 0x80000001BE554CB0, v23);
    *(v17 + 12) = 2082;
    if (v8)
    {
      v18 = v9;
    }

    else
    {
      v18 = 7104878;
    }

    if (!v8)
    {
      v8 = 0xE300000000000000;
    }

    v19 = sub_1BE4C5338(v18, v8, v23);

    *(v17 + 14) = v19;
    *(v17 + 22) = 2082;
    if (v7)
    {
      v20 = v5;
    }

    else
    {
      v20 = 7104878;
    }

    if (!v7)
    {
      v7 = 0xE300000000000000;
    }

    v21 = sub_1BE4C5338(v20, v7, v23);

    *(v17 + 24) = v21;
    _os_log_impl(&dword_1BE4B8000, v15, v16, "%{public}s: previousPartnerID: %{public}s, currentPartnerID: %{public}s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB48AC0](v22, -1, -1);
    MEMORY[0x1BFB48AC0](v17, -1, -1);
  }

  else
  {
  }

  sub_1BE50D28C();
}

void sub_1BE50D160()
{
  v1 = v0;
  if (qword_1EBDABA78 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0BF8;
  if (qword_1EBDB0BF8)
  {
    v3 = sub_1BE54C6DC();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 1;
  }

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  if (v4 != (sub_1BE53EAA8() & 1))
  {
    sub_1BE53EBAC(v4, 1);
  }

  if ((*(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock) & 1) == 0)
  {

    sub_1BE50D28C();
  }
}

void sub_1BE50D28C()
{
  sub_1BE4FFB64();
  v1 = v0;
  v77 = v2;
  v78 = v3;
  v76 = v4;
  v5 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v5);
  v7 = *(v6 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v74 - v9;
  v10 = sub_1BE54ADAC();
  v11 = sub_1BE4C7570(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1BE4C757C();
  v16 = v15 - v14;
  v17 = sub_1BE54AF6C();
  v18 = sub_1BE4C7570(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1BE4C757C();
  v21 = sub_1BE54C6BC();
  v22 = sub_1BE4C7570(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1BE4C757C();
  v25 = OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier;
  v26 = *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_panelLinkSpecifier];
  if (!v26)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1BE54B24C();
  v27 = v26;
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (*(&v82 + 1))
  {
    sub_1BE4C52F4(&v81, *(&v82 + 1));
    sub_1BE54B26C();
    sub_1BE511B74();
    sub_1BE4C58A8(&v81);
  }

  else
  {
    sub_1BE511848(&v81, &qword_1EBDAC550, &qword_1BE54F7D0);
    sub_1BE54C65C();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v28 = qword_1EBDB0C00;
    sub_1BE54AF2C();
    sub_1BE511AD0();
    sub_1BE511AA4();
    sub_1BE54C71C();
    sub_1BE511B74();
  }

  v29 = sub_1BE511B8C();
  sub_1BE5109EC(v29, v30, v27);

  v31 = static GenerativePartnerRestrictionUtils.isHardDisabled.getter();
  v32 = *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_groupSpecifier];
  v74 = v25;
  if (v31)
  {
    if (!v32)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v33 = sub_1BE54C6DC();
  }

  else
  {
    if (!v32)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    sub_1BE54B22C();
    sub_1BE54B20C();

    if (v80)
    {
      sub_1BE4C52F4(v79, v80);
      sub_1BE511B8C();
      sub_1BE4EB2CC(v34);
      sub_1BE4C58A8(v79);
    }

    else
    {
      sub_1BE511848(v79, &qword_1EBDAC550, &qword_1BE54F7D0);
      v81 = 0u;
      v82 = 0u;
      v83 = 0;
    }

    sub_1BE512114(&v81, v16);
    sub_1BE511848(&v81, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE54C72C();
    v33 = sub_1BE54C6DC();
  }

  v35 = *MEMORY[0x1E69C5900];
  v36 = sub_1BE54C70C();
  sub_1BE510A50(v33, v36, v37, v32);

  v38 = sub_1BE50BFB0();
  v39 = sub_1BE4D0EB0(v38);
  if (v39)
  {
    v40 = v39;
    if (v39 < 1)
    {
      __break(1u);
      goto LABEL_46;
    }

    v41 = 0;
    v42 = *&v1[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_settings];
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1BFB47FF0](v41, v38);
      }

      else
      {
        v43 = *(v38 + 8 * v41 + 32);
      }

      v44 = v43;
      ++v41;
      [v42 removeObject_];
    }

    while (v40 != v41);
  }

  if ((static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) == 0)
  {
    sub_1BE4BF11C(&qword_1EBDABE48, &unk_1BE550660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE5504F0;
    v50 = *&v1[v74];
    if (!v50)
    {
LABEL_52:
      __break(1u);
      return;
    }

    v51 = inited;
    *(inited + 32) = v50;
    v52 = *&v1[OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_settings];
    v53 = inited & 0xC000000000000001;
    v54 = v50;
    if (v53)
    {
      v55 = MEMORY[0x1BFB47FF0](0, v51);
LABEL_32:
      v56 = v55;
      [v52 ps:v55 insertObject:v32 afterObject:v74];

      swift_setDeallocating();
      v57 = *(v51 + 16);
      swift_arrayDestroy();
      goto LABEL_33;
    }

    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v55 = v54;
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_49;
  }

  sub_1BE5109EC(0, 0xE000000000000000, v32);
  if (qword_1EBDABAA8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v45 = sub_1BE54B2EC();
    sub_1BE4C52BC(v45, qword_1EBDB0C38);
    v46 = sub_1BE54B2BC();
    v47 = sub_1BE54C97C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1BE4B8000, v46, v47, "[Settings] External AI hard disabled, not showing Apple Intelligence Extension settings", v48, 2u);
      sub_1BE4C75DC();
    }

LABEL_33:
    if (AFMontaraRestricted() & 1) == 0 && (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) == 0 && (sub_1BE52AA84())
    {
      sub_1BE52AC38();
    }

    v58 = sub_1BE50BFB0();
    v59 = sub_1BE4D0EB0(v58);
    if (!v59)
    {
      break;
    }

    v60 = v59;
    if (v59 >= 1)
    {
      v61 = 0;
      v62 = *MEMORY[0x1E69C58C8];
      do
      {
        if ((v58 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x1BFB47FF0](v61, v58);
        }

        else
        {
          v63 = *(v58 + 8 * v61 + 32);
        }

        v64 = v63;
        ++v61;
        v65 = sub_1BE54C86C();
        v66 = sub_1BE54C70C();
        sub_1BE510A50(v65, v66, v67, v64);
      }

      while (v60 != v61);
      break;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    sub_1BE4FFAF4();
  }

  v68 = sub_1BE54C91C();
  sub_1BE4C63F8(v75, 1, 1, v68);
  sub_1BE54C8CC();
  v69 = v1;
  v70 = v78;

  v71 = sub_1BE54C8BC();
  v72 = swift_allocObject();
  v73 = MEMORY[0x1E69E85E0];
  *(v72 + 16) = v71;
  *(v72 + 24) = v73;
  *(v72 + 32) = v69;
  *(v72 + 40) = v76 & 1;
  *(v72 + 48) = v77;
  *(v72 + 56) = v70;
  sub_1BE50BA3C();

  sub_1BE4FFB4C();
}

uint64_t sub_1BE50D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 48) = a5;
  *(v7 + 16) = a4;
  sub_1BE54C8CC();
  *(v7 + 40) = sub_1BE54C8BC();
  v9 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50DA1C, v9, v8);
}

uint64_t sub_1BE50DA1C()
{
  v17 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  if ((*(v3 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock) & 1) == 0)
  {
    if (v2)
    {
      v4 = *(v0 + 16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        if (qword_1EBDABAA8 != -1)
        {
          sub_1BE4FFAF4();
        }

        v7 = *(v0 + 32);
        v8 = sub_1BE54B2EC();
        sub_1BE4C52BC(v8, qword_1EBDB0C38);

        v9 = sub_1BE54B2BC();
        v10 = sub_1BE54C97C();

        if (os_log_type_enabled(v9, v10))
        {
          v12 = *(v0 + 24);
          v11 = *(v0 + 32);
          v13 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v13 = 136446466;
          *(v13 + 4) = sub_1BE4C5338(0xD00000000000003ALL, 0x80000001BE554D00, &v16);
          *(v13 + 12) = 2080;
          *(v13 + 14) = sub_1BE4C5338(v12, v11, &v16);
          _os_log_impl(&dword_1BE4B8000, v9, v10, "%{public}s - will perform reloadSpecifiers(), invocationSource: %s", v13, 0x16u);
          swift_arrayDestroy();
          sub_1BE4C75DC();
          sub_1BE4C75DC();
        }

        [v6 reloadSpecifiers];
      }
    }
  }

  sub_1BE4E01E0();

  return v14();
}

uint64_t sub_1BE50E2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1BE54C8CC();
  v6[5] = sub_1BE54C8BC();
  v8 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50E368, v8, v7);
}

uint64_t sub_1BE50E368()
{
  sub_1BE4E4418();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1BE50E8AC(v3, v2);
  sub_1BE4E01E0();

  return v5();
}

uint64_t sub_1BE50E3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_1BE54C8CC();
  *(v4 + 64) = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50E470, v6, v5);
}

uint64_t sub_1BE50E470()
{
  sub_1BE4E4418();
  v1 = v0[8];

  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480();
  }

  sub_1BE53C930((v0 + 2));
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    sub_1BE4C52F4(v0 + 2, v0[5]);
    v4 = (*(v3 + 8))(v2, v3);
    v2 = v5;
    sub_1BE4C58A8(v0 + 2);
  }

  else
  {
    sub_1BE511848((v0 + 2), &qword_1EBDABAF8, &qword_1BE54DC20);
    v4 = 0;
  }

  v6 = v0[7];
  sub_1BE50E8AC(v4, v2);

  sub_1BE4E01E0();

  return v7();
}

uint64_t sub_1BE50E624()
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480();
  }

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53FB20();

  return sub_1BE54C86C();
}

void sub_1BE50E6C8(id a1)
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480();
  }

  v2 = [a1 BOOLValue];
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53FA78(v2, 0);
}

uint64_t sub_1BE50E78C()
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53EAA8();

  return sub_1BE54C86C();
}

void sub_1BE50E8AC(uint64_t a1, uint64_t a2)
{
  v4 = a2 != 0;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(type metadata accessor for GenerativePartnerOnboardingSheetController());

  v16 = sub_1BE4C78C0(a1, a2, v4, 0, sub_1BE511704, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    if (qword_1EBDABAA8 != -1)
    {
      sub_1BE4FFAF4();
    }

    v8 = sub_1BE54B2EC();
    sub_1BE4C52BC(v8, qword_1EBDB0C38);
    v9 = sub_1BE54B2BC();
    v10 = sub_1BE54C98C();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      sub_1BE511AC0();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      sub_1BE4C75DC();
    }

    v7 = v16;
    v16 = v9;
  }
}

void sub_1BE50EA48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BE50D28C();
  }
}

id GenerativePartnerServicePSSettingsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativePartnerServicePSSettingsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativePartnerServicePSSettingsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GenerativePartnerServicePSSettingsManager.availabilityDidChange(for:availability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE54B12C();
  v6 = sub_1BE4C7500(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v11);
  v13 = *(v12 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = sub_1BE54C91C();
  sub_1BE4C63F8(v16, 1, 1, v17);
  (*(v8 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  sub_1BE54C8CC();
  v18 = v3;
  v19 = sub_1BE54C8BC();
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v19;
  *(v21 + 3) = v22;
  *(v21 + 4) = v18;
  (*(v8 + 32))(&v21[v20], &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1BE50BA3C();
}

uint64_t sub_1BE50EE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1BE54C8CC();
  v5[4] = sub_1BE54C8BC();
  v7 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50EEE4, v7, v6);
}

uint64_t sub_1BE50EEE4()
{
  v1 = v0[4];
  v2 = v0[2];

  if ((*(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_reloadLock) & 1) == 0)
  {
    v3 = v0[2];
    v4 = v0[3];
    v5 = (v3 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousAvailability);
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC26GenerativePartnerServiceUI41GenerativePartnerServicePSSettingsManager_previousAvailability));
    v6 = sub_1BE4BF11C(&qword_1EBDACCF0, &qword_1BE550508);
    sub_1BE50EFCC(v5 + *(v6 + 28), v3, v4);
    os_unfair_lock_unlock(v5);
  }

  sub_1BE4E01E0();

  return v7();
}

uint64_t sub_1BE50EFCC(uint64_t a1, void (*a2)(char *, char *), uint64_t a3)
{
  v63 = a2;
  v5 = sub_1BE54B10C();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v53 - v9;
  v10 = sub_1BE54B0DC();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v53 - v14;
  v15 = sub_1BE54B12C();
  isa = v15[-1].isa;
  v17 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v53 - v22;
  v62 = isa;
  v26 = *(isa + 2);
  v25 = isa + 16;
  v24 = v26;
  v27 = a3;
  (v26)(&v53 - v22, a3, v15);
  sub_1BE4C63F8(v23, 0, 1, v15);
  v28 = a1;
  v29 = sub_1BE50F7C4(v23, a1);
  result = sub_1BE511848(v23, &qword_1EBDACCD8, &qword_1BE550500);
  if (v29)
  {
    sub_1BE511848(a1, &qword_1EBDACCD8, &qword_1BE550500);
    (v24)(a1, v27, v15);
    sub_1BE4C63F8(a1, 0, 1, v15);
    sub_1BE50D28C();
    (v24)(v19, v27, v15);
    v31 = v62;
    result = (*(v62 + 11))(v19, v15);
    if (result == *MEMORY[0x1E69A0EF8])
    {
      (*(v31 + 12))(v19, v15);
      v32 = v58;
      v25 = v59;
      v24 = v61;
      (*(v58 + 32))(v61, v19, v59);
      if (qword_1EBDABAD8 != -1)
      {
        swift_once();
      }

      v33 = sub_1BE54B2EC();
      sub_1BE4C52BC(v33, qword_1EBDB0CB0);
      v34 = v60;
      (*(v32 + 16))(v60, v24, v25);
      v35 = sub_1BE54B2BC();
      v36 = sub_1BE54C97C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v64 = v38;
        *v37 = 136446210;
        sub_1BE54B0CC();
        sub_1BE54B0BC();
        sub_1BE511770(&qword_1EBDACD80, MEMORY[0x1E69A0F90]);
        v39 = sub_1BE54C93C();
        v41 = v40;

        v63 = *(v32 + 8);
        v63(v60, v25);
        v42 = sub_1BE4C5338(v39, v41, &v64);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_1BE4B8000, v35, v36, "reasons: %{public}s", v37, 0xCu);
        sub_1BE4C58A8(v38);
        MEMORY[0x1BFB48AC0](v38, -1, -1);
        MEMORY[0x1BFB48AC0](v37, -1, -1);

        v43 = v61;
        return (v63)(v43, v25);
      }

      v52 = *(v32 + 8);
      v52(v34, v25);
    }

    else
    {
      if (result == *MEMORY[0x1E69A0F00])
      {
        (*(v31 + 12))(v19, v15);
        v29 = v54;
        v25 = v55;
        v24 = v57;
        (*(v54 + 32))(v57, v19, v55);
        if (qword_1EBDABAD8 != -1)
        {
          swift_once();
        }

        v44 = sub_1BE54B2EC();
        sub_1BE4C52BC(v44, qword_1EBDB0CB0);
        v28 = v56;
        (*(v29 + 16))(v56, v24, v25);
        v15 = sub_1BE54B2BC();
        v45 = sub_1BE54C97C();
        if (os_log_type_enabled(v15, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v64 = v47;
          *v46 = 136446210;
          sub_1BE54B0FC();
          sub_1BE54B0EC();
          sub_1BE511770(&qword_1EDDD66C0, MEMORY[0x1E69A1168]);
          v48 = sub_1BE54C93C();
          v50 = v49;

          v63 = *(v29 + 8);
          v63(v56, v25);
          v51 = sub_1BE4C5338(v48, v50, &v64);

          *(v46 + 4) = v51;
          _os_log_impl(&dword_1BE4B8000, v15, v45, "reasons: %{public}s", v46, 0xCu);
          sub_1BE4C58A8(v47);
          MEMORY[0x1BFB48AC0](v47, -1, -1);
          MEMORY[0x1BFB48AC0](v46, -1, -1);

          v43 = v57;
          return (v63)(v43, v25);
        }
      }

      else
      {
        if (result == *MEMORY[0x1E69A11A0])
        {
          return result;
        }

        sub_1BE54CCCC();
        __break(1u);
      }

      v52 = *(v29 + 8);
      v52(v28, v25);
    }

    return (v52)(v24, v25);
  }

  return result;
}

uint64_t sub_1BE50F7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B0DC();
  v100 = *(v4 - 1);
  v101 = v4;
  v5 = *(v100 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v93 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v92 - v8;
  v9 = sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  *&v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v92 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v92 - v19;
  v21 = sub_1BE4BF11C(&qword_1EBDACD88, &unk_1BE550670);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v92 - v24;
  v26 = sub_1BE54B10C();
  v97 = *(v26 - 8);
  v98 = v26;
  v27 = v97[8];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v95 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v94 = &v92 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v92 - v32;
  v34 = *(v22 + 56);
  sub_1BE51170C(a1, v25, &qword_1EBDACCD8, &qword_1BE550500);
  sub_1BE51170C(a2, &v25[v34], &qword_1EBDACCD8, &qword_1BE550500);
  v35 = sub_1BE54B12C();
  if (sub_1BE4C63BC(v25, 1, v35) == 1)
  {
    goto LABEL_20;
  }

  v99 = v34;
  sub_1BE51170C(v25, v20, &qword_1EBDACCD8, &qword_1BE550500);
  v36 = *(v35 - 8);
  v37 = *(v36 + 88);
  v38 = v37(v20, v35);
  v39 = v38;
  if (v38 != *MEMORY[0x1E69A0EF8])
  {
    v52 = *MEMORY[0x1E69A0F00];
    if (v38 == *MEMORY[0x1E69A0F00])
    {
      v101 = *(v36 + 96);
      v101(v20, v35);
      v53 = v99;
      if (sub_1BE4C63BC(&v25[v99], 1, v35) == 1)
      {
LABEL_8:
        v55 = v97;
        v54 = v98;
LABEL_15:
        (v55[1])(v20, v54);
        goto LABEL_20;
      }

      v58 = &v25[v53];
      v59 = v96;
      sub_1BE51170C(v58, v96, &qword_1EBDACCD8, &qword_1BE550500);
      v60 = v37(v59, v35);
      if (v60 == v39)
      {
        v101(v59, v35);
        v61 = v97[4];
        v62 = v98;
        v61();
        (v61)(v95, v59, v62);
        v63 = sub_1BE54B0FC();
        v100 = sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
        v64 = sub_1BE54B0EC();
        v65 = *(v64 - 8);
        v66 = *(v65 + 72);
        v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v68 = swift_allocObject();
        v96 = xmmword_1BE54E1A0;
        *(v68 + 16) = xmmword_1BE54E1A0;
        v69 = *MEMORY[0x1E69A10B8];
        v70 = *(v65 + 104);
        v70(v68 + v67, v69, v64);
        sub_1BE5322D8(v68, v63);
        v101 = v71;
        swift_setDeallocating();
        sub_1BE52B6AC();
        v72 = v95;
        v73 = sub_1BE54B0FC();
        v74 = swift_allocObject();
        *(v74 + 16) = v96;
        v70(v74 + v67, v69, v64);
        sub_1BE5322D8(v74, v73);
        v76 = v75;
        swift_setDeallocating();
        sub_1BE52B6AC();
        sub_1BE539004(v101, v76);
        v50 = v77;

        v78 = v97[1];
        v79 = v72;
        v80 = v98;
        v78(v79, v98);
        v78(v94, v80);
        goto LABEL_18;
      }

      if (v60 != *MEMORY[0x1E69A11A0])
      {
        (*(v36 + 8))(v96, v35);
        goto LABEL_8;
      }

      v18 = v20;
    }

    else
    {
      if (v38 != *MEMORY[0x1E69A11A0])
      {
        (*(v36 + 8))(v20, v35);
        goto LABEL_20;
      }

      v56 = v99;
      if (sub_1BE4C63BC(&v25[v99], 1, v35) == 1)
      {
LABEL_20:
        sub_1BE511848(v25, &qword_1EBDACD88, &unk_1BE550670);
        v50 = 0;
        return v50 & 1;
      }

      sub_1BE51170C(&v25[v56], v18, &qword_1EBDACCD8, &qword_1BE550500);
      v57 = v37(v18, v35);
      if (v57 != v52)
      {
        if (v57 == v39)
        {
          sub_1BE511848(&v25[v56], &qword_1EBDACCD8, &qword_1BE550500);
          sub_1BE511848(v25, &qword_1EBDACCD8, &qword_1BE550500);
          v50 = 1;
          return v50 & 1;
        }

        (*(v36 + 8))(v18, v35);
        goto LABEL_20;
      }

      (*(v36 + 96))(v18, v35);
    }

    v83 = v97;
    v82 = v98;
    (v97[4])(v33, v18, v98);
    sub_1BE511848(&v25[v99], &qword_1EBDACCD8, &qword_1BE550500);
    sub_1BE511848(v25, &qword_1EBDACCD8, &qword_1BE550500);
    v84 = sub_1BE54B0FC();
    (v83[1])(v33, v82);
    sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
    v85 = sub_1BE54B0EC();
    v86 = *(v85 - 8);
    v87 = *(v86 + 72);
    v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1BE54E1A0;
    (*(v86 + 104))(v89 + v88, *MEMORY[0x1E69A10B8], v85);
    sub_1BE5103DC();
    sub_1BE539004(v84, v90);
    v50 = v91;

    return v50 & 1;
  }

  v40 = *(v36 + 96);
  v40(v20, v35);
  if (sub_1BE4C63BC(&v25[v99], 1, v35) == 1)
  {
LABEL_14:
    v55 = v100;
    v54 = v101;
    goto LABEL_15;
  }

  sub_1BE51170C(&v25[v99], v15, &qword_1EBDACCD8, &qword_1BE550500);
  if (v37(v15, v35) != v39)
  {
    (*(v36 + 8))(v15, v35);
    goto LABEL_14;
  }

  v40(v15, v35);
  v41 = v100;
  v42 = *(v100 + 32);
  v43 = v92;
  v44 = v20;
  v45 = v101;
  v42(v92, v44, v101);
  v46 = v93;
  v42(v93, v15, v45);
  v47 = sub_1BE54B0CC();
  v48 = sub_1BE54B0CC();
  sub_1BE539210(v47, v48);
  v50 = v49;

  v51 = *(v41 + 8);
  v51(v46, v45);
  v51(v43, v45);
LABEL_18:
  sub_1BE511848(&v25[v99], &qword_1EBDACCD8, &qword_1BE550500);
  sub_1BE511848(v25, &qword_1EBDACCD8, &qword_1BE550500);
  return v50 & 1;
}

id sub_1BE510218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t ObjCClassFromMetadata, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  if (a2)
  {
    v12 = sub_1BE54C6DC();
  }

  else
  {
    v12 = 0;
  }

  v13 = a3[3];
  if (v13)
  {
    v14 = sub_1BE4C52F4(a3, a3[3]);
    v15 = *(v13 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x1EEE9AC00](v14);
    v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18);
    v19 = sub_1BE54CCBC();
    (*(v15 + 8))(v18, v13);
    sub_1BE4C58A8(a3);
    if (!ObjCClassFromMetadata)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v19 = 0;
  if (ObjCClassFromMetadata)
  {
LABEL_6:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_7:
  if (a8)
  {
    v20 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v23[1] initWithName:v12 target:v19 set:a4 get:v24 detail:ObjCClassFromMetadata cell:v25 edit:v20];

  swift_unknownObjectRelease();
  return v21;
}

void sub_1BE5103DC()
{
  sub_1BE4FFB64();
  v1 = v0;
  v2 = sub_1BE54B0EC();
  v3 = sub_1BE4C7500(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v34 - v10;
  if (*(v1 + 16) && (sub_1BE4BF11C(&qword_1EBDACD98, &unk_1BE550680), v11 = sub_1BE54CABC(), v12 = v11, (v38 = *(v1 + 16)) != 0))
  {
    v13 = 0;
    v42 = v11 + 56;
    v14 = *(v39 + 80);
    v36 = v1;
    v37 = v1 + ((v14 + 32) & ~v14);
    v41 = v39 + 16;
    v15 = (v39 + 8);
    v35 = (v39 + 32);
    while (v13 < *(v1 + 16))
    {
      v16 = *(v39 + 72);
      v40 = v13 + 1;
      v17 = *(v39 + 16);
      v17(v43, v37 + v16 * v13, v2);
      v18 = *(v12 + 40);
      sub_1BE511A8C();
      sub_1BE511770(&qword_1EDDD66C0, v19);
      v20 = sub_1BE54C62C();
      v21 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = *(v42 + 8 * v23);
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v12;
        v17(v9, *(v12 + 48) + v22 * v16, v2);
        sub_1BE511A8C();
        sub_1BE511770(&qword_1EDDD66B8, v27);
        v28 = sub_1BE54C64C();
        v29 = *v15;
        (*v15)(v9, v2);
        if (v28)
        {
          v29(v43, v2);
          v12 = v26;
          goto LABEL_12;
        }

        v20 = v22 + 1;
        v12 = v26;
      }

      v30 = v43;
      *(v42 + 8 * v23) = v25 | v24;
      (*v35)(*(v12 + 48) + v22 * v16, v30, v2);
      v31 = *(v12 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_15;
      }

      *(v12 + 16) = v33;
LABEL_12:
      v13 = v40;
      v1 = v36;
      if (v40 == v38)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    sub_1BE4FFB4C();
  }
}

void sub_1BE5106E4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1BE4BF11C(qword_1EBDACDA8, &qword_1BE5506B8), v2 = sub_1BE54CABC(), (v27 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v25 = v1;
    v26 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v26 + v3);
      v28 = v3 + 1;
      v5 = *(v2 + 40);
      sub_1BE54CD8C();
      switch(v4)
      {
        case 1:
        case 3:
          sub_1BE511AB4();
          break;
        default:
          break;
      }

      sub_1BE54C77C();

      v6 = sub_1BE54CDAC();
      v7 = ~(-1 << *(v2 + 32));
      v8 = v6 & v7;
      sub_1BE511B60();
      if ((v11 & v10) != 0)
      {
        while (1)
        {
          v12 = 0xEF6E6F6974617267;
          v13 = 0x65746E4969726973;
          switch(*(*(v2 + 48) + v8))
          {
            case 1:
              sub_1BE511AB4();
              v13 = v14 + 3;
              v12 = 0x80000001BE552A90;
              break;
            case 2:
              v13 = 0xD000000000000013;
              v12 = 0x80000001BE552AB0;
              break;
            case 3:
              sub_1BE511AB4();
              v13 = v15 + 5;
              v12 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          v16 = 0x65746E4969726973;
          v17 = 0xEF6E6F6974617267;
          switch(v4)
          {
            case 1:
              sub_1BE511AB4();
              v16 = v18 + 3;
              v17 = 0x80000001BE552A90;
              break;
            case 2:
              v16 = 0xD000000000000013;
              v17 = 0x80000001BE552AB0;
              break;
            case 3:
              sub_1BE511AB4();
              v16 = v19 + 5;
              v17 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          if (v13 == v16 && v12 == v17)
          {
            break;
          }

          v21 = sub_1BE54CCDC();

          if (v21)
          {
            goto LABEL_25;
          }

          v8 = (v8 + 1) & v7;
          sub_1BE511B60();
          if ((v10 & v11) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        *(v2 + 56 + 8 * v9) = v10 | v11;
        *(*(v2 + 48) + v8) = v4;
        v22 = *(v2 + 16);
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_28;
        }

        *(v2 + 16) = v24;
      }

LABEL_25:
      v3 = v28;
      v1 = v25;
      if (v28 == v27)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:
  }
}

void sub_1BE5109EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BE54C6DC();

  [a3 setName_];
}

void sub_1BE510A50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1BE54C6DC();

  [a4 setProperty:a1 forKey:v6];
}

id sub_1BE510ACC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BE54C6DC();

  v5 = [a3 groupSpecifierWithName_];

  return v5;
}

uint64_t type metadata accessor for GenerativePartnerServicePSSettingsManager()
{
  result = qword_1EBDACD58;
  if (!qword_1EBDACD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BE510B7C(uint64_t a1, void *a2)
{
  v3 = sub_1BE54C5DC();

  [a2 setProperties_];
}

uint64_t sub_1BE510BFC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1BE510CF0;

  return v6(v2 + 32);
}

uint64_t sub_1BE510CF0()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;
  sub_1BE4E01C4();
  *v3 = v6;

  *v2 = *(v6 + 32);
  sub_1BE4E01E0();

  return v4();
}

void sub_1BE510DF8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1BE5412A4();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5 + 32;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_1BE51196C(v9, &v30);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1BE5119C8(&v30);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
          break;
        }
      }

      ++v8;
      v9 += 16;
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }

    if (qword_1EDDD63E0 != -1)
    {
      swift_once();
    }

    v14 = sub_1BE54B2EC();
    sub_1BE4C52BC(v14, qword_1EDDD7030);
    v15 = a1;
    v16 = sub_1BE54B2BC();
    v17 = sub_1BE54C98C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136446722;
      nullsub_1(ObjectType);
      v20 = sub_1BE54CE0C();
      v22 = sub_1BE4C5338(v20, v21, &v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1BE4C5338(0xD000000000000014, 0x80000001BE554D40, &v29);
      *(v18 + 22) = 2082;
      v30 = v15;
      v31 = &protocol witness table for GenerativePartnerServicePSSettingsManager;
      v23 = v15;
      sub_1BE4BF11C(&qword_1EBDACDA0, &qword_1BE5506B0);
      v24 = sub_1BE54C73C();
      v26 = sub_1BE4C5338(v24, v25, &v29);

      *(v18 + 24) = v26;
      _os_log_impl(&dword_1BE4B8000, v16, v17, "%{public}s.%{public}s: observer %{public}s already registered. Ignoring.", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB48AC0](v19, -1, -1);
      MEMORY[0x1BFB48AC0](v18, -1, -1);
    }
  }

  else
  {
LABEL_7:

    v31 = &protocol witness table for GenerativePartnerServicePSSettingsManager;
    swift_unknownObjectWeakInit();
    v6 = OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers;
    a1 = *(a2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_17:
      sub_1BE541EB8(0, a1[2] + 1, 1, a1);
      a1 = v27;
    }

    v12 = a1[2];
    v11 = a1[3];
    if (v12 >= v11 >> 1)
    {
      sub_1BE541EB8(v11 > 1, v12 + 1, 1, a1);
      a1 = v28;
    }

    a1[2] = v12 + 1;
    sub_1BE511A1C(&v30, &a1[2 * v12 + 4]);
    v13 = *(a2 + v6);
    *(a2 + v6) = a1;
  }
}

uint64_t sub_1BE511118()
{
  sub_1BE4E4418();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v5[1] = sub_1BE511A78;
  v7 = sub_1BE511A7C();

  return sub_1BE50E3D8(v7, v8, v2, v3);
}

uint64_t sub_1BE5111B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_1BE4E4408(v6);
  *v7 = v8;
  v7[1] = sub_1BE511270;
  v9 = sub_1BE511A7C();

  return sub_1BE50E2CC(v9, v10, v2, v3, v4, v5);
}

uint64_t sub_1BE511270()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1BE4E01C4();
  *v3 = v2;

  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE511358()
{
  v1 = sub_1BE54B12C();
  sub_1BE4C7570(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = sub_1BE4E4408(v7);
  *v8 = v9;
  v8[1] = sub_1BE511A78;
  v10 = sub_1BE511A7C();

  return sub_1BE50EE4C(v10, v11, v5, v6, v12);
}

void sub_1BE511444()
{
  sub_1BE511580();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BE511580()
{
  if (!qword_1EBDACD68)
  {
    sub_1BE4C5948(&qword_1EBDACCD8, &qword_1BE550500);
    v0 = sub_1BE54B08C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDACD68);
    }
  }
}

uint64_t sub_1BE5115E4()
{
  sub_1BE4E4418();
  sub_1BE511B80();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE4E43CC(v1);

  return v4(v3);
}

uint64_t sub_1BE511674()
{
  sub_1BE4E4418();
  sub_1BE511B80();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE4E43CC(v1);

  return v4(v3);
}

uint64_t sub_1BE51170C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BE4BF11C(a3, a4);
  sub_1BE50A884(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BE511770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE5117B8()
{
  sub_1BE4E4418();
  sub_1BE511B80();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE4E43CC(v1);

  return v4(v3);
}

uint64_t sub_1BE511848(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BE4BF11C(a2, a3);
  sub_1BE50A884(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BE5118A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = swift_task_alloc();
  v8 = sub_1BE4E4408(v7);
  *v8 = v9;
  v8[1] = sub_1BE511A78;
  v10 = sub_1BE511A7C();

  return sub_1BE50D97C(v10, v11, v2, v3, v4, v6, v5);
}

id sub_1BE511AE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1BE510218(a1, a2, a3, 0, 0, 0, 13, 0);
}

uint64_t sub_1BE511B20(uint64_t a1)
{
  sub_1BE4C63F8(*(v1 - 184), 1, 1, a1);

  return sub_1BE54C8CC();
}

uint64_t sub_1BE511BAC(void *a1)
{
  v2 = sub_1BE54AF6C();
  v3 = sub_1BE4C7570(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  v27 = sub_1BE54AD8C();
  v6 = sub_1BE4C7500(v27);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1BE4C757C();
  v26 = v12 - v11;
  v13 = sub_1BE54C6BC();
  v14 = sub_1BE4C7570(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1BE4C757C();
  v17 = sub_1BE51293C();
  v18 = sub_1BE4C7570(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1BE4C757C();
  sub_1BE54C68C();
  sub_1BE54C67C();
  v22 = a1[3];
  v21 = a1[4];
  sub_1BE4C52F4(a1, v22);
  v23 = *(v21 + 16);
  v23(v22, v21);
  sub_1BE54C66C();

  sub_1BE54C67C();
  v23(v22, v21);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  v24 = sub_1BE4C52BC(v27, qword_1EBDB0C08);
  (*(v8 + 16))(v26, v24, v27);
  sub_1BE54AF2C();
  return sub_1BE54ADBC();
}

uint64_t sub_1BE511E6C()
{
  v0 = sub_1BE54AF6C();
  v1 = sub_1BE4C7570(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v4 = sub_1BE54AD8C();
  v5 = sub_1BE4C7500(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  v12 = v11 - v10;
  v13 = sub_1BE54C6BC();
  v14 = sub_1BE4C7570(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1BE4C757C();
  v17 = sub_1BE51293C();
  v18 = sub_1BE4C7570(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1BE4C757C();
  sub_1BE54C68C();
  sub_1BE54C67C();
  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (v24)
  {
    sub_1BE4C52F4(v23, v24);
    sub_1BE54B26C();
    sub_1BE4C58A8(v23);
  }

  else
  {
    sub_1BE4E4348(v23, &qword_1EBDAC550, &qword_1BE54F7D0);
  }

  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  v21 = sub_1BE4C52BC(v4, qword_1EBDB0C08);
  (*(v7 + 16))(v12, v21, v4);
  sub_1BE54AF2C();
  sub_1BE5128D0();
  return sub_1BE4CE6D0();
}

uint64_t sub_1BE512114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54AF6C();
  v5 = sub_1BE4C7570(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v8 = sub_1BE54AD8C();
  v9 = sub_1BE4C7500(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1BE4C757C();
  sub_1BE51292C();
  v12 = sub_1BE54C6BC();
  v13 = sub_1BE4C7570(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1BE4C757C();
  v16 = sub_1BE51293C();
  v17 = sub_1BE4C7570(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1BE4C757C();
  v20 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v21 = sub_1BE4C7570(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v34 - v24;
  static GenerativePartnerRestrictionUtils.restrictionReasonText.getter();
  v26 = sub_1BE54ADAC();
  if (sub_1BE4C63BC(v25, 1, v26) != 1)
  {
    return (*(*(v26 - 8) + 32))(a2, v25, v26);
  }

  sub_1BE4E4348(v25, &qword_1EBDABE68, &qword_1BE54E470);
  sub_1BE5124C4(a1, &v35);
  if (v36)
  {
    sub_1BE4BF094(&v35, v37);
    sub_1BE54C68C();
    sub_1BE54C67C();
    v27 = v38;
    v28 = v39;
    sub_1BE4C52F4(v37, v38);
    (*(v28 + 16))(v27, v28);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4();
    }

    sub_1BE4C52BC(v8, qword_1EBDB0C08);
    v29 = sub_1BE512958();
    v30(v29);
    sub_1BE54AF2C();
    sub_1BE5128D0();
    sub_1BE4CE6D0();
    return sub_1BE4C58A8(v37);
  }

  else
  {
    sub_1BE4E4348(&v35, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4();
    }

    sub_1BE4C52BC(v8, qword_1EBDB0C08);
    v32 = sub_1BE512958();
    v33(v32);
    sub_1BE54AF2C();
    sub_1BE5128D0();
    return sub_1BE4CE6D0();
  }
}

uint64_t sub_1BE5124C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE512534()
{
  v0 = sub_1BE54AF6C();
  v1 = sub_1BE4C7570(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1BE4C757C();
  v4 = sub_1BE54AD8C();
  v5 = sub_1BE4C7500(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v8 = sub_1BE54C6BC();
  v9 = sub_1BE4C7570(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1BE4C757C();
  sub_1BE51292C();
  v12 = sub_1BE54ADAC();
  sub_1BE51286C(v12, qword_1EBDB0BC0);
  sub_1BE4C52BC(v12, qword_1EBDB0BC0);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  sub_1BE4C52BC(v4, qword_1EBDB0C08);
  v13 = sub_1BE51296C();
  v14(v13);
  sub_1BE54AF2C();
  return sub_1BE5128F8();
}

uint64_t sub_1BE5126D4()
{
  v0 = sub_1BE54AF6C();
  v1 = sub_1BE4C7570(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1BE4C757C();
  v4 = sub_1BE54AD8C();
  v5 = sub_1BE4C7500(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  sub_1BE5128E8();
  v8 = sub_1BE54C6BC();
  v9 = sub_1BE4C7570(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1BE4C757C();
  sub_1BE51292C();
  v12 = sub_1BE54ADAC();
  sub_1BE51286C(v12, qword_1EBDB0BD8);
  sub_1BE4C52BC(v12, qword_1EBDB0BD8);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  sub_1BE4C52BC(v4, qword_1EBDB0C08);
  v13 = sub_1BE51296C();
  v14(v13);
  sub_1BE54AF2C();
  return sub_1BE5128F8();
}

uint64_t *sub_1BE51286C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1BE5128F8()
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE51293C()
{

  return sub_1BE54C69C();
}

uint64_t sub_1BE512980()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BE5129C8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BE512A08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BE512AA0(uint64_t a1)
{
  if (a1 == 4)
  {
    return 0;
  }

  type metadata accessor for CGVector();
  return sub_1BE54C61C();
}

uint64_t sub_1BE512B1C()
{
  v0 = sub_1BE54C69C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1BE4C757C();
  v2 = sub_1BE54AF6C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BE4C757C();
  v4 = sub_1BE54AD8C();
  v5 = sub_1BE4C7500(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  v12 = v11 - v10;
  v13 = sub_1BE54C6BC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1BE4C757C();
  v15 = *(sub_1BE513070() + 16);

  switch(v15)
  {
    case 0:
      sub_1BE54C65C();
      goto LABEL_18;
    case 1:
      sub_1BE54C68C();
      sub_1BE516B44();
      result = sub_1BE513070();
      if (!*(result + 16))
      {
        goto LABEL_23;
      }

      v19 = result + 32;
      goto LABEL_17;
    case 2:
      sub_1BE54C68C();
      sub_1BE516B44();
      result = sub_1BE513070();
      if (!*(result + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      sub_1BE516BD4(result);

      v17 = sub_1BE516B10();
      v18(v17);
      sub_1BE516BBC();

      sub_1BE4C58A8(v33);
      sub_1BE54C67C();
      result = sub_1BE513070();
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_25;
      }

      v19 = result + 72;
LABEL_17:
      sub_1BE4C6918(v19, v33);

      v30 = sub_1BE516B10();
      v31(v30);
      sub_1BE516BBC();

      sub_1BE4C58A8(v33);
      sub_1BE54C67C();
      sub_1BE54C6AC();
LABEL_18:
      if (qword_1EBDABA88 != -1)
      {
        swift_once();
      }

      v32 = sub_1BE4C52BC(v4, qword_1EBDB0C08);
      (*(v7 + 16))(v12, v32, v4);
      sub_1BE54AF2C();
      return sub_1BE54ADBC();
    case 3:
      sub_1BE54C68C();
      sub_1BE516B44();
      result = sub_1BE513070();
      if (!*(result + 16))
      {
        goto LABEL_22;
      }

      sub_1BE516BD4(result);

      v20 = sub_1BE516B10();
      v21(v20);
      sub_1BE516BBC();

      sub_1BE516BF0();
      result = sub_1BE513070();
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_26;
      }

      sub_1BE4C6918(result + 72, v33);

      v22 = sub_1BE516B10();
      v23(v22);
      sub_1BE516BBC();

      sub_1BE4C58A8(v33);
      sub_1BE516C20();
      result = sub_1BE513070();
      if (*(result + 16) < 3uLL)
      {
        goto LABEL_28;
      }

      v19 = result + 112;
      goto LABEL_17;
    default:
      sub_1BE54C68C();
      sub_1BE516B44();
      result = sub_1BE513070();
      if (!*(result + 16))
      {
        goto LABEL_24;
      }

      sub_1BE516BD4(result);

      v24 = sub_1BE516B10();
      v25(v24);
      sub_1BE516BBC();

      sub_1BE516BF0();
      result = sub_1BE513070();
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_27;
      }

      sub_1BE4C6918(result + 72, v33);

      v26 = sub_1BE516B10();
      v27(v26);
      sub_1BE516BBC();

      sub_1BE516BF0();
      result = sub_1BE513070();
      if (*(result + 16) < 3uLL)
      {
        goto LABEL_29;
      }

      sub_1BE4C6918(result + 112, v33);

      v28 = sub_1BE516B10();
      v29(v28);
      sub_1BE516BBC();

      sub_1BE4C58A8(v33);
      sub_1BE516C20();
      result = sub_1BE513070();
      if (*(result + 16) < 4uLL)
      {
        goto LABEL_30;
      }

      v19 = result + 152;
      goto LABEL_17;
  }
}

uint64_t sub_1BE513070()
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  v0 = off_1EDDD6898;
  sub_1BE53C930(v21);
  v1 = swift_beginAccess();
  v2 = v0[2];
  MEMORY[0x1EEE9AC00](v1);
  v14[2] = v21;

  v3 = sub_1BE538DF8(sub_1BE516700, v14, v2);
  sub_1BE4BF11C(&qword_1EBDACF60, &unk_1BE5508E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54E1A0;
  sub_1BE4DCE50(v21, inited + 32, &qword_1EBDABAF8, &qword_1BE54DC20);
  v5 = sub_1BE52E1D4(v3);

  *&v18 = inited;
  sub_1BE4E0B88(v5);
  v6 = *(v18 + 16);
  if (v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = v18 + 32;
    do
    {
      sub_1BE4DCE50(v8, &v18, &qword_1EBDABAF8, &qword_1BE54DC20);
      v15[0] = v18;
      v15[1] = v19;
      v16 = v20;
      if (*(&v19 + 1))
      {
        sub_1BE4BF094(v15, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = *(v7 + 16);
          sub_1BE541FB8();
          v7 = v11;
        }

        v9 = *(v7 + 16);
        if (v9 >= *(v7 + 24) >> 1)
        {
          sub_1BE541FB8();
          v7 = v12;
        }

        *(v7 + 16) = v9 + 1;
        sub_1BE4BF094(v17, v7 + 40 * v9 + 32);
      }

      else
      {
        sub_1BE4D0E58(v15, &qword_1EBDABAF8, &qword_1BE54DC20);
      }

      v8 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1BE4D0E58(v21, &qword_1EBDABAF8, &qword_1BE54DC20);
  return v7;
}

uint64_t sub_1BE51330C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1BE4C52F4(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  sub_1BE4DCE50(a2, v17, &qword_1EBDABAF8, &qword_1BE54DC20);
  v8 = v18;
  if (v18)
  {
    v9 = v19;
    sub_1BE4C52F4(v17, v18);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    sub_1BE4C58A8(v17);
    if (v5 == v10 && v7 == v12)
    {

      v15 = 0;
    }

    else
    {
      v14 = sub_1BE54CCDC();

      v15 = v14 ^ 1;
    }
  }

  else
  {
    sub_1BE4D0E58(v17, &qword_1EBDABAF8, &qword_1BE54DC20);

    v15 = 1;
  }

  return v15 & 1;
}

uint64_t sub_1BE513464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v51 = a2;
  v48 = a3;
  v49 = a1;
  v52 = a5;
  sub_1BE4C5948(&qword_1EBDACE30, &qword_1BE550778);
  sub_1BE4C5948(&qword_1EBDACE38, &unk_1BE550780);
  sub_1BE4D97D4();
  sub_1BE516C40();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  sub_1BE516B68();
  swift_getWitnessTable();
  sub_1BE516B9C();
  sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDACE40, &qword_1BE551510);
  sub_1BE516B9C();
  sub_1BE54B79C();
  sub_1BE516BAC();
  sub_1BE516C40();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1BE54C2CC();
  v6 = sub_1BE4C7500(v5);
  v44 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &WitnessTable - v10;
  v12 = sub_1BE54B79C();
  v13 = sub_1BE4C7500(v12);
  v45 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &WitnessTable - v17;
  v19 = sub_1BE54B79C();
  v20 = sub_1BE4C7500(v19);
  v46 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &WitnessTable - v24;
  v26 = sub_1BE54B79C();
  v27 = sub_1BE4C7500(v26);
  v47 = v28;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v33 = &WitnessTable - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &WitnessTable - v34;
  v53 = v48;
  v54 = v50;
  v55 = v49;
  v56 = v51;
  sub_1BE54BA4C();
  sub_1BE54C2BC();
  sub_1BE516B84();
  v36 = swift_getWitnessTable();
  sub_1BE54C17C();
  (*(v44 + 8))(v11, v5);
  sub_1BE54BE7C();
  v61 = v36;
  v62 = MEMORY[0x1E697EBE0];
  v37 = swift_getWitnessTable();
  sub_1BE54C13C();
  (*(v45 + 8))(v18, v12);
  sub_1BE54BE3C();
  v38 = MEMORY[0x1E697E5D8];
  v59 = v37;
  v60 = MEMORY[0x1E697E5D8];
  v39 = swift_getWitnessTable();
  sub_1BE54C13C();
  (*(v46 + 8))(v25, v19);
  v57 = v39;
  v58 = v38;
  v40 = swift_getWitnessTable();
  sub_1BE4D96B0(v33, v26, v40);
  v41 = *(v47 + 8);
  v41(v33, v26);
  sub_1BE4D96B0(v35, v26, v40);
  return (v41)(v35, v26);
}

uint64_t sub_1BE513930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v65 = a2;
  v62 = a1;
  v67 = a5;
  sub_1BE4C5948(&qword_1EBDACE38, &unk_1BE550780);
  v50 = a3;
  swift_getTupleTypeMetadata2();
  v60 = sub_1BE54C3AC();
  WitnessTable = swift_getWitnessTable();
  v56 = sub_1BE54C2FC();
  v63 = *(v56 - 8);
  v6 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48[-v7];
  sub_1BE4C5948(&qword_1EBDACE40, &qword_1BE551510);
  v64 = sub_1BE54B79C();
  v66 = *(v64 - 8);
  v8 = *(v66 + 64);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v54 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v48[-v11];
  v12 = sub_1BE4BF11C(&qword_1EBDACE30, &qword_1BE550778);
  v53 = v12;
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v58 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v48[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v48[-v19];
  v51 = sub_1BE54C1BC();
  v20 = *(sub_1BE513070() + 16);

  sub_1BE54C39C();
  sub_1BE54B69C();
  v21 = v75[4];
  v49 = v76;
  v22 = v77;
  v23 = v78;
  v25 = v79;
  v24 = v80;
  v26 = sub_1BE54C39C();
  v28 = v27;
  v29 = &v18[*(v12 + 36)];
  v30 = a3;
  v31 = v57;
  sub_1BE513F68(v30, v57, v29);
  v32 = (v29 + *(sub_1BE4BF11C(&qword_1EBDACE48, &unk_1BE550790) + 36));
  *v32 = v26;
  v32[1] = v28;
  *v18 = v51;
  *(v18 + 1) = v21;
  v18[16] = v49;
  *(v18 + 3) = v22;
  v18[32] = v23;
  *(v18 + 5) = v25;
  *(v18 + 6) = v24;
  v33 = v52;
  sub_1BE516950(v18, v52, &qword_1EBDACE30, &qword_1BE550778);
  sub_1BE54BB1C();
  v68 = v50;
  v69 = v31;
  v70 = v62;
  v71 = v65;
  v34 = v55;
  sub_1BE54C2EC();
  sub_1BE54BE8C();
  v35 = v56;
  v36 = swift_getWitnessTable();
  v37 = v54;
  sub_1BE54C0FC();

  (*(v63 + 8))(v34, v35);
  v38 = sub_1BE4C6A14(&qword_1EBDACE50, &qword_1EBDACE40, &qword_1BE551510);
  v75[2] = v36;
  v75[3] = v38;
  v39 = v64;
  v40 = swift_getWitnessTable();
  v41 = v61;
  sub_1BE4D96B0(v37, v39, v40);
  v42 = v66;
  v43 = *(v66 + 8);
  v43(v37, v39);
  v44 = v33;
  v45 = v33;
  v46 = v58;
  sub_1BE4DCE50(v44, v58, &qword_1EBDACE30, &qword_1BE550778);
  v75[0] = v46;
  (*(v42 + 16))(v37, v41, v39);
  v75[1] = v37;
  v74[0] = v53;
  v74[1] = v39;
  v72 = sub_1BE515054();
  v73 = v40;
  sub_1BE4D13E8(v75, 2, v74);
  v43(v41, v39);
  sub_1BE4D0E58(v45, &qword_1EBDACE30, &qword_1BE550778);
  v43(v37, v39);
  return sub_1BE4D0E58(v46, &qword_1EBDACE30, &qword_1BE550778);
}

uint64_t sub_1BE513F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v5 = sub_1BE4BF11C(&qword_1EBDACE80, &qword_1BE5507D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v28 - v7);
  v9 = sub_1BE4BF11C(&qword_1EBDACE88, &qword_1BE5507E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDACE90, &qword_1BE5507E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - v15;
  v17 = *(sub_1BE513070() + 16);

  v18 = sub_1BE512AA0(v17);
  if (v18)
  {
    v19 = v18;
    *v8 = sub_1BE54C39C();
    v8[1] = v20;
    v21 = v8 + *(sub_1BE4BF11C(&qword_1EBDACE98, &qword_1BE5507F0) + 44);
    sub_1BE5149BC(v19, v17, a1, a2);

    *(v8 + *(v5 + 36)) = 0x4000000000000000;
    sub_1BE4DCE50(v8, v12, &qword_1EBDACE80, &qword_1BE5507D8);
    swift_storeEnumTagMultiPayload();
    sub_1BE4C6A14(&qword_1EBDACEA0, &qword_1EBDACE90, &qword_1BE5507E8);
    sub_1BE5161E4();
    sub_1BE54BC0C();
    v22 = v8;
    v23 = &qword_1EBDACE80;
    v24 = &qword_1BE5507D8;
  }

  else
  {
    *v16 = sub_1BE54C39C();
    *(v16 + 1) = v25;
    *(v16 + 2) = 0;
    v16[24] = 0;
    *(v16 + 4) = 0;
    v16[40] = 0;
    v26 = sub_1BE4BF11C(&qword_1EBDACED0, &qword_1BE550808);
    sub_1BE514284(&v16[*(v26 + 44)]);
    sub_1BE4DCE50(v16, v12, &qword_1EBDACE90, &qword_1BE5507E8);
    swift_storeEnumTagMultiPayload();
    sub_1BE4C6A14(&qword_1EBDACEA0, &qword_1EBDACE90, &qword_1BE5507E8);
    sub_1BE5161E4();
    sub_1BE54BC0C();
    v22 = v16;
    v23 = &qword_1EBDACE90;
    v24 = &qword_1BE5507E8;
  }

  return sub_1BE4D0E58(v22, v23, v24);
}

uint64_t sub_1BE514284@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1BE4BF11C(&qword_1EBDACED8, &qword_1BE550810);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  *v14 = 0;
  v14[8] = 1;
  sub_1BE514478(&v18 + *(v2 + 44) - v13);
  *v12 = 0;
  v12[8] = 1;
  sub_1BE514718(&v12[*(v2 + 44)]);
  sub_1BE4DCE50(v14, v9, &qword_1EBDACED8, &qword_1BE550810);
  sub_1BE4DCE50(v12, v6, &qword_1EBDACED8, &qword_1BE550810);
  v15 = v19;
  sub_1BE4DCE50(v9, v19, &qword_1EBDACED8, &qword_1BE550810);
  v16 = sub_1BE4BF11C(&qword_1EBDACEE0, &qword_1BE550818);
  sub_1BE4DCE50(v6, v15 + *(v16 + 48), &qword_1EBDACED8, &qword_1BE550810);
  sub_1BE4D0E58(v12, &qword_1EBDACED8, &qword_1BE550810);
  sub_1BE4D0E58(v14, &qword_1EBDACED8, &qword_1BE550810);
  sub_1BE4D0E58(v6, &qword_1EBDACED8, &qword_1BE550810);
  return sub_1BE4D0E58(v9, &qword_1EBDACED8, &qword_1BE550810);
}

uint64_t sub_1BE514478@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ExternalAIPartnerIconView();
  v3 = *(*(v2 - 1) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v19 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v19 - v13);
  result = sub_1BE513070();
  if (*(result + 16))
  {
    sub_1BE4C6918(result + 32, v14 + v2[6]);

    *v14 = swift_getKeyPath();
    sub_1BE4BF11C(&qword_1EBDACEE8, &qword_1BE550850);
    swift_storeEnumTagMultiPayload();
    v16 = v2[5];
    *(v14 + v16) = swift_getKeyPath();
    sub_1BE4BF11C(&qword_1EBDACEF0, &unk_1BE5519A0);
    swift_storeEnumTagMultiPayload();
    *(v14 + v2[7]) = 0;
    result = sub_1BE513070();
    if (*(result + 16) >= 2uLL)
    {
      sub_1BE4C6918(result + 72, v12 + v2[6]);

      *v12 = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v17 = v2[5];
      *(v12 + v17) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v12 + v2[7]) = 0;
      sub_1BE5168F0(v14, v9, type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE5168F0(v12, v6, type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE5168F0(v9, a1, type metadata accessor for ExternalAIPartnerIconView);
      v18 = sub_1BE4BF11C(&qword_1EBDACEF8, &unk_1BE550890);
      sub_1BE5168F0(v6, a1 + *(v18 + 48), type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE516314(v12);
      sub_1BE516314(v14);
      sub_1BE516314(v6);
      return sub_1BE516314(v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE514718@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ExternalAIPartnerIconView();
  v3 = *(*(v2 - 1) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v19 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v19 - v13);
  result = sub_1BE513070();
  if (*(result + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    sub_1BE4C6918(result + 112, v14 + v2[6]);

    *v14 = swift_getKeyPath();
    sub_1BE4BF11C(&qword_1EBDACEE8, &qword_1BE550850);
    swift_storeEnumTagMultiPayload();
    v16 = v2[5];
    *(v14 + v16) = swift_getKeyPath();
    sub_1BE4BF11C(&qword_1EBDACEF0, &unk_1BE5519A0);
    swift_storeEnumTagMultiPayload();
    *(v14 + v2[7]) = 0;
    result = sub_1BE513070();
    if (*(result + 16) >= 4uLL)
    {
      sub_1BE4C6918(result + 152, v12 + v2[6]);

      *v12 = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v17 = v2[5];
      *(v12 + v17) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v12 + v2[7]) = 0;
      sub_1BE5168F0(v14, v9, type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE5168F0(v12, v6, type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE5168F0(v9, a1, type metadata accessor for ExternalAIPartnerIconView);
      v18 = sub_1BE4BF11C(&qword_1EBDACEF8, &unk_1BE550890);
      sub_1BE5168F0(v6, a1 + *(v18 + 48), type metadata accessor for ExternalAIPartnerIconView);
      sub_1BE516314(v12);
      sub_1BE516314(v14);
      sub_1BE516314(v6);
      return sub_1BE516314(v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE5149BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(sub_1BE513070() + 16);

  swift_getKeyPath();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;

  sub_1BE4BF11C(&qword_1EBDACF00, &qword_1BE5508B8);
  sub_1BE4BF11C(&qword_1EBDACF08, &qword_1BE5508C0);
  sub_1BE51637C();
  sub_1BE5164E0();
  return sub_1BE54C32C();
}

uint64_t sub_1BE514AD0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE4BF11C(&qword_1EBDACF50, &qword_1BE5508D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v30 - v10);
  v12 = sub_1BE4BF11C(&qword_1EBDACF40, &qword_1BE5508D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  if (*(a2 + 16))
  {
    v16 = *a1;
    v17 = sub_1BE52F80C(v16);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      result = sub_1BE513070();
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v23 = result;
        if (v16 < *(result + 16))
        {
          v24 = type metadata accessor for ExternalAIPartnerIconView();
          sub_1BE4C6918(v23 + 40 * v16 + 32, v11 + v24[6]);

          *v11 = swift_getKeyPath();
          sub_1BE4BF11C(&qword_1EBDACEE8, &qword_1BE550850);
          swift_storeEnumTagMultiPayload();
          v25 = v24[5];
          *(v11 + v25) = swift_getKeyPath();
          sub_1BE4BF11C(&qword_1EBDACEF0, &unk_1BE5519A0);
          swift_storeEnumTagMultiPayload();
          *(v11 + v24[7]) = a3 == 1;
          v26 = (v11 + *(v8 + 36));
          *v26 = v20;
          v26[1] = v21;
          v27 = a3 == 4 || a3 == 1;
          v28 = -1.0;
          if (v16 != 1)
          {
            v28 = 0.0;
          }

          if (v27)
          {
            v29 = 0.0;
          }

          else
          {
            v29 = v28;
          }

          sub_1BE516950(v11, v15, &qword_1EBDACF50, &qword_1BE5508D8);
          *&v15[*(v12 + 36)] = v29;
          sub_1BE516950(v15, a4, &qword_1EBDACF40, &qword_1BE5508D0);
          return sub_1BE4C63F8(a4, 0, 1, v12);
        }
      }

      __break(1u);
      return result;
    }
  }

  return sub_1BE4C63F8(a4, 1, 1, v12);
}

uint64_t sub_1BE514D80@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26 = a1;
  v27 = a4;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = sub_1BE54ADAC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v25 = a3;
  sub_1BE512B1C();
  v15 = sub_1BE54BF7C();
  v17 = v16;
  v19 = v18;
  v24 = v20;
  KeyPath = swift_getKeyPath();
  v26();
  sub_1BE4D96B0(v10, a2, a3);
  v26 = *(v6 + 8);
  (v26)(v10, a2);
  v31 = v15;
  v32 = v17;
  v33 = v19 & 1;
  v34 = v24;
  v35 = KeyPath;
  v36 = 0xC000000000000000;
  v37[0] = &v31;
  (*(v6 + 16))(v10, v12, a2);
  v37[1] = v10;
  sub_1BE4D91B0(v15, v17, v19 & 1);

  v30[0] = sub_1BE4BF11C(&qword_1EBDACE38, &unk_1BE550780);
  v30[1] = a2;
  v28 = sub_1BE51612C();
  v29 = v25;
  sub_1BE4D13E8(v37, 2, v30);
  sub_1BE4C68C8(v15, v17, v19 & 1);

  v22 = v26;
  (v26)(v12, a2);
  (v22)(v10, a2);
  sub_1BE4C68C8(v31, v32, v33);
}

unint64_t sub_1BE515054()
{
  result = qword_1EBDACE58;
  if (!qword_1EBDACE58)
  {
    sub_1BE4C5948(&qword_1EBDACE30, &qword_1BE550778);
    sub_1BE4FCEFC();
    sub_1BE4C6A14(&qword_1EBDACE60, &qword_1EBDACE48, &unk_1BE550790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACE58);
  }

  return result;
}

double sub_1BE51510C@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v167 = a1;
  v151 = sub_1BE54BC5C();
  v150 = *(v151 - 8);
  v3 = *(v150 + 64);
  v4 = MEMORY[0x1EEE9AC00](v151);
  v149 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v148 = &v134 - v6;
  v147 = sub_1BE4BF11C(&qword_1EBDACFA0, &qword_1BE550990);
  v7 = *(*(v147 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v147);
  v154 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v145 = &v134 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v165 = &v134 - v12;
  v13 = sub_1BE4BF11C(&qword_1EBDACFA8, &qword_1BE550998);
  v14 = *(v13 - 8);
  v141 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v143 = &v134 - v16;
  v17 = sub_1BE4BF11C(&qword_1EBDACFB0, &qword_1BE5509A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v153 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v164 = &v134 - v21;
  v22 = sub_1BE4BF11C(&qword_1EBDACFB8, &qword_1BE5509A8);
  v23 = *(v22 - 8);
  v159 = v22 - 8;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22 - 8);
  v152 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v162 = (&v134 - v27);
  v28 = sub_1BE4BF11C(&qword_1EBDAC240, &qword_1BE5509B0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v158 = &v134 - v30;
  v31 = sub_1BE54B5FC();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v134 - v37;
  v142 = type metadata accessor for ExternalAIPartnerIconView();
  LODWORD(v157) = *(v1 + v142[7]);
  v39 = v142[5];
  sub_1BE5369F8(v38);
  v40 = *MEMORY[0x1E697DBA8];
  v41 = v32 + 13;
  v166 = v32[13];
  v166(v36, v40, v31);
  v42 = sub_1BE54B5EC();
  v45 = v32[1];
  v44 = v32 + 1;
  v43 = v45;
  v45(v36, v31);
  v45(v38, v31);
  v46 = objc_opt_self();
  v47 = &selRef_tertiarySystemBackgroundColor;
  if ((v42 & 1) == 0)
  {
    v47 = &selRef_secondarySystemBackgroundColor;
  }

  v48 = [v46 *v47];
  v161 = sub_1BE54C1EC();
  v163 = v2;
  sub_1BE5369F8(v38);
  v166(v36, v40, v31);
  v49 = sub_1BE54B5EC();
  v43(v36, v31);
  v43(v38, v31);
  v50 = objc_opt_self();
  v51 = &selRef_secondarySystemBackgroundColor;
  if ((v49 & 1) == 0)
  {
    v51 = &selRef_systemBackgroundColor;
  }

  v52 = [v50 *v51];
  v160 = sub_1BE54C1EC();
  v139 = v39;
  sub_1BE5369F8(v38);
  v136 = v40;
  v137 = v41;
  v166(v36, v40, v31);
  v53 = sub_1BE54B5EC();
  v43(v36, v31);
  v134 = v38;
  v135 = v31;
  v140 = v44;
  v138 = v43;
  v43(v38, v31);
  v54 = objc_opt_self();
  v55 = &selRef_secondarySystemBackgroundColor;
  if ((v53 & 1) == 0)
  {
    v55 = &selRef_systemBackgroundColor;
  }

  v56 = [v54 *v55];
  v57 = sub_1BE54C1EC();
  v58 = sub_1BE54BEAC();
  v59 = v158;
  sub_1BE4C63F8(v158, 1, 1, v58);
  sub_1BE54BEEC();
  sub_1BE4D0E58(v59, &qword_1EBDAC240, &qword_1BE5509B0);
  sub_1BE54BECC();
  v155 = sub_1BE54BF1C();

  v60 = sub_1BE54C39C();
  v61 = v167;
  *v167 = v60;
  v61[1] = v62;
  v63 = sub_1BE54B7EC();
  v64 = *(v63 + 20);
  v65 = *MEMORY[0x1E697F468];
  v66 = sub_1BE54BAFC();
  v67 = *(v66 - 8);
  v68 = *(v67 + 104);
  v69 = v67 + 104;
  v70 = v162;
  v68(v162 + v64, v65, v66);
  __asm { FMOV            V0.2D, #7.0 }

  *v70 = _Q0;
  v76 = v141;
  *(v70 + *(v141 + 60)) = v57;
  v77 = v76;
  *(v70 + *(v76 + 64)) = 256;
  v146 = v57;

  LOBYTE(v64) = sub_1BE54BE4C();
  sub_1BE54B59C();
  v78 = v70 + *(v159 + 44);
  *v78 = v64;
  *(v78 + 1) = v79;
  *(v78 + 2) = v80;
  *(v78 + 3) = v81;
  *(v78 + 4) = v82;
  v78[40] = 0;
  v83 = v143;
  v84 = &v143[*(v63 + 20)];
  LODWORD(v159) = v65;
  v158 = v66;
  v157 = v68;
  v156 = v69;
  v68(v84, v65, v66);
  __asm { FMOV            V0.2D, #8.0 }

  v144 = _Q0;
  v86 = v83;
  *v83 = _Q0;
  *(v83 + *(v77 + 60)) = v161;
  *(v83 + *(v77 + 64)) = 256;

  sub_1BE54B64C();
  v87 = v83;
  v88 = v164;
  sub_1BE5168F0(v87, v164, MEMORY[0x1E697EAF0]);
  v89 = v88 + *(sub_1BE4BF11C(&qword_1EBDACFC0, &qword_1BE5509B8) + 36);
  v90 = v172;
  *v89 = v171;
  *(v89 + 16) = v90;
  *(v89 + 32) = v173;
  v91 = sub_1BE4BF11C(&qword_1EBDACFC8, &qword_1BE5509C0);
  *(v88 + *(v91 + 52)) = v160;
  *(v88 + *(v91 + 56)) = 256;
  v92 = v88 + *(sub_1BE4BF11C(&qword_1EBDACFD0, &qword_1BE5509C8) + 36);
  sub_1BE4DCE50(v86, v92, &qword_1EBDACFA8, &qword_1BE550998);

  v93 = sub_1BE54C39C();
  v95 = v94;
  sub_1BE4D0E58(v86, &qword_1EBDACFA8, &qword_1BE550998);
  v96 = (v92 + *(sub_1BE4BF11C(&qword_1EBDACFD8, &qword_1BE5509D0) + 36));
  *v96 = v93;
  v96[1] = v95;
  v97 = (v163 + v142[6]);
  v98 = v97[3];
  v99 = v97[4];
  sub_1BE4C52F4(v97, v98);
  (*(v99 + 96))(v98, v99);
  if (v100)
  {
    v101 = sub_1BE54C20C();
  }

  else
  {
    v101 = 0;
  }

  v102 = sub_1BE54C1AC();
  KeyPath = swift_getKeyPath();
  v104 = swift_getKeyPath();
  v105 = v155;

  sub_1BE54C39C();
  sub_1BE54B69C();
  v106 = v145;
  v107 = &v145[*(v147 + 36)];
  v147 = v63;
  v157(&v107[*(v63 + 20)], v159, v158);
  __asm { FMOV            V0.2D, #6.0 }

  *v107 = _Q0;
  v143 = sub_1BE4BF11C(&qword_1EBDACFE0, &qword_1BE550A38);
  *&v107[*(v143 + 9)] = 256;
  *v106 = v101;
  *(v106 + 8) = KeyPath;
  *(v106 + 16) = v102;
  *(v106 + 24) = v104;
  *(v106 + 32) = v105;
  v109 = v169;
  *(v106 + 40) = v168;
  *(v106 + 56) = v109;
  *(v106 + 72) = v170;
  sub_1BE516950(v106, v165, &qword_1EBDACFA0, &qword_1BE550990);
  v110 = v148;
  sub_1BE536BFC(v148);
  v111 = v149;
  sub_1BE54BC4C();
  LOBYTE(v106) = sub_1BE54BC2C();
  v112 = *(v150 + 8);
  v113 = v111;
  v114 = v151;
  v112(v113, v151);
  v112(v110, v114);
  if (v106)
  {
    sub_1BE54C1DC();
    v115 = v134;
    sub_1BE5369F8(v134);
    v116 = v135;
    v166(v36, v136, v135);
    sub_1BE54B5EC();
    v117 = v138;
    v138(v36, v116);
    v117(v115, v116);
    v118 = sub_1BE54C1CC();

    v166 = v118;
  }

  else
  {
    v166 = 0;
  }

  v119 = sub_1BE4BF11C(&qword_1EBDACFE8, &qword_1BE550A40);
  v120 = v167 + *(v119 + 44);
  v121 = v162;
  v122 = v152;
  sub_1BE4DCE50(v162, v152, &qword_1EBDACFB8, &qword_1BE5509A8);
  v123 = v164;
  v124 = v153;
  sub_1BE4DCE50(v164, v153, &qword_1EBDACFB0, &qword_1BE5509A0);
  v125 = v165;
  v126 = v154;
  sub_1BE4DCE50(v165, v154, &qword_1EBDACFA0, &qword_1BE550990);
  sub_1BE4DCE50(v122, v120, &qword_1EBDACFB8, &qword_1BE5509A8);
  v127 = sub_1BE4BF11C(&qword_1EBDACFF0, &qword_1BE550A48);
  sub_1BE4DCE50(v124, v120 + v127[12], &qword_1EBDACFB0, &qword_1BE5509A0);
  sub_1BE4DCE50(v126, v120 + v127[16], &qword_1EBDACFA0, &qword_1BE550990);
  *(v120 + v127[20]) = v166;
  sub_1BE4D0E58(v125, &qword_1EBDACFA0, &qword_1BE550990);
  sub_1BE4D0E58(v123, &qword_1EBDACFB0, &qword_1BE5509A0);
  sub_1BE4D0E58(v121, &qword_1EBDACFB8, &qword_1BE5509A8);

  sub_1BE4D0E58(v126, &qword_1EBDACFA0, &qword_1BE550990);
  sub_1BE4D0E58(v124, &qword_1EBDACFB0, &qword_1BE5509A0);
  sub_1BE4D0E58(v122, &qword_1EBDACFB8, &qword_1BE5509A8);
  sub_1BE54C39C();
  sub_1BE54B69C();

  v128 = sub_1BE4BF11C(&qword_1EBDACFF8, &qword_1BE550A50);
  v129 = v167;
  v130 = (v167 + *(v128 + 36));
  v131 = v175;
  *v130 = v174;
  v130[1] = v131;
  v130[2] = v176;
  v132 = v129 + *(sub_1BE4BF11C(&qword_1EBDAD000, &qword_1BE550A58) + 36);
  v157(&v132[*(v147 + 20)], v159, v158);
  result = *&v144;
  *v132 = v144;
  *&v132[*(v143 + 9)] = 256;
  return result;
}

uint64_t sub_1BE516034(uint64_t a1)
{
  v2 = sub_1BE54B5FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BE54B86C();
}

uint64_t sub_1BE516100(uint64_t *a1)
{
  v1 = *a1;

  return sub_1BE54B8AC();
}

unint64_t sub_1BE51612C()
{
  result = qword_1EBDACE68;
  if (!qword_1EBDACE68)
  {
    sub_1BE4C5948(&qword_1EBDACE38, &unk_1BE550780);
    sub_1BE4C6A14(&qword_1EBDACE70, &qword_1EBDACE78, &qword_1BE5507D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACE68);
  }

  return result;
}

unint64_t sub_1BE5161E4()
{
  result = qword_1EBDACEA8;
  if (!qword_1EBDACEA8)
  {
    sub_1BE4C5948(&qword_1EBDACE80, &qword_1BE5507D8);
    sub_1BE4C6A14(&qword_1EBDACEB0, &qword_1EBDACEB8, &qword_1BE5507F8);
    sub_1BE4C6A14(&qword_1EBDACEC0, &qword_1EBDACEC8, &qword_1BE550800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACEA8);
  }

  return result;
}

uint64_t type metadata accessor for ExternalAIPartnerIconView()
{
  result = qword_1EBDACF78;
  if (!qword_1EBDACF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE516314(uint64_t a1)
{
  v2 = type metadata accessor for ExternalAIPartnerIconView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE516370@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1BE514AD0(a1, v2[4], v2[5], a2);
}

unint64_t sub_1BE51637C()
{
  result = qword_1EBDACF10;
  if (!qword_1EBDACF10)
  {
    sub_1BE4C5948(&qword_1EBDACF00, &qword_1BE5508B8);
    sub_1BE516400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF10);
  }

  return result;
}

unint64_t sub_1BE516400()
{
  result = qword_1EBDACF18;
  if (!qword_1EBDACF18)
  {
    sub_1BE4C5948(&qword_1EBDACF20, &qword_1BE5508C8);
    sub_1BE51648C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF18);
  }

  return result;
}

unint64_t sub_1BE51648C()
{
  result = qword_1EBDACF28;
  if (!qword_1EBDACF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF28);
  }

  return result;
}

unint64_t sub_1BE5164E0()
{
  result = qword_1EBDACF30;
  if (!qword_1EBDACF30)
  {
    sub_1BE4C5948(&qword_1EBDACF08, &qword_1BE5508C0);
    sub_1BE516564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF30);
  }

  return result;
}

unint64_t sub_1BE516564()
{
  result = qword_1EBDACF38;
  if (!qword_1EBDACF38)
  {
    sub_1BE4C5948(&qword_1EBDACF40, &qword_1BE5508D0);
    sub_1BE51661C();
    sub_1BE4C6A14(&qword_1EBDACEC0, &qword_1EBDACEC8, &qword_1BE550800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF38);
  }

  return result;
}

unint64_t sub_1BE51661C()
{
  result = qword_1EBDACF48;
  if (!qword_1EBDACF48)
  {
    sub_1BE4C5948(&qword_1EBDACF50, &qword_1BE5508D8);
    sub_1BE5166A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF48);
  }

  return result;
}

unint64_t sub_1BE5166A8()
{
  result = qword_1EBDACF58;
  if (!qword_1EBDACF58)
  {
    type metadata accessor for ExternalAIPartnerIconView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACF58);
  }

  return result;
}

void sub_1BE516748()
{
  sub_1BE516824(319, &qword_1EBDACF88, MEMORY[0x1E697F990]);
  if (v0 <= 0x3F)
  {
    sub_1BE516824(319, &qword_1EBDACF90, MEMORY[0x1E697DBD0]);
    if (v1 <= 0x3F)
    {
      sub_1BE516878();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BE516824(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE54B62C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BE516878()
{
  result = qword_1EBDACF98;
  if (!qword_1EBDACF98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDACF98);
  }

  return result;
}

uint64_t sub_1BE5168F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1BE4C7470(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BE516950(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

unint64_t sub_1BE5169A0()
{
  result = qword_1EBDAD008;
  if (!qword_1EBDAD008)
  {
    sub_1BE4C5948(&qword_1EBDAD000, &qword_1BE550A58);
    sub_1BE516A58();
    sub_1BE4C6A14(&qword_1EBDAD028, &qword_1EBDACFE0, &qword_1BE550A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD008);
  }

  return result;
}

unint64_t sub_1BE516A58()
{
  result = qword_1EBDAD010;
  if (!qword_1EBDAD010)
  {
    sub_1BE4C5948(&qword_1EBDACFF8, &qword_1BE550A50);
    sub_1BE4C6A14(&qword_1EBDAD018, &qword_1EBDAD020, &unk_1BE550A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD010);
  }

  return result;
}

uint64_t sub_1BE516B10()
{
  v1 = *(v0 - 96);
  v2 = *(v0 - 88);
  sub_1BE4C52F4((v0 - 120), v1);
  v3 = *(v2 + 16);
  return v1;
}

uint64_t sub_1BE516B44()
{

  return sub_1BE54C67C();
}

uint64_t sub_1BE516BBC()
{

  return sub_1BE54C66C();
}

uint64_t sub_1BE516BD4(uint64_t a1)
{
  v3 = a1 + 32;

  return sub_1BE4C6918(v3, v1 - 120);
}

uint64_t sub_1BE516BF0()
{
  sub_1BE4C58A8((v0 - 120));

  return sub_1BE54C67C();
}

uint64_t sub_1BE516C20()
{

  return sub_1BE54C67C();
}

uint64_t sub_1BE516C40()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_1BE516C58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v70 = a3;
  v9 = &qword_1BE550DA0;
  v10 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  sub_1BE4CE710();
  v67 = v15;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1BE4CE710();
  v66 = v17;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1BE4CE710();
  v69 = v19;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v20);
  sub_1BE4CE710();
  v65 = v21;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v22);
  v68 = &v62 - v23;
  v24 = 0;
  v63 = v14;
  v64 = a2;
  do
  {
    v25 = byte_1F3CCADA0[v24++ + 32];
    switch(v25)
    {
      case 2:
      case 4:
        v32 = v69;
        sub_1BE54C8DC();
        v33 = sub_1BE54C91C();
        sub_1BE519E6C(v33);
        sub_1BE519F64();
        v34 = swift_allocObject();
        *(sub_1BE519E1C(v34) + 64) = v25;
        v35 = v32;
        v36 = v66;
        sub_1BE51170C(v35, v66, &qword_1EBDAC3A8, &qword_1BE550DA0);
        sub_1BE519F88();
        v37 = a2;

        if (v25 == 1)
        {
          sub_1BE519F70(v36);
          v5 = 4096;
        }

        else
        {
          v52 = sub_1BE54C90C();
          sub_1BE50A884(v5);
          (*(v53 + 8))(v36, v5);
          v5 = v52 | 0x1000;
        }

        v54 = *(v4 + 16);
        v55 = *(v4 + 24);
        swift_unknownObjectRetain();

        if (v54)
        {
          swift_getObjectType();
          sub_1BE54C87C();
          sub_1BE519EE8();
        }

        else
        {
          v9 = 0;
          v55 = 0;
        }

        if (v55 | v9)
        {
          v75 = 0;
          v76 = 0;
          v77 = v9;
          v78 = v55;
        }

        v9 = &qword_1BE550DA0;
        sub_1BE519ECC();
        v56 = v69;
        break;
      case 3:
        v38 = v67;
        sub_1BE54C8DC();
        v39 = sub_1BE54C91C();
        sub_1BE519E6C(v39);
        sub_1BE519F64();
        v40 = swift_allocObject();
        *(sub_1BE519E1C(v40) + 64) = 3;
        v41 = v63;
        sub_1BE51170C(v38, v63, &qword_1EBDAC3A8, &qword_1BE550DA0);
        v42 = sub_1BE4C63BC(v41, 1, v5);
        v43 = a1;
        v44 = v42;
        v45 = v43;

        v46 = a2;
        v47 = a4;

        if (v44 == 1)
        {
          sub_1BE519F70(v41);
          v5 = 4096;
        }

        else
        {
          v57 = sub_1BE54C90C();
          sub_1BE50A884(v5);
          (*(v58 + 8))(v41, v5);
          v5 = v57 | 0x1000;
        }

        v59 = *(v4 + 16);
        v60 = *(v4 + 24);
        swift_unknownObjectRetain();

        a4 = v47;
        a1 = v45;
        if (v59)
        {
          swift_getObjectType();
          sub_1BE54C87C();
          sub_1BE519EE8();
        }

        else
        {
          v9 = 0;
          v60 = 0;
        }

        a2 = v64;
        if (v60 | v9)
        {
          v79 = 0;
          v80 = 0;
          v81 = v9;
          v82 = v60;
        }

        v9 = &qword_1BE550DA0;
        sub_1BE519ECC();
        v56 = v67;
        break;
      default:
        v26 = v68;
        sub_1BE54C8DC();
        v27 = sub_1BE54C91C();
        sub_1BE519E6C(v27);
        sub_1BE519F64();
        v28 = swift_allocObject();
        *(sub_1BE519E1C(v28) + 64) = v25;
        v29 = v26;
        v30 = v65;
        sub_1BE51170C(v29, v65, &qword_1EBDAC3A8, &qword_1BE550DA0);
        sub_1BE519F88();
        v31 = a2;

        if (v25 == 1)
        {
          sub_1BE519F70(v30);
          v5 = 4096;
        }

        else
        {
          v48 = sub_1BE54C90C();
          sub_1BE50A884(v5);
          (*(v49 + 8))(v30, v5);
          v5 = v48 | 0x1000;
        }

        v50 = *(v4 + 16);
        v51 = *(v4 + 24);
        swift_unknownObjectRetain();

        if (v50)
        {
          swift_getObjectType();
          sub_1BE54C87C();
          sub_1BE519EE8();
        }

        else
        {
          v9 = 0;
          v51 = 0;
        }

        if (v51 | v9)
        {
          v71 = 0;
          v72 = 0;
          v73 = v9;
          v74 = v51;
        }

        v9 = &qword_1BE550DA0;
        sub_1BE519ECC();
        v56 = v68;
        break;
    }

    sub_1BE519F70(v56);
  }

  while (v24 != 5);
  return result;
}

uint64_t sub_1BE5171F0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 81) = a2;
  *(v6 + 80) = a1;
  return sub_1BE519E34();
}

uint64_t sub_1BE517210()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 24);
  v2 = sub_1BE5175DC(*(v0 + 32), *(v0 + 40), *(v0 + 80));
  v3 = [v1 stringForKey_];
  *(v0 + 48) = v3;

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1BE5172E8;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 81);
  v10 = *(v0 + 80);

  return sub_1BE5181C4(v3, v10, v9, v7);
}

uint64_t sub_1BE5172E8()
{
  sub_1BE4E4418();
  v3 = v2;
  sub_1BE4E0228();
  v5 = v4;
  v6 = *(v4 + 56);
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    v9 = sub_1BE517488;
  }

  else
  {

    *(v5 + 72) = v3;
    v9 = sub_1BE517408;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BE517408()
{
  sub_1BE4E4418();
  v1 = *(v0 + 72);
  v2 = sub_1BE54C70C();
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_1BE517488()
{
  sub_1BE4E01D4();

  sub_1BE4E01E0();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_1BE5174E4()
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  sub_1BE53C930(v8);
  if (v9)
  {
    v0 = v10;
    sub_1BE4C52F4(v8, v9);
    v1 = *(v0 + 240);
    v2 = sub_1BE50A968();
    v3(v2, v0);
    if (v7 == 1)
    {
      sub_1BE4C58A8(v8);
      return 0;
    }

    else
    {
      v4 = v6;
      sub_1BE4C58A8(v8);
    }
  }

  else
  {
    sub_1BE511848(v8, &qword_1EBDABAF8, &qword_1BE54DC20);
    return 0;
  }

  return v4;
}

void *sub_1BE5175DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v7[0] = a1;
    v7[1] = a2;

    MEMORY[0x1BFB47CA0](47, 0xE100000000000000);
    v5 = sub_1BE517700(a3);
    v3 = v7;
    MEMORY[0x1BFB47CA0](v5);
  }

  else
  {
    switch(a3)
    {
      case 2:
      case 4:
        sub_1BE4DCED0();
        break;
      default:
        break;
    }
  }

  sub_1BE54C6DC();
  sub_1BE50A968();

  return v3;
}

unint64_t sub_1BE517700(char a1)
{
  result = 0x496D616441707061;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542707061;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BE5177BC()
{
  sub_1BE54CC0C();
  sub_1BE50A968();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BE517828@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BE5177BC();
  *a2 = result;
  return result;
}

unint64_t sub_1BE517858@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BE517700(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BE5178A4()
{
  sub_1BE4BF11C(&qword_1EBDAD050, &qword_1BE550AE8);
  sub_1BE519994();
  result = sub_1BE54C61C();
  qword_1EBDAD030 = result;
  return result;
}

uint64_t sub_1BE517900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 72) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BE517928, 0, 0);
}

uint64_t sub_1BE517928()
{
  sub_1BE4E4418();
  v1 = *(v0 + 24);
  v2 = sub_1BE5175DC(*(v0 + 32), *(v0 + 40), *(v0 + 72));
  v3 = [v1 arrayForKey_];
  *(v0 + 48) = v3;

  v4 = sub_1BE519F28();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  sub_1BE4BF11C(&qword_1EBDAD070, &qword_1BE550B48);
  *v6 = v0;
  v6[1] = sub_1BE517A50;
  sub_1BE519E44();

  return MEMORY[0x1EEE6DDE0](v7, v8, v9, v10, v11, v12, v4, v13);
}

uint64_t sub_1BE517A50()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_1BE4E01C4();
  *v5 = v4;

  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE517B50()
{
  sub_1BE4E4418();
  v1 = *(v0 + 48);
  if (*(v0 + 16))
  {
  }

  else
  {
    sub_1BE51914C();
    v3 = sub_1BE519F40();
    sub_1BE519EB0(v3, v4);
  }

  sub_1BE4E01E0();

  return v2();
}

uint64_t sub_1BE517BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1BE517CB0;

  return sub_1BE5171F0(a8, 0, a4, a5, a6, a7);
}

uint64_t sub_1BE517CB0()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;

  if (!v0)
  {
  }

  sub_1BE4E01E0();

  return v6();
}

uint64_t sub_1BE517DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = a8;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 16) = a5;
  v9 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  *(v8 + 40) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 48) = swift_task_alloc();
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE517E54, 0, 0);
}

uint64_t sub_1BE517E54()
{
  sub_1BE4E4418();
  v1 = *(v0 + 16);
  v2 = sub_1BE5175DC(*(v0 + 24), *(v0 + 32), *(v0 + 88));
  v3 = [v1 URLForKey_];
  *(v0 + 64) = v3;

  v4 = sub_1BE519F28();
  *(v0 + 72) = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1BE517F5C;
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1BE519E90();

  return MEMORY[0x1EEE6DDE0](v9, v10, v11, v12, v13, v14, v4, v15);
}

uint64_t sub_1BE517F5C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  sub_1BE4E01C4();
  *v5 = v4;

  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE51805C()
{
  sub_1BE519F58();
  v1 = v0[6];
  sub_1BE51170C(v0[7], v1, &qword_1EBDABEE8, &unk_1BE54F050);
  v2 = sub_1BE54AE3C();
  v3 = sub_1BE4C63BC(v1, 1, v2);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  if (v3 == 1)
  {
    sub_1BE511848(v0[6], &qword_1EBDABEE8, &unk_1BE54F050);
    sub_1BE51914C();
    sub_1BE519F40();
    *v7 = 0;
    swift_willThrow();

    sub_1BE511848(v4, &qword_1EBDABEE8, &unk_1BE54F050);
  }

  else
  {

    sub_1BE511848(v4, &qword_1EBDABEE8, &unk_1BE54F050);
    sub_1BE511848(v6, &qword_1EBDABEE8, &unk_1BE54F050);
  }

  sub_1BE4E01E0();

  return v8();
}

uint64_t sub_1BE5181C4(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BE5181EC, 0, 0);
}

uint64_t sub_1BE5181EC()
{
  sub_1BE4E4418();
  v1 = v0[9];
  v2 = sub_1BE519F28();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  sub_1BE4BF11C(&qword_1EBDAD038, &qword_1BE550AD8);
  *v4 = v0;
  v4[1] = sub_1BE5182DC;
  sub_1BE519E44();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1BE5182DC()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_1BE4E01C4();
  *v5 = v4;

  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE5183DC()
{
  sub_1BE4E4418();
  if (*(v0 + 56))
  {
LABEL_2:
    v1 = *(v0 + 8);

    return v1();
  }

  if (*(v0 + 105))
  {
    sub_1BE50B96C(*(v0 + 104), *(v0 + 80), v0 + 16);
    if (*(v0 + 40))
    {
      sub_1BE4BF11C(&qword_1EBDAD050, &qword_1BE550AE8);
      sub_1BE5191A0();
      if (sub_1BE519F04())
      {
        v3 = *(v0 + 64);
        goto LABEL_2;
      }
    }

    else
    {
      sub_1BE511848(v0 + 16, &qword_1EBDAD048, &qword_1BE550AE0);
    }
  }

  sub_1BE51914C();
  v4 = sub_1BE519F40();
  sub_1BE519EB0(v4, v5);
  sub_1BE4E01E0();

  return v6();
}

uint64_t sub_1BE5184F4()
{
  sub_1BE4E01D4();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  *(v0 + 145) = v3;
  *(v0 + 144) = v4;
  *(v0 + 72) = v5;
  v6 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  *(v0 + 96) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();
  v8 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BE5185AC()
{
  sub_1BE4E4418();
  v1 = v0[10];
  v2 = sub_1BE519F28();
  v0[16] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1BE51867C;
  v5 = v0[15];
  v6 = v0[12];
  sub_1BE519E90();

  return MEMORY[0x1EEE6DDE0](v7, v8, v9, v10, v11, v12, v2, v13);
}

uint64_t sub_1BE51867C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  sub_1BE4E01C4();
  *v5 = v4;

  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE51877C()
{
  v2 = (v1 + 112);
  sub_1BE51170C(*(v1 + 120), *(v1 + 112), &qword_1EBDABEE8, &unk_1BE54F050);
  sub_1BE54AE3C();
  v3 = sub_1BE50A968();
  if (sub_1BE4C63BC(v3, 1, v0) != 1)
  {
    goto LABEL_7;
  }

  v4 = *(v1 + 145);
  sub_1BE511848(*(v1 + 112), &qword_1EBDABEE8, &unk_1BE54F050);
  if (v4 == 1)
  {
    sub_1BE50B96C(*(v1 + 144), *(v1 + 88), v1 + 16);
    if (!*(v1 + 40))
    {
      v9 = &qword_1EBDAD048;
      v10 = &qword_1BE550AE0;
      v8 = v1 + 16;
      goto LABEL_9;
    }

    sub_1BE4BF11C(&qword_1EBDAD050, &qword_1BE550AE8);
    if (swift_dynamicCast())
    {
      v2 = (v1 + 104);
      v5 = *(v1 + 104);
      v6 = *(v1 + 56);
      v7 = *(v1 + 64);
      sub_1BE54AE1C();

      if (sub_1BE4C63BC(v5, 1, v0) == 1)
      {
        v8 = *v2;
        v9 = &qword_1EBDABEE8;
        v10 = &unk_1BE54F050;
LABEL_9:
        sub_1BE511848(v8, v9, v10);
        goto LABEL_10;
      }

LABEL_7:
      v11 = *v2;
      v12 = *(v1 + 72);
      sub_1BE511848(*(v1 + 120), &qword_1EBDABEE8, &unk_1BE54F050);
      sub_1BE50A884(v0);
      (*(v13 + 32))(v12, v11, v0);
      v15 = *(v1 + 112);
      v14 = *(v1 + 120);
      v16 = *(v1 + 104);

      sub_1BE4E01E0();
      goto LABEL_11;
    }
  }

LABEL_10:
  v18 = *(v1 + 112);
  v19 = *(v1 + 120);
  v20 = *(v1 + 104);
  sub_1BE51914C();
  sub_1BE519F40();
  *v21 = 0;
  swift_willThrow();
  sub_1BE511848(v19, &qword_1EBDABEE8, &unk_1BE54F050);

  sub_1BE4E01E0();
LABEL_11:

  return v17();
}

uint64_t sub_1BE5189D8(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return sub_1BE519E34();
}

uint64_t sub_1BE5189F4()
{
  sub_1BE4E4418();
  v1 = v0[9];
  v2 = sub_1BE519F28();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  sub_1BE4BF11C(&qword_1EBDAD070, &qword_1BE550B48);
  *v4 = v0;
  v4[1] = sub_1BE518AE4;
  sub_1BE519E44();

  return MEMORY[0x1EEE6DDE0](v5, v6, v7, v8, v9, v10, v2, v11);
}

uint64_t sub_1BE518AE4()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_1BE4E01C4();
  *v5 = v4;

  v6 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE518BE4()
{
  sub_1BE4E4418();
  if (*(v0 + 56))
  {
LABEL_2:
    v1 = *(v0 + 8);

    return v1();
  }

  if (*(v0 + 105))
  {
    sub_1BE50B96C(*(v0 + 104), *(v0 + 80), v0 + 16);
    if (*(v0 + 40))
    {
      sub_1BE4BF11C(&qword_1EBDAD050, &qword_1BE550AE8);
      sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
      if (sub_1BE519F04())
      {
        v3 = *(v0 + 64);
        goto LABEL_2;
      }
    }

    else
    {
      sub_1BE511848(v0 + 16, &qword_1EBDAD048, &qword_1BE550AE0);
    }
  }

  sub_1BE51914C();
  v4 = sub_1BE519F40();
  sub_1BE519EB0(v4, v5);
  sub_1BE4E01E0();

  return v6();
}

void sub_1BE518D08(uint64_t a1, void *a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD068, &qword_1BE550B38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1BE519534;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE519DDC;
  aBlock[3] = &unk_1F3CCCB08;
  v11 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_1BE518EB8(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  if (a1)
  {
    sub_1BE54AE0C();
    v6 = sub_1BE54AE3C();
    v7 = 0;
  }

  else
  {
    v6 = sub_1BE54AE3C();
    v7 = 1;
  }

  sub_1BE4C63F8(v5, v7, 1, v6);
  sub_1BE4BF11C(&qword_1EBDAD068, &qword_1BE550B38);
  return sub_1BE54C88C();
}

void sub_1BE518F94(uint64_t a1, void *a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD060, &unk_1BE550AF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1BE519234;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE51925C;
  aBlock[3] = &unk_1F3CCCA40;
  v11 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v11);
}

unint64_t sub_1BE51914C()
{
  result = qword_1EBDAD040;
  if (!qword_1EBDAD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD040);
  }

  return result;
}

unint64_t sub_1BE5191A0()
{
  result = qword_1EBDAD058;
  if (!qword_1EBDAD058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDAD058);
  }

  return result;
}

uint64_t sub_1BE5191E4(void *a1)
{
  v1 = a1;
  sub_1BE4BF11C(&qword_1EBDAD060, &unk_1BE550AF0);
  return sub_1BE54C88C();
}

uint64_t sub_1BE51925C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v9 = a4;
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BE5192E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BE519300()
{
  sub_1BE519F58();
  sub_1BE519E58();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_1BE4E4408(v2);
  *v3 = v4;
  v5 = sub_1BE519DF0(v3);

  return sub_1BE517900(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BE5193A0()
{
  sub_1BE519F58();
  sub_1BE519E58();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_1BE4E4408(v2);
  *v3 = v4;
  v5 = sub_1BE519DF0(v3);

  return sub_1BE517DA0(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BE519440()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  sub_1BE519F64();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BE51948C()
{
  sub_1BE519F58();
  sub_1BE519E58();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_1BE4E4408(v2);
  *v3 = v4;
  v5 = sub_1BE519DF0(v3);

  return sub_1BE517BE8(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1BE51955C(uint64_t a1, void *a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD078, &qword_1BE550B50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1BE519838;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BE519DDC;
  aBlock[3] = &unk_1F3CCCB58;
  v11 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v11);
}

void sub_1BE519714(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1BE54C81C();
  }

  sub_1BE4BF11C(&qword_1EBDAD078, &qword_1BE550B50);
  sub_1BE54C88C();
}

uint64_t sub_1BE5197B8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1BE4BF11C(a1, a2);
  sub_1BE50A884(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1BE519860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_1BE4BF11C(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

void sub_1BE519900(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

unint64_t sub_1BE519994()
{
  result = qword_1EBDAD088;
  if (!qword_1EBDAD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD088);
  }

  return result;
}

__n128 sub_1BE5199E8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BE5199F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BE519A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1BE519A80(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE519B58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BE519B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1BE519BE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE519CC0()
{
  result = qword_1EBDAD090;
  if (!qword_1EBDAD090)
  {
    sub_1BE4C5948(&qword_1EBDAD098, qword_1BE550BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD090);
  }

  return result;
}

unint64_t sub_1BE519D28()
{
  result = qword_1EBDAD0A0;
  if (!qword_1EBDAD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD0A0);
  }

  return result;
}

unint64_t sub_1BE519D80()
{
  result = qword_1EBDAD0A8;
  if (!qword_1EBDAD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD0A8);
  }

  return result;
}

void *sub_1BE519E1C(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v2;
  result[5] = v3;
  result[6] = *(v4 - 192);
  result[7] = v1;
  return result;
}

void sub_1BE519E58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t sub_1BE519E6C(uint64_t a1)
{

  return sub_1BE4C63F8(v1, 0, 1, a1);
}

uint64_t sub_1BE519EB0(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_1BE519ECC()
{

  return swift_task_create();
}

uint64_t sub_1BE519EE8()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1BE519F04()
{

  return swift_dynamicCast();
}

uint64_t sub_1BE519F28()
{

  return swift_task_alloc();
}

uint64_t sub_1BE519F40()
{

  return swift_allocError();
}

uint64_t sub_1BE519F70(uint64_t a1)
{

  return sub_1BE511848(a1, v1, v2);
}

uint64_t sub_1BE519F88()
{
  sub_1BE4C63BC(v0, 1, v1);
}

void sub_1BE519FC0(char a1)
{
  v2 = v1;
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0();
  }

  v4 = sub_1BE54B2EC();
  v5 = sub_1BE51DB8C(v4, qword_1EBDB0C98);
  v6 = sub_1BE54C97C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1BE50AB7C();
    v8 = sub_1BE50AAC4();
    v10 = v8;
    *v7 = 136446210;
    sub_1BE4FFAA0();
    *(v7 + 4) = sub_1BE4C5338(0xD000000000000022, v9, &v10);
    _os_log_impl(&dword_1BE4B8000, v5, v6, "%{public}s", v7, 0xCu);
    sub_1BE4C58A8(v8);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  if (v2[26] == 1)
  {
    v2[24] = 0;
  }

  if (a1)
  {
    v2[25] = 0;
  }
}

uint64_t sub_1BE51A0E4()
{
  sub_1BE4E01D4();
  v1[17] = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v2);
  v4 = *(v3 + 64);
  v1[18] = sub_1BE51DB24();
  v5 = sub_1BE4BF11C(&qword_1EBDAD0B0, &unk_1BE550DA8);
  sub_1BE4C7570(v5);
  v7 = *(v6 + 64);
  v1[19] = sub_1BE51DB24();
  v8 = sub_1BE4BF11C(&qword_1EBDAC5B0, &unk_1BE54F820);
  sub_1BE4C7570(v8);
  v10 = *(v9 + 64);
  v1[20] = sub_1BE51DB24();
  v11 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v11);
  v13 = *(v12 + 64);
  v1[21] = sub_1BE51DB24();
  v14 = sub_1BE54B4FC();
  v1[22] = v14;
  sub_1BE4CE78C(v14);
  v1[23] = v15;
  v17 = *(v16 + 64);
  v1[24] = sub_1BE51DB24();
  v1[25] = sub_1BE54C8CC();
  v1[26] = sub_1BE54C8BC();
  v19 = sub_1BE54C87C();
  v1[27] = v19;
  v1[28] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1BE51A278, v19, v18);
}

uint64_t sub_1BE51A278()
{
  v1 = *(v0 + 136);
  if (!swift_weakLoadStrong())
  {
    v12 = *(v0 + 208);

    sub_1BE51DC5C();
LABEL_7:
    v9 = &qword_1EBDABAF8;
    v10 = &qword_1BE54DC20;
    v11 = v0 + 56;
    goto LABEL_8;
  }

  sub_1BE5010B4(v0 + 56);

  if (!*(v0 + 80))
  {
    v13 = *(v0 + 208);

    goto LABEL_7;
  }

  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1BE4BF094((v0 + 56), v0 + 16);
  sub_1BE4C6918(v0 + 16, v0 + 96);
  v4 = type metadata accessor for ExternalAIAuthenticatorHelper();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1BE534D4C((v0 + 96));
  sub_1BE533EC4();

  if (sub_1BE51DAF8() == 1)
  {
    v7 = *(v0 + 208);
    v8 = *(v0 + 168);
    sub_1BE4C58A8((v0 + 16));

    v9 = &qword_1EBDAC5A8;
    v10 = &qword_1BE54F818;
    v11 = v8;
LABEL_8:
    sub_1BE4E4348(v11, v9, v10);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0();
    }

    v14 = sub_1BE54B2EC();
    v15 = sub_1BE51DB8C(v14, qword_1EBDB0C98);
    v16 = sub_1BE54C9AC();
    if (sub_1BE51D898(v16))
    {
      *swift_slowAlloc() = 0;
      sub_1BE51D7E8();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_1BE51D87C();
    }

    sub_1BE51DBD8();

    sub_1BE4E01E0();

    return v22();
  }

  v24 = *(v0 + 160);
  (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  sub_1BE54B45C();
  v25 = sub_1BE54B3DC();
  if (sub_1BE4C63BC(v24, 1, v25) == 1)
  {
    v26 = *(v0 + 208);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    v30 = *(v0 + 160);

    v31 = *(v28 + 8);
    v32 = sub_1BE51DA54();
    v33(v32);
    sub_1BE4C58A8((v0 + 16));
    v9 = &qword_1EBDAC5B0;
    v10 = &unk_1BE54F820;
    v11 = v30;
    goto LABEL_8;
  }

  sub_1BE4E4348(*(v0 + 160), &qword_1EBDAC5B0, &unk_1BE54F820);
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0();
  }

  v34 = sub_1BE54B2EC();
  *(v0 + 232) = sub_1BE4C52BC(v34, qword_1EBDB0C98);
  v35 = sub_1BE54B2BC();
  v36 = sub_1BE54C97C();
  if (sub_1BE51D898(v36))
  {
    sub_1BE50AB7C();
    sub_1BE51D8D4();
    sub_1BE51DB74();
    *v3 = 136446210;
    sub_1BE4FFAA0();
    *(v3 + 4) = sub_1BE51DBF4(v37, v38, v39);
    sub_1BE51D7E8();
    _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  v45 = *(MEMORY[0x1E698AA88] + 4);
  v46 = swift_task_alloc();
  *(v0 + 240) = v46;
  *v46 = v0;
  v46[1] = sub_1BE51A62C;
  v47 = *(v0 + 192);
  v48 = *(v0 + 152);

  return MEMORY[0x1EEDEB750](v48);
}

uint64_t sub_1BE51A62C()
{
  sub_1BE4E4418();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE51D9B8();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v3 + 216);
    v10 = *(v3 + 224);
    v11 = sub_1BE51A8F8;
  }

  else
  {
    v9 = *(v3 + 216);
    v10 = *(v3 + 224);
    v11 = sub_1BE51A73C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BE51A73C()
{
  v4 = v1[29];
  v5 = v1[26];
  v6 = v1[19];

  v7 = sub_1BE54B39C();
  sub_1BE4C63F8(v6, 0, 1, v7);
  sub_1BE4E4348(v6, &qword_1EBDAD0B0, &unk_1BE550DA8);
  v8 = sub_1BE54B2BC();
  v9 = sub_1BE54C97C();
  if (sub_1BE51D898(v9))
  {
    sub_1BE50AB7C();
    sub_1BE51D8D4();
    sub_1BE51DB74();
    *v0 = 136446210;
    sub_1BE4FFAA0();
    *(v0 + 4) = sub_1BE51DBF4(v10, v11, v12);
    sub_1BE51D7E8();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  sub_1BE51DC90();
  sub_1BE50A890();
  sub_1BE4C63F8(v18, v19, v20, v21);

  v22 = sub_1BE54C8BC();
  v23 = sub_1BE51DD50();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v2;
  sub_1BE51D960();
  sub_1BE50BCEC();

  v25 = *(v3 + 8);
  v26 = sub_1BE4E0628();
  v27(v26);
  sub_1BE4C58A8(v1 + 2);
  sub_1BE51DBD8();

  sub_1BE4E01E0();

  return v28();
}

uint64_t sub_1BE51A8F8()
{
  v4 = v1[29];
  v5 = v1[26];
  v6 = v1[19];

  sub_1BE54B39C();
  sub_1BE50A890();
  sub_1BE4C63F8(v7, v8, v9, v10);
  sub_1BE4E4348(v6, &qword_1EBDAD0B0, &unk_1BE550DA8);
  v11 = sub_1BE54B2BC();
  v12 = sub_1BE54C97C();
  if (sub_1BE51D898(v12))
  {
    sub_1BE50AB7C();
    sub_1BE51D8D4();
    sub_1BE51DB74();
    *v0 = 136446210;
    sub_1BE4FFAA0();
    *(v0 + 4) = sub_1BE51DBF4(v13, v14, v15);
    sub_1BE51D7E8();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  sub_1BE51DC90();
  sub_1BE50A890();
  sub_1BE4C63F8(v21, v22, v23, v24);

  v25 = sub_1BE54C8BC();
  v26 = sub_1BE51DD50();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v2;
  sub_1BE51D960();
  sub_1BE50BCEC();

  v28 = *(v3 + 8);
  v29 = sub_1BE4E0628();
  v30(v29);
  sub_1BE4C58A8(v1 + 2);
  sub_1BE51DBD8();

  sub_1BE4E01E0();

  return v31();
}

void sub_1BE51AAB0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v4 = sub_1BE4C7570(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  if (*(v0 + 26) == 1)
  {
    *(v0 + 24) = 1;
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0();
    }

    v7 = sub_1BE54B2EC();
    v27 = sub_1BE51DB8C(v7, qword_1EBDB0C98);
    v8 = sub_1BE54C97C();
    if (os_log_type_enabled(v27, v8))
    {
      v9 = sub_1BE50AB7C();
      v10 = sub_1BE50AAC4();
      v28 = v10;
      *v9 = 136446210;
      sub_1BE4FFAA0();
      *(v9 + 4) = sub_1BE51DA90(v11, v12, &v28);
      _os_log_impl(&dword_1BE4B8000, v27, v8, "%{public}s Duplicate request to poll; re-enabling post-poll timer", v9, 0xCu);
      sub_1BE4C58A8(v10);
      sub_1BE51D87C();
      sub_1BE4C75DC();
    }

    else
    {
    }
  }

  else
  {
    *(v0 + 26) = 1;
    *(v0 + 24) = 1;
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0();
    }

    v13 = sub_1BE54B2EC();
    v14 = sub_1BE51DB8C(v13, qword_1EBDB0C98);
    v15 = sub_1BE54C97C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_1BE50AB7C();
      v17 = sub_1BE50AAC4();
      v28 = v17;
      *v16 = 136446210;
      sub_1BE4FFAA0();
      *(v16 + 4) = sub_1BE51DA90(v18, v19, &v28);
      _os_log_impl(&dword_1BE4B8000, v14, v15, "%{public}s", v16, 0xCu);
      sub_1BE4C58A8(v17);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    sub_1BE54C91C();
    sub_1BE50A890();
    sub_1BE4C63F8(v20, v21, v22, v23);
    sub_1BE54C8CC();

    v24 = sub_1BE54C8BC();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v1;
    v25[5] = v2;
    sub_1BE51D960();
    sub_1BE50BA3C();
  }
}

uint64_t sub_1BE51ADBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = *(*(type metadata accessor for SettingsViewModel.AccountSignInStatus(0) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[5] = sub_1BE54C8BC();
  v7 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE51D7A0, v7, v6);
}

uint64_t sub_1BE51AE80()
{
  sub_1BE4E01D4();
  v1[17] = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v2);
  v4 = *(v3 + 64);
  v1[18] = sub_1BE51DB24();
  v5 = sub_1BE54B36C();
  v1[19] = v5;
  sub_1BE4CE78C(v5);
  v1[20] = v6;
  v8 = *(v7 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = sub_1BE54B39C();
  v1[23] = v9;
  sub_1BE4CE78C(v9);
  v1[24] = v10;
  v12 = *(v11 + 64);
  v1[25] = sub_1BE51DB24();
  v13 = sub_1BE4BF11C(&qword_1EBDAD0B0, &unk_1BE550DA8);
  sub_1BE4C7570(v13);
  v15 = *(v14 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v16 = sub_1BE4BF11C(&qword_1EBDAC5B0, &unk_1BE54F820);
  sub_1BE4C7570(v16);
  v18 = *(v17 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v19 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v19);
  v21 = *(v20 + 64);
  v1[30] = sub_1BE51DB24();
  v22 = sub_1BE54B4FC();
  v1[31] = v22;
  sub_1BE4CE78C(v22);
  v1[32] = v23;
  v25 = *(v24 + 64);
  v1[33] = sub_1BE51DB24();
  v1[34] = sub_1BE54C8CC();
  v1[35] = sub_1BE54C8BC();
  v27 = sub_1BE54C87C();
  v1[36] = v27;
  v1[37] = v26;

  return MEMORY[0x1EEE6DFA0](sub_1BE51B0E8, v27, v26);
}

uint64_t sub_1BE51B0E8()
{
  v58 = v0;
  v1 = *(v0 + 136);
  if (!swift_weakLoadStrong())
  {
    v12 = *(v0 + 280);

    sub_1BE51DC5C();
LABEL_7:
    v9 = &qword_1EBDABAF8;
    v10 = &qword_1BE54DC20;
    v11 = v0 + 56;
    goto LABEL_8;
  }

  sub_1BE5010B4(v0 + 56);

  if (!*(v0 + 80))
  {
    v13 = *(v0 + 280);

    goto LABEL_7;
  }

  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  sub_1BE4BF094((v0 + 56), v0 + 16);
  sub_1BE4C6918(v0 + 16, v0 + 96);
  v4 = type metadata accessor for ExternalAIAuthenticatorHelper();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1BE534D4C((v0 + 96));
  sub_1BE533EC4();

  if (sub_1BE51DAF8() == 1)
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 240);
    sub_1BE4C58A8((v0 + 16));

    v9 = &qword_1EBDAC5A8;
    v10 = &qword_1BE54F818;
    v11 = v8;
LABEL_8:
    sub_1BE4E4348(v11, v9, v10);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0();
    }

    v14 = sub_1BE54B2EC();
    v15 = sub_1BE51DB8C(v14, qword_1EBDB0C98);
    v16 = sub_1BE54C9AC();
    if (sub_1BE51D898(v16))
    {
      *swift_slowAlloc() = 0;
      sub_1BE51D7E8();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_1BE51D87C();
    }

    v22 = *(v0 + 264);
    v23 = *(v0 + 232);
    v24 = *(v0 + 240);
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v28 = *(v0 + 200);
    v27 = *(v0 + 208);
    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    v31 = *(v0 + 144);

    v32 = *(v0 + 8);

    return v32(0);
  }

  v34 = *(v0 + 232);
  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  sub_1BE54B45C();
  v35 = sub_1BE54B3DC();
  *(v0 + 304) = v35;
  if (sub_1BE4C63BC(v34, 1, v35) == 1)
  {
    v36 = *(v0 + 280);
    v38 = *(v0 + 256);
    v37 = *(v0 + 264);
    v39 = *(v0 + 248);
    v40 = *(v0 + 232);

    v41 = *(v38 + 8);
    v42 = sub_1BE51DA54();
    v43(v42);
    sub_1BE4C58A8((v0 + 16));
    v9 = &qword_1EBDAC5B0;
    v10 = &unk_1BE54F820;
    v11 = v40;
    goto LABEL_8;
  }

  sub_1BE4E4348(*(v0 + 232), &qword_1EBDAC5B0, &unk_1BE54F820);
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0();
  }

  v44 = sub_1BE54B2EC();
  *(v0 + 312) = sub_1BE4C52BC(v44, qword_1EBDB0C98);
  v45 = sub_1BE54B2BC();
  v46 = sub_1BE54C97C();
  if (sub_1BE51D898(v46))
  {
    sub_1BE50AB7C();
    v57 = sub_1BE51D8D4();
    *v3 = 136446210;
    sub_1BE4FFAA0();
    *(v3 + 4) = sub_1BE4C5338(0xD000000000000019, v47, &v57);
    sub_1BE51D7E8();
    _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  v53 = *(MEMORY[0x1E698AA88] + 4);
  v54 = swift_task_alloc();
  *(v0 + 320) = v54;
  *v54 = v0;
  v54[1] = sub_1BE51B510;
  v55 = *(v0 + 264);
  v56 = *(v0 + 216);

  return MEMORY[0x1EEDEB750](v56);
}

uint64_t sub_1BE51B510()
{
  sub_1BE4E4418();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE51D9B8();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v3 + 288);
    v10 = *(v3 + 296);
    v11 = sub_1BE51BA1C;
  }

  else
  {
    v9 = *(v3 + 288);
    v10 = *(v3 + 296);
    v11 = sub_1BE51B620;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BE51B620()
{
  sub_1BE51DD30();
  sub_1BE4C63F8(v0, 0, 1, v1);
  v6 = sub_1BE54B2BC();
  v7 = sub_1BE54C97C();
  if (sub_1BE51D898(v7))
  {
    sub_1BE50AB7C();
    v3 = sub_1BE51D8D4();
    *v1 = 136446210;
    *(v1 + 4) = sub_1BE51D8B4("startPollingBillingChanges()", v54, v55);
    sub_1BE51D7E8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  sub_1BE51DD10();
  v13 = sub_1BE51DAF8();
  sub_1BE4E4348(v1, &qword_1EBDAC5B0, &unk_1BE54F820);
  if (v13 == 1)
  {
    v14 = v2[39];
    v15 = sub_1BE54B2BC();
    sub_1BE54C97C();
    sub_1BE51DAEC();
    os_log_type_enabled(v15, v16);
    sub_1BE51D9F0();
    if (v17)
    {
      v18 = sub_1BE50AB7C();
      sub_1BE50AAC4();
      sub_1BE51D9E0();
      *(v18 + 4) = sub_1BE51D854(v19, 136446210, v54, v55);
      v22 = "%{public}s User is unexpectedly logged out while waiting for billing refresh; not updating cached credentials";
LABEL_13:
      sub_1BE51DCD0(&dword_1BE4B8000, v20, v21, v22);
      sub_1BE4C58A8("updateBillingOnPaidPlan()");
      sub_1BE51D9C4();
      sub_1BE4C75DC();
    }
  }

  else
  {
    v23 = v2[26];
    v24 = v2[23];
    sub_1BE51D64C(v2[27], v23);
    v25 = sub_1BE4C63BC(v23, 1, v24);
    v26 = v2[26];
    if (v25 == 1)
    {
      sub_1BE4E4348(v2[26], &qword_1EBDAD0B0, &unk_1BE550DA8);
    }

    else
    {
      v27 = sub_1BE51DA34();
      v28(v27);
      sub_1BE54B37C();
      v29 = *MEMORY[0x1E698AA20];
      v30 = sub_1BE51DC48();
      v31(v30);
      sub_1BE4E0628();
      v32 = sub_1BE54B35C();
      v35 = *(v4 + 8);
      v33 = v4 + 8;
      v34 = v35;
      v36 = sub_1BE51DB80();
      v35(v36);
      (v35)(v24, v3);
      if (v32)
      {
        sub_1BE51DA60();
        v56 = 1;
        sub_1BE50A890();
        sub_1BE4C63F8(v37, v38, v39, v40);

        v41 = sub_1BE54C8BC();
        v42 = sub_1BE51DD50();
        v43 = MEMORY[0x1E69E85E0];
        v42[2] = v41;
        v42[3] = v43;
        v42[4] = &loc_1BE54D000;
        sub_1BE51D960();
        sub_1BE50BCEC();

        (*(v1 + 8))(v34, "updateBillingOnPaidPlan()");
        sub_1BE4E4348(v33, &qword_1EBDAD0B0, &unk_1BE550DA8);
        (*(v24 + 8))(v54, v3);
        sub_1BE4C58A8(v2 + 2);
        goto LABEL_15;
      }

      (*(v2[24] + 8))(v2[25], v2[23]);
    }

    v44 = v2[39];
    v15 = sub_1BE54B2BC();
    sub_1BE54C97C();
    sub_1BE51DAEC();
    os_log_type_enabled(v15, v45);
    sub_1BE51D9F0();
    if (v46)
    {
      v47 = sub_1BE50AB7C();
      sub_1BE50AAC4();
      sub_1BE51D9E0();
      *(v47 + 4) = sub_1BE51D854(v48, 136446210, v54, v55);
      v22 = "%{public}s User is not on a paid plan; not updating cached credentials";
      goto LABEL_13;
    }
  }

  sub_1BE4E4348(v3, &qword_1EBDAD0B0, &unk_1BE550DA8);
  v49 = *(v5 + 8);
  v50 = sub_1BE51DA54();
  v51(v50);
  sub_1BE4C58A8(v2 + 2);
  v56 = 0;
LABEL_15:
  sub_1BE51DB4C();

  v52 = v2[1];

  return v52(v56);
}

uint64_t sub_1BE51BA1C()
{
  sub_1BE51DD30();
  sub_1BE50A890();
  sub_1BE4C63F8(v5, v6, v7, v0);
  v8 = sub_1BE54B2BC();
  v9 = sub_1BE54C97C();
  if (sub_1BE51D898(v9))
  {
    sub_1BE50AB7C();
    v2 = sub_1BE51D8D4();
    *v0 = 136446210;
    *(v0 + 4) = sub_1BE51D8B4("startPollingBillingChanges()", v56, v57);
    sub_1BE51D7E8();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1BE51D7F8();
    sub_1BE51D87C();
  }

  sub_1BE51DD10();
  v15 = sub_1BE51DAF8();
  sub_1BE4E4348(v0, &qword_1EBDAC5B0, &unk_1BE54F820);
  if (v15 == 1)
  {
    v16 = v1[39];
    v17 = sub_1BE54B2BC();
    sub_1BE54C97C();
    sub_1BE51DAEC();
    os_log_type_enabled(v17, v18);
    sub_1BE51D9F0();
    if (v19)
    {
      v20 = sub_1BE50AB7C();
      sub_1BE50AAC4();
      sub_1BE51D9E0();
      *(v20 + 4) = sub_1BE51D854(v21, 136446210, v56, v57);
      v24 = "%{public}s User is unexpectedly logged out while waiting for billing refresh; not updating cached credentials";
LABEL_13:
      sub_1BE51DCD0(&dword_1BE4B8000, v22, v23, v24);
      sub_1BE4C58A8("updateBillingOnPaidPlan()");
      sub_1BE51D9C4();
      sub_1BE4C75DC();
    }
  }

  else
  {
    v25 = v1[26];
    v26 = v1[23];
    sub_1BE51D64C(v1[27], v25);
    v27 = sub_1BE4C63BC(v25, 1, v26);
    v28 = v1[26];
    if (v27 == 1)
    {
      sub_1BE4E4348(v1[26], &qword_1EBDAD0B0, &unk_1BE550DA8);
    }

    else
    {
      v29 = sub_1BE51DA34();
      v30(v29);
      sub_1BE54B37C();
      v31 = *MEMORY[0x1E698AA20];
      v32 = sub_1BE51DC48();
      v33(v32);
      sub_1BE4E0628();
      v34 = sub_1BE54B35C();
      v37 = *(v3 + 8);
      v35 = v3 + 8;
      v36 = v37;
      v38 = sub_1BE51DB80();
      v37(v38);
      (v37)(v26, v2);
      if (v34)
      {
        sub_1BE51DA60();
        v58 = 1;
        sub_1BE50A890();
        sub_1BE4C63F8(v39, v40, v41, v42);

        v43 = sub_1BE54C8BC();
        v44 = sub_1BE51DD50();
        v45 = MEMORY[0x1E69E85E0];
        v44[2] = v43;
        v44[3] = v45;
        v44[4] = &loc_1BE54D000;
        sub_1BE51D960();
        sub_1BE50BCEC();

        (*(v0 + 8))(v36, "updateBillingOnPaidPlan()");
        sub_1BE4E4348(v35, &qword_1EBDAD0B0, &unk_1BE550DA8);
        (*(v26 + 8))(v56, v2);
        sub_1BE4C58A8(v1 + 2);
        goto LABEL_15;
      }

      (*(v1[24] + 8))(v1[25], v1[23]);
    }

    v46 = v1[39];
    v17 = sub_1BE54B2BC();
    sub_1BE54C97C();
    sub_1BE51DAEC();
    os_log_type_enabled(v17, v47);
    sub_1BE51D9F0();
    if (v48)
    {
      v49 = sub_1BE50AB7C();
      sub_1BE50AAC4();
      sub_1BE51D9E0();
      *(v49 + 4) = sub_1BE51D854(v50, 136446210, v56, v57);
      v24 = "%{public}s User is not on a paid plan; not updating cached credentials";
      goto LABEL_13;
    }
  }

  sub_1BE4E4348(v2, &qword_1EBDAD0B0, &unk_1BE550DA8);
  v51 = *(v4 + 8);
  v52 = sub_1BE51DA54();
  v53(v52);
  sub_1BE4C58A8(v1 + 2);
  v58 = 0;
LABEL_15:
  sub_1BE51DB4C();

  v54 = v1[1];

  return v54(v58);
}

uint64_t sub_1BE51BE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = *(*(type metadata accessor for SettingsViewModel.AccountSignInStatus(0) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[5] = sub_1BE54C8BC();
  v7 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE51BED8, v7, v6);
}

uint64_t sub_1BE51BED8()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1BE500020(*(v0 + 32));
    sub_1BE5014C4();
  }

  v4 = *(v0 + 32);
  **(v0 + 16) = Strong == 0;

  sub_1BE4E01E0();

  return v5();
}

uint64_t sub_1BE51BF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_1BE54CB7C();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = sub_1BE54CB8C();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = sub_1BE54AE9C();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[26] = sub_1BE54C8BC();
  v15 = sub_1BE54C87C();
  v4[27] = v15;
  v4[28] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1BE51C148, v15, v14);
}

uint64_t sub_1BE51C148()
{
  v47 = v1;
  v3 = v1[24];
  v4 = v1[25];
  sub_1BE54AE8C();
  sub_1BE54AE6C();
  swift_beginAccess();
  swift_beginAccess();
  v5 = v1[25];
  sub_1BE54AE7C();
  if (v6 > -2.0 && v6 < 0.0)
  {
    sub_1BE51D914();
    if (v8 ^ v9 | v7)
    {
      if (v2 > -1.0)
      {
        sub_1BE51DB14();
        if (v8)
        {
          if (qword_1EBDABAC8 == -1)
          {
LABEL_9:
            v10 = sub_1BE54B2EC();
            v11 = sub_1BE51DB8C(v10, qword_1EBDB0C98);
            v12 = sub_1BE54C97C();
            if (sub_1BE51D898(v12))
            {
              swift_slowAlloc();
              sub_1BE51D8D4();
              sub_1BE51DB74();
              *v0 = 136446466;
              v14 = sub_1BE51DA90(v13, 0x80000001BE555160, &v46);
              sub_1BE51DB3C(v14);
              *(v0 + 14) = v2;
              sub_1BE51D7E8();
              _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
              sub_1BE51D7F8();
              sub_1BE51D87C();
            }

            sub_1BE51DA00();
            sub_1BE54CD2C();
            v20 = sub_1BE51D7BC();

            return MEMORY[0x1EEE6DFA0](v20, v21, v22);
          }

LABEL_25:
          sub_1BE50A7E0();
          goto LABEL_9;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v23 = v1[25];
  v25 = v1[22];
  v24 = v1[23];
  v26 = v1[21];
  v27 = v1[13];
  sub_1BE54AE8C();
  v28 = *(v25 + 40);
  v29 = sub_1BE51DA54();
  v28(v29);
  if (*(v27 + 24) == 1)
  {
    v30 = v1[24];
    v31 = v1[25];
    v32 = v1[23];
    v33 = v1[21];
    sub_1BE54AE6C();
    v34 = sub_1BE4E0628();
    v28(v34);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0();
    }

    v35 = sub_1BE54B2EC();
    v36 = sub_1BE51DB8C(v35, qword_1EBDB0C98);
    v37 = sub_1BE54C97C();
    if (sub_1BE51D898(v37))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DB74();
      *v32 = 136446210;
      *(v32 + 4) = sub_1BE51DA90(v38, 0x80000001BE555160, &v46);
      sub_1BE51D7E8();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }
  }

  v44 = swift_task_alloc();
  v1[33] = v44;
  *v44 = v1;
  sub_1BE51D82C(v44);

  return sub_1BE51AE80();
}

uint64_t sub_1BE51C45C()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = sub_1BE51D604(&qword_1EBDAC2F8, MEMORY[0x1E69E8820]);
  sub_1BE54CD0C();
  sub_1BE51D604(&qword_1EBDAC300, MEMORY[0x1E69E87E8]);
  sub_1BE54CB9C();
  v8 = *(v5 + 8);
  v0[29] = v8;
  v0[30] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_1BE51C5E0;
  v11 = v0[20];
  v13 = v0[17];
  v12 = v0[18];

  return MEMORY[0x1EEE6DE58](v13, v0 + 8, v12, v7);
}

uint64_t sub_1BE51C5E0()
{
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE51D9B8();
  *v4 = v3;
  v6 = v5[31];
  v7 = v5[30];
  v8 = v5[29];
  v9 = v5[17];
  v10 = v5[14];
  v11 = *v1;
  sub_1BE4E01C4();
  *v12 = v11;
  v3[32] = v0;

  v13 = sub_1BE51DB80();
  v8(v13);
  if (v0)
  {
    v14 = sub_1BE51CCF8;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    (*(v3[19] + 8))(v3[20], v3[18]);
    v15 = v3[27];
    v16 = v3[28];
    v14 = sub_1BE51C76C;
  }

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BE51C76C()
{
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0();
  }

  v95 = sub_1BE54B2EC();
  v5 = sub_1BE4C52BC(v95, qword_1EBDB0C98);
  v6 = sub_1BE54B2BC();
  sub_1BE54C97C();
  sub_1BE51DAEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v94 = v0[21];
    v9 = sub_1BE51DAC4();
    sub_1BE4FFE98();
    sub_1BE51DC84();
    *v9 = 136446466;
    *(v9 + 4) = sub_1BE51D92C(v10, v3 | 0x8000000000000000, v11, v12, v13);
    *(v9 + 12) = 2082;
    sub_1BE51D7A4();
    sub_1BE51D604(v14, v15);
    v16 = sub_1BE54CC9C();
    sub_1BE51DD80(v16, v17, v18, v19, v20);
    sub_1BE51DD68();
    *(v9 + 14) = &unk_1BE54F000;
    sub_1BE51DCF0(&dword_1BE4B8000, v21, v22, "%{public}s pollingEndTime: %{public}s");
    sub_1BE51DAA8();
    sub_1BE51D9C4();
    sub_1BE4C75DC();
  }

  v23 = sub_1BE54B2BC();
  v24 = sub_1BE54C97C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[25];
    v26 = v0[21];
    v1 = sub_1BE51DAC4();
    sub_1BE4FFE98();
    sub_1BE51DC84();
    *v1 = 136446466;
    *(v1 + 4) = sub_1BE51D92C(v27, v3 | 0x8000000000000000, v28, v29, v30);
    *(v1 + 12) = 2082;
    sub_1BE51D7A4();
    sub_1BE51D604(v31, v32);
    v33 = sub_1BE54CC9C();
    sub_1BE51DD80(v33, v34, v35, v36, v37);
    sub_1BE51DD68();
    *(v1 + 14) = v26;
    sub_1BE51DCB0(&dword_1BE4B8000, v38, v39, "%{public}s lastPollStarted: %{public}s");
    sub_1BE51DAA8();
    sub_1BE51D9C4();
    sub_1BE4C75DC();
  }

  v40 = sub_1BE51DA14();
  v41(v40);
  sub_1BE54AE5C();
  v42 = sub_1BE51DC34();
  (v3)(v42);
  if (v4 <= 0.0 || (*(v0[13] + 25) & 1) == 0)
  {
    v65 = v0[26];

    v66 = sub_1BE54B2BC();
    v67 = sub_1BE54C97C();
    if (sub_1BE51D898(v67))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DAE0();
      *(v5 + 4) = sub_1BE51D8F0(4.8751e-34, v68, v69, v70);
      sub_1BE51D7E8();
      _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }

    v76 = sub_1BE51D990();
    (v3)(v76);
    (v3)(v66, v23);

    sub_1BE4E01E0();
    sub_1BE51D970();

    __asm { BRAA            X1, X16 }
  }

  v43 = v0[25];
  sub_1BE54AE7C();
  if (v44 > -2.0 && v44 < 0.0)
  {
    sub_1BE51D914();
    if (v46 ^ v47 | v45)
    {
      if (v4 > -1.0)
      {
        sub_1BE51DB14();
        if (v46)
        {
          if (qword_1EBDABAC8 == -1)
          {
LABEL_17:
            v48 = sub_1BE51DB8C(v95, qword_1EBDB0C98);
            v49 = sub_1BE54C97C();
            if (sub_1BE51D898(v49))
            {
              swift_slowAlloc();
              sub_1BE51D8D4();
              sub_1BE51DAE0();
              *v5 = 136446466;
              v54 = sub_1BE51D92C(v50, 0x80000001BE555160, v51, v52, v53);
              sub_1BE51DB3C(v54);
              *(v5 + 14) = v4;
              sub_1BE51D7E8();
              _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
              sub_1BE51D7F8();
              sub_1BE51D87C();
            }

            sub_1BE51DA00();
            v60 = sub_1BE54CD2C();
            sub_1BE51D7BC(v60);
            sub_1BE51D970();

            return MEMORY[0x1EEE6DFA0](v61, v62, v63);
          }

LABEL_38:
          sub_1BE50A7E0();
          goto LABEL_17;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  sub_1BE51DBB4();
  v79 = sub_1BE51DC70();
  v2(v79);
  if (*(v1 + 24) == 1)
  {
    sub_1BE51DC10();
    v80 = sub_1BE51DB80();
    v2(v80);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0();
    }

    v81 = sub_1BE51DB8C(v95, qword_1EBDB0C98);
    v82 = sub_1BE54C97C();
    if (sub_1BE51D898(v82))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DAE0();
      *(v5 + 4) = sub_1BE51D8F0(4.8751e-34, v83, v84, v85);
      sub_1BE51D7E8();
      _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }
  }

  v91 = swift_task_alloc();
  v0[33] = v91;
  *v91 = v0;
  sub_1BE51D82C(v91);
  sub_1BE51D970();

  return sub_1BE51AE80();
}

uint64_t sub_1BE51CCF8()
{
  sub_1BE4E4418();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = *(v2 + 8);
  v5 = sub_1BE51DA54();
  v6(v5);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1BE51D79C, v7, v8);
}

uint64_t sub_1BE51CD7C()
{
  sub_1BE4E01D4();
  v1 = *v0;
  sub_1BE51D9B8();
  *v3 = v2;
  v4 = v1[33];
  v5 = *v0;
  sub_1BE51D9B8();
  *v6 = v5;
  *(v8 + 81) = v7;

  v9 = v1[28];
  v10 = v1[27];

  return MEMORY[0x1EEE6DFA0](sub_1BE51CE98, v10, v9);
}

uint64_t sub_1BE51CE98()
{
  if (*(v0 + 81))
  {
    v5 = *(v0 + 104);
    sub_1BE519FC0(0);
  }

  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0();
  }

  v96 = sub_1BE54B2EC();
  v6 = sub_1BE4C52BC(v96, qword_1EBDB0C98);
  v7 = sub_1BE54B2BC();
  sub_1BE54C97C();
  sub_1BE51DAEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 192);
    v95 = *(v0 + 168);
    v10 = sub_1BE51DAC4();
    sub_1BE4FFE98();
    sub_1BE51DC84();
    *v10 = 136446466;
    *(v10 + 4) = sub_1BE51D92C(v11, v3 | 0x8000000000000000, v12, v13, v14);
    *(v10 + 12) = 2082;
    sub_1BE51D7A4();
    sub_1BE51D604(v15, v16);
    v17 = sub_1BE54CC9C();
    sub_1BE51DD80(v17, v18, v19, v20, v21);
    sub_1BE51DD68();
    *(v10 + 14) = &unk_1BE54F000;
    sub_1BE51DCF0(&dword_1BE4B8000, v22, v23, "%{public}s pollingEndTime: %{public}s");
    sub_1BE51DAA8();
    sub_1BE51D9C4();
    sub_1BE4C75DC();
  }

  v24 = sub_1BE54B2BC();
  v25 = sub_1BE54C97C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 200);
    v27 = *(v0 + 168);
    v1 = sub_1BE51DAC4();
    sub_1BE4FFE98();
    sub_1BE51DC84();
    *v1 = 136446466;
    *(v1 + 4) = sub_1BE51D92C(v28, v3 | 0x8000000000000000, v29, v30, v31);
    *(v1 + 12) = 2082;
    sub_1BE51D7A4();
    sub_1BE51D604(v32, v33);
    v34 = sub_1BE54CC9C();
    sub_1BE51DD80(v34, v35, v36, v37, v38);
    sub_1BE51DD68();
    *(v1 + 14) = v27;
    sub_1BE51DCB0(&dword_1BE4B8000, v39, v40, "%{public}s lastPollStarted: %{public}s");
    sub_1BE51DAA8();
    sub_1BE51D9C4();
    sub_1BE4C75DC();
  }

  v41 = sub_1BE51DA14();
  v42(v41);
  sub_1BE54AE5C();
  v43 = sub_1BE51DC34();
  (v3)(v43);
  if (v4 <= 0.0 || (*(*(v0 + 104) + 25) & 1) == 0)
  {
    v66 = *(v0 + 208);

    v67 = sub_1BE54B2BC();
    v68 = sub_1BE54C97C();
    if (sub_1BE51D898(v68))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DAE0();
      *(v6 + 4) = sub_1BE51D8F0(4.8751e-34, v69, v70, v71);
      sub_1BE51D7E8();
      _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }

    v77 = sub_1BE51D990();
    (v3)(v77);
    (v3)(v67, v24);

    sub_1BE4E01E0();
    sub_1BE51D970();

    __asm { BRAA            X1, X16 }
  }

  v44 = *(v0 + 200);
  sub_1BE54AE7C();
  if (v45 > -2.0 && v45 < 0.0)
  {
    sub_1BE51D914();
    if (v47 ^ v48 | v46)
    {
      if (v4 > -1.0)
      {
        sub_1BE51DB14();
        if (v47)
        {
          if (qword_1EBDABAC8 == -1)
          {
LABEL_19:
            v49 = sub_1BE51DB8C(v96, qword_1EBDB0C98);
            v50 = sub_1BE54C97C();
            if (sub_1BE51D898(v50))
            {
              swift_slowAlloc();
              sub_1BE51D8D4();
              sub_1BE51DAE0();
              *v6 = 136446466;
              v55 = sub_1BE51D92C(v51, 0x80000001BE555160, v52, v53, v54);
              sub_1BE51DB3C(v55);
              *(v6 + 14) = v4;
              sub_1BE51D7E8();
              _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
              sub_1BE51D7F8();
              sub_1BE51D87C();
            }

            sub_1BE51DA00();
            v61 = sub_1BE54CD2C();
            sub_1BE51D7BC(v61);
            sub_1BE51D970();

            return MEMORY[0x1EEE6DFA0](v62, v63, v64);
          }

LABEL_40:
          sub_1BE50A7E0();
          goto LABEL_19;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_1BE51DBB4();
  v80 = sub_1BE51DC70();
  v2(v80);
  if (*(v1 + 24) == 1)
  {
    sub_1BE51DC10();
    v81 = sub_1BE51DB80();
    v2(v81);
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0();
    }

    v82 = sub_1BE51DB8C(v96, qword_1EBDB0C98);
    v83 = sub_1BE54C97C();
    if (sub_1BE51D898(v83))
    {
      sub_1BE50AB7C();
      sub_1BE51D8D4();
      sub_1BE51DAE0();
      *(v6 + 4) = sub_1BE51D8F0(4.8751e-34, v84, v85, v86);
      sub_1BE51D7E8();
      _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
      sub_1BE51D7F8();
      sub_1BE51D87C();
    }
  }

  v92 = swift_task_alloc();
  *(v0 + 264) = v92;
  *v92 = v0;
  sub_1BE51D82C();
  sub_1BE51D970();

  return sub_1BE51AE80();
}

uint64_t sub_1BE51D438()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 27, 7);
}

uint64_t sub_1BE51D494()
{
  swift_weakInit();
  *(v0 + 24) = 256;
  *(v0 + 26) = 0;
  return v0;
}

uint64_t sub_1BE51D4C4()
{
  sub_1BE4E4418();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v7 = sub_1BE51D948(v5);

  return sub_1BE51ADBC(v7, v8, v9, v3);
}

uint64_t sub_1BE51D55C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1BE4E4408(v5);
  *v6 = v7;
  v8 = sub_1BE51D948(v6);

  return sub_1BE51BF78(v8, v9, v10, v4);
}

uint64_t sub_1BE51D604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE51D64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD0B0, &unk_1BE550DA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE51D6BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = sub_1BE51DA54();

  return MEMORY[0x1EEE6BDD0](v3, v4, 7);
}

uint64_t sub_1BE51D704()
{
  sub_1BE4E4418();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v7 = sub_1BE51D948(v5);

  return sub_1BE51BE14(v7, v8, v9, v3);
}

uint64_t (*sub_1BE51D7BC())()
{
  *(v2 + 88) = v1;
  *(v2 + 96) = v0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 1;
  return sub_1BE51C45C;
}

void sub_1BE51D7F8()
{
  sub_1BE4C58A8(v0);

  JUMPOUT(0x1BFB48AC0);
}

uint64_t sub_1BE51D82C(uint64_t result)
{
  *(result + 8) = sub_1BE51CD7C;
  v2 = *(v1 + 104);
  return result;
}

uint64_t sub_1BE51D854@<X0>(uint64_t a1@<X8>, int a2@<S0>, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v4 = a2;

  return sub_1BE4C5338(0xD000000000000019, (a1 - 32) | 0x8000000000000000, va);
}

void sub_1BE51D87C()
{

  JUMPOUT(0x1BFB48AC0);
}

BOOL sub_1BE51D898(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1BE51D8B4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1BE4C5338(0xD000000000000019, a1 | 0x8000000000000000, va);
}

uint64_t sub_1BE51D8D4()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE51D8F0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v4 = a1;

  return sub_1BE4C5338(0xD00000000000001CLL, v5 | 0x8000000000000000, va);
}

uint64_t sub_1BE51D92C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1BE4C5338(0xD00000000000001CLL, a2, va);
}

uint64_t sub_1BE51D990()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  *(v0[13] + 25) = 1;
  return v1;
}

void sub_1BE51D9C4()
{

  JUMPOUT(0x1BFB48AC0);
}

void sub_1BE51D9F0()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[27];
}

uint64_t sub_1BE51DA14()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = *(v0[22] + 16);
  return v0[23];
}

uint64_t sub_1BE51DA34()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = *(v0[24] + 32);
  return v0[25];
}

uint64_t sub_1BE51DA60()
{
  v2 = v0[34];
  v12 = v0[33];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];
  v10 = v0[17];
  v9 = v0[18];

  return sub_1BE54C91C();
}

uint64_t sub_1BE51DA90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_1BE4C5338(0xD00000000000001CLL, a2, a3);
}

uint64_t sub_1BE51DAA8()
{

  return swift_arrayDestroy();
}

uint64_t sub_1BE51DAC4()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE51DAF8()
{

  return sub_1BE4C63BC(v1, 1, v0);
}

uint64_t sub_1BE51DB24()
{

  return swift_task_alloc();
}

uint64_t sub_1BE51DB3C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2050;
  return result;
}

uint64_t sub_1BE51DB4C()
{
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[18];
}

uint64_t sub_1BE51DB8C(uint64_t a1, uint64_t a2)
{
  sub_1BE4C52BC(a1, a2);

  return sub_1BE54B2BC();
}

uint64_t sub_1BE51DBB4()
{
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[13];

  return sub_1BE54AE8C();
}

uint64_t sub_1BE51DBD8()
{
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
}

uint64_t sub_1BE51DBF4(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1BE4C5338(0xD000000000000013, a2, va);
}

uint64_t sub_1BE51DC10()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[21];

  return sub_1BE54AE6C();
}

double sub_1BE51DC5C()
{
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t sub_1BE51DC90()
{
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[17];
  v6 = v0[18];

  return sub_1BE54C91C();
}

void sub_1BE51DCB0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_1BE51DCD0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1BE51DCF0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1BE51DD10()
{
  v2 = v0[38];
  v3 = v0[33];
  v4 = v0[28];

  return sub_1BE54B45C();
}

uint64_t sub_1BE51DD30()
{
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[27];
  v5 = v0[23];
}

uint64_t sub_1BE51DD50()
{

  return swift_allocObject();
}

uint64_t sub_1BE51DD68()
{
}

uint64_t sub_1BE51DD80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1BE4C5338(a1, a2, va);
}

uint64_t sub_1BE51DD98()
{
  v1 = sub_1BE54AF6C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE51DE54, 0, 0);
}

uint64_t sub_1BE51DE54()
{
  sub_1BE4BF11C(&qword_1EBDAD0E0, &qword_1BE551740);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE54E1A0;
  v2 = [objc_opt_self() sharedPreferences];
  v3 = sub_1BE5202B4(v2);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    sub_1BE54AF2C();
    v5 = sub_1BE54AEFC();
    v6 = v10;
    (*(v8 + 8))(v7, v9);
  }

  v11 = v0[4];
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;

  v12 = v0[1];

  return v12(v1);
}

uint64_t sub_1BE51DF6C()
{

  return sub_1BE54AEEC();
}

uint64_t sub_1BE51DFC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BE51E04C;

  return sub_1BE51DD98();
}

uint64_t sub_1BE51E04C()
{
  sub_1BE4E01D4();
  v3 = v2;
  sub_1BE4E0228();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1BE4E01C4();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t static SettingsRemoteLocalization.upgradeIAPString()()
{
  sub_1BE4E01D4();
  v1 = sub_1BE54C53C();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BE51E1F4()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 72);
  sub_1BE54C52C();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1BE51E29C;

  return sub_1BE51E518(v0 + 16);
}

uint64_t sub_1BE51E29C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  sub_1BE51D9B8();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_1BE4E01C4();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BE51E398()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_1BE4C52F4(v0 + 2, v0[5]);
  v5 = sub_1BE54C5CC();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  sub_1BE4C58A8(v0 + 2);
  v8 = v0[9];

  v9 = v0[1];

  return v9(v5, v7);
}

uint64_t sub_1BE51E480()
{
  sub_1BE4E01D4();
  v1 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[9];

  v3 = v0[1];

  return v3(0xD000000000000017, 0x80000001BE5551C0);
}

uint64_t sub_1BE51E518(uint64_t a1)
{
  v1[27] = a1;
  v2 = *(*(sub_1BE54AF8C() - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v3 = sub_1BE54AFAC();
  v1[29] = v3;
  v4 = *(v3 - 8);
  v1[30] = v4;
  v5 = *(v4 + 64) + 15;
  v1[31] = swift_task_alloc();
  v6 = sub_1BE54C57C();
  v1[32] = v6;
  v7 = *(v6 - 8);
  v1[33] = v7;
  v8 = *(v7 + 64) + 15;
  v1[34] = swift_task_alloc();
  v9 = sub_1BE54C40C();
  v1[35] = v9;
  v10 = *(v9 - 8);
  v1[36] = v10;
  v11 = *(v10 + 64) + 15;
  v1[37] = swift_task_alloc();
  v12 = sub_1BE54C46C();
  v1[38] = v12;
  v13 = *(v12 - 8);
  v1[39] = v13;
  v14 = *(v13 + 64) + 15;
  v1[40] = swift_task_alloc();
  v15 = sub_1BE54C3FC();
  v1[41] = v15;
  v16 = *(v15 - 8);
  v1[42] = v16;
  v17 = *(v16 + 64) + 15;
  v1[43] = swift_task_alloc();
  v18 = sub_1BE54C4BC();
  v1[44] = v18;
  v19 = *(v18 - 8);
  v1[45] = v19;
  v20 = *(v19 + 64) + 15;
  v1[46] = swift_task_alloc();
  v21 = sub_1BE54C5BC();
  v1[47] = v21;
  v22 = *(v21 - 8);
  v1[48] = v22;
  v23 = *(v22 + 64) + 15;
  v1[49] = swift_task_alloc();
  v24 = sub_1BE54C4FC();
  v1[50] = v24;
  v25 = *(v24 - 8);
  v1[51] = v25;
  v26 = *(v25 + 64) + 15;
  v1[52] = swift_task_alloc();
  v27 = sub_1BE54C59C();
  v1[53] = v27;
  v28 = *(v27 - 8);
  v1[54] = v28;
  v29 = *(v28 + 64) + 15;
  v1[55] = swift_task_alloc();
  v30 = *(*(sub_1BE54C43C() - 8) + 64) + 15;
  v1[56] = swift_task_alloc();
  v31 = sub_1BE54C4CC();
  v1[57] = v31;
  v32 = *(v31 - 8);
  v1[58] = v32;
  v33 = *(v32 + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v34 = *(*(sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050) - 8) + 64) + 15;
  v1[61] = swift_task_alloc();
  v35 = sub_1BE54AE3C();
  v1[62] = v35;
  v36 = *(v35 - 8);
  v1[63] = v36;
  v37 = *(v36 + 64) + 15;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE51EA18, 0, 0);
}

uint64_t sub_1BE51EA18()
{
  if (qword_1EBDABA60 != -1)
  {
    swift_once();
  }

  v2 = v0[61];
  v1 = v0[62];

  sub_1BE508B1C(v3, 0xD000000000000011, 0x80000001BE554730, 49, 0xE100000000000000);
  v5 = v4;

  v0[66] = v5;

  sub_1BE54AE1C();
  if (sub_1BE4C63BC(v2, 1, v1) == 1)
  {
    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[28];
    v9 = v0[29];
    sub_1BE520324(v0[61]);
    sub_1BE54AF7C();
    sub_1BE520050(MEMORY[0x1E69E7CC0]);
    sub_1BE52038C(&qword_1EBDAD0C0, MEMORY[0x1E6969C20]);
    sub_1BE54AD7C();
    sub_1BE54AF9C();
    (*(v7 + 8))(v6, v9);
    swift_willThrow();

    v12 = v0[65];
    v13 = v0[64];
    v15 = v0[60];
    v14 = v0[61];
    v16 = v0[59];
    v18 = v0[55];
    v17 = v0[56];
    v19 = v0[52];
    v20 = v0[49];
    v21 = v0[46];
    v22 = v0[43];
    v23 = v0[40];
    sub_1BE5204D4();

    sub_1BE4E01E0();

    return v24();
  }

  else
  {
    v10 = v0[60];
    (*(v0[63] + 32))(v0[65], v0[61], v0[62]);
    sub_1BE54C4DC();
    sub_1BE54C51C();
    v0[67] = sub_1BE54C50C();
    sub_1BE54C48C();
    v0[68] = sub_1BE54C47C();
    v11 = v0[65];
    v26 = v0[63];
    v27 = v0[64];
    v28 = v0[56];
    v46 = v0[55];
    v47 = v0[62];
    v30 = v0[45];
    v29 = v0[46];
    v48 = v0[44];
    v49 = v0[49];

    sub_1BE54C42C();
    v31 = sub_1BE54C45C();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v0[69] = sub_1BE54C44C();
    v34 = objc_opt_self();
    v35 = objc_opt_self();
    v36 = v5;
    v37 = [v35 currentProcess];
    v38 = [v34 ams:v37 configurationWithProcessInfo:v36 bag:?];

    sub_1BE54C58C();
    (*(v26 + 16))(v27, v11, v47);
    (*(v30 + 104))(v29, *MEMORY[0x1E69AAEB8], v48);
    sub_1BE54C5AC();
    v39 = *(MEMORY[0x1E69AAE80] + 4);
    v40 = swift_task_alloc();
    v0[70] = v40;
    v41 = sub_1BE52038C(&qword_1EBDAD0C8, MEMORY[0x1E69AB368]);
    *v40 = v0;
    v40[1] = sub_1BE51EF78;
    v42 = v0[55];
    v43 = v0[52];
    v44 = v0[53];
    v45 = v0[49];

    return MEMORY[0x1EEE15D98](v43, v45, v42, v44, v41);
  }
}

uint64_t sub_1BE51EF78()
{
  v2 = *v1;
  sub_1BE51D9B8();
  *v4 = v3;
  v5 = v2[70];
  *v4 = *v1;
  *(v3 + 568) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BE51F0D8()
{
  v1 = v0[52];
  v2 = v0[43];
  (*(v0[39] + 104))(v0[40], *MEMORY[0x1E69AAE90], v0[38]);
  v3 = sub_1BE54C4AC();
  v4 = MEMORY[0x1E69AAEA8];
  v0[5] = v3;
  v0[6] = v4;
  sub_1BE50B648(v0 + 2);
  sub_1BE54C49C();
  sub_1BE54C3DC();
  sub_1BE54C4EC();
  v5 = *(MEMORY[0x1E69AAE40] + 4);
  v6 = swift_task_alloc();
  v0[72] = v6;
  *v6 = v0;
  v6[1] = sub_1BE51F1EC;
  v7 = v0[43];
  v8 = v0[37];

  return MEMORY[0x1EEE15D10](v8, v0 + 7);
}

uint64_t sub_1BE51F1EC()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE51D9B8();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;
  *(v3 + 584) = v0;

  sub_1BE4C58A8((v3 + 56));
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BE51F2F0()
{
  v1 = v0[73];
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[57];
  v5 = v0[58];
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[34];
  v8 = v0[35];
  v10 = MEMORY[0x1E69AAE48];
  v0[15] = v8;
  v0[16] = v10;
  v11 = sub_1BE50B648(v0 + 12);
  (*(v7 + 16))(v11, v6, v8);
  (*(v5 + 16))(v2, v3, v4);
  sub_1BE54C56C();
  if (v1)
  {
    v12 = v0[69];
    v47 = v0[68];
    v13 = v0[67];
    v44 = v0[66];
    v14 = v0[63];
    v58 = v0[62];
    v60 = v0[65];
    v15 = v0[58];
    v54 = v0[57];
    v56 = v0[60];
    v16 = v0[54];
    v50 = v0[53];
    v52 = v0[55];
    v17 = v0[51];
    v48 = v0[50];
    v49 = v0[52];
    v18 = v0[42];
    v45 = v0[41];
    v46 = v0[43];
    v20 = v0[36];
    v19 = v0[37];
    v21 = v0[35];

    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v46, v45);
    (*(v17 + 8))(v49, v48);
    (*(v16 + 8))(v52, v50);
    (*(v15 + 8))(v56, v54);
    (*(v14 + 8))(v60, v58);
    v22 = v0[65];
    v23 = v0[64];
    v25 = v0[60];
    v24 = v0[61];
    v26 = v0[59];
    v28 = v0[55];
    v27 = v0[56];
    v29 = v0[52];
    v30 = v0[49];
    v31 = v0[46];
    v51 = v0[43];
    v53 = v0[40];
    v55 = v0[37];
    v57 = v0[34];
    v59 = v0[31];
    v61 = v0[28];

    sub_1BE4E01E0();
    sub_1BE520500();

    __asm { BRAA            X1, X16 }
  }

  v35 = v0[33];
  v34 = v0[34];
  v36 = v0[32];
  v0[74] = sub_1BE54C55C();
  v37 = MEMORY[0x1E69AB348];
  v0[20] = v36;
  v0[21] = v37;
  v38 = sub_1BE50B648(v0 + 17);
  (*(v35 + 16))(v38, v34, v36);
  v0[25] = &type metadata for SettingsRemoteLocalization.SiriLanguageSource;
  v0[26] = sub_1BE5203D4();
  v39 = *(MEMORY[0x1E69AB328] + 4);
  v40 = swift_task_alloc();
  v0[75] = v40;
  *v40 = v0;
  v40[1] = sub_1BE51F658;
  v41 = v0[67];
  sub_1BE520500();

  return MEMORY[0x1EEE17078]();
}

uint64_t sub_1BE51F658(uint64_t a1)
{
  sub_1BE4E0228();
  v5 = v4;
  sub_1BE51D9B8();
  *v6 = v5;
  v8 = *(v7 + 600);
  v9 = *v2;
  sub_1BE4E01C4();
  *v10 = v9;
  v5[76] = v1;

  if (!v1)
  {
    v5[77] = a1;
    sub_1BE4C58A8(v5 + 22);
    sub_1BE4C58A8(v5 + 17);
  }

  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BE51F77C()
{
  v1 = v0[69];
  v20 = v0[68];
  v21 = v0[77];
  v16 = v0[67];
  v17 = v0[66];
  v30 = v0[65];
  v31 = v0[64];
  v28 = v0[63];
  v29 = v0[62];
  v32 = v0[61];
  v27 = v0[60];
  v33 = v0[59];
  v2 = v0[58];
  v26 = v0[57];
  v34 = v0[56];
  v3 = v0[54];
  v24 = v0[53];
  v25 = v0[55];
  v4 = v0[51];
  v22 = v0[50];
  v23 = v0[52];
  v35 = v0[49];
  v36 = v0[46];
  v5 = v0[42];
  v18 = v0[41];
  v19 = v0[43];
  v37 = v0[40];
  v6 = v0[36];
  v7 = v0[34];
  v14 = v0[35];
  v15 = v0[37];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[27];
  v38 = v0[31];
  v39 = v0[28];
  v11 = MEMORY[0x1E69AB330];
  v10[3] = v0[74];
  v10[4] = v11;

  *v10 = v21;
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v15, v14);
  (*(v5 + 8))(v19, v18);
  (*(v4 + 8))(v23, v22);
  (*(v3 + 8))(v25, v24);
  (*(v2 + 8))(v27, v26);
  (*(v28 + 8))(v30, v29);

  sub_1BE4E01E0();

  return v12();
}

uint64_t sub_1BE51F9F8()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[63];
  v14 = v0[62];
  v15 = v0[65];
  v13 = v0[60];
  v7 = v0[57];
  v6 = v0[58];
  v8 = v0[54];
  v9 = v0[55];
  v10 = v0[53];

  (*(v8 + 8))(v9, v10);
  (*(v6 + 8))(v13, v7);
  (*(v5 + 8))(v15, v14);
  v16 = v0[71];
  sub_1BE5204A8();
  sub_1BE5204D4();

  sub_1BE4E01E0();

  return v11();
}

uint64_t sub_1BE51FB84()
{
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[63];
  v23 = v0[62];
  v25 = v0[65];
  v5 = v0[58];
  v19 = v0[57];
  v21 = v0[60];
  v6 = v0[54];
  v16 = v0[53];
  v17 = v0[55];
  v14 = v0[68];
  v15 = v0[52];
  v7 = v0[51];
  v13 = v0[50];
  v9 = v0[42];
  v8 = v0[43];
  v10 = v0[41];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v15, v13);
  (*(v6 + 8))(v17, v16);
  (*(v5 + 8))(v21, v19);
  (*(v4 + 8))(v25, v23);
  v26 = v0[73];
  sub_1BE5204A8();
  v18 = v0[37];
  v20 = v0[34];
  v22 = v0[31];
  v24 = v0[28];

  sub_1BE4E01E0();

  return v11();
}

void sub_1BE51FD6C()
{
  v1 = v0[69];
  v2 = v0[67];
  v15 = v0[66];
  v16 = v0[68];
  v31 = v0[65];
  v27 = v0[63];
  v29 = v0[62];
  v3 = v0[58];
  v23 = v0[57];
  v25 = v0[60];
  v4 = v0[54];
  v21 = v0[53];
  v22 = v0[55];
  v5 = v0[51];
  v19 = v0[50];
  v20 = v0[52];
  v6 = v0[42];
  v17 = v0[41];
  v18 = v0[43];
  v7 = v0[36];
  v8 = v0[34];
  v13 = v0[35];
  v14 = v0[37];
  v10 = v0[32];
  v9 = v0[33];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v14, v13);
  (*(v6 + 8))(v18, v17);
  (*(v5 + 8))(v20, v19);
  (*(v4 + 8))(v22, v21);
  (*(v3 + 8))(v25, v23);
  (*(v27 + 8))(v31, v29);
  sub_1BE4C58A8(v0 + 22);
  sub_1BE4C58A8(v0 + 17);
  v32 = v0[76];
  sub_1BE5204A8();
  v24 = v0[37];
  v26 = v0[34];
  v28 = v0[31];
  v30 = v0[28];

  sub_1BE4E01E0();
  sub_1BE520500();

  __asm { BRAA            X1, X16 }
}

_BYTE *storeEnumTagSinglePayload for SettingsRemoteLocalization(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BE520050(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  sub_1BE4BF11C(&qword_1EBDAC3B0, &qword_1BE54F570);
  v2 = sub_1BE54CBEC();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1BE520428(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1BE520188(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1BE4E3E7C(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1BE520188(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BE54CD8C();
  sub_1BE54C77C();
  v6 = sub_1BE54CDAC();

  return sub_1BE520200(a1, a2, v6);
}

unint64_t sub_1BE520200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BE54CCDC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BE5202B4(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C70C();

  return v3;
}

uint64_t sub_1BE520324(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE52038C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BE5203D4()
{
  result = qword_1EBDAD0D0;
  if (!qword_1EBDAD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD0D0);
  }

  return result;
}

uint64_t sub_1BE520428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD0D8, &unk_1BE550E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE5204A8()
{
  result = v0[65];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[59];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[52];
  v9 = v0[49];
  v10 = v0[46];
  v11 = v0[43];
  v12 = v0[40];
  return result;
}

uint64_t sub_1BE5204D4()
{
  v4 = v0[37];
  v5 = v0[34];
  v2 = v0[31];
  v6 = v0[28];
}

uint64_t sub_1BE52051C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1BE525D0C();
  v6 = sub_1BE5257EC(v4, v5);
  sub_1BE4DCEC0(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1BE54AFCC();

  v14 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL;
  sub_1BE525D40();
  return sub_1BE5256F0(v2 + v14, a1);
}

uint64_t sub_1BE5205BC()
{
  swift_getKeyPath();
  sub_1BE525D0C();
  v3 = sub_1BE5257EC(v1, v2);
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v14, v0);
  sub_1BE54AFCC();

  v11 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText);
  v12 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText + 8);

  return v11;
}

uint64_t sub_1BE520660()
{
  swift_getKeyPath();
  sub_1BE522468();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BE5206E4(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan);
  if (v3 != 2)
  {
    if (result != 2 && ((v3 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    sub_1BE525D78();
    MEMORY[0x1EEE9AC00](v4);
    sub_1BE525D30();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    sub_1BE525DC4();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan) = result;
  return result;
}

uint64_t sub_1BE5207AC()
{
  sub_1BE4E01D4();
  v1[7] = v0;
  v1[8] = sub_1BE54C8CC();
  v1[9] = sub_1BE54C8BC();
  sub_1BE50A968();
  v3 = sub_1BE54C87C();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BE520840, v3, v2);
}

uint64_t sub_1BE520840()
{
  sub_1BE4E4418();
  v1 = v0[7];
  sub_1BE522A7C((v0 + 2));
  v2 = sub_1BE4C52F4(v0 + 2, v0[5]);
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  sub_1BE525D6C(v7);

  return sub_1BE520D40();
}

uint64_t sub_1BE5208FC()
{
  sub_1BE4E4418();
  v3 = v2;
  sub_1BE4E0228();
  v5 = v4;
  sub_1BE51D9B8();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *v1;
  sub_1BE4E01C4();
  *v10 = v9;
  v5[13] = v0;

  if (v0)
  {
    v11 = v5[10];
    v12 = v5[11];
    v13 = sub_1BE520B7C;
  }

  else
  {
    v5[14] = v3;
    v11 = v5[10];
    v12 = v5[11];
    v13 = sub_1BE520A10;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1BE520A10()
{
  sub_1BE4E4418();
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  sub_1BE4C58A8((v0 + 16));
  v3 = *(v1 + 16);

  v4 = sub_1BE522C74();
  if (v4 == 2)
  {
    v5 = 0;
  }

  else if (v3)
  {
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      if (qword_1EBDABAC8 != -1)
      {
        swift_once();
      }

      v6 = sub_1BE54B2EC();
      sub_1BE4C52BC(v6, qword_1EBDB0C98);
      v7 = sub_1BE54B2BC();
      v8 = sub_1BE54C9AC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BE4B8000, v7, v8, "Current ChatGPT account reports free plan, but has Apple IAP subscription. This is not supported and will default to free behavior. Please login with the ChatGPT account associated with this IAP subscription.", v9, 2u);
        MEMORY[0x1BFB48AC0](v9, -1, -1);
      }

      v5 = 4;
    }
  }

  else if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 128) = v5;
  v10 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BE520B7C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 104);
  sub_1BE4C58A8((v0 + 16));

  *(v0 + 128) = 1;
  v2 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE520BEC()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 64);
  *(v0 + 120) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  sub_1BE525D24();
  v2 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE520C64()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 128);

  sub_1BE5220D8(v3);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BE520CD4, v4, v5);
}

uint64_t sub_1BE520CD4()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 72);

  sub_1BE525D60();
  v3 = *(v0 + 128);

  return v2(v3);
}

uint64_t sub_1BE520D40()
{
  sub_1BE4E021C();
  v0[3] = sub_1BE54C8CC();
  v0[4] = sub_1BE54C8BC();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_1BE525D6C(v1);

  return sub_1BE5212D8();
}

uint64_t sub_1BE520E0C()
{
  sub_1BE4E021C();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1BE4E01C4();
  *v7 = v6;
  v8 = v5[5];
  *v7 = *v1;
  v6[6] = v0;

  v9 = v5[4];
  v10 = v5[3];
  if (v2)
  {
    sub_1BE54C87C();
    sub_1BE525D24();
    v11 = sub_1BE52127C;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v6[7] = v4;
    v16 = sub_1BE54C87C();
    v15 = v17;
    v6[8] = v16;
    v6[9] = v17;
    v11 = sub_1BE520F8C;
    v13 = v16;
  }

  return MEMORY[0x1EEE6DFA0](v11, v13, v15);
}

uint64_t sub_1BE520F8C()
{
  sub_1BE4E4418();
  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_1BE54C8BC();
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
  *v6 = v0;
  v6[1] = sub_1BE5210A4;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v3, v8, 0xD00000000000001DLL, 0x80000001BE555340, sub_1BE5250D4, v4, v7);
}

uint64_t sub_1BE5210A4()
{
  sub_1BE4E021C();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 56);
  v6 = *v0;
  sub_1BE4E01C4();
  *v7 = v6;

  v8 = *(v1 + 72);
  v9 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1BE52121C, v9, v8);
}