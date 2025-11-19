uint64_t sub_1AE4CA878(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1AE4EB150())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v23 = MEMORY[0x1E69E7CC0];
    sub_1AE4D85DC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v23;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1B2701540](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
      }

      v20 = v10;
      a1(&v21, &v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v21;
      v12 = v22;
      v23 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = v21;
        v16 = v22;
        sub_1AE4D85DC((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v18;
        v7 = v23;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_1AE4CAA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    *(&v67 + 6) = 0;
    *&v67 = 0;
    if (v7 > 0)
    {
      __break(1u);
LABEL_84:
      v49 = v6 + v7;
      goto LABEL_85;
    }

    if (v7 < 0)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      if (v8)
      {
        goto LABEL_87;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      if (!v8)
      {
        __break(1u);
      }

      goto LABEL_87;
    }

    *&v69 = &v67;
    *(&v69 + 1) = &v67;
    *&v70 = 1;
    BYTE8(v70) = 64;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v45 = swift_allocError();
    *v55 = &v67;
    *(v55 + 8) = &v67;
    *(v55 + 16) = 1;
    *(v55 + 24) = 64;
    while (1)
    {
LABEL_86:
      v65 = v45;
      v51 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v52 = v69;
      v53 = v70;
      v7 = BYTE8(v70);
      v67 = v69;
      *&v68 = v70;
      BYTE8(v68) = BYTE8(v70);
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v54 = v52;
      *(v54 + 16) = v53;
      *(v54 + 24) = v7;
      swift_unexpectedError();
      __break(1u);
LABEL_87:
      v49 = &v8[v7];
      v5 = &v8[v3];
LABEL_85:
      *&v67 = v49;
      *(&v67 + 1) = v5;
      *&v68 = 1;
      BYTE8(v68) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v45 = swift_allocError();
      *v50 = v49;
      *(v50 + 8) = v5;
      *(v50 + 16) = 1;
      *(v50 + 24) = 64;
    }
  }

  v9 = a3;
  result = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1AE4EB0F0();
    v11 = 0;
    v6 = &v59;
    v56 = v9;
    while (1)
    {
      if (v9 == v11)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v12 = sub_1AE4B9974(v11, a1, a2, v9);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 64))();
      v7 = v14;
      v15 = *(v12 + 16);
      v5 = *(v12 + 24);
      v3 = v5 >> 62;
      if ((v5 >> 62) > 1)
      {
        break;
      }

      if (v3)
      {
        v27 = v15;
        v28 = v15 >> 32;
        v6 = (v28 - v27);
        if (v28 < v27)
        {
          goto LABEL_57;
        }

        v8 = sub_1AE4EA990();
        if (v8)
        {
          v29 = sub_1AE4EA9B0();
          if (__OFSUB__(v27, v29))
          {
            goto LABEL_67;
          }

          v8 += v27 - v29;
        }

        v30 = sub_1AE4EA9A0();
        if (v30 >= v6)
        {
          v31 = v6;
        }

        else
        {
          v31 = v30;
        }

        v24 = v31 + v8;
        if (v8)
        {
          v32 = v24;
        }

        else
        {
          v32 = 0;
        }

        v3 = v32 - v8;
        if (v8)
        {
          v33 = v3;
        }

        else
        {
          v33 = 0;
        }

        if (v33 < v7)
        {
          goto LABEL_61;
        }

        if (v7 < 0)
        {
          goto LABEL_63;
        }

        if (v33 <= v7)
        {
          goto LABEL_73;
        }

        v9 = v56;
        v6 = &v59;
        if (!v8)
        {
          goto LABEL_72;
        }

        if (v3 <= v7)
        {
          goto LABEL_64;
        }

        goto LABEL_49;
      }

      v59 = *(v12 + 16);
      v60 = v5;
      v61 = BYTE2(v5);
      v3 = HIDWORD(v5);
      v62 = BYTE3(v5);
      v63 = BYTE4(v5);
      v16 = BYTE6(v5);
      v64 = BYTE5(v5);
      if (BYTE6(v5) < v14)
      {
        goto LABEL_56;
      }

      if (v14 < 0)
      {
        goto LABEL_59;
      }

      v5 = &v59 + BYTE6(v5);
      if (v16 <= v14)
      {
        goto LABEL_84;
      }

      v17 = *(&v59 + v14);
      *&v69 = v14 + 1;
      *(&v69 + 1) = v16;
      *&v70 = &v59;
      *(&v70 + 1) = &v59 + v16;
LABEL_50:
      sub_1AE4A65CC(v17);
      v38 = v37;
      if (v4)
      {
        v42 = v34;
        v43 = v35;
        v44 = v36;
        sub_1AE4C78AC();
        v45 = swift_allocError();
        *v46 = v38;
        *(v46 + 8) = v42;
        *(v46 + 16) = v43;
        *(v46 + 24) = v44;
        goto LABEL_86;
      }

      v39 = v17 >> 4;
      if (v17 >> 4 != 13)
      {
        if (v39 <= 0xA && ((1 << v39) & 0x472) != 0)
        {
          *&v68 = 0;
          v67 = 6uLL;
          BYTE8(v68) = 0x80;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v45 = swift_allocError();
          *(v47 + 8) = 0;
          *(v47 + 16) = 0;
          *v47 = 6;
          *(v47 + 24) = 0x80;
        }

        else
        {
          sub_1AE4C78AC();
          v45 = swift_allocError();
          *(v48 + 8) = 0;
          *(v48 + 16) = 0;
          *v48 = 0;
          *(v48 + 24) = 0x80;
          swift_willThrow();
        }

        goto LABEL_86;
      }

      v67 = v69;
      v68 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      v40 = v65;
      ++v11;
      type metadata accessor for AOTImage.Impl();
      v8 = swift_allocObject();
      *(v8 + 2) = v12;
      *(v8 + 3) = v40;
      *(v8 + 4) = v38;
      sub_1AE4EB0D0();
      v7 = *(v66 + 16);
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
      if (v9 == v11)
      {
        result = v66;
        goto LABEL_54;
      }
    }

    if (v3 != 2)
    {
      goto LABEL_69;
    }

    v6 = *(v15 + 16);
    v18 = *(v15 + 24);
    v8 = sub_1AE4EA990();
    if (v8)
    {
      v19 = sub_1AE4EA9B0();
      if (__OFSUB__(v6, v19))
      {
        goto LABEL_66;
      }

      v8 = &v8[v6 - v19];
    }

    v20 = __OFSUB__(v18, v6);
    v21 = v18 - v6;
    if (v20)
    {
      goto LABEL_58;
    }

    v22 = sub_1AE4EA9A0();
    if (v22 >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    v24 = &v8[v23];
    if (v8)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v3 = v25 - v8;
    if (v8)
    {
      v26 = v3;
    }

    else
    {
      v26 = 0;
    }

    if (v26 < v7)
    {
      goto LABEL_60;
    }

    if (v7 < 0)
    {
      goto LABEL_62;
    }

    if (v26 <= v7)
    {
      goto LABEL_76;
    }

    v9 = v56;
    v6 = &v59;
    if (!v8)
    {
      goto LABEL_75;
    }

    if (v3 <= v7)
    {
      goto LABEL_65;
    }

LABEL_49:
    v17 = v8[v7];
    *&v69 = v7 + 1;
    *(&v69 + 1) = v3;
    *&v70 = v8;
    *(&v70 + 1) = v24;
    goto LABEL_50;
  }

LABEL_54:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4CB058(uint64_t a1)
{
  v46 = a1;
  v1 = sub_1AE4EAB10();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Image.Info(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for FileIdentifier(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v43 - v21);
  sub_1AE4B55F8(v11);
  sub_1AE4B441C(v11, v15, &qword_1EB5DD4B8, "R3");
  sub_1AE4DB5C0(v11, type metadata accessor for Image.Info);
  sub_1AE4B55F8(v9);
  v23 = &v9[*(v5 + 28)];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = v23[16];
  sub_1AE4BA890(*v23, v25, v23[16]);
  sub_1AE4DB5C0(v9, type metadata accessor for Image.Info);
  if (v26 == 255)
  {
    v27 = 0;
    v29 = 0;
  }

  else
  {
    v27 = sub_1AE4BB8CC(v24, v25, v26 & 1);
    v29 = v28;
    sub_1AE4BA998(v24, v25, v26);
  }

  sub_1AE4CBD90(v15, v27, v29, v22);
  sub_1AE4DB620(v22, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v20;
      v32 = v20[1];
      sub_1AE4EADC0();
    }

    else
    {
      v36 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48));
      v37 = *v36;
      v38 = v36[1];
      v39 = v43;
      v40 = v44;
      v41 = v45;
      (*(v44 + 32))(v43, v20, v45);
      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
      sub_1AE4EACF0();
      sub_1AE4EADC0();

      (*(v40 + 8))(v39, v41);
    }
  }

  else
  {
    v33 = v43;
    v34 = v44;
    v35 = v45;
    (*(v44 + 32))(v43, v20, v45);
    sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
    sub_1AE4EACF0();
    (*(v34 + 8))(v33, v35);
  }

  return sub_1AE4DB5C0(v22, type metadata accessor for FileIdentifier);
}

uint64_t sub_1AE4CB4A8()
{
  v1 = *v0;
  sub_1AE4EB260();
  sub_1AE4CB058(v3);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4CB4F8()
{
  v1 = *v0;
  sub_1AE4EB260();
  sub_1AE4CB058(v3);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4CB53C(uint64_t a1)
{
  v46 = a1;
  v1 = sub_1AE4EAB10();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Image.Info(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for FileIdentifier(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v43 - v21);
  sub_1AE4B55F8(v11);
  sub_1AE4B441C(v11, v15, &qword_1EB5DD4B8, "R3");
  sub_1AE4DB5C0(v11, type metadata accessor for Image.Info);
  sub_1AE4B55F8(v9);
  v23 = &v9[*(v5 + 28)];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = v23[16];
  sub_1AE4BA890(*v23, v25, v23[16]);
  sub_1AE4DB5C0(v9, type metadata accessor for Image.Info);
  if (v26 == 255)
  {
    v27 = 0;
    v29 = 0;
  }

  else
  {
    v27 = sub_1AE4BB8CC(v24, v25, v26 & 1);
    v29 = v28;
    sub_1AE4BA998(v24, v25, v26);
  }

  sub_1AE4CBD90(v15, v27, v29, v22);
  sub_1AE4DB620(v22, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v20;
      v32 = v20[1];
      sub_1AE4EADC0();
    }

    else
    {
      v36 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48));
      v37 = *v36;
      v38 = v36[1];
      v39 = v43;
      v40 = v44;
      v41 = v45;
      (*(v44 + 32))(v43, v20, v45);
      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
      sub_1AE4EACF0();
      sub_1AE4EADC0();

      (*(v40 + 8))(v39, v41);
    }
  }

  else
  {
    v33 = v43;
    v34 = v44;
    v35 = v45;
    (*(v44 + 32))(v43, v20, v45);
    sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
    sub_1AE4EACF0();
    (*(v34 + 8))(v33, v35);
  }

  return sub_1AE4DB5C0(v22, type metadata accessor for FileIdentifier);
}

