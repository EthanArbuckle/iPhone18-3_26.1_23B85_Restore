uint64_t sub_251C38014(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C6FE64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_251C716A4();

  v25 = 60;
  v26 = 0xE100000000000000;
  v24 = a1;
  swift_getMetatypeMetadata();
  v9 = sub_251C70F74();
  MEMORY[0x25308CDA0](v9);

  MEMORY[0x25308CDA0](8736, 0xE200000000000000);
  v10 = (*(a2 + 56))(a1, a2);
  MEMORY[0x25308CDA0](v10);

  MEMORY[0x25308CDA0](2112034, 0xE300000000000000);
  (*(a2 + 8))(&v24, a1, a2);
  v11 = 5522759;
  v12 = 0xE300000000000000;
  v13 = 5526864;
  if (v24 != 6)
  {
    v13 = 0x4543415254;
    v12 = 0xE500000000000000;
  }

  v14 = 0xE700000000000000;
  v15 = 0x534E4F4954504FLL;
  if (v24 != 4)
  {
    v15 = 1414745936;
    v14 = 0xE400000000000000;
  }

  if (v24 <= 5u)
  {
    v13 = v15;
    v12 = v14;
  }

  v16 = 0xE400000000000000;
  if (v24 == 2)
  {
    v16 = 0xE300000000000000;
  }

  else
  {
    v11 = 1145128264;
  }

  v17 = 0xE700000000000000;
  v18 = 0x5443454E4E4F43;
  if (v24)
  {
    v18 = 0x4554454C4544;
    v17 = 0xE600000000000000;
  }

  if (v24 <= 1u)
  {
    v11 = v18;
    v16 = v17;
  }

  if (v24 <= 3u)
  {
    v19 = v11;
  }

  else
  {
    v19 = v13;
  }

  if (v24 <= 3u)
  {
    v20 = v16;
  }

  else
  {
    v20 = v12;
  }

  MEMORY[0x25308CDA0](v19, v20);

  MEMORY[0x25308CDA0](32, 0xE100000000000000);
  (*(a2 + 40))(a1, a2);
  sub_251C3A118();
  v21 = sub_251C719A4();
  MEMORY[0x25308CDA0](v21);

  (*(v5 + 8))(v8, v4);
  MEMORY[0x25308CDA0](62, 0xE100000000000000);
  return v25;
}

uint64_t sub_251C382FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C6FE64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_251C716A4();
  v26 = v24;
  v27 = v25;
  MEMORY[0x25308CDA0](60, 0xE100000000000000);
  v24 = a1;
  swift_getMetatypeMetadata();
  v9 = sub_251C70F74();
  MEMORY[0x25308CDA0](v9);

  MEMORY[0x25308CDA0](8736, 0xE200000000000000);
  v10 = (*(a2 + 56))(a1, a2);
  MEMORY[0x25308CDA0](v10);

  MEMORY[0x25308CDA0](2112034, 0xE300000000000000);
  (*(a2 + 8))(&v24, a1, a2);
  v11 = 5522759;
  v12 = 0xE300000000000000;
  v13 = 5526864;
  if (v24 != 6)
  {
    v13 = 0x4543415254;
    v12 = 0xE500000000000000;
  }

  v14 = 0xE700000000000000;
  v15 = 0x534E4F4954504FLL;
  if (v24 != 4)
  {
    v15 = 1414745936;
    v14 = 0xE400000000000000;
  }

  if (v24 <= 5u)
  {
    v13 = v15;
    v12 = v14;
  }

  v16 = 0xE400000000000000;
  if (v24 == 2)
  {
    v16 = 0xE300000000000000;
  }

  else
  {
    v11 = 1145128264;
  }

  v17 = 0xE700000000000000;
  v18 = 0x5443454E4E4F43;
  if (v24)
  {
    v18 = 0x4554454C4544;
    v17 = 0xE600000000000000;
  }

  if (v24 <= 1u)
  {
    v11 = v18;
    v16 = v17;
  }

  if (v24 <= 3u)
  {
    v19 = v11;
  }

  else
  {
    v19 = v13;
  }

  if (v24 <= 3u)
  {
    v20 = v16;
  }

  else
  {
    v20 = v12;
  }

  MEMORY[0x25308CDA0](v19, v20);

  MEMORY[0x25308CDA0](32, 0xE100000000000000);
  (*(a2 + 40))(a1, a2);
  v21 = sub_251C6FDD4();
  (*(v5 + 8))(v8, v4);
  v22 = HKSensitiveLogItem();

  sub_251C715C4();
  swift_unknownObjectRelease();
  sub_251C717C4();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  MEMORY[0x25308CDA0](62, 0xE100000000000000);
  return v26;
}

uint64_t sub_251C3862C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      v6 = *(v2 - 3);
      v5 = *(v2 - 2);

      sub_251C6F974();

      v2 += 4;
      --v1;
    }

    while (v1);
  }

  return result;
}

Swift::Void __swiftcall WebRequest.add(header:)(HealthRecordsDaemon::HTTPHeader header)
{
  countAndFlagsBits = header.value._countAndFlagsBits;
  object = header.name._object;
  v4 = *header.name._countAndFlagsBits;
  v3 = *(header.name._countAndFlagsBits + 8);
  v6 = *(header.name._countAndFlagsBits + 16);
  v5 = *(header.name._countAndFlagsBits + 24);
  if ((*(header.value._countAndFlagsBits + 16))(header.name._object, header.value._countAndFlagsBits))
  {

    v8 = (*(countAndFlagsBits + 32))(v17, object, countAndFlagsBits);
    v9 = *v7;
    if (*v7)
    {
      v10 = v7;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v10 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_251C3915C(0, *(v9 + 2) + 1, 1, v9, &qword_27F47A080);
        *v10 = v9;
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_251C3915C((v12 > 1), v13 + 1, 1, v9, &qword_27F47A080);
        *v10 = v9;
      }

      *(v9 + 2) = v13 + 1;
      v14 = &v9[32 * v13];
      *(v14 + 4) = v4;
      *(v14 + 5) = v3;
      *(v14 + 6) = v6;
      *(v14 + 7) = v5;
      v8(v17, 0);
    }

    else
    {
      v8(v17, 0);
    }
  }

  else
  {
    sub_251C3A170(0, &qword_27F47A080);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_251C74800;
    *(v15 + 32) = v4;
    *(v15 + 40) = v3;
    *(v15 + 48) = v6;
    *(v15 + 56) = v5;
    v16 = *(countAndFlagsBits + 24);

    v16(v15, object, countAndFlagsBits);
  }
}

Swift::Void __swiftcall WebRequest.removeHeader(name:)(Swift::String name)
{
  v3 = v2;
  v4 = v1;
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v6 = (*(v2 + 16))();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v6 + 56;
      v32 = v8 - 1;
      v34 = v3;
      v35 = MEMORY[0x277D84F90];
      v11 = object;
      v33 = v4;
      do
      {
        v12 = (v10 + 32 * v9);
        v13 = v9;
        while (1)
        {
          if (v13 >= *(v7 + 16))
          {
            __break(1u);
            return;
          }

          v14 = *(v12 - 3);
          v15 = *(v12 - 2);
          v16 = v14 == countAndFlagsBits && v15 == v11;
          if (!v16)
          {
            v17 = *(v12 - 1);
            v18 = *v12;
            v19 = *(v12 - 3);
            v20 = *(v12 - 2);
            v21 = v10;
            v22 = v8;
            v23 = v7;
            v24 = sub_251C719D4();
            v11 = object;
            v7 = v23;
            v8 = v22;
            v10 = v21;
            if ((v24 & 1) == 0)
            {
              break;
            }
          }

          ++v13;
          v12 += 4;
          if (v8 == v13)
          {
            v3 = v34;
            v4 = v33;
            goto LABEL_21;
          }
        }

        v25 = v35;
        v38 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_251C0BE3C(0, *(v35 + 16) + 1, 1);
          v25 = v35;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        v28 = v27 + 1;
        v8 = v22;
        v7 = v23;
        v11 = object;
        if (v27 >= v26 >> 1)
        {
          v36 = v27 + 1;
          v31 = *(v25 + 16);
          sub_251C0BE3C((v26 > 1), v27 + 1, 1);
          v28 = v36;
          v11 = object;
          v27 = v31;
          v7 = v23;
          v8 = v22;
          v25 = v38;
        }

        v9 = v13 + 1;
        *(v25 + 16) = v28;
        v35 = v25;
        v29 = (v25 + 32 * v27);
        v29[4] = v14;
        v29[5] = v15;
        v29[6] = v17;
        v29[7] = v18;
        v16 = v32 == v13;
        v3 = v34;
        v4 = v33;
        v10 = v21;
      }

      while (!v16);
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }

LABEL_21:

    v6 = v35;
  }

  v30 = *(v3 + 24);

  v30(v6, v4, v3);
}

uint64_t WebRequest.urlRequest(attribution:timeoutInterval:cachePolicy:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_251C6FE64();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  (*(a7 + 40))(a6, a7);
  sub_251C6F954();
  sub_251C6F924();
  (*(a7 + 8))(&v16, a6, a7);
  v13 = *&aConnect_1[8 * v16];
  v14 = qword_251C87648[v16];
  sub_251C6F914();
  (*(a7 + 48))(a6, a7);
  sub_251C6F984();
  result = (*(a7 + 16))(a6, a7);
  if (result)
  {
    sub_251C3862C(result);
  }

  if ((a3 & 1) == 0)
  {
    result = sub_251C6F944();
  }

  if ((a5 & 1) == 0)
  {
    return sub_251C6F934();
  }

  return result;
}

char *sub_251C38CCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F4793D0);
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

char *sub_251C38DF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C39FFC(0, &qword_27F47C200, sub_251C3A060, MEMORY[0x277D84560]);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_251C38FD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F479720);
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

char *sub_251C3915C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_251C3A170(0, a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_251C39308(void *result, int64_t a2, char a3, void *a4)
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
    sub_251C39FFC(0, &qword_27F47CAC0, sub_251B10F10, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_251B10F10();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_251C39454(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F47CAB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_251C395D0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_251C0C9AC(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_251AA98B0(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_251C39724(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F47CAC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_251C398FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C3A170(0, &qword_27F47CAE8);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_251C39A9C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_251C39FFC(0, a5, a6, MEMORY[0x277D84560]);
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

size_t sub_251C39C90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_251C39FFC(0, &qword_27F479238, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
  v4 = *(sub_251C70074() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_251C39DB0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_251C3A170(0, &qword_27F47BD20);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_251C39E40(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_251C3A170(0, &qword_27F479720);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_251C39EC8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_251C39FFC(0, &qword_27F47CAF8, type metadata accessor for HKCategoryValueSleepAnalysis, MEMORY[0x277D84560]);
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

void sub_251C39FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251C3A060()
{
  if (!qword_27F47C208)
  {
    v0 = sub_251C712B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C208);
    }
  }
}

void sub_251C3A0B8()
{
  if (!qword_2813E33D0[0])
  {
    type metadata accessor for ClinicalSharingSyncTask();
    v0 = type metadata accessor for SingleValuePublisherTaskQueue.PendingTaskWrapper();
    if (!v1)
    {
      atomic_store(v0, qword_2813E33D0);
    }
  }
}

unint64_t sub_251C3A118()
{
  result = qword_27F478E68;
  if (!qword_27F478E68)
  {
    sub_251C6FE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E68);
  }

  return result;
}

void sub_251C3A170(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_251C719B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_251C3A1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v41 = a3;
  v39 = a2;
  v43 = a1;
  v37[0] = type metadata accessor for PBBlobAuth(0);
  v6 = *(v37[0] - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v37[0]);
  v42 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - v10;
  v12 = type metadata accessor for PBBlobs(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v17 = type metadata accessor for PBPushBlobsRequest(0);
  v18 = *(v17 + 20);
  v19 = *(v13 + 56);
  v19(a5 + v18, 1, 1, v12);
  v20 = *(v17 + 24);
  v21 = *(v6 + 56);
  v37[1] = v6 + 56;
  v38 = v21;
  v22 = v37[0];
  v21(a5 + v20, 1, 1, v37[0]);
  sub_251C3A63C(v43, v16, type metadata accessor for PBBlobs);
  sub_251C3A6A4(a5 + v18, &qword_27F47A938, type metadata accessor for PBBlobs);
  v23 = v16;
  v24 = v39;
  sub_251C3A754(v23, a5 + v18, type metadata accessor for PBBlobs);
  v25 = a5 + v18;
  v26 = v40;
  v19(v25, 0, 1, v12);
  v27 = v41;
  *(v11 + 8) = xmmword_251C745D0;
  v28 = &v11[*(v22 + 28)];
  sub_251C703A4();
  *v11 = v24;
  v29 = *(v11 + 1);
  v30 = *(v11 + 2);

  sub_251A858C4(v27, v26);
  sub_251A83028(v29, v30);
  *(v11 + 1) = v27;
  *(v11 + 2) = v26;
  *(v11 + 3) = 0x6977363532414853;
  *(v11 + 4) = 0xEF41534443456874;
  v31 = v42;
  sub_251C3A63C(v11, v42, type metadata accessor for PBBlobAuth);
  sub_251C3A6A4(a5 + v20, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251C3A754(v31, a5 + v20, type metadata accessor for PBBlobAuth);
  v38(a5 + v20, 0, 1, v22);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v32 = sub_251C70764();
  __swift_project_value_buffer(v32, qword_2813E8130);

  sub_251A858C4(v27, v26);
  v33 = sub_251C70744();
  v34 = sub_251C713C4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = *(v24 + 16);

    sub_251A83028(v27, v26);
    _os_log_impl(&dword_251A6C000, v33, v34, "Generated PBPushBlobsRequest containing number of certs: %ld", v35, 0xCu);
    MEMORY[0x25308E2B0](v35, -1, -1);

    sub_251A83028(v27, v26);
  }

  else
  {

    sub_251A83028(v27, v26);

    sub_251A83028(v27, v26);
  }

  sub_251C3A7BC(v43, type metadata accessor for PBBlobs);
  return sub_251C3A7BC(v11, type metadata accessor for PBBlobAuth);
}

uint64_t sub_251C3A63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C3A6A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251C3A700(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251C3A700(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C3A754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C3A7BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C3A81C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

uint64_t sub_251C3A85C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_251AC5FEC(0, &qword_2813E2000, sub_251AC5BAC);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  result = sub_251C70A64();
  *a2 = result;
  return result;
}

void sub_251C3A900(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_251AD96B8;
  *(v7 + 24) = v6;
  v9[4] = sub_251C3B924;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_251C3AAD0;
  v9[3] = &block_descriptor_27_0;
  v8 = _Block_copy(v9);

  [a3 fetchAllAccountsWithCompletion_];
  _Block_release(v8);
}

void sub_251C3AA10(void *a1, id a2, void (*a3)(id, _BOOL8))
{
  v4 = a1;
  if (!a1)
  {
    v4 = a2;
    if (!a2)
    {
      sub_251AC6624();
      v4 = swift_allocError();
      v6 = v5;
      a2 = 0;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 2;
    }

    v7 = a2;
    a1 = 0;
  }

  v8 = a1 == 0;

  a3(v4, v8);

  sub_251B19EEC(v4, v8);
}

uint64_t sub_251C3AAD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
    v4 = sub_251C71154();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_251C3AB74@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  sub_251AC5FEC(0, &qword_2813E1FE0, sub_251AC5D0C);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = a2;
  v11 = v5;
  result = sub_251C70A64();
  *a3 = result;
  return result;
}

void sub_251C3AC28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_251C70074();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  v14 = [a4 identifier];
  sub_251C70054();

  v15 = sub_251C70034();
  (*(v9 + 8))(v12, v8);
  v16 = swift_allocObject();
  v16[2] = sub_251C3B934;
  v16[3] = v13;
  v16[4] = a4;
  aBlock[4] = sub_251C3B8C4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251AD9914;
  aBlock[3] = &block_descriptor_15;
  v17 = _Block_copy(aBlock);
  v18 = a4;

  [a3 refreshAccountConnectionInformationForAccountWithIdentifier:v15 completion:v17];
  _Block_release(v17);
}

void sub_251C3AE20(void *a1, void *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a1)
  {
    v8 = a1;
    v9 = [v8 authorization];
    if (v9)
    {
      v10 = v9;
      v38 = a5;
      v11 = v10;
      (a3)(a5, v10, 0);
    }

    else
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v26 = sub_251C70764();
      __swift_project_value_buffer(v26, qword_2813E8130);
      v27 = a2;
      v28 = sub_251C70744();
      v29 = sub_251C713D4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136315138;
        v32 = a2;
        sub_251C3B864();
        v33 = sub_251C70F74();
        v35 = sub_251B10780(v33, v34, &v39);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_251A6C000, v28, v29, "Did not receive a credential on refreshed account connection info for Accounts. Error: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x25308E2B0](v31, -1, -1);
        MEMORY[0x25308E2B0](v30, -1, -1);
      }

      sub_251B26550();
      v36 = swift_allocError();
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *v37 = 3;
      *(v37 + 24) = 3;
      (a3)(v36, 0, 1);
    }
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v12 = sub_251C70764();
    __swift_project_value_buffer(v12, qword_2813E8130);
    v13 = a2;
    v14 = sub_251C70744();
    v15 = sub_251C713D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136315138;
      v18 = a2;
      sub_251C3B864();
      v19 = sub_251C70F74();
      v21 = sub_251B10780(v19, v20, &v39);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_251A6C000, v14, v15, "Could not refresh account connection info for Accounts. Error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    v22 = a2;
    if (!a2)
    {
      sub_251AC6624();
      v22 = swift_allocError();
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 16) = 2;
    }

    v24 = a2;
    a3(v22);
    sub_251C3B8D0(v22, v25, 1);
  }
}

void sub_251C3B214(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_251C70074();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  v12 = sub_251C70034();
  (*(v9 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_251C3B414;
  *(v14 + 24) = v11;
  (*(v9 + 32))(v14 + v13, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_251C3B7C8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251AD9914;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);

  [a3 refreshAccountConnectionInformationForAccountWithIdentifier:v12 completion:v15];
  _Block_release(v15);
}

void sub_251C3B418(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_251C70074();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13 && (v16 = [v13 authorization]) != 0 && (v17 = v16, v18 = objc_msgSend(v16, sel_accessToken), v17, v18))
  {
    v19 = sub_251C70F14();
    v21 = v20;

    a3(v19, v21, 0);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v40[1] = a4;
    v22 = sub_251C70764();
    __swift_project_value_buffer(v22, qword_2813E8130);
    (*(v11 + 16))(v15, a5, v10);
    v23 = a2;
    v24 = sub_251C70744();
    v25 = sub_251C713F4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40[0] = a3;
      v28 = v27;
      v41 = v27;
      *v26 = 136315394;
      sub_251BD3E8C();
      v29 = sub_251C719A4();
      v31 = v30;
      (*(v11 + 8))(v15, v10);
      v32 = sub_251B10780(v29, v31, &v41);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v40[2] = a2;
      v33 = a2;
      sub_251C3B864();
      v34 = sub_251C70F74();
      v36 = sub_251B10780(v34, v35, &v41);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_251A6C000, v24, v25, "Could not refreshAccessToken. Account: %s. Error: %s", v26, 0x16u);
      swift_arrayDestroy();
      v37 = v28;
      a3 = v40[0];
      MEMORY[0x25308E2B0](v37, -1, -1);
      MEMORY[0x25308E2B0](v26, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    sub_251B26550();
    v38 = swift_allocError();
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
    *v39 = 3;
    *(v39 + 24) = 3;
    a3(v38, 0, 1);
  }
}

void sub_251C3B7C8(uint64_t a1, void *a2)
{
  v5 = *(sub_251C70074() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_251C3B418(a1, a2, v6, v7, v8);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251C3B864()
{
  if (!qword_2813E1C20)
  {
    sub_251A82284();
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1C20);
    }
  }
}

void sub_251C3B8D0(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_251C3B940(uint64_t a1)
{
  v28 = a1;
  v27 = sub_251C70014();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v27);
  sub_251B45D34();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C3BDB8();
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v26 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_251C71444();
  sub_251C3BE88(0, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
  sub_251AE526C(0, &qword_2813E37D0);
  v25[1] = v13;
  sub_251AE9E20();
  sub_251C70AE4();

  sub_251C3CC50(&qword_2813E2580, sub_251B45D34);
  v14 = sub_251C70A94();
  (*(v5 + 8))(v8, v4);
  v31 = v14;
  v15 = v27;
  (*(v1 + 16))(v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v27);
  v16 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v17 = swift_allocObject();
  (*(v1 + 32))(v17 + v16, v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v18 = v25[0];
  *(v17 + ((v2 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25[0];
  v19 = v18;
  sub_251C70964();
  v20 = MEMORY[0x277CBCD88];
  sub_251C3BE88(0, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCD88]);
  sub_251C3BF08(&qword_2813E21A8, &qword_2813E21A0, v20);
  v21 = v26;
  sub_251C70B94();

  sub_251C3CC50(&qword_2813E2360, sub_251C3BDB8);
  v22 = v29;
  v23 = sub_251C70A94();
  (*(v30 + 8))(v21, v22);
  return v23;
}

void sub_251C3BDB8()
{
  if (!qword_2813E2358)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251C3BE88(255, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCD88]);
    sub_251C3BF08(&qword_2813E21A8, &qword_2813E21A0, v0);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2358);
    }
  }
}

void sub_251C3BE88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AE526C(255, a3);
    v9 = v8;
    v10 = sub_251A82284();
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_251C3BF08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_251C3BE88(255, a2, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251C3BF60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_251C70014();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *a1;
  (*(v9 + 16))(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v9 + 32))(v13 + v12, v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v14 = MEMORY[0x277CBCEA8];
  sub_251C3BE88(0, &qword_2813E2050, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, MEMORY[0x277CBCEA8]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = a3;
  v21[1] = sub_251C70A64();
  sub_251C3BF08(&qword_2813E2058, &qword_2813E2050, v14);
  v19 = sub_251C70A94();

  *a4 = v19;
  return result;
}

uint64_t sub_251C3C170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  if (a3)
  {

    v11 = sub_251B09A24(a3);
    sub_251C3CDC0(0, &qword_2813E1C78, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
    v12 = sub_251C70014();
    v13 = *(v12 - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_251C74800;
    (*(v13 + 16))(v16 + v15, a4, v12);
    v33[0] = v11;
    sub_251BFF7EC(v16);
    v17 = v11;
  }

  else
  {
    sub_251C3CDC0(0, &qword_2813E1C78, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
    v18 = sub_251C70014();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_251C74800;
    (*(v19 + 16))(v17 + v21, a4, v18);
  }

  v22 = sub_251C6FA54();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_251C6FA44();
  sub_251C3CD48();
  v25 = sub_251C6FA34();
  v27 = v26;

  v28 = sub_251C6FEC4();
  v29 = sub_251C70EE4();
  v30 = swift_allocObject();
  v30[2] = sub_251AD96B8;
  v30[3] = v10;
  v30[4] = v17;
  v33[4] = sub_251C3CD9C;
  v33[5] = v30;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 1107296256;
  v33[2] = sub_251BCB170;
  v33[3] = &block_descriptor_23;
  v31 = _Block_copy(v33);

  [a5 setData:v28 forKey:v29 completion:v31];
  _Block_release(v31);

  return sub_251A83028(v25, v27);
}

void sub_251C3C6A4(char a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  if (a1)
  {
    a3(a5, 0);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v7 = sub_251C70764();
    __swift_project_value_buffer(v7, qword_2813E8130);
    v8 = a2;
    v9 = sub_251C70744();
    v10 = sub_251C713D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = a2;
      sub_251C3CDC0(0, &qword_2813E1C20, sub_251A82284, MEMORY[0x277D83D88]);
      v14 = sub_251C70F74();
      v16 = sub_251B10780(v14, v15, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_251A6C000, v9, v10, "Could not save ClinicalSharingSyncHistory: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25308E2B0](v12, -1, -1);
      MEMORY[0x25308E2B0](v11, -1, -1);
    }

    v17 = a2;
    if (!a2)
    {
      sub_251AC6624();
      v17 = swift_allocError();
      *v18 = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 2;
    }

    v19 = a2;
    a3(v17, 1);
  }
}

void sub_251C3C8C8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3 >> 60 == 15)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v4 = sub_251C70764();
    __swift_project_value_buffer(v4, qword_2813E8130);
    v5 = sub_251C70744();
    v6 = sub_251C713C4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_251A6C000, v5, v6, "No sync history available to retrieve", v7, 2u);
      MEMORY[0x25308E2B0](v7, -1, -1);
    }

    *a2 = 0;
  }

  else
  {
    v8 = *a1;
    v9 = sub_251C6F9F4();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_251A858C4(v8, v3);
    sub_251C6F9E4();
    sub_251C3CE24();
    sub_251C6F9D4();
    sub_251A8596C(v8, v3);

    *a2 = v12;
  }
}

uint64_t sub_251C3CBA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_251C70014() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_251C3BF60(a1, v2 + v6, v7, a2);
}

