uint64_t *sub_252919DE8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 5;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 100;
  return result;
}

void *sub_252919E68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_252919EA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_252E36F34();
  *a1 = result;
  a1[1] = v5;
  return result;
}

_DWORD *sub_252919F00@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_252919F68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_252E36164();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_252919FAC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25291A048(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[11];
    goto LABEL_13;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[14];

  return v20(v21, a2, v19);
}

uint64_t sub_25291A2FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[11];
    goto LABEL_13;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[14];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_25291A5BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291A610()
{
  v1 = sub_252E36984();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_252E36974();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_25291A90C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_252E33C84();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25291AAB4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_252E33C84();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25291ABB0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25291ABE8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_25291AC7C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291ACD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291AD10()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291AD50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291AD90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 176);
}

uint64_t sub_25291ADE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_25291AF40()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291B034()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291B074()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291B0B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25291B0FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_25291B14C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B378()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 30, 7);
}

uint64_t sub_25291B3B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B448()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291B4A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291B4E0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B530()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291B570()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B5B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B5F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25291B664(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_2529E6488(&qword_27F541390, &qword_27F541388, &qword_252E404A8);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541388, &qword_252E404A8);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

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
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25291BA8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25291BACC()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25291BB90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25291BCB0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) rooms];
      sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_252E378C4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_20;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_45;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_47;
            }

            sub_252A00B04(&qword_27F5413B0, &qword_27F5413A8, &qword_252E404B8);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413A8, &qword_252E404B8);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_26;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

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
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25291C340()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291C6B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291C6F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291C728()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291C780()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291C7C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291C83C()
{
  sub_252A6569C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

id sub_25291CA90@<X0>(void *a1@<X8>)
{
  result = [*v1 accessory];
  *a1 = result;
  return result;
}

id sub_25291CB10@<X0>(void *a1@<X8>)
{
  result = [*v1 characteristic];
  *a1 = result;
  return result;
}

id sub_25291CB4C()
{
  v1 = [*v0 request];

  return v1;
}

uint64_t sub_25291CB84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291CBBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291CC00()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25291CC38()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25291CD1C()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  if (*(v0 + v6))
  {
    v8 = *(v0 + v6 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_25291D214()
{
  sub_2529B7A2C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25291D374()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291D3AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291D678()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25291D6C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25291D720()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25291D770()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25291D7B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291DA2C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_25291DBBC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_25291DE5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291DEF4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25291E090()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25291E118()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291E150@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25291E1C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_25291E37C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_25291E540()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291E594()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291E5CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291E60C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291E64C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 2, v2 | 7);
}

uint64_t sub_25291E770()
{
  if (v0[3])
  {

    v1 = v0[5];

    v2 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25291E7C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291E800()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25291EA2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291EA64()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291EAAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291EAEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291EB24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291EB5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291ED2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36C84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25291ED98(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36C84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25291EE80()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291EFD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291F018()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291F07C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);

  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v4, 1, v7))
  {
    (*(v8 + 8))(v0 + v4, v7);
  }

  if (!v9(v0 + v5, 1, v7))
  {
    (*(v8 + 8))(v0 + v5, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v5 + 1, v2 | 7);
}

uint64_t sub_25291FE10()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291FE50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291FE90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291FEC8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291FF20()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = *(v0 + v6);

  v12 = *(v0 + v7);

  v13 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

uint64_t sub_25292003C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252920084@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252920110(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[10];

  return v19(v20, a2, v18);
}

uint64_t sub_252920370(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[10];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_2529205DC()
{
  v1 = *(v0 + 24);
  sub_252927D3C(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_252920618()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252920668()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529206B0()
{
  if (v0[3])
  {

    v1 = v0[5];

    v2 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2529206FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252920738()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_252920780()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_252920804()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25292083C()
{
  if (v0[3])
  {

    v1 = v0[5];

    v2 = v0[6];

    v3 = v0[7];

    v4 = v0[9];

    v5 = v0[11];

    v6 = v0[14];

    v7 = v0[16];

    v8 = v0[18];
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2529208B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252920A2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252920A64()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252920B84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252920BC8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252920C00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252920C40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252920C78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_252920CD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252920D1C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252920D64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252920DD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252920E1C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252920E64()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252920FC8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529212B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2529212FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_252E33C84();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2529213F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_252BA385C(a1, a2, a3, type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters);
}

uint64_t sub_252921480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_252BA385C(a1, a2, a3, type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters);
}

uint64_t sub_252921504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_252BA385C(a1, a2, a3, type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters);
}

uint64_t sub_252921588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_252BA385C(a1, a2, a3, type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters);
}

uint64_t sub_252921604@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252921680(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_252921838(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2529219FC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252921A3C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252921BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_252BCEFDC(a1, a2, a3);
}

uint64_t sub_252921C50()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252921C88()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252921CD4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252921D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_252921E64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_252921FEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252922064()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529220A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252922184()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_252922284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_2529222E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25292231C()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_2529223CC()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2529224B0()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_252922598()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529225D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252922614()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252922874()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529228AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252922914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2529229E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252922AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_252922B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_252922C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_252922D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252922DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252922EB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252922F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25292302C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2529230F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2529231B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2529233E8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_252923430()
{
  if (*(v0 + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_25292347C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2529234B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529234F4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252923544()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252923750()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_252923908()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252923948()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252923A6C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252923AAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_252923D84()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252923E0C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x1F8uLL);
  return sub_2529353AC(__dst, &v5);
}

uint64_t sub_252923FD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252924028()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_252924130()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_252924170()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529241B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529241E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252924220()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252924268()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529242A8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2529242F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25292432C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252924384()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[11];

  v8 = v0[13];

  v9 = v0[16];

  v10 = v0[18];

  v11 = v0[20];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_252924414()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2529244F8()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

void sub_25292466C(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x797469746E45;
  v4 = 0xEB00000000746E65;
  v5 = 0x5374736575716552;
  if (*v1 != 2)
  {
    v5 = 0x6574617453;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6F707365526F4ELL;
    v2 = 0xEA00000000006573;
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

uint64_t sub_2529246F0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252924730()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 3);

  v9 = *(v0 + 4);

  v10 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v11 = *&v0[v5];

  v12 = *&v0[v7];

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_252924840()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252924878()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2529248D0()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = *(v0 + v6);

  v13 = *(v0 + v8);

  v14 = *(v0 + v9 + 8);

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v3 | 7);
}

uint64_t sub_2529249FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252924B38()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252924B70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252924BC8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252924C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_252924D58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_252924E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_252924FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25292510C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439D0, &qword_252E50220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2529251C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439D0, &qword_252E50220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2529253C0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2529254D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25292550C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252925550()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252925590()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_2529255C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529255FC()
{
  v1 = sub_252E34164();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2529256C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_252925710@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_252925768()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529257A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529257D8()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252925820()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_252925908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_252925964()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252925A94()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252925ADC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252925C14()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252925C4C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252925C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_252925D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_252925E28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 30, 7);
}

uint64_t sub_252925E9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252925ED4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 128);

  v9 = *(v0 + 144);

  v10 = *(v0 + 160);

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_252925F5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252925FC0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252926088()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2529260D0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252926118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E358D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2529261D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_252E358D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25292628C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529262C4()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_252926364()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529263AC()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2529263F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25292643C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25292649C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2529264EC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25292662C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252926674()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2529266C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_252926744@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trigger];
  *a2 = result;
  return result;
}

id sub_252926794@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 automatableTask];
  *a2 = result;
  return result;
}

uint64_t sub_2529267F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25292684C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_2529268A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 discoveryType];
  *a2 = result;
  return result;
}

uint64_t sub_2529269B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_252926A10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_252926A6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dateTimeRange];
  *a2 = result;
  return result;
}

uint64_t sub_252926AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ShowHomeIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_252926B1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ShowHomeIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_252926B70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userTask];
  *a2 = result;
  return result;
}

id sub_252926C28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 time];
  *a2 = result;
  return result;
}

uint64_t sub_252926CE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ControlHomeIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_252926D38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ControlHomeIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_252926D8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_252926DD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

id sub_252926E74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entityType];
  *a2 = result;
  return result;
}

id sub_252926EBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 outerDeviceType];
  *a2 = result;
  return result;
}

id sub_252926F44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceType];
  *a2 = result;
  return result;
}

id sub_25292708C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isExcludeFilter];
  *a2 = result;
  return result;
}

id sub_2529270DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hasAllQuantifier];
  *a2 = result;
  return result;
}

id sub_2529271AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 referencesFavorites];
  *a2 = result;
  return result;
}

id sub_25292723C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_252927314@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sceneType];
  *a2 = result;
  return result;
}

id sub_25292746C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 taskType];
  *a2 = result;
  return result;
}

id sub_2529274B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attribute];
  *a2 = result;
  return result;
}

id sub_2529274FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

id sub_25292754C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BOOLValue];
  *a2 = result;
  return result;
}