uint64_t sub_1AE4CB988@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
  v4 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
  v5 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16);
  result = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v3, v4, v5);
  if (result)
  {
    sub_1AE4A6A00(result);

    v7 = sub_1AE4AC6E0(1936156019, 0xE400000000000000, 0, v3, v4, v5);
    if (v7)
    {
      v11 = sub_1AE4B9FBC(v7);
      v13 = v12;
      v15 = v14;

      *(a1 + 24) = type metadata accessor for MachOMapper(0);
      *(a1 + 32) = &off_1F240DAE0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

      return sub_1AE4CBB9C(v11, v13, v15, boxed_opaque_existential_1);
    }

    else
    {
      __break(1u);
      v20 = v8;
      v21 = v9;
      v22 = v10;
      sub_1AE4C78AC();
      swift_allocError();
      *v23 = 0;
      *(v23 + 8) = v20;
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      swift_unexpectedError();
      __break(1u);
      v25 = v24;
      sub_1AE4C78AC();
      swift_allocError();
      *v26 = v5;
      *(v26 + 8) = v4;
      *(v26 + 16) = v22;
      *(v26 + 24) = v25;
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  else
  {
    v17 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context);
    if (*(v17 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache))
    {
      v18 = *(v17 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache);

      v19 = sub_1AE4DC0D0();

      result = type metadata accessor for SharedCacheMapper(0);
      *(a1 + 24) = result;
      *(a1 + 32) = &off_1F240D718;
      *a1 = v19;
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1AE4CBB9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v6 = type metadata accessor for Image.Info(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29 - v16;
  sub_1AE4B55F8(v13);
  sub_1AE4B441C(v13, v17, &qword_1EB5DD4B8, "R3");
  sub_1AE4DB5C0(v13, type metadata accessor for Image.Info);
  sub_1AE4B55F8(v11);
  v18 = &v11[*(v7 + 28)];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v18[16];
  sub_1AE4BA890(*v18, v20, v18[16]);
  sub_1AE4DB5C0(v11, type metadata accessor for Image.Info);
  if (v21 == 255)
  {
    v22 = 0;
    v24 = 0;
  }

  else
  {
    v22 = sub_1AE4BB8CC(v19, v20, v21 & 1);
    v24 = v23;
    sub_1AE4BA998(v19, v20, v21);
  }

  sub_1AE4CBD90(v17, v22, v24, a4);

  result = type metadata accessor for MachOMapper(0);
  v26 = (a4 + *(result + 20));
  v28 = v29;
  v27 = v30;
  *v26 = a1;
  v26[1] = v28;
  v26[2] = v27;
  return result;
}

uint64_t sub_1AE4CBD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4E0, &qword_1AE4EDB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1AE4B441C(a1, &v16 - v10, &qword_1EB5DD4B8, "R3");
  v12 = sub_1AE4EAB10();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    if (a3)
    {
      sub_1AE4B4558(a1, &qword_1EB5DD4B8, "R3");
      *a4 = a2;
      a4[1] = a3;
      type metadata accessor for FileIdentifier(0);
      swift_storeEnumTagMultiPayload();
      return sub_1AE4B4558(v11, &qword_1EB5DD4B8, "R3");
    }

    else
    {
      result = sub_1AE4EB140();
      __break(1u);
    }
  }

  else
  {
    sub_1AE4B4558(a1, &qword_1EB5DD4B8, "R3");
    if (a3)
    {
      v15 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48));
      (*(v13 + 32))(a4, v11, v12);
      *v15 = a2;
      v15[1] = a3;
    }

    else
    {
      (*(v13 + 32))(a4, v11, v12);
    }

    type metadata accessor for FileIdentifier(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_1AE4CBFF0()
{
  sub_1AE4D1AC8(319, &qword_1EB5DD0D0, 255, type metadata accessor for Image.Info);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AE4CC0B8()
{
  v1 = *v0;
  sub_1AE4EB260();
  sub_1AE4CB53C(v3);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4CC120()
{
  v1 = *v0;
  sub_1AE4EB260();
  sub_1AE4CB53C(v3);
  return sub_1AE4EB290();
}

double sub_1AE4CC184@<D0>(uint64_t a1@<X8>)
{
  v3 = a1;
  v4 = &v284;
  v303 = *MEMORY[0x1E69E9840];
  v5 = *(v1 + 112);
  if (*(v1 + 112) != 0xFF)
  {
LABEL_320:
    v289 = *(v1 + 96);
    v221 = v289;
    v222 = *(v1 + 120);
    *(v4 + 88) = v222;
    v223 = *(v1 + 136);
    *(v4 + 104) = v223;
    v224 = *(v1 + 152);
    v302 = v221;
    v281 = v222;
    v282 = v223;
    v283 = v224;
    *(&v292 + 1) = v224;
    *&v290 = v5;
    sub_1AE4DFDBC(&v289, &v284);
    goto LABEL_325;
  }

  v6 = *(v1 + 24);
  v267 = v1;
  v8 = *(v1 + 32);
  *&v289 = *(v1 + 16);
  v7 = v289;
  *(&v289 + 1) = v6;
  v263 = v8;
  v264 = v6;
  v290 = v8;

  v4 = 0;
  v266 = 0;
  v268 = 0;
  v270 = 0;
  v272 = 0;
  v274 = 0;
  v275 = 0;
  v3 = 0;
  v273 = -1;
  v9 = 1;
  v265 = 0x100000001;
  v269 = 1;
  v271 = 1;
  v262 = v7;
LABEL_3:
  v260 = v9;
  v261 = v4;
  sub_1AE4B87FC(&v297);
  v10 = v300;
  if (v300)
  {
    v11 = v299;
    v279 = v301;
    v12 = v298;
    while (1)
    {
      v13 = v297;
      v276 = v12;
      v277 = v297;
      v278 = v11;
      if ((sub_1AE4B8C4C(v297, v12, v11 & 1, 1701667182, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_96;
      }

      v14 = *(v10 + 72);
      v15 = (*(v10 + 64))(v10, v279);
      v5 = v15;
      v17 = *(v10 + 16);
      v18 = *(v10 + 24);
      v19 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        break;
      }

      if (v19)
      {
        v34 = v17;
        v17 >>= 32;
        v13 = v17 - v34;
        if (v17 < v34)
        {
          goto LABEL_329;
        }

        v2 = sub_1AE4EA990();
        if (v2)
        {
          v35 = sub_1AE4EA9B0();
          v17 = v34 - v35;
          if (__OFSUB__(v34, v35))
          {
            goto LABEL_360;
          }

          v2 += v17;
        }

        v36 = sub_1AE4EA9A0();
        if (v36 >= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = v36;
        }

        v31 = v2 + v17;
        if (v2)
        {
          v37 = v2 + v17;
        }

        else
        {
          v37 = 0;
        }

        v13 = v37 - v2;
        if (v2)
        {
          v38 = v37 - v2;
        }

        else
        {
          v38 = 0;
        }

        v11 = v278;
        if (v38 < v5)
        {
          goto LABEL_334;
        }

        if (sub_1AE4BA9B0(v5, v38, v2, v37) <= 0)
        {
          goto LABEL_393;
        }

        if (!v2)
        {
          goto LABEL_392;
        }

        goto LABEL_47;
      }

      *&v293 = *(v10 + 16);
      WORD4(v293) = v18;
      BYTE10(v293) = BYTE2(v18);
      BYTE11(v293) = BYTE3(v18);
      v17 = v18 >> 40;
      BYTE12(v293) = BYTE4(v18);
      BYTE13(v293) = BYTE5(v18);
      if (BYTE6(v18) < v15)
      {
        goto LABEL_330;
      }

      if (v15 < 0)
      {
        goto LABEL_332;
      }

      v17 = &v293;
      v16 = &v293 + BYTE6(v18);
      if (BYTE6(v18) <= v15)
      {
        goto LABEL_404;
      }

      v20 = *(&v293 + v15);
      *&v284 = sub_1AE4A7CA4(1uLL, v15, BYTE6(v18), &v293, v16);
      *(&v284 + 1) = v21;
      v285 = v22;
      *&v286 = v23;
      sub_1AE4A65CC(v20);
      v24 = sub_1AE4AC038(v20);
      if (v24 == 6)
      {
        while (1)
        {
LABEL_402:
          sub_1AE4C78AC();
          v247 = swift_allocError();
          *(v248 + 8) = 0;
          *(v248 + 16) = 0;
          *v248 = 0;
          *(v248 + 24) = 0x80;
          swift_willThrow();
LABEL_406:
          *&v293 = v247;
          v252 = v247;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
          swift_dynamicCast();
          v253 = v284;
          v254 = v285;
          v255 = v286;
          v281 = v284;
          *&v282 = v285;
          BYTE8(v282) = v286;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();

          swift_allocError();
          *v256 = v253;
          *(v256 + 16) = v254;
          *(v256 + 24) = v255;
          swift_unexpectedError();
          __break(1u);
LABEL_407:
          sub_1AE4BA998(v275, v274, v225);
LABEL_400:
          sub_1AE4EB140();
          __break(1u);
LABEL_401:
          sub_1AE4C78AC();
          v240 = swift_allocError();
          *(v241 + 8) = 0;
          *(v241 + 16) = 0;
          *v241 = 0;
          *(v241 + 24) = 0x80;
          swift_willThrow();
          *&v293 = v240;
          v242 = v240;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
          swift_dynamicCast();
          v243 = v284;
          v244 = v285;
          v245 = v286;
          v281 = v284;
          *&v282 = v285;
          BYTE8(v282) = v286;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();

          swift_allocError();
          *v246 = v243;
          *(v246 + 16) = v244;
          *(v246 + 24) = v245;
          swift_unexpectedError();
          __break(1u);
        }
      }

LABEL_48:
      if (v24 == 1)
      {
        v43 = *(v10 + 72);
        v44 = (*(v10 + 64))(v10, v279);
        v5 = v44;
        v17 = *(v10 + 16);
        v45 = *(v10 + 24);
        v46 = v45 >> 62;
        if ((v45 >> 62) > 1)
        {
          if (v46 == 2)
          {
            v13 = *(v17 + 16);
            v51 = *(v17 + 24);
            v52 = sub_1AE4EA990();
            if (v52)
            {
              v2 = v52;
              v53 = sub_1AE4EA9B0();
              v17 = v13 - v53;
              if (__OFSUB__(v13, v53))
              {
                goto LABEL_375;
              }

              v54 = v17 + v2;
              v28 = __OFSUB__(v51, v13);
              v55 = v51 - v13;
              if (v28)
              {
                goto LABEL_372;
              }
            }

            else
            {
              v54 = 0;
              v28 = __OFSUB__(v51, v13);
              v55 = v51 - v13;
              if (v28)
              {
                goto LABEL_372;
              }
            }

            v62 = sub_1AE4EA9A0();
            if (v62 >= v55)
            {
              v63 = v55;
            }

            else
            {
              v63 = v62;
            }

            if (v54)
            {
              v17 = v63;
            }

            else
            {
              v17 = 0;
            }

            if (v17 < v5)
            {
              goto LABEL_373;
            }

            v64 = v63 + v54;
            if (!v54)
            {
              v64 = 0;
            }

            *&v284 = v5;
            *(&v284 + 1) = v17;
            v285 = v54;
            *&v286 = v64;
            sub_1AE4A5694();
            v2 = v65;
            sub_1AE4A65CC(v65);
            v49 = v66;
            v12 = v276;
            v13 = v277;
            if (sub_1AE4AC038(v2) == 6)
            {
              goto LABEL_399;
            }

            v50 = v285;
            if (!v285)
            {
              goto LABEL_396;
            }
          }

          else
          {
            *(&v281 + 6) = 0;
            *&v281 = 0;
            if (v44 > 0)
            {
              goto LABEL_369;
            }

            v284 = v44;
            v285 = &v281;
            *&v286 = &v281;
            sub_1AE4A5694();
            v2 = v60;
            sub_1AE4A65CC(v60);
            v49 = v61;
            if (sub_1AE4AC038(v2) == 6)
            {
              goto LABEL_399;
            }

            v50 = v285;
            if (!v285)
            {
              __break(1u);
LABEL_395:
              __break(1u);
LABEL_396:
              __break(1u);
LABEL_397:
              __break(1u);
LABEL_398:
              __break(1u);
LABEL_399:
              sub_1AE4C78AC();
              v234 = swift_allocError();
              *(v235 + 8) = 0;
              *(v235 + 16) = 0;
              *v235 = 0;
              *(v235 + 24) = 0x80;
              swift_willThrow();
              *&v293 = v234;
              v236 = v234;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
              swift_dynamicCast();
              v237 = v284;
              v238 = v285;
              v239 = v286;
              v281 = v284;
              *&v282 = v285;
              BYTE8(v282) = v286;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              sub_1AE4A67B4(v277, v276, v278 & 1);

              sub_1AE4DB684(v237, *(&v237 + 1), v238, v239);
              goto LABEL_400;
            }
          }
        }

        else if (v46)
        {
          v56 = v17;
          v17 >>= 32;
          v13 = v17 - v56;
          if (v17 < v56)
          {
            goto LABEL_370;
          }

          v57 = sub_1AE4EA990();
          if (v57)
          {
            v2 = v57;
            v58 = sub_1AE4EA9B0();
            v17 = v56 - v58;
            if (__OFSUB__(v56, v58))
            {
              goto LABEL_376;
            }

            v59 = v17 + v2;
          }

          else
          {
            v59 = 0;
          }

          v67 = sub_1AE4EA9A0();
          if (v67 >= v13)
          {
            v68 = v13;
          }

          else
          {
            v68 = v67;
          }

          if (v59)
          {
            v17 = v68;
          }

          else
          {
            v17 = 0;
          }

          if (v17 < v5)
          {
            goto LABEL_374;
          }

          v69 = v68 + v59;
          if (!v59)
          {
            v69 = 0;
          }

          *&v284 = v5;
          *(&v284 + 1) = v17;
          v285 = v59;
          *&v286 = v69;
          sub_1AE4A5694();
          v2 = v70;
          sub_1AE4A65CC(v70);
          v49 = v71;
          v12 = v276;
          v13 = v277;
          if (sub_1AE4AC038(v2) == 6)
          {
            goto LABEL_399;
          }

          v50 = v285;
          if (!v285)
          {
            goto LABEL_397;
          }
        }

        else
        {
          *&v281 = *(v10 + 16);
          WORD4(v281) = v45;
          BYTE10(v281) = BYTE2(v45);
          BYTE11(v281) = BYTE3(v45);
          BYTE12(v281) = BYTE4(v45);
          v17 = BYTE6(v45);
          BYTE13(v281) = BYTE5(v45);
          if (BYTE6(v45) < v44)
          {
            goto LABEL_371;
          }

          *&v284 = v44;
          *(&v284 + 1) = BYTE6(v45);
          v285 = &v281;
          *&v286 = &v281 + BYTE6(v45);
          sub_1AE4A5694();
          v2 = v47;
          sub_1AE4A65CC(v47);
          v49 = v48;
          if (sub_1AE4AC038(v2) == 6)
          {
            goto LABEL_399;
          }

          v50 = v285;
          if (!v285)
          {
            goto LABEL_395;
          }
        }

        v72 = v284;
        sub_1AE4BA998(v275, v274, v273);
        v275 = v50 + v72;
        v274 = v50 + v72 + v49;
        v273 = 0;
        v11 = v278;
      }

      else
      {
        sub_1AE4BA998(v275, v274, v273);

        v273 = 1;
        v274 = v279;
        v275 = v10;
      }

LABEL_96:
      if ((sub_1AE4B8C4C(v13, v12, v11 & 1, 1702521203, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_141;
      }

      v73 = *(v10 + 72);
      v74 = (*(v10 + 64))(v10, v279);
      v5 = v74;
      v17 = *(v10 + 16);
      v75 = *(v10 + 24);
      v76 = v75 >> 62;
      if ((v75 >> 62) > 1)
      {
        if (v76 == 2)
        {
          v13 = *(v17 + 16);
          v77 = *(v17 + 24);
          v78 = sub_1AE4EA990();
          if (v78)
          {
            v2 = v78;
            v79 = sub_1AE4EA9B0();
            v17 = v13 - v79;
            if (__OFSUB__(v13, v79))
            {
              goto LABEL_361;
            }

            v80 = v17 + v2;
            v28 = __OFSUB__(v77, v13);
            v81 = v77 - v13;
            if (v28)
            {
              goto LABEL_338;
            }
          }

          else
          {
            v80 = 0;
            v28 = __OFSUB__(v77, v13);
            v81 = v77 - v13;
            if (v28)
            {
              goto LABEL_338;
            }
          }

          v90 = sub_1AE4EA9A0();
          if (v90 >= v81)
          {
            v91 = v81;
          }

          else
          {
            v91 = v90;
          }

          if (v80)
          {
            v17 = v91;
          }

          else
          {
            v17 = 0;
          }

          if (v17 < v5)
          {
            goto LABEL_343;
          }

          v92 = v91 + v80;
          if (!v80)
          {
            v92 = 0;
          }

          *&v284 = v5;
          *(&v284 + 1) = v17;
          v285 = v80;
          *&v286 = v92;
          sub_1AE4A5694();
          v2 = v93;
          sub_1AE4A65CC(v93);
          v95 = v94;
          v12 = v276;
          v11 = v278;
LABEL_137:
          v13 = v277;
          v101 = sub_1AE4AC038(v2);
          if (v101 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v101, v95, v284, *(&v284 + 1), &v280, &v281);
          v17 = v281;
          goto LABEL_139;
        }

        *(&v281 + 6) = 0;
        *&v281 = 0;
        if (v74 > 0)
        {
          goto LABEL_336;
        }

        v284 = v74;
        v285 = &v281;
        *&v286 = &v281;
      }

      else
      {
        if (v76)
        {
          v82 = v17;
          v17 >>= 32;
          v13 = v17 - v82;
          if (v17 < v82)
          {
            goto LABEL_335;
          }

          v83 = sub_1AE4EA990();
          if (v83)
          {
            v2 = v83;
            v84 = sub_1AE4EA9B0();
            v17 = v82 - v84;
            if (__OFSUB__(v82, v84))
            {
              goto LABEL_362;
            }

            v85 = v17 + v2;
          }

          else
          {
            v85 = 0;
          }

          v96 = sub_1AE4EA9A0();
          if (v96 >= v13)
          {
            v97 = v13;
          }

          else
          {
            v97 = v96;
          }

          if (v85)
          {
            v17 = v97;
          }

          else
          {
            v17 = 0;
          }

          v11 = v278;
          if (v17 < v5)
          {
            goto LABEL_342;
          }

          v98 = v97 + v85;
          if (!v85)
          {
            v98 = 0;
          }

          *&v284 = v5;
          *(&v284 + 1) = v17;
          v285 = v85;
          *&v286 = v98;
          sub_1AE4A5694();
          v2 = v99;
          sub_1AE4A65CC(v99);
          v95 = v100;
          v12 = v276;
          goto LABEL_137;
        }

        *&v281 = *(v10 + 16);
        WORD4(v281) = v75;
        BYTE10(v281) = BYTE2(v75);
        BYTE11(v281) = BYTE3(v75);
        BYTE12(v281) = BYTE4(v75);
        v17 = BYTE6(v75);
        BYTE13(v281) = BYTE5(v75);
        if (BYTE6(v75) < v74)
        {
          goto LABEL_337;
        }

        *&v284 = v74;
        *(&v284 + 1) = BYTE6(v75);
        v285 = &v281;
        *&v286 = &v281 + BYTE6(v75);
      }

      sub_1AE4A5694();
      v2 = v86;
      sub_1AE4A65CC(v86);
      v88 = v87;
      v89 = sub_1AE4AC038(v2);
      if (v89 == 6)
      {
        goto LABEL_399;
      }

      sub_1AE4AD198(v89, v88, v284, *(&v284 + 1), &v280, &v293);
      v17 = v293;
LABEL_139:
      if (v17 < 0)
      {
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
        goto LABEL_379;
      }

      v272 = v17;
      v271 = 0;
LABEL_141:
      if ((sub_1AE4B8C4C(v13, v12, v11 & 1, 1702523750, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_186;
      }

      v102 = *(v10 + 72);
      v103 = (*(v10 + 64))(v10, v279);
      v5 = v103;
      v17 = *(v10 + 16);
      v104 = *(v10 + 24);
      v105 = v104 >> 62;
      if ((v104 >> 62) > 1)
      {
        if (v105 == 2)
        {
          v13 = *(v17 + 16);
          v106 = *(v17 + 24);
          v107 = sub_1AE4EA990();
          if (v107)
          {
            v2 = v107;
            v108 = sub_1AE4EA9B0();
            v17 = v13 - v108;
            if (__OFSUB__(v13, v108))
            {
              goto LABEL_363;
            }

            v109 = v17 + v2;
            v28 = __OFSUB__(v106, v13);
            v110 = v106 - v13;
            if (v28)
            {
              goto LABEL_344;
            }
          }

          else
          {
            v109 = 0;
            v28 = __OFSUB__(v106, v13);
            v110 = v106 - v13;
            if (v28)
            {
              goto LABEL_344;
            }
          }

          v119 = sub_1AE4EA9A0();
          if (v119 >= v110)
          {
            v120 = v110;
          }

          else
          {
            v120 = v119;
          }

          if (v109)
          {
            v17 = v120;
          }

          else
          {
            v17 = 0;
          }

          if (v17 < v5)
          {
            goto LABEL_348;
          }

          v121 = v120 + v109;
          if (!v109)
          {
            v121 = 0;
          }

          *&v284 = v5;
          *(&v284 + 1) = v17;
          v285 = v109;
          *&v286 = v121;
          sub_1AE4A5694();
          v2 = v122;
          sub_1AE4A65CC(v122);
          v124 = v123;
          v12 = v276;
          v11 = v278;
LABEL_182:
          v13 = v277;
          v130 = sub_1AE4AC038(v2);
          if (v130 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v130, v124, v284, *(&v284 + 1), &v280, &v281);
          v17 = v281;
          goto LABEL_184;
        }

        *(&v281 + 6) = 0;
        *&v281 = 0;
        if (v103 > 0)
        {
          goto LABEL_340;
        }

        v284 = v103;
        v285 = &v281;
        *&v286 = &v281;
      }

      else
      {
        if (v105)
        {
          v111 = v17;
          v17 >>= 32;
          v13 = v17 - v111;
          if (v17 < v111)
          {
            goto LABEL_341;
          }

          v112 = sub_1AE4EA990();
          if (v112)
          {
            v2 = v112;
            v113 = sub_1AE4EA9B0();
            v17 = v111 - v113;
            if (__OFSUB__(v111, v113))
            {
              goto LABEL_364;
            }

            v114 = v17 + v2;
          }

          else
          {
            v114 = 0;
          }

          v125 = sub_1AE4EA9A0();
          if (v125 >= v13)
          {
            v126 = v13;
          }

          else
          {
            v126 = v125;
          }

          if (v114)
          {
            v17 = v126;
          }

          else
          {
            v17 = 0;
          }

          v11 = v278;
          if (v17 < v5)
          {
            goto LABEL_349;
          }

          v127 = v126 + v114;
          if (!v114)
          {
            v127 = 0;
          }

          *&v284 = v5;
          *(&v284 + 1) = v17;
          v285 = v114;
          *&v286 = v127;
          sub_1AE4A5694();
          v2 = v128;
          sub_1AE4A65CC(v128);
          v124 = v129;
          v12 = v276;
          goto LABEL_182;
        }

        *&v281 = *(v10 + 16);
        WORD4(v281) = v104;
        BYTE10(v281) = BYTE2(v104);
        BYTE11(v281) = BYTE3(v104);
        BYTE12(v281) = BYTE4(v104);
        v17 = BYTE6(v104);
        BYTE13(v281) = BYTE5(v104);
        if (BYTE6(v104) < v103)
        {
          goto LABEL_339;
        }

        *&v284 = v103;
        *(&v284 + 1) = BYTE6(v104);
        v285 = &v281;
        *&v286 = &v281 + BYTE6(v104);
      }

      sub_1AE4A5694();
      v2 = v115;
      sub_1AE4A65CC(v115);
      v117 = v116;
      v118 = sub_1AE4AC038(v2);
      if (v118 == 6)
      {
        goto LABEL_399;
      }

      sub_1AE4AD198(v118, v117, v284, *(&v284 + 1), &v280, &v293);
      v17 = v293;
LABEL_184:
      if (v17 < 0)
      {
        goto LABEL_327;
      }

      v270 = v17;
      v269 = 0;
LABEL_186:
      if ((sub_1AE4B8C4C(v13, v12, v11 & 1, 1919181168, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_273;
      }

      v131 = *(v10 + 72);
      v132 = (*(v10 + 64))(v10, v279);
      v5 = v132;
      v17 = *(v10 + 16);
      v133 = *(v10 + 24);
      v134 = v133 >> 62;
      if ((v133 >> 62) > 1)
      {
        if (v134 != 2)
        {
          *(&v281 + 6) = 0;
          *&v281 = 0;
          if (v132 > 0)
          {
            goto LABEL_347;
          }

          v284 = v132;
          v285 = &v281;
          *&v286 = &v281;
          goto LABEL_203;
        }

        v13 = *(v17 + 16);
        v135 = *(v17 + 24);
        v136 = sub_1AE4EA990();
        if (v136)
        {
          v2 = v136;
          v137 = sub_1AE4EA9B0();
          v17 = v13 - v137;
          if (__OFSUB__(v13, v137))
          {
            goto LABEL_365;
          }

          v138 = v17 + v2;
          v28 = __OFSUB__(v135, v13);
          v139 = v135 - v13;
          if (v28)
          {
            goto LABEL_350;
          }
        }

        else
        {
          v138 = 0;
          v28 = __OFSUB__(v135, v13);
          v139 = v135 - v13;
          if (v28)
          {
            goto LABEL_350;
          }
        }

        v148 = sub_1AE4EA9A0();
        if (v148 >= v139)
        {
          v149 = v139;
        }

        else
        {
          v149 = v148;
        }

        if (v138)
        {
          v17 = v149;
        }

        else
        {
          v17 = 0;
        }

        if (v17 < v5)
        {
          goto LABEL_352;
        }

        v150 = v149 + v138;
        if (!v138)
        {
          v150 = 0;
        }

        *&v284 = v5;
        *(&v284 + 1) = v17;
        v285 = v138;
        *&v286 = v150;
        sub_1AE4A5694();
        v2 = v151;
        sub_1AE4A65CC(v151);
        v153 = v152;
        v12 = v276;
        v11 = v278;
      }

      else
      {
        if (!v134)
        {
          *&v281 = *(v10 + 16);
          WORD4(v281) = v133;
          BYTE10(v281) = BYTE2(v133);
          BYTE11(v281) = BYTE3(v133);
          BYTE12(v281) = BYTE4(v133);
          v17 = BYTE6(v133);
          BYTE13(v281) = BYTE5(v133);
          if (BYTE6(v133) < v132)
          {
            goto LABEL_345;
          }

          *&v284 = v132;
          *(&v284 + 1) = BYTE6(v133);
          v285 = &v281;
          *&v286 = &v281 + BYTE6(v133);
LABEL_203:
          sub_1AE4A5694();
          v2 = v144;
          sub_1AE4A65CC(v144);
          v146 = v145;
          v147 = sub_1AE4AC038(v2);
          if (v147 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v147, v146, v284, *(&v284 + 1), &v280, &v293);
          v17 = v293;
          goto LABEL_229;
        }

        v140 = v17;
        v17 >>= 32;
        v13 = v17 - v140;
        if (v17 < v140)
        {
          goto LABEL_346;
        }

        v141 = sub_1AE4EA990();
        if (v141)
        {
          v2 = v141;
          v142 = sub_1AE4EA9B0();
          v17 = v140 - v142;
          if (__OFSUB__(v140, v142))
          {
            goto LABEL_366;
          }

          v143 = v17 + v2;
        }

        else
        {
          v143 = 0;
        }

        v154 = sub_1AE4EA9A0();
        if (v154 >= v13)
        {
          v155 = v13;
        }

        else
        {
          v155 = v154;
        }

        if (v143)
        {
          v17 = v155;
        }

        else
        {
          v17 = 0;
        }

        v11 = v278;
        if (v17 < v5)
        {
          goto LABEL_351;
        }

        v156 = v155 + v143;
        if (!v143)
        {
          v156 = 0;
        }

        *&v284 = v5;
        *(&v284 + 1) = v17;
        v285 = v143;
        *&v286 = v156;
        sub_1AE4A5694();
        v2 = v157;
        sub_1AE4A65CC(v157);
        v153 = v158;
        v12 = v276;
      }

      v159 = sub_1AE4AC038(v2);
      if (v159 == 6)
      {
        goto LABEL_399;
      }

      sub_1AE4AD198(v159, v153, v284, *(&v284 + 1), &v280, &v281);
      v17 = v281;
LABEL_229:
      if (v17 < 0)
      {
        goto LABEL_328;
      }

      v268 = v17;
      v160 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v7, v264, v263);
      if (!v160)
      {
        goto LABEL_385;
      }

      v5 = v160;
      v161 = *(v160 + 72);
      v162 = (*(v160 + 64))();
      v2 = v162;
      v17 = *(v5 + 16);
      v13 = *(v5 + 24);
      v163 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v163 == 2)
        {
          v164 = *(v17 + 16);
          v165 = *(v17 + 24);
          v166 = sub_1AE4EA990();
          if (v166)
          {
            v167 = v166;
            v168 = sub_1AE4EA9B0();
            v17 = v164 - v168;
            if (__OFSUB__(v164, v168))
            {
              goto LABEL_367;
            }

            v169 = v17 + v167;
            v28 = __OFSUB__(v165, v164);
            v170 = v165 - v164;
            if (v28)
            {
              goto LABEL_356;
            }
          }

          else
          {
            v169 = 0;
            v28 = __OFSUB__(v165, v164);
            v170 = v165 - v164;
            if (v28)
            {
              goto LABEL_356;
            }
          }

          v186 = sub_1AE4EA9A0();
          if (v186 >= v170)
          {
            v187 = v170;
          }

          else
          {
            v187 = v186;
          }

          if (v169)
          {
            v17 = v187;
          }

          else
          {
            v17 = 0;
          }

          if (v17 < v2)
          {
            goto LABEL_357;
          }

          v188 = v187 + v169;
          if (!v169)
          {
            v188 = 0;
          }

          *&v284 = v2;
          *(&v284 + 1) = v17;
          v285 = v169;
          *&v286 = v188;
          sub_1AE4A5694();
          v2 = v189;
          sub_1AE4A65CC(v189);
          v180 = v190;
          v7 = v262;
          v12 = v276;
          v11 = v278;
LABEL_270:
          v13 = v277;
          v191 = sub_1AE4AC038(v2);
          if (v191 == 6)
          {
            goto LABEL_401;
          }

          sub_1AE4AD198(v191, v180, v284, *(&v284 + 1), &v280, &v281);

          v185 = v281;
          goto LABEL_272;
        }

        *(&v281 + 6) = 0;
        *&v281 = 0;
        if (v162 > 0)
        {
          goto LABEL_353;
        }

        v284 = v162;
        v285 = &v281;
        *&v286 = &v281;
      }

      else
      {
        if (v163)
        {
          v171 = v17;
          v17 >>= 32;
          v172 = v17 - v171;
          if (v17 < v171)
          {
            goto LABEL_355;
          }

          v173 = sub_1AE4EA990();
          if (v173)
          {
            v174 = sub_1AE4EA9B0();
            v17 = v171 - v174;
            if (__OFSUB__(v171, v174))
            {
              goto LABEL_368;
            }

            v173 += v17;
          }

          v175 = sub_1AE4EA9A0();
          if (v175 >= v172)
          {
            v176 = v172;
          }

          else
          {
            v176 = v175;
          }

          if (v173)
          {
            v17 = v176;
          }

          else
          {
            v17 = 0;
          }

          v11 = v278;
          if (v17 < v2)
          {
            goto LABEL_358;
          }

          v177 = v176 + v173;
          if (!v173)
          {
            v177 = 0;
          }

          *&v284 = v2;
          *(&v284 + 1) = v17;
          v285 = v173;
          *&v286 = v177;
          sub_1AE4A5694();
          v2 = v178;
          sub_1AE4A65CC(v178);
          v180 = v179;
          v12 = v276;
          goto LABEL_270;
        }

        *&v281 = *(v5 + 16);
        WORD4(v281) = v13;
        BYTE10(v281) = BYTE2(v13);
        BYTE11(v281) = BYTE3(v13);
        BYTE12(v281) = BYTE4(v13);
        v17 = BYTE6(v13);
        BYTE13(v281) = BYTE5(v13);
        if (BYTE6(v13) < v162)
        {
          goto LABEL_354;
        }

        *&v284 = v162;
        *(&v284 + 1) = BYTE6(v13);
        v285 = &v281;
        *&v286 = &v281 + BYTE6(v13);
      }

      sub_1AE4A5694();
      v2 = v181;
      sub_1AE4A65CC(v181);
      v183 = v182;
      v13 = v277;
      v184 = sub_1AE4AC038(v2);
      if (v184 == 6)
      {
        goto LABEL_401;
      }

      sub_1AE4AD198(v184, v183, v284, *(&v284 + 1), &v280, &v293);

      v185 = v293;
LABEL_272:
      v265 = 0;
      v266 = *(v267 + 48) + v185;
LABEL_273:
      if (sub_1AE4B8C4C(v13, v12, v11 & 1, 1836213616, 0xE400000000000000, 0))
      {
        v192 = *(v10 + 72);
        v193 = (*(v10 + 64))(v10, v279);
        v5 = v193;
        v17 = *(v10 + 16);
        v194 = *(v10 + 24);
        v195 = v194 >> 62;
        if ((v194 >> 62) > 1)
        {
          if (v195 == 2)
          {
            v196 = *(v17 + 16);
            v13 = *(v17 + 24);
            v197 = sub_1AE4EA990();
            if (v197)
            {
              v2 = v197;
              v198 = sub_1AE4EA9B0();
              v17 = v196 - v198;
              if (__OFSUB__(v196, v198))
              {
                goto LABEL_383;
              }

              v199 = v17 + v2;
              v28 = __OFSUB__(v13, v196);
              v200 = v13 - v196;
              if (v28)
              {
                goto LABEL_380;
              }
            }

            else
            {
              v199 = 0;
              v28 = __OFSUB__(v13, v196);
              v200 = v13 - v196;
              if (v28)
              {
                goto LABEL_380;
              }
            }

            v215 = sub_1AE4EA9A0();
            if (v215 >= v200)
            {
              v216 = v200;
            }

            else
            {
              v216 = v215;
            }

            if (v199)
            {
              v17 = v216;
            }

            else
            {
              v17 = 0;
            }

            if (v17 < v5)
            {
              goto LABEL_381;
            }

            v217 = v216 + v199;
            if (!v199)
            {
              v217 = 0;
            }

            *&v284 = v5;
            *(&v284 + 1) = v17;
            v285 = v199;
            *&v286 = v217;
            sub_1AE4A5694();
            v2 = v218;
            sub_1AE4A65CC(v218);
            v1 = v219;
            v5 = v276;
            v220 = sub_1AE4AC038(v2);
            if (v220 == 6)
            {
              goto LABEL_399;
            }

            sub_1AE4AD198(v220, v1, v284, *(&v284 + 1), &v280, &v281);
            v210 = v278 & 1;
            v211 = v277;
            goto LABEL_318;
          }

          *(&v281 + 6) = 0;
          *&v281 = 0;
          if (v193 > 0)
          {
            goto LABEL_377;
          }

          v284 = v193;
          v285 = &v281;
          *&v286 = &v281;
LABEL_303:
          sub_1AE4A5694();
          v2 = v212;
          sub_1AE4A65CC(v212);
          v1 = v213;
          v214 = sub_1AE4AC038(v2);
          if (v214 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v214, v1, v284, *(&v284 + 1), &v280, &v293);
          sub_1AE4A67B4(v13, v12, v11 & 1);

          v4 = v293;
          v9 = 0;
          if ((v293 & 0x8000000000000000) != 0)
          {
            goto LABEL_319;
          }
        }

        else
        {
          if (!v195)
          {
            *&v281 = *(v10 + 16);
            WORD4(v281) = v194;
            BYTE10(v281) = BYTE2(v194);
            BYTE11(v281) = BYTE3(v194);
            BYTE12(v281) = BYTE4(v194);
            v17 = BYTE6(v194);
            BYTE13(v281) = BYTE5(v194);
            if (BYTE6(v194) >= v193)
            {
              *&v284 = v193;
              *(&v284 + 1) = BYTE6(v194);
              v285 = &v281;
              *&v286 = &v281 + BYTE6(v194);
              goto LABEL_303;
            }

LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
LABEL_383:
            __break(1u);
LABEL_384:
            __break(1u);
LABEL_385:
            __break(1u);
LABEL_386:
            *(&v281 + 6) = 0;
            *&v281 = 0;
            if (v5 > 0)
            {
              __break(1u);
LABEL_404:
              v249 = v17 + v5;
              *&v281 = v17 + v5;
              *(&v281 + 1) = v16;
              *&v282 = 1;
              BYTE8(v282) = 64;
              v250 = v16;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              v247 = swift_allocError();
              *v251 = v249;
              *(v251 + 8) = v250;
            }

            else
            {
              if (v5 < 0)
              {
                __break(1u);
LABEL_389:
                __break(1u);
LABEL_390:
                if (!v2)
                {
                  __break(1u);
LABEL_392:
                  __break(1u);
LABEL_393:
                  if (!v2)
                  {
                    __break(1u);
                  }
                }

                v257 = v2 + v5;
                *&v281 = v2 + v5;
                *(&v281 + 1) = v2 + v13;
                *&v282 = 1;
                BYTE8(v282) = 64;
                sub_1AE4C78AC();
                swift_willThrowTypedImpl();
                v247 = swift_allocError();
                *v258 = v257;
                *(v258 + 8) = v2 + v13;
                *(v258 + 16) = 1;
                *(v258 + 24) = 64;
                goto LABEL_406;
              }

              *&v284 = &v281;
              *(&v284 + 1) = &v281;
              v285 = 1;
              LOBYTE(v286) = 64;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              v247 = swift_allocError();
              *v251 = &v281;
              *(v251 + 8) = &v281;
            }

            *(v251 + 16) = 1;
            *(v251 + 24) = 64;
            goto LABEL_406;
          }

          v201 = v17;
          v17 >>= 32;
          v202 = v17 - v201;
          if (v17 < v201)
          {
            goto LABEL_378;
          }

          v2 = sub_1AE4EA990();
          if (v2)
          {
            v203 = sub_1AE4EA9B0();
            v17 = v201 - v203;
            if (__OFSUB__(v201, v203))
            {
              goto LABEL_384;
            }

            v2 += v17;
          }

          v204 = sub_1AE4EA9A0();
          if (v204 >= v202)
          {
            v205 = v202;
          }

          else
          {
            v205 = v204;
          }

          if (v2)
          {
            v17 = v205;
          }

          else
          {
            v17 = 0;
          }

          if (v17 < v5)
          {
            goto LABEL_382;
          }

          v206 = v205 + v2;
          if (!v2)
          {
            v206 = 0;
          }

          *&v284 = v5;
          *(&v284 + 1) = v17;
          v285 = v2;
          *&v286 = v206;
          sub_1AE4A5694();
          v2 = v207;
          v5 = v276;
          sub_1AE4A65CC(v207);
          v1 = v208;
          v209 = sub_1AE4AC038(v2);
          if (v209 == 6)
          {
            goto LABEL_399;
          }

          sub_1AE4AD198(v209, v1, v284, *(&v284 + 1), &v280, &v281);
          v210 = v278 & 1;
          v211 = v13;
LABEL_318:
          sub_1AE4A67B4(v211, v5, v210);

          v4 = v281;
          v9 = 0;
          if ((v281 & 0x8000000000000000) != 0)
          {
LABEL_319:
            __break(1u);
            goto LABEL_320;
          }
        }

        goto LABEL_3;
      }

      sub_1AE4A67B4(v13, v12, v11 & 1);
      sub_1AE4B87FC(&v297);
      v12 = v298;
      v10 = v300;
      v279 = v301;
      v11 = v299;
      if (!v300)
      {
        goto LABEL_321;
      }
    }

    if (v19 != 2)
    {
      goto LABEL_386;
    }

    v26 = *(v17 + 16);
    v25 = *(v17 + 24);
    v2 = sub_1AE4EA990();
    if (v2)
    {
      v27 = sub_1AE4EA9B0();
      v17 = v26 - v27;
      if (__OFSUB__(v26, v27))
      {
        goto LABEL_359;
      }

      v2 += v17;
    }

    v28 = __OFSUB__(v25, v26);
    v29 = v25 - v26;
    if (v28)
    {
      goto LABEL_331;
    }

    v30 = sub_1AE4EA9A0();
    if (v30 >= v29)
    {
      v17 = v29;
    }

    else
    {
      v17 = v30;
    }

    v31 = v2 + v17;
    if (v2)
    {
      v32 = v2 + v17;
    }

    else
    {
      v32 = 0;
    }

    v13 = v32 - v2;
    if (v2)
    {
      v33 = v32 - v2;
    }

    else
    {
      v33 = 0;
    }

    if (v33 < v5)
    {
      goto LABEL_333;
    }

    if (sub_1AE4BA9B0(v5, v33, v2, v32) <= 0)
    {
      goto LABEL_390;
    }

    v12 = v276;
    v11 = v278;
    if (!v2)
    {
      goto LABEL_389;
    }

LABEL_47:
    v39 = *(v2 + v5);
    *&v284 = sub_1AE4A7CA4(1uLL, v5, v13, v2, v31);
    *(&v284 + 1) = v40;
    v285 = v41;
    *&v286 = v42;
    sub_1AE4A65CC(v39);
    v24 = sub_1AE4AC038(v39);
    v13 = v277;
    if (v24 == 6)
    {
      goto LABEL_402;
    }

    goto LABEL_48;
  }

LABEL_321:

  v225 = v273;
  if (v273 == -1)
  {
    goto LABEL_400;
  }

  v3 = a1;
  if ((v271 | v269 | v265 | HIDWORD(v265) | v260))
  {
    goto LABEL_407;
  }

  v226 = *(v267 + 112);
  v289 = *(v267 + 96);
  v290 = v226;
  v227 = *(v267 + 144);
  v291 = *(v267 + 128);
  v292 = v227;
  *(v267 + 96) = v275;
  *(v267 + 104) = v274;
  *(v267 + 112) = v273 & 1;
  *(v267 + 120) = v272;
  *(v267 + 128) = v270;
  *(v267 + 136) = v268;
  *(v267 + 144) = v266;
  *(v267 + 152) = v261;
  sub_1AE4B4558(&v289, &qword_1EB5DD5B8, &qword_1AE4EDC18);
  v5 = *(v267 + 112);
  v228 = ~*(v267 + 112);
  v296 = *(v267 + 96);
  v229 = *(v267 + 136);
  v293 = *(v267 + 120);
  v294 = v229;
  v295 = *(v267 + 152);
  if (!v228)
  {
    goto LABEL_398;
  }

  v284 = *(v267 + 96);
  v286 = *(v267 + 120);
  v287 = *(v267 + 136);
  v230 = *(v267 + 152);
  v285 = v5;
  v288 = v230;
  sub_1AE4DFDBC(&v284, &v281);
  v302 = v296;
  v281 = v293;
  v282 = v294;
  v283 = v295;
LABEL_325:
  *v3 = v302;
  *(v3 + 16) = v5;
  result = *&v281;
  v232 = v282;
  *(v3 + 24) = v281;
  *(v3 + 40) = v232;
  *(v3 + 56) = v283;
  v233 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE4CDFCC(uint64_t a1, void (**a2)(void, void), uint64_t a3)
{
  *(swift_allocObject() + 16) = a2;
  _Block_copy(a2);
  sub_1AE4CC184(v27);
  sub_1AE4DFD48(v27);
  if (v28)
  {
    sub_1AE4CC184(v29);
    sub_1AE4DFD48(v29);
    v7 = v30;
    sub_1AE4CC184(v31);
    sub_1AE4DFD48(v31);
    v8 = __CFADD__(v7, v32);
    v9 = v7 + v32;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      if (!*(a1 + 80))
      {
        v24[0] = 4;
        v24[1] = 0;
        v20 = 0u;
        v25 = 0u;
        v14 = -64;
        LOBYTE(v26) = -64;
        sub_1AE4C9430();
        swift_willThrowTypedImpl();

        _Block_release(a2);
        v15 = xmmword_1AE4EC800;
        goto LABEL_9;
      }

      sub_1AE4A6E5C(a1 + 56, v24);
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(v24, *(&v25 + 1));
      sub_1AE4CC184(v33);
      sub_1AE4DFD48(v33);
      if (v9 >= v34)
      {
        v11 = *(a1 + 40);
        v12 = (*(v10 + 8))();
        if (v3)
        {
          v20 = v22;
          v14 = v23;
          __swift_destroy_boxed_opaque_existential_1(v24);

          _Block_release(a2);
          v15 = v21;
LABEL_9:
          *a3 = v15;
          *(a3 + 16) = v20;
          *(a3 + 32) = v14;
          return;
        }

        v17 = v12;
        v18 = v13;
        __swift_destroy_boxed_opaque_existential_1(v24);
        v19 = sub_1AE4EAA70();
        (a2)[2](a2, v19);

        sub_1AE4A41E8(v17, v18);

        goto LABEL_11;
      }
    }

    __break(1u);
    return;
  }

  v16 = sub_1AE4EAA70();
  (a2)[2](a2, v16);

LABEL_11:
  _Block_release(a2);
}

uint64_t sub_1AE4CE244()
{
  v1 = v0[2];

  v2 = v0[5];

  sub_1AE4B4558((v0 + 7), &qword_1EB5DD5B0, &qword_1AE4EDC10);
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[19];
  sub_1AE4DFF44(v0[12], v0[13], v0[14]);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4CE2F8()
{
  v1 = v0;
  v123 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v101 - v4;
  v6 = sub_1AE4EAC50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v101 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v101 - v15;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_102;
  }

  v18 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
  v19 = Strong;
  swift_beginAccess();
  sub_1AE4B441C(v19 + v18, v5, &qword_1EB5DD520, &qword_1AE4EDB98);

  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 16))(v11, v5, v6);
    sub_1AE4B4558(v5, &qword_1EB5DD520, &qword_1AE4EDB98);
    sub_1AE4EAB90();
    (*(v7 + 32))(v16, v14, v6);
    v76 = sub_1AE4AC6E0(1935897444, 0xE400000000000000, 0, v1[2], v1[3], v1[4]);
    if (v76)
    {
      v77 = sub_1AE4B9FBC(v76);
      v79 = v78;
      v81 = v80;

      v82 = sub_1AE4DBA6C(v77, v79, v81);

      MEMORY[0x1EEE9AC00](v83);
      *(&v101 - 2) = v16;
      v31 = sub_1AE4CA878(sub_1AE4DFC50, (&v101 - 4), v82);

      (*(v7 + 8))(v16, v6);
      goto LABEL_90;
    }

    goto LABEL_104;
  }

  sub_1AE4B4558(v5, &qword_1EB5DD520, &qword_1AE4EDB98);
  v20 = sub_1AE4AC6E0(1935897444, 0xE400000000000000, 0, v1[2], v1[3], v1[4]);
  if (!v20)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    sub_1AE4C78AC();
    v86 = swift_allocError();
    *(v87 + 8) = 0;
    *(v87 + 16) = 0;
    *v87 = 0;
    *(v87 + 24) = 0x80;
    swift_willThrow();
    goto LABEL_109;
  }

  v21 = sub_1AE4B9FBC(v20);
  v23 = v22;
  v25 = v24;

  v26 = sub_1AE4DBA6C(v21, v23, v25);

  if (v26 >> 62)
  {
    goto LABEL_88;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_89:

    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_90;
  }

  while (1)
  {
    v115[0] = MEMORY[0x1E69E7CC0];
    v28 = v115;
    sub_1AE4D85DC(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      *(&v117 + 6) = 0;
      *&v117 = 0;
      if (v7 > 0)
      {
        __break(1u);
LABEL_107:
        v88 = v29 + v7;
        *&v117 = v29 + v7;
        *(&v117 + 1) = v28;
        v118 = 1;
        v119 = 64;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v86 = swift_allocError();
        *v89 = v88;
        *(v89 + 8) = v28;
        goto LABEL_108;
      }

      if (v7 < 0)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        if (v27)
        {
          goto LABEL_110;
        }

        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        if (v27)
        {
          goto LABEL_110;
        }

        __break(1u);
LABEL_102:
        __break(1u);
      }

      *&v120 = &v117;
      *(&v120 + 1) = &v117;
      v121 = 1;
      LOBYTE(v122) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v86 = swift_allocError();
      *v100 = &v117;
      *(v100 + 8) = &v117;
      *(v100 + 16) = 1;
      *(v100 + 24) = 64;
      while (1)
      {
LABEL_109:
        v114[0] = v86;
        v90 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
        swift_dynamicCast();
        v91 = *(&v120 + 1);
        v27 = v120;
        v92 = v121;
        v93 = v122;
        v117 = v120;
        v118 = v121;
        v119 = v122;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();

        swift_allocError();
        *v94 = __PAIR128__(v91, v27);
        *(v94 + 16) = v92;
        *(v94 + 24) = v93;
        swift_unexpectedError();
        __break(1u);
        v96 = v95;
        sub_1AE4C78AC();
        swift_allocError();
        *v97 = &type metadata for BPListError;
        *(v97 + 8) = v91;
        *(v97 + 16) = v86;
        *(v97 + 24) = v96;
        swift_unexpectedError();
        __break(1u);
LABEL_110:
        v98 = v27 + v7;
        v99 = v29 + v27;
        *&v117 = v98;
        *(&v117 + 1) = v99;
        v118 = 1;
        v119 = 64;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v86 = swift_allocError();
        *v89 = v98;
        *(v89 + 8) = v99;
LABEL_108:
        *(v89 + 16) = 1;
        *(v89 + 24) = 64;
      }
    }

    v30 = 0;
    v31 = v115[0];
    v32 = v26;
    v105 = v26 & 0xC000000000000001;
    v101 = v26 & 0xFFFFFFFFFFFFFF8;
    v104 = v26;
    v103 = v27;
LABEL_8:
    if (!__OFADD__(v30, 1))
    {
      break;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v27 = sub_1AE4EB150();
    if (!v27)
    {
      goto LABEL_89;
    }
  }

  if (v105)
  {
    v27 = MEMORY[0x1B2701540](v30, v32);
  }

  else
  {
    if (v30 >= *(v101 + 16))
    {
      goto LABEL_75;
    }

    v27 = *(v32 + 8 * v30 + 32);
  }

  v33 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, *(v27 + 16), *(v27 + 24), *(v27 + 32));
  if (!v33)
  {
    goto LABEL_92;
  }

  v34 = v33;
  v28 = *(v33 + 72);
  v35 = (*(v33 + 64))();
  v7 = v35;
  v36 = *(v34 + 16);
  v26 = *(v34 + 24);
  v29 = (v26 >> 62);
  v107 = v30 + 1;
  if ((v26 >> 62) > 1)
  {
    v102 = v31;
    if (v29 != 2)
    {
      goto LABEL_93;
    }

    v42 = *(v36 + 16);
    v43 = *(v36 + 24);
    v44 = sub_1AE4EA990();
    v106 = v27;
    if (v44)
    {
      v45 = v44;
      v46 = sub_1AE4EA9B0();
      if (__OFSUB__(v42, v46))
      {
        goto LABEL_86;
      }

      v27 = v42 - v46 + v45;
      v47 = __OFSUB__(v43, v42);
      v48 = v43 - v42;
      if (v47)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v27 = 0;
      v47 = __OFSUB__(v43, v42);
      v48 = v43 - v42;
      if (v47)
      {
        goto LABEL_78;
      }
    }

    v56 = sub_1AE4EA9A0();
    if (v56 >= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v56;
    }

    v58 = v27 + v57;
    if (v27)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    v29 = (v59 - v27);
    if (v27)
    {
      v60 = v29;
    }

    else
    {
      v60 = 0;
    }

    if (v60 < v7)
    {
      goto LABEL_81;
    }

    if (v7 < 0)
    {
      goto LABEL_82;
    }

    if (v60 <= v7)
    {
      goto LABEL_100;
    }

    if (!v27)
    {
      goto LABEL_99;
    }

    if (v29 <= v7)
    {
      goto LABEL_85;
    }

    v61 = *(v27 + v7);
    *&v120 = v7 + 1;
    *(&v120 + 1) = v29;
    v121 = v27;
    v122 = v58;
    sub_1AE4A65CC(v61);
    v28 = v62;
    v63 = (v61 >> 4) - 1;
    if (v63 >= 0xD || ((0x1239u >> v63) & 1) == 0)
    {
      goto LABEL_105;
    }

    sub_1AE4AF684(byte_1AE4EDF82[v63], v62, v120, *(&v120 + 1), v121, v122, &v116, v114);
    v31 = v102;
  }

  else if (v29)
  {
    v106 = v27;
    v49 = v36;
    v50 = v36 >> 32;
    v51 = v50 - v49;
    if (v50 < v49)
    {
      goto LABEL_77;
    }

    v52 = v31;
    v53 = sub_1AE4EA990();
    if (v53)
    {
      v54 = v53;
      v55 = sub_1AE4EA9B0();
      if (__OFSUB__(v49, v55))
      {
        goto LABEL_87;
      }

      v27 = v49 - v55 + v54;
    }

    else
    {
      v27 = 0;
    }

    v64 = sub_1AE4EA9A0();
    if (v64 >= v51)
    {
      v65 = v51;
    }

    else
    {
      v65 = v64;
    }

    v66 = v27 + v65;
    if (v27)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    v29 = (v67 - v27);
    if (v27)
    {
      v68 = v29;
    }

    else
    {
      v68 = 0;
    }

    if (v68 < v7)
    {
      goto LABEL_80;
    }

    if (v7 < 0)
    {
      goto LABEL_83;
    }

    if (v68 <= v7)
    {
      goto LABEL_97;
    }

    if (!v27)
    {
      goto LABEL_96;
    }

    if (v29 <= v7)
    {
      goto LABEL_84;
    }

    v69 = *(v27 + v7);
    *&v120 = v7 + 1;
    *(&v120 + 1) = v29;
    v121 = v27;
    v122 = v66;
    sub_1AE4A65CC(v69);
    v28 = v70;
    v71 = (v69 >> 4) - 1;
    if (v71 >= 0xD || ((0x1239u >> v71) & 1) == 0)
    {
      goto LABEL_105;
    }

    sub_1AE4AF684(byte_1AE4EDF82[v71], v70, v120, *(&v120 + 1), v121, v122, &v116, v114);
    v31 = v52;
  }

  else
  {
    v108 = v36;
    v109 = v26;
    v110 = BYTE2(v26);
    v111 = BYTE3(v26);
    v112 = BYTE4(v26);
    v37 = BYTE6(v26);
    v113 = BYTE5(v26);
    if (BYTE6(v26) < v35)
    {
      goto LABEL_76;
    }

    if (v35 < 0)
    {
      goto LABEL_79;
    }

    v29 = &v108;
    v28 = &v108 + BYTE6(v26);
    if (BYTE6(v26) <= v35)
    {
      goto LABEL_107;
    }

    v38 = v31;
    v39 = *(&v108 + v35);
    *&v120 = v35 + 1;
    *(&v120 + 1) = v37;
    v121 = &v108;
    v122 = v28;
    sub_1AE4A65CC(v39);
    v28 = v40;
    v41 = (v39 >> 4) - 1;
    if (v41 >= 0xD || ((0x1239u >> v41) & 1) == 0)
    {
      goto LABEL_105;
    }

    sub_1AE4AF684(byte_1AE4EDF82[v41], v40, v120, *(&v120 + 1), v121, v122, &v116, v114);
    v31 = v38;
  }

  v26 = v114[0];
  v72 = v114[1];
  v115[0] = v31;
  v74 = *(v31 + 16);
  v73 = *(v31 + 24);
  if (v74 >= v73 >> 1)
  {
    v28 = v115;
    sub_1AE4D85DC((v73 > 1), v74 + 1, 1);
    v31 = v115[0];
  }

  *(v31 + 16) = v74 + 1;
  v75 = v31 + 16 * v74;
  *(v75 + 32) = v26;
  *(v75 + 40) = v72;
  ++v30;
  v32 = v104;
  if (v107 != v103)
  {
    goto LABEL_8;
  }

LABEL_90:
  v84 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_1AE4CEF4C()
{
  v1 = type metadata accessor for FileIdentifier(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = (&v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = v0[2];
  v17 = v0[3];
  v18 = v0[4];
  v19 = sub_1AE4AC6E0(1684632947, 0xE400000000000000, 0, v16, v17, v18);
  if (v19)
  {
    v21 = sub_1AE4AEC7C(v19, v20);
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  sub_1AE4CFDC8(v21, v23, v15);
  v24 = sub_1AE4EAB10();
  v25 = (*(*(v24 - 8) + 48))(v15, 1, v24);
  sub_1AE4B4558(v15, &qword_1EB5DD4B8, "R3");
  if (v25 == 1)
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_21;
    }

    sub_1AE4CFA6C(Strong, v9);

    v25 = sub_1AE4EAC50();
    v29 = *(v25 - 8);
    if ((*(v29 + 48))(v9, 1, v25) == 1)
    {
      sub_1AE4B4558(v9, &qword_1EB5DD520, &qword_1AE4EDB98);
      return 0;
    }

    sub_1AE4EABC0();
    v31 = *(v29 + 8);
    v21 = v29 + 8;
    v31(v9, v25);
  }

  if (swift_weakLoadStrong())
  {

    v32 = sub_1AE4AC6E0(1684632947, 0xE400000000000000, 0, v16, v17, v18);
    if (v32)
    {
      v25 = sub_1AE4AEC7C(v32, v33);
      v21 = v34;
      v35 = v50;
    }

    else
    {
      v25 = 0;
      v21 = 0xF000000000000000;
      v35 = v50;
    }

    sub_1AE4CFDC8(v25, v21, v35);
    v36 = swift_weakLoadStrong();
    if (v36)
    {
      v37 = v48;
      sub_1AE4CFA6C(v36, v48);

      v38 = sub_1AE4EAC50();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v37, 1, v38) == 1)
      {
        sub_1AE4B4558(v37, &qword_1EB5DD520, &qword_1AE4EDB98);
        v40 = 0;
        v41 = 0;
      }

      else
      {
        v40 = sub_1AE4EABC0();
        v41 = v42;
        (*(v39 + 8))(v37, v38);
      }

      v43 = v49;
      sub_1AE4CBD90(v35, v40, v41, v49);
      v30 = sub_1AE4D0034(v43, 0, 0, 1, 0);
      sub_1AE4DB5C0(v43, type metadata accessor for FileIdentifier);
      return v30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  v45 = v27;
  v46 = v28;
  sub_1AE4C78AC();
  swift_allocError();
  *v47 = v21;
  *(v47 + 8) = v25;
  *(v47 + 16) = v45;
  *(v47 + 24) = v46;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

dirent *sub_1AE4CF480()
{
  v1 = sub_1AE4EAC50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v39 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD588, &qword_1AE4EDBF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_1AE4EAC00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  sub_1AE4EABC0();
  v19 = sub_1AE4EADA0();

  v20 = opendir((v19 + 32));

  if (!v20)
  {
    return 0;
  }

  result = readdir(v20);
  if (!result)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_17:
    closedir(v20);
    return v25;
  }

  v37 = v0;
  v38 = v1;
  v22 = v2;
  v23 = (v12 + 48);
  v24 = (v12 + 32);
  v34 = (v12 + 16);
  v35 = (v22 + 16);
  v36 = v22;
  v32 = v22 + 32;
  v33 = (v12 + 8);
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (result->d_type != 8)
    {
      goto LABEL_5;
    }

    if (result->d_namlen == -1)
    {
      break;
    }

    sub_1AE4EAE00();
    sub_1AE4EAC10();
    if ((*v23)(v10, 1, v11) == 1)
    {
      sub_1AE4B4558(v10, &qword_1EB5DD588, &qword_1AE4EDBF0);
LABEL_5:
      result = readdir(v20);
      if (!result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = *v24;
      v31 = v24;
      v26(v18, v10, v11);
      (*v35)(v39, v37, v38);
      (*v34)(v16, v18, v11);
      sub_1AE4EAC20();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AE4E8AFC(0, v25[2] + 1, 1, v25);
      }

      v28 = v25[2];
      v27 = v25[3];
      v30 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1AE4E8AFC(v27 > 1, v28 + 1, 1, v25);
      }

      (*v33)(v18, v11);
      v25[2] = v30;
      (*(v36 + 32))(v25 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28, v40, v38);
      result = readdir(v20);
      v24 = v31;
      if (!result)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4CF88C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1AE4EAC50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  v16 = *a1;
  (*(v9 + 16))(v13, a2, v8);
  v17 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, v16[2], v16[3], v16[4]);
  if (v17)
  {
    a2 = sub_1AE4AF28C(v17);
    v4 = v20;
    if (!v3)
    {

      sub_1AE4EAC30();
      v21 = sub_1AE4EABC0();
      v23 = v22;
      result = (*(v9 + 8))(v15, v8);
      *a3 = v21;
      a3[1] = v23;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  v25 = v18;
  v26 = v19;
  sub_1AE4C78AC();
  swift_allocError();
  *v27 = a2;
  *(v27 + 8) = v4;
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4CFA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1AE4EAC50();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v17 = sub_1AE4AC6E0(1701670515, 0xE400000000000000, 0, v2[2], v2[3], v2[4]);
  if (v17)
  {
    v18 = sub_1AE4AF28C(v17);
    v23 = v19;

    v20 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
    swift_beginAccess();
    sub_1AE4B441C(a1 + v20, v8, &qword_1EB5DD520, &qword_1AE4EDB98);
    if ((*(v24 + 48))(v8, 1, v9) == 1)
    {
      sub_1AE4B4558(v8, &qword_1EB5DD520, &qword_1AE4EDB98);
      MEMORY[0x1B27010F0](v18, v23);
    }

    else
    {
      (*(v24 + 32))(v16, v8, v9);
      (*(v24 + 16))(v13, v16, v9);
      sub_1AE4EAB90();
      sub_1AE4EAC30();
      (*(v24 + 8))(v16, v9);
    }

    return (*(v24 + 56))(a2, 0, 1, v9);
  }

  else
  {
    v21 = *(v24 + 56);

    return v21(a2, 1, 1, v9);
  }
}

uint64_t sub_1AE4CFDC8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 != 15)
  {
    v6 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v6 != 2)
      {
        v7 = a1;
        goto LABEL_17;
      }

      v8 = *(a1 + 16);
      v7 = a1;

      v9 = sub_1AE4EA990();
      if (!v9)
      {
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_1AE4EA9B0();
      if (!__OFSUB__(v8, v11))
      {
        v12 = (v8 - v11 + v10);
        sub_1AE4EA9A0();
        if (v12)
        {
LABEL_15:
          v18 = *v12;
          v19 = v12[1];
          v20 = v12[2];
          v21 = v12[3];
          v22 = v12[4];
          v23 = v12[5];
          v24 = v12[6];
          v25 = v12[7];
          v26 = v12[8];
          v27 = v12[9];
          v28 = v12[10];
          v29 = v12[11];
          v30 = v12[12];
          v31 = v12[13];
          v32 = v12[14];
          v33 = v12[15];
          goto LABEL_17;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (!v6)
      {
        v7 = a1;
LABEL_17:
        sub_1AE4EAAF0();
        sub_1AE4ABE40(v7, a2);
        sub_1AE4ABE40(v7, a2);
        v4 = 0;
        goto LABEL_18;
      }

      v13 = a1;
      if (a1 <= a1 >> 32)
      {
        v7 = a1;

        v14 = sub_1AE4EA990();
        if (!v14)
        {
LABEL_26:
          result = sub_1AE4EA9A0();
          __break(1u);
          goto LABEL_27;
        }

        v15 = v14;
        v16 = sub_1AE4EA9B0();
        if (!__OFSUB__(v13, v16))
        {
          v12 = (v13 - v16 + v15);
          result = sub_1AE4EA9A0();
          if (v12)
          {
            goto LABEL_15;
          }

LABEL_27:
          __break(1u);
          return result;
        }

        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1AE4EA9A0();
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = 1;
LABEL_18:
  v34 = sub_1AE4EAB10();
  v35 = *(*(v34 - 8) + 56);

  return v35(a3, v4, 1, v34);
}

char *sub_1AE4D0034(uint64_t a1, off_t a2, off_t a3, char a4, uint64_t a5)
{
  v10 = sub_1AE4EAB10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FileIdentifier(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AE4DB620(a1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1AE4DB5C0(v18, type metadata accessor for FileIdentifier);
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v20 = sub_1AE4D77D4(*v18, v18[1], a2, a3, a4 & 1, a5);

    return v20;
  }

  v29 = a3;
  v30 = a2;
  v21 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48));
  v23 = *v21;
  v22 = v21[1];
  (*(v11 + 32))(v14, v18, v10);
  v20 = sub_1AE4D77D4(v23, v22, 0, 0, 1, a5);
  v25 = v24;
  if (v24 >> 60 == 15)
  {
    (*(v11 + 8))(v14, v10);

    return v20;
  }

  result = sub_1AE4D7C74(v14, v20, v24);
  v27 = result;
  if ((a4 & 1) != 0 || a5)
  {
    if (!__CFADD__(v30, result))
    {
      v28 = sub_1AE4D77D4(v23, v22, &result[v30], v29, a4 & 1, a5);

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

  result = &v27[v30];
  if (__CFADD__(v30, v27))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (((result | v29) & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(result, v29))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (&result[v29] >= result)
  {
    v28 = sub_1AE4EAA60();
LABEL_16:
    sub_1AE4ABE40(v20, v25);
    (*(v11 + 8))(v14, v10);
    return v28;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1AE4D0344@<X0>(uint64_t a1@<X8>)
{
  v39[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4E0, &qword_1AE4EDB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v39 - v10;
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v12, v13, v14);
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = sub_1AE4AEC7C(v15, v16);
  v21 = v20;

  sub_1AE4B0730(v19, v21);
  v2 = sub_1AE4EAB10();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v11, 0, 1, v2);
  v22 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, v12, v13, v14);
  if (!v22)
  {
LABEL_8:
    __break(1u);
    v31 = v17;
    v32 = v18;
    sub_1AE4C78AC();
    swift_allocError();
    *v33 = v3;
    *(v33 + 8) = v2;
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    swift_unexpectedError();
    __break(1u);
    v35 = v34;
    v37 = v36;
    sub_1AE4C78AC();
    swift_allocError();
    *v38 = v13;
    *(v38 + 8) = v12;
    *(v38 + 16) = v35;
    *(v38 + 24) = v37;
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v23 = sub_1AE4AF28C(v22);
  v25 = v24;

  sub_1AE4B441C(v11, v7, &qword_1EB5DD4B8, "R3");
  v26 = (*(v3 + 48))(v7, 1, v2);
  sub_1AE4B4558(v11, &qword_1EB5DD4B8, "R3");
  if (v26 == 1)
  {
    v27 = v39[0];
    *v39[0] = v23;
    *(v27 + 8) = v25;
    type metadata accessor for FileIdentifier(0);
    swift_storeEnumTagMultiPayload();
    return sub_1AE4B4558(v7, &qword_1EB5DD4B8, "R3");
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58);
    v30 = (v39[0] + *(v29 + 48));
    (*(v3 + 32))(v39[0], v7, v2);
    *v30 = v23;
    v30[1] = v25;
    type metadata accessor for FileIdentifier(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1AE4D06AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v105 = a3;
  v100 = a1;
  v7 = type metadata accessor for FileIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v99 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v94 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v94 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v94 - v24;
  v106 = sub_1AE4EAC50();
  v107 = *(v106 - 8);
  v25 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v4[2];
  v28 = v4[3];
  v104 = v4;
  v29 = v4[4];
  v112 = v28;
  v113 = v27;
  v111 = v29;
  v30 = sub_1AE4AC6E0(1936744813, 0xE400000000000000, 0, v27, v28, v29);
  if (!v30)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v95 = v20;
  v96 = v15;
  v98 = v7;
  v101 = a4;
  v35 = sub_1AE4B9FBC(v30);
  v37 = v36;
  v39 = v38;
  if (v5)
  {
    goto LABEL_58;
  }

  v97 = v13;

  v40 = sub_1AE4CA244(v35, v37, v39);

  v110 = *(v40 + 16);
  if (v110)
  {
    v41 = 0;
    v42 = (v40 + 48);
    v43 = MEMORY[0x1E69E7CC0];
    v108 = v40;
    v109 = v23;
    while (v41 < *(v40 + 16))
    {
      v117 = v43;
      v45 = *(v42 - 2);
      v44 = *(v42 - 1);
      v46 = *v42;

      v123 = v45;
      v47 = sub_1AE4AC6E0(1717989222, 0xE400000000000000, 0, v45, v44, v46);
      if (!v47)
      {
        goto LABEL_50;
      }

      v23 = sub_1AE4A6A00(v47);

      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      v114 = v23;
      v116 = v42;
      v48 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v123, v44, v46);
      if (!v48)
      {
        goto LABEL_51;
      }

      v49 = sub_1AE4A6A00(v48);
      v115 = v41;

      v50 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v113, v112, v111);
      if (!v50)
      {
        goto LABEL_52;
      }

      v51 = sub_1AE4A6A00(v50);
      v23 = 0;

      v52 = v49 - v51;
      if (v49 < v51)
      {
        goto LABEL_47;
      }

      v53 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v123, v44, v46);
      if (!v53)
      {
        goto LABEL_53;
      }

      v54 = sub_1AE4A6A00(v53);
      v56 = v115;
      v55 = v116;

      v43 = v117;
      v23 = v109;
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1AE4E89E0(0, *(v43 + 2) + 1, 1, v43);
      }

      v58 = *(v43 + 2);
      v57 = *(v43 + 3);
      if (v58 >= v57 >> 1)
      {
        v43 = sub_1AE4E89E0((v57 > 1), v58 + 1, 1, v43);
      }

      v41 = v56 + 1;

      *(v43 + 2) = v58 + 1;
      v59 = &v43[24 * v58];
      *(v59 + 4) = v114;
      *(v59 + 5) = v52;
      *(v59 + 6) = v54;
      v42 = v55 + 3;
      v40 = v108;
      if (v110 == v41)
      {
        goto LABEL_20;
      }
    }

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
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if (v105)
  {
    v60 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
    v61 = v105;
    swift_beginAccess();
    sub_1AE4B441C(v61 + v60, v23, &qword_1EB5DD520, &qword_1AE4EDB98);
    v62 = *(v107 + 48);
    if (v62(v23, 1, v106) != 1)
    {
      v63 = v107;
      v64 = v103;
      v65 = v106;
      (*(v107 + 32))(v103, v23, v106);
      (*(v63 + 56))(v64, 0, 1, v65);
      goto LABEL_29;
    }
  }

  else
  {
    (*(v107 + 56))(v23, 1, 1, v106);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v67 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
    v68 = Strong;
    swift_beginAccess();
    v64 = v103;
    sub_1AE4B441C(v68 + v67, v103, &qword_1EB5DD520, &qword_1AE4EDB98);

    v65 = v106;
    v69 = v107;
  }

  else
  {
    v69 = v107;
    v64 = v103;
    v65 = v106;
    (*(v107 + 56))(v103, 1, 1, v106);
  }

  v62 = *(v69 + 48);
  if (v62(v23, 1, v65) != 1)
  {
    sub_1AE4B4558(v23, &qword_1EB5DD520, &qword_1AE4EDB98);
  }

LABEL_29:
  if (v62(v64, 1, v65) == 1)
  {

    sub_1AE4B4558(v64, &qword_1EB5DD520, &qword_1AE4EDB98);
    v118 = 4;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = -64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
LABEL_44:
    v85 = v101;
    *v101 = 4;
    v85[1] = 0;
    v85[2] = 0;
    v85[3] = 0;
    *(v85 + 32) = -64;
    return result;
  }

  v71 = v107;
  v72 = v102;
  (*(v107 + 32))(v102, v64, v65);
  v73 = v97;
  sub_1AE4D0344(v97);
  v74 = v95;
  (*(v71 + 16))(v95, v72, v65);
  (*(v71 + 56))(v74, 0, 1, v65);
  v75 = v96;
  sub_1AE4D127C(v74, v96);
  sub_1AE4B4558(v74, &qword_1EB5DD520, &qword_1AE4EDB98);
  sub_1AE4DB5C0(v73, type metadata accessor for FileIdentifier);
  v76 = v75;
  v77 = v99;
  sub_1AE4BA8A8(v76, v99, type metadata accessor for FileIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1AE4DB5C0(v77, type metadata accessor for FileIdentifier);
LABEL_43:

    v118 = 4;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = -64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();
    result = (*(v107 + 8))(v102, v65);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v80 = *v77;
    v79 = v77[1];
  }

  else
  {
    v81 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48));
    v80 = *v81;
    v79 = v81[1];
    v82 = sub_1AE4EAB10();
    (*(*(v82 - 8) + 8))(v77, v82);
  }

  if (!v105 && !swift_weakLoadStrong())
  {

    goto LABEL_43;
  }

  if (!v100)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v83 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v113, v112, v111);
  if (!v83)
  {
LABEL_56:
    __break(1u);
    v35 = v31;
    v39 = v32;
    v37 = v33;
    sub_1AE4C78AC();
    swift_allocError();
    *v86 = v23;
    *(v86 + 8) = v35;
    *(v86 + 16) = v39;
    *(v86 + 24) = v37;
    while (1)
    {
      swift_unexpectedError();
      __break(1u);
LABEL_58:
      v87 = v34;
      sub_1AE4C78AC();
      swift_allocError();
      *v88 = v35;
      *(v88 + 8) = v37;
      *(v88 + 16) = v39;
      *(v88 + 24) = v87;
      swift_unexpectedError();
      __break(1u);
      v35 = v89;
      v39 = v90;
      v92 = v91;
      sub_1AE4C78AC();
      swift_allocError();
      *v93 = v37;
      *(v93 + 8) = v35;
      *(v93 + 16) = v39;
      *(v93 + 24) = v92;
    }
  }

  v84 = sub_1AE4A6A00(v83);

  if ((v84 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  sub_1AE4DF35C(v100, v80, v79, v43);

  return (*(v107 + 8))(v102, v106);
}

uint64_t sub_1AE4D127C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a1;
  v78 = a2;
  v77 = sub_1AE4EAB10();
  v75 = *(v77 - 8);
  v2 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD588, &qword_1AE4EDBF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v69 - v8;
  v9 = type metadata accessor for FileIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v69 - v15;
  v17 = sub_1AE4EAC50();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v71 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v72 = &v69 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v70 = &v69 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v69 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v69 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v69 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v69 - v36;
  sub_1AE4B441C(v79, v16, &qword_1EB5DD520, &qword_1AE4EDB98);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1AE4B4558(v16, &qword_1EB5DD520, &qword_1AE4EDB98);
    return sub_1AE4DB620(v80, v78);
  }

  v39 = *(v18 + 32);
  v79 = v37;
  v39(v37, v16, v17);
  v40 = v80;
  sub_1AE4DB620(v80, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v18 + 8))(v79, v17);
    sub_1AE4DB620(v40, v78);
    return sub_1AE4DB5C0(v12, type metadata accessor for FileIdentifier);
  }

  v80 = v9;
  if (EnumCaseMultiPayload != 1)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58);
    v54 = (v12 + *(v53 + 48));
    v56 = *v54;
    v55 = v54[1];
    v57 = v75;
    (*(v75 + 32))(v76, v12, v77);
    v58 = v78;
    (*(v57 + 16))();
    (*(v18 + 16))(v31, v79, v17);
    sub_1AE4EAB90();

    v59 = v71;
    v60 = MEMORY[0x1B27010F0](v56, v55);
    v61 = v74;
    MEMORY[0x1B2700FE0](v60);
    v62 = *(v18 + 8);
    v62(v59, v17);
    v63 = sub_1AE4EAC00();
    result = (*(*(v63 - 8) + 48))(v61, 1, v63);
    if (result != 1)
    {

      v64 = (v58 + *(v53 + 48));
      v65 = v70;
      sub_1AE4EAC20();
      v66 = sub_1AE4EABC0();
      v68 = v67;
      v62(v65, v17);
      (*(v57 + 8))(v76, v77);
      v62(v79, v17);
      *v64 = v66;
      v64[1] = v68;
      return swift_storeEnumTagMultiPayload();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v43 = *v12;
  v42 = v12[1];
  v44 = v79;
  (*(v18 + 16))(v31, v79, v17);
  sub_1AE4EAB90();

  v45 = MEMORY[0x1B27010F0](v43, v42);
  v46 = v73;
  MEMORY[0x1B2700FE0](v45);
  v47 = *(v18 + 8);
  v47(v28, v17);
  v48 = sub_1AE4EAC00();
  result = (*(*(v48 - 8) + 48))(v46, 1, v48);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1AE4EAC20();
  v49 = sub_1AE4EABC0();
  v51 = v50;
  v47(v35, v17);
  v47(v44, v17);
  v52 = v78;
  *v78 = v49;
  v52[1] = v51;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AE4D197C()
{
  v1 = *(v0 + 16);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1AE4D19E8()
{
  sub_1AE4D1AC8(319, &qword_1EB5DD1A0, 255, MEMORY[0x1E69E83A8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1AE4D1AC8(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_1AE4EB010();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AE4D1B1C()
{
  sub_1AE4EB0A0();

  strcpy(v28, "caches/uuids/");
  HIWORD(v28[1]) = -4864;
  sub_1AE4EAAC0();
  v0 = sub_1AE4EAD90();
  v2 = v1;

  MEMORY[0x1B2701270](v0, v2);

  MEMORY[0x1B2701270](0x7473696C702ELL, 0xE600000000000000);
  swift_beginAccess();
  v3 = sub_1AE4AA0F0(v28[0], v28[1], &v27);
  v5 = v4;
  swift_endAccess();

  if (v5 >> 60 != 15)
  {
    sub_1AE4AB600(v3, v5);
    v6 = sub_1AE4AB614(v3, v5);
    sub_1AE4ABE40(v3, v5);
    v7 = sub_1AE4AC2B4(v6);
    v11 = sub_1AE4AC6E0(0x7364697575, 0xE500000000000000, 0, v7, v9, v10);

    if (v11)
    {
      v12 = sub_1AE4AC2B4(v11);
      v14 = v13;
      v16 = v15;

      sub_1AE4EAAC0();
      v17 = sub_1AE4EAD90();
      v19 = v18;

      v20 = sub_1AE4AC6E0(v17, v19, 0, v12, v16, v14);

      if (v20)
      {
        v21 = sub_1AE4AC2B4(v20);
        v23 = v22;
        v25 = v24;

        sub_1AE4E15F0(v21, v23, v25, &v26);

        sub_1AE4ABE40(v3, v5);
        return v21;
      }
    }

    sub_1AE4ABE40(v3, v5);
  }

  return 0;
}

uint64_t sub_1AE4D1EB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD548, &qword_1AE4EDBB8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1AE4EAC70();
  qword_1EB5DF640 = result;
  return result;
}

uint64_t sub_1AE4D1F00()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4D1F38()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4D1F70(uint64_t a1)
{
  swift_beginAccess();
  sub_1AE4D4124(a1 + 40, 0x100000000);
  return swift_endAccess();
}

uint64_t sub_1AE4D1FD4(uint64_t a1, int a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5E8, &qword_1AE4EDC30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v72 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5F0, &qword_1AE4EDC38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = v72 - v14;
  if (!*(a1 + 16))
  {
    if (a2)
    {
      swift_beginAccess();
      v16 = *(v2 + 16);
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v3 = v18 & *(v16 + 64);
      v19 = (v17 + 63) >> 6;
      v20 = *(v2 + 16);

      v24 = 0;
      while (v3)
      {
LABEL_11:
        v26 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v27 = *(*(v16 + 56) + ((v24 << 9) | (8 * v26)));
        if (*(v27 + 32) == a2 && *(v27 + 36) == 1)
        {
          v29 = *(v27 + 16);
          v28 = *(v27 + 24);

          v29(v30);
        }
      }

      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v19)
        {
        }

        v3 = *(v16 + 64 + 8 * v25);
        ++v24;
        if (v3)
        {
          v24 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v31 = result;
    v32 = sub_1AE4A39D4(*(v2 + 32), &v88);
    v74 = v33;
    v34 = v32[6];
    v35 = v32[7];
    v75 = v32;
    v36 = sub_1AE4AC6E0(1701669236, 0xE400000000000000, 0, v34, v35, v32[8]);
    if (!v36)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v3 = sub_1AE4A6A00(v36);
    v81 = v15;
    v84 = v9;
    v73 = v11;
    v85 = v31;

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    v38 = *(v2 + 80);
    v37 = *(v2 + 88);
    v39 = v38[6];
    v40 = v38[7];
    v41 = v38[8];

    v42 = sub_1AE4AC6E0(1701669236, 0xE400000000000000, 0, v39, v40, v41);
    if (!v42)
    {
LABEL_44:
      __break(1u);
      v68 = v21;
      v69 = v22;
      v70 = v23;
      sub_1AE4C78AC();
      swift_allocError();
      *v71 = v3;
      *(v71 + 8) = v68;
      *(v71 + 16) = v69;
      *(v71 + 24) = v70;
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v43 = sub_1AE4A6A00(v42);

    if ((v43 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    v44 = v81;
    v45 = v74;
    if (v43 < v3)
    {
      v80 = v6;
      v46 = *(v2 + 80);
      v72[0] = *(v2 + 88);
      *(v2 + 80) = v75;
      *(v2 + 88) = v45;

      v87[0] = sub_1AE4BD470();
      v72[1] = v46;
      v87[4] = sub_1AE4BD470();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5F8, &qword_1AE4EDC40);
      sub_1AE4AC078(&qword_1EB5DD600, &qword_1EB5DD5F8, &qword_1AE4EDC40);
      sub_1AE4D72BC();
      sub_1AE4EAD00();

      swift_beginAccess();
      v47 = *(v2 + 24);
      v48 = v47 + 64;
      v49 = 1 << *(v47 + 32);
      v50 = -1;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      v51 = v50 & *(v47 + 64);
      v52 = (v49 + 63) >> 6;
      v76 = (v73 + 16);
      v79 = v47;

      v53 = 0;
      v54 = v84;
      v55 = v85;
      v78 = v48;
      v77 = v52;
      while (v51)
      {
        v56 = v80;
LABEL_30:
        v82 = v51;
        v83 = v53;
        v58 = *(*(v79 + 56) + ((v53 << 9) | (8 * __clz(__rbit64(v51)))));
        (*v76)(v54, v44, v55);
        v59 = *(v56 + 36);
        v3 = sub_1AE4AC078(&qword_1EB5DD608, &qword_1EB5DD5F0, &qword_1AE4EDC38);
        v86 = v58;

        sub_1AE4EAEB0();
        while (1)
        {
          sub_1AE4EAEC0();
          if (*(v54 + v59) == v87[0])
          {
            break;
          }

          v60 = sub_1AE4EAF60();
          v62 = *v61;
          v63 = v61[1];
          v64 = v61[2];
          v65 = *(v61 + 24);
          v66 = *(v61 + 25);
          sub_1AE4DFF18();
          v60(v87, 0);
          sub_1AE4EAED0();
          if (*(v86 + 32) == 1)
          {
            v67 = *(v86 + 24);
            (*(v86 + 16))(v63, v66 ^ 1u);
          }

          sub_1AE4DFF20();
          v54 = v84;
          v55 = v85;
        }

        v51 = (v82 - 1) & v82;
        sub_1AE4B4558(v54, &qword_1EB5DD5E8, &qword_1AE4EDC30);

        v44 = v81;
        v48 = v78;
        v52 = v77;
        v53 = v83;
      }

      v56 = v80;
      while (1)
      {
        v57 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_40;
        }

        if (v57 >= v52)
        {

          return (*(v73 + 8))(v44, v55);
        }

        v51 = *(v48 + 8 * v57);
        ++v53;
        if (v51)
        {
          v53 = v57;
          goto LABEL_30;
        }
      }
    }
  }

  return result;
}

void sub_1AE4D2730(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 64);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v6);
    v8 = qword_1EB5DD1C0;

    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_1AE4EAF80();
    if (v11 == 2 || (v11 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v10);
      sub_1AE4EAFA0();
    }

    else
    {

      sub_1AE4D296C(a1, a2, a3, &v12);
    }
  }

  else
  {

    sub_1AE4EB140();
    __break(1u);
  }
}

uint64_t sub_1AE4D296C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_beginAccess();
  if (*(a1 + 56) <= 1u)
  {
    if (!*(a1 + 56))
    {

      goto LABEL_9;
    }
  }

  else if (*(a1 + 56) - 2 < 2)
  {
    sub_1AE4C9430();
    swift_allocError();
    *v10 = 5;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = -64;

LABEL_8:
    swift_willThrow();
    swift_endAccess();
LABEL_14:
  }

  result = sub_1AE4D3A48((a1 + 40));
  if (result)
  {
    v12 = result;
    sub_1AE4C9430();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    goto LABEL_8;
  }

LABEL_9:
  v14 = *(a1 + 72);
  if (v14 == -1)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 72) = v14 + 1;
    swift_endAccess();
    if (*(a1 + 56))
    {
      sub_1AE4C9430();
      swift_allocError();
      *v15 = 5;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = -64;
      swift_willThrow();
      goto LABEL_14;
    }

    type metadata accessor for Process.Impl.ProcessUpdateRecord();
    v16 = swift_allocObject();
    *(v16 + 32) = 1;
    *(v16 + 16) = sub_1AE4E04E8;
    *(v16 + 24) = v9;
    swift_beginAccess();

    v17 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    sub_1AE4DA77C(v16, v14, isUniquelyReferenced_nonNull_native, sub_1AE4E9B94, &qword_1EB5DD540, &qword_1AE4EDBB0);
    *(a1 + 24) = v38;
    swift_endAccess();
    v19 = sub_1AE4A39D4(*(a1 + 32), v36);
    if (v4)
    {
      v21 = v37;
      sub_1AE4C9430();
      v32 = v36[1];
      v34 = v36[0];
      swift_allocError();
      *v22 = v34;
      *(v22 + 16) = v32;
      *(v22 + 32) = v21;
      goto LABEL_14;
    }

    v35 = v14;
    v23 = *(a1 + 80);
    v24 = *(a1 + 88);
    *(a1 + 80) = v19;
    *(a1 + 88) = v20;

    v25 = sub_1AE4BD470();

    v26 = *(v25 + 16);
    if (v26)
    {
      v33 = a4;
      v27 = (v25 + 32);
      do
      {
        v28 = *v27++;
        v29 = objc_allocWithZone(_DYImage);

        v30 = [v29 initWithInternal_];
        v31 = *&v30[OBJC_IVAR____DYImage_impl];
        *&v30[OBJC_IVAR____DYImage_impl] = v28;

        a2(v30, 1);

        --v26;
      }

      while (v26);

      a4 = v33;
    }

    else
    {
    }

    *a4 = v35;
  }

  return result;
}

uint64_t sub_1AE4D2D38@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X8>)
{
  result = swift_beginAccess();
  if (*(a1 + 56) <= 1u)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_8;
    }
  }

  else if (*(a1 + 56) - 2 < 2)
  {
    sub_1AE4C9430();
    swift_allocError();
    *v10 = 5;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = -64;
LABEL_7:
    swift_willThrow();
    return swift_endAccess();
  }

  result = sub_1AE4D3A48((a1 + 40));
  if (result)
  {
    v11 = result;
    sub_1AE4C9430();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    goto LABEL_7;
  }

LABEL_8:
  v13 = *(a1 + 72);
  if (v13 == -1)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 72) = v13 + 1;
    swift_endAccess();
    if (*(a1 + 56))
    {
      sub_1AE4C9430();
      swift_allocError();
      *v14 = 5;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = -64;
      return swift_willThrow();
    }

    else
    {
      type metadata accessor for Process.Impl.ProcessUpdateRecord();
      v15 = swift_allocObject();
      *(v15 + 32) = 1;
      *(v15 + 16) = a2;
      *(v15 + 24) = a3;
      swift_beginAccess();

      v16 = *(a1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(a1 + 24);
      *(a1 + 24) = 0x8000000000000000;
      sub_1AE4DA77C(v15, v13, isUniquelyReferenced_nonNull_native, sub_1AE4E9B94, &qword_1EB5DD540, &qword_1AE4EDBB0);
      *(a1 + 24) = v33;
      swift_endAccess();
      v18 = sub_1AE4A39D4(*(a1 + 32), v31);
      if (v4)
      {
        v20 = v32;
        sub_1AE4C9430();
        v29 = v31[1];
        v30 = v31[0];
        result = swift_allocError();
        *v21 = v30;
        *(v21 + 16) = v29;
        *(v21 + 32) = v20;
      }

      else
      {
        v22 = *(a1 + 80);
        v23 = *(a1 + 88);
        *(a1 + 80) = v18;
        *(a1 + 88) = v19;

        v24 = sub_1AE4BD470();

        v25 = *(v24 + 16);
        if (v25)
        {
          v26 = (v24 + 32);
          do
          {
            v27 = *v26++;

            a2(v28, 1);

            --v25;
          }

          while (v25);
        }

        *a4 = v13;
      }
    }
  }

  return result;
}

void sub_1AE4D3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 64))
  {
    v4 = v3;
    v7 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v8 = qword_1EB5DD1C0;
    v10 = v9;
    if (v8 != -1)
    {
      swift_once();
    }

    v11 = sub_1AE4EAF80();
    if (v12 == 2 || (v12 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v11);
      sub_1AE4EAFA0();
    }

    else
    {
      sub_1AE4D321C(v4, v7, a2, a3, &v13);
    }
  }

  else
  {
    sub_1AE4EB140();
    __break(1u);
  }
}

