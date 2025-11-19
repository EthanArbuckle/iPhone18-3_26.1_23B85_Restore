uint64_t sub_2144D9444(uint64_t a1)
{
  v2 = sub_2144D98E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144D9480@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914978, &qword_214756340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144D98E0();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v21 = 1;
    v14 = sub_2146DA0F8();
    sub_2140FDAFC(v11, v13, v14, v15, v19);
    (*(v6 + 8))(v9, v5);
    v16 = v20[0];
    a2[2] = v19[2];
    a2[3] = v16;
    *(a2 + 57) = *(v20 + 9);
    v17 = v19[1];
    *a2 = v19[0];
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2144D967C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914988, &unk_214756348);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[7];
  v14 = v1[8];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144D98E0();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_6;
  }

  LOBYTE(v17) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v16 + 8))(v7, v4);
  }

  if (v14 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v16 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_2144D98E0()
{
  result = qword_27C914980;
  if (!qword_27C914980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914980);
  }

  return result;
}

unint64_t sub_2144D9958()
{
  result = qword_27C914990;
  if (!qword_27C914990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914990);
  }

  return result;
}

unint64_t sub_2144D99B0()
{
  result = qword_27C914998;
  if (!qword_27C914998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914998);
  }

  return result;
}

unint64_t sub_2144D9A08()
{
  result = qword_27C9149A0;
  if (!qword_27C9149A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9149A0);
  }

  return result;
}

uint64_t XPCCodable.init(from:)(uint64_t *a1)
{
  v2 = sub_2146D9F58();
  swift_allocError();
  v4 = v3;
  sub_2146D9EF8();
  type metadata accessor for XPCCodable();
  sub_2146DAA78();

  MEMORY[0x2160545D0](0xD000000000000021, 0x800000021479BD00);
  sub_2146D9F28();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84168], v2);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2144D9CC0()
{
  v0 = sub_2146D9F78();
  swift_allocError();
  v2 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720) + 48);
  v4 = type metadata accessor for XPCCodable();
  v2[3] = swift_getMetatypeMetadata();
  *v2 = v4;
  sub_2146D9EF8();
  sub_2146DAA78();

  MEMORY[0x2160545D0](0xD000000000000021, 0x800000021479BD30);
  sub_2146D9F28();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D841A8], v0);
  return swift_willThrow();
}

uint64_t sub_2144D9E14(uint64_t a1)
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

uint64_t sub_2144D9E84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_2144D9FC4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_2144DA1CC()
{
  v1 = type metadata accessor for MBDChipAction();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v34 - v7);
  v9 = type metadata accessor for MBDChip();
  sub_2144DA65C(v0 + *(v9 + 20), v8);
  v10 = type metadata accessor for MBDChipContent();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = *v8;
    v22 = v8[1];
    v23 = v8[3];
    v34 = v8[2];
    v35 = v21;
    v25 = v8[4];
    v24 = v8[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E6910;
    *(inited + 32) = 1701869940;
    v27 = MEMORY[0x277D83B88];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0;
    *(inited + 72) = v27;
    *(inited + 80) = 1885956195;
    *(inited + 88) = 0xE400000000000000;
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_2146EA710;
    *(v28 + 32) = 0x6974736567677573;
    *(v28 + 40) = 0xEA00000000006E6FLL;
    v36 = v35;
    v37 = v22;
    v38 = v34;
    v39 = v23;
    v40 = v25;
    v41 = v24;
    v29 = sub_2143E26FC();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *(v28 + 72) = v30;
    *(v28 + 48) = v29;
    v31 = sub_214045690(v28);
    swift_setDeallocating();
    sub_213FB2DF4(v28 + 32, &qword_27C903FD0, &unk_2146F14B0);
    v32 = sub_2140418B8(v31);

    *(inited + 120) = v30;
    *(inited + 96) = v32;

    v33 = sub_214045690(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v16 = sub_2140418B8(v33);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_2146EA710;
    *(v17 + 32) = 1701869940;
    v18 = v17 + 32;
    *(v17 + 72) = MEMORY[0x277D83B88];
    *(v17 + 40) = 0xE400000000000000;
    *(v17 + 48) = -1;
    v19 = sub_214045690(v17);
    swift_setDeallocating();
    sub_213FB2DF4(v18, &qword_27C903FD0, &unk_2146F14B0);
    v16 = sub_2140418B8(v19);
LABEL_6:

    return v16;
  }

  sub_2144DB2D4(v8, v4, type metadata accessor for MBDChipAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146E6910;
  *(v12 + 32) = 1701869940;
  v13 = MEMORY[0x277D83B88];
  *(v12 + 40) = 0xE400000000000000;
  *(v12 + 48) = 1;
  *(v12 + 72) = v13;
  *(v12 + 80) = 1885956195;
  *(v12 + 88) = 0xE400000000000000;
  v14 = MBDChipAction.dictionaryRepresentation.getter();
  *(v12 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *(v12 + 96) = v14;
  v15 = sub_214045690(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
  swift_arrayDestroy();
  v16 = sub_2140418B8(v15);

  sub_2144DB33C(v4, type metadata accessor for MBDChipAction);
  return v16;
}

uint64_t sub_2144DA65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144DA6D0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1885956195;
  }

  else
  {
    v2 = 1701869940;
  }

  if (*a2)
  {
    v3 = 1885956195;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2144DA748()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144DA7B0()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2144DA7FC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144DA860@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2144DA8C0(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 1885956195;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_2144DA8E8@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2144DA94C(uint64_t a1)
{
  v2 = sub_2144DB280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144DA988(uint64_t a1)
{
  v2 = sub_2144DB280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144DA9C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v32 = type metadata accessor for MBDChipAction();
  v3 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MBDChipContent();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9149A8, &qword_2147565E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2144DB280();
  v17 = v35;
  sub_2146DAA08();
  if (!v17)
  {
    v35 = v5;
    v18 = v11;
    v19 = v6;
    v20 = v34;
    v42 = 0;
    sub_2142E93B4();
    sub_2146DA1C8();
    v21 = v37;
    v22 = v9;
    swift_storeEnumTagMultiPayload();
    v41 = v21;
    if (v21)
    {
      v23 = v18;
      if (v21 == 1)
      {
        v42 = 1;
        sub_2144DB39C();
        sub_2146DA0D8();
        sub_2144DB33C(v22, type metadata accessor for MBDChipContent);
        (*(v18 + 8))(v14, v10);
        v24 = v33;
        v25 = v38;
        v26 = v39;
        v27 = v40;
        *v22 = v37;
        *(v22 + 8) = v25;
        *(v22 + 16) = v26;
        *(v22 + 32) = v27;
        swift_storeEnumTagMultiPayload();
LABEL_8:
        v29 = *(type metadata accessor for MBDChip() + 20);
        sub_2144DB2D4(v22, &v20[v29], type metadata accessor for MBDChipContent);
        (*(v24 + 56))(&v20[v29], 0, 1, v19);
        *v20 = v41;
        return __swift_destroy_boxed_opaque_existential_1(v36);
      }

      LOBYTE(v37) = 1;
      sub_2144DB3F0(&qword_27C9149B8);
      v28 = v35;
      sub_2146DA0D8();
      sub_2144DB33C(v22, type metadata accessor for MBDChipContent);
      (*(v23 + 8))(v14, v10);
      sub_2144DB2D4(v28, v22, type metadata accessor for MBDChipAction);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v18 + 8))(v14, v10);
    }

    v24 = v33;
    goto LABEL_8;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_2144DADFC(void *a1)
{
  v30 = type metadata accessor for MBDChipAction();
  v2 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9149C8, qword_2147565E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144DB280();
  v18 = v31;
  sub_2146DAA28();
  LOBYTE(v33) = *v18;
  v38 = 0;
  sub_2142E94BC();
  v19 = v32;
  sub_2146DA388();
  if (v19)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v32 = v13;
  v21 = type metadata accessor for MBDChip();
  sub_2144DA65C(&v18[*(v21 + 20)], v11);
  v22 = type metadata accessor for MBDChipContent();
  if ((*(*(v22 - 8) + 48))(v11, 1, v22) == 1)
  {
    (*(v32 + 8))(v16, v12);
  }

  else
  {
    v23 = v9;
    sub_2144DA65C(v11, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v25 = v32;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2144DB2D4(v23, v4, type metadata accessor for MBDChipAction);
        LOBYTE(v33) = 1;
        sub_2144DB3F0(&qword_27C9149D0);
        sub_2146DA2A8();
        sub_2144DB33C(v4, type metadata accessor for MBDChipAction);
        (*(v25 + 8))(v16, v12);
      }

      else
      {
        (*(v32 + 8))(v16, v12);
        sub_2144DB33C(v23, type metadata accessor for MBDChipContent);
      }
    }

    else
    {
      v26 = *(v9 + 1);
      v27 = *(v9 + 2);
      v28 = *(v9 + 5);
      v33 = *v9;
      v34 = v26;
      v35 = v27;
      v31 = *(v9 + 24);
      v36 = v31;
      v37 = v28;
      v38 = 1;
      sub_2144DB434();
      sub_2146DA2A8();
      (*(v32 + 8))(v16, v12);
    }
  }

  return sub_213FB2DF4(v11, &qword_27C903F58, &qword_2146F4150);
}

unint64_t sub_2144DB280()
{
  result = qword_27C9149B0;
  if (!qword_27C9149B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9149B0);
  }

  return result;
}

uint64_t sub_2144DB2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2144DB33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2144DB39C()
{
  result = qword_27C9149C0;
  if (!qword_27C9149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9149C0);
  }

  return result;
}

uint64_t sub_2144DB3F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MBDChipAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2144DB434()
{
  result = qword_27C9149D8;
  if (!qword_27C9149D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9149D8);
  }

  return result;
}

unint64_t sub_2144DB4AC()
{
  result = qword_27C9149E0;
  if (!qword_27C9149E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9149E0);
  }

  return result;
}

unint64_t sub_2144DB504()
{
  result = qword_27C9149E8;
  if (!qword_27C9149E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9149E8);
  }

  return result;
}

unint64_t sub_2144DB55C()
{
  result = qword_27C9149F0;
  if (!qword_27C9149F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9149F0);
  }

  return result;
}

