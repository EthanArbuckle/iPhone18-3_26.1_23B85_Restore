uint64_t sub_21BD17750@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  if (a1)
  {
    v35 = 0x800000021BE5E2F0;
  }

  else
  {
    v35 = 0x800000021BE5E2D0;
  }

  sub_21BE2599C();

  v6 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  v11 = v10;
  sub_21BE2832C();
  v12 = sub_21BE27D4C();
  v37 = v13;
  v38 = v12;
  v36 = v14;
  v39 = v15;

  sub_21BBC7C7C(v7, v9, v11 & 1);

  v16 = sub_21BE27DBC();
  v18 = v17;
  v20 = v19;
  sub_21BE27BEC();
  v21 = sub_21BE27D9C();
  v23 = v22;
  v25 = v24;

  sub_21BBC7C7C(v16, v18, v20 & 1);

  sub_21BE2833C();
  v26 = sub_21BE27D4C();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_21BBC7C7C(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  *a2 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v32;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  sub_21BBA4A38(v38, v37, v36 & 1);

  sub_21BBA4A38(v26, v28, v30 & 1);

  sub_21BBC7C7C(v26, v28, v30 & 1);

  sub_21BBC7C7C(v38, v37, v36 & 1);
}

uint64_t sub_21BD17AB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = sub_21BE275DC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4F0, &qword_21BE43668);
  if (v4)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_21BD17018(v6 | v3, a1 + *(v5 + 44));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA4F8, &qword_21BE436A0);
  v9 = a1 + *(result + 36);
  *v9 = v4 ^ 1;
  *(v9 + 8) = KeyPath;
  *(v9 + 16) = 0;
  return result;
}

uint64_t sub_21BD17B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA500, &unk_21BE436A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD17BC8()
{
  result = qword_27CDBA528;
  if (!qword_27CDBA528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA4F8, &qword_21BE436A0);
    sub_21BD17C54();
    sub_21BBDD1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA528);
  }

  return result;
}

unint64_t sub_21BD17C54()
{
  result = qword_27CDBA530;
  if (!qword_27CDBA530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA538, &qword_21BE43740);
    sub_21BD17CE0();
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA530);
  }

  return result;
}

unint64_t sub_21BD17CE0()
{
  result = qword_27CDBA540;
  if (!qword_27CDBA540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA548, &qword_21BE43748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA540);
  }

  return result;
}

uint64_t sub_21BD17D44()
{
  type metadata accessor for FamilyConfigLogger();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = -1;
  *(v0 + 120) = -1;
  qword_280BDCBF8 = v0;
  return result;
}

uint64_t sub_21BD17D88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE26A4C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD17E60, v1, 0);
}

uint64_t sub_21BD17E60()
{
  v47 = v0;
  v1 = [*(v0 + 16) members];
  sub_21BBE66D8();
  v2 = sub_21BE28C3C();

  if (v2 >> 62)
  {
    v3 = sub_21BE2951C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    v13 = *(v0 + 48);
    sub_21BE2615C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FCC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v14, v15, "No family, no logging", v16, 2u);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v20 = *(v0 + 24);
    v19 = *(v0 + 32);

    (*(v18 + 8))(v17, v19);
    *(v20 + 112) = -1;
    goto LABEL_14;
  }

  v4 = [*(v0 + 16) members];
  v5 = sub_21BE28C3C();

  if (v5 >> 62)
  {
    v6 = sub_21BE2951C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 72) = v6;
  v7 = *(v0 + 16);

  v8 = [v7 members];
  v9 = sub_21BE28C3C();
  *(v0 + 80) = v9;

  if (v9 >> 62)
  {
    v10 = sub_21BE2951C();
    *(v0 + 88) = v10;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 88) = v10;
    if (v10)
    {
LABEL_8:
      if (v10 >= 1)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        v11 = *(v0 + 80);
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x21CF047C0](0);
        }

        else
        {
          v12 = *(v11 + 32);
        }

        *(v0 + 112) = v12;
        v26 = *(MEMORY[0x277D08078] + 4);
        v27 = swift_task_alloc();
        *(v0 + 120) = v27;
        *v27 = v0;
        v27[1] = sub_21BD18364;

        return MEMORY[0x28215E5F0](0);
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v28 = *(v0 + 80);

  if (!*(v0 + 72))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_27;
  }

  v29 = *(v0 + 24);
  if (!*(v29 + 112))
  {
    v31 = *(v0 + 56);
    sub_21BE2615C();
    v32 = sub_21BE26A2C();
    v33 = sub_21BE28FCC();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 56);
    v36 = *(v0 + 32);
    v37 = *(v0 + 40);
    if (v34)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21BB35000, v32, v33, "No Change in messages configured for Family, not sending event to Core Anlaytics", v38, 2u);
      MEMORY[0x21CF05C50](v38, -1, -1);
    }

    (*(v37 + 8))(v35, v36);
    goto LABEL_14;
  }

  *(v29 + 112) = 0;
  if (qword_27CDB4F68 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v46[0] = 44;
  sub_21BCA5BA8(v46, 0);
  v30 = *(v0 + 64);
  sub_21BE2615C();
  v39 = sub_21BE26A2C();
  v40 = sub_21BE28FCC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v0 + 72);
    v42 = swift_slowAlloc();
    *v42 = 134218496;
    *(v42 + 4) = 0;
    *(v42 + 12) = 2048;
    *(v42 + 14) = v41;
    *(v42 + 22) = 2048;
    *(v42 + 24) = 0;
    _os_log_impl(&dword_21BB35000, v39, v40, "Logged %ld out of %ld [%ld%%] members with iMessage config", v42, 0x20u);
    MEMORY[0x21CF05C50](v42, -1, -1);
  }

  v43 = *(v0 + 64);
  v44 = *(v0 + 32);
  v45 = *(v0 + 40);

  (*(v45 + 8))(v43, v44);
LABEL_14:
  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = *(v0 + 48);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_21BD18364()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_21BD18474, v2, 0);
}

uint64_t sub_21BD18474()
{
  v37 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = sub_21BE291BC();

  v4 = v2 + (v3 & 1);
  if (__OFADD__(v2, v3 & 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = v0[13] + 1;
  if (v5 == v0[11])
  {
    v6 = v0[10];

    v7 = 100 * v4;
    if ((v4 * 100) >> 64 == (100 * v4) >> 63)
    {
      v8 = v0[9];
      if (v8)
      {
        if (v7 != 0x8000000000000000 || v8 != -1)
        {
          v10 = v0[3];
          v3 = v7 / v8;
          if (v7 / v8 == *(v10 + 112))
          {
            v11 = v0[7];
            sub_21BE2615C();
            v12 = sub_21BE26A2C();
            v13 = sub_21BE28FCC();
            v14 = os_log_type_enabled(v12, v13);
            v15 = v0[7];
            v16 = v0[4];
            v17 = v0[5];
            if (v14)
            {
              v18 = swift_slowAlloc();
              *v18 = 0;
              _os_log_impl(&dword_21BB35000, v12, v13, "No Change in messages configured for Family, not sending event to Core Anlaytics", v18, 2u);
              MEMORY[0x21CF05C50](v18, -1, -1);
            }

            (*(v17 + 8))(v15, v16);
LABEL_24:
            v32 = v0[7];
            v31 = v0[8];
            v33 = v0[6];

            v34 = v0[1];

            return v34();
          }

          *(v10 + 112) = v3;
          if (qword_27CDB4F68 == -1)
          {
LABEL_16:
            v36[0] = 44;
            sub_21BCA5BA8(v36, v3);
            v21 = v0[8];
            sub_21BE2615C();
            v24 = sub_21BE26A2C();
            v25 = sub_21BE28FCC();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = v0[9];
              v27 = swift_slowAlloc();
              *v27 = 134218496;
              *(v27 + 4) = v4;
              *(v27 + 12) = 2048;
              *(v27 + 14) = v26;
              *(v27 + 22) = 2048;
              *(v27 + 24) = v3;
              _os_log_impl(&dword_21BB35000, v24, v25, "Logged %ld out of %ld [%ld%%] members with iMessage config", v27, 0x20u);
              MEMORY[0x21CF05C50](v27, -1, -1);
            }

            v28 = v0[8];
            v29 = v0[4];
            v30 = v0[5];

            (*(v30 + 8))(v28, v29);
            goto LABEL_24;
          }

LABEL_31:
          swift_once();
          goto LABEL_16;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v0[12] = v4;
  v0[13] = v5;
  v19 = v0[10];
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x21CF047C0]();
  }

  else
  {
    v20 = *(v19 + 8 * v5 + 32);
  }

  v0[14] = v20;
  v22 = *(MEMORY[0x277D08078] + 4);
  v23 = swift_task_alloc();
  v0[15] = v23;
  *v23 = v0;
  v23[1] = sub_21BD18364;

  return MEMORY[0x28215E5F0](0);
}

uint64_t sub_21BD18808(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE26A4C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD188E0, v1, 0);
}

uint64_t sub_21BD188E0()
{
  v52 = v0;
  v2 = &selRef_fa_URLByAddingAirdropInviteParams;
  v3 = [v0[2] members];
  sub_21BBE66D8();
  v4 = sub_21BE28C3C();

  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {

    if (!i)
    {
      break;
    }

    v6 = [v0[2] v2[329]];
    v7 = sub_21BE28C3C();

    if (v7 >> 62)
    {
      v8 = sub_21BE2951C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v0[2];

    v10 = [v9 v2[329]];
    v11 = sub_21BE28C3C();

    v51 = MEMORY[0x277D84F90];
    if (v11 >> 62)
    {
      v2 = sub_21BE2951C();
      v50 = v0;
      if (!v2)
      {
LABEL_27:
        v17 = MEMORY[0x277D84F90];
LABEL_28:

        if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
        {
          goto LABEL_47;
        }

        for (j = *(v17 + 16); ; j = sub_21BE2951C())
        {
          v0 = v50;

          v27 = 100 * j;
          if ((j * 100) >> 64 == (100 * j) >> 63)
          {
            break;
          }

          __break(1u);
LABEL_47:
          ;
        }

        if (v8)
        {
          if (v27 != 0x8000000000000000 || v8 != -1)
          {
            v28 = v50[3];
            v1 = v27 / v8;
            if (v27 / v8 == *(v28 + 15))
            {
              v29 = v50[7];
              sub_21BE2615C();
              v30 = sub_21BE26A2C();
              v31 = sub_21BE28FCC();
              v32 = os_log_type_enabled(v30, v31);
              v33 = v50[7];
              v34 = v50[4];
              v35 = v50[5];
              if (v32)
              {
                v36 = swift_slowAlloc();
                *v36 = 0;
                _os_log_impl(&dword_21BB35000, v30, v31, "No Change in contacts configured for Family, not sending event to Core Anlaytics", v36, 2u);
                MEMORY[0x21CF05C50](v36, -1, -1);
              }

              (*(v35 + 1))(v33, v34);
              goto LABEL_43;
            }

            *(v28 + 15) = v1;
            if (qword_27CDB4F68 == -1)
            {
              goto LABEL_40;
            }

            goto LABEL_50;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_50:
        swift_once();
LABEL_40:
        LOBYTE(v51) = 43;
        sub_21BCA5BA8(&v51, v1);
        v37 = v50[8];
        sub_21BE2615C();
        v38 = sub_21BE26A2C();
        v39 = sub_21BE28FCC();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 134218496;
          *(v40 + 4) = j;
          *(v40 + 12) = 2048;
          *(v40 + 14) = v8;
          *(v40 + 22) = 2048;
          *(v40 + 24) = v1;
          _os_log_impl(&dword_21BB35000, v38, v39, "Logged %ld out of %ld [%ld%%] members with local contacts", v40, 0x20u);
          MEMORY[0x21CF05C50](v40, -1, -1);
        }

        v41 = v50[8];
        v42 = v50[4];
        v43 = v50[5];

        (*(v43 + 1))(v41, v42);
        goto LABEL_43;
      }
    }

    else
    {
      v2 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v50 = v0;
      if (!v2)
      {
        goto LABEL_27;
      }
    }

    v49 = v8;
    v1 = 0;
    v0 = &selRef_bundleURL;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CF047C0](v1, v11);
      }

      else
      {
        if (v1 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v12 = *(v11 + 8 * v1 + 32);
      }

      v13 = v12;
      v14 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v15 = [v12 contact];
      if (v15)
      {

        sub_21BE296BC();
        v16 = *(v51 + 16);
        sub_21BE296EC();
        sub_21BE296FC();
        sub_21BE296CC();
      }

      else
      {
      }

      ++v1;
      if (v14 == v2)
      {
        v17 = v51;
        v8 = v49;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v18 = v0[6];
  sub_21BE2615C();
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FCC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21BB35000, v19, v20, "No family, no logging", v21, 2u);
    MEMORY[0x21CF05C50](v21, -1, -1);
  }

  v23 = v0[5];
  v22 = v0[6];
  v25 = v0[3];
  v24 = v0[4];

  (*(v23 + 1))(v22, v24);
  *(v25 + 15) = -1;
LABEL_43:
  v45 = v0[7];
  v44 = v0[8];
  v46 = v0[6];

  v47 = v0[1];

  return v47();
}

uint64_t sub_21BD18E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_21BBA6A64;

  return sub_21BD18F14(a5);
}

uint64_t sub_21BD18F14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE26A4C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD18FD4, v1, 0);
}

uint64_t sub_21BD18FD4()
{
  if (qword_280BD84E8 != -1)
  {
    swift_once();
  }

  v0[7] = qword_280BDCBF8;
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_21BD190A4;
  v2 = v0[2];

  return sub_21BD17D88(v2);
}

uint64_t sub_21BD190A4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_21BD19354, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[10] = v5;
    *v5 = v3;
    v5[1] = sub_21BD19218;
    v6 = v3[7];
    v7 = v3[2];

    return sub_21BD18808(v7);
  }
}

uint64_t sub_21BD19218()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_21BD19460, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_21BD19354()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_21BE2615C();
  v5 = v1;
  sub_21BC51D50(v1);

  (*(v3 + 8))(v2, v4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_21BD19218;
  v7 = v0[7];
  v8 = v0[2];

  return sub_21BD18808(v8);
}

uint64_t sub_21BD19460()
{
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_21BE2615C();
  v5 = v1;
  sub_21BC51D50(v1);

  (*(v3 + 8))(v2, v4);
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BD19534()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21BD19594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BD22228;

  return v11(a1, a2, a3);
}

uint64_t sub_21BD196BC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BCCB0A8;

  return v9(a1, a2);
}

void sub_21BD197D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_21BD1984C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [a2 dsid];
  v10 = [objc_allocWithZone(MEMORY[0x277D082E0]) initWithFamilyMemberDSID_];

  if (v10)
  {
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v8, v4);
    aBlock[4] = sub_21BD22230;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BD197D4;
    aBlock[3] = &block_descriptor_37;
    v13 = _Block_copy(aBlock);

    [v10 startRequestWithCompletionHandler_];
    _Block_release(v13);
  }
}

void sub_21BD19A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D08238]) init];
  if (v12)
  {
    v13 = v12;
    (*(v3 + 16))(v6, a1, v2);
    v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v15 = swift_allocObject();
    (*(v3 + 32))(v15 + v14, v6, v2);
    aBlock[4] = sub_21BD21FB8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BD197D4;
    aBlock[3] = &block_descriptor_70_0;
    v16 = _Block_copy(aBlock);

    [v13 startRequestWithCompletionHandler_];
    _Block_release(v16);
  }

  else
  {
    sub_21BE2614C();
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21BB35000, v17, v18, "Unable to delete family because request does not exist", v19, 2u);
      MEMORY[0x21CF05C50](v19, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_21BD19D24(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  return sub_21BE28D2C();
}

uint64_t type metadata accessor for DeleteMemberButtonView()
{
  result = qword_27CDBA550;
  if (!qword_27CDBA550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD19E2C()
{
  sub_21BB403C0();
  if (v0 <= 0x3F)
  {
    sub_21BBE66D8();
    if (v1 <= 0x3F)
    {
      sub_21BD19F70(319, &qword_27CDB8B80, MEMORY[0x277D4D7B0]);
      if (v2 <= 0x3F)
      {
        sub_21BD19F70(319, &qword_27CDB6118, MEMORY[0x277CDE530]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for RemoveMemberDeleteFamilyDataController();
          sub_21BD19F70(319, &qword_280BD6A40, MEMORY[0x277CDD848]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21BD19F70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BD19FE0()
{
  v1 = sub_21BE25FCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (sub_21BE291EC() & 1) != 0 && ((*(v2 + 104))(v5, *MEMORY[0x277D07F40], v1), v7 = MEMORY[0x21CF01150](v5), (*(v2 + 8))(v5, v1), (v7))
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21BE32770;
    v11 = [v6 shortName];
    if (v11 || (v11 = [v6 fullName]) != 0)
    {
      v12 = v11;
      v13 = sub_21BE28A0C();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_21BBBEFE8();
    *(v10 + 32) = v13;
    *(v10 + 40) = v15;
    v16 = sub_21BE28A2C();
  }

  else
  {
    [v6 isOrganizer];
    type metadata accessor for ConfirmChildAgeViewModel();
    v17 = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v16 = sub_21BE2599C();
  }

  return v16;
}

uint64_t sub_21BD1A308()
{
  v1 = sub_21BE25FCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + 16) isOrganizer])
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_21BE2599C();

    return v8;
  }

  else
  {
    if (sub_21BE291EC())
    {
      (*(v2 + 104))(v5, *MEMORY[0x277D07F40], v1);
      MEMORY[0x21CF01150](v5);
      (*(v2 + 8))(v5, v1);
    }

    type metadata accessor for ConfirmChildAgeViewModel();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_21BE2599C();

    return v12;
  }
}

uint64_t sub_21BD1A5B4()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong stopFamilySharing];

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21BE260FC();
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5E680, &v12);
      _os_log_impl(&dword_21BB35000, v7, v8, "%s No delegate trying to stop sharing", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x21CF05C50](v10, -1, -1);
      MEMORY[0x21CF05C50](v9, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_21BD1A79C()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21BE32770;
  v4 = *(v0 + 16);
  v5 = [v4 shortName];
  if (v5 || (v5 = [v4 fullName]) != 0)
  {
    v6 = v5;
    v7 = sub_21BE28A0C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21BBBEFE8();
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  v10 = sub_21BE28A2C();

  return v10;
}

double sub_21BD1A920@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  *&v46 = v4;
  *(&v46 + 1) = v6;
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  v11 = v10;
  v23 = v12;
  sub_21BE2869C();
  sub_21BE2725C();
  LOBYTE(v4) = v11 & 1;
  v57 = v11 & 1;
  v13 = sub_21BE282AC();
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = 1;
  v31[0] = v7;
  v31[1] = v9;
  v32 = v4;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v33 = v23;
  v41 = KeyPath;
  v42 = v13;
  v43 = v15;
  v44 = sub_21BC0C5A0;
  v45 = v16;
  sub_21BD214A4(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA668, &qword_21BE439D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA678, &qword_21BE439E0);
  sub_21BD20CAC();
  sub_21BD20D64();
  sub_21BE2784C();
  v17 = v55;
  a1[8] = v54;
  a1[9] = v17;
  a1[10] = v56[0];
  *(a1 + 169) = *(v56 + 9);
  v18 = v51;
  a1[4] = v50;
  a1[5] = v18;
  v19 = v53;
  a1[6] = v52;
  a1[7] = v19;
  v20 = v47;
  *a1 = v46;
  a1[1] = v20;
  result = *&v48;
  v22 = v49;
  a1[2] = v48;
  a1[3] = v22;
  return result;
}

uint64_t sub_21BD1ABE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for DeleteMemberButtonView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA640, &qword_21BE439C8);
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  sub_21BD20154(v1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_21BD201B8(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA688, &unk_21BE439E8);
  sub_21BD20E1C();
  sub_21BE2843C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_21BE2599C();
  v17 = v16;

  v29 = v15;
  v30 = v17;
  v18 = *(v2 + 8);
  v27 = *v2;
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v26 = v2;
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
  sub_21BB3B038(&qword_27CDBA648, &qword_27CDBA640, &qword_21BE439C8);
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
  v19 = v22;
  sub_21BE27FDC();

  return (*(v23 + 8))(v10, v19);
}

__n128 sub_21BD1AFC4@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  *&v17 = v4;
  *(&v17 + 1) = v6;
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  LOBYTE(v6) = v10;
  v12 = v11;
  sub_21BE2869C();
  sub_21BE2725C();
  v13 = v6 & 1;
  v14 = sub_21BE2828C();
  KeyPath = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 96) = v21;
  *(a1 + 112) = v22;
  *(a1 + 128) = v23;
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  result = v20;
  *(a1 + 64) = v19;
  *(a1 + 80) = v20;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v14;
  return result;
}

