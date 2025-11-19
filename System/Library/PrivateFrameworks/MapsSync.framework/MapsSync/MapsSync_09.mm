uint64_t sub_1B63717A4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B637184C;

  return sub_1B63711E4();
}

uint64_t sub_1B637184C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for RAPRecord();
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B63719D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6371A48, 0, 0);
}

uint64_t sub_1B6371A48()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B6371B58;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6371B58(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1B6353DC8;
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];

    v5 = sub_1B6371C7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6371C7C()
{
  v1 = *(v0 + 64);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for RAPRecord();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6371FB8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6372078;

  return sub_1B63719D8(a1);
}

uint64_t sub_1B6372078()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for RAPRecord();
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id RAPRecordRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RAPRecordRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of RAPRecordRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of RAPRecordRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B6372588()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6371FB8(v2, v3, v4);
}

uint64_t sub_1B637263C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B63717A4(v2, v3);
}

id ReviewedPlaceRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id ReviewedPlaceRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id ReviewedPlaceRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for ReviewedPlace();
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ReviewedPlaceRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for ReviewedPlace();
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6372A6C()
{
  v2 = sub_1B62980BC();
  if (!v1)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = sub_1B63BF044();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1B8C92830](v7, v3);
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_19;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for ReviewedPlace();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v0 = v12;
        }

        while (v6 != v5);
        goto LABEL_22;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v0;
}

uint64_t sub_1B6372CC8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6372D38, 0, 0);
}

uint64_t sub_1B6372D38()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6372E3C;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6372E3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1B635355C;
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];

    v5 = sub_1B6372F60;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6372F60()
{
  v1 = *(v0 + 56);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for ReviewedPlace();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6373288(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6373330;

  return sub_1B6372CC8();
}

uint64_t sub_1B6373330()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for ReviewedPlace();
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B63734BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637352C, 0, 0);
}

uint64_t sub_1B637352C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B637363C;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B637363C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1B6353DC8;
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];

    v5 = sub_1B6373760;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6373760()
{
  v1 = *(v0 + 64);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for ReviewedPlace();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6373A9C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6373B5C;

  return sub_1B63734BC(a1);
}

uint64_t sub_1B6373B5C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for ReviewedPlace();
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id ReviewedPlaceRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewedPlaceRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of ReviewedPlaceRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of ReviewedPlaceRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B637406C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6373A9C(v2, v3, v4);
}

uint64_t sub_1B6374120()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6373288(v2, v3);
}

id ServerEvaluationStatusRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id ServerEvaluationStatusRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id ServerEvaluationStatusRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for ServerEvaluationStatus();
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ServerEvaluationStatusRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for ServerEvaluationStatus();
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6374550()
{
  v2 = sub_1B62980BC();
  if (!v1)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = sub_1B63BF044();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1B8C92830](v7, v3);
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_19;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for ServerEvaluationStatus();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v0 = v12;
        }

        while (v6 != v5);
        goto LABEL_22;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v0;
}

uint64_t sub_1B63747AC()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637481C, 0, 0);
}

uint64_t sub_1B637481C()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6374920;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6374920(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1B635355C;
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];

    v5 = sub_1B6374A44;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6374A44()
{
  v1 = *(v0 + 56);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for ServerEvaluationStatus();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6374D6C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6374E14;

  return sub_1B63747AC();
}

uint64_t sub_1B6374E14()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for ServerEvaluationStatus();
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B6374FA0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6375010, 0, 0);
}

uint64_t sub_1B6375010()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B6375120;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6375120(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1B6353DC8;
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];

    v5 = sub_1B6375244;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6375244()
{
  v1 = *(v0 + 64);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for ServerEvaluationStatus();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6375580(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6375640;

  return sub_1B6374FA0(a1);
}

uint64_t sub_1B6375640()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for ServerEvaluationStatus();
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id ServerEvaluationStatusRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerEvaluationStatusRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of ServerEvaluationStatusRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of ServerEvaluationStatusRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B6375B50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6375580(v2, v3, v4);
}

uint64_t sub_1B6375C04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6374D6C(v2, v3);
}

id SharedTripBlockedItemRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id SharedTripBlockedItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id SharedTripBlockedItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for SharedTripBlockedItem();
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id SharedTripBlockedItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for SharedTripBlockedItem();
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6376034()
{
  v2 = sub_1B62980BC();
  if (!v1)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = sub_1B63BF044();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1B8C92830](v7, v3);
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_19;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for SharedTripBlockedItem();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v0 = v12;
        }

        while (v6 != v5);
        goto LABEL_22;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v0;
}

uint64_t sub_1B6376290()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6376300, 0, 0);
}

uint64_t sub_1B6376300()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6376404;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6376404(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1B635355C;
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];

    v5 = sub_1B6376528;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6376528()
{
  v1 = *(v0 + 56);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for SharedTripBlockedItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6376850(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B63768F8;

  return sub_1B6376290();
}

uint64_t sub_1B63768F8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for SharedTripBlockedItem();
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B6376A84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6376AF4, 0, 0);
}

uint64_t sub_1B6376AF4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B6376C04;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6376C04(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1B6353DC8;
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];

    v5 = sub_1B6376D28;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6376D28()
{
  v1 = *(v0 + 64);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for SharedTripBlockedItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6377064(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6377124;

  return sub_1B6376A84(a1);
}

uint64_t sub_1B6377124()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for SharedTripBlockedItem();
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id SharedTripBlockedItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedTripBlockedItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of SharedTripBlockedItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of SharedTripBlockedItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B6377634()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6377064(v2, v3, v4);
}

uint64_t sub_1B63776E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6376850(v2, v3);
}

id UserRouteRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id UserRouteRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id UserRouteRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for UserRoute();
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id UserRouteRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for UserRoute();
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6377A30()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6377AA0, 0, 0);
}

uint64_t sub_1B6377AA0()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6377BA4;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6377BA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1B635355C;
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];

    v5 = sub_1B6377CC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6377CC8()
{
  v1 = *(v0 + 56);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for UserRoute();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6377FF0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6378098;

  return sub_1B6377A30();
}

uint64_t sub_1B6378098()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for UserRoute();
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B6378224(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6378294, 0, 0);
}

uint64_t sub_1B6378294()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B63783A4;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B63783A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1B6353DC8;
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];

    v5 = sub_1B63784C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63784C8()
{
  v1 = *(v0 + 64);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for UserRoute();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6378804(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B63788C4;

  return sub_1B6378224(a1);
}

uint64_t sub_1B63788C4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for UserRoute();
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id UserRouteRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserRouteRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of UserRouteRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of UserRouteRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B6378DD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6378804(v2, v3, v4);
}

uint64_t sub_1B6378E88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6377FF0(v2, v3);
}

id VehicleRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id VehicleRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id VehicleRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for Vehicle();
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id VehicleRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for Vehicle();
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B63791D0()
{
  v2 = sub_1B62980BC();
  if (!v1)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = sub_1B63BF044();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1B8C92830](v7, v3);
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_19;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for Vehicle();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v0 = v12;
        }

        while (v6 != v5);
        goto LABEL_22;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v0;
}

uint64_t sub_1B637942C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637949C, 0, 0);
}

uint64_t sub_1B637949C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B63795AC;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B63795AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1B6353DC8;
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];

    v5 = sub_1B63796D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63796D0()
{
  v1 = *(v0 + 64);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for Vehicle();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B6379A0C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6379ACC;

  return sub_1B637942C(a1);
}

uint64_t sub_1B6379ACC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for Vehicle();
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id VehicleRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VehicleRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of VehicleRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of VehicleRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B6379FDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6379A0C(v2, v3, v4);
}

id VisitedLocationRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for VisitedLocation();
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id VisitedLocationRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id VisitedLocationRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id VisitedLocationRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for VisitedLocation();
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B637A414()
{
  v2 = sub_1B62980BC();
  if (!v1)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = sub_1B63BF044();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1B8C92830](v7, v3);
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_19;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for VisitedLocation();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v0 = v12;
        }

        while (v6 != v5);
        goto LABEL_22;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v0;
}

uint64_t sub_1B637A670()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637A6E0, 0, 0);
}

uint64_t sub_1B637A6E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B637A7E4;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B637A7E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1B635355C;
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];

    v5 = sub_1B637A908;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B637A908()
{
  v1 = *(v0 + 56);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for VisitedLocation();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B637AC30(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B637ACD8;

  return sub_1B637A670();
}

uint64_t sub_1B637ACD8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for VisitedLocation();
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B637AE64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637AED4, 0, 0);
}

uint64_t sub_1B637AED4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B637AFE4;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B637AFE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1B6353DC8;
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];

    v5 = sub_1B637B108;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B637B108()
{
  v1 = *(v0 + 64);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for VisitedLocation();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B637B444(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B637B504;

  return sub_1B637AE64(a1);
}

uint64_t sub_1B637B504()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for VisitedLocation();
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id VisitedLocationRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitedLocationRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of VisitedLocationRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of VisitedLocationRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B637BA14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B637B444(v2, v3, v4);
}

uint64_t sub_1B637BAC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B637AC30(v2, v3);
}

id VisitRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id VisitRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id VisitRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for Visit();
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id VisitRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for Visit();
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B637BEF8()
{
  v2 = sub_1B62980BC();
  if (!v1)
  {
    v3 = v2;
    v12 = MEMORY[0x1E69E7CC0];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = sub_1B63BF044();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1B8C92830](v7, v3);
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_19;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for Visit();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v0 = v12;
        }

        while (v6 != v5);
        goto LABEL_22;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v0;
}

uint64_t sub_1B637C154()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637C1C4, 0, 0);
}

uint64_t sub_1B637C1C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B637C2C8;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B637C2C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_1B635355C;
  }

  else
  {
    v7 = v3[4];
    v6 = v3[5];

    v5 = sub_1B637C3EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B637C3EC()
{
  v1 = *(v0 + 56);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for Visit();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B637C714(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B637C7BC;

  return sub_1B637C154();
}

uint64_t sub_1B637C7BC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for Visit();
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B637C948(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B637C9B8, 0, 0);
}

uint64_t sub_1B637C9B8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B637CAC8;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B637CAC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_1B6353DC8;
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];

    v5 = sub_1B637CBEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B637CBEC()
{
  v1 = *(v0 + 64);
  v15 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for Visit();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v15;
  }

  while (v5 != v3);