uint64_t sub_2144DB5B0@<X0>(uint64_t a1@<X8>)
{
  v138 = a1;
  v154 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v136 = (&v130 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v137 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v142 = &v130 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v130 - v12;
  v14 = objc_allocWithZone(MEMORY[0x277D43170]);
  v15 = sub_2146D8A38();
  v16 = [v14 initWithData_];

  v17 = sub_2146D8958();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = [v16 position];
  if (v18 >= [v16 length])
  {
    v58 = 0;
    v21 = 0xF000000000000000;
LABEL_58:

    sub_2140861C4();
    swift_allocError();
    *v59 = 1;
    swift_willThrow();

    v60 = v58;
LABEL_59:
    sub_213FDC6BC(v60, v21);
    result = sub_213FB2DF4(v13, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_60;
  }

  v134 = v1;
  v132 = v6;
  v135 = v2;
  v133 = v5;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v19 = 0;
  v20 = 0;
  LODWORD(v139) = 0;
  v141 = 0;
  v143 = 1;
  v21 = 0xF000000000000000;
  v140 = 1;
  while (([v16 hasError] & 1) == 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      LOBYTE(v150) = 0;
      v26 = [v16 position] + 1;
      if (v26 >= [v16 position] && (v27 = objc_msgSend(v16, "position") + 1, v27 <= objc_msgSend(v16, "length")))
      {
        v28 = [v16 data];
        [v28 getBytes:&v150 range:{objc_msgSend(v16, "position"), 1}];

        [v16 setPosition:{objc_msgSend(v16, "position") + 1}];
      }

      else
      {
        [v16 _setError];
      }

      v25 |= (v150 & 0x7F) << v23;
      if ((v150 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      if (v24++ >= 9)
      {
        v30 = 0;
        goto LABEL_18;
      }
    }

    if ([v16 hasError])
    {
      v30 = 0;
    }

    else
    {
      v30 = v25;
    }

LABEL_18:
    if ([v16 hasError])
    {

      sub_2140861C4();
      swift_allocError();
      *v82 = 0;
      swift_willThrow();

      v60 = v144;
      goto LABEL_59;
    }

    v31 = v30 >> 3;
    if ((v30 >> 3) > 3)
    {
      switch(v31)
      {
        case 4:

          v46 = PBReaderReadString();
          if (v46)
          {
            v47 = v46;
            v19 = sub_2146D95B8();
            v146 = v48;
          }

          else
          {
            v19 = 0;
            v146 = 0;
          }

          goto LABEL_4;
        case 5:

          v52 = PBReaderReadString();
          if (v52)
          {
            v53 = v52;
            v20 = sub_2146D95B8();
            v145 = v54;
          }

          else
          {
            v20 = 0;
            v145 = 0;
          }

          goto LABEL_4;
        case 6:
          *&v150 = 0;
          v37 = [v16 position] + 8;
          if (v37 >= [v16 position] && (v38 = objc_msgSend(v16, "position") + 8, v38 <= objc_msgSend(v16, "length")))
          {
            v57 = [v16 data];
            [v57 getBytes:&v150 range:{objc_msgSend(v16, "position"), 8}];

            [v16 setPosition:{objc_msgSend(v16, "position") + 8}];
          }

          else
          {
            [v16 _setError];
          }

          v140 = 0;
          v141 = v150;
          goto LABEL_4;
      }
    }

    else
    {
      switch(v31)
      {
        case 1:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          while (1)
          {
            LOBYTE(v150) = 0;
            v42 = [v16 position] + 1;
            if (v42 >= [v16 position] && (v43 = objc_msgSend(v16, "position") + 1, v43 <= objc_msgSend(v16, "length")))
            {
              v44 = [v16 data];
              [v44 getBytes:&v150 range:{objc_msgSend(v16, "position"), 1}];

              [v16 setPosition:{objc_msgSend(v16, "position") + 1}];
            }

            else
            {
              [v16 _setError];
            }

            v41 |= (v150 & 0x7F) << v39;
            if ((v150 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            if (v40++ > 8)
            {
              LODWORD(v139) = 0;
              v143 = 0;
              goto LABEL_4;
            }
          }

          v55 = [v16 hasError];
          v143 = 0;
          if (v55)
          {
            v56 = 0;
          }

          else
          {
            v56 = v41;
          }

          LODWORD(v139) = v56;
          goto LABEL_4;
        case 2:
          v49 = PBReaderReadString();
          if (v49)
          {
            v50 = v49;
            sub_2146D95B8();

            v51 = v142;
            sub_2146D8928();

            sub_213FB2DF4(v13, &unk_27C9131A0, &unk_2146E9D10);
            sub_214032588(v51, v13);
          }

          goto LABEL_4;
        case 3:
          v32 = PBReaderReadData();
          if (v32)
          {
            v33 = v32;
            v34 = sub_2146D8A58();
            v36 = v35;
            sub_213FDC6BC(v144, v21);

            v144 = v34;
            v21 = v36;
          }

          else
          {
            sub_213FDC6BC(v144, v21);
            v144 = 0;
            v21 = 0xF000000000000000;
          }

          goto LABEL_4;
      }
    }

    PBReaderSkipValueWithTag();
LABEL_4:
    v22 = [v16 position];
    if (v22 >= [v16 length])
    {
      break;
    }
  }

  if (v143)
  {
    v58 = v144;
    goto LABEL_58;
  }

  v142 = v19;
  v131 = v20;
  v63 = v137;
  sub_213FB2E54(v13, v137, &unk_27C9131A0, &unk_2146E9D10);
  v64 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v65 = v64[5];
  v143 = v13;
  v66 = v138;
  sub_2144DC944(v138 + v65);
  sub_2144DCAF0(&v150);
  v67 = v151;
  v68 = v152;
  v69 = v153;
  sub_2144DCC4C(v148);
  v70 = v149;
  *v66 = v139;
  v71 = (v66 + v64[6]);
  *v71 = v144;
  v71[1] = v21;
  v72 = v66 + v64[7];
  *v72 = v150;
  *(v72 + 2) = v67;
  *(v72 + 3) = v68;
  v72[32] = v69;
  v73 = v66 + v64[8];
  v74 = v148[1];
  *v73 = v148[0];
  *(v73 + 1) = v74;
  v73[32] = v70;
  v75 = v66 + v64[9];
  *v75 = v141;
  v75[8] = v140 & 1;
  v144 = v65;
  v76 = v66 + v65;
  v77 = v136;
  sub_213FB2E54(v76, v136, &qword_27C903F38, &unk_2146E9D40);
  v78 = *v77;
  v79 = v77[1];
  LOBYTE(v148[0]) = *(v77 + *(v135 + 32));
  *&v150 = 0xD00000000000002ELL;
  *(&v150 + 1) = 0x8000000214790C00;
  v151 = 0xD00000000000001CLL;
  v152 = 0x800000021478A360;
  v80 = v134;
  v81 = v78(v63, v148, &v150);
  if (v80)
  {

    sub_213FB2DF4(v63, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v143, &unk_27C9131A0, &unk_2146E9D10);

    goto LABEL_67;
  }

  if (v81)
  {

    v83 = *(v135 + 28);
    v84 = v136;
    sub_213FB2DF4(v136 + v83, &qword_27C903F40, &unk_2146F1C50);
    sub_213FB2E54(v137, v84 + v83, &unk_27C9131A0, &unk_2146E9D10);
    (*(v132 + 56))(v84 + v83, 0, 1, v133);
    sub_2144DCFC0(v84, v138 + v144);
    v85 = *v72;
    v86 = *(v72 + 1);
    v88 = *(v72 + 2);
    v87 = *(v72 + 3);
    v89 = v72[32];
    *&v148[0] = v142;
    *(&v148[0] + 1) = v146;
    v140 = v89;
    v147 = v89;
    *&v150 = 0xD000000000000039;
    *(&v150 + 1) = 0x8000000214790C30;
    v135 = 0x8000000214790C30;
    v151 = 0xD00000000000001CLL;
    v152 = 0x800000021478A360;
    v144 = 0x800000021478A360;

    v139 = v88;
    v136 = v87;
    sub_213FDC9D0(v88, v87);
    v90 = v86;
    v141 = v85;
    v91 = v85(v148, &v147, &v150);
    v92 = v143;
    if (v91)
    {
      sub_213FDC6D0(v139, v136);
      v95 = v144;

      v96 = *(v72 + 1);
      v97 = *(v72 + 2);
      v98 = *(v72 + 3);

      sub_213FDC6D0(v97, v98);
      v99 = v142;
      *v72 = v141;
      *(v72 + 1) = v90;
      v101 = v145;
      v100 = v146;
      *(v72 + 2) = v99;
      *(v72 + 3) = v100;
      v72[32] = v140;
      v103 = *v73;
      v102 = *(v73 + 1);
      v104 = v73;
      v105 = *(v73 + 2);
      v106 = *(v73 + 3);
      v146 = v104;
      v107 = v104[32];
      *&v148[0] = v131;
      *(&v148[0] + 1) = v101;
      LODWORD(v141) = v107;
      v147 = v107;
      *&v150 = 0xD00000000000002ELL;
      *(&v150 + 1) = 0x8000000214790C70;
      v151 = 0xD00000000000001CLL;
      v152 = v95;

      sub_213FDC9D0(v105, v106);
      v142 = v103;
      if ((v103)(v148, &v147, &v150))
      {
        sub_213FDC6D0(v105, v106);

        sub_213FB2DF4(v137, &unk_27C9131A0, &unk_2146E9D10);
        sub_213FB2DF4(v143, &unk_27C9131A0, &unk_2146E9D10);
        v116 = v146;
        v117 = v146[1];
        v118 = v146[2];
        v119 = v146[3];

        result = sub_213FDC6D0(v118, v119);
        *v116 = v142;
        v116[1] = v102;
        v120 = v145;
        v116[2] = v131;
        v116[3] = v120;
        *(v116 + 32) = v141;
        goto LABEL_60;
      }

      sub_214031C4C();
      swift_allocError();
      *v121 = 0xD00000000000002ELL;
      v121[1] = 0x8000000214790C70;
      v122 = v144;
      v121[2] = 0xD00000000000001CLL;
      v121[3] = v122;
      swift_willThrow();

      v124 = v142;
      v123 = v143;
      v125 = v141;
      sub_213FB2DF4(v137, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v123, &unk_27C9131A0, &unk_2146E9D10);
      v126 = v146;
      v127 = v146[1];
      v128 = v146[2];
      v129 = v146[3];

      sub_213FDC6D0(v128, v129);
      *v126 = v124;
      v126[1] = v102;
      v126[2] = v105;
      v126[3] = v106;
      *(v126 + 32) = v125;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v108 = v135;
      *v109 = 0xD000000000000039;
      v109[1] = v108;
      v110 = v144;
      v109[2] = 0xD00000000000001CLL;
      v109[3] = v110;
      swift_willThrow();

      v111 = v139;

      sub_213FB2DF4(v137, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v92, &unk_27C9131A0, &unk_2146E9D10);
      v112 = *(v72 + 1);
      v113 = *(v72 + 2);
      v114 = *(v72 + 3);

      sub_213FDC6D0(v113, v114);
      *v72 = v141;
      *(v72 + 1) = v90;
      v115 = v136;
      *(v72 + 2) = v111;
      *(v72 + 3) = v115;
      v72[32] = v140;
    }

    result = sub_2140860F8(v138);
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v93 = 0xD00000000000002ELL;
    v93[1] = 0x8000000214790C00;
    v93[2] = 0xD00000000000001CLL;
    v93[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v137, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v143, &unk_27C9131A0, &unk_2146E9D10);
    v77 = v136;
LABEL_67:
    v94 = v138;
    sub_2144DCFC0(v77, v138 + v144);
    result = sub_2140860F8(v94);
  }

LABEL_60:
  v62 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2144DC484()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = sub_2146D8958();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v39 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v14)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  [v14 writeUint32:*v0 forTag:1];
  v16 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v17 = v16[5];
  v40 = v0;
  v18 = v0 + v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(&v18[*(v19 + 28)], v4, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_20:
    sub_213FB2DF4(v4, &qword_27C903F40, &unk_2146F1C50);
    goto LABEL_21;
  }

  sub_214032588(v4, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_213FB2DF4(v9, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    v20 = v39;
    (*(v11 + 32))(v39, v9, v10);
    sub_2146D8868();
    v4 = v21;
    v22 = sub_2146D9588();

    [v15 writeString:v22 forTag:2];

    (*(v11 + 8))(v20, v10);
  }

  v23 = v40;
  v24 = v40 + v16[6];
  v25 = *(v24 + 1);
  if (v25 >> 60 != 15)
  {
    v26 = *v24;
    sub_21402D9F8(*v24, *(v24 + 1));
    v4 = sub_2146D8A38();
    [v15 writeData:v4 forTag:3];

    sub_213FDC6BC(v26, v25);
  }

  v27 = v23 + v16[7];
  v28 = *(v27 + 24);
  if (v28)
  {
    if (v28 == 1)
    {
      goto LABEL_21;
    }

    v29 = *(v27 + 16);
    v30 = *(v27 + 24);

    v4 = sub_2146D9588();
    sub_213FDC6D0(v29, v28);
    [v15 writeString:v4 forTag:4];
  }

  v31 = v23 + v16[8];
  v32 = *(v31 + 24);
  if (!v32)
  {
    goto LABEL_14;
  }

  if (v32 != 1)
  {
    v33 = *(v31 + 16);
    v34 = *(v31 + 24);

    v4 = sub_2146D9588();
    sub_213FDC6D0(v33, v32);
    [v15 writeString:v4 forTag:5];

LABEL_14:
    v35 = v23 + v16[9];
    if ((*(v35 + 8) & 1) == 0)
    {
      [v15 writeDouble:6 forTag:*v35];
    }

    v36 = [v15 immutableData];
    if (v36)
    {
      v37 = v36;

      return v37;
    }

    goto LABEL_19;
  }

LABEL_21:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2144DC944@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_2826537C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21409A858;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653868);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21409A860;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_21409A868;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2144DCAF0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  strcpy((v5 + 16), "com.apple.pay");
  *(v5 + 30) = -4864;
  *(v4 + 16) = sub_2142EEE5C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2144DCC4C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v4 + 16) = sub_21407B588;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2144DCDE0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 20);

  return sub_2144DCFC0(a1, v3);
}

uint64_t sub_2144DCE24@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2144DCE90(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144DCF08@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t type metadata accessor for WalletCloudStoreZoneInvitationMessage()
{
  result = qword_27C9149F8;
  if (!qword_27C9149F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144DCFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_2144DD030(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144DD0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v7 + *(v8 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) != 1)
  {
    return sub_214032588(v6, a1);
  }

  sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144DD224()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_2144DD2B4()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_2144DD374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v8 + *(v9 + 28), v7, &qword_27C903F40, &unk_2146F1C50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) != 1)
  {
    return sub_214032588(v7, a2);
  }

  sub_213FB2DF4(v7, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144DD4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_213FB2E54(a1, &v13 - v9, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v10, v8, &unk_27C9131A0, &unk_2146E9D10);
  v11 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 20);
  sub_21402F5FC(v8);
  return sub_213FB2DF4(v10, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2144DD5F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_213FB2E54(a1, &v9 - v5, &unk_27C9131A0, &unk_2146E9D10);
  v7 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 20);
  sub_21402F5FC(v6);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2144DD6B8(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 20);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2144DD8E8;
  }

  return result;
}

void sub_2144DD8E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = **a1;
  v6 = (*a1)[1];
  if (a2)
  {
    sub_213FB2E54((*a1)[3], v4, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402F5FC(v4);
    sub_213FB2DF4(v5, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    sub_21402F5FC((*a1)[3]);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

void (*sub_2144DD9AC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 20);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2144DDA6C;
}

void sub_2144DDA6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_2144DCFC0(v1, *a1 + *(a1 + 16));

  free(v1);
}

uint64_t sub_2144DDAB0()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 24);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144DDAF4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 24);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144DDB84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2144DDC20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144DDCE8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144DDE38(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_2144DDF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144DDF94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144DE02C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

uint64_t sub_2144DE0D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2144DE174(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144DE23C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144DE38C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_2144DE478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144DE4E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144DE580(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 32);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_2144DE62C()
{
  v1 = (v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationMessage() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2144DE658(uint64_t a1, char a2)
{
  result = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2144DE6E8(uint64_t a1)
{
  *(a1 + 8) = sub_2144DE750(&qword_27C909B30);
  result = sub_2144DE750(&qword_27C909B48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144DE750(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WalletCloudStoreZoneInvitationMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144DE7C0()
{
  sub_21409A2B4(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0);
    if (v1 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BD0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2144DE908@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CrossServiceAssociationMessage() + 20);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CrossServiceAssociationMessage()
{
  result = qword_280B2E900;
  if (!qword_280B2E900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144DE9D0(uint64_t a1)
{
  v3 = *(type metadata accessor for CrossServiceAssociationMessage() + 20);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2144DEA94(uint64_t a1)
{
  *(a1 + 8) = sub_2144DEAFC(&qword_27C914A08);
  result = sub_2144DEAFC(&unk_27C914A10);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144DEAFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CrossServiceAssociationMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2144DEB68()
{
  result = type metadata accessor for Metadata();
  if (v1 <= 0x3F)
  {
    result = sub_2146D8B88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2144DEBEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_2144DEC44(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_u64[1];

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144DECAC()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2144DED34(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2144DEDFC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A1B10;
  }

  return result;
}

void (*sub_2144DEE9C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A1DC4;
}

unint64_t sub_2144DEF3C(uint64_t a1)
{
  *(a1 + 8) = sub_214325210();
  result = sub_214324FC4();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144DF070()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v50 - v3;
  v5 = sub_2146D8958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2145A8204();
  v11 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
  v12 = v10;
  v13 = [v11 initRequiringSecureCoding_];
  v14 = sub_2146D9588();
  sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  [v13 setClassName:v14 forClass:swift_getObjCClassFromMetadata()];

  [v13 encodeObject:v12 forKey:*MEMORY[0x277CCA308]];
  v51 = v12;

  v15 = [v13 encodedData];
  v16 = sub_2146D8A58();
  v18 = v17;

  v19 = sub_2146D8A48();
  v21 = v20;
  sub_213FB54FC(v16, v18);
  v55 = MEMORY[0x277D837D0];
  *&v54 = v19;
  *(&v54 + 1) = v21;
  v22 = v0;
  sub_213FDC730(&v54, v53);
  v23 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v23;
  sub_2140524DC(v53, 12400, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v25 = v52;
  v26 = type metadata accessor for FMFShareInvitation();
  v27 = v22 + v26[5];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_21407E1D8(v27 + *(v28 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_213FB2DF4(v4, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v29 = sub_2146D8868();
    v31 = v30;
    (*(v6 + 8))(v9, v5);
    v32 = MEMORY[0x277D837D0];
    v55 = MEMORY[0x277D837D0];
    *&v54 = v29;
    *(&v54 + 1) = v31;
    sub_213FDC730(&v54, v53);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v25;
    sub_2140524DC(v53, 12656, 0xE200000000000000, v33);
    v34 = v22 + v26[6];
    v35 = *(v34 + 24);
    if (v35)
    {
      v36 = v52;
      v37 = *(v34 + 16);
      v55 = v32;
      *&v54 = v37;
      *(&v54 + 1) = v35;
      sub_213FDC730(&v54, v53);

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v36;
      sub_2140524DC(v53, 0xD000000000000015, 0x800000021479B0F0, v38);
      v39 = v22 + v26[7];
      v40 = *(v39 + 24);
      if (v40)
      {
        v41 = v52;
        v42 = *(v39 + 16);
        v55 = v32;
        *&v54 = v42;
        *(&v54 + 1) = v40;
        sub_213FDC730(&v54, v53);

        v43 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v41;
        sub_2140524DC(v53, 118, 0xE100000000000000, v43);
        v44 = v22 + v26[8];
        v45 = *(v44 + 24);
        if (v45)
        {
          v46 = v52;
          v47 = *(v44 + 16);
          v55 = v32;
          *&v54 = v47;
          *(&v54 + 1) = v45;
          sub_213FDC730(&v54, v53);

          v48 = swift_isUniquelyReferenced_nonNull_native();
          v52 = v46;
          sub_2140524DC(v53, 0x64726F6365526B63, 0xEC000000656D614ELL, v48);

          return v52;
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_2144DF660(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_21402D9F8(a1, a2);
  v8 = sub_21404A62C();
  if (!v3)
  {
    v20 = v8;
    sub_213FB54FC(a1, a2);
    v21 = v20;
    [v21 _enableStrictSecureDecodingMode];
    [v21 setDecodingFailurePolicy_];
    v22 = sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = sub_2146D9588();
    [v21 setClass:ObjCClassFromMetadata forClassName:v24];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2146EA710;
    *(v25 + 32) = v22;
    v26 = *MEMORY[0x277CCA308];
    sub_2146D95B8();
    sub_2146D9D08();

    if (v33[3])
    {
      if (swift_dynamicCast())
      {
        sub_2145A8530(v34, a3);
LABEL_10:

        return;
      }
    }

    else
    {
      sub_213FB2DF4(v33, &qword_27C913170, &qword_2146EAB20);
    }

    v30 = sub_2146D9F58();
    swift_allocError();
    v32 = v31;
    sub_2146D9F28();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84168], v30);
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FB54FC(a1, a2);
  v34 = v3;
  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    sub_21404A6EC();
    swift_allocError();
    v11 = v10;
    v12 = v33[4];
    v13 = [v12 domain];
    v14 = sub_2146D95B8();
    v16 = v15;

    MEMORY[0x2160545D0](v14, v16);

    *v11 = 0xD000000000000014;
    v11[1] = 0x800000021478AAD0;
    v33[0] = [v12 code];
    v17 = sub_2146DA428();
    v19 = v18;

    v11[2] = v17;
    v11[3] = v19;
    v11[4] = 0xD000000000000012;
    v11[5] = 0x800000021479BD60;
    swift_willThrow();
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v28 = v27;
    v29 = v3;
    sub_214689A34(v3, 0xD000000000000012, 0x800000021479BD60, v28);
    swift_willThrow();
  }
}

uint64_t sub_2144DFAC0()
{
  sub_2144DF070();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2144DFB14()
{
  sub_2144DF070();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t XPCDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t XPCDecoder.DataDecodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t XPCDecoder.UUIDDecodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t XPCDecoder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_2144DFCF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_2144DFD34(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_2144DFDC4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 17);
  return result;
}

uint64_t sub_2144DFE08(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t sub_2144DFE98()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_2144DFED0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_2144DFF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v31 = a5;
  v9 = sub_2146D9D38();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = (*(*v5 + 112))(&v34 + 1, v11);
  v15 = BYTE1(v34);
  v16 = (*(*v5 + 136))(&v34, v14);
  v17 = v34;
  v18 = (*(*v5 + 160))(v16);
  type metadata accessor for _XPCDecoder();
  v19 = swift_allocObject();
  *(v19 + 40) = a2;
  v20 = MEMORY[0x277D84F90];
  *(v19 + 16) = v15;
  *(v19 + 17) = v17;
  *(v19 + 24) = v18;
  *(v19 + 32) = v20;
  swift_unknownObjectRetain();
  v21 = v33;
  sub_2144E09EC(a3, v13);
  if (!v21)
  {
    v23 = v30;
    v22 = v31;
    v24 = *(a3 - 8);
    if ((*(v24 + 48))(v13, 1, a3) != 1)
    {

      return (*(v24 + 32))(v22, v13, a3);
    }

    (*(v23 + 8))(v13, v9);
    v25 = sub_2146D9F58();
    swift_allocError();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v27 = a1;
    sub_2146D9F28();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84170], v25);
    swift_willThrow();
  }
}

uint64_t XPCDecoder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_2144E029C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  if (sub_214090088())
  {
    v3 = sub_2146D9F58();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v5 = sub_2146DA258();
    swift_beginAccess();
    v7 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
  }

  else
  {
    if (sub_21408FD98() == 7)
    {

      swift_unknownObjectRetain();
      sub_2144E05B8(v0);
      type metadata accessor for _XPCKeyedDecodingContainer();
      swift_getWitnessTable();
      return sub_2146DA268();
    }

    swift_beginAccess();
    v9 = *(v0 + 32);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v11 = sub_2146D9F58();
    swift_allocError();
    v13 = v12;

    sub_2146D9EF8();

    v14 = sub_2144EB524(v2);
    MEMORY[0x2160545D0](v14);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v13 = v10;
    sub_2146D9F28();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
  }

  return swift_willThrow();
}

uint64_t sub_2144E05B8(uint64_t a1)
{
  swift_getObjectType();
  if (sub_21408FD98() == 7)
  {
    swift_beginAccess();
    v2 = *(a1 + 32);

    return a1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144E067C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  swift_getObjectType();
  if (sub_214090088())
  {
    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A58, &qword_214756CC8);
    swift_beginAccess();
    v9 = *(v2 + 32);

    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84170], v5);
    return swift_willThrow();
  }

  if (sub_21408FD98() != 6)
  {
    swift_beginAccess();
    v13 = *(v1 + 32);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    v15 = sub_2146D9F58();
    swift_allocError();
    v17 = v16;

    sub_2146D9EF8();

    v18 = sub_2144EB524(v4);
    MEMORY[0x2160545D0](v18);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v17 = v14;
    sub_2146D9F28();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84160], v15);
    return swift_willThrow();
  }

  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    swift_beginAccess();
    v10 = *(v1 + 32);
    a1[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    a1[4] = sub_2144EDEAC();
    v11 = swift_allocObject();
    *a1 = v11;
    v11[2] = v2;
    v11[3] = v4;
    v11[4] = v10;
    v11[5] = 0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144E09EC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for _XPCDecoder();
  sub_2144EDF18(qword_280B355B0);

  result = sub_2146D9AF8();
  if (!v2)
  {
    return (*(*(a1 - 8) + 56))(a2, 0, 1, a1);
  }

  return result;
}

uint64_t sub_2144E0AD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == MEMORY[0x277CC9318])
  {
    result = sub_2144E0D54(a1);
    if (v5)
    {
      return result;
    }

    if (v17 >> 60 != 15)
    {
      v20[0] = result;
      v20[1] = v17;
LABEL_14:
      v18 = swift_dynamicCast() ^ 1;
      return (*(*(a3 - 8) + 56))(a4, v18, 1, a3);
    }

    return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A40, &qword_214750318) == a2)
  {
    result = sub_2144E103C(a1, v20);
    if (v5)
    {
      return result;
    }

    if ((v20[0] & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

    return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }

  v19 = a4;
  v21 = a3;
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917A10, &unk_214756CB0) != a2)
  {
    swift_beginAccess();
    v10 = *(v4 + 16);
    v11 = *(v4 + 17);
    v14 = v4 + 24;
    v12 = *(v4 + 24);
    v13 = *(v14 + 8);
    type metadata accessor for _XPCDecoder();
    v15 = swift_allocObject();
    *(v15 + 32) = v13;
    *(v15 + 40) = a1;
    *(v15 + 16) = v10;
    *(v15 + 17) = v11;
    *(v15 + 24) = v12;

    swift_unknownObjectRetain();
    sub_2144E09EC(v21, v19);
  }

  result = sub_2144E12F0(a1, v20);
  if (!v5)
  {
    if (!v20[0])
    {
      return (*(*(v21 - 8) + 56))(a4, 1, 1, v21);
    }

    a3 = v21;
    goto LABEL_14;
  }

  return result;
}

_BYTE *sub_2144E0D54(void *a1)
{
  v3 = v1;
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    v8 = sub_2146D9F58();
    swift_allocError();
    v10 = v9;
    swift_beginAccess();
    v11 = *(v3 + 32);

    sub_2146D9F28();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84168], v8);
    return swift_willThrow();
  }

  if (*(v1 + 16) == 1)
  {
    if (sub_21408FD98() == 5)
    {
      length = xpc_data_get_length(a1);
      if (length < 1)
      {
        return 0;
      }

      v7 = length;
      result = xpc_data_get_bytes_ptr(a1);
      if (result)
      {
        return sub_2144668E8(result, v7);
      }

      return result;
    }

    swift_beginAccess();
    v14 = *(v1 + 32);
    v15 = sub_2146D9F58();
    swift_allocError();
    v17 = v16;

    sub_2146D9EF8();

    v18 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v18);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v17 = MEMORY[0x277CC9318];
    sub_2146D9F28();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84160], v15);
    return swift_willThrow();
  }

  result = sub_2144E1878(a1);
  if (!v2)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = sub_2146D89C8();

    return v13;
  }

  return result;
}

uint64_t sub_2144E103C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    *a2 = 0;
    *(a2 + 4) = 1;
    return result;
  }

  if (sub_21408FD98() == 7)
  {
    if (xpc_dictionary_get_value(a1, "mpr_p"))
    {
      v7 = xpc_mach_send_copy_right();
      result = swift_unknownObjectRelease();
      *a2 = v7;
      *(a2 + 4) = 0;
      return result;
    }

    v15 = sub_2146D9F58();
    swift_allocError();
    v17 = v16;
    swift_beginAccess();
    v18 = *(v3 + 32);

    sub_2146D9F28();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84168], v15);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 32);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v10 = sub_2146D9F58();
    swift_allocError();
    v12 = v11;

    sub_2146D9EF8();

    v13 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v13);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v12 = v9;
    sub_2146D9F28();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84160], v10);
  }

  return swift_willThrow();
}