id sub_252927594@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 doubleValue];
  *a2 = v4;
  return result;
}

id sub_2529275DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

id sub_25292762C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 limitValue];
  *a2 = result;
  return result;
}

id sub_252927674@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unit];
  *a2 = result;
  return result;
}

id sub_2529276BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rangeValue];
  *a2 = result;
  return result;
}

id sub_25292770C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_252927754@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cleaningJob];
  *a2 = result;
  return result;
}

id sub_2529277A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lowerValue];
  *a2 = v4;
  return result;
}

id sub_2529277EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 upperValue];
  *a2 = v4;
  return result;
}

id sub_252927834@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interval];
  *a2 = result;
  return result;
}

id sub_25292787C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frequency];
  *a2 = result;
  return result;
}

id sub_2529278C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 weeklyRecurrenceDays];
  *a2 = result;
  return result;
}

id sub_25292790C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userTask];
  *a2 = result;
  return result;
}

id sub_25292795C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 taskOutcome];
  *a2 = result;
  return result;
}

id sub_2529279A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entity];
  *a2 = result;
  return result;
}

id sub_2529279FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 runState];
  *a2 = result;
  return result;
}

void sub_252927A48(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_252E37254();
  [v3 setCleanModes_];
}

id sub_252927AB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetMap];
  *a2 = result;
  return result;
}

id sub_252927B0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 areaID];
  *a2 = v4;
  return result;
}

id sub_252927B54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapID];
  *a2 = v4;
  return result;
}

id sub_252927BA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapID];
  *a2 = v4;
  return result;
}

uint64_t sub_252927BEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_252927C20(void *a1)
{
  v4 = *(v1 + 8);
  v2 = a1;

  return v4(v2);
}

uint64_t sub_252927CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252E36474();
  *a1 = result;
  return result;
}

void sub_252927E20(void *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v114 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 filters];
  if (!v12)
  {
    if (qword_27F53F498 != -1)
    {
LABEL_78:
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544C70);
    v20 = 0xD00000000000002ALL;
    v21 = 0x8000000252E68A60;
    v22 = 48;
    goto LABEL_7;
  }

  v13 = v12;
  v108 = v8;
  type metadata accessor for HomeFilter();
  v14 = sub_252E37264();

  type metadata accessor for HomeStore();
  v15 = static HomeStore.shared.getter();
  v16 = HomeStore.scenes(matching:)(v14);
  v18 = v17;

  if (v18)
  {
    sub_252929F10(v16, 1);
    if (qword_27F53F498 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_4;
  }

  v112 = a2;
  v27 = sub_252929F1C(v16);
  v29 = v28;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544C70);
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E68B70);
  v110 = v27;
  v111 = v29;
  v119 = v27;
  v120 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBA0, &qword_252E3B238);
  sub_252E37AE4();
  sub_252CC4050(v117, v118, 0xD00000000000007FLL, 0x8000000252E68A90, 0xD000000000000021, 0x8000000252E68B10, 60);

  v31 = *(v4 + 24);
  v32 = v16 & 0xFFFFFFFFFFFFFF8;
  v107 = *(v4 + 16);
  v106 = v31;
  if (v16 >> 62)
  {
    v33 = sub_252E378C4();
  }

  else
  {
    v33 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v111;
  a2 = v112;
  v35 = v110;
  if (!v33)
  {
LABEL_70:
    v93 = 0;
    goto LABEL_72;
  }

  v36 = 0;
  v109 = 0;
  v37 = v16 & 0xC000000000000001;
  v38 = v16 + 32;
  v98 = (v9 + 32);
  v101 = v33;
  v100 = v16 & 0xC000000000000001;
  v105 = a3;
  v104 = a1;
  v116 = v16;
  v102 = v16 & 0xFFFFFFFFFFFFFF8;
  v99 = v16 + 32;
  while (2)
  {
    if (v37)
    {
      v73 = v36;
      v113 = MEMORY[0x2530ADF00](v36, v16);
      v40 = __OFADD__(v73, 1);
      v41 = v73 + 1;
      if (v40)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (v36 >= *(v32 + 16))
      {
        goto LABEL_80;
      }

      v113 = *(v38 + 8 * v36);
      v39 = v36;

      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_once();
LABEL_4:
        v19 = sub_252E36AD4();
        __swift_project_value_buffer(v19, qword_27F544C70);
        v20 = 0xD000000000000025;
        v21 = 0x8000000252E68B40;
        v22 = 53;
LABEL_7:
        sub_252CC4050(v20, v21, 0xD00000000000007FLL, 0x8000000252E68A90, 0xD000000000000021, 0x8000000252E68B10, v22);
        v24 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
        v25 = OBJC_IVAR___ControlHomeIntentResponse_code;
        swift_beginAccess();
        *&v24[v25] = 102;
        [v24 setUserActivity_];
        type metadata accessor for HomeEntityResponse();
        v26 = sub_252E37254();
        [v24 setEntityResponses_];

        goto LABEL_73;
      }
    }

    v103 = v41;
    v42 = [*(v113 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
    sub_25292A2F8();
    sub_2529299AC(&qword_27F53FBB0, sub_25292A2F8);
    v43 = sub_252E373A4();

    v44 = v109;
    v45 = sub_252B2E20C(v43);
    v109 = v44;

    v117 = MEMORY[0x277D84F90];
    if (v45 >> 62)
    {
      v46 = sub_252E378C4();
      if (!v46)
      {
LABEL_43:
        v115 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_43;
      }
    }

    v47 = 0;
    v115 = MEMORY[0x277D84F90];
    while (2)
    {
      v48 = v47;
      while (1)
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x2530ADF00](v48, v45);
          v47 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v48 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v49 = *(v45 + 8 * v48 + 32);

          v47 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }
        }

        if (*(v49 + 40) == 1)
        {
          v50 = *(v49 + 16);
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            break;
          }
        }

