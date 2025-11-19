uint64_t sub_24B03A1B8()
{
  v1 = *v0;
  v2 = 0x7461636F4C796D2ELL;
  v3 = 0x73646E656972662ELL;
  v4 = 0x697463657269642ELL;
  if (v1 != 3)
  {
    v4 = 0x6F697461636F6C2ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657265666572702ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B03A278()
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B03A798(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  return sub_24B2D6124();
}

uint64_t sub_24B03A300()
{
  sub_24B2D1704();
  sub_24B03A798(&unk_27EFC7E58, MEMORY[0x277D08BF8]);

  return sub_24B2D5254();
}

uint64_t sub_24B03A384()
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B03A798(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  return sub_24B2D6124();
}

uint64_t sub_24B03A408()
{
  sub_24B2D1704();
  sub_24B03A798(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
  return sub_24B2D52A4() & 1;
}

uint64_t sub_24B03A490()
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B03A798(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  sub_24B2D6104();
  return sub_24B2D6124();
}

uint64_t sub_24B03A534()
{
  sub_24B2D1704();
  sub_24B03A798(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  return sub_24B2D6104();
}

uint64_t sub_24B03A5C0()
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B03A798(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  sub_24B2D6104();
  return sub_24B2D6124();
}

uint64_t sub_24B03A660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B2D1704();
  sub_24B03A798(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
  if (sub_24B2D52A4())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_24B03A798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B03A828()
{
  v1 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s14descr285E46659O16SubscriptionDataOMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B0407D0(v0, v12, _s14descr285E46659O16SubscriptionDataOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v15 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      sub_24B03B10C(v12, v6, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      v21 = 0;
      v22 = 0xE000000000000000;
      MEMORY[0x24C23BC10](0x697463657269642ELL, 0xEC00000028736E6FLL);
      sub_24B2D5FE4();
      MEMORY[0x24C23BC10](41, 0xE100000000000000);
      v14 = v21;
      v16 = v6;
    }

    else
    {
      v15 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      sub_24B03B10C(v12, v9, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      v21 = 0;
      v22 = 0xE000000000000000;
      MEMORY[0x24C23BC10](0x73646E656972662ELL, 0xEC00000028706968);
      sub_24B2D5FE4();
      MEMORY[0x24C23BC10](41, 0xE100000000000000);
      v14 = v21;
      v16 = v9;
    }

    v19 = v15;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24B03B10C(v12, v3, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_24B2D5C34();
    MEMORY[0x24C23BC10](0x6F697461636F6C2ELL, 0xEB0000000028736ELL);
    sub_24B2D5FE4();
    MEMORY[0x24C23BC10](8236, 0xE200000000000000);
    if (v3[*(v1 + 20)])
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v3[*(v1 + 20)])
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x24C23BC10](v17, v18);

    MEMORY[0x24C23BC10](41, 0xE100000000000000);
    v14 = v21;
    v16 = v3;
    v19 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
LABEL_17:
    sub_24B03B174(v16, v19);
    return v14;
  }

  if (EnumCaseMultiPayload == 3)
  {
    return 0x7461636F4C796D2ELL;
  }

  else
  {
    return 0x657265666572702ELL;
  }
}

uint64_t sub_24B03ABC8()
{
  v1 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s14descr285E46659O16SubscriptionDataOMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B0407D0(v0, v12, _s14descr285E46659O16SubscriptionDataOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      sub_24B03B10C(v12, v6, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      MEMORY[0x24C23C8D0](3);
      sub_24B2D1704();
      sub_24B03A798(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      v15 = v6;
    }

    else
    {
      v14 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      sub_24B03B10C(v12, v9, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      MEMORY[0x24C23C8D0](2);
      sub_24B2D1704();
      sub_24B03A798(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      v15 = v9;
    }

    v16 = v14;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x24C23C8D0](EnumCaseMultiPayload != 3);
    }

    sub_24B03B10C(v12, v3, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    MEMORY[0x24C23C8D0](4);
    sub_24B2D1704();
    sub_24B03A798(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    sub_24B2D6104();
    v15 = v3;
    v16 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
  }

  return sub_24B03B174(v15, v16);
}

uint64_t sub_24B03AF44()
{
  sub_24B2D60E4();
  sub_24B03ABC8();
  return sub_24B2D6124();
}

uint64_t sub_24B03AF88()
{
  sub_24B2D60E4();
  sub_24B03ABC8();
  return sub_24B2D6124();
}

uint64_t sub_24B03B014(uint64_t a1)
{
  result = sub_24B03A798(&qword_27EFC8588, _s14descr285E46659O16SubscriptionDataOMa);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24B03B070()
{
  result = qword_27EFC87A0;
  if (!qword_27EFC87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC87A0);
  }

  return result;
}

uint64_t sub_24B03B10C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B03B174(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B03B1D4(uint64_t a1)
{
  v2 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = v67 - v4;
  v5 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v80 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = v67 - v9;
  MEMORY[0x28223BE20](v8);
  v78 = v67 - v10;
  v11 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v77 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v76 = v67 - v15;
  MEMORY[0x28223BE20](v14);
  v75 = v67 - v16;
  v17 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v74 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v73 = v67 - v21;
  MEMORY[0x28223BE20](v20);
  v72 = v67 - v22;
  v23 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v82 = *(v23 - 8);
  v83 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v84 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v81 = v67 - v26;
  v86 = MEMORY[0x277D84FA0];
  v87 = MEMORY[0x277D84FA0];
  v85 = MEMORY[0x277D84FA0];
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;

  v71 = 0;
  v70 = 0;
  v67[1] = 0;
  if (v30)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v37 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v37 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v37);
    ++v2;
    if (v30)
    {
      while (1)
      {
        v38 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v39 = v81;
        sub_24B0407D0(*(a1 + 48) + *(v82 + 72) * (v38 | (v37 << 6)), v81, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B03B10C(v39, v84, _s14descr285E46659O16SubscriptionDataOMa);
        result = swift_getEnumCaseMultiPayload();
        if (result <= 1)
        {
          break;
        }

        if (result == 2)
        {
          v33 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
          v34 = v78;
          sub_24B03B10C(v84, v78, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          v41 = a1;
          v42 = v80;
          sub_24B0407D0(v34, v80, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          v36 = v79;
          v43 = v42;
          a1 = v41;
          sub_24B1ABEC0(v79, v43);
          goto LABEL_6;
        }

        v44 = v71;
        if (result != 3)
        {
          v44 = 1;
        }

        v71 = v44;
        v45 = v70;
        if (result == 3)
        {
          v45 = 1;
        }

        v70 = v45;
        v2 = v37;
        if (!v30)
        {
          goto LABEL_8;
        }

LABEL_7:
        v37 = v2;
      }

      if (result)
      {
        v33 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        v34 = v75;
        sub_24B03B10C(v84, v75, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        v35 = v77;
        sub_24B0407D0(v34, v77, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        v36 = v76;
        sub_24B1AC204(v76, v35);
      }

      else
      {
        v33 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        v34 = v72;
        sub_24B03B10C(v84, v72, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        v40 = v74;
        sub_24B0407D0(v34, v74, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        v36 = v73;
        sub_24B1AC4F8(v73, v40);
      }

LABEL_6:
      sub_24B03B174(v36, v33);
      result = sub_24B03B174(v34, v33);
      v2 = v37;
      if (!v30)
      {
        continue;
      }

      goto LABEL_7;
    }
  }

  v46 = v69;
  if (v70)
  {
    sub_24B0278E0();
  }

  v47 = MEMORY[0x277D85700];
  v48 = v68;
  if (v71)
  {
    v49 = sub_24B2D56D4();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    sub_24B2D5694();

    v50 = sub_24B2D5684();
    v51 = swift_allocObject();
    v51[2] = v50;
    v51[3] = v47;
    v51[4] = v46;
    sub_24B00A9A4(0, 0, v48, &unk_24B2E1088, v51);
  }

  if (*(v86 + 16))
  {
    sub_24B010B04();
  }

  v52 = v85;
  if (*(v85 + 16))
  {
    v53 = OBJC_IVAR____TtC12FindMyUICore10Repository_handlesToGetLocations;
    swift_beginAccess();
    v54 = *(v46 + v53);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    sub_24B039FE4(v52, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, sub_24B1ABEC0);
    swift_endAccess();
    v55 = sub_24B039BE8(v52, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    sub_24B01ECF8(v55);

    v56 = sub_24B2D56D4();
    (*(*(v56 - 8) + 56))(v48, 1, 1, v56);
    sub_24B2D5694();

    v57 = sub_24B2D5684();
    v58 = swift_allocObject();
    v58[2] = v57;
    v58[3] = v47;
    v58[4] = v54;
    v58[5] = v46;
    v58[6] = v52;
    sub_24B00A9A4(0, 0, v48, &unk_24B2E1068, v58);
  }

  v59 = v87;
  if (*(v87 + 16))
  {
    v60 = OBJC_IVAR____TtC12FindMyUICore10Repository_handlesToGetFriendshipStatus;
    swift_beginAccess();
    v61 = *(v46 + v60);

    v62 = sub_24B039BE8(v59, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);

    swift_beginAccess();
    sub_24B040B34(v62);
    swift_endAccess();

    v63 = *(v61 + 16);

    if (v63)
    {
      return sub_24B012FF8();
    }

    else
    {
      v64 = sub_24B2D56D4();
      (*(*(v64 - 8) + 56))(v48, 1, 1, v64);
      sub_24B2D5694();

      v65 = sub_24B2D5684();
      v66 = swift_allocObject();
      v66[2] = v65;
      v66[3] = v47;
      v66[4] = v46;
      sub_24B00A9A4(0, 0, v48, &unk_24B2E1078, v66);
    }
  }

  else
  {
  }
}

uint64_t sub_24B03BBDC()
{
  v0[2] = sub_24B2D5694();
  v0[3] = sub_24B2D5684();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24B03BC88;

  return sub_24B0295CC();
}

uint64_t sub_24B03BC88()
{

  v1 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B040EAC, v1, v0);
}

uint64_t sub_24B03BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v6[9] = sub_24B2D5694();
  v6[10] = sub_24B2D5684();
  v8 = sub_24B2D5604();
  v6[11] = v8;
  v6[12] = v9;

  return MEMORY[0x2822009F8](sub_24B03BF00, v8, v9);
}

uint64_t sub_24B03BF00()
{
  v59 = v0;
  v58 = *MEMORY[0x277D85DE8];
  if (*(v0[2] + 16))
  {
    v1 = v0[4];
    v2 = *(v1 + 32);
    v3 = v2 & 0x3F;
    v4 = ((1 << v2) + 63) >> 6;
    v5 = 8 * v4;

    v7 = v1;
    if (v3 <= 0xD)
    {
      goto LABEL_3;
    }

LABEL_25:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v7 = v0[4];
    if (isStackAllocationSafe)
    {
LABEL_3:
      v52 = &v51;
      v53 = v4;
      v8 = v0[6];
      v56 = v0[5];
      v57 = v8;
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v54 = &v51 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v54, v5);
      v55 = 0;
      v5 = 0;
      v4 = v7 + 56;
      v9 = 1 << *(v1 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(v7 + 56);
      v12 = (v9 + 63) >> 6;
      while (1)
      {
        if (!v11)
        {
          v15 = v5;
          while (1)
          {
            v5 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v5 >= v12)
            {
              goto LABEL_19;
            }

            v16 = *(v4 + 8 * v5);
            ++v15;
            if (v16)
            {
              v14 = __clz(__rbit64(v16));
              v11 = (v16 - 1) & v16;
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_25;
        }

        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = v14 | (v5 << 6);
        sub_24B0407D0(*(v7 + 48) + *(v57 + 72) * v17, v0[8], _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v13 = v0[8];

        v1 = *(v13 + *(v56 + 20));
        sub_24B03B174(v13, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        if ((v1 & 1) == 0)
        {
          *&v54[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          v18 = __OFADD__(v55++, 1);
          if (v18)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_19:
      v19 = sub_24B2A2154(v54, v53, v55, v0[4]);
      if (!*(v19 + 16))
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v26 = swift_slowAlloc();
    v27 = sub_24B040114(v26, v4, v7, sub_24B03DDA4);
    MEMORY[0x24C23D530](v26, -1, -1);
    v51 = 0;
    v19 = v27;
    if (v27[2])
    {
LABEL_20:
      v20 = sub_24B039BE8(v19, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      v0[14] = v20;

      v21 = swift_task_alloc();
      v0[15] = v21;
      *v21 = v0;
      v21[1] = sub_24B03D0CC;
      v22 = v20;
      v23 = 0;
LABEL_46:

      return sub_24B045D1C(v22, v23);
    }

LABEL_27:

    v28 = v0[4];
    v29 = *(v28 + 32);
    v30 = v29 & 0x3F;
    v31 = ((1 << v29) + 63) >> 6;
    v32 = 8 * v31;

    if (v30 <= 0xD)
    {
      goto LABEL_28;
    }

LABEL_50:
    v33 = swift_stdlib_isStackAllocationSafe();
    v28 = v0[4];
    if (v33)
    {
LABEL_28:
      v52 = &v51;
      v53 = v31;
      v34 = v0[6];
      v56 = v0[5];
      v57 = v34;
      MEMORY[0x28223BE20](v33);
      v54 = &v51 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v54, v32);
      v55 = 0;
      v35 = 0;
      v31 = v28 + 56;
      v36 = 1 << *(v28 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & *(v28 + 56);
      v39 = (v36 + 63) >> 6;
      while (1)
      {
        if (!v38)
        {
          v42 = v35;
          while (1)
          {
            v35 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            if (v35 >= v39)
            {
              goto LABEL_44;
            }

            v43 = *(v31 + 8 * v35);
            ++v42;
            if (v43)
            {
              v41 = __clz(__rbit64(v43));
              v38 = (v43 - 1) & v43;
              goto LABEL_39;
            }
          }

          __break(1u);
          goto LABEL_50;
        }

        v41 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
LABEL_39:
        v44 = v41 | (v35 << 6);
        sub_24B0407D0(*(v28 + 48) + *(v57 + 72) * v44, v0[7], _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v40 = v0[7];

        v32 = *(v40 + *(v56 + 20));
        sub_24B03B174(v40, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        if (v32 == 1)
        {
          *&v54[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
          v18 = __OFADD__(v55++, 1);
          if (v18)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_44:
      v45 = sub_24B2A2154(v54, v53, v55, v0[4]);
      if (!*(v45 + 16))
      {
        goto LABEL_52;
      }

      goto LABEL_45;
    }

    v48 = swift_slowAlloc();
    v49 = sub_24B040114(v48, v31, v28, sub_24B03DDC4);
    MEMORY[0x24C23D530](v48, -1, -1);
    v45 = v49;
    if (v49[2])
    {
LABEL_45:
      v46 = sub_24B039BE8(v45, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      v0[17] = v46;

      v47 = swift_task_alloc();
      v0[18] = v47;
      *v47 = v0;
      v47[1] = sub_24B03D938;
      v22 = v46;
      v23 = 1;
      goto LABEL_46;
    }

LABEL_52:

    v50 = v0[1];

    return v50();
  }

  else
  {
    v24 = swift_task_alloc();
    v0[13] = v24;
    *v24 = v0;
    v24[1] = sub_24B03C78C;

    return sub_24B02D3A4();
  }
}

uint64_t sub_24B03C78C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24B03C8E0, v3, v2);
}

uint64_t sub_24B03C8E0()
{
  v58 = v0;
  v57 = *MEMORY[0x277D85DE8];
  v1 = v0[4];
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  v7 = v1;
  if (v3 <= 0xD)
  {
LABEL_2:
    v51 = &v50;
    v52 = v4;
    v8 = v0[6];
    v55 = v0[5];
    v56 = v8;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v53 = &v50 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v5);
    v54 = 0;
    v5 = 0;
    v4 = v7 + 56;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 56);
    v12 = (v9 + 63) >> 6;
    while (1)
    {
      if (!v11)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v5 >= v12)
          {
            goto LABEL_18;
          }

          v16 = *(v4 + 8 * v5);
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v11 = (v16 - 1) & v16;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_21;
      }

      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v17 = v14 | (v5 << 6);
      sub_24B0407D0(*(v7 + 48) + *(v56 + 72) * v17, v0[8], _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v0[8];

      v1 = *(v13 + *(v55 + 20));
      sub_24B03B174(v13, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      if ((v1 & 1) == 0)
      {
        *&v53[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        v18 = __OFADD__(v54++, 1);
        if (v18)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    v19 = sub_24B2A2154(v53, v52, v54, v0[4]);
    if (!*(v19 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_21:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v7 = v0[4];
  if (isStackAllocationSafe)
  {
    goto LABEL_2;
  }

  v24 = swift_slowAlloc();
  v25 = sub_24B040114(v24, v4, v7, sub_24B03DDA4);
  MEMORY[0x24C23D530](v24, -1, -1);
  v50 = 0;
  v19 = v25;
  if (v25[2])
  {
LABEL_19:
    v20 = sub_24B039BE8(v19, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v0[14] = v20;

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_24B03D0CC;
    v22 = v20;
    v23 = 0;
LABEL_42:

    return sub_24B045D1C(v22, v23);
  }

LABEL_23:

  v26 = v0[4];
  v27 = *(v26 + 32);
  v28 = v27 & 0x3F;
  v29 = ((1 << v27) + 63) >> 6;
  v30 = 8 * v29;

  if (v28 <= 0xD)
  {
    goto LABEL_24;
  }

LABEL_46:
  v31 = swift_stdlib_isStackAllocationSafe();
  v26 = v0[4];
  if (v31)
  {
LABEL_24:
    v51 = &v50;
    v52 = v29;
    v32 = v0[6];
    v55 = v0[5];
    v56 = v32;
    MEMORY[0x28223BE20](v31);
    v53 = &v50 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v30);
    v54 = 0;
    v33 = 0;
    v29 = v26 + 56;
    v34 = 1 << *(v26 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v26 + 56);
    v37 = (v34 + 63) >> 6;
    while (1)
    {
      if (!v36)
      {
        v40 = v33;
        while (1)
        {
          v33 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v33 >= v37)
          {
            goto LABEL_40;
          }

          v41 = *(v29 + 8 * v33);
          ++v40;
          if (v41)
          {
            v39 = __clz(__rbit64(v41));
            v36 = (v41 - 1) & v41;
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_46;
      }

      v39 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
LABEL_35:
      v42 = v39 | (v33 << 6);
      sub_24B0407D0(*(v26 + 48) + *(v56 + 72) * v42, v0[7], _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v38 = v0[7];

      v30 = *(v38 + *(v55 + 20));
      sub_24B03B174(v38, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      if (v30 == 1)
      {
        *&v53[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
        v18 = __OFADD__(v54++, 1);
        if (v18)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_40:
    v43 = sub_24B2A2154(v53, v52, v54, v0[4]);
    if (!*(v43 + 16))
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  v47 = swift_slowAlloc();
  v48 = sub_24B040114(v47, v29, v26, sub_24B03DDC4);
  MEMORY[0x24C23D530](v47, -1, -1);
  v43 = v48;
  if (v48[2])
  {
LABEL_41:
    v44 = sub_24B039BE8(v43, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v0[17] = v44;

    v45 = swift_task_alloc();
    v0[18] = v45;
    *v45 = v0;
    v45[1] = sub_24B03D938;
    v22 = v44;
    v23 = 1;
    goto LABEL_42;
  }

LABEL_48:

  v49 = v0[1];

  return v49();
}

uint64_t sub_24B03D0CC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_24B03D6F4;
  }

  else
  {
    v5 = sub_24B03D258;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B03D258()
{
  v35 = v0;
  v34 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = v0[4];
  v3 = *(v2 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;

  if (v4 <= 0xD)
  {
LABEL_2:
    v27 = v1;
    v28 = v26;
    v29 = v5;
    v8 = v0[6];
    v32 = v0[5];
    v33 = v8;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v30 = &v26[-((v6 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v30, v6);
    v31 = 0;
    v9 = 0;
    v5 = v2 + 56;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v1 = v11 & *(v2 + 56);
    v12 = (v10 + 63) >> 6;
    while (1)
    {
      if (!v1)
      {
        v15 = v9;
        while (1)
        {
          v9 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v9 >= v12)
          {
            goto LABEL_18;
          }

          v16 = *(v5 + 8 * v9);
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v1 = (v16 - 1) & v16;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

      v14 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
LABEL_13:
      v17 = v14 | (v9 << 6);
      sub_24B0407D0(*(v2 + 48) + *(v33 + 72) * v17, v0[7], _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v0[7];

      v6 = *(v13 + *(v32 + 20));
      sub_24B03B174(v13, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      if (v6 == 1)
      {
        *&v30[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    v19 = sub_24B2A2154(v30, v29, v31, v0[4]);
    if (!*(v19 + 16))
    {
      goto LABEL_26;
    }

LABEL_19:
    v20 = sub_24B039BE8(v19, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v0[17] = v20;

    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = sub_24B03D938;

    return sub_24B045D1C(v20, 1);
  }

LABEL_23:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v2 = v0[4];
  if (isStackAllocationSafe)
  {
    goto LABEL_2;
  }

  v23 = swift_slowAlloc();
  v24 = sub_24B040114(v23, v5, v2, sub_24B03DDC4);
  result = MEMORY[0x24C23D530](v23, -1, -1);
  if (v1)
  {
    return result;
  }

  v27 = 0;
  v19 = v24;
  if (v24[2])
  {
    goto LABEL_19;
  }

LABEL_26:

  v25 = v0[1];

  return v25();
}

uint64_t sub_24B03D6F4()
{
  v14 = v0;
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 128);

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D8910, v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Repository: %s - Error: %@", v6, 0x16u);
    sub_24AFF8258(v7, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24B03D938()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_24B03DB60;
  }

  else
  {
    v5 = sub_24B03DAC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B03DAC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B03DB60()
{
  v14 = v0;
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D8910, v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Repository: %s - Error: %@", v6, 0x16u);
    sub_24AFF8258(v7, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24B03DDE4()
{
  v0[2] = sub_24B2D5694();
  v0[3] = sub_24B2D5684();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24B02CD04;

  return sub_24B02B7EC();
}

uint64_t sub_24B03DE90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v65[0] = v65 - v3;
  v4 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v75 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v74 = v65 - v8;
  MEMORY[0x28223BE20](v7);
  v73 = v65 - v9;
  v10 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v72 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = v65 - v14;
  MEMORY[0x28223BE20](v13);
  v70 = v65 - v15;
  v16 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v69 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v68 = v65 - v20;
  MEMORY[0x28223BE20](v19);
  v67 = v65 - v21;
  v22 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v77 = *(v22 - 8);
  v78 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v79 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v76 = v65 - v25;
  v81 = MEMORY[0x277D84FA0];
  v82 = MEMORY[0x277D84FA0];
  v80 = MEMORY[0x277D84FA0];
  v26 = a1 + 56;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 56);
  v30 = (v27 + 63) >> 6;

  v66 = 0;
  v32 = 0;
  if (v29)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v37 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return result;
    }

    if (v37 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v37);
    ++v32;
    if (v29)
    {
      while (1)
      {
        v38 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v39 = v76;
        sub_24B0407D0(*(a1 + 48) + *(v77 + 72) * (v38 | (v37 << 6)), v76, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B03B10C(v39, v79, _s14descr285E46659O16SubscriptionDataOMa);
        result = swift_getEnumCaseMultiPayload();
        if (result <= 1)
        {
          break;
        }

        if (result == 2)
        {
          v33 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
          v34 = v73;
          sub_24B03B10C(v79, v73, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          v41 = a1;
          v42 = v75;
          sub_24B0407D0(v34, v75, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          v36 = v74;
          v43 = v42;
          a1 = v41;
          sub_24B1ABEC0(v74, v43);
          goto LABEL_6;
        }

        if (result == 3)
        {
          v44 = HIDWORD(v66);
        }

        else
        {
          v44 = 1;
        }

        v45 = v66;
        if (result == 3)
        {
          v45 = 1;
        }

        v66 = __PAIR64__(v44, v45);
        v32 = v37;
        if (!v29)
        {
          goto LABEL_8;
        }

LABEL_7:
        v37 = v32;
      }

      if (result)
      {
        v33 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        v34 = v70;
        sub_24B03B10C(v79, v70, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        v40 = v72;
        sub_24B0407D0(v34, v72, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        v36 = v71;
        sub_24B1AC204(v71, v40);
      }

      else
      {
        v33 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        v34 = v67;
        sub_24B03B10C(v79, v67, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        v35 = v69;
        sub_24B0407D0(v34, v69, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        v36 = v68;
        sub_24B1AC4F8(v68, v35);
      }

LABEL_6:
      sub_24B03B174(v36, v33);
      result = sub_24B03B174(v34, v33);
      v32 = v37;
      if (!v29)
      {
        continue;
      }

      goto LABEL_7;
    }
  }

  v46 = v65[1];
  if (v66)
  {
    sub_24B029350();
  }

  v47 = v65[0];
  if ((v66 & 0x100000000) != 0)
  {
    sub_24B02B584();
  }

  v48 = v80;
  if (*(v80 + 16))
  {
    v49 = OBJC_IVAR____TtC12FindMyUICore10Repository_handlesToGetLocations;
    swift_beginAccess();
    sub_24B2A383C(v48);
    swift_endAccess();
    v50 = *(*(v46 + v49) + 16);
    v51 = sub_24B2D56D4();
    (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
    sub_24B2D5694();

    v52 = sub_24B2D5684();
    if (v50)
    {
      v53 = swift_allocObject();
      v54 = MEMORY[0x277D85700];
      v53[2] = v52;
      v53[3] = v54;
      v53[4] = v48;
      v53[5] = v46;

      v55 = &unk_24B2E1030;
      v56 = v47;
      v57 = v53;
    }

    else
    {
      v57 = swift_allocObject();
      v58 = MEMORY[0x277D85700];
      v57[2] = v52;
      v57[3] = v58;
      v57[4] = v46;
      v55 = &unk_24B2E1050;
      v56 = v47;
    }

    sub_24B00A9A4(0, 0, v56, v55, v57);
  }

  if (*(v82 + 16))
  {
    v59 = sub_24B039BE8(v82, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);

    v60 = OBJC_IVAR____TtC12FindMyUICore10Repository_handlesToGetFriendshipStatus;
    swift_beginAccess();
    sub_24B03FF3C(v59);
    swift_endAccess();

    if (*(*(v46 + v60) + 16))
    {
      return sub_24B012FF8();
    }

    else
    {
      v61 = sub_24B2D56D4();
      (*(*(v61 - 8) + 56))(v47, 1, 1, v61);
      sub_24B2D5694();

      v62 = sub_24B2D5684();
      v63 = swift_allocObject();
      v64 = MEMORY[0x277D85700];
      v63[2] = v62;
      v63[3] = v64;
      v63[4] = v46;
      sub_24B00A9A4(0, 0, v47, &unk_24B2E1040, v63);
    }
  }

  else
  {
  }
}

uint64_t sub_24B03E70C()
{
  v0[2] = sub_24B2D5694();
  v0[3] = sub_24B2D5684();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24B03BC88;

  return sub_24B02E9B0();
}

uint64_t sub_24B03E7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = sub_24B2D5694();
  v5[9] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v5[10] = v7;
  v5[11] = v8;

  return MEMORY[0x2822009F8](sub_24B03E8F0, v7, v8);
}

uint64_t sub_24B03E8F0()
{
  v58 = v0;
  v57 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  v7 = v1;
  if (v3 <= 0xD)
  {
LABEL_2:
    v51 = &v50;
    v52 = v4;
    v8 = v0[5];
    v55 = v0[4];
    v56 = v8;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v53 = &v50 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v5);
    v54 = 0;
    v5 = 0;
    v4 = v7 + 56;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 56);
    v12 = (v9 + 63) >> 6;
    while (1)
    {
      if (!v11)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v5 >= v12)
          {
            goto LABEL_18;
          }

          v16 = *(v4 + 8 * v5);
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v11 = (v16 - 1) & v16;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_21;
      }

      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v17 = v14 | (v5 << 6);
      sub_24B0407D0(*(v7 + 48) + *(v56 + 72) * v17, v0[7], _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v0[7];

      v1 = *(v13 + *(v55 + 20));
      sub_24B03B174(v13, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      if ((v1 & 1) == 0)
      {
        *&v53[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        v18 = __OFADD__(v54++, 1);
        if (v18)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    v19 = sub_24B2A2154(v53, v52, v54, v0[2]);
    if (!*(v19 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_21:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v7 = v0[2];
  if (isStackAllocationSafe)
  {
    goto LABEL_2;
  }

  v24 = swift_slowAlloc();
  v25 = sub_24B040114(v24, v4, v7, sub_24B03FD9C);
  MEMORY[0x24C23D530](v24, -1, -1);
  v50 = 0;
  v19 = v25;
  if (v25[2])
  {
LABEL_19:
    v20 = sub_24B039BE8(v19, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v0[12] = v20;

    v21 = swift_task_alloc();
    v0[13] = v21;
    *v21 = v0;
    v21[1] = sub_24B03F0DC;
    v22 = v20;
    v23 = 0;
LABEL_42:

    return sub_24B046A44(v22, v23);
  }

LABEL_23:

  v26 = v0[2];
  v27 = *(v26 + 32);
  v28 = v27 & 0x3F;
  v29 = ((1 << v27) + 63) >> 6;
  v30 = 8 * v29;

  if (v28 <= 0xD)
  {
    goto LABEL_24;
  }

LABEL_46:
  v31 = swift_stdlib_isStackAllocationSafe();
  v26 = v0[2];
  if (v31)
  {
LABEL_24:
    v51 = &v50;
    v52 = v29;
    v32 = v0[5];
    v55 = v0[4];
    v56 = v32;
    MEMORY[0x28223BE20](v31);
    v53 = &v50 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v30);
    v54 = 0;
    v33 = 0;
    v29 = v26 + 56;
    v34 = 1 << *(v26 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v26 + 56);
    v37 = (v34 + 63) >> 6;
    while (1)
    {
      if (!v36)
      {
        v40 = v33;
        while (1)
        {
          v33 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v33 >= v37)
          {
            goto LABEL_40;
          }

          v41 = *(v29 + 8 * v33);
          ++v40;
          if (v41)
          {
            v39 = __clz(__rbit64(v41));
            v36 = (v41 - 1) & v41;
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_46;
      }

      v39 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
LABEL_35:
      v42 = v39 | (v33 << 6);
      sub_24B0407D0(*(v26 + 48) + *(v56 + 72) * v42, v0[6], _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v38 = v0[6];

      v30 = *(v38 + *(v55 + 20));
      sub_24B03B174(v38, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      if (v30 == 1)
      {
        *&v53[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
        v18 = __OFADD__(v54++, 1);
        if (v18)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_40:
    v43 = sub_24B2A2154(v53, v52, v54, v0[2]);
    if (!*(v43 + 16))
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  v47 = swift_slowAlloc();
  v48 = sub_24B040114(v47, v29, v26, sub_24B03FE70);
  MEMORY[0x24C23D530](v47, -1, -1);
  v43 = v48;
  if (v48[2])
  {
LABEL_41:
    v44 = sub_24B039BE8(v43, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v0[15] = v44;

    v45 = swift_task_alloc();
    v0[16] = v45;
    *v45 = v0;
    v45[1] = sub_24B03FB88;
    v22 = v44;
    v23 = 1;
    goto LABEL_42;
  }

LABEL_48:

  v49 = v0[1];

  return v49();
}

uint64_t sub_24B03F0DC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_24B03F6F4;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_24B03F258;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B03F258()
{
  v35 = v0;
  v34 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = v0[2];
  v3 = *(v2 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;

  if (v4 <= 0xD)
  {
LABEL_2:
    v27 = v1;
    v28 = v26;
    v29 = v5;
    v8 = v0[5];
    v32 = v0[4];
    v33 = v8;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v30 = &v26[-((v6 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v30, v6);
    v31 = 0;
    v9 = 0;
    v5 = v2 + 56;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v1 = v11 & *(v2 + 56);
    v12 = (v10 + 63) >> 6;
    while (1)
    {
      if (!v1)
      {
        v15 = v9;
        while (1)
        {
          v9 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v9 >= v12)
          {
            goto LABEL_18;
          }

          v16 = *(v5 + 8 * v9);
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v1 = (v16 - 1) & v16;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

      v14 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
LABEL_13:
      v17 = v14 | (v9 << 6);
      sub_24B0407D0(*(v2 + 48) + *(v33 + 72) * v17, v0[6], _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v0[6];

      v6 = *(v13 + *(v32 + 20));
      sub_24B03B174(v13, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      if (v6 == 1)
      {
        *&v30[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    v19 = sub_24B2A2154(v30, v29, v31, v0[2]);
    if (!*(v19 + 16))
    {
      goto LABEL_26;
    }

LABEL_19:
    v20 = sub_24B039BE8(v19, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v0[15] = v20;

    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_24B03FB88;

    return sub_24B046A44(v20, 1);
  }

LABEL_23:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v2 = v0[2];
  if (isStackAllocationSafe)
  {
    goto LABEL_2;
  }

  v23 = swift_slowAlloc();
  v24 = sub_24B040114(v23, v5, v2, sub_24B03FE70);
  result = MEMORY[0x24C23D530](v23, -1, -1);
  if (v1)
  {
    return result;
  }

  v27 = 0;
  v19 = v24;
  if (v24[2])
  {
    goto LABEL_19;
  }

LABEL_26:

  v25 = v0[1];

  return v25();
}

uint64_t sub_24B03F6F4()
{
  v33 = v0;
  v32 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 <= 0xD)
  {
LABEL_2:
    v26[1] = v26;
    v27 = v4;
    v7 = v0[5];
    v30 = v0[4];
    v31 = v7;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v28 = v26 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v5);
    v29 = 0;
    v8 = 0;
    v4 = v1 + 56;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    while (1)
    {
      if (!v11)
      {
        v15 = v8;
        while (1)
        {
          v8 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v8 >= v12)
          {
            goto LABEL_18;
          }

          v16 = *(v4 + 8 * v8);
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v11 = (v16 - 1) & v16;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v17 = v14 | (v8 << 6);
      sub_24B0407D0(*(v1 + 48) + *(v31 + 72) * v17, v0[6], _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v0[6];

      v5 = *(v13 + *(v30 + 20));
      sub_24B03B174(v13, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      if (v5 == 1)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_18:
    v19 = sub_24B2A2154(v28, v27, v29, v0[2]);
    if (!*(v19 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_23:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v1 = v0[2];
  if (isStackAllocationSafe)
  {
    goto LABEL_2;
  }

  v23 = swift_slowAlloc();
  v24 = sub_24B040114(v23, v4, v1, sub_24B03FE70);
  MEMORY[0x24C23D530](v23, -1, -1);
  v19 = v24;
  if (v24[2])
  {
LABEL_19:
    v20 = sub_24B039BE8(v19, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v0[15] = v20;

    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_24B03FB88;

    return sub_24B046A44(v20, 1);
  }

LABEL_25:

  v25 = v0[1];

  return v25();
}

uint64_t sub_24B03FB88()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_24B040E30;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_24B03FD00;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B03FD00()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_24B03FDBC(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return (*(a1 + *(_s14descr285E46659O16SubscriptionDataO9LocationsVMa(0) + 20)) & 1) == 0;
}

uint64_t sub_24B03FE90(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return *(a1 + *(_s14descr285E46659O16SubscriptionDataO9LocationsVMa(0) + 20));
}

uint64_t sub_24B03FF3C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  if (*(*v1 + 16))
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = *(sub_24B2D1704() - 8);
      v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10 = *(v8 + 72);
      do
      {
        sub_24B2B7F80(v9, v6);
        result = sub_24AFF8258(v6, &qword_27EFC7880);
        v9 += v10;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_24B040068()
{
  v0[2] = sub_24B2D5694();
  v0[3] = sub_24B2D5684();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24B03BC88;

  return sub_24B02CEA0();
}

void *sub_24B040114(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24B073138(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24B0401A4(uint64_t a1, uint64_t a2)
{
  v37 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v37);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v12 = MEMORY[0x28223BE20](v11);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v36 - v21;
  v23 = *(v20 + 56);
  sub_24B0407D0(a1, &v36 - v21, _s14descr285E46659O16SubscriptionDataOMa);
  sub_24B0407D0(a2, &v22[v23], _s14descr285E46659O16SubscriptionDataOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_24B0407D0(v22, v16, _s14descr285E46659O16SubscriptionDataOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v25 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        v26 = v16;
        goto LABEL_19;
      }

      v33 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      sub_24B03B10C(&v22[v23], v7, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      sub_24B2D1704();
      sub_24B03A798(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v32 = sub_24B2D52A4();
      sub_24B03B174(v7, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      v34 = v16;
    }

    else
    {
      sub_24B0407D0(v22, v18, _s14descr285E46659O16SubscriptionDataOMa);
      if (swift_getEnumCaseMultiPayload())
      {
        v25 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        v26 = v18;
LABEL_19:
        sub_24B03B174(v26, v25);
        goto LABEL_20;
      }

      v33 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      sub_24B03B10C(&v22[v23], v10, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      sub_24B2D1704();
      sub_24B03A798(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v32 = sub_24B2D52A4();
      sub_24B03B174(v10, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      v34 = v18;
    }

    sub_24B03B174(v34, v33);
    sub_24B03B174(v22, _s14descr285E46659O16SubscriptionDataOMa);
    return v32 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v27 = v39;
    sub_24B0407D0(v22, v39, _s14descr285E46659O16SubscriptionDataOMa);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = v38;
      sub_24B03B10C(&v22[v23], v38, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D1704();
      sub_24B03A798(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      if (sub_24B2D52A4())
      {
        v29 = *(v37 + 20);
        v30 = *(v27 + v29);
        v31 = *(v28 + v29);
        sub_24B03B174(v28, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        if (v30 == v31)
        {
          sub_24B03B174(v27, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          goto LABEL_14;
        }
      }

      else
      {
        sub_24B03B174(v28, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      }

      sub_24B03B174(v27, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B03B174(v22, _s14descr285E46659O16SubscriptionDataOMa);
      goto LABEL_21;
    }

    v25 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
    v26 = v27;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_14;
    }

LABEL_20:
    sub_24AFF8258(v22, &unk_27EFC8650);
LABEL_21:
    v32 = 0;
    return v32 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_20;
  }

LABEL_14:
  sub_24B03B174(v22, _s14descr285E46659O16SubscriptionDataOMa);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_24B0407D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B040838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B03E7B8(a1, v4, v5, v7, v6);
}

uint64_t sub_24B0408F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B040068();
}

uint64_t sub_24B0409AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B03E70C();
}

uint64_t sub_24B040A60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24B040A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B03BDC4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24B040B34(uint64_t a1)
{
  v2 = sub_24B2D1704();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_24B1AC7EC(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24B040C7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B03DDE4();
}

uint64_t objectdestroy_42Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B040D70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B03BBDC();
}

uint64_t sub_24B040E30()
{

  return sub_24B03FD00();
}

uint64_t sub_24B040EB0()
{
  type metadata accessor for RepositoryFactory();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RepositoryFactory.Barrier();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  *(v1 + 112) = 1;
  *(v1 + 120) = v3;
  v0[14] = v1;
  v4 = MEMORY[0x277D84F98];
  v0[16] = 0;
  v0[17] = v4;
  v0[15] = &unk_24B2E1180;
  qword_27EFE4470 = v0;
  return result;
}

uint64_t sub_24B040F3C()
{
  type metadata accessor for SessionLive();
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B040FE4;

  return SessionLive.init()();
}

uint64_t sub_24B040FE4(uint64_t a1)
{
  v6 = *v1;

  v3 = sub_24B041F24(&qword_27EFC87C0, 255, type metadata accessor for SessionLive);
  v4 = *(v6 + 8);

  return v4(a1, v3);
}

uint64_t sub_24B04111C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_24B041140, v2, 0);
}

uint64_t sub_24B041140()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 88) = v1;

  return MEMORY[0x2822009F8](sub_24B0411B4, v1, 0);
}

uint64_t sub_24B0411B4()
{
  v1 = v0[11];
  v2 = *(v1 + 112);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    return MEMORY[0x2822007B8]();
  }

  *(v1 + 112) = v4;
  if (v4 < 0)
  {
    sub_24B041F24(&qword_27EFC87B8, 255, type metadata accessor for RepositoryFactory.Barrier);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_24B041314;

    return MEMORY[0x2822007B8]();
  }

  v5 = v0[10];

  return MEMORY[0x2822009F8](sub_24B041440, v5, 0);
}

uint64_t sub_24B041314()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_24B041424, v1, 0);
}

uint64_t sub_24B041440()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 136);
  if (*(v2 + 16))
  {
    v3 = v0[9];
    if (v3)
    {
      v4 = v0[8];
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = v0[9];
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    v6 = sub_24B054238(v4, v5);
    if (v7)
    {
      v8 = v6;

      v9 = *(*(v2 + 56) + 8 * v8);

      v0[18] = v9;
      v10 = v0[11];

      return MEMORY[0x2822009F8](sub_24B04199C, v10, 0);
    }
  }

  v13 = (*(v0[10] + 120) + **(v0[10] + 120));
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_24B041608;

  return v13();
}

uint64_t sub_24B041608(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  return MEMORY[0x2822009F8](sub_24B041720, v4, 0);
}

uint64_t sub_24B041720()
{
  sub_24B2D5694();

  *(v0 + 128) = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B0417CC, v2, v1);
}

uint64_t sub_24B0417CC()
{
  v1 = v0[15];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  if (!v4)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  type metadata accessor for Repository();
  swift_allocObject();
  v0[17] = sub_24B00F648(v2, v1, v5, v4);

  return MEMORY[0x2822009F8](sub_24B04189C, v3, 0);
}

uint64_t sub_24B04189C()
{
  v1 = v0[17];
  v2 = v0[9];
  v3 = v0[10];
  if (v2)
  {
    v4 = v0[9];
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v5 = v0[8];
  }

  else
  {
    v5 = 1701736302;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 136);
  *(v3 + 136) = 0x8000000000000000;
  sub_24B1C934C(v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *(v3 + 136) = v9;
  swift_endAccess();
  v0[18] = v0[17];
  v7 = v0[11];

  return MEMORY[0x2822009F8](sub_24B04199C, v7, 0);
}

uint64_t sub_24B04199C()
{
  sub_24B041BB0();
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_24B041A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8018);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = *(a2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_24B006750(0, v8[2] + 1, 1, v8);
    *(a2 + 120) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_24B006750(v10 > 1, v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 120) = v8;
  return result;
}

uint64_t sub_24B041BB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8018);
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v17 - v4;
  v6 = *(v0 + 112);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 112) = v8;
    v9 = *(v0 + 120);
    v10 = *(v9 + 2);
    if (v10)
    {
      v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      (*(v2 + 16))(v5, &v9[v11], v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 120) = v9;
      if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > *(v9 + 3) >> 1)
      {
        v9 = sub_24B006750(isUniquelyReferenced_nonNull_native, v10, 1, v9);
        *(v0 + 120) = v9;
      }

      v13 = &v9[v11];
      v14 = *(v2 + 8);
      v14(v13, v1);
      v15 = *(v2 + 72);
      if (v15 > 0 || v13 >= v13 + v15 + (*(v9 + 2) - 1) * v15)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --*(v9 + 2);
      *(v0 + 120) = v9;
      sub_24B2D5634();
      return (v14)(v5, v1);
    }
  }

  return result;
}

uint64_t sub_24B041D78()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B041DB0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B041E88()
{
  if (qword_27EFC75F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24B041EE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RepositoryFactory();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_24B041F24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24B041F70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    v11 = a1;
    v12 = a2;
  }

  else
  {
LABEL_6:
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_24B2D5374();
    v16 = [v14 localizedStringForKey:v15 value:0 table:0];

    v11 = sub_24B2D5394();
    v12 = v17;
  }

  v18 = type metadata accessor for SessionLocation.Description(0);
  sub_24B0420C8(a3, a4, a5 + *(v18 + 20));
  result = sub_24B0428B0(a4);
  *a5 = v11;
  a5[1] = v12;
  v20 = (a5 + *(v18 + 24));
  *v20 = result;
  v20[1] = v21;
  return result;
}

uint64_t sub_24B0420C8@<X0>(void *a1@<X2>, unsigned __int8 a2@<W3>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = sub_24B2D1344();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24B2D24A4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24B2D13C4();
  MEMORY[0x28223BE20](v7);
  sub_24B2D1914();
  v12 = v8;
  sub_24B2D1924();
  if (v4 == 2)
  {
    sub_24B2D18F4();
    v9 = [a1 timestamp];
    sub_24B2D2484();

    sub_24B2D1334();
  }

  else
  {
    sub_24B2D1904();
    v10 = [a1 timestamp];
    sub_24B2D2484();

    sub_24B2D1324();
  }

  sub_24B2D1384();
  return sub_24B2D1A94();
}

uint64_t SessionHandleType.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

unint64_t sub_24B04236C()
{
  result = qword_27EFC87C8;
  if (!qword_27EFC87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC87C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore29SessionPreferenceStreamChangeO(uint64_t a1)
{
  if ((*(a1 + 18) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 18) & 3;
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_24B042400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 19))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 18);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B042448(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B042490(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 18) = a2;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B0424D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_24B042518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24B042588()
{
  if (!qword_27EFC87E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8450);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFC87E0);
    }
  }
}

void sub_24B0425FC()
{
  if (!qword_27EFC87E8)
  {
    sub_24AFF7E20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC87E8);
    }
  }
}

void sub_24B042664()
{
  sub_24B042588();
  if (v0 <= 0x3F)
  {
    sub_24B0425FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24B0426D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B042720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24B0427BC()
{
  sub_24B042850();
  if (v0 <= 0x3F)
  {
    sub_24AFFF4A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B042850()
{
  if (!qword_27EFC8818)
  {
    sub_24B2D13C4();
    v0 = sub_24B2D1A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC8818);
    }
  }
}

uint64_t sub_24B0428B0(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8490);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  v6 = sub_24B2D1414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D1404();
  sub_24B2D13E4();
  sub_24B2D13F4();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  result = 0;
  if (LOBYTE(v12[0]) == 1)
  {
    LOBYTE(v12[0]) = a1;
    v11 = sub_24B2D53C4();
    v12[0] = 0x203A677562656428;
    v12[1] = 0xE800000000000000;
    MEMORY[0x24C23BC10](v11);

    MEMORY[0x24C23BC10](41, 0xE100000000000000);

    return v12[0];
  }

  return result;
}

uint64_t sub_24B042AE0()
{
  result = type metadata accessor for SessionFriend(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B042B88()
{
  sub_24B2D1704();
  if (v0 <= 0x3F)
  {
    sub_24AFF7E20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for SessionLocation.LocationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionLocation.LocationType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B042D68()
{
  result = qword_27EFC8840;
  if (!qword_27EFC8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8840);
  }

  return result;
}

uint64_t SessionLive.__allocating_init()()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B042E68;

  return SessionLive.init()();
}

uint64_t sub_24B042E68(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t SessionLive.init()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8848);
  v1[3] = swift_task_alloc();
  v2 = sub_24B2D2674();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_24B2D2694();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B043088, 0, 0);
}

uint64_t sub_24B043088()
{
  v10 = v0;
  swift_defaultActor_initialize();
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x292874696E69, 0xE600000000000000, &v9);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D09050], v0[4]);
  sub_24B2D26A4();
  sub_24B2D2AE4();
  swift_allocObject();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_24B043288;
  v7 = v0[7];

  return MEMORY[0x28215FBB8](v7);
}

uint64_t sub_24B043288(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_24B043388, 0, 0);
}

uint64_t sub_24B043388()
{
  v2 = v0[2];
  v1 = v0[3];
  v2[14] = v0[9];
  sub_24B2D2714();
  v3 = sub_24B2D2534();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v2[15] = sub_24B2D2704();
  sub_24B2D26E4();
  swift_allocObject();
  v2[16] = sub_24B2D26D4();

  v4 = v0[1];
  v5 = v0[2];

  return v4(v5);
}

uint64_t SessionLive.deinit()
{
  v1 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AFF321C(0x74696E696564, 0xE600000000000000, &v8);
    _os_log_impl(&dword_24AFD2000, v3, v4, "SessionLive: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t SessionLive.__deallocating_deinit()
{
  SessionLive.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B043620(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88B8);
  v2[4] = swift_task_alloc();
  v3 = sub_24B2D2834();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B043724, v1, 0);
}

uint64_t sub_24B043724()
{
  v10 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[9] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2D8C50, &v9);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_24B0438E8;
  v7 = v0[4];

  return MEMORY[0x28215FB40](v7, 0);
}

uint64_t sub_24B0438E8()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_24B043D18;
  }

  else
  {
    v4 = sub_24B043A20;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B043A20()
{
  v31 = v0;
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  (*(v3 + 56))(v5, 0, 1, v4);
  (*(v3 + 32))(v1, v5, v4);
  (*(v3 + 16))(v2, v1, v4);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 136315394;
    *(v12 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2D8C50, &v30);
    *(v12 + 12) = 2080;
    sub_24B054D70(&qword_27EFC88C0, 255, MEMORY[0x277D092B0]);
    v13 = sub_24B2D5FA4();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_24AFF321C(v13, v15, &v30);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SessionLive: didReceive %s - %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v29, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v18 = v0[8];
  v19 = v0[5];
  v20 = v0[2];
  v21 = sub_24B2D2804();
  v23 = v22;
  v24 = sub_24B2D27F4();
  v25 = sub_24B2D2824();
  v16(v18, v19);
  if (v25)
  {
    v26 = 256;
  }

  else
  {
    v26 = 0;
  }

  *v20 = v21;
  *(v20 + 8) = v23;
  *(v20 + 16) = v26 & 0xFFFE | v24 & 1;

  v27 = v0[1];

  return v27();
}

uint64_t sub_24B043D18()
{
  v10 = v0;
  v1 = v0[4];
  (*(v0[6] + 56))(v1, 1, 1, v0[5]);
  sub_24AFF8258(v1, &qword_27EFC88B8);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2D8C50, &v9);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: didReceive %s - no activeLocationSharingDevice ", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = v0[2];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B043ED0()
{
  v9 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D8D60, &v8);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_24B04408C;

  return MEMORY[0x28215FB50](1);
}

uint64_t sub_24B04408C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v3 + 16);

    return MEMORY[0x2822009F8](sub_24B0441D8, v7, 0);
  }
}

uint64_t sub_24B0441D8()
{
  v10 = v0;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 40);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000017, 0x800000024B2D8D60, &v9);
    *(v4 + 12) = 1024;
    *(v4 + 14) = v3;
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive %s - %{BOOL}d", v4, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 40);

  return v6(v7);
}

uint64_t sub_24B044320(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v2[4] = swift_task_alloc();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88C8);
  v2[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88D0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88D8);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86C0);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88E0) - 8);
  v2[18] = v7;
  v2[19] = *(v7 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B0445C8, v1, 0);
}

uint64_t sub_24B0445C8()
{
  v16 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[23] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8D80, &v15);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = v0[21];
  v7 = v0[22];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88E8);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  *(swift_task_alloc() + 16) = v7;
  (*(v9 + 104))(v8, *MEMORY[0x277D85778], v10);
  sub_24B2D5744();

  sub_24B008890(v7, v6, &qword_27EFC88E0);
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_24B04487C;
  v13 = v0[6];

  return MEMORY[0x28215FB78](v13);
}

uint64_t sub_24B04487C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_24B044D64;
  }

  else
  {
    v4 = sub_24B0449A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B0449A8()
{
  v28 = v0;
  sub_24B0552D4(&qword_27EFC88F0, &qword_27EFC88C8);
  sub_24B2D5F94();
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v27 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8D80, &v27);
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = v0[21];
  v6 = v0[20];
  v20 = v0[18];
  v25 = v0[17];
  v26 = v0[22];
  v7 = v0[16];
  v8 = v0[10];
  v9 = v0[11];
  v22 = v5;
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[4];
  v21 = v13;
  v23 = v0[2];
  v24 = v0[15];
  v14 = sub_24B2D56D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v10 + 16))(v8, v9, v12);
  sub_24B008890(v5, v6, &qword_27EFC88E0);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = (v11 + *(v20 + 80) + v15) & ~*(v20 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v10 + 32))(v17 + v15, v8, v12);
  sub_24B0391CC(v6, v17 + v16, &qword_27EFC88E0);
  sub_24B00A9A4(0, 0, v21, &unk_24B2E15F0, v17);

  (*(v10 + 8))(v9, v12);
  sub_24AFF8258(v22, &qword_27EFC88E0);
  (*(v7 + 32))(v23, v25, v24);
  sub_24AFF8258(v26, &qword_27EFC88E0);

  v18 = v0[1];

  return v18();
}

uint64_t sub_24B044D64()
{
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  sub_24AFF8258(v0[21], &qword_27EFC88E0);
  (*(v3 + 8))(v2, v4);
  sub_24AFF8258(v1, &qword_27EFC88E0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B044E94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D2834();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88B8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_24B2D27A4();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B044FF4, 0, 0);
}

uint64_t sub_24B044FF4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D091A0])
  {
    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    (*(v0[10] + 96))(v5, v0[9]);
    sub_24B0391CC(v5, v6, &qword_27EFC88B8);
    sub_24B008890(v6, v7, &qword_27EFC88B8);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = v0[8];
    if (v10 == 1)
    {
      v12 = v0[2];
      sub_24AFF8258(v0[8], &qword_27EFC88B8);
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 15) = 0;
    }

    else
    {
      v17 = v0[6];
      v18 = v0[4];
      v19 = v0[5];
      v20 = v0[2];
      (*(v19 + 32))(v17, v0[7], v18);
      v21 = sub_24B2D2804();
      v23 = v22;
      v24 = sub_24B2D27F4();
      v25 = sub_24B2D2824();
      (*(v19 + 8))(v17, v18);
      sub_24AFF8258(v11, &qword_27EFC88B8);
      if (v25)
      {
        v26 = 256;
      }

      else
      {
        v26 = 0;
      }

      *v20 = v21;
      *(v20 + 8) = v23;
      *(v20 + 18) = 0;
      *(v20 + 16) = v26 & 0xFFFE | v24 & 1;
    }
  }

  else
  {
    v13 = v0[10];
    v14 = v0[11];
    v15 = v0[9];
    v16 = v0[2];
    if (v4 == *MEMORY[0x277D09198])
    {
      (*(v13 + 96))(v0[11], v15);
      *v16 = *v14;
      *(v16 + 8) = 0;
      *(v16 + 18) = 1;
      *(v16 + 16) = 0;
    }

    else
    {
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 18) = 2;
      *(v16 + 16) = 0;
      (*(v13 + 8))(v14, v15);
    }
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_24B045298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88F8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88E0);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88C8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8900);
  v5[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8908);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B045454, 0, 0);
}

uint64_t sub_24B045454()
{
  v9 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[23] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000022, 0x800000024B2D8D80, &v8);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: %s - will await", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  else
  {
  }

  v0[24] = 0x800000024B2D8D80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88D0);
  MEMORY[0x24C23C720]();
  sub_24B0552D4(&qword_27EFC88F0, &qword_27EFC88C8);
  sub_24B2D57B4();
  sub_24B2D5F64();
  sub_24B2D5F74();
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_24B0456FC;

  return sub_24B24AE38((v0 + 2), 0, 0);
}

uint64_t sub_24B0456FC()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_24B04580C, 0, 0);
  }

  return result;
}

uint64_t sub_24B04580C()
{
  v30 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 34) == 255)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 104);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    sub_24B008890(v3, v2, &qword_27EFC88E0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88E8);
    v5 = *(v4 - 8);
    v6 = (*(v5 + 48))(v2, 1, v4);
    v7 = *(v0 + 128);
    if (v6 == 1)
    {
      sub_24AFF8258(*(v0 + 128), &qword_27EFC88E0);
    }

    else
    {
      sub_24B2D5714();
      (*(v5 + 8))(v7, v4);
    }

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v8 = *(v0 + 24);
    v9 = *(v0 + 32) | (*(v0 + 34) << 16);
    sub_24B038F10(*(v0 + 16), v8, v9, SBYTE2(v9));
    v10 = sub_24B2D3164();
    v11 = sub_24B2D5904();
    sub_24B038F24(v1, v8, v9);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 192);
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v13 = 136315394;
      *(v13 + 4) = sub_24AFF321C(0xD000000000000022, v12, &v29);
      *(v13 + 12) = 2080;
      *(v0 + 64) = v1;
      *(v0 + 72) = v8;
      *(v0 + 80) = v9;
      *(v0 + 82) = BYTE2(v9);
      sub_24B038F10(v1, v8, v9, SBYTE2(v9));
      v14 = sub_24B2D53C4();
      v16 = sub_24AFF321C(v14, v15, &v29);

      *(v13 + 14) = v16;
      _os_log_impl(&dword_24AFD2000, v10, v11, "SessionLive: %s - %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v28, -1, -1);
      MEMORY[0x24C23D530](v13, -1, -1);
    }

    v17 = *(v0 + 120);
    sub_24B008890(*(v0 + 104), v17, &qword_27EFC88E0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88E8);
    v19 = *(v18 - 8);
    v20 = (*(v19 + 48))(v17, 1, v18);
    v21 = *(v0 + 120);
    if (v20 == 1)
    {
      sub_24B038F24(v1, v8, v9);
      sub_24AFF8258(v21, &qword_27EFC88E0);
      v22 = 1;
    }

    else
    {
      *(v0 + 40) = v1;
      *(v0 + 48) = v8;
      *(v0 + 56) = v9;
      *(v0 + 58) = BYTE2(v9);
      sub_24B2D5704();
      (*(v19 + 8))(v21, v18);
      v22 = 0;
    }

    v25 = *(v0 + 112);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8910);
    (*(*(v26 - 8) + 56))(v25, v22, 1, v26);
    sub_24AFF8258(v25, &qword_27EFC88F8);
    v27 = swift_task_alloc();
    *(v0 + 200) = v27;
    *v27 = v0;
    v27[1] = sub_24B0456FC;

    return sub_24B24AE38(v0 + 16, 0, 0);
  }
}

uint64_t sub_24B045D1C(uint64_t a1, char a2)
{
  *(v3 + 168) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_24B2D2B24();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_24B2D2B34();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  v6 = sub_24B2D2654();
  *(v3 + 80) = v6;
  *(v3 + 88) = *(v6 - 8);
  *(v3 + 96) = swift_task_alloc();
  v7 = sub_24B2D1704();
  *(v3 + 104) = v7;
  *(v3 + 112) = *(v7 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B045F00, v2, 0);
}

uint64_t sub_24B045F00()
{
  v44 = v0;
  v1 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  v0[17] = __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AFF321C(0xD00000000000002ALL, 0x800000024B2D8DB0, &v43);
    _os_log_impl(&dword_24AFD2000, v3, v4, "SessionLive: willCall %s - locationsStream", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v7 = v0[2];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v0[14];
    v11 = *(v9 + 16);
    v9 += 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v41 = (v9 - 8);
    v42 = *(v9 + 56);
    v39 = v1;
    v11(v1[16], v12, v1[13]);
    while (1)
    {
      v22 = sub_24B2D3164();
      v23 = sub_24B2D5934();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v1[16];
      if (v24)
      {
        v13 = v1[15];
        v14 = v10;
        v15 = v1[13];
        v16 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43 = v40;
        *v16 = 141558275;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2081;
        v14(v13, v25, v15);
        v17 = sub_24B2D53C4();
        v19 = v18;
        (*v41)(v25, v15);
        v20 = sub_24AFF321C(v17, v19, &v43);

        *(v16 + 14) = v20;
        v10 = v14;
        _os_log_impl(&dword_24AFD2000, v22, v23, "SessionLive: locationsStream added: %{private,mask.hash}s", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C23D530](v40, -1, -1);
        v21 = v16;
        v1 = v39;
        MEMORY[0x24C23D530](v21, -1, -1);
      }

      else
      {
        v26 = v1[13];

        (*v41)(v25, v26);
      }

      v12 += v42;
      if (!--v8)
      {
        break;
      }

      v10(v1[16], v12, v1[13]);
    }

    v7 = v1[2];
  }

  v28 = v1[11];
  v27 = v1[12];
  v29 = v1[10];
  v30 = *(v1 + 168);
  v31 = sub_24B0467B8(v7);
  v1[18] = v31;
  v32 = MEMORY[0x277D08FD8];
  if (!v30)
  {
    v32 = MEMORY[0x277D08FE0];
  }

  (*(v28 + 104))(v27, *v32, v29);
  v33 = [objc_opt_self() mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    sub_24B2D5394();
  }

  (*(v1[5] + 104))(v1[6], *MEMORY[0x277D094A8], v1[4]);
  sub_24B2D2B14();
  v35 = swift_task_alloc();
  v1[19] = v35;
  *v35 = v1;
  v35[1] = sub_24B0463A8;
  v36 = v1[12];
  v37 = v1[9];

  return MEMORY[0x28215FB30](v31, v36, 1, v37);
}

uint64_t sub_24B0463A8()
{
  v2 = *v1;
  v11 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  *(*v1 + 160) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v11, v4);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_24B046720;
  }

  else
  {
    v9 = sub_24B0465B8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24B0465B8()
{
  v8 = v0;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0xD00000000000002ALL, 0x800000024B2D8DB0, &v7);
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24B046720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B0467B8(uint64_t a1)
{
  v22 = sub_24B2D1704();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B2D28E4();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v23 = MEMORY[0x277D84F90];
    sub_24B0078F0(0, v8, 0);
    v9 = v23;
    v11 = *(v2 + 16);
    v10 = v2 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v19 = *(v10 + 56);
    v20 = v11;
    v17[1] = v5 + 32;
    v18 = (v10 - 8);
    do
    {
      v13 = v22;
      v20(v4, v12, v22);
      sub_24B2D16F4();
      sub_24B2D28C4();
      (*v18)(v4, v13);
      v23 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24B0078F0(v14 > 1, v15 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v15 + 1;
      (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v7, v21);
      v12 += v19;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_24B046A44(uint64_t a1, char a2)
{
  *(v3 + 168) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_24B2D2B24();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_24B2D2B34();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  v6 = sub_24B2D2654();
  *(v3 + 80) = v6;
  *(v3 + 88) = *(v6 - 8);
  *(v3 + 96) = swift_task_alloc();
  v7 = sub_24B2D1704();
  *(v3 + 104) = v7;
  *(v3 + 112) = *(v7 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B046C28, v2, 0);
}

uint64_t sub_24B046C28()
{
  v44 = v0;
  v1 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  v0[17] = __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AFF321C(0xD00000000000002FLL, 0x800000024B2D8D30, &v43);
    _os_log_impl(&dword_24AFD2000, v3, v4, "SessionLive: willCall %s - locationsStream", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v7 = v0[2];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v0[14];
    v11 = *(v9 + 16);
    v9 += 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v41 = (v9 - 8);
    v42 = *(v9 + 56);
    v39 = v1;
    v11(v1[16], v12, v1[13]);
    while (1)
    {
      v22 = sub_24B2D3164();
      v23 = sub_24B2D5934();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v1[16];
      if (v24)
      {
        v13 = v1[15];
        v14 = v10;
        v15 = v1[13];
        v16 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43 = v40;
        *v16 = 141558275;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2081;
        v14(v13, v25, v15);
        v17 = sub_24B2D53C4();
        v19 = v18;
        (*v41)(v25, v15);
        v20 = sub_24AFF321C(v17, v19, &v43);

        *(v16 + 14) = v20;
        v10 = v14;
        _os_log_impl(&dword_24AFD2000, v22, v23, "SessionLive: locationsStream removed: %{private,mask.hash}s", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C23D530](v40, -1, -1);
        v21 = v16;
        v1 = v39;
        MEMORY[0x24C23D530](v21, -1, -1);
      }

      else
      {
        v26 = v1[13];

        (*v41)(v25, v26);
      }

      v12 += v42;
      if (!--v8)
      {
        break;
      }

      v10(v1[16], v12, v1[13]);
    }

    v7 = v1[2];
  }

  v28 = v1[11];
  v27 = v1[12];
  v29 = v1[10];
  v30 = *(v1 + 168);
  v31 = sub_24B0467B8(v7);
  v1[18] = v31;
  v32 = MEMORY[0x277D08FD8];
  if (!v30)
  {
    v32 = MEMORY[0x277D08FE0];
  }

  (*(v28 + 104))(v27, *v32, v29);
  v33 = [objc_opt_self() mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    sub_24B2D5394();
  }

  (*(v1[5] + 104))(v1[6], *MEMORY[0x277D094A8], v1[4]);
  sub_24B2D2B14();
  v35 = swift_task_alloc();
  v1[19] = v35;
  *v35 = v1;
  v35[1] = sub_24B0470CC;
  v36 = v1[12];
  v37 = v1[9];

  return MEMORY[0x28215FAF8](v31, v36, v37);
}

uint64_t sub_24B0470CC()
{
  v2 = *v1;
  v11 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  *(*v1 + 160) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v11, v4);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_24B0554F8;
  }

  else
  {
    v9 = sub_24B0472DC;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24B0472DC()
{
  v8 = v0;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0xD00000000000002FLL, 0x800000024B2D8D30, &v7);
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24B047444(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v2[4] = swift_task_alloc();
  v3 = sub_24B2D2654();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8968);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8970);
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v2[12] = *(v5 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8978);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86F0);
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8980) - 8);
  v2[21] = v8;
  v2[22] = *(v8 + 64);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B047748, v1, 0);
}

uint64_t sub_24B047748()
{
  v22 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[26] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2D8E00, &v21);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: %s - locationsStream", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8988);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  *(swift_task_alloc() + 16) = v6;
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8718);
  (*(v9 + 104))(v8, *MEMORY[0x277D85778], v10);
  sub_24B2D5744();

  sub_24B008890(v6, v7, &qword_27EFC8980);
  v12 = sub_24B2D3164();
  v13 = sub_24B2D5934();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2D8E00, &v21);
    _os_log_impl(&dword_24AFD2000, v12, v13, "SessionLive: willCall %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C23D530](v15, -1, -1);
    MEMORY[0x24C23D530](v14, -1, -1);
  }

  (*(v0[6] + 104))(v0[7], *MEMORY[0x277D08FE0], v0[5]);
  v16 = swift_task_alloc();
  v0[28] = v16;
  *v16 = v0;
  v16[1] = sub_24B047B0C;
  v17 = v0[9];
  v18 = v0[7];
  v19 = MEMORY[0x277D84F90];

  return MEMORY[0x28215FB18](v17, v19, v18, 1);
}

uint64_t sub_24B047B0C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_24B048064;
  }

  else
  {
    v7 = sub_24B047C94;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B047C94()
{
  v28 = v0;
  sub_24B0552D4(&qword_27EFC8990, &qword_27EFC8968);
  sub_24B2D5F94();
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v27 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2D8E00, &v27);
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = v0[24];
  v6 = v0[23];
  v20 = v0[21];
  v25 = v0[20];
  v26 = v0[25];
  v7 = v0[19];
  v24 = v0[18];
  v8 = v0[13];
  v9 = v0[14];
  v22 = v5;
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[10];
  v13 = v0[4];
  v21 = v13;
  v23 = v0[2];
  v14 = sub_24B2D56D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v10 + 16))(v8, v9, v12);
  sub_24B008890(v5, v6, &qword_27EFC8980);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = (v11 + *(v20 + 80) + v15) & ~*(v20 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v10 + 32))(v17 + v15, v8, v12);
  sub_24B0391CC(v6, v17 + v16, &qword_27EFC8980);
  sub_24B00A9A4(0, 0, v21, &unk_24B2E16F0, v17);

  (*(v10 + 8))(v9, v12);
  sub_24AFF8258(v22, &qword_27EFC8980);
  (*(v7 + 32))(v23, v25, v24);
  sub_24AFF8258(v26, &qword_27EFC8980);

  v18 = v0[1];

  return v18();
}

uint64_t sub_24B048064()
{
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  sub_24AFF8258(v0[24], &qword_27EFC8980);
  (*(v3 + 8))(v2, v4);
  sub_24AFF8258(v1, &qword_27EFC8980);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B0481A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  sub_24AFF8258(a2, a3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v11 = *(v8 - 8);
  (*(v11 + 16))(a2, a1, v8);
  v9 = *(v11 + 56);

  return v9(a2, 0, 1, v8);
}

uint64_t sub_24B048278(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D28E4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24B2D2C04();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = sub_24B2D2794();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B0483FC, 0, 0);
}

uint64_t sub_24B0483FC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D09130])
  {
    v5 = v0[13];
    v6 = v0[10];
    v7 = v0[8];
    v8 = v0[9];
    v9 = v0[7];
    v35 = v9;
    v34 = v0[6];
    v11 = v0[4];
    v10 = v0[5];
    v36 = v11;
    v12 = v0[2];
    (*(v0[12] + 96))(v5, v0[11]);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89C0) + 48);
    (*(v7 + 32))(v6, v5, v9);
    (*(v10 + 32))(v34, v5 + v13, v11);
    (*(v7 + 16))(v8, v6, v9);
    v14 = sub_24B0544FC(v8);
    v16 = v15;
    v18 = v17;
    LOBYTE(v13) = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8718);
    *v12 = v14;
    *(v12 + 8) = v16;
    *(v12 + 16) = v18;
    *(v12 + 24) = v13;

    v21 = v18;
    sub_24B2D28A4();
    sub_24B2D16E4();

    (*(v10 + 8))(v34, v36);
    (*(v7 + 8))(v6, v35);
    (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  }

  else
  {
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[11];
    if (v4 == *MEMORY[0x277D09128])
    {
      v26 = v0[5];
      v25 = v0[6];
      v27 = v0[4];
      v28 = v0[2];
      (*(v23 + 96))(v0[13], v0[11]);
      (*(v26 + 32))(v25, v22, v27);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8718);
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 24) = 0;
      *(v28 + 16) = 0;
      sub_24B2D28A4();
      sub_24B2D16E4();
      (*(v26 + 8))(v25, v27);
      (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    }

    else
    {
      v30 = v0[2];
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8718);
      (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
      (*(v23 + 8))(v22, v24);
    }
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_24B0487C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8998);
  v5[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8718);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8980);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89A0);
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8968);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89A8);
  v5[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89B0);
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B048A48, 0, 0);
}

uint64_t sub_24B048A48()
{
  v10 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[21] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2D8E00, &v9);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: %s - locationsStream - will await", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  else
  {
  }

  v0[22] = 0x800000024B2D8E00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8970);
  MEMORY[0x24C23C720]();
  sub_24B0552D4(&qword_27EFC8990, &qword_27EFC8968);
  sub_24B2D57B4();
  sub_24B2D5F64();
  sub_24B2D5F74();
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_24B048CF0;
  v7 = v0[14];

  return sub_24B24B778(v7, 0, 0);
}

uint64_t sub_24B048CF0()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_24B048E00, 0, 0);
  }

  return result;
}

uint64_t sub_24B048E00()
{
  v56 = v0;
  v1 = v0[14];
  v2 = v0[6];
  if ((*(v0[7] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[13];
    v4 = v0[4];
    (*(v0[19] + 8))(v0[20], v0[18]);
    sub_24B008890(v4, v3, &qword_27EFC8980);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8988);
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = v0[13];
    if (v7 == 1)
    {
      sub_24AFF8258(v0[13], &qword_27EFC8980);
    }

    else
    {
      sub_24B2D5714();
      (*(v6 + 8))(v8, v5);
    }

    v31 = v0[1];

    return v31();
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
    v13 = *(v2 + 48);
    *v9 = *v1;
    *(v9 + 16) = v11;
    *(v9 + 24) = v12;
    v14 = sub_24B2D1704();
    v15 = *(*(v14 - 8) + 32);
    v15(v9 + v13, v1 + v13, v14);
    sub_24B008890(v9, v10, &qword_27EFC8718);
    v16 = sub_24B2D3164();
    v17 = sub_24B2D5904();
    v53 = v15;
    v54 = v14;
    if (os_log_type_enabled(v16, v17))
    {
      v51 = v0[22];
      v18 = v0[9];
      v19 = v0[10];
      v20 = v15;
      v21 = v0[8];
      v22 = v0[6];
      v23 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55 = v52;
      *v23 = 136315394;
      *(v23 + 4) = sub_24AFF321C(0xD000000000000011, v51, &v55);
      *(v23 + 12) = 2080;
      sub_24B008890(v19, v18, &qword_27EFC8718);
      v24 = *(v18 + 16);
      v25 = *(v18 + 24);
      v26 = *(v22 + 48);
      *v21 = *v18;
      *(v21 + 16) = v24;
      *(v21 + 24) = v25;
      v20(v21 + v26, v18 + v26, v54);
      v27 = sub_24B2D53C4();
      v29 = v28;
      sub_24AFF8258(v19, &qword_27EFC8718);
      v30 = sub_24AFF321C(v27, v29, &v55);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_24AFD2000, v16, v17, "SessionLive: %s - %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v52, -1, -1);
      MEMORY[0x24C23D530](v23, -1, -1);
    }

    else
    {
      v33 = v0[10];

      sub_24AFF8258(v33, &qword_27EFC8718);
    }

    v34 = v0[12];
    sub_24B008890(v0[4], v34, &qword_27EFC8980);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8988);
    v36 = *(v35 - 8);
    v37 = (*(v36 + 48))(v34, 1, v35);
    v39 = v0[11];
    v38 = v0[12];
    if (v37 == 1)
    {
      sub_24AFF8258(v0[11], &qword_27EFC8718);
      sub_24AFF8258(v38, &qword_27EFC8980);
      v40 = 1;
    }

    else
    {
      v42 = v0[8];
      v41 = v0[9];
      v43 = v0[6];
      sub_24B008890(v0[11], v41, &qword_27EFC8718);
      v44 = *(v41 + 16);
      v45 = *(v41 + 24);
      v46 = *(v43 + 48);
      *v42 = *v41;
      *(v42 + 16) = v44;
      *(v42 + 24) = v45;
      v53(v42 + v46, v41 + v46, v54);
      sub_24B2D5704();
      sub_24AFF8258(v39, &qword_27EFC8718);
      (*(v36 + 8))(v38, v35);
      v40 = 0;
    }

    v47 = v0[5];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89B8);
    (*(*(v48 - 8) + 56))(v47, v40, 1, v48);
    sub_24AFF8258(v47, &qword_27EFC8998);
    v49 = swift_task_alloc();
    v0[23] = v49;
    *v49 = v0;
    v49[1] = sub_24B048CF0;
    v50 = v0[14];

    return sub_24B24B778(v50, 0, 0);
  }
}

uint64_t sub_24B04949C()
{
  v1[2] = v0;
  v2 = sub_24B2D2B24();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_24B2D2B34();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B0495B8, v0, 0);
}

uint64_t sub_24B0495B8()
{
  v12 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[9] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D8C90, &v11);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    sub_24B2D5394();
  }

  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D094A8], v0[3]);
  sub_24B2D2B14();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_24B04981C;
  v9 = v0[8];

  return MEMORY[0x28215FB08](v9);
}

uint64_t sub_24B04981C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_24B049AEC;
  }

  else
  {
    v7 = sub_24B0499A4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B0499A4()
{
  v8 = v0;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D8C90, &v7);
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24B049AEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B049B5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v2[4] = swift_task_alloc();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8918);
  v2[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8920);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8928);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86D0);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8930) - 8);
  v2[18] = v7;
  v2[19] = *(v7 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B049E04, v1, 0);
}

