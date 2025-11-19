id sub_25C3352CC(char *a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  ObjectType = swift_getObjectType();
  v8 = *a3;
  a4(0);
  *&a1[v8] = swift_allocObject();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t variable initialization expression of URLHasher.stringHasher()
{
  type metadata accessor for StringHasher();

  return swift_allocObject();
}

uint64_t variable initialization expression of ObjCHashBucketer.hashBucketer()
{
  type metadata accessor for HashBucketer();

  return swift_allocObject();
}

uint64_t variable initialization expression of ObjCURLCanonicalizer.urlCanonicalizer()
{
  type metadata accessor for URLCanonicalizer();

  return swift_allocObject();
}

uint64_t variable initialization expression of ObjCURLHasher.urlHasher()
{
  type metadata accessor for URLHasher();
  v0 = swift_allocObject();
  type metadata accessor for StringHasher();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t _s13NewsURLBucket12HashBucketerC6bucket3for0E5CountSi10Foundation4DataV_SitF_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2 >> 62;
  v28 = *MEMORY[0x277D85DE8];
  v20 = a1 >> 32;
  v21 = BYTE6(a2);
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a1 + 24);
      sub_25C335BCC(a1, a2);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    sub_25C335BCC(a1, a2);
    v7 = v20;
  }

  else
  {
    v7 = BYTE6(a2);
  }

  for (i = 0; ; i = v17 % a3)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (v7 == *(a1 + 16))
        {
          goto LABEL_40;
        }

        goto LABEL_18;
      }
    }

    else if (v6)
    {
      if (v7 == a1)
      {
        goto LABEL_40;
      }

      goto LABEL_18;
    }

    if (!v7)
    {
      goto LABEL_40;
    }

LABEL_18:
    if (__OFSUB__(v7--, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_50;
      }

      if (v7 < *(a1 + 16))
      {
        goto LABEL_44;
      }

      if (v7 >= *(a1 + 24))
      {
        goto LABEL_47;
      }

      v11 = sub_25C339B50();
      if (!v11)
      {
        goto LABEL_52;
      }

      v12 = v11;
      v13 = sub_25C339B80();
      v14 = v7 - v13;
      if (__OFSUB__(v7, v13))
      {
        goto LABEL_49;
      }

      goto LABEL_34;
    }

    if (v6)
    {
      if (v7 < a1 || v7 >= v20)
      {
        goto LABEL_46;
      }

      v15 = sub_25C339B50();
      if (!v15)
      {
        goto LABEL_51;
      }

      v12 = v15;
      v16 = sub_25C339B80();
      v14 = v7 - v16;
      if (__OFSUB__(v7, v16))
      {
        goto LABEL_48;
      }

LABEL_34:
      v10 = *(v12 + v14);
      goto LABEL_35;
    }

    if (v7 >= v21)
    {
      goto LABEL_45;
    }

    v22 = a1;
    v23 = a2;
    v24 = BYTE2(a2);
    v25 = BYTE3(a2);
    v26 = BYTE4(a2);
    v27 = BYTE5(a2);
    v10 = *(&v22 + v7);
LABEL_35:
    if ((i - 0x80000000000000) >> 56 != 255)
    {
      goto LABEL_42;
    }

    if (!a3)
    {
      goto LABEL_43;
    }

    v17 = v10 | (i << 8);
    if (v17 == 0x8000000000000000 && a3 == -1)
    {
      break;
    }
  }

  __break(1u);
LABEL_40:
  sub_25C335C20(a1, a2);
  v18 = *MEMORY[0x277D85DE8];
  return i;
}

uint64_t sub_25C335BCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25C335C20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t BloomFilterReaderWriter.QueryResult.hashValue.getter(char a1)
{
  sub_25C339E60();
  MEMORY[0x25F884490](a1 & 1);
  return sub_25C339E80();
}

uint64_t sub_25C335D0C()
{
  v1 = *v0;
  sub_25C339E60();
  MEMORY[0x25F884490](v1);
  return sub_25C339E80();
}

