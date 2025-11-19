uint64_t sub_247CD4E9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CD4F30()
{
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE72D00;
  v2 = *(qword_27EE72D00 + 16);

  [v2 lock];
  sub_247CAD9C4(v1, &_s19AnalyticsManagerKeyON, (v0 + 872));
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1080);
  [v2 unlock];
  sub_247C3D044((v0 + 872), v0 + 832);

  sub_247C2BD10(v0 + 832, v0 + 952, &unk_27EE631F0);
  sub_247C3D044((v0 + 952), v0 + 912);
  v7 = *(v0 + 936);
  v8 = *(v0 + 944);
  __swift_project_boxed_opaque_existential_1((v0 + 912), v7);
  v9 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_flowInitiatedTimeStamp;
  swift_beginAccess();
  sub_247C2BD10(v6 + v9, v3, &unk_27EE631E0);
  v10 = (*(v4 + 48))(v3, 1, v5);
  v11 = 0;
  if (v10 != 1)
  {
    (*(*(v0 + 1112) + 32))(*(v0 + 1128), *(v0 + 1136), *(v0 + 1104));
    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v12 = *(v0 + 1128);
    v13 = *(v0 + 1120);
    v14 = *(v0 + 1112);
    v15 = *(v0 + 1104);
    sub_247D1EF18();
    sub_247D1EE88();
    v11 = v16;
    v17 = *(v14 + 8);
    v17(v13, v15);
    v17(v12, v15);
  }

  swift_getErrorValue();
  v18 = sub_247D205B8();
  v20 = v19;

  swift_getErrorValue();
  v21 = sub_247CC595C(*(v0 + 1048));
  *(v0 + 424) = v11;
  *(v0 + 432) = v10 == 1;
  *(v0 + 440) = 0;
  *(v0 + 448) = 1;
  *(v0 + 456) = v21;
  *(v0 + 464) = 0;
  *(v0 + 472) = v18;
  *(v0 + 480) = v20;
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 1;
  *(v0 + 592) = 0u;
  *(v0 + 608) = xmmword_247D23E90;
  *(v0 + 624) = 514;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 0u;
  *(v0 + 664) = 0u;
  *(v0 + 680) = 0u;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = 0u;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 0u;
  *(v0 + 792) = 0u;
  *(v0 + 808) = 1;
  *(v0 + 816) = 0xD000000000000014;
  *(v0 + 824) = 0x8000000247D31A80;
  memcpy((v0 + 16), (v0 + 424), 0x198uLL);
  (*(v8 + 8))(v0 + 16, v7, v8);
  sub_247C318F8(v0 + 424);
  __swift_destroy_boxed_opaque_existential_1(v0 + 912);
  *(v0 + 1192) = sub_247D1FE98();
  v23 = sub_247D1FE38();
  *(v0 + 1200) = v23;
  *(v0 + 1208) = v22;

  return MEMORY[0x2822009F8](sub_247CD539C, v23, v22);
}

uint64_t sub_247CD539C()
{
  v1 = v0[146];
  *v0[137] = v1;
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  v3 = swift_task_alloc();
  v0[152] = v3;
  *v3 = v0;
  v3[1] = sub_247CD545C;
  v4 = v0[137];

  return sub_247C8C6E8(v4, 0, 255);
}

uint64_t sub_247CD545C()
{
  v1 = *v0;
  v2 = *(*v0 + 1096);

  sub_247CDA638(v2);
  v3 = *(v1 + 1208);
  v4 = *(v1 + 1200);

  return MEMORY[0x2822009F8](sub_247CD55A0, v4, v3);
}

uint64_t sub_247CD55A0()
{

  v1 = *(v0 + 1184);
  v2 = *(v0 + 1176);

  return MEMORY[0x2822009F8](sub_247CD5608, v2, v1);
}

uint64_t sub_247CD5608()
{
  v1 = *(v0 + 1168);

  sub_247C27100(v0 + 832, &unk_27EE631F0);

  v2 = *(v0 + 8);

  return v2();
}

Swift::Bool __swiftcall DeviceAssessmentViewController.accessibilityPerformEscape()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_247D1F468();
  v6 = sub_247D20028();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_247C1F000, v5, v6, "Accessibility Escape Performed", v7, 2u);
    MEMORY[0x24C1B9080](v7, -1, -1);
  }

  v8 = sub_247D1FEC8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_247D1FEA8();
  v9 = v1;
  v10 = sub_247D1FE98();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_247CD082C(0, 0, v4, &unk_247D273E0, v11);

  return 1;
}

uint64_t sub_247CD5920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  v4[3] = swift_task_alloc();
  sub_247D1FEA8();
  v4[4] = sub_247D1FE98();
  v6 = sub_247D1FE38();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_247CD59F0, v6, v5);
}

uint64_t sub_247CD59F0()
{
  v1 = v0[3];
  v2 = _s5StateVMa();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_247C250C8();
  v3 = swift_allocError();
  v0[7] = v3;
  *v4 = xmmword_247D22CA0;
  *(v4 + 16) = 0x8000000247D2D8A0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0xE000000000000000;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_247CD5B18;
  v6 = v0[3];

  return sub_247C9457C(v6, v3);
}

uint64_t sub_247CD5B18()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 24);

  sub_247C27100(v3, &qword_27EE62BA0);
  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_247CD5C88, v5, v4);
}

uint64_t sub_247CD5C88()
{

  v1 = *(v0 + 8);

  return v1();
}

id DeviceAssessmentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_247D1FBB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DeviceAssessmentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_247CD6010(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_247CD605C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_247CD6154;

  return v6(a1);
}

uint64_t sub_247CD6154()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_247CD624C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636C0);
  result = sub_247D203D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_247C30320(v21, v31);
      }

      else
      {
        sub_247C30330(v21, v31);
      }

      result = sub_247D20608();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_247C30320(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_247CD64C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637B0);
  v33 = a2;
  result = sub_247D203D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_247C30320(v24, v34);
      }

      else
      {
        sub_247C30330(v24, v34);
      }

      sub_247D20618();
      sub_247D1FCB8();
      result = sub_247D20658();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_247C30320(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_247CD677C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63848);
  v35 = a2;
  result = sub_247D203D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_247D20618();
      sub_247D1FCB8();
      result = sub_247D20658();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_247CD6A20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63738);
  result = sub_247D203D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_247D20618();
      MEMORY[0x24C1B84E0](v20 + 1001);
      result = sub_247D20658();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_247CD6C9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63790);
  v37 = a2;
  result = sub_247D203D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_247D20618();
      sub_247D1FCB8();
      result = sub_247D20658();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_247CD6F5C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_247D1EF78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637B8);
  v40 = a2;
  result = sub_247D203D8();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_247CDA528();
      result = sub_247D1FB48();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

_OWORD *sub_247CD7308(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_247D15DA4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_247CB0EF0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_247CD624C(v14, a3 & 1);
    v9 = sub_247D15DA4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_247D20578();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_247C30320(a1, v20);
  }

  else
  {

    return sub_247CD7A50(v9, a2, a1, v19);
  }
}