uint64_t sub_21BD1B148@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v48 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v41 - v4;
  v5 = type metadata accessor for DeleteMemberButtonView();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v41 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v41 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  v21 = sub_21BE2599C();
  v23 = v22;

  v49 = v21;
  v50 = v23;
  sub_21BD20154(v43, &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v25 = swift_allocObject();
  sub_21BD201B8(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_21BB41FA4();
  sub_21BE2845C();
  v26 = [v19 bundleForClass_];
  v27 = sub_21BE2599C();
  v29 = v28;

  v49 = v27;
  v50 = v29;
  v30 = v47;
  sub_21BE26DEC();
  v31 = sub_21BE26DFC();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v44;
  sub_21BE2844C();
  v33 = v8[2];
  v34 = v45;
  v33(v45, v17, v7);
  v35 = v46;
  v36 = v32;
  v33(v46, v32, v7);
  v37 = v48;
  v33(v48, v34, v7);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v33(&v37[*(v38 + 48)], v35, v7);
  v39 = v8[1];
  v39(v36, v7);
  v39(v17, v7);
  v39(v35, v7);
  return (v39)(v34, v7);
}

uint64_t sub_21BD1B61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_21BE26A4C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_21BE28D7C();
  v4[9] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[10] = v9;
  v4[11] = v8;

  return MEMORY[0x2822009F8](sub_21BD1B710, v9, v8);
}

uint64_t sub_21BD1B710()
{
  v1 = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_21BD1B7BC;

  return sub_21BD210A0(v1);
}

uint64_t sub_21BD1B7BC(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  v4[2] = v2;
  v4[3] = a1;
  v5 = v3[12];
  v9 = *v2;
  *(v4 + 104) = a2;

  v6 = v3[11];
  v7 = v3[10];

  return MEMORY[0x2822009F8](sub_21BD1B8E4, v7, v6);
}

uint64_t sub_21BD1B8E4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);

  if (v1)
  {
    v3 = *(v0 + 24);
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    sub_21BE2614C();
    sub_21BC51D50(v3);
    sub_21BCD70BC(v3, 1);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v7 = *(v0 + 40);
    sub_21BD1A5B4();
  }

  v8 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BD1B9C0()
{
  v1 = sub_21BE25FCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (sub_21BE291EC())
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D07F40], v1);
    v7 = MEMORY[0x21CF01150](v5);
    (*(v2 + 8))(v5, v1);
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_21BE32770;
      v9 = [v6 shortName];
      if (!v9)
      {
        v9 = [v6 fullName];
        if (!v9)
        {
          v21 = 0;
          v23 = 0xE000000000000000;
          goto LABEL_18;
        }
      }

LABEL_17:
      v20 = v9;
      v21 = sub_21BE28A0C();
      v23 = v22;

LABEL_18:
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_21BBBEFE8();
      *(v8 + 32) = v21;
      *(v8 + 40) = v23;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = objc_opt_self();

      v26 = [v25 bundleForClass_];
      sub_21BE2599C();

      v18 = sub_21BE289DC();

      goto LABEL_19;
    }
  }

  if (![v6 isGuardian])
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D07F40], v1);
    v19 = MEMORY[0x21CF01150](v5);
    (*(v2 + 8))(v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21BE32770;
    v9 = [v6 shortName];
    if (v19)
    {
      if (!v9)
      {
        v9 = [v6 fullName];
        if (!v9)
        {
          v21 = 0;
          v23 = 0xE000000000000000;
          goto LABEL_18;
        }
      }
    }

    else if (!v9)
    {
      v9 = [v6 fullName];
      if (!v9)
      {
        v21 = 0;
        v23 = 0xE000000000000000;
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v10 = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21BE32770;
  v13 = [v6 shortName];
  if (v13 || (v13 = [v6 fullName]) != 0)
  {
    v14 = v13;
    v15 = sub_21BE28A0C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21BBBEFE8();
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v18 = sub_21BE28A2C();
LABEL_19:

  return v18;
}

uint64_t sub_21BD1BFE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v177 = a1;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA560, &qword_21BE438E8);
  v3 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v154 = &v145 - v4;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA568, &qword_21BE438F0);
  v5 = *(v175 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v175);
  v149 = &v145 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA570, &qword_21BE438F8);
  v151 = *(v158 - 8);
  v8 = *(v151 + 64);
  MEMORY[0x28223BE20](v158);
  v150 = &v145 - v9;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA578, &qword_21BE43900);
  v10 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v156 = &v145 - v11;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA580, &qword_21BE43908);
  v12 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v157 = &v145 - v13;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA588, &qword_21BE43910);
  v165 = *(v166 - 8);
  v14 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = &v145 - v15;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA590, &qword_21BE43918);
  v147 = *(v163 - 8);
  v16 = *(v147 + 64);
  MEMORY[0x28223BE20](v163);
  v152 = &v145 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA598, &qword_21BE43920);
  v148 = *(v18 - 8);
  v19 = *(v148 + 64);
  MEMORY[0x28223BE20](v18);
  v153 = &v145 - v20;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5A0, &qword_21BE43928);
  v21 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v174 = &v145 - v22;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5A8, &qword_21BE43930);
  v23 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v169 = &v145 - v24;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5B0, &qword_21BE43938);
  v25 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v161 = &v145 - v26;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5B8, &qword_21BE43940);
  v27 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v162 = &v145 - v28;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5C0, &qword_21BE43948);
  v29 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v171 = &v145 - v30;
  v31 = type metadata accessor for DeleteMemberButtonView();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5C8, &qword_21BE43950);
  v35 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v37 = &v145 - v36;
  v38 = *(v1 + 16);
  if ([v38 isChildAccount] && objc_msgSend(*(v2 + 24), sel_isOrganizer))
  {
    sub_21BD20154(v2, &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    v39 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v40 = swift_allocObject();
    v41 = sub_21BD201B8(&v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
    MEMORY[0x28223BE20](v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BCA16C0();
    sub_21BE2843C();
    KeyPath = swift_getKeyPath();
    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    v44 = &v37[*(v160 + 36)];
    *v44 = KeyPath;
    v44[1] = sub_21BC0C5A0;
    v44[2] = v43;
    sub_21BBA3854(v37, v161, &qword_27CDBA5C8, &qword_21BE43950);
    swift_storeEnumTagMultiPayload();
    sub_21BD20934();
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    v166 = v45;
    v46 = sub_21BB3B038(&qword_27CDBA628, &qword_27CDBA590, &qword_21BE43918);
    v47 = sub_21BB41FA4();
    v48 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
    v178 = v163;
    v179 = MEMORY[0x277D837D0];
    v180 = v45;
    v181 = MEMORY[0x277CE0BD8];
    v182 = v46;
    v183 = v47;
    v184 = v48;
    v185 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v49 = v162;
    sub_21BE2784C();
    sub_21BBA3854(v49, v169, &qword_27CDBA5B8, &qword_21BE43940);
    swift_storeEnumTagMultiPayload();
    sub_21BD207B0();
    sub_21BD20A18();
    v50 = v171;
    sub_21BE2784C();
    sub_21BB3A4CC(v49, &qword_27CDBA5B8, &qword_21BE43940);
    sub_21BBA3854(v50, v174, &qword_27CDBA5C0, &qword_21BE43948);
    swift_storeEnumTagMultiPayload();
    sub_21BD20724();
    v51 = sub_21BD20640();
    v178 = v176;
    v179 = MEMORY[0x277D837D0];
    v180 = v166;
    v181 = MEMORY[0x277CE0BD8];
    v182 = v51;
    v183 = v47;
    v184 = v48;
    v185 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v52 = v177;
    sub_21BE2784C();
    sub_21BB3A4CC(v50, &qword_27CDBA5C0, &qword_21BE43948);
    sub_21BB3A4CC(v37, &qword_27CDBA5C8, &qword_21BE43950);
LABEL_29:
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5D0, &qword_21BE43958);
    return (*(*(v142 - 8) + 56))(v52, 0, 1, v142);
  }

  v146 = v5;
  v53 = *(v2 + 24);
  if (![v53 isOrganizer] || (objc_msgSend(v38, sel_isChildAccount) & 1) != 0 || (objc_msgSend(v38, sel_isMe) & 1) != 0)
  {
    if ([v38 isMe] && ((objc_msgSend(v38, sel_canRemoveSelf) & 1) == 0 && (sub_21BE291EC() & 1) != 0 || objc_msgSend(v38, sel_isChildAccount)))
    {
      sub_21BD20154(v2, &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      v54 = (*(v32 + 80) + 16) & ~*(v32 + 80);
      v55 = swift_allocObject();
      v56 = sub_21BD201B8(&v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v55 + v54);
      MEMORY[0x28223BE20](v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA650, &qword_21BE439D0);
      sub_21BD20C20();
      v57 = v164;
      sub_21BE2843C();
      (*(v165 + 16))(v156, v57, v166);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDBA638, &qword_27CDBA588, &qword_21BE43910);
      v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA640, &qword_21BE439C8);
      v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
      v60 = sub_21BB3B038(&qword_27CDBA648, &qword_27CDBA640, &qword_21BE439C8);
      v61 = sub_21BB41FA4();
      v62 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
      v178 = v58;
      v179 = MEMORY[0x277D837D0];
      v180 = v59;
      v181 = MEMORY[0x277CE0BD8];
      v182 = v60;
      v183 = v61;
      v184 = v62;
      v185 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v63 = v157;
      sub_21BE2784C();
      sub_21BBA3854(v63, v169, &qword_27CDBA580, &qword_21BE43908);
      swift_storeEnumTagMultiPayload();
      sub_21BD207B0();
      sub_21BD20A18();
      v64 = v171;
      sub_21BE2784C();
      sub_21BB3A4CC(v63, &qword_27CDBA580, &qword_21BE43908);
      sub_21BBA3854(v64, v174, &qword_27CDBA5C0, &qword_21BE43948);
      swift_storeEnumTagMultiPayload();
      sub_21BD20724();
      v65 = sub_21BD20640();
      v178 = v176;
      v179 = MEMORY[0x277D837D0];
      v180 = v59;
      v181 = MEMORY[0x277CE0BD8];
      v182 = v65;
      v183 = v61;
      v184 = v62;
      v185 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v52 = v177;
      sub_21BE2784C();
      sub_21BB3A4CC(v64, &qword_27CDBA5C0, &qword_21BE43948);
      (*(v165 + 8))(v164, v166);
      goto LABEL_29;
    }

    if ([v38 canRemoveSelf] && objc_msgSend(v38, sel_isMe) && (objc_msgSend(v53, sel_isOrganizer) & 1) == 0)
    {
      v133 = v150;
      sub_21BD1ABE8(v150);
      (*(v151 + 16))(v156, v133, v158);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDBA638, &qword_27CDBA588, &qword_21BE43910);
      v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA640, &qword_21BE439C8);
      v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
      v165 = v135;
      v136 = sub_21BB3B038(&qword_27CDBA648, &qword_27CDBA640, &qword_21BE439C8);
      v137 = sub_21BB41FA4();
      v138 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
      v178 = v134;
      v179 = MEMORY[0x277D837D0];
      v180 = v135;
      v181 = MEMORY[0x277CE0BD8];
      v182 = v136;
      v183 = v137;
      v184 = v138;
      v185 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v139 = v157;
      sub_21BE2784C();
      sub_21BBA3854(v139, v169, &qword_27CDBA580, &qword_21BE43908);
      swift_storeEnumTagMultiPayload();
      sub_21BD207B0();
      sub_21BD20A18();
      v140 = v171;
      sub_21BE2784C();
      sub_21BB3A4CC(v139, &qword_27CDBA580, &qword_21BE43908);
      sub_21BBA3854(v140, v174, &qword_27CDBA5C0, &qword_21BE43948);
      swift_storeEnumTagMultiPayload();
      sub_21BD20724();
      v141 = sub_21BD20640();
      v178 = v176;
      v179 = MEMORY[0x277D837D0];
      v180 = v165;
      v181 = MEMORY[0x277CE0BD8];
      v182 = v141;
      v183 = v137;
      v184 = v138;
      v185 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v52 = v177;
      sub_21BE2784C();
      sub_21BB3A4CC(v140, &qword_27CDBA5C0, &qword_21BE43948);
      (*(v151 + 8))(v150, v158);
      goto LABEL_29;
    }

    if ([v38 isOrganizer] && objc_msgSend(v38, sel_isMe))
    {
      sub_21BD20154(v2, &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      v66 = (*(v32 + 80) + 16) & ~*(v32 + 80);
      v67 = swift_allocObject();
      v68 = sub_21BD201B8(v34, v67 + v66);
      MEMORY[0x28223BE20](v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5D8, &qword_21BE43968);
      sub_21BD20224();
      v69 = v154;
      sub_21BE2843C();
      v70 = *(v2 + 40);
      v71 = swift_getKeyPath();
      v72 = swift_allocObject();
      *(v72 + 16) = v70;
      v73 = &v69[*(v176 + 36)];
      *v73 = v71;
      v73[1] = sub_21BC0AE98;
      v73[2] = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_21BE32770;
      v75 = [v38 shortName];
      if (v75 || (v75 = [v38 fullName]) != 0)
      {
        v76 = v75;
        v77 = sub_21BE28A0C();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0xE000000000000000;
      }

      *(v74 + 56) = MEMORY[0x277D837D0];
      *(v74 + 64) = sub_21BBBEFE8();
      *(v74 + 32) = v77;
      *(v74 + 40) = v79;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v81 = objc_opt_self();

      v82 = [v81 bundleForClass_];
      sub_21BE2599C();

      v83 = sub_21BE289DC();
      v85 = v84;

      v188 = v83;
      v189 = v85;
      v86 = *(v2 + 8);
      v186 = *v2;
      v187 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
      v87 = sub_21BE2841C();
      v171 = &v145;
      LODWORD(v170) = v180;
      v88 = MEMORY[0x28223BE20](v87);
      MEMORY[0x28223BE20](v88);
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
      v89 = sub_21BD20640();
      v90 = sub_21BB41FA4();
      v143 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
      v91 = v176;
      v92 = v149;
      v93 = v154;
      sub_21BE27FDC();

      sub_21BB3A4CC(v93, &qword_27CDBA560, &qword_21BE438E8);
      v94 = v146;
      v95 = v175;
      (*(v146 + 16))(v174, v92, v175);
      swift_storeEnumTagMultiPayload();
      sub_21BD20724();
      v178 = v91;
      v179 = MEMORY[0x277D837D0];
      v180 = v169;
      v181 = MEMORY[0x277CE0BD8];
      v182 = v89;
      v183 = v90;
      v184 = v143;
      v185 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      v52 = v177;
      sub_21BE2784C();
      (*(v94 + 8))(v92, v95);
      goto LABEL_29;
    }

    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5D0, &qword_21BE43958);
    v97 = *(*(v96 - 8) + 56);
    v98 = v96;
    v99 = v177;

    return v97(v99, 1, 1, v98);
  }

  else
  {
    v166 = v18;
    sub_21BD20154(v2, &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    v101 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v102 = swift_allocObject();
    v103 = sub_21BD201B8(v34, v102 + v101);
    MEMORY[0x28223BE20](v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BCA16C0();
    sub_21BE2843C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_21BE32770;
    v105 = [v38 shortName];
    if (v105 || (v105 = [v38 fullName]) != 0)
    {
      v106 = v105;
      v107 = sub_21BE28A0C();
      v109 = v108;
    }

    else
    {
      v107 = 0;
      v109 = 0xE000000000000000;
    }

    *(v104 + 56) = MEMORY[0x277D837D0];
    *(v104 + 64) = sub_21BBBEFE8();
    *(v104 + 32) = v107;
    *(v104 + 40) = v109;
    type metadata accessor for ConfirmChildAgeViewModel();
    v110 = swift_getObjCClassFromMetadata();
    v111 = objc_opt_self();

    v112 = [v111 bundleForClass_];
    sub_21BE2599C();

    v113 = sub_21BE289DC();
    v115 = v114;
    v165 = v114;

    v188 = v113;
    v189 = v115;
    v116 = *(v2 + 8);
    v186 = *v2;
    v187 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    v117 = sub_21BE2841C();
    v164 = &v145;
    v156 = v178;
    LODWORD(v155) = v180;
    v118 = MEMORY[0x28223BE20](v117);
    MEMORY[0x28223BE20](v118);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
    v154 = sub_21BB3B038(&qword_27CDBA628, &qword_27CDBA590, &qword_21BE43918);
    v120 = sub_21BB41FA4();
    v144 = sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
    v158 = v144;
    v121 = v119;
    v157 = v119;
    v122 = v163;
    v123 = v153;
    v124 = v152;
    sub_21BE27FDC();

    (*(v147 + 8))(v124, v122);
    v125 = v148;
    v126 = v166;
    (*(v148 + 16))(v161, v123, v166);
    swift_storeEnumTagMultiPayload();
    sub_21BD20934();
    v178 = v122;
    v179 = MEMORY[0x277D837D0];
    v180 = v121;
    v181 = MEMORY[0x277CE0BD8];
    v182 = v154;
    v183 = v120;
    v184 = v144;
    v127 = v120;
    v185 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v128 = v162;
    sub_21BE2784C();
    sub_21BBA3854(v128, v169, &qword_27CDBA5B8, &qword_21BE43940);
    swift_storeEnumTagMultiPayload();
    sub_21BD207B0();
    sub_21BD20A18();
    v129 = v171;
    sub_21BE2784C();
    sub_21BB3A4CC(v128, &qword_27CDBA5B8, &qword_21BE43940);
    sub_21BBA3854(v129, v174, &qword_27CDBA5C0, &qword_21BE43948);
    swift_storeEnumTagMultiPayload();
    sub_21BD20724();
    v130 = sub_21BD20640();
    v178 = v176;
    v179 = MEMORY[0x277D837D0];
    v180 = v157;
    v181 = MEMORY[0x277CE0BD8];
    v182 = v130;
    v183 = v127;
    v184 = v158;
    v185 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v131 = v177;
    sub_21BE2784C();
    sub_21BB3A4CC(v129, &qword_27CDBA5C0, &qword_21BE43948);
    (*(v125 + 8))(v153, v126);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5D0, &qword_21BE43958);
    return (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
  }
}

__n128 sub_21BD1DEA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21BE32770;
  v7 = *(a1 + 16);
  v8 = [v7 shortName];
  if (v8 || (v8 = [v7 fullName]) != 0)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_21BBBEFE8();
  *(v6 + 32) = v10;
  *(v6 + 40) = v12;
  v13 = sub_21BE28A2C();
  v15 = v14;

  *&v28 = v13;
  *(&v28 + 1) = v15;
  sub_21BB41FA4();
  v16 = sub_21BE27DBC();
  v18 = v17;
  LOBYTE(v15) = v19;
  sub_21BE282AC();
  v20 = sub_21BE27D4C();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_21BBC7C7C(v16, v18, v15 & 1);

  sub_21BE2869C();
  sub_21BE2725C();
  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v26;
  *(a2 + 96) = v32;
  *(a2 + 112) = v33;
  *(a2 + 128) = v34;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  result = v31;
  *(a2 + 64) = v30;
  *(a2 + 80) = v31;
  return result;
}

