void *sub_10001BC2C(uint64_t a1, void (*a2)(void))
{
  object = v2;
  a2(0);
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v5 setResultType:4];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002AD50;
  v7 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:-172800.0];
  *(v6 + 56) = sub_100003E20(0, &qword_100047358, NSDate_ptr);
  *(v6 + 64) = sub_10002764C();
  *(v6 + 32) = v7;
  v8 = sub_100029118();
  [v5 setPredicate:v8];

  v9 = ceil(*(a1 + 16) * 0.25);
  if (v9 == INFINITY)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = v9;
  v11 = *(object + 24);
  object = 0;
  result = sub_100029228();
  if (result <= 0)
  {
    goto LABEL_9;
  }

  v13 = ceil(vcvtd_n_f64_u64(result, 1uLL));
  if (v13 == INFINITY)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v10 = v13;
  sub_100029388(49);

  v20[1] = 0x800000010002EB40;
  v21._countAndFlagsBits = sub_100029408();
  object = v21._object;
  sub_100028FE8(v21);

  v22._object = 0x800000010002EB60;
  v22._countAndFlagsBits = 0xD000000000000011;
  sub_100028FE8(v22);
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001ELL, 0x800000010002EB40);

LABEL_9:
  v20[0] = a1;

  v8 = v20;
  sub_100026024();
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease();
    sub_100026258(v8, (v8 + 4), 0, object);
    goto LABEL_19;
  }

  v8 = v20[0];
  v14 = *(v20[0] + 16);
  if (v14 >= v10)
  {
    v14 = v10;
  }

  v15 = 2 * v14;
  if (v10)
  {
    object = v15 + 1;
  }

  else
  {
    object = 1;
  }

  sub_100029438();
  swift_unknownObjectRetain_n();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = _swiftEmptyArrayStorage;
  }

  v17 = v16[2];

  if (v17 != object >> 1)
  {
    goto LABEL_26;
  }

  v18 = swift_dynamicCastClass();
  if (v18)
  {
LABEL_19:
    v19 = v18;
    swift_unknownObjectRelease();

    return v19;
  }

  swift_unknownObjectRelease_n();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10001BFDC(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10001BFFC, 0, 0);
}

uint64_t sub_10001BFFC()
{
  v21 = v0;
  v1 = v0[9];
  v20 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_23:
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_1000293D8();
    v2 = v0[9];
  }

  else
  {
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = v1;
  }

  v3 = 0;
  v4 = v0[10];
  v5 = v1 & 0xC000000000000001;
  v6 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
LABEL_4:
  v17 = v7;
  v0[11] = v7;
  while (v19 != v3)
  {
    if (v5)
    {
      v11 = v0[9];
      v8 = sub_1000293B8();
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v1 = *(v4 + 24);
    *(swift_task_alloc() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473A0, &qword_10002BF60);
    sub_100029218();

    ++v3;
    if (v0[8])
    {
      sub_100029028();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100029058();
      }

      v1 = &v20;
      sub_100029068();
      v7 = v20;
      v3 = v10;
      goto LABEL_4;
    }
  }

  if (v17 >> 62)
  {
    if (sub_1000293D8())
    {
      goto LABEL_18;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_10001C2A8;
    v14 = v0[10];

    return sub_100020C5C(v17);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001C2A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_100027E48;
  }

  else
  {
    v8 = *(v4 + 88);

    *(v4 + 112) = a1;
    v7 = sub_10001C3D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001C3D8()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(v0[10] + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100027BAC;
  *(v5 + 24) = v4;
  v0[6] = sub_100027D6C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_233;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_10001C570(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10001C590, 0, 0);
}

uint64_t sub_10001C590()
{
  v21 = v0;
  v1 = v0[9];
  v20 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_23:
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_1000293D8();
    v2 = v0[9];
  }

  else
  {
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = v1;
  }

  v3 = 0;
  v4 = v0[10];
  v5 = v1 & 0xC000000000000001;
  v6 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
LABEL_4:
  v17 = v7;
  v0[11] = v7;
  while (v19 != v3)
  {
    if (v5)
    {
      v11 = v0[9];
      v8 = sub_1000293B8();
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v1 = *(v4 + 24);
    *(swift_task_alloc() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473A0, &qword_10002BF60);
    sub_100029218();

    ++v3;
    if (v0[8])
    {
      sub_100029028();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100029058();
      }

      v1 = &v20;
      sub_100029068();
      v7 = v20;
      v3 = v10;
      goto LABEL_4;
    }
  }

  if (v17 >> 62)
  {
    if (sub_1000293D8())
    {
      goto LABEL_18;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_10001C83C;
    v14 = v0[10];

    return sub_100020C5C(v17);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001C83C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_100027E48;
  }

  else
  {
    v8 = *(v4 + 88);

    *(v4 + 112) = a1;
    v7 = sub_10001C96C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001C96C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(v0[10] + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100027B28;
  *(v5 + 24) = v4;
  v0[6] = sub_100027D6C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_208;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_10001CB04(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10001CB24, 0, 0);
}

uint64_t sub_10001CB24()
{
  v21 = v0;
  v1 = v0[9];
  v20 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_23:
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_1000293D8();
    v2 = v0[9];
  }

  else
  {
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = v1;
  }

  v3 = 0;
  v4 = v0[10];
  v5 = v1 & 0xC000000000000001;
  v6 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
LABEL_4:
  v17 = v7;
  v0[11] = v7;
  while (v19 != v3)
  {
    if (v5)
    {
      v11 = v0[9];
      v8 = sub_1000293B8();
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v1 = *(v4 + 24);
    *(swift_task_alloc() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473A0, &qword_10002BF60);
    sub_100029218();

    ++v3;
    if (v0[8])
    {
      sub_100029028();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100029058();
      }

      v1 = &v20;
      sub_100029068();
      v7 = v20;
      v3 = v10;
      goto LABEL_4;
    }
  }

  if (v17 >> 62)
  {
    if (sub_1000293D8())
    {
      goto LABEL_18;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_10001CDD0;
    v14 = v0[10];

    return sub_100020C5C(v17);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001CDD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_100027E48;
  }

  else
  {
    v8 = *(v4 + 88);

    *(v4 + 112) = a1;
    v7 = sub_10001CF00;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001CF00()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(v0[10] + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100027A9C;
  *(v5 + 24) = v4;
  v0[6] = sub_100027D6C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_185;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_10001D098(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10001D0B8, 0, 0);
}

uint64_t sub_10001D0B8()
{
  v21 = v0;
  v1 = v0[9];
  v20 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_23:
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_1000293D8();
    v2 = v0[9];
  }

  else
  {
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = v1;
  }

  v3 = 0;
  v4 = v0[10];
  v5 = v1 & 0xC000000000000001;
  v6 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
LABEL_4:
  v17 = v7;
  v0[11] = v7;
  while (v19 != v3)
  {
    if (v5)
    {
      v11 = v0[9];
      v8 = sub_1000293B8();
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v1 = *(v4 + 24);
    *(swift_task_alloc() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473A0, &qword_10002BF60);
    sub_100029218();

    ++v3;
    if (v0[8])
    {
      sub_100029028();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100029058();
      }

      v1 = &v20;
      sub_100029068();
      v7 = v20;
      v3 = v10;
      goto LABEL_4;
    }
  }

  if (v17 >> 62)
  {
    if (sub_1000293D8())
    {
      goto LABEL_18;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_10001D364;
    v14 = v0[10];

    return sub_100020C5C(v17);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001D364(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_10001D62C;
  }

  else
  {
    v8 = *(v4 + 88);

    *(v4 + 112) = a1;
    v7 = sub_10001D494;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001D494()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(v0[10] + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000279E4;
  *(v5 + 24) = v4;
  v0[6] = sub_100027D6C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_152;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_10001D62C()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_10001D690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return _swift_task_switch(sub_10001D6BC, 0, 0);
}

uint64_t sub_10001D6BC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = *(v2 + 24);
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047338, &qword_10002BED0);
  sub_100029218();
  v7 = v0[9];

  if (!v7)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = 0;
  v30 = v0[3];
  v31 = v0[2];
  v33 = *(v30 + 16);
  v10 = v0[9];
  while (1)
  {
    v11 = v33 >= v9;
    if (v10 > 0)
    {
      v11 = v9 >= v33;
    }

    if (v11 || (sub_1000290E8() & 1) != 0)
    {
      break;
    }

    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    v15 = v0[9];
    if (__OFADD__(v9, v15))
    {
      v16 = ((v9 + v15) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v16 = v9 + v15;
    }

    v17 = swift_task_alloc();
    v17[2] = v9;
    v17[3] = v15;
    v17[4] = v30;
    v17[5] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047340, &qword_10002BED8);
    sub_100029218();

    v12(v0[2]);

    sub_100029218();
    v9 = v16;
  }

  v18 = v0[12];

  v19 = swift_allocObject();
  *(v19 + 16) = sub_100027D70;
  *(v19 + 24) = v18;
  v0[6] = sub_100027D6C;
  v0[7] = v19;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_52;
  v20 = _Block_copy(v0 + 2);
  v21 = v0[7];

  [v5 performBlockAndWait:v20];
  _Block_release(v20);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    goto LABEL_16;
  }

  v32 = v0[14];
  v22 = v0[12];
  v23 = v0[8];
  v24 = v0[9];
  sub_100029388(60);
  v35._object = 0x800000010002E4E0;
  v35._countAndFlagsBits = 0xD000000000000014;
  sub_100028FE8(v35);
  v0[2] = v33;
  v36._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v36);

  v37._countAndFlagsBits = 0xD000000000000015;
  v37._object = 0x800000010002E500;
  sub_100028FE8(v37);
  v0[2] = v24;
  v38._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v38);

  v39._countAndFlagsBits = 0x71657220726F6620;
  v39._object = 0xED00002074736575;
  sub_100028FE8(v39);
  v25 = [v23 description];
  v26 = sub_100028F88();
  v28 = v27;

  v40._countAndFlagsBits = v26;
  v40._object = v28;
  sub_100028FE8(v40);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

  v29 = v0[1];

  return v29();
}

uint64_t sub_10001DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_10001DBA4, 0, 0);
}

uint64_t sub_10001DBA4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[19] = *(v1 + 24);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047338, &qword_10002BED0);
  sub_100029218();
  v6 = v0[14];

  result = v0[9];
  v0[20] = v0[8];
  v0[21] = result;
  v8 = *(result + 16);
  v0[22] = v8;
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v0[14];
  if (v9 < 1 || !v8 || (v0[23] = v9, v10 = sub_1000290E8(), v12 = v0[20], v11 = v0[21], (v10 & 1) != 0))
  {
    v13 = v0[19];
    v14 = v0[17];

    v15 = swift_allocObject();
    *(v15 + 16) = sub_100027D70;
    *(v15 + 24) = v14;
    v0[6] = sub_100027D6C;
    v0[7] = v15;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100015128;
    v0[5] = &block_descriptor_221;
    v16 = _Block_copy(v0 + 2);
    v17 = v0[7];

    [v13 performBlockAndWait:v16];
    _Block_release(v16);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v18 = v0[22];
      v20 = v0[17];
      v19 = v0[18];
      v21 = v0[13];
      v22 = v0[14];
      sub_100029388(60);
      v36._object = 0x800000010002E4E0;
      v36._countAndFlagsBits = 0xD000000000000014;
      sub_100028FE8(v36);
      v0[11] = v18;
      v37._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v37);

      v38._countAndFlagsBits = 0xD000000000000015;
      v38._object = 0x800000010002E500;
      sub_100028FE8(v38);
      v0[12] = v22;
      v39._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v39);

      v40._countAndFlagsBits = 0x71657220726F6620;
      v40._object = 0xED00002074736575;
      sub_100028FE8(v40);
      v23 = [v21 description];
      v24 = sub_100028F88();
      v26 = v25;

      v41._countAndFlagsBits = v24;
      v41._object = v26;
      sub_100028FE8(v41);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

      v27 = v0[1];

      return v27();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v28 = v0[19];
  v29 = v0[14];
  v30 = v0[21];
  v31 = swift_task_alloc();
  v31[2] = 0;
  v31[3] = v29;
  v31[4] = v30;
  v31[5] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047340, &qword_10002BED8);
  sub_100029218();

  v32 = v0[10];
  v0[24] = v32;
  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = sub_10001E044;
  v34 = v0[18];

  return sub_10001BFDC(v32);
}