_OWORD *sub_247CD7434(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_247CCFDA8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_247CB106C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_247CD64C4(v16, a4 & 1);
    v11 = sub_247CCFDA8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_247D20578();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_247C30320(a1, v22);
  }

  else
  {
    sub_247CD7AB8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_247CD7584(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_247CCFDA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_247CD677C(v16, a4 & 1);
      v11 = sub_247CCFDA8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_247D20578();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_247CB1210();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_247CD76FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_247CCFDA8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_247CD6C9C(v18, a5 & 1);
      v13 = sub_247CCFDA8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_247D20578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_247CB14C8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_247CD7884(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_247D1EF78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_247D15F30(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_247CB1640();
      goto LABEL_7;
    }

    sub_247CD6F5C(v17, a3 & 1);
    v22 = sub_247D15F30(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_247CD7B74(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_247D20578();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_247CD7A50(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_247C30320(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_247CD7AB8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_247C30320(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_247CD7B24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_247CD7B74(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_247D1EF78();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_247CD7C2C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_247CD7D20;

  return v5(v2 + 32);
}

uint64_t sub_247CD7D20()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_247CD7E34(_OWORD *a1, uint64_t a2)
{
  v14[3] = &type metadata for ConfigurationProvider;
  v14[4] = &off_2859D7FB8;
  v4 = swift_allocObject();
  v14[0] = v4;
  v5 = a1[7];
  v4[7] = a1[6];
  v4[8] = v5;
  v6 = a1[9];
  v4[9] = a1[8];
  v4[10] = v6;
  v7 = a1[3];
  v4[3] = a1[2];
  v4[4] = v7;
  v8 = a1[5];
  v4[5] = a1[4];
  v4[6] = v8;
  v9 = a1[1];
  v4[1] = *a1;
  v4[2] = v9;
  sub_247C5F368(v14, v13);
  v10 = *(a2 + 16);
  [v10 lock];
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636C8);
  v12[0] = swift_allocObject();
  sub_247C5F368(v13, v12[0] + 16);
  swift_beginAccess();
  sub_247C93FD0(v12, &_s24ConfigurationProviderKeyON);
  swift_endAccess();
  [v10 unlock];
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_247CD7F6C(_OWORD *a1, uint64_t a2)
{
  v11[3] = &type metadata for CurrentDeviceDetailsProvider;
  v11[4] = &off_2859DA850;
  v4 = swift_allocObject();
  v11[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  sub_247C5F368(v11, v10);
  v7 = *(a2 + 16);
  [v7 lock];
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636F0);
  v9[0] = swift_allocObject();
  sub_247C5F368(v10, v9[0] + 16);
  swift_beginAccess();
  sub_247C93FD0(v9, &_s31CurrentDeviceDetailsProviderKeyON);
  swift_endAccess();
  [v7 unlock];
  __swift_destroy_boxed_opaque_existential_1(v11);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_247CD808C(uint64_t a1, uint64_t a2)
{
  v7[3] = &type metadata for AppMetadataStorageConfigurationProvider;
  v7[4] = &off_2859D9E40;
  v7[0] = a1;
  sub_247C5F368(v7, v6);
  v3 = *(a2 + 16);
  [v3 lock];
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63368);
  v5[0] = swift_allocObject();
  sub_247C5F368(v6, v5[0] + 16);
  swift_beginAccess();
  sub_247C93FD0(v5, &_s42AppMetadataStorageConfigurationProviderKeyON);
  swift_endAccess();
  [v3 unlock];
  __swift_destroy_boxed_opaque_existential_1(v7);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_247CD8184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63790);
    v3 = sub_247D203E8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_247CCFDA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_247CD8298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637B0);
    v3 = sub_247D203E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_247C2BD10(v4, &v13, &unk_27EE63FF0);
      v5 = v13;
      v6 = v14;
      result = sub_247CCFDA8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247C30320(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_247CD83C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63848);
    v3 = sub_247D203E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_247CCFDA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_247CD84CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E28);
    v3 = sub_247D203E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_247C2BD10(v4, &v11, &qword_27EE62E58);
      v5 = v11;
      result = sub_247D1AEFC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_247C30320(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_247CD85F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63DF0);
    v3 = sub_247D203E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_247C2BD10(v4, &v11, &unk_27EE632E8);
      v5 = v11;
      result = sub_247D1AEFC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_247C30320(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_247CD871C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63DF8);
    v3 = sub_247D203E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_247C2BD10(v4, &v11, &qword_27EE63E00);
      v5 = v11;
      result = sub_247D1AEFC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_247C30320(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_247CD8844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63738);
    v3 = sub_247D203E8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_247D15E7C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_247CD8924(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E18);
    v3 = sub_247D203E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_247C2BD10(v4, v13, &qword_27EE63E20);
      result = sub_247D15EEC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_247C30320(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_247CD8A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637B8);
    v7 = sub_247D203E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_247C2BD10(v9, v5, &qword_27EE63E08);
      result = sub_247D15F30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_247D1EF78();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_247CD8C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E10);
    v3 = sub_247D203E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_247CCFDA8(v5, v6);
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

uint64_t sub_247CD8D4C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_247D1FB18();
  if (*(v2 + 16))
  {
    sub_247CCFDA8(0xD00000000000001ALL, 0x8000000247D31A20);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_247CD8E34()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_247D1FB18();
  if (*(v2 + 16))
  {
    sub_247CCFDA8(0xD00000000000001BLL, 0x8000000247D31AA0);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_247CD8EFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C2793C;

  return sub_247CD4BB4(a1, v4, v5, v6);
}

uint64_t sub_247CD8FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247CD5920(a1, v4, v5, v6);
}

unint64_t sub_247CD9068()
{
  result = qword_27EE63DB0;
  if (!qword_27EE63DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63DB0);
  }

  return result;
}

uint64_t sub_247CD90C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_247CD9120(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionDidRequestConnectionToPeer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C27E44;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionFinishedLoading(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C2793C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionRequestDisplayDarkCaptureScreen(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C27E44;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionRequestDisplayLightCaptureScreen(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C27E44;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionRequestDisplayBackCapturePlaceholderScreen(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C27E44;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionRequestDisplayCheckingDamageScreen(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C27E44;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionRequestDisplayIssueFoundScreen(_:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_247C27E44;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionFinishedAssessment(_:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_247C27E44;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionRequestPrepareForCapture(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C27E44;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionRequestRetryDeviceAuthentication(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C27E44;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DeviceAssessmentPeerDeviceSessionDelegate.deviceAssessmentSessionRequestRetrySession(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_247C27E44;

  return v9(a1, a2, a3);
}

void sub_247CD9E9C()
{
  v0 = sub_247D1F488();
  if (v1 <= 0x3F)
  {
    v5 = *(v0 - 8) + 64;
    v6 = MEMORY[0x277D83428] + 64;
    sub_247CDA024(319, &qword_27EE63DC8, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_247CDA024(319, &qword_27EE63DD0, MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v7 = &v4;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_247CDA024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PeerDeviceCommand.Receive);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_247CDA0A0()
{
  sub_247D1F488();
  if (v0 <= 0x3F)
  {
    sub_247CBD508();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_247CDA224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
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

uint64_t sub_247CDA280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_247CDA304()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247CDA33C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247C27E44;

  return sub_247CD7C2C(a1, v4);
}

void sub_247CDA3F4()
{
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController____lazy_storage___contentViewController) = 0;
  v1 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_tasks;
  *(v0 + v1) = sub_247CD8A60(MEMORY[0x277D84F90]);
  sub_247D1F478();
  v2 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_flowInitiatedTimeStamp;
  v3 = sub_247D1EF48();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_exitSessionTask) = 0;
  sub_247D20398();
  __break(1u);
}

unint64_t sub_247CDA528()
{
  result = qword_27EE63808;
  if (!qword_27EE63808)
  {
    sub_247D1EF78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63808);
  }

  return result;
}

uint64_t sub_247CDA580(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247C27E44;

  return sub_247CD605C(a1, v4);
}

uint64_t sub_247CDA638(uint64_t a1)
{
  v2 = _s15DiagnosticStyleOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CDA694()
{

  if (*(v0 + 168) >= 0xAuLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_247CDA714()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_247CDA74C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_247CDA7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247D1F488();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_247CDA8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_247D1F488();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for BAAHeadersProvider()
{
  result = qword_27EE63E30;
  if (!qword_27EE63E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_247CDA9CC()
{
  result = sub_247D1F488();
  if (v1 <= 0x3F)
  {
    result = sub_247CDAA50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_247CDAA50()
{
  result = qword_27EE63E40;
  if (!qword_27EE63E40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EE63E40);
  }

  return result;
}

void sub_247CDAAB4(void *a1, uint64_t a2, id a3, void (*a4)(void *, uint64_t, id))
{
  if (!a1 || !a2)
  {
LABEL_14:
    if (!a3)
    {
LABEL_28:
      sub_247CDC728();
      v21 = swift_allocError();
      *v32 = 2;
LABEL_29:
      v33 = a3;
      a4(0, MEMORY[0x277D84F90], v21);
      v31 = v21;

      goto LABEL_23;
    }

LABEL_15:
    v21 = a3;
    goto LABEL_29;
  }

  v7 = a1;
  v8 = sub_247CDADAC(a2);
  if (!v8)
  {

    goto LABEL_14;
  }

  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_27:

    if (!a3)
    {
      goto LABEL_28;
    }

    goto LABEL_15;
  }

  if (!sub_247D203B8())
  {
    goto LABEL_27;
  }

  v10 = sub_247D203B8();
  if (!v10)
  {
    v34 = a4;
    v35 = v7;

    v11 = MEMORY[0x277D84F90];
LABEL_21:
    v36 = v35;
    v34(a1, v11, a3);

    v31 = v36;

LABEL_23:

    return;
  }

LABEL_6:
  v38 = MEMORY[0x277D84F90];
  sub_247CE24F4(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v34 = a4;
    v35 = v7;
    v11 = v38;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x24C1B8190](v12, v9);
        v14 = SecCertificateCopyData(v13);
        v15 = sub_247D1EE58();
        v17 = v16;
        swift_unknownObjectRelease();

        v19 = *(v38 + 16);
        v18 = *(v38 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_247CE24F4((v18 > 1), v19 + 1, 1);
        }

        ++v12;
        *(v38 + 16) = v19 + 1;
        v20 = v38 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v10 != v12);
    }

    else
    {
      v22 = (v9 + 32);
      do
      {
        v23 = *v22;
        v24 = SecCertificateCopyData(v23);
        v25 = sub_247D1EE58();
        v27 = v26;

        v29 = *(v38 + 16);
        v28 = *(v38 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_247CE24F4((v28 > 1), v29 + 1, 1);
        }

        *(v38 + 16) = v29 + 1;
        v30 = v38 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        ++v22;
        --v10;
      }

      while (v10);
    }

    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_247CDADAC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_247D20328();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_247C30330(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_247D20308();
    sub_247D20338();
    sub_247D20348();
    sub_247D20318();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_247CDAE98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_247D1FDC8();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

uint64_t sub_247CDAF4C()
{
  sub_247D202C8();

  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_247D1FBE8();
  v4 = v3;

  MEMORY[0x24C1B7B80](v2, v4);

  qword_27EE72CF0 = 0xD00000000000001DLL;
  *algn_27EE72CF8 = 0x8000000247D31B70;
  return result;
}

unint64_t sub_247CDB02C()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000016;
  if (!*v0)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_247CDB0A0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_247CDB0C4, 0, 0);
}

uint64_t sub_247CDB0C4()
{
  v1 = sub_247CDB3E4();
  v0[6] = v1;
  v2 = v1;
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v5;
  v6[5] = v4;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D50);
  *v7 = v0;
  v7[1] = sub_247CDB238;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x8000000247D31AC0, sub_247CDC344, v6, v8);
}

uint64_t sub_247CDB238()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_247CDB378;
  }

  else
  {

    v2 = sub_247CDB35C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247CDB378()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_247CDB3E4()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  if (!*MEMORY[0x277CDBF00])
  {
    __break(1u);
  }

  v0 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, error);
  v1 = v0;
  v2 = error[0];
  if (error[0])
  {
    type metadata accessor for CFError(0);
    sub_247CDC7E4();
    v3 = v2;
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
  }

  else if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_247D246C0;
    sub_247D1FBE8();
    v6 = v1;
    v7 = MEMORY[0x277D837D0];
    sub_247D20288();
    *(inited + 96) = v7;
    *(inited + 72) = 0xD00000000000002CLL;
    *(inited + 80) = 0x8000000247D31B40;
    sub_247D1FBE8();
    sub_247D20288();
    if (qword_27EE625B0 != -1)
    {
      swift_once();
    }

    v8 = qword_27EE72CF0;
    v9 = *algn_27EE72CF8;
    *(inited + 168) = v7;
    *(inited + 144) = v8;
    *(inited + 152) = v9;
    sub_247D1FBE8();

    sub_247D20288();
    v10 = MEMORY[0x277D83B88];
    *(inited + 240) = MEMORY[0x277D83B88];
    *(inited + 216) = 60;
    sub_247D1FBE8();
    sub_247D20288();
    *(inited + 312) = v10;
    *(inited + 288) = 262800;
    sub_247D1FBE8();
    sub_247D20288();
    type metadata accessor for SecAccessControl(0);
    *(inited + 384) = v11;
    *(inited + 360) = v6;
    sub_247D1FBE8();
    v12 = v6;
    sub_247D20288();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63458);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_247D23870;
    *(v13 + 32) = sub_247D1FBE8();
    *(v13 + 40) = v14;
    *(v13 + 48) = sub_247D1FBE8();
    *(v13 + 56) = v15;
    *(inited + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63270);
    *(inited + 432) = v13;
    v1 = sub_247CD8924(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E20);
    swift_arrayDestroy();
  }

  else
  {
    sub_247CDC728();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }

  return v1;
}

void sub_247CDB7A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v25 = a3;
  v26 = a5;
  v8 = type metadata accessor for BAAHeadersProvider();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E48);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  (*(v12 + 16))(&v25 - v14, a1, v11);
  sub_247CDC350(a2, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v15;
  v20 = v25;
  (*(v12 + 32))(v18 + v16, v19, v11);
  sub_247CDC544(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v21 = v26;
  v22 = (v18 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a4;
  v22[1] = v21;
  sub_247C30174(a4, v21);
  if (v20)
  {
    v20 = sub_247D1FAF8();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = sub_247CDC5A8;
  *(v23 + 24) = v18;
  aBlock[4] = sub_247CDC708;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247CDAE98;
  aBlock[3] = &block_descriptor_11;
  v24 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v24);
}

void sub_247CDBA94(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a3;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E48);
    sub_247D1FE58();
    return;
  }

  if (!a1)
  {
    sub_247CDC728();
    swift_allocError();
    *v15 = 3;
    goto LABEL_3;
  }

  v11 = a1;
  v12 = sub_247CDBCE0(a6, a7, v11);
  v14 = v13;
  v16 = sub_247CDBEC4(a2);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247D23870;
  strcpy((inited + 32), "X-Apple-Baa-S");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_247D1EE38();
  *(inited + 56) = v20;
  *(inited + 64) = 0x2D656C7070412D58;
  *(inited + 72) = 0xEB00000000616142;
  *(inited + 80) = sub_247D1EE38();
  *(inited + 88) = v21;
  sub_247CD8184(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63D48);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E48);
  sub_247D1FE68();
  sub_247C301C8(v16, v18);
  sub_247C301C8(v12, v14);
}

uint64_t sub_247CDBCE0(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v4 = *MEMORY[0x277CDC300];
  v5 = sub_247D1EE28();
  Signature = SecKeyCreateSignature(a3, v4, v5, error);

  if (Signature)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_247D1EE48();
    }
  }

  v8 = error[0];
  if (error[0])
  {
    type metadata accessor for CFError(0);
    sub_247CDC7E4();
    swift_allocError();
    *v9 = v8;
  }

  else
  {
    sub_247CDC728();
    swift_allocError();
    *v7 = 1;
  }

  swift_willThrow();
  sub_247C3E6E8(0, 0xF000000000000000);
  return 0;
}

id sub_247CDBEC4(uint64_t a1)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v27[0] = MEMORY[0x277D84F90];
    sub_247CE2470(0, v1, 0);
    v2 = v27[0];
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_247C30174(v5, *v4);
      v7 = sub_247D1EE38();
      v9 = v8;
      sub_247C301C8(v5, v6);
      v27[0] = v2;
      v11 = v2[2];
      v10 = v2[3];
      if (v11 >= v10 >> 1)
      {
        sub_247CE2470((v10 > 1), v11 + 1, 1);
        v2 = v27[0];
      }

      v4 += 2;
      v2[2] = v11 + 1;
      v12 = &v2[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      --v1;
    }

    while (v1);
  }

  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247D23880;
  *(inited + 32) = 0x7374726563;
  v15 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  sub_247CD8C48(inited);
  swift_setDeallocating();
  sub_247CDC77C(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63270);
  v16 = sub_247D1FAF8();

  v27[0] = 0;
  v17 = [v13 dataWithJSONObject:v16 options:0 error:v27];

  v18 = v27[0];
  if (v17)
  {
    v19 = sub_247D1EE58();
    v21 = v20;

    v22 = sub_247D1EE28();
    v27[0] = 0;
    v23 = [v22 compressedDataUsingAlgorithm:3 error:v27];

    v24 = v27[0];
    if (v23)
    {
      v17 = sub_247D1EE58();
      sub_247C301C8(v19, v21);
    }

    else
    {
      v17 = v24;
      sub_247D1ECA8();

      swift_willThrow();
      sub_247C301C8(v19, v21);
    }
  }

  else
  {
    v25 = v18;
    sub_247D1ECA8();

    swift_willThrow();
  }

  return v17;
}

uint64_t sub_247CDC1A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247CDC244;

  return sub_247CDB0A0(a1, a2);
}

uint64_t sub_247CDC244(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_247CDC350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BAAHeadersProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CDC3B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for BAAHeadersProvider() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_247D1F488();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  __swift_destroy_boxed_opaque_existential_1(v0 + v8 + v6[7]);
  sub_247C301C8(*(v0 + v10), *(v0 + v10 + 8));

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

uint64_t sub_247CDC544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BAAHeadersProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_247CDC5A8(void *a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E48) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for BAAHeadersProvider() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  sub_247CDBA94(a1, a2, a3, v3 + v8, v3 + v11, v13, v14);
}

uint64_t sub_247CDC6D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_247CDC728()
{
  result = qword_27EE63E50;
  if (!qword_27EE63E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63E50);
  }

  return result;
}

uint64_t sub_247CDC77C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_247CDC7E4()
{
  result = qword_27EE63E68;
  if (!qword_27EE63E68)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63E68);
  }

  return result;
}

unint64_t sub_247CDC854()
{
  result = qword_27EE63E78;
  if (!qword_27EE63E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63E78);
  }

  return result;
}

uint64_t sub_247CDC8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_247CDC9D8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_247CDC9D8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_247CDCAE8(uint64_t *a1, double a2)
{
  v3 = v2;
  v6 = *(v3 + 16);
  if (v6)
  {
    if ([v6 isValid])
    {
      v7 = *(v3 + 16);
      if (v7)
      {
        [v7 invalidate];
      }
    }
  }

  v8 = *a1;
  if (!*(v8 + 16) || (v9 = sub_247CCFDA8(0xD000000000000014, 0x8000000247D31C60), (v10 & 1) == 0) || ((v11 = (*(v8 + 56) + 16 * v9), v12 = *v11, v13 = v11[1], *v11 == 1702195828) ? (v14 = v13 == 0xE400000000000000) : (v14 = 0), v14 || (result = sub_247D20538(), (result & 1) != 0) || (v12 == 0x65736C6166 ? (v18 = v13 == 0xE500000000000000) : (v18 = 0), !v18 && (result = sub_247D20538(), (result & 1) == 0))))
  {
    v16 = [objc_opt_self() scheduledTimerWithTimeInterval:v3 target:sel_handleTimerEvent selector:0 userInfo:0 repeats:a2];
    v17 = *(v3 + 16);
    *(v3 + 16) = v16;

    result = *(v3 + 16);
    if (result)
    {

      return [result setTolerance_];
    }
  }

  return result;
}

uint64_t sub_247CDCD38()
{
  sub_247C3F278(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_247CDCDB4()
{
  v1 = OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider____lazy_storage___viewFinderView;
  v2 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider____lazy_storage___viewFinderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider____lazy_storage___viewFinderView);
  }

  else
  {
    v4 = sub_247CDCE14();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_247CDCE14()
{
  type metadata accessor for VideoPreviewLayerView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && ([v2 setMasksToBounds_], v1, v1 = objc_msgSend(v0, sel_layer), objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    [v3 setVideoGravity_];

    return v0;
  }

  else
  {

    result = sub_247D20398();
    __break(1u);
  }

  return result;
}

void sub_247CDCF48(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_videoDataOutput);
  v5 = MEMORY[0x277CE5EA8];
  if (v4)
  {
    v6 = [v4 connectionWithMediaType_];
    [v6 setVideoRotationAngle_];
  }

  v7 = *(a1 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_photoOutput);
  if (v7)
  {
    v8 = [v7 connectionWithMediaType_];
    [v8 setVideoRotationAngle_];
  }
}

uint64_t sub_247CDD038(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_247CDD090(uint64_t a1, char *a2)
{
  v158 = *MEMORY[0x277D85DE8];
  v4 = sub_247D1F9F8();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v146 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_247D1FA38();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowResponse(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v135 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v135 - v15;
  v149 = a1;
  sub_247CE6FAC(a1, &v135 - v15, type metadata accessor for FlowResponse);
  v17 = **(&unk_278EDD608 + sub_247CEC7E8(v16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64040);
  v18 = swift_allocObject();
  v143 = xmmword_247D23880;
  *(v18 + 16) = xmmword_247D23880;
  *(v18 + 32) = v17;
  v19 = *MEMORY[0x277CE5EA8];
  type metadata accessor for DeviceType(0);
  v150 = v17;
  v20 = v19;
  v21 = sub_247D1FDB8();

  v22 = [objc_opt_self() discoverySessionWithDeviceTypes:v21 mediaType:v20 position:1];

  v23 = [v22 devices];
  sub_247C3194C(0, &qword_27EE64048);
  v24 = sub_247D1FDC8();

  if (v24 >> 62)
  {
    goto LABEL_62;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:

    v126 = v150;
    v127 = sub_247D1F468();
    v128 = sub_247D20038();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      aBlock = v130;
      *v129 = 136446210;
      v131 = sub_247D1FBE8();
      v133 = v22;
      v134 = sub_247CB03B4(v131, v132, &aBlock);

      *(v129 + 4) = v134;
      _os_log_impl(&dword_247C1F000, v127, v128, "Requested capture device %{public}s not available.", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x24C1B9080](v130, -1, -1);
      MEMORY[0x24C1B9080](v129, -1, -1);
    }

    else
    {
    }

    return;
  }

  while (1)
  {
    v144 = v22;
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x24C1B8190](0, v24);
    }

    else
    {
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_69:
        __break(1u);
      }

      v25 = *(v24 + 32);
    }

    v26 = v25;

    v27 = *&a2[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureDevice];
    *&a2[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureDevice] = v26;
    v28 = v26;

    v29 = objc_allocWithZone(MEMORY[0x277CE5AD8]);
    aBlock = 0;
    v30 = v28;
    v31 = v29;
    v32 = v30;
    v33 = [v31 initWithDevice:v30 error:&aBlock];
    if (!v33)
    {
      v142 = v5;
      v39 = aBlock;
      v40 = sub_247D1ECA8();

      swift_willThrow();
      v22 = v32;
      goto LABEL_55;
    }

    v34 = v33;
    v140 = v11;
    v35 = aBlock;

    v36 = [objc_allocWithZone(MEMORY[0x277CE5B38]) init];
    v37 = v34;
    if (([v36 canAddInput_] & 1) == 0)
    {

      return;
    }

    [v36 beginConfiguration];
    sub_247CE6FAC(v149, v16, type metadata accessor for FlowResponse);
    v136 = v32;
    v138 = v32;
    v22 = sub_247CCD450(v16, v138);
    v38 = [v36 canSetSessionPreset_];
    v141 = v36;
    v137 = v4;
    v142 = v5;
    v139 = v37;
    if (v38)
    {
      [v36 setSessionPreset_];
    }

    else
    {
      v135 = v22;
      v41 = v22;
      v42 = sub_247D1F468();
      v43 = sub_247D20058();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock = v45;
        *v44 = 136446210;
        v151 = v41;
        type metadata accessor for Preset(0);
        v46 = v41;
        v47 = sub_247D1FC68();
        v49 = sub_247CB03B4(v47, v48, &aBlock);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_247C1F000, v42, v43, "Session preset %{public}s is not supported.", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x24C1B9080](v45, -1, -1);
        MEMORY[0x24C1B9080](v44, -1, -1);
      }

      v37 = v139;
      v22 = v135;
      v36 = v141;
    }

    [v36 addInput_];
    v50 = [objc_allocWithZone(MEMORY[0x277CE5B60]) init];
    [v50 setAlwaysDiscardsLateVideoFrames_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62E30);
    inited = swift_initStackObject();
    *(inited + 16) = v143;
    *(inited + 32) = sub_247D1FBE8();
    *(inited + 40) = v52;
    *(inited + 72) = MEMORY[0x277D84CC0];
    *(inited + 48) = 875704422;
    sub_247CD8298(inited);
    swift_setDeallocating();
    sub_247C27100(inited + 32, &unk_27EE63FF0);
    v53 = sub_247D1FAF8();

    [v50 setVideoSettings_];

    [v36 addOutput_];
    v54 = [v50 connectionWithMediaType_];
    v55 = v149;
    if (v54)
    {
      v56 = v54;
      [v54 setEnabled_];
      sub_247CE6FAC(v55, v16, type metadata accessor for FlowResponse);
      [v56 setPreferredVideoStabilizationMode_];
    }

    v57 = *&a2[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_videoDataOutput];
    *&a2[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_videoDataOutput] = v50;
    v4 = v50;

    sub_247CE6FAC(v55, v14, type metadata accessor for FlowResponse);
    v58 = v14[6];
    v5 = v142;
    v59 = v140;
    if (*(v58 + 16))
    {
      v60 = sub_247CCFDA8(0x5465727574706163, 0xEB00000000657079);
      if (v61)
      {
        v62 = (*(v58 + 56) + 16 * v60);
        v63 = *v62;
        v64 = v62[1];

        v65 = sub_247CECA84(v63, v64);
        v67 = v66;

        if ((v67 & 1) == 0)
        {
          sub_247CE705C(v14, type metadata accessor for FlowResponse);
          v55 = v149;
          v14 = v141;
          if (v65 != 1)
          {
            goto LABEL_52;
          }

          goto LABEL_22;
        }

        v55 = v149;
      }
    }

    sub_247CE705C(v14, type metadata accessor for FlowResponse);
    v14 = v141;
LABEL_22:
    *&v143 = v4;
    v68 = [objc_allocWithZone(MEMORY[0x277CE5B28]) init];
    sub_247CE6FAC(v55, v59, type metadata accessor for FlowResponse);
    v69 = *(v59 + 48);
    if (*(v69 + 16) && (v70 = sub_247CCFDA8(0xD00000000000001DLL, 0x8000000247D32010), (v71 & 1) != 0))
    {
      v72 = (*(v69 + 56) + 16 * v70);
      v73 = *v72;
      v74 = v72[1];

      v75 = sub_247CECA84(v73, v74);
      v77 = v76;

      if (v77)
      {
        sub_247CE705C(v59, type metadata accessor for FlowResponse);
        v78 = 1;
      }

      else
      {
        sub_247CE705C(v59, type metadata accessor for FlowResponse);
        v79 = 1;
        if (v75 == 2)
        {
          v79 = 2;
        }

        v78 = v75 == 3 ? 3 : v79;
      }

      v55 = v149;
      v14 = v141;
    }

    else
    {
      sub_247CE705C(v59, type metadata accessor for FlowResponse);
      v78 = 1;
    }

    [v68 setMaxPhotoQualityPrioritization_];
    if ([v68 isFastCapturePrioritizationSupported])
    {
      [v68 setFastCapturePrioritizationEnabled_];
    }

    if ([v68 isVirtualDeviceConstituentPhotoDeliverySupported])
    {
      [v68 setVirtualDeviceConstituentPhotoDeliveryEnabled_];
    }

    [v14 addOutput_];
    v80 = *&a2[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_photoOutput];
    *&a2[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_photoOutput] = v68;
    v11 = v68;

    v81 = *(v55 + 48);
    if (!*(v81 + 16))
    {
      break;
    }

    v82 = sub_247CCFDA8(0xD000000000000010, 0x8000000247D32030);
    if (v83)
    {
      v84 = (*(v81 + 56) + 16 * v82);
      v85 = *v84;
      v86 = v84[1];

      v87 = sub_247CECA84(v85, v86);
      v89 = v88;

      if (v89)
      {
        v55 = v149;
        v14 = v141;
      }

      else
      {
        v55 = v149;
        v14 = v141;
        if (v87 < 1)
        {

          v4 = v143;
          goto LABEL_52;
        }
      }
    }

    if (!*(v81 + 16))
    {
      break;
    }

    v90 = sub_247CCFDA8(0xD000000000000010, 0x8000000247D32030);
    if ((v91 & 1) == 0)
    {
      break;
    }

    v92 = (*(v81 + 56) + 16 * v90);
    v93 = *v92;
    v20 = v92[1];

    v24 = sub_247CECA84(v93, v20);
    v16 = v94;

    if (v16)
    {
      LODWORD(v24) = 1111970369;
      goto LABEL_50;
    }

    v4 = v143;
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_69;
    }

    if (!HIDWORD(v24))
    {
      goto LABEL_51;
    }

    __break(1u);