__n128 sub_21BD1E130@<Q0>(uint64_t a1@<X8>)
{
  *&v16 = sub_21BD1A79C();
  *(&v16 + 1) = v2;
  sub_21BB41FA4();
  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  sub_21BE2828C();
  v8 = sub_21BE27D4C();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_21BBC7C7C(v3, v5, v7 & 1);

  sub_21BE2869C();
  sub_21BE2725C();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 96) = v20;
  *(a1 + 112) = v21;
  *(a1 + 128) = v22;
  *(a1 + 32) = v16;
  *(a1 + 48) = v17;
  result = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v19;
  return result;
}

uint64_t sub_21BD1E27C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for DeleteMemberButtonView();
  v53[0] = *(v3 - 8);
  v4 = *(v53[0] + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53[1] = v5;
  v54 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v53 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v60 = *(v56 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v59 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v58 = v53 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v57 = v53 - v16;
  MEMORY[0x28223BE20](v15);
  v55 = v53 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21BE32770;
  v19 = a1;
  v20 = *(a1 + 16);
  v21 = [v20 shortName];
  if (v21 || (v21 = [v20 fullName]) != 0)
  {
    v22 = v21;
    v23 = sub_21BE28A0C();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_21BBBEFE8();
  *(v18 + 32) = v23;
  *(v18 + 40) = v25;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_opt_self();

  v28 = [v27 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  sub_21BE2599C();

  v29 = sub_21BE289DC();
  v31 = v30;

  v62 = v29;
  v63 = v31;
  sub_21BE26DDC();
  v32 = sub_21BE26DFC();
  v33 = *(*(v32 - 8) + 56);
  v33(v9, 0, 1, v32);
  v34 = v19;
  v35 = v54;
  sub_21BD20154(v34, v54);
  v36 = (*(v53[0] + 80) + 16) & ~*(v53[0] + 80);
  v37 = swift_allocObject();
  sub_21BD201B8(v35, v37 + v36);
  sub_21BB41FA4();
  v38 = v55;
  sub_21BE2844C();
  v39 = [v27 bundleForClass_];
  v40 = sub_21BE2599C();
  v42 = v41;

  v62 = v40;
  v63 = v42;
  sub_21BE26DEC();
  v33(v9, 0, 1, v32);
  v43 = v57;
  sub_21BE2844C();
  v44 = v60;
  v45 = *(v60 + 16);
  v46 = v58;
  v47 = v56;
  v45(v58, v38, v56);
  v48 = v59;
  v45(v59, v43, v47);
  v49 = v61;
  v45(v61, v46, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v45(&v49[*(v50 + 48)], v48, v47);
  v51 = *(v44 + 8);
  v51(v43, v47);
  v51(v38, v47);
  v51(v48, v47);
  return (v51)(v46, v47);
}

uint64_t sub_21BD1E87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_21BE26A4C();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = sub_21BE27B0C();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();
  v11 = sub_21BE288BC();
  v4[24] = v11;
  v12 = *(v11 - 8);
  v4[25] = v12;
  v13 = *(v12 + 64) + 15;
  v4[26] = swift_task_alloc();
  sub_21BE28D7C();
  v4[27] = sub_21BE28D6C();
  v15 = sub_21BE28D0C();
  v4[28] = v15;
  v4[29] = v14;

  return MEMORY[0x2822009F8](sub_21BD1EA28, v15, v14);
}

uint64_t sub_21BD1EA28()
{
  v1 = *(*(v0 + 136) + 16);
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  v2[1] = sub_21BD1EAD4;

  return sub_21BD210A0(v1);
}

uint64_t sub_21BD1EAD4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 240);
  v9 = *v2;
  *(v4 + 248) = a1;
  *(v4 + 256) = a2;

  v6 = *(v3 + 232);
  v7 = *(v3 + 224);

  return MEMORY[0x2822009F8](sub_21BD1EC00, v7, v6);
}

uint64_t sub_21BD1EC00()
{
  v45 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);

  if (v1)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 160);
    sub_21BE2614C();
    v5 = v3;
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FDC();
    sub_21BCD70BC(v3, 1);
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 248);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    if (v8)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v42 = v10;
      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = *(v0 + 120);
      v18 = sub_21BE29A5C();
      v20 = sub_21BB3D81C(v18, v19, &v43);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_21BB35000, v6, v7, "Unable to remove family member %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21CF05C50](v14, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);

      sub_21BCD70BC(v9, 1);
      (*(v11 + 8))(v42, v12);
    }

    else
    {

      sub_21BCD70BC(v9, 1);
      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 192);
    v24 = *(v0 + 136);
    v25 = type metadata accessor for DeleteMemberButtonView();
    v26 = *(v25 + 36);
    sub_21BD203B8(&qword_27CDB8B90, &qword_21BE43960, MEMORY[0x277D4D7B0], v21);
    v27 = sub_21BE2887C();
    v28 = *(v22 + 8);
    v28(v21, v23);
    if (v27)
    {
      v29 = *(v0 + 208);
      v30 = *(v0 + 192);
      sub_21BD203B8(&qword_27CDB8B90, &qword_21BE43960, MEMORY[0x277D4D7B0], v29);
      sub_21BE288AC();
      v28(v29, v30);
    }

    else
    {
      v32 = *(v0 + 176);
      v31 = *(v0 + 184);
      v33 = *(v0 + 168);
      v34 = *(v0 + 136) + *(v25 + 40);
      sub_21BD203B8(&qword_27CDB6138, &qword_21BE33F20, MEMORY[0x277CDE530], v31);
      sub_21BE27AFC();
      (*(v32 + 8))(v31, v33);
    }

    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v44 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000021BE5AE40;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = 1;

    v36 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v44, v36);
  }

  v37 = *(v0 + 208);
  v38 = *(v0 + 184);
  v39 = *(v0 + 160);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_21BD1F03C(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

double sub_21BD1F09C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();
  v8 = v7;

  *&v45 = v6;
  *(&v45 + 1) = v8;
  sub_21BB41FA4();
  v9 = sub_21BE27DBC();
  v11 = v10;
  v13 = v12;
  if (*(a1 + 40) == 1)
  {
    sub_21BE282AC();
  }

  else
  {
    sub_21BE2828C();
  }

  v14 = sub_21BE27D4C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_21BBC7C7C(v9, v11, v13 & 1);

  sub_21BE2869C();
  sub_21BE2725C();
  v54 = v18 & 1;
  v33[0] = v14;
  v33[1] = v16;
  v34 = v18 & 1;
  v35 = v20;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v36 = v26;
  v37 = v27;
  v39 = v29;
  v38 = v28;
  KeyPath = swift_getKeyPath();
  v44 = 1;
  sub_21BD2203C(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA5F0, &unk_21BE43970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5D38, &qword_21BE33648);
  sub_21BD202B0();
  sub_21BBC7DA8();
  sub_21BE2784C();
  v21 = v52;
  a2[6] = v51;
  a2[7] = v21;
  a2[8] = v53[0];
  *(a2 + 138) = *(v53 + 10);
  v22 = v48;
  a2[2] = v47;
  a2[3] = v22;
  v23 = v50;
  a2[4] = v49;
  a2[5] = v23;
  result = *&v45;
  v25 = v46;
  *a2 = v45;
  a2[1] = v25;
  return result;
}

uint64_t sub_21BD1F3F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for DeleteMemberButtonView();
  v53[0] = *(v3 - 8);
  v4 = *(v53[0] + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53[1] = v5;
  v54 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v53 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v60 = *(v56 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v59 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v58 = v53 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v57 = v53 - v16;
  MEMORY[0x28223BE20](v15);
  v55 = v53 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21BE32770;
  v19 = a1;
  v20 = *(a1 + 16);
  v21 = [v20 shortName];
  if (v21 || (v21 = [v20 fullName]) != 0)
  {
    v22 = v21;
    v23 = sub_21BE28A0C();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_21BBBEFE8();
  *(v18 + 32) = v23;
  *(v18 + 40) = v25;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_opt_self();

  v28 = [v27 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
  sub_21BE2599C();

  v29 = sub_21BE289DC();
  v31 = v30;

  v62 = v29;
  v63 = v31;
  sub_21BE26DDC();
  v32 = sub_21BE26DFC();
  v33 = *(*(v32 - 8) + 56);
  v33(v9, 0, 1, v32);
  v34 = v19;
  v35 = v54;
  sub_21BD20154(v34, v54);
  v36 = (*(v53[0] + 80) + 16) & ~*(v53[0] + 80);
  v37 = swift_allocObject();
  sub_21BD201B8(v35, v37 + v36);
  sub_21BB41FA4();
  v38 = v55;
  sub_21BE2844C();
  v39 = [v27 bundleForClass_];
  v40 = sub_21BE2599C();
  v42 = v41;

  v62 = v40;
  v63 = v42;
  sub_21BE26DEC();
  v33(v9, 0, 1, v32);
  v43 = v57;
  sub_21BE2844C();
  v44 = v60;
  v45 = *(v60 + 16);
  v46 = v58;
  v47 = v56;
  v45(v58, v38, v56);
  v48 = v59;
  v45(v59, v43, v47);
  v49 = v61;
  v45(v61, v46, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v45(&v49[*(v50 + 48)], v48, v47);
  v51 = *(v44 + 8);
  v51(v43, v47);
  v51(v38, v47);
  v51(v48, v47);
  return (v51)(v46, v47);
}

uint64_t sub_21BD1F9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DeleteMemberButtonView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21BD20154(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21BE28D7C();
  v13 = sub_21BE28D6C();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_21BD201B8(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_21BBA932C(0, 0, v11, a3, v15);
}

uint64_t sub_21BD1FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_21BE26A4C();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = sub_21BE28D7C();
  v4[22] = sub_21BE28D6C();
  v8 = swift_task_alloc();
  v4[23] = v8;
  *v8 = v4;
  v8[1] = sub_21BD1FCC4;

  return sub_21BD21B6C();
}

uint64_t sub_21BD1FCC4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v10 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;

  v8 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD1FE0C, v8, v7);
}

uint64_t sub_21BD1FE0C()
{
  v30 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  if (v1)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 160);
    sub_21BE2614C();
    v5 = v3;
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FDC();
    sub_21BCD70BC(v3, 1);
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 192);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    if (v8)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v27 = v10;
      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = *(v0 + 120);
      v18 = sub_21BE29A5C();
      v20 = sub_21BB3D81C(v18, v19, &v28);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_21BB35000, v6, v7, "Unable to delete family %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21CF05C50](v14, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);

      sub_21BCD70BC(v9, 1);
      (*(v11 + 8))(v27, v12);
    }

    else
    {

      sub_21BCD70BC(v9, 1);
      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    v21 = *(v0 + 136);
    sub_21BD1A5B4();
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = 0x800000021BE5AE20;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = 1;

    v23 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v29, v23);
  }

  v24 = *(v0 + 160);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_21BD200F0@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21BD20154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteMemberButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD201B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteMemberButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD20224()
{
  result = qword_27CDBA5E0;
  if (!qword_27CDBA5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5D8, &qword_21BE43968);
    sub_21BD202B0();
    sub_21BBC7DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA5E0);
  }

  return result;
}

unint64_t sub_21BD202B0()
{
  result = qword_27CDBA5E8;
  if (!qword_27CDBA5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5F0, &unk_21BE43970);
    sub_21BCA16C0();
    sub_21BB3B038(&qword_27CDB5D40, &qword_27CDB5D48, &unk_21BE33650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA5E8);
  }

  return result;
}

uint64_t sub_21BD203B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_21BE2754C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_21BBA3854(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_21BE28FEC();
    v22 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_21BD20640()
{
  result = qword_27CDBA5F8;
  if (!qword_27CDBA5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA560, &qword_21BE438E8);
    sub_21BB3B038(&qword_27CDBA600, &qword_27CDBA608, &unk_21BE439B8);
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA5F8);
  }

  return result;
}

unint64_t sub_21BD20724()
{
  result = qword_27CDBA610;
  if (!qword_27CDBA610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5C0, &qword_21BE43948);
    sub_21BD207B0();
    sub_21BD20A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA610);
  }

  return result;
}

unint64_t sub_21BD207B0()
{
  result = qword_27CDBA618;
  if (!qword_27CDBA618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5B8, &qword_21BE43940);
    sub_21BD20934();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA590, &qword_21BE43918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    sub_21BB3B038(&qword_27CDBA628, &qword_27CDBA590, &qword_21BE43918);
    sub_21BB41FA4();
    sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA618);
  }

  return result;
}

unint64_t sub_21BD20934()
{
  result = qword_27CDBA620;
  if (!qword_27CDBA620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5C8, &qword_21BE43950);
    sub_21BB3B038(&qword_27CDBA628, &qword_27CDBA590, &qword_21BE43918);
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA620);
  }

  return result;
}

unint64_t sub_21BD20A18()
{
  result = qword_27CDBA630;
  if (!qword_27CDBA630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA580, &qword_21BE43908);
    sub_21BB3B038(&qword_27CDBA638, &qword_27CDBA588, &qword_21BE43910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA640, &qword_21BE439C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    sub_21BB3B038(&qword_27CDBA648, &qword_27CDBA640, &qword_21BE439C8);
    sub_21BB41FA4();
    sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA630);
  }

  return result;
}

unint64_t sub_21BD20C20()
{
  result = qword_27CDBA658;
  if (!qword_27CDBA658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA650, &qword_21BE439D0);
    sub_21BD20CAC();
    sub_21BD20D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA658);
  }

  return result;
}

unint64_t sub_21BD20CAC()
{
  result = qword_27CDBA660;
  if (!qword_27CDBA660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA668, &qword_21BE439D8);
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA660);
  }

  return result;
}

unint64_t sub_21BD20D64()
{
  result = qword_27CDBA670;
  if (!qword_27CDBA670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA678, &qword_21BE439E0);
    sub_21BD20E1C();
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA670);
  }

  return result;
}

unint64_t sub_21BD20E1C()
{
  result = qword_27CDBA680;
  if (!qword_27CDBA680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA688, &unk_21BE439E8);
    sub_21BCA16C0();
    sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA680);
  }

  return result;
}

double sub_21BD20ED4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_21BD1E130(a1).n128_u64[0];
  return result;
}

uint64_t sub_21BD20FB0(uint64_t a1)
{
  v4 = *(type metadata accessor for DeleteMemberButtonView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BD1E87C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BD210A0(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_21BE26A4C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD21160, 0, 0);
}

uint64_t sub_21BD21160()
{
  v1 = v0[7];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "RemoveMemberDeleteFamilyDataController removeMember", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 8))(v5, v7);
  [v8 isMe];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *(v9 + 16) = v8;
  v10 = *(MEMORY[0x277D859E0] + 4);
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9800, &qword_21BE40580);
  *v11 = v0;
  v11[1] = sub_21BD21314;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000015, 0x800000021BE5E590, sub_21BD2149C, v9, v12);
}

uint64_t sub_21BD21314()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_21BD2142C, 0, 0);
}