LABEL_21:
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_1B637CF28(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B637CFE8;

  return sub_1B637C948(a1);
}

uint64_t sub_1B637CFE8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for Visit();
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id VisitRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of VisitRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of VisitRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B637D4F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B637CF28(v2, v3, v4);
}

uint64_t sub_1B637D5AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B637C714(v2, v3);
}

id sub_1B637D6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B637D760()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCommunityID();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B637D7DC(uint64_t a1)
{
  v1 = a1;
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1B63BF044();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B639E7FC(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_1B63BF1C4();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1B63BEFB4();
      v4 = *(v1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v27 = v2;
      v28 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v14 = v32;
        v15 = v33;
        v16 = v34;
        sub_1B638190C(v32, v33, v34, v1);
        v18 = v17;
        v31[0] = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943510, &qword_1B63C61F8);
        v19 = sub_1B63BEBE4();
        v21 = v20;

        v22 = v30;
        v35 = v30;
        v24 = *(v30 + 16);
        v23 = *(v30 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1B639E7FC((v23 > 1), v24 + 1, 1);
          v22 = v35;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v19;
        *(v25 + 40) = v21;
        v30 = v22;
        if (v29)
        {
          v1 = v28;
          if (!v16)
          {
            goto LABEL_26;
          }

          if (sub_1B63BF1F4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          v13 = v6 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943528, &qword_1B63C6210);
          v26 = sub_1B63BEB84();
          sub_1B63BF284();
          v26(v31, 0);
        }

        else
        {
          v1 = v28;
          sub_1B63817B8(v14, v15, v16, v28);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          sub_1B6383D88(v14, v15, v16);
          v32 = v8;
          v33 = v10;
          v34 = v12 & 1;
          v2 = v27;
          v13 = v6 + 1;
        }

        ++v6;
        if (v13 == v2)
        {
          sub_1B6383D88(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

id static MapsSyncStore.withStore(config:)(void *a1)
{
  v2 = type metadata accessor for MapsSyncStore();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_shouldDeleteDuplicates;
  v3[v4] = MapsSyncShouldDeleteDuplicates();
  v5 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_containerInstanceLock;
  *&v3[v5] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v3[OBJC_IVAR____TtC8MapsSync13MapsSyncStore_inDevelopmentStorage] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config] = a1;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = a1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B637DCB4(uint64_t (*a1)(uint64_t, void))
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  return a1(qword_1EDB0F2A8, 0);
}

void sub_1B637DD1C(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v3[2](v3, qword_1EDB0F2A8, 0);

  _Block_release(v3);
}

uint64_t sub_1B637DE44()
{
  if (qword_1EDB0F288 != -1)
  {
    swift_once();
  }

  v0 = sub_1B628170C(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  off_1EDB0F290 = v0;
}

void (*sub_1B637DFDC(uint64_t **a1, char a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B6381518(v4, a2 & 1);
  return sub_1B637E054;
}

void sub_1B637E054(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1B637E120(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B629821C();
  v32 = MEMORY[0x1E69E7CC8];
  v11 = v5;
  sub_1B6381AF4(a1, &v32, v11);

  v12 = v32;
  if (!v32[2])
  {
  }

  v13 = sub_1B6380E1C(1);
  if (v14)
  {
    v31[1] = a4;
    v31[2] = a5;
    v15 = *(v12[7] + 8 * v13);

    v16 = sub_1B62814B4();
    v31[3] = v31;
    MEMORY[0x1EEE9AC00](v16);
    v30[2] = v15;
    v17 = sub_1B629409C();
    v18 = v17;
    if (v19)
    {
      swift_willThrow();
    }

    v31[0] = v30;
    MEMORY[0x1EEE9AC00](v17);
    v29[2] = a2;
    v29[3] = v30;
    v29[4] = v18;
    sub_1B63BEE84();

    sub_1B6295C20(v18);
    if (v6)
    {
    }
  }

  if (!v12[2])
  {
  }

  v21 = sub_1B6380E1C(0);
  if ((v22 & 1) == 0)
  {
  }

  v23 = *(v12[7] + 8 * v21);

  v24 = sub_1B628276C();
  MEMORY[0x1EEE9AC00](v24);
  v29[-2] = v23;
  v25 = sub_1B629409C();
  v26 = v25;
  if (v27)
  {
    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v25);
    v29[-4] = v28;
    v29[-3] = &v29[-4];
    v29[-2] = v26;
    sub_1B63BEE84();

    sub_1B6295C20(v26);
  }
}

uint64_t sub_1B637E440(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MapsSyncObject();
  v7 = sub_1B63BECA4();
  v8 = a1;
  a5(v7);

  return 1;
}

uint64_t sub_1B637E4F8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B637E518, 0, 0);
}

uint64_t sub_1B637E518()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1B6381AF4(v1, (v0 + 16), v2);

  v3 = *(v0 + 16);
  *(v0 + 40) = v3;
  if (*(v3 + 16))
  {
    v4 = sub_1B6380E1C(1);
    if (v5)
    {
      v6 = *(v0 + 32);
      v7 = *(*(v3 + 56) + 8 * v4);

      *(v0 + 48) = sub_1B62814B4();
      v8 = swift_allocObject();
      *(v0 + 56) = v8;
      *(v8 + 16) = v7;
      v9 = swift_task_alloc();
      *(v0 + 64) = v9;
      *v9 = v0;
      v9[1] = sub_1B637E77C;
LABEL_7:

      return sub_1B62ADB40(sub_1B62ADB40, sub_1B6383DF4, v8);
    }

    if (*(*(v0 + 40) + 16))
    {
      v10 = sub_1B6380E1C(0);
      if (v11)
      {
        v12 = *(v0 + 32);
        v13 = *(*(*(v0 + 40) + 56) + 8 * v10);

        *(v0 + 80) = sub_1B628276C();
        v8 = swift_allocObject();
        *(v0 + 88) = v8;
        *(v8 + 16) = v13;
        v14 = swift_task_alloc();
        *(v0 + 96) = v14;
        *v14 = v0;
        v14[1] = sub_1B637EA80;
        goto LABEL_7;
      }
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1B637E77C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1B637EA00;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1B637E898;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B637E898()
{
  v1 = v0[6];

  if (*(v0[5] + 16) && (v2 = v0[5], v3 = sub_1B6380E1C(0), (v4 & 1) != 0))
  {
    v5 = v0[4];
    v6 = *(*(v0[5] + 56) + 8 * v3);

    v0[10] = sub_1B628276C();
    v7 = swift_allocObject();
    v0[11] = v7;
    *(v7 + 16) = v6;
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1B637EA80;

    return sub_1B62ADB40(sub_1B62ADB40, sub_1B6383DF4, v7);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1B637EA00()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B637EA80()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1B637EC0C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B637EB9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B637EB9C()
{
  v1 = v0[10];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B637EC0C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B637EE14(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  type metadata accessor for MapsSyncObject();
  v5 = sub_1B63BECA4();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1B634FBD4;

  return sub_1B637E4F8(v5);
}

uint64_t sub_1B637EEEC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B637EF0C, 0, 0);
}

uint64_t sub_1B637EF0C()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1B6381AF4(v1, (v0 + 16), v2);

  v3 = *(v0 + 16);
  *(v0 + 40) = v3;
  if (*(v3 + 16))
  {
    v4 = sub_1B6380E1C(1);
    if (v5)
    {
      v6 = *(v0 + 32);
      v7 = *(*(v3 + 56) + 8 * v4);

      *(v0 + 48) = sub_1B62814B4();
      v8 = swift_allocObject();
      *(v0 + 56) = v8;
      *(v8 + 16) = v7;
      v9 = swift_task_alloc();
      *(v0 + 64) = v9;
      *v9 = v0;
      v9[1] = sub_1B637F170;
LABEL_7:

      return sub_1B62ADB40(sub_1B62ADB40, sub_1B6383E0C, v8);
    }

    if (*(*(v0 + 40) + 16))
    {
      v10 = sub_1B6380E1C(0);
      if (v11)
      {
        v12 = *(v0 + 32);
        v13 = *(*(*(v0 + 40) + 56) + 8 * v10);

        *(v0 + 80) = sub_1B628276C();
        v8 = swift_allocObject();
        *(v0 + 88) = v8;
        *(v8 + 16) = v13;
        v14 = swift_task_alloc();
        *(v0 + 96) = v14;
        *v14 = v0;
        v14[1] = sub_1B637F3F4;
        goto LABEL_7;
      }
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1B637F170()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1B6383DEC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1B637F28C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B637F28C()
{
  v1 = v0[6];

  if (*(v0[5] + 16) && (v2 = v0[5], v3 = sub_1B6380E1C(0), (v4 & 1) != 0))
  {
    v5 = v0[4];
    v6 = *(*(v0[5] + 56) + 8 * v3);

    v0[10] = sub_1B628276C();
    v7 = swift_allocObject();
    v0[11] = v7;
    *(v7 + 16) = v6;
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1B637F3F4;

    return sub_1B62ADB40(sub_1B62ADB40, sub_1B6383E0C, v7);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1B637F3F4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1B6383DF0;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B6383E3C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B637F698(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  type metadata accessor for MapsSyncObject();
  v5 = sub_1B63BECA4();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1B6383DE8;

  return sub_1B637EEEC(v5);
}

void sub_1B637F770(id a1, unint64_t isUniquelyReferenced_nonNull_native)
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = sub_1B6382A14(MEMORY[0x1E69E7CC0]);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
  {
    v6 = 0;
    v77 = isUniquelyReferenced_nonNull_native;
    v79 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v75 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v7 = &unk_1E7C32000;
    v82 = a1;
    v76 = i;
    while (1)
    {
      if (v79)
      {
        v10 = MEMORY[0x1B8C92830](v6, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v6 >= *(v75 + 16))
        {
          goto LABEL_44;
        }

        v10 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);
      }

      v11 = v10;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v80 = v6 + 1;
      *&v85[0] = v10;
      type metadata accessor for MapsSyncObject();
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943518, &qword_1B63C6200);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v89 = 0;
        v87 = 0u;
        v88 = 0u;
      }

      sub_1B6284EAC(&v87, &qword_1EB943520, &qword_1B63C6208);
      v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      [*&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] v7[236]];
      v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId];
      v15 = *&v12[v13];
      v16 = v14;
      [v15 unlock];
      if (v14)
      {
      }

      else
      {
        v17 = v12;
        if (swift_dynamicCast())
        {
          sub_1B62AA870(v85, &v87);
          isUniquelyReferenced_nonNull_native = v82;
          [*__swift_project_boxed_opaque_existential_0(&v87 *(&v88 + 1))];
          __swift_destroy_boxed_opaque_existential_1(&v87);
          goto LABEL_19;
        }

        v86 = 0;
        memset(v85, 0, sizeof(v85));
        sub_1B6284EAC(v85, &qword_1EB943520, &qword_1B63C6208);
      }

      isUniquelyReferenced_nonNull_native = v82;
LABEL_19:
      [*&v12[v13] lock];
      a1 = sub_1B629563C(*&v12[v13], isUniquelyReferenced_nonNull_native);
      [*&v12[v13] unlock];
      if (!a1)
      {
        sub_1B63BEDC4();
        if (qword_1EDB0F690 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1B63C3D50;
        *(v32 + 56) = MEMORY[0x1E69E6158];
        *(v32 + 64) = sub_1B6281318();
        *(v32 + 32) = 0xD000000000000036;
        *(v32 + 40) = 0x80000001B63CB510;
        sub_1B63BEA14();

        sub_1B634DB54();
        swift_allocError();
        *v33 = 2;
        swift_willThrow();

        goto LABEL_77;
      }

      [*&v12[v13] lock];
      sub_1B6397CB8(*&v12[v13], a1, isUniquelyReferenced_nonNull_native);
      [*&v12[v13] unlock];
      if ((v4 & 0xC000000000000001) != 0)
      {
        if (v4 >= 0)
        {
          v4 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v18 = a1;
        v19 = sub_1B63BF044();
        if (__OFADD__(v19, 1))
        {
          goto LABEL_42;
        }

        v4 = sub_1B63812F4(v4, v19 + 1);
      }

      else
      {
        v20 = a1;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v4;
      v22 = sub_1B6380EB0(v12);
      v23 = *(v4 + 16);
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_41;
      }

      v26 = v21;
      if (*(v4 + 24) >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = v87;
          if (v21)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1B638E1F0();
          v4 = v87;
          if (v26)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1B638CC34(v25, isUniquelyReferenced_nonNull_native);
        v27 = sub_1B6380EB0(v12);
        if ((v26 & 1) != (v28 & 1))
        {
          sub_1B63BF3D4();
          __break(1u);
          return;
        }

        v22 = v27;
        v4 = v87;
        if (v26)
        {
LABEL_4:
          v8 = *(v4 + 56);
          v9 = *(v8 + 8 * v22);
          *(v8 + 8 * v22) = a1;

          goto LABEL_5;
        }
      }

      *(v4 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(*(v4 + 48) + 8 * v22) = v12;
      *(*(v4 + 56) + 8 * v22) = a1;

      v29 = *(v4 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_43;
      }

      *(v4 + 16) = v31;
LABEL_5:
      ++v6;
      isUniquelyReferenced_nonNull_native = v77;
      a1 = v82;
      v7 = &unk_1E7C32000;
      if (v80 == v76)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_46:
  *&v87 = 0;
  v34 = [a1 save_];
  v35 = v87;
  if ((v34 & 1) == 0)
  {
    v40 = v87;
    sub_1B63BE824();

    swift_willThrow();
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    sub_1B63BF114();

    swift_getErrorValue();
    *(&v88 + 1) = v84;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v87);
    (*(*(v84 - 8) + 16))(boxed_opaque_existential_0);
    sub_1B628C510(&v87, v85, &unk_1EB943740, &qword_1B63C5030);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943740, &qword_1B63C5030);
    v42 = sub_1B63BEBE4();
    v44 = v43;
    sub_1B6284EAC(&v87, &unk_1EB943740, &qword_1B63C5030);
    MEMORY[0x1B8C92330](v42, v44);

    v45 = 0xD00000000000001FLL;
    v39 = 0x80000001B63CB5A0;
    sub_1B63BEDC4();
    if (qword_1EDB0F690 != -1)
    {
      goto LABEL_79;
    }

    goto LABEL_50;
  }

  v36 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v78 = 0;
    v37 = 0;
    v38 = 0;
    v39 = sub_1B63BF1D4() | 0x8000000000000000;
  }

  else
  {
    v47 = -1 << *(v4 + 32);
    v37 = ~v47;
    v78 = v4 + 64;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v38 = v49 & *(v4 + 64);
    v39 = v4;
  }

  v50 = v35;

  v51 = 0;
  v45 = (v37 + 64) >> 6;
  v81 = v39;
  v52 = v78;
  v53 = v38;
  while ((v39 & 0x8000000000000000) != 0)
  {
    v57 = sub_1B63BF274();
    if (!v57 || (*&v85[0] = v57, type metadata accessor for MapsSyncObject(), swift_dynamicCast(), (v56 = v87) == 0))
    {
LABEL_75:
      sub_1B628B9E4();
      *&v87 = 0;
      *(&v87 + 1) = 0xE000000000000000;
      sub_1B63BF114();

      *&v87 = 0xD000000000000022;
      *(&v87 + 1) = 0x80000001B63CB5C0;

      sub_1B637D7DC(v68);
      v70 = v69;

      v71 = MEMORY[0x1B8C923A0](v70, MEMORY[0x1E69E6158]);
      v73 = v72;

      MEMORY[0x1B8C92330](v71, v73);

      _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v87, *(&v87 + 1));

      goto LABEL_76;
    }

LABEL_65:
    if (v36)
    {
      v83 = v53;
      v58 = v56;
      v59 = sub_1B63BF254();

      if (!v59)
      {
        goto LABEL_73;
      }

      *&v85[0] = v59;
      sub_1B6383280();
      swift_dynamicCast();
      v60 = v87;
      if (!v87)
      {
        goto LABEL_73;
      }

LABEL_72:
      v63 = [v60 objectID];
      v64 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      [*&v56[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
      v65 = v36;
      v66 = *&v56[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId];
      *&v56[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = v63;
      v67 = v63;

      v36 = v65;
      v52 = v78;
      [*&v56[v64] unlock];

      v56 = v67;
      goto LABEL_73;
    }

    if (!*(v4 + 16))
    {
      goto LABEL_74;
    }

    v83 = v53;
    v61 = sub_1B6380EB0(v56);
    if (v62)
    {
      v60 = *(*(v4 + 56) + 8 * v61);
      if (v60)
      {
        goto LABEL_72;
      }
    }

LABEL_73:
    v53 = v83;
LABEL_74:

    v39 = v81;
  }

  v54 = v51;
  v55 = v53;
  if (v53)
  {
LABEL_61:
    v53 = (v55 - 1) & v55;
    v56 = *(*(v39 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v55)))));
    if (!v56)
    {
      goto LABEL_75;
    }

    goto LABEL_65;
  }

  while (1)
  {
    v51 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v51 >= v45)
    {
      goto LABEL_75;
    }

    v55 = *(v52 + 8 * v51);
    ++v54;
    if (v55)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_79:
  swift_once();
LABEL_50:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B63C3D50;
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = sub_1B6281318();
  *(v46 + 32) = v45;
  *(v46 + 40) = v39;
  sub_1B63BEA14();

  swift_willThrow();
LABEL_76:

LABEL_77:
  v74 = *MEMORY[0x1E69E9840];
}

void sub_1B63801EC(id a1, unint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v57 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_36;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v54 = a2;
    v55 = v3;
    if (v3)
    {
      v5 = 0;
      v52 = a2 & 0xFFFFFFFFFFFFFF8;
      v53 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v53)
        {
          v6 = MEMORY[0x1B8C92830](v5);
        }

        else
        {
          if (v5 >= *(v52 + 16))
          {
            goto LABEL_35;
          }

          v6 = *(a2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_34;
        }

        *&v58[0] = v6;
        type metadata accessor for MapsSyncObject();
        v9 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943500, &qword_1B63C61E8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v62 = 0;
          v60 = 0u;
          v61 = 0u;
        }

        sub_1B6284EAC(&v60, &qword_1EB943508, &qword_1B63C61F0);
        v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
        [*&v9[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
        v11 = sub_1B629563C(*&v9[v10], a1);
        [*&v9[v10] unlock];
        if (!v11)
        {
          break;
        }

        v12 = v11;
        MEMORY[0x1B8C92370]();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B63BECC4();
        }

        sub_1B63BECE4();
        v4 = v57;
        v13 = v9;
        if (swift_dynamicCast())
        {
          sub_1B62AA870(v58, &v60);
          [*__swift_project_boxed_opaque_existential_0(&v60 *(&v61 + 1))];

          __swift_destroy_boxed_opaque_existential_1(&v60);
        }

        else
        {

          v59 = 0;
          memset(v58, 0, sizeof(v58));
          sub_1B6284EAC(v58, &qword_1EB943508, &qword_1B63C61F0);
        }

        a2 = v54;
        ++v5;
        if (v8 == v55)
        {
          goto LABEL_19;
        }
      }

      sub_1B63BEDC4();
      if (qword_1EDB0F690 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1B63C3D50;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1B6281318();
      *(v20 + 32) = 0xD000000000000036;
      *(v20 + 40) = 0x80000001B63CB510;
      sub_1B63BEA14();

      sub_1B634DB54();
      swift_allocError();
      *v21 = 2;
      swift_willThrow();

      goto LABEL_64;
    }

LABEL_19:
    if (v4 >> 62)
    {
      break;
    }

    v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_38;
    }

LABEL_21:
    v16 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1B8C92830](v16, v4);
      }

      else
      {
        if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v17 = *(v4 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [a1 deleteObject_];

      ++v16;
      if (v19 == v15)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v22 = a2;
    v3 = sub_1B63BF044();
    a2 = v22;
  }

  v15 = sub_1B63BF044();
  if (v15)
  {
    goto LABEL_21;
  }

LABEL_38:
  *&v60 = 0;
  if (![a1 save_])
  {
    v30 = v60;

    sub_1B63BE824();

    swift_willThrow();
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_1B63BF114();

    swift_getErrorValue();
    *(&v61 + 1) = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v60);
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_0);
    sub_1B628C510(&v60, v58, &unk_1EB943740, &qword_1B63C5030);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943740, &qword_1B63C5030);
    v32 = sub_1B63BEBE4();
    v34 = v33;
    sub_1B6284EAC(&v60, &unk_1EB943740, &qword_1B63C5030);
    MEMORY[0x1B8C92330](v32, v34);

    sub_1B63BEDC4();
    if (qword_1EDB0F690 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B63C3D50;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1B6281318();
    *(v35 + 32) = 0xD00000000000001FLL;
    *(v35 + 40) = 0x80000001B63CB550;
    sub_1B63BEA14();

    swift_willThrow();
    goto LABEL_64;
  }

  if (!v55)
  {
    v36 = v60;
    goto LABEL_50;
  }

  if (v55 < 1)
  {
    __break(1u);
    goto LABEL_66;
  }

  v23 = v60;
  v24 = v54;
  v25 = 0;
  do
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1B8C92830](v25);
    }

    else
    {
      v26 = *(v24 + 8 * v25 + 32);
    }

    v27 = v26;
    ++v25;
    v28 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    [*&v26[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
    v29 = *&v27[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId];
    *&v27[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;

    [*&v27[v28] unlock];
    v24 = v54;
  }

  while (v55 != v25);
LABEL_50:
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_1B63BF114();

  *&v60 = 0xD000000000000022;
  *(&v60 + 1) = 0x80000001B63CB570;
  if (v4 >> 62)
  {
    v37 = sub_1B63BF044();
    if (!v37)
    {
      goto LABEL_62;
    }

LABEL_52:
    *&v58[0] = MEMORY[0x1E69E7CC0];
    sub_1B639E7FC(0, v37 & ~(v37 >> 63), 0);
    if ((v37 & 0x8000000000000000) == 0)
    {
      v38 = 0;
      v39 = *&v58[0];
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x1B8C92830](v38, v4);
        }

        else
        {
          v40 = *(v4 + 8 * v38 + 32);
        }

        v41 = v40;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943510, &qword_1B63C61F8);
        v42 = sub_1B63BEBE4();
        v44 = v43;

        *&v58[0] = v39;
        v46 = *(v39 + 16);
        v45 = *(v39 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1B639E7FC((v45 > 1), v46 + 1, 1);
          v39 = *&v58[0];
        }

        ++v38;
        *(v39 + 16) = v46 + 1;
        v47 = v39 + 16 * v46;
        *(v47 + 32) = v42;
        *(v47 + 40) = v44;
      }

      while (v37 != v38);

      goto LABEL_63;
    }