LABEL_62:
    if (!sub_247D203B8())
    {
      goto LABEL_63;
    }
  }

  LODWORD(v24) = 1111970369;

LABEL_50:
  v4 = v143;
LABEL_51:
  *&a2[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_pixelFormatType] = v24;
LABEL_52:
  [v4 setSampleBufferDelegate:a2 queue:*&a2[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_bufferQueue]];
  [v14 commitConfiguration];
  aBlock = 0;
  v95 = v138;
  if ([v138 lockForConfiguration_])
  {
    v96 = aBlock;
    sub_247CE4A30(v95, v55);
    [v95 unlockForConfiguration];
    aBlock = v95;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = a2;
    v97 = a2;
    v98 = sub_247D1ED68();

    v99 = *&v97[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureDeviceSystemPressureObservation];
    *&v97[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureDeviceSystemPressureObservation] = v98;

    [v14 startRunning];
    v100 = *&v97[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureSession];
    *&v97[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureSession] = v14;
    v101 = v14;

    sub_247C3194C(0, &qword_27EE64000);
    v149 = sub_247D200B8();
    v102 = swift_allocObject();
    v103 = v150;
    v102[2] = v150;
    v102[3] = v97;
    v102[4] = v101;
    v156 = sub_247CE7154;
    v157 = v102;
    aBlock = MEMORY[0x277D85DD0];
    v153 = 1107296256;
    v154 = sub_247CDD038;
    v155 = &block_descriptor_122;
    v104 = _Block_copy(&aBlock);
    *&v143 = v103;
    v105 = v97;
    v150 = v101;
    v106 = v145;
    sub_247D1FA08();
    v151 = MEMORY[0x277D84F90];
    sub_247CE6F64(&qword_27EE632C8, MEMORY[0x277D85198]);
    v107 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632D0);
    sub_247C2A7FC(&qword_27EE632D8, &qword_27EE632D0);
    v108 = v146;
    v109 = v137;
    sub_247D20248();
    v110 = v149;
    MEMORY[0x24C1B7F80](0, v106, v108, v104);
    _Block_release(v104);

    (*(v5 + 8))(v108, v109);
    (*(v147 + 8))(v106, v148);
    goto LABEL_58;
  }

  v111 = aBlock;
  v40 = sub_247D1ECA8();

  swift_willThrow();
  v4 = v137;
  v32 = v136;
LABEL_55:
  v112 = v32;

  v113 = v40;
  v114 = sub_247D1F468();
  v115 = sub_247D20038();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v116 = 138412290;
    v118 = v40;
    v119 = _swift_stdlib_bridgeErrorToNSError();
    *(v116 + 4) = v119;
    *v117 = v119;
    _os_log_impl(&dword_247C1F000, v114, v115, "Failed to initialize camera: %@", v116, 0xCu);
    sub_247C27100(v117, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v117, -1, -1);
    MEMORY[0x24C1B9080](v116, -1, -1);
  }

  v120 = swift_allocObject();
  *(v120 + 16) = a2;
  *(v120 + 24) = v40;
  v156 = sub_247CE7054;
  v157 = v120;
  aBlock = MEMORY[0x277D85DD0];
  v153 = 1107296256;
  v154 = sub_247CDD038;
  v155 = &block_descriptor_113;
  v121 = _Block_copy(&aBlock);
  v122 = a2;
  v123 = v40;
  v124 = v145;
  sub_247D1FA08();
  v151 = MEMORY[0x277D84F90];
  sub_247CE6F64(&qword_27EE632C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632D0);
  sub_247C2A7FC(&qword_27EE632D8, &qword_27EE632D0);
  v125 = v146;
  sub_247D20248();
  MEMORY[0x24C1B7F80](0, v124, v125, v121);

  _Block_release(v121);
  (*(v142 + 8))(v125, v4);
  (*(v147 + 8))(v124, v148);
LABEL_58:
}

uint64_t sub_247CDE454(uint64_t a1, uint64_t a2, char *a3)
{
  v22[0] = sub_247D1F9F8();
  v25 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0]);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247D1FA38();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64050);
  sub_247D1ED58();
  if (aBlock[0])
  {
    v9 = aBlock[0];
    v10 = [v9 level];
    v11 = [v9 factors];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  sub_247D1ED48();
  if (aBlock[0])
  {
    v12 = aBlock[0];
    v13 = [v12 &selRef_environmentURL];
    v14 = [v12 0x278EDEDE8];
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v22[1] = *&a3[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_bufferQueue];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = v13;
  v15[6] = v14;
  aBlock[4] = sub_247CE7308;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247CDD038;
  aBlock[3] = &block_descriptor_150;
  v16 = _Block_copy(aBlock);
  v17 = v13;
  v18 = a3;
  v19 = v10;
  sub_247D1FA08();
  v26 = MEMORY[0x277D84F90];
  sub_247CE6F64(&qword_27EE632C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632D0);
  sub_247C2A7FC(&qword_27EE632D8, &qword_27EE632D0);
  v20 = v22[0];
  sub_247D20248();
  MEMORY[0x24C1B7F80](0, v8, v5, v16);
  _Block_release(v16);

  (*(v25 + 8))(v5, v20);
  (*(v23 + 8))(v8, v24);
}

uint64_t sub_247CDE824(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if (!a2)
    {
      a3 = 0;
    }

    if (!a4)
    {
      a5 = 0;
    }

    v11 = a2;
    v12 = a4;
    sub_247CE2F9C(a2, a3, a4, a5, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_247CDE8EC(void *a1, char *a2, uint64_t a3)
{
  v61 = a3;
  v66 = a2;
  v4 = sub_247D1F9F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_247D1FA38();
  v62 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FEA8();
  v11 = sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64040);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_247D23880;
  *(v12 + 32) = a1;
  v13 = *MEMORY[0x277CE5EA8];
  type metadata accessor for DeviceType(0);
  v14 = a1;
  v15 = v13;
  v16 = sub_247D1FDB8();

  v67 = [objc_opt_self() discoverySessionWithDeviceTypes:v16 mediaType:v15 position:1];

  v17 = [v67 devices];
  sub_247C3194C(0, &qword_27EE64048);
  v18 = sub_247D1FDC8();

  if (v18 >> 62)
  {
    if (sub_247D203B8())
    {
LABEL_5:
      v60 = v11;
      v65 = v5;
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C1B8190](0, v18);
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v19 = *(v18 + 32);
      }

      v20 = v19;

      v21 = v20;
      v22 = v66;
      v23 = sub_247CDCDB4();
      v24 = [v23 layer];

      v25 = [objc_allocWithZone(MEMORY[0x277CE5AE0]) initWithDevice:v21 previewLayer:v24];
      v26 = OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider____lazy_storage___viewFinderView;
      v27 = *&v22[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider____lazy_storage___viewFinderView];
      v17 = [v27 layer];
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v57 = v26;
        v58 = v7;
        v59 = v21;
        v64 = v8;

        v30 = [v29 connection];
        if (v30)
        {
          [v25 videoRotationAngleForHorizonLevelPreview];
          [v30 setVideoRotationAngle_];
        }

        [v25 videoRotationAngleForHorizonLevelCapture];
        v32 = v31;
        v63 = *&v66[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_bufferQueue];
        v33 = v66;
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        v35 = v33;
        *(v34 + 24) = v32;
        v73 = sub_247CE7198;
        v74 = v34;
        aBlock = MEMORY[0x277D85DD0];
        v70 = 1107296256;
        v56[4] = &v71;
        v71 = sub_247CDD038;
        v72 = &block_descriptor_128;
        v36 = _Block_copy(&aBlock);
        v37 = v35;
        v38 = v10;
        sub_247D1FA08();
        v68 = MEMORY[0x277D84F90];
        v39 = v25;
        v40 = sub_247CE6F64(&qword_27EE632C8, MEMORY[0x277D85198]);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632D0);
        v42 = sub_247C2A7FC(&qword_27EE632D8, &qword_27EE632D0);
        v43 = v58;
        v56[2] = v41;
        v44 = v38;
        v56[1] = v42;
        v56[3] = v40;
        sub_247D20248();
        MEMORY[0x24C1B7F80](0, v38, v43, v36);
        _Block_release(v36);
        v45 = *(v65 + 8);
        v65 += 8;
        v45(v43, v4);
        v62 = *(v62 + 8);
        (v62)(v44, v64);

        v46 = *&v37[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_coordinator];
        v47 = v37;
        *&v37[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_coordinator] = v39;
        v48 = v39;

        v49 = *&v66[v57];
        v50 = [v49 layer];
        objc_opt_self();
        v51 = swift_dynamicCastObjCClass();
        if (v51)
        {
          [v51 setSession_];

          v52 = swift_allocObject();
          *(v52 + 16) = v47;
          v73 = sub_247CE71A4;
          v74 = v52;
          aBlock = MEMORY[0x277D85DD0];
          v70 = 1107296256;
          v71 = sub_247CDD038;
          v72 = &block_descriptor_134;
          v53 = _Block_copy(&aBlock);
          v54 = v47;
          sub_247D1FA08();
          v68 = MEMORY[0x277D84F90];
          sub_247D20248();
          MEMORY[0x24C1B7F80](0, v44, v43, v53);

          _Block_release(v53);
          v45(v43, v4);
          (v62)(v44, v64);

          return;
        }

        goto LABEL_21;
      }

LABEL_19:

LABEL_21:
      sub_247D20398();
      __break(1u);
      return;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v55 = v67;
}