uint64_t sub_2144E12F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    *a2 = 0;
    return result;
  }

  if (sub_21408FD98() != 7)
  {
    swift_beginAccess();
    v18 = *(v2 + 32);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v20 = sub_2146D9F58();
    swift_allocError();
    v22 = v21;

    sub_2146D9EF8();

    v23 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v23);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v22 = v19;
    sub_2146D9F28();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    return swift_willThrow();
  }

  v8 = xpc_dictionary_get_value(a1, "mpr_s");
  if (!v8)
  {
    v25 = sub_2146D9F58();
    swift_allocError();
    v27 = v26;
    swift_beginAccess();
    v28 = *(v4 + 32);

    sub_2146D9F28();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84168], v25);
    return swift_willThrow();
  }

  v9 = sub_2144EB93C(v8);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  if (v10 & 1) != 0 || (v29 = v9, sub_2144E103C(a1, &v31), (v32))
  {
    swift_beginAccess();
    v11 = *(v2 + 32);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = v12;
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  type metadata accessor for MachImage();
  swift_allocObject();
  v30 = sub_21463EB14(&v31, v29);
  result = swift_unknownObjectRelease();
  *a2 = v30;
  return result;
}

uint64_t sub_2144E176C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2144E1808@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _XPCDecoder();
  a1[4] = sub_2144EDF18(&qword_280B35348);
  *a1 = v3;
}