LABEL_66:
    __break(1u);
  }

  v37 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
    goto LABEL_52;
  }

LABEL_62:

  v39 = MEMORY[0x1E69E7CC0];
LABEL_63:
  v48 = MEMORY[0x1B8C923A0](v39, MEMORY[0x1E69E6158]);
  v50 = v49;

  MEMORY[0x1B8C92330](v48, v50);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v60, *(&v60 + 1));

LABEL_64:
  v51 = *MEMORY[0x1E69E9840];
}

void sub_1B6380B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1B63BE814();
    if (a2)
    {
LABEL_3:
      sub_1B6383280();
      v6 = sub_1B63BEC94();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B6380BFC(uint64_t a1)
{
  sub_1B62814B4();
  sub_1B634C490(a1);

  sub_1B628276C();
  sub_1B634C490(a1);
}

id MapsSyncStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B6380E1C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B63BF434();
  sub_1B63BEC24();

  v5 = sub_1B63BF494();

  return sub_1B6380FB0(a1 & 1, v5);
}

unint64_t sub_1B6380EB0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B63BEF14();

  return sub_1B63810B0(a1, v5);
}

unint64_t sub_1B6380EF4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B63BF434();
  sub_1B63BEC24();
  v6 = sub_1B63BF494();

  return sub_1B6381174(a1, a2, v6);
}