uint64_t sub_24B049E04()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8938);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  *(swift_task_alloc() + 16) = v2;
  v0[23] = type metadata accessor for SessionFriendStreamChange(0);
  (*(v4 + 104))(v3, *MEMORY[0x277D85778], v5);
  sub_24B2D5744();

  sub_24B008890(v2, v1, &qword_27EFC8930);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_24B049FB8;
  v8 = v0[6];

  return MEMORY[0x28215FAF0](v8, 0);
}

uint64_t sub_24B049FB8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_24B04A3D8;
  }

  else
  {
    v4 = sub_24B04A0E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B04A0E4()
{
  v1 = v0[21];
  v15 = v0[20];
  v17 = v0[18];
  v21 = v0[17];
  v22 = v0[22];
  v19 = v0[16];
  v20 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v16 = v0[9];
  v5 = v0[7];
  v6 = v0[4];
  v14 = v6;
  v18 = v0[2];
  sub_24B0552D4(&qword_27EFC8940, &qword_27EFC8918);
  sub_24B2D5F94();
  v7 = sub_24B2D56D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = v3;
  (*(v4 + 16))(v3, v2, v5);
  sub_24B008890(v1, v15, &qword_27EFC8930);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v16 + *(v17 + 80) + v9) & ~*(v17 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v4 + 32))(v11 + v9, v8, v5);
  sub_24B0391CC(v15, v11 + v10, &qword_27EFC8930);
  sub_24B00A9A4(0, 0, v14, &unk_24B2E1668, v11);

  (*(v4 + 8))(v2, v5);
  sub_24AFF8258(v1, &qword_27EFC8930);
  (*(v19 + 32))(v18, v21, v20);
  sub_24AFF8258(v22, &qword_27EFC8930);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24B04A3D8()
{
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  sub_24AFF8258(v0[21], &qword_27EFC8930);
  (*(v3 + 8))(v2, v4);
  sub_24AFF8258(v1, &qword_27EFC8930);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B04A508(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D2744();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B04A5C8, 0, 0);
}