LABEL_21:

        ++v48;
        if (v47 == v46)
        {
          goto LABEL_44;
        }
      }

      v52 = v51;
      a2 = v50;
      v53 = [v52 characteristic];
      v54 = [v53 service];

      if (!v54)
      {

        goto LABEL_21;
      }

      v55 = type metadata accessor for Service();
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      v96 = swift_allocObject();
      *(v96 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v54;
      v58 = v54;
      v59 = [v58 uniqueIdentifier];
      sub_252E32E64();

      v60 = [v58 name];
      v115 = sub_252E36F34();
      v97 = v61;

      v62 = [v58 assistantIdentifier];
      if (v62)
      {
        v63 = v62;
        v95 = sub_252E36F34();
        v65 = v64;

        v66 = v95;
      }

      else
      {

        v66 = 0;
        v65 = 0;
      }

      v67 = v96;
      v68 = (*v98)(v96 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v114, v108);
      v69 = (v67 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v70 = v97;
      *v69 = v115;
      v69[1] = v70;
      *(v67 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v71 = (v67 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v71 = v66;
      v71[1] = v65;
      MEMORY[0x2530AD700](v68);
      if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v72 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v115 = v117;
      if (v47 != v46)
      {
        continue;
      }

      break;
    }

LABEL_44:

    if (v115 >> 62)
    {
      v74 = sub_252E378C4();
      v16 = v116;
      if (v74)
      {
        goto LABEL_46;
      }

LABEL_69:

      v36 = v103;
      v34 = v111;
      a2 = v112;
      a1 = v104;
      v35 = v110;
      v32 = v102;
      v37 = v100;
      v38 = v99;
      if (v103 == v101)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  v74 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = v116;
  if (!v74)
  {
    goto LABEL_69;
  }

LABEL_46:
  v75 = 0;
  v76 = v115 & 0xC000000000000001;
  v77 = v115 & 0xFFFFFFFFFFFFFF8;
  v78 = v115 + 32;
  while (1)
  {
    if (v76)
    {
      a2 = MEMORY[0x2530ADF00](v75, v115);
      v40 = __OFADD__(v75++, 1);
      if (v40)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (v75 >= *(v77 + 16))
      {
        goto LABEL_77;
      }

      a2 = *(v78 + 8 * v75);

      v40 = __OFADD__(v75++, 1);
      if (v40)
      {
        goto LABEL_76;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v79 = qword_27F575A48;
    v80 = [*&a2[OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate] serviceType];
    v81 = sub_252E36F34();
    v83 = v82;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v84 = off_27F546230;
    if (*(off_27F546230 + 2) && (v85 = sub_252A44A10(v81, v83), (v86 & 1) != 0))
    {
      v87 = *(v84[7] + 8 * v85);
    }

    else
    {
      v87 = 0;
    }

    if (*(v79 + 16))
    {
      v88 = *(v79 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v87);
      v89 = sub_252E37F14();
      v90 = -1 << *(v79 + 32);
      v91 = v89 & ~v90;
      if ((*(v79 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
      {
        break;
      }
    }

LABEL_47:

    v16 = v116;
    if (v75 == v74)
    {
      goto LABEL_69;
    }
  }

  v92 = ~v90;
  while (*(*(v79 + 48) + 8 * v91) != v87)
  {
    v91 = (v91 + 1) & v92;
    if (((*(v79 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v93 = 1;
  v34 = v111;
  a2 = v112;
  a1 = v104;
  v16 = v116;
  v35 = v110;
LABEL_72:
  sub_252929F10(v16, 0);
  v24 = sub_252B84730(a1, v107, v106, v35, v93, v34, 0);
  *(sub_252B680FC() + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_preferNotices) = 1;

LABEL_73:
  (a2)(v24);
}

unint64_t sub_2529289F0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = sub_252B2F470();

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_45;
          }

          v33 = v3;
          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_25292A398();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v19 = sub_2529FBE00(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Service();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v8 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252928D30()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_252928D70()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsyncScenesHandleDelegate();
  v5 = swift_allocObject();
  sub_252E32E74();
  v6 = sub_252E32E24();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  *(v5 + 16) = v6;
  *(v5 + 24) = v8;
  return v5;
}

double *sub_252928E60@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    *a2 = v2;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_252928EC0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -96;
  return result;
}

void *sub_252928ED8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -32;
  return result;
}

unsigned __int8 *sub_252928EF0@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -108;
  return result;
}

unsigned __int8 *sub_252928F08@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 120;
  return result;
}

unsigned __int8 *sub_252928F20@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -72;
  return result;
}

void *sub_252928F38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 76;
  return result;
}

void *sub_252928F50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -56;
  return result;
}

uint64_t sub_25292904C(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FDB0, type metadata accessor for HMError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2529290B8(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FDB0, type metadata accessor for HMError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_252929124(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_252929198()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_2529291E0()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_252929224(uint64_t a1, id *a2)
{
  result = sub_252E36F14();
  *a2 = 0;
  return result;
}

uint64_t sub_25292929C(uint64_t a1, id *a2)
{
  v3 = sub_252E36F24();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25292931C@<X0>(uint64_t *a1@<X8>)
{
  sub_252E36F34();
  v2 = sub_252E36F04();

  *a1 = v2;
  return result;
}

uint64_t sub_252929360()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37EF4();
  return sub_252E37F14();
}

uint64_t sub_2529293A8()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37EF4();
  return sub_252E37F14();
}

uint64_t sub_2529293FC(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_252929468(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2529294D4(void *a1, uint64_t a2)
{
  v4 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_252929588(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_252929604()
{
  v2 = *v0;
  sub_252E37EC4();
  sub_252E36E94();
  return sub_252E37F14();
}

uint64_t sub_252929664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2529296E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E36F04();

  *a2 = v5;
  return result;
}

uint64_t sub_252929730(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FA60, type metadata accessor for HMReportDomain);
  v3 = sub_2529299AC(&qword_27F53FA68, type metadata accessor for HMReportDomain);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2529297EC(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FDE0, type metadata accessor for HMSignificantEvent);
  v3 = sub_2529299AC(&qword_27F53FDE8, type metadata accessor for HMSignificantEvent);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2529298A8(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FA70, type metadata accessor for HMAttributeName);
  v3 = sub_2529299AC(&qword_27F53FA78, type metadata accessor for HMAttributeName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2529299AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252929A3C()
{
  v1 = *v0;
  v2 = sub_252E36F34();
  v3 = MEMORY[0x2530AD610](v2);

  return v3;
}

uint64_t sub_252929A78()
{
  v1 = *v0;
  sub_252E36F34();
  sub_252E37044();
}

uint64_t sub_252929ACC()
{
  v1 = *v0;
  sub_252E36F34();
  sub_252E37EC4();
  sub_252E37044();
  v2 = sub_252E37F14();

  return v2;
}

uint64_t sub_252929B40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_252E36F34();
  v6 = v5;
  if (v4 == sub_252E36F34() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252929CE8()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 16), v6);

  __swift_project_boxed_opaque_existential_1(v6, v7);
  if (sub_252E338F4())
  {
    v1 = sub_252C4D664(5);
    __swift_destroy_boxed_opaque_existential_1(v6);
    if (v1)
    {
      v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
      sub_252929E74((v2 + 288), v6);

      v3 = v7;
      v4 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      LOBYTE(v3) = (*(v4 + 64))(v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v6);
      if (v3)
      {
        return 1;
      }
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return 0;
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

uint64_t sub_252929E74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_252929F10(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_252929F1C(unint64_t a1)
{
  v1 = sub_2529289F0(a1);
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v30 = v2 & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    while (v30)
    {
      v6 = MEMORY[0x2530ADF00](v4, v2);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_21;
      }

LABEL_7:
      v8 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v9 = sub_252E36F34();
      v11 = v10;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v12 = off_27F546230;
      if (*(off_27F546230 + 2) && (v13 = sub_252A44A10(v9, v11), (v14 & 1) != 0))
      {
        v15 = *(v12[7] + 8 * v13);
      }

      else
      {
        v15 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7B8C(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_2529F7B8C((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      *&v5[8 * v17 + 32] = v15;
      ++v4;
      if (v7 == i)
      {
        goto LABEL_25;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v6 = *(v2 + 8 * v4 + 32);

    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_25:

  v19 = 0;
  v20 = *(v5 + 2);
  while (v20 != v19)
  {
    v21 = &v5[8 * v19++];
    if (*(v21 + 4) == 4)
    {

      return 100;
    }
  }

  if (v20)
  {
    v22 = 0;
    while (1)
    {
      if (v22 >= *(v5 + 2))
      {
        __break(1u);
        return result;
      }

      v23 = *&v5[8 * v22 + 32];
      v24 = sub_25292A344();
      v31 = MEMORY[0x2530AD880](4, &type metadata for HomeDeviceType, v24);
      sub_252DA6E20(v32, 7);
      sub_252DA6E20(v32, 4);
      sub_252DA6E20(v32, 27);
      sub_252DA6E20(v32, 28);
      if (*(v31 + 16))
      {
        v25 = *(v31 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v23);
        v26 = sub_252E37F14();
        v27 = -1 << *(v31 + 32);
        v28 = v26 & ~v27;
        if ((*(v31 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          break;
        }
      }

LABEL_31:
      ++v22;

      if (v22 == v20)
      {
        goto LABEL_41;
      }
    }

    v29 = ~v27;
    while (*(*(v31 + 48) + 8 * v28) != v23)
    {
      v28 = (v28 + 1) & v29;
      if (((*(v31 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    return 100;
  }

LABEL_41:

  return 600;
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

unint64_t sub_25292A2F8()
{
  result = qword_27F5412F0;
  if (!qword_27F5412F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5412F0);
  }

  return result;
}

unint64_t sub_25292A344()
{
  result = qword_27F53FBB8;
  if (!qword_27F53FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F53FBB8);
  }

  return result;
}

unint64_t sub_25292A398()
{
  result = qword_27F541360;
  if (!qword_27F541360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F53FBC0, &unk_252E3B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541360);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25292A468(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25292A488(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_25292A58C(uint64_t a1, unint64_t *a2)
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

unint64_t sub_25292AA5C()
{
  result = qword_27F53FDD8;
  if (!qword_27F53FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F53FDD8);
  }

  return result;
}

uint64_t sub_25292AB10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_25296E640();
  *a2 = result;
  return result;
}

uint64_t sub_25292AB64(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v160 - v10;
  if ([a1 attribute] != 67)
  {
    if (qword_27F53F498 != -1)
    {
      goto LABEL_117;
    }

    goto LABEL_8;
  }

  v12 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v13 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v14 = *&v12[v13];
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v25 = *&v12[v13];
    }

    v26 = sub_252E378C4();

    if (!v26)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v15)
    {
      goto LABEL_12;
    }
  }

  v16 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v17 = sub_252AC0884(v2);

  if (v17)
  {
    if (!*(v17 + 16))
    {
LABEL_18:

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_27F544C70);
      v170 = 0;
      v171 = 0xE000000000000000;
      sub_252E379F4();
      v172 = v170;
      v173 = v171;
      MEMORY[0x2530AD570](0xD00000000000002BLL, 0x8000000252E68C50);
      MEMORY[0x2530AD570](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
      MEMORY[0x2530AD570](0x203A6E6920, 0xE500000000000000);
      v31 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v32 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v33 = *&v31[v32];
      if (v33 >> 62)
      {
        if (v33 < 0)
        {
          v132 = *&v31[v32];
        }

        v133 = sub_252E378C4();

        if (!v133)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v34)
        {
          goto LABEL_23;
        }
      }

      v35 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v36 = sub_252AC0884(v2);

      if (v36)
      {
LABEL_24:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540030, &qword_252E491C0);
        sub_25292C260();
        v37 = sub_252E36E54();
        v39 = v38;

        MEMORY[0x2530AD570](v37, v39);

        v22 = v172;
        v23 = v173;
        v24 = 20;
        goto LABEL_25;
      }

LABEL_23:
      sub_252CC479C(MEMORY[0x277D84F90]);
      goto LABEL_24;
    }

    goto LABEL_13;
  }

LABEL_12:
  v17 = sub_252CC479C(MEMORY[0x277D84F90]);
  if (!*(v17 + 16))
  {
    goto LABEL_18;
  }

LABEL_13:
  v27 = sub_252A488EC(67);
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = *(*(v17 + 56) + 8 * v27);

  if ([a1 taskType] == 4)
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544C70);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E68DF0, 0xD000000000000079, 0x8000000252E68BB0);
    v30 = 1;
    return v30 & 1;
  }

  v41 = [a1 value];
  if (!v41 || (v42 = v41, v43 = [v41 cleaningJob], v42, !v43))
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544C70);
    v170 = 0;
    v171 = 0xE000000000000000;
    sub_252E379F4();

    v170 = 0xD000000000000022;
    v171 = 0x8000000252E68C80;
    v51 = [a1 description];
    v52 = sub_252E36F34();
    v54 = v53;

    MEMORY[0x2530AD570](v52, v54);

    v22 = v170;
    v23 = v171;
    v24 = 30;
    goto LABEL_25;
  }

  v165 = v11;
  v166 = v5;
  v167 = v4;
  v168 = v43;
  v170 = MEMORY[0x277D84F90];
  v164 = v9;
  a1 = (v29 & 0xFFFFFFFFFFFFFF8);
  if (v29 >> 62)
  {
    v44 = sub_252E378C4();
  }

  else
  {
    v44 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = 0;
  v4 = v29 & 0xC000000000000001;
  v169 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v44 == v45)
    {

      if (v169 >> 62)
      {
        v134 = sub_252E378C4();
        v55 = v168;
        if (!v134)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v55 = v168;
        if (!*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_124;
        }
      }

      v56 = [v55 cleanModes];
      v57 = sub_252E37264();

      if (*(v57 + 16))
      {
        v58 = *(v57 + 32);

        v59 = [v55 cleanModes];
        v60 = sub_252E37264();

        v61 = *(v60 + 16);

        if (v61 == 1 && v58 == 14)
        {

          v30 = 1;
          return v30 & 1;
        }
      }

      else
      {
      }

      v63 = [v55 cleanModes];
      v64 = sub_252E37264();

      v65 = *(v64 + 16);
      if (v65)
      {
        v66 = (v64 + 32);
        v67 = MEMORY[0x277D84F90];
        do
        {
          v69 = *v66++;
          v68 = v69;
          if (v69 <= 0xF)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = sub_2529F7F9C(0, *(v67 + 2) + 1, 1, v67);
            }

            v71 = *(v67 + 2);
            v70 = *(v67 + 3);
            if (v71 >= v70 >> 1)
            {
              v67 = sub_2529F7F9C((v70 > 1), v71 + 1, 1, v67);
            }

            *(v67 + 2) = v71 + 1;
            *&v67[8 * v71 + 32] = v68;
          }

          --v65;
        }

        while (v65);
      }

      else
      {
        v67 = MEMORY[0x277D84F90];
      }

      v72 = &off_279711000;
      v73 = [v55 runState];
      v74 = v169;
      if (v73 == 17 && Array<A>.containsResume()(v169))
      {

        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v167, qword_27F544C70);
        v170 = 0;
        v171 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E68DD0);
        v75 = [v55 description];
LABEL_105:
        v109 = v75;
        v110 = sub_252E36F34();
        v112 = v111;

        MEMORY[0x2530AD570](v110, v112);

        MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E68D00);
        v113 = type metadata accessor for HomeAttributeCleaningJob();
        v114 = MEMORY[0x2530AD730](v74, v113);
        v116 = v115;

        MEMORY[0x2530AD570](v114, v116);

        sub_252CC3D90(v170, v171, 0xD000000000000079, 0x8000000252E68BB0);

        v30 = 1;
        return v30 & 1;
      }

      if ([v55 runState] == 2)
      {
        v76 = Array<A>.contains(_:)(v67, v74);

        if (v76)
        {
          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          v77 = __swift_project_value_buffer(v167, qword_27F544C70);
          v170 = 0;
          v171 = 0xE000000000000000;
          sub_252E379F4();

          v170 = 0xD000000000000016;
          v171 = 0x8000000252E68D20;
          v78 = [v55 description];
          v79 = sub_252E36F34();
          v81 = v80;

          MEMORY[0x2530AD570](v79, v81);
          v82 = v168;

          MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E68D00);
          v83 = type metadata accessor for HomeAttributeCleaningJob();
          v84 = MEMORY[0x2530AD730](v169, v83);
          v86 = v85;

          MEMORY[0x2530AD570](v84, v86);

          sub_252CC3D90(v170, v171, 0xD000000000000079, 0x8000000252E68BB0);

          v87 = [v82 targetAreas];
          if (v87)
          {
            v88 = v87;
            v89 = type metadata accessor for HomeAttributeTargetArea();
            v74 = sub_252E37264();

            if (v74 >> 62)
            {
              v55 = sub_252E378C4();
              if (v55)
              {
LABEL_78:
                v164 = v89;
                v90 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
                v91 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
                swift_beginAccess();
                v92 = *&v90[v91];
                if (v92 >> 62)
                {
                  if (v92 < 0)
                  {
                    v159 = *&v90[v91];
                  }

                  v93 = sub_252E378C4();
                }

                else
                {
                  v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v72 = MEMORY[0x277D84F90];
                v162 = v77;
                if (v93)
                {
                  v94 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
                  v95 = sub_252AC0F68(v2);

                  if (v95)
                  {
                    v72 = v95;
                  }
                }

                v163 = "No RVC attribute found for ";
                v96 = 0;
                v169 = MEMORY[0x277D84F90];
                do
                {
                  v2 = v96;
                  while (1)
                  {
                    if ((v74 & 0xC000000000000001) != 0)
                    {
                      v97 = MEMORY[0x2530ADF00](v2, v74);
                    }

                    else
                    {
                      if (v2 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_126;
                      }

                      v97 = *(v74 + 8 * v2 + 32);
                    }

                    v98 = v97;
                    v96 = (v2 + 1);
                    if (__OFADD__(v2, 1))
                    {
                      __break(1u);
LABEL_126:
                      __break(1u);
                      goto LABEL_127;
                    }

                    v99 = [v97 name];
                    if (v99)
                    {
                      break;
                    }

                    ++v2;
                    if (v96 == v55)
                    {
                      goto LABEL_109;
                    }
                  }

                  v100 = v99;
                  v101 = sub_252E36F34();
                  v161 = v102;

                  v103 = v72;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v169 = sub_2529F7A80(0, *(v169 + 16) + 1, 1, v169);
                  }

                  v105 = *(v169 + 16);
                  v104 = *(v169 + 24);
                  if (v105 >= v104 >> 1)
                  {
                    v169 = sub_2529F7A80((v104 > 1), v105 + 1, 1, v169);
                  }

                  v106 = v169;
                  *(v169 + 16) = v105 + 1;
                  v107 = v106 + 16 * v105;
                  v108 = v161;
                  *(v107 + 32) = v101;
                  *(v107 + 40) = v108;
                  v72 = v103;
                }

                while (v96 != v55);
LABEL_109:
                v30 = Array<A>.contains(_:)(v169, v72);

                v125 = v165;
                v124 = v166;
                v126 = v167;
                (*(v166 + 16))(v165, v162, v167);
                v127 = 0xE000000000000000;
                v172 = 0;
                v173 = 0xE000000000000000;
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E68DB0);
                if (v30)
                {
                  v128 = 0;
                }

                else
                {
                  v128 = 544501614;
                }

                if ((v30 & 1) == 0)
                {
                  v127 = 0xE400000000000000;
                }

                MEMORY[0x2530AD570](v128, v127);

                MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E68D90);
                v129 = MEMORY[0x2530AD730](v74, v164);
                v131 = v130;

                MEMORY[0x2530AD570](v129, v131);

                sub_252CC3D90(v172, v173, 0xD000000000000079, v163 | 0x8000000000000000);

                (*(v124 + 8))(v125, v126);
                return v30 & 1;
              }
            }

            else
            {
              v55 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v55)
              {
                goto LABEL_78;
              }
            }

            v82 = v168;
          }

          v169 = 0xD000000000000016;
          v135 = v77;
          v136 = [v82 targetMap];
          if (v136)
          {
            v137 = v136;
            v138 = [v136 name];
            if (v138)
            {
              v139 = v138;
              v140 = sub_252E36F34();
              v142 = v141;

              v143 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
              v144 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
              swift_beginAccess();
              v145 = *&v143[v144];
              v163 = "No RVC attribute found for ";
              if (v145 >> 62)
              {
                v146 = sub_252E378C4();
              }

              else
              {
                v146 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v147 = MEMORY[0x277D84F90];
              if (v146)
              {
                v148 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
                v149 = sub_252AC11C8(v2);

                if (v149)
                {
                  v147 = v149;
                }
              }

              v30 = Array<A>.contains(_:)(v140, v142, v147);

              v151 = v166;
              v150 = v167;
              v152 = v164;
              (*(v166 + 16))(v164, v135, v167);
              v153 = 0xE000000000000000;
              v172 = 0;
              v173 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](v169, 0x8000000252E68D70);
              if (v30)
              {
                v154 = 0;
              }

              else
              {
                v154 = 544501614;
              }

              if ((v30 & 1) == 0)
              {
                v153 = 0xE400000000000000;
              }

              MEMORY[0x2530AD570](v154, v153);

              MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E68D90);
              v155 = [v137 description];
              v156 = sub_252E36F34();
              v158 = v157;

              MEMORY[0x2530AD570](v156, v158);

              sub_252CC3D90(v172, v173, 0xD000000000000079, v163 | 0x8000000000000000);

              (*(v151 + 8))(v152, v150);
              return v30 & 1;
            }
          }

          sub_252CC4050(0xD000000000000028, 0x8000000252E68D40, 0xD000000000000079, 0x8000000252E68BB0, 0xD000000000000017, 0x8000000252E68C30, 71);

          v30 = 1;
          return v30 & 1;
        }
      }

      else
      {
      }

      if (qword_27F53F918 != -1)
      {
LABEL_127:
        swift_once();
      }

      if (sub_252DB4F4C([v55 v72[209]], qword_27F575DF8))
      {
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v167, qword_27F544C70);
        v170 = 0;
        v171 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E68CE0);
        v75 = [v55 description];
        goto LABEL_105;
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v167, qword_27F544C70);
      v170 = 0;
      v171 = 0xE000000000000000;
      sub_252E379F4();
      v117 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
      v119 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v118 = *(v117 + 8);

      v170 = v119;
      v171 = v118;
      MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E68CB0);
      v120 = [v55 description];
      v121 = sub_252E36F34();
      v123 = v122;

      MEMORY[0x2530AD570](v121, v123);

      sub_252CC4050(v170, v171, 0xD000000000000079, 0x8000000252E68BB0, 0xD000000000000017, 0x8000000252E68C30, 79);
LABEL_124:

      goto LABEL_26;
    }

    if (v4)
    {
      v46 = MEMORY[0x2530ADF00](v45, v29);
    }

    else
    {
      if (v45 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_116;
      }

      v46 = *(v29 + 8 * v45 + 32);
    }

    v47 = v46;
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    v49 = [v46 cleaningJob];

    ++v45;
    if (v49)
    {
      MEMORY[0x2530AD700]();
      if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v50 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v169 = v170;
      v45 = v48;
    }
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  swift_once();
LABEL_8:
  __swift_project_value_buffer(v4, qword_27F544C70);
  v174 = 0;
  v175 = 0xE000000000000000;
  sub_252E379F4();

  v174 = 0xD00000000000001BLL;
  v175 = 0x8000000252E68B90;
  MEMORY[0x2530AD570](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
  MEMORY[0x2530AD570](0x203A6E6920, 0xE500000000000000);
  v18 = [a1 description];
  v19 = sub_252E36F34();
  v21 = v20;

  MEMORY[0x2530AD570](v19, v21);

  v22 = v174;
  v23 = v175;
  v24 = 15;
LABEL_25:
  sub_252CC4050(v22, v23, 0xD000000000000079, 0x8000000252E68BB0, 0xD000000000000017, 0x8000000252E68C30, v24);

LABEL_26:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_25292C040(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (v9 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v7 = MEMORY[0x277D84F90];
    if (i)
    {
      v11 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v12 = (a3)(v3);

      if (v12)
      {
        v7 = v12;
      }
    }

    if (v7 >> 62)
    {
      break;
    }

    v3 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_29;
    }

LABEL_8:
    a3 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](a3, v7);
      }

      else
      {
        if (a3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v13 = *(v7 + 8 * a3 + 32);
      }

      v14 = v13;
      v15 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        break;
      }

      v16 = [v13 name];
      if (v16)
      {
        v17 = v16;
        v18 = a1;
        v19 = a2;
        v20 = sub_252E36F34();
        v22 = v21;

        v23 = v20;
        a2 = v19;
        if (v23 == v18 && v22 == v19)
        {

          return 1;
        }

        a1 = v18;
        v25 = sub_252E37DB4();

        if (v25)
        {

          return 1;
        }
      }

      else
      {
      }

      ++a3;
      if (v15 == v3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v3 = sub_252E378C4();
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_29:

  return 0;
}

unint64_t sub_25292C260()
{
  result = qword_27F540038;
  if (!qword_27F540038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540038);
  }

  return result;
}

uint64_t static IconConfiguration.== infix(_:_:)()
{
  v0 = IconConfiguration.description.getter();
  v2 = v1;
  if (v0 == IconConfiguration.description.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  return v4 & 1;
}

uint64_t IconConfiguration.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E68E20);
  v2 = type metadata accessor for IconConfiguration();
  v3 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  if (v13)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v13)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v4, v5);

  MEMORY[0x2530AD570](0x614E6E6F6369202CLL, 0xEC000000203A656DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570]();

  MEMORY[0x2530AD570](0x6F436E6F6369202CLL, 0xED0000203A726F6CLL);
  v6 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  if (v14)
  {
    v7 = v13;
  }

  else
  {
    v7 = 7104878;
  }

  if (v14)
  {
    v8 = v14;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x2530AD570](v7, v8);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E68E40);
  v9 = v1 + v2[10];
  sub_252E330E4();
  if (v14)
  {
    v10 = v13;
  }

  else
  {
    v10 = 7104878;
  }

  if (v14)
  {
    v11 = v14;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2530AD570](v10, v11);

  return 0;
}