uint64_t sub_247CDF140(char *a1, double a2)
{
  v4 = sub_247D1F9F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247D1FA38();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &a1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_videoRotationAngleForHorizonLevelCapture];
  *v11 = a2;
  *(v11 + 8) = 0;
  v16[1] = *&a1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_sessionQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_247CE72B4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247CDD038;
  aBlock[3] = &block_descriptor_144;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  sub_247D1FA08();
  v18 = MEMORY[0x277D84F90];
  sub_247CE6F64(&qword_27EE632C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632D0);
  sub_247C2A7FC(&qword_27EE632D8, &qword_27EE632D0);
  sub_247D20248();
  MEMORY[0x24C1B7F80](0, v10, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17);
}

uint64_t sub_247CDF438()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_247D1FEC8();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_247D1FEA8();
    swift_unknownObjectRetain();
    v6 = sub_247D1FE98();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v4;
    sub_247CD082C(0, 0, v2, &unk_247D27DE0, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_247CDF57C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_247D1FEC8();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_247D1FEA8();
    swift_unknownObjectRetain();
    v9 = a2;
    v10 = sub_247D1FE98();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v7;
    v11[5] = a2;
    sub_247CD0B2C(0, 0, v5, &unk_247D27DF8, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_247CDF6EC()
{
  v19[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureDevice];
    if (!v2)
    {

      return;
    }

    v3 = v2;
    if (([v3 isFocusModeSupported_] & 1) == 0)
    {
      v7 = sub_247D1F468();
      v8 = sub_247D20058();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_247C1F000, v7, v8, "Auto focus lock not supported", v9, 2u);
        MEMORY[0x24C1B9080](v9, -1, -1);
      }

      goto LABEL_10;
    }

    v4 = [v3 focusMode];
    v5 = &v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_focusMode];
    *v5 = v4;
    v5[8] = 0;
    v19[0] = 0;
    if ([v3 lockForConfiguration_])
    {
      v6 = v19[0];
      [v3 setFocusMode_];
      [v3 unlockForConfiguration];

LABEL_10:
      return;
    }

    v10 = v19[0];
    v11 = sub_247D1ECA8();

    swift_willThrow();
    v12 = v11;
    v13 = sub_247D1F468();
    v14 = sub_247D20038();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v11;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_247C1F000, v13, v14, "Failed to lock capture device for focus mode update with error: %@", v15, 0xCu);
      sub_247C27100(v16, &qword_27EE62EE0);
      MEMORY[0x24C1B9080](v16, -1, -1);
      MEMORY[0x24C1B9080](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_247CDF9F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_247D1F9F8();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247D1FA38();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_sessionQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247CDD038;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_247D1FA08();
  v17 = MEMORY[0x277D84F90];
  sub_247CE6F64(&qword_27EE632C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632D0);
  sub_247C2A7FC(&qword_27EE632D8, &qword_27EE632D0);
  sub_247D20248();
  MEMORY[0x24C1B7F80](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

void sub_247CDFCD0()
{
  v18[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureDevice];
    if (!v1 || (Strong[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_focusMode + 8] & 1) != 0)
    {

      return;
    }

    v2 = Strong;
    v3 = *&Strong[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_focusMode];
    v4 = v1;
    if (![v4 isFocusModeSupported_])
    {
      v6 = sub_247D1F468();
      v7 = sub_247D20058();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134349056;
        *(v8 + 4) = v3;
        _os_log_impl(&dword_247C1F000, v6, v7, "Failed to reset auto focus mode. Autofocus mode not supported %{public}ld.", v8, 0xCu);
        MEMORY[0x24C1B9080](v8, -1, -1);
      }

      goto LABEL_11;
    }

    v18[0] = 0;
    if ([v4 lockForConfiguration_])
    {
      v5 = v18[0];
      [v4 setFocusMode_];
      [v4 unlockForConfiguration];

LABEL_11:
      return;
    }

    v9 = v18[0];
    v10 = sub_247D1ECA8();

    swift_willThrow();
    v11 = v10;
    v12 = sub_247D1F468();
    v13 = sub_247D20038();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_247C1F000, v12, v13, "Failed to lock capture device for restoring the focus mode with error: %@", v14, 0xCu);
      sub_247C27100(v15, &qword_27EE62EE0);
      MEMORY[0x24C1B9080](v15, -1, -1);
      MEMORY[0x24C1B9080](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_247CDFFB4(uint64_t a1, float a2)
{
  v3 = v2;
  v6 = sub_247D1F9F8();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_247D1FA38();
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v20 = *(v3 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_sessionQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_247CE6FAC(a1, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration);
  v16 = (*(v13 + 80) + 28) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = a2;
  sub_247C788CC(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_247CE64C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247CDD038;
  aBlock[3] = &block_descriptor_57;
  v18 = _Block_copy(aBlock);

  sub_247D1FA08();
  v23 = MEMORY[0x277D84F90];
  sub_247CE6F64(&qword_27EE632C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632D0);
  sub_247C2A7FC(&qword_27EE632D8, &qword_27EE632D0);
  sub_247D20248();
  MEMORY[0x24C1B7F80](0, v11, v8, v18);
  _Block_release(v18);
  (*(v22 + 8))(v8, v6);
  (*(v9 + 8))(v11, v21);
}

void sub_247CE0380(float a1, uint64_t a2, uint64_t a3)
{
  v64[5] = *MEMORY[0x277D85DE8];
  v5 = sub_247D20508();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_247D1EFC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63FA0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  v19 = *(&Strong->isa + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureDevice);
  if (!v19)
  {

    return;
  }

  v62 = a3;
  v63 = v19;
  v20 = [v63 minimumFocusDistance];
  v21 = v20;
  sub_247D1EF88();
  sub_247CE6530();
  sub_247D1ED08();
  (*(v6 + 104))(v8, *MEMORY[0x277D84680], v5);
  v22 = v16;
  MEMORY[0x24C1B6BD0](v8, 0x3FB999999999999ALL, 0, v10);
  (*(v6 + 8))(v8, v5);
  v24 = v11 + 8;
  v23 = *(v11 + 8);
  v23(v14, v10);
  if (v20 == -1 || (*v64 = a1, v25 = v16, v26 = sub_247D1ECF8(), LODWORD(v64[0]) = 0, v28 = sub_247CE2EA4(v26, v27), , !v28))
  {
    v43 = sub_247D1F468();
    v44 = sub_247D20058();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      *(v45 + 4) = v21;
      *(v45 + 12) = 2048;
      *(v45 + 14) = a1;
      _os_log_impl(&dword_247C1F000, v43, v44, "Skipping zoom factor update %f – %f", v45, 0x16u);
      MEMORY[0x24C1B9080](v45, -1, -1);
      v46 = v63;
    }

    else
    {
      v46 = v18;
      v18 = v43;
      v43 = v63;
    }

    goto LABEL_18;
  }

  v29 = *v64;
  sub_247C580D8(0xD000000000000023, 0x8000000247D31EB0);
  v31 = v30 / v29;
  v32 = v63;
  v33 = [v63 activeFormat];
  [v33 videoFieldOfView];
  v35 = v34;

  v36 = v31 / tanf(((v35 * 0.5) * 3.1416) / 180.0);
  v37 = (v21 / v36);
  if (v36 >= v21 || ([v32 videoZoomFactor], vabdd_f64(v37, v38) <= 0.01))
  {
    v47 = v32;
    v43 = sub_247D1F468();
    v48 = sub_247D20058();

    if (os_log_type_enabled(v43, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134218752;
      *(v49 + 4) = v37;
      *(v49 + 12) = 2048;
      *(v49 + 14) = v36;
      *(v49 + 22) = 2048;
      *(v49 + 24) = v21;
      *(v49 + 32) = 2048;
      [v47 videoZoomFactor];
      *(v49 + 34) = v50;
      _os_log_impl(&dword_247C1F000, v43, v48, "Skipping zoom factor update %f – %f – %f – %f", v49, 0x2Au);
      MEMORY[0x24C1B9080](v49, -1, -1);
      v46 = v47;
    }

    else
    {
      v46 = v18;
      v18 = v43;
      v43 = v47;
    }

LABEL_18:

    v23(v22, v10);
    return;
  }

  v62 = v24;
  v39 = sub_247D1F468();
  v40 = sub_247D20058();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = v37;
    _os_log_impl(&dword_247C1F000, v39, v40, "Updating zoom factor to %f", v41, 0xCu);
    MEMORY[0x24C1B9080](v41, -1, -1);
  }

  v64[0] = 0;
  if ([v32 lockForConfiguration:v64])
  {
    v42 = v64[0];
    [v32 setVideoZoomFactor:(v21 / v36)];
    [v32 unlockForConfiguration];
  }

  else
  {
    v51 = v64[0];
    v52 = sub_247D1ECA8();

    swift_willThrow();
    v53 = v52;
    v54 = sub_247D1F468();
    v55 = sub_247D20038();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v32;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = v52;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_247C1F000, v54, v55, "Failed to lock to update zoom factor: %@", v57, 0xCu);
      sub_247C27100(v58, &qword_27EE62EE0);
      v61 = v58;
      v25 = v22;
      MEMORY[0x24C1B9080](v61, -1, -1);
      MEMORY[0x24C1B9080](v57, -1, -1);

      v18 = v56;
    }

    else
    {

      v18 = v54;
    }
  }

  v23(v25, v10);
}

void sub_247CE0B94(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureSession);
    if (v5)
    {
      v6 = v5;

      [v6 *a2];
      v4 = v6;
    }
  }
}

void sub_247CE0C1C()
{
  v1 = sub_247D1FA48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_bufferQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_247D1FA58();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_photoCaptureStartTime);
    v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
    v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v7 + v9));
    v10 = sub_247D1EF48();
    (*(*(v10 - 8) + 8))(v7 + v8, v10);
    sub_247D1EF18();
    os_unfair_lock_unlock((v7 + v9));

    v11 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureMode);
    os_unfair_lock_lock((v11 + 20));
    LOBYTE(v8) = *(v11 + 16);
    os_unfair_lock_unlock((v11 + 20));
    if (v8)
    {
      v12 = sub_247D1F468();
      v13 = sub_247D20028();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_247C1F000, v12, v13, "Already in photo capture mode. Discarding new photo capture request.", v14, 2u);
        MEMORY[0x24C1B9080](v14, -1, -1);
      }
    }

    else
    {
      os_unfair_lock_lock((v11 + 20));
      *(v11 + 16) = 1;
      os_unfair_lock_unlock((v11 + 20));
      sub_247CE0E98();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_247CE0E98()
{
  v1 = sub_247D1F9F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247D1FA38();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_sessionQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_247CE6F5C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247CDD038;
  aBlock[3] = &block_descriptor_107_0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_247D1FA08();
  v14 = MEMORY[0x277D84F90];
  sub_247CE6F64(&qword_27EE632C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632D0);
  sub_247C2A7FC(&qword_27EE632D8, &qword_27EE632D0);
  sub_247D20248();
  MEMORY[0x24C1B7F80](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void sub_247CE1168(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_photoOutput);
  if (v2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_pixelFormatType);
    v4 = v2;
    v5 = sub_247D200E8();
    v6 = *(v5 + 16);
    v7 = 32;
    do
    {
      if (!v6)
      {

        goto LABEL_11;
      }

      v8 = *(v5 + v7);
      v7 += 4;
      --v6;
    }

    while (v8 != v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_247D23880;
    *(inited + 32) = sub_247D1FBE8();
    *(inited + 40) = v10;
    *(inited + 72) = MEMORY[0x277D84CC0];
    *(inited + 48) = v3;
    sub_247CD8298(inited);
    swift_setDeallocating();
    sub_247C27100(inited + 32, &unk_27EE63FF0);
    v11 = sub_247D1FAF8();

    v12 = [objc_opt_self() photoSettingsWithFormat_];

    if ([v4 isShutterSoundSuppressionSupported])
    {
      [v12 setShutterSoundSuppressionEnabled_];
    }

    v13 = sub_247D1F468();
    v14 = sub_247D20058();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240192;
      *(v15 + 4) = v3;
      _os_log_impl(&dword_247C1F000, v13, v14, "Attempting image capture: %{public}u", v15, 8u);
      MEMORY[0x24C1B9080](v15, -1, -1);
    }

    [v4 capturePhotoWithSettings:v12 delegate:a1];
  }

  else
  {
LABEL_11:
    oslog = sub_247D1F468();
    v16 = sub_247D20058();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_247C1F000, oslog, v16, "Failed to capture image. Pixel format 32BGRA not available", v17, 2u);
      MEMORY[0x24C1B9080](v17, -1, -1);
    }
  }
}