uint64_t sub_251C3CC50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C3CC98(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_251C70014() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_251C3C170(a1, a2, v8, v2 + v6, v7);
}

unint64_t sub_251C3CD48()
{
  result = qword_2813E37E0;
  if (!qword_2813E37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37E0);
  }

  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251C3CDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251C3CE24()
{
  result = qword_2813E37D8;
  if (!qword_2813E37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37D8);
  }

  return result;
}

uint64_t sub_251C3CE78()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2898);
  __swift_project_value_buffer(v0, qword_27F4A2898);
  sub_251C3DAB0(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "plaintext";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "signature";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C3D058()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C3D0E8();
    }

    else if (result == 2)
    {
      sub_251C704D4();
    }
  }

  return result;
}

uint64_t sub_251C3D0E8()
{
  v0 = *(type metadata accessor for PBPayload() + 24);
  type metadata accessor for PBPlainText(0);
  sub_251C3DF90(&qword_27F479530, type metadata accessor for PBPlainText);
  return sub_251C70564();
}

uint64_t sub_251C3D19C()
{
  result = sub_251C3D270(v0);
  if (!v1)
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 != v7)
    {
LABEL_10:
      sub_251C70624();
    }

LABEL_11:
    v8 = v0 + *(type metadata accessor for PBPayload() + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251C3D270(uint64_t a1)
{
  sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for PBPlainText(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBPayload();
  sub_251C3D8CC(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_251C3D960(v5);
  }

  sub_251C3D9EC(v5, v10);
  sub_251C3DF90(&qword_27F479530, type metadata accessor for PBPlainText);
  sub_251C706A4();
  return sub_251C3DA50(v10, type metadata accessor for PBPlainText);
}

uint64_t sub_251C3D478@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_251C745D0;
  v4 = &a2[*(a1 + 20)];
  sub_251C703A4();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for PBPlainText(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_251C3D550(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C3DF90(&qword_27F47CB20, type metadata accessor for PBPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251C3D5CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F478940 != -1)
  {
    swift_once();
  }

  v2 = sub_251C706D4();
  v3 = __swift_project_value_buffer(v2, qword_27F4A2898);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251C3D674(uint64_t a1)
{
  v2 = sub_251C3DF90(&qword_27F47C290, type metadata accessor for PBPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251C3D6E0()
{
  sub_251C3DF90(&qword_27F47C290, type metadata accessor for PBPayload);

  return sub_251C705C4();
}

uint64_t type metadata accessor for PBPayload()
{
  result = qword_27F47CB30;
  if (!qword_27F47CB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251C3D8CC(uint64_t a1, uint64_t a2)
{
  sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C3D960(uint64_t a1)
{
  sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C3D9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPlainText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C3DA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251C3DAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251C3DB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPlainText(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  sub_251C3DEFC();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PBPayload();
  v19 = *(v18 + 24);
  v20 = *(v14 + 56);
  sub_251C3D8CC(a1 + v19, v17);
  sub_251C3D8CC(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_251C3D960(v17);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_251C3D8CC(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_251C3DA50(v12, type metadata accessor for PBPlainText);
LABEL_6:
    sub_251C3DA50(v17, sub_251C3DEFC);
    goto LABEL_13;
  }

  sub_251C3D9EC(&v17[v20], v8);
  v22 = *(v4 + 20);
  v23 = *&v12[v22];
  v24 = *&v8[v22];
  if (v23 != v24)
  {
    v25 = *&v12[v22];

    v26 = sub_251AB8F0C(v23, v24);

    if (!v26)
    {
      sub_251C3DA50(v8, type metadata accessor for PBPlainText);
      sub_251C3DA50(v12, type metadata accessor for PBPlainText);
      sub_251C3D960(v17);
      goto LABEL_13;
    }
  }

  sub_251C703B4();
  sub_251C3DF90(&qword_27F478F98, MEMORY[0x277D216C8]);
  v27 = sub_251C70ED4();
  sub_251C3DA50(v8, type metadata accessor for PBPlainText);
  sub_251C3DA50(v12, type metadata accessor for PBPlainText);
  sub_251C3D960(v17);
  if ((v27 & 1) == 0)
  {
LABEL_13:
    v29 = 0;
    return v29 & 1;
  }

LABEL_10:
  if ((sub_251A9D1F0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_13;
  }

  v28 = *(v18 + 20);
  sub_251C703B4();
  sub_251C3DF90(&qword_27F478F98, MEMORY[0x277D216C8]);
  v29 = sub_251C70ED4();
  return v29 & 1;
}

void sub_251C3DEFC()
{
  if (!qword_27F47CB28)
  {
    sub_251C3DAB0(255, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47CB28);
    }
  }
}

uint64_t sub_251C3DF90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251C3E000()
{
  sub_251C703B4();
  if (v0 <= 0x3F)
  {
    sub_251C3DAB0(319, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251C3E0C4(uint64_t a1)
{
  v2 = v1;
  sub_251C3E624(0, &qword_27F479400, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCE78]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v27 - v8;
  sub_251B28C18();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v16 = sub_251C70764();
  __swift_project_value_buffer(v16, qword_2813E8130);

  v17 = sub_251C70744();
  v18 = sub_251C713C4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v28 = a1;
    v22 = v21;
    v30 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_251B10780(*(v2 + 16), *(v2 + 24), &v30);
    _os_log_impl(&dword_251A6C000, v17, v18, "%s DAI is disabled (HK_ENABLE_OSLO_DAI=0), will not make DAI DocRef.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v23 = v22;
    a1 = v28;
    MEMORY[0x25308E2B0](v23, -1, -1);
    v24 = v20;
    v5 = v29;
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  v30 = a1;
  type metadata accessor for ClinicalSharingSyncContext();

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v6 + 8))(v9, v5);
  sub_251C3E688();
  v25 = sub_251C70A94();
  (*(v12 + 8))(v15, v11);
  return v25;
}

uint64_t sub_251C3E3DC()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  v2 = *(v0 + 96);

  v3 = *(v0 + 104);

  v4 = *(v0 + 120);
  sub_251A7EA4C(*(v0 + 112));
  v5 = *(v0 + 136);
  sub_251A7EA4C(*(v0 + 128));
  v6 = *(v0 + 152);
  sub_251A7EA4C(*(v0 + 144));
  return v0;
}

uint64_t sub_251C3E444()
{
  sub_251C3E3DC();

  return swift_deallocClassInstance();
}

uint64_t sub_251C3E49C()
{
  sub_251AC5608(v0 + OBJC_IVAR____TtC19HealthRecordsDaemonP33_BED11DFC9D090ABA600C4282F599AD2323ClinicalSharingDAIState_startTime);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalSharingDAIState()
{
  result = qword_2813E4498;
  if (!qword_2813E4498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251C3E554()
{
  sub_251C3E624(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_251C3E624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251C3E688()
{
  result = qword_27F479410;
  if (!qword_27F479410)
  {
    sub_251B28C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479410);
  }

  return result;
}

uint64_t sub_251C3E7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2550();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3E83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A9D358();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3E8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB25A4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3E93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB25F8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_251C3E98C()
{
  result = qword_27F47CB40;
  if (!qword_27F47CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB40);
  }

  return result;
}

unint64_t sub_251C3EA14()
{
  result = qword_27F47CB58;
  if (!qword_27F47CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB58);
  }

  return result;
}

unint64_t sub_251C3EA6C()
{
  result = qword_27F47CB60;
  if (!qword_27F47CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB60);
  }

  return result;
}

uint64_t sub_251C3EAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB26F4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3EB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB26A0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3EBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB264C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_251C3EC38()
{
  result = qword_27F47CB68;
  if (!qword_27F47CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB68);
  }

  return result;
}

unint64_t sub_251C3ECC0()
{
  result = qword_27F47CB80;
  if (!qword_27F47CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB80);
  }

  return result;
}

unint64_t sub_251C3ED18()
{
  result = qword_27F47CB88;
  if (!qword_27F47CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB88);
  }

  return result;
}

unint64_t sub_251C3ED70()
{
  result = qword_27F47CB90;
  if (!qword_27F47CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CB90);
  }

  return result;
}

unint64_t sub_251C3EDF8()
{
  result = qword_27F47CBA8;
  if (!qword_27F47CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBA8);
  }

  return result;
}

unint64_t sub_251C3EE50()
{
  result = qword_27F47CBB0;
  if (!qword_27F47CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBB0);
  }

  return result;
}

unint64_t sub_251C3EEA8()
{
  result = qword_27F47CBB8;
  if (!qword_27F47CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBB8);
  }

  return result;
}

unint64_t sub_251C3EF30()
{
  result = qword_27F47CBD0;
  if (!qword_27F47CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBD0);
  }

  return result;
}

unint64_t sub_251C3EF88()
{
  result = qword_27F47CBD8;
  if (!qword_27F47CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBD8);
  }

  return result;
}

uint64_t sub_251C3F01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB3178();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3F080()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_251C887F8[result];
  }

  return result;
}

void sub_251C3F0C8(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_251C887F8[v2];
  }

  *a1 = v2;
}

uint64_t sub_251C3F0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB31CC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3F194(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C44EAC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251C3F1F8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_251C3F258@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_251C3F294(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BB2748();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_251C3F2E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = a5(*a1, *(a1 + 8));
  return v8 == a5(v6, v7);
}

unint64_t sub_251C3F348()
{
  result = qword_27F47CBE0;
  if (!qword_27F47CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBE0);
  }

  return result;
}

unint64_t sub_251C3F3D0()
{
  result = qword_27F47CBF8;
  if (!qword_27F47CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CBF8);
  }

  return result;
}

unint64_t sub_251C3F428()
{
  result = qword_27F47CC00;
  if (!qword_27F47CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC00);
  }

  return result;
}

unint64_t sub_251C3F480()
{
  result = qword_27F47CC08;
  if (!qword_27F47CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC08);
  }

  return result;
}

unint64_t sub_251C3F508()
{
  result = qword_27F47CC18;
  if (!qword_27F47CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC18);
  }

  return result;
}

unint64_t sub_251C3F560()
{
  result = qword_27F47CC20;
  if (!qword_27F47CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC20);
  }

  return result;
}

unint64_t sub_251C3F5B8()
{
  result = qword_27F47CC28;
  if (!qword_27F47CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC28);
  }

  return result;
}

unint64_t sub_251C3F640()
{
  result = qword_27F47CC40;
  if (!qword_27F47CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC40);
  }

  return result;
}

unint64_t sub_251C3F698()
{
  result = qword_27F47CC48;
  if (!qword_27F47CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC48);
  }

  return result;
}

unint64_t sub_251C3F6F0()
{
  result = qword_27F47CC50;
  if (!qword_27F47CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC50);
  }

  return result;
}

unint64_t sub_251C3F778()
{
  result = qword_27F47CC68;
  if (!qword_27F47CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC68);
  }

  return result;
}

unint64_t sub_251C3F7D0()
{
  result = qword_27F47CC70;
  if (!qword_27F47CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC70);
  }

  return result;
}

unint64_t sub_251C3F828()
{
  result = qword_27F47CC78;
  if (!qword_27F47CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC78);
  }

  return result;
}

unint64_t sub_251C3F8B0()
{
  result = qword_27F47CC90;
  if (!qword_27F47CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC90);
  }

  return result;
}