uint64_t sub_1AE4D321C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X8>)
{
  result = swift_beginAccess();
  if (*(a1 + 56) <= 1u)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_8;
    }
  }

  else if (*(a1 + 56) - 2 < 2)
  {
    sub_1AE4C9430();
    swift_allocError();
    *v11 = 5;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = -64;
LABEL_7:
    swift_willThrow();
    return swift_endAccess();
  }

  result = sub_1AE4D3A48((a1 + 40));
  if (result)
  {
    v12 = result;
    sub_1AE4C9430();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    goto LABEL_7;
  }

LABEL_8:
  v14 = *(a1 + 72);
  if (v14 == -1)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 72) = v14 + 1;
    swift_endAccess();
    if (*(a1 + 56))
    {
      sub_1AE4C9430();
      swift_allocError();
      *v15 = 5;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = -64;
      return swift_willThrow();
    }

    else
    {
      type metadata accessor for Process.Impl.ProcessNotifierRecord();
      v16 = swift_allocObject();
      *(v16 + 36) = 1;
      *(v16 + 32) = a2;
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;
      swift_beginAccess();

      v17 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(a1 + 16);
      *(a1 + 16) = 0x8000000000000000;
      sub_1AE4DA77C(v16, v14, isUniquelyReferenced_nonNull_native, sub_1AE4E9BA8, &qword_1EB5DD5E0, &qword_1AE4EDC28);
      *(a1 + 16) = v19;
      result = swift_endAccess();
      *a5 = v14;
    }
  }

  return result;
}