const char *sub_2144E1878(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() == 3)
  {
    result = xpc_string_get_string_ptr(a1);
    if (result)
    {
      return sub_2146D96E8();
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v1 + 32);
    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;

    sub_2146D9EF8();

    v8 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v8);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v7 = MEMORY[0x277D837D0];
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1A48()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D837D0];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1B6C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D839B0];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1C90()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D83B88];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1DB4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D84900];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1ED8()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D84958];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E1FFC()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D849A8];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2120()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D84A28];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2244()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D83E88];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2368()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D84B78];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E248C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D84C58];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E25B0()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D84CC0];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E26D4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D84D38];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E27F8()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D83A90];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E291C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v4 = sub_2146D9F58();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v6 = MEMORY[0x277D839F8];
    swift_beginAccess();
    v8 = *(v1 + 32);

    sub_2146D9F28();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2A40(uint64_t a1)
{
  v3 = *(v1 + 40);
  swift_getObjectType();
  result = sub_214090088();
  if (result)
  {
    v5 = sub_2146D9F58();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v7 = a1;
    swift_beginAccess();
    v9 = *(v1 + 32);

    sub_2146D9EF8();

    v10 = sub_2146DAA78();
    MEMORY[0x2160545D0](v10);

    MEMORY[0x2160545D0](0xD00000000000001ELL, 0x800000021479BE70);
    sub_2146D9F28();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84170], v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144E2BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_2146D9D38();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  result = sub_2144E2A40(a1);
  if (!v4)
  {
    sub_2144E0AD0(*(v3 + 40), a1, a2, v11);
    v13 = *(a2 - 8);
    result = (*(v13 + 48))(v11, 1, a2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v13 + 32))(a3, v11, a2);
    }
  }

  return result;
}

uint64_t sub_2144E2D20()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

BOOL sub_2144E2D64()
{
  v1 = *(*v0 + 40);
  swift_getObjectType();
  return sub_214090088();
}