uint64_t IconConfiguration.init(iconName:iconColor:circleColor:onStateIconName:offStateIconName:action:rgbIconColor:deviceType:onStateMode:offStateMode:)@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v26 = *a7;
  v27 = *a8;
  v28 = *a6;
  v9 = type metadata accessor for IconConfiguration();
  v24 = v9[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v22 = v9[6];
  sub_252E330C4();
  v25 = v9[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_252E330C4();
  v10 = v9[10];
  sub_252E330C4();
  v23 = v9[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_252E330C4();
  v11 = v9[12];
  sub_252E330C4();
  v21 = v9[13];
  sub_252E330C4();
  v12 = v9[14];
  v13 = type metadata accessor for DirectInvocationConfig();
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  v15 = *(*(v14 - 8) + 8);
  v15(a1 + v10, v14);
  sub_252E330C4();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  (*(*(v16 - 8) + 8))(a1 + v22, v16);
  sub_252E330C4();
  sub_25292D864(a4, a1 + v12);
  sub_252E330C4();
  v15(a1 + v24, v14);
  sub_252E330C4();
  v15(a1 + v11, v14);
  sub_252E330C4();
  v15(a1 + v21, v14);
  sub_252E330C4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  (*(*(v17 - 8) + 8))(a1 + v23, v17);
  sub_252E330C4();
  v18 = v9[7];
  sub_252E330C4();
  v19 = v9[8];
  sub_252E330C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330F4();
  return sub_25292D8D4(a4);
}

uint64_t IconConfiguration.circleColor.setter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t IconConfiguration.shouldRenderCircle.setter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t IconConfiguration.iconColor.setter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t IconConfiguration.onStateIconName.setter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t IconConfiguration.offStateIconName.setter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t IconConfiguration.rgbIconColor.setter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  return sub_252E330F4();
}

uint64_t IconConfiguration.onStateMode.setter(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for IconConfiguration() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330F4();
}

uint64_t IconConfiguration.offStateMode.setter(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for IconConfiguration() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330F4();
}

uint64_t IconConfiguration.deviceType.setter(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for IconConfiguration() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  return sub_252E330F4();
}

uint64_t IconConfiguration.id.getter()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32E74();
  v5 = sub_252E32E24();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t IconConfiguration.iconName.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

uint64_t sub_25292CE3C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.iconName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.iconColor.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v2;
}