unint64_t sub_1B6380F6C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B63BF0A4();

  return sub_1B638122C(a1, v5);
}

unint64_t sub_1B6380FB0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x64756F6C43;
    }

    else
    {
      v6 = 0x6C61636F4CLL;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x64756F6C43 : 0x6C61636F4CLL;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_1B63BF364();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1B63810B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for MapsSyncObject();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B63BEF24();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B6381174(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B63BF364())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B638122C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B6382D78(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8C927A0](v9, a1);
      sub_1B6382DD4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1B63812F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435D0, qword_1B63C6218);
    v2 = sub_1B63BF2F4();
    v20 = v2;
    sub_1B63BF1D4();
    v3 = sub_1B63BF264();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for MapsSyncObject();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1B6383280();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1B638CC34(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1B63BEF14();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1B63BF264();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void (*sub_1B6381518(uint64_t *a1, char a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1B6381784(v6);
  v6[9] = sub_1B638161C((v6 + 4), a2 & 1, isUniquelyReferenced_nonNull_native);
  return sub_1B63815BC;
}

void sub_1B63815BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_1B638161C(uint64_t a1, char a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1B6380E1C(a2 & 1);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B638E094();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B638C97C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1B6380E1C(a2 & 1);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1B63BF3D4();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_1B6381738;
}

unint64_t sub_1B6381738(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_1B638DE84(*(result + 16), *(result + 24) & 1, v1, v3);
    }
  }

  else if (*(result + 25))
  {
    return sub_1B638D69C(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_1B6381784(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B63817AC;
}

void sub_1B63817B8(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1B63BF204() == *(a4 + 36))
    {
      sub_1B63BF214();
      type metadata accessor for MapsSyncObject();
      swift_dynamicCast();
      sub_1B6380EB0(v8);
      v6 = v5;

      if (v6)
      {
        sub_1B63BF1E4();
        sub_1B63BF234();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1B63BEFD4();
  v7 = *(a4 + 36);
}

void sub_1B638190C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1B63BF244();
      sub_1B6383280();
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1B63BF204() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1B63BF214();
  type metadata accessor for MapsSyncObject();
  swift_dynamicCast();
  v5 = sub_1B6380EB0(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

void sub_1B6381AF4(unint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v42[5] = a3;
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
LABEL_34:
    v5 = sub_1B63BF044();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v40 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v41 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v38 = isUniquelyReferenced_nonNull_native;
      v39 = v5;
      do
      {
        if (v41)
        {
          v7 = MEMORY[0x1B8C92830](v6, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v6 >= *(v40 + 16))
          {
            goto LABEL_31;
          }

          v7 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        ObjectType = swift_getObjectType();
        v11 = (*(ObjectType + 592))();
        v12 = v11 & 1;
        if ((*a2)[2])
        {
          sub_1B6380E1C(v11 & 1);
          if (v13)
          {
            goto LABEL_24;
          }

          v14 = *a2;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42[0] = *a2;
        v15 = v42[0];
        *a2 = 0x8000000000000000;
        v17 = sub_1B6380E1C(v12);
        v18 = v15[2];
        v19 = (v16 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_32;
        }

        v21 = v16;
        if (v15[3] >= v20)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B638E094();
          }
        }

        else
        {
          sub_1B638C97C(v20, isUniquelyReferenced_nonNull_native);
          v22 = sub_1B6380E1C(v12);
          if ((v21 & 1) != (v23 & 1))
          {
            sub_1B63BF3D4();
            __break(1u);
            return;
          }

          v17 = v22;
        }

        isUniquelyReferenced_nonNull_native = v38;
        v24 = v42[0];
        if (v21)
        {
          v25 = v42[0][7];
          v26 = *(v25 + 8 * v17);
          *(v25 + 8 * v17) = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v42[0][(v17 >> 6) + 8] |= 1 << v17;
          *(v24[6] + v17) = v12;
          *(v24[7] + 8 * v17) = MEMORY[0x1E69E7CC0];
          v27 = v24[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_33;
          }

          v24[2] = v29;
        }

        *a2 = v24;
        v5 = v39;
LABEL_24:
        v30 = *&v8[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
        type metadata accessor for MapsSyncStore();
        v31 = v30;
        v32 = sub_1B63BEF24();

        if (v32)
        {
          v34 = sub_1B637DFDC(v42, v12);
          if (*v33)
          {
            v35 = v33;
            v36 = v8;
            MEMORY[0x1B8C92370]();
            if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v37 = *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1B63BECC4();
              isUniquelyReferenced_nonNull_native = v38;
            }

            sub_1B63BECE4();
            (v34)(v42, 0);
            v5 = v39;
          }

          else
          {
            (v34)(v42, 0);
          }
        }

        ++v6;
      }

      while (v9 != v5);
    }
  }
}

uint64_t dispatch thunk of MapsSyncStore.save(objects:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628E340;

  return v8(a1);
}

uint64_t dispatch thunk of MapsSyncStore.delete(objects:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628CAA0;

  return v8(a1);
}

void sub_1B6382318(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_32:
    v2 = sub_1B63BF044();
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

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, a1);
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v20 = v3;
  v4 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B8C92830](v4, a1);
    }

    else
    {
      if (v4 >= *(v19 + 16))
      {
        goto LABEL_31;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(ObjectType + 592))();
    v10 = swift_getObjectType();
    v11 = (*(v10 + 592))();
    if (v9)
    {
      v12 = 0x64756F6C43;
    }

    else
    {
      v12 = 0x6C61636F4CLL;
    }

    if (v11)
    {
      v13 = 0x64756F6C43;
    }

    else
    {
      v13 = 0x6C61636F4CLL;
    }

    if (v12 == v13)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v14 = sub_1B63BF364();

      swift_bridgeObjectRelease_n();
      if ((v14 & 1) == 0)
      {

        return;
      }
    }

    ++v4;
  }

  while (v7 != v2);
  v15 = sub_1B6293F54();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1B629409C();
  v17 = v16;
  if (v18)
  {
    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v16);
    sub_1B63BEE84();
  }

  sub_1B6295C20(v17);
}