uint64_t sub_2144E2D98()
{
  v2 = *v0;
  LOBYTE(result) = sub_2144E1B6C();
  if (v1)
  {
    return result & 1;
  }

  result = sub_2144EBC6C(*(v2 + 40));
  if (result != 2)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2144E2DE0()
{
  v2 = *v0;
  result = sub_2144E1A48();
  if (!v1)
  {
    result = sub_2144E1878(*(v2 + 40));
    if (!v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E2E1C()
{
  v2 = *v0;
  result = sub_2144E291C();
  if (!v1)
  {
    result = sub_2144EDCD8(*(v2 + 40));
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E2E60()
{
  v2 = *v0;
  result = sub_2144E27F8();
  if (!v1)
  {
    result = sub_2144EDAF8(*(v2 + 40));
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3();
  if (!v5)
  {
    result = a4(*(v7 + 40));
    if ((result & 0x100) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E3104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3();
  if (!v5)
  {
    result = a4(*(v7 + 40));
    if ((result & 0x10000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E318C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3();
  if (!v5)
  {
    result = a4(*(v7 + 40));
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E3214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = *v4;
  result = a3();
  if (!v5)
  {
    result = a4(*(v7 + 40));
    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2144E3298()
{
  v1 = v0;
  v2 = v0[1];
  v3 = v1[3];
  if (v3 >= xpc_array_get_count(v2))
  {
    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913170, &qword_2146EAB20);
    v11 = *v1;
    swift_beginAccess();
    v12 = *(v11 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;

    v14 = sub_2146DA428();
    MEMORY[0x2160545D0](v14);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = 0x207865646E49;
    *(v15 + 24) = 0xE600000000000000;
    *(v15 + 32) = v3;
    *(v15 + 40) = 0;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84170], v7);
    swift_willThrow();
  }

  else
  {
    v4 = xpc_array_get_value(v2, v3);
    swift_getObjectType();
    v5 = sub_21408FD98();
    swift_unknownObjectRelease();
    if (v5 == 11)
    {
      v1[3] = v3 + 1;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

__int128 *sub_2144E34F4()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v19 = MEMORY[0x277D837D0];
    v21 = *v0;
    v22 = *v2 + 32;
    swift_beginAccess();
    v23 = *(v21 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v43[1] = 0xE600000000000000;
    v43[14] = v4;

    v25 = sub_2146DA428();
    MEMORY[0x2160545D0](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v4;
    *(v26 + 40) = 0;
    v43[0] = v23;
    v14 = v43;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v41 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v42 = v11;
    v12 = swift_allocObject();
    *&v40 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v40, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144E1878(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v28 = v16;
      v39 = v11;
      swift_unknownObjectRelease();
      if (v28)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v38 = sub_2146D9F58();
      swift_allocError();
      v30 = v29;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v30 = MEMORY[0x277D837D0];
      v31 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_2146EA710;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43[0] = v4;

      v33 = sub_2146DA428();
      MEMORY[0x2160545D0](v33);

      v35 = *(&v40 + 1);
      v34 = v40;
      *(v32 + 56) = &type metadata for XPCCodingKey;
      *(v32 + 64) = v39;
      v36 = swift_allocObject();
      *(v32 + 32) = v36;
      *(v36 + 16) = __PAIR128__(v35, v34);
      *(v36 + 32) = v4;
      *(v36 + 40) = 0;
      *&v40 = v31;
      v14 = &v40;
      sub_21468B984(v32);
      sub_2146D9F28();
      (*(*(v38 - 8) + 104))(v30, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}

uint64_t sub_2144E3A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v57 = a3;
  v9 = sub_2146D9D38();
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = v4[1];
  v14 = v4[3];
  if (v14 >= xpc_array_get_count(v13))
  {
    v27 = sub_2146D9F58();
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v29 = a1;
    v31 = *v4;
    swift_beginAccess();
    v32 = *(v31 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v62 = 0x207865646E49;
    v63 = 0xE600000000000000;
    v64 = v14;

    v34 = sub_2146DA428();
    MEMORY[0x2160545D0](v34);

    v35 = v62;
    v36 = v63;
    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v37 = swift_allocObject();
    *(inited + 32) = v37;
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    *(v37 + 32) = v14;
    *(v37 + 40) = 0;
    v62 = v32;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
    return swift_willThrow();
  }

  v50 = v9;
  v51 = a4;
  v15 = *v4;
  *&v59 = 0x207865646E49;
  *(&v59 + 1) = 0xE600000000000000;
  v62 = v14;
  v16 = sub_2146DA428();
  MEMORY[0x2160545D0](v16);

  v52 = *(&v59 + 1);
  v53 = v59;
  swift_beginAccess();
  v17 = *(v15 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 32) = v17;
  v56 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_2140954FC(0, v17[2] + 1, 1, v17);
    *(v15 + 32) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  v54 = v5;
  if (v20 >= v19 >> 1)
  {
    v17 = sub_2140954FC((v19 > 1), v20 + 1, 1, v17);
  }

  v60 = &type metadata for XPCCodingKey;
  v21 = sub_2144EE044();
  v61 = v21;
  v22 = swift_allocObject();
  *&v59 = v22;
  v23 = v52;
  *(v22 + 16) = v53;
  *(v22 + 24) = v23;
  *(v22 + 32) = v14;
  *(v22 + 40) = 0;
  v17[2] = v20 + 1;
  sub_213FB77C8(&v59, &v17[5 * v20 + 4]);
  *(v15 + 32) = v17;
  swift_endAccess();
  v24 = xpc_array_get_value(v13, v14);
  v25 = v56;
  v26 = v58;
  sub_2144E0AD0(v24, v56, a2, v12);
  if (v26)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v39 = *(a2 - 8);
    if ((*(v39 + 48))(v12, 1, a2) != 1)
    {
      (*(v39 + 32))(v51, v12, a2);
      v49 = v54;
      v54[3] = v14 + 1;
      return sub_2144E4BBC(v49);
    }

    (*(v55 + 8))(v12, v50);
    v40 = sub_2146D9F58();
    swift_allocError();
    v42 = v41;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v42 = v25;
    v43 = *(v15 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_2146EA710;
    *&v59 = 0x207865646E49;
    *(&v59 + 1) = 0xE600000000000000;
    v62 = v14;

    v45 = sub_2146DA428();
    MEMORY[0x2160545D0](v45);

    v46 = v59;
    *(v44 + 56) = &type metadata for XPCCodingKey;
    *(v44 + 64) = v21;
    v47 = swift_allocObject();
    *(v44 + 32) = v47;
    *(v47 + 16) = v46;
    *(v47 + 32) = v14;
    *(v47 + 40) = 0;
    *&v59 = v43;
    sub_21468B984(v44);
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_2146D9EF8();

    *&v59 = 0x6465746365707845;
    *(&v59 + 1) = 0xE900000000000020;
    v48 = sub_2146DAA78();
    MEMORY[0x2160545D0](v48);

    MEMORY[0x2160545D0](0xD000000000000018, 0x800000021479C6E0);
    sub_2146D9F28();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84170], v40);
    swift_willThrow();
  }

  v49 = v54;
  return sub_2144E4BBC(v49);
}

uint64_t sub_2144E4110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v4 = *v2;
  v5 = v2[3];
  *&v34 = 0x207865646E49;
  *(&v34 + 1) = 0xE600000000000000;
  v38 = v5;
  v6 = sub_2146DA428();
  MEMORY[0x2160545D0](v6);

  swift_beginAccess();
  v7 = *(v4 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 32) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
    *(v4 + 32) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &type metadata for XPCCodingKey;
  v37 = sub_2144EE044();
  v11 = swift_allocObject();
  *&v34 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v5;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  sub_213FB77C8(&v34, &v7[5 * v10 + 4]);
  *(v4 + 32) = v7;
  swift_endAccess();
  v12 = v3[1];
  if (v5 < xpc_array_get_count(v12))
  {
    v13 = xpc_array_get_value(v12, v5);
    swift_getObjectType();
    if (sub_214090088())
    {
      v14 = sub_2146D9F58();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v16 = sub_2146DA258();
      v18 = v3[2];

      sub_2146D9F28();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84170], v14);
    }

    else
    {
      if (sub_21408FD98() == 7)
      {
        v3[3] = v5 + 1;

        swift_unknownObjectRetain();
        *&v34 = sub_2144E05B8(v4);
        *(&v34 + 1) = v24;
        v35 = v25;
        type metadata accessor for _XPCKeyedDecodingContainer();
        swift_getWitnessTable();
        sub_2146DA268();
LABEL_13:
        swift_unknownObjectRelease();
        return sub_2144E4BBC(v3);
      }

      v26 = v3[2];
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
      v28 = sub_2146D9F58();
      swift_allocError();
      v30 = v29;
      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      sub_2146D9EF8();

      *&v34 = 0xD000000000000035;
      *(&v34 + 1) = 0x800000021479C460;
      v31 = sub_2144EB524(v13);
      MEMORY[0x2160545D0](v31);

      MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v30 = v27;

      sub_2146D9F28();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    }

    swift_willThrow();
    goto LABEL_13;
  }

  v19 = sub_2146D9F58();
  swift_allocError();
  v21 = v20;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
  *v21 = sub_2146DA258();
  v23 = v3[2];

  sub_2146D9F28();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84170], v19);
  swift_willThrow();
  return sub_2144E4BBC(v3);
}

uint64_t sub_2144E4640@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = *v1;
  v4 = v1[3];
  *&v34 = 0x207865646E49;
  *(&v34 + 1) = 0xE600000000000000;
  v37 = v4;
  v5 = sub_2146DA428();
  MEMORY[0x2160545D0](v5);

  swift_beginAccess();
  v6 = *(v3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2140954FC(0, v6[2] + 1, 1, v6);
    *(v3 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2140954FC((v8 > 1), v9 + 1, 1, v6);
  }

  v35 = &type metadata for XPCCodingKey;
  v36 = sub_2144EE044();
  v10 = swift_allocObject();
  *&v34 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0;
  v6[2] = v9 + 1;
  sub_213FB77C8(&v34, &v6[5 * v9 + 4]);
  *(v3 + 32) = v6;
  swift_endAccess();
  v11 = v2[1];
  if (v4 >= xpc_array_get_count(v11))
  {
    v18 = sub_2146D9F58();
    swift_allocError();
    v20 = v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A58, &qword_214756CC8);
    v22 = v2[2];

    sub_2146D9F28();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
    swift_willThrow();
    return sub_2144E4BBC(v2);
  }

  v12 = xpc_array_get_value(v11, v4);
  swift_getObjectType();
  if (sub_214090088())
  {
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A58, &qword_214756CC8);
    v17 = v2[2];

    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84170], v13);
LABEL_13:
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_2144E4BBC(v2);
  }

  if (sub_21408FD98() != 6)
  {
    v26 = v2[2];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    v28 = sub_2146D9F58();
    swift_allocError();
    v30 = v29;
    *&v34 = 0;
    *(&v34 + 1) = 0xE000000000000000;
    sub_2146D9EF8();

    *&v34 = 0xD000000000000028;
    *(&v34 + 1) = 0x800000021479C500;
    v31 = sub_2144EB524(v12);
    MEMORY[0x2160545D0](v31);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v30 = v27;

    sub_2146D9F28();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    goto LABEL_13;
  }

  v2[3] = v4 + 1;
  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    v23 = *(v3 + 32);
    v24 = v38;
    v38[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    v24[4] = sub_2144EDEAC();
    v25 = swift_allocObject();
    *v24 = v25;

    swift_unknownObjectRelease();
    v25[2] = v3;
    v25[3] = v12;
    v25[4] = v23;
    v25[5] = 0;
    return sub_2144E4BBC(v2);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144E4BBC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 32);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_214508E84(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 32) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2144E4EB0()
{
  result = sub_2146DA4B8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E4F00()
{
  result = sub_2146DA4C8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E4FA8()
{
  result = sub_2146DA4F8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E4FF8()
{
  result = sub_2146DA4D8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E5138()
{
  result = sub_2146DA508();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144E5188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_2144E525C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = sub_2146D9948();
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = &v14;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2144F2364;
  *(v9 + 24) = v8;
  aBlock[4] = sub_2144F2370;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2144E54C8;
  aBlock[3] = &block_descriptor_1;
  v10 = _Block_copy(aBlock);

  xpc_dictionary_apply(a2, v10);
  _Block_release(v10);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;

    return v12;
  }

  return result;
}

uint64_t sub_2144E53CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2146D9D38();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - v7;
  sub_2146D96E8();
  sub_2146DAA48();
  result = (*(*(a4 - 8) + 48))(v8, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2146D9978();
    sub_2146D9968();
    return 1;
  }

  return result;
}

uint64_t sub_2144E54C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

BOOL sub_2144E5520(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2146DAA38();
  v4 = sub_2146D9628();

  v5 = xpc_dictionary_get_value(a3, (v4 + 32));

  if (v5)
  {
    swift_unknownObjectRelease();
  }

  return v5 != 0;
}

BOOL sub_2144E55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  sub_2146DAA38();
  v10 = sub_2140900AC();

  if (v10)
  {
    swift_getObjectType();
    v11 = sub_214090088();
    swift_unknownObjectRelease();
    return v11;
  }

  else
  {
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v15[3] = a5;
    v15[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    swift_beginAccess();
    v18 = *(a2 + 32);

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v19 = *(a6 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84158], v13);
    swift_willThrow();
    return 0;
  }
}

uint64_t sub_2144E57B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  swift_getObjectType();
  v48 = a1;
  v17 = a6;
  sub_2146DAA38();
  v45 = a3;
  v18 = sub_2140900AC();

  v44 = v18;
  if (v18)
  {
    v41 = a6;
    v19 = *(v11 + 16);
    v20 = v48;
    v48 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, *(v21 + 16) + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = *(v21 + 16);
    v24 = *(v21 + 24);
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v42;
    v27 = v48;
    v19(v42, v16, v48);
    sub_21467F264(v25, v26, (v23 + 32), v27, v41);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v43;
    LOBYTE(v21) = v23;
    v29 = sub_2144EBC6C(v44);
    if (!v28)
    {
      LOBYTE(v21) = v29;
      if (v29 == 2)
      {
        v21 = sub_2146D9F58();
        swift_allocError();
        v31 = v30;
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
        *v31 = MEMORY[0x277D839B0];
        v33 = *(v23 + 32);

        sub_2146D9F28();
        (*(*(v21 - 8) + 104))(v31, *MEMORY[0x277D84170], v21);
        swift_willThrow();
      }
    }

    sub_2144EA580(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = sub_2146D9F58();
    swift_allocError();
    v35 = v34;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v35[3] = a5;
    v35[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
    (*(v11 + 16))(boxed_opaque_existential_0, v48, a5);
    swift_beginAccess();
    v37 = *(a2 + 32);
    v47[0] = 0;
    v47[1] = 0xE000000000000000;

    v21 = v47;
    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v38 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v46 - 8) + 104))(v35, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v21 & 1;
}

uint64_t sub_2144E5C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  swift_getObjectType();
  v52 = a1;
  v17 = a6;
  sub_2146DAA38();
  v48 = a3;
  v18 = sub_2140900AC();

  v47 = v18;
  if (v18)
  {
    v44 = a6;
    v19 = *(v11 + 16);
    v20 = v52;
    v52 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v45;
    v27 = v52;
    v19(v45, v16, v52);
    sub_21467F264(v25, v26, (v23 + 32), v27, v44);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v46;
    v29 = sub_2144EB93C(v47);
    if (v28)
    {
      goto LABEL_9;
    }

    if (v30)
    {
      v31 = sub_2146D9F58();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v33 = MEMORY[0x277D83B88];
      v35 = *(v23 + 32);

      sub_2146D9F28();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      swift_willThrow();
LABEL_9:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v42 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v42;
  }

  else
  {
    v49 = sub_2146D9F58();
    swift_allocError();
    v38 = v37;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v38[3] = a5;
    v38[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(v11 + 16))(boxed_opaque_existential_0, v52, a5);
    swift_beginAccess();
    v40 = *(a2 + 32);
    v50 = 0;
    v51 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v41 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v49 - 8) + 104))(v38, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E6118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  swift_getObjectType();
  v51 = a1;
  v17 = a6;
  sub_2146DAA38();
  v47 = a3;
  v18 = sub_2140900AC();

  v46 = v18;
  if (v18)
  {
    v43 = a6;
    v19 = *(v11 + 16);
    v20 = v51;
    v51 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v44;
    v27 = v51;
    v19(v44, v16, v51);
    sub_21467F264(v25, v26, (v23 + 32), v27, v43);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v45;
    v29 = sub_2144EBE2C(v46);
    if (!v28)
    {
      if ((v29 & 0x100) == 0)
      {
        v30 = v29;
        sub_2144EA580(v23);
        swift_unknownObjectRelease();
        return v30;
      }

      v37 = sub_2146D9F58();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v39 = MEMORY[0x277D84900];
      v41 = *(v23 + 32);

      sub_2146D9F28();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84170], v37);
      swift_willThrow();
    }

    sub_2144EA580(v23);
    return swift_unknownObjectRelease();
  }

  else
  {
    v48 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v51, a5);
    swift_beginAccess();
    v35 = *(a2 + 32);
    v49 = 0;
    v50 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v36 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E65C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  swift_getObjectType();
  v51 = a1;
  v17 = a6;
  sub_2146DAA38();
  v47 = a3;
  v18 = sub_2140900AC();

  v46 = v18;
  if (v18)
  {
    v43 = a6;
    v19 = *(v11 + 16);
    v20 = v51;
    v51 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v44;
    v27 = v51;
    v19(v44, v16, v51);
    sub_21467F264(v25, v26, (v23 + 32), v27, v43);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v45;
    v29 = sub_2144EC158(v46);
    if (!v28)
    {
      if ((v29 & 0x10000) == 0)
      {
        v30 = v29;
        sub_2144EA580(v23);
        swift_unknownObjectRelease();
        return v30;
      }

      v37 = sub_2146D9F58();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v39 = MEMORY[0x277D84958];
      v41 = *(v23 + 32);

      sub_2146D9F28();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84170], v37);
      swift_willThrow();
    }

    sub_2144EA580(v23);
    return swift_unknownObjectRelease();
  }

  else
  {
    v48 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v51, a5);
    swift_beginAccess();
    v35 = *(a2 + 32);
    v49 = 0;
    v50 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v36 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

void *sub_2144E6A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  swift_getObjectType();
  v49 = a1;
  v17 = a6;
  sub_2146DAA38();
  v46 = a3;
  v18 = sub_2140900AC();

  v45 = v18;
  if (v18)
  {
    v42 = a6;
    v19 = *(v11 + 16);
    v20 = v49;
    v49 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v43;
    v27 = v49;
    v19(v43, v16, v49);
    sub_21467F264(v25, v26, (v23 + 32), v27, v42);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v44;
    v29 = v23;
    v30 = sub_2144EC488(v45);
    if (!v28)
    {
      v29 = v30;
      if ((v30 & 0x100000000) != 0)
      {
        v29 = sub_2146D9F58();
        swift_allocError();
        v37 = v36;
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
        *v37 = MEMORY[0x277D849A8];
        v39 = *(v23 + 32);

        sub_2146D9F28();
        (*(*(v29 - 1) + 104))(v37, *MEMORY[0x277D84170], v29);
        swift_willThrow();
      }
    }

    sub_2144EA580(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = sub_2146D9F58();
    swift_allocError();
    v32 = v31;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v32[3] = a5;
    v32[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v11 + 16))(boxed_opaque_existential_0, v49, a5);
    swift_beginAccess();
    v34 = *(a2 + 32);
    v48[0] = 0;
    v48[1] = 0xE000000000000000;

    v29 = v48;
    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v35 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v47 - 8) + 104))(v32, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v29;
}

uint64_t sub_2144E6F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  swift_getObjectType();
  v52 = a1;
  v17 = a6;
  sub_2146DAA38();
  v48 = a3;
  v18 = sub_2140900AC();

  v47 = v18;
  if (v18)
  {
    v44 = a6;
    v19 = *(v11 + 16);
    v20 = v52;
    v52 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v45;
    v27 = v52;
    v19(v45, v16, v52);
    sub_21467F264(v25, v26, (v23 + 32), v27, v44);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v46;
    v29 = sub_2144EC7C4(v47);
    if (v28)
    {
      goto LABEL_9;
    }

    if (v30)
    {
      v31 = sub_2146D9F58();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v33 = MEMORY[0x277D84A28];
      v35 = *(v23 + 32);

      sub_2146D9F28();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      swift_willThrow();
LABEL_9:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v42 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v42;
  }

  else
  {
    v49 = sub_2146D9F58();
    swift_allocError();
    v38 = v37;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v38[3] = a5;
    v38[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(v11 + 16))(boxed_opaque_existential_0, v52, a5);
    swift_beginAccess();
    v40 = *(a2 + 32);
    v50 = 0;
    v51 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v41 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v49 - 8) + 104))(v38, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E73C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  swift_getObjectType();
  v52 = a1;
  v17 = a6;
  sub_2146DAA38();
  v48 = a3;
  v18 = sub_2140900AC();

  v47 = v18;
  if (v18)
  {
    v44 = a6;
    v19 = *(v11 + 16);
    v20 = v52;
    v52 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v45;
    v27 = v52;
    v19(v45, v16, v52);
    sub_21467F264(v25, v26, (v23 + 32), v27, v44);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v46;
    v29 = sub_2144ECAF8(v47);
    if (v28)
    {
      goto LABEL_9;
    }

    if (v30)
    {
      v31 = sub_2146D9F58();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v33 = MEMORY[0x277D83E88];
      v35 = *(v23 + 32);

      sub_2146D9F28();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      swift_willThrow();
LABEL_9:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v42 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v42;
  }

  else
  {
    v49 = sub_2146D9F58();
    swift_allocError();
    v38 = v37;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v38[3] = a5;
    v38[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(v11 + 16))(boxed_opaque_existential_0, v52, a5);
    swift_beginAccess();
    v40 = *(a2 + 32);
    v50 = 0;
    v51 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v41 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v49 - 8) + 104))(v38, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E7874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  swift_getObjectType();
  v51 = a1;
  v17 = a6;
  sub_2146DAA38();
  v47 = a3;
  v18 = sub_2140900AC();

  v46 = v18;
  if (v18)
  {
    v43 = a6;
    v19 = *(v11 + 16);
    v20 = v51;
    v51 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v44;
    v27 = v51;
    v19(v44, v16, v51);
    sub_21467F264(v25, v26, (v23 + 32), v27, v43);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v45;
    v29 = sub_2144ECE28(v46);
    if (!v28)
    {
      if ((v29 & 0x100) == 0)
      {
        v30 = v29;
        sub_2144EA580(v23);
        swift_unknownObjectRelease();
        return v30;
      }

      v37 = sub_2146D9F58();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v39 = MEMORY[0x277D84B78];
      v41 = *(v23 + 32);

      sub_2146D9F28();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84170], v37);
      swift_willThrow();
    }

    sub_2144EA580(v23);
    return swift_unknownObjectRelease();
  }

  else
  {
    v48 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v51, a5);
    swift_beginAccess();
    v35 = *(a2 + 32);
    v49 = 0;
    v50 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v36 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E7D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  swift_getObjectType();
  v51 = a1;
  v17 = a6;
  sub_2146DAA38();
  v47 = a3;
  v18 = sub_2140900AC();

  v46 = v18;
  if (v18)
  {
    v43 = a6;
    v19 = *(v11 + 16);
    v20 = v51;
    v51 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v44;
    v27 = v51;
    v19(v44, v16, v51);
    sub_21467F264(v25, v26, (v23 + 32), v27, v43);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v45;
    v29 = sub_2144ED158(v46);
    if (!v28)
    {
      if ((v29 & 0x10000) == 0)
      {
        v30 = v29;
        sub_2144EA580(v23);
        swift_unknownObjectRelease();
        return v30;
      }

      v37 = sub_2146D9F58();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v39 = MEMORY[0x277D84C58];
      v41 = *(v23 + 32);

      sub_2146D9F28();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84170], v37);
      swift_willThrow();
    }

    sub_2144EA580(v23);
    return swift_unknownObjectRelease();
  }

  else
  {
    v48 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v51, a5);
    swift_beginAccess();
    v35 = *(a2 + 32);
    v49 = 0;
    v50 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v36 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

void *sub_2144E81CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  swift_getObjectType();
  v49 = a1;
  v17 = a6;
  sub_2146DAA38();
  v46 = a3;
  v18 = sub_2140900AC();

  v45 = v18;
  if (v18)
  {
    v42 = a6;
    v19 = *(v11 + 16);
    v20 = v49;
    v49 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v43;
    v27 = v49;
    v19(v43, v16, v49);
    sub_21467F264(v25, v26, (v23 + 32), v27, v42);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v44;
    v29 = v23;
    v30 = sub_2144ED488(v45);
    if (!v28)
    {
      v29 = v30;
      if ((v30 & 0x100000000) != 0)
      {
        v29 = sub_2146D9F58();
        swift_allocError();
        v37 = v36;
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
        *v37 = MEMORY[0x277D84CC0];
        v39 = *(v23 + 32);

        sub_2146D9F28();
        (*(*(v29 - 1) + 104))(v37, *MEMORY[0x277D84170], v29);
        swift_willThrow();
      }
    }

    sub_2144EA580(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = sub_2146D9F58();
    swift_allocError();
    v32 = v31;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v32[3] = a5;
    v32[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v11 + 16))(boxed_opaque_existential_0, v49, a5);
    swift_beginAccess();
    v34 = *(a2 + 32);
    v48[0] = 0;
    v48[1] = 0xE000000000000000;

    v29 = v48;
    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v35 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v47 - 8) + 104))(v32, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v29;
}