uint64_t sub_10001E044()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v7 = v2[20];
    v6 = v2[21];

    v8 = sub_100027D68;
  }

  else
  {

    v8 = sub_10001E190;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10001E190()
{
  v1 = v0[13].i64[0];
  v2 = v0[9].i64[1];
  v3 = v0[8].i64[1];
  sub_100029218();
  if (v1)
  {
    v4 = v0[10].i64[0];
    v5 = v0[10].i64[1];
    v6 = v0[9].i64[0];

    v7 = v0->i64[1];
LABEL_11:

    return v7();
  }

  v8 = v0[11].i64[0];
  v9 = v0[11].i64[1];
  v10 = v0[7].i64[0];
  v11 = v8 >= v9;
  v12 = v9 >= v8;
  if (v10 <= 0)
  {
    v12 = v11;
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = __OFADD__(v9, v10);
  v14 = v9 + v10;
  if (v13)
  {
    v14 = (v14 >> 63) ^ 0x8000000000000000;
  }

  v0[11].i64[1] = v14;
  if (sub_1000290E8())
  {
LABEL_9:
    v16 = v0[10].i64[0];
    v15 = v0[10].i64[1];
    v17 = v0[9].i64[1];
    v18 = v0[8].i64[1];

    v19 = swift_allocObject();
    *(v19 + 16) = sub_100027D70;
    *(v19 + 24) = v18;
    v0[3].i64[0] = sub_100027D6C;
    v0[3].i64[1] = v19;
    v0[1].i64[0] = _NSConcreteStackBlock;
    v0[1].i64[1] = 1107296256;
    v0[2].i64[0] = sub_100015128;
    v0[2].i64[1] = &block_descriptor_221;
    v20 = _Block_copy(&v0[1]);
    v21 = v0[3].i64[1];

    [v17 performBlockAndWait:v20];
    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
      return result;
    }

    v23 = v0[11].i64[0];
    v25 = v0[8].i64[1];
    v24 = v0[9].i64[0];
    v26 = v0[6].i64[1];
    v27 = v0[7].i64[0];
    sub_100029388(60);
    v40._object = 0x800000010002E4E0;
    v40._countAndFlagsBits = 0xD000000000000014;
    sub_100028FE8(v40);
    v0[5].i64[1] = v23;
    v41._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v41);

    v42._countAndFlagsBits = 0xD000000000000015;
    v42._object = 0x800000010002E500;
    sub_100028FE8(v42);
    v0[6].i64[0] = v27;
    v43._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v43);

    v44._countAndFlagsBits = 0x71657220726F6620;
    v44._object = 0xED00002074736575;
    sub_100028FE8(v44);
    v28 = [v26 description];
    v29 = sub_100028F88();
    v31 = v30;

    v45._countAndFlagsBits = v29;
    v45._object = v31;
    sub_100028FE8(v45);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

    v7 = v0->i64[1];
    goto LABEL_11;
  }

  v32 = v0[9].i64[1];
  v33 = v0[7].i64[0];
  v34 = swift_task_alloc();
  v35 = v0[10];
  v34[1].i64[0] = v9;
  v34[1].i64[1] = v33;
  v34[2] = vextq_s8(v35, v35, 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047340, &qword_10002BED8);
  sub_100029218();

  v36 = v0[5].i64[0];
  v0[12].i64[0] = v36;
  v37 = swift_task_alloc();
  v0[12].i64[1] = v37;
  *v37 = v0;
  v37[1] = sub_10001E044;
  v38 = v0[9].i64[0];

  return sub_10001BFDC(v36);
}

uint64_t sub_10001E608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return _swift_task_switch(sub_10001E634, 0, 0);
}

uint64_t sub_10001E634()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = *(v2 + 24);
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472D8, &qword_10002BEA0);
  sub_100029218();
  v7 = v0[9];

  if (!v7)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = 0;
  v30 = v0[3];
  v31 = v0[2];
  v33 = *(v30 + 16);
  v10 = v0[9];
  while (1)
  {
    v11 = v33 >= v9;
    if (v10 > 0)
    {
      v11 = v9 >= v33;
    }

    if (v11 || (sub_1000290E8() & 1) != 0)
    {
      break;
    }

    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    v15 = v0[9];
    if (__OFADD__(v9, v15))
    {
      v16 = ((v9 + v15) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v16 = v9 + v15;
    }

    v17 = swift_task_alloc();
    v17[2] = v9;
    v17[3] = v15;
    v17[4] = v30;
    v17[5] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472E0, &qword_10002BEA8);
    sub_100029218();

    v12(v0[2]);

    sub_100029218();
    v9 = v16;
  }

  v18 = v0[12];

  v19 = swift_allocObject();
  *(v19 + 16) = sub_100026D70;
  *(v19 + 24) = v18;
  v0[6] = sub_100026D80;
  v0[7] = v19;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100015128;
  v0[5] = &block_descriptor_2;
  v20 = _Block_copy(v0 + 2);
  v21 = v0[7];

  [v5 performBlockAndWait:v20];
  _Block_release(v20);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    goto LABEL_16;
  }

  v32 = v0[14];
  v22 = v0[12];
  v23 = v0[8];
  v24 = v0[9];
  sub_100029388(60);
  v35._object = 0x800000010002E4E0;
  v35._countAndFlagsBits = 0xD000000000000014;
  sub_100028FE8(v35);
  v0[2] = v33;
  v36._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v36);

  v37._countAndFlagsBits = 0xD000000000000015;
  v37._object = 0x800000010002E500;
  sub_100028FE8(v37);
  v0[2] = v24;
  v38._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v38);

  v39._countAndFlagsBits = 0x71657220726F6620;
  v39._object = 0xED00002074736575;
  sub_100028FE8(v39);
  v25 = [v23 description];
  v26 = sub_100028F88();
  v28 = v27;

  v40._countAndFlagsBits = v26;
  v40._object = v28;
  sub_100028FE8(v40);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

  v29 = v0[1];

  return v29();
}

uint64_t sub_10001EAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_10001EB1C, 0, 0);
}

uint64_t sub_10001EB1C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[19] = *(v1 + 24);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472D8, &qword_10002BEA0);
  sub_100029218();
  v6 = v0[14];

  result = v0[9];
  v0[20] = v0[8];
  v0[21] = result;
  v8 = *(result + 16);
  v0[22] = v8;
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v0[14];
  if (v9 < 1 || !v8 || (v0[23] = v9, v10 = sub_1000290E8(), v12 = v0[20], v11 = v0[21], (v10 & 1) != 0))
  {
    v13 = v0[19];
    v14 = v0[17];

    v15 = swift_allocObject();
    *(v15 + 16) = sub_100027D70;
    *(v15 + 24) = v14;
    v0[6] = sub_100027D6C;
    v0[7] = v15;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100015128;
    v0[5] = &block_descriptor_173;
    v16 = _Block_copy(v0 + 2);
    v17 = v0[7];

    [v13 performBlockAndWait:v16];
    _Block_release(v16);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v18 = v0[22];
      v20 = v0[17];
      v19 = v0[18];
      v21 = v0[13];
      v22 = v0[14];
      sub_100029388(60);
      v36._object = 0x800000010002E4E0;
      v36._countAndFlagsBits = 0xD000000000000014;
      sub_100028FE8(v36);
      v0[11] = v18;
      v37._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v37);

      v38._countAndFlagsBits = 0xD000000000000015;
      v38._object = 0x800000010002E500;
      sub_100028FE8(v38);
      v0[12] = v22;
      v39._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v39);

      v40._countAndFlagsBits = 0x71657220726F6620;
      v40._object = 0xED00002074736575;
      sub_100028FE8(v40);
      v23 = [v21 description];
      v24 = sub_100028F88();
      v26 = v25;

      v41._countAndFlagsBits = v24;
      v41._object = v26;
      sub_100028FE8(v41);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

      v27 = v0[1];

      return v27();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v28 = v0[19];
  v29 = v0[14];
  v30 = v0[21];
  v31 = swift_task_alloc();
  v31[2] = 0;
  v31[3] = v29;
  v31[4] = v30;
  v31[5] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472E0, &qword_10002BEA8);
  sub_100029218();

  v32 = v0[10];
  v0[24] = v32;
  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = sub_10001EFBC;
  v34 = v0[18];

  return sub_10001CB04(v32);
}

