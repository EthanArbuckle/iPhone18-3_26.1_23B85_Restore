void *sub_245F71F50(uint64_t a1, unsigned __int8 a2, const void *a3, unsigned __int8 a4, _BYTE *a5, uint64_t a6)
{
  v32 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38CB0, &unk_245F798E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_245F768B8();
  v30 = v20;
  v31 = v19;
  *(v18 + 24) = xmmword_245F78E90;
  v21 = &v18[*(v14 + 28)];
  sub_245F765C8();
  if (a2)
  {
    if (a2 == 2)
    {
      v23 = 1;
      v22 = 2;
    }

    else if (a2 == 1)
    {
      v22 = 1;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v22 = a2;
    }
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

  *(v18 + 1) = v22;
  v18[16] = v23;
  v24 = a4;
  if (a4)
  {
    v25 = sub_245F768F8();
    *(v25 + 16) = v24;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  result = memcpy((v25 + 32), a3, 4 * v24);
  *(v25 + 16) = v24;
  *v18 = v25;
  if (a6 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_245F764B8();
    v27 = sub_245F6D6C0(v32, a6);
    v29 = v28;
    sub_245F68918(*(v18 + 3), *(v18 + 4));
    *(v18 + 3) = v27;
    *(v18 + 4) = v29;
    sub_245F6896C(v18, v13);
    (*(v15 + 56))(v13, 0, 1, v14);
    swift_beginAccess();
    sub_245F696AC(v13, v31, v30);
    swift_endAccess();
    return sub_245F68AA4(v18);
  }

  return result;
}

void *sub_245F72254()
{
  v1 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_245F6D134(*(v2 + 16), 0);
  v5 = sub_245F6D1B8(&v7, v4 + 4, v3, v2);

  sub_245F6D8D8();
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

unint64_t sub_245F723AC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  result = swift_beginAccess();
  v14 = *(v3 + v12);
  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_245F6C2D8(a1, a2);
  if ((v15 & 1) == 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_245F6896C(*(v14 + 56) + *(v8 + 72) * result, v11);

  v16 = *(v11 + 1);
  if (v11[16])
  {
LABEL_6:
    result = sub_245F68AA4(v11);
    *a3 = v16;
    return result;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (v16 <= 0xFF)
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_245F72510(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  result = swift_beginAccess();
  v14 = *(v3 + v12);
  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_245F6C2D8(a1, a2);
  if ((v15 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_245F6896C(*(v14 + 56) + *(v8 + 72) * result, v11);

  v16 = *(*v11 + 16);
  if (v16 <= 0xFF)
  {
    result = sub_245F68AA4(v11);
    *a3 = v16;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_245F72668(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_245F76878();
  v10 = v9;
  v11 = a1;
  a5(v8, v10, a4);
}

uint64_t sub_245F726E8(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v9 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  result = swift_beginAccess();
  v16 = *(v4 + v14);
  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_245F6C2D8(a1, a2);
  if ((v17 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_245F6896C(*(v16 + 56) + *(v10 + 72) * result, v13);

  if (*(*v13 + 16) == a4)
  {
    memcpy(a3, (*v13 + 32), 4 * a4);
  }

  return sub_245F68AA4(v13);
}

uint64_t sub_245F728B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  result = swift_beginAccess();
  v15 = *(v4 + v13);
  if (!*(v15 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_245F6C2D8(a1, a2);
  if ((v16 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_245F6896C(*(v15 + 56) + *(v9 + 72) * result, v12);

  v17 = *(v12 + 3);
  v18 = *(v12 + 4);
  sub_245F688C4(v17, v18);
  result = sub_245F68AA4(v12);
  if ((a4 & 0x8000000000000000) == 0)
  {
    sub_245F764C8();
    return sub_245F68918(v17, v18);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t AdaptorError.localizedDescription.getter()
{
  v1 = 0xD000000000000014;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
    sub_245F769C8();

    MEMORY[0x24C1951C0](v3, v2);
    MEMORY[0x24C1951C0](0x203A65766168202CLL, 0xE800000000000000);
    if (qword_27EE38B58 != -1)
    {
      swift_once();
    }

    v4 = sub_245F76828();
    MEMORY[0x24C1951C0](v4);

    return 0xD000000000000021;
  }

  return v1;
}

id static CMCoreMLModel.fromBundlePath(_:)()
{
  sub_245F768B8();
  v0 = sub_245F75200();

  return v0;
}

id sub_245F72DA0(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC15CoreMotionFDNML13CMCoreMLModel_model_);
  v4 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  swift_beginAccess();
  v5 = *(a1 + v4);
  type metadata accessor for TensorFeatureProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13[0] = 0;

  v7 = [v3 predictionFromFeatures:v6 error:v13];

  v8 = v13[0];
  if (v7)
  {
    objc_allocWithZone(type metadata accessor for CMWrappedArrays());
    v9 = v8;
    v8 = sub_245F74B74(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v13[0];
    sub_245F76438();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_245F72ED8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_245F72FA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_245F72FC0, 0, 0);
}

uint64_t sub_245F72FC0()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC15CoreMotionFDNML13CMCoreMLModel_model_);
  v3 = sub_245F71B48();
  v0[4] = v3;
  v4 = *(MEMORY[0x277CBFDF8] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_245F73074;

  return MEMORY[0x282111988](v3);
}

uint64_t sub_245F73074(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_245F73308, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    objc_allocWithZone(type metadata accessor for CMWrappedArrays());
    v8 = swift_task_alloc();
    *(v4 + 56) = v8;
    *v8 = v6;
    v8[1] = sub_245F73208;

    return sub_245F70FA8(a1);
  }
}

uint64_t sub_245F73208(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_245F73308()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_245F734F4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_245F73580, 0, 0);
}

uint64_t sub_245F73580()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC15CoreMotionFDNML13CMCoreMLModel_model_);
  v3 = sub_245F71B48();
  v0[5] = v3;
  v4 = *(MEMORY[0x277CBFDF8] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_245F73634;

  return MEMORY[0x282111988](v3);
}

uint64_t sub_245F73634(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_245F73968, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    objc_allocWithZone(type metadata accessor for CMWrappedArrays());
    v8 = swift_task_alloc();
    *(v4 + 64) = v8;
    *v8 = v6;
    v8[1] = sub_245F737C8;

    return sub_245F70FA8(a1);
  }
}

uint64_t sub_245F737C8(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_245F738C8, 0, 0);
}

uint64_t sub_245F738C8()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  (*(v2 + 16))(v2, v1, 0);
  v4 = *(v0 + 72);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_245F73968()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = sub_245F76428();
  (*(v3 + 16))(v3, 0, v6);
  v7 = v0[4];

  _Block_release(v7);
  v8 = v0[1];

  return v8();
}

id sub_245F73AD0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_245F73B1C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_245F763C8;

  return v7();
}

uint64_t sub_245F73C04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_245F73CEC;

  return v8();
}

uint64_t sub_245F73CEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_245F73DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_245F75EE4(a3, v25 - v11);
  v13 = sub_245F76928();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_245F75F54(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_245F76918();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_245F76908();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_245F76888() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_245F75F54(a3);

    return v23;
  }

LABEL_8:
  sub_245F75F54(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_245F7409C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245F74194;

  return v7(a1);
}

uint64_t sub_245F74194()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_245F7428C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_245F76A88();
  sub_245F76898();
  v9 = sub_245F76A98();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_245F76A08() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_245F7463C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_245F743DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38DD0, &qword_245F79A50);
  result = sub_245F769B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_245F76A88();
      sub_245F76898();
      result = sub_245F76A98();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_245F7463C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_245F743DC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_245F747BC();
      goto LABEL_16;
    }

    sub_245F74918(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_245F76A88();
  sub_245F76898();
  result = sub_245F76A98();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_245F76A08();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_245F76A18();
  __break(1u);
  return result;
}

void *sub_245F747BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38DD0, &qword_245F79A50);
  v2 = *v0;
  v3 = sub_245F769A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_245F74918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38DD0, &qword_245F79A50);
  result = sub_245F769B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_245F76A88();

      sub_245F76898();
      result = sub_245F76A98();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

id sub_245F74B74(void *a1)
{
  v3 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v61 = *(v3 - 8);
  v4 = *(v61 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v57 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D00, &qword_245F79808);
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v59);
  v66 = &v57 - v10;
  v11 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  v12 = MEMORY[0x277D84F90];
  *&v1[v11] = sub_245F6D310(MEMORY[0x277D84F90]);
  v13 = sub_245F6D310(v12);
  swift_beginAccess();
  v14 = *&v1[v11];
  v65 = v11;
  v68 = v1;
  *&v1[v11] = v13;

  v15 = [a1 featureNames];
  v16 = sub_245F76958();

  v17 = v16;
  v18 = 0;
  v21 = *(v16 + 56);
  v20 = v16 + 56;
  v19 = v21;
  v22 = 1 << *(v17 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = (v8 + 8);
  v58 = v17;
  v60 = a1;
  while (v24)
  {
LABEL_10:
    v27 = (*(v17 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v24)))));
    v29 = *v27;
    v28 = v27[1];

    v30 = sub_245F76868();
    v31 = a1;
    v24 &= v24 - 1;
    v32 = [a1 featureValueForName_];

    if (v32)
    {
      v33 = v32;
      v34 = [v32 multiArrayValue];
      if (v34)
      {
        v64 = v32;
        v63 = v34;
        sub_245F767C8();
        v35 = v62;
        sub_245F70730(v62);
        v36 = v65;
        v37 = v68;
        swift_beginAccess();
        sub_245F689D0(v35, v67);
        v38 = *&v37[v36];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = *&v37[v36];
        v40 = v70;
        *&v37[v36] = 0x8000000000000000;
        v42 = sub_245F6C2D8(v29, v28);
        v43 = v40[2];
        v44 = (v41 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          goto LABEL_27;
        }

        v46 = v41;
        if (v40[3] >= v45)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            a1 = v60;
            if (v41)
            {
              goto LABEL_20;
            }
          }

          else
          {
            sub_245F6CCA0();
            a1 = v60;
            if (v46)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          sub_245F6C408(v45, isUniquelyReferenced_nonNull_native);
          v47 = sub_245F6C2D8(v29, v28);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_29;
          }

          v42 = v47;
          a1 = v60;
          if (v46)
          {
LABEL_20:

            v49 = v70;
            sub_245F762BC(v67, v70[7] + *(v61 + 72) * v42);
            goto LABEL_24;
          }
        }

        v49 = v70;
        v70[(v42 >> 6) + 8] |= 1 << v42;
        v50 = (v49[6] + 16 * v42);
        *v50 = v29;
        v50[1] = v28;
        sub_245F689D0(v67, v49[7] + *(v61 + 72) * v42);
        v51 = v49[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_28;
        }

        v49[2] = v53;
LABEL_24:
        v54 = *&v68[v65];
        *&v68[v65] = v49;

        swift_endAccess();

        (*v57)(v66, v59);
        v17 = v58;
      }

      else
      {
        a1 = v31;
      }
    }

    else
    {

      a1 = v31;
    }
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      v55 = type metadata accessor for CMWrappedArrays();
      v69.receiver = v68;
      v69.super_class = v55;
      return objc_msgSendSuper2(&v69, sel_init);
    }

    v24 = *(v20 + 8 * v26);
    ++v18;
    if (v24)
    {
      v18 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_245F76A28();
  __break(1u);
  return result;
}