void sub_1AE4D3440(uint64_t a1)
{
  if (*(v1 + 64))
  {
    v3 = v1;
    v4 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v5 = qword_1EB5DD1C0;
    v7 = v6;
    if (v5 != -1)
    {
      swift_once();
    }

    v8 = sub_1AE4EAF80();
    if (v9 == 2 || (v9 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v8);
      sub_1AE4EAFA0();
    }

    else
    {
      sub_1AE4D35EC(v3, v4);
    }
  }

  else
  {
    sub_1AE4EB140();
    __break(1u);

    __break(1u);
  }
}

uint64_t sub_1AE4D35EC(uint64_t a1, unsigned int a2)
{
  result = swift_beginAccess();
  if (!*(a1 + 56))
  {
    swift_beginAccess();
    v5 = *(a1 + 24);
    if (*(v5 + 16))
    {
      v6 = sub_1AE4E8EEC(a2);
      if (v7)
      {
        *(*(*(v5 + 56) + 8 * v6) + 32) = 0;
        swift_beginAccess();

        sub_1AE4D965C(a2, sub_1AE4EA804, sub_1AE4E9B94);
        swift_endAccess();
      }
    }

    result = swift_beginAccess();
    v8 = *(a1 + 16);
    if (*(v8 + 16))
    {
      result = sub_1AE4E8EEC(a2);
      if (v9)
      {
        *(*(*(v8 + 56) + 8 * result) + 36) = 0;
        swift_beginAccess();

        sub_1AE4D965C(a2, sub_1AE4EA804, sub_1AE4E9BA8);
        swift_endAccess();
      }
    }

    if (!*(*(a1 + 24) + 16) && !*(*(a1 + 16) + 16))
    {
      swift_beginAccess();
      sub_1AE4D4124(a1 + 40, 0x100000000);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1AE4D37E4()
{
  v18 = *MEMORY[0x1E69E9840];
  result = swift_beginAccess();
  if (!*(v0 + 56))
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = v0;
    swift_unknownObjectRetain();
    v5 = swift_slowAlloc();
    ObjectType = swift_getObjectType();
    v7 = MEMORY[0x1B2701490](ObjectType);
    v8 = mach_msg(v5, 2050, 0, 0x8000u, v7, 0, 0);
    if (v8)
    {
      v9 = v8;
      swift_beginAccess();
      sub_1AE4D4124(v4 + 40, v9);
      swift_endAccess();
LABEL_15:
      MEMORY[0x1B27020A0](v5, -1, -1);
      result = sub_1AE4BD9E8(v2, v3, 0);
      goto LABEL_16;
    }

    msgh_bits = v5->msgh_bits;
    if ((v5->msgh_bits & 0x80000000) == 0)
    {
      msgh_size = v5->msgh_size;
      msgh_remote_port = v5->msgh_remote_port;
      msgh_id = v5->msgh_id;
      if ((msgh_id & 0xFFFFF000) == 0x4000)
      {
        if (msgh_size <= 0x8000)
        {
          swift_beginAccess();
          sub_1AE4D1FD4(v0 + 40, msgh_id & 0xFFF);
          swift_endAccess();
LABEL_17:
          *&msg.msgh_voucher_port = 0;
          msg.msgh_remote_port = msgh_remote_port;
          msg.msgh_local_port = 0;
          msg.msgh_bits = msgh_bits & 0x1F;
          msg.msgh_size = 24;
          v15 = mach_msg(&msg, 1, 0x18u, 0, 0, 0, 0);
          if (!v15)
          {
            v5->msgh_remote_port = 0;
            goto LABEL_14;
          }

          v16 = v15;
          swift_beginAccess();
          sub_1AE4D4124(v0 + 40, v16);
LABEL_13:
          swift_endAccess();
LABEL_14:
          mach_msg_destroy(v5);
          goto LABEL_15;
        }
      }

      else if ((msgh_id == 4096 || msgh_id == 12288 || msgh_id == 0x2000) && msgh_size <= 0x8000)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    sub_1AE4D4124(v0 + 40, 4);
    goto LABEL_13;
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4D3A48(uint64_t *a1)
{
  v2 = v1;
  v43 = *MEMORY[0x1E69E9840];
  v4 = sub_1AE4EAC80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE4EACA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 64);
  if (!v14)
  {
LABEL_21:
    __break(1u);
  }

  v15 = qword_1EB5DD1C0;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  sub_1AE4EAF80();

  if (LOBYTE(aBlock.flags) == 2 || (aBlock.flags & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v17 = *a1;
  result = *(a1 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }

    v35 = v10;
    v36 = v9;
    v19 = v5;
    v37 = v4;
    v34 = a1[1];
    name = v17;
    goto LABEL_12;
  }

  if (result != 2 && result != 3)
  {
    v26 = sub_1AE4DAFAC(0xFFFFFFFFFFFFFFFFLL);
    aBlock.8 = 0uLL;
    *&aBlock.flags = 0x500000029;
    name = 0;
    v27 = MEMORY[0x1E69E9A60];
    result = mach_port_construct(*MEMORY[0x1E69E9A60], &aBlock, v26, &name);
    if (result)
    {
      v28 = result;
LABEL_17:
      *a1 = v28;
      a1[1] = 0;
      *(a1 + 16) = 3;
      goto LABEL_18;
    }

    v29 = task_dyld_process_info_notify_register(*(v2 + 32), name);
    if (v29)
    {
      v30 = *v27;
      v31 = v29;
      mach_port_destruct(v30, name, 0, v26);
      result = v31;
      v28 = v31;
      goto LABEL_17;
    }

    v35 = v10;
    v36 = v9;
    v34 = v26;
    v19 = v5;
    v37 = v4;
LABEL_12:
    sub_1AE4DFE10();
    v20 = *(v2 + 64);
    v21 = sub_1AE4EAFB0();

    swift_getObjectType();
    v41 = sub_1AE4DFE5C;
    v42 = v2;
    *&aBlock.flags = MEMORY[0x1E69E9820];
    aBlock.reserved[0] = 1107296256;
    v33[1] = &aBlock.reserved[1];
    aBlock.reserved[1] = sub_1AE4D3F10;
    v40 = &block_descriptor_170;
    v22 = _Block_copy(&aBlock);

    sub_1AE4EAC90();
    sub_1AE4D4038();
    sub_1AE4EAFC0();
    _Block_release(v22);
    v33[0] = *(v19 + 8);
    (v33[0])(v8, v37);
    v23 = v36;
    v35 = *(v35 + 8);
    (v35)(v13, v36);

    v41 = sub_1AE4DFE60;
    v42 = v2;
    *&aBlock.flags = MEMORY[0x1E69E9820];
    aBlock.reserved[0] = 1107296256;
    aBlock.reserved[1] = sub_1AE4D3F10;
    v40 = &block_descriptor_173;
    v24 = _Block_copy(&aBlock);

    sub_1AE4EAC90();
    sub_1AE4D4038();
    sub_1AE4EAFD0();
    _Block_release(v24);
    (v33[0])(v8, v37);
    (v35)(v13, v23);

    sub_1AE4EAFF0();
    result = 0;
    v25 = v34;
    *a1 = v21;
    a1[1] = v25;
    *(a1 + 16) = 0;
    goto LABEL_18;
  }

  result = *a1;
LABEL_18:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4D3F10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1AE4D3F54(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 56);
  if (v3 <= 2 && v3 != 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    if (v3 == 1)
    {
      task_dyld_process_info_notify_deregister(*(a1 + 32), *(a1 + 40));
      mach_port_destruct(*MEMORY[0x1E69E9A60], v5, 0, v6);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v9 = *(a1 + 56);
      v10 = 4;
    }

    else
    {
      task_dyld_process_info_notify_deregister(*(a1 + 32), HIDWORD(v5));
      mach_port_destruct(*MEMORY[0x1E69E9A60], HIDWORD(v5), 0, v6);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = 0;
      v9 = *(a1 + 56);
      v10 = 3;
    }

    *(a1 + 56) = v10;
    return sub_1AE4BD9E8(v7, v8, v9);
  }

  return result;
}

uint64_t sub_1AE4D4038()
{
  sub_1AE4EAC80();
  sub_1AE4AA0A8(&qword_1EB5DCF78, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5D0, &qword_1AE4EDC20);
  sub_1AE4AC078(&qword_1EB5DD5D8, &qword_1EB5DD5D0, &qword_1AE4EDC20);
  return sub_1AE4EB050();
}

void sub_1AE4D4124(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v2;
  v7 = qword_1EB5DD1C0;
  v8 = v3;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1AE4EAF80();

  if (v20 == 2 || (v20 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (*(a1 + 16) <= 1u)
  {
    v10 = *a1;
    if (*(a1 + 16))
    {
      if ((a2 & 0x100000000) != 0)
      {
        return;
      }

      *a1 = a2 | (v10 << 32);
      v9 = 2;
      goto LABEL_17;
    }

    v11 = *(a1 + 8);
    swift_beginAccess();
    v12 = *(v4 + 24);
    v13 = MEMORY[0x1E69E7CC8];
    *(v4 + 24) = MEMORY[0x1E69E7CC8];

    swift_beginAccess();
    v14 = *(v4 + 16);
    *(v4 + 16) = v13;

    ObjectType = swift_getObjectType();
    v16 = MEMORY[0x1B2701490](ObjectType);
    v17 = (a2 & 0x100000000) == 0;
    v18 = a2 | (v16 << 32);
    if (v17)
    {
      v16 = v18;
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    *a1 = v16;
    *(a1 + 8) = v11;
    *(a1 + 16) = v19;
    swift_getObjectType();
    sub_1AE4EAFE0();
    sub_1AE4BD9E8(v10, v11, 0);
  }

  else if (*(a1 + 16) - 2 >= 2 && (a2 & 0x100000000) == 0)
  {
    *a1 = a2;
    *(a1 + 8) = 0;
    v9 = 3;
LABEL_17:
    *(a1 + 16) = v9;
  }
}

double sub_1AE4D4300(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AE4DCB04(a1, a2, v9);
  if (v4)
  {
    v7 = v10;
    result = *v9;
    v8 = v9[1];
    *a4 = v9[0];
    *(a4 + 16) = v8;
    *(a4 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AE4D4348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v25 = *MEMORY[0x1E69E9840];
  v6 = sub_1AE4EAB10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping) = xmmword_1AE4ED4C0;
  *(v3 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_localCacheBaseAddress) = 0;
  v11 = (v3 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0xF000000000000000;
  *(v3 + 16) = a2;
  v12 = OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachePath;
  v13 = sub_1AE4EAC50();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v3 + v12, a3, v13);
  v23 = 0;
  v24 = 0;
  if (_dyld_get_shared_cache_uuid() && (sub_1AE4EAAF0(), v15 = sub_1AE4EAAE0(), v16 = *(v7 + 8), v16(v10, v6), (v15 & 1) != 0))
  {
    v22 = 0;
    shared_cache_range = _dyld_get_shared_cache_range();
    (*(v14 + 8))(a3, v13);
    v16(v21, v6);
    *(v3 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_localCacheBaseAddress) = shared_cache_range;
  }

  else
  {
    (*(v14 + 8))(a3, v13);
    (*(v7 + 8))(v21, v6);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v3;
}

unint64_t sub_1AE4D45C8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5;
  v325 = a2;
  v326 = a1;
  v339 = *MEMORY[0x1E69E9840];
  v9 = sub_1AE4EAA30();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v309 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v318 = &v309 - v16;
  v17 = type metadata accessor for FileIdentifier(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v317 = &v309 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v309 - v22);
  v24 = (v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping);
  v25 = *(v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping + 8);
  if (v25 >> 60 != 15)
  {
    goto LABEL_142;
  }

  v314 = a3;
  v316 = v4;
  v26 = (v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping);
  v27 = *(v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping + 24);
  if (v27 >> 60 != 15 && *v26 == v326 && v26[1] == v325)
  {
    v4 = v26[2];
    sub_1AE4A6FD8(v4, v27);
    goto LABEL_337;
  }

  v312 = (v4 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping);
  v21 = *(v316 + 16);
  v315 = a4;
  v313 = v23;
  v311 = v9;
  v310 = v10;
  v309 = v13;
  if (v21 >> 62)
  {
    goto LABEL_333;
  }

  v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
LABEL_334:
    v331 = 4uLL;
    v332 = 0;
    v333 = 0;
    v334 = -64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();
    goto LABEL_335;
  }

  while (2)
  {
    v30 = 0;
    v324 = v21 & 0xC000000000000001;
    v323 = v21 & 0xFFFFFFFFFFFFFF8;
    v321 = v29;
    v322 = v21;
    while (!v324)
    {
      if (v30 >= *(v323 + 16))
      {
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
        goto LABEL_328;
      }

      v31 = *(v21 + 8 * v30 + 32);

      v24 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        goto LABEL_141;
      }

LABEL_14:
      v327 = v24;
      v32 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v31[2], v31[3], v31[4]);
      if (!v32)
      {
        goto LABEL_369;
      }

      v9 = v32;
      v33 = *(v32 + 72);
      v34 = (*(v32 + 64))();
      v27 = v34;
      v35 = v9[2];
      v25 = v9[3];
      v36 = v25 >> 62;
      *&v329 = v31;
      if ((v25 >> 62) > 1)
      {
        if (v36 != 2)
        {
          *(&v336 + 6) = 0;
          *&v336 = 0;
          if (v34 > 0)
          {
            goto LABEL_306;
          }

          v331 = v34;
          v332 = &v336;
          v333 = &v336;
          v68 = v7;
          sub_1AE4A5694();
          v42 = v38;
          if (v68)
          {
            goto LABEL_381;
          }

          goto LABEL_55;
        }

        v10 = *(v35 + 16);
        v43 = *(v35 + 24);
        v44 = sub_1AE4EA990();
        if (v44)
        {
          v45 = sub_1AE4EA9B0();
          if (__OFSUB__(v10, v45))
          {
            goto LABEL_322;
          }

          v44 += v10 - v45;
        }

        v46 = __OFSUB__(v43, v10);
        v10 = v43 - v10;
        if (v46)
        {
          goto LABEL_307;
        }

        v47 = sub_1AE4EA9A0();
        if (v47 >= v10)
        {
          v48 = v10;
        }

        else
        {
          v48 = v47;
        }

        if (v44)
        {
          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        if (v49 < v27)
        {
          goto LABEL_308;
        }

        v50 = (v48 + v44);
        if (!v44)
        {
          v50 = 0;
        }

        *&v331 = v27;
        *(&v331 + 1) = v49;
        v332 = v44;
        v333 = v50;
        v51 = v7;
        sub_1AE4A5694();
        v42 = v52;
        if (v51)
        {
LABEL_381:
          v289 = v39;
          v290 = v40;
          v291 = v41;
          sub_1AE4C78AC();
          v287 = swift_allocError();
          *v292 = v42;
          *(v292 + 8) = v289;
          *(v292 + 16) = v290;
          *(v292 + 24) = v291;
          goto LABEL_382;
        }

        sub_1AE4A65CC(v52);
        v54 = v53;
        v31 = v329;
LABEL_51:
        v66 = sub_1AE4AC038(v42);
        if (v66 == 6)
        {
          goto LABEL_380;
        }

        sub_1AE4AD198(v66, v54, v331, *(&v331 + 1), &v335, &v336);
        v27 = 0;

        v67 = v336;
        goto LABEL_57;
      }

      if (v36)
      {
        v55 = v35;
        v56 = v35 >> 32;
        v10 = v56 - v55;
        if (v56 < v55)
        {
          goto LABEL_305;
        }

        v57 = sub_1AE4EA990();
        if (v57)
        {
          v58 = sub_1AE4EA9B0();
          if (__OFSUB__(v55, v58))
          {
            goto LABEL_323;
          }

          v57 += v55 - v58;
        }

        v59 = sub_1AE4EA9A0();
        if (v59 >= v10)
        {
          v60 = v10;
        }

        else
        {
          v60 = v59;
        }

        if (v57)
        {
          v61 = v60;
        }

        else
        {
          v61 = 0;
        }

        v31 = v329;
        if (v61 < v27)
        {
          goto LABEL_309;
        }

        v62 = (v60 + v57);
        if (!v57)
        {
          v62 = 0;
        }

        *&v331 = v27;
        *(&v331 + 1) = v61;
        v332 = v57;
        v333 = v62;
        v63 = v7;
        sub_1AE4A5694();
        v42 = v64;
        if (v63)
        {
          goto LABEL_381;
        }

        sub_1AE4A65CC(v64);
        v54 = v65;
        goto LABEL_51;
      }

      *&v336 = v35;
      WORD4(v336) = v25;
      BYTE10(v336) = BYTE2(v25);
      BYTE11(v336) = BYTE3(v25);
      BYTE12(v336) = BYTE4(v25);
      BYTE13(v336) = BYTE5(v25);
      if (BYTE6(v25) < v34)
      {
        goto LABEL_304;
      }

      *&v331 = v34;
      *(&v331 + 1) = BYTE6(v25);
      v332 = &v336;
      v333 = &v336 + BYTE6(v25);
      v37 = v7;
      sub_1AE4A5694();
      v42 = v38;
      if (v37)
      {
        goto LABEL_381;
      }

LABEL_55:
      sub_1AE4A65CC(v38);
      v70 = v69;
      v71 = sub_1AE4AC038(v42);
      if (v71 == 6)
      {
        goto LABEL_380;
      }

      sub_1AE4AD198(v71, v70, v331, *(&v331 + 1), &v335, &v330);
      v27 = 0;

      v67 = v330;
LABEL_57:
      v328 = v67;
      v72 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v31[2], v31[3], v31[4]);
      if (!v72)
      {
        goto LABEL_370;
      }

      v7 = v72;
      v73 = *(v72 + 72);
      v74 = (*(v72 + 64))();
      v9 = v74;
      v75 = *(v7 + 16);
      v10 = *(v7 + 24);
      v76 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v76 != 2)
        {
          *(&v336 + 6) = 0;
          *&v336 = 0;
          if (v74 > 0)
          {
            goto LABEL_310;
          }

          v331 = v74;
          v332 = &v336;
          v333 = &v336;
          goto LABEL_95;
        }

        v25 = *(v75 + 16);
        v77 = *(v75 + 24);
        v78 = sub_1AE4EA990();
        if (v78)
        {
          v79 = sub_1AE4EA9B0();
          if (__OFSUB__(v25, v79))
          {
            goto LABEL_324;
          }

          v78 += v25 - v79;
        }

        v46 = __OFSUB__(v77, v25);
        v25 = v77 - v25;
        if (v46)
        {
          goto LABEL_313;
        }

        v80 = sub_1AE4EA9A0();
        if (v80 >= v25)
        {
          v81 = v25;
        }

        else
        {
          v81 = v80;
        }

        if (v78)
        {
          v82 = v81;
        }

        else
        {
          v82 = 0;
        }

        if (v82 < v9)
        {
          goto LABEL_315;
        }

        v83 = (v81 + v78);
        if (!v78)
        {
          v83 = 0;
        }

        *&v331 = v9;
        *(&v331 + 1) = v82;
        v332 = v78;
        v333 = v83;
        sub_1AE4A5694();
        v9 = v84;
        sub_1AE4A65CC(v84);
        v86 = v85;
        v31 = v329;
LABEL_91:
        v97 = sub_1AE4AC038(v9);
        if (v97 == 6)
        {
          goto LABEL_380;
        }

        sub_1AE4AD198(v97, v86, v331, *(&v331 + 1), &v335, &v336);
        v27 = 0;

        v98 = v336;
        goto LABEL_97;
      }

      if (v76)
      {
        v87 = v75;
        v88 = v75 >> 32;
        v25 = v88 - v87;
        if (v88 < v87)
        {
          goto LABEL_312;
        }

        v89 = sub_1AE4EA990();
        if (v89)
        {
          v90 = sub_1AE4EA9B0();
          if (__OFSUB__(v87, v90))
          {
            goto LABEL_325;
          }

          v89 += v87 - v90;
        }

        v91 = sub_1AE4EA9A0();
        if (v91 >= v25)
        {
          v92 = v25;
        }

        else
        {
          v92 = v91;
        }

        if (v89)
        {
          v93 = v92;
        }

        else
        {
          v93 = 0;
        }

        v31 = v329;
        if (v93 < v9)
        {
          goto LABEL_314;
        }

        v94 = (v92 + v89);
        if (!v89)
        {
          v94 = 0;
        }

        *&v331 = v9;
        *(&v331 + 1) = v93;
        v332 = v89;
        v333 = v94;
        sub_1AE4A5694();
        v9 = v95;
        sub_1AE4A65CC(v95);
        v86 = v96;
        goto LABEL_91;
      }

      *&v336 = *(v7 + 16);
      WORD4(v336) = v10;
      BYTE10(v336) = BYTE2(v10);
      BYTE11(v336) = BYTE3(v10);
      BYTE12(v336) = BYTE4(v10);
      BYTE13(v336) = BYTE5(v10);
      if (BYTE6(v10) < v74)
      {
        goto LABEL_311;
      }

      *&v331 = v74;
      *(&v331 + 1) = BYTE6(v10);
      v332 = &v336;
      v333 = &v336 + BYTE6(v10);
LABEL_95:
      sub_1AE4A5694();
      v9 = v99;
      sub_1AE4A65CC(v99);
      v101 = v100;
      v102 = sub_1AE4AC038(v9);
      if (v102 == 6)
      {
        goto LABEL_380;
      }

      sub_1AE4AD198(v102, v101, v331, *(&v331 + 1), &v335, &v330);
      v27 = 0;

      v98 = v330;
LABEL_97:
      v103 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v31[2], v31[3], v31[4]);
      if (!v103)
      {
        goto LABEL_371;
      }

      v9 = v103;
      v104 = *(v103 + 72);
      v105 = (*(v103 + 64))();
      v7 = v105;
      v106 = v9[2];
      v25 = v9[3];
      v107 = v25 >> 62;
      if ((v25 >> 62) > 1)
      {
        if (v107 != 2)
        {
          *(&v336 + 6) = 0;
          *&v336 = 0;
          if (v105 > 0)
          {
            goto LABEL_316;
          }

          v331 = v105;
          v332 = &v336;
          v333 = &v336;
          goto LABEL_132;
        }

        v320 = v98;
        v108 = *(v106 + 16);
        v10 = *(v106 + 24);
        v109 = sub_1AE4EA990();
        if (v109)
        {
          v110 = sub_1AE4EA9B0();
          if (__OFSUB__(v108, v110))
          {
            goto LABEL_326;
          }

          v109 += v108 - v110;
        }

        v46 = __OFSUB__(v10, v108);
        v10 -= v108;
        if (v46)
        {
          goto LABEL_319;
        }

        v111 = sub_1AE4EA9A0();
        if (v111 >= v10)
        {
          v112 = v10;
        }

        else
        {
          v112 = v111;
        }

        if (v109)
        {
          v113 = v112;
        }

        else
        {
          v113 = 0;
        }

        if (v113 < v7)
        {
          goto LABEL_321;
        }
      }

      else
      {
        if (!v107)
        {
          *&v336 = v9[2];
          WORD4(v336) = v25;
          BYTE10(v336) = BYTE2(v25);
          BYTE11(v336) = BYTE3(v25);
          BYTE12(v336) = BYTE4(v25);
          BYTE13(v336) = BYTE5(v25);
          if (BYTE6(v25) < v105)
          {
            goto LABEL_317;
          }

          *&v331 = v105;
          *(&v331 + 1) = BYTE6(v25);
          v332 = &v336;
          v333 = &v336 + BYTE6(v25);
LABEL_132:
          sub_1AE4A5694();
          v125 = v124;
          sub_1AE4A65CC(v124);
          v4 = v126;
          v27 = 0;
          v127 = sub_1AE4AC038(v125);
          if (v127 == 6)
          {
            goto LABEL_380;
          }

          sub_1AE4AD198(v127, v4, v331, *(&v331 + 1), &v335, &v330);
          v7 = 0;

          v123 = v330;
          goto LABEL_134;
        }

        v10 = v106;
        v114 = v106 >> 32;
        v115 = v114 - v10;
        if (v114 < v10)
        {
          goto LABEL_318;
        }

        v320 = v98;
        v109 = sub_1AE4EA990();
        if (v109)
        {
          v116 = sub_1AE4EA9B0();
          if (__OFSUB__(v10, v116))
          {
            goto LABEL_327;
          }

          v109 += v10 - v116;
        }

        v117 = sub_1AE4EA9A0();
        if (v117 >= v115)
        {
          v112 = v115;
        }

        else
        {
          v112 = v117;
        }

        if (v109)
        {
          v113 = v112;
        }

        else
        {
          v113 = 0;
        }

        if (v113 < v7)
        {
          goto LABEL_320;
        }
      }

      v118 = (v112 + v109);
      if (!v109)
      {
        v118 = 0;
      }

      *&v331 = v7;
      *(&v331 + 1) = v113;
      v332 = v109;
      v333 = v118;
      sub_1AE4A5694();
      v120 = v119;
      sub_1AE4A65CC(v119);
      v4 = v121;
      v31 = v329;
      v98 = v320;
      v27 = 0;
      v122 = sub_1AE4AC038(v120);
      if (v122 == 6)
      {
        goto LABEL_380;
      }

      sub_1AE4AD198(v122, v4, v331, *(&v331 + 1), &v335, &v336);
      v7 = 0;

      v123 = v336;
LABEL_134:
      if ((v123 & 0x8000000000000000) != 0)
      {
        goto LABEL_299;
      }

      v128 = __CFADD__(v98, v123);
      v129 = v98 + v123;
      if (v128)
      {
        goto LABEL_300;
      }

      if (v328 <= v326 && v129 >= v325)
      {
        v136 = sub_1AE4AC6E0(1936744813, 0xE400000000000000, 0, v31[2], v31[3], v31[4]);
        if (v136)
        {
          v137 = sub_1AE4B9FBC(v136);
          v139 = v138;
          v141 = v140;
          v25 = 0;

          v4 = sub_1AE4CA244(v137, v139, v141);
          v7 = 0;

          v321 = v4;
          v320 = *(v4 + 16);
          if (v320)
          {
            v27 = 0;
            v142 = (v321 + 48);
            do
            {
              if (v27 >= *(v321 + 16))
              {
                goto LABEL_301;
              }

              v323 = v27;
              v10 = *(v142 - 2);
              v143 = *(v142 - 1);
              v144 = *v142;

              v327 = v144;
              v328 = v143;
              v145 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v10, v143, v144);
              if (!v145)
              {
                goto LABEL_372;
              }

              v9 = v145;
              v146 = *(v145 + 72);
              v147 = (*(v145 + 64))();
              v148 = v147;
              v149 = v9[2];
              v150 = v9[3];
              v151 = v150 >> 62;
              v324 = v10;
              if ((v150 >> 62) > 1)
              {
                if (v151 == 2)
                {
                  v153 = *(v149 + 16);
                  v152 = *(v149 + 24);
                  v154 = sub_1AE4EA990();
                  if (v154)
                  {
                    v155 = sub_1AE4EA9B0();
                    if (__OFSUB__(v153, v155))
                    {
                      goto LABEL_356;
                    }

                    v154 += v153 - v155;
                  }

                  v46 = __OFSUB__(v152, v153);
                  v156 = v152 - v153;
                  if (v46)
                  {
                    goto LABEL_341;
                  }

                  v157 = sub_1AE4EA9A0();
                  if (v157 >= v156)
                  {
                    v158 = v156;
                  }

                  else
                  {
                    v158 = v157;
                  }

                  if (v154)
                  {
                    v159 = v158;
                  }

                  else
                  {
                    v159 = 0;
                  }

                  if (v159 < v148)
                  {
                    goto LABEL_343;
                  }

                  v160 = (v158 + v154);
                  if (!v154)
                  {
                    v160 = 0;
                  }

                  *&v331 = v148;
                  *(&v331 + 1) = v159;
                  v332 = v154;
                  v333 = v160;
                  sub_1AE4A5694();
                  v162 = v161;
                  sub_1AE4A65CC(v161);
                  v164 = v163;
                  v31 = v329;
                  v10 = v324;
LABEL_191:
                  v176 = sub_1AE4AC038(v162);
                  if (v176 == 6)
                  {
                    goto LABEL_380;
                  }

                  sub_1AE4AD198(v176, v164, v331, *(&v331 + 1), &v335, &v336);

                  v177 = v336;
                  goto LABEL_197;
                }

                *(&v336 + 6) = 0;
                *&v336 = 0;
                if (v147 > 0)
                {
                  goto LABEL_340;
                }

                v331 = v147;
                v332 = &v336;
                v333 = &v336;
              }

              else
              {
                if (v151)
                {
                  v165 = v149;
                  v166 = v149 >> 32;
                  v167 = v166 - v165;
                  if (v166 < v165)
                  {
                    __break(1u);
LABEL_339:
                    __break(1u);
LABEL_340:
                    __break(1u);
LABEL_341:
                    __break(1u);
LABEL_342:
                    __break(1u);
LABEL_343:
                    __break(1u);
LABEL_344:
                    __break(1u);
LABEL_345:
                    __break(1u);
LABEL_346:
                    __break(1u);
LABEL_347:
                    __break(1u);
LABEL_348:
                    __break(1u);
LABEL_349:
                    __break(1u);
LABEL_350:
                    __break(1u);
LABEL_351:
                    __break(1u);
LABEL_352:
                    __break(1u);
LABEL_353:
                    __break(1u);
LABEL_354:
                    __break(1u);
LABEL_355:
                    __break(1u);
LABEL_356:
                    __break(1u);
LABEL_357:
                    __break(1u);
LABEL_358:
                    __break(1u);
LABEL_359:
                    __break(1u);
LABEL_360:
                    __break(1u);
LABEL_361:
                    __break(1u);
                    goto LABEL_362;
                  }

                  v168 = sub_1AE4EA990();
                  if (v168)
                  {
                    v169 = sub_1AE4EA9B0();
                    if (__OFSUB__(v165, v169))
                    {
                      goto LABEL_357;
                    }

                    v168 += v165 - v169;
                  }

                  v10 = v324;
                  v170 = sub_1AE4EA9A0();
                  if (v170 >= v167)
                  {
                    v171 = v167;
                  }

                  else
                  {
                    v171 = v170;
                  }

                  if (v168)
                  {
                    v172 = v171;
                  }

                  else
                  {
                    v172 = 0;
                  }

                  if (v172 < v148)
                  {
                    goto LABEL_342;
                  }

                  v173 = (v171 + v168);
                  if (!v168)
                  {
                    v173 = 0;
                  }

                  *&v331 = v148;
                  *(&v331 + 1) = v172;
                  v332 = v168;
                  v333 = v173;
                  sub_1AE4A5694();
                  v162 = v174;
                  sub_1AE4A65CC(v174);
                  v164 = v175;
                  v31 = v329;
                  goto LABEL_191;
                }

                *&v336 = v149;
                WORD4(v336) = v150;
                BYTE10(v336) = BYTE2(v150);
                BYTE11(v336) = BYTE3(v150);
                BYTE12(v336) = BYTE4(v150);
                BYTE13(v336) = BYTE5(v150);
                if (BYTE6(v150) < v147)
                {
                  goto LABEL_339;
                }

                *&v331 = v147;
                *(&v331 + 1) = BYTE6(v150);
                v332 = &v336;
                v333 = &v336 + BYTE6(v150);
              }

              sub_1AE4A5694();
              v179 = v178;
              sub_1AE4A65CC(v178);
              v181 = v180;
              v182 = sub_1AE4AC038(v179);
              if (v182 == 6)
              {
                goto LABEL_380;
              }

              sub_1AE4AD198(v182, v181, v331, *(&v331 + 1), &v335, &v330);

              v177 = v330;
LABEL_197:
              v322 = v177;
              v183 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v10, v328, v327);
              if (!v183)
              {
                goto LABEL_373;
              }

              v9 = v183;
              v184 = *(v183 + 72);
              v185 = (*(v183 + 64))();
              v186 = v185;
              v187 = v9[2];
              v188 = v9[3];
              v189 = v188 >> 62;
              if ((v188 >> 62) > 1)
              {
                if (v189 == 2)
                {
                  v191 = *(v187 + 16);
                  v190 = *(v187 + 24);
                  v192 = sub_1AE4EA990();
                  if (v192)
                  {
                    v193 = sub_1AE4EA9B0();
                    if (__OFSUB__(v191, v193))
                    {
                      goto LABEL_358;
                    }

                    v192 += v191 - v193;
                  }

                  v46 = __OFSUB__(v190, v191);
                  v194 = v190 - v191;
                  if (v46)
                  {
                    goto LABEL_347;
                  }

                  v195 = sub_1AE4EA9A0();
                  if (v195 >= v194)
                  {
                    v196 = v194;
                  }

                  else
                  {
                    v196 = v195;
                  }

                  if (v192)
                  {
                    v197 = v196;
                  }

                  else
                  {
                    v197 = 0;
                  }

                  if (v197 < v186)
                  {
                    goto LABEL_349;
                  }

                  v198 = (v196 + v192);
                  if (!v192)
                  {
                    v198 = 0;
                  }

                  *&v331 = v186;
                  *(&v331 + 1) = v197;
                  v332 = v192;
                  v333 = v198;
                  sub_1AE4A5694();
                  v200 = v199;
                  sub_1AE4A65CC(v199);
                  v202 = v201;
                  v31 = v329;
                  v10 = v324;
LABEL_231:
                  v214 = sub_1AE4AC038(v200);
                  if (v214 == 6)
                  {
                    goto LABEL_380;
                  }

                  sub_1AE4AD198(v214, v202, v331, *(&v331 + 1), &v335, &v336);

                  v215 = v336;
                  goto LABEL_237;
                }

                *(&v336 + 6) = 0;
                *&v336 = 0;
                if (v185 > 0)
                {
                  goto LABEL_346;
                }

                v331 = v185;
                v332 = &v336;
                v333 = &v336;
              }

              else
              {
                if (v189)
                {
                  v203 = v187;
                  v204 = v187 >> 32;
                  v205 = v204 - v203;
                  if (v204 < v203)
                  {
                    goto LABEL_345;
                  }

                  v206 = sub_1AE4EA990();
                  if (v206)
                  {
                    v207 = sub_1AE4EA9B0();
                    if (__OFSUB__(v203, v207))
                    {
                      goto LABEL_359;
                    }

                    v206 += v203 - v207;
                  }

                  v10 = v324;
                  v208 = sub_1AE4EA9A0();
                  if (v208 >= v205)
                  {
                    v209 = v205;
                  }

                  else
                  {
                    v209 = v208;
                  }

                  if (v206)
                  {
                    v210 = v209;
                  }

                  else
                  {
                    v210 = 0;
                  }

                  if (v210 < v186)
                  {
                    goto LABEL_348;
                  }

                  v211 = (v209 + v206);
                  if (!v206)
                  {
                    v211 = 0;
                  }

                  *&v331 = v186;
                  *(&v331 + 1) = v210;
                  v332 = v206;
                  v333 = v211;
                  sub_1AE4A5694();
                  v200 = v212;
                  sub_1AE4A65CC(v212);
                  v202 = v213;
                  v31 = v329;
                  goto LABEL_231;
                }

                *&v336 = v9[2];
                WORD4(v336) = v188;
                BYTE10(v336) = BYTE2(v188);
                BYTE11(v336) = BYTE3(v188);
                BYTE12(v336) = BYTE4(v188);
                BYTE13(v336) = BYTE5(v188);
                if (BYTE6(v188) < v185)
                {
                  goto LABEL_344;
                }

                *&v331 = v185;
                *(&v331 + 1) = BYTE6(v188);
                v332 = &v336;
                v333 = &v336 + BYTE6(v188);
              }

              sub_1AE4A5694();
              v217 = v216;
              sub_1AE4A65CC(v216);
              v219 = v218;
              v220 = sub_1AE4AC038(v217);
              if (v220 == 6)
              {
                goto LABEL_380;
              }

              sub_1AE4AD198(v220, v219, v331, *(&v331 + 1), &v335, &v330);

              v215 = v330;
LABEL_237:
              v221 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v10, v328, v327);
              if (!v221)
              {
                goto LABEL_374;
              }

              v9 = v221;
              v222 = *(v221 + 72);
              v223 = (*(v221 + 64))();
              v224 = v223;
              v225 = v9[2];
              v25 = v9[3];
              v226 = v25 >> 62;
              if ((v25 >> 62) > 1)
              {
                if (v226 == 2)
                {
                  v319 = v215;
                  v228 = *(v225 + 16);
                  v227 = *(v225 + 24);
                  v229 = sub_1AE4EA990();
                  if (v229)
                  {
                    v230 = sub_1AE4EA9B0();
                    if (__OFSUB__(v228, v230))
                    {
                      goto LABEL_360;
                    }

                    v229 += v228 - v230;
                  }

                  v46 = __OFSUB__(v227, v228);
                  v231 = v227 - v228;
                  if (v46)
                  {
                    goto LABEL_353;
                  }

                  v232 = sub_1AE4EA9A0();
                  if (v232 >= v231)
                  {
                    v233 = v231;
                  }

                  else
                  {
                    v233 = v232;
                  }

                  if (v229)
                  {
                    v234 = v233;
                  }

                  else
                  {
                    v234 = 0;
                  }

                  if (v234 < v224)
                  {
                    goto LABEL_355;
                  }

                  v235 = (v233 + v229);
                  if (!v229)
                  {
                    v235 = 0;
                  }

                  *&v331 = v224;
                  *(&v331 + 1) = v234;
                  v332 = v229;
                  v333 = v235;
                  sub_1AE4A5694();
                  v237 = v236;
                  sub_1AE4A65CC(v236);
                  v4 = v238;
                  v31 = v329;
                  v10 = v324;
LABEL_271:
                  v215 = v319;
                  v250 = sub_1AE4AC038(v237);
                  if (v250 == 6)
                  {
                    goto LABEL_380;
                  }

                  sub_1AE4AD198(v250, v4, v331, *(&v331 + 1), &v335, &v336);
                  v7 = 0;

                  v251 = v336;
                  goto LABEL_277;
                }

                *(&v336 + 6) = 0;
                *&v336 = 0;
                if (v223 > 0)
                {
                  goto LABEL_350;
                }

                v331 = v223;
                v332 = &v336;
                v333 = &v336;
              }

              else
              {
                if (v226)
                {
                  v239 = v225;
                  v240 = v225 >> 32;
                  v241 = v240 - v239;
                  if (v240 < v239)
                  {
                    goto LABEL_352;
                  }

                  v319 = v215;
                  v242 = sub_1AE4EA990();
                  if (v242)
                  {
                    v243 = sub_1AE4EA9B0();
                    if (__OFSUB__(v239, v243))
                    {
                      goto LABEL_361;
                    }

                    v242 += v239 - v243;
                  }

                  v10 = v324;
                  v244 = sub_1AE4EA9A0();
                  if (v244 >= v241)
                  {
                    v245 = v241;
                  }

                  else
                  {
                    v245 = v244;
                  }

                  if (v242)
                  {
                    v246 = v245;
                  }

                  else
                  {
                    v246 = 0;
                  }

                  if (v246 < v224)
                  {
                    goto LABEL_354;
                  }

                  v247 = (v245 + v242);
                  if (!v242)
                  {
                    v247 = 0;
                  }

                  *&v331 = v224;
                  *(&v331 + 1) = v246;
                  v332 = v242;
                  v333 = v247;
                  sub_1AE4A5694();
                  v237 = v248;
                  sub_1AE4A65CC(v248);
                  v4 = v249;
                  v31 = v329;
                  goto LABEL_271;
                }

                *&v336 = v9[2];
                WORD4(v336) = v25;
                BYTE10(v336) = BYTE2(v25);
                BYTE11(v336) = BYTE3(v25);
                BYTE12(v336) = BYTE4(v25);
                BYTE13(v336) = BYTE5(v25);
                if (BYTE6(v25) < v223)
                {
                  goto LABEL_351;
                }

                *&v331 = v223;
                *(&v331 + 1) = BYTE6(v25);
                v332 = &v336;
                v333 = &v336 + BYTE6(v25);
              }

              sub_1AE4A5694();
              v253 = v252;
              sub_1AE4A65CC(v252);
              v4 = v254;
              v255 = sub_1AE4AC038(v253);
              if (v255 == 6)
              {
                goto LABEL_380;
              }

              sub_1AE4AD198(v255, v4, v331, *(&v331 + 1), &v335, &v330);
              v7 = 0;

              v251 = v330;
LABEL_277:
              v27 = v323;
              if ((v251 & 0x8000000000000000) != 0)
              {
                goto LABEL_302;
              }

              v128 = __CFADD__(v215, v251);
              v256 = v215 + v251;
              if (v128)
              {
                goto LABEL_303;
              }

              v257 = v326 - v322;
              if (v326 >= v322 && v256 >= v325)
              {

                v258 = sub_1AE4AC6E0(1717989222, 0xE400000000000000, 0, v10, v328, v327);
                if (v258)
                {
                  v259 = sub_1AE4A6A00(v258);
                  v260 = v315;

                  if ((v259 & 0x8000000000000000) == 0)
                  {
                    v128 = __CFADD__(v259, v257);
                    v261 = v259 + v257;
                    if (!v128)
                    {
                      v262 = v317;
                      sub_1AE4D0344(v317);
                      v263 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
                      v264 = v314;
                      swift_beginAccess();
                      v9 = &qword_1AE4EDB98;
                      v265 = v264 + v263;
                      v266 = v318;
                      sub_1AE4B441C(v265, v318, &qword_1EB5DD520, &qword_1AE4EDB98);
                      sub_1AE4D127C(v266, v313);
                      sub_1AE4B4558(v266, &qword_1EB5DD520, &qword_1AE4EDB98);
                      sub_1AE4DB5C0(v262, type metadata accessor for FileIdentifier);
                      v267 = sub_1AE4AC6E0(1953460848, 0xE400000000000000, 0, v324, v328, v327);
                      if (v267)
                      {
                        v4 = sub_1AE4A6A00(v267);
                        v9 = v312;

                        if ((v4 & 0x8000000000000000) == 0)
                        {
                          if (v4 == 5)
                          {
                            v268 = *(v316 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_localCacheBaseAddress);
                            if (v268)
                            {
                              v269 = sub_1AE4AC6E0(1717989238, 0xE400000000000000, 0, v31[2], v31[3], v31[4]);
                              if (v269)
                              {
                                v270 = sub_1AE4A6A00(v269);
                                v271 = v313;
                                v272 = v311;

                                if ((v270 & 0x8000000000000000) == 0)
                                {
                                  v128 = __CFADD__(v270, v261);
                                  v273 = v270 + v261;
                                  if (!v128)
                                  {
                                    if ((v273 & 0x8000000000000000) == 0)
                                    {
                                      v274 = v325 - v326;
                                      v275 = v309;
                                      (*(v310 + 104))(v309, *MEMORY[0x1E6969010], v272);
                                      v4 = sub_1AE4AB2E4(v268 + v273, v274, v275);

                                      sub_1AE4DB5C0(v271, type metadata accessor for FileIdentifier);
                                      goto LABEL_337;
                                    }

LABEL_368:
                                    __break(1u);
LABEL_369:
                                    __break(1u);
LABEL_370:
                                    __break(1u);
LABEL_371:
                                    __break(1u);
LABEL_372:
                                    __break(1u);
LABEL_373:
                                    __break(1u);
LABEL_374:
                                    __break(1u);
                                  }

LABEL_367:
                                  __break(1u);
                                  goto LABEL_368;
                                }

LABEL_366:
                                __break(1u);
                                goto LABEL_367;
                              }

LABEL_379:
                              __break(1u);
LABEL_380:
                              sub_1AE4C78AC();
                              v287 = swift_allocError();
                              *(v288 + 8) = 0;
                              *(v288 + 16) = 0;
                              *v288 = 0;
                              *(v288 + 24) = 0x80;
                              swift_willThrow();
                              while (1)
                              {
LABEL_382:
                                v330 = v287;
                                v293 = v287;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
                                swift_dynamicCast();
                                v294 = v331;
                                v295 = v332;
                                v296 = v333;
                                v336 = v331;
                                v337 = v332;
                                v338 = v333;
                                sub_1AE4C78AC();
                                swift_willThrowTypedImpl();

                                swift_allocError();
                                *v297 = v294;
                                *(v297 + 16) = v295;
                                *(v297 + 24) = v296;
LABEL_383:
                                swift_unexpectedError();
                                __break(1u);
                                v299 = v298;
                                v301 = v300;
                                v303 = v302;
                                sub_1AE4C78AC();
                                v287 = swift_allocError();
                                *v304 = v9;
                                *(v304 + 8) = v299;
                                *(v304 + 16) = v301;
                                *(v304 + 24) = v303;
                              }
                            }
                          }

                          if ((v325 - v326) >= 0)
                          {
                            v276 = v313;
                            v277 = sub_1AE4D0034(v313, v261, v325 - v326, 0, 0);
                            if (v278 >> 60 != 15)
                            {
                              v4 = v277;
                              v279 = v278;
                              sub_1AE4DB5C0(v276, type metadata accessor for FileIdentifier);

                              v280 = *v9;
                              v281 = v9[1];
                              v282 = v9[2];
                              v283 = v9[3];
                              v284 = v325;
                              *v9 = v326;
                              v9[1] = v284;
                              v9[2] = v4;
                              v9[3] = v279;
                              sub_1AE4A6FD8(v4, v279);
                              sub_1AE4DFDF4(v280, v281, v282, v283);
                              goto LABEL_337;
                            }

                            v331 = 4uLL;
                            v332 = 0;
                            v333 = 0;
                            v334 = -64;
                            sub_1AE4C9430();
                            swift_willThrowTypedImpl();

                            sub_1AE4DB5C0(v276, type metadata accessor for FileIdentifier);
LABEL_336:
                            *v260 = 4;
                            *(v260 + 8) = 0;
                            *(v260 + 16) = 0;
                            *(v260 + 24) = 0;
                            *(v260 + 32) = -64;
                            goto LABEL_337;
                          }

LABEL_365:
                          __break(1u);
                          goto LABEL_366;
                        }

LABEL_364:
                        __break(1u);
                        goto LABEL_365;
                      }

LABEL_378:
                      __break(1u);
                      goto LABEL_379;
                    }

LABEL_363:
                    __break(1u);
                    goto LABEL_364;
                  }

LABEL_362:
                  __break(1u);
                  goto LABEL_363;
                }

LABEL_377:
                __break(1u);
                goto LABEL_378;
              }

              v27 = v323 + 1;

              v142 += 3;
            }

            while (v320 != v27);
          }

          v331 = 4uLL;
          v332 = 0;
          v333 = 0;
          v334 = -64;
          sub_1AE4C9430();
          swift_willThrowTypedImpl();

LABEL_335:
          v260 = v315;
          goto LABEL_336;
        }

LABEL_376:
        __break(1u);
        goto LABEL_377;
      }

      ++v30;
      v21 = v322;
      if (v327 == v321)
      {
        goto LABEL_334;
      }
    }

    v31 = MEMORY[0x1B2701540](v30);
    v24 = (v30 + 1);
    if (!__OFADD__(v30, 1))
    {
      goto LABEL_14;
    }

LABEL_141:
    __break(1u);
LABEL_142:
    v10 = *v24;
    v27 = *(v4 + 16);
    if ((v27 & 0xC000000000000001) == 0)
    {
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v130 = *(v27 + 32);
        sub_1AE4AB600(v10, v25);

        goto LABEL_145;
      }

      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      v27 = v21;
      v29 = sub_1AE4EB150();
      v21 = v27;
      if (!v29)
      {
        goto LABEL_334;
      }

      continue;
    }

    break;
  }