double sub_25292CF70@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for IconConfiguration() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_25292CFD8(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for IconConfiguration() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.iconColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for IconConfiguration() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.shouldRenderCircle.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  return v2;
}

uint64_t type metadata accessor for IconConfiguration()
{
  result = qword_27F540108;
  if (!qword_27F540108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25292D184@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for IconConfiguration() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_25292D1EC(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for IconConfiguration() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.shouldRenderCircle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for IconConfiguration() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.onStateMode.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330E4();
}

uint64_t sub_25292D33C@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for IconConfiguration() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_25292D3A4(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for IconConfiguration() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.onStateMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for IconConfiguration() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.offStateMode.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330E4();
}

uint64_t sub_25292D4F4@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for IconConfiguration() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_25292D55C(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for IconConfiguration() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.offStateMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for IconConfiguration() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.deviceType.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  return sub_252E330E4();
}

uint64_t sub_25292D6AC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for IconConfiguration() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_25292D714(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for IconConfiguration() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.deviceType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for IconConfiguration() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.circleColor.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v2;
}

uint64_t sub_25292D864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_25292D8D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_25292D93C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for IconConfiguration() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_25292D9A4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for IconConfiguration() + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.circleColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for IconConfiguration() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.rgbIconColor.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  sub_252E330E4();
  return v2;
}

uint64_t sub_25292DB04@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for IconConfiguration() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_25292DB6C(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for IconConfiguration() + 44);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.rgbIconColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for IconConfiguration() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t IconConfiguration.onStateIconName.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v2;
}