uint64_t sub_24B04A5C8()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 16))(v1, v0[3], v0[4]);
  sub_24B04A654(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B04A654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_24B2D2884();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v38 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = sub_24B2D2744();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SessionFriendStreamChange(0);
  v43 = *(v18 - 8);
  v44 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  MEMORY[0x28223BE20](v22);
  v41 = &v38 - v25;
  v42 = a1;
  (*(v15 + 16))(v17, a1, v14);
  v26 = (*(v15 + 88))(v17, v14);
  if (v26 == *MEMORY[0x277D090C0])
  {
    (*(v15 + 96))(v17, v14);
    (*(v4 + 32))(v13, v17, v3);
    (*(v4 + 16))(v11, v13, v3);
    sub_24B04BE7C(v11, v24);
    (*(v15 + 8))(v42, v14);
    (*(v4 + 8))(v13, v3);
    v27 = v44;
    swift_storeEnumTagMultiPayload();
LABEL_6:
    v34 = v41;
    sub_24B055168(v24, v41, type metadata accessor for SessionFriendStreamChange);
    v35 = v34;
    v36 = v45;
    sub_24B055168(v35, v45, type metadata accessor for SessionFriendStreamChange);
    v32 = v36;
    v31 = 0;
    v33 = v27;
    return (*(v43 + 56))(v32, v31, 1, v33);
  }

  if (v26 == *MEMORY[0x277D090C8])
  {
    (*(v15 + 96))(v17, v14);
    v28 = v40;
    (*(v4 + 32))(v40, v17, v3);
    v29 = v39;
    (*(v4 + 16))(v39, v28, v3);
    sub_24B04BE7C(v29, v21);
    (*(v15 + 8))(v42, v14);
    (*(v4 + 8))(v28, v3);
    v27 = v44;
    swift_storeEnumTagMultiPayload();
    v24 = v21;
    goto LABEL_6;
  }

  v30 = *(v15 + 8);
  v30(v42, v14);
  v30(v17, v14);
  v31 = 1;
  v33 = v44;
  v32 = v45;
  return (*(v43 + 56))(v32, v31, 1, v33);
}