LABEL_328:
  sub_1AE4A6FD8(v10, v25);
  v130 = MEMORY[0x1B2701540](0, v27);
LABEL_145:
  v131 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v130[2], v130[3], v130[4]);
  if (!v131)
  {
    __break(1u);
    goto LABEL_376;
  }

  v4 = sub_1AE4A6A00(v131);
  if (v7)
  {
    v305 = v132;
    v306 = v133;
    v307 = v134;
    sub_1AE4C78AC();
    swift_allocError();
    *v308 = v4;
    *(v308 + 8) = v305;
    *(v308 + 16) = v306;
    *(v308 + 24) = v307;
    goto LABEL_383;
  }

  v7 = 0;

  v135 = v326 - v4;
  if (v326 < v4)
  {
    goto LABEL_330;
  }

  if ((v135 & 0x8000000000000000) != 0)
  {
    goto LABEL_331;
  }

  v21 = v325 - v4;
  if (__OFADD__(v135, v325 - v326))
  {
    goto LABEL_332;
  }

  v4 = sub_1AE4EAA60();
  sub_1AE4ABE40(v10, v25);
LABEL_337:
  v285 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1AE4D6498(uint64_t a1)
{
  v56 = a1;
  v60[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE4EAA30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  address = 0;
  v7 = *(v1 + 16);
  v8 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_43;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    goto LABEL_3;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  v11 = MEMORY[0x1B2701540](v9, v7);
LABEL_8:
  v12 = v11[2];
  v13 = v11[3];
  v14 = v11[4];

  v15 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v12, v13, v14);
  if (!v15)
  {
    goto LABEL_55;
  }

  v3 = 0;
  v2 = sub_1AE4A6A00(v15);

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v16 = v11[2];
  v17 = v11[3];
  v18 = v11[4];

  v19 = sub_1AE4AC6E0(1717989238, 0xE400000000000000, 0, v16, v17, v18);
  if (!v19)
  {
LABEL_56:
    __break(1u);
  }

  v20 = sub_1AE4A6A00(v19);

  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  v1 = v20 + v2;
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, v1, 1))
  {

    result = 0;
LABEL_38:
    v40 = *MEMORY[0x1E69E9840];
    return result;
  }

  v25 = address;
  if (address)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v1 < 0)
  {
    goto LABEL_51;
  }