uint64_t sub_21BD2142C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_21BD2150C(uint64_t a1)
{
  v4 = *(type metadata accessor for DeleteMemberButtonView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BD1B61C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for DeleteMemberButtonView();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  MEMORY[0x21CF05D90](v3 + 32);
  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE288BC();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21BE27B0C();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
    v10 = *(v3 + v8);
  }

  v11 = *(v3 + v1[11]);

  v12 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE26F5C();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
    v14 = *(v3 + v12);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for DeleteMemberButtonView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  MEMORY[0x21CF05D90](v0 + v2 + 32);
  v7 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21BE288BC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE27B0C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v5 + v1[11]);

  v14 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21BE26F5C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  return swift_deallocObject();
}

uint64_t sub_21BD21A7C(uint64_t a1)
{
  v4 = *(type metadata accessor for DeleteMemberButtonView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BD1FBAC(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BD21B6C()
{
  v1 = sub_21BE26A4C();
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD21C28, 0, 0);
}

uint64_t sub_21BD21C28()
{
  v1 = v0[6];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "RemoveMemberDeleteFamilyDataController deleteFamily", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  (*(v6 + 8))(v5, v7);
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9800, &qword_21BE40580);
  *v9 = v0;
  v9[1] = sub_21BD21DB8;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x61466574656C6564, 0xEE002928796C696DLL, sub_21BD19A44, 0, v10);
}

uint64_t sub_21BD21DB8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BD21EB4, 0, 0);
}

uint64_t sub_21BD21EB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t objectdestroy_35Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9808, &qword_21BE40588);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_21BD22044()
{
  result = qword_27CDBA690;
  if (!qword_27CDBA690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA698, &unk_21BE43AA0);
    sub_21BD220C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA690);
  }

  return result;
}

unint64_t sub_21BD220C8()
{
  result = qword_27CDBA6A0;
  if (!qword_27CDBA6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA5D0, &qword_21BE43958);
    sub_21BD20724();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA560, &qword_21BE438E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93D0, &qword_21BE439B0);
    sub_21BD20640();
    sub_21BB41FA4();
    sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA6A0);
  }

  return result;
}

FamilyCircleUI::AppleCardFlowIdentifier_optional __swiftcall AppleCardFlowIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleCardFlowIdentifier.rawValue.getter()
{
  v1 = 0x7261436572616873;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21BD22328()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD223FC()
{
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD224BC()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BD22598(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x7261436572616873;
  v4 = 0x800000021BE55690;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x800000021BE55670;
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

FamilyCircleUI::AppleCardFlowContext_optional __swiftcall AppleCardFlowContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleCardFlowContext.rawValue.getter()
{
  v1 = 0x6553796C696D6166;
  v2 = 0x726143656C707061;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21BD22728()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD22808()
{
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD228D4()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BD229BC(unint64_t *a1@<X8>)
{
  v2 = 0xEE0073676E697474;
  v3 = 0x6553796C696D6166;
  v4 = 0xEF796C696D614664;
  v5 = 0x726143656C707061;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000021BE556C0;
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

FamilyCircleUI::AppleCashFlowIdentifier_optional __swiftcall AppleCashFlowIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppleCashFlowIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7070417075746573;
  }
}

uint64_t sub_21BD22B20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000014;
  v4 = 0x800000021BE55700;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x800000021BE55700;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7070417075746573;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0068736143656CLL;
  }

  v8 = 0xD000000000000014;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7070417075746573;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0068736143656CLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BD22C24()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD22CD8()
{
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD22D78()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BD22E34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0068736143656CLL;
  v4 = 0x800000021BE55700;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7070417075746573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

FamilyCircleUI::AppleCashFlowContext_optional __swiftcall AppleCashFlowContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleCashFlowContext.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_21BD22F68(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0xE700000000000000;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3 == 1)
  {
    v4 = 0x800000021BE55740;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x800000021BE55720;
  }

  if (*a2 == 1)
  {
    v8 = 0x800000021BE55740;
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x800000021BE55720;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BD23048()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD230F8()
{
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD23194()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

void sub_21BD2324C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000021BE55740;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v5)
  {
    v3 = 0x800000021BE55720;
  }

  *a1 = v6;
  a1[1] = v3;
}

id sub_21BD232B8()
{
  result = [objc_allocWithZone(type metadata accessor for FamilyAppleCardAndCashAnalytics()) init];
  qword_27CDBA6A8 = result;
  return result;
}

id FamilyAppleCardAndCashAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FamilyAppleCardAndCashAnalytics.shared.getter()
{
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDBA6A8;

  return v1;
}

id FamilyAppleCardAndCashAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyAppleCardAndCashAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FamilyAppleCardAndCashAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyAppleCardAndCashAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD23430(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 41);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v12 = 47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  *(inited + 32) = 0x746E6F43776F6C46;
  *(inited + 40) = 0xEB00000000747865;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 0xEF796C696D614664;
      v5 = 0x726143656C707061;
    }

    else
    {
      v4 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
    }
  }

  else if (v2)
  {
    v4 = 0x800000021BE556C0;
    v5 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xEE0073676E697474;
    v5 = 0x6553796C696D6166;
  }

  v6 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  strcpy((inited + 88), "FlowIdentifier");
  *(inited + 103) = -18;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v7 = 0x800000021BE55690;
      v8 = 0xD000000000000017;
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }
  }

  else if (v1)
  {
    v7 = 0x800000021BE55670;
    v8 = 0xD000000000000015;
  }

  else
  {
    v7 = 0xE900000000000064;
    v8 = 0x7261436572616873;
  }

  *(inited + 128) = v6;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v8;
  *(inited + 112) = v7;
  v9 = inited;

  v10 = sub_21BBB5E60(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v12, v10);
}

uint64_t sub_21BD236A8(char *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v16 = 46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374D0;
  strcpy((inited + 32), "HasAppleCard");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v1;
  *(inited + 88) = 0x6765746143656741;
  *(inited + 96) = 0xEB0000000079726FLL;
  if (v3 > 0)
  {
    if (v3 == 2)
    {
      v7 = 0xE500000000000000;
      v8 = 0x646C696843;
      goto LABEL_11;
    }

    if (v3 == 1)
    {
      v7 = 0xE400000000000000;
      v8 = 1852138836;
      goto LABEL_11;
    }

LABEL_9:
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E55;
    goto LABEL_11;
  }

  if (v3)
  {
    goto LABEL_9;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746C756441;
LABEL_11:
  v9 = MEMORY[0x277D837D0];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v8;
  *(inited + 112) = v7;
  strcpy((inited + 144), "CardAccessType");
  *(inited + 159) = -18;
  switch(v2)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v10 = 0xE700000000000000;
      v11 = 0x7972616D697250;
      break;
    case 2:
      v10 = 0xEB00000000746E61;
      v11 = 0x7069636974726150;
      break;
    default:
LABEL_15:
      v10 = 0xE700000000000000;
      v11 = 0x6E776F6E6B6E55;
      break;
  }

  *(inited + 184) = v9;
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v11;
  *(inited + 168) = v10;
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x800000021BE5E6E0;
  v12 = MEMORY[0x277D83B88];
  *(inited + 240) = MEMORY[0x277D83B88];
  *(inited + 248) = &protocol witness table for Int;
  *(inited + 216) = v5;
  *(inited + 256) = 0xD00000000000001ALL;
  *(inited + 264) = 0x800000021BE5E700;
  *(inited + 296) = v12;
  *(inited + 304) = &protocol witness table for Int;
  *(inited + 272) = v4;
  v13 = inited;

  v14 = sub_21BBB5E60(v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v16, v14);
}

uint64_t sub_21BD23980(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 0x6E776F6E6B6E75;
  v12 = 48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  *(inited + 32) = 0x746E6F43776F6C46;
  *(inited + 40) = 0xEB00000000747865;
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x800000021BE55740;
      v6 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xE700000000000000;
      v6 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v6 = 0xD000000000000014;
    v5 = 0x800000021BE55720;
  }

  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  strcpy((inited + 88), "FlowIdentifier");
  *(inited + 103) = -18;
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = 0xD000000000000014;
      v8 = 0x800000021BE55700;
    }

    else
    {
      v8 = 0xE700000000000000;
    }
  }

  else
  {
    v8 = 0xEE0068736143656CLL;
    v3 = 0x7070417075746573;
  }

  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v3;
  *(inited + 112) = v8;
  v9 = inited;

  v10 = sub_21BBB5E60(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v12, v10);
}

unint64_t sub_21BD23BC8()
{
  result = qword_27CDBA6B0;
  if (!qword_27CDBA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA6B0);
  }

  return result;
}

unint64_t sub_21BD23C20()
{
  result = qword_27CDBA6B8;
  if (!qword_27CDBA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA6B8);
  }

  return result;
}

unint64_t sub_21BD23C78()
{
  result = qword_27CDBA6C0;
  if (!qword_27CDBA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA6C0);
  }

  return result;
}

unint64_t sub_21BD23CD0()
{
  result = qword_27CDBA6C8;
  if (!qword_27CDBA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA6C8);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BD23D38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21BD23D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleCashMetrics(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AppleCashMetrics(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_21BD24044(void *a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE25FCC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277D07F38], v11);
  v16 = MEMORY[0x21CF01150](v15);
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v17 = [a1 checklistRankingBucketType];
    v36 = v6;
    v37 = a3;
    v35 = v7;
    if (v17)
    {
      v18 = v17;
      v19 = sub_21BE28A0C();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = (a2 + 64);
    v23 = *(a2 + 16) + 1;
    while (--v23)
    {
      v25 = *(v22 - 4);
      v24 = *(v22 - 3);
      v26 = *(v22 - 16);
      v28 = *(v22 - 1);
      v27 = *v22;
      if (v28 == v19 && v27 == v21)
      {
        v28 = v19;
LABEL_18:

        v39 = v25;
        v40 = v24;
        v41 = v26;
        v42 = v28;
        v43 = v27;
        v32 = sub_21BBB63EC(&unk_282D85218);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA378, &qword_21BE43268);
        swift_arrayDestroy();
        v33 = sub_21BBB62CC(&unk_282D85338);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA380, &unk_21BE43F30);
        swift_arrayDestroy();
        v38[3] = &type metadata for NewVerificationRules;
        v38[4] = &off_282D927D0;
        v38[0] = v32;
        v38[1] = v33;
        sub_21BDF5AA8(&v39, v38, v37);
        return;
      }

      v22 += 5;
      if (sub_21BE2995C())
      {
        goto LABEL_18;
      }
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_21BE295EC();

    v39 = 0x272074656B637542;
    v40 = 0xE800000000000000;
    MEMORY[0x21CF03CA0](v19, v21);

    MEMORY[0x21CF03CA0](0xD00000000000001ALL, 0x800000021BE5E760);
    v30 = MEMORY[0x21CF01210](v39, v40, 0xD000000000000010, 0x800000021BE573A0, 500);

    swift_willThrow();
    v31 = v37;
    sub_21BE261BC();
    v34 = v30;
    sub_21BC51D50(v30);

    (*(v35 + 8))(v10, v36);
    if (qword_280BD6F10 != -1)
    {
      swift_once();
    }

    sub_21BBFD750(&xmmword_280BD6F18, v31);
  }

  else
  {
    if (qword_27CDB4F98 != -1)
    {
      swift_once();
    }

    sub_21BBFD750(&xmmword_27CDBA6D0, a3);
  }
}

double sub_21BD244C8()
{
  sub_21BD10F50(v1);
  xmmword_27CDBA710 = v3;
  unk_27CDBA720 = v4;
  xmmword_27CDBA730 = v5;
  xmmword_27CDBA6D0 = v1[0];
  unk_27CDBA6E0 = v1[1];
  result = *&v2;
  xmmword_27CDBA6F0 = v1[2];
  unk_27CDBA700 = v2;
  return result;
}

double sub_21BD2459C()
{
  sub_21BD3FF04(v1);
  xmmword_280BD6F58 = v3;
  unk_280BD6F68 = v4;
  xmmword_280BD6F78 = v5;
  xmmword_280BD6F18 = v1[0];
  unk_280BD6F28 = v1[1];
  result = *&v2;
  xmmword_280BD6F38 = v1[2];
  unk_280BD6F48 = v2;
  return result;
}

uint64_t sub_21BD24670()
{
  v1 = 0x6556616D65686373;
  if (*v0 != 1)
  {
    v1 = 0x6974696E69666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_21BD246E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BD24A1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BD24708(uint64_t a1)
{
  v2 = sub_21BD24D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD24744(uint64_t a1)
{
  v2 = sub_21BD24D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD24780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21BD24B40(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_21BD247B0()
{
  v0 = sub_21BE26A4C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_21BE2578C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_21BE2577C();
  sub_21BD24EA4();
  sub_21BE2576C();

  return v6;
}

uint64_t sub_21BD24A1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372 || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEB00000000736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_21BE2995C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21BD24B40(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA740, &qword_21BE43F20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD24D78();
  sub_21BE29B4C();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_21BE2986C();
    v10[30] = 1;
    sub_21BE2989C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA748, &qword_21BE43F28);
    v10[29] = 2;
    sub_21BD24DCC();
    sub_21BE298AC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_21BD24D78()
{
  result = qword_280BD6F98;
  if (!qword_280BD6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6F98);
  }

  return result;
}

unint64_t sub_21BD24DCC()
{
  result = qword_280BD69A8;
  if (!qword_280BD69A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA748, &qword_21BE43F28);
    sub_21BD24E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD69A8);
  }

  return result;
}

unint64_t sub_21BD24E50()
{
  result = qword_280BD6FC8;
  if (!qword_280BD6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6FC8);
  }

  return result;
}

unint64_t sub_21BD24EA4()
{
  result = qword_280BD6F08;
  if (!qword_280BD6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6F08);
  }

  return result;
}

uint64_t sub_21BD24EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6878, &unk_21BE357E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BD24F74()
{
  result = qword_27CDBA750;
  if (!qword_27CDBA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA750);
  }

  return result;
}

unint64_t sub_21BD24FCC()
{
  result = qword_280BD6F88;
  if (!qword_280BD6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6F88);
  }

  return result;
}

unint64_t sub_21BD25024()
{
  result = qword_280BD6F90;
  if (!qword_280BD6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6F90);
  }

  return result;
}

uint64_t type metadata accessor for BeneficiaryView()
{
  result = qword_27CDBA758;
  if (!qword_27CDBA758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD250EC()
{
  type metadata accessor for BeneficiaryItemDataItem(319);
  if (v0 <= 0x3F)
  {
    sub_21BC41F08();
    if (v1 <= 0x3F)
    {
      sub_21BC505F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BD251A4()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BD252AC()
{
  v1 = type metadata accessor for BeneficiaryItemDataItem(0);
  v2 = *(v0 + *(v1 + 24));
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v8 = *(v0 + *(v1 + 24));
    }

    sub_21BE2951C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();

  return v6;
}

uint64_t sub_21BD253DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  v2 = type metadata accessor for BeneficiaryItemDataItem(0);
  v3 = *(v0 + *(v2 + 24));
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v11 = *(v0 + *(v2 + 24));
    }

    v4 = sub_21BE2951C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v5;
  *(v1 + 32) = v4;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();

  v8 = [v7 bundleForClass_];
  sub_21BE2599C();

  v9 = sub_21BE289DC();

  return v9;
}

unint64_t sub_21BD25560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v45 - v3;
  v5 = sub_21BE25D1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeneficiaryItemDataItem(0);
  v11 = v10;
  v12 = *(v0 + *(v10 + 24));
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v12 < 0)
  {
    v21 = *(v0 + *(v10 + 24));
  }

  if (!sub_21BE2951C())
  {
    return 0;
  }

  v13 = sub_21BE2951C();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_3:
  v14 = __OFSUB__(v13, 1);
  result = v13 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v16 = MEMORY[0x21CF047C0](result, v12);
LABEL_8:
    v17 = v16;
    v18 = [v16 firstName];

    if (v18)
    {
      v19 = sub_21BE28A0C();
      goto LABEL_15;
    }

LABEL_14:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v19 = sub_21BE2599C();
LABEL_15:
    v23 = v19;
    v24 = v20;

    sub_21BC1E1AC(v0 + *(v11 + 20), v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_21BC51500(v4);
      type metadata accessor for ConfirmChildAgeViewModel();
      v25 = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      sub_21BE2599C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21BE32770;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 64) = sub_21BBBEFE8();
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      v28 = sub_21BE28A2C();
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      v29 = *(type metadata accessor for BeneficiaryView() + 24);
      v46 = v24;
      v30 = v23;
      v31 = *(v0 + v29);
      v32 = sub_21BE289CC();
      [v31 setLocalizedDateFormatFromTemplate_];

      type metadata accessor for ConfirmChildAgeViewModel();
      v33 = swift_getObjCClassFromMetadata();
      v34 = v6;
      v35 = [objc_opt_self() bundleForClass_];
      v45 = sub_21BE2599C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_21BE33260;
      v37 = MEMORY[0x277D837D0];
      *(v36 + 56) = MEMORY[0x277D837D0];
      v38 = sub_21BBBEFE8();
      *(v36 + 64) = v38;
      v39 = v46;
      *(v36 + 32) = v30;
      *(v36 + 40) = v39;
      v40 = sub_21BE25CAC();
      v41 = [v31 stringFromDate_];

      v42 = sub_21BE28A0C();
      v44 = v43;

      *(v36 + 96) = v37;
      *(v36 + 104) = v38;
      *(v36 + 72) = v42;
      *(v36 + 80) = v44;
      v28 = sub_21BE28A2C();

      (*(v34 + 8))(v9, v5);
    }

    return v28;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v12 + 8 * result + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD25AC8()
{
  if (*v0 == 1)
  {
    v1 = sub_21BD252AC();
    v3 = v2;
    v4 = sub_21BD253DC();
    v6 = v5;
    v7 = sub_21BD25560();
    v9 = v8;
    v10 = sub_21BD251A4();
    v22[3] = type metadata accessor for BeneficiaryItemDataItem(0);
    v22[4] = sub_21BD25D70(&qword_27CDBA768, type metadata accessor for BeneficiaryItemDataItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    sub_21BC973C0(v0, boxed_opaque_existential_1);
    type metadata accessor for ChecklistStateVars();
    sub_21BD25D70(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    v17 = v1;
    v18[0] = v3;
    v18[1] = v4;
    v18[2] = v6;
    v19 = v7;
    v20 = v9;
    v21 = v10;
    v22[5] = sub_21BE26E9C();
    v23 = v12 & 1;
    sub_21BD25F10(&v17, v24);
    v25 = 0;
    sub_21BD25E14();
    sub_21BD25E68();
    sub_21BE2784C();
    return sub_21BD25F6C(&v17);
  }

  else
  {
    v14 = sub_21BD251A4();
    v19 = type metadata accessor for BeneficiaryItemDataItem(0);
    v20 = sub_21BD25D70(&qword_27CDBA768, type metadata accessor for BeneficiaryItemDataItem);
    v15 = __swift_allocate_boxed_opaque_existential_1(v18);
    sub_21BC973C0(v0, v15);
    type metadata accessor for ChecklistStateVars();
    sub_21BD25D70(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    v17 = v14;
    v21 = sub_21BE26E9C();
    LOBYTE(v22[0]) = v16 & 1;
    sub_21BD25DB8(&v17, v24);
    v25 = 1;
    sub_21BD25E14();
    sub_21BD25E68();
    sub_21BE2784C();
    return sub_21BD25EBC(&v17);
  }
}

uint64_t sub_21BD25D70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BD25E14()
{
  result = qword_27CDBA770;
  if (!qword_27CDBA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA770);
  }

  return result;
}

unint64_t sub_21BD25E68()
{
  result = qword_27CDBA778;
  if (!qword_27CDBA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA778);
  }

  return result;
}

unint64_t sub_21BD25FC0()
{
  result = qword_27CDBA780;
  if (!qword_27CDBA780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA788, qword_21BE440C8);
    sub_21BD25E14();
    sub_21BD25E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA780);
  }

  return result;
}