uint64_t sub_24B04ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8948);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for SessionFriendStreamChange(0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8930);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC86D8);
  v5[13] = swift_task_alloc();
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8918);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8950);
  v5[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8958);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B04AF50, 0, 0);
}

uint64_t sub_24B04AF50()
{
  v10 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[20] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000012, 0x800000024B2D8DE0, &v9);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: %s - willStartUpdatingFriends", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  else
  {
  }

  v0[21] = 0x800000024B2D8DE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8920);
  MEMORY[0x24C23C720]();
  sub_24B0552D4(&qword_27EFC8940, &qword_27EFC8918);
  sub_24B2D57B4();
  sub_24B2D5F64();
  sub_24B2D5F74();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B04B1F8;
  v7 = v0[13];

  return sub_24B24C13C(v7, 0, 0);
}

uint64_t sub_24B04B1F8()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_24B04B308, 0, 0);
  }

  return result;
}

uint64_t sub_24B04B308()
{
  v36 = v0;
  v1 = v0[13];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[12];
    v3 = v0[4];
    (*(v0[18] + 8))(v0[19], v0[17]);
    sub_24B008890(v3, v2, &qword_27EFC8930);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8938);
    v5 = *(v4 - 8);
    v6 = (*(v5 + 48))(v2, 1, v4);
    v7 = v0[12];
    if (v6 == 1)
    {
      sub_24AFF8258(v0[12], &qword_27EFC8930);
    }

    else
    {
      sub_24B2D5714();
      (*(v5 + 8))(v7, v4);
    }

    v21 = v0[1];

    return v21();
  }

  else
  {
    v9 = v0[9];
    v8 = v0[10];
    sub_24B055168(v1, v8, type metadata accessor for SessionFriendStreamChange);
    sub_24B0551D0(v8, v9, type metadata accessor for SessionFriendStreamChange);
    v10 = sub_24B2D3164();
    v11 = sub_24B2D5904();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[21];
      v14 = v0[8];
      v13 = v0[9];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_24AFF321C(0xD000000000000012, v12, &v35);
      *(v15 + 12) = 2080;
      sub_24B0551D0(v13, v14, type metadata accessor for SessionFriendStreamChange);
      v17 = sub_24B2D53C4();
      v19 = v18;
      sub_24B055238(v13, type metadata accessor for SessionFriendStreamChange);
      v20 = sub_24AFF321C(v17, v19, &v35);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_24AFD2000, v10, v11, "SessionLive: %s - %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v16, -1, -1);
      MEMORY[0x24C23D530](v15, -1, -1);
    }

    else
    {
      v23 = v0[9];

      sub_24B055238(v23, type metadata accessor for SessionFriendStreamChange);
    }

    v24 = v0[11];
    sub_24B008890(v0[4], v24, &qword_27EFC8930);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8938);
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v24, 1, v25);
    v29 = v0[10];
    v28 = v0[11];
    if (v27 == 1)
    {
      sub_24B055238(v0[10], type metadata accessor for SessionFriendStreamChange);
      sub_24AFF8258(v28, &qword_27EFC8930);
      v30 = 1;
    }

    else
    {
      sub_24B0551D0(v0[10], v0[8], type metadata accessor for SessionFriendStreamChange);
      sub_24B2D5704();
      sub_24B055238(v29, type metadata accessor for SessionFriendStreamChange);
      (*(v26 + 8))(v28, v25);
      v30 = 0;
    }

    v31 = v0[5];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8960);
    (*(*(v32 - 8) + 56))(v31, v30, 1, v32);
    sub_24AFF8258(v31, &qword_27EFC8948);
    v33 = swift_task_alloc();
    v0[22] = v33;
    *v33 = v0;
    v33[1] = sub_24B04B1F8;
    v34 = v0[13];

    return sub_24B24C13C(v34, 0, 0);
  }
}

