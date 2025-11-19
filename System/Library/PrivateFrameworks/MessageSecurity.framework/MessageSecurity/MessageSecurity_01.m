char *sub_258CAE654(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_258CBEBE0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_258CAF210(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259C97E00](i, a1);
        type metadata accessor for SecCertificate();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_258CAF210((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_258CB03E0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for SecCertificate();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_258CAF210((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_258CB03E0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id MSCMSAuthEnvelopedData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSCMSAuthEnvelopedData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_258CAEABC()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_258CBEAC0();

  v7[0] = 0;
  v2 = [v0 initWithString:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_258CBEA10();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t *sub_258CAEB88(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_258CA82B8(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_258CC1CF0;
      sub_258CA82B8(0, 0xC000000000000000);
      result = sub_258CAF168(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_258CA82B8(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_258CA82B8(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_258CC1CF0;
  sub_258CA82B8(0, 0xC000000000000000);
  sub_258CBEA30();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_258CBE980();
  if (result)
  {
    v13 = result;
    v14 = sub_258CBE9B0();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_258CBE9A0();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_258CAEDF0(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v32 = *MEMORY[0x277D85DE8];
  v9 = *result;
  v8 = result[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *a2 = a3;
      a2[1] = &v30;
      if (a3 >= 1)
      {
        *(a4 + 8) = a2;
      }

      goto LABEL_26;
    }

    v12 = *result;

    sub_258CA82B8(v9, v8);
    v30 = v9;
    v31 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *v7 = xmmword_258CC1CF0;
    sub_258CA82B8(0, 0xC000000000000000);
    sub_258CBEA30();
    v14 = v30;
    v13 = v31;
    v15 = *(v30 + 16);
    result = sub_258CBE980();
    if (!result)
    {
      __break(1u);
      goto LABEL_33;
    }

    v16 = result;
    v17 = sub_258CBE9B0();
    if (!__OFSUB__(v15, v17))
    {
      v18 = v16 + v15 - v17;
      result = sub_258CBE9A0();
      *a2 = a3;
      a2[1] = v18;
      if (a3 >= 1)
      {
        *(a4 + 8) = a2;
      }

      *v7 = v14;
      v7[1] = v13 | 0x8000000000000000;
      goto LABEL_26;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v10)
  {
    result = sub_258CA82B8(v9, v8);
    v30 = v9;
    LOWORD(v31) = v8;
    BYTE2(v31) = BYTE2(v8);
    BYTE3(v31) = BYTE3(v8);
    BYTE4(v31) = BYTE4(v8);
    BYTE5(v31) = BYTE5(v8);
    BYTE6(v31) = BYTE6(v8);
    *a2 = a3;
    a2[1] = &v30;
    if (a3 > 0)
    {
      *(a4 + 8) = a2;
    }

    v11 = v31 | ((WORD2(v31) | (BYTE6(v31) << 16)) << 32);
    *v7 = v30;
    v7[1] = v11;
LABEL_26:
    v28 = *MEMORY[0x277D85DE8];
    return result;
  }

  v19 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_258CA82B8(v9, v8);
  *v7 = xmmword_258CC1CF0;
  sub_258CA82B8(0, 0xC000000000000000);
  v20 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v20 < v9)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (sub_258CBE980() && __OFSUB__(v9, sub_258CBE9B0()))
    {
LABEL_31:
      __break(1u);
    }

    v21 = sub_258CBE9C0();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_258CBE960();

    v19 = v24;
  }

  if (v20 < v9)
  {
    goto LABEL_28;
  }

  result = sub_258CBE980();
  if (result)
  {
    v25 = result;
    v26 = sub_258CBE9B0();
    if (!__OFSUB__(v9, v26))
    {
      v27 = v25 + v9 - v26;
      sub_258CBE9A0();
      *a2 = a3;
      a2[1] = v27;
      if (a3 >= 1)
      {
        *(a4 + 8) = a2;
      }

      *v7 = v9;
      v7[1] = v19 | 0x4000000000000000;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_258CAF168(int *a1, int a2)
{
  result = sub_258CBEA40();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_258CBE980();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_258CBE9B0();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_258CBE9A0();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

char *sub_258CAF210(char *a1, int64_t a2, char a3)
{
  result = sub_258CAF230(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258CAF230(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97D840, &unk_258CC1E60);
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

id sub_258CAF340(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent] = xmmword_258CC1CF0;
  v5 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_recipients] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_protectedAttributes] = v5;
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_unprotectedAttributes] = v5;
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_originatorCertificates] = v5;
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent] = 0;
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent] = xmmword_258CC1CF0;
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm] = a1;
  v6 = a1;
  v7 = @"1.2.840.113549.1.7.1";
  sub_258CBEAE0();
  v8 = objc_allocWithZone(MSOID);
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_contentType] = sub_258CAEABC();
  sub_258CBEAD0();
  v9 = objc_allocWithZone(MSOID);
  *&v2[OBJC_IVAR___MSCMSAuthEnvelopedData_type] = sub_258CAEABC();
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_258CAF4E4(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent];
  *&v3[OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent] = xmmword_258CC1CF0;
  v9 = OBJC_IVAR___MSCMSAuthEnvelopedData_recipients;
  v10 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___MSCMSAuthEnvelopedData_recipients] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___MSCMSAuthEnvelopedData_protectedAttributes] = v10;
  *&v3[OBJC_IVAR___MSCMSAuthEnvelopedData_unprotectedAttributes] = v10;
  *&v3[OBJC_IVAR___MSCMSAuthEnvelopedData_originatorCertificates] = v10;
  *&v3[OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent] = 0;
  *&v3[OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent] = xmmword_258CC1CF0;
  v11 = @"2.16.840.1.101.3.4.1.46";
  sub_258CBEAE0();
  v12 = objc_allocWithZone(MSOID);
  v13 = sub_258CAEABC();
  *&v3[OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm] = v13;
  v22 = v13;
  v14 = @"1.2.840.113549.1.7.1";
  sub_258CBEAE0();
  v15 = objc_allocWithZone(MSOID);
  *&v3[OBJC_IVAR___MSCMSAuthEnvelopedData_contentType] = sub_258CAEABC();
  swift_beginAccess();
  v16 = *v8;
  v17 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  sub_258CA85E0(a1, a2);
  sub_258CA8728(v16, v17);
  sub_258CBEAD0();
  v18 = objc_allocWithZone(MSOID);
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_type] = sub_258CAEABC();
  if (a3)
  {
    swift_beginAccess();
    v19 = a3;
    MEMORY[0x259C97D40]();
    if (*((*&v4[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v4[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((*&v4[v9] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258CBEB40();
    }

    sub_258CBEB60();
    swift_endAccess();
  }

  v24.receiver = v4;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

id sub_258CAF7BC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v9 = &v5[OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent];
  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent] = xmmword_258CC1CF0;
  v10 = OBJC_IVAR___MSCMSAuthEnvelopedData_recipients;
  v11 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_recipients] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_protectedAttributes] = v11;
  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_unprotectedAttributes] = v11;
  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_originatorCertificates] = v11;
  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent] = 0;
  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent] = xmmword_258CC1CF0;
  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm] = a4;
  v12 = a4;
  v13 = @"1.2.840.113549.1.7.1";
  sub_258CBEAE0();
  objc_allocWithZone(MSOID);

  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_contentType] = sub_258CAEABC();
  swift_beginAccess();
  v14 = *v9;
  v15 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  sub_258CA85E0(a1, a2);
  sub_258CA8728(v14, v15);
  sub_258CBEAD0();
  v16 = objc_allocWithZone(MSOID);
  *&v5[OBJC_IVAR___MSCMSAuthEnvelopedData_type] = sub_258CAEABC();
  if (a3)
  {
    v17 = a3;

    v18 = swift_beginAccess();
    MEMORY[0x259C97D40](v18);
    if (*((*&v5[v10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v5[v10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*&v5[v10] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258CBEB40();
    }

    sub_258CBEB60();
    swift_endAccess();
  }

  else
  {
  }

  v23.receiver = v5;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_258CAFA50(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent] = xmmword_258CC1CF0;
  v9 = OBJC_IVAR___MSCMSAuthEnvelopedData_recipients;
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_recipients] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_protectedAttributes] = v10;
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_unprotectedAttributes] = v10;
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_originatorCertificates] = v10;
  v11 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent] = 0;
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent] = xmmword_258CC1CF0;
  swift_beginAccess();
  *&v4[v11] = a1;
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_contentType] = [swift_unknownObjectRetain() type];
  if (a2)
  {
    swift_beginAccess();
    v12 = a2;
    MEMORY[0x259C97D40]();
    if (*((*&v4[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v4[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((*&v4[v9] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258CBEB40();
    }

    sub_258CBEB60();
    swift_endAccess();
  }

  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm] = a3;
  sub_258CBEAD0();
  objc_allocWithZone(MSOID);
  v13 = a3;
  *&v4[OBJC_IVAR___MSCMSAuthEnvelopedData_type] = sub_258CAEABC();
  v16.receiver = v4;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

void sub_258CAFC54(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_258CBEBE0())
  {
    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v7 = MEMORY[0x259C97E00](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_258CB0458(0, &unk_27F97D870, 0x277D82BB8);
      v10 = [v8 attributeType];
      v11 = sub_258CBEB90();

      if (v11)
      {
        v12 = v8;
        MEMORY[0x259C97D40]();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_258CBEB40();
        }

        sub_258CBEB60();
        v6 = a1 & 0xC000000000000001;
      }

      ++v5;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_258CAFE28()
{
  result = qword_27F97D960;
  if (!qword_27F97D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F97D960);
  }

  return result;
}

uint64_t sub_258CAFE7C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_258CBE9C0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_258CBE990();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_258CBEA50();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_258CAFF1C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258CAFFD4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_258CAFF1C(a1, &a1[a2]);
  }

  v3 = sub_258CBE9C0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_258CBE970();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_258CBEA50();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_258CB009C(uint64_t a1)
{
  result = encode_AuthEnvelopedData(a1 + v1[2] - 1, v1[2], v1[3], v1[4]);
  if (result)
  {
    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v3 = sub_258CBEAB0();
    __swift_project_value_buffer(v3, qword_27F97DBE8);
    v4 = sub_258CBEA90();
    v5 = sub_258CBEB70();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_258C80000, v4, v5, "Invalid data - error encoding AuthEnvelopedData", v6, 2u);
      MEMORY[0x259C98B10](v6, -1, -1);
    }

    sub_258CAFE28();
    swift_allocError();
    *v7 = xmmword_258CC1CE0;
    *(v7 + 16) = 48;
    return swift_willThrow();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for SecCertificate()
{
  if (!qword_27F97D858)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F97D858);
    }
  }
}

uint64_t sub_258CB02AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  result = sub_258CBE980();
  v8 = result;
  if (result)
  {
    result = sub_258CBE9B0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_258CBE9A0();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a4(v8, v14);
  return 0;
}

_OWORD *sub_258CB03E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
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

uint64_t sub_258CB0458(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id MSCMSCompressedData.type.getter()
{
  v1 = OBJC_IVAR___MSCMSCompressedData_type;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MSCMSCompressedData.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSCompressedData_type;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MSCMSCompressedData.dataContent.getter()
{
  v1 = v0 + OBJC_IVAR___MSCMSCompressedData_dataContent;
  swift_beginAccess();
  v2 = *v1;
  sub_258CA85CC(*v1, *(v1 + 8));
  return v2;
}

uint64_t MSCMSCompressedData.dataContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MSCMSCompressedData_dataContent);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_258CA8728(v6, v7);
}

uint64_t MSCMSCompressedData.embeddedContent.getter()
{
  v1 = OBJC_IVAR___MSCMSCompressedData_embeddedContent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t MSCMSCompressedData.embeddedContent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSCompressedData_embeddedContent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id MSCMSCompressedData.contentType.getter()
{
  v1 = OBJC_IVAR___MSCMSCompressedData_contentType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MSCMSCompressedData.contentType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSCompressedData_contentType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *MSCMSCompressedData.init(dataContent:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v2[OBJC_IVAR___MSCMSCompressedData_dataContent];
  *&v2[OBJC_IVAR___MSCMSCompressedData_dataContent] = xmmword_258CC1DE0;
  v8 = OBJC_IVAR___MSCMSCompressedData_embeddedContent;
  *&v2[OBJC_IVAR___MSCMSCompressedData_embeddedContent] = 0;
  swift_beginAccess();
  v9 = *v7;
  v10 = *(v7 + 1);
  *v7 = a1;
  *(v7 + 1) = a2;
  sub_258CA85E0(a1, a2);
  sub_258CA8728(v9, v10);
  swift_beginAccess();
  v11 = *&v4[v8];
  *&v4[v8] = 0;
  swift_unknownObjectRelease();
  sub_258CBEAD0();
  v12 = objc_allocWithZone(MSOID);
  v13 = sub_258CAEABC();
  if (v3)
  {
    sub_258CA82B8(a1, a2);
    sub_258CA8728(*v7, *(v7 + 1));
    v15 = *&v4[v8];
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v4[OBJC_IVAR___MSCMSCompressedData_contentType] = v13;
    sub_258CBEAD0();
    v14 = objc_allocWithZone(MSOID);
    *&v4[OBJC_IVAR___MSCMSCompressedData_type] = sub_258CAEABC();
    v17.receiver = v4;
    v17.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v17, sel_init);
    sub_258CA82B8(a1, a2);
  }

  return v4;
}

id MSCMSCompressedData.init(embeddedContent:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v7 = &v1[OBJC_IVAR___MSCMSCompressedData_dataContent];
  *&v1[OBJC_IVAR___MSCMSCompressedData_dataContent] = xmmword_258CC1DE0;
  v8 = OBJC_IVAR___MSCMSCompressedData_embeddedContent;
  *&v1[OBJC_IVAR___MSCMSCompressedData_embeddedContent] = 0;
  swift_beginAccess();
  v9 = *v7;
  v10 = *(v7 + 1);
  *v7 = xmmword_258CC1DE0;
  sub_258CA8728(v9, v10);
  swift_beginAccess();
  v11 = *&v1[v8];
  *&v1[v8] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v12 = [a1 type];
  v13 = OBJC_IVAR___MSCMSCompressedData_contentType;
  *&v1[OBJC_IVAR___MSCMSCompressedData_contentType] = v12;
  sub_258CBEAD0();
  v14 = objc_allocWithZone(MSOID);
  v15 = sub_258CAEABC();
  if (v3)
  {
    swift_unknownObjectRelease();
    sub_258CA8728(*v7, *(v7 + 1));
    v16 = *&v1[v8];
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v1[OBJC_IVAR___MSCMSCompressedData_type] = v15;
    v18.receiver = v1;
    v18.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v18, sel_init);
    swift_unknownObjectRelease();
  }

  return v4;
}

char *MSCMSCompressedData.encodeSecurityObject()()
{
  v27 = *MEMORY[0x277D85DE8];
  LODWORD(v21) = 0;
  v25 = 0;
  v26 = 0;
  v22 = asn1_oid_id_alg_zlibCompress;
  v23 = 0;
  v24 = 0;
  v2 = OBJC_IVAR___MSCMSCompressedData_contentType;
  swift_beginAccess();
  if ([*&v0[v2] isEqualToString_])
  {
    v3 = &v0[OBJC_IVAR___MSCMSCompressedData_dataContent];
    swift_beginAccess();
    v4 = *v3;
    v5 = *(v3 + 1);
    v6 = sub_258CA85CC(v4, v5);
  }

  else
  {
    v7 = OBJC_IVAR___MSCMSCompressedData_embeddedContent;
    swift_beginAccess();
    v8 = *&v0[v7];
    if (!v8)
    {
LABEL_7:
      sub_258CAFE28();
      swift_allocError();
      *v11 = xmmword_258CC1DF0;
      *(v11 + 16) = 48;
LABEL_8:
      swift_willThrow();
      goto LABEL_23;
    }

    v19 = 0;
    v9 = [v8 encodeMessageSecurityObject_];
    v6 = v19;
    if (!v9)
    {
      goto LABEL_16;
    }

    v4 = sub_258CBEA80();
    v5 = v10;
  }

  if (v5 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v19 = v4;
  v20 = v5;
  v12 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v12)
    {
      if (__OFSUB__(HIDWORD(v4), v4))
      {
        __break(1u);
      }

      v13 = HIDWORD(v4) - v4;
    }

    else
    {
      v13 = BYTE6(v5);
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
    v15 = v4[2];
    v14 = v4[3];
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_16:
    v0 = v6;
    sub_258CBEA10();

    goto LABEL_8;
  }

  v13 = 0;
LABEL_20:
  sub_258CB1708(&v19, v13, v0, &v21, &v18);
  if (!v1)
  {
    v0 = v18;
  }

  sub_258CA82B8(v19, v20);
LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
  return v0;
}

id MSCMSCompressedData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSCMSCompressedData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258CB1708(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (v12)
    {
      v40 = a3;
      sub_258CA85E0(v11, v10);
      sub_258CA82B8(v11, v10);
      v64 = v11;
      v65 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_258CC1CF0;
      sub_258CA82B8(0, 0xC000000000000000);
      sub_258CB1DEC(&v64, a2, v40, a4, a5);

      v41 = v65 | 0x4000000000000000;
      *a1 = v64;
      a1[1] = v41;
      goto LABEL_30;
    }

    v60 = a5;
    v13 = a3;
    sub_258CA82B8(v11, v10);
    *&v66 = v11;
    WORD4(v66) = v10;
    BYTE10(v66) = BYTE2(v10);
    BYTE11(v66) = BYTE3(v10);
    BYTE12(v66) = BYTE4(v10);
    BYTE13(v66) = BYTE5(v10);
    BYTE14(v66) = BYTE6(v10);
    v67 = a2;
    v68 = &v66;
    v14 = OBJC_IVAR___MSCMSCompressedData_contentType;
    swift_beginAccess();
    a4[4] = [*&v13[v14] Asn1OID];
    a4[5] = v15;
    a4[6] = &v67;
    v16 = length_CompressedData(a4);
    v17 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength_];
    if (v17)
    {
      v18 = v17;
      v63 = 0;
      if (!encode_CompressedData([v17 mutableBytes] + v16 - 1, v16, a4, &v63) && v63 == v16)
      {
        v19 = sub_258CBEA80();
        v21 = v20;

        *v60 = v19;
        v60[1] = v21;
        v22 = v66;
        v23 = DWORD2(v66) | ((WORD6(v66) | (BYTE14(v66) << 16)) << 32);

        *a1 = v22;
        a1[1] = v23;
LABEL_30:
        v59 = *MEMORY[0x277D85DE8];
        return;
      }

      sub_258CAFE28();
      swift_allocError();
      *v52 = xmmword_258CC1DF0;
      *(v52 + 16) = 48;
      swift_willThrow();
    }

    else
    {
      sub_258CAFE28();
      swift_allocError();
      *v49 = xmmword_258CC1E00;
      *(v49 + 16) = 48;
      swift_willThrow();
    }

    v53 = v66;
    v54 = DWORD2(v66) | ((WORD6(v66) | (BYTE14(v66) << 16)) << 32);

    *a1 = v53;
    a1[1] = v54;
    goto LABEL_30;
  }

  v61 = a5;
  if (v12 != 2)
  {
    *(&v66 + 7) = 0;
    *&v66 = 0;
    v67 = a2;
    v68 = &v66;
    v42 = OBJC_IVAR___MSCMSCompressedData_contentType;
    swift_beginAccess();
    a4[4] = [*&a3[v42] Asn1OID];
    a4[5] = v43;
    a4[6] = &v67;
    v44 = length_CompressedData(a4);
    v45 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength_];
    if (v45)
    {
      v46 = v45;
      v63 = 0;
      if (encode_CompressedData([v45 mutableBytes] + v44 - 1, v44, a4, &v63))
      {
        v47 = 0;
      }

      else
      {
        v47 = v63 == v44;
      }

      if (v47)
      {
        v55 = sub_258CBEA80();
        v57 = v56;

        *v61 = v55;
        v61[1] = v57;
      }

      else
      {
        sub_258CAFE28();
        swift_allocError();
        *v48 = xmmword_258CC1DF0;
        *(v48 + 16) = 48;
        swift_willThrow();
      }
    }

    else
    {
      sub_258CAFE28();
      swift_allocError();
      *v50 = xmmword_258CC1E00;
      *(v50 + 16) = 48;
      swift_willThrow();
    }

    goto LABEL_30;
  }

  v24 = a3;

  sub_258CA82B8(v11, v10);
  v67 = v11;
  v68 = (v10 & 0x3FFFFFFFFFFFFFFFLL);
  *a1 = xmmword_258CC1CF0;
  sub_258CA82B8(0, 0xC000000000000000);
  sub_258CBEA30();
  v26 = v67;
  v25 = v68;
  v27 = *(v67 + 16);
  v28 = sub_258CBE980();
  if (v28)
  {
    v29 = v28;
    v30 = sub_258CBE9B0();
    if (__OFSUB__(v27, v30))
    {
      __break(1u);
    }

    v31 = v27 - v30 + v29;
    sub_258CBE9A0();
    *&v66 = a2;
    *(&v66 + 1) = v31;
    v32 = OBJC_IVAR___MSCMSCompressedData_contentType;
    swift_beginAccess();
    a4[4] = [*&v24[v32] Asn1OID];
    a4[5] = v33;
    a4[6] = &v66;
    v34 = length_CompressedData(a4);
    v35 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength_];
    if (v35)
    {
      v36 = v35;
      v63 = 0;
      if (!encode_CompressedData([v35 mutableBytes] + v34 - 1, v34, a4, &v63) && v63 == v34)
      {
        v37 = sub_258CBEA80();
        v39 = v38;

        *v61 = v37;
        v61[1] = v39;

        *a1 = v26;
        a1[1] = v25 | 0x8000000000000000;
        goto LABEL_30;
      }

      sub_258CAFE28();
      swift_allocError();
      *v58 = xmmword_258CC1DF0;
      *(v58 + 16) = 48;
      swift_willThrow();
    }

    else
    {
      sub_258CAFE28();
      swift_allocError();
      *v51 = xmmword_258CC1E00;
      *(v51 + 16) = 48;
      swift_willThrow();
    }

    *a1 = v26;
    a1[1] = v25 | 0x8000000000000000;
    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_258CB1DEC@<X0>(int *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v29[2] = *MEMORY[0x277D85DE8];
  sub_258CBEA40();
  v10 = *a1;
  if (a1[1] < v10)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(a1 + 1);

  v12 = sub_258CBE980();
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  v14 = sub_258CBE9B0();
  if (__OFSUB__(v10, v14))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v15 = v10 - v14 + v13;
  sub_258CBE9A0();
  v29[0] = a2;
  v29[1] = v15;
  v16 = OBJC_IVAR___MSCMSCompressedData_contentType;
  swift_beginAccess();
  a4[4] = [*&a3[v16] Asn1OID];
  a4[5] = v17;
  a4[6] = v29;
  v18 = length_CompressedData(a4);
  v19 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength_];
  if (v19)
  {
    v20 = v19;
    v28 = 0;
    if (encode_CompressedData([v19 mutableBytes] + v18 - 1, v18, a4, &v28) || v28 != v18)
    {
      sub_258CAFE28();
      swift_allocError();
      *v25 = xmmword_258CC1DF0;
      *(v25 + 16) = 48;
      swift_willThrow();
    }

    else
    {
      v21 = sub_258CBEA80();
      v23 = v22;

      *a5 = v21;
      a5[1] = v23;
    }
  }

  else
  {
    sub_258CAFE28();
    swift_allocError();
    *v24 = xmmword_258CC1E00;
    *(v24 + 16) = 48;
    swift_willThrow();
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_258CB200C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  v6 = sub_258CBEA60();
  v7 = nsheim_decode_CompressedData(v6);

  if (v7)
  {
    sub_258CAFE28();
    swift_allocError();
    *v8 = xmmword_258CC1E00;
    *(v8 + 16) = 48;
    swift_willThrow();
    goto LABEL_3;
  }

  v11 = [objc_allocWithZone(MSOID) initWithAsn1OID:v30 error:0];
  v28 = asn1_oid_id_alg_zlibCompress;
  v12 = [objc_allocWithZone(MSOID) initWithAsn1OID:&v28 error:0];
  if (![v11 isEqual_])
  {
    sub_258CAFE28();
    swift_allocError();
    *v18 = xmmword_258CC1E00;
    *(v18 + 16) = 48;
    swift_willThrow();

    goto LABEL_3;
  }

  v13 = *(&v30[2] + 1);
  v27 = *(&v30[1] + 8);
  result = [objc_allocWithZone(MSOID) initWithAsn1OID:&v27 error:0];
  if (v13)
  {
    v14 = result;
    if (!*v13)
    {
      v15 = 0;
      v17 = 0xC000000000000000;
      goto LABEL_11;
    }

    result = v13[1];
    if (result)
    {
      v15 = sub_258CAFFD4(result, *v13);
      v17 = v16;
LABEL_11:
      if ([v14 isEqualToString_])
      {
        v19 = objc_allocWithZone(type metadata accessor for MSCMSCompressedData());
        v20 = MSCMSCompressedData.init(dataContent:)(v15, v17);
        if (!v3)
        {
          v4 = v20;
        }

        goto LABEL_3;
      }

      v21 = sub_258CBEA60();
      v22 = decodeEmbeddedCMSContent(v14, v21, a3, 0);

      if (v22)
      {
        v23 = objc_allocWithZone(type metadata accessor for MSCMSCompressedData());
        v24 = swift_unknownObjectRetain();
        v25 = MSCMSCompressedData.init(embeddedContent:)(v24);
        if (!v3)
        {
          v4 = v25;

          swift_unknownObjectRelease();
          sub_258CA82B8(v15, v17);
          goto LABEL_3;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        sub_258CAFE28();
        swift_allocError();
        *v26 = xmmword_258CC1E00;
        *(v26 + 16) = 48;
        swift_willThrow();
      }

      sub_258CA82B8(v15, v17);
LABEL_3:
      free_CompressedData();
      v9 = *MEMORY[0x277D85DE8];
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_258CB240C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_258CB24D4(a1, MEMORY[0x277CDBE08], 16);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_258CB2470(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_258CB24D4(a1, MEMORY[0x277CDBE10], 24);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_258CB24D4(uint64_t a1, uint64_t (*a2)(uint64_t, id *), char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v4 = a2(a1, v11);
  v5 = v11[0];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v11[0] == 0;
  }

  if (v6)
  {
    v7 = v4;
    sub_258CAFE28();
    swift_allocError();
    *v8 = v7;
    *(v8 + 8) = 0;
    *(v8 + 16) = a3;
    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_258CB259C()
{
  v1 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_258CB25F0(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MSCMSEnvelopedDataInternal.__allocating_init(envelopedData:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MSCMSEnvelopedDataInternal.init(envelopedData:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

NSData __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MSCMSEnvelopedDataInternal.encodeMessageSecurityObject()()
{
  v46 = *MEMORY[0x277D85DE8];
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v2 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
  swift_beginAccess();
  v3 = [*&v0[v2] getRecipients];
  sub_258CB0458(0, &qword_27F97D868, off_2798BDCA0);
  v4 = sub_258CBEB30();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_40:

    sub_258CAFE28();
    swift_allocError();
    *v39 = xmmword_258CC1D10;
    *(v39 + 16) = 48;
    swift_willThrow();
    goto LABEL_41;
  }

  if (sub_258CBEBE0() < 1)
  {
    goto LABEL_40;
  }

LABEL_3:
  v5 = [*&v0[v2] version];
  v6 = [v5 unsignedIntValue];

  LODWORD(v44[0]) = v6;
  v43 = xmmword_258CC1CF0;
  v7 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x259C97E00](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v8 = *(v4 + 32);
  }

  v9 = v8;
  v10 = [v8 originatorIdentity];

  if (v10)
  {
    if (v7)
    {
      v11 = MEMORY[0x259C97E00](0, v4);
    }

    else
    {
      v11 = *(v4 + 32);
    }

    v12 = v11;
    v13 = sub_258CB240C(v10);
    if (v1)
    {

LABEL_27:
      v34 = 0;
      v35 = 0xC000000000000000;
LABEL_36:
      sub_258CA82B8(v34, v35);
LABEL_41:
      v40 = *MEMORY[0x277D85DE8];
      return v0;
    }

    v14 = v13;
    [v12 setOriginator_];
  }

  if (v7)
  {
    v15 = MEMORY[0x259C97E00](0, v4);
  }

  else
  {
    v15 = *(v4 + 32);
  }

  v16 = v15;
  v17 = [v15 originator];

  if (v17)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97D840, &unk_258CC1E60);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_258CC1D00;
    if (v7)
    {
      v19 = MEMORY[0x259C97E00](0, v4);
    }

    else
    {
      v19 = *(v4 + 32);
    }

    v21 = v19;
    v22 = [v19 originator];

    if (!v22)
    {
      __break(1u);
      goto LABEL_46;
    }

    v24 = objc_opt_self();
    type metadata accessor for SecCertificate();
    *(v18 + 56) = v25;
    *(v18 + 32) = v22;
    v26 = sub_258CBEB20();

    v41 = 0;
    v27 = [v24 encodeOriginatorInfoCertificates:v26 error:&v41];

    v28 = v41;
    if (!v27)
    {
      v33 = v28;

      sub_258CBEA10();

      swift_willThrow();
      goto LABEL_27;
    }

    v29 = sub_258CBEA80();
    v31 = v30;

    sub_258CA82B8(0, 0xC000000000000000);
    *&v43 = v29;
    *(&v43 + 1) = v31;
    v32 = v31 >> 62;
    v41 = 0;
    v42 = 0;
    if ((v31 >> 62) > 1)
    {
      v20 = 0;
      if (v32 != 2)
      {
        goto LABEL_34;
      }

      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      v20 = v36 - v37;
      if (!__OFSUB__(v36, v37))
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    else if (!v32)
    {
      v20 = BYTE6(v31);
      goto LABEL_34;
    }

    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      v20 = HIDWORD(v29) - v29;
      goto LABEL_34;
    }

LABEL_44:
    __break(1u);
  }

  v20 = 0;
  v41 = 0;
  v42 = 0;
LABEL_34:
  v38 = v0;

  v0 = sub_258CB4D20(&v43, &v41, v20, v44, v38, v4);

  if (v1)
  {

    v35 = *(&v43 + 1);
    v34 = v43;
    goto LABEL_36;
  }

  if (v0)
  {

    sub_258CA82B8(v43, *(&v43 + 1));
    goto LABEL_41;
  }

LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_258CB2C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v7 = v6;
  v87 = a5;
  v100[2] = *MEMORY[0x277D85DE8];
  v83 = sub_258CBEA20();
  v13 = *(*(v83 - 1) + 64);
  result = MEMORY[0x28223BE20](v83);
  v82 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100[0] = a2;
  v100[1] = a1;
  *(a3 + 64) = v100;
  if (!(a4 >> 62))
  {
    v17 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!HIDWORD(v17))
    {
      goto LABEL_3;
    }

LABEL_99:
    __break(1u);
    return result;
  }

  while (1)
  {
    v77 = v15;
    result = sub_258CBEBE0();
    if ((result & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_92:
    v44 = sub_258CB38C8(a6);
LABEL_32:
    *(v81 + 24) = v44 + 32;
    v99 = 0;
    v45 = v87;
    v46 = v86;
    swift_beginAccess();
    v47 = [*(v45 + v46) unprotectedAttributes];
    if (!v47)
    {
      v98 = 0;
      goto LABEL_46;
    }

    v48 = v47;
    v49 = [v47 count];

    if ((v49 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v49))
    {
      v98 = v49;
      if (v49)
      {
        type metadata accessor for Attribute(0);
        v7 = sub_258CBEB50();
        v7[2] = v49;
        v50 = v7 + 7;
        do
        {
          *v50 = 0;
          *(v50 - 3) = 0;
          *(v50 - 2) = 0;
          *(v50 - 2) = 0;
          v50 += 4;
          --v49;
        }

        while (v49);
        v51 = [*(v87 + v86) unprotectedAttributes];
        if (v51)
        {
          v84 = v44;
          v85 = v51;
          sub_258CBEB80();
          sub_258CB57A8();
          sub_258CBEBA0();
          if (*(&v93 + 1))
          {
            v52 = v7 + 4;
            a3 = -1;
            a4 = &unk_2798C2000;
            do
            {
              sub_258CB03E0(&v92, v91);
              sub_258CB5800(v91, v90);
              sub_258CB0458(0, &qword_27F97D860, off_2798BDC50);
              swift_dynamicCast();
              v53 = v89;
              [v89 generateAttributeStruct];

              if (++a3 >= v7[2])
              {
                goto LABEL_87;
              }

              copy_Attribute();
              free_Attribute();
              __swift_destroy_boxed_opaque_existential_0(v91);
              sub_258CBEBA0();
              v52 += 4;
            }

            while (*(&v93 + 1));
          }

          (*(v78 + 8))(v82, v83);

          LODWORD(v49) = 0;
          a4 = v88;
          v44 = v84;
        }

        else
        {
          LODWORD(v49) = 0;
        }

LABEL_47:

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v7;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_48;
        }

        goto LABEL_95;
      }

LABEL_46:
      v7 = MEMORY[0x277D84F90];
      LODWORD(v49) = 1;
      goto LABEL_47;
    }

    __break(1u);
LABEL_95:
    v85 = sub_258CB38DC(v7);
LABEL_48:
    v99 = v85 + 32;
    v56 = &v98;
    if (v49)
    {
      v56 = 0;
    }

    v57 = v81;
    *(v81 + 80) = v56;
    if ([*(v87 + v86) legacyASN1Encoding])
    {
      v58 = *(v57 + 48);
      v94 = *(v57 + 32);
      v95 = v58;
      v96 = *(v57 + 64);
      v97 = *(v57 + 80);
      v59 = *(v57 + 16);
      v92 = *v57;
      v93 = v59;
      v60 = length_SecCMS_EnvelopedData(&v92);
    }

    else
    {
      v60 = length_EnvelopedData(v57);
    }

    v61 = v60;
    v62 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength_];
    if (!v62)
    {
      sub_258CAFE28();
      swift_allocError();
      *v67 = xmmword_258CC1D10;
      *(v67 + 16) = 48;
      swift_willThrow();
      goto LABEL_79;
    }

    v83 = v62;
    v63 = [v83 mutableBytes] + v61 - 1;
    v91[0] = 0;
    if ([*(v87 + v86) legacyASN1Encoding])
    {
      v64 = *(v81 + 48);
      v94 = *(v81 + 32);
      v95 = v64;
      v96 = *(v81 + 64);
      v97 = *(v81 + 80);
      v65 = *(v81 + 16);
      v92 = *v81;
      v93 = v65;
      v66 = encode_SecCMS_EnvelopedData(v63, v61, &v92, v91);
    }

    else
    {
      v66 = encode_EnvelopedData(v63, v61, v81, v91);
    }

    LODWORD(v87) = v66;
    a3 = *(a6 + 2);
    v84 = v44;
    if (!a3)
    {
LABEL_70:
      v69 = v7[2];
      if (v69)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_72;
        }

        goto LABEL_97;
      }

LABEL_75:
      if (!v87 && v91[0] == v61)
      {

        *v79 = v83;
        goto LABEL_81;
      }

      sub_258CAFE28();
      swift_allocError();
      *v75 = xmmword_258CC1D10;
      *(v75 + 16) = 48;
      swift_willThrow();

LABEL_79:

      goto LABEL_80;
    }

    v69 = a4 & 0xC000000000000001;
    if ((a4 & 0xC000000000000001) != 0 || a3 <= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v70 = 0;
      v71 = 32;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a6 = sub_258CB38C8(a6);
        }

        if (v70 >= *(a6 + 2))
        {
          break;
        }

        if (v69)
        {
          v72 = MEMORY[0x259C97E00](v70, a4);
        }

        else
        {
          v72 = *(a4 + 8 * v70 + 32);
        }

        v73 = v72;
        ++v70;
        [v72 freeRecipientInfo_];

        v71 += 112;
        a4 = v88;
        if (a3 == v70)
        {
          goto LABEL_70;
        }
      }

      __break(1u);
      goto LABEL_84;
    }

    __break(1u);
LABEL_97:
    v7 = sub_258CB38DC(v7);
LABEL_72:
    v74 = 0;
    a3 = (v7 + 4);
    while (v74 < v7[2])
    {
      ++v74;
      free_Attribute();
      a3 += 32;
      if (v69 == v74)
      {
        goto LABEL_75;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  v17 = result;
  v15 = v77;
  if (HIDWORD(result))
  {
    goto LABEL_99;
  }

LABEL_3:
  v78 = v15;
  v79 = a6;
  *(a3 + 16) = v17;
  v81 = a3;
  v80 = v7;
  if (v17)
  {
    type metadata accessor for RecipientInfo(0);
    v18 = sub_258CBEB50();
    a6 = v18;
    *(v18 + 16) = v17;
    v19 = 32;
    do
    {
      v20 = (v18 + v19);
      v20[5] = 0uLL;
      v20[6] = 0uLL;
      v20[3] = 0uLL;
      v20[4] = 0uLL;
      v20[1] = 0uLL;
      v20[2] = 0uLL;
      v19 += 112;
      *v20 = 0uLL;
      --v17;
    }

    while (v17);
  }

  else
  {
    a6 = MEMORY[0x277D84F90];
  }

  v21 = *(a6 + 2);
  v86 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
  swift_beginAccess();
  v88 = a4;
  v84 = v21;
  if (!v21)
  {
LABEL_31:

    v44 = a6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_32;
    }

    goto LABEL_92;
  }

  v22 = 0;
  a3 = a4 & 0xC000000000000001;
  v85 = (a4 & 0xFFFFFFFFFFFFFF8);
  v7 = a6 + 32;
  while (1)
  {
    a4 += 8 * v22;
    if (a3)
    {
      v23 = MEMORY[0x259C97E00](v22, v88);
    }

    else
    {
      if (v22 >= *(v85 + 2))
      {
        goto LABEL_85;
      }

      v23 = *(a4 + 32);
    }

    v24 = v23;
    v25 = [*(v87 + v86) encryptionKey];
    v26 = sub_258CBEA80();
    v28 = v27;

    v29 = sub_258CBEA60();
    sub_258CA82B8(v26, v28);
    v30 = [v24 encryptBulkKey_];

    v31 = sub_258CBEA80();
    v33 = v32;

    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        goto LABEL_44;
      }

      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      v37 = __OFSUB__(v35, v36);
      v38 = v35 - v36;
      if (v37)
      {
        goto LABEL_89;
      }

      if (v38 <= 0)
      {
        goto LABEL_44;
      }
    }

    else if (v34)
    {
      if (__OFSUB__(HIDWORD(v31), v31))
      {
        goto LABEL_88;
      }

      if (HIDWORD(v31) - v31 <= 0)
      {
LABEL_44:

        sub_258CAFE28();
        swift_allocError();
        *v54 = xmmword_258CC1D10;
        *(v54 + 16) = 48;
        swift_willThrow();
        result = sub_258CA82B8(v31, v33);
        goto LABEL_81;
      }
    }

    else if (!BYTE6(v33))
    {
      goto LABEL_44;
    }

    if (v22 >= *(a6 + 2))
    {
      goto LABEL_86;
    }

    v39 = a3 ? MEMORY[0x259C97E00](v22, v88) : *(a4 + 32);
    v40 = v39;
    v41 = sub_258CBEA60();
    *&v92 = 0;
    v42 = [v40 encodeRecipientInfo:v41 recipientInfo:v7 error:&v92];

    if (!v42)
    {
      break;
    }

    ++v22;
    v43 = v92;
    sub_258CA82B8(v31, v33);
    v7 += 14;
    a4 = v88;
    if (v84 == v22)
    {
      goto LABEL_31;
    }
  }

  v68 = v92;
  sub_258CBEA10();

  swift_willThrow();
  sub_258CA82B8(v31, v33);
LABEL_80:

LABEL_81:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

id MSCMSEnvelopedDataInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSCMSEnvelopedDataInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_258CB38F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97D9E8, &qword_258CC1EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 112 * v8);
  }

  return v10;
}