id static SubscriptionServicesDataLoader.createLoader(account:)(void *a1)
{
  if (qword_280BDCB40)
  {
    v2 = qword_280BDCB40;
    sub_21BD262F4(a1);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
    v6 = 0;
    v3 = objc_allocWithZone(type metadata accessor for SubscriptionServicesDataLoader());
    return sub_21BD263EC(a1, v5);
  }

  return v2;
}

uint64_t FASharedService.id.getter()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21BE28A0C();

  return v3;
}

void sub_21BD2614C(uint64_t *a1@<X8>)
{
  v3 = [*v1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BE28A0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a1 = v5;
  a1[1] = v7;
}

unint64_t sub_21BD261B4()
{
  v1 = 0xD000000000000039;
  if (*v0 == 2)
  {
    v1 = 0xD00000000000002ELL;
  }

  v2 = 0xD00000000000003CLL;
  if (!*v0)
  {
    v2 = 0xD000000000000031;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

void *sub_21BD26234@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void sub_21BD26240(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_21BD262A0()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_21BD262F4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account;
  swift_beginAccess();
  v5 = [*(v1 + v4) identifier];
  v6 = [a1 identifier];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      sub_21BB3A2A4(0, &unk_280BD68E8, 0x277CCACA8);
      v8 = sub_21BE2940C();

      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }

      return 0;
    }

    v7 = v5;
  }

  else if (!v6)
  {
    return 0;
  }

LABEL_9:
  v10 = *(v2 + v4);
  *(v2 + v4) = a1;
  v11 = a1;

  return 1;
}

id sub_21BD263EC(void *a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_locationAllowed] = 1;
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_services] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_account] = a1;
  sub_21BD281F0(a2, &v12);
  if (v13)
  {
    sub_21BB3D104(&v12, &v14);
  }

  else
  {
    v15 = &type metadata for SubscriptionsDataProvider;
    v16 = &off_282D94838;
    *&v14 = a1;
    v5 = a1;
  }

  v6 = a1;
  sub_21BB3D104(&v14, &v2[OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_dataProvider]);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SubscriptionServicesDataLoader();
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = v7;
  if (!qword_280BDCB40)
  {
    qword_280BDCB40 = v7;
    v9 = v7;
  }

  sub_21BD28260(a2);
  return v8;
}

uint64_t sub_21BD264EC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_21BE26A4C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_21BE28D7C();
  v3[11] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v3[12] = v8;
  v3[13] = v7;

  return MEMORY[0x2822009F8](sub_21BD265FC, v8, v7);
}

uint64_t sub_21BD265FC()
{
  v1 = v0[10];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "SubscriptionsDataLoader load services ... ", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  v9 = *(v7 + 8);
  v0[14] = v9;
  v9(v5, v6);
  v10 = *__swift_project_boxed_opaque_existential_1Tm((v8 + OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_dataProvider), *(v8 + OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_dataProvider + 24));
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_21BD26754;

  return sub_21BD7FC30(v10);
}

uint64_t sub_21BD26754(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  v7 = *(v3 + 104);
  v8 = *(v3 + 96);
  if (v1)
  {
    v9 = sub_21BD26B0C;
  }

  else
  {
    v9 = sub_21BD26898;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BD26898()
{
  v26 = v0;
  v1 = *(v0 + 128);
  v2 = [v1 locationAllowed];
  v3 = [v1 services];
  if (v3)
  {
    v4 = v3;
    sub_21BB3A2A4(0, &unk_27CDB6550, 0x277D08338);
    sub_21BE28C3C();
  }

  v5 = *(v0 + 136);

  v25 = sub_21BC2AD0C(v6);
  sub_21BD271FC(&v25);
  if (v5)
  {
  }

  else
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 64);

    v10 = v25;
    sub_21BE2614C();

    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
      {
        v14 = sub_21BE2951C();
      }

      else
      {
        v14 = *(v10 + 16);
      }

      *(v13 + 4) = v14;

      _os_log_impl(&dword_21BB35000, v11, v12, "SubscriptionsDataLoader load services: %ld", v13, 0xCu);
      MEMORY[0x21CF05C50](v13, -1, -1);
    }

    else
    {
    }

    v15 = *(v0 + 112);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);

    v15(v16, v18);
    *(v19 + OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_locationAllowed) = v2;
    v20 = *(v19 + OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_services);
    *(v19 + OBJC_IVAR____TtC14FamilyCircleUI30SubscriptionServicesDataLoader_services) = v10;

    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = *(v0 + 64);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_21BD26B0C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_21BE2614C();
  v6 = v1;
  sub_21BC51D50(v1);

  v2(v3, v4);
  *(v0 + 16) = v1;
  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 152))
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 88);

LABEL_4:

    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 24);
  if (!v15)
  {
    v20 = *(v0 + 88);

    v8 = *(v0 + 136);
    goto LABEL_4;
  }

  v16 = *(v0 + 32);
  v17 = *(v0 + 24);
  v21 = (v15 + *v15);
  v18 = v15[1];
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  *v19 = v0;
  v19[1] = sub_21BD26D40;

  return v21();
}

uint64_t sub_21BD26D40()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21BD26E60, v4, v3);
}

uint64_t sub_21BD26E60()
{
  v1 = *(v0 + 88);

  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21BD26EEC(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BE28A0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = [v2 name];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();
    v12 = v11;

    if (v5 != v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0xE000000000000000;
    if (v5)
    {
LABEL_10:
      v13 = sub_21BE2995C();
      goto LABEL_11;
    }
  }

  if (v7 != v12)
  {
    goto LABEL_10;
  }

  v13 = 0;
LABEL_11:

  return v13 & 1;
}

id SubscriptionServicesDataLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SubscriptionServicesDataLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionServicesDataLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD2710C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SubscriptionServicesDataLoader();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

unint64_t sub_21BD271A8()
{
  result = qword_27CDBA7B0;
  if (!qword_27CDBA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA7B0);
  }

  return result;
}

uint64_t sub_21BD271FC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21BDFE08C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21BD27278(v6);
  return sub_21BE296CC();
}

uint64_t sub_21BD27278(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_21BE2991C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21BB3A2A4(0, &unk_27CDB6550, 0x277D08338);
        v6 = sub_21BE28C7C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21BD2753C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21BD2738C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21BD2738C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v7 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 v6[339]];
      if (v11)
      {
        v12 = v11;
        v13 = sub_21BE28A0C();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = [v10 v6[339]];
      if (v16)
      {
        v17 = v16;
        v18 = sub_21BE28A0C();
        v20 = v19;

        if (v13 != v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0xE000000000000000;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      if (v15 == v20)
      {

        v6 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_15:
      v21 = sub_21BE2995C();

      v6 = &selRef_fa_URLByAddingAirdropInviteParams;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        __break(1u);
        return result;
      }

      v22 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void sub_21BD2753C(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_114:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = v4;
LABEL_117:
      v121 = v98;
      v4 = *(v98 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v99 = *&v98[16 * v4];
          v100 = v98;
          v101 = *&v98[16 * v4 + 24];
          sub_21BD27D94((*a3 + 8 * v99), (*a3 + 8 * *&v98[16 * v4 + 16]), (*a3 + 8 * v101), v5);
          if (v116)
          {
            goto LABEL_125;
          }

          if (v101 < v99)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_21BDFD0AC(v100);
          }

          if (v4 - 2 >= *(v100 + 2))
          {
            goto LABEL_143;
          }

          v102 = &v100[16 * v4];
          *v102 = v99;
          *(v102 + 1) = v101;
          v121 = v100;
          sub_21BDFD020(v4 - 1);
          v98 = v121;
          v4 = *(v121 + 2);
          if (v4 <= 1)
          {
            goto LABEL_125;
          }
        }

        goto LABEL_153;
      }

LABEL_125:

      return;
    }

LABEL_149:
    v98 = sub_21BDFD0AC(v4);
    goto LABEL_117;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_4:
  v10 = v7;
  v11 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    goto LABEL_33;
  }

  v106 = v8;
  v4 = *a3;
  v120 = *(*a3 + 8 * v11);
  v119 = *(v4 + 8 * v7);
  v12 = v119;
  v13 = v120;
  v5 = v12;
  v117 = sub_21BD26EEC(&v120, &v119);
  if (v116)
  {

    return;
  }

  v11 = v7 + 2;
  if (v7 + 2 >= v6)
  {
    v8 = v106;
    if (v117)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v114 = v7 + 2;
  v103 = v7;
  v4 += 8 * v7 + 16;
  v111 = v6;
  while (1)
  {
    v15 = *(v4 - 8);
    v16 = *v4;
    v17 = v15;
    v18 = [v16 v9[339]];
    if (v18)
    {
      v19 = v18;
      v20 = sub_21BE28A0C();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = [v17 name];
    if (v23)
    {
      v24 = v23;
      v25 = sub_21BE28A0C();
      v5 = v26;

      if (v20 != v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0xE000000000000000;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    if (v22 == v5)
    {

      if (v117)
      {
        v8 = v106;
        v9 = &selRef_fa_URLByAddingAirdropInviteParams;
        v11 = v114;
        v10 = v103;
        goto LABEL_25;
      }

      goto LABEL_9;
    }

LABEL_8:
    v14 = sub_21BE2995C();

    if ((v117 ^ v14))
    {
      break;
    }

LABEL_9:
    v4 += 8;
    ++v114;
    v9 = &selRef_fa_URLByAddingAirdropInviteParams;
    if (v111 == v114)
    {
      v11 = v111;
      v8 = v106;
      goto LABEL_24;
    }
  }

  v8 = v106;
  v9 = &selRef_fa_URLByAddingAirdropInviteParams;
  v11 = v114;
LABEL_24:
  v10 = v103;
  if (v117)
  {
LABEL_25:
    if (v11 < v10)
    {
      goto LABEL_146;
    }

    if (v10 < v11)
    {
      v27 = v11;
      v28 = 8 * v11 - 8;
      v29 = 8 * v10;
      v30 = v10;
      do
      {
        if (v30 != --v27)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v31 = *(v32 + v29);
          *(v32 + v29) = *(v32 + v28);
          *(v32 + v28) = v31;
        }

        ++v30;
        v28 -= 8;
        v29 += 8;
      }

      while (v30 < v27);
    }
  }

LABEL_33:
  v33 = a3[1];
  v7 = v11;
  if (v11 >= v33)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_145;
  }

  if (v11 - v10 >= a4)
  {
LABEL_41:
    v7 = v11;
LABEL_42:
    if (v7 < v10)
    {
      goto LABEL_144;
    }

    goto LABEL_43;
  }

  v34 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_147;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v10)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v11 == v34)
  {
    goto LABEL_41;
  }

  v107 = v8;
  v118 = *a3;
  v4 = *a3 + 8 * v11 - 8;
  v104 = v10;
  v81 = v10 - v11;
  v109 = v34;
  while (2)
  {
    v115 = v11;
    v82 = *(v118 + 8 * v11);
    v110 = v81;
    v112 = v4;
LABEL_96:
    v83 = *v4;
    v84 = v82;
    v85 = v83;
    v86 = [v84 v9[339]];
    if (v86)
    {
      v87 = v86;
      v88 = sub_21BE28A0C();
      v90 = v89;
    }

    else
    {
      v88 = 0;
      v90 = 0xE000000000000000;
    }

    v91 = [v85 v9[339]];
    if (!v91)
    {
      v5 = 0xE000000000000000;
      if (v88)
      {
        goto LABEL_104;
      }

LABEL_103:
      if (v90 != v5)
      {
        goto LABEL_104;
      }

LABEL_94:
      v11 = v115 + 1;
      v4 = v112 + 8;
      v81 = v110 - 1;
      if (v115 + 1 != v109)
      {
        continue;
      }

      v7 = v109;
      v8 = v107;
      v10 = v104;
      if (v109 < v104)
      {
        goto LABEL_144;
      }

LABEL_43:
      v35 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v35;
      }

      else
      {
        v8 = sub_21BBBCBFC(0, *(v35 + 2) + 1, 1, v35);
      }

      v4 = *(v8 + 2);
      v36 = *(v8 + 3);
      v37 = v4 + 1;
      if (v4 >= v36 >> 1)
      {
        v8 = sub_21BBBCBFC((v36 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v37;
      v38 = &v8[16 * v4];
      *(v38 + 4) = v10;
      *(v38 + 5) = v7;
      v39 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v4)
      {
        while (2)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            v45 = &v8[16 * v37 + 32];
            v46 = *(v45 - 64);
            v47 = *(v45 - 56);
            v51 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            if (v51)
            {
              goto LABEL_131;
            }

            v50 = *(v45 - 48);
            v49 = *(v45 - 40);
            v51 = __OFSUB__(v49, v50);
            v43 = v49 - v50;
            v44 = v51;
            if (v51)
            {
              goto LABEL_132;
            }

            v52 = &v8[16 * v37];
            v54 = *v52;
            v53 = *(v52 + 1);
            v51 = __OFSUB__(v53, v54);
            v55 = v53 - v54;
            if (v51)
            {
              goto LABEL_134;
            }

            v51 = __OFADD__(v43, v55);
            v56 = v43 + v55;
            if (v51)
            {
              goto LABEL_137;
            }

            if (v56 >= v48)
            {
              v74 = &v8[16 * v40 + 32];
              v76 = *v74;
              v75 = *(v74 + 1);
              v51 = __OFSUB__(v75, v76);
              v77 = v75 - v76;
              if (v51)
              {
                goto LABEL_141;
              }

              if (v43 < v77)
              {
                v40 = v37 - 2;
              }
            }

            else
            {
LABEL_62:
              if (v44)
              {
                goto LABEL_133;
              }

              v57 = &v8[16 * v37];
              v59 = *v57;
              v58 = *(v57 + 1);
              v60 = __OFSUB__(v58, v59);
              v61 = v58 - v59;
              v62 = v60;
              if (v60)
              {
                goto LABEL_136;
              }

              v63 = &v8[16 * v40 + 32];
              v65 = *v63;
              v64 = *(v63 + 1);
              v51 = __OFSUB__(v64, v65);
              v66 = v64 - v65;
              if (v51)
              {
                goto LABEL_139;
              }

              if (__OFADD__(v61, v66))
              {
                goto LABEL_140;
              }

              if (v61 + v66 < v43)
              {
                goto LABEL_76;
              }

              if (v43 < v66)
              {
                v40 = v37 - 2;
              }
            }
          }

          else
          {
            if (v37 == 3)
            {
              v41 = *(v8 + 4);
              v42 = *(v8 + 5);
              v51 = __OFSUB__(v42, v41);
              v43 = v42 - v41;
              v44 = v51;
              goto LABEL_62;
            }

            v67 = &v8[16 * v37];
            v69 = *v67;
            v68 = *(v67 + 1);
            v51 = __OFSUB__(v68, v69);
            v61 = v68 - v69;
            v62 = v51;
LABEL_76:
            if (v62)
            {
              goto LABEL_135;
            }

            v70 = &v8[16 * v40];
            v72 = *(v70 + 4);
            v71 = *(v70 + 5);
            v51 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v51)
            {
              goto LABEL_138;
            }

            if (v73 < v61)
            {
              break;
            }
          }

          v4 = v40 - 1;
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          if (!*a3)
          {
            goto LABEL_151;
          }

          v5 = v8;
          v78 = *&v8[16 * v4 + 32];
          v79 = *&v8[16 * v40 + 40];
          sub_21BD27D94((*a3 + 8 * v78), (*a3 + 8 * *&v8[16 * v40 + 32]), (*a3 + 8 * v79), v39);
          if (v116)
          {
            goto LABEL_125;
          }

          if (v79 < v78)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_21BDFD0AC(v5);
          }

          if (v4 >= *(v5 + 2))
          {
            goto LABEL_130;
          }

          v80 = &v5[16 * v4];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          v121 = v5;
          sub_21BDFD020(v40);
          v8 = v121;
          v37 = *(v121 + 2);
          if (v37 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_114;
      }

      goto LABEL_4;
    }

    break;
  }

  v92 = v91;
  v93 = sub_21BE28A0C();
  v5 = v94;

  v9 = &selRef_fa_URLByAddingAirdropInviteParams;
  if (v88 == v93)
  {
    goto LABEL_103;
  }