uint64_t sub_24B04B8F4()
{
  v21 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[19] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    v0[10] = sub_24B061CC4(1);
    v0[11] = v6;
    v0[12] = v7;
    v0[13] = v8;
    sub_24B054B50();
    v9 = sub_24B2D5AA4();
    v11 = v10;

    v19 = v9;
    v20 = v11;
    v0[14] = sub_24B061D60(1uLL, 0xD000000000000016, 0x800000024B2D8CB0);
    v0[15] = v12;
    v0[16] = v13;
    v0[17] = v14;
    sub_24B054BA4();
    sub_24B2D5424();

    v15 = sub_24AFF321C(v19, v20, &v18);

    *(v4 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[20] = v16;
  *v16 = v0;
  v16[1] = sub_24B04BB54;

  return MEMORY[0x28215FAD8]();
}

uint64_t sub_24B04BB54()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 144);

    return MEMORY[0x2822009F8](sub_24B04BC98, v6, 0);
  }
}

uint64_t sub_24B04BC98()
{
  v20 = v0;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136315138;
    v0[2] = sub_24B061CC4(1);
    v0[3] = v5;
    v0[4] = v6;
    v0[5] = v7;
    sub_24B054B50();
    v8 = sub_24B2D5AA4();
    v10 = v9;

    v18 = v8;
    v19 = v10;
    v0[6] = sub_24B061D60(1uLL, 0xD000000000000016, 0x800000024B2D8CB0);
    v0[7] = v11;
    v0[8] = v12;
    v0[9] = v13;
    sub_24B054BA4();
    sub_24B2D5424();

    v14 = sub_24AFF321C(v18, v19, &v17);

    *(v3 + 4) = v14;
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24B04BE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D2664();
  v23 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = sub_24B2D28E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D2864();
  sub_24B2D28A4();
  v24 = a2;
  v14 = a1;
  v15 = v23;
  sub_24B2D16E4();
  (*(v11 + 8))(v13, v10);
  sub_24B2D2844();
  (*(v15 + 16))(v7, v9, v4);
  v16 = (*(v15 + 88))(v7, v4);
  if (v16 == *MEMORY[0x277D09028])
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x277D09030])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x277D09018])
  {
    v17 = 2;
  }

  else if (v16 == *MEMORY[0x277D09020])
  {
    v17 = 3;
  }

  else
  {
    if (v16 != *MEMORY[0x277D09010])
    {
      sub_24B054CFC();
      swift_allocError();
      swift_willThrow();
      v20 = sub_24B2D2884();
      (*(*(v20 - 8) + 8))(v14, v20);
      v21 = *(v15 + 8);
      v21(v9, v4);
      v21(v7, v4);
      v22 = sub_24B2D1704();
      return (*(*(v22 - 8) + 8))(v24, v22);
    }

    v17 = 4;
  }

  (*(v15 + 8))(v9, v4);
  *(v24 + *(type metadata accessor for SessionFriend(0) + 20)) = v17;
  sub_24B2D2874();
  sub_24B2D2854();
  v18 = sub_24B2D2884();
  return (*(*(v18 - 8) + 8))(v14, v18);
}

uint64_t sub_24B04C230()
{
  v1[18] = v0;
  v2 = sub_24B2D2664();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = sub_24B2D28E4();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = type metadata accessor for SessionFriend(0);
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v5 = sub_24B2D2884();
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B04C434, v0, 0);
}

uint64_t sub_24B04C434()
{
  v21 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[35] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    v0[10] = sub_24B061CC4(1);
    v0[11] = v6;
    v0[12] = v7;
    v0[13] = v8;
    sub_24B054B50();
    v9 = sub_24B2D5AA4();
    v11 = v10;

    v19 = v9;
    v20 = v11;
    v0[14] = sub_24B061D60(1uLL, 0xD00000000000001CLL, 0x800000024B2D8B40);
    v0[15] = v12;
    v0[16] = v13;
    v0[17] = v14;
    sub_24B054BA4();
    sub_24B2D5424();

    v15 = sub_24AFF321C(v19, v20, &v18);

    *(v4 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = sub_24B04C694;

  return MEMORY[0x28215FA48]();
}

uint64_t sub_24B04C694(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[18];

    return MEMORY[0x2822009F8](sub_24B04C83C, v6, 0);
  }
}

uint64_t sub_24B04C83C()
{
  v72 = v0;
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  v64 = v0;
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v69 = v4;
    *v3 = 136315138;
    v0[2] = sub_24B061CC4(1);
    v0[3] = v5;
    v0[4] = v6;
    v0[5] = v7;
    sub_24B054B50();
    v8 = sub_24B2D5AA4();
    v10 = v9;

    v70 = v8;
    v71 = v10;
    v0[6] = sub_24B061D60(1uLL, 0xD00000000000001CLL, 0x800000024B2D8B40);
    v0[7] = v11;
    v0[8] = v12;
    v0[9] = v13;
    sub_24B054BA4();
    sub_24B2D5424();

    v14 = sub_24AFF321C(v70, v71, &v69);

    *(v3 + 4) = v14;
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v15 = v0[37];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v0[32];
    v55 = v0[26];
    v56 = v0[27];
    v18 = v0[20];
    v19 = *(v17 + 16);
    v17 += 16;
    v63 = v19;
    v20 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v61 = (v0[24] + 8);
    v62 = *(v17 + 56);
    v60 = (v18 + 32);
    v59 = (v18 + 88);
    v58 = *MEMORY[0x277D09028];
    v53 = *MEMORY[0x277D09018];
    v54 = *MEMORY[0x277D09030];
    v51 = *MEMORY[0x277D09010];
    v52 = *MEMORY[0x277D09020];
    v57 = (v17 - 8);
    v50 = (v18 + 8);
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      v67 = v16;
      v68 = v21;
      v23 = v0[33];
      v22 = v0[34];
      v24 = v0[31];
      v25 = v0[25];
      v26 = v0[22];
      v65 = v0[23];
      v66 = v20;
      v27 = v0[21];
      v28 = v0[19];
      v63(v22);
      (v63)(v23, v22, v24);
      sub_24B2D2864();
      sub_24B2D28A4();
      sub_24B2D16E4();
      (*v61)(v25, v65);
      sub_24B2D2844();
      (*v60)(v27, v26, v28);
      v29 = (*v59)(v27, v28);
      if (v29 == v58)
      {
        break;
      }

      v21 = v68;
      v0 = v64;
      if (v29 == v54)
      {
        v30 = 1;
        goto LABEL_15;
      }

      if (v29 == v53)
      {
        v30 = 2;
        goto LABEL_15;
      }

      if (v29 == v52)
      {
        v30 = 3;
        goto LABEL_15;
      }

      if (v29 == v51)
      {
        v30 = 4;
        goto LABEL_15;
      }

      v41 = v64[34];
      v42 = v64[31];
      v43 = v64[28];
      v44 = v64[21];
      v45 = v64[19];
      v46 = *v57;
      (*v57)(v64[33], v42);
      v46(v41, v42);
      (*v50)(v44, v45);
      v47 = sub_24B2D1704();
      (*(*(v47 - 8) + 8))(v43, v47);
LABEL_20:
      v20 = v66 + v62;
      v16 = v67 - 1;
      if (v67 == 1)
      {

        goto LABEL_24;
      }
    }

    v30 = 0;
    v21 = v68;
    v0 = v64;
LABEL_15:
    v32 = v0[33];
    v31 = v0[34];
    v34 = v0[30];
    v33 = v0[31];
    v36 = v0[28];
    v35 = v0[29];
    *(v36 + *(v55 + 20)) = v30;
    sub_24B2D2874();
    sub_24B2D2854();
    v37 = *v57;
    (*v57)(v32, v33);
    v37(v31, v33);
    sub_24B055168(v36, v35, type metadata accessor for SessionFriend);
    sub_24B055168(v35, v34, type metadata accessor for SessionFriend);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_24B006984(0, v21[2] + 1, 1, v21);
    }

    v39 = v21[2];
    v38 = v21[3];
    if (v39 >= v38 >> 1)
    {
      v21 = sub_24B006984(v38 > 1, v39 + 1, 1, v21);
    }

    v40 = v0[30];
    v21[2] = v39 + 1;
    sub_24B055168(v40, v21 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v39, type metadata accessor for SessionFriend);
    goto LABEL_20;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_24:

  v48 = v0[1];

  return v48(v21);
}

uint64_t sub_24B04CE70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 360) = a4;
  *(v5 + 168) = a3;
  *(v5 + 176) = v4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8858);
  *(v5 + 184) = v6;
  *(v5 + 192) = *(v6 - 8);
  *(v5 + 200) = swift_task_alloc();
  v7 = sub_24B2D2734();
  *(v5 + 208) = v7;
  *(v5 + 216) = *(v7 - 8);
  *(v5 + 224) = swift_task_alloc();
  v8 = sub_24B2D2504();
  *(v5 + 232) = v8;
  *(v5 + 240) = *(v8 - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  v9 = sub_24B2D2784();
  *(v5 + 264) = v9;
  *(v5 + 272) = *(v9 - 8);
  *(v5 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  *(v5 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8860);
  *(v5 + 296) = swift_task_alloc();
  v10 = sub_24B2D27C4();
  *(v5 + 304) = v10;
  *(v5 + 312) = *(v10 - 8);
  *(v5 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B04D130, v4, 0);
}

uint64_t sub_24B04D130()
{
  v36 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  *(v0 + 328) = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v33 = v5;
    *v4 = 136315138;
    *(v0 + 80) = sub_24B061CC4(1);
    *(v0 + 88) = v6;
    *(v0 + 96) = v7;
    *(v0 + 104) = v8;
    sub_24B054B50();
    v9 = sub_24B2D5AA4();
    v11 = v10;

    v34 = v9;
    v35 = v11;
    *(v0 + 112) = sub_24B061D60(1uLL, 0xD00000000000002CLL, 0x800000024B2D8BB0);
    *(v0 + 120) = v12;
    *(v0 + 128) = v13;
    *(v0 + 136) = v14;
    sub_24B054BA4();
    sub_24B2D5424();

    v15 = sub_24AFF321C(v34, v35, &v33);

    *(v4 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v16 = *(v0 + 288);
  v17 = *(v0 + 160);
  v18 = sub_24B0467B8(*(v0 + 152));
  *(v0 + 336) = v18;
  sub_24B008890(v17, v16, &qword_27EFC7880);
  v19 = sub_24B2D1704();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v16, 1, v19) == 1)
  {
    sub_24AFF8258(*(v0 + 288), &qword_27EFC7880);
    v21 = 1;
  }

  else
  {
    v22 = *(v0 + 288);
    sub_24B2D16F4();
    sub_24B054BF8(MEMORY[0x277D84F90]);
    sub_24B2D28C4();
    (*(v20 + 8))(v22, v19);
    v21 = 0;
  }

  v23 = *(v0 + 296);
  v24 = *(v0 + 168);
  v25 = sub_24B2D28E4();
  (*(*(v25 - 8) + 56))(v23, v21, 1, v25);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v26 = MEMORY[0x277D09108];
      goto LABEL_20;
    }

    if (v24 == 3)
    {
      return sub_24B2D5D94();
    }
  }

  else
  {
    if (!v24)
    {
      v26 = MEMORY[0x277D09110];
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      v26 = MEMORY[0x277D09118];
LABEL_20:
      (*(*(v0 + 272) + 104))(*(v0 + 280), *v26, *(v0 + 264));
      v28 = swift_task_alloc();
      *(v0 + 344) = v28;
      *v28 = v0;
      v28[1] = sub_24B04D624;
      v29 = *(v0 + 320);
      v30 = *(v0 + 296);
      v31 = *(v0 + 280);
      v32 = *(v0 + 360);

      return MEMORY[0x28215FAD0](v29, v18, v30, v31, v32);
    }
  }

  *(v0 + 144) = *(v0 + 168);

  return sub_24B2D6024();
}

uint64_t sub_24B04D624()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  *(*v1 + 352) = v0;

  (*(v5 + 8))(v4, v6);
  sub_24AFF8258(v3, &qword_27EFC8860);
  v7 = *(v2 + 176);
  if (v0)
  {
    v8 = sub_24B04DBFC;
  }

  else
  {
    v8 = sub_24B04D7FC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24B04D7FC()
{
  v51 = v0;
  v1 = v0[32];
  v43 = v0[31];
  v2 = v0[30];
  v40 = v0[29];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  sub_24B2D27B4();
  sub_24B2D2724();
  (*(v3 + 8))(v4, v5);
  sub_24B2D1244();
  (*(v7 + 8))(v6, v8);
  (*(v2 + 16))(v43, v1, v40);
  v9 = sub_24B2D3164();
  v10 = sub_24B2D5934();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[30];
    v46 = v0[31];
    v41 = v0[29];
    v12 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v12 = 136315394;
    v0[2] = sub_24B061CC4(1);
    v0[3] = v13;
    v0[4] = v14;
    v0[5] = v15;
    sub_24B054B50();
    v16 = sub_24B2D5AA4();
    v18 = v17;

    v49 = v16;
    v50 = v18;
    v0[6] = sub_24B061D60(1uLL, 0xD00000000000002CLL, 0x800000024B2D8BB0);
    v0[7] = v19;
    v0[8] = v20;
    v0[9] = v21;
    sub_24B054BA4();
    sub_24B2D5424();

    v22 = sub_24AFF321C(v49, v50, &v48);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2080;
    sub_24B054D70(&qword_27EFC8878, 255, MEMORY[0x277CC95F0]);
    v23 = v46;
    v24 = sub_24B2D5FA4();
    v26 = v25;
    v47 = *(v11 + 8);
    v47(v23, v41);
    v27 = sub_24AFF321C(v24, v26, &v48);

    *(v12 + 14) = v27;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SessionLive: didReceive%s - %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v44, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  else
  {
    v29 = v0[30];
    v28 = v0[31];
    v30 = v0[29];

    v47 = *(v29 + 8);
    v47(v28, v30);
  }

  v32 = v0[39];
  v31 = v0[40];
  v33 = v0[38];
  v34 = v0[32];
  v35 = v0[29];
  v36 = sub_24B2D24B4();
  v42 = v37;
  v45 = v36;
  v47(v34, v35);
  (*(v32 + 8))(v31, v33);

  v38 = v0[1];

  return v38(v45, v42);
}

uint64_t sub_24B04DBFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B04DCC4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 320) = a3;
  *(v4 + 144) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8858);
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();
  v6 = sub_24B2D2734();
  *(v4 + 192) = v6;
  *(v4 + 200) = *(v6 - 8);
  *(v4 + 208) = swift_task_alloc();
  v7 = sub_24B2D2504();
  *(v4 + 216) = v7;
  *(v4 + 224) = *(v7 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  *(v4 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8860);
  *(v4 + 256) = swift_task_alloc();
  v8 = sub_24B2D27C4();
  *(v4 + 264) = v8;
  *(v4 + 272) = *(v8 - 8);
  *(v4 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B04DF28, v3, 0);
}

uint64_t sub_24B04DF28()
{
  v33 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  *(v0 + 288) = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136315138;
    *(v0 + 80) = sub_24B061CC4(1);
    *(v0 + 88) = v6;
    *(v0 + 96) = v7;
    *(v0 + 104) = v8;
    sub_24B054B50();
    v9 = sub_24B2D5AA4();
    v11 = v10;

    v31 = v9;
    v32 = v11;
    *(v0 + 112) = sub_24B061D60(1uLL, 0xD000000000000029, 0x800000024B2D8AF0);
    *(v0 + 120) = v12;
    *(v0 + 128) = v13;
    *(v0 + 136) = v14;
    sub_24B054BA4();
    sub_24B2D5424();

    v15 = sub_24AFF321C(v31, v32, &v30);

    *(v4 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v16 = *(v0 + 248);
  v17 = *(v0 + 152);
  v18 = sub_24B0467B8(*(v0 + 144));
  *(v0 + 296) = v18;
  sub_24B008890(v17, v16, &qword_27EFC7880);
  v19 = sub_24B2D1704();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v16, 1, v19) == 1)
  {
    sub_24AFF8258(*(v0 + 248), &qword_27EFC7880);
    v21 = 1;
  }

  else
  {
    v22 = *(v0 + 248);
    sub_24B2D16F4();
    sub_24B054BF8(MEMORY[0x277D84F90]);
    sub_24B2D28C4();
    (*(v20 + 8))(v22, v19);
    v21 = 0;
  }

  v23 = *(v0 + 256);
  v24 = sub_24B2D28E4();
  (*(*(v24 - 8) + 56))(v23, v21, 1, v24);
  v25 = swift_task_alloc();
  *(v0 + 304) = v25;
  *v25 = v0;
  v25[1] = sub_24B04E2F8;
  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 320);

  return MEMORY[0x28215FA38](v26, v18, v27, v28);
}

uint64_t sub_24B04E2F8()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  *(*v1 + 312) = v0;

  sub_24AFF8258(v3, &qword_27EFC8860);

  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_24B04E878;
  }

  else
  {
    v5 = sub_24B04E474;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24B04E474()
{
  v50 = v0;
  v1 = v0[30];
  v44 = v0[29];
  v2 = v0[28];
  v42 = v0[27];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  sub_24B2D27B4();
  sub_24B2D2724();
  (*(v3 + 8))(v4, v5);
  sub_24B2D1244();
  (*(v7 + 8))(v6, v8);
  (*(v2 + 16))(v44, v1, v42);
  v9 = sub_24B2D3164();
  v10 = sub_24B2D5934();
  if (os_log_type_enabled(v9, v10))
  {
    v45 = v0[33];
    v46 = v0[35];
    v41 = v0[30];
    v43 = v0[34];
    v11 = v0[28];
    v38 = v0[27];
    v39 = v0[29];
    v12 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47 = v40;
    *v12 = 136315394;
    v0[2] = sub_24B061CC4(1);
    v0[3] = v13;
    v0[4] = v14;
    v0[5] = v15;
    sub_24B054B50();
    v16 = sub_24B2D5AA4();
    v18 = v17;

    v48 = v16;
    v49 = v18;
    v0[6] = sub_24B061D60(1uLL, 0xD000000000000029, 0x800000024B2D8AF0);
    v0[7] = v19;
    v0[8] = v20;
    v0[9] = v21;
    sub_24B054BA4();
    sub_24B2D5424();

    v22 = sub_24AFF321C(v48, v49, &v47);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2080;
    sub_24B054D70(&qword_27EFC8878, 255, MEMORY[0x277CC95F0]);
    v23 = sub_24B2D5FA4();
    v25 = v24;
    v26 = *(v11 + 8);
    v26(v39, v38);
    v27 = sub_24AFF321C(v23, v25, &v47);

    *(v12 + 14) = v27;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SessionLive: didReceive%s - %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v40, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    v26(v41, v38);
    (*(v43 + 8))(v46, v45);
  }

  else
  {
    v29 = v0[34];
    v28 = v0[35];
    v30 = v0[33];
    v32 = v0[29];
    v31 = v0[30];
    v33 = v0[27];
    v34 = v0[28];

    v35 = *(v34 + 8);
    v35(v32, v33);
    v35(v31, v33);
    (*(v29 + 8))(v28, v30);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_24B04E878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B04E92C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8858);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_24B2D2734();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = sub_24B2D2504();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8860);
  v3[32] = swift_task_alloc();
  v7 = sub_24B2D28E4();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v8 = sub_24B2D27C4();
  v3[36] = v8;
  v3[37] = *(v8 - 8);
  v3[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B04EBE8, v2, 0);
}