char *sub_258CB3A14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97D9E0, &qword_258CC1EE8);
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

uint64_t sub_258CB3B18(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v9 = a1[1];
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      *(&v43 + 7) = 0;
      *&v43 = 0;
      v12 = a2;

      v29 = a5;
      sub_258CB2C50(&v43, v12, a3, a4, v29, &v42);

      if (!v5)
      {
        v12 = v42;
      }

      goto LABEL_27;
    }

    swift_bridgeObjectRetain_n();
    v16 = a5;
    sub_258CA85E0(v10, v9);
    sub_258CA82B8(v10, v9);
    *&v43 = v10;
    *(&v43 + 1) = v9 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_258CC1CF0;
    sub_258CA82B8(0, 0xC000000000000000);
    sub_258CBEA30();
    v17 = v43;
    v12 = *(v43 + 16);
    v18 = *(v43 + 24);

    v19 = v16;
    result = sub_258CBE980();
    if (!result)
    {
      __break(1u);
      goto LABEL_36;
    }

    v21 = result;
    v22 = sub_258CBE9B0();
    v23 = v12 - v22;
    if (!__OFSUB__(v12, v22))
    {
      if (!__OFSUB__(v18, v12))
      {
        sub_258CBE9A0();
        sub_258CB2C50(v21 + v23, a2, a3, a4, v19, &v42);
        v24 = *(&v17 + 1) | 0x8000000000000000;
        if (!v5)
        {
          swift_bridgeObjectRelease_n();

          v12 = v42;
          *a1 = v17;
LABEL_27:
          v37 = *MEMORY[0x277D85DE8];
          return v12;
        }

        swift_bridgeObjectRelease_n();

        *a1 = v17;
LABEL_26:
        a1[1] = v24;
        goto LABEL_27;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v11)
  {
    v12 = v10 >> 8;
    swift_bridgeObjectRetain_n();
    v13 = a5;
    sub_258CA82B8(v10, v9);
    *&v43 = v10;
    WORD4(v43) = v9;
    BYTE10(v43) = BYTE2(v9);
    BYTE11(v43) = BYTE3(v9);
    BYTE12(v43) = BYTE4(v9);
    BYTE13(v43) = BYTE5(v9);
    BYTE14(v43) = BYTE6(v9);
    sub_258CB2C50(&v43, a2, a3, a4, v13, &v42);
    if (!v5)
    {
      v12 = v42;
    }

    v14 = v43;
    v15 = DWORD2(v43) | ((WORD6(v43) | (BYTE14(v43) << 16)) << 32);

    swift_bridgeObjectRelease_n();
    *a1 = v14;
    a1[1] = v15;
    goto LABEL_27;
  }

  v25 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  swift_bridgeObjectRetain_n();
  v26 = a5;
  sub_258CA85E0(v10, v9);
  sub_258CA82B8(v10, v9);
  *a1 = xmmword_258CC1CF0;
  sub_258CA82B8(0, 0xC000000000000000);
  v27 = v10 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v27 < v10)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (sub_258CBE980() && __OFSUB__(v10, sub_258CBE9B0()))
    {
LABEL_34:
      __break(1u);
    }

    v30 = sub_258CBE9C0();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = sub_258CBE960();

    v25 = v33;
  }

  if (v27 < v10)
  {
    goto LABEL_30;
  }

  v34 = v26;

  result = sub_258CBE980();
  if (result)
  {
    v12 = result;
    v35 = sub_258CBE9B0();
    v36 = v10 - v35;
    if (!__OFSUB__(v10, v35))
    {
      sub_258CBE9A0();
      sub_258CB2C50(v12 + v36, a2, a3, a4, v34, &v43);
      v24 = v25 | 0x4000000000000000;
      if (!v5)
      {

        swift_bridgeObjectRelease_n();

        v12 = v43;

        *a1 = v10;
        a1[1] = v24;
        goto LABEL_27;
      }

      swift_bridgeObjectRelease_n();

      *a1 = v10;
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_258CB4050(uint64_t *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v135 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      *(&v132 + 7) = 0;
      *&v132 = 0;
      *(a2 + 8) = &v132;
      v8 = a3;
      a3[9] = a2;
      v7 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
      v23 = a4;
      swift_beginAccess();
      v59 = *(v23 + v7);
      v60 = v23;
      swift_bridgeObjectRetain_n();
      v11 = v60;
      v61 = [v59 contentType];
      v62 = [v61 Asn1OID];
      v64 = v63;

      a3[4] = v62;
      a3[5] = v64;
      v65 = [*(v23 + v7) encryptionAlgorithm];
      v66 = [v65 algorithm];

      v67 = [v66 Asn1OID];
      v69 = v68;

      a3[6] = v67;
      a3[7] = v69;
      v70 = [*(v23 + v7) encryptionAlgorithm];
      v71 = [v70 parameters];

      if (!v71)
      {
        v30 = 0;
        v32 = 0;
        v75 = 0xF000000000000000;
        goto LABEL_73;
      }

      v72 = sub_258CBEA80();
      v74 = v73;

      v75 = v74;
      v30 = v72;
      v133 = v72;
      v134 = v74;
      if (v74 >> 60 == 15)
      {
        v32 = 0;
        goto LABEL_73;
      }

      v79 = v74 >> 62;
      v31 = v129;
      if ((v75 >> 62) <= 1)
      {
        v32 = a5;
        if (v79)
        {
          if (__OFSUB__(HIDWORD(v72), v72))
          {
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          v80 = HIDWORD(v72) - v72;
        }

        else
        {
          v80 = BYTE6(v75);
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    v33 = a4;
    swift_bridgeObjectRetain_n();
    v34 = v33;
    sub_258CA85E0(v7, v8);
    sub_258CA82B8(v7, v8);
    v133 = v7;
    v134 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v128 = a1;
    *a1 = xmmword_258CC1CF0;
    sub_258CA82B8(0, 0xC000000000000000);
    sub_258CBEA30();
    v11 = v134;
    v35 = *(v133 + 16);
    v7 = v34;

    result = sub_258CBE980();
    if (!result)
    {
      __break(1u);
      goto LABEL_98;
    }

    v37 = result;
    v38 = sub_258CBE9B0();
    if (!__OFSUB__(v35, v38))
    {
      v126 = v133;
      v39 = v35 - v38 + v37;
      sub_258CBE9A0();
      *(a2 + 8) = v39;
      v8 = a3;
      a3[9] = a2;
      v40 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
      swift_beginAccess();
      v41 = [*(v7 + v40) contentType];
      v42 = [v41 Asn1OID];
      v44 = v43;

      a3[4] = v42;
      a3[5] = v44;
      v45 = [*(v7 + v40) encryptionAlgorithm];
      v46 = [v45 algorithm];

      v47 = [v46 Asn1OID];
      v49 = v48;

      a3[6] = v47;
      a3[7] = v49;
      v50 = [*(v7 + v40) encryptionAlgorithm];
      v51 = [v50 parameters];

      if (v51)
      {
        v52 = sub_258CBEA80();
        v54 = v53;

        v55 = v54;
        v30 = v52;
        *&v132 = v52;
        *(&v132 + 1) = v54;
        v31 = v129;
        if (v54 >> 60 != 15)
        {
          v81 = v54 >> 62;
          v23 = v126;
          if ((v55 >> 62) <= 1)
          {
            v32 = a5;
            if (v81)
            {
              if (__OFSUB__(HIDWORD(v52), v52))
              {
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
              }

              v82 = HIDWORD(v52) - v52;
            }

            else
            {
              v82 = BYTE6(v55);
            }

            goto LABEL_77;
          }

          goto LABEL_53;
        }

        v32 = 0;
      }

      else
      {
        v30 = 0;
        v32 = 0;
        v55 = 0xF000000000000000;
      }

      v23 = v126;
      v76 = v128;
LABEL_24:
      sub_258CA8728(v30, v55);

      swift_bridgeObjectRelease_n();

      *v76 = v23;
      v76[1] = v11 | 0x8000000000000000;
      goto LABEL_87;
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v128 = a1;
  if (!v9)
  {
    v10 = a4;
    swift_bridgeObjectRetain_n();
    v11 = v10;
    sub_258CA82B8(v7, v8);
    *&v132 = v7;
    WORD4(v132) = v8;
    BYTE10(v132) = BYTE2(v8);
    BYTE11(v132) = BYTE3(v8);
    BYTE12(v132) = BYTE4(v8);
    BYTE13(v132) = BYTE5(v8);
    BYTE14(v132) = BYTE6(v8);
    *(a2 + 8) = &v132;
    a3[9] = a2;
    v12 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
    swift_beginAccess();
    v13 = [*(v11 + v12) contentType];
    v14 = [v13 Asn1OID];
    v16 = v15;

    a3[4] = v14;
    a3[5] = v16;
    v17 = [*(v11 + v12) encryptionAlgorithm];
    v18 = [v17 algorithm];

    v19 = [v18 Asn1OID];
    v21 = v20;

    a3[6] = v19;
    a3[7] = v21;
    v22 = *(v11 + v12);
    v23 = v11;
    v24 = [v22 encryptionAlgorithm];
    v25 = [v24 parameters];

    if (!v25)
    {
      v30 = 0;
      v32 = 0;
      v29 = 0xF000000000000000;
      goto LABEL_68;
    }

    v26 = sub_258CBEA80();
    v28 = v27;

    v29 = v28;
    v30 = v26;
    v133 = v26;
    v134 = v28;
    v31 = v129;
    if (v28 >> 60 == 15)
    {
      v32 = 0;
LABEL_68:
      sub_258CA8728(v30, v29);
      v117 = v132;
      v118 = DWORD2(v132) | ((WORD6(v132) | (BYTE14(v132) << 16)) << 32);
      swift_bridgeObjectRelease_n();

      *v128 = v117;
      v128[1] = v118;
      goto LABEL_87;
    }

    v77 = v28 >> 62;
    if ((v28 >> 62) <= 1)
    {
      v7 = a5;
      if (!v77)
      {
        v78 = BYTE6(v29);
LABEL_66:
        v114 = v23;

        v32 = sub_258CB3B18(&v133, v78, a3, v7, v114);

        v30 = v133;
        v29 = v134;
        if (!v31)
        {
          goto LABEL_68;
        }

        sub_258CA8728(v133, v134);
        v115 = v132;
        v116 = DWORD2(v132) | ((WORD6(v132) | (BYTE14(v132) << 16)) << 32);
        swift_bridgeObjectRelease_n();

        *v128 = v115;
        v128[1] = v116;
LABEL_87:
        v125 = *MEMORY[0x277D85DE8];
        return v32;
      }

      goto LABEL_61;
    }

    v7 = a5;
    if (v77 != 2)
    {
      v78 = 0;
      goto LABEL_66;
    }

    v109 = *(v26 + 16);
    v79 = *(v26 + 24);
    v78 = v79 - v109;
    if (!__OFSUB__(v79, v109))
    {
      goto LABEL_66;
    }

    __break(1u);
LABEL_49:
    v32 = a5;
    if (v79 != 2)
    {
      v80 = 0;
LABEL_70:
      v119 = v11;

      v120 = sub_258CB3B18(&v133, v80, a3, v32, v119);
      if (v31)
      {

        sub_258CA8728(v133, v134);
        swift_bridgeObjectRelease_n();

        goto LABEL_87;
      }

      v32 = v120;

      v30 = v133;
      v75 = v134;
LABEL_73:
      sub_258CA8728(v30, v75);
      swift_bridgeObjectRelease_n();

      goto LABEL_87;
    }

    v110 = *(v30 + 16);
    v81 = *(v30 + 24);
    v80 = v81 - v110;
    if (!__OFSUB__(v81, v110))
    {
      goto LABEL_70;
    }

    __break(1u);
LABEL_53:
    v32 = a5;
    if (v81 != 2)
    {
      v82 = 0;
LABEL_77:
      v121 = v7;

      v122 = sub_258CB3B18(&v132, v82, a3, v32, v121);
      if (v31)
      {

        sub_258CA8728(v132, *(&v132 + 1));
        swift_bridgeObjectRelease_n();

        *v128 = v23;
        v128[1] = v11 | 0x8000000000000000;
        goto LABEL_87;
      }

      v32 = v122;

      v55 = *(&v132 + 1);
      v30 = v132;
      v76 = v128;
      goto LABEL_24;
    }

    v111 = *(v30 + 16);
    v106 = *(v30 + 24);
    v82 = v106 - v111;
    if (!__OFSUB__(v106, v111))
    {
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_57;
  }

  v23 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v56 = a4;
  swift_bridgeObjectRetain_n();
  v57 = v56;
  sub_258CA85E0(v7, v8);
  sub_258CA82B8(v7, v8);
  *a1 = xmmword_258CC1CF0;
  sub_258CA82B8(0, 0xC000000000000000);
  v58 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v127 = v57;
    if (v58 < v7)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (sub_258CBE980() && __OFSUB__(v7, sub_258CBE9B0()))
    {
      goto LABEL_92;
    }

    v83 = sub_258CBE9C0();
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();
    v86 = sub_258CBE960();

    v23 = v86;
    v57 = v127;
  }

  if (v58 < v7)
  {
    goto LABEL_89;
  }

  v8 = v57;

  result = sub_258CBE980();
  if (result)
  {
    v87 = result;
    v88 = sub_258CBE9B0();
    if (!__OFSUB__(v7, v88))
    {
      v89 = v7 - v88 + v87;
      sub_258CBE9A0();
      *(a2 + 8) = v89;
      a3[9] = a2;
      v90 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
      swift_beginAccess();
      v91 = [*(v8 + v90) contentType];
      v92 = [v91 Asn1OID];
      v94 = v93;

      a3[4] = v92;
      a3[5] = v94;
      v32 = &unk_2798C2000;
      v95 = [*(v8 + v90) encryptionAlgorithm];
      v96 = [v95 algorithm];

      v97 = [v96 Asn1OID];
      v99 = v98;

      a3[6] = v97;
      a3[7] = v99;
      v100 = [*(v8 + v90) encryptionAlgorithm];
      v101 = [v100 parameters];

      if (!v101)
      {
        v30 = 0;
        v32 = 0;
        v105 = 0xF000000000000000;
        goto LABEL_86;
      }

      v102 = sub_258CBEA80();
      v104 = v103;

      v105 = v104;
      v30 = v102;
      v133 = v102;
      v134 = v104;
      v31 = v129;
      if (v104 >> 60 == 15)
      {
        v32 = 0;
        goto LABEL_86;
      }

      v106 = v104 >> 62;
      if ((v104 >> 62) <= 1)
      {
        v107 = a5;
        if (v106)
        {
          if (__OFSUB__(HIDWORD(v102), v102))
          {
            goto LABEL_96;
          }

          v108 = HIDWORD(v102) - v102;
        }

        else
        {
          v108 = BYTE6(v105);
        }

LABEL_83:
        v123 = v8;

        v124 = sub_258CB3B18(&v133, v108, a3, v107, v123);
        if (v31)
        {

          sub_258CA8728(v133, v134);

          swift_bridgeObjectRelease_n();

          *v128 = v7;
          v128[1] = v23 | 0x4000000000000000;
          goto LABEL_87;
        }

        v32 = v124;

        v30 = v133;
        v105 = v134;
LABEL_86:
        sub_258CA8728(v30, v105);

        swift_bridgeObjectRelease_n();

        *v128 = v7;
        v128[1] = v23 | 0x4000000000000000;
        goto LABEL_87;
      }

LABEL_57:
      v107 = a5;
      if (v106 == 2)
      {
        v113 = *(v30 + 16);
        v112 = *(v30 + 24);
        v108 = v112 - v113;
        if (__OFSUB__(v112, v113))
        {
          __break(1u);
LABEL_61:
          if (!__OFSUB__(HIDWORD(v30), v30))
          {
            v78 = HIDWORD(v30) - v30;
            goto LABEL_66;
          }

          goto LABEL_93;
        }
      }

      else
      {
        v108 = 0;
      }

      goto LABEL_83;
    }

    goto LABEL_90;
  }

LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_258CB4D20(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4, char *a5, char *a6)
{
  v9 = a2;
  v103 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v16 = v6;
    if (v13 == 2)
    {
      v28 = a5;
      swift_bridgeObjectRetain_n();
      v29 = v28;
      sub_258CA85E0(v12, v11);
      sub_258CA82B8(v12, v11);
      v101 = v12;
      v102 = v11 & 0x3FFFFFFFFFFFFFFFLL;
      v96 = a1;
      *a1 = xmmword_258CC1CF0;
      sub_258CA82B8(0, 0xC000000000000000);
      sub_258CBEA30();
      v18 = v102;
      v95 = v101;
      v30 = v101[2];
      v21 = v29;

      result = sub_258CBE980();
      if (!result)
      {
        __break(1u);
        goto LABEL_99;
      }

      v32 = result;
      v33 = sub_258CBE9B0();
      if (__OFSUB__(v30, v33))
      {
        __break(1u);
        goto LABEL_90;
      }

      v34 = v30 - v33 + v32;
      sub_258CBE9A0();
      *v9 = a3;
      *(v9 + 8) = v34;
      if (a3 <= 0)
      {
        v35 = 0;
      }

      else
      {
        v35 = v9;
      }

      v9 = a4;
      a4[1] = v35;
      v36 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
      swift_beginAccess();
      v37 = *(v21 + v36);
      *&v98 = 0;
      v12 = [v37 encryptContent_];
      v38 = v98;
      if (!v12)
      {
        v56 = v38;
        sub_258CBEA10();

        swift_willThrow();
LABEL_79:
        swift_bridgeObjectRelease_n();

        v89 = v18 | 0x8000000000000000;
        v90 = v96;
        *v96 = v95;
        goto LABEL_86;
      }

      v26 = v6;
      v23 = sub_258CBEA80();
      v40 = v39;

      v99 = v23;
      v100 = v40;
      *(&v98 + 1) = 0;
      v41 = v40 >> 62;
      if ((v40 >> 62) <= 1)
      {
        if (v41)
        {
          LODWORD(v42) = HIDWORD(v23) - v23;
          if (__OFSUB__(HIDWORD(v23), v23))
          {
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
          }

          v42 = v42;
        }

        else
        {
          v42 = BYTE6(v40);
        }

        goto LABEL_77;
      }

      goto LABEL_43;
    }

    *(&v98 + 7) = 0;
    *&v98 = 0;
    *a2 = a3;
    a2[1] = &v98;
    if (a3 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = a2;
    }

    v12 = a4;
    a4[1] = v45;
    v46 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
    swift_beginAccess();
    v48 = *&a5[v46];
    v99 = 0;
    v49 = a5;
    swift_bridgeObjectRetain_n();
    v18 = v49;
    v23 = [v48 encryptContent_];
    v50 = v99;
    if (!v23)
    {
      v55 = v50;
      sub_258CBEA10();

      swift_willThrow();
LABEL_73:
      swift_bridgeObjectRelease_n();

      goto LABEL_87;
    }

    v26 = a6;
    a6 = sub_258CBEA80();
    v21 = v51;

    v101 = a6;
    v102 = v21;
    v100 = 0;
    v52 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v52)
      {
        LODWORD(v53) = HIDWORD(a6) - a6;
        if (__OFSUB__(HIDWORD(a6), a6))
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v53 = v53;
      }

      else
      {
        v53 = BYTE6(v21);
      }

      goto LABEL_71;
    }

LABEL_39:
    v53 = 0;
    if (v52 != 2 || (v41 = *(a6 + 2), v59 = *(a6 + 3), v58 = __OFSUB__(v59, v41), v53 = v59 - v41, !v58))
    {
LABEL_71:
      v99 = v53;
      v85 = v18;

      v86 = sub_258CB4050(&v101, &v99, v12, v85, v26);
      if (!v16)
      {
        v9 = v86;

        sub_258CA82B8(v101, v102);
        swift_bridgeObjectRelease_n();

        goto LABEL_87;
      }

      sub_258CA82B8(v101, v102);
      goto LABEL_73;
    }

    __break(1u);
LABEL_43:
    v42 = 0;
    if (v41 != 2 || (v61 = *(v23 + 16), v60 = *(v23 + 24), v58 = __OFSUB__(v60, v61), v42 = v60 - v61, !v58))
    {
LABEL_77:
      *&v98 = v42;
      v87 = v21;

      v88 = sub_258CB4050(&v99, &v98, v9, v87, a6);
      if (!v26)
      {
        v9 = v88;

        sub_258CA82B8(v99, v100);
        swift_bridgeObjectRelease_n();

        *v96 = v95;
        v96[1] = v18 | 0x8000000000000000;
        goto LABEL_87;
      }

      sub_258CA82B8(v99, v100);
      goto LABEL_79;
    }

    __break(1u);
    goto LABEL_47;
  }

  v95 = v6;
  v96 = a1;
  if (!v13)
  {
    v14 = a5;
    v94 = a6;
    swift_bridgeObjectRetain_n();
    v15 = v14;
    sub_258CA82B8(v12, v11);
    *&v98 = v12;
    v16 = v15;
    WORD4(v98) = v11;
    BYTE10(v98) = BYTE2(v11);
    BYTE11(v98) = BYTE3(v11);
    BYTE12(v98) = BYTE4(v11);
    BYTE13(v98) = BYTE5(v11);
    BYTE14(v98) = BYTE6(v11);
    *v9 = a3;
    *(v9 + 8) = &v98;
    if (a3 <= 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = v9;
    }

    v18 = a4;
    a4[1] = v17;
    v19 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
    swift_beginAccess();
    v20 = *(v16 + v19);
    v99 = 0;
    v21 = [v20 encryptContent_];
    v22 = v99;
    if (!v21)
    {
      v54 = v22;
      sub_258CBEA10();

      swift_willThrow();
      goto LABEL_67;
    }

    v23 = sub_258CBEA80();
    v12 = v24;

    v101 = v23;
    v102 = v12;
    v100 = 0;
    v25 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      v26 = v6;
      if (!v25)
      {
        v27 = BYTE6(v12);
LABEL_65:
        v99 = v27;
        v79 = v16;

        v80 = sub_258CB4050(&v101, &v99, v18, v79, a6);
        if (!v26)
        {
          v9 = v80;

          sub_258CA82B8(v101, v102);
          v83 = v98;
          v84 = DWORD2(v98) | ((WORD6(v98) | (BYTE14(v98) << 16)) << 32);
          swift_bridgeObjectRelease_n();

          *v96 = v83;
          v96[1] = v84;
          goto LABEL_87;
        }

        sub_258CA82B8(v101, v102);
LABEL_67:
        v81 = v98;
        v82 = DWORD2(v98) | ((WORD6(v98) | (BYTE14(v98) << 16)) << 32);
        swift_bridgeObjectRelease_n();

        *v96 = v81;
        v96[1] = v82;
LABEL_87:
        v93 = *MEMORY[0x277D85DE8];
        return v9;
      }

      goto LABEL_63;
    }

    v27 = 0;
    v26 = v6;
    if (v25 != 2)
    {
      goto LABEL_65;
    }

    v52 = *(v23 + 16);
    v57 = *(v23 + 24);
    v58 = __OFSUB__(v57, v52);
    v27 = v57 - v52;
    if (!v58)
    {
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_39;
  }

  v16 = v11 & 0x3FFFFFFFFFFFFFFFLL;
  v43 = a5;
  swift_bridgeObjectRetain_n();
  v44 = v43;
  sub_258CA85E0(v12, v11);
  sub_258CA82B8(v12, v11);
  *a1 = xmmword_258CC1CF0;
  sub_258CA82B8(0, 0xC000000000000000);
  v23 = v12;
  v21 = v12 >> 32;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_48;
  }

  v94 = v44;
  if (v21 < v12)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (sub_258CBE980() && __OFSUB__(v12, sub_258CBE9B0()))
  {
    goto LABEL_93;
  }

LABEL_47:
  v62 = sub_258CBE9C0();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = sub_258CBE960();

  v16 = v65;
  v44 = v94;
LABEL_48:
  if (v21 < v23)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v66 = v44;

  result = sub_258CBE980();
  if (result)
  {
    v67 = result;
    v68 = sub_258CBE9B0();
    if (!__OFSUB__(v23, v68))
    {
      v69 = v23 - v68 + v67;
      sub_258CBE9A0();
      *v9 = a3;
      *(v9 + 8) = v69;
      if (a3 <= 0)
      {
        v70 = 0;
      }

      else
      {
        v70 = v9;
      }

      a4[1] = v70;
      v26 = OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData;
      swift_beginAccess();
      v71 = *&v26[v66];
      v99 = 0;
      v23 = [v71 encryptContent_];
      v72 = v99;
      if (v23)
      {
        v18 = sub_258CBEA80();
        v9 = v73;

        v101 = v18;
        v102 = v9;
        v100 = 0;
        v74 = v9 >> 62;
        if ((v9 >> 62) > 1)
        {
          v75 = 0;
          if (v74 == 2)
          {
            v78 = *(v18 + 16);
            v77 = *(v18 + 24);
            v58 = __OFSUB__(v77, v78);
            v75 = v77 - v78;
            if (v58)
            {
              __break(1u);
LABEL_63:
              LODWORD(v27) = HIDWORD(v23) - v23;
              if (!__OFSUB__(HIDWORD(v23), v23))
              {
                v27 = v27;
                goto LABEL_65;
              }

              goto LABEL_94;
            }
          }
        }

        else if (v74)
        {
          LODWORD(v75) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_97;
          }

          v75 = v75;
        }

        else
        {
          v75 = BYTE6(v9);
        }

        v99 = v75;
        v91 = v66;

        v92 = sub_258CB4050(&v101, &v99, a4, v91, a6);
        if (!v95)
        {
          v9 = v92;

          sub_258CA82B8(v101, v102);

          swift_bridgeObjectRelease_n();

          *v96 = v12;
          v96[1] = v16 | 0x4000000000000000;
          goto LABEL_87;
        }

        sub_258CA82B8(v101, v102);
      }

      else
      {
        v76 = v72;
        sub_258CBEA10();

        swift_willThrow();
      }

      swift_bridgeObjectRelease_n();

      v89 = v16 | 0x4000000000000000;
      v90 = v96;
      *v96 = v12;
LABEL_86:
      v90[1] = v89;
      goto LABEL_87;
    }

    goto LABEL_91;
  }

LABEL_99:
  __break(1u);
  return result;
}

unint64_t sub_258CB57A8()
{
  result = qword_27F97D9D8;
  if (!qword_27F97D9D8)
  {
    sub_258CBEA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F97D9D8);
  }

  return result;
}

uint64_t sub_258CB5800(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_258CB58F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258CB5918(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_258CB596C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258CB598C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_258CB59B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_258CB5A14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258CB5A34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_258CB5AE8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_258CB5B3C(uint64_t a1)
{
  v2 = sub_258CB7CFC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_258CB5B78(uint64_t a1)
{
  v2 = sub_258CB7CFC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MSCMSContentError.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 0x2064696C61766E49;
    }

    else if (*v0 == 0)
    {
      return 0x746E6F63206C694ELL;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (*(v0 + 16))
  {
    v3 = sub_258CBEC20();
    MEMORY[0x259C97D30](v3);

    return 0x72726520314E5341;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t MSCMSContentError.errorCode.getter()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 4;
    }

    else if (*v0 == 0)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  else if (*(v0 + 16))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t MSCMSContentError.errorUserInfo.getter()
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = sub_258CB76A8(MEMORY[0x277D84F90]);
  *&v33 = v1;
  *(&v33 + 1) = v2;
  v34 = v3;
  v5 = MSCMSContentError.errorDescription.getter();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = *MEMORY[0x277CCA450];
    v10 = sub_258CBEAD0();
    v12 = v11;
    v35 = MEMORY[0x277D837D0];
    *&v33 = v7;
    *(&v33 + 1) = v8;
    sub_258CB03E0(&v33, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_258CB7290(v32, v10, v12, isUniquelyReferenced_nonNull_native);
  }

  switch(v3)
  {
    case 2:
      v35 = MEMORY[0x277D84CC0];
      LODWORD(v33) = v1;
      sub_258CB03E0(&v33, v32);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v4;
      v16 = 0x5664696C61766E49;
      v15 = 0xEE006E6F69737265;
      goto LABEL_11;
    case 1:
      v17 = *MEMORY[0x277CCA7E8];
      v18 = sub_258CBEAD0();
      v20 = v19;
      v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v22 = sub_258CBEAC0();
      v23 = [v21 initWithDomain:v22 code:v1 userInfo:0];

      v24 = sub_258CB77B8();
      v35 = v24;
      *&v33 = v23;
      sub_258CB03E0(&v33, v32);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_258CB7290(v32, v18, v20, v25);

      if ((v1 & 0x80000000) != 0)
      {
        __break(1u);
      }

      *&v33 = 0;
      asn1ErrorToNSError(v1, &v33);
      v26 = v33;
      if (!v33)
      {
        sub_258CB6D84(0x6F727245314E5341, 0xE900000000000072, &v33);
        sub_258CB7804(&v33);
        break;
      }

      v35 = v24;
      sub_258CB03E0(&v33, v32);
      v27 = v26;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v4;
      sub_258CB7290(v32, 0x6F727245314E5341, 0xE900000000000072, v28);

      goto LABEL_12;
    case 0:
      v35 = MEMORY[0x277D837D0];
      *&v33 = v1;
      *(&v33 + 1) = v2;
      sub_258CB03E0(&v33, v32);

      v14 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v4;
      v15 = 0x8000000258CC6380;
      v16 = 0xD000000000000015;
LABEL_11:
      sub_258CB7290(v32, v16, v15, v14);
LABEL_12:
      v4 = v31;
      break;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_258CB6094()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 4;
    }

    else if (*v0 == 0)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  else if (*(v0 + 16))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_258CB60E4(uint64_t a1)
{
  v2 = sub_258CB7CA8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_258CB6120(uint64_t a1)
{
  v2 = sub_258CB7CA8();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MSCMSContentTypeError.errorDescription.getter()
{
  v1 = *(v0 + 16) >> 6;
  v2 = 0xD000000000000010;
  if (v1 != 1)
  {
    v2 = 0xD000000000000014;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t sub_258CB61B4()
{
  v1 = *(v0 + 16) >> 6;
  v2 = 0xD000000000000010;
  if (v1 != 1)
  {
    v2 = 0xD000000000000014;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t MSCMSContentTypeError.errorUserInfo.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = sub_258CB76A8(MEMORY[0x277D84F90]);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v5 = "TimeStampToken error";
      v6 = 0xD000000000000010;
      goto LABEL_7;
    }

    v7 = "TimeStampToken error";
  }

  else
  {
    v7 = "Unknown content type";
  }

  v5 = v7 - 32;
  v6 = 0xD000000000000014;
LABEL_7:
  v8 = v5 | 0x8000000000000000;
  v9 = *MEMORY[0x277CCA450];
  v10 = sub_258CBEAD0();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D837D0];
  *&v24 = v6;
  *(&v24 + 1) = v8;
  sub_258CB03E0(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_258CB7290(v23, v10, v12, isUniquelyReferenced_nonNull_native);

  if (v3 > 0x3F)
  {
    v16 = *MEMORY[0x277CCA7E8];
    v17 = sub_258CBEAD0();
    v19 = v18;
    v26 = &type metadata for MSCMSContentError;
    *&v24 = v2;
    *(&v24 + 1) = v1;
    v25 = v3 & 0x3F;
    sub_258CB03E0(&v24, v23);
    sub_258CB786C(v2, v1, v3);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v4;
    sub_258CB7290(v23, v17, v19, v20);
  }

  else
  {
    v26 = v13;
    *&v24 = v2;
    *(&v24 + 1) = v1;
    sub_258CB03E0(&v24, v23);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v4;
    sub_258CB7290(v23, 0xD000000000000015, 0x8000000258CC6430, v15);
  }

  return v22;
}

uint64_t sub_258CB644C(uint64_t a1)
{
  v2 = sub_258CB7C54();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_258CB6488(uint64_t a1)
{
  v2 = sub_258CB7C54();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MSCMSError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = (v2 >> 3) & 7;
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        sub_258CBEBC0();

        v4 = 0xD000000000000016;
      }

      else
      {
        sub_258CBEBC0();

        v4 = 0xD00000000000001CLL;
      }
    }

    else
    {
      sub_258CBEBC0();

      v4 = 0xD000000000000013;
    }

    goto LABEL_12;
  }

  if (((v2 >> 3) & 7) <= 4)
  {
    if (v3 == 3)
    {
      sub_258CBEBC0();

      v4 = 0xD000000000000014;
LABEL_12:
      v9 = v4;
      v6 = sub_258CBEC20();
      MEMORY[0x259C97D30](v6);

      return v9;
    }

    return 0xD000000000000010;
  }

  result = 0xD000000000000010;
  if (v3 == 5)
  {
    return result;
  }

  v7 = v0[1];
  if (v2 == 48 && (v7 | v1) == 0)
  {
    return 0xD000000000000011;
  }

  if (v2 == 48 && v1 == 1 && !v7)
  {
    return 0xD000000000000014;
  }

  if (v2 == 48 && v1 == 2 && !v7)
  {
    return 0xD000000000000022;
  }

  if (v2 == 48 && v1 == 3 && !v7)
  {
    return 0xD00000000000001FLL;
  }

  if (v2 == 48 && v1 == 4 && !v7)
  {
    return 0xD00000000000002BLL;
  }

  if (v2 == 48 && v1 == 5 && !v7)
  {
    return 0xD000000000000011;
  }

  if (v2 == 48 && v1 == 6 && !v7)
  {
    return 0xD000000000000017;
  }

  if (v2 == 48 && v1 == 7 && !v7)
  {
    return 0xD000000000000013;
  }

  if (v2 == 48 && v1 == 8 && !v7 || v2 == 48 && v1 == 9 && !v7)
  {
    return 0xD000000000000020;
  }

  if (v2 == 48 && v1 == 10 && !v7)
  {
    return 0xD00000000000001FLL;
  }

  return result;
}

uint64_t MSCMSError.errorCode.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 >> 3) & 7;
  if (v2 <= 2)
  {
    v4 = -7;
    if (v2 != 1)
    {
      v4 = -15;
    }

    if (v2)
    {
      return v4;
    }

    else
    {
      return -6;
    }
  }

  else if (((v1 >> 3) & 7) > 4)
  {
    if (v2 == 5)
    {
      return 2;
    }

    else
    {
      v5 = *v0;
      v6 = v0[1];
      if (v1 == 48 && *v0 == 0)
      {
        return -1;
      }

      else if (v1 == 48 && v5 == 1 && !v6)
      {
        return -2;
      }

      else if (v1 == 48 && v5 == 2 && !v6)
      {
        return -3;
      }

      else if (v1 == 48 && v5 == 3 && !v6)
      {
        return -4;
      }

      else if (v1 == 48 && v5 == 4 && !v6)
      {
        return -5;
      }

      else if (v1 == 48 && v5 == 5 && !v6)
      {
        return -8;
      }

      else if (v1 == 48 && v5 == 6 && !v6)
      {
        return -9;
      }

      else if (v1 == 48 && v5 == 7 && !v6)
      {
        return -10;
      }

      else if (v1 == 48 && v5 == 8 && !v6)
      {
        return -11;
      }

      else if (v1 == 48 && v5 == 9 && !v6)
      {
        return -12;
      }

      else
      {
        if (v6)
        {
          v8 = 0;
        }

        else
        {
          v8 = v5 == 10;
        }

        if (v8 && v1 == 48)
        {
          return -13;
        }

        else
        {
          return -14;
        }
      }
    }
  }

  else if (v2 == 3)
  {
    return -16;
  }

  else
  {
    return 1;
  }
}

unint64_t MSCMSError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = sub_258CB76A8(MEMORY[0x277D84F90]);
  *&v21 = v1;
  *(&v21 + 1) = v2;
  v22 = v3;
  v5 = MSCMSError.errorDescription.getter();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = *MEMORY[0x277CCA450];
    v10 = sub_258CBEAD0();
    v12 = v11;
    v23 = MEMORY[0x277D837D0];
    *&v21 = v7;
    *(&v21 + 1) = v8;
    sub_258CB03E0(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_258CB7290(v20, v10, v12, isUniquelyReferenced_nonNull_native);
  }

  if ((v3 & 0x30) == 0x20)
  {
    v14 = *MEMORY[0x277CCA7E8];
    v15 = sub_258CBEAD0();
    v17 = v16;
    v23 = &type metadata for MSCMSContentTypeError;
    *&v21 = v1;
    *(&v21 + 1) = v2;
    v22 = v3 & 0xC7;
    sub_258CB03E0(&v21, v20);
    sub_258CB78AC(v1, v2, v3);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_258CB7290(v20, v15, v17, v18);
  }

  return v4;
}

uint64_t sub_258CB6B78()
{
  v1 = *(v0 + 16);
  v2 = (v1 >> 3) & 7;
  if (v2 <= 2)
  {
    v4 = -7;
    if (v2 != 1)
    {
      v4 = -15;
    }

    if (v2)
    {
      return v4;
    }

    else
    {
      return -6;
    }
  }

  else if (((v1 >> 3) & 7) > 4)
  {
    if (v2 == 5)
    {
      return 2;
    }

    else
    {
      v5 = *v0;
      v6 = v0[1];
      if (v1 == 48 && *v0 == 0)
      {
        return -1;
      }

      else if (v1 == 48 && v5 == 1 && !v6)
      {
        return -2;
      }

      else if (v1 == 48 && v5 == 2 && !v6)
      {
        return -3;
      }

      else if (v1 == 48 && v5 == 3 && !v6)
      {
        return -4;
      }

      else if (v1 == 48 && v5 == 4 && !v6)
      {
        return -5;
      }

      else if (v1 == 48 && v5 == 5 && !v6)
      {
        return -8;
      }

      else if (v1 == 48 && v5 == 6 && !v6)
      {
        return -9;
      }

      else if (v1 == 48 && v5 == 7 && !v6)
      {
        return -10;
      }

      else if (v1 == 48 && v5 == 8 && !v6)
      {
        return -11;
      }

      else if (v1 == 48 && v5 == 9 && !v6)
      {
        return -12;
      }

      else
      {
        if (v6)
        {
          v8 = 0;
        }

        else
        {
          v8 = v5 == 10;
        }

        if (v8 && v1 == 48)
        {
          return -13;
        }

        else
        {
          return -14;
        }
      }
    }
  }

  else if (v2 == 3)
  {
    return -16;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_258CB6D0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_258CBEC90();
  sub_258CBEAF0();
  v6 = sub_258CBECA0();

  return sub_258CB744C(a1, a2, v6);
}

double sub_258CB6D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_258CB6D0C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_258CB7504();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_258CB03E0((*(v12 + 56) + 32 * v9), a3);
    sub_258CB70E0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_258CB6E28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97DA60, &qword_258CC27A0);
  v36 = a2;
  result = sub_258CBEC00();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_258CB03E0(v25, v37);
      }

      else
      {
        sub_258CB5800(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_258CBEC90();
      sub_258CBEAF0();
      result = sub_258CBECA0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_258CB03E0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_258CB70E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258CBEBB0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_258CBEC90();

      sub_258CBEAF0();
      v14 = sub_258CBECA0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_258CB7290(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_258CB6D0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_258CB7504();
      v11 = v19;
      goto LABEL_8;
    }

    sub_258CB6E28(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_258CB6D0C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_258CBEC40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_258CB03E0(a1, v23);
  }

  else
  {
    sub_258CB73E0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_258CB73E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_258CB03E0(a4, (a5[7] + 32 * a1));
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

unint64_t sub_258CB744C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_258CBEC30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_258CB7504()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97DA60, &qword_258CC27A0);
  v2 = *v0;
  v3 = sub_258CBEBF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_258CB5800(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_258CB03E0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_258CB76A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97DA60, &qword_258CC27A0);
    v3 = sub_258CBEC10();
    v4 = a1 + 32;

    while (1)
    {
      sub_258CB7D50(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_258CB6D0C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_258CB03E0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_258CB77B8()
{
  result = qword_27F97DA28;
  if (!qword_27F97DA28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F97DA28);
  }

  return result;
}

uint64_t sub_258CB7804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97DA30, &qword_258CC1FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258CB786C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
  }

  return sub_258CB7898(result, a2, a3 & 0x3F);
}

uint64_t sub_258CB7898(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_258CB78AC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0x30) == 0x20)
  {
    return sub_258CB786C(result, a2, a3 & 0xC7);
  }

  return result;
}

unint64_t sub_258CB78C8()
{
  result = qword_27F97DA38;
  if (!qword_27F97DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F97DA38);
  }

  return result;
}