LABEL_104:
  v95 = sub_21BE2995C();

  if ((v95 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v118)
  {
    v96 = *v4;
    v82 = *(v4 + 8);
    *v4 = v82;
    *(v4 + 8) = v96;
    v4 -= 8;
    if (__CFADD__(v81++, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_21BD27D94(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v62 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_28:
      v5 = v6;
      goto LABEL_56;
    }

    v14 = &selRef_fa_URLByAddingAirdropInviteParams;
    v56 = v4;
    while (1)
    {
      v58 = v6;
      v60 = v5;
      v15 = *v13;
      v16 = *v5;
      v17 = v15;
      v18 = [v16 v14[339]];
      if (v18)
      {
        v19 = v18;
        v20 = sub_21BE28A0C();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = v14;
      v24 = [v17 v14[339]];
      if (v24)
      {
        v25 = v24;
        v26 = sub_21BE28A0C();
        v28 = v27;

        if (v20 != v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v28 = 0xE000000000000000;
        if (v20)
        {
          goto LABEL_21;
        }
      }

      if (v22 == v28)
      {

LABEL_24:
        v31 = v13;
        v30 = v58;
        v5 = v60;
        v33 = v58 == v13++;
        v32 = v56;
        if (v33)
        {
          goto LABEL_26;
        }

LABEL_25:
        *v30 = *v31;
        goto LABEL_26;
      }

LABEL_21:
      v29 = sub_21BE2995C();

      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

      v30 = v58;
      v31 = v60;
      v5 = v60 + 1;
      v32 = v56;
      if (v58 != v60)
      {
        goto LABEL_25;
      }

LABEL_26:
      v6 = v30 + 1;
      if (v13 < v62)
      {
        v14 = v23;
        if (v5 < v32)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  if (a4 != __src || &__src[v12] <= a4)
  {
    v34 = a4;
    memmove(a4, __src, 8 * v12);
    a4 = v34;
  }

  v62 = &a4[v12];
  v13 = a4;
  if (v10 >= 8 && v5 > v6)
  {
    v35 = &selRef_fa_URLByAddingAirdropInviteParams;
    v55 = a4;
    v59 = v6;
LABEL_36:
    v61 = v5;
    v36 = v5 - 1;
    v37 = v4;
    v38 = v62;
    v57 = v5 - 1;
    while (1)
    {
      v39 = *--v38;
      v40 = *v36;
      v41 = v39;
      v42 = v40;
      v43 = [v41 v35[339]];
      if (v43)
      {
        v44 = v43;
        v45 = sub_21BE28A0C();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v42 v35[339]];
      if (v48)
      {
        v49 = v48;
        v50 = sub_21BE28A0C();
        v52 = v51;

        if (v45 != v50)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v52 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_47;
        }
      }

      if (v47 != v52)
      {
LABEL_47:
        v53 = sub_21BE2995C();

        v4 = (v37 - 8);
        if (v53)
        {
          v13 = v55;
          v35 = &selRef_fa_URLByAddingAirdropInviteParams;
          if (v37 != v61)
          {
            *v4 = *v57;
          }

          if (v62 <= v55 || (v5 = v57, v57 <= v59))
          {
            v5 = v57;
            break;
          }

          goto LABEL_36;
        }

        goto LABEL_48;
      }

      v4 = (v37 - 8);
LABEL_48:
      v13 = v55;
      v36 = v57;
      v35 = &selRef_fa_URLByAddingAirdropInviteParams;
      if (v62 != v37)
      {
        *v4 = *v38;
      }

      v62 = v38;
      v37 = v4;
      if (v38 <= v55)
      {
        v62 = v38;
        v5 = v61;
        break;
      }
    }
  }

LABEL_56:
  if (v5 != v13 || v5 >= (v13 + ((v62 - v13 + (v62 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v62 - v13));
  }

  return 1;
}

uint64_t sub_21BD281F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA7B8, &unk_21BE44280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD28260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA7B8, &unk_21BE44280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BD282DC()
{
  result = qword_27CDBA7C0;
  if (!qword_27CDBA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA7C0);
  }

  return result;
}

unint64_t sub_21BD28334()
{
  result = qword_27CDBA7C8;
  if (!qword_27CDBA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA7C8);
  }

  return result;
}

uint64_t type metadata accessor for MultipleInviteViewForInvitee()
{
  result = qword_27CDBA7D0;
  if (!qword_27CDBA7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD283FC()
{
  sub_21BD284C8();
  if (v0 <= 0x3F)
  {
    sub_21BD2855C();
    if (v1 <= 0x3F)
    {
      sub_21BB40410();
      if (v2 <= 0x3F)
      {
        sub_21BE2934C();
        if (v3 <= 0x3F)
        {
          sub_21BB403C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21BD284C8()
{
  if (!qword_27CDBA7E0)
  {
    type metadata accessor for MultipleInviteViewModel();
    sub_21BD2B2C0(&qword_27CDB7D68, type metadata accessor for MultipleInviteViewModel);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBA7E0);
    }
  }
}

void sub_21BD2855C()
{
  if (!qword_27CDBA7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7D70, &qword_21BE39BD0);
    v0 = sub_21BE2842C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBA7E8);
    }
  }
}

void sub_21BD285DC(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  sub_21BE283FC();
  if (v3)
  {
  }

  *a2 = v3 != 0;
}

void sub_21BD28644()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = (v0 + *(type metadata accessor for MultipleInviteViewForInvitee() + 32));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v36) = *v9;
  *(&v36 + 1) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v35)
  {
    return;
  }

  v13 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v14 = v36 >> 62 ? sub_21BE2951C() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v14 != 1)
  {
    return;
  }

  v32 = v12;
  sub_21BE260FC();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FCC();
  v17 = os_log_type_enabled(v15, v16);
  v33 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v36 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_21BB3D81C(0xD000000000000016, 0x800000021BE5EAD0, &v36);
    _os_log_impl(&dword_21BB35000, v15, v16, "%s ...", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x21CF05C50](v19, -1, -1);
    MEMORY[0x21CF05C50](v18, -1, -1);
  }

  v20 = *(v34 + 8);
  v20(v8, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v21 = v36;
  if (v36 >> 62)
  {
    v31 = sub_21BE2951C();
    v22 = v33;
    if (v31)
    {
      goto LABEL_9;
    }

LABEL_17:

    return;
  }

  v22 = v33;
  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x21CF047C0](0, v21);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v23 = *(v21 + 32);
  }

  v24 = v23;

  sub_21BE260FC();
  v25 = sub_21BE26A2C();
  v26 = sub_21BE28FCC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v22;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_21BB35000, v25, v26, "invitation view setting invite", v28, 2u);
    v29 = v28;
    v22 = v27;
    MEMORY[0x21CF05C50](v29, -1, -1);
  }

  v20(v6, v2);
  v36 = *(v1 + 16);
  v35 = v24;
  v30 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  sub_21BE2840C();
  LOBYTE(v36) = v22;
  *(&v36 + 1) = v11;
  LOBYTE(v35) = 1;

  sub_21BE2840C();
}

uint64_t sub_21BD28ABC()
{
  v1[10] = v0;
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_21BD28B54, v3, v2);
}

uint64_t sub_21BD28B54()
{
  v1 = *(v0 + 80);
  v2 = (v1 + *(type metadata accessor for MultipleInviteViewForInvitee() + 32));
  v3 = *v2;
  *(v0 + 138) = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 112) = v4;
  *(v0 + 24) = v4;
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (*(v0 + 136))
  {
    goto LABEL_12;
  }

  v5 = *(*(v0 + 80) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v6 = *(v0 + 64);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v15 = *(v0 + 64);
    }

    v16 = *(v0 + 64);
    v17 = sub_21BE2951C();

    if (!v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v8 = *(v5 + 40);
  v9 = *(v5 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v5 + 16), v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 me];

  if (!v11 || (v11, (*(v5 + 96) & 1) != 0))
  {
    v12 = *(v0 + 88);

    v13 = *(v0 + 8);

    return v13();
  }

LABEL_12:
  *(v0 + 32) = *(*(v0 + 80) + 16);
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  sub_21BE2840C();
  v18 = swift_task_alloc();
  *(v0 + 128) = v18;
  *v18 = v0;
  v18[1] = sub_21BD28DC0;

  return sub_21BD440CC();
}

uint64_t sub_21BD28DC0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21BD28EE0, v4, v3);
}

uint64_t sub_21BD28EE0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 138);
  v4 = *(v0 + 88);

  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 137) = 0;
  sub_21BE2840C();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21BD28F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for MultipleInviteViewForInvitee();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA7F0, &qword_21BE44438);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA7F8, &qword_21BE44440);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA800, &unk_21BE44448);
  v18 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = &v58 - v19;
  v20 = v2 + *(v4 + 40);
  v21 = *v20;
  v22 = *(v20 + 8);
  LOBYTE(v68) = v21;
  v69 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  v23 = sub_21BE283FC();
  if (v71)
  {
    v24 = 1;
  }

  else
  {
    v62 = &v58;
    MEMORY[0x28223BE20](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA808, &qword_21BE44458);
    sub_21BD2AB30();
    sub_21BE27D1C();
    (*(v10 + 32))(v17, v13, v9);
    v24 = 0;
  }

  (*(v10 + 56))(v17, v24, 1, v9);
  v25 = v65;
  sub_21BC50054(v2, v65);
  v26 = *(v5 + 80);
  v61 = ~v26;
  v27 = (v26 + 16) & ~v26;
  v28 = v6;
  v29 = swift_allocObject();
  sub_21BD2AC70(v25, v29 + v27);
  v30 = &v17[*(v14 + 36)];
  *v30 = sub_21BD2ACD4;
  v30[1] = v29;
  v30[2] = 0;
  v30[3] = 0;
  v31 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  sub_21BC50054(v2, v25);
  v62 = v28;
  v32 = swift_allocObject();
  v59 = v27;
  sub_21BD2AC70(v25, v32 + v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72D0, &qword_21BE36D30);
  sub_21BD2AD30();
  v60 = v2;
  sub_21BD2AEF0();
  v33 = v67;
  sub_21BE281BC();

  sub_21BB3A4CC(v17, &qword_27CDBA7F8, &qword_21BE44440);
  KeyPath = swift_getKeyPath();
  v35 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA878, &qword_21BE44508) + 36)];
  v36 = type metadata accessor for HandleInviteErrorAlertViewModifier();
  *&v35[*(v36 + 24)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *v35 = 0;
  v71 = 0;
  sub_21BE283EC();
  v37 = v69;
  v35[8] = v68;
  *(v35 + 2) = v37;
  v38 = *(v36 + 28);
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v39 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE8 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  sub_21BB3A35C(v31 + 56, &v68);
  __swift_project_boxed_opaque_existential_1Tm(&v68, v70);
  v40 = off_282D95F68;
  type metadata accessor for FamilyPictureStore(0);
  v41 = v40();
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v42 = sub_21BE26BFC();
  v43 = &v67[*(v66 + 36)];
  *v43 = v42;
  v43[1] = v41;
  __swift_destroy_boxed_opaque_existential_0Tm(&v68);
  v44 = v60;
  v45 = v65;
  sub_21BC50054(v60, v65);
  sub_21BE28D7C();
  v46 = sub_21BE28D6C();
  v47 = (v26 + 32) & v61;
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D85700];
  *(v48 + 16) = v46;
  *(v48 + 24) = v49;
  sub_21BD2AC70(v45, v48 + v47);
  v50 = sub_21BE28D6C();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = v49;
  sub_21BE2857C();
  sub_21BC50054(v44, v45);
  v52 = v59;
  v53 = swift_allocObject();
  sub_21BD2AC70(v45, v53 + v52);
  v54 = v63;
  sub_21BC50054(v44, v63);
  v55 = swift_allocObject();
  sub_21BD2AC70(v54, v55 + v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA880, &unk_21BE44510);
  sub_21BD2B0E4();
  sub_21BD2B308();
  v56 = v67;
  sub_21BE2812C();

  return sub_21BB537E8(v56);
}

uint64_t sub_21BD297B8(uint64_t a1)
{
  v2 = type metadata accessor for MultipleInviteViewForInvitee();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  swift_getKeyPath();
  sub_21BC50054(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21BD2AC70(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72D0, &qword_21BE36D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA820, &qword_21BE44460);
  sub_21BB3B038(&qword_27CDBA8A8, &qword_27CDB72D0, &qword_21BE36D30);
  sub_21BB3CC48(&qword_27CDBA8B0, &qword_27CDB75A8, 0x277D08260);
  sub_21BD2ABB4();
  return sub_21BE285BC();
}

id sub_21BD299E4(void **a1, uint64_t a2)
{
  v4 = sub_21BE25D1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_21BE2913C();
  v12 = v11;
  result = [v9 inviteDate];
  if (result)
  {
    v14 = result;
    sub_21BE25CDC();

    v15 = sub_21BC54688();
    v17 = v16;
    v18 = (*(v5 + 8))(v8, v4);
    MEMORY[0x28223BE20](v18);
    *(&v19 - 6) = v9;
    *(&v19 - 5) = v10;
    *(&v19 - 4) = v12;
    *(&v19 - 3) = v15;
    *(&v19 - 2) = v17;
    *(&v19 - 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA830, &unk_21BE44468);
    sub_21BB3B038(&qword_27CDBA828, &qword_27CDBA830, &unk_21BE44468);
    sub_21BE2860C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD29BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, char *a5@<X8>)
{
  v29 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8B8, qword_21BE4C890);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v27 = sub_21BE275DC();
  v33 = 1;
  sub_21BD29FA8(a2, a3, &v46);
  v38 = *&v47[48];
  v39 = *&v47[64];
  v40 = *&v47[80];
  v41 = *&v47[96];
  v34 = v46;
  v35 = *v47;
  v36 = *&v47[16];
  v37 = *&v47[32];
  v42[0] = v46;
  v42[1] = *v47;
  v42[2] = *&v47[16];
  v42[3] = *&v47[32];
  v42[4] = *&v47[48];
  v42[5] = *&v47[64];
  v42[6] = *&v47[80];
  v43 = *&v47[96];
  sub_21BBA3854(&v34, &v44, &qword_27CDBA8C0, &unk_21BE44570);
  sub_21BB3A4CC(v42, &qword_27CDBA8C0, &unk_21BE44570);
  *(&v32[4] + 7) = v38;
  *(&v32[5] + 7) = v39;
  *(&v32[6] + 7) = v40;
  *(v32 + 7) = v34;
  *(&v32[1] + 7) = v35;
  *(&v32[2] + 7) = v36;
  *(&v32[7] + 7) = v41;
  *(&v32[3] + 7) = v37;
  LOBYTE(a3) = v33;
  v30 = v29;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  sub_21BE2860C();
  v16 = v10[2];
  v17 = v28;
  v16(v28, v15, v9);
  v18 = v27;
  v44 = v27;
  LOBYTE(v45[0]) = a3;
  *(v45 + 1) = v32[0];
  *(&v45[1] + 1) = v32[1];
  *(&v45[5] + 1) = v32[5];
  *(&v45[4] + 1) = v32[4];
  *(&v45[6] + 1) = v32[6];
  v45[7] = *(&v32[6] + 15);
  *(&v45[2] + 1) = v32[2];
  *(&v45[3] + 1) = v32[3];
  v19 = v45[6];
  *(a5 + 6) = v45[5];
  *(a5 + 7) = v19;
  *(a5 + 8) = v45[7];
  v20 = v45[2];
  *(a5 + 2) = v45[1];
  *(a5 + 3) = v20;
  v21 = v45[4];
  *(a5 + 4) = v45[3];
  *(a5 + 5) = v21;
  v22 = v45[0];
  *a5 = v44;
  *(a5 + 1) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8C8, &qword_21BE44580);
  v16(&a5[*(v23 + 48)], v17, v9);
  sub_21BBA3854(&v44, &v46, &qword_27CDBA8D0, &qword_21BE44588);
  v24 = v10[1];
  v24(v15, v9);
  v24(v17, v9);
  *&v47[65] = v32[4];
  *&v47[81] = v32[5];
  *&v47[97] = v32[6];
  *&v47[112] = *(&v32[6] + 15);
  *&v47[1] = v32[0];
  *&v47[17] = v32[1];
  *&v47[33] = v32[2];
  v46 = v18;
  v47[0] = a3;
  *&v47[49] = v32[3];
  return sub_21BB3A4CC(&v46, &qword_27CDBA8D0, &qword_21BE44588);
}

void sub_21BD29FA8(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_21BE2912C();
  if (qword_27CDB4E58 != -1)
  {
    swift_once();
  }

  if (byte_27CDD41B0)
  {
    v7 = 40.0;
  }

  else
  {
    v7 = 38.0;
  }

  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v8 = sub_21BE2727C();
  v10 = v9;
  v11 = sub_21BE2771C();
  LOBYTE(v28[0]) = 1;
  sub_21BD2A1FC(a1, a2, v24);
  *&v23[55] = v25;
  *&v23[39] = v24[2];
  *&v23[23] = v24[1];
  *&v23[7] = v24[0];
  v12 = v28[0];
  v26 = v11;
  v27[0] = v28[0];
  v13 = *&v23[16];
  *&v27[1] = *v23;
  *&v27[64] = *(&v25 + 1);
  *&v27[49] = *&v23[48];
  v14 = *&v23[32];
  *&v27[33] = *&v23[32];
  v15 = *v23;
  *&v27[17] = *&v23[16];
  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v10;
  v16 = *v27;
  *(a3 + 32) = v26;
  *(a3 + 48) = v16;
  v17 = *&v27[48];
  v18 = *&v27[16];
  v19 = *&v27[32];
  *(a3 + 112) = *&v27[64];
  *(a3 + 80) = v19;
  *(a3 + 96) = v17;
  *(a3 + 64) = v18;
  v28[0] = v11;
  v28[1] = 0;
  v29 = v12;
  v30 = v15;
  *&v33[15] = *&v23[63];
  *v33 = *&v23[48];
  v32 = v14;
  v31 = v13;
  v20 = v8;
  v21 = v6;
  sub_21BBA3854(&v26, &v22, &qword_27CDB9550, &qword_21BE3FAA0);
  sub_21BB3A4CC(v28, &qword_27CDB9550, &qword_21BE3FAA0);
}

uint64_t sub_21BD2A1FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_21BB41FA4();

  v6 = MEMORY[0x277D837D0];
  v7 = sub_21BE27DBC();
  v9 = v8;
  v11 = v10;
  sub_21BE27BFC();
  v12 = sub_21BE27D9C();
  v32 = v13;
  v33 = v12;
  v31 = v14;
  v34 = v15;

  sub_21BBC7C7C(v7, v9, v11 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21BE32770;
  *(v16 + 56) = v6;
  *(v16 + 64) = sub_21BBBEFE8();
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();

  v19 = [v18 bundleForClass_];
  sub_21BE2599C();

  sub_21BE289DC();

  v20 = sub_21BE27DBC();
  v22 = v21;
  LOBYTE(v18) = v23;
  sub_21BE27CBC();
  v24 = sub_21BE27D9C();
  v26 = v25;
  LOBYTE(v6) = v27;
  v29 = v28;

  sub_21BBC7C7C(v20, v22, v18 & 1);

  *a3 = v33;
  *(a3 + 8) = v32;
  *(a3 + 16) = v31 & 1;
  *(a3 + 24) = v34;
  *(a3 + 32) = v24;
  *(a3 + 40) = v26;
  *(a3 + 48) = v6 & 1;
  *(a3 + 56) = v29;
  sub_21BBA4A38(v33, v32, v31 & 1);

  sub_21BBA4A38(v24, v26, v6 & 1);

  sub_21BBC7C7C(v24, v26, v6 & 1);

  sub_21BBC7C7C(v33, v32, v31 & 1);
}