uint64_t sub_2144E8678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  swift_getObjectType();
  v52 = a1;
  v17 = a6;
  sub_2146DAA38();
  v48 = a3;
  v18 = sub_2140900AC();

  v47 = v18;
  if (v18)
  {
    v44 = a6;
    v19 = *(v11 + 16);
    v20 = v52;
    v52 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v45;
    v27 = v52;
    v19(v45, v16, v52);
    sub_21467F264(v25, v26, (v23 + 32), v27, v44);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v46;
    v29 = sub_2144ED7C4(v47);
    if (v28)
    {
      goto LABEL_9;
    }

    if (v30)
    {
      v31 = sub_2146D9F58();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v33 = MEMORY[0x277D84D38];
      v35 = *(v23 + 32);

      sub_2146D9F28();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      swift_willThrow();
LABEL_9:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v42 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v42;
  }

  else
  {
    v49 = sub_2146D9F58();
    swift_allocError();
    v38 = v37;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v38[3] = a5;
    v38[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(v11 + 16))(boxed_opaque_existential_0, v52, a5);
    swift_beginAccess();
    v40 = *(a2 + 32);
    v50 = 0;
    v51 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v41 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v49 - 8) + 104))(v38, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

float sub_2144E8B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a4;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  swift_getObjectType();
  v48 = a1;
  v18 = a6;
  sub_2146DAA38();
  v46 = a3;
  v19 = sub_2140900AC();

  v45 = v19;
  if (!v19)
  {
    v47 = sub_2146D9F58();
    swift_allocError();
    v32 = v31;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v32[3] = a5;
    v32[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v12 + 16))(boxed_opaque_existential_0, v48, a5);
    swift_beginAccess();
    v34 = *(a2 + 32);
    v49 = 0;
    v50 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v35 = *(v18 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v47 - 8) + 104))(v32, *MEMORY[0x277D84158]);
    swift_willThrow();
    return v6;
  }

  v42 = a6;
  v20 = *(v12 + 16);
  v21 = v48;
  v48 = a5;
  v20(v17, v21, a5);
  swift_beginAccess();
  v22 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = a2;
  *(a2 + 32) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_2140954FC(0, v22[2] + 1, 1, v22);
    *(a2 + 32) = v22;
  }

  v26 = v22[2];
  v25 = v22[3];
  if (v26 >= v25 >> 1)
  {
    v22 = sub_2140954FC((v25 > 1), v26 + 1, 1, v22);
    *(a2 + 32) = v22;
  }

  v27 = v43;
  v28 = v48;
  v20(v43, v17, v48);
  sub_21467F264(v26, v27, (v24 + 32), v28, v42);
  (*(v12 + 8))(v17, v28);
  *(v24 + 32) = v22;
  swift_endAccess();
  v29 = v44;
  v30 = sub_2144EDAF8(v45);
  if (v29)
  {
LABEL_11:
    sub_2144EA580(v24);
    swift_unknownObjectRelease();
    return v6;
  }

  if ((v30 & 0x100000000) != 0)
  {
    v36 = sub_2146D9F58();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v38 = MEMORY[0x277D83A90];
    v40 = *(v24 + 32);

    sub_2146D9F28();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84170], v36);
    swift_willThrow();
    goto LABEL_11;
  }

  v6 = *&v30;
  sub_2144EA580(v24);
  swift_unknownObjectRelease();
  return v6;
}

double sub_2144E8FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  swift_getObjectType();
  v49 = a1;
  v18 = a6;
  sub_2146DAA38();
  v47 = a3;
  v19 = sub_2140900AC();

  v46 = v19;
  if (v19)
  {
    v43 = a6;
    v20 = *(v12 + 16);
    v21 = v49;
    v49 = a5;
    v20(v17, v21, a5);
    swift_beginAccess();
    v22 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = a2;
    *(a2 + 32) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2140954FC(0, v22[2] + 1, 1, v22);
      *(a2 + 32) = v22;
    }

    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      v22 = sub_2140954FC((v25 > 1), v26 + 1, 1, v22);
      *(a2 + 32) = v22;
    }

    v27 = v44;
    v28 = v49;
    v20(v44, v17, v49);
    sub_21467F264(v26, v27, (v24 + 32), v28, v43);
    (*(v12 + 8))(v17, v28);
    *(v24 + 32) = v22;
    swift_endAccess();
    v29 = v45;
    v30 = sub_2144EDCD8(v46);
    if (!v29)
    {
      if ((v31 & 1) == 0)
      {
        v6 = *&v30;
        sub_2144EA580(v24);
        swift_unknownObjectRelease();
        return v6;
      }

      v32 = sub_2146D9F58();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v34 = MEMORY[0x277D839F8];
      v36 = *(v24 + 32);

      sub_2146D9F28();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84170], v32);
      swift_willThrow();
    }

    sub_2144EA580(v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = sub_2146D9F58();
    swift_allocError();
    v38 = v37;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v38[3] = a5;
    v38[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(v12 + 16))(boxed_opaque_existential_0, v49, a5);
    swift_beginAccess();
    v40 = *(a2 + 32);
    v50 = 0;
    v51 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v41 = *(v18 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v48 - 8) + 104))(v38, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2144E948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  swift_getObjectType();
  v52 = a1;
  v17 = a6;
  sub_2146DAA38();
  v48 = a3;
  v18 = sub_2140900AC();

  v47 = v18;
  if (v18)
  {
    v44 = a6;
    v19 = *(v11 + 16);
    v20 = v52;
    v52 = a5;
    v19(v16, v20, a5);
    swift_beginAccess();
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = a2;
    *(a2 + 32) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2140954FC(0, v21[2] + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_2140954FC((v24 > 1), v25 + 1, 1, v21);
      *(a2 + 32) = v21;
    }

    v26 = v45;
    v27 = v52;
    v19(v45, v16, v52);
    sub_21467F264(v25, v26, (v23 + 32), v27, v44);
    (*(v11 + 8))(v16, v27);
    *(v23 + 32) = v21;
    swift_endAccess();
    v28 = v46;
    v29 = sub_2144E1878(v47);
    if (v28)
    {
      goto LABEL_7;
    }

    if (!v30)
    {
      v38 = sub_2146D9F58();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v40 = MEMORY[0x277D837D0];
      v42 = *(v23 + 32);

      sub_2146D9F28();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84170], v38);
      swift_willThrow();
LABEL_7:
      sub_2144EA580(v23);
      return swift_unknownObjectRelease();
    }

    v37 = v29;
    sub_2144EA580(v23);
    swift_unknownObjectRelease();
    return v37;
  }

  else
  {
    v49 = sub_2146D9F58();
    swift_allocError();
    v33 = v32;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v33[3] = a5;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    (*(v11 + 16))(boxed_opaque_existential_0, v52, a5);
    swift_beginAccess();
    v35 = *(a2 + 32);
    v50 = 0;
    v51 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v36 = *(v17 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v49 - 8) + 104))(v33, *MEMORY[0x277D84158]);
    return swift_willThrow();
  }
}

uint64_t sub_2144E9944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v64 = a5;
  v65 = a7;
  v55 = a9;
  v56 = a1;
  v15 = sub_2146D9D38();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v62 = &v53 - v18;
  v19 = *(a6 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v60 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v53 - v23;
  swift_getObjectType();
  v70 = a2;
  v25 = a8;
  sub_2146DAA38();
  v63 = a4;
  v26 = sub_2140900AC();

  if (!v26)
  {
    v45 = sub_2146D9F58();
    v62 = swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v47[3] = a6;
    v47[4] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(v19 + 16))(boxed_opaque_existential_0, v70, a6);
    swift_beginAccess();
    v50 = *(a3 + 32);
    v66 = 0;
    v67 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000001DLL, 0x800000021479CA00);
    v51 = *(v25 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](11817, 0xE200000000000000);
    sub_2146D9F28();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84158], v45);
    return swift_willThrow();
  }

  v57 = v26;
  v58 = a8;
  v59 = a10;
  v27 = *(v19 + 16);
  v28 = v70;
  v70 = a6;
  v27(v24, v28, a6);
  swift_beginAccess();
  v29 = *(a3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = a3;
  *(a3 + 32) = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_2140954FC(0, v29[2] + 1, 1, v29);
    *(a3 + 32) = v29;
  }

  v33 = v29[2];
  v32 = v29[3];
  if (v33 >= v32 >> 1)
  {
    v29 = sub_2140954FC((v32 > 1), v33 + 1, 1, v29);
    *(a3 + 32) = v29;
  }

  v34 = v60;
  v35 = v70;
  v27(v60, v24, v70);
  sub_21467F264(v33, v34, (v31 + 32), v35, v58);
  (*(v19 + 8))(v24, v35);
  *(v31 + 32) = v29;
  swift_endAccess();
  v36 = v61;
  v37 = v62;
  v38 = v65;
  sub_2144E0AD0(v57, v65, v65, v62);
  if (v36)
  {
    goto LABEL_11;
  }

  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38) != 1)
  {
    (*(v39 + 32))(v55, v37, v38);
LABEL_11:
    sub_2144EA580(v31);
    return swift_unknownObjectRelease();
  }

  (*(v53 + 8))(v37, v54);
  v40 = sub_2146D9F58();
  v62 = swift_allocError();
  v42 = v41;
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
  *v42 = v56;
  v43 = *(v31 + 32);
  v68 = 0;
  v69 = 0xE000000000000000;

  sub_2146D9EF8();

  v68 = 0x6465746365707845;
  v69 = 0xE900000000000020;
  v44 = sub_2146DAA78();
  MEMORY[0x2160545D0](v44);

  MEMORY[0x2160545D0](0xD00000000000001ELL, 0x800000021479CA20);
  sub_2146D9F28();
  (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84170], v40);
  swift_willThrow();
  sub_2144EA580(v31);
  return swift_unknownObjectRelease();
}

uint64_t sub_2144E9F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v47 = a6;
  v50 = a7;
  v46 = a4;
  v54 = a3;
  v43 = a8;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = *(v11 + 16);
  v49 = v19;
  v18(&v42 - v16);
  swift_beginAccess();
  v20 = *(a2 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_2140954FC(0, v20[2] + 1, 1, v20);
    *(a2 + 32) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  v45 = a9;
  if (v23 >= v22 >> 1)
  {
    v20 = sub_2140954FC((v22 > 1), v23 + 1, 1, v20);
    *(a2 + 32) = v20;
  }

  (v18)(v15, v17, a5);
  v44 = v18;
  v24 = v50;
  sub_21467F264(v23, v15, (a2 + 32), a5, v50);
  (*(v11 + 8))(v17, a5);
  *(a2 + 32) = v20;
  swift_endAccess();
  swift_getObjectType();
  v25 = v49;
  sub_2146DAA38();
  v26 = sub_2140900AC();

  if (v26)
  {
    swift_getObjectType();
    if (sub_21408FD98() == 7)
    {
      swift_unknownObjectRetain();
      v51 = sub_2144E05B8(a2);
      v52 = v27;
      v53 = v28;
      type metadata accessor for _XPCKeyedDecodingContainer();
      swift_getWitnessTable();
      sub_2146DA268();
      swift_unknownObjectRelease();
      return sub_2144EA580(a2);
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    v37 = sub_2146D9F58();
    swift_allocError();
    v39 = v38;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_2146D9EF8();

    v51 = 0xD000000000000035;
    v52 = 0x800000021479C460;
    v40 = sub_2144EB524(v26);
    MEMORY[0x2160545D0](v40);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v39 = v36;

    sub_2146D9F28();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {

    v43 = sub_2146D9F58();
    v48 = swift_allocError();
    v30 = v25;
    v32 = v31;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v32[3] = a5;
    v32[4] = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    v44(boxed_opaque_existential_0, v30, a5);
    v51 = 0;
    v52 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0x6720746F6E6E6143, 0xEB00000000207465);
    sub_2146DA258();
    v34 = sub_2146DAA78();
    MEMORY[0x2160545D0](v34);

    MEMORY[0x2160545D0](0xD00000000000001BLL, 0x800000021479C9E0);
    v35 = *(v24 + 16);
    sub_2146DA688();
    sub_2146D9F28();
    (*(*(v43 - 8) + 104))(v32, *MEMORY[0x277D84158]);
    swift_willThrow();
  }

  return sub_2144EA580(a2);
}

uint64_t sub_2144EA580(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_214508E84(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 32);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v5 - 1]);
    v2[2] = v6;
    *(a1 + 32) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2144EA624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v47 = a7;
  v49 = a6;
  v51 = a4;
  v52 = a3;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v17 = *(v10 + 16);
  v17(&v47 - v15, a1, v18);
  swift_beginAccess();
  v19 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = a2;
  *(a2 + 32) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_2140954FC(0, v19[2] + 1, 1, v19);
    *(v55 + 32) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  v50 = a1;
  if (v22 >= v21 >> 1)
  {
    v46 = sub_2140954FC((v21 > 1), v22 + 1, 1, v19);
    v23 = v17;
    v19 = v46;
    *(v55 + 32) = v46;
  }

  else
  {
    v23 = v17;
  }

  v48 = v23;
  v23(v14, v16, a5);
  v24 = v55;
  v25 = v49;
  sub_21467F264(v22, v14, (v55 + 32), a5, v49);
  (*(v10 + 8))(v16, a5);
  *(v24 + 32) = v19;
  v26 = v25;
  swift_endAccess();
  swift_getObjectType();
  v27 = v50;
  sub_2146DAA38();
  v28 = sub_2140900AC();

  if (!v28)
  {
    v34 = sub_2146D9F58();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    v36[3] = a5;
    v36[4] = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    v48(boxed_opaque_existential_0, v27, a5);
    v53 = 0;
    v54 = 0xE000000000000000;

    sub_2146D9EF8();
    MEMORY[0x2160545D0](0xD00000000000003ELL, 0x800000021479C9A0);
    v39 = *(v26 + 16);
    sub_2146DA688();
    MEMORY[0x2160545D0](41, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84158], v34);
    swift_willThrow();
    return sub_2144EA580(v55);
  }

  swift_getObjectType();
  if (sub_21408FD98() != 6)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041C8, &qword_214756CC0);
    v41 = sub_2146D9F58();
    swift_allocError();
    v43 = v42;
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_2146D9EF8();

    v53 = 0xD000000000000028;
    v54 = 0x800000021479C500;
    v44 = sub_2144EB524(v28);
    MEMORY[0x2160545D0](v44);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v43 = v40;

    sub_2146D9F28();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_2144EA580(v55);
  }

  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    v29 = v55;
    v30 = *(v55 + 32);
    v31 = v47;
    v47[3] = &type metadata for _XPCUnkeyedDecodingContainer;
    v31[4] = sub_2144EDEAC();
    v32 = swift_allocObject();
    *v31 = v32;

    swift_unknownObjectRelease();
    v32[2] = v29;
    v32[3] = v28;
    v32[4] = v30;
    v32[5] = 0;
    return sub_2144EA580(v29);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