void sub_1B63826F8(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_32:
    v2 = sub_1B63BF044();
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

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, a1);
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v20 = v3;
  v4 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B8C92830](v4, a1);
    }

    else
    {
      if (v4 >= *(v19 + 16))
      {
        goto LABEL_31;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(ObjectType + 592))();
    v10 = swift_getObjectType();
    v11 = (*(v10 + 592))();
    if (v9)
    {
      v12 = 0x64756F6C43;
    }

    else
    {
      v12 = 0x6C61636F4CLL;
    }

    if (v11)
    {
      v13 = 0x64756F6C43;
    }

    else
    {
      v13 = 0x6C61636F4CLL;
    }

    if (v12 == v13)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v14 = sub_1B63BF364();

      swift_bridgeObjectRelease_n();
      if ((v14 & 1) == 0)
      {

        return;
      }
    }

    ++v4;
  }

  while (v7 != v2);
  v15 = sub_1B6293F54();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1B629409C();
  v17 = v16;
  if (v18)
  {
    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v16);
    sub_1B63BEE84();
  }

  sub_1B6295C20(v17);
}

unint64_t sub_1B6382A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435D0, qword_1B63C6218);
    v3 = sub_1B63BF304();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1B6380EB0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B6382B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
    v3 = sub_1B63BF304();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B628C510(v4, &v13, &qword_1EB9434F8, &qword_1B63C61B0);
      v5 = v13;
      v6 = v14;
      result = sub_1B6380EF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B628E928(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B6382C3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9434E8, &qword_1B63C61A0);
    v3 = sub_1B63BF304();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B628C510(v4, v13, &qword_1EB9434F0, &qword_1B63C61A8);
      result = sub_1B6380F6C(v13);
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
      result = sub_1B628E928(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B6382E28(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_31:
    v4 = sub_1B63BF044();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_32:
    sub_1B634DB54();
    v27 = swift_allocError();
    *v28 = 2;
    v29 = sub_1B63BE814();
    (*(a2 + 16))(a2, v29, 0);

    v19 = v27;

LABEL_24:

    return;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_32;
  }

LABEL_3:
  v30 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = MEMORY[0x1B8C92830](0, a1);
  }

  else
  {
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v32 = *(a1 + 32);
  }

  v5 = 0;
  a2 = 0x64756F6C43;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B8C92830](v5, a1);
    }

    else
    {
      if (v5 >= *(v31 + 16))
      {
        goto LABEL_30;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    ObjectType = swift_getObjectType();
    v10 = (*(ObjectType + 592))();
    v11 = swift_getObjectType();
    v12 = (*(v11 + 592))();
    if (v10)
    {
      v13 = 0x64756F6C43;
    }

    else
    {
      v13 = 0x6C61636F4CLL;
    }

    if (v12)
    {
      v14 = 0x64756F6C43;
    }

    else
    {
      v14 = 0x6C61636F4CLL;
    }

    if (v13 == v14)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v15 = sub_1B63BF364();

      swift_bridgeObjectRelease_n();
      if ((v15 & 1) == 0)
      {
        sub_1B634DB54();
        v16 = swift_allocError();
        *v17 = 2;
        v18 = sub_1B63BE814();
        (*(v30 + 16))(v30, v18, 0);

        v19 = v32;

        goto LABEL_24;
      }
    }

    ++v5;
  }

  while (v8 != v4);
  v20 = sub_1B6293F54();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1B629409C();
  v22 = v21;
  if (v23)
  {
    swift_willThrow();

    v24 = v22;
    v25 = sub_1B63BE814();
    sub_1B6383280();
    v26 = sub_1B63BEC94();
    (*(v30 + 16))(v30, v25, v26);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    sub_1B63BEE84();

    sub_1B6295C20(v22);
  }
}

unint64_t sub_1B6383280()
{
  result = qword_1EDB0ECB0;
  if (!qword_1EDB0ECB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB0ECB0);
  }

  return result;
}

uint64_t sub_1B63832CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B637F698(v2, v3, v4);
}

uint64_t sub_1B6383380()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B637EE14(v2, v3, v4);
}

void sub_1B63834B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_31:
    v5 = sub_1B63BF044();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_32:
    sub_1B634DB54();
    v25 = swift_allocError();
    *v26 = 2;
    (a3)();
    v19 = v25;

LABEL_24:

    return;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_32;
  }

LABEL_3:
  v27 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = MEMORY[0x1B8C92830](0, a1);
  }

  else
  {
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v29 = *(a1 + 32);
  }

  v6 = 0;
  a3 = 0x6C61636F4CLL;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8C92830](v6, a1);
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_30;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    ObjectType = swift_getObjectType();
    v11 = (*(ObjectType + 592))();
    v12 = swift_getObjectType();
    v13 = (*(v12 + 592))();
    if (v11)
    {
      v14 = 0x64756F6C43;
    }

    else
    {
      v14 = 0x6C61636F4CLL;
    }

    if (v13)
    {
      v15 = 0x64756F6C43;
    }

    else
    {
      v15 = 0x6C61636F4CLL;
    }

    if (v14 == v15)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v16 = sub_1B63BF364();

      swift_bridgeObjectRelease_n();
      if ((v16 & 1) == 0)
      {
        sub_1B634DB54();
        v17 = swift_allocError();
        *v18 = 2;
        v27();

        v19 = v29;

        goto LABEL_24;
      }
    }

    ++v6;
  }

  while (v9 != v5);
  v20 = sub_1B6293F54();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1B629409C();
  v22 = v21;
  if (v23)
  {
    swift_willThrow();

    v24 = v22;
    (v27)(v22);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    sub_1B63BEE84();

    sub_1B6295C20(v22);
  }
}

void sub_1B6383914(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_31:
    v5 = sub_1B63BF044();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_32:
    sub_1B634DB54();
    v25 = swift_allocError();
    *v26 = 2;
    (a3)();
    v19 = v25;

LABEL_24:

    return;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_32;
  }

LABEL_3:
  v27 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = MEMORY[0x1B8C92830](0, a1);
  }

  else
  {
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v29 = *(a1 + 32);
  }

  v6 = 0;
  a3 = 0x6C61636F4CLL;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8C92830](v6, a1);
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_30;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    ObjectType = swift_getObjectType();
    v11 = (*(ObjectType + 592))();
    v12 = swift_getObjectType();
    v13 = (*(v12 + 592))();
    if (v11)
    {
      v14 = 0x64756F6C43;
    }

    else
    {
      v14 = 0x6C61636F4CLL;
    }

    if (v13)
    {
      v15 = 0x64756F6C43;
    }

    else
    {
      v15 = 0x6C61636F4CLL;
    }

    if (v14 == v15)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v16 = sub_1B63BF364();

      swift_bridgeObjectRelease_n();
      if ((v16 & 1) == 0)
      {
        sub_1B634DB54();
        v17 = swift_allocError();
        *v18 = 2;
        v27();

        v19 = v29;

        goto LABEL_24;
      }
    }

    ++v6;
  }

  while (v9 != v5);
  v20 = sub_1B6293F54();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1B629409C();
  v22 = v21;
  if (v23)
  {
    swift_willThrow();

    v24 = v22;
    (v27)(v22);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    sub_1B63BEE84();

    sub_1B6295C20(v22);
  }
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

uint64_t sub_1B6383D88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1B6383EA4(void *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for MapsSyncManagedCollection();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v19 = a1;
  v5 = [v19 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for MapsSyncManagedCollectionItem();
    v7 = [swift_getObjCClassFromMetadata() fetchRequest];
    sub_1B62A11CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B63C3D50;
    *(v8 + 56) = v2;
    *(v8 + 64) = sub_1B63840FC();
    *(v8 + 32) = v4;
    v9 = v19;
    v10 = sub_1B63BED94();
    [v7 setPredicate_];

    v11 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
    v20[0] = 0;
    v12 = [v6 executeRequest:v11 error:v20];
    if (v12)
    {
      v13 = v12;
      v14 = v20[0];
    }

    else
    {
      v16 = v20[0];
      v17 = sub_1B63BE824();

      swift_willThrow();
    }

LABEL_9:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  v15 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1B63840FC()
{
  result = qword_1EB943538;
  if (!qword_1EB943538)
  {
    type metadata accessor for MapsSyncManagedCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943538);
  }

  return result;
}

uint64_t MultiPointRouteType.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 0xFFFF)
    {
      v1 = 0xFFFF;
    }

    else
    {
      v1 = a1 == 1;
    }

    v2 = a1 != 0xFFFF && a1 != 1;
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 16);
}

unint64_t sub_1B63841A4()
{
  result = qword_1EB943540;
  if (!qword_1EB943540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943540);
  }

  return result;
}

unsigned __int16 *sub_1B63841F8@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = (v2 - 2) < 0xFFFD;
  if ((v2 - 2) < 0xFFFD)
  {
    LOWORD(v2) = 0;
  }

  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

uint64_t sub_1B638422C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