uint64_t sub_21BD2A4F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for MultipleInviteViewForInvitee();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_21BE2599C();
  v11 = v10;

  v16[0] = v9;
  v16[1] = v11;
  sub_21BC50054(a1, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_21BD2AC70(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_21BB41FA4();
  v14 = a2;
  return sub_21BE2845C();
}

uint64_t sub_21BD2A6C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  return sub_21BE2840C();
}

uint64_t sub_21BD2A720(uint64_t a1)
{
  v2 = type metadata accessor for MultipleInviteViewForInvitee();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21BC50054(a1, v5);
  sub_21BE28D7C();
  v11 = sub_21BE28D6C();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21BD2AC70(v5, v13 + v12);
  sub_21BBA932C(0, 0, v9, &unk_21BE44538, v13);
}

uint64_t sub_21BD2A8D8()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BD28ABC();
}

double sub_21BD2A984@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA8A0, &unk_21BE44520);
  sub_21BE283FC();
  if (v10 && (v3 = [v10 code], v10, v3))
  {
    sub_21BE28A0C();

    sub_21BCCAA08();
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_21BE2599C();
    v8 = v7;

    *&v11 = v6;
    *(&v11 + 1) = v8;
    sub_21BB41FA4();
    sub_21BE27DBC();
    sub_21BCCAA08();
  }

  sub_21BE2784C();
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_21BD2AB30()
{
  result = qword_27CDBA810;
  if (!qword_27CDBA810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA808, &qword_21BE44458);
    sub_21BD2ABB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA810);
  }

  return result;
}

unint64_t sub_21BD2ABB4()
{
  result = qword_27CDBA818;
  if (!qword_27CDBA818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA820, &qword_21BE44460);
    sub_21BB3B038(&qword_27CDBA828, &qword_27CDBA830, &unk_21BE44468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA818);
  }

  return result;
}

uint64_t sub_21BD2AC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipleInviteViewForInvitee();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21BD2ACD4()
{
  v1 = *(type metadata accessor for MultipleInviteViewForInvitee() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_21BD28644();
}

unint64_t sub_21BD2AD30()
{
  result = qword_27CDBA838;
  if (!qword_27CDBA838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA7F8, &qword_21BE44440);
    sub_21BD2ADBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA838);
  }

  return result;
}

unint64_t sub_21BD2ADBC()
{
  result = qword_27CDBA840;
  if (!qword_27CDBA840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA848, &qword_21BE444C8);
    sub_21BD2AE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA840);
  }

  return result;
}

unint64_t sub_21BD2AE40()
{
  result = qword_27CDBA850;
  if (!qword_27CDBA850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA858, &qword_21BE444D0);
    sub_21BB3B038(&qword_27CDBA860, &qword_27CDBA7F0, &qword_21BE44438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA850);
  }

  return result;
}

unint64_t sub_21BD2AEF0()
{
  result = qword_27CDBA868;
  if (!qword_27CDBA868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB72D0, &qword_21BE36D30);
    sub_21BB3CC48(&qword_27CDBA870, &qword_27CDB75A8, 0x277D08260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA868);
  }

  return result;
}

void sub_21BD2AFA0(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for MultipleInviteViewForInvitee() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_21BD285DC(v6, a1);
}

uint64_t sub_21BD2B014()
{
  v1 = *(type metadata accessor for MultipleInviteViewForInvitee() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BD2A720(v2);
}

double sub_21BD2B074@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MultipleInviteViewForInvitee() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BD2A984(v4, a1);
}

unint64_t sub_21BD2B0E4()
{
  result = qword_27CDBA888;
  if (!qword_27CDBA888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA800, &unk_21BE44448);
    sub_21BD2B19C();
    sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA888);
  }

  return result;
}

unint64_t sub_21BD2B19C()
{
  result = qword_27CDBA890;
  if (!qword_27CDBA890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA878, &qword_21BE44508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA7F8, &qword_21BE44440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB72D0, &qword_21BE36D30);
    sub_21BD2AD30();
    sub_21BD2AEF0();
    swift_getOpaqueTypeConformance2();
    sub_21BD2B2C0(&qword_27CDB96A0, type metadata accessor for HandleInviteErrorAlertViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA890);
  }

  return result;
}

uint64_t sub_21BD2B2C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BD2B308()
{
  result = qword_27CDBA898;
  if (!qword_27CDBA898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA880, &unk_21BE44510);
    sub_21BCCAA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA898);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for MultipleInviteViewForInvitee();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 24);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21BE26F5C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[7];
  v12 = sub_21BE2934C();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = *(v5 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_21BD2B520()
{
  v2 = *(type metadata accessor for MultipleInviteViewForInvitee() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBA6A64;

  return sub_21BD2A8D8();
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for MultipleInviteViewForInvitee();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE26F5C();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    v8 = *(v3 + v6);
  }

  v9 = v1[7];
  v10 = sub_21BE2934C();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = *(v3 + v1[8] + 8);

  return swift_deallocObject();
}

id sub_21BD2B794(void **a1)
{
  v3 = *(type metadata accessor for MultipleInviteViewForInvitee() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BD299E4(a1, v4);
}

uint64_t sub_21BD2B814@<X0>(char *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_21BD29BC8(v1[2], v1[5], v1[6], v1[7], a1);
}

uint64_t sub_21BD2B82C()
{
  v1 = *(type metadata accessor for MultipleInviteViewForInvitee() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BD2A6C8(v0 + v2, v3);
}

char *static AnyLinkDestination.path(fromString:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  if (a2)
  {

    sub_21BE25B7C();

    v12 = sub_21BE25B9C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v14 = sub_21BE25B0C();
      (*(v13 + 8))(v11, v12);
      v15 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = sub_21BE25B9C();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  sub_21BB3A4CC(v11, &unk_27CDB57F0, &qword_21BE328A0);
  v15 = MEMORY[0x277D84F90];
LABEL_6:
  v41._rawValue = v15;
  if (v15[2])
  {
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      AnyLinkDestination.init(pathComponents:)(&v41, &v35);
      if (!*(&v36 + 1))
      {
        break;
      }

      v39[0] = v35;
      v39[1] = v36;
      v39[2] = v37;
      v40 = v38;
      sub_21BC23F14(v39, &v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_21BBBD0A0(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_21BBBD0A0((v18 > 1), v19 + 1, 1, v17);
      }

      sub_21BC17C80(v39);
      *(v17 + 2) = v19 + 1;
      v20 = &v17[56 * v19];
      v21 = v37;
      v22 = v35;
      v23 = v36;
      *(v20 + 10) = v38;
      *(v20 + 3) = v23;
      *(v20 + 4) = v21;
      *(v20 + 2) = v22;
      if (!*(v41._rawValue + 2))
      {
        goto LABEL_19;
      }
    }

    sub_21BB3A4CC(&v35, &qword_27CDB7278, &qword_21BE3A250);
    sub_21BE260FC();
    v24 = sub_21BE26A2C();
    v25 = sub_21BE28FDC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v35 = v27;
      *v26 = 136315138;
      swift_beginAccess();
      v34 = v3;

      v29 = MEMORY[0x21CF03DF0](v28, MEMORY[0x277D837D0]);
      v31 = v30;

      v32 = sub_21BB3D81C(v29, v31, &v35);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_21BB35000, v24, v25, "Failed parse destination for pathComponents: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x21CF05C50](v27, -1, -1);
      MEMORY[0x21CF05C50](v26, -1, -1);

      (*(v4 + 8))(v7, v34);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

LABEL_19:

  return v17;
}

uint64_t sub_21BD2BD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB62A8, &qword_21BE34240);
  if (swift_dynamicCast())
  {
    sub_21BB3D104(v20, v22);
    v11 = v23;
    v12 = v24;
    v13 = __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v14 = *(*(v11 - 8) + 64);
    MEMORY[0x28223BE20](v13);
    v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16);
    sub_21BD2C034(v16, v11, v12, a4);
    (*(v8 + 8))(a1, a2);
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_21BB3A4CC(v20, &qword_27CDB62B0, &unk_21BE446C0);
    a4[3] = a2;
    a4[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    (*(v8 + 32))(boxed_opaque_existential_1, a1, a2);
    result = swift_allocObject();
    *(result + 16) = a2;
    *(result + 24) = a3;
    a4[5] = sub_21BD2DCA0;
    a4[6] = result;
  }

  return result;
}

uint64_t AnyLinkDestination.linkTypeIdentifier.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  return LinkDestination.linkTypeIdentifier.getter();
}

uint64_t AnyLinkDestination.linkType.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_21BD2C034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = *(v10 + 8);
  a4[3] = v12;
  a4[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v8 + 16))(boxed_opaque_existential_1, a1, a2);
  v14 = *(v8 + 32);
  v14(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  result = (v14)(v16 + v15, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[5] = sub_21BD2DCBC;
  a4[6] = v16;
  return result;
}

uint64_t sub_21BD2C18C(void *a1, uint64_t a2)
{
  v4 = sub_21BE2966C();
  swift_allocError();
  v6 = v5;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0) + 48);
  v6[3] = swift_getMetatypeMetadata();
  *v6 = a2;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BE29B5C();
  sub_21BE28A7C();
  sub_21BE2963C();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D841A8], v4);
  return swift_willThrow();
}

uint64_t sub_21BD2C2C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v19 = v12;
  v20 = *(v10 + 8);
  v21 = v11;
  v13 = type metadata accessor for AnyLinkDestination.Envelope();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  (*(v6 + 16))(v9, a2, a3);
  (*(v6 + 32))(v17, v9, a3);
  sub_21BD2C4B4(a1, v13);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_21BD2C4B4(void *a1, uint64_t a2)
{
  v5 = sub_21BE2590C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE258FC();
  v10 = sub_21BE257BC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_21BE257AC();
  v13 = *(a2 + 16);
  v14 = *(a2 + 40);
  v15 = sub_21BE2579C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v33 = a1;
    v18 = v15;
    v19 = v16;

    sub_21BE25BDC();
    sub_21BBBEF94(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5810, qword_21BE328D0);
    v20 = *(sub_21BE2585C() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_21BE32770;
    v31 = v13;
    swift_getMetatypeMetadata();
    sub_21BE28A7C();
    sub_21BE2582C();

    sub_21BE2587C();
    v23 = sub_21BE2588C();
    if (v24)
    {
      v31 = 63;
      v32 = 0xE100000000000000;
      MEMORY[0x21CF03CA0](v23);

      sub_21BE28B0C();
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v25 = sub_21BE2966C();
      swift_allocError();
      v27 = v26;
      v30[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6248, &qword_21BE446D0) + 48);
      v27[3] = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      (*(v6 + 16))(boxed_opaque_existential_1, v9, v5);
      v29 = v33[4];
      __swift_project_boxed_opaque_existential_1Tm(v33, v33[3]);
      sub_21BE29B5C();
      sub_21BE2963C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D841A8], v25);
      swift_willThrow();
      return (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t AnyLinkDestination.hash(into:)()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  v2 = *(v1 + 8);
  return sub_21BE2895C();
}

uint64_t AnyLinkDestination.isEqual(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return sub_21BD2DA94(v4, v1, v2, v3);
}

double AnyLinkDestination.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27CDB4E30 != -1)
  {
    swift_once();
  }

  sub_21BD2C9C8(a1, qword_27CDD4130);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (!v2)
  {
    sub_21BB3D104(&v6, a2);
    result = *&v7;
    *(a2 + 40) = v7;
  }

  return result;
}

uint64_t sub_21BD2C9C8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 40);
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      v7(a1);
      if (!v2)
      {
      }

      v2 = 0;
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = sub_21BE2964C();
    swift_allocError();
    v10 = v9;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6258, &qword_21BE34228) + 48);
    *v10 = &type metadata for AnyLinkDestination;
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_21BE29B1C();
    sub_21BE2963C();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84170], v8);
    return swift_willThrow();
  }
}

uint64_t AnyLinkDestination.encode(to:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

double AnyLinkDestination.init(pathComponents:)@<D0>(Swift::OpaquePointer *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = off_282D84E38;

  v4(a1, &v10);

  if (*(&v11 + 1))
  {
    goto LABEL_5;
  }

  sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250);
  v5 = off_282D84E48;

  v5(a1, &v10);

  if (*(&v11 + 1))
  {
    goto LABEL_5;
  }

  sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250);
  v6 = off_282D84E58;

  (v6)(a1, &v10);

  if (*(&v11 + 1) || (sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250), v7 = off_282D84E68, , v7(a1, &v10), , *(&v11 + 1)))
  {
LABEL_5:
    v14[0] = v10;
    v14[1] = v11;
    *v15 = v12;
    *&v15[16] = v13;
    sub_21BB3D104(v14, v16);
    *&v17[8] = *&v15[8];
    v8 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v8;
    result = *v17;
    *(a2 + 32) = *v17;
    *(a2 + 48) = *&v17[16];
  }

  else
  {
    sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250);
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t AnyLinkDestination.hashValue.getter()
{
  sub_21BE29ACC();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  v2 = *(v1 + 8);
  sub_21BE2895C();
  return sub_21BE29B0C();
}

double sub_21BD2CD84@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27CDB4E30 != -1)
  {
    swift_once();
  }

  sub_21BD2C9C8(a1, qword_27CDD4130);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (!v2)
  {
    sub_21BB3D104(&v6, a2);
    result = *&v7;
    *(a2 + 40) = v7;
  }

  return result;
}

uint64_t sub_21BD2CE34()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_21BD2CE5C()
{
  sub_21BE29ACC();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  v2 = *(v1 + 8);
  sub_21BE2895C();
  return sub_21BE29B0C();
}

uint64_t sub_21BD2CEC0()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  v2 = *(v1 + 8);
  return sub_21BE2895C();
}

uint64_t sub_21BD2CF0C()
{
  sub_21BE29ACC();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  v2 = *(v1 + 8);
  sub_21BE2895C();
  return sub_21BE29B0C();
}

uint64_t sub_21BD2CF6C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_21BD2CFC8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return sub_21BD2DA94(v4, v1, v2, v3);
}

uint64_t sub_21BD2D024@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v84 = a3;
  v4 = a1;
  v87 = a4;
  v89 = a2;
  v86 = *(a2 - 8);
  v5 = *(v86 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v74 - v8;
  v90 = sub_21BE2585C();
  v88 = *(v90 - 8);
  v9 = *(v88 + 64);
  v10 = MEMORY[0x28223BE20](v90);
  v91 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v74 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6250, &unk_21BE49110);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5800, &qword_21BE328C0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v74 - v26;
  v28 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  v29 = v95;
  sub_21BE29B2C();
  if (v29)
  {
    goto LABEL_26;
  }

  v78 = v25;
  v81 = v13;
  v77 = v18;
  v30 = v90;
  v95 = v4;
  v79 = v20;
  v80 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v94, v94[3]);
  sub_21BE2997C();
  v75 = 0;
  v31 = v80;
  sub_21BE258EC();

  v92 = v89;
  swift_getMetatypeMetadata();
  v32 = sub_21BE28A7C();
  v82 = v33;
  v34 = v78;
  sub_21BBA3854(v31, v78, &qword_27CDB5800, &qword_21BE328C0);
  v35 = sub_21BE2590C();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v34, 1, v35);
  v76 = v32;
  if (v37 == 1)
  {
    sub_21BB3A4CC(v34, &qword_27CDB5800, &qword_21BE328C0);
    v38 = v30;
    v39 = v88;
    v40 = v91;
LABEL_14:
    v49 = v79;
    (*(v39 + 56))(v79, 1, 1, v38);
    v50 = v89;
    v52 = v86;
    v51 = v87;
    goto LABEL_18;
  }

  v41 = sub_21BE2586C();
  result = (*(v36 + 8))(v34, v35);
  v38 = v30;
  v39 = v88;
  v40 = v91;
  if (!v41)
  {
    goto LABEL_14;
  }

  v43 = v81;
  if (!*(v41 + 16))
  {
LABEL_13:

    v49 = v79;
    (*(v39 + 56))(v79, 1, 1, v38);
LABEL_17:
    v52 = v86;
    v51 = v87;
    v50 = v89;
LABEL_18:
    v53 = v82;
    v54 = v77;
    sub_21BBA3854(v49, v77, &qword_27CDB6250, &unk_21BE49110);
    if ((*(v39 + 48))(v54, 1, v38) == 1 || ((*(v39 + 32))(v40, v54, v38), sub_21BE2584C(), v56 = v55, (*(v39 + 8))(v40, v38), !v56))
    {
      v91 = 0;
      v58 = 0xF000000000000000;
    }

    else
    {

      v91 = sub_21BE25BBC();
      v58 = v57;
      swift_bridgeObjectRelease_n();
      if (v58 >> 60 != 15)
      {

        v59 = sub_21BE2578C();
        v60 = *(v59 + 48);
        v61 = *(v59 + 52);
        swift_allocObject();
        sub_21BE2577C();
        v62 = v85;
        v63 = v91;
        v64 = v75;
        sub_21BE2576C();
        sub_21BBBF0B4(v63, v58);

        sub_21BB3A4CC(v49, &qword_27CDB6250, &unk_21BE49110);
        sub_21BB3A4CC(v80, &qword_27CDB5800, &qword_21BE328C0);
        if (!v64)
        {
          v65 = *(v52 + 32);
          v66 = v62;
          v67 = v83;
          v65(v83, v66, v50);
          v65(v51, v67, v50);
          __swift_destroy_boxed_opaque_existential_0Tm(v94);
          v68 = v95;
          return __swift_destroy_boxed_opaque_existential_0Tm(v68);
        }

        goto LABEL_25;
      }
    }

    v69 = sub_21BE2964C();
    swift_allocError();
    v71 = v70;
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6258, &qword_21BE34228) + 48);
    *v71 = v50;
    v73 = v95[4];
    __swift_project_boxed_opaque_existential_1Tm(v95, v95[3]);
    sub_21BE29B1C();
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_21BE295EC();

    v92 = 0xD00000000000001FLL;
    v93 = 0x800000021BE56E50;
    MEMORY[0x21CF03CA0](v76, v53);

    sub_21BE2963C();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x277D84170], v69);
    swift_willThrow();
    sub_21BBBF0B4(v91, v58);
    sub_21BB3A4CC(v79, &qword_27CDB6250, &unk_21BE49110);
    sub_21BB3A4CC(v80, &qword_27CDB5800, &qword_21BE328C0);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
    v4 = v95;