uint64_t sub_24B04EBE8()
{
  v31 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[39] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315138;
    v0[10] = sub_24B061CC4(1);
    v0[11] = v6;
    v0[12] = v7;
    v0[13] = v8;
    sub_24B054B50();
    v9 = sub_24B2D5AA4();
    v11 = v10;

    v29 = v9;
    v30 = v11;
    v0[14] = sub_24B061D60(1uLL, 0xD000000000000019, 0x800000024B2D8C70);
    v0[15] = v12;
    v0[16] = v13;
    v0[17] = v14;
    sub_24B054BA4();
    sub_24B2D5424();

    v15 = sub_24AFF321C(v29, v30, &v28);

    *(v4 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v16 = v0[31];
  v17 = v0[19];
  sub_24B2D16F4();
  v18 = MEMORY[0x277D84F90];
  sub_24B054BF8(MEMORY[0x277D84F90]);
  sub_24B2D28C4();
  sub_24B008890(v17, v16, &qword_27EFC7880);
  v19 = sub_24B2D1704();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v16, 1, v19) == 1)
  {
    sub_24AFF8258(v0[31], &qword_27EFC7880);
    v21 = 1;
  }

  else
  {
    v22 = v0[31];
    sub_24B2D16F4();
    sub_24B054BF8(v18);
    sub_24B2D28C4();
    (*(v20 + 8))(v22, v19);
    v21 = 0;
  }

  (*(v0[34] + 56))(v0[32], v21, 1, v0[33]);
  v23 = swift_task_alloc();
  v0[40] = v23;
  *v23 = v0;
  v23[1] = sub_24B04EFC8;
  v24 = v0[38];
  v25 = v0[35];
  v26 = v0[32];

  return MEMORY[0x28215FAE8](v24, v25, v26, 0);
}

uint64_t sub_24B04EFC8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 264);
  v6 = *(*v1 + 256);
  *(*v1 + 328) = v0;

  sub_24AFF8258(v6, &qword_27EFC8860);
  (*(v4 + 8))(v3, v5);
  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_24B04F584;
  }

  else
  {
    v8 = sub_24B04F184;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24B04F184()
{
  v51 = v0;
  v1 = v0[30];
  v43 = v0[29];
  v2 = v0[28];
  v40 = v0[27];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  sub_24B2D27B4();
  sub_24B2D2724();
  (*(v3 + 8))(v4, v5);
  sub_24B2D1244();
  (*(v7 + 8))(v6, v8);
  (*(v2 + 16))(v43, v1, v40);
  v9 = sub_24B2D3164();
  v10 = sub_24B2D5934();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[28];
    v46 = v0[29];
    v41 = v0[27];
    v12 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v12 = 136315394;
    v0[2] = sub_24B061CC4(1);
    v0[3] = v13;
    v0[4] = v14;
    v0[5] = v15;
    sub_24B054B50();
    v16 = sub_24B2D5AA4();
    v18 = v17;

    v49 = v16;
    v50 = v18;
    v0[6] = sub_24B061D60(1uLL, 0xD000000000000019, 0x800000024B2D8C70);
    v0[7] = v19;
    v0[8] = v20;
    v0[9] = v21;
    sub_24B054BA4();
    sub_24B2D5424();

    v22 = sub_24AFF321C(v49, v50, &v48);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2080;
    sub_24B054D70(&qword_27EFC8878, 255, MEMORY[0x277CC95F0]);
    v23 = v46;
    v24 = sub_24B2D5FA4();
    v26 = v25;
    v47 = *(v11 + 8);
    v47(v23, v41);
    v27 = sub_24AFF321C(v24, v26, &v48);

    *(v12 + 14) = v27;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SessionLive: didReceive%s - %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v44, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  else
  {
    v29 = v0[28];
    v28 = v0[29];
    v30 = v0[27];

    v47 = *(v29 + 8);
    v47(v28, v30);
  }

  v32 = v0[37];
  v31 = v0[38];
  v33 = v0[36];
  v34 = v0[30];
  v35 = v0[27];
  v36 = sub_24B2D24B4();
  v42 = v37;
  v45 = v36;
  v47(v34, v35);
  (*(v32 + 8))(v31, v33);

  v38 = v0[1];

  return v38(v45, v42);
}

uint64_t sub_24B04F584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B04F64C(uint64_t a1, char a2)
{
  *(v3 + 160) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_24B2D1704();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *(type metadata accessor for SessionFollowerState(0) - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B04F774, v2, 0);
}

uint64_t sub_24B04F774()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[10] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall friendsFollowingMyLocation", v4, 2u);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v5 = v0[3];

  v0[11] = *(v5 + 112);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_24B04F8D0;

  return MEMORY[0x28215FA40]();
}

uint64_t sub_24B04F8D0(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[3];

    return MEMORY[0x2822009F8](sub_24B04FA2C, v6, 0);
  }
}

uint64_t sub_24B04FA2C()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive friendsFollowingMyLocation", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v4 = sub_24B2D3164();
  v5 = sub_24B2D5934();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24AFD2000, v4, v5, "SessionLive: willCall friendsWithPendingOffers", v6, 2u);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_24B04FBA8;

  return MEMORY[0x28215FB28]();
}

uint64_t sub_24B04FBA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_24B05038C;
  }

  else
  {
    v6 = sub_24B04FCDC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24B04FCDC()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive friendsWithPendingOffers", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v4 = sub_24B2D3164();
  v5 = sub_24B2D5934();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24AFD2000, v4, v5, "SessionLive: willCall friendsRequestedMyLocation", v6, 2u);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_24B04FE58;

  return MEMORY[0x28215FA48]();
}

uint64_t sub_24B04FE58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_24B050414;
  }

  else
  {
    v6 = sub_24B04FF8C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

unint64_t sub_24B04FF8C()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive friendsRequestedMyLocation", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v4 = v0[2];

  v5 = sub_24B19268C(MEMORY[0x277D84F90]);
  v6 = *(v4 + 16);
  if (v6)
  {
    v34 = v0[7];
    v7 = v0[5];
    v8 = v0[2] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v35 = *(v7 + 72);
    v36 = (v7 + 16);
    v33 = (v7 + 8);
    do
    {
      v10 = v0[8];
      v9 = v0[9];
      v11 = v0[6];
      v12 = v0[4];
      sub_24B0504A4(v8, v0[13], v0[18], v9);
      v13 = *v36;
      (*v36)(v11, v8, v12);
      sub_24B0551D0(v9, v10, type metadata accessor for SessionFollowerState);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v5;
      result = sub_24B181150(v11);
      v17 = v5[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v21 = v16;
      if (v5[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = result;
          sub_24B1CCBA8();
          result = v31;
          v5 = v37;
        }
      }

      else
      {
        v22 = v0[6];
        sub_24B1C2F2C(v20, isUniquelyReferenced_nonNull_native);
        result = sub_24B181150(v22);
        if ((v21 & 1) != (v23 & 1))
        {

          return sub_24B2D6054();
        }
      }

      v25 = v0[8];
      v24 = v0[9];
      v26 = v0[6];
      v27 = v0[4];
      if (v21)
      {
        sub_24B054DB8(v0[8], v5[7] + *(v34 + 72) * result, type metadata accessor for SessionFollowerState);
        (*v33)(v26, v27);
        sub_24B055238(v24, type metadata accessor for SessionFollowerState);
      }

      else
      {
        v5[(result >> 6) + 8] |= 1 << result;
        v28 = result;
        v13(v5[6] + result * v35, v26, v27);
        sub_24B055168(v25, v5[7] + *(v34 + 72) * v28, type metadata accessor for SessionFollowerState);
        (*v33)(v26, v27);
        result = sub_24B055238(v24, type metadata accessor for SessionFollowerState);
        v29 = v5[2];
        v19 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v19)
        {
          goto LABEL_23;
        }

        v5[2] = v30;
      }

      v8 += v35;
      --v6;
    }

    while (v6);
  }

  v32 = v0[1];

  return v32(v5);
}

uint64_t sub_24B05038C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B050414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B0504A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v76 = a3;
  v82 = a4;
  v79 = sub_24B2D24A4();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v72 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88A0);
  MEMORY[0x28223BE20](v74);
  v75 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v69 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v78 = &v69 - v14;
  MEMORY[0x28223BE20](v13);
  v81 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88A8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  v22 = sub_24B2D2884();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v69 - v27;
  v84[0] = a2;

  sub_24B031620(v29);
  v83 = a1;
  sub_24B26DE6C(sub_24B0554FC, v84[0], v21);

  v30 = *(v23 + 48);
  if (v30(v21, 1, v22) != 1)
  {
    v37 = *(v23 + 32);
    v76 = v28;
    v37(v28, v21, v22);
    v70 = v23;
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v38 = sub_24B2D3184();
    __swift_project_value_buffer(v38, qword_27EFE4418);
    v39 = sub_24B2D3164();
    v40 = sub_24B2D5934();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v77;
    v43 = v75;
    v71 = v22;
    if (v41)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v84[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_24AFF321C(0xD00000000000006ELL, 0x800000024B2D8BE0, v84);
      _os_log_impl(&dword_24AFD2000, v39, v40, "SessionLive: %s - Friend is following my location", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x24C23D530](v45, -1, -1);
      MEMORY[0x24C23D530](v44, -1, -1);
    }

    sub_24B2D2854();
    v46 = sub_24B2D3164();
    v47 = sub_24B2D5934();
    v48 = v42;
    if (os_log_type_enabled(v46, v47))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v84[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_24AFF321C(0xD00000000000006ELL, 0x800000024B2D8BE0, v84);
      _os_log_impl(&dword_24AFD2000, v46, v47, "SessionLive: %s - ExpiryDate exist for groupID", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C23D530](v50, -1, -1);
      MEMORY[0x24C23D530](v49, -1, -1);
    }

    v51 = v80;
    sub_24B2D2334();
    v52 = *(v42 + 56);
    v53 = v79;
    v52(v51, 0, 1, v79);
    v54 = *(v74 + 48);
    v55 = v81;
    sub_24B008890(v81, v43, &qword_27EFC8450);
    sub_24B008890(v51, v43 + v54, &qword_27EFC8450);
    v56 = *(v48 + 48);
    if (v56(v43, 1, v53) == 1)
    {
      sub_24AFF8258(v51, &qword_27EFC8450);
      if (v56(v43 + v54, 1, v53) == 1)
      {
        sub_24AFF8258(v43, &qword_27EFC8450);
LABEL_27:
        v63 = v78;
        v52(v78, 1, 1, v53);
        goto LABEL_28;
      }
    }

    else
    {
      v62 = v73;
      sub_24B008890(v43, v73, &qword_27EFC8450);
      if (v56(v43 + v54, 1, v53) != 1)
      {
        v64 = v43 + v54;
        v65 = v72;
        (*(v48 + 32))(v72, v64, v53);
        sub_24B054D70(&qword_27EFC88B0, 255, MEMORY[0x277CC9578]);
        LODWORD(v74) = sub_24B2D52A4();
        v66 = *(v48 + 8);
        v66(v65, v53);
        sub_24AFF8258(v80, &qword_27EFC8450);
        v66(v62, v53);
        sub_24AFF8258(v43, &qword_27EFC8450);
        if (v74)
        {
          goto LABEL_27;
        }

LABEL_25:
        v63 = v78;
        sub_24B008890(v55, v78, &qword_27EFC8450);
LABEL_28:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
        sub_24B008890(v63, v82, &qword_27EFC8450);
        v67 = v76;
        sub_24B2D2874();
        sub_24AFF8258(v63, &qword_27EFC8450);
        sub_24AFF8258(v55, &qword_27EFC8450);
        (*(v70 + 8))(v67, v71);
        goto LABEL_29;
      }

      sub_24AFF8258(v80, &qword_27EFC8450);
      (*(v48 + 8))(v62, v53);
    }

    sub_24AFF8258(v43, &qword_27EFC88A0);
    goto LABEL_25;
  }

  v31 = sub_24AFF8258(v21, &qword_27EFC88A8);
  MEMORY[0x28223BE20](v31);
  *(&v69 - 2) = a1;
  sub_24B26DE6C(sub_24B054D50, v76, v19);
  if (v30(v19, 1, v22) == 1)
  {
    sub_24AFF8258(v19, &qword_27EFC88A8);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v32 = sub_24B2D3184();
    __swift_project_value_buffer(v32, qword_27EFE4418);
    v33 = sub_24B2D3164();
    v34 = sub_24B2D5934();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v84[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_24AFF321C(0xD00000000000006ELL, 0x800000024B2D8BE0, v84);
      _os_log_impl(&dword_24AFD2000, v33, v34, "SessionLive: %s notShared", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x24C23D530](v36, -1, -1);
      MEMORY[0x24C23D530](v35, -1, -1);
    }
  }

  else
  {
    (*(v23 + 32))(v26, v19, v22);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v57 = sub_24B2D3184();
    __swift_project_value_buffer(v57, qword_27EFE4418);
    v58 = sub_24B2D3164();
    v59 = sub_24B2D5934();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v84[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_24AFF321C(0xD00000000000006ELL, 0x800000024B2D8BE0, v84);
      _os_log_impl(&dword_24AFD2000, v58, v59, "SessionLive: %s - Friend requested my location", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x24C23D530](v61, -1, -1);
      MEMORY[0x24C23D530](v60, -1, -1);
    }

    sub_24B2D2874();
    (*(v23 + 8))(v26, v22);
  }

LABEL_29:
  type metadata accessor for SessionFollowerState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24B05107C()
{
  v0 = sub_24B2D1704();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D28E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D2864();
  sub_24B2D28A4();
  sub_24B2D16E4();
  (*(v5 + 8))(v7, v4);
  sub_24B054D70(&qword_27EFC7E90, 255, MEMORY[0x277D08BF8]);
  v8 = sub_24B2D52A4();
  (*(v1 + 8))(v3, v0);
  return v8 & 1;
}

uint64_t sub_24B05125C(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_24B2D1704();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *(type metadata accessor for SessionFollowingState(0) - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B051384, v2, 0);
}

uint64_t sub_24B051384()
{
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[10] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall friendsSharingLocationsWithMe", v4, 2u);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v5 = v0[3];

  v0[11] = *(v5 + 112);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_24B0514E0;

  return MEMORY[0x28215FB60]();
}

uint64_t sub_24B0514E0(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[3];

    return MEMORY[0x2822009F8](sub_24B05163C, v6, 0);
  }
}

uint64_t sub_24B05163C()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive friendsSharingLocationsWithMe", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v4 = sub_24B2D3164();
  v5 = sub_24B2D5934();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24AFD2000, v4, v5, "SessionLive: willCall friendsRequestedToShareLocationWithMe", v6, 2u);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_24B0517B8;

  return MEMORY[0x28215FB88]();
}

uint64_t sub_24B0517B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_24B051CDC;
  }

  else
  {
    v6 = sub_24B0518EC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

unint64_t sub_24B0518EC()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive friendsRequestedToShareLocationWithMe", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v4 = v0[2];

  v5 = sub_24B192470(MEMORY[0x277D84F90]);
  v6 = *(v4 + 16);
  if (v6)
  {
    v34 = v0[7];
    v7 = v0[5];
    v8 = v0[2] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v35 = *(v7 + 72);
    v36 = (v7 + 16);
    v33 = (v7 + 8);
    do
    {
      v10 = v0[8];
      v9 = v0[9];
      v11 = v0[6];
      v12 = v0[4];
      sub_24B051D64(v8, v0[13], v0[15], v9);
      v13 = *v36;
      (*v36)(v11, v8, v12);
      sub_24B0551D0(v9, v10, type metadata accessor for SessionFollowingState);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v5;
      result = sub_24B181150(v11);
      v17 = v5[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v21 = v16;
      if (v5[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = result;
          sub_24B1CC87C();
          result = v31;
          v5 = v37;
        }
      }

      else
      {
        v22 = v0[6];
        sub_24B1C2A8C(v20, isUniquelyReferenced_nonNull_native);
        result = sub_24B181150(v22);
        if ((v21 & 1) != (v23 & 1))
        {

          return sub_24B2D6054();
        }
      }

      v25 = v0[8];
      v24 = v0[9];
      v26 = v0[6];
      v27 = v0[4];
      if (v21)
      {
        sub_24B054DB8(v0[8], v5[7] + *(v34 + 72) * result, type metadata accessor for SessionFollowingState);
        (*v33)(v26, v27);
        sub_24B055238(v24, type metadata accessor for SessionFollowingState);
      }

      else
      {
        v5[(result >> 6) + 8] |= 1 << result;
        v28 = result;
        v13(v5[6] + result * v35, v26, v27);
        sub_24B055168(v25, v5[7] + *(v34 + 72) * v28, type metadata accessor for SessionFollowingState);
        (*v33)(v26, v27);
        result = sub_24B055238(v24, type metadata accessor for SessionFollowingState);
        v29 = v5[2];
        v19 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v19)
        {
          goto LABEL_23;
        }

        v5[2] = v30;
      }

      v8 += v35;
      --v6;
    }

    while (v6);
  }

  v32 = v0[1];

  return v32(v5);
}

uint64_t sub_24B051CDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B051D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v70 = a3;
  v78 = a4;
  v74 = sub_24B2D24A4();
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88A0);
  MEMORY[0x28223BE20](v71);
  v72 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v67 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v77 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88A8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v67 - v20;
  v22 = sub_24B2D2884();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v79 = a1;
  sub_24B26DE6C(sub_24B0554FC, a2, v21);
  v29 = *(v23 + 48);
  if (v29(v21, 1, v22) != 1)
  {
    (*(v23 + 32))(v28, v21, v22);
    v67 = v22;
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v36 = sub_24B2D3184();
    __swift_project_value_buffer(v36, qword_27EFE4418);
    v37 = sub_24B2D3164();
    v38 = sub_24B2D5934();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v74;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v80[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_24AFF321C(0xD000000000000059, 0x800000024B2D8CD0, v80);
      _os_log_impl(&dword_24AFD2000, v37, v38, "SessionLive: %s - Friend is sharing location with me", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C23D530](v42, -1, -1);
      MEMORY[0x24C23D530](v41, -1, -1);
    }

    v43 = v75;
    v44 = v77;
    v70 = v28;
    sub_24B2D2854();
    sub_24B2D2334();
    v45 = v76;
    v46 = *(v76 + 56);
    v46(v43, 0, 1, v40);
    v47 = *(v71 + 48);
    v48 = v44;
    v49 = v72;
    sub_24B008890(v48, v72, &qword_27EFC8450);
    sub_24B008890(v43, v49 + v47, &qword_27EFC8450);
    v50 = *(v45 + 48);
    if (v50(v49, 1, v40) == 1)
    {
      sub_24AFF8258(v43, &qword_27EFC8450);
      if (v50(v49 + v47, 1, v40) == 1)
      {
        sub_24AFF8258(v49, &qword_27EFC8450);
LABEL_25:
        v58 = v73;
        v46(v73, 1, 1, v40);
        v57 = v77;
        goto LABEL_26;
      }
    }

    else
    {
      v56 = v69;
      sub_24B008890(v49, v69, &qword_27EFC8450);
      if (v50(v49 + v47, 1, v40) != 1)
      {
        v59 = v56;
        v60 = v76;
        v61 = v49 + v47;
        v62 = v68;
        (*(v76 + 32))(v68, v61, v40);
        sub_24B054D70(&qword_27EFC88B0, 255, MEMORY[0x277CC9578]);
        v63 = sub_24B2D52A4();
        v64 = *(v60 + 8);
        v64(v62, v40);
        sub_24AFF8258(v75, &qword_27EFC8450);
        v64(v59, v40);
        sub_24AFF8258(v49, &qword_27EFC8450);
        if (v63)
        {
          goto LABEL_25;
        }

LABEL_23:
        v57 = v77;
        v58 = v73;
        sub_24B008890(v77, v73, &qword_27EFC8450);
LABEL_26:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
        sub_24B008890(v58, v78, &qword_27EFC8450);
        v65 = v70;
        sub_24B2D2874();
        sub_24AFF8258(v58, &qword_27EFC8450);
        sub_24AFF8258(v57, &qword_27EFC8450);
        (*(v23 + 8))(v65, v67);
        goto LABEL_27;
      }

      sub_24AFF8258(v75, &qword_27EFC8450);
      (*(v76 + 8))(v56, v40);
    }

    sub_24AFF8258(v49, &qword_27EFC88A0);
    goto LABEL_23;
  }

  v30 = sub_24AFF8258(v21, &qword_27EFC88A8);
  MEMORY[0x28223BE20](v30);
  *(&v67 - 2) = a1;
  sub_24B26DE6C(sub_24B0554FC, v70, v19);
  if (v29(v19, 1, v22) == 1)
  {
    sub_24AFF8258(v19, &qword_27EFC88A8);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v31 = sub_24B2D3184();
    __swift_project_value_buffer(v31, qword_27EFE4418);
    v32 = sub_24B2D3164();
    v33 = sub_24B2D5934();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v80[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_24AFF321C(0xD000000000000059, 0x800000024B2D8CD0, v80);
      _os_log_impl(&dword_24AFD2000, v32, v33, "SessionLive: %s notShared", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C23D530](v35, -1, -1);
      MEMORY[0x24C23D530](v34, -1, -1);
    }
  }

  else
  {
    (*(v23 + 32))(v26, v19, v22);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v51 = sub_24B2D3184();
    __swift_project_value_buffer(v51, qword_27EFE4418);
    v52 = sub_24B2D3164();
    v53 = sub_24B2D5934();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v80[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_24AFF321C(0xD000000000000059, 0x800000024B2D8CD0, v80);
      _os_log_impl(&dword_24AFD2000, v52, v53, "SessionLive: %s - Friend I've requested location", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x24C23D530](v55, -1, -1);
      MEMORY[0x24C23D530](v54, -1, -1);
    }

    sub_24B2D2874();
    (*(v23 + 8))(v26, v22);
  }