LABEL_18:
  v48 = v11;
  if (v8)
  {
    goto LABEL_35;
  }

  v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26)
  {
LABEL_20:
    v47 = v1;
    v27 = 0;
    v53 = v7 & 0xFFFFFFFFFFFFFF8;
    v54 = v26;
    v55 = v7;
    while (1)
    {
      if (v57)
      {
        v1 = MEMORY[0x1B2701540](v27, v7);
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v27 >= *(v53 + 16))
        {
          goto LABEL_42;
        }

        v1 = *(v7 + 8 * v27 + 32);

        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
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
          v41 = v6;
          v9 = sub_1AE4EB150();
          v6 = v41;
          if (!v9)
          {
            goto LABEL_44;
          }

LABEL_3:
          if (__OFSUB__(v9--, 1))
          {
            goto LABEL_45;
          }

          v57 = v7 & 0xC000000000000001;
          v51 = v2;
          v52 = v1;
          v49 = v6;
          v50 = v3;
          if ((v7 & 0xC000000000000001) == 0)
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v11 = *(v7 + 8 * v9 + 32);

              goto LABEL_8;
            }

            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          goto LABEL_46;
        }
      }

      if (!v25)
      {
        goto LABEL_53;
      }

      v29 = sub_1AE4AC6E0(1717989238, 0xE400000000000000, 0, *(v1 + 16), *(v1 + 24), *(v1 + 32));
      if (!v29)
      {
        goto LABEL_52;
      }

      v2 = v29;
      v8 = sub_1AE4A6A00(v29);

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      v58 = v28;
      v30 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, *(v1 + 16), *(v1 + 24), *(v1 + 32));
      if (!v30)
      {
        goto LABEL_54;
      }

      v31 = sub_1AE4A6A00(v30);

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      sub_1AE4D06AC(v25 + v8, v32, v56, v60);

      ++v27;
      v7 = v55;
      if (v58 == v54)
      {
        v1 = v47;
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_35:
        v26 = sub_1AE4EB150();
        if (!v26)
        {
          break;
        }

        goto LABEL_20;
      }
    }
  }

  if (v25)
  {
LABEL_37:
    v33 = v49;
    (*(v50 + 104))(v49, *MEMORY[0x1E6968FF8], v51);
    v34 = sub_1AE4AB2E4(v25, v1, v33);
    v36 = v35;

    v37 = (v52 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping);
    v38 = *(v52 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping);
    v39 = *(v52 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping + 8);
    *v37 = v34;
    v37[1] = v36;
    sub_1AE4ABE40(v38, v39);
    result = 1;
    goto LABEL_38;
  }

  __break(1u);
  v42 = v21;
  v43 = v22;
  v44 = v23;
  sub_1AE4C78AC();
  swift_allocError();
  *v45 = v8;
  *(v45 + 8) = v42;
  *(v45 + 16) = v43;
  *(v45 + 24) = v44;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4D6A20()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachePath;
  v3 = sub_1AE4EAC50();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_1AE4ABE40(*&v0[OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping], *&v0[OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping + 8]);
  sub_1AE4DFDF4(*&v0[OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping], *&v0[OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping + 8], *&v0[OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping + 16], *&v0[OBJC_IVAR____TtC4Dyld17SharedCacheMapper_cachedMapping + 24]);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4D6B18()
{
  result = sub_1AE4EAC50();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1AE4D6BD8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  sub_1AE4D45C8(a1, a2, a3, v11);
  if (v5)
  {
    v9 = v12;
    result = *v11;
    v10 = v11[1];
    *a4 = v11[0];
    *(a4 + 16) = v10;
    *(a4 + 32) = v9;
  }

  return result;
}