uint64_t sub_10001EFBC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v7 = v2[20];
    v6 = v2[21];

    v8 = sub_10001F580;
  }

  else
  {

    v8 = sub_10001F108;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10001F108()
{
  v1 = v0[13].i64[0];
  v2 = v0[9].i64[1];
  v3 = v0[8].i64[1];
  sub_100029218();
  if (v1)
  {
    v4 = v0[10].i64[0];
    v5 = v0[10].i64[1];
    v6 = v0[9].i64[0];

    v7 = v0->i64[1];
LABEL_11:

    return v7();
  }

  v8 = v0[11].i64[0];
  v9 = v0[11].i64[1];
  v10 = v0[7].i64[0];
  v11 = v8 >= v9;
  v12 = v9 >= v8;
  if (v10 <= 0)
  {
    v12 = v11;
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = __OFADD__(v9, v10);
  v14 = v9 + v10;
  if (v13)
  {
    v14 = (v14 >> 63) ^ 0x8000000000000000;
  }

  v0[11].i64[1] = v14;
  if (sub_1000290E8())
  {
LABEL_9:
    v16 = v0[10].i64[0];
    v15 = v0[10].i64[1];
    v17 = v0[9].i64[1];
    v18 = v0[8].i64[1];

    v19 = swift_allocObject();
    *(v19 + 16) = sub_100027D70;
    *(v19 + 24) = v18;
    v0[3].i64[0] = sub_100027D6C;
    v0[3].i64[1] = v19;
    v0[1].i64[0] = _NSConcreteStackBlock;
    v0[1].i64[1] = 1107296256;
    v0[2].i64[0] = sub_100015128;
    v0[2].i64[1] = &block_descriptor_173;
    v20 = _Block_copy(&v0[1]);
    v21 = v0[3].i64[1];

    [v17 performBlockAndWait:v20];
    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
      return result;
    }

    v23 = v0[11].i64[0];
    v25 = v0[8].i64[1];
    v24 = v0[9].i64[0];
    v26 = v0[6].i64[1];
    v27 = v0[7].i64[0];
    sub_100029388(60);
    v40._object = 0x800000010002E4E0;
    v40._countAndFlagsBits = 0xD000000000000014;
    sub_100028FE8(v40);
    v0[5].i64[1] = v23;
    v41._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v41);

    v42._countAndFlagsBits = 0xD000000000000015;
    v42._object = 0x800000010002E500;
    sub_100028FE8(v42);
    v0[6].i64[0] = v27;
    v43._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v43);

    v44._countAndFlagsBits = 0x71657220726F6620;
    v44._object = 0xED00002074736575;
    sub_100028FE8(v44);
    v28 = [v26 description];
    v29 = sub_100028F88();
    v31 = v30;

    v45._countAndFlagsBits = v29;
    v45._object = v31;
    sub_100028FE8(v45);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

    v7 = v0->i64[1];
    goto LABEL_11;
  }

  v32 = v0[9].i64[1];
  v33 = v0[7].i64[0];
  v34 = swift_task_alloc();
  v35 = v0[10];
  v34[1].i64[0] = v9;
  v34[1].i64[1] = v33;
  v34[2] = vextq_s8(v35, v35, 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472E0, &qword_10002BEA8);
  sub_100029218();

  v36 = v0[5].i64[0];
  v0[12].i64[0] = v36;
  v37 = swift_task_alloc();
  v0[12].i64[1] = v37;
  *v37 = v0;
  v37[1] = sub_10001EFBC;
  v38 = v0[9].i64[0];

  return sub_10001CB04(v36);
}

uint64_t sub_10001F580()
{
  v1 = v0[18];

  v2 = v0[26];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10001F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_10001F60C, 0, 0);
}

uint64_t sub_10001F60C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[19] = *(v1 + 24);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473C8, &qword_10002BF98);
  sub_100029218();
  v6 = v0[14];

  result = v0[9];
  v0[20] = v0[8];
  v0[21] = result;
  v8 = *(result + 16);
  v0[22] = v8;
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v0[14];
  if (v9 < 1 || !v8 || (v0[23] = v9, v10 = sub_1000290E8(), v12 = v0[20], v11 = v0[21], (v10 & 1) != 0))
  {
    v13 = v0[19];
    v14 = v0[17];

    v15 = swift_allocObject();
    *(v15 + 16) = sub_100027D70;
    *(v15 + 24) = v14;
    v0[6] = sub_100027D6C;
    v0[7] = v15;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100015128;
    v0[5] = &block_descriptor_196;
    v16 = _Block_copy(v0 + 2);
    v17 = v0[7];

    [v13 performBlockAndWait:v16];
    _Block_release(v16);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v18 = v0[22];
      v20 = v0[17];
      v19 = v0[18];
      v21 = v0[13];
      v22 = v0[14];
      sub_100029388(60);
      v36._object = 0x800000010002E4E0;
      v36._countAndFlagsBits = 0xD000000000000014;
      sub_100028FE8(v36);
      v0[11] = v18;
      v37._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v37);

      v38._countAndFlagsBits = 0xD000000000000015;
      v38._object = 0x800000010002E500;
      sub_100028FE8(v38);
      v0[12] = v22;
      v39._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v39);

      v40._countAndFlagsBits = 0x71657220726F6620;
      v40._object = 0xED00002074736575;
      sub_100028FE8(v40);
      v23 = [v21 description];
      v24 = sub_100028F88();
      v26 = v25;

      v41._countAndFlagsBits = v24;
      v41._object = v26;
      sub_100028FE8(v41);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

      v27 = v0[1];

      return v27();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v28 = v0[19];
  v29 = v0[14];
  v30 = v0[21];
  v31 = swift_task_alloc();
  v31[2] = 0;
  v31[3] = v29;
  v31[4] = v30;
  v31[5] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000473D0, &qword_10002BFA0);
  sub_100029218();

  v32 = v0[10];
  v0[24] = v32;
  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = sub_10001FAAC;
  v34 = v0[18];

  return sub_10001C570(v32);
}

uint64_t sub_10001FAAC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v7 = v2[20];
    v6 = v2[21];

    v8 = sub_100027D68;
  }

  else
  {

    v8 = sub_10001FBF8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10001FBF8()
{
  v1 = v0[13].i64[0];
  v2 = v0[9].i64[1];
  v3 = v0[8].i64[1];
  sub_100029218();
  if (v1)
  {
    v4 = v0[10].i64[0];
    v5 = v0[10].i64[1];
    v6 = v0[9].i64[0];

    v7 = v0->i64[1];
LABEL_11:

    return v7();
  }

  v8 = v0[11].i64[0];
  v9 = v0[11].i64[1];
  v10 = v0[7].i64[0];
  v11 = v8 >= v9;
  v12 = v9 >= v8;
  if (v10 <= 0)
  {
    v12 = v11;
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = __OFADD__(v9, v10);
  v14 = v9 + v10;
  if (v13)
  {
    v14 = (v14 >> 63) ^ 0x8000000000000000;
  }

  v0[11].i64[1] = v14;
  if (sub_1000290E8())
  {
LABEL_9:
    v16 = v0[10].i64[0];
    v15 = v0[10].i64[1];
    v17 = v0[9].i64[1];
    v18 = v0[8].i64[1];

    v19 = swift_allocObject();
    *(v19 + 16) = sub_100027D70;
    *(v19 + 24) = v18;
    v0[3].i64[0] = sub_100027D6C;
    v0[3].i64[1] = v19;
    v0[1].i64[0] = _NSConcreteStackBlock;
    v0[1].i64[1] = 1107296256;
    v0[2].i64[0] = sub_100015128;
    v0[2].i64[1] = &block_descriptor_196;
    v20 = _Block_copy(&v0[1]);
    v21 = v0[3].i64[1];

    [v17 performBlockAndWait:v20];
    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
      return result;
    }

    v23 = v0[11].i64[0];
    v25 = v0[8].i64[1];
    v24 = v0[9].i64[0];
    v26 = v0[6].i64[1];
    v27 = v0[7].i64[0];
    sub_100029388(60);
    v40._object = 0x800000010002E4E0;
    v40._countAndFlagsBits = 0xD000000000000014;
    sub_100028FE8(v40);
    v0[5].i64[1] = v23;
    v41._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v41);

    v42._countAndFlagsBits = 0xD000000000000015;
    v42._object = 0x800000010002E500;
    sub_100028FE8(v42);
    v0[6].i64[0] = v27;
    v43._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v43);

    v44._countAndFlagsBits = 0x71657220726F6620;
    v44._object = 0xED00002074736575;
    sub_100028FE8(v44);
    v28 = [v26 description];
    v29 = sub_100028F88();
    v31 = v30;

    v45._countAndFlagsBits = v29;
    v45._object = v31;
    sub_100028FE8(v45);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

    v7 = v0->i64[1];
    goto LABEL_11;
  }

  v32 = v0[9].i64[1];
  v33 = v0[7].i64[0];
  v34 = swift_task_alloc();
  v35 = v0[10];
  v34[1].i64[0] = v9;
  v34[1].i64[1] = v33;
  v34[2] = vextq_s8(v35, v35, 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000473D0, &qword_10002BFA0);
  sub_100029218();

  v36 = v0[5].i64[0];
  v0[12].i64[0] = v36;
  v37 = swift_task_alloc();
  v0[12].i64[1] = v37;
  *v37 = v0;
  v37[1] = sub_10001FAAC;
  v38 = v0[9].i64[0];

  return sub_10001C570(v36);
}

uint64_t sub_100020070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_100020098, 0, 0);
}

uint64_t sub_100020098()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[19] = *(v1 + 24);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047390, &qword_10002BF48);
  sub_100029218();
  v6 = v0[14];

  result = v0[9];
  v0[20] = v0[8];
  v0[21] = result;
  v8 = *(result + 16);
  v0[22] = v8;
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v0[14];
  if (v9 < 1 || !v8 || (v0[23] = v9, v10 = sub_1000290E8(), v12 = v0[20], v11 = v0[21], (v10 & 1) != 0))
  {
    v13 = v0[19];
    v14 = v0[17];

    v15 = swift_allocObject();
    *(v15 + 16) = sub_100027D70;
    *(v15 + 24) = v14;
    v0[6] = sub_100027D6C;
    v0[7] = v15;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100015128;
    v0[5] = &block_descriptor_140;
    v16 = _Block_copy(v0 + 2);
    v17 = v0[7];

    [v13 performBlockAndWait:v16];
    _Block_release(v16);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v18 = v0[22];
      v20 = v0[17];
      v19 = v0[18];
      v21 = v0[13];
      v22 = v0[14];
      sub_100029388(60);
      v36._object = 0x800000010002E4E0;
      v36._countAndFlagsBits = 0xD000000000000014;
      sub_100028FE8(v36);
      v0[11] = v18;
      v37._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v37);

      v38._countAndFlagsBits = 0xD000000000000015;
      v38._object = 0x800000010002E500;
      sub_100028FE8(v38);
      v0[12] = v22;
      v39._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v39);

      v40._countAndFlagsBits = 0x71657220726F6620;
      v40._object = 0xED00002074736575;
      sub_100028FE8(v40);
      v23 = [v21 description];
      v24 = sub_100028F88();
      v26 = v25;

      v41._countAndFlagsBits = v24;
      v41._object = v26;
      sub_100028FE8(v41);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

      v27 = v0[1];

      return v27();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v28 = v0[19];
  v29 = v0[14];
  v30 = v0[21];
  v31 = swift_task_alloc();
  v31[2] = 0;
  v31[3] = v29;
  v31[4] = v30;
  v31[5] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047398, &qword_10002BF50);
  sub_100029218();

  v32 = v0[10];
  v0[24] = v32;
  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = sub_100020538;
  v34 = v0[18];

  return sub_10001D098(v32);
}