void sub_1B6384270(uint64_t a1)
{
  v46 = sub_1B63BE8E4();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1B63BF044();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1B639E7FC(0, v6 & ~(v6 >> 63), 0);
    v49 = v54;
    if (v47)
    {
      v7 = sub_1B63BEFF4();
    }

    else
    {
      v9 = -1 << *(a1 + 32);
      v7 = sub_1B63BEFB4();
      v8 = *(a1 + 36);
    }

    v51 = v7;
    v52 = v8;
    v53 = v47 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v43 = v6;
      v44 = (v3 + 8);
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v41 = a1 + 56;
      v42 = v11;
      v39 = v1;
      v40 = a1 + 64;
      while (v10 < v6)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v51;
        v15 = v53;
        v48 = v52;
        v16 = a1;
        sub_1B638EDE0(v51, v52, v53, a1);
        v18 = v17;
        v19 = [v17 objectID];
        v20 = [v19 URIRepresentation];

        v21 = v45;
        sub_1B63BE8B4();

        v22 = sub_1B63BE854();
        v24 = v23;
        (*v44)(v21, v46);

        v25 = v49;
        v54 = v49;
        v27 = *(v49 + 16);
        v26 = *(v49 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1B639E7FC((v26 > 1), v27 + 1, 1);
          v25 = v54;
        }

        *(v25 + 16) = v27 + 1;
        v28 = v25 + 16 * v27;
        *(v28 + 32) = v22;
        *(v28 + 40) = v24;
        v49 = v25;
        if (v47)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          a1 = v16;
          if (sub_1B63BF014())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943588, &qword_1B63C63E8);
          v12 = sub_1B63BED64();
          sub_1B63BF094();
          v12(v50, 0);
          if (v10 == v6)
          {
LABEL_34:
            sub_1B6383D88(v51, v52, v53);
            return;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v16;
          v29 = 1 << *(v16 + 32);
          if (v14 >= v29)
          {
            goto LABEL_38;
          }

          v30 = v14 >> 6;
          v31 = *(v41 + 8 * (v14 >> 6));
          if (((v31 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v16 + 36) != v48)
          {
            goto LABEL_40;
          }

          v32 = v31 & (-2 << (v14 & 0x3F));
          if (v32)
          {
            v29 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
            v6 = v43;
          }

          else
          {
            v33 = v30 << 6;
            v34 = v30 + 1;
            v35 = (v40 + 8 * v30);
            v6 = v43;
            while (v34 < (v29 + 63) >> 6)
            {
              v37 = *v35++;
              v36 = v37;
              v33 += 64;
              ++v34;
              if (v37)
              {
                sub_1B6383D88(v14, v48, 0);
                v29 = __clz(__rbit64(v36)) + v33;
                goto LABEL_33;
              }
            }

            sub_1B6383D88(v14, v48, 0);
          }

LABEL_33:
          v38 = *(v16 + 36);
          v51 = v29;
          v52 = v38;
          v53 = 0;
          if (v10 == v6)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_1B63846A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B628E928(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1B638DBB8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1B6284EAC(a1, &unk_1EB943740, &qword_1B63C5030);
    sub_1B638C8D8(a2, a3, v10);

    return sub_1B6284EAC(v10, &unk_1EB943740, &qword_1B63C5030);
  }

  return result;
}

uint64_t sub_1B6384AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_1B6384B64;

  return (sub_1B638F0B4)(a1);
}

uint64_t sub_1B6384B64(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 48);
  v5 = *v3;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = v2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6384C9C, 0, 0);
  }
}

uint64_t sub_1B6384C9C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v11 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v5 + 32) = v11;
  *(v5 + 48) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
  sub_1B63BEE84();
  v6 = *(v0 + 64);

  if (v2)
  {
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 16);
    v10 = *(v0 + 8);

    return v10(v9);
  }
}

uint64_t sub_1B6384DC8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = [a1 entities];
  sub_1B6281C60(0, &qword_1EDB0EA90, 0x1E695D5B8);
  v9 = sub_1B63BECA4();

  if (v9 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
  {
    v11 = 0;
    v56 = v9 & 0xC000000000000001;
    v53 = v9 & 0xFFFFFFFFFFFFFF8;
    v54 = i;
    v55 = MEMORY[0x1E69E7CC8];
    v52 = v9 + 32;
    v48 = v9;
    v49 = a3;
    v47 = a2;
    while (1)
    {
      if (v56)
      {
        v12 = MEMORY[0x1B8C92830](v11, v9);
      }

      else
      {
        if (v11 >= *(v53 + 16))
        {
          goto LABEL_48;
        }

        v12 = *(v52 + 8 * v11);
      }

      v13 = v12;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      if (a3)
      {
        v15 = [v12 name];
        if (!v15)
        {
          goto LABEL_4;
        }

        v16 = v5;
        v17 = v9;
        v18 = a2;
        v19 = v15;
        v20 = sub_1B63BEBD4();
        v22 = v21;

        a2 = v18;
        if (v20 == v18 && v22 == a3)
        {

          v9 = v17;
          v5 = v16;
          i = v54;
        }

        else
        {
          v24 = sub_1B63BF364();

          v9 = v17;
          v5 = v16;
          i = v54;
          if ((v24 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      v25 = [v13 name];
      if (!v25)
      {
LABEL_4:

        goto LABEL_5;
      }

      v26 = a2;
      v57 = v13;
      v27 = v25;
      v28 = sub_1B63BEBD4();
      a2 = v29;

      if (([v57 isAbstract] & 1) == 0)
      {
        v30 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) init];
        [v30 setEntity_];
        if (*(v55 + 16) && (v31 = sub_1B6380EF4(v28, a2), (v32 & 1) != 0))
        {
          v33 = *(*(v55 + 56) + 8 * v31);
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
        v34 = sub_1B63BEEA4();
        if (v5)
        {
        }

        v50 = v30;
        v35 = sub_1B63A2FAC(v34);

        if (v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = MEMORY[0x1E69E7CC0];
        }

        if (v36 >> 62)
        {
          a3 = sub_1B63BF044();
          v51 = v11;
          if (a3)
          {
LABEL_33:
            if (a3 < 1)
            {
              goto LABEL_49;
            }

            v37 = 0;
            do
            {
              if ((v36 & 0xC000000000000001) != 0)
              {
                v38 = MEMORY[0x1B8C92830](v37, v36);
              }

              else
              {
                v38 = *(v36 + 8 * v37 + 32);
              }

              v39 = v38;
              v40 = sub_1B6389CF4(v38);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_1B62B24C0(0, v33[2] + 1, 1, v33);
              }

              v42 = v33[2];
              v41 = v33[3];
              if (v42 >= v41 >> 1)
              {
                v33 = sub_1B62B24C0((v41 > 1), v42 + 1, 1, v33);
              }

              ++v37;

              v33[2] = v42 + 1;
              v33[v42 + 4] = v40;
            }

            while (a3 != v37);
          }
        }

        else
        {
          a3 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v51 = v11;
          if (a3)
          {
            goto LABEL_33;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B638DD08(v33, v28, a2, isUniquelyReferenced_nonNull_native);

        v11 = v51;
        v5 = 0;
        v9 = v48;
        a3 = v49;
        a2 = v47;
        i = v54;
        goto LABEL_5;
      }

      a2 = v26;
LABEL_5:
      if (v11 == i)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v55 = MEMORY[0x1E69E7CC8];
LABEL_52:

  v45 = sub_1B63852A0(v55);

  *a4 = v45;
  return result;
}

unint64_t sub_1B63852A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
    v2 = sub_1B63BF304();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435A8, &qword_1B63C64C8);
        swift_dynamicCast();
        sub_1B628E928(&v25, v27);
        sub_1B628E928(v27, v28);
        sub_1B628E928(v28, &v26);
        result = sub_1B6380EF4(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1B628E928(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1B628E928(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B6385690(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[3] = a4;
  v8 = sub_1B63BE8E4();
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[6] = v11;
  v4[7] = _Block_copy(a3);
  sub_1B63BE8B4();
  if (a2)
  {
    v12 = sub_1B63BEBD4();
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v4[8] = v12;
  v4[9] = v13;
  v14 = a4;
  v15 = swift_task_alloc();
  v4[10] = v15;
  *v15 = v4;
  v15[1] = sub_1B63857F4;

  return sub_1B638F0B4(v11);
}

uint64_t sub_1B63857F4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 80);
  v5 = *v3;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  *(v5 + 104) = v2;

  if (v2)
  {
    v6 = *(v5 + 72);
    v8 = *(v5 + 40);
    v7 = *(v5 + 48);
    v9 = *(v5 + 32);

    (*(v8 + 8))(v7, v9);
    v10 = sub_1B63BE814();

    v11 = *(v5 + 56);
    (v11)[2](v11, 0, v10);

    _Block_release(v11);

    v12 = *(v5 + 8);

    return v12();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B63859B8, 0, 0);
  }
}

uint64_t sub_1B63859B8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v21 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v5 + 32) = v21;
  *(v5 + 48) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
  sub_1B63BEE84();
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);

  (*(v9 + 8))(v8, v10);
  if (v2)
  {
    v12 = sub_1B63BE814();

    v13 = v12;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v16 = *(v0 + 16);
    v17 = sub_1B63BEB54();

    v14 = v17;
    v13 = 0;
    v15 = v17;
  }

  v18 = *(v0 + 56);
  v18[2](v18, v14, v13);

  _Block_release(v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1B6385B6C(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v3[4] = swift_getObjectType();
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1B6385C28;

  return (sub_1B638F0B4)(a1);
}

uint64_t sub_1B6385C28(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6385D88, 0, 0);
  }
}

uint64_t sub_1B6385D88()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  sub_1B63BEE84();

  v6 = *(v0 + 8);

  return v6();
}

char *sub_1B6385E60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v66[4] = *MEMORY[0x1E69E9840];
  result = sub_1B63862DC(a1);
  if (!result)
  {
    goto LABEL_49;
  }

  v6 = result;
  v62 = a4;
  v65 = result;
  v7 = result + 64;
  v8 = 1 << result[32];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 8);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (*(v6 + 48) + ((v13 << 10) | (16 * v14)));
    v17 = *v15;
    v16 = v15[1];

    v18 = sub_1B63BEC54();

    if ((v18 & 1) == 0)
    {

      v19 = 1;
      goto LABEL_14;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_52;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *&v7[8 * v13];
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  sub_1B638FFBC(v62, &v65);
  v19 = 0;
  v6 = v65;
LABEL_14:
  v57 = v19;
  v56 = v6 + 64;
  v20 = 1 << *(v6 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v6 + 64);
  v55 = (v20 + 63) >> 6;

  v23 = 0;
  v58 = v6;
LABEL_18:
  if (v22)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v24 >= v55)
    {
      break;
    }

    v22 = *(v56 + 8 * v24);
    ++v23;
    if (v22)
    {
      v23 = v24;
LABEL_23:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v26 = v25 | (v23 << 6);
      v27 = *(*(v6 + 56) + 8 * v26);
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = (*(v6 + 48) + 16 * v26);
        v30 = v29[1];
        v60 = *v29;

        v31 = 32;
        while (1)
        {
          v32 = *(v27 + v31);

          v33 = sub_1B638A994(v60, v30, v32, v62);
          if (v33)
          {
            v34 = v33;
            if (!*(v32 + 16) || (v35 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000), (v36 & 1) == 0))
            {

LABEL_33:

              goto LABEL_26;
            }

            sub_1B629E3F0(*(v32 + 56) + 32 * v35, v66);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_33;
            }

            sub_1B63918F4(v63, v64, v34, &v65);
          }

LABEL_26:
          v31 += 8;
          if (!--v28)
          {

            v6 = v58;
            goto LABEL_18;
          }
        }
      }

      goto LABEL_18;
    }
  }

  v37 = 0;
  v38 = v65;
  v59 = v65 + 64;
  v61 = v65;
  v39 = 1 << v65[32];
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v65 + 8);
  v42 = (v39 + 63) >> 6;
  while (v41)
  {
LABEL_42:
    v44 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v45 = *(v38 + 56);
    v46 = (v37 << 9) | (8 * v44);
    v47 = *(v45 + v46);
    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = *(v45 + v46);

      v50 = 32;
      do
      {
        v51 = *(v47 + v50);

        sub_1B63929BC(v52, v62, v57);

        v50 += 8;
        --v48;
      }

      while (v48);

      v38 = v61;
    }
  }

  while (1)
  {
    v43 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_51;
    }

    if (v43 >= v42)
    {
      break;
    }

    v41 = *&v59[8 * v43];
    ++v37;
    if (v41)
    {
      v37 = v43;
      goto LABEL_42;
    }
  }

  v66[0] = 0;
  if ([v62 save_])
  {
    result = v66[0];
  }

  else
  {
    v53 = v66[0];
    sub_1B63BE824();

    result = swift_willThrow();
  }