LABEL_26:
    v68 = v4;
    return __swift_destroy_boxed_opaque_existential_0Tm(v68);
  }

  v44 = *(v41 + 16);
  v45 = 0;
  v78 = (v88 + 16);
  v46 = (v88 + 8);
  while (v45 < *(v41 + 16))
  {
    (*(v39 + 16))(v43, v41 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v45, v38);
    if (sub_21BE2583C() == v32 && v47 == v82)
    {

LABEL_16:

      v40 = v91;
      v49 = v79;
      (*(v39 + 32))(v79, v81, v38);
      (*(v39 + 56))(v49, 0, 1, v38);
      goto LABEL_17;
    }

    v48 = sub_21BE2995C();

    if (v48)
    {
      goto LABEL_16;
    }

    ++v45;
    v43 = v81;
    result = (*v46)(v81, v38);
    v40 = v91;
    if (v44 == v45)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD2D924(uint64_t a1, void *a2)
{
  v17[3] = &type metadata for AnyLinkDestination;
  v17[4] = sub_21BC23F70();
  v17[0] = swift_allocObject();
  sub_21BC23F14(a1, v17[0] + 16);
  sub_21BB3A35C(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast())
  {
    v15[0] = v10;
    v15[1] = v11;
    v15[2] = v12;
    v16 = v13;
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v4);
    v6 = (*(v5 + 24))(v15, v4, v5);
    sub_21BC17C80(v15);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    sub_21BB3A4CC(&v10, &qword_27CDB7278, &qword_21BE3A250);
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v7);
    v6 = (*(v8 + 24))(v17, v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return v6 & 1;
}

uint64_t sub_21BD2DA94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21[3] = a3;
  v21[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_21BB3A35C(v21, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  if (swift_dynamicCast())
  {
    v19[0] = v14;
    v19[1] = v15;
    v19[2] = v16;
    v20 = v17;
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v8);
    v10 = (*(v9 + 24))(v19, v8, v9);
    sub_21BC17C80(v19);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    sub_21BB3A4CC(&v14, &qword_27CDB7278, &qword_21BE3A250);
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v11);
    v10 = (*(v12 + 24))(v21, v11, v12);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v10 & 1;
}

unint64_t sub_21BD2DC14()
{
  result = qword_27CDBA8D8[0];
  if (!qword_27CDBA8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDBA8D8);
  }

  return result;
}

unint64_t sub_21BD2DC68(uint64_t a1)
{
  result = sub_21BC177EC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BD2DD2C(uint64_t a1)
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

uint64_t sub_21BD2DDC4()
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BD2DE28()
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BD2DE74@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21BE2980C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21BD2DEF4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21BE2980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21BD2DF4C(uint64_t a1)
{
  v2 = sub_21BD30374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD2DF88(uint64_t a1)
{
  v2 = sub_21BD30374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD2DFC4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v54 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v5;
  MEMORY[0x28223BE20](v4);
  v50 = v45 - v6;
  v49 = type metadata accessor for FamilyManagePaymentsLinkRUI();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v49);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA968, &qword_21BE44880);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v46 = v45 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA970, &unk_21BE44888);
  v14 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v53 = v45 - v15;
  v16 = *(v1 + 24);
  v57 = *(v1 + 16);
  v58 = v16;
  sub_21BD302AC(v1, v9, type metadata accessor for FamilyManagePaymentsLinkRUI);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_21BD2FC44(v9, v18 + v17);
  sub_21BB41FA4();

  v19 = v46;
  sub_21BE2845C();
  v47 = v1;
  sub_21BD302AC(v1, v9, type metadata accessor for FamilyManagePaymentsLinkRUI);
  v48 = v8;
  v20 = v19;
  v21 = swift_allocObject();
  sub_21BD2FC44(v9, v21 + v17);
  v22 = &v19[*(v11 + 44)];
  v23 = &v22[*(sub_21BE2701C() + 20)];
  sub_21BE28D8C();
  *v22 = &unk_21BE448A0;
  *(v22 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF0, &qword_21BE42450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  v25 = sub_21BE27BAC();
  *(inited + 32) = v25;
  v26 = sub_21BE27BCC();
  *(inited + 33) = v26;
  v27 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v25)
  {
    v27 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v26)
  {
    v27 = sub_21BE27BBC();
  }

  v28 = v53;
  sub_21BBB7D84(v20, v53, &qword_27CDBA968, &qword_21BE44880);
  v29 = v28 + *(v56 + 36);
  *v29 = v27;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 1;
  v30 = v49;
  v31 = v47;
  v32 = v47 + *(v49 + 32);
  v33 = *v32;
  v34 = *(v32 + 8);
  v60 = v33;
  v61 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v45[1] = v57;
  LODWORD(v46) = v59;
  sub_21BD302AC(v31, v9, type metadata accessor for FamilyManagePaymentsLinkRUI);
  v35 = swift_allocObject();
  sub_21BD2FC44(v9, v35 + v17);
  v36 = *(v30 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750);
  v37 = v50;
  sub_21BE283FC();
  v38 = *(v31 + 32);
  v39 = v54;
  sub_21BBB7D84(v37, v54, &unk_27CDB57F0, &qword_21BE328A0);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = (v52 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_21BBB7D84(v39, v42 + v40, &unk_27CDB57F0, &qword_21BE328A0);
  *(v42 + v41) = v38;
  v43 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA978, &unk_21BE448A8);
  sub_21BD300A8();
  sub_21BD301F0();
  sub_21BE2812C();

  return sub_21BB3A4CC(v28, &qword_27CDBA970, &unk_21BE44888);
}

uint64_t sub_21BD2E5D0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for FamilyManagePaymentsLinkRUI() + 32));
  v2 = *v1;
  v3 = *(v1 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  sub_21BE2840C();
}

uint64_t sub_21BD2E67C(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_21BE25B9C();
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v4 = *(v3 + 64) + 15;
  v1[27] = swift_task_alloc();
  v5 = type metadata accessor for FamilyManagePaymentsLinkRUI();
  v1[28] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v7 = sub_21BE26A4C();
  v1[30] = v7;
  v8 = *(v7 - 8);
  v1[31] = v8;
  v9 = *(v8 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  sub_21BE28D7C();
  v1[37] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  v1[38] = v12;
  v1[39] = v11;

  return MEMORY[0x2822009F8](sub_21BD2E858, v12, v11);
}

uint64_t sub_21BD2E858()
{
  v1 = *(v0[24] + 32);
  v2 = sub_21BE289CC();
  v3 = [v1 URLForKey_];
  v0[40] = v3;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_21BD2E9C8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA9A8, &unk_21BE448C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BD2F10C;
  v0[13] = &block_descriptor_38;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD2E9C8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 304);
  if (v3)
  {
    v6 = sub_21BD2EEE0;
  }

  else
  {
    v6 = sub_21BD2EAF8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BD2EAF8()
{
  v52 = v0;
  v1 = v0[37];

  v2 = v0[21];
  v3 = [v2 absoluteURL];
  if (v3)
  {
    v4 = v0[36];
    v5 = v3;
    sub_21BE25B5C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[33];
  v10 = v0[28];
  v11 = v0[29];
  v12 = v0[24];
  (*(v0[26] + 56))(v7, v6, 1, v0[25]);
  v13 = *(v10 + 28);
  sub_21BBF0D04(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750);
  sub_21BE2840C();
  sub_21BB3A4CC(v7, &unk_27CDB57F0, &qword_21BE328A0);
  sub_21BE260FC();
  sub_21BD302AC(v12, v11, type metadata accessor for FamilyManagePaymentsLinkRUI);
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FBC();
  if (os_log_type_enabled(v14, v15))
  {
    v50 = v2;
    v16 = v0[34];
    v17 = v0[29];
    v19 = v0[25];
    v18 = v0[26];
    v20 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v20 = 136315138;
    v21 = v17 + *(v10 + 28);
    sub_21BE283FC();
    v22 = (*(v18 + 48))(v16, 1, v19);
    v23 = v0[34];
    if (v22)
    {
      sub_21BB3A4CC(v0[34], &unk_27CDB57F0, &qword_21BE328A0);
      v24 = 0xE200000000000000;
      v25 = 11565;
    }

    else
    {
      v31 = v0[26];
      v32 = v0[27];
      v33 = v0[25];
      (*(v31 + 16))(v32, v0[34], v33);
      sub_21BB3A4CC(v23, &unk_27CDB57F0, &qword_21BE328A0);
      v25 = sub_21BE25AFC();
      v24 = v34;
      (*(v31 + 8))(v32, v33);
    }

    v35 = v0[40];
    v36 = v0[33];
    v37 = v0[31];
    v48 = v0[30];
    sub_21BD30314(v0[29], type metadata accessor for FamilyManagePaymentsLinkRUI);
    v38 = sub_21BB3D81C(v25, v24, &v51);

    *(v20 + 4) = v38;
    _os_log_impl(&dword_21BB35000, v14, v15, "Got manage payments url %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x21CF05C50](v49, -1, -1);
    MEMORY[0x21CF05C50](v20, -1, -1);

    (*(v37 + 8))(v36, v48);
  }

  else
  {
    v26 = v0[40];
    v27 = v0[33];
    v28 = v0[30];
    v29 = v0[31];
    v30 = v0[29];

    sub_21BD30314(v30, type metadata accessor for FamilyManagePaymentsLinkRUI);
    (*(v29 + 8))(v27, v28);
  }

  v40 = v0[35];
  v39 = v0[36];
  v42 = v0[33];
  v41 = v0[34];
  v43 = v0[32];
  v44 = v0[29];
  v45 = v0[27];

  v46 = v0[1];

  return v46();
}

uint64_t sub_21BD2EEE0()
{
  v33 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 296);
  v4 = *(v0 + 256);

  swift_willThrow();

  sub_21BE260FC();
  v5 = v2;
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 328);
    v9 = *(v0 + 248);
    v31 = *(v0 + 256);
    v10 = *(v0 + 240);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 160);
    v16 = sub_21BE29A5C();
    v18 = sub_21BB3D81C(v16, v17, &v32);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_21BB35000, v6, v7, "Error loading manage payments url: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);

    (*(v9 + 8))(v31, v10);
  }

  else
  {
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v21 = *(v0 + 240);

    (*(v20 + 8))(v19, v21);
  }

  v23 = *(v0 + 280);
  v22 = *(v0 + 288);
  v25 = *(v0 + 264);
  v24 = *(v0 + 272);
  v26 = *(v0 + 256);
  v27 = *(v0 + 232);
  v28 = *(v0 + 216);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_21BD2F10C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_21BD2F1EC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for FamilyManagePaymentsLinkRUI() + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BD2F25C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA9A0, &qword_21BE448B8);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v40 - v5;
  v6 = type metadata accessor for FAAMSWebView(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21BE26A4C();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  v18 = sub_21BE25B9C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  sub_21BBF0D04(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_21BB3A4CC(v17, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BE260FC();
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FDC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21BB35000, v26, v27, "managePaymentsURL is nil", v28, 2u);
      MEMORY[0x21CF05C50](v28, -1, -1);
    }

    (*(v10 + 8))(v13, v41);
    swift_storeEnumTagMultiPayload();
    sub_21BB40468(&qword_27CDBA998, type metadata accessor for FAAMSWebView);
    return sub_21BE2784C();
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    v30 = *(v19 + 16);
    v30(v23, v25, v18);
    v31 = v42;
    *v9 = v42;
    v30(&v9[*(v6 + 20)], v23, v18);
    v32 = type metadata accessor for FAAMSWebViewModel(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v35 = swift_allocObject();
    *(v35 + 72) = 0;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0u;
    v36 = v31;
    sub_21BE25F4C();
    v37 = *(v19 + 8);
    v37(v23, v18);
    *(v35 + 64) = v36;
    v38 = &v9[*(v6 + 24)];
    *v38 = v35;
    v38[1] = 0;
    sub_21BD302AC(v9, v44, type metadata accessor for FAAMSWebView);
    swift_storeEnumTagMultiPayload();
    sub_21BB40468(&qword_27CDBA998, type metadata accessor for FAAMSWebView);
    v39 = v36;
    sub_21BE2784C();
    sub_21BD30314(v9, type metadata accessor for FAAMSWebView);
    return (v37)(v25, v18);
  }
}

uint64_t sub_21BD2F790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v38 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA9B0, &qword_21BE448D0);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = type metadata accessor for FamilyManagePaymentsLinkRUI();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_21BE289CC();
  v18 = sub_21BE289CC();
  v19 = [objc_opt_self() bagForProfile:v17 profileVersion:v18];

  v16[4] = v19;
  v20 = v13[9];
  v21 = sub_21BE25B9C();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_21BBF0D04(v11, v9);
  v42 = v20;
  sub_21BE283EC();
  sub_21BB3A4CC(v11, &unk_27CDB57F0, &qword_21BE328A0);
  v22 = v16 + v13[10];
  v47 = 0;
  sub_21BE283EC();
  v23 = v46;
  *v22 = v45;
  *(v22 + 1) = v23;
  v24 = v13[11];
  v25 = v43;
  *(v16 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  v26 = v25[4];
  __swift_project_boxed_opaque_existential_1Tm(v25, v25[3]);
  v27 = v44;
  v28 = sub_21BE29B3C();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v25);

    sub_21BB3A4CC(v16 + v42, &qword_27CDBA960, qword_21BE44750);

    return sub_21BB3A4CC(v16 + v24, &qword_27CDB56C0, qword_21BE32630);
  }

  else
  {
    v37 = v19;
    v30 = v40;
    *v16 = v28;
    v16[1] = v29;
    v44 = v29;
    v31 = v25[4];
    v32 = v25;
    __swift_project_boxed_opaque_existential_1Tm(v25, v25[3]);
    sub_21BD30374();
    sub_21BE29B4C();
    v34 = sub_21BE2986C();
    v36 = v35;
    (*(v39 + 8))(v41, v30);
    v16[2] = v34;
    v16[3] = v36;
    sub_21BD302AC(v16, v38, type metadata accessor for FamilyManagePaymentsLinkRUI);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    return sub_21BD30314(v16, type metadata accessor for FamilyManagePaymentsLinkRUI);
  }
}

uint64_t sub_21BD2FC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyManagePaymentsLinkRUI();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD2FCC0()
{
  v2 = *(type metadata accessor for FamilyManagePaymentsLinkRUI() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BD2E67C(v0 + v3);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for FamilyManagePaymentsLinkRUI();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v3 + v1[7];
  v7 = sub_21BE25B9C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  v9 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA960, qword_21BE44750) + 28));

  v10 = *(v3 + v1[8] + 8);

  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21BE26F5C();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
    v13 = *(v3 + v11);
  }

  return swift_deallocObject();
}

uint64_t sub_21BD2FF8C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyManagePaymentsLinkRUI() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BD30000@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BD2F25C(v1 + v4, v5, a1);
}

unint64_t sub_21BD300A8()
{
  result = qword_27CDBA980;
  if (!qword_27CDBA980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA970, &unk_21BE44888);
    sub_21BD30134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA980);
  }

  return result;
}

unint64_t sub_21BD30134()
{
  result = qword_27CDBA988;
  if (!qword_27CDBA988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA968, &qword_21BE44880);
    sub_21BBC9BE8();
    sub_21BB40468(&qword_27CDB5058, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA988);
  }

  return result;
}

unint64_t sub_21BD301F0()
{
  result = qword_27CDBA990;
  if (!qword_27CDBA990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA978, &unk_21BE448A8);
    sub_21BB40468(&qword_27CDBA998, type metadata accessor for FAAMSWebView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA990);
  }

  return result;
}

uint64_t sub_21BD302AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BD30314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BD30374()
{
  result = qword_27CDBA9B8;
  if (!qword_27CDBA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA9B8);
  }

  return result;
}

unint64_t sub_21BD303DC()
{
  result = qword_27CDBA9C0;
  if (!qword_27CDBA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA9C0);
  }

  return result;
}

unint64_t sub_21BD30434()
{
  result = qword_27CDBA9C8;
  if (!qword_27CDBA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA9C8);
  }

  return result;
}

unint64_t sub_21BD3048C()
{
  result = qword_27CDBA9D0;
  if (!qword_27CDBA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA9D0);
  }

  return result;
}

uint64_t sub_21BD304E0()
{
  sub_21BC0A470();
  sub_21BE2755C();
  return v1;
}

uint64_t sub_21BD3052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BD30590();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21BD30590()
{
  result = qword_27CDBA9D8;
  if (!qword_27CDBA9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5E58, &qword_21BE33900);
    sub_21BD30614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA9D8);
  }

  return result;
}

unint64_t sub_21BD30614()
{
  result = qword_27CDBA9E0;
  if (!qword_27CDBA9E0)
  {
    sub_21BD3066C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBA9E0);
  }

  return result;
}

unint64_t sub_21BD3066C()
{
  result = qword_27CDB6918;
  if (!qword_27CDB6918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB6918);
  }

  return result;
}

uint64_t sub_21BD306B8()
{
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
  sub_21BE25F1C();

  return *(v0 + 16);
}

uint64_t sub_21BD30758(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BD30868()
{
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
  sub_21BE25F1C();

  return *(v0 + 17);
}

uint64_t sub_21BD30908@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21BD309D8(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BD30AE8()
{
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
  sub_21BE25F1C();

  return *(v0 + 18);
}

uint64_t sub_21BD30B88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
  sub_21BE25F1C();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_21BD30C58(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD32DB4(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel);
    sub_21BE25F0C();
  }

  return result;
}

id sub_21BD30D68()
{
  result = [*(v0 + 32) accounts];
  if (result)
  {
    v2 = result;
    type metadata accessor for AIDAServiceType(0);
    sub_21BD32D68();
    sub_21BD32DB4(&unk_280BD6960, type metadata accessor for AIDAServiceType);
    v3 = sub_21BE2890C();

    if (*(v3 + 16) && (v4 = sub_21BBB322C(*MEMORY[0x277CED1A0]), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = [v6 isEnabledForDataclass_];

      return v7;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}