LABEL_27:
  type metadata accessor for SessionFollowingState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24B052850(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_24B2D28E4();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_24B2D28F4();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_24B2D2774();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_24B2D2684();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8888);
  v3[22] = swift_task_alloc();
  sub_24B2D24A4();
  v3[23] = swift_task_alloc();
  v8 = sub_24B2D2C04();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B052B0C, v2, 0);
}

uint64_t sub_24B052B0C()
{
  v27 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  *(v0 + 232) = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000026, 0x800000024B2D8E20, &v26);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = *(v0 + 48);
  [v6 coordinate];
  [v6 coordinate];
  [v6 horizontalAccuracy];
  [v6 verticalAccuracy];
  [v6 speed];
  [v6 altitude];
  v7 = [v6 floor];
  if (v7)
  {
    v8 = v7;
    [v7 level];
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v12 = *(v0 + 144);
  v13 = *(v0 + 136);
  v14 = [*(v0 + 48) timestamp];
  sub_24B2D2484();

  v15 = sub_24B2D2C24();
  *(v0 + 240) = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  *(v0 + 248) = v17;
  *(v0 + 256) = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v9, 1, 1, v15);
  *(v0 + 44) = *MEMORY[0x277D09078];
  v18 = *(v10 + 104);
  *(v0 + 264) = v18;
  *(v0 + 272) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v11);
  *(v0 + 312) = *MEMORY[0x277D090F8];
  v19 = *(v13 + 104);
  *(v0 + 280) = v19;
  *(v0 + 288) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v12);
  sub_24B2D2BC4();
  sub_24B2D16F4();
  sub_24B054BF8(MEMORY[0x277D84F90]);
  sub_24B2D28C4();
  v25 = (*MEMORY[0x277D090B8] + MEMORY[0x277D090B8]);
  v20 = swift_task_alloc();
  *(v0 + 296) = v20;
  *v20 = v0;
  v20[1] = sub_24B052F54;
  v21 = *(v0 + 224);
  v22 = *(v0 + 120);
  v23 = *(v0 + 88);

  return v25(v22, v23, v21, 0);
}

uint64_t sub_24B052F54()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 304) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_24B053614;
  }

  else
  {
    v7 = sub_24B0530DC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B0530DC()
{
  v55 = v0;
  v1 = *(v0 + 48);
  [v1 coordinate];
  [v1 coordinate];
  [v1 horizontalAccuracy];
  [v1 verticalAccuracy];
  [v1 speed];
  [v1 altitude];
  v2 = [v1 floor];
  if (v2)
  {
    v3 = v2;
    [v2 level];
  }

  v46 = *(v0 + 280);
  v44 = *(v0 + 312);
  v41 = *(v0 + 264);
  v40 = *(v0 + 44);
  v39 = *(v0 + 248);
  v43 = *(v0 + 216);
  v4 = *(v0 + 200);
  v48 = *(v0 + 208);
  v50 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 144);
  v37 = *(v0 + 240);
  v7 = *(v0 + 120);
  v38 = *(v0 + 128);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = *(v0 + 96);
  v11 = [*(v0 + 48) timestamp];
  sub_24B2D2484();

  (*(v9 + 16))(v8, v7, v10);
  sub_24B2D2C14();
  v39(v5, 0, 1, v37);
  v41(v35, v40, v36);
  v46(v6, v44, v38);
  sub_24B2D2BC4();
  (*(v4 + 16))(v48, v43, v50);
  v12 = sub_24B0544FC(v48);
  v14 = v13;
  v16 = v15;
  swift_bridgeObjectRetain_n();
  v17 = v16;
  v18 = sub_24B2D3164();
  v19 = sub_24B2D5934();
  v53 = v14;

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 224);
  v23 = *(v0 + 192);
  v22 = *(v0 + 200);
  v51 = *(v0 + 120);
  v52 = v17;
  v24 = *(v0 + 104);
  v47 = *(v0 + 216);
  v49 = *(v0 + 96);
  if (v20)
  {
    v25 = swift_slowAlloc();
    v45 = v23;
    v26 = swift_slowAlloc();
    v54[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_24AFF321C(0xD000000000000026, 0x800000024B2D8E20, v54);
    *(v25 + 12) = 2080;
    *(v0 + 16) = v12;
    *(v0 + 24) = v53;
    *(v0 + 32) = v17;
    *(v0 + 40) = 4;

    v42 = v17;
    v27 = sub_24B2D53C4();
    v29 = sub_24AFF321C(v27, v28, v54);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_24AFD2000, v18, v19, "SessionLive: didReceive %s - l: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v26, -1, -1);
    MEMORY[0x24C23D530](v25, -1, -1);

    v30 = *(v22 + 8);
    v30(v47, v45);
    (*(v24 + 8))(v51, v49);
    v31 = v21;
    v32 = v45;
  }

  else
  {

    v30 = *(v22 + 8);
    v30(v47, v23);
    (*(v24 + 8))(v51, v49);
    v31 = v21;
    v32 = v23;
  }

  v30(v31, v32);

  v33 = *(v0 + 8);

  return v33(v12, v53, v52, 4);
}

uint64_t sub_24B053614()
{
  (*(v0[25] + 8))(v0[28], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24B053714(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24B2D2774();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24B2D2684();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8888);
  v2[10] = swift_task_alloc();
  sub_24B2D24A4();
  v2[11] = swift_task_alloc();
  v5 = sub_24B2D2C04();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B053908, v1, 0);
}

uint64_t sub_24B053908()
{
  v29 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD000000000000018, 0x800000024B2D8B20, &v28);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SessionLive: willCall %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = *(v0 + 16);
  [v6 coordinate];
  [v6 coordinate];
  [v6 horizontalAccuracy];
  [v6 verticalAccuracy];
  [v6 speed];
  [v6 altitude];
  v7 = [v6 floor];
  if (v7)
  {
    v8 = v7;
    [v7 level];
  }

  v9 = *(v0 + 104);
  v25 = *(v0 + 112);
  v26 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v24 = *(v0 + 128);
  v16 = [*(v0 + 16) timestamp];
  sub_24B2D2484();

  v17 = sub_24B2D2C24();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  (*(v12 + 104))(v11, *MEMORY[0x277D09078], v13);
  (*(v15 + 104))(v14, *MEMORY[0x277D090F8], v23);
  sub_24B2D2BC4();
  v18 = *(v9 + 16);
  *(v0 + 144) = v18;
  *(v0 + 152) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v25, v24, v26);
  sub_24B2D27E4();
  swift_allocObject();
  v19 = sub_24B2D27D4();
  *(v0 + 160) = v19;
  v27 = (*MEMORY[0x277D090A0] + MEMORY[0x277D090A0]);
  v20 = swift_task_alloc();
  *(v0 + 168) = v20;
  *v20 = v0;
  v20[1] = sub_24B053D28;
  v21 = *(v0 + 120);

  return v27(v21, v19);
}

uint64_t sub_24B053D28()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_24B054070;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_24B053E50;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B053E50()
{
  v23 = v0;
  v1 = *(v0 + 112);
  (*(v0 + 144))(v1, *(v0 + 120), *(v0 + 96));
  v2 = sub_24B0544FC(v1);
  v4 = v3;
  v6 = v5;

  v21 = v6;
  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  if (v9)
  {
    v20 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_24AFF321C(0xD000000000000018, 0x800000024B2D8B20, &v22);
    _os_log_impl(&dword_24AFD2000, v7, v8, "SessionLive: didReceive %s - shiftedLocation", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C23D530](v15, -1, -1);
    v16 = v14;
    v2 = v20;
    MEMORY[0x24C23D530](v16, -1, -1);
  }

  v17 = *(v12 + 8);
  v17(v11, v13);
  v17(v10, v13);

  v18 = *(v0 + 8);

  return v18(v2, v4, v21, 4);
}

uint64_t sub_24B054070()
{
  v11 = v0;

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5914();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0xD000000000000018, 0x800000024B2D8B20, &v10);
    _os_log_impl(&dword_24AFD2000, v1, v2, "SessionLive: didReceive %s - error receiving shiftedLocation", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[12];
  swift_willThrow();
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

unint64_t sub_24B054238(uint64_t a1, uint64_t a2)
{
  sub_24B2D60E4();
  sub_24B2D5404();
  v4 = sub_24B2D6124();

  return sub_24B0542B0(a1, a2, v4);
}

unint64_t sub_24B0542B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24B2D6004())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24B054368(uint64_t a1, uint64_t a2)
{
  result = sub_24B054D70(&qword_27EFC8850, a2, type metadata accessor for SessionLive);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of SessionLive.__allocating_init()()
{
  v4 = (*(v0 + 112) + **(v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24B042E68;

  return v4();
}

uint64_t sub_24B0544FC(uint64_t a1)
{
  v2 = sub_24B2D2684();
  v58 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24B2D24A4();
  v57 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D2B54();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B2D2C04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v12 = sub_24B2D3184();
  __swift_project_value_buffer(v12, qword_27EFE4418);
  (*(v9 + 16))(v11, a1, v8);
  v13 = sub_24B2D3164();
  v14 = sub_24B2D5904();
  v15 = os_log_type_enabled(v13, v14);
  v50 = v8;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v48 = v2;
    v17 = v16;
    v47 = swift_slowAlloc();
    v59[0] = v47;
    *v17 = 136315394;
    *(v17 + 4) = sub_24AFF321C(0x636F6C2874696E69, 0xEF293A6E6F697461, v59);
    *(v17 + 12) = 2080;
    sub_24B054D70(&qword_27EFC8890, 255, MEMORY[0x277D094C0]);
    v18 = sub_24B2D5FA4();
    v20 = v19;
    v21 = *(v9 + 8);
    v51 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v21;
    v21(v11, v8);
    v22 = sub_24AFF321C(v18, v20, v59);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_24AFD2000, v13, v14, "SessionLive: %s - %s", v17, 0x16u);
    v23 = v47;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v23, -1, -1);
    v24 = v17;
    v2 = v48;
    MEMORY[0x24C23D530](v24, -1, -1);
  }

  else
  {

    v25 = *(v9 + 8);
    v51 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v25;
    v25(v11, v8);
  }

  v27 = v53;
  v26 = v54;
  v28 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x277D094B8], v55);
  v29 = sub_24B2D2B94();
  (*(v26 + 8))(v27, v28);
  sub_24B2D2BD4();
  v31 = v30;
  sub_24B2D2BE4();
  v33 = v32;
  sub_24B2D2BB4();
  v35 = v34;
  sub_24B2D2B84();
  v37 = v36;
  sub_24B2D2B74();
  v39 = v38;
  sub_24B2D2BA4();
  v41 = v40;
  sub_24B2D2BF4();
  v42 = v56;
  sub_24B2D23F4();
  v43 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v44 = sub_24B2D23B4();
  [v43 initWithCoordinate:v44 altitude:v31 horizontalAccuracy:v33 verticalAccuracy:v35 course:v37 courseAccuracy:v39 speed:0.0 speedAccuracy:0.0 timestamp:{v41, 0}];

  (*(v57 + 8))(v42, v49);
  sub_24B2D2B64();
  v52(a1, v50);
  v45 = (*(v58 + 88))(v4, v2);
  if (v45 != *MEMORY[0x277D09088] && v45 != *MEMORY[0x277D09078] && v45 != *MEMORY[0x277D09080] && v45 != *MEMORY[0x277D09090])
  {
    (*(v58 + 8))(v4, v2);
  }

  return v29;
}

unint64_t sub_24B054B50()
{
  result = qword_27EFC8868;
  if (!qword_27EFC8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8868);
  }

  return result;
}

unint64_t sub_24B054BA4()
{
  result = qword_27EFC8870;
  if (!qword_27EFC8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8870);
  }

  return result;
}

unint64_t sub_24B054BF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8880);
    v3 = sub_24B2D5DE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24B054238(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B054CFC()
{
  result = qword_27EFC8898;
  if (!qword_27EFC8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8898);
  }

  return result;
}

uint64_t sub_24B054D70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24B054DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B054E5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88D0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88E0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFDE44;

  return sub_24B045298(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_24B055000(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8920) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8930) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFDE44;

  return sub_24B04ACE8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_24B055168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0551D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B055238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B0552D4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B055328(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8970) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8980) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFD370;

  return sub_24B0487C8(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_24B0554A4()
{
  result = qword_27EFC89C8;
  if (!qword_27EFC89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC89C8);
  }

  return result;
}

uint64_t sub_24B05554C()
{
  v0 = sub_24B2D1454();
  __swift_allocate_value_buffer(v0, qword_27EFE4478);
  __swift_project_value_buffer(v0, qword_27EFE4478);
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_24B2D1434();
}

uint64_t sub_24B0555F0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_stillWantsToSubscribe) = 0;
  v2 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository))
  {
    v3 = qword_27EFC75E8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_24B2D3184();
    __swift_project_value_buffer(v4, qword_27EFE4418);
    v5 = sub_24B2D3164();
    v6 = sub_24B2D5934();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_24AFF321C(0xD000000000000013, 0x800000024B2D7A30, &v15);
      _os_log_impl(&dword_24AFD2000, v5, v6, "CompositeAppViewModel: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C23D530](v8, -1, -1);
      MEMORY[0x24C23D530](v7, -1, -1);
    }

    sub_24B059688(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_subscriber);
    sub_24B02EEB4();
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v9 = sub_24B2D3184();
    __swift_project_value_buffer(v9, qword_27EFE4418);
    v10 = sub_24B2D3164();
    v11 = sub_24B2D5914();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_24AFF321C(0xD000000000000013, 0x800000024B2D7A30, &v15);
      _os_log_impl(&dword_24AFD2000, v10, v11, "CompositeAppViewModel: %s - stop with no initialInfo or repository", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C23D530](v13, -1, -1);
      MEMORY[0x24C23D530](v12, -1, -1);
    }
  }

  *(v1 + v2) = 0;

  *(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_cancellables) = MEMORY[0x277D84F90];
}

uint64_t sub_24B0558C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v50[-v5];
  v55 = type metadata accessor for CompositeAppViewState(0);
  v6 = MEMORY[0x28223BE20](v55);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v58 = &v50[-v10];
  MEMORY[0x28223BE20](v9);
  v56 = &v50[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50[-v13];
  v15 = type metadata accessor for CompositeAppViewInitialInfo();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50[-v20];
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v22 = sub_24B2D3184();
  __swift_project_value_buffer(v22, qword_27EFE4418);
  sub_24B05C848(a1, v21, type metadata accessor for CompositeAppViewInitialInfo);
  v23 = sub_24B2D3164();
  v24 = sub_24B2D5934();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = v16;
    v26 = v25;
    v52 = swift_slowAlloc();
    v60[0] = v52;
    *v26 = 136315394;
    *(v26 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D79D0, v60);
    *(v26 + 12) = 2080;
    sub_24B05C848(v21, v19, type metadata accessor for CompositeAppViewInitialInfo);
    v27 = sub_24B2D53C4();
    v51 = v24;
    v28 = v14;
    v29 = v15;
    v30 = v8;
    v31 = a1;
    v32 = v27;
    v53 = v2;
    v34 = v33;
    sub_24B05C7E8(v21, type metadata accessor for CompositeAppViewInitialInfo);
    v35 = v32;
    a1 = v31;
    v8 = v30;
    v15 = v29;
    v14 = v28;
    v36 = sub_24AFF321C(v35, v34, v60);
    v2 = v53;

    *(v26 + 14) = v36;
    _os_log_impl(&dword_24AFD2000, v23, v51, "CompositeAppViewModel: %s - %s", v26, 0x16u);
    v37 = v52;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v37, -1, -1);
    v38 = v26;
    v16 = v54;
    MEMORY[0x24C23D530](v38, -1, -1);
  }

  else
  {

    sub_24B05C7E8(v21, type metadata accessor for CompositeAppViewInitialInfo);
  }

  sub_24B05C848(a1, v14, type metadata accessor for CompositeAppViewInitialInfo);
  (*(v16 + 56))(v14, 0, 1, v15);
  v39 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B05CF68(v14, v2 + v39);
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_stillWantsToSubscribe) = 1;
  sub_24B2D2AE4();
  if (sub_24B2D29D4())
  {
    sub_24B05C848(a1 + *(v15 + 28), v8, type metadata accessor for CompositeAppViewState);
    v40 = v8;
  }

  else
  {
    v40 = v56;
    swift_storeEnumTagMultiPayload();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B05C848(v40, v58, type metadata accessor for CompositeAppViewState);

  sub_24B2D3224();
  v41 = *(v2 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_tintColorDidInvalidateHandler);
  if (v41)
  {

    v41(v42);
    sub_24AFD5890(v41);
  }

  sub_24B05C7E8(v40, type metadata accessor for CompositeAppViewState);
  v43 = sub_24B2D56D4();
  v44 = v59;
  (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
  sub_24B05C848(a1, v19, type metadata accessor for CompositeAppViewInitialInfo);
  sub_24B2D5694();

  v45 = sub_24B2D5684();
  v46 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v47 = swift_allocObject();
  v48 = MEMORY[0x277D85700];
  v47[2] = v45;
  v47[3] = v48;
  v47[4] = v2;
  sub_24B05C780(v19, v47 + v46, type metadata accessor for CompositeAppViewInitialInfo);
  sub_24B00A9A4(0, 0, v44, &unk_24B2E1990, v47);
}

void sub_24B055FCC()
{
  *(v0 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_stillWantsToSubscribe) = 0;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository))
  {
    v1 = v0;
    v2 = qword_27EFC75E8;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_24B2D3184();
    __swift_project_value_buffer(v3, qword_27EFE4418);
    v4 = sub_24B2D3164();
    v5 = sub_24B2D5934();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D79F0, &v13);
      _os_log_impl(&dword_24AFD2000, v4, v5, "CompositeAppViewModel: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C23D530](v7, -1, -1);
      MEMORY[0x24C23D530](v6, -1, -1);
    }

    sub_24B059688(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_subscriber);
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v8 = sub_24B2D3184();
    __swift_project_value_buffer(v8, qword_27EFE4418);
    oslog = sub_24B2D3164();
    v9 = sub_24B2D5914();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D79F0, &v13);
      _os_log_impl(&dword_24AFD2000, oslog, v9, "CompositeAppViewModel: %s - pause with no initialInfo or repository", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C23D530](v11, -1, -1);
      MEMORY[0x24C23D530](v10, -1, -1);
    }
  }
}

void sub_24B056290()
{
  v1 = v0;
  v2 = type metadata accessor for CompositeAppViewState(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for CompositeAppViewInitialInfo();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  if (qword_27EFC75E8 != -1)
  {
    v36 = v12;
    swift_once();
    v12 = v36;
  }

  v40 = v12;
  v15 = sub_24B2D3184();
  v39 = __swift_project_value_buffer(v15, qword_27EFE4418);
  v16 = sub_24B2D3164();
  v17 = sub_24B2D5934();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_24AFF321C(0xD000000000000015, 0x800000024B2D7A10, v42);
    _os_log_impl(&dword_24AFD2000, v16, v17, "CompositeAppViewModel: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C23D530](v19, -1, -1);
    MEMORY[0x24C23D530](v18, -1, -1);
  }

  v20 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B05C710(v1 + v20, v7);
  v21 = v40;
  if ((*(v9 + 48))(v7, 1, v40) == 1)
  {
    sub_24AFF8258(v7, &qword_27EFC8A28);
LABEL_11:
    v31 = sub_24B2D3164();
    v32 = sub_24B2D5914();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_24AFF321C(0xD000000000000015, 0x800000024B2D7A10, &v41);
      _os_log_impl(&dword_24AFD2000, v31, v32, "CompositeAppViewModel: %s - resume with no initialInfo or repository", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C23D530](v34, -1, -1);
      MEMORY[0x24C23D530](v33, -1, -1);
    }

    return;
  }

  sub_24B05C780(v7, v14, type metadata accessor for CompositeAppViewInitialInfo);
  if (!*(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository))
  {
    sub_24B05C7E8(v14, type metadata accessor for CompositeAppViewInitialInfo);
    goto LABEL_11;
  }

  v22 = v38;
  sub_24B05C848(v14, v38, type metadata accessor for CompositeAppViewInitialInfo);

  v23 = sub_24B2D3164();
  v24 = sub_24B2D5934();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v25 = 136315394;
    *(v25 + 4) = sub_24AFF321C(0xD000000000000015, 0x800000024B2D7A10, &v41);
    *(v25 + 12) = 2080;
    sub_24B05C848(v22 + *(v21 + 28), v4, type metadata accessor for CompositeAppViewState);
    v26 = sub_24B2D53C4();
    v28 = v27;
    sub_24B05C7E8(v22, type metadata accessor for CompositeAppViewInitialInfo);
    v29 = sub_24AFF321C(v26, v28, &v41);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_24AFD2000, v23, v24, "CompositeAppViewModel: %s - %s", v25, 0x16u);
    v30 = v39;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v30, -1, -1);
    MEMORY[0x24C23D530](v25, -1, -1);
  }

  else
  {

    sub_24B05C7E8(v22, type metadata accessor for CompositeAppViewInitialInfo);
  }

  v35 = sub_24AFF05EC();
  sub_24B0577B8(v35, v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_subscriber);

  sub_24B0573F4();

  sub_24B05C7E8(v14, type metadata accessor for CompositeAppViewInitialInfo);
}