BOOL sub_2144EACB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return sub_2144E5520(a1, *v2, *(v2 + 8));
}

uint64_t sub_2144EB0D4()
{
  result = sub_2146DA768();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB124()
{
  result = sub_2146DA778();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB1CC()
{
  result = sub_2146DA7A8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB21C()
{
  result = sub_2146DA788();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB35C()
{
  result = sub_2146DA7B8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2144EB3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void sub_2144EB4A0(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_2144EAC04();
}

uint64_t sub_2144EB524(uint64_t a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0x76206C6C756E2061;
  }

  v2 = 0x7265626D756E2061;
  if (sub_21408FD98() != 1 && sub_21408FD98() != 2)
  {
    if (sub_21408FD98() == 3)
    {
      return 0x676E697274732061;
    }

    else if (sub_21408FD98() == 6)
    {
      return 0x7961727261206E61;
    }

    else if (sub_21408FD98() == 7)
    {
      return 0x6F69746369642061;
    }

    else
    {
      v4 = MEMORY[0x216056E20](a1);
      xpc_type_get_name(v4);
      return sub_2146D96E8();
    }
  }

  return v2;
}

unint64_t sub_2144EB694()
{
  result = qword_27C914A28;
  if (!qword_27C914A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914A28);
  }

  return result;
}

unint64_t sub_2144EB6EC()
{
  result = qword_27C914A30;
  if (!qword_27C914A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914A30);
  }

  return result;
}

uint64_t sub_2144EB93C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() != 1)
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D83B88];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
    return swift_willThrow();
  }

  value = xpc_int64_get_value(a1);
  v6 = xpc_int64_get_value(a1);
  result = value;
  if (value != v6)
  {
    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](7630409, 0xE300000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144EBC6C(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 2;
  }

  if (!sub_21408FD98())
  {
    return xpc_BOOL_get_value(a1);
  }

  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = sub_2146D9F58();
  swift_allocError();
  v7 = v6;

  sub_2146D9EF8();

  v8 = sub_2144EB524(a1);
  MEMORY[0x2160545D0](v8);

  MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
  *v7 = MEMORY[0x277D839B0];
  sub_2146D9F28();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
  return swift_willThrow();
}

uint64_t sub_2144EBE2C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_214090088();
  if (v4)
  {
    value = 0;
    return value | (v4 << 8);
  }

  if (sub_21408FD98() == 1)
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) == value)
    {
      return value | (v4 << 8);
    }

    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](947154505, 0xE400000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
  }

  else
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D84900];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
  }

  return swift_willThrow();
}

uint64_t sub_2144EC158(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_214090088();
  if (v4)
  {
    value = 0;
    return value | (v4 << 16);
  }

  if (sub_21408FD98() == 1)
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) == value)
    {
      return value | (v4 << 16);
    }

    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3631746E49, 0xE500000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
  }

  else
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D84958];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
  }

  return swift_willThrow();
}

uint64_t sub_2144EC488(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_214090088();
  if (v4)
  {
    value = 0;
    return value | (v4 << 32);
  }

  if (sub_21408FD98() == 1)
  {
    value = xpc_int64_get_value(a1);
    if (xpc_int64_get_value(a1) == value)
    {
      return value | (v4 << 32);
    }

    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3233746E49, 0xE500000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
  }

  else
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D849A8];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
  }

  return swift_willThrow();
}

uint64_t sub_2144EC7C4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() != 1)
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D84A28];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
    return swift_willThrow();
  }

  value = xpc_int64_get_value(a1);
  v6 = xpc_int64_get_value(a1);
  result = value;
  if (value != v6)
  {
    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_int64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3436746E49, 0xE500000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144ECAF8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() != 2)
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D83E88];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
    return swift_willThrow();
  }

  value = xpc_uint64_get_value(a1);
  v6 = xpc_uint64_get_value(a1);
  result = value;
  if (value != v6)
  {
    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](1953384789, 0xE400000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144ECE28(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_214090088();
  if (v4)
  {
    value = 0;
    return value | (v4 << 8);
  }

  if (sub_21408FD98() == 2)
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) == value)
    {
      return value | (v4 << 8);
    }

    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x38746E4955, 0xE500000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
  }

  else
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D84B78];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
  }

  return swift_willThrow();
}

uint64_t sub_2144ED158(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_214090088();
  if (v4)
  {
    value = 0;
    return value | (v4 << 16);
  }

  if (sub_21408FD98() == 2)
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) == value)
    {
      return value | (v4 << 16);
    }

    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3631746E4955, 0xE600000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
  }

  else
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D84C58];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
  }

  return swift_willThrow();
}

uint64_t sub_2144ED488(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_214090088();
  if (v4)
  {
    value = 0;
    return value | (v4 << 32);
  }

  if (sub_21408FD98() == 2)
  {
    value = xpc_uint64_get_value(a1);
    if (xpc_uint64_get_value(a1) == value)
    {
      return value | (v4 << 32);
    }

    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3233746E4955, 0xE600000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
  }

  else
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D84CC0];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
  }

  return swift_willThrow();
}

uint64_t sub_2144ED7C4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() != 2)
  {
    swift_beginAccess();
    v12 = *(v1 + 32);
    v13 = sub_2146D9F58();
    swift_allocError();
    v15 = v14;

    sub_2146D9EF8();

    v16 = sub_2144EB524(a1);
    MEMORY[0x2160545D0](v16);

    MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v15 = MEMORY[0x277D84D38];
    sub_2146D9F28();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
    return swift_willThrow();
  }

  value = xpc_uint64_get_value(a1);
  v6 = xpc_uint64_get_value(a1);
  result = value;
  if (value != v6)
  {
    v7 = sub_2146D9F58();
    swift_allocError();
    v9 = v8;
    swift_beginAccess();
    v10 = *(v2 + 32);

    sub_2146D9EF8();

    xpc_uint64_get_value(a1);
    v11 = sub_2146DA428();
    MEMORY[0x2160545D0](v11);

    MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479BEC0);
    MEMORY[0x2160545D0](0x3436746E4955, 0xE600000000000000);
    MEMORY[0x2160545D0](46, 0xE100000000000000);
    sub_2146D9F28();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84168], v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2144EDAF8(void *a1)
{
  swift_getObjectType();
  v3 = sub_214090088();
  if (v3)
  {
    v4 = 0;
    return v4 | (v3 << 32);
  }

  if (sub_21408FD98() == 4)
  {
    *&v5 = xpc_double_get_value(a1);
    v4 = v5;
    return v4 | (v3 << 32);
  }

  swift_beginAccess();
  v7 = *(v1 + 32);
  v8 = sub_2146D9F58();
  swift_allocError();
  v10 = v9;

  sub_2146D9EF8();

  v11 = sub_2144EB524(a1);
  MEMORY[0x2160545D0](v11);

  MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
  *v10 = MEMORY[0x277D83A90];
  sub_2146D9F28();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84160], v8);
  return swift_willThrow();
}

uint64_t sub_2144EDCD8(void *a1)
{
  swift_getObjectType();
  if (sub_214090088())
  {
    return 0;
  }

  if (sub_21408FD98() == 4)
  {
    return xpc_double_get_value(a1);
  }

  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = sub_2146D9F58();
  swift_allocError();
  v7 = v6;

  sub_2146D9EF8();

  v8 = sub_2144EB524(a1);
  MEMORY[0x2160545D0](v8);

  MEMORY[0x2160545D0](0x64616574736E6920, 0xE90000000000002ELL);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
  *v7 = MEMORY[0x277D839F8];
  sub_2146D9F28();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
  return swift_willThrow();
}

unint64_t sub_2144EDEAC()
{
  result = qword_280B332A0;
  if (!qword_280B332A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B332A0);
  }

  return result;
}

uint64_t sub_2144EDF18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _XPCDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2144EDF5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2144EDFA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2144EDFEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2144EE044()
{
  result = qword_280B34848[0];
  if (!qword_280B34848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B34848);
  }

  return result;
}

uint64_t sub_2144EE098()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v15 = sub_2146D9F58();
    swift_allocError();
    v17 = v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v17 = MEMORY[0x277D839B0];
    v19 = *v0;
    v20 = *v2 + 32;
    swift_beginAccess();
    v21 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v40[1] = 0xE600000000000000;
    v40[14] = v4;

    v23 = sub_2146DA428();
    MEMORY[0x2160545D0](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v4;
    *(v24 + 40) = 0;
    v40[0] = v21;
    v7 = v40;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, *(v7 + 2) + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v38 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v39 = v11;
    v12 = swift_allocObject();
    *&v37 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    *(v7 + 2) = v10 + 1;
    sub_213FB77C8(&v37, v7 + 40 * v10 + 32);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    LOBYTE(v7) = v5;
    v14 = sub_2144EBC6C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v7) = v14;
      v36 = v11;
      swift_unknownObjectRelease();
      if (v7 != 2)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v7 & 1;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v26 = v25;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v26 = MEMORY[0x277D839B0];
      v27 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_2146EA710;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40[0] = v4;

      v29 = sub_2146DA428();
      MEMORY[0x2160545D0](v29);

      v31 = *(&v37 + 1);
      v30 = v37;
      *(v28 + 56) = &type metadata for XPCCodingKey;
      *(v28 + 64) = v36;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v37 = v27;
      v7 = &v37;
      sub_21468B984(v28);
      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v26, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v7 & 1;
}