uint64_t sub_1AE4D6C24()
{
  v1 = v0;
  v2 = sub_1AE4EAB10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FileIdentifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AE4DB620(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = v10[1];
      sub_1AE4EADC0();
    }

    v15 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48));
    v16 = *v15;
    v17 = v15[1];
    (*(v3 + 32))(v6, v10, v2);
    sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
    sub_1AE4EACF0();
    sub_1AE4EADC0();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
    sub_1AE4EACF0();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1AE4D6E84()
{
  sub_1AE4EB260();
  sub_1AE4D6C24();
  return sub_1AE4EB290();
}

uint64_t sub_1AE4D6EC8()
{
  sub_1AE4EB260();
  sub_1AE4D6C24();
  return sub_1AE4EB290();
}

uint64_t sub_1AE4D6F08()
{
  MEMORY[0x1B2702130](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_4Dyld7ProcessV4ImplC13NotifierStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1AE4D6F90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AE4D6FD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1AE4D701C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AE4D7088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AE4D70D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1AE4D7154()
{
  sub_1AE4D1AC8(319, &qword_1EB5DD108, 255, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    sub_1AE4D726C(319, &unk_1EB5DD0C0);
    if (v1 <= 0x3F)
    {
      sub_1AE4D726C(319, &qword_1EB5DD0F8);
      if (v3 <= 0x3F)
      {
        sub_1AE4D1AC8(319, &qword_1EB5DD100, v2, type metadata accessor for SharedCache.Impl);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AE4D726C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AE4EB010();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1AE4D72BC()
{
  result = qword_1EB5DD4C0;
  if (!qword_1EB5DD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD4C0);
  }

  return result;
}

unint64_t sub_1AE4D735C()
{
  result = qword_1EB5DD058;
  if (!qword_1EB5DD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD058);
  }

  return result;
}

uint64_t sub_1AE4D73B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1AE4EB260();
  sub_1AE4EADC0();
  MEMORY[0x1B2701710](v3);
  MEMORY[0x1B2701710](v4);
  MEMORY[0x1B2701710](v5);
  return sub_1AE4EB290();
}

uint64_t sub_1AE4D7438()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1AE4EADC0();
  MEMORY[0x1B2701710](v3);
  MEMORY[0x1B2701710](v4);
  return MEMORY[0x1B2701710](v5);
}

uint64_t sub_1AE4D7494()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1AE4EB260();
  sub_1AE4EADC0();
  MEMORY[0x1B2701710](v3);
  MEMORY[0x1B2701710](v4);
  MEMORY[0x1B2701710](v5);
  return sub_1AE4EB290();
}

BOOL sub_1AE4D7518(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6 || v4 != v5)
    {
      return 0;
    }

    return v3 == v7;
  }

  v9 = sub_1AE4EB190();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v6 && v4 == v5)
  {
    return v3 == v7;
  }

  return result;
}