id sub_247CE1458()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_247D1EF48();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_247D200A8();
  v5 = *(v4 - 8);
  v31 = v4;
  v32 = v5;
  MEMORY[0x28223BE20](v4);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247D20098();
  MEMORY[0x28223BE20](v7);
  v8 = sub_247D1FA38();
  MEMORY[0x28223BE20](v8 - 8);
  sub_247D1F478();
  *&v0[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_coordinator] = 0;
  *&v0[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider____lazy_storage___viewFinderView] = 0;
  v20 = OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_sessionQueue;
  sub_247C3194C(0, &qword_27EE64000);
  sub_247D1FA28();
  v34 = MEMORY[0x277D84F90];
  v26 = sub_247CE6F64(&qword_27EE64008, MEMORY[0x277D85230]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64010);
  v24 = sub_247C2A7FC(&qword_27EE64018, &qword_27EE64010);
  sub_247D20248();
  v22 = *MEMORY[0x277D85260];
  v9 = *(v32 + 104);
  v32 += 104;
  v23 = v9;
  v10 = v21;
  v9(v21);
  *&v0[v20] = sub_247D200D8();
  *&v0[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureSession] = 0;
  v11 = OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureMode;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64020);
  v12 = swift_allocObject();
  *(v12 + 20) = 0;
  *(v12 + 16) = 0;
  *&v1[v11] = v12;
  *&v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureDeviceSystemPressureObservation] = 0;
  *&v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureDevice] = 0;
  v13 = OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_photoCaptureStartTime;
  v14 = v27;
  sub_247D1EF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64028);
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v28 + 32))(v15 + *(*v15 + *MEMORY[0x277D841D0] + 16), v14, v29);
  *&v1[v13] = v15;
  *&v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_pixelFormatType] = 1111970369;
  *&v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_videoDataOutput] = 0;
  *&v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_photoOutput] = 0;
  v16 = &v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_focusMode];
  *v16 = 0;
  v16[8] = 1;
  v17 = OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_bufferQueue;
  sub_247D1FA18();
  v34 = MEMORY[0x277D84F90];
  sub_247D20248();
  v23(v10, v22, v31);
  *&v1[v17] = sub_247D200D8();
  v18 = &v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_videoRotationAngleForHorizonLevelCapture];
  *v18 = 0;
  v18[8] = 1;
  v33.receiver = v1;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t type metadata accessor for AVCameraSessionProvider()
{
  result = qword_27EE63F08;
  if (!qword_27EE63F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247CE1BC4()
{
  result = sub_247D1F488();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_247CE1CA8()
{
  v0 = sub_247D1FA78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D1FFD8();
  v4 = sub_247D1FA68();
  (*(v1 + 8))(v3, v0);
  if (!*(v4 + 16))
  {
    goto LABEL_9;
  }

  v5 = sub_247CCFDA8(0xD000000000000012, 0x8000000247D31F50);
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_247C30330(*(v4 + 56) + 32 * v5, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return -999.0;
  }

  v7 = v12;
  if (v12 == 0.0)
  {
    return -999.0;
  }

  if (*(*&v12 + 16) && (v8 = sub_247CCFDA8(0x6C6576654C78754CLL, 0xE800000000000000), (v9 & 1) != 0))
  {
    sub_247C30330(*(*&v7 + 56) + 32 * v8, v13);

    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  else
  {
LABEL_9:
  }

  return -999.0;
}

double sub_247CE1F00()
{
  v1 = [v0 metadata];
  v2 = sub_247D1FB18();

  v3 = sub_247D1FBE8();
  if (!*(v2 + 16))
  {

    goto LABEL_10;
  }

  v5 = sub_247CCFDA8(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_247C30330(*(v2 + 56) + 32 * v5, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return -999.0;
  }

  if (!*(*&v11 + 16) || (v8 = sub_247CCFDA8(13365, 0xE200000000000000), (v9 & 1) == 0))
  {
LABEL_10:

    return -999.0;
  }

  sub_247C30330(*(*&v11 + 56) + 32 * v8, v12);

  if (swift_dynamicCast())
  {
    return v11;
  }

  return -999.0;
}

unint64_t sub_247CE2114()
{
  result = qword_27EE63F78;
  if (!qword_27EE63F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63F78);
  }

  return result;
}

uint64_t sub_247CE2168()
{
  MEMORY[0x24C1B9150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247CE2200@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_247CE2230(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_247CE2278(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_247CE22C0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

char *sub_247CE2324(char *a1, int64_t a2, char a3)
{
  result = sub_247CE2514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_247CE2344(char *a1, int64_t a2, char a3)
{
  result = sub_247CE2618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_247CE2364(void *a1, int64_t a2, char a3)
{
  result = sub_247CE2724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_247CE2384(size_t a1, int64_t a2, char a3)
{
  result = sub_247CE2BBC(a1, a2, a3, *v3, &qword_27EE63FD0, &unk_247D27CE8, type metadata accessor for FileUploadToken);
  *v3 = result;
  return result;
}

size_t sub_247CE23C8(size_t a1, int64_t a2, char a3)
{
  result = sub_247CE2BBC(a1, a2, a3, *v3, &qword_27EE63FD8, &unk_247D27CF0, type metadata accessor for FlowResponse.Step);
  *v3 = result;
  return result;
}

size_t sub_247CE240C(size_t a1, int64_t a2, char a3)
{
  result = sub_247CE2BBC(a1, a2, a3, *v3, &qword_27EE63FB0, &unk_247D27CC8, type metadata accessor for FlowResponse.Step.CosmeticCapture);
  *v3 = result;
  return result;
}

char *sub_247CE2450(char *a1, int64_t a2, char a3)
{
  result = sub_247CE2858(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_247CE2470(char *a1, int64_t a2, char a3)
{
  result = sub_247CE2968(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_247CE2490(void *a1, int64_t a2, char a3)
{
  result = sub_247CE2A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_247CE24B0(size_t a1, int64_t a2, char a3)
{
  result = sub_247CE2BBC(a1, a2, a3, *v3, &qword_27EE63FC8, &unk_247D27CE0, type metadata accessor for FileStatusRequest.FileInfo);
  *v3 = result;
  return result;
}

char *sub_247CE24F4(char *a1, int64_t a2, char a3)
{
  result = sub_247CE2D98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_247CE2514(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE64060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_247CE2618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_247CE2724(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64038);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247CE2858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_247CE2968(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_247CE2A74(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63FB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63FC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_247CE2BBC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_247CE2D98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

BOOL sub_247CE2EA4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_247D202B8();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_247CE2F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = 0xEB00000000656C62;
  v11 = 0x616C696176616E55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v25 - v13;
  if (!v12)
  {
    a2 = -2;
    v15 = 0x616C696176616E55;
    v17 = 0xEB00000000656C62;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    a4 = -2;
    goto LABEL_6;
  }

  v15 = sub_247D1FBE8();
  v17 = v16;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_247D1FBE8();
  v10 = v18;
LABEL_6:
  v19 = sub_247D1FEC8();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  sub_247D1FEA8();
  v20 = a5;
  v21 = sub_247D1FE98();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  v22[5] = v11;
  v22[6] = v10;
  v22[7] = a4;
  v22[8] = v15;
  v22[9] = v17;
  v22[10] = a2;
  sub_247CD082C(0, 0, v14, &unk_247D27DF0, v22);
}

uint64_t sub_247CE3158(void *a1, __CVBuffer *a2, unint64_t a3, uint64_t a4, int a5, void *a6, double a7)
{
  v126 = a5;
  v125 = *&a4;
  v12 = type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v117 - v16;
  v18 = type metadata accessor for AVCameraSessionProvider();
  v135 = &off_281B55EC0;
  v134 = v18;
  v133[0] = a1;
  v19 = a1;
  v124 = a2;
  v20 = sub_247C5EAC8(a2);
  v21 = sub_247D1FEC8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v127 = v22 + 56;
  v128 = v21;
  v130 = v23;
  (v23)(v17, 1, 1);
  v24 = sub_247D1FEA8();
  v25 = a6;
  v129 = v24;
  v26 = sub_247D1FE98();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v25;
  v27[5] = v20;
  sub_247CD082C(0, 0, v17, &unk_247D27D00, v27);

  v29 = *&v25[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties];
  v30 = v29 + *(*v29 + *MEMORY[0x277D841D0] + 16);
  v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v29 + v31));
  v122 = v12[13];
  v32 = *(v30 + v122);
  os_unfair_lock_unlock((v29 + v31));
  if (v32 != 3)
  {
    v121 = v30;
    v123 = v17;
    v33 = *&v25[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor];
    os_unfair_lock_lock((v33 + 24));
    v34 = *(v33 + 16);

    os_unfair_lock_unlock((v33 + 24));
    if (v32 == 1)
    {
LABEL_5:
      v35 = v123;
      v130(v123, 1, 1, v128);
      v36 = v25;
      v37 = sub_247D1FE98();
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = MEMORY[0x277D85700];
      v38[4] = v36;
      sub_247CD082C(0, 0, v35, &unk_247D27D50, v38);

      return __swift_destroy_boxed_opaque_existential_1(v133);
    }

    v120 = v34;
    os_unfair_lock_lock((v29 + v31));
    sub_247CE6FAC(v121, v14, type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
    os_unfair_lock_unlock((v29 + v31));
    if (v14[v12[6]])
    {
      sub_247CE705C(v14, type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
      goto LABEL_5;
    }

    v39 = &v14[v12[9]];
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    v43 = v39[3];
    v44 = &v14[v12[8]];
    v45 = a3 | ((HIDWORD(a3) & 1) << 32);
    v46 = v14[v12[13]];
    sub_247CEEF00(v14, *&v125, v126 & 1, v124, &v14[v12[7]], v45, *&v14[v12[11]], v46, v136, a7, v40, v41, v42, v43, *v44, v44[1], v44[2], v44[3], &v14[v12[12]]);
    if (v46 == 3)
    {
      v47 = 0xED00006572757470;
    }

    else
    {
      v47 = 0xEC0000006D616572;
    }

    v48 = OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_log;

    sub_247CE5E18(v136, v131);
    v117 = v48;
    v49 = sub_247D1F468();
    v50 = sub_247D20028();

    sub_247CE5E74(v136);
    v118 = v50;
    v119 = v49;
    if (os_log_type_enabled(v49, v50))
    {
      if (v46 == 3)
      {
        v51 = 0x6163206F746F6870;
      }

      else
      {
        v51 = 0x7473206F65646976;
      }

      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v157[0] = v53;
      *v52 = 136315394;
      v54 = sub_247CB03B4(v51, v47, v157);

      *(v52 + 4) = v54;
      *(v52 + 12) = 2080;
      v131[0] = v136[0];
      v131[1] = v136[1];
      v132 = v136[2];
      v55 = sub_247D1FC68();
      v57 = sub_247CB03B4(v55, v56, v157);

      *(v52 + 14) = v57;
      v58 = v119;
      _os_log_impl(&dword_247C1F000, v119, v118, "Crop validation result for %s: %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1B9080](v53, -1, -1);
      MEMORY[0x24C1B9080](v52, -1, -1);
    }

    else
    {
    }

    v59 = v123;
    sub_247CE705C(v14, type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
    memcpy(v157, &v136[2] + 8, 0x149uLL);
    v130(v59, 1, 1, v128);
    v60 = v25;
    v61 = sub_247D1FE98();
    v62 = swift_allocObject();
    v62[2] = v61;
    v62[3] = MEMORY[0x277D85700];
    v62[4] = v60;
    v119 = v60;
    memcpy(v62 + 5, v157, 0x149uLL);
    sub_247CD082C(0, 0, v59, &unk_247D27D08, v62);

    v63 = v136[0];
    v64 = v136[2];
    v65 = LOBYTE(v136[2]) >> 6;
    if (v65 > 1)
    {
      if (v65 == 2)
      {
        v78 = MEMORY[0x277D85700];
        v82 = v128;
        v92 = v130;
        v76 = v119;
        if ((v136[0] & 1) == 0)
        {
LABEL_35:
          v92(v59, 1, 1, v82);
          goto LABEL_36;
        }

        v83 = v130;
        v130(v59, 1, 1, v128);
        v93 = v76;
        v94 = sub_247D1FE98();
        v95 = swift_allocObject();
        v95[2] = v94;
        v95[3] = v78;
        v95[4] = v93;
        v96 = &unk_247D27D40;
      }

      else
      {
        v82 = v128;
        v83 = v130;
        v130(v59, 1, 1, v128);
        v76 = v119;
        v103 = v119;
        v104 = sub_247D1FE98();
        v95 = swift_allocObject();
        v95[2] = v104;
        v78 = MEMORY[0x277D85700];
        v95[3] = MEMORY[0x277D85700];
        v95[4] = v103;
        v96 = &unk_247D27D48;
      }
    }

    else
    {
      if (v65)
      {
        v97 = v59;
        v98 = v128;
        v130(v97, 1, 1, v128);
        v76 = v119;
        v99 = v119;
        v100 = sub_247D1FE98();
        v101 = swift_allocObject();
        *(v101 + 16) = v100;
        v78 = MEMORY[0x277D85700];
        *(v101 + 24) = MEMORY[0x277D85700];
        *(v101 + 32) = v63;
        *(v101 + 40) = v99;
        memcpy((v101 + 48), v157, 0x149uLL);
        v102 = v98;
        v59 = v123;
        sub_247CD082C(0, 0, v123, &unk_247D27D10, v101);

        v130(v59, 1, 1, v102);
LABEL_36:
        v107 = v76;
        sub_247CE5E18(v136, v131);
        v108 = sub_247D1FE98();
        v109 = swift_allocObject();
        *(v109 + 16) = v108;
        *(v109 + 24) = v78;
        *(v109 + 32) = v107;
        memcpy((v109 + 40), v136, 0x269uLL);
        *(v109 + 664) = v125;
        *(v109 + 672) = v126 & 1;
        sub_247CD082C(0, 0, v59, &unk_247D27D18, v109);

        sub_247CE5E74(v136);
        return __swift_destroy_boxed_opaque_existential_1(v133);
      }

      v66 = *(v136 + 1);
      v67 = v136[1];
      *&v68 = (*(v136 + 1) << 8) | ((*(v136 + 5) | (BYTE7(v136[0]) << 16)) << 40) | LOBYTE(v136[0]);
      os_unfair_lock_lock((v29 + v31));
      *(v121 + v12[14]) = 0;
      os_unfair_lock_unlock((v29 + v31));
      v69 = v124;
      LOBYTE(v131[0]) = 1;
      sub_247CB47B0(v69, 0x100000000, v68, v66, *&v67, *(&v67 + 1));
      if (sub_247CB4904())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v71 = Strong;
          v130(v59, 1, 1, v128);
          swift_unknownObjectRetain();
          v72 = sub_247D1FE98();
          v73 = swift_allocObject();
          v73[2] = v72;
          v73[3] = MEMORY[0x277D85700];
          v73[4] = v71;
          sub_247CD082C(0, 0, v59, &unk_247D27D38, v73);

          swift_unknownObjectRelease();
        }
      }

      v74 = sub_247CB4904();

      if (v74)
      {
        v158[0] = xmmword_247D24020;
        memset(&v158[1], 0, 80);
        v75 = *&v69;
        v76 = v119;
        sub_247C4E470(v120, v75, v136, v125, v126 & 1, v158, &v137, a7, v68, v66, *&v67, *(&v67 + 1));
        if (v64)
        {
          v153 = v143;
          v154 = v144;
          v155 = v145;
          v156 = v146;
          v149 = v139;
          v150 = v140;
          v151 = v141;
          v152 = v142;
          v147 = v137;
          v148 = v138;
          v77 = sub_247C5EE54(&v147);
          v78 = MEMORY[0x277D85700];
          v59 = v123;
          if (v77 != 1)
          {
            v79 = sub_247D1F468();
            v80 = sub_247D20028();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&dword_247C1F000, v79, v80, "Stable candidate found from video stream. Requesting photo capture.", v81, 2u);
              MEMORY[0x24C1B9080](v81, -1, -1);
            }

            os_unfair_lock_lock((v29 + v31));
            *(v121 + v122) = 3;
            os_unfair_lock_unlock((v29 + v31));
            __swift_project_boxed_opaque_existential_1(v133, v134);
            sub_247CE0C1C();
          }

          v82 = v128;
          v83 = v130;
          v130(v59, 1, 1, v128);
          v84 = v76;
          sub_247CE6074(&v137, v131);
          v85 = sub_247D1FE98();
          v86 = swift_allocObject();
          v87 = v144;
          *(v86 + 136) = v143;
          *(v86 + 152) = v87;
          *(v86 + 168) = v145;
          v88 = v140;
          *(v86 + 72) = v139;
          *(v86 + 88) = v88;
          v89 = v142;
          *(v86 + 104) = v141;
          *(v86 + 120) = v89;
          v90 = v138;
          *(v86 + 40) = v137;
          *(v86 + 16) = v85;
          *(v86 + 24) = v78;
          *(v86 + 32) = v84;
          *(v86 + 184) = v146;
          *(v86 + 56) = v90;
          v91 = &unk_247D27D30;
        }

        else
        {
          v153 = v143;
          v154 = v144;
          v155 = v145;
          v156 = v146;
          v149 = v139;
          v150 = v140;
          v151 = v141;
          v152 = v142;
          v147 = v137;
          v148 = v138;
          if (sub_247C5EE54(&v147) != 1)
          {
            sub_247CEDC0C();
          }

          v59 = v123;
          v82 = v128;
          v83 = v130;
          v130(v123, 1, 1, v128);
          v111 = v76;
          sub_247CE6074(&v137, v131);
          v112 = sub_247D1FE98();
          v86 = swift_allocObject();
          *(v86 + 16) = v112;
          v78 = MEMORY[0x277D85700];
          *(v86 + 24) = MEMORY[0x277D85700];
          v113 = v144;
          *(v86 + 128) = v143;
          *(v86 + 144) = v113;
          *(v86 + 160) = v145;
          *(v86 + 176) = v146;
          v114 = v140;
          *(v86 + 64) = v139;
          *(v86 + 80) = v114;
          v115 = v142;
          *(v86 + 96) = v141;
          *(v86 + 112) = v115;
          v116 = v138;
          *(v86 + 32) = v137;
          *(v86 + 48) = v116;
          *(v86 + 184) = v111;
          v91 = &unk_247D27D28;
        }

        sub_247CD082C(0, 0, v59, v91, v86);

        sub_247C5FC04(&v137);
        goto LABEL_34;
      }

      v82 = v128;
      v83 = v130;
      v130(v59, 1, 1, v128);
      v76 = v119;
      v105 = v119;
      v106 = sub_247D1FE98();
      v95 = swift_allocObject();
      v95[2] = v106;
      v78 = MEMORY[0x277D85700];
      v95[3] = MEMORY[0x277D85700];
      v95[4] = v105;
      v96 = &unk_247D27D20;
    }

    sub_247CD082C(0, 0, v59, v96, v95);

LABEL_34:
    v92 = v83;
    goto LABEL_35;
  }

  return __swift_destroy_boxed_opaque_existential_1(v133);
}

uint64_t sub_247CE3FF8(__CVBuffer *a1, unint64_t a2, uint64_t a3, int a4, __int128 *a5, char *a6, double a7)
{
  v93 = a4;
  v91 = a1;
  v92 = *&a3;
  v89 = a2;
  v9 = a5[3];
  v104 = a5[2];
  v105 = v9;
  v10 = a5[5];
  v106 = a5[4];
  v107 = v10;
  v11 = a5[1];
  v102 = *a5;
  v103 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = &v87 - v13;
  v14 = type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&a6[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_protectedProperties];
  v18 = v17 + *(*v17 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  v20 = *(v18 + v14[13]);
  os_unfair_lock_unlock((v17 + v19));
  v21 = *&a6[OBJC_IVAR____TtC18CosmeticAssessment33CosmeticDiagnosticsViewController_realTimeImageProcessor];
  os_unfair_lock_lock((v21 + 24));
  v22 = *(v21 + 16);

  os_unfair_lock_unlock((v21 + 24));
  if (v20 == 1)
  {
    goto LABEL_4;
  }

  v88 = v22;
  v90 = a6;
  os_unfair_lock_lock((v17 + v19));
  sub_247CE6FAC(v18, v16, type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
  os_unfair_lock_unlock((v17 + v19));
  if (v16[v14[6]])
  {
    sub_247CE705C(v16, type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
    a6 = v90;
LABEL_4:
    v23 = sub_247D1FEC8();
    v24 = v94;
    (*(*(v23 - 8) + 56))(v94, 1, 1, v23);
    sub_247D1FEA8();
    v25 = a6;
    v26 = sub_247D1FE98();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v25;
    sub_247CD082C(0, 0, v24, &unk_247D27CB0, v27);
  }

  v87 = v18;
  v30 = &v16[v14[9]];
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  v35 = &v16[v14[8]];
  v36 = v16[v14[13]];
  v37 = v88;
  sub_247CEEF00(v16, *&v92, v93 & 1, v91, &v16[v14[7]], v89 | ((HIDWORD(v89) & 1) << 32), *&v16[v14[11]], v36, v97, a7, v31, v32, v33, v34, *v35, v35[1], v35[2], v35[3], &v16[v14[12]]);
  if (v36 == 3)
  {
    v38 = 0xED00006572757470;
  }

  else
  {
    v38 = 0xEC0000006D616572;
  }

  sub_247CE5E18(v97, v95);
  v39 = sub_247D1F468();
  v40 = sub_247D20028();

  sub_247CE5E74(v97);
  LODWORD(v89) = v40;
  if (os_log_type_enabled(v39, v40))
  {
    if (v36 == 3)
    {
      v41 = 0x6163206F746F6870;
    }

    else
    {
      v41 = 0x7473206F65646976;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v100[0] = v43;
    *v42 = 136315394;
    v44 = sub_247CB03B4(v41, v38, v100);

    *(v42 + 4) = v44;
    *(v42 + 12) = 2080;
    v95[0] = v97[0];
    v95[1] = v97[1];
    v96 = v97[2];
    v45 = sub_247D1FC68();
    v47 = sub_247CB03B4(v45, v46, v100);

    *(v42 + 14) = v47;
    v48 = v88;
    _os_log_impl(&dword_247C1F000, v39, v89, "Crop validation result for %s: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v43, -1, -1);
    MEMORY[0x24C1B9080](v42, -1, -1);
  }

  else
  {

    v48 = v37;
  }

  sub_247CE705C(v16, type metadata accessor for CosmeticDiagnosticsViewController.CaptureBufferQueueProperties);
  memcpy(v100, &v97[2] + 8, 0x149uLL);
  v49 = v97[0];
  v50 = LOBYTE(v97[2]) >> 6;
  v51 = MEMORY[0x277D85700];
  if (v50 <= 1)
  {
    if (!v50)
    {
      v52 = *(&v97[1] + 1);
      v53 = *&v97[1];
      v54 = *(v97 + 1);
      *&v55 = (*(v97 + 1) << 8) | ((*(v97 + 5) | (BYTE7(v97[0]) << 16)) << 40) | LOBYTE(v97[0]);
      os_unfair_lock_lock((v17 + v19));
      *(v87 + v14[14]) = 0;
      os_unfair_lock_unlock((v17 + v19));
      v101[2] = v104;
      v101[3] = v105;
      v101[4] = v106;
      v101[5] = v107;
      v101[0] = v102;
      v101[1] = v103;
      v56 = v90;
      sub_247C4E470(v48, *&v91, v97, v92, v93 & 1, v101, v98, a7, v55, v54, v53, v52);
      v57 = sub_247D1FEC8();
      v58 = v94;
      (*(*(v57 - 8) + 56))(v94, 1, 1, v57);
      sub_247D1FEA8();
      v59 = v56;
      sub_247CE6074(v98, v95);
      v60 = sub_247D1FE98();
      v61 = swift_allocObject();
      v62 = v98[7];
      *(v61 + 136) = v98[6];
      *(v61 + 152) = v62;
      *(v61 + 168) = v98[8];
      v63 = v98[3];
      *(v61 + 72) = v98[2];
      *(v61 + 88) = v63;
      v64 = v98[5];
      *(v61 + 104) = v98[4];
      *(v61 + 120) = v64;
      v65 = v98[1];
      v51 = MEMORY[0x277D85700];
      *(v61 + 40) = v98[0];
      *(v61 + 16) = v60;
      *(v61 + 24) = v51;
      *(v61 + 32) = v59;
      *(v61 + 184) = v99;
      *(v61 + 56) = v65;
      sub_247CD082C(0, 0, v58, &unk_247D27C98, v61);
      sub_247C5FC04(v98);
LABEL_24:

      goto LABEL_25;
    }

    v72 = sub_247D1FEC8();
    v73 = v94;
    (*(*(v72 - 8) + 56))(v94, 1, 1, v72);
    sub_247D1FEA8();
    v56 = v90;
    v74 = v90;
    v75 = sub_247D1FE98();
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v51;
    *(v76 + 32) = v74;
    *(v76 + 40) = v49;
    memcpy((v76 + 48), v100, 0x149uLL);
    v77 = &unk_247D27C88;
    v78 = v73;
    v70 = v76;
LABEL_23:
    sub_247CD082C(0, 0, v78, v77, v70);
    goto LABEL_24;
  }

  if (v50 != 2)
  {
    v79 = sub_247D1FEC8();
    v67 = v94;
    (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
    sub_247D1FEA8();
    v56 = v90;
    v80 = v90;
    v81 = sub_247D1FE98();
    v70 = swift_allocObject();
    v70[2] = v81;
    v70[3] = v51;
    v70[4] = v80;
    v71 = &unk_247D27CA8;
    goto LABEL_22;
  }

  v56 = v90;
  if (v97[0])
  {
    v66 = sub_247D1FEC8();
    v67 = v94;
    (*(*(v66 - 8) + 56))(v94, 1, 1, v66);
    sub_247D1FEA8();
    v68 = v56;
    v69 = sub_247D1FE98();
    v70 = swift_allocObject();
    v70[2] = v69;
    v70[3] = v51;
    v70[4] = v68;
    v71 = &unk_247D27CA0;
LABEL_22:
    v77 = v71;
    v78 = v67;
    goto LABEL_23;
  }

LABEL_25:
  v82 = sub_247D1FEC8();
  v83 = v94;
  (*(*(v82 - 8) + 56))(v94, 1, 1, v82);
  sub_247D1FEA8();
  v84 = v56;
  sub_247CE5E18(v97, v95);
  v85 = sub_247D1FE98();
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v51;
  *(v86 + 32) = v84;
  memcpy((v86 + 40), v97, 0x269uLL);
  *(v86 + 664) = v92;
  *(v86 + 672) = v93 & 1;
  sub_247CD082C(0, 0, v83, &unk_247D27C90, v86);

  return sub_247CE5E74(v97);
}

void sub_247CE4A30(void *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (*(v3 + 16) && (v4 = sub_247CCFDA8(0x657275736F707865, 0xEC00000065646F4DLL), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v7 = *v6;
    v8 = v6[1];

    v9 = sub_247CECA84(v7, v8);
    v11 = v10;

    if (v11)
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 2;
  }

  if ([a1 isExposureModeSupported_])
  {
    [a1 setExposureMode_];
  }

  if (*(v3 + 16) && (v12 = sub_247CCFDA8(0xD000000000000010, 0x8000000247D320F0), (v13 & 1) != 0))
  {
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_247CECA84(v15, v16);
    v19 = v18;

    if (v19)
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 2;
  }

  if ([a1 isWhiteBalanceModeSupported_])
  {
    [a1 setWhiteBalanceMode_];
  }

  if (*(v3 + 16) && (v20 = sub_247CCFDA8(0x646F4D7375636F66, 0xE900000000000065), (v21 & 1) != 0))
  {
    v22 = (*(v3 + 56) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];

    v25 = sub_247CECA84(v23, v24);
    v27 = v26;

    if (v27)
    {
      v25 = 2;
    }
  }

  else
  {
    v25 = 2;
  }

  if ([a1 isFocusModeSupported_])
  {
    [a1 setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled_];
    [a1 setFaceDrivenAutoFocusEnabled_];
    [a1 setFocusPointOfInterest_];
    [a1 setFocusMode_];
  }

  if (*(v3 + 16) && (v28 = sub_247CCFDA8(0xD000000000000019, 0x8000000247D32110), (v29 & 1) != 0))
  {
    v30 = (*(v3 + 56) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];

    v33 = sub_247CECA84(v31, v32);
    v35 = v34;

    if (v35)
    {
      v33 = 1;
    }
  }

  else
  {
    v33 = 1;
  }

  if ([a1 isAutoFocusRangeRestrictionSupported])
  {
    [a1 setAutoFocusRangeRestriction_];
  }

  if ([a1 isLowLightBoostEnabled] && objc_msgSend(a1, sel_isLowLightBoostSupported))
  {
    [a1 setAutomaticallyEnablesLowLightBoostWhenAvailable_];
  }

  v36 = [a1 activeFormat];
  v37 = [v36 isAutoVideoFrameRateSupported];

  if (v37)
  {
    v38 = sub_247C581F0(0xD00000000000001BLL, 0x8000000247D32130, 0) & 1;

    [a1 setAutoVideoFrameRateEnabled_];
  }
}

void sub_247CE4E14(opaqueCMSampleBuffer *a1)
{
  ObjectType = swift_getObjectType();
  v4 = CMSampleBufferGetImageBuffer(a1);
  if (v4)
  {
    v13 = v4;
    v5 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureMode];
    os_unfair_lock_lock((v5 + 20));
    v6 = *(v5 + 16);
    os_unfair_lock_unlock((v5 + 20));
    if ((v6 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
    }

    else
    {
      v8 = Strong;
      v14[3] = ObjectType;
      v14[4] = &off_281B55EC0;
      v14[0] = v1;
      if (v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_videoRotationAngleForHorizonLevelCapture + 8])
      {
        v9 = -90.0;
      }

      else
      {
        v9 = *&v1[OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_videoRotationAngleForHorizonLevelCapture] + -90.0;
      }

      v10 = v1;
      v11 = sub_247CE1CA8();
      v12 = __swift_project_boxed_opaque_existential_1(v14, ObjectType);
      sub_247CE3158(*v12, v13, 0x100000000uLL, v11, 0, v8, v9);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }
}

void sub_247CE4F74(void *a1)
{
  v3 = sub_247D1EF48();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v139 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v139 - v11;
  v13 = [a1 metadata];
  v14 = sub_247D1FB18();

  v15 = [a1 pixelBuffer];
  if (v15)
  {
    v16 = v15;
    v17 = sub_247D1FBE8();
    if (*(v14 + 16))
    {
      v154 = v7;
      v155 = v1;
      v19 = sub_247CCFDA8(v17, v18);
      v21 = v20;

      if (v21)
      {
        sub_247C30330(*(v14 + 56) + 32 * v19, v163);
        v22 = sub_247C3194C(0, &qword_27EE63F80);
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v153 = v10;
        v151 = v22;
        v23 = v157;
        v24 = [v157 unsignedIntValue];

        v25 = v155;
        v26 = *(v155 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_captureMode);
        os_unfair_lock_lock((v26 + 20));
        v27 = *(v26 + 16);
        os_unfair_lock_unlock((v26 + 20));
        if (v27 == 1)
        {
          v149 = v24;
          v28 = sub_247D1FBE8();
          v30 = *(v14 + 16);
          v152 = v12;
          v148 = v3;
          if (v30)
          {
            v31 = sub_247CCFDA8(v28, v29);
            v25 = v155;
            v32 = v31;
            v34 = v33;

            if (v34)
            {
              sub_247C30330(*(v14 + 56) + 32 * v32, v163);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE63F90);
              if (swift_dynamicCast())
              {
                v35 = v157;
                if (v157)
                {
                  v36 = sub_247D1FBE8();
                  v38 = v37;
                  if (*(v35 + 16))
                  {
                    v39 = v36;

                    v40 = sub_247CCFDA8(v39, v38);
                    v42 = v41;

                    if (v42)
                    {
                      sub_247C30330(*(v35 + 56) + 32 * v40, v163);

                      v43 = swift_dynamicCast();
                      v44 = v157;
                      if (!v43)
                      {
                        v44 = 0;
                      }

                      v145 = v44;
                      if (v43)
                      {
                        v45 = *(&v157 + 1);
                      }

                      else
                      {
                        v45 = 0;
                      }

                      v144 = v45;
                    }

                    else
                    {

                      v145 = 0;
                      v144 = 0;
                    }

                    v25 = v155;
                  }

                  else
                  {

                    v145 = 0;
                    v144 = 0;
                  }

                  v77 = sub_247D1FBE8();
                  v79 = v78;
                  if (*(v35 + 16))
                  {
                    v80 = v77;

                    v81 = sub_247CCFDA8(v80, v79);
                    v83 = v82;

                    if (v83)
                    {
                      sub_247C30330(*(v35 + 56) + 32 * v81, v163);

                      v84 = swift_dynamicCast();
                      v25 = v155;
                      if (v84)
                      {
                        v85 = v157;
                        [v157 doubleValue];
                        v52 = v86;

                        v143 = 0;
                        goto LABEL_44;
                      }
                    }

                    else
                    {

                      v25 = v155;
                    }
                  }

                  else
                  {
                  }

                  v52 = 0;
                  v143 = 1;
LABEL_44:
                  v87 = sub_247D1FBE8();
                  v89 = v88;
                  if (*(v35 + 16))
                  {
                    v90 = v87;

                    v91 = sub_247CCFDA8(v90, v89);
                    v93 = v92;

                    if (v93)
                    {
                      sub_247C30330(*(v35 + 56) + 32 * v91, v163);

                      if (swift_dynamicCast())
                      {
                        v94 = v157;
                        [v157 doubleValue];
                        v50 = v95;

                        v142 = 0;
                        v25 = v155;
                        goto LABEL_52;
                      }
                    }

                    else
                    {
                    }

                    v25 = v155;
                  }

                  else
                  {
                  }

                  v50 = 0;
                  v142 = 1;
LABEL_52:
                  v96 = sub_247D1FBE8();
                  v98 = v97;
                  if (*(v35 + 16))
                  {
                    v99 = v96;

                    v100 = sub_247CCFDA8(v99, v98);
                    v102 = v101;

                    if (v102)
                    {
                      sub_247C30330(*(v35 + 56) + 32 * v100, v163);

                      v103 = swift_dynamicCast();
                      v25 = v155;
                      if (v103)
                      {
                        v104 = v157;
                        [v157 doubleValue];
                        v54 = v105;

                        v141 = 0;
                        goto LABEL_59;
                      }
                    }

                    else
                    {

                      v25 = v155;
                    }
                  }

                  else
                  {
                  }

                  v54 = 0;
                  v141 = 1;
LABEL_59:
                  v106 = sub_247D1FBE8();
                  v108 = v107;
                  v109 = *(v35 + 16);
                  v150 = v35;
                  if (v109)
                  {
                    v110 = v106;

                    v111 = sub_247CCFDA8(v110, v108);
                    v113 = v112;

                    if (v113)
                    {
                      sub_247C30330(*(v35 + 56) + 32 * v111, v163);

                      v114 = swift_dynamicCast();
                      v25 = v155;
                      if (v114)
                      {
                        v115 = v157;
                        [v157 doubleValue];
                        v48 = v116;

                        v140 = 0;
LABEL_66:
                        v117 = sub_247D1FBE8();
                        v119 = v118;
                        v120 = v150;
                        if (*(v150 + 16))
                        {
                          v121 = v117;

                          v122 = sub_247CCFDA8(v121, v119);
                          LOBYTE(v121) = v123;

                          if (v121)
                          {
                            sub_247C30330(*(v120 + 56) + 32 * v122, v163);

                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63F88);
                            v124 = swift_dynamicCast();
                            v25 = v155;
                            if (v124)
                            {
                              v125 = v157;
                              if (v157 >> 62)
                              {
                                v126 = sub_247D203B8();
                                if (v126)
                                {
                                  goto LABEL_71;
                                }
                              }

                              else
                              {
                                v126 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                if (v126)
                                {
LABEL_71:
                                  *&v163[0] = MEMORY[0x277D84F90];
                                  sub_247CE2470(0, v126 & ~(v126 >> 63), 0);
                                  if (v126 < 0)
                                  {
                                    __break(1u);
                                    return;
                                  }

                                  v127 = 0;
                                  v128 = *&v163[0];
                                  v151 = v125;
                                  v147 = v125 & 0xC000000000000001;
                                  v146 = v126;
                                  do
                                  {
                                    if (v147)
                                    {
                                      v129 = MEMORY[0x24C1B8190](v127, v151);
                                    }

                                    else
                                    {
                                      v129 = *(v151 + 8 * v127 + 32);
                                    }

                                    v130 = v129;
                                    [v129 doubleValue];
                                    v131 = sub_247D1FF98();
                                    v133 = v132;

                                    *&v163[0] = v128;
                                    v135 = *(v128 + 16);
                                    v134 = *(v128 + 24);
                                    v136 = v135 + 1;
                                    if (v135 >= v134 >> 1)
                                    {
                                      sub_247CE2470((v134 > 1), v135 + 1, 1);
                                      v136 = v135 + 1;
                                      v128 = *&v163[0];
                                    }

                                    ++v127;
                                    *(v128 + 16) = v136;
                                    v137 = v128 + 16 * v135;
                                    *(v137 + 32) = v131;
                                    *(v137 + 40) = v133;
                                  }

                                  while (v146 != v127);

                                  goto LABEL_85;
                                }
                              }

                              v128 = MEMORY[0x277D84F90];
LABEL_85:
                              *&v163[0] = v128;
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63270);
                              sub_247C2A7FC(&qword_27EE63278, &qword_27EE63270);
                              v56 = sub_247D1FB68();
                              v57 = v138;

                              v25 = v155;
                              v47 = v145;
                              v46 = v144;
                              v53 = v143;
                              v51 = v142;
                              v55 = v141;
                              v49 = v140;
                              goto LABEL_27;
                            }
                          }

                          else
                          {

                            v25 = v155;
                          }
                        }

                        else
                        {
                        }

                        v47 = v145;
                        v46 = v144;
                        v53 = v143;
                        v51 = v142;
                        v55 = v141;
                        v49 = v140;
LABEL_26:
                        v56 = 0;
                        v57 = 0;
LABEL_27:
                        *&v157 = v47;
                        *(&v157 + 1) = v46;
                        *&v158 = v52;
                        BYTE8(v158) = v53;
                        *&v159 = v50;
                        BYTE8(v159) = v51;
                        *&v160 = v54;
                        BYTE8(v160) = v55;
                        *&v161 = v48;
                        BYTE8(v161) = v49;
                        *&v162 = v56;
                        *(&v162 + 1) = v57;
                        v163[2] = v159;
                        v163[3] = v160;
                        v163[4] = v161;
                        v163[5] = v162;
                        v163[0] = v157;
                        v163[1] = v158;
                        v58 = *(v25 + OBJC_IVAR____TtC18CosmeticAssessment23AVCameraSessionProvider_photoCaptureStartTime);
                        v59 = *(*v58 + *MEMORY[0x277D841D0] + 16);
                        v60 = (*(*v58 + 48) + 3) & 0x1FFFFFFFCLL;

                        os_unfair_lock_lock((v58 + v60));
                        v151 = v4;
                        v61 = *(v4 + 16);
                        v62 = v58 + v59;
                        v63 = v152;
                        v64 = v148;
                        v61(v152, v62, v148);
                        os_unfair_lock_unlock((v58 + v60));

                        v65 = v153;
                        v61(v153, v63, v64);
                        v66 = sub_247D1F468();
                        v67 = sub_247D20058();
                        if (os_log_type_enabled(v66, v67))
                        {
                          v68 = swift_slowAlloc();
                          *v68 = 134217984;
                          v69 = v154;
                          sub_247D1EF18();
                          sub_247D1EE88();
                          v71 = v70;
                          v72 = *(v151 + 8);
                          v72(v69, v64);
                          v72(v65, v64);
                          *(v68 + 4) = v71;
                          _os_log_impl(&dword_247C1F000, v66, v67, "Time to first photoOutput frame %f", v68, 0xCu);
                          MEMORY[0x24C1B9080](v68, -1, -1);
                        }

                        else
                        {

                          v72 = *(v151 + 8);
                          v72(v65, v64);
                        }

                        Strong = swift_unknownObjectWeakLoadStrong();
                        v74 = v149;
                        if (Strong)
                        {
                          v75 = Strong;
                          *&v76 = sub_247CE1F00();
                          v156 = 0;
                          sub_247CE3FF8(v16, v74, v76, 0, v163, v75, -90.0);

                          sub_247CE5DC4(&v157);
                          swift_unknownObjectRelease();
                        }

                        else
                        {

                          sub_247CE5DC4(&v157);
                        }

                        v72(v152, v64);
                        return;
                      }
                    }

                    else
                    {

                      v25 = v155;
                    }
                  }

                  else
                  {
                  }

                  v48 = 0;
                  v140 = 1;
                  goto LABEL_66;
                }
              }
            }
          }

          else
          {
          }

          v46 = 0;
          v47 = 0;
          v150 = 0;
          v48 = 0;
          v49 = 1;
          v50 = 0;
          v51 = 1;
          v52 = 0;
          v53 = 1;
          v54 = 0;
          v55 = 1;
          goto LABEL_26;
        }
      }
    }

    else
    {
    }

    return;
  }
}

uint64_t sub_247CE5ED0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_247C27E44;

  return sub_247C525F0(a1, v4, v5, v6, v7, v1 + 48);
}

uint64_t sub_247CE5F9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 664);
  v8 = *(v1 + 672);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247C27E44;

  return sub_247C52AF4(a1, v4, v5, v6, v1 + 40, v7, v8);
}

uint64_t sub_247CE60EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C522F4(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_247CE61AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_247C27E44;

  return sub_247C520AC();
}

uint64_t sub_247CE6260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C51FB0(a1, v4, v5, v6);
}

uint64_t sub_247CE6314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C51CB4(a1, v4, v5, v6);
}

uint64_t sub_247CE63D8()
{
  v1 = (type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 28) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_247D1F198();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_247CE64C8()
{
  v1 = *(type metadata accessor for FlowResponse.Step.CosmeticCapture.Configuration(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 28) & ~*(v1 + 80));

  sub_247CE0380(v3, v2, v4);
}

unint64_t sub_247CE6530()
{
  result = qword_27EE63FA8;
  if (!qword_27EE63FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63FA8);
  }

  return result;
}

_BYTE *sub_247CE6584@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_247CE6620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_247C27E44;

  return sub_247C4D9BC(a1, v4, v5, v7, v6);
}

uint64_t sub_247CE66E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C4E038(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_247CE67A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 377, 7);
}

uint64_t sub_247CE67E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_247C27E44;

  return sub_247C50C00(a1, v4, v5, v7, v6, v1 + 48);
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 673, 7);
}

uint64_t sub_247CE6900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 664);
  v8 = *(v1 + 672);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247C27E44;

  return sub_247C51160(a1, v4, v5, v6, v1 + 40, v7, v8);
}

uint64_t sub_247CE69D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C50990(a1, v4, v5, v6);
}

uint64_t sub_247CE6A8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_247CE6AD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[23];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C4FDDC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_247CE6B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C4FCE0(a1, v4, v5, v6);
}

uint64_t sub_247CE6C54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C52CE8(a1, v4, v5, v6);
}

uint64_t sub_247CE6D08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_247C27E44;

  return sub_247C4E288();
}

uint64_t sub_247CE6DBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C4E1F0(a1, v4, v5, v6);
}

uint64_t sub_247CE6E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C27E44;

  return sub_247C4DCE4(a1, v4, v5, v6);
}

uint64_t sub_247CE6F24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247CE6F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247CE6FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247CE7014()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247CE705C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_247CE70C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 systemPressureState];
  *a2 = result;
  return result;
}

uint64_t sub_247CE710C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247CE7160()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_20Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_247CE7200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247C2793C;

  return sub_247C4C904(a1, v4, v5, v6);
}

uint64_t sub_247CE72C0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_247CE7318()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_247CE7368(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_247C27E44;

  return sub_247C4D5B8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_28Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_247CE74DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_247C27E44;

  return sub_247C4CF0C(a1, v4, v5, v7, v6);
}

id sub_247CE7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v10 = qword_27EE72D00;
  v11 = *(qword_27EE72D00 + 16);

  [v11 lock];
  sub_247CAD9C4(v10, &_s19AnalyticsManagerKeyON, v18);
  v12 = OBJC_IVAR____TtC18CosmeticAssessment40SessionInitializingLoadingViewController__analytics;
  [v11 unlock];
  sub_247C3D044(v18, &v6[v12]);

  v13 = &v6[OBJC_IVAR____TtC18CosmeticAssessment40SessionInitializingLoadingViewController_topBarTrailingAction];
  *v13 = a5;
  *(v13 + 1) = a6;

  v14 = sub_247D1FBB8();

  v17.receiver = v6;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithSpinnerText_, v14);

  return v15;
}