uint64_t sub_25C335D80()
{
  v1 = *v0;
  sub_25C339E60();
  MEMORY[0x25F884490](v1);
  return sub_25C339E80();
}

uint64_t BloomFilterReaderWriter.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_25C335BCC(v1, *(v0 + 80));
  return v1;
}

Swift::Void __swiftcall BloomFilterReaderWriter.add(_:)(Swift::String a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  if (v2 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  if (v2)
  {
    v3 = v1;
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v6 = 0;
    while (1)
    {
      v8 = sub_25C336048(countAndFlagsBits, object);
      swift_beginAccess();
      v9 = *(v3 + 72);
      v10 = *(v3 + 80);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        break;
      }

      if (v11)
      {
        if (v8 >= v9 >> 32 || v8 < v9)
        {
          goto LABEL_28;
        }

        v18 = sub_25C339B50();
        if (!v18)
        {
          goto LABEL_33;
        }

        v14 = v18;
        v19 = sub_25C339B80();
        v16 = v8 - v19;
        if (__OFSUB__(v8, v19))
        {
          __break(1u);
          goto LABEL_25;
        }

LABEL_4:
        v7 = *(v14 + v16);
        goto LABEL_5;
      }

      if (v8 >= BYTE6(v10))
      {
        goto LABEL_27;
      }

      v21 = *(v3 + 72);
      v22 = v10;
      v23 = BYTE2(v10);
      v24 = BYTE3(v10);
      v25 = BYTE4(v10);
      v26 = BYTE5(v10);
      v12 = *(&v21 + v8);
LABEL_5:
      ++v6;
      swift_endAccess();
      swift_beginAccess();
      sub_25C339CA0();
      swift_endAccess();
      if (v2 == v6)
      {
        goto LABEL_25;
      }
    }

    if (v11 != 2)
    {
      goto LABEL_32;
    }

    if (v8 < *(v9 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v8 >= *(v9 + 24))
    {
      goto LABEL_29;
    }

    v13 = sub_25C339B50();
    if (!v13)
    {
      goto LABEL_34;
    }

    v14 = v13;
    v15 = sub_25C339B80();
    v16 = v8 - v15;
    if (__OFSUB__(v8, v15))
    {
      goto LABEL_30;
    }

    goto LABEL_4;
  }

LABEL_25:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25C336048(uint64_t a1, unint64_t a2)
{
  v5 = sub_25C339E40();
  v7 = v6;

  MEMORY[0x25F8843A0](v5, v7);

  v8 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(a1, a2, 0x7FFFFFFFFFFFFFFFLL);
  v10 = v9;

  v11 = v2[7];
  v12 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v11);
  result = swift_beginAccess();
  v14 = v2[9];
  v15 = v2[10];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    v17 = 0;
    if (v16 != 2)
    {
      goto LABEL_10;
    }

    v19 = v14 + 16;
    v14 = *(v14 + 16);
    v18 = *(v19 + 8);
    v17 = v18 - v14;
    if (!__OFSUB__(v18, v14))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v15);
LABEL_10:
    v22 = (*(v12 + 8))(v8, v10, v17, v11, v12);
    sub_25C335C20(v8, v10);
    return v22 / 8;
  }

  v20 = __OFSUB__(HIDWORD(v14), v14);
  v21 = HIDWORD(v14) - v14;
  if (!v20)
  {
    v17 = v21;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

NewsURLBucket::BloomFilterReaderWriter::QueryResult __swiftcall BloomFilterReaderWriter.contains(_:)(Swift::String a1)
{
  v2 = v1;
  v56 = a1;
  v67 = *MEMORY[0x277D85DE8];
  v53 = sub_25C339D20();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x28223BE20])();
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_25C339D10();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x28223BE20])();
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2[2];
  if (v57 >= 1)
  {
    swift_beginAccess();
    v9 = 0;
    v50 = (v6 + 8);
    v51 = (v3 + 8);
    while (1)
    {
      v58 = v57 != v9;
      if (v57 == v9)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_40:
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
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v59 = v9;
      v66._countAndFlagsBits = v9;
      v11 = sub_25C339E40();
      v13 = v12;
      v66 = v56;

      MEMORY[0x25F8843A0](v11, v13);

      v14 = v66;

      v15 = sub_25C3367EC(v14._countAndFlagsBits, v14._object);
      v17 = v16;
      sub_25C3377B8();
      v18 = v52;
      v19 = v53;
      sub_25C339CF0();
      sub_25C335BCC(v15, v17);
      sub_25C33731C(v15, v17);
      sub_25C335C20(v15, v17);
      v20 = v54;
      sub_25C339CE0();
      v21 = (*v51)(v18, v19);
      MEMORY[0x28223BE20](v21);
      *(&v50 - 2) = 0x7FFFFFFFFFFFFFFFLL;
      sub_25C339D00();
      sub_25C335C20(v15, v17);
      (*v50)(v20, v55);

      v22 = v66;
      v23 = v2[7];
      v24 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v23);
      v25 = v2[9];
      v26 = v2[10];
      v27 = v26 >> 62;
      if ((v26 >> 62) > 1)
      {
        if (v27 == 2)
        {
          v31 = v25 + 16;
          v29 = *(v25 + 16);
          v30 = *(v31 + 8);
          v28 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            goto LABEL_45;
          }
        }

        else
        {
          v28 = 0;
        }
      }

      else if (v27)
      {
        v32 = __OFSUB__(HIDWORD(v25), v25);
        v33 = HIDWORD(v25) - v25;
        if (v32)
        {
          goto LABEL_46;
        }

        v28 = v33;
      }

      else
      {
        v28 = BYTE6(v26);
      }

      v34 = (*(v24 + 8))(v22._countAndFlagsBits, v22._object, v28, v23, v24);
      sub_25C335C20(v22._countAndFlagsBits, v22._object);
      v35 = v34 / 8;
      v37 = v34 - (v36 & 0xFFFFFFFFFFFFFFF8);
      v38 = v37 >= 0 ? 1 << v37 : 0;
      swift_beginAccess();
      v39 = v2[9];
      v40 = v2[10];
      v41 = v40 >> 62;
      if ((v40 >> 62) > 1)
      {
        break;
      }

      if (v41)
      {
        if (v35 >= v39 >> 32 || v35 < v39)
        {
          goto LABEL_42;
        }

        v46 = sub_25C339B50();
        if (!v46)
        {
          goto LABEL_48;
        }

        v43 = v46;
        v47 = sub_25C339B80();
        v45 = v35 - v47;
        if (__OFSUB__(v35, v47))
        {
          __break(1u);
          goto LABEL_37;
        }

        goto LABEL_3;
      }

      if (v35 >= BYTE6(v40))
      {
        goto LABEL_41;
      }

      v60 = v2[9];
      v61 = v40;
      v62 = BYTE2(v40);
      v63 = BYTE3(v40);
      v64 = BYTE4(v40);
      v65 = BYTE5(v40);
      v10 = *(&v60 + v35);