uint64_t sub_100020538()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v7 = v2[20];
    v6 = v2[21];

    v8 = sub_100027D68;
  }

  else
  {

    v8 = sub_100020684;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100020684()
{
  v1 = v0[13].i64[0];
  v2 = v0[9].i64[1];
  v3 = v0[8].i64[1];
  sub_100029218();
  if (v1)
  {
    v4 = v0[10].i64[0];
    v5 = v0[10].i64[1];
    v6 = v0[9].i64[0];

    v7 = v0->i64[1];
LABEL_11:

    return v7();
  }

  v8 = v0[11].i64[0];
  v9 = v0[11].i64[1];
  v10 = v0[7].i64[0];
  v11 = v8 >= v9;
  v12 = v9 >= v8;
  if (v10 <= 0)
  {
    v12 = v11;
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = __OFADD__(v9, v10);
  v14 = v9 + v10;
  if (v13)
  {
    v14 = (v14 >> 63) ^ 0x8000000000000000;
  }

  v0[11].i64[1] = v14;
  if (sub_1000290E8())
  {
LABEL_9:
    v16 = v0[10].i64[0];
    v15 = v0[10].i64[1];
    v17 = v0[9].i64[1];
    v18 = v0[8].i64[1];

    v19 = swift_allocObject();
    *(v19 + 16) = sub_100027D70;
    *(v19 + 24) = v18;
    v0[3].i64[0] = sub_100027D6C;
    v0[3].i64[1] = v19;
    v0[1].i64[0] = _NSConcreteStackBlock;
    v0[1].i64[1] = 1107296256;
    v0[2].i64[0] = sub_100015128;
    v0[2].i64[1] = &block_descriptor_140;
    v20 = _Block_copy(&v0[1]);
    v21 = v0[3].i64[1];

    [v17 performBlockAndWait:v20];
    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
      return result;
    }

    v23 = v0[11].i64[0];
    v25 = v0[8].i64[1];
    v24 = v0[9].i64[0];
    v26 = v0[6].i64[1];
    v27 = v0[7].i64[0];
    sub_100029388(60);
    v40._object = 0x800000010002E4E0;
    v40._countAndFlagsBits = 0xD000000000000014;
    sub_100028FE8(v40);
    v0[5].i64[1] = v23;
    v41._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v41);

    v42._countAndFlagsBits = 0xD000000000000015;
    v42._object = 0x800000010002E500;
    sub_100028FE8(v42);
    v0[6].i64[0] = v27;
    v43._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v43);

    v44._countAndFlagsBits = 0x71657220726F6620;
    v44._object = 0xED00002074736575;
    sub_100028FE8(v44);
    v28 = [v26 description];
    v29 = sub_100028F88();
    v31 = v30;

    v45._countAndFlagsBits = v29;
    v45._object = v31;
    sub_100028FE8(v45);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

    v7 = v0->i64[1];
    goto LABEL_11;
  }

  v32 = v0[9].i64[1];
  v33 = v0[7].i64[0];
  v34 = swift_task_alloc();
  v35 = v0[10];
  v34[1].i64[0] = v9;
  v34[1].i64[1] = v33;
  v34[2] = vextq_s8(v35, v35, 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047398, &qword_10002BF50);
  sub_100029218();

  v36 = v0[5].i64[0];
  v0[12].i64[0] = v36;
  v37 = swift_task_alloc();
  v0[12].i64[1] = v37;
  *v37 = v0;
  v37[1] = sub_100020538;
  v38 = v0[9].i64[0];

  return sub_10001D098(v36);
}

id sub_100020AFC(void *a1)
{
  v2 = [a1 mapItemStorage];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100028D28();
    v6 = v5;

    v7 = objc_allocWithZone(GEOMapItemStorage);
    sub_100011160(v4, v6);
    isa = sub_100028D18().super.isa;
    sub_1000110C8(v4, v6);
    v9 = [v7 initWithData:isa];

    sub_1000110C8(v4, v6);
    if (v9)
    {
      v10 = [v9 _identifier];

      if (v10)
      {
        v11 = [v10 isValid];
        result = v10;
        if (v11)
        {
          return result;
        }
      }
    }
  }

  result = [a1 muid];
  if (result)
  {
    return [objc_allocWithZone(GEOMapItemIdentifier) initWithMUID:objc_msgSend(a1 resultProviderID:"muid") coordinate:{0, -180.0, -180.0}];
  }

  return result;
}

uint64_t sub_100020C5C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100020C7C, 0, 0);
}

uint64_t sub_100020C7C()
{
  v1 = [objc_opt_self() sharedService];
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 defaultTraits];
    v0[6] = v3;
    if (v3)
    {
      v4 = v0[3];
      v5 = v0[4];
      v6 = v3;
      [v3 setAnalyticsOptOut:1];
      sub_100003E20(0, &qword_1000473A8, GEOMapItemIdentifier_ptr);
      isa = sub_100029038().super.isa;
      v8 = [v2 ticketForIdentifiers:isa traits:v6];
      v0[7] = v8;

      v9 = swift_task_alloc();
      v0[8] = v9;
      *(v9 + 16) = v8;
      *(v9 + 24) = v5;
      v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v11 = swift_task_alloc();
      v0[9] = v11;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B0, &qword_10002BF78);
      *v11 = v0;
      v11[1] = sub_100020E78;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x800000010002EAE0, sub_1000279EC, v9, v12);
    }
  }

  v13 = v0[1];

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100020E78()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10002100C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100020F94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100020F94()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  swift_unknownObjectRelease();
  v3 = *(v0 + 16);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10002100C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  swift_unknownObjectRelease();

  v4 = *(v0 + 8);
  v5 = *(v0 + 80);

  return v4();
}

uint64_t sub_100021090(unint64_t a1, uint64_t a2)
{
  v4 = sub_100028D98();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v49 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100028D88();
  v42 = v4;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000293D8())
  {
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v43 = a1 + 32;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v40[1] = v11;
    v51 = a2 & 0xC000000000000001;
    v12 = &selRef_initWithUnsignedLongLong_;
    v47 = a1;
    v48 = a2 >> 62;
    v45 = a1 & 0xC000000000000001;
    v46 = i;
    while (1)
    {
      while (1)
      {
        if (v9)
        {
          v13 = sub_1000293B8();
        }

        else
        {
          if (v8 >= *(v44 + 16))
          {
            goto LABEL_47;
          }

          v13 = *(v43 + 8 * v8);
        }

        v14 = v13;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_46;
        }

        if (([v13 v12[34]] & 1) == 0)
        {
          break;
        }

        if (v8 == i)
        {
          return (*(v41 + 8))(v49, v42);
        }
      }

      isa = sub_100028D48().super.isa;
      [v14 setMapItemLastRefreshed:isa];

      v50 = v8;
      a1 = v48 ? sub_1000293D8() : *(v10 + 16);
      v17 = v51;
      p_attr = &stru_100042FF8.attr;
      if (a1)
      {
        break;
      }

LABEL_39:

LABEL_40:
      i = v46;
      a1 = v47;
      v8 = v50;
      v9 = v45;
      v12 = &selRef_initWithUnsignedLongLong_;
      if (v50 == v46)
      {
        return (*(v41 + 8))(v49, v42);
      }
    }

    v19 = 0;
    v52 = v14;
    while (v17)
    {
      v20 = sub_1000293B8();
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_44;
      }

LABEL_23:
      v22 = [v14 p_attr[507]];
      if (v22)
      {
        v23 = a1;
        v24 = v22;
        v25 = [v22 mapItemStorage];

        if (v25)
        {
          v26 = v10;
          v27 = a2;
          v28 = sub_100028D28();
          v30 = v29;

          v31 = objc_allocWithZone(GEOMapItemStorage);
          sub_100011160(v28, v30);
          v32 = sub_100028D18().super.isa;
          sub_1000110C8(v28, v30);
          v33 = [v31 initWithData:v32];

          sub_1000110C8(v28, v30);
          if (v33)
          {
            v34 = [v33 _identifier];

            v10 = v26;
            if (!v34)
            {
              goto LABEL_29;
            }

            v35 = [v20 _identifier];
            if (v35)
            {
              v36 = v35;
              sub_100003E20(0, &qword_1000473A8, GEOMapItemIdentifier_ptr);
              v37 = sub_100029288();

              if (v37)
              {
                v38 = v52;
                sub_100023C58(v20);

                swift_unknownObjectRelease();
                a2 = v27;
                goto LABEL_40;
              }

LABEL_29:
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            a2 = v27;
          }

          else
          {
            swift_unknownObjectRelease();
            a2 = v27;
            v10 = v26;
          }

          v17 = v51;
          p_attr = (&stru_100042FF8 + 8);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        a1 = v23;
        v14 = v52;
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
LABEL_19:
      ++v19;
      if (v21 == a1)
      {
        goto LABEL_39;
      }
    }

    if (v19 >= *(v10 + 16))
    {
      goto LABEL_45;
    }

    v20 = *(a2 + 8 * v19 + 32);
    swift_unknownObjectRetain();
    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_23;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  return (*(v41 + 8))(v49, v42);
}

uint64_t sub_1000214CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v5 = sub_100028D98();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100028D88();
  v44 = v5;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000293D8())
  {
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v45 = a1 + 32;
    v46 = a1 & 0xFFFFFFFFFFFFFF8;
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v41 = v12;
    v53 = a2 & 0xC000000000000001;
    v13 = &selRef_initWithUnsignedLongLong_;
    v49 = a1;
    v50 = a2 >> 62;
    v47 = a1 & 0xC000000000000001;
    v48 = i;
    while (1)
    {
      while (1)
      {
        if (v10)
        {
          v14 = sub_1000293B8();
        }

        else
        {
          if (v9 >= *(v46 + 16))
          {
            goto LABEL_47;
          }

          v14 = *(v45 + 8 * v9);
        }

        v15 = v14;
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_46;
        }

        if (([v14 v13[34]] & 1) == 0)
        {
          break;
        }

        if (v9 == i)
        {
          return (*(v43 + 8))(v51, v44);
        }
      }

      isa = sub_100028D48().super.isa;
      [v15 setMapItemLastRefreshed:isa];

      v52 = v9;
      a1 = v50 ? sub_1000293D8() : *(v11 + 16);
      v18 = v53;
      p_attr = &stru_100042FF8.attr;
      if (a1)
      {
        break;
      }

LABEL_39:

LABEL_40:
      i = v48;
      a1 = v49;
      v9 = v52;
      v10 = v47;
      v13 = &selRef_initWithUnsignedLongLong_;
      if (v52 == v48)
      {
        return (*(v43 + 8))(v51, v44);
      }
    }

    v20 = 0;
    v54 = v15;
    while (v18)
    {
      v21 = sub_1000293B8();
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_44;
      }