unint64_t sub_258CB7920()
{
  result = qword_27F97DA40;
  if (!qword_27F97DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F97DA40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15MessageSecurity17MSCMSContentErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_258CB79A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_258CB79F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_258CB7A38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_258CB7A6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_258CB7ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15MessageSecurity10MSCMSErrorO(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 3) & 7;
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_258CB7B60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA && *(a1 + 17))
  {
    return (*a1 + 10);
  }

  v3 = ((2 * *(a1 + 16)) & 8 | (*(a1 + 16) >> 3) & 7) ^ 0xF;
  if (v3 >= 9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_258CB7BB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    *(result + 16) = 0;
    *result = a2 - 10;
    *(result + 8) = 0;
    if (a3 >= 0xA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * ((((-a2 & 8) != 0) - 2 * a2) & 0xF);
    }
  }

  return result;
}

uint64_t sub_258CB7C18(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 16) = *(result + 16) & 0xC3 | (8 * a2);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    *(result + 16) = 48;
  }

  return result;
}

unint64_t sub_258CB7C54()
{
  result = qword_27F97DA48;
  if (!qword_27F97DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F97DA48);
  }

  return result;
}

unint64_t sub_258CB7CA8()
{
  result = qword_27F97DA50;
  if (!qword_27F97DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F97DA50);
  }

  return result;
}