LABEL_49:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B63862DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435B0, &unk_1B63C64D0);
    v2 = sub_1B63BF304();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_1B629E3F0(*(a1 + 56) + 32 * v15, v28);
        *&v27 = v17;
        *(&v27 + 1) = v18;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v19 = v27;
        sub_1B628E928(v26, v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435A8, &qword_1B63C64C8);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1B6380EF4(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;

          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B63866D0(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v4[3] = swift_getObjectType();
  v7 = sub_1B63BE8E4();
  v4[4] = v7;
  v8 = *(v7 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[6] = v10;
  v4[7] = _Block_copy(a3);
  sub_1B63BE8B4();
  v4[8] = sub_1B63BEB74();
  v11 = a4;
  v12 = swift_task_alloc();
  v4[9] = v12;
  *v12 = v4;
  v12[1] = sub_1B638684C;

  return sub_1B638F0B4(v10);
}

uint64_t sub_1B638684C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 72);
  v7 = *v3;
  *(v7 + 80) = v2;

  if (v2)
  {
    v8 = *(v7 + 64);
    v10 = *(v7 + 40);
    v9 = *(v7 + 48);
    v11 = *(v7 + 32);
    v12 = *(v7 + 16);

    (*(v10 + 8))(v9, v11);
    v13 = *(v7 + 56);
    v14 = sub_1B63BE814();

    (*(v13 + 16))(v13, v14);
    v15 = *(v7 + 48);
    _Block_release(*(v7 + 56));

    v16 = *(v7 + 8);

    return v16();
  }

  else
  {
    *(v7 + 88) = a2;
    *(v7 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6386A18, 0, 0);
  }
}

uint64_t sub_1B6386A18()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v15 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v8;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = v7;
  sub_1B63BEE84();

  (*(v5 + 8))(v15, v6);
  v10 = *(v0 + 56);
  if (v3)
  {
    v11 = sub_1B63BE814();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v0 + 56), 0);
  }

  v12 = *(v0 + 48);
  _Block_release(*(v0 + 56));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1B6386B7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1B6386C24;

  return sub_1B638F0B4(a1);
}

uint64_t sub_1B6386C24(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 24);
  v5 = *v3;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = v2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6386D5C, 0, 0);
  }
}

uint64_t sub_1B6386D5C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943558, qword_1B63C6358);
  sub_1B63BEE84();
  v5 = *(v0 + 40);

  if (v2)
  {
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 8);

    return v9(v8);
  }
}

void sub_1B6386E70(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 entities];
  sub_1B6281C60(0, &qword_1EDB0EA90, 0x1E695D5B8);
  v5 = sub_1B63BECA4();

  if (v5 >> 62)
  {
LABEL_31:
    v6 = sub_1B63BF044();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v35 = a3;
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v40 = v5 & 0xFFFFFFFFFFFFFF8;
      a3 = MEMORY[0x1E69E7CC8];
      v9 = &selRef_powerByConnector;
      v37 = v6;
      v38 = v5;
      v36 = v5 & 0xC000000000000001;
      while (1)
      {
        if (v8)
        {
          v10 = MEMORY[0x1B8C92830](v7, v5);
        }

        else
        {
          if (v7 >= *(v40 + 16))
          {
            goto LABEL_28;
          }

          v10 = *(v5 + 8 * v7 + 32);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (([v10 v9[133]] & 1) == 0)
        {
          v13 = [v11 name];
          if (v13)
          {
            break;
          }
        }

LABEL_5:
        ++v7;
        if (v12 == v6)
        {

          *v35 = a3;
          goto LABEL_33;
        }
      }

      v14 = v13;
      v15 = sub_1B63BEBD4();
      v5 = v16;

      v17 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) init];
      [v17 setEntity_];
      v43[0] = 0;
      v18 = [a2 countForFetchRequest:v17 error:v43];
      if (v43[0])
      {
        v43[0];

        swift_willThrow();

        goto LABEL_33;
      }

      v41 = v18;
      v42 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = a3;
      v20 = v5;
      v22 = sub_1B6380EF4(v15, v5);
      v23 = a3[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_29;
      }

      v5 = v21;
      if (a3[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B638E664();
        }

        v26 = v20;
        v29 = v42;
        if ((v5 & 1) == 0)
        {
LABEL_18:
          a3 = v43[0];
          *(v43[0] + (v22 >> 6) + 8) |= 1 << v22;
          v30 = (a3[6] + 16 * v22);
          *v30 = v15;
          v30[1] = v26;
          *(a3[7] + 8 * v22) = v41;

          v31 = a3[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_30;
          }

          a3[2] = v33;
          goto LABEL_24;
        }
      }

      else
      {
        sub_1B638D3FC(v25, isUniquelyReferenced_nonNull_native);
        v26 = v20;
        v27 = sub_1B6380EF4(v15, v20);
        if ((v5 & 1) != (v28 & 1))
        {
          sub_1B63BF3D4();
          __break(1u);
          return;
        }

        v22 = v27;
        v29 = v42;
        if ((v5 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      a3 = v43[0];
      *(*(v43[0] + 7) + 8 * v22) = v41;

LABEL_24:
      v6 = v37;
      v5 = v38;
      v8 = v36;
      v9 = &selRef_powerByConnector;
      goto LABEL_5;
    }
  }

  *a3 = MEMORY[0x1E69E7CC8];
LABEL_33:
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B6387394(uint64_t a1, const void *a2, void *a3)
{
  v3[3] = a3;
  v6 = sub_1B63BE8E4();
  v3[4] = v6;
  v7 = *(v6 - 8);
  v3[5] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[6] = v9;
  v3[7] = _Block_copy(a2);
  sub_1B63BE8B4();
  v10 = a3;
  v11 = swift_task_alloc();
  v3[8] = v11;
  *v11 = v3;
  v11[1] = sub_1B63874D4;

  return sub_1B638F0B4(v9);
}

uint64_t sub_1B63874D4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 64);
  v5 = *v3;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 88) = v2;

  if (v2)
  {
    v7 = *(v5 + 40);
    v6 = *(v5 + 48);
    v8 = *(v5 + 32);

    (*(v7 + 8))(v6, v8);
    v9 = sub_1B63BE814();

    v10 = *(v5 + 56);
    (v10)[2](v10, 0, v9);

    _Block_release(v10);

    v11 = *(v5 + 8);

    return v11();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B638768C, 0, 0);
  }
}

uint64_t sub_1B638768C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943558, qword_1B63C6358);
  sub_1B63BEE84();
  v5 = *(v0 + 80);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    v10 = sub_1B63BE814();

    v11 = v10;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v14 = *(v0 + 16);
    v15 = sub_1B63BEB54();

    v12 = v15;
    v11 = 0;
    v13 = v15;
  }

  v16 = *(v0 + 56);
  v16[2](v16, v12, v11);

  _Block_release(v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B6387810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1B63878BC;

  return sub_1B638F0B4(a1);
}

uint64_t sub_1B63878BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6387A1C, 0, 0);
  }
}

uint64_t sub_1B6387A1C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v5;
  v6[5] = v4;
  sub_1B63BEE84();

  v7 = v0[1];

  return v7();
}

id sub_1B6387AF4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 entities];
  sub_1B6281C60(0, &qword_1EDB0EA90, 0x1E695D5B8);
  v8 = sub_1B63BECA4();

  if (v8 >> 62)
  {
LABEL_43:
    v9 = sub_1B63BF044();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_44:

LABEL_45:
    sub_1B634DB54();
    swift_allocError();
    *v32 = 2;
    goto LABEL_46;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_44;
  }

LABEL_3:
  v10 = 0;
  v11 = 0;
  v39 = v8;
  v40 = v8 & 0xC000000000000001;
  v36 = v8 & 0xFFFFFFFFFFFFFF8;
  v38 = v9;