LABEL_23:
      v23 = [v15 p_attr[507]];
      if (v23)
      {
        v24 = a1;
        v25 = v23;
        v26 = [v23 mapItemStorage];

        if (v26)
        {
          v27 = v11;
          v28 = a2;
          v29 = sub_100028D28();
          v31 = v30;

          v32 = objc_allocWithZone(GEOMapItemStorage);
          sub_100011160(v29, v31);
          v33 = sub_100028D18().super.isa;
          sub_1000110C8(v29, v31);
          v34 = [v32 initWithData:v33];

          sub_1000110C8(v29, v31);
          if (v34)
          {
            v35 = [v34 _identifier];

            v11 = v27;
            if (!v35)
            {
              goto LABEL_29;
            }

            v36 = [v21 _identifier];
            if (v36)
            {
              v37 = v36;
              sub_100003E20(0, &qword_1000473A8, GEOMapItemIdentifier_ptr);
              v38 = sub_100029288();

              if (v38)
              {
                v39 = v54;
                sub_100023400(v21, v42);

                swift_unknownObjectRelease();
                a2 = v28;
                goto LABEL_40;
              }

LABEL_29:
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            a2 = v28;
          }

          else
          {
            swift_unknownObjectRelease();
            a2 = v28;
            v11 = v27;
          }

          v18 = v53;
          p_attr = (&stru_100042FF8 + 8);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        a1 = v24;
        v15 = v54;
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
LABEL_19:
      ++v20;
      if (v22 == a1)
      {
        goto LABEL_39;
      }
    }

    if (v20 >= *(v11 + 16))
    {
      goto LABEL_45;
    }

    v21 = *(a2 + 8 * v20 + 32);
    swift_unknownObjectRetain();
    v22 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_23;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  return (*(v43 + 8))(v51, v44);
}

uint64_t sub_100021910(unint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_100028D98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100028D88();
  v32 = v4;
  v33 = v3;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
LABEL_3:
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v34 = a1 + 32;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = v43 & 0xFFFFFFFFFFFFFF8;
    v44 = v43 & 0xFFFFFFFFFFFFFF8;
    if (v43 < 0)
    {
      v10 = v43;
    }

    v31 = v10;
    v42 = v43 & 0xC000000000000001;
    v11 = &selRef_initWithUnsignedLongLong_;
    v38 = a1;
    v39 = v43 >> 62;
    v36 = a1 & 0xC000000000000001;
    v37 = v7;
    while (1)
    {
      while (1)
      {
        if (v9)
        {
          v12 = sub_1000293B8();
        }

        else
        {
          if (v8 >= *(v35 + 16))
          {
            goto LABEL_42;
          }

          v12 = *(v34 + 8 * v8);
        }

        v13 = v12;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_41;
        }

        if (([v12 v11[34]] & 1) == 0)
        {
          break;
        }

        if (v8 == v7)
        {
          return (*(v32 + 8))(v40, v33);
        }
      }

      a1 = v40;
      isa = sub_100028D48().super.isa;
      [v13 setMapItemLastRefreshed:isa];

      v41 = v8;
      if (v39)
      {
        break;
      }

      v16 = *(v44 + 16);
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_36:

LABEL_37:
      v7 = v37;
      a1 = v38;
      v9 = v36;
      v11 = &selRef_initWithUnsignedLongLong_;
      v8 = v41;
      if (v41 == v37)
      {
        return (*(v32 + 8))(v40, v33);
      }
    }

    v16 = sub_1000293D8();
    if (!v16)
    {
      goto LABEL_36;
    }

LABEL_15:
    v17 = 0;
    while (1)
    {
      if (v42)
      {
        v18 = sub_1000293B8();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v17 >= *(v44 + 16))
        {
          goto LABEL_40;
        }

        v18 = *(v43 + 8 * v17 + 32);
        swift_unknownObjectRetain();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v7 = sub_1000293D8();
          if (!v7)
          {
            return (*(v32 + 8))(v40, v33);
          }

          goto LABEL_3;
        }
      }

      v20 = [v13 mapItemStorage];
      if (!v20)
      {
        goto LABEL_47;
      }

      v21 = v20;
      v22 = sub_100028D28();
      v24 = v23;

      v25 = objc_allocWithZone(GEOMapItemStorage);
      sub_100011160(v22, v24);
      v26 = sub_100028D18().super.isa;
      sub_1000110C8(v22, v24);
      a1 = [v25 initWithData:v26];

      sub_1000110C8(v22, v24);
      if (!a1)
      {
        goto LABEL_47;
      }

      v27 = [a1 _identifier];

      if (v27)
      {
        v28 = [v18 _identifier];
        if (!v28)
        {
          swift_unknownObjectRelease();

          goto LABEL_28;
        }

        v29 = v28;
        sub_100003E20(0, &qword_1000473A8, GEOMapItemIdentifier_ptr);
        a1 = sub_100029288();

        if (a1)
        {
          goto LABEL_34;
        }
      }

      else
      {
LABEL_47:
        if ([v13 muid])
        {
          a1 = [v18 _muid];
          if (a1 == [v13 muid])
          {
LABEL_34:
            sub_100023E1C(v18);

            swift_unknownObjectRelease();
            goto LABEL_37;
          }
        }
      }

      swift_unknownObjectRelease();
LABEL_28:
      ++v17;
      if (v19 == v16)
      {
        goto LABEL_36;
      }
    }
  }

  return (*(v32 + 8))(v40, v33);
}

id sub_100021D28(void (*a1)(void))
{
  a1(0);
  v1 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10002BD00;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10002BD10;
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  *(v3 + 32) = sub_100029118();
  *(v3 + 40) = sub_100029118();
  *(v3 + 48) = sub_100029118();
  v4 = objc_allocWithZone(NSCompoundPredicate);
  isa = sub_100029038().super.isa;

  v6 = [v4 initWithType:1 subpredicates:isa];

  *(v2 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10002BD10;
  *(v7 + 32) = sub_100029118();
  *(v7 + 40) = sub_100029118();
  *(v7 + 48) = sub_100029118();
  v8 = objc_allocWithZone(NSCompoundPredicate);
  v9 = sub_100029038().super.isa;

  v10 = [v8 initWithType:1 subpredicates:v9];

  *(v2 + 40) = v10;
  v11 = objc_allocWithZone(NSCompoundPredicate);
  v12 = sub_100029038().super.isa;

  v13 = [v11 initWithType:2 subpredicates:v12];

  [v1 setPredicate:v13];
  [v1 setFetchBatchSize:*(v15 + 88)];
  return v1;
}

uint64_t sub_100022020(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100027D7C;
  *(v5 + 24) = v4;
  v8[4] = sub_100027D6C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100015128;
  v8[3] = &block_descriptor_63;
  v6 = _Block_copy(v8);

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002217C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100026DC0;
  *(v5 + 24) = v4;
  v8[4] = sub_100027D6C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100015128;
  v8[3] = &block_descriptor_43;
  v6 = _Block_copy(v8);

  [v3 performBlockAndWait:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_1000222D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000293D8();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1000293B8();
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      sub_1000236A0();
    }
  }
}

void sub_100022384(uint64_t a1)
{
  v6 = *(a1 + 96);
  if (v6 == 0x8000000000000000)
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = -v6;
  v8 = -86400 * v6;
  if ((v7 * 86400) >> 64 != v8 >> 63)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:v8];
  type metadata accessor for MapsSyncManagedVisit();
  v10 = [swift_getObjCClassFromMetadata() fetchRequest];
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v11 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v13 = swift_allocObject();
  v50 = xmmword_10002AD50;
  *(v13 + 16) = xmmword_10002AD50;
  v14 = sub_100003E20(0, &qword_100047358, NSDate_ptr);
  *(v13 + 56) = v14;
  v15 = sub_10002764C();
  *(v13 + 64) = v15;
  *(v13 + 32) = v9;
  v16 = v9;
  v17 = sub_100029118();
  [v10 setPredicate:v17];

  v46 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10002AD50;
  *(v18 + 56) = v14;
  *(v18 + 64) = v15;
  *(v18 + 32) = v16;
  v48 = v16;
  v19 = sub_100029118();
  [v11 setPredicate:v19];

  v20 = objc_allocWithZone(NSBatchDeleteRequest);
  v49 = v10;
  v21 = v10;
  v2 = v11;
  v4 = [v20 initWithFetchRequest:v21];
  [v4 setResultType:2];
  v5 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v11];
  [v5 setResultType:2];
  v22 = *(a1 + 24);
  *&v53 = 0;
  v23 = [v22 executeRequest:v4 error:&v53];
  v24 = v53;
  if (!v23)
  {
    v28 = v53;
    sub_100028C78();

    swift_willThrow();
    goto LABEL_14;
  }

  v25 = v23;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  v27 = v24;
  if (!v26)
  {
  }

  *&v53 = 0;
  v29 = [v22 executeRequest:v5 error:{&v53, v46}];
  v30 = v53;
  if (!v29)
  {
    v35 = v53;
    sub_100028C78();

    swift_willThrow();
LABEL_14:
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_100029388(36);
    v55._countAndFlagsBits = 0xD000000000000022;
    v55._object = 0x800000010002EBF0;
    sub_100028FE8(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v3 = *(&v53 + 1);
    v1 = v53;
    sub_100029148();
    if (qword_100046258 == -1)
    {
LABEL_15:
      v36 = swift_allocObject();
      *(v36 + 16) = v50;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_1000022C4();
      *(v36 + 32) = v1;
      *(v36 + 40) = v3;
      sub_100028DE8();

      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_15;
  }

  v31 = v29;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v30;
    v34 = &selRef_initWithUnsignedLongLong_;
    if (v26)
    {
      goto LABEL_11;
    }

LABEL_17:
    v53 = 0u;
    v54 = 0u;
    goto LABEL_25;
  }

  v37 = v30;

  v34 = &selRef_initWithUnsignedLongLong_;
  if (!v26)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ([v26 v34[27]])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
LABEL_25:
    sub_1000029A8(&v53, &qword_100047350, &qword_10002B2E0);
    if (v32)
    {
      goto LABEL_23;
    }

LABEL_26:

    v53 = 0u;
    v54 = 0u;
LABEL_32:
    sub_1000029A8(&v53, &qword_100047350, &qword_10002B2E0);
    return;
  }

  if (swift_dynamicCast())
  {
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_100029388(34);

    *&v53 = 0x20646574656C6544;
    *(&v53 + 1) = 0xE800000000000000;
    v56._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v56);

    v57._object = 0x800000010002EC50;
    v57._countAndFlagsBits = 0xD000000000000016;
    sub_100028FE8(v57);
    v38 = [v48 description];
    v39 = sub_100028F88();
    v41 = v40;

    v58._countAndFlagsBits = v39;
    v58._object = v41;
    sub_100028FE8(v58);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v53, *(&v53 + 1));
  }

  if (!v32)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ([v32 v34[27]])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {

    goto LABEL_32;
  }

  if (swift_dynamicCast())
  {
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_100029388(44);

    *&v53 = 0x20646574656C6544;
    *(&v53 + 1) = 0xE800000000000000;
    v59._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v59);

    v60._countAndFlagsBits = 0xD000000000000020;
    v60._object = 0x800000010002EC20;
    sub_100028FE8(v60);
    v42 = [v48 description];
    v43 = sub_100028F88();
    v45 = v44;

    v61._countAndFlagsBits = v43;
    v61._object = v45;
    sub_100028FE8(v61);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v53, *(&v53 + 1));
  }

  else
  {
  }
}