id sub_245F75094(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_245F76468();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_245F76498();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_245F76438();

    swift_willThrow();
    v11 = sub_245F76498();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_245F751F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

id sub_245F75200()
{
  v1 = v0;
  v2 = sub_245F76498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_245F76458();
  v10 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v10 setComputeUnits_];
  sub_245F76320(0, &qword_27EE38DD8, 0x277CBFF20);
  (*(v3 + 16))(v7, v9, v2);
  v11 = v10;
  v12 = sub_245F75094(v7, v11);
  if (v0)
  {

    (*(v3 + 8))(v9, v2);
  }

  else
  {
    v13 = v12;

    v14 = type metadata accessor for CMCoreMLModel();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC15CoreMotionFDNML13CMCoreMLModel_model_] = v13;
    v17.receiver = v15;
    v17.super_class = v14;
    v1 = objc_msgSendSuper2(&v17, sel_init);

    (*(v3 + 8))(v9, v2);
  }

  return v1;
}

uint64_t sub_245F75404()
{
  v1 = sub_245F768B8();
  v3 = v2;
  if (qword_27EE38B58 != -1)
  {
    swift_once();
  }

  v4 = off_27EE38D40;
  if (!*(off_27EE38D40 + 2))
  {
    goto LABEL_12;
  }

  v5 = sub_245F6C2D8(v1, v3);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = (v4[7] + 16 * v5);
  v9 = *v7;
  v8 = v7[1];

  v10 = sub_245F76868();
  v11 = [objc_opt_self() bundleWithIdentifier_];

  if (!v11)
  {

LABEL_12:
    sub_245F76368();
    swift_allocError();
    *v17 = v1;
    v17[1] = v3;
    swift_willThrow();
    return v1;
  }

  v12 = v11;
  v13 = sub_245F76868();

  v14 = sub_245F76868();
  v15 = [v12 pathForResource:v13 ofType:v14];

  if (!v15)
  {

    goto LABEL_12;
  }

  v1 = sub_245F76878();

  v16 = sub_245F75200();
  if (!v0)
  {
    v1 = v16;
  }

  return v1;
}

uint64_t sub_245F757A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F757F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_245F7584C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_245F75868(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of CMCoreMLModel.predictAsync(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_245F75A28;

  return v8(a1);
}

uint64_t sub_245F75A28(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_245F75B24()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_245F75B6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_245F75C20;

  return sub_245F734F4(v2, v3, v4);
}

uint64_t sub_245F75C20()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_245F75D18()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_245F763CC;

  return sub_245F73B1C(v2, v3, v5);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_245F75E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_245F763D0;

  return sub_245F73C04(a1, v4, v5, v7);
}

uint64_t sub_245F75EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F75F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245F75FBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_245F75FF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_245F763D4;

  return sub_245F7409C(a1, v5);
}

uint64_t sub_245F760AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_245F76164;

  return sub_245F7409C(a1, v5);
}

uint64_t sub_245F76164()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_245F76258()
{
  result = qword_27EE38DC8;
  if (!qword_27EE38DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE38D00, &qword_245F79808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38DC8);
  }

  return result;
}

uint64_t sub_245F762BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F76320(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_245F76368()
{
  result = qword_27EE38DE0;
  if (!qword_27EE38DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38DE0);
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}