double sub_25292DCD0@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for IconConfiguration() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_25292DD38(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for IconConfiguration() + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.onStateIconName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for IconConfiguration() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.offStateIconName.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v2;
}

double sub_25292DE98@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for IconConfiguration() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_25292DF00(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for IconConfiguration() + 52);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.offStateIconName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for IconConfiguration() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

void sub_25292E00C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t IconConfiguration.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IconConfiguration() + 56);

  return sub_25292E09C(v3, a1);
}

uint64_t sub_25292E09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IconConfiguration.action.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IconConfiguration() + 56);

  return sub_25292E150(a1, v3);
}

uint64_t sub_25292E150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25292E20C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4965746174536E6FLL;
    v7 = 0x4D65746174536E6FLL;
    v8 = 0x657461745366666FLL;
    if (a1 != 3)
    {
      v8 = 0x7954656369766564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656D614E6E6F6369;
    v2 = 0x6F6C6F436E6F6369;
    if (a1 != 9)
    {
      v2 = 0x436E6F6349626772;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    v4 = 0x6F43656C63726963;
    if (a1 != 6)
    {
      v4 = 0x6E6F69746361;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25292E3A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25292E20C(*a1);
  v5 = v4;
  if (v3 == sub_25292E20C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_25292E42C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_25292E20C(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_25292E490()
{
  sub_25292E20C(*v0);
  sub_252E37044();
}

uint64_t sub_25292E4E4()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_25292E20C(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_25292E544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25293048C();
  *a2 = result;
  return result;
}

unint64_t sub_25292E574@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25292E20C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25292E5BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25293048C();
  *a1 = result;
  return result;
}

uint64_t sub_25292E5FC(uint64_t a1)
{
  v2 = sub_25292F29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25292E638(uint64_t a1)
{
  v2 = sub_25292F29C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IconConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v83 = v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540088, &qword_252E3BCB0);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v6);
  v98 = v75 - v8;
  v9 = type metadata accessor for IconConfiguration();
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v99 = 0;
  v100 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v97 = v14;
  sub_252E330C4();
  v16 = v9[6];
  LOBYTE(v99) = 0;
  v91 = v16;
  sub_252E330C4();
  v17 = v9[9];
  LOBYTE(v99) = 48;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  v90 = v17;
  v82 = v18;
  sub_252E330C4();
  v19 = v9[10];
  v99 = 0;
  v100 = 0;
  v95 = v19;
  sub_252E330C4();
  v20 = v9[11];
  v99 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  v96 = v20;
  sub_252E330C4();
  v22 = v9[12];
  v99 = 0;
  v100 = 0;
  v94 = v22;
  sub_252E330C4();
  v23 = v9[13];
  v99 = 0;
  v100 = 0;
  v93 = v23;
  sub_252E330C4();
  v88 = v9;
  v24 = v9[14];
  v25 = type metadata accessor for DirectInvocationConfig();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v92 = v24;
  v87 = v13;
  v27(&v13[v24], 1, 1, v25);
  v29 = a1[3];
  v30 = a1[4];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_25292F29C();
  v31 = v86;
  sub_252E37F74();
  if (v31)
  {
    v32 = v90;
    v33 = v87;
    __swift_destroy_boxed_opaque_existential_1(v89);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v35 = *(*(v34 - 8) + 8);
    v35(&v33[v97], v34);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v36 - 8) + 8))(&v33[v91], v36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
    (*(*(v37 - 8) + 8))(&v33[v32], v37);
    v35(&v33[v95], v34);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v38 - 8) + 8))(&v33[v96], v38);
    v35(&v33[v94], v34);
    v35(&v33[v93], v34);
    return sub_25292D8D4(&v33[v92]);
  }

  else
  {
    v77 = v28;
    v78 = v27;
    v79 = v25;
    v86 = v15;
    v80 = v21;
    LOBYTE(v99) = 8;
    v99 = sub_252E37C04();
    v100 = v39;
    v40 = v87;
    sub_252E330C4();
    LOBYTE(v99) = 9;
    v41 = sub_252E37C04();
    v43 = v42;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v45 = *(v44 - 8);
    v46 = *(v45 + 8);
    v47 = v45 + 8;
    v46(v40 + v97, v44);
    v99 = v41;
    v100 = v43;
    sub_252E330C4();
    LOBYTE(v99) = 5;
    v48 = sub_252E37C14();
    v75[1] = v47;
    v76 = v46;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v49 - 8) + 8))(v40 + v91, v49);
    LOBYTE(v99) = v48 & 1;
    sub_252E330C4();
    LOBYTE(v99) = 6;
    v50 = sub_252E37C04();
    v52 = v51;
    v53 = v44;
    v54 = v44;
    v55 = v76;
    v76(v40 + v95, v54);
    v99 = v50;
    v100 = v52;
    sub_252E330C4();
    LOBYTE(v99) = 0;
    v56 = sub_252E37C04();
    v58 = v57;
    v55(v40 + v94, v53);
    v99 = v56;
    v100 = v58;
    sub_252E330C4();
    LOBYTE(v99) = 1;
    v59 = sub_252E37C04();
    v61 = v60;
    v55(v40 + v93, v53);
    v99 = v59;
    v100 = v61;
    sub_252E330C4();
    LOBYTE(v99) = 7;
    sub_25292FB54(&qword_27F540098);
    v62 = v83;
    v63 = v79;
    sub_252E37C64();
    v64 = v90;
    v78(v62, 0, 1, v63);
    sub_25292E150(v62, v40 + v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5400A0, &qword_252E3BCB8);
    v101 = 10;
    sub_25292FC48(&qword_27F5400A8);
    sub_252E37C64();
    v65 = v99;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v66 - 8) + 8))(v40 + v96, v66);
    v99 = v65;
    sub_252E330C4();
    v101 = 4;
    sub_25292F2F0();
    v67 = v85;
    sub_252E37C64();
    v68 = v88;
    LOBYTE(v65) = v99;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
    (*(*(v69 - 8) + 8))(v40 + v64, v69);
    LOBYTE(v99) = v65;
    sub_252E330C4();
    v101 = 2;
    sub_25292F344();
    v70 = v98;
    sub_252E37C64();
    v71 = v68[7];
    v101 = v99;
    sub_252E330C4();
    v101 = 3;
    sub_252E37C64();
    v72 = v84;
    v73 = v68[8];
    v101 = v99;
    sub_252E330C4();
    (*(v72 + 8))(v70, v67);
    sub_25292F398(v40, v81);
    __swift_destroy_boxed_opaque_existential_1(v89);
    return sub_25292F3FC(v40);
  }
}

unint64_t sub_25292F29C()
{
  result = qword_27F540090;
  if (!qword_27F540090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540090);
  }

  return result;
}

unint64_t sub_25292F2F0()
{
  result = qword_27F5400B0;
  if (!qword_27F5400B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5400B0);
  }

  return result;
}

unint64_t sub_25292F344()
{
  result = qword_27F5400B8;
  if (!qword_27F5400B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5400B8);
  }

  return result;
}