unint64_t sub_100022C14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = v5;
  v8 = *(a1 + 24);
  v9 = a5(0);
  v10 = sub_100029238();
  if (!v5)
  {
    v6 = v10;
    if (v10 >> 62)
    {
      v13 = sub_1000293D8();
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_10;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
LABEL_12:
      v12 = _swiftEmptyArrayStorage;
      if (!a3)
      {
        return v6;
      }

      goto LABEL_6;
    }

    while (1)
    {
      v12 = sub_1000240EC(v11, 0);
      v13 = sub_100026328(v15, (v12 + 4), v11, 0, v11);
      if (v13 == v11)
      {
        break;
      }

LABEL_10:
      __break(1u);
LABEL_11:
      v11 = v13;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    if (a3)
    {
LABEL_6:
      a3(v9, v12);
    }
  }

  return v6;
}

void *sub_100022D50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), void (*a6)(void))
{
  v12 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = a5;
  v9 = a4;
  v8 = a1;
  v24 = a6;
  if (*(a3 + 16) >= v12)
  {
    v10 = a1 + a2;
  }

  else
  {
    v10 = *(a3 + 16);
  }

  sub_100029388(30);

  v25._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v25);

  v26._countAndFlagsBits = 540945696;
  v26._object = 0xE400000000000000;
  sub_100028FE8(v26);
  v27._countAndFlagsBits = sub_100029408();
  object = v27._object;
  sub_100028FE8(v27);

  v6 = 0x800000010002E520;
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000016, 0x800000010002E520);

  if (v10 < v8)
  {
    goto LABEL_33;
  }

  object = v9 >> 62;
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8)
    {
      goto LABEL_8;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_34:
  if (sub_1000293D8() < v8)
  {
    goto LABEL_35;
  }

LABEL_8:
  if (v8 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (object)
  {
    v13 = sub_1000293D8();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 < v10)
  {
    goto LABEL_37;
  }

  if (v12 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v9 & 0xC000000000000001) != 0 && v10 != v8)
  {
    if (v10 > v8)
    {
      v11(0);

      v14 = v8;
      do
      {
        v15 = v14 + 1;
        sub_1000293A8(v14);
        v14 = v15;
      }

      while (v10 != v15);
      if (!object)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!object)
  {
LABEL_20:
    v6 = v9 & 0xFFFFFFFFFFFFFF8;
    v16 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v9 = (2 * v10) | 1;
    goto LABEL_24;
  }

LABEL_22:

  v6 = sub_1000293E8();
  v8 = v17;
  v9 = v18;
  if ((v18 & 1) == 0)
  {
LABEL_23:
    sub_10002616C(v6, v16, v8, v9, v24);
    v20 = v19;
LABEL_30:
    swift_unknownObjectRelease();
    return v20;
  }

LABEL_24:
  v12 = v16;
  sub_100029438();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = _swiftEmptyArrayStorage;
  }

  v22 = v21[2];

  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_40;
  }

  if (v22 != (v9 >> 1) - v8)
  {
LABEL_41:
    swift_unknownObjectRelease();
    v16 = v12;
    goto LABEL_23;
  }

  v20 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v20)
  {
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  return v20;
}

id sub_10002304C(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = [v1 hasChanges];
  if (result)
  {
    v4 = 0;
    if ([v1 save:&v4])
    {
      return v4;
    }

    else
    {
      v3 = v4;
      sub_100028C78();

      return swift_willThrow();
    }
  }

  return result;
}

void sub_10002310C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  if (a2)
  {
    (*(v7 + 16))(v10, a1, v6);
    v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = swift_allocObject();
    (*(v7 + 32))(v12 + v11, v10, v6);
    aBlock[4] = sub_1000279F4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100023360;
    aBlock[3] = &block_descriptor_161;
    v13 = _Block_copy(aBlock);

    [a2 submitWithHandler:v13 networkActivity:0 queue:*(a3 + 48)];
    _Block_release(v13);
  }
}

uint64_t sub_1000232CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80);
    return sub_100029098();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80);
    return sub_1000290A8();
  }
}

uint64_t sub_100023360(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473C0, &qword_10002BF88);
    v4 = sub_100029048();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_100023400(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() mapItemStorageForGEOMapItem:a1 forUseType:a2];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = sub_100023A9C();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 _clientAttributes];
    }

    else
    {
      v9 = 0;
    }

    [v6 setClientAttributes:v9];
  }

  v10 = v5;
  sub_100023B80(v5);
  swift_getObjectType();
  v11 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(a1, "_muid")}];
  [v2 setMuid:v11];

  [a1 coordinate];
  v13 = [objc_allocWithZone(NSNumber) initWithDouble:v12];
  [v2 setLatitude:v13];

  [a1 coordinate];
  v15 = [objc_allocWithZone(NSNumber) initWithDouble:v14];
  [v2 setLongitude:v15];

  v16 = [a1 addressObject];
  if (!v16 || (v17 = v16, v18 = [v16 fullAddressWithMultiline:0], v17, !v18))
  {
    v18 = 0;
  }

  [v2 setMapItemAddress:v18];

  v19 = [a1 name];
  [v2 setMapItemName:v19];

  sub_100013678(a1);
  v20 = sub_100028F78();

  [v2 setMapItemCategory:v20];
}

void sub_1000236A0()
{
  v1 = [v0 mapItem];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 mapItemStorage];

  if (!v3)
  {
    return;
  }

  v4 = sub_100028D28();
  v6 = v5;

  v7 = objc_allocWithZone(GEOMapItemStorage);
  sub_100011160(v4, v6);
  isa = sub_100028D18().super.isa;
  sub_1000110C8(v4, v6);
  v26 = [v7 initWithData:isa];

  if (v26)
  {
    v9 = [v0 muid];
    if (!v9)
    {
      v10 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(v26, "_muid")}];
      [v0 setMuid:v10];
      v9 = v10;
    }

    v11 = [v0 latitude];
    if (!v11)
    {
      [v26 coordinate];
      v13 = [objc_allocWithZone(NSNumber) initWithDouble:v12];
      [v0 setLatitude:v13];
      v11 = v13;
    }

    v14 = [v0 longitude];
    if (!v14)
    {
      [v26 coordinate];
      v16 = [objc_allocWithZone(NSNumber) initWithDouble:v15];
      [v0 setLongitude:v16];
      v14 = v16;
    }

    v17 = [v0 mapItemAddress];
    if (!v17)
    {
      v21 = [v26 addressObject];
      if (!v21)
      {
        goto LABEL_12;
      }

      v22 = v21;
      v23 = [v21 fullAddressWithMultiline:0];
      if (v23)
      {
        v24 = v23;
        [v0 setMapItemAddress:v23];

        v17 = v24;
      }

      else
      {
        v17 = v22;
      }
    }

LABEL_12:
    v18 = [v0 mapItemName];
    if (!v18)
    {
      v19 = [v26 name];
      [v0 setMapItemName:v19];
      v18 = v19;
    }

    v20 = [v0 mapItemCategory];
    if (v20)
    {

      sub_1000110C8(v4, v6);
    }

    else
    {
      v26 = v26;
      sub_1000267A4(v26);

      v25 = sub_100028F78();

      [v0 setMapItemCategory:v25];
      sub_1000110C8(v4, v6);
    }

    return;
  }

  sub_1000110C8(v4, v6);
}

id sub_100023A9C()
{
  result = [v0 mapItem];
  if (result)
  {
    v2 = result;
    v3 = [result mapItemStorage];

    if (v3)
    {
      v4 = sub_100028D28();
      v6 = v5;

      v7 = objc_allocWithZone(GEOMapItemStorage);
      sub_100011160(v4, v6);
      isa = sub_100028D18().super.isa;
      sub_1000110C8(v4, v6);
      v9 = [v7 initWithData:isa];

      sub_1000110C8(v4, v6);
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100023B80(void *a1)
{
  v2 = [v1 mapItem];
  if (v2)
  {
    v3 = v2;
    if (a1 && (v4 = [a1 data]) != 0)
    {
      v5 = v4;
      v6 = sub_100028D28();
      v8 = v7;

      v9.super.isa = sub_100028D18().super.isa;
      sub_1000110C8(v6, v8);
    }

    else
    {
      v9.super.isa = 0;
    }

    [v3 setMapItemStorage:v9.super.isa];
  }
}

void sub_100023C58(void *a1)
{
  v3 = [objc_opt_self() mapItemStorageForGEOMapItem:a1 forUseType:4];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_100023A9C();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 _clientAttributes];
    }

    else
    {
      v8 = 0;
    }

    [v5 setClientAttributes:v8];
  }

  v9 = v4;
  sub_100023B80(v4);
  v10 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(a1, "_muid")}];
  [v1 setMuid:v10];

  [a1 coordinate];
  v12 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
  [v1 setLatitude:v12];

  [a1 coordinate];
  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v13];
  [v1 setLongitude:v14];
}

void sub_100023E1C(void *a1)
{
  v3 = [objc_opt_self() mapItemStorageForGEOMapItem:a1 forUseType:4];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = v3;
  v6 = [v1 mapItemStorage];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = sub_100028D28();
  v10 = v9;

  v11 = objc_allocWithZone(GEOMapItemStorage);
  sub_100011160(v8, v10);
  isa = sub_100028D18().super.isa;
  sub_1000110C8(v8, v10);
  v13 = [v11 initWithData:isa];

  sub_1000110C8(v8, v10);
  if (v13)
  {
    v14 = [v13 _clientAttributes];
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  [v5 setClientAttributes:v14];

  v15 = [v5 data];
  if (v15)
  {
    v16 = v15;
    v17 = sub_100028D28();
    v19 = v18;

    v20.super.isa = sub_100028D18().super.isa;
    sub_1000110C8(v17, v19);
  }

  else
  {
LABEL_8:
    v20.super.isa = 0;
  }

  [v1 setMapItemStorage:v20.super.isa];

  [v1 setMuid:{objc_msgSend(a1, "_muid")}];
  [a1 coordinate];
  v22 = [objc_allocWithZone(NSNumber) initWithDouble:v21];
  [v1 setLatitude:v22];

  [a1 coordinate];
  v24 = [objc_allocWithZone(NSNumber) initWithDouble:v23];
  [v1 setLongitude:v24];

  v25 = [objc_allocWithZone(NSNumber) initWithInt:{objc_msgSend(a1, "_resultProviderID")}];
  [v1 setResultProviderIdentifier:v25];
}

void *sub_1000240EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472F0, &qword_10002BEB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_100024170(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1000294B8();
  sub_100028FC8();
  v9 = sub_1000294E8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100029428() & 1) != 0)
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

    sub_1000248B4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000242C0(uint64_t a1, Swift::UInt64 a2, Swift::UInt32 a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1000294B8();
  sub_1000294D8(a2);
  sub_1000294C8(a3);
  v9 = sub_1000294E8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v7 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v14 == a2 && v15 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100024A34(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t sub_1000243E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047328, &qword_10002BEC8);
  result = sub_100029368();
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
      sub_1000294B8();
      sub_100028FC8();
      result = sub_1000294E8();
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

uint64_t sub_100024644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047388, &qword_10002BF20);
  result = sub_100029368();
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
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_1000294B8();
      sub_1000294D8(v20);
      sub_1000294C8(v21);
      result = sub_1000294E8();
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
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
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