LABEL_4:
      swift_endAccess();
      v9 = v59 + 1;
      if ((v10 & v38) == 0)
      {
        goto LABEL_38;
      }
    }

    if (v41 != 2)
    {
      goto LABEL_47;
    }

    if (v35 < *(v39 + 16))
    {
      goto LABEL_40;
    }

    if (v35 >= *(v39 + 24))
    {
      goto LABEL_43;
    }

    v42 = sub_25C339B50();
    if (!v42)
    {
      goto LABEL_49;
    }

    v43 = v42;
    v44 = sub_25C339B80();
    v45 = v35 - v44;
    if (__OFSUB__(v35, v44))
    {
      goto LABEL_44;
    }

LABEL_3:
    v10 = *(v43 + v45);
    goto LABEL_4;
  }

LABEL_37:
  v58 = 1;
LABEL_38:
  v48 = *MEMORY[0x277D85DE8];
  return v58;
}

void *BloomFilterReaderWriter.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  sub_25C335C20(v0[9], v0[10]);
  return v0;
}

uint64_t BloomFilterReaderWriter.__deallocating_deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  sub_25C335C20(v0[9], v0[10]);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_25C3367EC(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FB8, &qword_25C33A4E8);
  if (swift_dynamicCast())
  {
    sub_25C337BDC(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_25C339BA0();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25C337AF8(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25C339E30();
  }

  sub_25C336CFC(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25C337618(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20]();
  v10 = sub_25C336DC4(sub_25C337B60);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25C339C80();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25C33754C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25C339DA0();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25C339DD0();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25C339E30();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25C33754C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25C339DB0();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_25C339C90();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_25C339C90();
    sub_25C337BC8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_25C337BC8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25C335BCC(*&__src[0], *(&__src[0] + 1));

  sub_25C335C20(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_25C336CFC@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25C33979C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_25C339B90();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_25C339B40();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25C339C70();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_25C336DC4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_25C335C20(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25C335C20(v6, v5);
    *v3 = xmmword_25C33A3B0;
    sub_25C335C20(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25C339B50() && __OFSUB__(v6, sub_25C339B80()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_25C339B90();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_25C339B30();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_25C337268(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_25C335C20(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_25C33A3B0;
    sub_25C335C20(0, 0xC000000000000000);
    sub_25C339C60();
    result = sub_25C337268(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_25C337168@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25C33979C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25C3376B8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25C337734(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25C3371FC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25C337268(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25C339B50();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25C339B80();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25C339B70();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_25C33731C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_25C339D20();
      sub_25C3377B8();
      result = sub_25C339CD0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_25C33749C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25C33749C(uint64_t a1, uint64_t a2)
{
  result = sub_25C339B50();
  if (!result || (result = sub_25C339B80(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25C339B70();
      sub_25C339D20();
      sub_25C3377B8();
      return sub_25C339CD0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C33754C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25C339DF0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8843E0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25C3375C8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_25C339E20();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C337618(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_25C33977C(result);
    }

    else
    {
      v2 = sub_25C339B90();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25C339B60();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25C339C70();
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

uint64_t sub_25C3376B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25C339B90();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25C339B40();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25C339C70();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25C337734(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25C339B90();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25C339B40();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_25C3377B8()
{
  result = qword_27FBF5FA8;
  if (!qword_27FBF5FA8)
  {
    sub_25C339D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBF5FA8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25C3378C0()
{
  result = qword_27FBF5FB0;
  if (!qword_27FBF5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBF5FB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilterReaderWriter.QueryResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloomFilterReaderWriter.QueryResult(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_25C337AF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FC0, &qword_25C33A4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25C337B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25C3371FC(sub_25C337BF4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_25C337BC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25C335C20(a1, a2);
  }

  return a1;
}

uint64_t sub_25C337BDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t URLHasher.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for StringHasher();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t URLHasher.init()()
{
  type metadata accessor for StringHasher();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t URLHasher.hash(for:maxLength:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C339BC0();
  v5 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(v3, v4, a2);

  return v5;
}

uint64_t URLHasher.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t URLHasher.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25C337D3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C339BC0();
  v5 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(v3, v4, a2);

  return v5;
}

uint64_t URLCanonicalizer.canonicalizedURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FC8, &qword_25C33A530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FD0, &qword_25C33A538);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_25C339B20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339B10();
  sub_25C339BC0();
  sub_25C339B00();

  v16 = *(v12 + 48);
  if (!v16(v10, 1, v11))
  {
    v17 = MEMORY[0x25F8840F0]();
    if (v18)
    {
      v38 = v17;
      v39 = v18;
      v36 = 0x292B3F5C7C2B2F28;
      v37 = 0xE900000000000024;
      v34 = 0;
      v35 = 0xE000000000000000;
      v32 = v18;
      sub_25C338278();
      sub_25C339E10();
    }
  }

  if (v16(v10, 1, v11))
  {
  }

  else
  {
    sub_25C339AE0();
  }

  sub_25C339C30();
  if (v19)
  {
    sub_25C339D50();
  }

  sub_25C339AF0();
  sub_25C339C20();
  sub_25C339AC0();
  v20 = sub_25C339BF0();
  if (v21)
  {
    v22 = sub_25C339D50();
    v24 = v23;

    v20 = v22;
  }

  else
  {
    v24 = 0;
  }

  MEMORY[0x25F8840B0](v20, v24);
  if (sub_25C339C00() == 47 && v25 == 0xE100000000000000)
  {
  }

  else
  {
    v26 = sub_25C339E50();

    if ((v26 & 1) == 0)
    {
      v27 = sub_25C339C00();
      MEMORY[0x25F8840C0](v27);
    }
  }

  sub_25C339C10();
  sub_25C339AB0();
  sub_25C339A80();
  (*(v12 + 8))(v15, v11);
  v28 = sub_25C339C50();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v6, 1, v28) == 1)
  {
    (*(v29 + 16))(v33, a1, v28);
    if (v30(v6, 1, v28) != 1)
    {
      sub_25C338218(v6, &qword_27FBF5FC8, &qword_25C33A530);
    }
  }

  else
  {
    (*(v29 + 32))(v33, v6, v28);
  }

  return sub_25C338218(v10, &qword_27FBF5FD0, &qword_25C33A538);
}

uint64_t sub_25C338218(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25C338278()
{
  result = qword_27FBF5FD8;
  if (!qword_27FBF5FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBF5FD8);
  }

  return result;
}

id sub_25C3382FC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25C338924(0xD00000000000002DLL, 0x800000025C33AD10, 1);
  qword_27FBF5FE0 = result;
  return result;
}

unint64_t sub_25C338374()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FC8, &qword_25C33A530);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v32 - v2;
  v4 = sub_25C339C50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339BC0();
  v9 = sub_25C339D50();
  v11 = v10;

  if (qword_27FBF5FA0 != -1)
  {
    swift_once();
  }

  if (qword_27FBF5FE0)
  {
    v12 = qword_27FBF5FE0;
    v13 = MEMORY[0x25F884400](v9, v11);
    v14 = sub_25C339D30();
    v15 = [v12 firstMatchInString:v14 options:0 range:{0, v13}];

    if (v15)
    {
    }

    else
    {
      v33 = v9;
      v34 = v11;
      v32[2] = 0x292F2F2A2E285ELL;
      v32[3] = 0xE700000000000000;
      v32[0] = 0;
      v32[1] = 0xE000000000000000;
      sub_25C338278();
      v16 = sub_25C339E10();
      v18 = v17;

      v33 = 0x2F2F3A70747468;
      v34 = 0xE700000000000000;
      MEMORY[0x25F8843A0](v16, v18);
    }
  }

  sub_25C339C40();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25C338760(v3);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  v20 = sub_25C339BF0();
  v22 = v21;
  if (!v21)
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v19 = v20;
  if ((sub_25C3387C8() & 1) == 0)
  {
LABEL_15:
    (*(v5 + 8))(v8, v4);
    return v19;
  }

  result = sub_25C339D70();
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v24 >= result >> 14)
  {
    v25 = sub_25C339E00();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v19 = MEMORY[0x25F884380](v25, v27, v29, v31);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_25C338760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBF5FC8, &qword_25C33A530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C3387C8()
{

  v0 = sub_25C339D90();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_25C339D90();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_25C339E50();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_25C339D90();
      v3 = v5;
    }

    while (v5);
  }

  sub_25C339D90();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

id sub_25C338924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25C339D30();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_25C339BB0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_25C338C58(uint64_t *a1, void (*a2)(void))
{
  ObjectType = swift_getObjectType();
  v6 = *a1;
  a2(0);
  *&v2[v6] = swift_allocObject();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ObjCURLHasher.hash(for:maxLength:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C339BC0();
  v5 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(v3, v4, a2);

  return v5;
}

id ObjCURLHasher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjCURLHasher.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NBObjCURLHasher_urlHasher;
  type metadata accessor for URLHasher();
  v3 = swift_allocObject();
  type metadata accessor for StringHasher();
  *(v3 + 16) = swift_allocObject();
  *&v0[v2] = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ObjCBloomFilterReader.__allocating_init(data:hashFunctionCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  type metadata accessor for StringHasher();
  v8 = swift_allocObject();
  v15 = type metadata accessor for HashBucketer();
  v16 = &protocol witness table for HashBucketer;
  *&v14 = swift_allocObject();
  v9 = type metadata accessor for BloomFilterReaderWriter();
  v10 = swift_allocObject();
  v10[9] = a1;
  v10[10] = a2;
  v10[2] = a3;
  v10[3] = v8;
  sub_25C337BDC(&v14, (v10 + 4));
  v11 = &v7[OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader];
  *(v11 + 3) = v9;
  *(v11 + 4) = &protocol witness table for BloomFilterReaderWriter;
  *v11 = v10;
  v13.receiver = v7;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ObjCBloomFilterReader.init(data:hashFunctionCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for StringHasher();
  v8 = swift_allocObject();
  v15 = type metadata accessor for HashBucketer();
  v16 = &protocol witness table for HashBucketer;
  *&v14 = swift_allocObject();
  v9 = type metadata accessor for BloomFilterReaderWriter();
  v10 = swift_allocObject();
  v10[9] = a1;
  v10[10] = a2;
  v10[2] = a3;
  v10[3] = v8;
  sub_25C337BDC(&v14, (v10 + 4));
  v11 = &v3[OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader];
  *(v11 + 3) = v9;
  *(v11 + 4) = &protocol witness table for BloomFilterReaderWriter;
  *v11 = v10;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

Swift::Bool __swiftcall ObjCBloomFilterReader.maybeContains(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader + 24);
  v5 = *(v1 + OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___NBObjCBloomFilterReader_bloomFilterReader), v4);
  return ((*(v5 + 8))(countAndFlagsBits, object, v4, v5) & 1) == 0;
}

id _s13NewsURLBucket13ObjCURLHasherCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSString_optional __swiftcall NSURL.nb_domain()()
{
  v0 = sub_25C339C50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339BE0();
  sub_25C338374();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  if (!v6)
  {
    return 0;
  }

  v7 = sub_25C339D30();

  return v7;
}

id sub_25C339494(void *a1)
{
  v2 = sub_25C339C50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339BE0();
  v7 = a1;
  sub_25C338374();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v10 = sub_25C339D30();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_25C33967C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result)
  {
    if (a2 - result >= a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = a2 - result;
    }

    if (v5)
    {
      if (v5 < 15)
      {
        result = sub_25C33979C(result, (v5 + result));
        v10 = v11 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = sub_25C339B90();
        v7 = *(v6 + 48);
        v8 = *(v6 + 52);
        swift_allocObject();
        v9 = sub_25C339B40();
        if (v5 >= 0x7FFFFFFF)
        {
          sub_25C339C70();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v5;
          v10 = v9 | 0x8000000000000000;
        }

        else
        {
          result = v5 << 32;
          v10 = v9 | 0x4000000000000000;
        }
      }
    }

    else
    {
      result = 0;
      v10 = 0xC000000000000000;
    }
  }

  else
  {
    v10 = 0xC000000000000000;
  }

  *a4 = result;
  a4[1] = v10;
  return result;
}

unint64_t sub_25C33977C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25C33979C(_BYTE *__src, _BYTE *a2)
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

uint64_t _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = sub_25C339D20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25C339D10();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_25C3367EC(a1, a2);
  v16 = v15;
  sub_25C3377B8();
  sub_25C339CF0();
  sub_25C335BCC(v14, v16);
  sub_25C33731C(v14, v16);
  sub_25C335C20(v14, v16);
  sub_25C339CE0();
  (*(v6 + 8))(v9, v5);
  v20 = v19;
  sub_25C339D00();
  sub_25C335C20(v14, v16);
  (*(v10 + 8))(v13, v18);
  return v21;
}