uint64_t sub_25292F398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25292F3FC(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IconConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5400C0, &qword_252E3BCC0);
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25292F29C();
  sub_252E37F84();
  v10 = type metadata accessor for IconConfiguration();
  v11 = v10[12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  v34 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_25292FA38();
  v30 = v12;
  sub_252E37D54();
  v13 = v2;
  if (v2)
  {

    v13 = 0;
  }

  v14 = v3 + v10[13];
  sub_252E330E4();
  v34 = 1;
  sub_252E37D54();
  v15 = v13;
  if (v13)
  {

    v15 = 0;
  }

  v16 = v10[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  LOBYTE(v32) = 5;
  sub_252E37D04();
  v17 = v15;
  if (v15)
  {

    v17 = 0;
  }

  v18 = v3 + v10[10];
  sub_252E330E4();
  v34 = 6;
  sub_252E37D54();
  v19 = v17;
  if (v17)
  {

    v19 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v32) = 8;
  sub_252E37CF4();
  v20 = v19;
  if (v19)
  {

    v20 = 0;
  }

  v21 = v3 + v10[5];
  sub_252E330E4();
  v34 = 9;
  sub_252E37D54();
  if (v20)
  {
  }

  v22 = v10[14];
  LOBYTE(v32) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  sub_25292FAB4();
  sub_252E37D54();
  v23 = v10[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  sub_252E330E4();
  v34 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_25292FB98();
  sub_252E37D54();

  v24 = v10[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330E4();
  v34 = v32;
  v33 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_25292FCB8();
  sub_252E37D54();
  v25 = v10[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  sub_252E330E4();
  v34 = v32;
  v33 = 2;
  sub_25292FD90();
  sub_252E37D54();
  v26 = v3 + v10[8];
  sub_252E330E4();
  v34 = v32;
  v33 = 3;
  sub_252E37D54();
  return (*(v29 + 8))(v8, v5);
}

unint64_t sub_25292FA38()
{
  result = qword_27F5400C8;
  if (!qword_27F5400C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F541300, &qword_252E3C100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5400C8);
  }

  return result;
}

unint64_t sub_25292FAB4()
{
  result = qword_27F5400D0;
  if (!qword_27F5400D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540068, &qword_252E3BC90);
    sub_25292FB54(&qword_27F5400D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5400D0);
  }

  return result;
}

uint64_t sub_25292FB54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DirectInvocationConfig();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25292FB98()
{
  result = qword_27F5400E0;
  if (!qword_27F5400E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540060, &unk_252E46540);
    sub_25292FC48(&qword_27F5400E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5400E0);
  }

  return result;
}

uint64_t sub_25292FC48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5400A0, &qword_252E3BCB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25292FCB8()
{
  result = qword_27F5400F0;
  if (!qword_27F5400F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540058, &unk_252E3BC80);
    sub_25292FD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5400F0);
  }

  return result;
}

unint64_t sub_25292FD3C()
{
  result = qword_27F5400F8;
  if (!qword_27F5400F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5400F8);
  }

  return result;
}

unint64_t sub_25292FD90()
{
  result = qword_27F540100;
  if (!qword_27F540100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540100);
  }

  return result;
}

uint64_t sub_25292FE20@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32E74();
  v7 = sub_252E32E24();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_25292FEFC()
{
  v0 = IconConfiguration.description.getter();
  v2 = v1;
  if (v0 == IconConfiguration.description.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  return v4 & 1;
}

void sub_25292FFB0()
{
  sub_252930130(319, &qword_27F540118);
  if (v0 <= 0x3F)
  {
    sub_25293017C(319, &qword_27F540120, &unk_27F541300, &qword_252E3C100);
    if (v1 <= 0x3F)
    {
      sub_252930130(319, &qword_27F540128);
      if (v2 <= 0x3F)
      {
        sub_252930130(319, &qword_27F540130);
        if (v3 <= 0x3F)
        {
          sub_25293017C(319, &qword_27F540138, &qword_27F540058, &unk_252E3BC80);
          if (v4 <= 0x3F)
          {
            sub_25293017C(319, &qword_27F540140, &qword_27F540060, &unk_252E46540);
            if (v5 <= 0x3F)
            {
              sub_2529301D0();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_252930130(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_252E33114();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25293017C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_252E33114();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2529301D0()
{
  if (!qword_27F540148)
  {
    type metadata accessor for DirectInvocationConfig();
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F540148);
    }
  }
}

uint64_t getEnumTagSinglePayload for IconConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IconConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252930388()
{
  result = qword_27F540150;
  if (!qword_27F540150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540150);
  }

  return result;
}

unint64_t sub_2529303E0()
{
  result = qword_27F540158;
  if (!qword_27F540158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540158);
  }

  return result;
}

unint64_t sub_252930438()
{
  result = qword_27F540160;
  if (!qword_27F540160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540160);
  }

  return result;
}

uint64_t sub_25293048C()
{
  v0 = sub_252E37B74();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2529304DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_15:
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2530ADF00](v4, a2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return 1;
          }
        }

        else
        {
          if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        v7 = v5;
        swift_getAtKeyPath();

        if (v9)
        {
          goto LABEL_13;
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  return 0;
}

uint64_t sub_2529305F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540178, &unk_252E50250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = sub_252E36934();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252931984(a1, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2529319F4(v7);
  }

  (*(v9 + 32))(v12, v7, v8);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544DA8);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000075, 0x8000000252E69040);
  v14 = MEMORY[0x2530AD730](a2, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v14);

  MEMORY[0x2530AD570](0x6572206874697720, 0xEE00203A6E6F7361);
  sub_252931A5C();
  v15 = sub_252E37E54();
  MEMORY[0x2530AD570](v15);

  sub_252CC4050(v17, v18, 0xD00000000000009BLL, 0x8000000252E68EE0, 0xD000000000000018, 0x8000000252E68F80, 55);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2529308F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PauseSpeakersWhenTurningOffHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252930928(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 27 || !sub_252C4B5D4())
  {
    return 0;
  }

  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = [result value];

  if (!v7)
  {
    return 0;
  }

  v8 = [v7 BOOLValue];

  if (v8)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v9 = result;
  type metadata accessor for HomeFilter();
  v10 = sub_252E37264();

  KeyPath = swift_getKeyPath();
  v12 = sub_2529304DC(KeyPath, v10);

  if (v12)
  {

    return 0;
  }

  type metadata accessor for HomeStore();
  v13 = static HomeStore.shared.getter();
  v14 = HomeStore.accessories(matching:supporting:)(v10, 0);
  v16 = v15;

  if (v16)
  {
    sub_252929F10(v14, 1);
    return 0;
  }

  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_64:
    v18 = sub_252E378C4();
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_65:
    v47 = v14;
LABEL_66:
    sub_252929F10(v47, 0);
    return 0;
  }

  v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_65;
  }

LABEL_17:
  v19 = 0;
  v48 = v14;
  v49 = v18;
  v51 = v14 + 32;
  v52 = v14 & 0xC000000000000001;
  v50 = v17;
  while (1)
  {
    if (v52)
    {
      v20 = MEMORY[0x2530ADF00](v19, v48);
      v21 = __OFADD__(v19++, 1);
      if (v21)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v19 >= *(v17 + 16))
      {
        goto LABEL_63;
      }

      v20 = *(v51 + 8 * v19);

      v21 = __OFADD__(v19++, 1);
      if (v21)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    v22 = [*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
    sub_252931930();
    v23 = sub_252E37264();

    if (v23 >> 62)
    {
      break;
    }

    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_25;
    }

LABEL_18:

LABEL_19:
    v17 = v50;
    if (v19 == v49)
    {
      v47 = v48;
      goto LABEL_66;
    }
  }

  v24 = sub_252E378C4();
  if (!v24)
  {
    goto LABEL_18;
  }

LABEL_25:
  v25 = 0;
  v14 = v23 & 0xC000000000000001;
  v17 = v23 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v14)
    {
      v26 = MEMORY[0x2530ADF00](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v27 = v26;
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v25;
    if (v28 == v24)
    {
      goto LABEL_18;
    }
  }

  v29 = (*v20 + 256);
  v30 = *v29;
  if ((*v29)() == 26)
  {
    goto LABEL_58;
  }

  v31 = (*v20 + 272);
  v14 = *v31;
  v32 = (*v31)();
  v33 = sub_252DB4F4C(26, v32);

  if (v33)
  {
    goto LABEL_58;
  }

  v35 = (v30)(v34);
  if (v35 == 38)
  {
    v37 = &unk_2864A2500;
LABEL_40:
    v36 = sub_2529FC004(v37);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
    if (v35 == 41)
    {
      v37 = &unk_2864A2528;
      goto LABEL_40;
    }
  }

  v38 = sub_252DB4F4C(26, v36);

  if (v38)
  {
    goto LABEL_58;
  }

  if (sub_252D4FE78(26))
  {
    goto LABEL_58;
  }

  if (v30() == 44)
  {
    goto LABEL_58;
  }

  v39 = (v14)();
  v40 = sub_252DB4F4C(44, v39);

  if (v40)
  {
    goto LABEL_58;
  }

  v42 = (v30)(v41);
  if (v42 == 38)
  {
    v44 = &unk_2864A2550;
LABEL_49:
    v43 = sub_2529FC004(v44);
  }

  else
  {
    v43 = MEMORY[0x277D84FA0];
    if (v42 == 41)
    {
      v44 = &unk_2864A2578;
      goto LABEL_49;
    }
  }

  v45 = sub_252DB4F4C(44, v43);

  if (v45)
  {
LABEL_58:
    sub_252929F10(v48, 0);

    return 1;
  }

  v46 = sub_252D4FE78(44);

  if (!v46)
  {
    goto LABEL_19;
  }

  sub_252929F10(v48, 0);
  return 1;
}