id sub_24B0568C4()
{
  v0 = type metadata accessor for ShareSentMessageView.ShareState(0);
  v1 = MEMORY[0x28223BE20](v0);
  v62 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v63 = &v60 - v3;
  v4 = type metadata accessor for ShareReceivedMessageView.State(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v60 - v8;
  v9 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = type metadata accessor for CompositeAppViewState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B05C848(v17, v14, type metadata accessor for CompositeAppViewState.TranscriptInfo);
    if ((v14[v9[13]] & 1) == 0)
    {
      v25 = [objc_opt_self() systemGray6Color];
      sub_24B05C7E8(v14, type metadata accessor for CompositeAppViewState.TranscriptInfo);
      v26 = v17;
LABEL_41:
      sub_24B05C7E8(v26, type metadata accessor for CompositeAppViewState.TranscriptInfo);
      return v25;
    }

    sub_24B05C7E8(v14, type metadata accessor for CompositeAppViewState.TranscriptInfo);
    v18 = v12;
    sub_24B05C780(v17, v12, type metadata accessor for CompositeAppViewState.TranscriptInfo);
    v19 = &v12[v9[10]];
    if (v19[8] == 2)
    {
      if (v12[v9[8]])
      {
        v20 = objc_allocWithZone(MEMORY[0x277D75348]);
        v68 = sub_24B00916C;
        v69 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v65 = 1107296256;
        v66 = sub_24B05BB6C;
        v67 = &block_descriptor_1;
        v21 = _Block_copy(&aBlock);
        v22 = [v20 initWithDynamicProvider_];
        _Block_release(v21);
LABEL_47:

        sub_24B05C7E8(v18, type metadata accessor for CompositeAppViewState.TranscriptInfo);
        return v22;
      }

      v25 = [objc_opt_self() systemGray6Color];
      goto LABEL_40;
    }

    if (v12[v9[8]])
    {
      if (v12[v9[9]] == 1)
      {
        v27 = v63;
        sub_24B063DB8(*v19, v63);
      }

      else
      {
        v43 = *&v12[v9[7]];
        v44 = v9[11];
        v45 = sub_24AFF2D64();
        v46 = &v12[v44];
        v27 = v63;
        sub_24B0640B8(v43, v46, v45, v47, v63);
      }

      v48 = v62;
      sub_24B05C848(v27, v62, type metadata accessor for ShareSentMessageView.ShareState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v52 = objc_allocWithZone(MEMORY[0x277D75348]);
          v68 = sub_24B00916C;
          v69 = 0;
          aBlock = MEMORY[0x277D85DD0];
          v65 = 1107296256;
          v53 = &block_descriptor_35;
        }

        else
        {
          v52 = objc_allocWithZone(MEMORY[0x277D75348]);
          v68 = sub_24B00916C;
          v69 = 0;
          aBlock = MEMORY[0x277D85DD0];
          v65 = 1107296256;
          v53 = &block_descriptor_26_0;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v50 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A38) + 48);
          if (*(v50 + 8))
          {
            v51 = *(v50 + 16);

            if (v51 & 0x100) != 0 || (v51)
            {
              v57 = objc_allocWithZone(MEMORY[0x277D75348]);
              v68 = sub_24B00916C;
              v69 = 0;
              aBlock = MEMORY[0x277D85DD0];
              v65 = 1107296256;
              v66 = sub_24B05BB6C;
              v67 = &block_descriptor_32;
              v58 = _Block_copy(&aBlock);
              v22 = [v57 initWithDynamicProvider_];
              _Block_release(v58);
              sub_24B05C7E8(v27, type metadata accessor for ShareSentMessageView.ShareState);

              sub_24B05C7E8(v12, type metadata accessor for CompositeAppViewState.TranscriptInfo);
              sub_24AFF8258(v48, &qword_27EFC8450);
              return v22;
            }
          }

          v25 = [objc_opt_self() systemGray6Color];
          sub_24B05C7E8(v27, type metadata accessor for ShareSentMessageView.ShareState);
          sub_24B05C7E8(v12, type metadata accessor for CompositeAppViewState.TranscriptInfo);
          sub_24AFF8258(v48, &qword_27EFC8450);
          return v25;
        }

        if (!*(v48 + 16) || (v56 = *(v48 + 24), , (v56 & 0x100) == 0) && (v56 & 1) == 0)
        {
          v25 = [objc_opt_self() systemGray6Color];
          v54 = type metadata accessor for ShareSentMessageView.ShareState;
          v55 = v27;
          goto LABEL_39;
        }

        v52 = objc_allocWithZone(MEMORY[0x277D75348]);
        v68 = sub_24B00916C;
        v69 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v65 = 1107296256;
        v53 = &block_descriptor_29;
      }

      v66 = sub_24B05BB6C;
      v67 = v53;
      v59 = _Block_copy(&aBlock);
      v22 = [v52 initWithDynamicProvider_];
      _Block_release(v59);
      v41 = type metadata accessor for ShareSentMessageView.ShareState;
      v42 = v27;
    }

    else
    {
      v28 = v9[6];
      v29 = v9[11];
      v30 = sub_24AFF2D64();
      v32 = v31;
      v33 = &v12[v28];
      v34 = &v12[v29];
      v35 = v61;
      sub_24B062D54(v33, v34, v30, v32, v61);

      sub_24B05C848(v35, v7, type metadata accessor for ShareReceivedMessageView.State);
      v36 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
      v37 = (*(*(v36 - 8) + 48))(v7, 3, v36);
      if (v37 > 1)
      {
        if (v37 != 2 || (swift_getKeyPath(), swift_getKeyPath(), sub_24B2D3214(), , , aBlock != 1))
        {
          v25 = [objc_opt_self() systemGray6Color];
          v54 = type metadata accessor for ShareReceivedMessageView.State;
          v55 = v35;
LABEL_39:
          sub_24B05C7E8(v55, v54);
LABEL_40:
          v26 = v18;
          goto LABEL_41;
        }

        v38 = objc_allocWithZone(MEMORY[0x277D75348]);
        v68 = sub_24B00916C;
        v69 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v65 = 1107296256;
        v39 = &block_descriptor_38;
      }

      else
      {
        if (!v37)
        {
          sub_24B05C7E8(v7, type metadata accessor for ShareReceivedMessageView.State);
        }

        v38 = objc_allocWithZone(MEMORY[0x277D75348]);
        v68 = sub_24B00916C;
        v69 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v65 = 1107296256;
        v39 = &block_descriptor_41;
      }

      v66 = sub_24B05BB6C;
      v67 = v39;
      v40 = _Block_copy(&aBlock);
      v22 = [v38 initWithDynamicProvider_];
      _Block_release(v40);
      v41 = type metadata accessor for ShareReceivedMessageView.State;
      v42 = v35;
    }

    sub_24B05C7E8(v42, v41);
    goto LABEL_47;
  }

  v23 = [objc_opt_self() systemGray6Color];

  return v23;
}

uint64_t sub_24B0573F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository))
  {
    sub_24B05C6A4(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
    sub_24B2D31B4();
    sub_24B2D31D4();
  }

  else
  {
    v5 = v0;
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v6 = sub_24B2D3184();
    __swift_project_value_buffer(v6, qword_27EFE4418);
    v7 = sub_24B2D3164();
    v8 = sub_24B2D5934();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_24AFF321C(0xD00000000000001BLL, 0x800000024B2D9050, &v16);
      _os_log_impl(&dword_24AFD2000, v7, v8, "CompositeAppViewModel: %s - No internalRepository - getting one", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C23D530](v10, -1, -1);
      MEMORY[0x24C23D530](v9, -1, -1);
    }

    v11 = sub_24B2D56D4();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    sub_24B2D5694();

    v12 = sub_24B2D5684();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v5;
    sub_24B00A9A4(0, 0, v3, &unk_24B2E1970, v13);
  }
}

uint64_t sub_24B057758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t))
{
  v8 = (v7 + *a5);
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  a6();

  return a7(v9, v10);
}

void sub_24B0577B8(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v141 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v6 = *(v141 - 8);
  v7 = MEMORY[0x28223BE20](v141);
  v140 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v131 = &v126 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v130 = &v126 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v126 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v126 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v145 = &v126 - v18;
  MEMORY[0x28223BE20](v17);
  v139 = &v126 - v19;
  v20 = type metadata accessor for RepositorySubscriber();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v129 = &v126 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v126 - v26;
  if (qword_27EFC75E8 != -1)
  {
LABEL_76:
    swift_once();
  }

  v28 = sub_24B2D3184();
  v29 = __swift_project_value_buffer(v28, qword_27EFE4418);
  v133 = a2;
  sub_24B05C848(a2, v27, type metadata accessor for RepositorySubscriber);

  v135 = v29;
  v30 = sub_24B2D3164();
  v31 = sub_24B2D5934();

  v32 = os_log_type_enabled(v30, v31);
  v137 = v3;
  v142 = v6;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v148 = v34;
    *v33 = 136315394;
    sub_24B05C6A4(&qword_27EFC8588, _s14descr285E46659O16SubscriptionDataOMa);
    v35 = sub_24B2D57F4();
    v37 = sub_24AFF321C(v35, v36, &v148);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    sub_24B05C848(v27, v129, type metadata accessor for RepositorySubscriber);
    v38 = sub_24B2D53C4();
    v40 = v39;
    sub_24B05C7E8(v27, type metadata accessor for RepositorySubscriber);
    v41 = sub_24AFF321C(v38, v40, &v148);
    v3 = v137;

    *(v33 + 14) = v41;
    _os_log_impl(&dword_24AFD2000, v30, v31, "Provider: addSubscriptions - requestedSubscriptions: %s - subscriber: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v34, -1, -1);
    v42 = v33;
    v6 = v142;
    MEMORY[0x24C23D530](v42, -1, -1);

    if (!*(a1 + 16))
    {
      return;
    }
  }

  else
  {

    sub_24B05C7E8(v27, type metadata accessor for RepositorySubscriber);
    if (!*(a1 + 16))
    {
      return;
    }
  }

  v127 = v23;
  v43 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsBySubscriber;
  swift_beginAccess();
  v44 = *(v3 + v43);
  v45 = *(v44 + 16);
  v126 = v20;
  if (!v45)
  {
    goto LABEL_10;
  }

  v46 = sub_24B181224(v133);
  if ((v47 & 1) == 0)
  {

LABEL_10:

    v50 = a1;
    goto LABEL_11;
  }

  v48 = *(*(v44 + 56) + 8 * v46);

  v50 = sub_24B25A4F8(v49, v48);
LABEL_11:
  v51 = *(v3 + v43);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v147[0] = *(v3 + v43);
  *(v3 + v43) = 0x8000000000000000;
  sub_24B1C8FB0(v50, v133, isUniquelyReferenced_nonNull_native);
  *(v3 + v43) = v147[0];
  swift_endAccess();
  sub_24B00F238();

  v27 = sub_24B05CB64(v53, v51);

  a1 = v27 + 56;
  v54 = 1 << *(v27 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v23 = v55 & *(v27 + 56);
  v144 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsByKind;

  swift_beginAccess();
  v20 = 0;
  a2 = (v54 + 63) >> 6;
  *(&v56 + 1) = 2;
  v134 = xmmword_24B2DE430;
  *&v56 = 136315138;
  v128 = v56;
  v138 = v27;
  v136 = a2;
  while (v23)
  {
LABEL_21:
    v58 = v139;
    sub_24B05C848(*(v27 + 48) + *(v6 + 72) * (__clz(__rbit64(v23)) | (v20 << 6)), v139, _s14descr285E46659O16SubscriptionDataOMa);
    v59 = v58;
    v60 = v145;
    sub_24B05C780(v59, v145, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B05C848(v60, v143, _s14descr285E46659O16SubscriptionDataOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_24B05C7E8(v143, _s14descr285E46659O16SubscriptionDataOMa);
        v62 = 3;
      }

      else
      {
        sub_24B05C7E8(v143, _s14descr285E46659O16SubscriptionDataOMa);
        v62 = 2;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_24B05C7E8(v143, _s14descr285E46659O16SubscriptionDataOMa);
      v62 = 4;
    }

    else
    {
      v62 = EnumCaseMultiPayload != 3;
    }

    v63 = *(v3 + v144);
    if (!*(v63 + 16) || (v64 = sub_24B1810E4(v62), (v65 & 1) == 0))
    {
      sub_24B05C848(v145, v140, _s14descr285E46659O16SubscriptionDataOMa);
      v69 = swift_getEnumCaseMultiPayload();
      if (v69 <= 1)
      {
        if (v69)
        {
          sub_24B05C7E8(v140, _s14descr285E46659O16SubscriptionDataOMa);
          v27 = 3;
        }

        else
        {
          sub_24B05C7E8(v140, _s14descr285E46659O16SubscriptionDataOMa);
          v27 = 2;
        }
      }

      else if (v69 == 2)
      {
        sub_24B05C7E8(v140, _s14descr285E46659O16SubscriptionDataOMa);
        v27 = 4;
      }

      else
      {
        v27 = v69 != 3;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8660);
      v70 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = v134;
      sub_24B05C848(v145, v71 + v70, _s14descr285E46659O16SubscriptionDataOMa);
      v6 = sub_24B1333A8(v71);
      swift_setDeallocating();
      sub_24B05C7E8(v71 + v70, _s14descr285E46659O16SubscriptionDataOMa);
      swift_deallocClassInstance();
      v72 = v144;
      swift_beginAccess();
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v146 = *(v3 + v72);
      a2 = v146;
      *(v3 + v72) = 0x8000000000000000;
      v74 = sub_24B1810E4(v27);
      v76 = *(a2 + 16);
      v77 = (v75 & 1) == 0;
      v78 = __OFADD__(v76, v77);
      v79 = v76 + v77;
      if (v78)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v80 = v75;
      if (*(a2 + 24) >= v79)
      {
        if (v73)
        {
          goto LABEL_45;
        }

        v101 = v74;
        sub_24B1CBD14();
        v74 = v101;
        v72 = v144;
        v82 = v146;
        if ((v80 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_46:
        *(v82[7] + 8 * v74) = v6;
      }

      else
      {
        sub_24B1C18C0(v79, v73);
        v74 = sub_24B1810E4(v27);
        if ((v80 & 1) != (v81 & 1))
        {
          goto LABEL_80;
        }

LABEL_45:
        v82 = v146;
        if (v80)
        {
          goto LABEL_46;
        }

LABEL_63:
        v82[(v74 >> 6) + 8] |= 1 << v74;
        *(v82[6] + v74) = v27;
        *(v82[7] + 8 * v74) = v6;
        v102 = v82[2];
        v78 = __OFADD__(v102, 1);
        v103 = v102 + 1;
        if (v78)
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          sub_24B2D6054();
          __break(1u);
          return;
        }

        v82[2] = v103;
      }

      *(v3 + v72) = v82;
      swift_endAccess();

      v104 = sub_24B2D3164();
      v105 = sub_24B2D5934();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v147[0] = v107;
        *v106 = v128;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8690);
        sub_24B038C8C();
        v108 = sub_24B2D51F4();
        v110 = v109;

        v111 = v108;
        v3 = v137;
        v112 = sub_24AFF321C(v111, v110, v147);

        *(v106 + 4) = v112;
        _os_log_impl(&dword_24AFD2000, v104, v105, "Repository: subscriptionsByKind: %s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v107);
        MEMORY[0x24C23D530](v107, -1, -1);
        MEMORY[0x24C23D530](v106, -1, -1);
      }

      v6 = v142;
      goto LABEL_15;
    }

    v66 = *(*(v63 + 56) + 8 * v64);
    sub_24B05C848(v145, v132, _s14descr285E46659O16SubscriptionDataOMa);
    v67 = swift_getEnumCaseMultiPayload();

    if (v67 <= 1)
    {
      sub_24B05C7E8(v132, _s14descr285E46659O16SubscriptionDataOMa);
      if (v67)
      {
        v68 = 3;
      }

      else
      {
        v68 = 2;
      }
    }

    else if (v67 == 2)
    {
      sub_24B05C7E8(v132, _s14descr285E46659O16SubscriptionDataOMa);
      v68 = 4;
    }

    else
    {
      v68 = v67 != 3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8660);
    v83 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v84 = swift_allocObject();
    sub_24B05C848(v145, v84 + v83, _s14descr285E46659O16SubscriptionDataOMa);
    v147[0] = v66;
    v85 = v130;
    sub_24B05C848(v84 + v83, v130, _s14descr285E46659O16SubscriptionDataOMa);
    swift_setDeallocating();
    sub_24B05C7E8(v84 + v83, _s14descr285E46659O16SubscriptionDataOMa);
    swift_deallocClassInstance();
    v86 = v131;
    sub_24B1ABC80(v131, v85);
    sub_24B05C7E8(v86, _s14descr285E46659O16SubscriptionDataOMa);
    v87 = v147[0];
    v3 = v137;
    v88 = v144;
    swift_beginAccess();
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v146 = *(v3 + v88);
    v90 = v146;
    *(v3 + v88) = 0x8000000000000000;
    v91 = sub_24B1810E4(v68);
    v93 = v90[2];
    v94 = (v92 & 1) == 0;
    v78 = __OFADD__(v93, v94);
    v95 = v93 + v94;
    if (v78)
    {
      goto LABEL_78;
    }

    v96 = v92;
    if (v90[3] >= v95)
    {
      if ((v89 & 1) == 0)
      {
        v113 = v91;
        sub_24B1CBD14();
        v91 = v113;
        v3 = v137;
      }
    }

    else
    {
      sub_24B1C18C0(v95, v89);
      v91 = sub_24B1810E4(v68);
      if ((v96 & 1) != (v97 & 1))
      {
        goto LABEL_80;
      }
    }

    v6 = v142;
    v98 = v146;
    if (v96)
    {
      *(v146[7] + 8 * v91) = v87;
    }

    else
    {
      v146[(v91 >> 6) + 8] |= 1 << v91;
      *(v98[6] + v91) = v68;
      *(v98[7] + 8 * v91) = v87;
      v99 = v98[2];
      v78 = __OFADD__(v99, 1);
      v100 = v99 + 1;
      if (v78)
      {
        goto LABEL_79;
      }

      v98[2] = v100;
    }

    *(v3 + v144) = v98;
    swift_endAccess();
    sub_24B00F45C();
LABEL_15:
    v27 = v138;
    a2 = v136;
    v23 &= v23 - 1;
    sub_24B05C7E8(v145, _s14descr285E46659O16SubscriptionDataOMa);
  }

  while (1)
  {
    v57 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v57 >= a2)
    {
      break;
    }

    v23 = *(a1 + 8 * v57);
    ++v20;
    if (v23)
    {
      v20 = v57;
      goto LABEL_21;
    }
  }

  if (*(v27 + 16))
  {
    v114 = v127;
    sub_24B05C848(v133, v127, type metadata accessor for RepositorySubscriber);

    v115 = sub_24B2D3164();
    v116 = sub_24B2D5934();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v147[0] = v118;
      *v117 = 136315394;
      sub_24B05C6A4(&qword_27EFC8588, _s14descr285E46659O16SubscriptionDataOMa);
      v119 = sub_24B2D57F4();
      v121 = sub_24AFF321C(v119, v120, v147);

      *(v117 + 4) = v121;
      *(v117 + 12) = 2080;
      sub_24B05C848(v114, v129, type metadata accessor for RepositorySubscriber);
      v122 = sub_24B2D53C4();
      v124 = v123;
      sub_24B05C7E8(v114, type metadata accessor for RepositorySubscriber);
      v125 = sub_24AFF321C(v122, v124, v147);

      *(v117 + 14) = v125;
      v27 = v138;
      _os_log_impl(&dword_24AFD2000, v115, v116, "RepositoryProvider: didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistedBefore: %s\n- subscriber: %s", v117, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v118, -1, -1);
      MEMORY[0x24C23D530](v117, -1, -1);
    }

    else
    {

      sub_24B05C7E8(v114, type metadata accessor for RepositorySubscriber);
    }

    sub_24B03B1D4(v27);
  }
}