Swift::Int sub_1000248B4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000243E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100024BAC();
      goto LABEL_16;
    }

    sub_100024E5C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1000294B8();
  sub_100028FC8();
  result = sub_1000294E8();
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

      result = sub_100029428();
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
  result = sub_100029478();
  __break(1u);
  return result;
}

Swift::Int sub_100024A34(Swift::Int result, Swift::UInt32 a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_100024644(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_100024D08();
      a3 = v9;
      goto LABEL_15;
    }

    sub_100025094(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1000294B8();
  sub_1000294D8(v6);
  sub_1000294C8(a2);
  result = sub_1000294E8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 16 * a3;
      v15 = *v14;
      v16 = *(v14 + 8);
      if (v15 == v6 && v16 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = *(v18 + 48) + 16 * a3;
  *v19 = v6;
  *(v19 + 8) = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_100029478();
  __break(1u);
  return result;
}

void *sub_100024BAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047328, &qword_10002BEC8);
  v2 = *v0;
  v3 = sub_100029358();
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

void *sub_100024D08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047388, &qword_10002BF20);
  v2 = *v0;
  v3 = sub_100029358();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LODWORD(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_100024E5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047328, &qword_10002BEC8);
  result = sub_100029368();
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
      sub_1000294B8();

      sub_100028FC8();
      result = sub_1000294E8();
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

uint64_t sub_100025094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047388, &qword_10002BF20);
  result = sub_100029368();
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
      v18 = *(v3 + 48) + 16 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v6 + 40);
      sub_1000294B8();
      sub_1000294D8(v19);
      sub_1000294C8(v20);
      result = sub_1000294E8();
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
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
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

uint64_t sub_1000252D4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
        result = sub_1000258D8(*v11, *(v11 + 8));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1000253D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v66 = 0;
    v59 = 0;
    v64 = a2;
    v65 = a1;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v63 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v11 = (a2 + 56);
    while (1)
    {
      do
      {
        if (!v9)
        {
          v13 = v66;
          v12 = v64;
          while (1)
          {
            v14 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v14 >= v10)
            {

              goto LABEL_51;
            }

            v9 = *(v6 + 8 * v14);
            ++v13;
            if (v9)
            {
              v66 = v14;
              goto LABEL_13;
            }
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v12 = v64;
LABEL_13:
        v15 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v16 = *(v65 + 48) + ((v66 << 10) | (16 * v15));
        v3 = *v16;
        v17 = *(v16 + 8);
        v18 = *(v12 + 40);
        sub_1000294B8();
        sub_1000294D8(v3);
        sub_1000294C8(v17);
        v19 = sub_1000294E8();
        v20 = -1 << *(v12 + 32);
        v2 = v19 & ~v20;
        v4 = v2 >> 6;
        v12 = 1 << v2;
      }

      while (((1 << v2) & v11[v2 >> 6]) == 0);
      v21 = *(v64 + 48);
      v22 = (v21 + 16 * v2);
      v23 = *v22;
      v24 = *(v22 + 2);
      if (v23 == v3 && v24 == v17)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v4 = v2 >> 6;
        v12 = 1 << v2;
        if ((v11[v2 >> 6] & (1 << v2)) == 0)
        {
          break;
        }

        v26 = v21 + 16 * v2;
        if (*v26 == v3 && *(v26 + 8) == v17)
        {
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    v69 = v63;
    v70 = v66;
    v71 = v9;
    v68[0] = v65;
    v68[1] = v6;
    v27 = (63 - v20) >> 6;
    v3 = 8 * v27;

    v60 = v27;
    if (v27 <= 0x80)
    {
      goto LABEL_22;
    }

LABEL_55:
    v55 = v64;

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_22:
      v61 = &v58;
      __chkstk_darwin(v28);
      v30 = (&v58 - v29);
      memcpy(&v58 - v29, v11, v3);
      v31 = v30[v4] & ~v12;
      v12 = v64;
      v32 = *(v64 + 16);
      v30[v4] = v31;
      v33 = v32 - 1;
      v4 = 1;
LABEL_23:
      v62 = v33;
      while (v9)
      {
LABEL_31:
        v37 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v38 = *(v65 + 48) + ((v66 << 10) | (16 * v37));
        v3 = *v38;
        v39 = *(v38 + 8);
        v40 = *(v12 + 40);
        sub_1000294B8();
        v2 = &v67;
        sub_1000294D8(v3);
        sub_1000294C8(v39);
        v41 = sub_1000294E8();
        v42 = -1 << *(v12 + 32);
        v43 = v41 & ~v42;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & v11[v43 >> 6]) != 0)
        {
          v46 = *(v12 + 48);
          v47 = (v46 + 16 * v43);
          v48 = *v47;
          v49 = *(v47 + 2);
          if (v48 == v3 && v49 == v39)
          {
LABEL_24:
            v34 = v30[v44];
            v30[v44] = v34 & ~v45;
            if ((v34 & v45) != 0)
            {
              v33 = v62 - 1;
              if (__OFSUB__(v62, 1))
              {
                __break(1u);
              }

              if (v62 == 1)
              {

                v12 = &_swiftEmptySetSingleton;
                goto LABEL_51;
              }

              goto LABEL_23;
            }
          }

          else
          {
            v51 = ~v42;
            while (1)
            {
              v43 = (v43 + 1) & v51;
              v44 = v43 >> 6;
              v45 = 1 << v43;
              if ((v11[v43 >> 6] & (1 << v43)) == 0)
              {
                break;
              }

              v52 = v46 + 16 * v43;
              if (*v52 == v3 && *(v52 + 8) == v39)
              {
                goto LABEL_24;
              }
            }
          }
        }
      }

      v35 = v66;
      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v36 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v36);
        ++v35;
        if (v9)
        {
          v66 = v36;
          goto LABEL_31;
        }
      }

      if (v10 <= v66 + 1)
      {
        v53 = v66 + 1;
      }

      else
      {
        v53 = v10;
      }

      v66 = v53 - 1;
      v12 = sub_100025C28(v30, v60, v62, v12);
LABEL_51:
      sub_1000277F4();
      return v12;
    }

    v56 = swift_slowAlloc();
    memcpy(v56, v11, v3);
    v57 = v59;
    v12 = sub_100025A1C(v56, v60, v55, v2, v68);

    if (!v57)
    {

      v63 = v69;
      v66 = v70;
      goto LABEL_51;
    }

    __break(1u);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1000258D8(Swift::UInt64 a1, Swift::UInt32 a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1000294B8();
  sub_1000294D8(a1);
  sub_1000294C8(a2);
  v7 = sub_1000294E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(v5 + 48) + 16 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == a1 && v13 == a2)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v2;
  v22 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100024D08();
    v18 = v22;
  }

  v19 = *(v18 + 48) + 16 * v9;
  v20 = *v19;
  v21 = *(v19 + 8);
  sub_100025E54(v9);
  result = v20;
  *v2 = v22;
  return result;
}