void sub_1AE4D75B0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (!*(*a1 + 16))
  {
    Strong = 0;
    v11 = 0xF000000000000000;
    goto LABEL_8;
  }

  v5 = sub_1AE4E8F34(a2);
  if ((v6 & 1) == 0)
  {
    Strong = 0;
    goto LABEL_7;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    v11 = 0xF000000000000000;
    goto LABEL_8;
  }

  v9 = Strong;
  Strong = sub_1AE4EAA80();
  v11 = v10;

LABEL_8:
  *a3 = Strong;
  a3[1] = v11;
}

void sub_1AE4D7664(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  if (*(*a1 + 16))
  {
    v9 = sub_1AE4E8F34(a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        v14 = v13;
        v15 = sub_1AE4EAA80();
        v17 = v16;

LABEL_7:
        *a4 = v15;
        a4[1] = v17;
        return;
      }
    }
  }

  sub_1AE4DFBE8(a2, v22);

  v18 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = *a1;
  sub_1AE4DA8F8(a3, a2, isUniquelyReferenced_nonNull_native);
  sub_1AE4DFC20(a2);
  *a1 = v22[0];
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v14 = v20;
    v15 = sub_1AE4EAA80();
    v17 = v21;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1AE4D7788()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD578, &qword_1AE4EDBE0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EB5DF648 = result;
  return result;
}

char *sub_1AE4D77D4(uint64_t a1, uint64_t a2, off_t a3, off_t st_size, char a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  sub_1AE4EADA0();
  v10 = sub_1AE4EAB30();

  if ((v10 & 0x80000000) == 0)
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_5;
    }

    memset(&aBlock, 0, sizeof(aBlock));
    if (fstat(v10, &aBlock))
    {
      goto LABEL_16;
    }

    st_size = aBlock.st_size;
    if ((aBlock.st_size & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (qword_1EB5DD038 != -1)
      {
        swift_once();
      }

      v11 = swift_beginAccess();
      v12 = qword_1EB5DF648;
      MEMORY[0x1EEE9AC00](v11);

      os_unfair_lock_lock((v12 + 24));
      sub_1AE4DFB98((v12 + 16), &aBlock);
      os_unfair_lock_unlock((v12 + 24));

      if (aBlock.st_ino >> 60 != 15)
      {
        v21 = *&aBlock.st_dev;
        goto LABEL_17;
      }

      v13 = st_size + a6;
      if (__CFADD__(st_size, a6))
      {
        __break(1u);
      }

      else if (((v13 | a3) & 0x8000000000000000) == 0)
      {
        v14 = mmap(0, st_size + a6, 1, 2, v10, a3);
        if (v14)
        {
          v15 = v14;
          if (v14 != sub_1AE4EAB20())
          {
            v16 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
            aBlock.st_atimespec.tv_sec = j__munmap;
            aBlock.st_atimespec.tv_nsec = 0;
            *&aBlock.st_dev = MEMORY[0x1E69E9820];
            aBlock.st_ino = 1107296256;
            *&aBlock.st_uid = sub_1AE4D84AC;
            *&aBlock.st_rdev = &block_descriptor;
            v17 = _Block_copy(&aBlock);

            v18 = [v16 initWithBytesNoCopy:v15 length:v13 deallocator:v17];
            _Block_release(v17);
            swift_beginAccess();
            type metadata accessor for MappedFileCache.WeakData();
            swift_allocObject();
            swift_unknownObjectWeakInit();
            v19 = swift_unknownObjectWeakAssign();
            v20 = qword_1EB5DF648;
            MEMORY[0x1EEE9AC00](v19);
            os_unfair_lock_lock((v20 + 24));
            sub_1AE4DFBCC((v20 + 16), &v31);
            os_unfair_lock_unlock((v20 + 24));

            v21 = v31;
            swift_endAccess();

LABEL_17:
            close(v10);
            goto LABEL_18;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD560, &qword_1AE4EDBC8);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1AE4ED4D0;
        *&aBlock.st_dev = 0x206F6E727245;
        aBlock.st_ino = 0xE600000000000000;
        MEMORY[0x1B2700FD0]();
        v23 = sub_1AE4EB180();
        MEMORY[0x1B2701270](v23);

        v24 = MEMORY[0x1B2701270](8250, 0xE200000000000000);
        v25 = MEMORY[0x1B2700FD0](v24);
        v31 = strerror(v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD568, &qword_1AE4EDBD0);
        v26 = sub_1AE4EAD80();
        MEMORY[0x1B2701270](v26);

        v27 = *&aBlock.st_dev;
        st_ino = aBlock.st_ino;
        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 32) = v27;
        *(v22 + 40) = st_ino;
        sub_1AE4EB240();

LABEL_16:
        v21 = 0;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
  }

  v21 = 0;
LABEL_18:
  v29 = *MEMORY[0x1E69E9840];
  return v21;
}

void *sub_1AE4D7C74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10[6] = *MEMORY[0x1E69E9840];
  v10[5] = a1;
  v3 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v10, 0, 14);
      v4 = v10;
      goto LABEL_9;
    }

    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
  }

  else
  {
    if (!v3)
    {
      v10[0] = a2;
      LOWORD(v10[1]) = a3;
      BYTE2(v10[1]) = BYTE2(a3);
      BYTE3(v10[1]) = BYTE3(a3);
      BYTE4(v10[1]) = BYTE4(a3);
      BYTE5(v10[1]) = BYTE5(a3);
      v4 = v10 + BYTE6(a3);
LABEL_9:
      sub_1AE4D7DE8(v10, v4, a1, &v9);
      result = v9;
      goto LABEL_10;
    }

    v5 = a2;
    v6 = a2 >> 32;
    if (v6 < v5)
    {
      __break(1u);
    }
  }

  result = sub_1AE4D850C(v5, v6, sub_1AE4DFB7C);
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4D7DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v69 = a3;
  v82 = a4;
  v6 = sub_1AE4EAB10();
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD550, &qword_1AE4EDBC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v24 = v70;
  result = sub_1AE4E7204(a1, a2);
  if (v24)
  {
    *v82 = 0;
    return result;
  }

  v57 = v13;
  v70 = v23;
  v58 = v6;
  v68 = v21;
  v59 = v18;
  v67 = v10;
  v60 = v9;
  if (!(v27 >> 14) || v27 >> 14 != 1)
  {
    *v82 = 0;
    return result;
  }

  v55 = 0;
  v28 = v27 & 1;
  v29 = result;
  v30 = v26;
  sub_1AE4E6B5C(result, v26, v27 & 1, v71);
  v31 = v30 - v29;
  if (!v29)
  {
    v31 = 0;
  }

  v72 = 0;
  v73 = v31;
  v74 = v29;
  v75 = v30;
  v76 = 0;
  v77 = v29;
  v78 = v30;
  v79 = v28;
  result = sub_1AE4E6B88();
  v34 = v68;
  v35 = v58;
  v36 = v57;
  if (v33 == 2)
  {
LABEL_8:
    *v82 = 0;
    return result;
  }

  v37 = result;
  v38 = v32;
  v39 = v33;
  v65 = (v66 + 16);
  v64 = (v66 + 56);
  v63 = (v66 + 48);
  v54 = (v66 + 32);
  v56 = (v66 + 8);
  while (1)
  {
    result = sub_1AE4E696C(v80);
    if (v81 == 2)
    {
      goto LABEL_8;
    }

    LODWORD(v66) = v81;
    v62 = v80[0];
    v61 = v80[2];
    v42 = v38;
    v43 = v70;
    sub_1AE4E61F4(v37, v42, (v39 & 0x101), v70);
    (*v65)(v34, v69, v35);
    (*v64)(v34, 0, 1, v35);
    v44 = *(v67 + 48);
    sub_1AE4B441C(v43, v36, &qword_1EB5DD4B8, "R3");
    sub_1AE4B441C(v34, v36 + v44, &qword_1EB5DD4B8, "R3");
    v45 = *v63;
    if ((*v63)(v36, 1, v35) == 1)
    {
      break;
    }

    v46 = v59;
    sub_1AE4B441C(v36, v59, &qword_1EB5DD4B8, "R3");
    v47 = v45(v36 + v44, 1, v35);
    v48 = v60;
    if (v47 == 1)
    {
      sub_1AE4B4558(v68, &qword_1EB5DD4B8, "R3");
      sub_1AE4B4558(v70, &qword_1EB5DD4B8, "R3");
      (*v56)(v46, v35);
      goto LABEL_13;
    }

    (*v54)(v60, v36 + v44, v35);
    sub_1AE4AA0A8(&unk_1EB5DD148, MEMORY[0x1E69695A8]);
    v49 = sub_1AE4EAD20();
    v50 = *v56;
    (*v56)(v48, v35);
    sub_1AE4B4558(v68, &qword_1EB5DD4B8, "R3");
    sub_1AE4B4558(v70, &qword_1EB5DD4B8, "R3");
    v50(v46, v35);
    result = sub_1AE4B4558(v36, &qword_1EB5DD4B8, "R3");
    if (v49)
    {
      goto LABEL_22;
    }

LABEL_14:
    result = sub_1AE4E6B88();
    v37 = result;
    v38 = v40;
    v39 = v41;
    v34 = v68;
    if (v41 == 2)
    {
      goto LABEL_8;
    }
  }

  sub_1AE4B4558(v34, &qword_1EB5DD4B8, "R3");
  sub_1AE4B4558(v43, &qword_1EB5DD4B8, "R3");
  if (v45(v36 + v44, 1, v35) != 1)
  {
LABEL_13:
    sub_1AE4B4558(v36, &unk_1EB5DD550, &qword_1AE4EDBC0);
    goto LABEL_14;
  }

  result = sub_1AE4B4558(v36, &qword_1EB5DD4B8, "R3");
LABEL_22:
  if (v66)
  {
    v51 = v82;
    if (v61)
    {
      v52 = bswap64(*(v61 + v62 + 8));
      if ((v52 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_26;
      }

LABEL_28:
      *v51 = v52;
      return result;
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    v51 = v82;
    if (v61)
    {
      v52 = bswap32(*(v61 + v62 + 8));
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4D84AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void *sub_1AE4D850C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_1AE4EA990();
  v8 = result;
  if (result)
  {
    result = sub_1AE4EA9B0();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1AE4EA9A0();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

char *sub_1AE4D85BC(char *a1, int64_t a2, char a3)
{
  result = sub_1AE4D85FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AE4D85DC(char *a1, int64_t a2, char a3)
{
  result = sub_1AE4D871C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AE4D85FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5A8, &qword_1AE4EDC08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AE4D871C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD580, &qword_1AE4EDBE8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1AE4D8828(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1AE4EAB10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = sub_1AE4EACE0();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1AE4AA0A8(&unk_1EB5DD148, MEMORY[0x1E69695A8]);
      v23 = sub_1AE4EAD20();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1AE4D8E64(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1AE4D8B08(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1AE4EAB10();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5A0, &qword_1AE4EDC00);
  result = sub_1AE4EB080();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
      result = sub_1AE4EACE0();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1AE4D8E64(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1AE4EAB10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AE4D8B08(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1AE4D9108();
      goto LABEL_12;
    }

    sub_1AE4D9340(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
  v15 = sub_1AE4EACE0();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1AE4AA0A8(&unk_1EB5DD148, MEMORY[0x1E69695A8]);
      v23 = sub_1AE4EAD20();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AE4EB1B0();
  __break(1u);
  return result;
}

void *sub_1AE4D9108()
{
  v1 = v0;
  v2 = sub_1AE4EAB10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5A0, &qword_1AE4EDC00);
  v7 = *v0;
  v8 = sub_1AE4EB070();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1AE4D9340(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1AE4EAB10();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD5A0, &qword_1AE4EDC00);
  v10 = sub_1AE4EB080();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
      result = sub_1AE4EACE0();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1AE4D965C(unsigned int a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_1AE4E8EEC(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v16;
  }

  v14 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v14;
}

uint64_t sub_1AE4D96FC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1AE4EB170();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 4 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      result = MEMORY[0x1B27016E0](*(v10 + 40), v24, 4);
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}