id sub_252930E5C(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 filters];
  if (!v7)
  {
LABEL_4:
    if (qword_27F53F500 == -1)
    {
LABEL_5:
      __swift_project_value_buffer(v2, qword_27F544DA8);
      sub_252CC4050(0xD000000000000027, 0x8000000252E68EB0, 0xD00000000000009BLL, 0x8000000252E68EE0, 0xD000000000000018, 0x8000000252E68F80, 35);
      sub_2529318DC();
      result = swift_allocError();
      *v14 = 8;
      return result;
    }

LABEL_75:
    swift_once();
    goto LABEL_5;
  }

  v8 = v7;
  v78 = v6;
  type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  type metadata accessor for HomeStore();
  v10 = static HomeStore.shared.getter();
  v11 = HomeStore.accessories(matching:supporting:)(v9, 0);
  LOBYTE(v8) = v12;

  if (v8)
  {
    sub_252929F10(v11, 1);
    goto LABEL_4;
  }

  v83 = MEMORY[0x277D84F90];
  v15 = v11 & 0xFFFFFFFFFFFFFF8;
  v75 = v11;
  if (v11 >> 62)
  {
    v16 = sub_252E378C4();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v3;
  v77 = v2;
  v74 = a1;
  if (!v16)
  {
    v45 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  v17 = 0;
  v81 = (v75 + 32);
  v82 = v75 & 0xC000000000000001;
  v79 = v16;
  v80 = v15;
  while (2)
  {
    if (v82)
    {
      v19 = MEMORY[0x2530ADF00](v17, v75);
      v20 = __OFADD__(v17++, 1);
      if (v20)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_74;
      }

      v19 = *&v81[8 * v17];

      v20 = __OFADD__(v17++, 1);
      if (v20)
      {
        goto LABEL_73;
      }
    }

    v21 = [*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
    sub_252931930();
    v22 = sub_252E37264();

    if (v22 >> 62)
    {
      v23 = sub_252E378C4();
      if (!v23)
      {
LABEL_49:

        goto LABEL_50;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_49;
      }
    }

    v24 = 0;
    v2 = (v22 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2530ADF00](v24, v22);
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v24;
      if (v27 == v23)
      {
        goto LABEL_49;
      }
    }

    v28 = (*v19 + 256);
    v29 = *v28;
    if ((*v28)() == 26)
    {
      goto LABEL_10;
    }

    v30 = (*v19 + 272);
    v2 = *v30;
    v31 = (*v30)();
    v32 = sub_252DB4F4C(26, v31);

    if (v32)
    {
      goto LABEL_10;
    }

    v34 = (v29)(v33);
    if (v34 == 38)
    {
      v36 = &unk_2864A0E78;
LABEL_32:
      v35 = sub_2529FC004(v36);
    }

    else
    {
      v35 = MEMORY[0x277D84FA0];
      if (v34 == 41)
      {
        v36 = &unk_2864A0EA0;
        goto LABEL_32;
      }
    }

    v37 = sub_252DB4F4C(26, v35);

    if (v37)
    {
      goto LABEL_10;
    }

    if (sub_252D4FE78(26))
    {
      goto LABEL_10;
    }

    if (v29() == 44)
    {
      goto LABEL_10;
    }

    v38 = v2();
    v39 = sub_252DB4F4C(44, v38);

    if (v39)
    {
      goto LABEL_10;
    }

    v41 = (v29)(v40);
    if (v41 == 38)
    {
      v43 = &unk_2864A0E78;
LABEL_41:
      v42 = sub_2529FC004(v43);
    }

    else
    {
      v42 = MEMORY[0x277D84FA0];
      if (v41 == 41)
      {
        v43 = &unk_2864A0EA0;
        goto LABEL_41;
      }
    }

    v44 = sub_252DB4F4C(44, v42);

    if ((v44 & 1) != 0 || sub_252D4FE78(44))
    {
LABEL_10:
      sub_252E37A94();
      v18 = *(v83 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
LABEL_50:
    }

    v15 = v80;
    if (v17 != v79)
    {
      continue;
    }

    break;
  }

  v45 = v83;
LABEL_53:
  sub_252929F10(v75, 0);
  if (v45 < 0 || (v45 & 0x4000000000000000) != 0)
  {
    v46 = sub_252E378C4();
    v82 = v46;
    if (v46)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v46 = *(v45 + 16);
    v82 = v46;
    if (v46)
    {
LABEL_56:
      v47 = 0;
      v48 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x2530ADF00](v47, v45);
          v2 = (v47 + 1);
          if (__OFADD__(v47, 1))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v47 >= *(v45 + 16))
          {
            goto LABEL_72;
          }

          v49 = *(v45 + 8 * v47 + 32);

          v2 = (v47 + 1);
          if (__OFADD__(v47, 1))
          {
            goto LABEL_71;
          }
        }

        v50 = [*(v49 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) deviceIdentifier];
        v51 = sub_252E36F34();
        v53 = v52;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_2529F7A80(0, *(v48 + 2) + 1, 1, v48);
        }

        v55 = *(v48 + 2);
        v54 = *(v48 + 3);
        if (v55 >= v54 >> 1)
        {
          v48 = sub_2529F7A80((v54 > 1), v55 + 1, 1, v48);
        }

        *(v48 + 2) = v55 + 1;
        v56 = &v48[16 * v55];
        *(v56 + 4) = v51;
        *(v56 + 5) = v53;
        ++v47;
        v46 = v82;
        if (v2 == v82)
        {
          goto LABEL_79;
        }
      }
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_79:
  if (qword_27F53F500 != -1)
  {
    goto LABEL_101;
  }

LABEL_80:
  v57 = __swift_project_value_buffer(v77, qword_27F544DA8);
  v58 = *(v76 + 16);
  v81 = v57;
  v58(v78);
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_252E379F4();

  v83 = 0xD000000000000013;
  v84 = 0x8000000252E68FA0;
  if (v46)
  {
    v59 = 0;
    v60 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x2530ADF00](v59, v45);
        v46 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (v59 >= *(v45 + 16))
        {
          goto LABEL_100;
        }

        v61 = *(v45 + 8 * v59 + 32);

        v46 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          swift_once();
          goto LABEL_80;
        }
      }

      v62 = *(v61 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v63 = *(v61 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_2529F7A80(0, *(v60 + 2) + 1, 1, v60);
      }

      v65 = *(v60 + 2);
      v64 = *(v60 + 3);
      if (v65 >= v64 >> 1)
      {
        v60 = sub_2529F7A80((v64 > 1), v65 + 1, 1, v60);
      }

      *(v60 + 2) = v65 + 1;
      v66 = &v60[16 * v65];
      *(v66 + 4) = v62;
      *(v66 + 5) = v63;
      ++v59;
      if (v46 == v82)
      {
        goto LABEL_95;
      }
    }
  }

  v60 = MEMORY[0x277D84F90];
LABEL_95:

  v67 = MEMORY[0x2530AD730](v60, MEMORY[0x277D837D0]);
  v69 = v68;

  MEMORY[0x2530AD570](v67, v69);

  v70 = v78;
  sub_252CC3D90(v83, v84, 0xD00000000000009BLL, 0x8000000252E68EE0);

  (*(v76 + 8))(v70, v77);
  if (*(v48 + 2))
  {
    sub_252CC4A5C(0xD000000000000051, 0x8000000252E68FC0, 0, 0xD00000000000009BLL, 0x8000000252E68EE0);
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_252E379F4();

    v83 = 0xD00000000000001ELL;
    v84 = 0x8000000252E69020;
    v71 = MEMORY[0x2530AD730](v48, MEMORY[0x277D837D0]);
    MEMORY[0x2530AD570](v71);

    sub_252CC3D90(v83, v84, 0xD00000000000009BLL, 0x8000000252E68EE0);

    v72 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 51);

    if (v72)
    {
      *(swift_allocObject() + 16) = v48;

      sub_252E36904();
    }
  }

  return v74;
}

unint64_t sub_2529318DC()
{
  result = qword_27F540168;
  if (!qword_27F540168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540168);
  }

  return result;
}

unint64_t sub_252931930()
{
  result = qword_27F540170;
  if (!qword_27F540170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540170);
  }

  return result;
}

uint64_t sub_252931984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540178, &unk_252E50250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529319F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540178, &unk_252E50250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252931A5C()
{
  result = qword_27F540180;
  if (!qword_27F540180)
  {
    sub_252E36934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540180);
  }

  return result;
}

void *sub_252931AE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252931C1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
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

char *sub_252931D28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C0, &unk_252E3C0F0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_252931E40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B0, &qword_252E3C0E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_252931F88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D0, &unk_252E466B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529320D0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2529321CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 504);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[504 * v8])
    {
      memmove(v12, v13, 504 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529322F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540198, &qword_252E3BFC0);
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

void *sub_25293245C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540230, &unk_252E3C060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529325A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540220, &unk_252E3C050);
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

char *sub_2529326B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_2529327A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}