unint64_t sub_251C3F908()
{
  result = qword_27F47CC98;
  if (!qword_27F47CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CC98);
  }

  return result;
}

uint64_t sub_251C3F95C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A28B0);
  __swift_project_value_buffer(v0, qword_27F4A28B0);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75420;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "GRANULARITY_X";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "HOURLY";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "DAILY";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "WEEKLY";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "MONTHLY";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "ALL";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 6;
  *v21 = "QUARTER_HOURLY";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C3FC6C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A28C8);
  __swift_project_value_buffer(v0, qword_27F4A28C8);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v269 = swift_allocObject();
  *(v269 + 16) = xmmword_251C878B0;
  v5 = v269 + v4;
  v6 = v269 + v4 + *(v2 + 56);
  *(v269 + v4) = 0;
  *v6 = "DATA_TYPE_X";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v269 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "BODY_MASS_INDEX";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v269 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "BODY_FAT_PERCENTAGE";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v269 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "HEIGHT";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v269 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "BODY_MASS";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v269 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "LEAN_BODY_MASS";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v269 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "WAIST_CIRCUMFERENCE";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  v21 = (v269 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "STEP_COUNT";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  v23 = v269 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "DISTANCE_WALKING_RUNNING";
  *(v23 + 8) = 24;
  *(v23 + 16) = 2;
  v9();
  v24 = (v269 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "DISTANCE_CYCLING";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v9();
  v26 = (v269 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "DISTANCE_WHEELCHAIR";
  *(v27 + 1) = 19;
  v27[16] = 2;
  v9();
  v28 = (v269 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "BASAL_ENERGY_BURNED";
  *(v29 + 1) = 19;
  v29[16] = 2;
  v9();
  v30 = (v269 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "ACTIVE_ENERGY_BURNED";
  *(v31 + 1) = 20;
  v31[16] = 2;
  v9();
  v32 = (v269 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "FLIGHTS_CLIMBED";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v9();
  v34 = (v269 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "NIKE_FUEL";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v9();
  v36 = (v269 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "APPLE_EXERCISE_TIME";
  *(v37 + 1) = 19;
  v37[16] = 2;
  v9();
  v38 = v269 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "PUSH_COUNT";
  *(v38 + 8) = 10;
  *(v38 + 16) = 2;
  v9();
  v39 = (v269 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "DISTANCE_SWIMMING";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v9();
  v41 = (v269 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "SWIMMING_STROKE_COUNT";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v9();
  v43 = (v269 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "VO2_MAX";
  *(v44 + 1) = 7;
  v44[16] = 2;
  v9();
  v45 = (v269 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "DISTANCE_DOWNHILL_SNOW_SPORTS";
  *(v46 + 1) = 29;
  v46[16] = 2;
  v9();
  v47 = (v269 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "APPLE_STAND_TIME";
  *(v48 + 1) = 16;
  v48[16] = 2;
  v9();
  v49 = (v269 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "BODY_TEMPERATURE";
  *(v50 + 1) = 16;
  v50[16] = 2;
  v9();
  v51 = (v269 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "BASAL_BODY_TEMPERATURE";
  *(v52 + 1) = 22;
  v52[16] = 2;
  v9();
  v53 = (v269 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "OXYGEN_SATURATION";
  *(v54 + 1) = 17;
  v54[16] = 2;
  v9();
  v55 = (v269 + v4 + 25 * v3);
  v56 = v55 + *(v2 + 56);
  *v55 = 25;
  *v56 = "PERIPHERAL_PERFUSION_INDEX";
  *(v56 + 1) = 26;
  v56[16] = 2;
  v9();
  v57 = (v269 + v4 + 26 * v3);
  v58 = v57 + *(v2 + 56);
  *v57 = 26;
  *v58 = "ELECTRODERMAL_ACTIVITY";
  *(v58 + 1) = 22;
  v58[16] = 2;
  v9();
  v59 = (v269 + v4 + 27 * v3);
  v60 = v59 + *(v2 + 56);
  *v59 = 27;
  *v60 = "BLOOD_PRESSURE_SYSTOLIC";
  *(v60 + 1) = 23;
  v60[16] = 2;
  v9();
  v61 = (v269 + v4 + 28 * v3);
  v62 = v61 + *(v2 + 56);
  *v61 = 28;
  *v62 = "BLOOD_PRESSURE_DIASTOLIC";
  *(v62 + 1) = 24;
  v62[16] = 2;
  v9();
  v63 = (v269 + v4 + 29 * v3);
  v64 = v63 + *(v2 + 56);
  *v63 = 29;
  *v64 = "BLOOD_ALCOHOL_CONTENT";
  *(v64 + 1) = 21;
  v64[16] = 2;
  v9();
  v65 = (v269 + v4 + 30 * v3);
  v66 = v65 + *(v2 + 56);
  *v65 = 30;
  *v66 = "BLOOD_GLUCOSE";
  *(v66 + 1) = 13;
  v66[16] = 2;
  v9();
  v67 = (v269 + v4 + 31 * v3);
  v68 = v67 + *(v2 + 56);
  *v67 = 31;
  *v68 = "INSULIN_DELIVERY";
  *(v68 + 1) = 16;
  v68[16] = 2;
  v9();
  v69 = v269 + v4 + 32 * v3 + *(v2 + 56);
  *(v5 + 32 * v3) = 32;
  *v69 = "HEART_RATE";
  *(v69 + 8) = 10;
  *(v69 + 16) = 2;
  v9();
  v70 = (v269 + v4 + 33 * v3);
  v71 = v70 + *(v2 + 56);
  *v70 = 33;
  *v71 = "RESPIRATORY_RATE";
  *(v71 + 1) = 16;
  v71[16] = 2;
  v9();
  v72 = (v269 + v4 + 34 * v3);
  v73 = v72 + *(v2 + 56);
  *v72 = 34;
  *v73 = "RESTING_HEART_RATE";
  *(v73 + 1) = 18;
  v73[16] = 2;
  v9();
  v74 = (v269 + v4 + 35 * v3);
  v75 = v74 + *(v2 + 56);
  *v74 = 35;
  *v75 = "WALKING_HEART_RATE_AVERAGE";
  *(v75 + 1) = 26;
  v75[16] = 2;
  v9();
  v76 = (v269 + v4 + 36 * v3);
  v77 = v76 + *(v2 + 56);
  *v76 = 36;
  *v77 = "HEART_RATE_VARIABILITY_S_D_N_N";
  *(v77 + 1) = 30;
  v77[16] = 2;
  v9();
  v78 = (v269 + v4 + 37 * v3);
  v79 = v78 + *(v2 + 56);
  *v78 = 37;
  *v79 = "INHALER_USAGE";
  *(v79 + 1) = 13;
  v79[16] = 2;
  v9();
  v80 = (v269 + v4 + 38 * v3);
  v81 = v80 + *(v2 + 56);
  *v80 = 38;
  *v81 = "FORCED_VITAL_CAPACITY";
  *(v81 + 1) = 21;
  v81[16] = 2;
  v9();
  v82 = (v269 + v4 + 39 * v3);
  v83 = v82 + *(v2 + 56);
  *v82 = 39;
  *v83 = "FORCED_EXPIRATORY_VOLUME1";
  *(v83 + 1) = 25;
  v83[16] = 2;
  v9();
  v84 = (v269 + v4 + 40 * v3);
  v85 = v84 + *(v2 + 56);
  *v84 = 40;
  *v85 = "PEAK_EXPIRATORY_FLOW_RATE";
  *(v85 + 1) = 25;
  v85[16] = 2;
  v9();
  v86 = (v269 + v4 + 41 * v3);
  v87 = v86 + *(v2 + 56);
  *v86 = 41;
  *v87 = "ENVIRONMENTAL_AUDIO_EXPOSURE";
  *(v87 + 1) = 28;
  v87[16] = 2;
  v9();
  v88 = (v269 + v4 + 42 * v3);
  v89 = v88 + *(v2 + 56);
  *v88 = 42;
  *v89 = "HEADPHONE_AUDIO_EXPOSURE";
  *(v89 + 1) = 24;
  v89[16] = 2;
  v9();
  v90 = (v269 + v4 + 43 * v3);
  v91 = v90 + *(v2 + 56);
  *v90 = 43;
  *v91 = "DIETARY_FAT_TOTAL";
  *(v91 + 1) = 17;
  v91[16] = 2;
  v9();
  v92 = (v269 + v4 + 44 * v3);
  v93 = v92 + *(v2 + 56);
  *v92 = 44;
  *v93 = "DIETARY_FAT_POLYUNSATURATED";
  *(v93 + 1) = 27;
  v93[16] = 2;
  v9();
  v94 = (v269 + v4 + 45 * v3);
  v95 = v94 + *(v2 + 56);
  *v94 = 45;
  *v95 = "DIETARY_FAT_MONOUNSATURATED";
  *(v95 + 1) = 27;
  v95[16] = 2;
  v9();
  v96 = (v269 + v4 + 46 * v3);
  v97 = v96 + *(v2 + 56);
  *v96 = 46;
  *v97 = "DIETARY_FAT_SATURATED";
  *(v97 + 1) = 21;
  v97[16] = 2;
  v9();
  v98 = (v269 + v4 + 47 * v3);
  v99 = v98 + *(v2 + 56);
  *v98 = 47;
  *v99 = "DIETARY_CHOLESTEROL";
  *(v99 + 1) = 19;
  v99[16] = 2;
  v9();
  v100 = (v269 + v4 + 48 * v3);
  v101 = v100 + *(v2 + 56);
  *v100 = 48;
  *v101 = "DIETARY_SODIUM";
  *(v101 + 1) = 14;
  v101[16] = 2;
  v9();
  v102 = (v269 + v4 + 49 * v3);
  v103 = v102 + *(v2 + 56);
  *v102 = 49;
  *v103 = "DIETARY_CARBOHYDRATES";
  *(v103 + 1) = 21;
  v103[16] = 2;
  v9();
  v104 = (v269 + v4 + 50 * v3);
  v105 = v104 + *(v2 + 56);
  *v104 = 50;
  *v105 = "DIETARY_FIBER";
  *(v105 + 1) = 13;
  v105[16] = 2;
  v9();
  v106 = (v269 + v4 + 51 * v3);
  v107 = v106 + *(v2 + 56);
  *v106 = 51;
  *v107 = "DIETARY_SUGAR";
  *(v107 + 1) = 13;
  v107[16] = 2;
  v9();
  v108 = (v269 + v4 + 52 * v3);
  v109 = v108 + *(v2 + 56);
  *v108 = 52;
  *v109 = "DIETARY_ENERGY_CONSUMED";
  *(v109 + 1) = 23;
  v109[16] = 2;
  v9();
  v110 = (v269 + v4 + 53 * v3);
  v111 = v110 + *(v2 + 56);
  *v110 = 53;
  *v111 = "DIETARY_PROTEIN";
  *(v111 + 1) = 15;
  v111[16] = 2;
  v9();
  v112 = (v269 + v4 + 54 * v3);
  v113 = v112 + *(v2 + 56);
  *v112 = 54;
  *v113 = "DIETARY_VITAMIN_A";
  *(v113 + 1) = 17;
  v113[16] = 2;
  v9();
  v114 = (v269 + v4 + 55 * v3);
  v115 = v114 + *(v2 + 56);
  *v114 = 55;
  *v115 = "DIETARY_VITAMIN_B6";
  *(v115 + 1) = 18;
  v115[16] = 2;
  v9();
  v116 = (v269 + v4 + 56 * v3);
  v117 = v116 + *(v2 + 56);
  *v116 = 56;
  *v117 = "DIETARY_VITAMIN_B12";
  *(v117 + 1) = 19;
  v117[16] = 2;
  v9();
  v118 = (v269 + v4 + 57 * v3);
  v119 = v118 + *(v2 + 56);
  *v118 = 57;
  *v119 = "DIETARY_VITAMIN_C";
  *(v119 + 1) = 17;
  v119[16] = 2;
  v9();
  v120 = (v269 + v4 + 58 * v3);
  v121 = v120 + *(v2 + 56);
  *v120 = 58;
  *v121 = "DIETARY_VITAMIN_D";
  *(v121 + 1) = 17;
  v121[16] = 2;
  v9();
  v122 = (v269 + v4 + 59 * v3);
  v123 = v122 + *(v2 + 56);
  *v122 = 59;
  *v123 = "DIETARY_VITAMIN_E";
  *(v123 + 1) = 17;
  v123[16] = 2;
  v9();
  v124 = (v269 + v4 + 60 * v3);
  v125 = v124 + *(v2 + 56);
  *v124 = 60;
  *v125 = "DIETARY_VITAMIN_K";
  *(v125 + 1) = 17;
  v125[16] = 2;
  v9();
  v126 = (v269 + v4 + 61 * v3);
  v127 = v126 + *(v2 + 56);
  *v126 = 61;
  *v127 = "DIETARY_CALCIUM";
  *(v127 + 1) = 15;
  v127[16] = 2;
  v9();
  v128 = (v269 + v4 + 62 * v3);
  v129 = v128 + *(v2 + 56);
  *v128 = 62;
  *v129 = "DIETARY_IRON";
  *(v129 + 1) = 12;
  v129[16] = 2;
  v9();
  v130 = (v269 + v4 + 63 * v3);
  v131 = v130 + *(v2 + 56);
  *v130 = 63;
  *v131 = "DIETARY_THIAMIN";
  *(v131 + 1) = 15;
  v131[16] = 2;
  v9();
  v132 = v269 + v4 + (v3 << 6) + *(v2 + 56);
  *(v5 + (v3 << 6)) = 64;
  *v132 = "DIETARY_RIBOFLAVIN";
  *(v132 + 8) = 18;
  *(v132 + 16) = 2;
  v9();
  v133 = (v269 + v4 + 65 * v3);
  v134 = v133 + *(v2 + 56);
  *v133 = 65;
  *v134 = "DIETARY_NIACIN";
  *(v134 + 1) = 14;
  v134[16] = 2;
  v9();
  v135 = (v269 + v4 + 66 * v3);
  v136 = v135 + *(v2 + 56);
  *v135 = 66;
  *v136 = "DIETARY_FOLATE";
  *(v136 + 1) = 14;
  v136[16] = 2;
  v9();
  v137 = (v269 + v4 + 67 * v3);
  v138 = v137 + *(v2 + 56);
  *v137 = 67;
  *v138 = "DIETARY_BIOTIN";
  *(v138 + 1) = 14;
  v138[16] = 2;
  v9();
  v139 = (v269 + v4 + 68 * v3);
  v140 = v139 + *(v2 + 56);
  *v139 = 68;
  *v140 = "DIETARY_PANTOTHENIC_ACID";
  *(v140 + 1) = 24;
  v140[16] = 2;
  v9();
  v141 = (v269 + v4 + 69 * v3);
  v142 = v141 + *(v2 + 56);
  *v141 = 69;
  *v142 = "DIETARY_PHOSPHORUS";
  *(v142 + 1) = 18;
  v142[16] = 2;
  v9();
  v143 = (v269 + v4 + 70 * v3);
  v144 = v143 + *(v2 + 56);
  *v143 = 70;
  *v144 = "DIETARY_IODINE";
  *(v144 + 1) = 14;
  v144[16] = 2;
  v9();
  v145 = (v269 + v4 + 71 * v3);
  v146 = v145 + *(v2 + 56);
  *v145 = 71;
  *v146 = "DIETARY_MAGNESIUM";
  *(v146 + 1) = 17;
  v146[16] = 2;
  v9();
  v147 = (v269 + v4 + 72 * v3);
  v148 = v147 + *(v2 + 56);
  *v147 = 72;
  *v148 = "DIETARY_ZINC";
  *(v148 + 1) = 12;
  v148[16] = 2;
  v9();
  v149 = (v269 + v4 + 73 * v3);
  v150 = v149 + *(v2 + 56);
  *v149 = 73;
  *v150 = "DIETARY_SELENIUM";
  *(v150 + 1) = 16;
  v150[16] = 2;
  v9();
  v151 = (v269 + v4 + 74 * v3);
  v152 = v151 + *(v2 + 56);
  *v151 = 74;
  *v152 = "DIETARY_COPPER";
  *(v152 + 1) = 14;
  v152[16] = 2;
  v9();
  v153 = (v269 + v4 + 75 * v3);
  v154 = v153 + *(v2 + 56);
  *v153 = 75;
  *v154 = "DIETARY_MANGANESE";
  *(v154 + 1) = 17;
  v154[16] = 2;
  v9();
  v155 = (v269 + v4 + 76 * v3);
  v156 = v155 + *(v2 + 56);
  *v155 = 76;
  *v156 = "DIETARY_CHROMIUM";
  *(v156 + 1) = 16;
  v156[16] = 2;
  v9();
  v157 = (v269 + v4 + 77 * v3);
  v158 = v157 + *(v2 + 56);
  *v157 = 77;
  *v158 = "DIETARY_MOLYBDENUM";
  *(v158 + 1) = 18;
  v158[16] = 2;
  v9();
  v159 = (v269 + v4 + 78 * v3);
  v160 = v159 + *(v2 + 56);
  *v159 = 78;
  *v160 = "DIETARY_CHLORIDE";
  *(v160 + 1) = 16;
  v160[16] = 2;
  v9();
  v161 = (v269 + v4 + 79 * v3);
  v162 = v161 + *(v2 + 56);
  *v161 = 79;
  *v162 = "DIETARY_POTASSIUM";
  *(v162 + 1) = 17;
  v162[16] = 2;
  v9();
  v163 = (v269 + v4 + 80 * v3);
  v164 = v163 + *(v2 + 56);
  *v163 = 80;
  *v164 = "DIETARY_CAFFEINE";
  *(v164 + 1) = 16;
  v164[16] = 2;
  v9();
  v165 = (v269 + v4 + 81 * v3);
  v166 = v165 + *(v2 + 56);
  *v165 = 81;
  *v166 = "DIETARY_WATER";
  *(v166 + 1) = 13;
  v166[16] = 2;
  v9();
  v167 = (v269 + v4 + 82 * v3);
  v168 = v167 + *(v2 + 56);
  *v167 = 82;
  *v168 = "UV_EXPOSURE";
  *(v168 + 1) = 11;
  v168[16] = 2;
  v9();
  v169 = (v269 + v4 + 83 * v3);
  v170 = v169 + *(v2 + 56);
  *v169 = 83;
  *v170 = "NUMBER_OF_TIMES_FALLEN";
  *(v170 + 1) = 22;
  v170[16] = 2;
  v9();
  v171 = (v269 + v4 + 84 * v3);
  v172 = v171 + *(v2 + 56);
  *v171 = 84;
  *v172 = "SLEEP_ANALYSIS";
  *(v172 + 1) = 14;
  v172[16] = 2;
  v9();
  v173 = (v269 + v4 + 85 * v3);
  v174 = v173 + *(v2 + 56);
  *v173 = 85;
  *v174 = "APPLE_STAND_HOUR";
  *(v174 + 1) = 16;
  v174[16] = 2;
  v9();
  v175 = (v269 + v4 + 86 * v3);
  v176 = v175 + *(v2 + 56);
  *v175 = 86;
  *v176 = "CERVICAL_MUCUS_QUALITY";
  *(v176 + 1) = 22;
  v176[16] = 2;
  v9();
  v177 = (v269 + v4 + 87 * v3);
  v178 = v177 + *(v2 + 56);
  *v177 = 87;
  *v178 = "MENSTRUAL_FLOW";
  *(v178 + 1) = 14;
  v178[16] = 2;
  v9();
  v179 = (v269 + v4 + 88 * v3);
  v180 = v179 + *(v2 + 56);
  *v179 = 88;
  *v180 = "INTERMENSTRUAL_BLEEDING";
  *(v180 + 1) = 23;
  v180[16] = 2;
  v9();
  v181 = (v269 + v4 + 89 * v3);
  v182 = v181 + *(v2 + 56);
  *v181 = 89;
  *v182 = "OVULATION_TEST_RESULT";
  *(v182 + 1) = 21;
  v182[16] = 2;
  v9();
  v183 = (v269 + v4 + 90 * v3);
  v184 = v183 + *(v2 + 56);
  *v183 = 90;
  *v184 = "SEXUAL_ACTIVITY";
  *(v184 + 1) = 15;
  v184[16] = 2;
  v9();
  v185 = (v269 + v4 + 91 * v3);
  v186 = v185 + *(v2 + 56);
  *v185 = 91;
  *v186 = "MINDFUL_SESSION";
  *(v186 + 1) = 15;
  v186[16] = 2;
  v9();
  v187 = (v269 + v4 + 92 * v3);
  v188 = v187 + *(v2 + 56);
  *v187 = 92;
  *v188 = "HIGH_HEART_RATE_EVENT";
  *(v188 + 1) = 21;
  v188[16] = 2;
  v9();
  v189 = (v269 + v4 + 93 * v3);
  v190 = v189 + *(v2 + 56);
  *v189 = 93;
  *v190 = "LOW_HEART_RATE_EVENT";
  *(v190 + 1) = 20;
  v190[16] = 2;
  v9();
  v191 = (v269 + v4 + 94 * v3);
  v192 = v191 + *(v2 + 56);
  *v191 = 94;
  *v192 = "IRREGULAR_HEART_RHYTHM_EVENT";
  *(v192 + 1) = 28;
  v192[16] = 2;
  v9();
  v193 = (v269 + v4 + 95 * v3);
  v194 = v193 + *(v2 + 56);
  *v193 = 95;
  *v194 = "AUDIO_EXPOSURE_EVENT";
  *(v194 + 1) = 20;
  v194[16] = 2;
  v9();
  v195 = (v269 + v4 + 96 * v3);
  v196 = v195 + *(v2 + 56);
  *v195 = 96;
  *v196 = "TOOTHBRUSHING_EVENT";
  *(v196 + 1) = 19;
  v196[16] = 2;
  v9();
  v197 = (v269 + v4 + 97 * v3);
  v198 = v197 + *(v2 + 56);
  *v197 = 97;
  *v198 = "ECG";
  *(v198 + 1) = 3;
  v198[16] = 2;
  v9();
  v199 = (v269 + v4 + 98 * v3);
  v200 = v199 + *(v2 + 56);
  *v199 = 98;
  *v200 = "WORKOUT";
  *(v200 + 1) = 7;
  v200[16] = 2;
  v9();
  v201 = (v269 + v4 + 99 * v3);
  v202 = v201 + *(v2 + 56);
  *v201 = 99;
  *v202 = "ALLERGY_TYPE";
  *(v202 + 1) = 12;
  v202[16] = 2;
  v9();
  v203 = (v269 + v4 + 100 * v3);
  v204 = v203 + *(v2 + 56);
  *v203 = 100;
  *v204 = "CONDITION_TYPE";
  *(v204 + 1) = 14;
  v204[16] = 2;
  v9();
  v205 = (v269 + v4 + 101 * v3);
  v206 = v205 + *(v2 + 56);
  *v205 = 101;
  *v206 = "IMMUNIZATION_TYPE";
  *(v206 + 1) = 17;
  v206[16] = 2;
  v9();
  v207 = (v269 + v4 + 102 * v3);
  v208 = v207 + *(v2 + 56);
  *v207 = 102;
  *v208 = "LAB_TYPE";
  *(v208 + 1) = 8;
  v208[16] = 2;
  v9();
  v209 = (v269 + v4 + 103 * v3);
  v210 = v209 + *(v2 + 56);
  *v209 = 103;
  *v210 = "MEDICATION_TYPE";
  *(v210 + 1) = 15;
  v210[16] = 2;
  v9();
  v211 = (v269 + v4 + 104 * v3);
  v212 = v211 + *(v2 + 56);
  *v211 = 104;
  *v212 = "PROCEDURE_TYPE";
  *(v212 + 1) = 14;
  v212[16] = 2;
  v9();
  v213 = (v269 + v4 + 105 * v3);
  v214 = v213 + *(v2 + 56);
  *v213 = 105;
  *v214 = "VITAL_RECORD";
  *(v214 + 1) = 12;
  v214[16] = 2;
  v9();
  v215 = (v269 + v4 + 106 * v3);
  v216 = v215 + *(v2 + 56);
  *v215 = 106;
  *v216 = "BLOOD_PRESSURE_SYSTOLIC_CLINICAL";
  *(v216 + 1) = 32;
  v216[16] = 2;
  v9();
  v217 = (v269 + v4 + 107 * v3);
  v218 = v217 + *(v2 + 56);
  *v217 = 107;
  *v218 = "BLOOD_PRESSURE_DIASTOLIC_CLINICAL";
  *(v218 + 1) = 33;
  v218[16] = 2;
  v9();
  v219 = (v269 + v4 + 108 * v3);
  v220 = v219 + *(v2 + 56);
  *v219 = 108;
  *v220 = "BODY_MASS_CLINICAL";
  *(v220 + 1) = 18;
  v220[16] = 2;
  v9();
  v221 = (v269 + v4 + 109 * v3);
  v222 = v221 + *(v2 + 56);
  *v221 = 109;
  *v222 = "CYCLE_ANALYSIS";
  *(v222 + 1) = 14;
  v222[16] = 2;
  v9();
  v223 = (v269 + v4 + 110 * v3);
  v224 = v223 + *(v2 + 56);
  *v223 = 110;
  *v224 = "BODY_MASS_INDEX_CLINICAL";
  *(v224 + 1) = 24;
  v224[16] = 2;
  v9();
  v225 = (v269 + v4 + 111 * v3);
  v226 = v225 + *(v2 + 56);
  *v225 = 111;
  *v226 = "ACTIVITY_SUMMARY";
  *(v226 + 1) = 16;
  v226[16] = 2;
  v9();
  v227 = (v269 + v4 + 112 * v3);
  v228 = v227 + *(v2 + 56);
  *v227 = 112;
  *v228 = "PATIENT_META";
  *(v228 + 1) = 12;
  v228[16] = 2;
  v9();
  v229 = (v269 + v4 + 113 * v3);
  v230 = v229 + *(v2 + 56);
  *v229 = 113;
  *v230 = "SLEEP_SUMMARY";
  *(v230 + 1) = 13;
  v230[16] = 2;
  v9();
  v231 = (v269 + v4 + 114 * v3);
  v232 = v231 + *(v2 + 56);
  *v231 = 114;
  *v232 = "SLEEP_SERIES";
  *(v232 + 1) = 12;
  v232[16] = 2;
  v9();
  v233 = (v269 + v4 + 115 * v3);
  v234 = v233 + *(v2 + 56);
  *v233 = 115;
  *v234 = "SLEEP_SCHEDULE";
  *(v234 + 1) = 14;
  v234[16] = 2;
  v9();
  v235 = (v269 + v4 + 116 * v3);
  v236 = v235 + *(v2 + 56);
  *v235 = 116;
  *v236 = "CYCLE_FACTORS";
  *(v236 + 1) = 13;
  v236[16] = 2;
  v9();
  v237 = (v269 + v4 + 117 * v3);
  v238 = v237 + *(v2 + 56);
  *v237 = 117;
  *v238 = "WALKING_SPEED";
  *(v238 + 1) = 13;
  v238[16] = 2;
  v9();
  v239 = (v269 + v4 + 118 * v3);
  v240 = v239 + *(v2 + 56);
  *v239 = 118;
  *v240 = "WALKING_STEP_LENGTH";
  *(v240 + 1) = 19;
  v240[16] = 2;
  v9();
  v241 = (v269 + v4 + 119 * v3);
  v242 = v241 + *(v2 + 56);
  *v241 = 119;
  *v242 = "WALKING_DOUBLE_SUPPORT_PERCENTAGE";
  *(v242 + 1) = 33;
  v242[16] = 2;
  v9();
  v243 = (v269 + v4 + 120 * v3);
  v244 = v243 + *(v2 + 56);
  *v243 = 120;
  *v244 = "STAIR_ASCENT_SPEED";
  *(v244 + 1) = 18;
  v244[16] = 2;
  v9();
  v245 = (v269 + v4 + 121 * v3);
  v246 = v245 + *(v2 + 56);
  *v245 = 121;
  *v246 = "STAIR_DESCENT_SPEED";
  *(v246 + 1) = 19;
  v246[16] = 2;
  v9();
  v247 = (v269 + v4 + 122 * v3);
  v248 = v247 + *(v2 + 56);
  *v247 = 122;
  *v248 = "SIX_MINUTE_WALK_TEST_DISTANCE";
  *(v248 + 1) = 29;
  v248[16] = 2;
  v9();
  v249 = (v269 + v4 + 123 * v3);
  v250 = v249 + *(v2 + 56);
  *v249 = 123;
  *v250 = "APPLE_WALKING_STEADINESS";
  *(v250 + 1) = 24;
  v250[16] = 2;
  v9();
  v251 = (v269 + v4 + 124 * v3);
  v252 = v251 + *(v2 + 56);
  *v251 = 124;
  *v252 = "WALKING_ASYMMETRY_PERCENTAGE";
  *(v252 + 1) = 28;
  v252[16] = 2;
  v9();
  v253 = (v269 + v4 + 125 * v3);
  v254 = v253 + *(v2 + 56);
  *v253 = 125;
  *v254 = "APPLE_WALKING_STEADINESS_CLASSIFICATION";
  *(v254 + 1) = 39;
  v254[16] = 2;
  v9();
  v255 = (v269 + v4 + 126 * v3);
  v256 = v255 + *(v2 + 56);
  *v255 = 126;
  *v256 = "APPLE_WALKING_STEADINESS_EVENT";
  *(v256 + 1) = 30;
  v256[16] = 2;
  v9();
  v257 = (v269 + v4 + 127 * v3);
  v258 = v257 + *(v2 + 56);
  *v257 = 127;
  *v258 = "MEDICATION_TRACKING";
  *(v258 + 1) = 19;
  v258[16] = 2;
  v9();
  v259 = v269 + v4 + (v3 << 7) + *(v2 + 56);
  *(v5 + (v3 << 7)) = 128;
  *v259 = "MEDICATION_TRACKING_DOSE_EVENT";
  *(v259 + 8) = 30;
  *(v259 + 16) = 2;
  v9();
  v260 = (v269 + v4 + 129 * v3);
  v261 = v260 + *(v2 + 56);
  *v260 = 129;
  *v261 = "MEDICATION_TRACKING_SCHEDULE";
  *(v261 + 1) = 28;
  v261[16] = 2;
  v9();
  v262 = (v269 + v4 + 130 * v3);
  v263 = v262 + *(v2 + 56);
  *v262 = 130;
  *v263 = "BLOOD_GLUCOSE_HISTOGRAM";
  *(v263 + 1) = 23;
  v263[16] = 2;
  v9();
  v264 = (v269 + v4 + 131 * v3);
  v265 = v264 + *(v2 + 56);
  *v264 = 131;
  *v265 = "BLOOD_GLUCOSE_LOW_FREQUENCY";
  *(v265 + 1) = 27;
  v265[16] = 2;
  v9();
  v266 = (v269 + v4 + 132 * v3);
  v267 = v266 + *(v2 + 56);
  *v266 = 132;
  *v267 = "ACTIVE_MEDICATIONS";
  *(v267 + 1) = 18;
  v267[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251C41CC8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A28E0);
  __swift_project_value_buffer(v0, qword_27F4A28E0);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "GLUCOSE_MEAL_TIME_NOT_SET";
  *(v7 + 8) = 25;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "BEFORE_MEAL";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "AFTER_MEAL";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C41EE4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A28F8);
  __swift_project_value_buffer(v0, qword_27F4A28F8);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "SLEEP_NOT_SET";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "IN_BED";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "ASLEEP";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "AWAKE";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C42138()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2910);
  __swift_project_value_buffer(v0, qword_27F4A2910);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251C763E0;
  v5 = v15 + v4 + *(v2 + 56);
  *(v15 + v4) = 0;
  *v5 = "WALKING_STEADINESS_CLASSIFICATION_NOT_SET";
  *(v5 + 8) = 41;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v15 + v4 + v3 + *(v2 + 56);
  *(v15 + v4 + v3) = 1;
  *v9 = "OK";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v8();
  v10 = (v15 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "LOW";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v15 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "VERY_LOW";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251C4237C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2928);
  __swift_project_value_buffer(v0, qword_27F4A2928);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "WALKING_STEADINESS_EVENT_NOT_SET";
  *(v7 + 8) = 32;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "INITIAL_LOW";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "INITIAL_VERY_LOW";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "REPEAT_LOW";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 4;
  *v16 = "REPEAT_VERY_LOW";
  *(v16 + 8) = 15;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C42618()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2940);
  __swift_project_value_buffer(v0, qword_27F4A2940);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_251C75810;
  v5 = v27 + v4;
  v6 = v27 + v4 + *(v2 + 56);
  *(v27 + v4) = 0;
  *v6 = "CYCLE_FACTORS_NOT_SET";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v27 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "LACTATION";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v27 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "PREGNANCY";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v27 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "CONTRACEPTIVE_UNSPECIFIED";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v27 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "CONTRACEPTIVE_IMPLANT";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v27 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "CONTRACEPTIVE_INJECTION";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  v19 = (v27 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "CONTRACEPTIVE_INTRAUTERINE_DEVICE";
  *(v20 + 1) = 33;
  v20[16] = 2;
  v9();
  v21 = (v27 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "CONTRACEPTIVE_INTRAVAGINAL_RING";
  *(v22 + 1) = 31;
  v22[16] = 2;
  v9();
  v23 = v27 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "CONTRACEPTIVE_ORAL";
  *(v23 + 8) = 18;
  *(v23 + 16) = 2;
  v9();
  v24 = (v27 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "CONTRACEPTIVE_PATCH";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251C429E4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2958);
  __swift_project_value_buffer(v0, qword_27F4A2958);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_251C878C0;
  v5 = v52 + v4;
  v6 = v52 + v4 + *(v2 + 56);
  *(v52 + v4) = 0;
  *v6 = "SYMPTOMS_NOT_SET";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v52 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "SYMPTOMS_ABDOMINAL_CRAMPS";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v52 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "SYMPTOMS_ACNE";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v52 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "SYMPTOMS_APPETITE_CHANGES";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v52 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "SYMPTOMS_BLOATING";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v52 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "SYMPTOMS_BREAST_PAIN";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v52 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "SYMPTOMS_CONSTIPATION";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v52 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "SYMPTOMS_DIARRHEA";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = v52 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "SYMPTOMS_HEADACHE";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  v24 = (v52 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "SYMPTOMS_HOT_FLASHES";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v9();
  v26 = (v52 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "SYMPTOMS_LOWER_BACK_PAIN";
  *(v27 + 1) = 24;
  v27[16] = 2;
  v9();
  v28 = (v52 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "SYMPTOMS_MOOD_CHANGES";
  *(v29 + 1) = 21;
  v29[16] = 2;
  v9();
  v30 = (v52 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "SYMPTOMS_NAUSEA";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v9();
  v32 = (v52 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "SYMPTOMS_PELVIC_PAIN";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v9();
  v34 = (v52 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "SYMPTOMS_SLEEP_CHANGES";
  *(v35 + 1) = 22;
  v35[16] = 2;
  v9();
  v36 = (v52 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "SYMPTOMS_FATIGUE";
  *(v37 + 1) = 16;
  v37[16] = 2;
  v9();
  v38 = v52 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "SYMPTOMS_VAGINAL_DRYNESS";
  *(v38 + 8) = 24;
  *(v38 + 16) = 2;
  v9();
  v39 = (v52 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "SYMPTOMS_NIGHT_SWEATS";
  *(v40 + 1) = 21;
  v40[16] = 2;
  v9();
  v41 = (v52 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "SYMPTOMS_CHILLS";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v9();
  v43 = (v52 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "SYMPTOMS_HAIR_LOSS";
  *(v44 + 1) = 18;
  v44[16] = 2;
  v9();
  v45 = (v52 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "SYMPTOMS_DRY_SKIN";
  *(v46 + 1) = 17;
  v46[16] = 2;
  v9();
  v47 = (v52 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "SYMPTOMS_BLADDER_INCONTINENCE";
  *(v48 + 1) = 29;
  v48[16] = 2;
  v9();
  v49 = (v52 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "SYMPTOMS_MEMORY_LAPSE";
  *(v50 + 1) = 21;
  v50[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251C430B0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2970);
  __swift_project_value_buffer(v0, qword_27F4A2970);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C78260;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "NOT_SET";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "SINUS_RHYTHM";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "ATRIAL_FIBRILLATION";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "INCONCLUSIVE_LOW_HEART_RATE";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "INCONCLUSIVE_HIGH_HEART_RATE";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "INCONCLUSIVE_POOR_READING";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 6;
  *v21 = "INCONCLUSIVE_OTHER";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v10();
  v22 = (v6 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 100;
  *v23 = "UNRECOGNIZED_READING";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C43408()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2988);
  __swift_project_value_buffer(v0, qword_27F4A2988);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C78260;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "CLINICAL_TYPE";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "ALLERGIES";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "CONDITIONS";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "IMMUNIZATIONS";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "LABS";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "MEDICATIONS";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 6;
  *v21 = "PROCEDURES";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v10();
  v22 = (v6 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 7;
  *v23 = "VITALS";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C43758()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A29A0);
  __swift_project_value_buffer(v0, qword_27F4A29A0);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_251C878D0;
  v5 = v166 + v4;
  v6 = v166 + v4 + *(v2 + 56);
  *(v166 + v4) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v166 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "AMERICAN_FOOTBALL";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v166 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "ARCHERY";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v166 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "AUSTRALIAN_FOOTBALL";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v166 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "BADMINTON";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v166 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "BASEBALL";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v166 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "BASKETBALL";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  v21 = (v166 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "BOWLING";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = v166 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "BOXING";
  *(v23 + 8) = 6;
  *(v23 + 16) = 2;
  v9();
  v24 = (v166 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "CLIMBING";
  *(v25 + 1) = 8;
  v25[16] = 2;
  v9();
  v26 = (v166 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "CRICKET";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v9();
  v28 = (v166 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "CROSS_TRAINING";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v9();
  v30 = (v166 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "CURLING";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v9();
  v32 = (v166 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "CYCLING";
  *(v33 + 1) = 7;
  v33[16] = 2;
  v9();
  v34 = (v166 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "DANCE";
  *(v35 + 1) = 5;
  v35[16] = 2;
  v9();
  v36 = (v166 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "DANCE_INSPIRED_TRAINING";
  *(v37 + 1) = 23;
  v37[16] = 2;
  v9();
  v38 = v166 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "ELLIPTICAL";
  *(v38 + 8) = 10;
  *(v38 + 16) = 2;
  v9();
  v39 = (v166 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "EQUESTRIAN_SPORTS";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v9();
  v41 = (v166 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "FENCING";
  *(v42 + 1) = 7;
  v42[16] = 2;
  v9();
  v43 = (v166 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "FISHING";
  *(v44 + 1) = 7;
  v44[16] = 2;
  v9();
  v45 = (v166 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "FUNCTIONAL_STRENGTH_TRAINING";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v9();
  v47 = (v166 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "GOLF";
  *(v48 + 1) = 4;
  v48[16] = 2;
  v9();
  v49 = (v166 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "GYMNASTICS";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v9();
  v51 = (v166 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "HANDBALL";
  *(v52 + 1) = 8;
  v52[16] = 2;
  v9();
  v53 = (v166 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "HIKING";
  *(v54 + 1) = 6;
  v54[16] = 2;
  v9();
  v55 = (v166 + v4 + 25 * v3);
  v56 = v55 + *(v2 + 56);
  *v55 = 25;
  *v56 = "HOCKEY";
  *(v56 + 1) = 6;
  v56[16] = 2;
  v9();
  v57 = (v166 + v4 + 26 * v3);
  v58 = v57 + *(v2 + 56);
  *v57 = 26;
  *v58 = "HUNTING";
  *(v58 + 1) = 7;
  v58[16] = 2;
  v9();
  v59 = (v166 + v4 + 27 * v3);
  v60 = v59 + *(v2 + 56);
  *v59 = 27;
  *v60 = "LACROSSE";
  *(v60 + 1) = 8;
  v60[16] = 2;
  v9();
  v61 = (v166 + v4 + 28 * v3);
  v62 = v61 + *(v2 + 56);
  *v61 = 28;
  *v62 = "MARTIAL_ARTS";
  *(v62 + 1) = 12;
  v62[16] = 2;
  v9();
  v63 = (v166 + v4 + 29 * v3);
  v64 = v63 + *(v2 + 56);
  *v63 = 29;
  *v64 = "MIND_AND_BODY";
  *(v64 + 1) = 13;
  v64[16] = 2;
  v9();
  v65 = (v166 + v4 + 30 * v3);
  v66 = v65 + *(v2 + 56);
  *v65 = 30;
  *v66 = "MIXED_METABOLIC_CARDIO_TRAINING";
  *(v66 + 1) = 31;
  v66[16] = 2;
  v9();
  v67 = (v166 + v4 + 31 * v3);
  v68 = v67 + *(v2 + 56);
  *v67 = 31;
  *v68 = "PADDLE_SPORTS";
  *(v68 + 1) = 13;
  v68[16] = 2;
  v9();
  v69 = v166 + v4 + 32 * v3 + *(v2 + 56);
  *(v5 + 32 * v3) = 32;
  *v69 = "PLAY";
  *(v69 + 8) = 4;
  *(v69 + 16) = 2;
  v9();
  v70 = (v166 + v4 + 33 * v3);
  v71 = v70 + *(v2 + 56);
  *v70 = 33;
  *v71 = "PREPARATION_AND_RECOVERY";
  *(v71 + 1) = 24;
  v71[16] = 2;
  v9();
  v72 = (v166 + v4 + 34 * v3);
  v73 = v72 + *(v2 + 56);
  *v72 = 34;
  *v73 = "RACQUETBALL";
  *(v73 + 1) = 11;
  v73[16] = 2;
  v9();
  v74 = (v166 + v4 + 35 * v3);
  v75 = v74 + *(v2 + 56);
  *v74 = 35;
  *v75 = "ROWING";
  *(v75 + 1) = 6;
  v75[16] = 2;
  v9();
  v76 = (v166 + v4 + 36 * v3);
  v77 = v76 + *(v2 + 56);
  *v76 = 36;
  *v77 = "RUGBY";
  *(v77 + 1) = 5;
  v77[16] = 2;
  v9();
  v78 = (v166 + v4 + 37 * v3);
  v79 = v78 + *(v2 + 56);
  *v78 = 37;
  *v79 = "RUNNING";
  *(v79 + 1) = 7;
  v79[16] = 2;
  v9();
  v80 = (v166 + v4 + 38 * v3);
  v81 = v80 + *(v2 + 56);
  *v80 = 38;
  *v81 = "SAILING";
  *(v81 + 1) = 7;
  v81[16] = 2;
  v9();
  v82 = (v166 + v4 + 39 * v3);
  v83 = v82 + *(v2 + 56);
  *v82 = 39;
  *v83 = "SKATING_SPORTS";
  *(v83 + 1) = 14;
  v83[16] = 2;
  v9();
  v84 = (v166 + v4 + 40 * v3);
  v85 = v84 + *(v2 + 56);
  *v84 = 40;
  *v85 = "SNOW_SPORTS";
  *(v85 + 1) = 11;
  v85[16] = 2;
  v9();
  v86 = (v166 + v4 + 41 * v3);
  v87 = v86 + *(v2 + 56);
  *v86 = 41;
  *v87 = "SOCCER";
  *(v87 + 1) = 6;
  v87[16] = 2;
  v9();
  v88 = (v166 + v4 + 42 * v3);
  v89 = v88 + *(v2 + 56);
  *v88 = 42;
  *v89 = "SOFTBALL";
  *(v89 + 1) = 8;
  v89[16] = 2;
  v9();
  v90 = (v166 + v4 + 43 * v3);
  v91 = v90 + *(v2 + 56);
  *v90 = 43;
  *v91 = "SQUASH";
  *(v91 + 1) = 6;
  v91[16] = 2;
  v9();
  v92 = (v166 + v4 + 44 * v3);
  v93 = v92 + *(v2 + 56);
  *v92 = 44;
  *v93 = "STAIR_CLIMBING";
  *(v93 + 1) = 14;
  v93[16] = 2;
  v9();
  v94 = (v166 + v4 + 45 * v3);
  v95 = v94 + *(v2 + 56);
  *v94 = 45;
  *v95 = "SURFING_SPORTS";
  *(v95 + 1) = 14;
  v95[16] = 2;
  v9();
  v96 = (v166 + v4 + 46 * v3);
  v97 = v96 + *(v2 + 56);
  *v96 = 46;
  *v97 = "SWIMMING";
  *(v97 + 1) = 8;
  v97[16] = 2;
  v9();
  v98 = (v166 + v4 + 47 * v3);
  v99 = v98 + *(v2 + 56);
  *v98 = 47;
  *v99 = "TABLE_TENNIS";
  *(v99 + 1) = 12;
  v99[16] = 2;
  v9();
  v100 = (v166 + v4 + 48 * v3);
  v101 = v100 + *(v2 + 56);
  *v100 = 48;
  *v101 = "TENNIS";
  *(v101 + 1) = 6;
  v101[16] = 2;
  v9();
  v102 = (v166 + v4 + 49 * v3);
  v103 = v102 + *(v2 + 56);
  *v102 = 49;
  *v103 = "TRACK_AND_FIELD";
  *(v103 + 1) = 15;
  v103[16] = 2;
  v9();
  v104 = (v166 + v4 + 50 * v3);
  v105 = v104 + *(v2 + 56);
  *v104 = 50;
  *v105 = "TRADITIONAL_STRENGTH_TRAINING";
  *(v105 + 1) = 29;
  v105[16] = 2;
  v9();
  v106 = (v166 + v4 + 51 * v3);
  v107 = v106 + *(v2 + 56);
  *v106 = 51;
  *v107 = "VOLLEYBALL";
  *(v107 + 1) = 10;
  v107[16] = 2;
  v9();
  v108 = (v166 + v4 + 52 * v3);
  v109 = v108 + *(v2 + 56);
  *v108 = 52;
  *v109 = "WALKING";
  *(v109 + 1) = 7;
  v109[16] = 2;
  v9();
  v110 = (v166 + v4 + 53 * v3);
  v111 = v110 + *(v2 + 56);
  *v110 = 53;
  *v111 = "WATER_FITNESS";
  *(v111 + 1) = 13;
  v111[16] = 2;
  v9();
  v112 = (v166 + v4 + 54 * v3);
  v113 = v112 + *(v2 + 56);
  *v112 = 54;
  *v113 = "WATER_POLO";
  *(v113 + 1) = 10;
  v113[16] = 2;
  v9();
  v114 = (v166 + v4 + 55 * v3);
  v115 = v114 + *(v2 + 56);
  *v114 = 55;
  *v115 = "WATER_SPORTS";
  *(v115 + 1) = 12;
  v115[16] = 2;
  v9();
  v116 = (v166 + v4 + 56 * v3);
  v117 = v116 + *(v2 + 56);
  *v116 = 56;
  *v117 = "WRESTLING";
  *(v117 + 1) = 9;
  v117[16] = 2;
  v9();
  v118 = (v166 + v4 + 57 * v3);
  v119 = v118 + *(v2 + 56);
  *v118 = 57;
  *v119 = "YOGA";
  *(v119 + 1) = 4;
  v119[16] = 2;
  v9();
  v120 = (v166 + v4 + 58 * v3);
  v121 = v120 + *(v2 + 56);
  *v120 = 58;
  *v121 = "BARRE";
  *(v121 + 1) = 5;
  v121[16] = 2;
  v9();
  v122 = (v166 + v4 + 59 * v3);
  v123 = v122 + *(v2 + 56);
  *v122 = 59;
  *v123 = "CORE_TRAINING";
  *(v123 + 1) = 13;
  v123[16] = 2;
  v9();
  v124 = (v166 + v4 + 60 * v3);
  v125 = v124 + *(v2 + 56);
  *v124 = 60;
  *v125 = "CROSS_COUNTRY_SKIING";
  *(v125 + 1) = 20;
  v125[16] = 2;
  v9();
  v126 = (v166 + v4 + 61 * v3);
  v127 = v126 + *(v2 + 56);
  *v126 = 61;
  *v127 = "DOWNHILL_SKIING";
  *(v127 + 1) = 15;
  v127[16] = 2;
  v9();
  v128 = (v166 + v4 + 62 * v3);
  v129 = v128 + *(v2 + 56);
  *v128 = 62;
  *v129 = "FLEXIBILITY";
  *(v129 + 1) = 11;
  v129[16] = 2;
  v9();
  v130 = (v166 + v4 + 63 * v3);
  v131 = v130 + *(v2 + 56);
  *v130 = 63;
  *v131 = "HIGH_INTENSITY_INTERVAL_TRAINING";
  *(v131 + 1) = 32;
  v131[16] = 2;
  v9();
  v132 = v166 + v4 + (v3 << 6) + *(v2 + 56);
  *(v5 + (v3 << 6)) = 64;
  *v132 = "JUMP_ROPE";
  *(v132 + 8) = 9;
  *(v132 + 16) = 2;
  v9();
  v133 = (v166 + v4 + 65 * v3);
  v134 = v133 + *(v2 + 56);
  *v133 = 65;
  *v134 = "KICKBOXING";
  *(v134 + 1) = 10;
  v134[16] = 2;
  v9();
  v135 = (v166 + v4 + 66 * v3);
  v136 = v135 + *(v2 + 56);
  *v135 = 66;
  *v136 = "PILATES";
  *(v136 + 1) = 7;
  v136[16] = 2;
  v9();
  v137 = (v166 + v4 + 67 * v3);
  v138 = v137 + *(v2 + 56);
  *v137 = 67;
  *v138 = "SNOWBOARDING";
  *(v138 + 1) = 12;
  v138[16] = 2;
  v9();
  v139 = (v166 + v4 + 68 * v3);
  v140 = v139 + *(v2 + 56);
  *v139 = 68;
  *v140 = "STAIRS";
  *(v140 + 1) = 6;
  v140[16] = 2;
  v9();
  v141 = (v166 + v4 + 69 * v3);
  v142 = v141 + *(v2 + 56);
  *v141 = 69;
  *v142 = "STEP_TRAINING";
  *(v142 + 1) = 13;
  v142[16] = 2;
  v9();
  v143 = (v166 + v4 + 70 * v3);
  v144 = v143 + *(v2 + 56);
  *v143 = 70;
  *v144 = "WHEELCHAIR_WALK_PACE";
  *(v144 + 1) = 20;
  v144[16] = 2;
  v9();
  v145 = (v166 + v4 + 71 * v3);
  v146 = v145 + *(v2 + 56);
  *v145 = 71;
  *v146 = "WHEELCHAIR_RUN_PACE";
  *(v146 + 1) = 19;
  v146[16] = 2;
  v9();
  v147 = (v166 + v4 + 72 * v3);
  v148 = v147 + *(v2 + 56);
  *v147 = 72;
  *v148 = "TAI_CHI";
  *(v148 + 1) = 7;
  v148[16] = 2;
  v9();
  v149 = (v166 + v4 + 73 * v3);
  v150 = v149 + *(v2 + 56);
  *v149 = 73;
  *v150 = "MIXED_CARDIO";
  *(v150 + 1) = 12;
  v150[16] = 2;
  v9();
  v151 = (v166 + v4 + 74 * v3);
  v152 = v151 + *(v2 + 56);
  *v151 = 74;
  *v152 = "HAND_CYCLING";
  *(v152 + 1) = 12;
  v152[16] = 2;
  v9();
  v153 = (v166 + v4 + 75 * v3);
  v154 = v153 + *(v2 + 56);
  *v153 = 75;
  *v154 = "DISC_SPORTS";
  *(v154 + 1) = 11;
  v154[16] = 2;
  v9();
  v155 = (v166 + v4 + 76 * v3);
  v156 = v155 + *(v2 + 56);
  *v155 = 76;
  *v156 = "FITNESS_GAMING";
  *(v156 + 1) = 14;
  v156[16] = 2;
  v9();
  v157 = (v166 + v4 + 77 * v3);
  v158 = v157 + *(v2 + 56);
  *v157 = 77;
  *v158 = "CARDIO_DANCE";
  *(v158 + 1) = 12;
  v158[16] = 2;
  v9();
  v159 = (v166 + v4 + 78 * v3);
  v160 = v159 + *(v2 + 56);
  *v159 = 78;
  *v160 = "SOCIAL_DANCE";
  *(v160 + 1) = 12;
  v160[16] = 2;
  v9();
  v161 = (v166 + v4 + 79 * v3);
  v162 = v161 + *(v2 + 56);
  *v161 = 79;
  *v162 = "PICKLEBALL";
  *(v162 + 1) = 10;
  v162[16] = 2;
  v9();
  v163 = (v166 + v4 + 80 * v3);
  v164 = v163 + *(v2 + 56);
  *v163 = 80;
  *v164 = "COOLDOWN";
  *(v164 + 1) = 8;
  v164[16] = 2;
  v9();
  return sub_251C706C4();
}

unint64_t sub_251C44BD8(unint64_t result)
{
  v1 = 7;
  if (result != 100)
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_251C44C40()
{
  result = qword_27F47CCA0;
  if (!qword_27F47CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCA0);
  }

  return result;
}

unint64_t sub_251C44CC8()
{
  result = qword_27F47CCB8;
  if (!qword_27F47CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCB8);
  }

  return result;
}

unint64_t sub_251C44D50()
{
  result = qword_27F47CCD0;
  if (!qword_27F47CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCD0);
  }

  return result;
}

unint64_t sub_251C44DA8()
{
  result = qword_27F47CCD8;
  if (!qword_27F47CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCD8);
  }

  return result;
}

unint64_t sub_251C44E00()
{
  result = qword_27F47CCE0;
  if (!qword_27F47CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCE0);
  }

  return result;
}

unint64_t sub_251C44E58()
{
  result = qword_27F47CCE8;
  if (!qword_27F47CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCE8);
  }

  return result;
}

unint64_t sub_251C44EAC()
{
  result = qword_27F47CCF0;
  if (!qword_27F47CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CCF0);
  }

  return result;
}

uint64_t sub_251C44F14(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v66 = sub_251C702E4();
  v62 = *(v66 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  v60 = *(Output - 8);
  v61 = Output;
  v13 = *(v60 + 64);
  v14 = MEMORY[0x28223BE20](Output);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v52 - v16;
  sub_251AD58F8();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PBTypedData(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C472FC();
  v57 = *(v28 - 8);
  v58 = v28;
  v29 = *(v57 + 64);
  MEMORY[0x28223BE20](v28);
  v56 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v31 = sub_251C45588(a1, a2, a3, a4, a5);
  v32 = *(v31 + 16);
  if (v32)
  {
    v53 = v22;
    v54 = v19;
    v55 = v18;
    v33 = *(a2 + 56);
    v34 = *(v24 + 80);
    v52 = v31;
    v35 = v31 + ((v34 + 32) & ~v34);
    v63 = *(v24 + 72);
    v64 = v33;
    v62 += 8;
    v36 = MEMORY[0x277D84F90];
    v37 = a2;
    v38 = v59;
    do
    {
      sub_251C47468(v35, v27, type metadata accessor for PBTypedData);
      v39 = v65;
      v40 = sub_251BF2A0C(v69, v65);
      MEMORY[0x28223BE20](v40);
      *(&v52 - 2) = v39;
      v41 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, (&v52 - 4), v64);
      (*v62)(v39, v66);
      if (*(v41 + 16))
      {
        v42 = v37;
        sub_251C47468(v27, v38, type metadata accessor for PBTypedData);
        v43 = sub_251BFAE40(v41);

        sub_251C474D0(v27, type metadata accessor for PBTypedData);
        v44 = v61;
        *(v38 + *(v61 + 20)) = v43;
        v45 = (v38 + *(v44 + 24));
        *v45 = 0;
        v45[1] = 0;
        sub_251C47400(v38, v70, type metadata accessor for ClinicalSharingQueryOutput);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_251C390E0(0, v36[2] + 1, 1, v36);
        }

        v47 = v36[2];
        v46 = v36[3];
        v37 = v42;
        if (v47 >= v46 >> 1)
        {
          v36 = sub_251C390E0(v46 > 1, v47 + 1, 1, v36);
        }

        v36[2] = v47 + 1;
        sub_251C47400(v70, v36 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v47, type metadata accessor for ClinicalSharingQueryOutput);
      }

      else
      {
        sub_251C474D0(v27, type metadata accessor for PBTypedData);
      }

      v35 += v63;
      --v32;
    }

    while (v32);

    v19 = v54;
    v18 = v55;
    v22 = v53;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v71 = v36;
  sub_251C47210(0, &qword_27F479780, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277D83940]);
  sub_251C47274();
  sub_251C710D4();

  sub_251A82284();
  v48 = v56;
  sub_251C708E4();
  (*(v19 + 8))(v22, v18);
  sub_251C473B8(&qword_27F47CD30, sub_251C472FC);
  v49 = v58;
  v50 = sub_251C70A94();
  (*(v57 + 8))(v48, v49);
  return v50;
}

uint64_t sub_251C45588(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v117 = a2;
  v118 = a5;
  v110 = a3;
  v111 = a4;
  v6 = type metadata accessor for PBCategorySeries(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_251C47210(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v115 = &v98 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v102 = &v98 - v18;
  MEMORY[0x28223BE20](v17);
  v114 = &v98 - v19;
  v108 = type metadata accessor for PBTypedData(0);
  v104 = *(v108 - 8);
  v20 = *(v104 + 64);
  v21 = MEMORY[0x28223BE20](v108);
  v105 = (&v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v113 = (&v98 - v23);
  sub_251C47210(0, &qword_27F478D90, MEMORY[0x277CC88A8], v9);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v98 - v26;
  v28 = type metadata accessor for PBDateRange(0);
  v119 = *(v28 - 8);
  v29 = v119[8];
  v30 = MEMORY[0x28223BE20](v28);
  v101 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v100 = &v98 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v116 = &v98 - v35;
  v120 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_42:
    v96 = v34;
    v36 = sub_251C717F4();
    v34 = v96;
  }

  else
  {
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v109 = v34;
  v103 = v14;
  if (v36)
  {
    v107 = v27;
    v37 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x25308D460](v37, a1);
      }

      else
      {
        if (v37 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v34 = *(a1 + 8 * v37 + 32);
      }

      v38 = v34;
      v27 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v39 = [v34 periods];
      sub_251A8223C(0, &qword_27F47CD38, 0x277CCD9D8);
      v40 = sub_251C71154();

      if (v40 >> 62)
      {
        v41 = sub_251C717F4();
      }

      else
      {
        v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v41 <= 0)
      {
        v14 = [v38 schedules];
        sub_251A8223C(0, &qword_27F47CD40, 0x277CCD9E8);
        v42 = sub_251C71154();

        if (v42 >> 62)
        {
          v14 = v42;
          v43 = sub_251C717F4();
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v43 <= 0)
        {
          v44 = [v38 sleepDurationGoal];
          if (!v44)
          {

            goto LABEL_18;
          }
        }
      }

      sub_251C71734();
      v14 = *(v120 + 16);
      sub_251C71774();
      sub_251C71784();
      v34 = sub_251C71744();
LABEL_18:
      ++v37;
      if (v27 == v36)
      {
        v45 = v120;
        v27 = v107;
        if ((v120 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_43;
      }
    }
  }

  v45 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_27:
  if ((v45 & 0x4000000000000000) != 0)
  {
LABEL_43:
    if (sub_251C717F4())
    {
      goto LABEL_29;
    }

LABEL_44:

    return MEMORY[0x277D84F90];
  }

  if (!*(v45 + 16))
  {
    goto LABEL_44;
  }

LABEL_29:
  v46 = objc_opt_self();
  v47 = v117;
  v48 = sub_251C70114();
  v50 = v110;
  v49 = v111;
  v51 = [v46 hk:v110 sleepDayIntervalForMorningIndexRange:v111 calendar:v48];

  v99 = v51;
  sub_251C6FA74();
  v52 = sub_251C6FAE4();
  (*(*(v52 - 8) + 56))(v27, 0, 1, v52);
  v53 = v116;
  v54 = v50;
  v55 = v109;
  sub_251A7BAA0(5, 1, v27, v47, v54, v49, v118);
  sub_251C481C4(v27, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v56 = v114;
  sub_251C47468(v53, v114, type metadata accessor for PBDateRange);
  v57 = v119[7];
  v57(v56, 0, 1, v55);
  v58 = v113;
  *v113 = 0;
  *(v58 + 8) = 1;
  v59 = v108;
  v60 = *(v108 + 20);
  v61 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v106 = v62 + 56;
  v107 = v63;
  (v63)(v58 + v60, 1, 1, v61);
  v64 = v58 + *(v59 + 24);
  sub_251C703A4();
  v65 = *(v59 + 28);
  v57(v58 + v65, 1, 1, v55);
  v66 = sub_251B3C450();
  v68 = v58;
  if ((v67 & 0x100) == 0)
  {
    *v58 = v66;
    *(v58 + 8) = v67 & 1;
  }

  v69 = v102;
  sub_251C48144(v114, v102, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v70 = v119[6];
  v119 += 6;
  v71 = v70(v69, 1, v55);
  v98 = v70;
  if (v71 == 1)
  {
    sub_251C481C4(v69, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  else
  {
    v72 = v100;
    sub_251C47400(v69, v100, type metadata accessor for PBDateRange);
    sub_251C481C4(v68 + v65, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C47400(v72, v68 + v65, type metadata accessor for PBDateRange);
    v57(v68 + v65, 0, 1, v55);
  }

  sub_251C481C4(v114, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v73 = v112;
  sub_251C4622C(v45, v117, v112);
  sub_251C481C4(v68 + v60, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251C47400(v73, v68 + v60, type metadata accessor for PBCategorySeries);
  swift_storeEnumTagMultiPayload();
  v74 = v107;
  (v107)(v68 + v60, 0, 1, v61);
  *v68 = 84;
  *(v68 + 8) = 1;
  v75 = v115;
  sub_251C47468(v116, v115, type metadata accessor for PBDateRange);
  v57(v75, 0, 1, v55);
  v76 = v55;
  v77 = v105;
  *v105 = 0;
  *(v77 + 8) = 1;
  v78 = v108;
  v79 = *(v108 + 20);
  (v74)(v77 + v79, 1, 1, v61);
  v80 = v77 + *(v78 + 24);
  sub_251C703A4();
  v81 = *(v78 + 28);
  v57(v77 + v81, 1, 1, v76);
  v82 = sub_251B3C450();
  v84 = v77;
  if ((v83 & 0x100) == 0)
  {
    *v77 = v82;
    *(v77 + 8) = v83 & 1;
  }

  v85 = v103;
  sub_251C48144(v115, v103, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v86 = v109;
  if (v98(v85, 1, v109) == 1)
  {
    sub_251C481C4(v85, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  else
  {
    v87 = v85;
    v88 = v101;
    sub_251C47400(v87, v101, type metadata accessor for PBDateRange);
    sub_251C481C4(v84 + v81, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251C47400(v88, v84 + v81, type metadata accessor for PBDateRange);
    v57(v84 + v81, 0, 1, v86);
  }

  sub_251C481C4(v115, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v89 = v112;
  sub_251C463C0(v45, v117, v110, v111, v118, v112);

  sub_251C481C4(v84 + v79, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251C47400(v89, v84 + v79, type metadata accessor for PBCategorySeries);
  swift_storeEnumTagMultiPayload();
  (v107)(v84 + v79, 0, 1, v61);
  *v84 = 115;
  *(v84 + 8) = 1;
  sub_251C47210(0, &qword_27F47CAD0, type metadata accessor for PBTypedData, MEMORY[0x277D84560]);
  v90 = *(v104 + 72);
  v91 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v92 = v84;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_251C75800;
  v94 = v93 + v91;
  v95 = v113;
  sub_251C47468(v113, v94, type metadata accessor for PBTypedData);
  sub_251C47400(v92, v94 + v90, type metadata accessor for PBTypedData);

  sub_251C474D0(v116, type metadata accessor for PBDateRange);
  sub_251C474D0(v95, type metadata accessor for PBTypedData);
  return v93;
}

void sub_251C4622C(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  v6 = type metadata accessor for PBCategorySeries(0);
  v7 = &a3[*(v6 + 24)];
  sub_251C703A4();
  v8 = *(v6 + 28);
  v9 = type metadata accessor for PBDateRange(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v17 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v11 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x25308D460](v11, a1);
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v16 = v12;
      sub_251C47530(&v17, &v16, a2);

      ++v11;
      if (v14 == i)
      {
        v15 = v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_15:
  *(a3 + 2) = v15;
}

void sub_251C463C0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v85 = a4;
  v86 = a5;
  v84 = a3;
  v9 = MEMORY[0x277D83D88];
  sub_251C47210(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v83 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v70 - v14;
  v15 = type metadata accessor for PBDateRange(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v81 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C47210(0, &qword_27F478D90, MEMORY[0x277CC88A8], v9);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v87 = &v70 - v24;
  v102 = sub_251C6FAE4();
  v25 = *(v102 - 8);
  v26 = v25[8];
  MEMORY[0x28223BE20](v102);
  v80 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for PBCategorySeries.Event(0);
  v78 = *(v79 - 8);
  v28 = *(v78 + 64);
  v29 = MEMORY[0x28223BE20](v79);
  v92 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v77 = &v70 - v32;
  MEMORY[0x28223BE20](v31);
  v91 = &v70 - v33;
  *a6 = 0;
  a6[1] = 0xE000000000000000;
  v34 = type metadata accessor for PBCategorySeries(0);
  v35 = a6 + *(v34 + 24);
  sub_251C703A4();
  v36 = *(v34 + 28);
  v37 = *(v16 + 56);
  v71 = a6;
  v93 = v16 + 56;
  v94 = v15;
  v90 = v37;
  v37(a6 + v36, 1, 1, v15);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v87; v38; i = v87)
  {
    v40 = 0;
    v96 = a1 & 0xFFFFFFFFFFFFFF8;
    v97 = a1 & 0xC000000000000001;
    v95 = (v25 + 7);
    v89 = (v25 + 6);
    v73 = (v25 + 4);
    v72 = (v25 + 1);
    v98 = MEMORY[0x277D84F90];
    v76 = a1;
    v75 = v23;
    v74 = v38;
    while (1)
    {
      if (v97)
      {
        v41 = MEMORY[0x25308D460](v40, a1);
      }

      else
      {
        if (v40 >= *(v96 + 16))
        {
          goto LABEL_23;
        }

        v41 = *(a1 + 8 * v40 + 32);
      }

      v25 = v41;
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v43 = MEMORY[0x25308DB30]();
      v44 = [v25 primarySchedule];
      if (v44)
      {
        v45 = v44;
        v99 = v43;
        v100 = v40 + 1;
        v101 = v25;
        v46 = [v25 morningIndex];
        v47 = sub_251C70114();
        v48 = [v45 bedtimeDateIntervalForMorningIndex:v46 calendar:v47];

        if (v48)
        {
          sub_251C6FA74();

          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v50 = v102;
        (*v95)(v23, v49, 1, v102);
        sub_251AAFBF8(v23, i);
        v51 = (*v89)(i, 1, v50);
        v42 = v100;
        v25 = v101;
        v43 = v99;
        if (v51 != 1)
        {
          v52 = v80;
          (*v73)();
          v53 = v77;
          *v77 = 0;
          *(v53 + 1) = 0;
          *(v53 + 2) = 0xE000000000000000;
          *(v53 + 3) = 0;
          *(v53 + 4) = 0xE000000000000000;
          v54 = v79;
          v55 = *(v79 + 28);
          v56 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
          (*(*(v56 - 8) + 56))(&v53[v55], 1, 1, v56);
          v57 = &v53[*(v54 + 32)];
          sub_251C703A4();
          v88 = *(v54 + 36);
          v90(&v53[v88], 1, 1, v94);
          v58 = v82;
          v59 = v52;
          sub_251C6FAB4();
          v60 = sub_251C70014();
          v61 = *(*(v60 - 8) + 56);
          v61(v58, 0, 1, v60);
          v62 = v83;
          sub_251C6FA84();
          v61(v62, 0, 1, v60);
          v63 = v81;
          sub_251C0DBA4(v58, v62, a2, v81);
          v64 = MEMORY[0x277CC9578];
          sub_251C481C4(v62, &qword_2813E7500, MEMORY[0x277CC9578]);
          sub_251C481C4(v58, &qword_2813E7500, v64);
          (*v72)(v59, v102);
          v65 = v88;
          sub_251C481C4(&v53[v88], qword_2813E6EE8, type metadata accessor for PBDateRange);
          sub_251C47400(v63, &v53[v65], type metadata accessor for PBDateRange);
          v90(&v53[v65], 0, 1, v94);
          v66 = v91;
          sub_251C47400(v53, v91, type metadata accessor for PBCategorySeries.Event);
          sub_251C47468(v66, v92, type metadata accessor for PBCategorySeries.Event);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_251C39894(0, v98[2] + 1, 1, v98);
          }

          v43 = v99;
          v68 = v98[2];
          v67 = v98[3];
          a1 = v76;
          v23 = v75;
          i = v87;
          v38 = v74;
          v42 = v100;
          if (v68 >= v67 >> 1)
          {
            v98 = sub_251C39894(v67 > 1, v68 + 1, 1, v98);
          }

          sub_251C474D0(v91, type metadata accessor for PBCategorySeries.Event);
          v69 = v98;
          v98[2] = v68 + 1;
          sub_251C47400(v92, v69 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v68, type metadata accessor for PBCategorySeries.Event);
          v25 = v101;
          goto LABEL_6;
        }
      }

      else
      {
        (*v95)(i, 1, 1, v102);
      }

      sub_251C481C4(i, &qword_27F478D90, MEMORY[0x277CC88A8]);
LABEL_6:
      objc_autoreleasePoolPop(v43);

      ++v40;
      if (v42 == v38)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v38 = sub_251C717F4();
  }

  v98 = MEMORY[0x277D84F90];
LABEL_26:
  v71[2] = v98;
}

uint64_t sub_251C46D20()
{
  sub_251C46FAC();
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v9 = v0[2];
  v8 = v0[3];
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  v18 = off_2863FD768();
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = v8;

  v11 = v8;
  v15 = sub_251C70964();
  sub_251C470B0(0, &qword_27F47CD00, sub_251C47124);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251C470B0(0, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
  sub_251C4718C(&qword_27F47CD18, &qword_27F47CD00, sub_251C47124);
  sub_251C4718C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
  sub_251C70B94();

  sub_251C473B8(&qword_27F47CD20, sub_251C46FAC);
  v12 = v16;
  v13 = sub_251C70A94();
  (*(v17 + 8))(v5, v12);
  return v13;
}

void sub_251C46FAC()
{
  if (!qword_27F47CCF8)
  {
    sub_251C470B0(255, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251C470B0(255, &qword_27F47CD00, sub_251C47124);
    sub_251C4718C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251C4718C(&qword_27F47CD18, &qword_27F47CD00, sub_251C47124);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CCF8);
    }
  }
}

void sub_251C470B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251A82284();
    v4 = sub_251C70974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C47124()
{
  if (!qword_27F47CD08)
  {
    sub_251A8223C(255, &qword_27F47CD10, 0x277CCD9B0);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CD08);
    }
  }
}

uint64_t sub_251C4718C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251C470B0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251C471DC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251C44F14(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *a2 = result;
  return result;
}

void sub_251C47210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251C47274()
{
  result = qword_27F479788;
  if (!qword_27F479788)
  {
    sub_251C47210(255, &qword_27F479780, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479788);
  }

  return result;
}

void sub_251C472FC()
{
  if (!qword_27F47CD28)
  {
    sub_251C47210(255, &qword_27F479780, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277D83940]);
    sub_251A82284();
    sub_251C47274();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CD28);
    }
  }
}

uint64_t sub_251C473B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C47400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C47468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C474D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C47530(size_t *a1, id *a2, uint64_t a3)
{
  v107 = a3;
  v88 = a1;
  v124 = sub_251C70014();
  v4 = *(v124 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v124);
  v92 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v91 = &v82[-v8];
  sub_251C47210(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v122 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v106 = &v82[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v82[-v16];
  MEMORY[0x28223BE20](v15);
  v121 = &v82[-v17];
  v120 = type metadata accessor for PBDateRange(0);
  v18 = *(v120 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v120);
  v21 = &v82[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = sub_251C6FAE4();
  v22 = *(v104 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v104);
  v25 = &v82[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = type metadata accessor for PBCategorySeries.Event(0);
  v103 = *(v105 - 8);
  v26 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v28 = &v82[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = [*a2 periods];
  sub_251A8223C(0, &qword_27F47CD38, 0x277CCD9D8);
  v30 = sub_251C71154();

  v31 = v30;
  v87 = v30;
  if (v30 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v31 = v87)
  {
    v33 = 0;
    v86 = v31 & 0xC000000000000001;
    v84 = v31 & 0xFFFFFFFFFFFFFF8;
    v100 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
    v83 = v31 + 32;
    v34 = (v18 + 56);
    v98 = (v4 + 7);
    v97 = (v4 + 6);
    v96 = (v4 + 4);
    v95 = (v4 + 1);
    v93 = (v22 + 8);
    v102 = v21;
    v85 = i;
    v94 = v25;
    v101 = v28;
    v99 = (v18 + 56);
    while (1)
    {
      if (v86)
      {
        v35 = v33;
        v36 = MEMORY[0x25308D460](v33, v31);
      }

      else
      {
        if (v33 >= *(v84 + 16))
        {
          goto LABEL_40;
        }

        v35 = v33;
        v36 = *(v83 + 8 * v33);
      }

      v90 = v36;
      v37 = __OFADD__(v35, 1);
      v4 = (v35 + 1);
      if (v37)
      {
        break;
      }

      v89 = v4;
      v4 = [v90 segments];
      sub_251A8223C(0, &qword_27F47CD48, 0x277CCD9E0);
      v18 = sub_251C71154();

      v38 = v18;
      if (v18 >> 62)
      {
        v4 = v18;
        v39 = sub_251C717F4();
        v38 = v18;
        if (v39)
        {
LABEL_12:
          if (v39 < 1)
          {
            goto LABEL_39;
          }

          v21 = 0;
          v22 = *v88;
          v109 = v38;
          v110 = v38 & 0xC000000000000001;
          v108 = v39;
          while (1)
          {
            v116 = v21;
            v117 = v22;
            v40 = v110 ? MEMORY[0x25308D460](v21) : *(v38 + 8 * v21 + 32);
            v41 = v40;
            v115 = MEMORY[0x25308DB30]();
            v119 = v41;
            v42 = [v41 dateInterval];
            sub_251C6FA74();

            *v28 = 0;
            *(v28 + 1) = 0;
            *(v28 + 2) = 0xE000000000000000;
            *(v28 + 3) = 0;
            *(v28 + 4) = 0xE000000000000000;
            v43 = v105;
            v44 = &v28[*(v105 + 28)];
            v45 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
            v46 = *(v45 - 8);
            v47 = *(v46 + 56);
            v113 = v45;
            v114 = v44;
            v111 = v46 + 56;
            v112 = v47;
            (v47)(v44, 1, 1);
            v48 = &v28[*(v43 + 32)];
            sub_251C703A4();
            v49 = *(v43 + 36);
            v50 = v120;
            v118 = *v34;
            v118(&v28[v49], 1, 1, v120);
            v51 = v121;
            sub_251C6FAB4();
            v18 = *v98;
            v52 = v124;
            (*v98)(v51, 0, 1, v124);
            v53 = v123;
            sub_251C6FA84();
            (v18)(v53, 0, 1, v52);
            v54 = v102;
            *v102 = 0;
            *(v54 + 8) = 0xE000000000000000;
            *(v54 + 16) = 0;
            *(v54 + 24) = 0xE000000000000000;
            *(v54 + 32) = 0;
            v22 = 1;
            *(v54 + 40) = 1;
            v55 = v54 + *(v50 + 28);
            sub_251C703A4();
            v56 = v106;
            v21 = &qword_2813E7500;
            sub_251C48144(v51, v106, &qword_2813E7500, MEMORY[0x277CC9578]);
            v57 = *v97;
            if ((*v97)(v56, 1, v52) == 1)
            {
              sub_251C481C4(v56, &qword_2813E7500, MEMORY[0x277CC9578]);
            }

            else
            {
              v58 = v91;
              (*v96)(v91, v56, v124);
              v59 = *(v107 + v100);
              v60 = sub_251C6FF94();
              v61 = [v59 stringFromDate_];

              v62 = sub_251C70F14();
              v18 = v63;

              v21 = &qword_2813E7500;
              (*v95)(v58, v124);
              *v54 = v62;
              *(v54 + 8) = v18;
            }

            v64 = v122;
            sub_251C48144(v123, v122, &qword_2813E7500, MEMORY[0x277CC9578]);
            v65 = v57(v64, 1, v124);
            v28 = v101;
            if (v65 == 1)
            {
              sub_251C481C4(v122, &qword_2813E7500, MEMORY[0x277CC9578]);
            }

            else
            {
              v66 = v92;
              (*v96)(v92, v122, v124);
              v67 = *(v107 + v100);
              v68 = sub_251C6FF94();
              v18 = [v67 stringFromDate_];

              v69 = sub_251C70F14();
              v71 = v70;

              (*v95)(v66, v124);
              *(v54 + 16) = v69;
              *(v54 + 24) = v71;
              v21 = &qword_2813E7500;
            }

            v34 = v99;
            v25 = MEMORY[0x277CC9578];
            sub_251C481C4(v123, &qword_2813E7500, MEMORY[0x277CC9578]);
            sub_251C481C4(v121, &qword_2813E7500, v25);
            sub_251C481C4(&v28[v49], qword_2813E6EE8, type metadata accessor for PBDateRange);
            sub_251C47400(v54, &v28[v49], type metadata accessor for PBDateRange);
            v118(&v28[v49], 0, 1, v120);
            v4 = &selRef_dateComponentsValue;
            v72 = v119;
            v73 = [v119 category];
            if (v73 < 0xFFFFFFFF80000000)
            {
              break;
            }

            if (v73 > 0x7FFFFFFF)
            {
              goto LABEL_37;
            }

            *v28 = v73;
            v74 = [v72 category];
            v25 = v94;
            (*v93)(v94, v104);
            if (v74 > 5)
            {
              v75 = 0;
            }

            else
            {
              v75 = qword_251C888B8[v74];
            }

            v76 = v116;
            v77 = v114;
            sub_251C481C4(v114, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
            *v77 = v75;
            *(v77 + 8) = 1;
            v78 = v113;
            swift_storeEnumTagMultiPayload();
            v112(v77, 0, 1, v78);
            v22 = v117;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_251C39894(0, *(v22 + 16) + 1, 1, v22);
            }

            v80 = *(v22 + 16);
            v79 = *(v22 + 24);
            v18 = v80 + 1;
            if (v80 >= v79 >> 1)
            {
              v22 = sub_251C39894(v79 > 1, v80 + 1, 1, v22);
            }

            v21 = (v76 + 1);
            *(v22 + 16) = v18;
            sub_251C47400(v28, v22 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v80, type metadata accessor for PBCategorySeries.Event);
            objc_autoreleasePoolPop(v115);

            v38 = v109;
            if (v108 == v21)
            {
              v4 = v109;

              *v88 = v22;
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }
      }

      else
      {
        v39 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          goto LABEL_12;
        }
      }

      v4 = v38;

LABEL_4:
      v33 = v89;
      v31 = v87;
      if (v89 == v85)
      {
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    i = sub_251C717F4();
  }
}

uint64_t sub_251C48144(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251C47210(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251C481C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C47210(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_251C48234()
{
  v0 = sub_251C4833C(0x31EuLL);
  if (v0)
  {
    v1 = v0;
    v2 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
    {
      v4 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x25308D460](v4, v1);
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_15;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 RxNormCoding];
        if (v8)
        {
          v9 = v8;

          return v6;
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

id sub_251C4833C(unint64_t a1)
{
  v3 = [v1 relationships];
  if (v3)
  {
    sub_251C485F4();
    v4 = sub_251C71154();

    v19 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
    {
      v3 = MEMORY[0x277D84F90];
      if (!i)
      {
        break;
      }

      v6 = 0;
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25308D460](v6, v4);
        }

        else
        {
          if (v6 >= *(v7 + 16))
          {
            goto LABEL_36;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v8 type] == a1)
        {
          sub_251C71734();
          v11 = *(v19 + 16);
          sub_251C71774();
          sub_251C71784();
          sub_251C71744();
          v7 = v4 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        ++v6;
        if (v10 == i)
        {
          a1 = v19;
          v3 = MEMORY[0x277D84F90];
          goto LABEL_17;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

    a1 = MEMORY[0x277D84F90];
LABEL_17:

    v19 = v3;
    if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
      v4 = sub_251C717F4();
    }

    else
    {
      v4 = *(a1 + 16);
    }

    v12 = 0;
    while (v4 != v12)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25308D460](v12, a1);
      }

      else
      {
        if (v12 >= *(a1 + 16))
        {
          goto LABEL_34;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v16 = [v13 destination];

      ++v12;
      if (v16)
      {
        MEMORY[0x25308CEE0]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_251C71174();
        }

        sub_251C71194();
        v3 = v19;
        v12 = v15;
      }
    }
  }

  return v3;
}

unint64_t sub_251C485F4()
{
  result = qword_27F47CD50;
  if (!qword_27F47CD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47CD50);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon23ClinicalSharingFHIRMetaVSg(uint64_t a1)
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

uint64_t sub_251C48664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_251C486AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251C48720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251C719D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251C487A8(uint64_t a1)
{
  v2 = sub_251C48A7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C487E4(uint64_t a1)
{
  v2 = sub_251C48A7C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_251C48820@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C48870(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_251C48870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C48A20();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C48A7C();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_251C48AD0();
  sub_251C718D4();
  (*(v7 + 8))(v10, v6);
  v16 = v19;
  v17 = v18;
  v15 = v20;
  v12 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v16;
  *a2 = v17;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v12;
  return result;
}

void sub_251C48A20()
{
  if (!qword_27F47CD58)
  {
    sub_251C48A7C();
    v0 = sub_251C718E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CD58);
    }
  }
}

unint64_t sub_251C48A7C()
{
  result = qword_27F47CD60;
  if (!qword_27F47CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD60);
  }

  return result;
}

unint64_t sub_251C48AD0()
{
  result = qword_27F47CD68;
  if (!qword_27F47CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD68);
  }

  return result;
}

unint64_t sub_251C48B38()
{
  result = qword_27F47CD70;
  if (!qword_27F47CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD70);
  }

  return result;
}

unint64_t sub_251C48B90()
{
  result = qword_27F47CD78;
  if (!qword_27F47CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD78);
  }

  return result;
}

unint64_t sub_251C48BE8()
{
  result = qword_27F47CD80;
  if (!qword_27F47CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CD80);
  }

  return result;
}

uint64_t type metadata accessor for PublisherOutputWriter()
{
  result = qword_27F47CD88;
  if (!qword_27F47CD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_251C48CB0()
{
  result = sub_251C6FE64();
  if (v1 <= 0x3F)
  {
    result = sub_251C48D34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_251C48D34()
{
  result = qword_27F4792B0;
  if (!qword_27F4792B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4792B0);
  }

  return result;
}

id sub_251C48D80()
{
  v1 = [v0 sampleType];
  v2 = [v1 code];

  if (v2 == 15)
  {
    result = [v0 metadata];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = sub_251C70E54();

    v6 = *MEMORY[0x277CCC480];
    v7 = sub_251C70F14();
    if (*(v5 + 16))
    {
      v9 = sub_251AC8C58(v7, v8);
      v11 = v10;

      if (v11)
      {
        sub_251A83384(*(v5 + 56) + 32 * v9, v14);

        sub_251ACFB54(v14, v15);
        sub_251A83384(v15, v14);
        sub_251AB6108();
        if (swift_dynamicCast())
        {
          v12 = [v13 integerValue];

          __swift_destroy_boxed_opaque_existential_1(v15);
          return v12;
        }

        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_251C48F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251C719D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251C48FDC(uint64_t a1)
{
  v2 = sub_251C49270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C49018(uint64_t a1)
{
  v2 = sub_251C49270();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_251C49054@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_251C49084(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *sub_251C49084(uint64_t *a1)
{
  sub_251C49214();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C49270();
  sub_251C71B04();
  if (!v1)
  {
    sub_251C492C4();
    sub_251C718D4();
    (*(v5 + 8))(v8, v4);
    v10 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void sub_251C49214()
{
  if (!qword_27F47CD98)
  {
    sub_251C49270();
    v0 = sub_251C718E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CD98);
    }
  }
}

unint64_t sub_251C49270()
{
  result = qword_27F47CDA0;
  if (!qword_27F47CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDA0);
  }

  return result;
}

unint64_t sub_251C492C4()
{
  result = qword_27F47CDA8;
  if (!qword_27F47CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDA8);
  }

  return result;
}

unint64_t sub_251C4932C()
{
  result = qword_27F47CDB0;
  if (!qword_27F47CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDB0);
  }

  return result;
}

unint64_t sub_251C49384()
{
  result = qword_27F47CDB8;
  if (!qword_27F47CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDB8);
  }

  return result;
}

unint64_t sub_251C493DC()
{
  result = qword_27F47CDC0;
  if (!qword_27F47CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDC0);
  }

  return result;
}

uint64_t sub_251C4943C()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251C494F4()
{
  *v0;
  *v0;
  *v0;
  sub_251C70FB4();
}

uint64_t sub_251C49598()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251C4964C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_251C4A430();
  *a2 = result;
  return result;
}

void sub_251C4967C(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7566185;
  v4 = 0xE800000000000000;
  v5 = 0x6972755F6F676F6CLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000251C89CB0;
  }

  if (*v1)
  {
    v3 = 1701667182;
    v2 = 0xE400000000000000;
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

unint64_t sub_251C496F0()
{
  v1 = 7566185;
  v2 = 0x6972755F6F676F6CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_251C49760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_251C4A430();
  *a1 = result;
  return result;
}

uint64_t sub_251C49788(uint64_t a1)
{
  v2 = sub_251C49BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C497C4(uint64_t a1)
{
  v2 = sub_251C49BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VHRDirectoryIssuer.iss.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251C6FE64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VHRDirectoryIssuer.name.getter()
{
  v1 = (v0 + *(type metadata accessor for VHRDirectoryIssuer() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for VHRDirectoryIssuer()
{
  result = qword_27F47CDE0;
  if (!qword_27F47CDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VHRDirectoryIssuer.encode(to:)(void *a1)
{
  v3 = v1;
  sub_251C4A108(0, &qword_27F47CDC8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C49BB8();
  sub_251C71B14();
  v23 = 0;
  sub_251C6FE64();
  sub_251B37B54(&qword_27F47A390);
  sub_251C71964();
  if (!v2)
  {
    v12 = type metadata accessor for VHRDirectoryIssuer();
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    v22 = 1;
    sub_251C71934();
    v16 = v12[6];
    v21 = 2;
    sub_251C71924();
    v17 = v12[7];
    v20 = 3;
    sub_251C71924();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_251C49BB8()
{
  result = qword_27F47CDD0;
  if (!qword_27F47CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDD0);
  }

  return result;
}

uint64_t VHRDirectoryIssuer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_251AF3A84();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v38 = sub_251C6FE64();
  v34 = *(v38 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C4A108(0, &qword_27F47CDD8, MEMORY[0x277D844C8]);
  v37 = v12;
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = type metadata accessor for VHRDirectoryIssuer();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C49BB8();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v9;
  v31 = v16;
  v21 = v34;
  v42 = 0;
  sub_251B37B54(&qword_27F47A3A0);
  v22 = v36;
  sub_251C718D4();
  v23 = *(v21 + 32);
  v29 = v19;
  v23(v19, v22, v38);
  v41 = 1;
  v24 = sub_251C718B4();
  v25 = &v29[v31[5]];
  *v25 = v24;
  v25[1] = v26;
  v40 = 2;
  sub_251C718A4();
  sub_251AF80B8(v30, &v29[v31[6]]);
  v39 = 3;
  sub_251C718A4();
  (*(v35 + 8))(v15, v37);
  v28 = v29;
  sub_251AF80B8(v33, &v29[v31[7]]);
  sub_251C4A16C(v28, v32, type metadata accessor for VHRDirectoryIssuer);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_251C4A1D4(v28, type metadata accessor for VHRDirectoryIssuer);
}

void sub_251C4A108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251C49BB8();
    v7 = a3(a1, &type metadata for VHRDirectoryIssuer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251C4A16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C4A1D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251C4A28C()
{
  sub_251C6FE64();
  if (v0 <= 0x3F)
  {
    sub_251AF3A84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251C4A32C()
{
  result = qword_27F47CDF0;
  if (!qword_27F47CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDF0);
  }

  return result;
}

unint64_t sub_251C4A384()
{
  result = qword_27F47CDF8;
  if (!qword_27F47CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CDF8);
  }

  return result;
}

unint64_t sub_251C4A3DC()
{
  result = qword_27F47CE00;
  if (!qword_27F47CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE00);
  }

  return result;
}

uint64_t sub_251C4A430()
{
  v0 = sub_251C71854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_251C4A47C(void *a1)
{
  v3 = v1;
  sub_251C4DED4(0, &qword_27F47CE38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C4DE80();
  sub_251C71B14();
  v12 = *v3;
  v13 = v3[1];
  v23[15] = 0;
  sub_251C71934();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v23[14] = 1;
    sub_251C71934();
    v16 = v3[4];
    v17 = v3[5];
    v23[13] = 2;
    sub_251C71934();
    v18 = v3[6];
    v19 = v3[7];
    v23[12] = 3;
    sub_251C71934();
    v20 = v3[8];
    v21 = v3[9];
    v23[11] = 4;
    sub_251C71934();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_251C4A648()
{
  v1 = *v0;
  v2 = 0x747265436661656CLL;
  v3 = 0x727574616E676973;
  v4 = 0x646F6874656DLL;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_251C4A6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251C4C898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251C4A728(uint64_t a1)
{
  v2 = sub_251C4DE80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C4A764(uint64_t a1)
{
  v2 = sub_251C4DE80();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_251C4A7A0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C4CA5C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_251C4A7EC(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_251C4A47C(a1);
}

uint64_t static DeviceIdentityManager.baaHeaders(for:baaOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[44] = a2;
  v3[45] = a3;
  v3[43] = a1;
  return MEMORY[0x2822009F8](sub_251C4A854, 0, 0);
}

uint64_t sub_251C4A854()
{
  if (v0[45])
  {
    v1 = v0[45];
  }

  else
  {
    v8 = MEMORY[0x277D837D0];
    sub_251C4DAC4(0, &qword_2813E1C50, &qword_2813E1F90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251C7C1F0;
    v10 = *MEMORY[0x277D048E0];
    *(inited + 32) = sub_251C70F14();
    *(inited + 72) = v8;
    *(inited + 40) = v11;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x8000000251C926D0;
    v12 = *MEMORY[0x277D048D8];
    *(inited + 80) = sub_251C70F14();
    *(inited + 120) = v8;
    *(inited + 88) = v13;
    *(inited + 96) = 0xD000000000000010;
    *(inited + 104) = 0x8000000251C8F140;
    v14 = *MEMORY[0x277D048A0];
    *(inited + 128) = sub_251C70F14();
    *(inited + 136) = v15;
    v16 = sub_251C4CE58();
    v17 = v0[45];
    type metadata accessor for SecAccessControl(0);
    *(inited + 168) = v18;
    *(inited + 144) = v16;
    v19 = *MEMORY[0x277D04950];
    *(inited + 176) = sub_251C70F14();
    *(inited + 184) = v20;
    v21 = MEMORY[0x277D83B88];
    *(inited + 216) = MEMORY[0x277D83B88];
    *(inited + 192) = 129600;
    v22 = *MEMORY[0x277D04948];
    *(inited + 224) = sub_251C70F14();
    *(inited + 232) = v23;
    *(inited + 264) = v21;
    *(inited + 240) = 0;
    v24 = *MEMORY[0x277D048B0];
    *(inited + 272) = sub_251C70F14();
    *(inited + 280) = v25;
    *(inited + 312) = v21;
    *(inited + 288) = 1;
    v1 = sub_251C4C154(inited);
    swift_setDeallocating();
    sub_251C4DB24(0, &qword_2813E1F90);
    swift_arrayDestroy();
  }

  v0[46] = v1;
  v3 = v0[43];
  v2 = v0[44];
  v4 = swift_task_alloc();
  v0[47] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);

  v6 = swift_task_alloc();
  v0[48] = v6;
  sub_251C4DC68(0, &qword_27F479EC8, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
  *v6 = v0;
  v6[1] = sub_251C4ABDC;

  return MEMORY[0x2822008A0](v0 + 42, 0, 0, 0xD00000000000001BLL, 0x8000000251C92700, sub_251C4CF80, v4, v7);
}

uint64_t sub_251C4ABDC()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v8 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_251C4AD1C;
  }

  else
  {
    v5 = *(v2 + 368);
    v6 = *(v2 + 376);

    v4 = sub_251C4AD00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251C4AD1C()
{
  v1 = v0[46];
  v2 = v0[47];

  v3 = v0[49];
  v4 = v0[1];

  return v4();
}

void sub_251C4AD88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_251C4D444();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_251C4AF88(a2);
  v12 = sub_251C70E44();

  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v10 + 32))(v14 + v13, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_251C4D4E8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251B166DC;
  aBlock[3] = &block_descriptor_24;
  v15 = _Block_copy(aBlock);
  sub_251A858C4(a3, a4);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v15);
}

uint64_t sub_251C4AF88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_251C4D1F4();
    v2 = sub_251C71824();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_251A83384(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_251ACFB54(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_251ACFB54(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_251ACFB54(v32, v33);
    v17 = *(v2 + 40);
    result = sub_251C71624();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_251ACFB54(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_251C4B244(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v10 = sub_251C70F64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C70014();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || !a2)
  {
    goto LABEL_19;
  }

  v58 = a6;
  v21 = v18;
  v22 = a1;
  v23 = sub_251B15050(a2);
  if (!v23)
  {

LABEL_19:
    sub_251C4D58C();
    v53 = swift_allocError();
    *v54 = a3;
    *(v54 + 8) = 2;
    swift_willThrow();
    v55 = a3;
    *&v66 = v53;
    sub_251C4D444();
    return sub_251C711D4();
  }

  v24 = v23;
  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if (!sub_251C717F4())
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_6:
  sub_251C70004();
  sub_251C6FFD4();
  v26 = v25;
  v27 = v25;
  result = (*(v16 + 8))(v20, v21);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  *&v66 = v26;
  v29 = sub_251C719A4();
  v31 = v30;
  v66 = xmmword_251C745D0;
  sub_251C6FF14();
  v64 = 47;
  v65 = 0xE100000000000000;
  MEMORY[0x25308CDA0](v29, v31);
  sub_251C70F54();
  v32 = sub_251C70F24();
  v34 = v33;

  (*(v11 + 8))(v14, v10);
  if (v34 >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    v35 = v32;
  }

  if (v34 >> 60 == 15)
  {
    v36 = 0xC000000000000000;
  }

  else
  {
    v36 = v34;
  }

  sub_251C6FF14();
  sub_251A83028(v35, v36);
  v37 = sub_251C4D5E0(v66, *(&v66 + 1), v22);
  v39 = v38;
  v59 = sub_251C4D748(v24, v37, v38, v29, v31);
  v57 = v40;

  sub_251C4DAC4(0, &qword_27F47A3D8, &qword_27F479B20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C74800;
  *(inited + 32) = 0x75412D4141422D58;
  v56 = inited + 32;
  *(inited + 40) = 0xEA00000000006874;
  v64 = sub_251C6FED4();
  v65 = v42;
  v62 = 43;
  v63 = 0xE100000000000000;
  v60 = 45;
  v61 = 0xE100000000000000;
  sub_251AD87E0();
  v43 = sub_251C715A4();
  v45 = v44;

  v64 = v43;
  v65 = v45;
  v62 = 47;
  v63 = 0xE100000000000000;
  v60 = 95;
  v61 = 0xE100000000000000;
  v46 = sub_251C715A4();
  v48 = v47;

  v64 = v46;
  v65 = v48;
  v62 = 61;
  v63 = 0xE100000000000000;
  v60 = 0;
  v61 = 0xE000000000000000;
  v49 = sub_251C715A4();
  v51 = v50;

  *(inited + 48) = v49;
  *(inited + 56) = v51;
  v52 = sub_251C4BEF8(inited);
  swift_setDeallocating();
  sub_251C4DB7C(v56, &qword_27F479B20);
  v64 = v52;
  sub_251C4D444();

  sub_251C711E4();

  sub_251A83028(v59, v57);
  sub_251A83028(v37, v39);

  return sub_251A83028(v66, *(&v66 + 1));
}

void *sub_251C4B86C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_251C6FEC4();
  v6[0] = 0;
  v1 = [v0 compressedDataUsingAlgorithm:3 error:v6];

  v2 = v6[0];
  if (v1)
  {
    v3 = sub_251C6FEE4();
  }

  else
  {
    v3 = v2;
    sub_251C6FD84();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

unint64_t sub_251C4B940(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_251C716A4();

      v7 = 0xD00000000000001CLL;
      if (a1)
      {
LABEL_9:
        swift_getErrorValue();
        v3 = sub_251C71A44();
        v5 = v4;
LABEL_11:
        MEMORY[0x25308CDA0](v3, v5);

        return v7;
      }
    }

    else
    {
      sub_251C716A4();

      v7 = 0xD000000000000021;
      if (a1)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    sub_251C716A4();

    v7 = 0xD000000000000024;
    if (a1)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  return 0xD000000000000039;
}

unint64_t sub_251C4BB2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_251C4CFEC(0, a2, a3, MEMORY[0x277D84460]);
    v5 = sub_251C71824();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_251AC8C58(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_251C4BC38(uint64_t a1)
{
  sub_251C4D0B4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_251ACF684();
    v9 = sub_251C71824();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_251C4D3DC(v11, v7, sub_251C4D0B4);
      result = sub_251AC8AFC(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_251C70074();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_251C4BE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251ACE3EC();
    v3 = sub_251C71824();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_251AC8CD0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

unint64_t sub_251C4BEF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4DC68(0, &qword_27F4796E8, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
    v3 = sub_251C71824();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_251AC8C58(v5, v6);
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

unint64_t sub_251C4C024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D1F4();
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4D258(v4, v13, &qword_2813E1CE0);
      result = sub_251AC8E74(v13);
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
      result = sub_251ACFB54(&v15, (v3[7] + 32 * result));
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

unint64_t sub_251C4C154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4DC68(0, &qword_2813E1CB8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84460]);
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4D258(v4, &v13, &qword_2813E1F90);
      v5 = v13;
      v6 = v14;
      result = sub_251AC8C58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251ACFB54(&v15, (v3[7] + 32 * result));
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

unint64_t sub_251C4C2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D188(0, &qword_2813E1CC8, qword_2813E2AC8, &protocol descriptor for ClinicalSharingMetricPayloadProviding, sub_251AA98B0);
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4DDA8(v4, &v13, &qword_2813E1F98, qword_2813E2AC8);
      v5 = v13;
      v6 = v14;
      result = sub_251AC8C58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251A7E8D8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_251C4C3F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D33C();
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4D3DC(v4, &v11, sub_251BBB140);
      v5 = v11;
      result = sub_251AC8EB8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251ACFB54(&v12, (v3[7] + 32 * result));
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

unint64_t sub_251C4C508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D2D4();
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4D258(v4, v10, &qword_27F47B8F8);
      result = sub_251AC8DE8(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_251ACFB54(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_251C4C61C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D188(0, &qword_2813E1CD0, qword_2813E7078, &protocol descriptor for DaemonXPCService, sub_251AA98B0);
    v3 = sub_251C71824();
    v4 = a1 + 32;

    while (1)
    {
      sub_251C4DDA8(v4, &v13, &qword_27F47CE30, qword_2813E7078);
      v5 = v13;
      v6 = v14;
      result = sub_251AC8C58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251A7E8D8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_251C4C774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251C4D188(0, &qword_2813E1CC0, &qword_2813E1D20, 0x277D82BB8, sub_251A8223C);
    v3 = sub_251C71824();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_251AC8C58(v5, v6);
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

uint64_t sub_251C4C898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747265436661656CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000251C92820 == a2 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEF736365536E4970)
  {

    return 4;
  }

  else
  {
    v6 = sub_251C719D4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_251C4CA5C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_251C4DED4(0, &qword_27F47CE48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C4DE80();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v12 = sub_251C718B4();
  v32 = v13;
  LOBYTE(v38[0]) = 1;
  v14 = sub_251C718B4();
  v31 = v15;
  v29 = v14;
  LOBYTE(v38[0]) = 2;
  v28 = sub_251C718B4();
  v30 = v16;
  LOBYTE(v38[0]) = 3;
  *&v27 = sub_251C718B4();
  *(&v27 + 1) = v17;
  v39 = 4;
  v18 = sub_251C718B4();
  v20 = v19;
  (*(v7 + 8))(v10, v6);
  *&v33 = v12;
  *(&v33 + 1) = v32;
  v21 = v31;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  v22 = v30;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  v23 = *(&v27 + 1);
  v36 = v27;
  *&v37 = v18;
  *(&v37 + 1) = v20;
  sub_251C4DF38(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v12;
  v38[1] = v32;
  v38[2] = v29;
  v38[3] = v21;
  v38[4] = v28;
  v38[5] = v22;
  v38[6] = v27;
  v38[7] = v23;
  v38[8] = v18;
  v38[9] = v20;
  result = sub_251C4DC38(v38);
  v25 = v36;
  a2[2] = v35;
  a2[3] = v25;
  a2[4] = v37;
  v26 = v34;
  *a2 = v33;
  a2[1] = v26;
  return result;
}

SecAccessControlRef sub_251C4CE58()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, v6);
  if (!result)
  {
    v1 = v6[0];
    if (v6[0])
    {
      type metadata accessor for CFError(0);
      sub_251C4D140(&qword_27F47CE28, type metadata accessor for CFError);
      v2 = swift_allocError();
      *v3 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_251C4D58C();
    swift_allocError();
    *v4 = v2;
    *(v4 + 8) = 0;
    swift_willThrow();
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_251C4CF9C()
{
  if (!qword_27F4792D8)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4792D8);
    }
  }
}

void sub_251C4CFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251C4D060(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C711A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C4D0B4()
{
  if (!qword_2813E74C8)
  {
    sub_251C70074();
    sub_251C4D060(255, &qword_2813E1F58, MEMORY[0x277D11300]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E74C8);
    }
  }
}

uint64_t sub_251C4D140(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251C4D188(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_251C71834();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251C4D1F4()
{
  if (!qword_2813E1CB0)
  {
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1CB0);
    }
  }
}

uint64_t sub_251C4D258(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_251C4DB24(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251C4D2D4()
{
  if (!qword_27F4796C8)
  {
    sub_251ACFC08();
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4796C8);
    }
  }
}

void sub_251C4D33C()
{
  if (!qword_27F47CE08)
  {
    type metadata accessor for FileAttributeKey(255);
    sub_251C4D140(&qword_27F478C68, type metadata accessor for FileAttributeKey);
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CE08);
    }
  }
}

uint64_t sub_251C4D3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251C4D444()
{
  if (!qword_27F47CE10)
  {
    sub_251C4DC68(255, &qword_27F479EC8, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C711F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47CE10);
    }
  }
}

uint64_t sub_251C4D4E8(void *a1, uint64_t a2, void *a3)
{
  sub_251C4D444();
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));

  return sub_251C4B244(a1, a2, a3, v8, v9, v10);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251C4D58C()
{
  result = qword_27F47CE18;
  if (!qword_27F47CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE18);
  }

  return result;
}

uint64_t sub_251C4D5E0(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v4 = *MEMORY[0x277CDC300];
  v5 = sub_251C6FEC4();
  Signature = SecKeyCreateSignature(a3, v4, v5, v14);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_251C6FEE4();
  }

  else
  {
    v9 = v14[0];
    if (v14[0])
    {
      type metadata accessor for CFError(0);
      sub_251C4D140(&qword_27F47CE28, type metadata accessor for CFError);
      v8 = swift_allocError();
      *v10 = v9;
    }

    else
    {
      v8 = 0;
    }

    sub_251C4D58C();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = 1;
    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_251C4D748(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a1 >> 62)
  {
    v40 = a1;
    v9 = sub_251C717F4();
    a1 = v40;
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = a1;
    *&v42[0] = MEMORY[0x277D84F90];
    result = sub_251C0B6AC(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v41 = a5;
    v13 = 0;
    v10 = *&v42[0];
    v14 = v11;
    v48 = v11 & 0xC000000000000001;
    do
    {
      v15 = v9;
      if (v48)
      {
        v16 = MEMORY[0x25308D460](v13, v14);
      }

      else
      {
        v16 = *(v14 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = SecCertificateCopyData(v16);
      v19 = sub_251C6FEE4();
      v21 = v20;

      v22 = sub_251C6FED4();
      *&v43 = 0xD00000000000001CLL;
      *(&v43 + 1) = 0x8000000251C92720;
      MEMORY[0x25308CDA0](v22);

      MEMORY[0x25308CDA0](0xD00000000000001ALL, 0x8000000251C92740);

      sub_251A83028(v19, v21);

      v23 = v43;
      *&v42[0] = v10;
      v25 = v10[2];
      v24 = v10[3];
      if (v25 >= v24 >> 1)
      {
        sub_251C0B6AC((v24 > 1), v25 + 1, 1);
        v10 = *&v42[0];
      }

      ++v13;
      v10[2] = v25 + 1;
      *&v10[2 * v25 + 4] = v23;
      v9 = v15;
      v14 = v11;
    }

    while (v15 != v13);
    a5 = v41;
    v6 = v5;
  }

  v26 = sub_251C6FA54();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  result = sub_251C6FA44();
  v29 = v10[2];
  if (!v29)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v29 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = result;
  v32 = v10[4];
  v31 = v10[5];
  v34 = v10[6];
  v33 = v10[7];

  *&v43 = v32;
  *(&v43 + 1) = v31;
  *&v44 = v34;
  *(&v44 + 1) = v33;
  *&v45 = sub_251C6FED4();
  *(&v45 + 1) = v35;
  *&v46 = 0x6977363532414853;
  *(&v46 + 1) = 0xEF41534443456874;
  *&v47 = a4;
  *(&v47 + 1) = a5;
  sub_251C4DBE4();

  v36 = sub_251C6FA34();
  v42[2] = v45;
  v42[3] = v46;
  v42[4] = v47;
  v42[0] = v43;
  v42[1] = v44;
  if (v6)
  {
    sub_251C4DC38(v42);
  }

  else
  {
    v38 = v36;
    v39 = v37;
    sub_251C4DC38(v42);

    v30 = sub_251C4B86C();
    sub_251A83028(v38, v39);
  }

  return v30;
}

void sub_251C4DAC4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_251C4DB24(255, a3);
    v4 = sub_251C719B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C4DB24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251C4DB7C(uint64_t a1, unint64_t *a2)
{
  sub_251C4DB24(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251C4DBE4()
{
  result = qword_27F47CE20;
  if (!qword_27F47CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE20);
  }

  return result;
}

void sub_251C4DC68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D837D0], a3, MEMORY[0x277D837E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon21DeviceIdentityManagerV15BAASigningErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_251C4DCF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_251C4DD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_251C4DD80(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_251C4DDA8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_251C4DE18(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_251C4DE18(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_251AA98B0(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_251C4DE80()
{
  result = qword_27F47CE40;
  if (!qword_27F47CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47CE40);
  }

  return result;
}

void sub_251C4DED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251C4DE80();
    v7 = a3(a1, &type metadata for DeviceIdentityManager.Attestation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeviceIdentityManager.Attestation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}