LABEL_5:
  v35 = v10;
  v12 = v11;
  do
  {
    if (v40)
    {
      v13 = MEMORY[0x1B8C92830](v12, v8);
    }

    else
    {
      if (v12 >= *(v36 + 16))
      {
        goto LABEL_42;
      }

      v13 = *(v8 + 8 * v12 + 32);
    }

    v14 = v13;
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (!a4)
    {
      goto LABEL_21;
    }

    v15 = [v13 name];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1B63BEBD4();
      v19 = v18;

      if (v17 == a3 && v19 == a4)
      {

LABEL_21:
        v22 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) init];
        [v22 setEntity_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
        v23 = sub_1B63BEEA4();
        if (v4)
        {

          goto LABEL_47;
        }

        v34 = v22;
        v24 = sub_1B63A2FAC(v23);

        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
        }

        if (v25 >> 62)
        {
          v26 = sub_1B63BF044();
          if (v26)
          {
LABEL_27:
            if (v26 < 1)
            {
              __break(1u);
            }

            for (i = 0; i != v26; ++i)
            {
              if ((v25 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x1B8C92830](i, v25);
              }

              else
              {
                v28 = *(v25 + 8 * i + 32);
              }

              v29 = v28;
              [a2 deleteObject_];
            }
          }
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
            goto LABEL_27;
          }
        }

        v10 = 1;
        v9 = v38;
        v8 = v39;
        if (v11 != v38)
        {
          goto LABEL_5;
        }

        goto LABEL_36;
      }

      v21 = sub_1B63BF364();

      v9 = v38;
      v8 = v39;
      if (v21)
      {
        goto LABEL_21;
      }
    }

    ++v12;
  }

  while (v11 != v9);

  if ((v35 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_36:
  v41[0] = 0;
  if ([a2 save_])
  {
    result = v41[0];
    goto LABEL_47;
  }

  v31 = v41[0];
  sub_1B63BE824();

LABEL_46:
  result = swift_willThrow();
LABEL_47:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6388064(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = sub_1B63BE8E4();
  v4[3] = v8;
  v9 = *(v8 - 8);
  v4[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[5] = v11;
  v4[6] = _Block_copy(a3);
  sub_1B63BE8B4();
  if (a2)
  {
    v12 = sub_1B63BEBD4();
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v4[7] = v12;
  v4[8] = v13;
  v14 = a4;
  v15 = swift_task_alloc();
  v4[9] = v15;
  *v15 = v4;
  v15[1] = sub_1B63881C8;

  return sub_1B638F0B4(v11);
}

uint64_t sub_1B63881C8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 72);
  v7 = *v3;
  *(v7 + 80) = v2;

  if (v2)
  {
    v8 = *(v7 + 64);
    v10 = *(v7 + 32);
    v9 = *(v7 + 40);
    v11 = *(v7 + 24);

    (*(v10 + 8))(v9, v11);
    v12 = *(v7 + 48);
    v13 = sub_1B63BE814();

    (*(v12 + 16))(v12, v13);
    v14 = *(v7 + 40);
    _Block_release(*(v7 + 48));

    v15 = *(v7 + 8);

    return v15();
  }

  else
  {
    *(v7 + 88) = a2;
    *(v7 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6388394, 0, 0);
  }
}

uint64_t sub_1B6388394()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 32);
  v15 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  v9[2] = v2;
  v9[3] = v1;
  v9[4] = v5;
  v9[5] = v4;
  sub_1B63BEE84();

  (*(v6 + 8))(v15, v8);
  v10 = *(v0 + 48);
  if (v3)
  {
    v11 = sub_1B63BE814();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v0 + 48), 0);
  }

  v12 = *(v0 + 40);
  _Block_release(*(v0 + 48));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1B63884F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[3] = a3;
  v3[4] = ObjectType;
  v3[2] = a2;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B63885BC;

  return sub_1B638F0B4(a1);
}

uint64_t sub_1B63885BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B638871C, 0, 0);
  }
}

uint64_t sub_1B638871C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v6 = *(v0 + 16);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = v4;
  sub_1B63BEE84();

  v7 = *(v0 + 8);

  return v7();
}

id sub_1B63887F4(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v88 = a4;
  v89 = a3;
  v103 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v92 = &v66 - v10;
  v80 = sub_1B63BE8E4();
  v11 = *(v80 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v80);
  v78 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v66 - v21;
  v95 = sub_1B63BEA04();
  v22 = *(v95 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v95);
  v69 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v66 - v26);
  v28 = [a1 entities];
  sub_1B6281C60(0, &qword_1EDB0EA90, 0x1E695D5B8);
  v29 = sub_1B63BECA4();

  if (v29 >> 62)
  {
    goto LABEL_62;
  }

  v93 = v29 & 0xFFFFFFFFFFFFFF8;
  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
LABEL_63:

    goto LABEL_64;
  }

LABEL_3:
  v31 = 0;
  v68 = 0;
  v91 = v29 & 0xC000000000000001;
  v94 = (v22 + 48);
  v79 = (v22 + 32);
  v71 = (v22 + 56);
  v76 = (v22 + 8);
  v85 = (v11 + 48);
  v75 = (v11 + 32);
  v11 += 8;
  v87 = v29;
  v86 = v30;
  v74 = v11;
LABEL_4:
  v22 = v31;
  do
  {
    if (v91)
    {
      v32 = MEMORY[0x1B8C92830](v22, v29);
    }

    else
    {
      if (v22 >= *(v93 + 16))
      {
        goto LABEL_59;
      }

      v32 = *(v29 + 8 * v22 + 32);
    }

    v99 = v32;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v93 = v29 & 0xFFFFFFFFFFFFFF8;
      v30 = sub_1B63BF044();
      if (!v30)
      {
        goto LABEL_63;
      }

      goto LABEL_3;
    }

    v97 = v22 + 1;
    v33 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) init];
    [v33 setEntity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
    v34 = sub_1B63BEEA4();
    if (v5)
    {

      goto LABEL_66;
    }

    v35 = sub_1B63A2FAC(v34);

    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    if (v36 >> 62)
    {
      v29 = sub_1B63BF044();
      v11 = v95;
      if (!v29)
      {
        goto LABEL_15;
      }

LABEL_19:
      v90 = v27;
      v70 = v20;
      v67 = a2;
      v66 = 0;
      v22 = 0;
      v84 = v36 & 0xC000000000000001;
      v73 = v36 & 0xFFFFFFFFFFFFFF8;
      v5 = v92;
      a2 = v80;
      v20 = v81;
      v27 = qword_1B63C4070;
      v83 = v36;
      v82 = v29;
      while (1)
      {
        if (v84)
        {
          v37 = MEMORY[0x1B8C92830](v22, v36);
        }

        else
        {
          if (v22 >= *(v73 + 16))
          {
            goto LABEL_61;
          }

          v37 = *(v36 + 8 * v22 + 32);
        }

        v98 = v37;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_60;
        }

        v96 = v22 + 1;
        sub_1B628C510(v89, v20, &unk_1EB943680, qword_1B63C4070);
        v38 = *v94;
        if ((*v94)(v20, 1, v11) == 1)
        {
          sub_1B6284EAC(v20, &unk_1EB943680, qword_1B63C4070);
        }

        else
        {
          v39 = *v79;
          (*v79)(v90, v20, v11);
          v40 = [v99 attributesByName];
          sub_1B6281C60(0, &qword_1EB943560, 0x1E695D530);
          v41 = sub_1B63BEB74();

          if (*(v41 + 16))
          {
            v72 = v39;
            sub_1B6380EF4(0x696669746E656469, 0xEA00000000007265);
            v43 = v42;

            v27 = qword_1B63C4070;
            if (v43)
            {
              v44 = sub_1B63BEBC4();
              v45 = [v98 valueForKey_];

              if (v45)
              {
                sub_1B63BEF84();
                swift_unknownObjectRelease();
              }

              else
              {
                v100 = 0u;
                v101 = 0u;
              }

              v102[0] = v100;
              v102[1] = v101;
              v5 = v92;
              a2 = v80;
              if (*(&v101 + 1))
              {
                v46 = v70;
                v47 = swift_dynamicCast();
                (*v71)(v46, v47 ^ 1u, 1, v11);
                if (v38(v46, 1, v11) == 1)
                {
                  (*v76)(v90, v11);
                  goto LABEL_40;
                }

                v48 = v69;
                v72();
                v49 = v90;
                if (sub_1B63BE9D4())
                {
                  v60 = v98;
                  [v67 deleteObject_];

                  v61 = *v76;
                  (*v76)(v48, v11);
                  v61(v49, v11);
                  v68 = 1;
                  v29 = v82;
                  v22 = v96;
                  v59 = v96 == v82;
                  a2 = v80;
                  goto LABEL_48;
                }

                v50 = *v76;
                (*v76)(v48, v11);
                v50(v90, v11);
                a2 = v80;
              }

              else
              {
                (*v76)(v90, v11);
                sub_1B6284EAC(v102, &unk_1EB943740, &qword_1B63C5030);
                v46 = v70;
                (*v71)(v70, 1, 1, v11);
LABEL_40:
                sub_1B6284EAC(v46, &unk_1EB943680, qword_1B63C4070);
              }

              v20 = v81;
              goto LABEL_44;
            }
          }

          else
          {

            v27 = qword_1B63C4070;
          }

          (*v76)(v90, v11);
          v5 = v92;
          a2 = v80;
        }

LABEL_44:
        sub_1B628C510(v88, v5, &qword_1EB9433E8, &qword_1B63C63D0);
        if ((*v85)(v5, 1, a2) == 1)
        {

          sub_1B6284EAC(v5, &qword_1EB9433E8, &qword_1B63C63D0);
LABEL_21:
          v36 = v83;
          v29 = v82;
          ++v22;
          if (v96 == v82)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v51 = v77;
          (*v75)(v77, v5, a2);
          v52 = v98;
          v53 = a2;
          v54 = [v98 objectID];
          v55 = [v54 URIRepresentation];

          v56 = v78;
          sub_1B63BE8B4();

          v57 = v51;
          LOBYTE(v54) = sub_1B63BE8A4();
          v58 = *v74;
          (*v74)(v56, v53);
          if ((v54 & 1) == 0)
          {
            v58(v57, v53);

            v5 = v92;
            a2 = v53;
            v20 = v81;
            v11 = v95;
            goto LABEL_21;
          }

          [v67 deleteObject_];

          v58(v57, v53);
          v68 = 1;
          v29 = v82;
          v11 = v95;
          v22 = v96;
          v59 = v96 == v82;
          v5 = v92;
          a2 = v53;
LABEL_48:
          v20 = v81;
          v36 = v83;
          if (v59)
          {
LABEL_52:

            v31 = v97;
            v5 = v66;
            a2 = v67;
            v20 = v70;
            v27 = v90;
            v29 = v87;
            if (v97 != v86)
            {
              goto LABEL_4;
            }

            goto LABEL_53;
          }
        }
      }
    }

    v29 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v95;
    if (v29)
    {
      goto LABEL_19;
    }

LABEL_15:

    ++v22;
    v29 = v87;
  }

  while (v97 != v86);
LABEL_53:

  if ((v68 & 1) == 0)
  {
LABEL_64:
    sub_1B634DB54();
    swift_allocError();
    *v64 = 2;
    goto LABEL_65;
  }

  *&v102[0] = 0;
  if (([a2 save_] & 1) == 0)
  {
    v63 = *&v102[0];
    sub_1B63BE824();

LABEL_65:
    result = swift_willThrow();
    goto LABEL_66;
  }

  result = *&v102[0];
LABEL_66:
  v65 = *MEMORY[0x1E69E9840];
  return result;
}