__int128 *sub_2144EE5C0()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v19 = MEMORY[0x277D83B88];
    v20 = *v0;
    v21 = *v2 + 32;
    swift_beginAccess();
    v22 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v42[1] = 0xE600000000000000;
    v42[14] = v4;

    v24 = sub_2146DA428();
    MEMORY[0x2160545D0](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v42[0] = v22;
    v14 = v42;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v39 = 0x207865646E49;
    *(&v39 + 1) = 0xE600000000000000;
    v42[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v40 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v41 = v11;
    v12 = swift_allocObject();
    *&v39 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v39, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EB93C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v26 = v16;
      swift_unknownObjectRelease();
      if ((v26 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v38 = sub_2146D9F58();
      swift_allocError();
      v28 = v27;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v28 = MEMORY[0x277D83B88];
      v29 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_2146EA710;
      *&v39 = 0x207865646E49;
      *(&v39 + 1) = 0xE600000000000000;
      v42[0] = v4;

      v31 = sub_2146DA428();
      MEMORY[0x2160545D0](v31);

      v33 = *(&v39 + 1);
      v32 = v39;
      *(v30 + 56) = &type metadata for XPCCodingKey;
      *(v30 + 64) = v11;
      v34 = swift_allocObject();
      *(v30 + 32) = v34;
      *(v34 + 16) = __PAIR128__(v33, v32);
      *(v34 + 32) = v4;
      *(v34 + 40) = 0;
      *&v39 = v29;
      v14 = &v39;
      sub_21468B984(v30);
      sub_2146D9F28();
      (*(*(v38 - 8) + 104))(v28, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144EEADC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v18 = MEMORY[0x277D84900];
    v20 = *v0;
    v21 = *v2 + 32;
    swift_beginAccess();
    v22 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_2146DA428();
    MEMORY[0x2160545D0](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v38, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EBE2C(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100) != 0)
    {
      v36 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v27 = MEMORY[0x277D84900];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144EEFFC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v18 = MEMORY[0x277D84958];
    v20 = *v0;
    v21 = *v2 + 32;
    swift_beginAccess();
    v22 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_2146DA428();
    MEMORY[0x2160545D0](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v38, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EC158(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x10000) != 0)
    {
      v36 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v27 = MEMORY[0x277D84958];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

uint64_t sub_2144EF51C()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v18 = MEMORY[0x277D849A8];
    v20 = *v0;
    v21 = *v2 + 32;
    swift_beginAccess();
    v22 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_2146DA428();
    MEMORY[0x2160545D0](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v38, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EC488(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100000000) != 0)
    {
      v36 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v27 = MEMORY[0x277D849A8];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144EFA3C()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v19 = MEMORY[0x277D84A28];
    v21 = *v0;
    v22 = *v2 + 32;
    swift_beginAccess();
    v23 = *(v21 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v43[1] = 0xE600000000000000;
    v43[14] = v4;

    v25 = sub_2146DA428();
    MEMORY[0x2160545D0](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v4;
    *(v26 + 40) = 0;
    v43[0] = v23;
    v14 = v43;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v41 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v42 = v11;
    v12 = swift_allocObject();
    *&v40 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v40, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144EC7C4(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v27 = v16;
      v39 = v11;
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v38 = sub_2146D9F58();
      swift_allocError();
      v29 = v28;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v29 = MEMORY[0x277D84A28];
      v30 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_2146EA710;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43[0] = v4;

      v32 = sub_2146DA428();
      MEMORY[0x2160545D0](v32);

      v34 = *(&v40 + 1);
      v33 = v40;
      *(v31 + 56) = &type metadata for XPCCodingKey;
      *(v31 + 64) = v39;
      v35 = swift_allocObject();
      *(v31 + 32) = v35;
      *(v35 + 16) = __PAIR128__(v34, v33);
      *(v35 + 32) = v4;
      *(v35 + 40) = 0;
      *&v40 = v30;
      v14 = &v40;
      sub_21468B984(v31);
      sub_2146D9F28();
      (*(*(v38 - 8) + 104))(v29, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144EFF60()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v19 = MEMORY[0x277D83E88];
    v21 = *v0;
    v22 = *v2 + 32;
    swift_beginAccess();
    v23 = *(v21 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v43[1] = 0xE600000000000000;
    v43[14] = v4;

    v25 = sub_2146DA428();
    MEMORY[0x2160545D0](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v4;
    *(v26 + 40) = 0;
    v43[0] = v23;
    v14 = v43;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v41 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v42 = v11;
    v12 = swift_allocObject();
    *&v40 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v40, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ECAF8(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v27 = v16;
      v39 = v11;
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v38 = sub_2146D9F58();
      swift_allocError();
      v29 = v28;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v29 = MEMORY[0x277D83E88];
      v30 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_2146EA710;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43[0] = v4;

      v32 = sub_2146DA428();
      MEMORY[0x2160545D0](v32);

      v34 = *(&v40 + 1);
      v33 = v40;
      *(v31 + 56) = &type metadata for XPCCodingKey;
      *(v31 + 64) = v39;
      v35 = swift_allocObject();
      *(v31 + 32) = v35;
      *(v35 + 16) = __PAIR128__(v34, v33);
      *(v35 + 32) = v4;
      *(v35 + 40) = 0;
      *&v40 = v30;
      v14 = &v40;
      sub_21468B984(v31);
      sub_2146D9F28();
      (*(*(v38 - 8) + 104))(v29, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144F0484()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v18 = MEMORY[0x277D84B78];
    v20 = *v0;
    v21 = *v2 + 32;
    swift_beginAccess();
    v22 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_2146DA428();
    MEMORY[0x2160545D0](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v38, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ECE28(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100) != 0)
    {
      v36 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v27 = MEMORY[0x277D84B78];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144F09A4()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v18 = MEMORY[0x277D84C58];
    v20 = *v0;
    v21 = *v2 + 32;
    swift_beginAccess();
    v22 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_2146DA428();
    MEMORY[0x2160545D0](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v38, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ED158(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x10000) != 0)
    {
      v36 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v27 = MEMORY[0x277D84C58];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

uint64_t sub_2144F0EC4()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v18 = MEMORY[0x277D84CC0];
    v20 = *v0;
    v21 = *v2 + 32;
    swift_beginAccess();
    v22 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v41[1] = 0xE600000000000000;
    v41[14] = v4;

    v24 = sub_2146DA428();
    MEMORY[0x2160545D0](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    v41[0] = v22;
    v14 = v41;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v38 = 0x207865646E49;
    *(&v38 + 1) = 0xE600000000000000;
    v41[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v39 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v40 = v11;
    v12 = swift_allocObject();
    *&v38 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v38, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ED488(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v2);
      return v14;
    }

    v14 = v15;
    v37 = v11;
    swift_unknownObjectRelease();
    if ((v14 & 0x100000000) != 0)
    {
      v36 = sub_2146D9F58();
      swift_allocError();
      v27 = v26;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v27 = MEMORY[0x277D84CC0];
      v28 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_2146EA710;
      *&v38 = 0x207865646E49;
      *(&v38 + 1) = 0xE600000000000000;
      v41[0] = v4;

      v30 = sub_2146DA428();
      MEMORY[0x2160545D0](v30);

      v32 = *(&v38 + 1);
      v31 = v38;
      *(v29 + 56) = &type metadata for XPCCodingKey;
      *(v29 + 64) = v37;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v38 = v28;
      v14 = &v38;
      sub_21468B984(v29);
      sub_2146D9F28();
      (*(*(v36 - 8) + 104))(v27, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2[3] = v4 + 1;
    sub_2144E4BBC(v2);
  }

  return v14;
}

__int128 *sub_2144F13E4()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= xpc_array_get_count(v3))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v19 = MEMORY[0x277D84D38];
    v21 = *v0;
    v22 = *v2 + 32;
    swift_beginAccess();
    v23 = *(v21 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v43[1] = 0xE600000000000000;
    v43[14] = v4;

    v25 = sub_2146DA428();
    MEMORY[0x2160545D0](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v4;
    *(v26 + 40) = 0;
    v43[0] = v23;
    v14 = v43;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v5 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43[0] = v4;
    v6 = sub_2146DA428();
    MEMORY[0x2160545D0](v6);

    swift_beginAccess();
    v7 = *(v5 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
      *(v5 + 32) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_2140954FC((v9 > 1), v10 + 1, 1, v7);
    }

    v41 = &type metadata for XPCCodingKey;
    v11 = sub_2144EE044();
    v42 = v11;
    v12 = swift_allocObject();
    *&v40 = v12;
    *(v12 + 16) = 0x207865646E49;
    *(v12 + 24) = 0xE600000000000000;
    *(v12 + 32) = v4;
    *(v12 + 40) = 0;
    v7[2] = v10 + 1;
    sub_213FB77C8(&v40, &v7[5 * v10 + 4]);
    *(v5 + 32) = v7;
    swift_endAccess();
    v13 = xpc_array_get_value(v3, v4);
    v14 = v5;
    v15 = sub_2144ED7C4(v13);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = v15;
      v27 = v16;
      v39 = v11;
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {
        v2[3] = v4 + 1;
        sub_2144E4BBC(v2);
        return v14;
      }

      v38 = sub_2146D9F58();
      swift_allocError();
      v29 = v28;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v29 = MEMORY[0x277D84D38];
      v30 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_2146EA710;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43[0] = v4;

      v32 = sub_2146DA428();
      MEMORY[0x2160545D0](v32);

      v34 = *(&v40 + 1);
      v33 = v40;
      *(v31 + 56) = &type metadata for XPCCodingKey;
      *(v31 + 64) = v39;
      v35 = swift_allocObject();
      *(v31 + 32) = v35;
      *(v35 + 16) = __PAIR128__(v34, v33);
      *(v35 + 32) = v4;
      *(v35 + 40) = 0;
      *&v40 = v30;
      v14 = &v40;
      sub_21468B984(v31);
      sub_2146D9F28();
      (*(*(v38 - 8) + 104))(v29, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v2);
  }

  return v14;
}

float sub_2144F1908()
{
  v3 = v0;
  v4 = v0[1];
  v5 = v0[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v18 = MEMORY[0x277D83A90];
    v20 = *v0;
    v21 = *v3 + 32;
    swift_beginAccess();
    v22 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v41 = 0xE600000000000000;
    v42 = v5;

    v24 = sub_2146DA428();
    MEMORY[0x2160545D0](v24);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = 0x207865646E49;
    *(v25 + 24) = 0xE600000000000000;
    *(v25 + 32) = v5;
    *(v25 + 40) = 0;
    v40 = v22;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v6 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40 = v5;
    v7 = sub_2146DA428();
    MEMORY[0x2160545D0](v7);

    swift_beginAccess();
    v8 = *(v6 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 32) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2140954FC(0, v8[2] + 1, 1, v8);
      *(v6 + 32) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2140954FC((v10 > 1), v11 + 1, 1, v8);
    }

    v38 = &type metadata for XPCCodingKey;
    v12 = sub_2144EE044();
    v39 = v12;
    v13 = swift_allocObject();
    *&v37 = v13;
    *(v13 + 16) = 0x207865646E49;
    *(v13 + 24) = 0xE600000000000000;
    *(v13 + 32) = v5;
    *(v13 + 40) = 0;
    v8[2] = v11 + 1;
    sub_213FB77C8(&v37, &v8[5 * v11 + 4]);
    *(v6 + 32) = v8;
    swift_endAccess();
    v14 = xpc_array_get_value(v4, v5);
    v15 = sub_2144EDAF8(v14);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v3);
      return v2;
    }

    v26 = v15;
    swift_unknownObjectRelease();
    if ((v26 & 0x100000000) != 0)
    {
      v36 = sub_2146D9F58();
      swift_allocError();
      v28 = v27;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v28 = MEMORY[0x277D83A90];
      v29 = *(v6 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_2146EA710;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40 = v5;

      v31 = sub_2146DA428();
      MEMORY[0x2160545D0](v31);

      v32 = v37;
      *(v30 + 56) = &type metadata for XPCCodingKey;
      *(v30 + 64) = v12;
      v33 = swift_allocObject();
      *(v30 + 32) = v33;
      *(v33 + 16) = v32;
      *(v33 + 32) = v5;
      *(v33 + 40) = 0;
      *&v37 = v29;
      sub_21468B984(v30);
      sub_2146D9F28();
      (*(*(v36 - 8) + 104))(v28, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2 = *&v26;
    v3[3] = v5 + 1;
    sub_2144E4BBC(v3);
  }

  return v2;
}

double sub_2144F1E34()
{
  v3 = v0;
  v4 = v0[1];
  v5 = v0[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v19 = MEMORY[0x277D839F8];
    v21 = *v0;
    v22 = *v3 + 32;
    swift_beginAccess();
    v23 = *(v21 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v44 = 0xE600000000000000;
    v45 = v5;

    v25 = sub_2146DA428();
    MEMORY[0x2160545D0](v25);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v26 = swift_allocObject();
    *(inited + 32) = v26;
    *(v26 + 16) = 0x207865646E49;
    *(v26 + 24) = 0xE600000000000000;
    *(v26 + 32) = v5;
    *(v26 + 40) = 0;
    v43 = v23;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v6 = *v0;
    *&v40 = 0x207865646E49;
    *(&v40 + 1) = 0xE600000000000000;
    v43 = v5;
    v7 = sub_2146DA428();
    MEMORY[0x2160545D0](v7);

    swift_beginAccess();
    v8 = *(v6 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 32) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2140954FC(0, v8[2] + 1, 1, v8);
      *(v6 + 32) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2140954FC((v10 > 1), v11 + 1, 1, v8);
    }

    v41 = &type metadata for XPCCodingKey;
    v12 = sub_2144EE044();
    v42 = v12;
    v13 = swift_allocObject();
    *&v40 = v13;
    *(v13 + 16) = 0x207865646E49;
    *(v13 + 24) = 0xE600000000000000;
    *(v13 + 32) = v5;
    *(v13 + 40) = 0;
    v8[2] = v11 + 1;
    sub_213FB77C8(&v40, &v8[5 * v11 + 4]);
    *(v6 + 32) = v8;
    swift_endAccess();
    v14 = xpc_array_get_value(v4, v5);
    v15 = sub_2144EDCD8(v14);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = v16;
      v39 = v12;
      v28 = *&v15;
      swift_unknownObjectRelease();
      if ((v27 & 1) == 0)
      {
        v2 = v28;
        v3[3] = v5 + 1;
        sub_2144E4BBC(v3);
        return v2;
      }

      v38 = sub_2146D9F58();
      swift_allocError();
      v30 = v29;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v30 = MEMORY[0x277D839F8];
      v31 = *(v6 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_2146EA710;
      *&v40 = 0x207865646E49;
      *(&v40 + 1) = 0xE600000000000000;
      v43 = v5;

      v33 = sub_2146DA428();
      MEMORY[0x2160545D0](v33);

      v34 = v40;
      *(v32 + 56) = &type metadata for XPCCodingKey;
      *(v32 + 64) = v39;
      v35 = swift_allocObject();
      *(v32 + 32) = v35;
      *(v35 + 16) = v34;
      *(v35 + 32) = v5;
      *(v35 + 40) = 0;
      *&v40 = v31;
      sub_21468B984(v32);
      sub_2146D9F28();
      (*(*(v38 - 8) + 104))(v30, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v3);
  }

  return v2;
}

uint64_t sub_2144F2370()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2144F23C4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 25;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_2144F2510(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v18 + 24) = 0;
          *(v18 + 8) = a2 & 0x7FFFFFFF;
          *(v18 + 16) = 0;
        }

        else
        {
          *(v18 + 8) = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 25);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_2144F2708()
{
  if (!qword_280B34FC8[0])
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, qword_280B34FC8);
    }
  }
}

void sub_2144F2764(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2144F2708();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2144F27F0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *(a1 + v6);
    if (v17 >= 2)
    {
      v18 = (v17 + 2147483646) & 0x7FFFFFFF;
    }

    else
    {
      v18 = -1;
    }

    if (v18 + 1 >= 2)
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}