uint64_t sub_247CE78CC(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1 & 1);
  sub_247CE7DBC(v1 + OBJC_IVAR____TtC18CosmeticAssessment40SessionInitializingLoadingViewController__analytics, __src);
  sub_247C3D044(__src, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *__src = 0;
  __src[8] = 1;
  *&__src[16] = 0;
  __src[24] = 1;
  *&__src[32] = 0;
  __src[40] = 1;
  memset(&__src[48], 0, 112);
  __src[160] = 1;
  *&__src[176] = 0;
  *&__src[168] = 0;
  *&__src[184] = xmmword_247D23E90;
  *&__src[200] = 514;
  memset(&__src[208], 0, 177);
  *&__src[392] = 0xD000000000000013;
  *&__src[400] = 0x8000000247D32230;
  memcpy(__dst, __src, sizeof(__dst));
  (*(v4 + 8))(__dst, v3, v4);
  sub_247C318F8(__src);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_247CE7B70(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC18CosmeticAssessment40SessionInitializingLoadingViewController_topBarTrailingAction);
    v4 = result;

    if ([a1 sender])
    {
      sub_247D20238();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9[0] = v7;
    v9[1] = v8;
    if (*(&v8 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE62FD0);
      if (swift_dynamicCast())
      {
        v5 = v6;
LABEL_10:
        v3(v5, 0);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_247C27100(v9, &unk_27EE63300);
    }

    v5 = 0;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_247CE7DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CE7E2C()
{
  MEMORY[0x24C1B9150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247CE7E6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
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

uint64_t sub_247CE7EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18CosmeticAssessment20ImageCaptureMetadataV13PhotoSettingsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_247CE7FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_247CE7FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247CE8070()
{
  v0 = sub_247D1F488();
  MEMORY[0x28223BE20](v0);
  v1 = sub_247D1FC38();
  MEMORY[0x28223BE20](v1 - 8);
  sub_247D1EBB8();
  swift_allocObject();
  sub_247D1EBA8();
  sub_247CE8F88();
  v2 = sub_247D1EB98();
  v4 = v3;

  sub_247D1FC28();
  v5 = sub_247D1FC08();
  sub_247C301C8(v2, v4);
  return v5;
}

uint64_t sub_247CE8380(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE640D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247CE9750();
  sub_247D20678();
  v8[15] = 0;
  sub_247D20448();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_247D20458();
  v8[13] = 2;
  sub_247D20458();
  v8[12] = 3;
  sub_247D20458();
  v8[11] = 4;
  sub_247D20458();
  v8[10] = 5;
  sub_247D20448();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_247CE8590(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE640C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247CE96FC();
  sub_247D20678();
  v8[15] = 0;
  sub_247D20498();
  if (!v1)
  {
    v8[14] = 1;
    sub_247D20498();
    v8[13] = 2;
    sub_247D20498();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_247CE8750()
{
  v1 = *v0;
  v2 = 0x65646F4D736E656CLL;
  v3 = 0xD000000000000012;
  v4 = 0x6E654C6C61636F66;
  if (v1 != 4)
  {
    v4 = 0x64656570536F7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6572757472657061;
  if (v1 != 1)
  {
    v5 = 0x657275736F707865;
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

uint64_t sub_247CE8838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_247CE923C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_247CE886C(uint64_t a1)
{
  v2 = sub_247CE9750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247CE88A8(uint64_t a1)
{
  v2 = sub_247CE9750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247CE88FC()
{
  v1 = 0x6C61636974726576;
  if (*v0 != 1)
  {
    v1 = 0x746E6F7A69726F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461746F72;
  }
}

uint64_t sub_247CE896C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_247CE945C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_247CE8994(uint64_t a1)
{
  v2 = sub_247CE96FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247CE89D0(uint64_t a1)
{
  v2 = sub_247CE96FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247CE8A2C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE64080);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247CE8E1C();
  sub_247D20678();
  LOBYTE(v19[0]) = 0;
  sub_247D20478();
  if (!v2)
  {
    v19[0] = v3[1];
    *(v19 + 9) = *(v3 + 25);
    LOBYTE(v17[0]) = 1;
    sub_247CE8E70();
    sub_247D20468();
    v9 = v3[5];
    v10 = v3[7];
    v27 = v3[6];
    v28 = v10;
    v11 = v3[7];
    v29 = v3[8];
    v12 = v3[3];
    v13 = v3[5];
    v25 = v3[4];
    v26 = v13;
    v14 = v3[3];
    v21 = v27;
    v22 = v11;
    v23 = v3[8];
    v24 = v14;
    v19[0] = v12;
    v19[1] = v25;
    v20 = v9;
    v18 = 2;
    sub_247CE8EC4(&v24, v17);
    sub_247CE8F34();
    sub_247D20468();
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[5] = v23;
    v17[0] = v19[0];
    v17[1] = v19[1];
    sub_247C27100(v17, &qword_27EE63298);
    v16[15] = 3;
    sub_247D20488();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_247CE8CD0()
{
  v1 = 7894380;
  v2 = 0x7465536F746F6870;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x75736552746C6974;
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

uint64_t sub_247CE8D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_247CE9580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_247CE8D8C(uint64_t a1)
{
  v2 = sub_247CE8E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247CE8DC8(uint64_t a1)
{
  v2 = sub_247CE8E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_247CE8E1C()
{
  result = qword_27EE64088;
  if (!qword_27EE64088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64088);
  }

  return result;
}

unint64_t sub_247CE8E70()
{
  result = qword_27EE64090;
  if (!qword_27EE64090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64090);
  }

  return result;
}

uint64_t sub_247CE8EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_247CE8F34()
{
  result = qword_27EE64098;
  if (!qword_27EE64098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64098);
  }

  return result;
}

unint64_t sub_247CE8F88()
{
  result = qword_27EE640A0;
  if (!qword_27EE640A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640A0);
  }

  return result;
}

uint64_t sub_247CE8FEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_247CE9048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageCaptureMetadata.Tilt(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageCaptureMetadata.Tilt(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_247CE9138()
{
  result = qword_27EE640A8;
  if (!qword_27EE640A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640A8);
  }

  return result;
}

unint64_t sub_247CE9190()
{
  result = qword_27EE640B0;
  if (!qword_27EE640B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640B0);
  }

  return result;
}

unint64_t sub_247CE91E8()
{
  result = qword_27EE640B8;
  if (!qword_27EE640B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640B8);
  }

  return result;
}

uint64_t sub_247CE923C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D736E656CLL && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_247D20538() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572757472657061 && a2 == 0xEC000000657A6953 || (sub_247D20538() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xEC000000656D6954 || (sub_247D20538() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000247D32270 == a2 || (sub_247D20538() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E654C6C61636F66 && a2 == 0xEB00000000687467 || (sub_247D20538() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656570536F7369 && a2 == 0xEF73676E69746152)
  {

    return 5;
  }

  else
  {
    v6 = sub_247D20538();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_247CE945C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000;
  if (v4 || (sub_247D20538() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEC000000746C6954 || (sub_247D20538() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6F7A69726F68 && a2 == 0xEE00746C69546C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_247D20538();

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

uint64_t sub_247CE9580(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7894380 && a2 == 0xE300000000000000;
  if (v3 || (sub_247D20538() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75736552746C6974 && a2 == 0xEA0000000000746CLL || (sub_247D20538() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7465536F746F6870 && a2 == 0xED000073676E6974 || (sub_247D20538() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000247D32250 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_247D20538();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_247CE96FC()
{
  result = qword_27EE640C8;
  if (!qword_27EE640C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640C8);
  }

  return result;
}

unint64_t sub_247CE9750()
{
  result = qword_27EE640D8;
  if (!qword_27EE640D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageCaptureMetadata.PhotoSettings.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImageCaptureMetadata.PhotoSettings.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_247CE9908()
{
  result = qword_27EE640E0;
  if (!qword_27EE640E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640E0);
  }

  return result;
}

unint64_t sub_247CE9960()
{
  result = qword_27EE640E8;
  if (!qword_27EE640E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640E8);
  }

  return result;
}

unint64_t sub_247CE99B8()
{
  result = qword_27EE640F0;
  if (!qword_27EE640F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640F0);
  }

  return result;
}

unint64_t sub_247CE9A10()
{
  result = qword_27EE640F8;
  if (!qword_27EE640F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE640F8);
  }

  return result;
}

unint64_t sub_247CE9A68()
{
  result = qword_27EE64100;
  if (!qword_27EE64100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64100);
  }

  return result;
}

unint64_t sub_247CE9AC0()
{
  result = qword_27EE64108;
  if (!qword_27EE64108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64108);
  }

  return result;
}

void sub_247CE9BC4(void *a1)
{
  v2 = v1;
  v4 = [a1 viewForKey_];
  v5 = [a1 viewForKey_];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
LABEL_14:
      [v4 setAlpha_];
LABEL_15:
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      v27[2] = v2;
      v27[3] = v6;
      v27[4] = v4;
      v40 = sub_247CEA568;
      v41 = v27;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_247CDD038;
      v39 = &block_descriptor_13;
      v28 = _Block_copy(&v36);
      v29 = v6;
      v30 = v2;
      v31 = v4;

      v32 = swift_allocObject();
      v32[2] = v4;
      v32[3] = v6;
      v32[4] = a1;
      v40 = sub_247CEA5D4;
      v41 = v32;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_247C57D8C;
      v39 = &block_descriptor_13_0;
      v33 = _Block_copy(&v36);
      v34 = v29;
      swift_unknownObjectRetain();
      v35 = v31;

      [v26 animateWithDuration:458752 delay:v28 options:v33 animations:0.35 completion:0.0];
      _Block_release(v33);
      _Block_release(v28);

      return;
    }

LABEL_5:
    v7 = *MEMORY[0x277D77240];
    v8 = v5;
    v9 = [a1 viewControllerForKey_];
    if (v9)
    {
      v10 = v9;
      sub_247D1FEA8();
      swift_unknownObjectRetain();
      v11 = v10;
      sub_247D1FE98();
      sub_247D1FE38();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [a1 finalFrameForViewController_];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = [a1 containerView];
      [v20 bounds];
      v13 = v21;
      v15 = v22;
      v17 = v23;
      v19 = v24;
    }

    [v8 setFrame_];
    if (*(v2 + OBJC_IVAR____TtC18CosmeticAssessment33SystemCrossfadeTransitionAnimator_mode))
    {
      [v8 setAlpha_];
      v25 = [a1 containerView];
      [v25 insertSubview:v8 atIndex:0];
    }

    else
    {
      [v8 setAlpha_];
      v25 = [a1 containerView];
      [v25 addSubview_];
    }

    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v5)
  {
    goto LABEL_5;
  }

  [a1 completeTransition_];
}

uint64_t sub_247CEA030(uint64_t a1, void *a2, void *a3)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a1 + OBJC_IVAR____TtC18CosmeticAssessment33SystemCrossfadeTransitionAnimator_mode) & 1) == 0)
  {
    v6 = 1.0;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = 0.0;
  a2 = a3;
  if (a3)
  {
LABEL_7:
    [a2 setAlpha_];
  }

LABEL_8:
}

uint64_t sub_247CEA10C(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a2 removeFromSuperview];
  if (a2)
  {
    [a2 setAlpha_];
  }

  if (a3)
  {
    v7 = a3;
    v8 = [a4 containerView];
    [v8 bringSubviewToFront_];
  }

  [a4 completeTransition_];
}

unint64_t sub_247CEA464()
{
  result = qword_27EE64188;
  if (!qword_27EE64188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE64188);
  }

  return result;
}

id sub_247CEA4B8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC18CosmeticAssessment33SystemCrossfadeTransitionAnimator_shouldCrossFadeBottomBars] = 1;
  v3[OBJC_IVAR____TtC18CosmeticAssessment33SystemCrossfadeTransitionAnimator_mode] = a1 == 2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_247CEA520()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247CEA58C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247CEA650(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a6 + 2);
  v9 = *(a6 + 24);
  v10 = *(a6 + 4);
  v11 = *(a6 + 40);
  v12 = *(a6 + 6);
  v13 = *(a6 + 56);
  v14 = *(a6 + 8);
  v15 = *(a6 + 72);
  v16 = *(a8 + 40);
  v18 = *a6;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = a6[5];
  return v16(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5 & 1, &v18);
}

id sub_247CEA7D0()
{
  type metadata accessor for DependencyValues();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v2 = MEMORY[0x277D84F98];
  v0[2] = result;
  v0[3] = v2;
  v0[4] = v2;
  v0[5] = v2;
  qword_27EE72D00 = v0;
  return result;
}

uint64_t sub_247CEA830()
{

  return swift_deallocClassInstance();
}

uint64_t sub_247CEA8AC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247CEA91C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_247CEAA5C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_247CEACAC(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v15 = *(a1 + 8);
  v7 = *(a1 + 3);
  v8 = a1[32];
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v11 = a1[56];
  v12 = *(a1 + 8);
  v16 = (*(a3 + 8) + **(a3 + 8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v6;
  *(v3 + 88) = v13;
  *(v3 + 24) = v15;
  *(v3 + 40) = v7;
  *(v3 + 48) = v8;
  *(v3 + 56) = v9;
  *(v3 + 64) = v10;
  *(v3 + 72) = v11;
  *(v3 + 80) = v12;
  *v13 = v3;
  v13[1] = sub_247CEAE2C;

  return v16(v3 + 16, a2, a3);
}

uint64_t sub_247CEAE2C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_247CEAF38(_OWORD *a1)
{
  v19[3] = &type metadata for CurrentDeviceDetailsProvider;
  v19[4] = &off_2859DA850;
  v2 = swift_allocObject();
  v19[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  v5 = __swift_project_boxed_opaque_existential_1(v19, &type metadata for CurrentDeviceDetailsProvider);
  v6 = *v5;
  v7 = v5[1];
  v9 = v5[2];
  v8 = v5[3];
  v11 = v5[4];
  v10 = v5[5];
  v13 = v5[6];
  v12 = v5[7];
  v17 = 0xD000000000000011;
  v18 = 0x8000000247D32480;
  sub_247CEB7D4(a1, v16);

  MEMORY[0x24C1B7B80](v6, v7);

  MEMORY[0x24C1B7B80](32, 0xE100000000000000);
  MEMORY[0x24C1B7B80](v9, v8);

  MEMORY[0x24C1B7B80](47, 0xE100000000000000);
  MEMORY[0x24C1B7B80](v13, v12);

  MEMORY[0x24C1B7B80](47, 0xE100000000000000);
  MEMORY[0x24C1B7B80](v11, v10);

  v14 = v17;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

uint64_t sub_247CEB0C4()
{
  v0 = type metadata accessor for BAAHeadersProvider();
  MEMORY[0x28223BE20](v0);
  v2 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v3 = qword_27EE72D00;
  v4 = *(qword_27EE72D00 + 16);
  swift_retain_n();
  [v4 lock];
  sub_247CADCE4(v3, &_s24ConfigurationProviderKeyON, &v63);
  [v4 unlock];
  sub_247C3D044(&v63, v62);

  v5 = v3[2];
  [v5 lock];
  sub_247CAF2B8(v3, &_s31CurrentDeviceDetailsProviderKeyON, &v63);
  [v5 unlock];
  sub_247C3D044(&v63, v61);

  sub_247C2BD10(v62, &v57, &qword_27EE634E8);
  sub_247C3D044(&v57, &v63);
  v6 = __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
  v7 = v6[14];
  v8 = v6[15];
  v9 = v6[18];
  v10 = v6[19];
  v11 = v6[13];

  sub_247CEB6C8(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if (v8)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v8)
  {
    v13 = v8;
  }

  v48 = v13;
  v49 = v12;
  if (v10 == 9)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  if (v10 == 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  v46 = v15;
  v47 = v14;
  v16 = &v2[*(v0 + 20)];
  *(v16 + 3) = &type metadata for DeviceIdentityBAACertificateIssuer;
  *(v16 + 4) = &off_2859DBCC8;
  sub_247D1F478();
  sub_247C2BD10(v61, &v63, &qword_27EE64270);
  sub_247C3D044(&v63, v56);
  v17 = [objc_opt_self() sharedSession];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v56, v56[3]);
  v50 = &v45;
  MEMORY[0x28223BE20](v18);
  v20 = (&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v20[1];
  v57 = *v20;
  v58 = v22;
  v23 = v20[3];
  v59 = v20[2];
  v60 = v23;
  v55[3] = v0;
  v55[4] = &off_2859DBCB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55);
  sub_247CDC350(v2, boxed_opaque_existential_0);
  v54[3] = &type metadata for CurrentDeviceDetailsProvider;
  v54[4] = &off_2859DA850;
  v25 = swift_allocObject();
  v54[0] = v25;
  v26 = v58;
  v25[1] = v57;
  v25[2] = v26;
  v27 = v60;
  v25[3] = v59;
  v25[4] = v27;
  type metadata accessor for URLSessionAPIProvider();
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v54, &type metadata for CurrentDeviceDetailsProvider);
  MEMORY[0x28223BE20](v29);
  v31 = (&v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v52 = &type metadata for CurrentDeviceDetailsProvider;
  v53 = &off_2859DA850;
  v33 = swift_allocObject();
  v51[0] = v33;
  v34 = v31[1];
  v33[1] = *v31;
  v33[2] = v34;
  v35 = v31[3];
  v33[3] = v31[2];
  v33[4] = v35;
  swift_defaultActor_initialize();
  sub_247D1F478();
  v36 = v47;
  *(v28 + 112) = v46;
  *(v28 + 120) = v36;
  *(v28 + 128) = v11;
  v37 = v48;
  *(v28 + 136) = v49;
  *(v28 + 144) = v37;
  *(v28 + 152) = 3;
  *(v28 + 160) = v17;
  sub_247C5F368(v55, v28 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_baaHeadersProvider);
  sub_247C5F368(v51, v28 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_currentDeviceDetailsProvider);
  v38 = __swift_project_boxed_opaque_existential_1(v51, v52);
  v63 = *v38;
  v64 = v38[1];
  v65 = v38[2];
  v66 = v38[3];
  v39 = v17;
  v40 = sub_247CEAF38(&v63);
  v42 = v41;

  sub_247C27100(v61, &qword_27EE64270);
  sub_247C27100(v62, &qword_27EE634E8);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v43 = (v28 + OBJC_IVAR____TtC18CosmeticAssessment21URLSessionAPIProvider_userAgent);
  *v43 = v40;
  v43[1] = v42;
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v56);
  sub_247CEB778(v2);
  return v28;
}