Swift::Int sub_100025A1C(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v34 = v9;
    do
    {
      while (1)
      {
        do
        {
          v12 = a5[3];
          v13 = a5[4];
          if (!v13)
          {
            v15 = (a5[2] + 64) >> 6;
            v16 = a5[3];
            while (1)
            {
              v14 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                __break(1u);
                goto LABEL_28;
              }

              if (v14 >= v15)
              {
                break;
              }

              v13 = *(a5[1] + 8 * v14);
              ++v16;
              if (v13)
              {
                goto LABEL_10;
              }
            }

            if (v15 <= v12 + 1)
            {
              v32 = v12 + 1;
            }

            else
            {
              v32 = (a5[2] + 64) >> 6;
            }

            a5[3] = v32 - 1;
            a5[4] = 0;

            return sub_100025C28(v7, a2, v34, a3);
          }

          v14 = a5[3];
LABEL_10:
          v17 = *(*a5 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v13))));
          v18 = *v17;
          v19 = *(v17 + 8);
          a5[3] = v14;
          a5[4] = (v13 - 1) & v13;
          v20 = *(a3 + 40);
          sub_1000294B8();
          sub_1000294D8(v18);
          sub_1000294C8(v19);
          result = sub_1000294E8();
          v21 = -1 << *(a3 + 32);
          v22 = result & ~v21;
          v23 = v22 >> 6;
          v24 = 1 << v22;
        }

        while (((1 << v22) & *(v10 + 8 * (v22 >> 6))) == 0);
        v25 = *(a3 + 48);
        v26 = (v25 + 16 * v22);
        v27 = *v26;
        v28 = *(v26 + 2);
        if (v27 == v18 && v28 == v19)
        {
          break;
        }

        v30 = ~v21;
        while (1)
        {
          v22 = (v22 + 1) & v30;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if ((*(v10 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
          {
            break;
          }

          v31 = v25 + 16 * v22;
          if (*v31 == v18 && *(v31 + 8) == v19)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v11 = v7[v23];
      v7[v23] = v11 & ~v24;
    }

    while ((v11 & v24) == 0);
    v9 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
LABEL_28:
      __break(1u);
    }

    else
    {
      if (v34 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100025C28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100047388, &qword_10002BF20);
  result = sub_100029378();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = v9[5];
    sub_1000294B8();
    sub_1000294D8(v17);
    sub_1000294C8(v18);
    result = sub_1000294E8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = v9[6] + 16 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100025E54(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_100029308();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = 16 * v6;
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 16 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        sub_1000294B8();
        sub_1000294D8(v14);
        sub_1000294C8(v15);
        v16 = sub_1000294E8() & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + v11);
          if (16 * v2 != v11 || (v2 = v6, v18 >= v19 + 1))
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_100026024()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = *&v1[8 * v4 + 32];
        v11 = *&v1[8 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_10002660C(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_20;
        }

        *&v1[8 * v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_21;
        }

        *&v1[8 * v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_10002616C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100026258(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472F0, &qword_10002BEB8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t *sub_100026328(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000263C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = sub_1000292F8();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

unint64_t sub_1000264A8(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_1000277FC(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_100026620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472F0, &qword_10002BEB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_100026724(void *a1@<X8>)
{
  v2 = sub_100023A9C();
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = [v2 _identifier];

  if (v4 && ([v4 isValid] & 1) == 0)
  {

LABEL_5:
    v4 = 0;
  }

  *a1 = v4;
}

id sub_1000267A4(void *a1)
{
  v26 = sub_100028C98();
  v23 = *(v26 - 8);
  v2 = *(v23 + 64);
  v3 = __chkstk_darwin(v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v32 = &_swiftEmptySetSingleton;
  v8 = [a1 _place];
  v9 = [v8 firstBusiness];

  v10 = [v9 localizedCategories];
  if (!v10)
  {
    sub_100003E20(0, &qword_100046F98, NSMutableArray_ptr);
    v10 = sub_100029248();
  }

  sub_100029258();

  sub_100028C88();
  if (!v31)
  {
LABEL_16:
    (*(v23 + 8))(v7, v26);
    v30 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047300, &qword_10002BEC0);
    sub_100027358(&qword_100046FA0, &unk_100047300, &qword_10002BEC0);
    sub_100001FC0();
    v21 = sub_100029018();

    return v21;
  }

  v11 = sub_100003E20(0, &qword_100046FA8, GEOCategory_ptr);
  v24 = (v23 + 8);
  v25 = v11;
  while (1)
  {
    if (!swift_dynamicCast())
    {
      goto LABEL_6;
    }

    v12 = v7;
    v13 = v28;
    v14 = [v28 localizedNames];
    if (!v14)
    {
      sub_100003E20(0, &qword_100046F98, NSMutableArray_ptr);
      v14 = sub_100029248();
    }

    sub_100029258();

    sub_100028C88();
    if (v29)
    {
      break;
    }

LABEL_5:
    (*v24)(v5, v26);

    v7 = v12;
LABEL_6:
    sub_100028C88();
    if (!v31)
    {
      goto LABEL_16;
    }
  }

  sub_100003E20(0, &qword_100047320, GEOLocalizedName_ptr);
  while ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100028C88();
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  v15 = v27;
  result = [v27 name];
  if (result)
  {
    v17 = result;
    v18 = sub_100028F88();
    v20 = v19;

    sub_100024170(&v27, v18, v20);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_100026B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472D0, &qword_10002BE80);
    v3 = sub_1000293F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011330(v4, v13, &qword_100046778, &unk_10002AFE0);
      result = sub_10000243C(v13);
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
      result = sub_100026CC8(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_100026CC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100026D80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100026E08@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X8>)
{
  result = sub_100022C14(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_100026E80(void *a1)
{
  v17 = a1;
  v2 = sub_100029178();
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100029158();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_100028EC8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  *(v1 + 32) = 0;
  v16[0] = sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  v16[3] = "mapItemCategory == nil";
  sub_100028EB8();
  v20 = &_swiftEmptyArrayStorage;
  v16[2] = sub_100027BD4(&qword_100046280, &type metadata accessor for OS_dispatch_queue.Attributes);
  v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046288, &unk_10002AD60);
  sub_100027358(&qword_100046290, &qword_100046288, &unk_10002AD60);
  sub_1000292E8();
  v11 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v12 = *(v19 + 104);
  v19 += 104;
  v12(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *(v1 + 40) = sub_1000291A8();
  sub_100028EB8();
  v20 = &_swiftEmptyArrayStorage;
  sub_1000292E8();
  v12(v6, v11, v18);
  *(v1 + 48) = sub_1000291A8();
  *(v1 + 56) = GEOConfigGetInteger();
  *(v1 + 64) = GEOConfigGetInteger();
  *(v1 + 72) = GEOConfigGetInteger();
  *(v1 + 80) = GEOConfigGetInteger();
  *(v1 + 88) = GEOConfigGetInteger();
  *(v1 + 96) = GEOConfigGetInteger();
  *(v1 + 104) = GEOConfigGetBOOL();
  *(v1 + 105) = GEOConfigGetBOOL();
  *(v1 + 106) = GEOConfigGetBOOL();
  *(v1 + 107) = GEOConfigGetBOOL();
  *(v1 + 108) = GEOConfigGetBOOL();
  *(v1 + 109) = GEOConfigGetBOOL();
  *(v1 + 110) = GEOConfigGetBOOL();
  *(v1 + 111) = GEOConfigGetBOOL();
  *(v1 + 112) = GEOConfigGetBOOL();
  *(v1 + 120) = xmmword_10002AEB0;
  *(v1 + 136) = 86400;
  v13 = v17;
  *(v1 + 16) = v17;
  v14 = [v13 newBackgroundContext];
  *(v1 + 24) = v14;
  [v14 setAutomaticallyMergesChangesFromParent:1];
  sub_100015638();
  sub_100015758();
  return v1;
}

uint64_t sub_100027358(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000273F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000034F8;

  return sub_10001726C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_68Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100027550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000034FC;

  return sub_100015EF4(a1, v4, v5, v7, v6);
}

unint64_t sub_10002764C()
{
  result = qword_100047360;
  if (!qword_100047360)
  {
    sub_100003E20(255, &qword_100047358, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047360);
  }

  return result;
}

uint64_t sub_1000276D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = sub_1000292F8();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = sub_1000264A8(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = sub_1000292F8();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = sub_1000263C4(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000277FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100027808(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_1000279B4@<X0>(void *a1@<X8>)
{
  result = sub_100020AFC(*(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000279F4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80) - 8) + 80);

  return sub_1000232CC(a1, a2);
}

void *sub_100027B30@<X0>(void (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  result = sub_100022D50(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), a1, a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t objectdestroy_144Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027BD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MapsSyncDaemonPeriodicActivityHandler.CuratedCollectionId(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MapsSyncDaemonPeriodicActivityHandler.CuratedCollectionId(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t sub_100027C90()
{
  result = qword_1000473E0;
  if (!qword_1000473E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000473E0);
  }

  return result;
}

id sub_100027EA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100027FB0()
{
  v0 = sub_100028E48();
  __swift_allocate_value_buffer(v0, qword_100047438);
  __swift_project_value_buffer(v0, qword_100047438);
  if (qword_100046260 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.Signpost;
  return sub_100028E28();
}

uint64_t sub_100028040(const char *a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v54 = a1;
  v53 = a3;
  v55 = sub_100028E18();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v55);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v50[-v11];
  __chkstk_darwin(v10);
  v14 = &v50[-v13];
  v15 = sub_100028E48();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v23 = &v50[-v22];
  __chkstk_darwin(v21);
  v25 = &v50[-v24];
  v26 = qword_100046268 == -1;
  if (a4)
  {
    if (qword_100046268 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v15, qword_100047438);
    v28 = v16[2];
    v28(v25, v27, v15);
    v28(v23, v27, v15);
    sub_100028E38();
    sub_100028DF8();
    v30 = v16[1];
    ++v16;
    v29 = v30;
    v30(v23, v15);
    v9 = sub_100028E38();
    v31 = sub_100029208();
    v23 = v9;
    result = sub_100029298();
    if ((result & 1) == 0)
    {
      goto LABEL_19;
    }

    v52 = v29;
    v51 = v31;
    if (v53)
    {
      goto LABEL_14;
    }

    v20 = v54;
    if (v54)
    {
LABEL_18:
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = sub_100028E08();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v51, v38, v20, "enableTelemetry=YES", v37, 2u);

      v29 = v52;
LABEL_19:

      v39 = v55;
      (*(v5 + 16))(v12, v14, v55);
      v40 = sub_100028E88();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      v43 = sub_100028E78();
      (*(v5 + 8))(v14, v39);
      v29(v25, v15);
      return v43;
    }

    __break(1u);
  }

  if (!v26)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v15, qword_100047438);
  v34 = v16[2];
  v34(v20, v33, v15);
  v34(v23, v33, v15);
  sub_100028E38();
  sub_100028DF8();
  v35 = v16[1];
  v35(v23, v15);
  v14 = sub_100028E38();
  v36 = sub_100029208();
  result = sub_100029298();
  if ((result & 1) == 0)
  {
LABEL_25:

    v46 = v55;
    (*(v5 + 16))(v12, v9, v55);
    v47 = sub_100028E88();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    v43 = sub_100028E78();
    (*(v5 + 8))(v9, v46);
    v35(v20, v15);
    return v43;
  }

  v52 = v35;
  v51 = v36;
  if ((v53 & 1) == 0)
  {
    v25 = v54;
    if (!v54)
    {
      __break(1u);
LABEL_14:
      if (!(v54 >> 32))
      {
        if ((v54 & 0xFFFFF800) == 0xD800)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (v54 >> 16 <= 0x10)
        {
          v20 = &v56;
          goto LABEL_18;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v54 >> 32)
  {
    goto LABEL_28;
  }

  if ((v54 & 0xFFFFF800) != 0xD800)
  {
    if (v54 >> 16 > 0x10)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v25 = &v57;
LABEL_24:
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_100028E08();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v51, v45, v25, "", v44, 2u);

    v35 = v52;
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000285E4(const char *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char a5)
{
  v48 = a1;
  v45 = a3;
  v6 = sub_100028E58();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v13 = sub_100028E18();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = (&v43 - v18);
  v20 = sub_100028E48();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v43 - v26;
  v28 = qword_100046268 == -1;
  if (a5)
  {
    if (qword_100046268 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v20, qword_100047438);
    (*(v21 + 16))(v27, v29, v20);
    v17 = sub_100028E38();
    sub_100028E68();
    v25 = sub_1000291F8();
    v10 = v17;
    result = sub_100029298();
    if ((result & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v45)
    {
      if (v48 >> 32)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if ((v48 & 0xFFFFF800) == 0xD800)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v48 >> 16 > 0x10)
      {
        goto LABEL_35;
      }

      v48 = &v49;
    }

    else if (!v48)
    {
      __break(1u);
      goto LABEL_8;
    }

    sub_100028E98();

    v34 = v43;
    v33 = v44;
    if ((*(v43 + 88))(v12, v44) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v35 = "[Error] Interval already ended";
    }

    else
    {
      (*(v34 + 8))(v12, v33);
      v35 = "enableTelemetry=YES";
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_100028E08();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v25, v40, v48, v35, v39, 2u);
    v17 = v19;
    v19 = v10;
    v25 = v27;
    goto LABEL_31;
  }

LABEL_8:
  if (!v28)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v20, qword_100047438);
  (*(v21 + 16))(v25, v31, v20);
  v19 = sub_100028E38();
  sub_100028E68();
  v32 = sub_1000291F8();
  result = sub_100029298();
  if ((result & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((v45 & 1) == 0)
  {
    if (!v48)
    {
      __break(1u);
LABEL_14:
      v17 = v19;
      v25 = v27;
      v19 = v10;
LABEL_32:

      (*(v46 + 8))(v17, v47);
      return (*(v21 + 8))(v25, v20);
    }

    goto LABEL_25;
  }

  if (v48 >> 32)
  {
    goto LABEL_34;
  }

  if ((v48 & 0xFFFFF800) != 0xD800)
  {
    if (v48 >> 16 <= 0x10)
    {
      v48 = &v50;
LABEL_25:

      sub_100028E98();

      v37 = v43;
      v36 = v44;
      if ((*(v43 + 88))(v10, v44) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v37 + 8))(v10, v36);
        v38 = "";
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = sub_100028E08();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v32, v42, v48, v38, v41, 2u);
LABEL_31:

      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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