unint64_t sub_258CB7CFC()
{
  result = qword_27F97DA58;
  if (!qword_27F97DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F97DA58);
  }

  return result;
}

uint64_t sub_258CB7D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97DA68, &qword_258CC27A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id MSCMSTimestampAttributeInternal.attributeType.getter()
{
  v1 = OBJC_IVAR___MSCMSTimestampAttributeInternal_attributeType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MSCMSTimestampAttributeInternal.attributeType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSTimestampAttributeInternal_attributeType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

__n128 sub_258CB7F98@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___MSCMSTimestampAttributeInternal_tstinfo;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v3 + 128);
  v5 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v5;
  v6 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v6;
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_258CB8008(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MSCMSTimestampAttributeInternal_tstinfo;
  swift_beginAccess();
  v4 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(a1 + 128);
  v5 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v5;
  v6 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v6;
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

void *sub_258CB80D8()
{
  v1 = OBJC_IVAR___MSCMSTimestampAttributeInternal_signedData;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_258CB8124(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSTimestampAttributeInternal_signedData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MSCMSTimestampAttributeInternal.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  free_TSTInfo();
  swift_endAccess();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void MSCMSTimestampAttributeInternal.init(attribute:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___MSCMSTimestampAttributeInternal_signedData;
  *&v1[OBJC_IVAR___MSCMSTimestampAttributeInternal_signedData] = 0;
  v6 = [a1 attributeType];
  v7 = [v6 isEqualToString_];

  if (!v7)
  {
    sub_258CAFE28();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 48;
    swift_willThrow();
LABEL_9:

    swift_deallocPartialClassInstance();
    return;
  }

  v8 = [a1 attributeType];
  v9 = OBJC_IVAR___MSCMSTimestampAttributeInternal_attributeType;
  *&v1[OBJC_IVAR___MSCMSTimestampAttributeInternal_attributeType] = v8;
  v10 = [a1 attributeValues];
  v11 = sub_258CBEB30();

  v12 = *(v11 + 16);

  if (v12 != 1)
  {
    sub_258CAFE28();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 48;
    swift_willThrow();

    goto LABEL_8;
  }

  v13 = [a1 attributeValues];
  v14 = sub_258CBEB30();

  if (v14[2])
  {
    v15 = v14[4];
    v16 = v14[5];
    sub_258CA85E0(v15, v16);

    sub_258CB93B0(v28);
    if (v2)
    {

      sub_258CA82B8(v15, v16);
LABEL_8:
      a1 = *&v1[v9];
      goto LABEL_9;
    }

    sub_258CA82B8(v15, v16);
    v19 = v30;
    swift_beginAccess();
    v20 = *&v1[v5];
    *&v1[v5] = v19;
    sub_258CB984C(v28, v27);

    sub_258CB9884(v28);
    v21 = &v1[OBJC_IVAR___MSCMSTimestampAttributeInternal_tstinfo];
    v22 = v28[7];
    *(v21 + 6) = v28[6];
    *(v21 + 7) = v22;
    *(v21 + 16) = v29;
    v23 = v28[3];
    *(v21 + 2) = v28[2];
    *(v21 + 3) = v23;
    v24 = v28[5];
    *(v21 + 4) = v28[4];
    *(v21 + 5) = v24;
    v25 = v28[1];
    *v21 = v28[0];
    *(v21 + 1) = v25;
    v26.receiver = v1;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, sel_init);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_258CB8624@<Q0>(uint64_t a1@<X8>)
{
  sub_258CB93B0(v7);
  if (!v1)
  {
    v4 = v7[7];
    *(a1 + 96) = v7[6];
    *(a1 + 112) = v4;
    *(a1 + 128) = v7[8];
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    v6 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v6;
    result = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t MSCMSTimestampAttributeInternal.init(timestampToken:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR___MSCMSTimestampAttributeInternal_signedData;
  *&v2[OBJC_IVAR___MSCMSTimestampAttributeInternal_signedData] = 0;
  sub_258CBEAD0();
  v8 = objc_allocWithZone(MSOID);
  v9 = sub_258CAEABC();
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR___MSCMSTimestampAttributeInternal_attributeType] = v9;
    sub_258CB93B0(v21);
    v10 = v23;
    swift_beginAccess();
    v11 = *&v2[v7];
    *&v2[v7] = v10;
    sub_258CB984C(v21, v20);

    sub_258CB9884(v21);
    v12 = &v2[OBJC_IVAR___MSCMSTimestampAttributeInternal_tstinfo];
    v13 = v21[7];
    *(v12 + 6) = v21[6];
    *(v12 + 7) = v13;
    *(v12 + 16) = v22;
    v14 = v21[3];
    *(v12 + 2) = v21[2];
    *(v12 + 3) = v14;
    v15 = v21[5];
    *(v12 + 4) = v21[4];
    *(v12 + 5) = v15;
    v16 = v21[1];
    *v12 = v21[0];
    *(v12 + 1) = v16;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v19, sel_init);
    sub_258CA82B8(a1, a2);
    return v17;
  }

  return result;
}

__n128 sub_258CB89B4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_258CB89E0(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v2;
  *(v1 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v3;
  v4 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v4;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

void *sub_258CB8A2C()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

__n128 sub_258CB8AA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v3;
  v4 = *(a1 + 128);
  v5 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v5;
  v6 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v6;
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 128) = v4;
  *(a3 + 136) = a2;
  return result;
}

void MSCMSTimestampAttributeInternal.verifyTimestamp(expectedMessageDigest:)(uint64_t a1, unint64_t a2)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v5 = OBJC_IVAR___MSCMSTimestampAttributeInternal_signedData;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v20[0] = 0;
    v7 = v6;
    v8 = [v7 verifySignatures_];
    v9 = v20[0];
    if (v8)
    {
      v10 = v2 + OBJC_IVAR___MSCMSTimestampAttributeInternal_tstinfo;
      swift_beginAccess();
      v11 = v9;
      v12 = NSDataFromOctetString((v10 + 48));
      swift_endAccess();
      v13 = sub_258CBEA80();
      v15 = v14;

      if ((sub_258CB996C(a1, a2, v13, v15) & 1) == 0)
      {
        sub_258CB7920();
        swift_allocError();
        *v16 = xmmword_258CC27B0;
        *(v16 + 16) = -125;
        swift_willThrow();
      }

      sub_258CA82B8(v13, v15);
    }

    else
    {
      v18 = v20[0];
      sub_258CBEA10();

      swift_willThrow();
    }
  }

  else
  {
    sub_258CB7920();
    swift_allocError();
    *v17 = xmmword_258CC27B0;
    *(v17 + 16) = 67;
    swift_willThrow();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MSCMSTimestampAttributeInternal.encodeAttribute()(MSCMSAttribute *__return_ptr retstr)
{
  sub_258CAFE28();
  swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 48;
  swift_willThrow();
}

NSDate __swiftcall MSCMSTimestampAttributeInternal.timestampToken()()
{
  v1 = v0 + OBJC_IVAR___MSCMSTimestampAttributeInternal_tstinfo;
  swift_beginAccess();
  return [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970_];
}

id MSCMSTimestampAttributeInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_258CB8FF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_258CBE980();
    if (v10)
    {
      v11 = sub_258CBE9B0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_258CBE9A0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_258CBE980();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_258CBE9B0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_258CBE9A0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_258CB9220(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_258CB98B4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_258CA82B8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_258CB8FF0(v14, a3, a4, &v13);
  v10 = v4;
  sub_258CA82B8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void sub_258CB93B0(uint64_t a1@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_258CBEA60();
  *&v47 = 0;
  v4 = [v2 decodeMessageSecurityObject:v3 options:0 error:&v47];

  if (!v4)
  {
    v18 = v47;
    v19 = sub_258CBEA10();

    swift_willThrow();
    goto LABEL_13;
  }

  v5 = v47;
  v6 = [v4 contentType];
  v7 = [v6 isEqualToString_];

  if (!v7)
  {
    v20 = [v4 contentType];
    v21 = [v20 OIDString];

    v22 = sub_258CBEAD0();
    v24 = v23;

    sub_258CAFE28();
    v19 = swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    v26 = 96;
LABEL_12:
    *(v25 + 16) = v26;
    swift_willThrow();

    goto LABEL_13;
  }

  if (![v4 embeddedContent])
  {
LABEL_11:
    sub_258CAFE28();
    v19 = swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    v26 = 99;
    goto LABEL_12;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 contentType];
  v11 = [v10 isEqualToString_];

  if (v11)
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v12 = [v9 dataContent];
    if (v12)
    {
      v13 = v12;
      v14 = sub_258CBEA80();
      v16 = v15;

      v17 = sub_258CBEA60();
      sub_258CA82B8(v14, v16);
    }

    else
    {
      v17 = 0;
    }

    v38 = nsheim_decode_TSTInfo(v17);

    if (v38)
    {
      sub_258CB78C8();
      v19 = swift_allocError();
      *v39 = v38;
      *(v39 + 8) = 0;
      v40 = 1;
    }

    else
    {
      v41 = v47;
      if (v47 == 1)
      {

        v42 = v54;
        *(a1 + 96) = v53;
        *(a1 + 112) = v42;
        v43 = v55;
        v44 = v50;
        *(a1 + 32) = v49;
        *(a1 + 48) = v44;
        v45 = v52;
        *(a1 + 64) = v51;
        *(a1 + 80) = v45;
        v46 = v48;
        *a1 = v47;
        *(a1 + 16) = v46;
        *(a1 + 128) = v43;
        *(a1 + 136) = v9;
        goto LABEL_16;
      }

      sub_258CB78C8();
      v19 = swift_allocError();
      *v39 = v41;
      *(v39 + 8) = 0;
      v40 = 2;
    }

    *(v39 + 16) = v40;
  }

  else
  {
    v32 = [v9 contentType];
    v33 = [v32 OIDString];

    v34 = sub_258CBEAD0();
    v36 = v35;

    sub_258CB78C8();
    v19 = swift_allocError();
    *v37 = v34;
    *(v37 + 8) = v36;
    *(v37 + 16) = 0;
  }

  swift_willThrow();

  swift_unknownObjectRelease();
LABEL_13:
  v27 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97DA90, &qword_258CC2860);
  if (swift_dynamicCast())
  {

    v28 = v47;
    v29 = v48 | 0xA0;
    sub_258CAFE28();
    swift_allocError();
    *v30 = v28;
    *(v30 + 16) = v29;
    swift_willThrow();
  }

LABEL_16:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t sub_258CB98B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_258CBE980();
  v11 = result;
  if (result)
  {
    result = sub_258CBE9B0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_258CBE9A0();
  sub_258CB8FF0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_258CB996C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_258CA85E0(a3, a4);
          return sub_258CB9220(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_258CB9B8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
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

uint64_t sub_258CB9BE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
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

uint64_t sub_258CB9CA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258CB9CC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
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

  *(result + 136) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

CFTypeRef findItemInAllAvailableKeychains(void *a1)
{
  v1 = a1;
  result = 0;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [v1 objectForKeyedSubscript:*MEMORY[0x277CDC428]];
  v4 = [v3 isEqual:*MEMORY[0x277CDC430]];
  v5 = *MEMORY[0x277CDC5C8];
  v6 = [v1 objectForKeyedSubscript:*MEMORY[0x277CDC5C8]];
  if (!v6 || (v7 = v6, [v1 objectForKeyedSubscript:v5], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, v7, v9))
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v1];
    [v10 setObject:MEMORY[0x277CBEC38] forKey:v5];
    [v10 setObject:*MEMORY[0x277CDC148] forKey:*MEMORY[0x277CDC140]];
    if (SecItemCopyMatching(v10, &result))
    {
      v11 = 1;
    }

    else
    {
      v11 = v4;
    }

    if (v11 != 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_1_0();
    if (v13 == 1 && (v14 = CFGetTypeID(v12), v14 == CFArrayGetTypeID()))
    {
      [v2 addObjectsFromArray:result];
    }

    else
    {
      OUTLINED_FUNCTION_1_0();
      if (v19 != 1)
      {
        goto LABEL_15;
      }

      [v2 addObject:?];
    }

    v18 = result;
LABEL_15:
    if (v18)
    {
      result = 0;
      CFRelease(v18);
    }

    goto LABEL_17;
  }

  v10 = 0;
LABEL_17:
  v20 = _SecSecuritydCopyWhoAmI();
  v17 = v20;
  v15 = 0;
  if (!v20)
  {
    v16 = 0;
    goto LABEL_32;
  }

  v16 = [v20 objectForKey:@"status"];

  if (!v16)
  {
    goto LABEL_31;
  }

  v16 = [v17 objectForKey:@"musr"];
  v21 = [v17 objectForKey:@"system-keychain"];
  if (!v21 || !v16 || [v16 length] != 16)
  {

    goto LABEL_31;
  }

  v22 = memcmp(&unk_258CC1700, [v16 bytes], 0xCuLL);

  if (v22)
  {
LABEL_31:
    v15 = 0;
    goto LABEL_32;
  }

  v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v1];
  [v15 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC5D0]];
  if (SecItemCopyMatching(v15, &result))
  {
    v23 = 1;
  }

  else
  {
    v23 = v4;
  }

  if (v23 != 1)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_0();
  if (v25 == 1 && (v26 = CFGetTypeID(v24), v26 == CFArrayGetTypeID()))
  {
    [v2 addObjectsFromArray:result];
  }

  else
  {
    OUTLINED_FUNCTION_1_0();
    if (v30 != 1)
    {
      goto LABEL_40;
    }

    [v2 addObject:?];
  }

  v29 = result;
LABEL_40:
  if (v29)
  {
    result = 0;
    CFRelease(v29);
  }

LABEL_32:
  v27 = result;
  if (v4)
  {
    if (result)
    {
      result = 0;
      CFRelease(v27);
    }

    v27 = v2;
    result = v27;
  }

  return v27;
}

void __findCertificateByEmailAddress_block_invoke_92(uint64_t a1, void *a2)
{
  v4 = a2;
  OUTLINED_FUNCTION_0_0();
  v6 = MSSecTrustCreateWithError(v5, 0, 0, 0, &obj);
  objc_storeStrong(v3, obj);
  if (v6)
  {
    if (SecTrustEvaluateWithError(v6, 0))
    {
      OUTLINED_FUNCTION_2_0();
    }

    CFRelease(v6);
  }
}

void __findIdentityByEmailAddress_block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  OUTLINED_FUNCTION_0_0();
  v7 = MSSecIdentityCopyCertificateWithError(v6, &obj);
  objc_storeStrong(v3, obj);
  v8 = *(*(a1 + 32) + 8);
  v10 = *(v8 + 40);
  v9 = MSSecTrustCreateWithError(v7, 0, 0, 0, &v10);
  objc_storeStrong((v8 + 40), v10);
  if (v9)
  {
    if (SecTrustEvaluateWithError(v9, 0))
    {
      OUTLINED_FUNCTION_2_0();
    }

    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}