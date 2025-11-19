uint64_t sub_22FEC3DC8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_22FEA5608(a3, a4);
          return sub_22FEEBD98(v13, a2, a3, a4) & 1;
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

BOOL _s16CloudAttestation14Image4ManifestV5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_22FEC4B18(*a1, v3, 0);
      sub_22FEC4B18(v5, v6, 0);
      return v2 == v5;
    }

    goto LABEL_17;
  }

  if (v4 != 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v3)
      {
        if (v7 != 2 || v5 != 3 || v6)
        {
          goto LABEL_17;
        }

        sub_22FEC4B18(*a1, v3, 2);
        v13 = 3;
      }

      else
      {
        if (v7 != 2 || v5 != 2 || v6)
        {
          goto LABEL_17;
        }

        sub_22FEC4B18(*a1, v3, 2);
        v13 = 2;
      }

LABEL_33:
      sub_22FEC4B18(v13, 0, 2);
      return 1;
    }

    if (v2 | v3)
    {
      if (v7 == 2 && v5 == 1 && !v6)
      {
        sub_22FEC4B18(*a1, v3, 2);
        v12 = 1;
        sub_22FEC4B18(1, 0, 2);
        return v12;
      }

      goto LABEL_17;
    }

    if (v7 == 2 && !(v6 | v5))
    {
      sub_22FEC4B18(*a1, v3, 2);
      v13 = 0;
      goto LABEL_33;
    }

LABEL_17:
    sub_22FEC4B00(v5, v6, v7);
    sub_22FEC4B18(v2, v3, v4);
    sub_22FEC4B18(v5, v6, v7);
    return 0;
  }

  if (v7 != 1)
  {
    v14 = *(a1 + 8);

    goto LABEL_17;
  }

  if (v2 != v5 || v3 != v6)
  {
    v9 = *a1;
    v10 = sub_22FFB1BC8();
    sub_22FEC4B00(v5, v6, 1);
    sub_22FEC4B00(v2, v3, 1);
    sub_22FEC4B18(v2, v3, 1);
    sub_22FEC4B18(v5, v6, 1);
    return v10 & 1;
  }

  v12 = 1;
  sub_22FEC4B00(*a1, v3, 1);
  sub_22FEC4B00(v2, v3, 1);
  sub_22FEC4B18(v2, v3, 1);
  sub_22FEC4B18(v2, v3, 1);
  return v12;
}

uint64_t sub_22FEC4190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v33 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v33 - v15;
  v17 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  (*(v19 + 16))(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C88, &unk_22FFC0140);
  if (swift_dynamicCast())
  {
    sub_22FE9B84C(v36, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_22FFB0618();
    v36[0] = v35;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_34;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_22FEC4CC8(v36);
  sub_22FFB1638();
  if (*(&v38 + 1) >> 60 != 15)
  {
    v36[0] = v38;
    goto LABEL_34;
  }

  v34 = v38;
  v20 = sub_22FFB1628();
  *&v36[0] = sub_22FF9F498(v20);
  *(&v36[0] + 1) = v21;
  MEMORY[0x28223BE20](*&v36[0]);
  *(&v33 - 4) = a2;
  *(&v33 - 3) = a3;
  *(&v33 - 2) = a1;
  sub_22FFB0768();
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v23 = *(&v36[0] + 1) >> 62;
  if ((*(&v36[0] + 1) >> 62) <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(DWORD1(v36[0]), v36[0]))
      {
        goto LABEL_38;
      }

      if (v22 == DWORD1(v36[0]) - LODWORD(v36[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v22 == BYTE14(v36[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v25 = *(*&v36[0] + 16);
    v24 = *(*&v36[0] + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v22 == v27)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v23 == 2)
    {
      v28 = *(*&v36[0] + 24);
    }

    else if (v23 == 1)
    {
      v28 = *&v36[0] >> 32;
    }

    else
    {
      v28 = BYTE14(v36[0]);
    }

LABEL_31:
    if (v28 >= v22)
    {
      sub_22FFB0758();
LABEL_33:
      (*(v12 + 8))(v16, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v22)
  {
    v28 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v38 = 0;
  *(&v38 + 7) = 0;
  sub_22FFB18A8();
  if (BYTE1(v35) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v29) = 0;
  do
  {
    *(&v38 + v29) = v35;
    v29 = v29 + 1;
    if ((v29 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v29 == 14)
    {
      *&v35 = v38;
      *(&v35 + 6) = *(&v38 + 6);
      sub_22FFB0778();
      LOBYTE(v29) = 0;
    }

    sub_22FFB18A8();
  }

  while ((BYTE1(v35) & 1) == 0);
  if (v29)
  {
    *&v35 = v38;
    *(&v35 + 6) = *(&v38 + 6);
    sub_22FFB0778();
    sub_22FEA56EC(v34, *(&v34 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  sub_22FEA56EC(v34, *(&v34 + 1));
LABEL_34:
  v30 = v36[0];
  sub_22FEA5608(*&v36[0], *(&v36[0] + 1));
  sub_22FEA55AC(v30, *(&v30 + 1));
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t sub_22FEC471C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FEC4768()
{
  result = qword_27DAF1C20;
  if (!qword_27DAF1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1C20);
  }

  return result;
}

unint64_t sub_22FEC47C0()
{
  result = qword_27DAF1C28;
  if (!qword_27DAF1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1C28);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FEC4844(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22FEC4888(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DarwinInit.SecureConfigSecurityPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DarwinInit.SecureConfigSecurityPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation14Image4ManifestV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22FEC4A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FEC4A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_22FEC4AD4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22FEC4B00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_22FEC4B18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_22FEC4B30()
{
  result = qword_27DAF1C80;
  if (!qword_27DAF1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1C80);
  }

  return result;
}

uint64_t sub_22FEC4B84(uint64_t result, uint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_22FEC4B9C(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t sub_22FEC4B9C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_22FEC4B18(a1, a2, a3);
  }

  else
  {
    return sub_22FEA55AC(a1, a2);
  }
}

uint64_t sub_22FEC4BA8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_22FEC4B00(a1, a2, a3);
  }

  else
  {
    return sub_22FEA5608(a1, a2);
  }
}

_BYTE *sub_22FEC4BB4(_BYTE *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    if (result)
    {
      if (a2)
      {
        v4 = a4;
        if (a2 < 15)
        {
          v13 = sub_22FF55698(result, &result[a2]);
          v12 = 0;
          v14 = v15 & 0xFFFFFFFFFFFFFFLL;
        }

        else
        {
          v6 = sub_22FFB05D8();
          v7 = *(v6 + 48);
          v8 = *(v6 + 52);
          swift_allocObject();
          v9 = sub_22FFB0578();
          v10 = a2;
          v11 = v9;
          if (v10 >= 0x7FFFFFFF)
          {
            v16 = v10;
            sub_22FFB0738();
            v13 = swift_allocObject();
            v12 = 0;
            *(v13 + 16) = 0;
            *(v13 + 24) = v16;
            v14 = v11 | 0x8000000000000000;
          }

          else
          {
            v12 = 0;
            v13 = v10 << 32;
            v14 = v11 | 0x4000000000000000;
          }
        }

        a4 = v4;
      }

      else
      {
        v13 = 0;
        v12 = 0;
        v14 = 0xC000000000000000;
      }
    }

    else
    {
      v14 = 0;
      v13 = a3;
      v12 = 256;
    }

    v18 = *a4;
    v17 = *(a4 + 8);
    *a4 = v13;
    *(a4 + 8) = v14;
    v19 = *(a4 + 16);
    *(a4 + 16) = v12;

    return sub_22FEC4B84(v18, v17, v19);
  }

  return result;
}

uint64_t sub_22FEC4CC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C90, &qword_22FFB3FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Image4Manifest.debugDescription.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  return sub_22FEC4DE8(0, 0xE000000000000000);
}

uint64_t sub_22FEC4DE8(uint64_t a1, unint64_t a2)
{
  v7 = *(v3 + 16);
  v48 = 0;
  v49 = 0xE000000000000000;
  v46 = *v3;
  LOBYTE(v47) = v7;
  result = Image4Manifest.properties.getter();
  if (v4)
  {
    return v2;
  }

  v9 = result;
  v32 = *(result + 16);
  if (!v32)
  {
    v2 = 0;
LABEL_18:

    return v2;
  }

  v10 = 0;
  v30 = result;
  v31 = result + 32;
  v34 = a2;
  v50 = a1;
  while (v10 < *(v9 + 16))
  {
    sub_22FEC52D4(v31 + 48 * v10, &v46);
    v11 = v46;
    v44 = v46;
    sub_22FEA2968(&v47, &v45);
    v42 = v11;

    MEMORY[0x23190DD10](2618, 0xE200000000000000);
    v14 = v42;
    v12 = v14 >> 64;
    v13 = v14;
    *&v42 = a1;
    *(&v42 + 1) = a2;

    MEMORY[0x23190DD10](v13, v12);

    MEMORY[0x23190DD10](v42, *(&v42 + 1));

    sub_22FEC52D4(&v44, &v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C98, &qword_22FFB4028);
    if (!swift_dynamicCast())
    {

      v2 = 0x800000022FFC9C50;
      sub_22FEC4B30();
      swift_allocError();
      *v29 = 0xD00000000000001ELL;
      *(v29 + 8) = 0x800000022FFC9C50;
      *(v29 + 16) = 1;
      swift_willThrow();
      sub_22FEC5344(&v44);
      return v2;
    }

    v15 = *(v39 + 16);
    if (v15)
    {
      v33 = v10;
      v16 = v39 + 32;
      do
      {
        sub_22FEC52D4(v16, &v42);
        v23 = v42;
        v22 = v23 >> 64;
        v21 = v23;
        v39 = v42;
        sub_22FEA2968(&v43, &v40);
        sub_22FEC52D4(&v39, &v37);

        if (swift_dynamicCast())
        {
          v37 = v50;
          v38 = a2;

          MEMORY[0x23190DD10](538976288, 0xE400000000000000);
          v24 = v37;
          v25 = v38;
          v37 = v21;
          v38 = v22;

          MEMORY[0x23190DD10](8250, 0xE200000000000000);
          v26 = sub_22FEB0B54(v35, v36);
          MEMORY[0x23190DD10](v26);

          MEMORY[0x23190DD10](10, 0xE100000000000000);
          v27 = v37;
          v28 = v38;
          v37 = v24;
          v38 = v25;

          MEMORY[0x23190DD10](v27, v28);
          a2 = v34;

          MEMORY[0x23190DD10](v37, v38);

          sub_22FEA55AC(v35, v36);
        }

        else
        {
          v37 = v50;
          v38 = a2;

          MEMORY[0x23190DD10](538976288, 0xE400000000000000);
          v18 = v37;
          v17 = v38;
          v37 = 0;
          v38 = 0xE000000000000000;
          MEMORY[0x23190DD10](v21, v22);
          MEMORY[0x23190DD10](8250, 0xE200000000000000);
          __swift_project_boxed_opaque_existential_1(&v40, v41);
          sub_22FFB1BB8();
          MEMORY[0x23190DD10](10, 0xE100000000000000);
          v19 = v37;
          v20 = v38;
          v37 = v18;
          v38 = v17;

          MEMORY[0x23190DD10](v19, v20);

          MEMORY[0x23190DD10](v37, v38);
        }

        sub_22FEC5344(&v39);
        v16 += 48;
        --v15;
      }

      while (v15);

      v9 = v30;
      a1 = v50;
      v10 = v33;
    }

    else
    {
    }

    ++v10;
    result = sub_22FEC5344(&v44);
    if (v10 == v32)
    {
      v2 = v48;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEC5260()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  return sub_22FEC4DE8(0, 0xE000000000000000);
}

uint64_t sub_22FEC52D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C78, &qword_22FFB3FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEC5344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C78, &qword_22FFB3FE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Image4Manifest.properties.getter()
{
  v1 = sub_22FFB14F8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v113 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = _s8PropertyV5ValueOMa(0);
  v4 = *(*(v103 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v103);
  v101 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = &v91 - v7;
  v112 = sub_22FFB0D78();
  v100 = *(v112 - 8);
  v8 = *(v100 + 64);
  MEMORY[0x28223BE20](v112);
  v111 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Image4Manifest.Property(0);
  v110 = *(v119 - 8);
  v10 = *(v110 + 64);
  v11 = MEMORY[0x28223BE20](v119);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v102 = &v91 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v91 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v97 = &v91 - v20;
  MEMORY[0x28223BE20](v19);
  v99 = &v91 - v21;
  v22 = sub_22FFB0BE8();
  v104 = *(v22 - 8);
  v105 = v22;
  v23 = *(v104 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Image4Manifest.Manifest(0);
  v26 = *(*(v107 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v107);
  v106 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v91 - v29;
  v31 = sub_22FFB0D08();
  v108 = *(v31 - 8);
  v32 = *(v108 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v91 - v36;
  v38 = *v0;
  v39 = v0[1];
  sub_22FEA5608(v38, v39);
  v40 = v39;
  v41 = v37;
  sub_22FEC623C(v38, v40);
  v42 = v109;
  sub_22FFB0E88();

  if (!v42)
  {
    v96 = v30;
    v43 = v108;
    (*(v108 + 16))(v35, v41, v31);
    _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
    sub_22FFB0EA8();
    v95 = 0;
    v93 = v41;
    (*(v104 + 8))(v25, v105);
    v44 = *(v43 + 8);
    v94 = v31;
    v108 = v43 + 8;
    v92 = v44;
    v44(v35, v31);
    v45 = v96;
    result = sub_22FEC721C(v106, v96, type metadata accessor for Image4Manifest.Manifest);
    v47 = *(v45 + *(v107 + 24));
    v109 = *(v47 + 16);
    if (v109)
    {
      v48 = 0;
      v49 = (v100 + 8);
      while (1)
      {
        if (v48 >= *(v47 + 16))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return result;
        }

        v50 = (*(v110 + 80) + 32) & ~*(v110 + 80);
        v25 = *(v110 + 72);
        sub_22FEC7284(v47 + v50 + v25 * v48, v18, type metadata accessor for Image4Manifest.Property);
        v51 = v111;
        sub_22FFB0D48();
        v52 = MEMORY[0x23190D500](v18, v51);
        (*v49)(v51, v112);
        if (v52)
        {
          break;
        }

        ++v48;
        result = sub_22FEC72EC(v18, type metadata accessor for Image4Manifest.Property);
        if (v109 == v48)
        {
          goto LABEL_7;
        }
      }

      v112 = v25;
      v53 = v97;
      sub_22FEC721C(v18, v97, type metadata accessor for Image4Manifest.Property);
      v54 = v53;
      v55 = v99;
      sub_22FEC721C(v54, v99, type metadata accessor for Image4Manifest.Property);
      v56 = v119;
      v57 = v98;
      sub_22FEC7284(v55 + *(v119 + 20), v98, _s8PropertyV5ValueOMa);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_22FEC72EC(v57, _s8PropertyV5ValueOMa);
        sub_22FFB0D38();
        sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
        swift_allocError();
        sub_22FFB0D18();
        swift_willThrow();
        sub_22FEC72EC(v55, type metadata accessor for Image4Manifest.Property);
        goto LABEL_8;
      }

      result = *v57;
      v100 = *(*v57 + 16);
      if (v100)
      {
        v58 = 0;
        v98 = result + v50;
        v25 = MEMORY[0x277D84F90];
        v59 = v102;
        v97 = result;
        while (v58 < *(result + 16))
        {
          v106 = v58;
          v60 = sub_22FEC7284(v98 + v58 * v112, v59, type metadata accessor for Image4Manifest.Property);
          *&v114 = MEMORY[0x23190D510](v60);
          *(&v114 + 1) = v61;
          *&v115 = v62;
          *(&v115 + 1) = v63;
          sub_22FFB14E8();
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CA8, &qword_22FFC0150);
          v110 = sub_22FEC734C();
          v111 = v64;
          v107 = sub_22FFB14C8();
          v66 = v65;
          result = swift_unknownObjectRelease();
          if (!v66)
          {
            goto LABEL_41;
          }

          v67 = v101;
          sub_22FEC7284(v59 + *(v56 + 20), v101, _s8PropertyV5ValueOMa);
          result = swift_getEnumCaseMultiPayload();
          if (result != 3)
          {

            sub_22FEC72EC(v67, _s8PropertyV5ValueOMa);
            *&v114 = 0;
            *(&v114 + 1) = 0xE000000000000000;
            sub_22FFB19B8();

            *&v114 = 0xD00000000000001ALL;
            *(&v114 + 1) = 0x800000022FFC9CC0;
            MEMORY[0x23190DD10](v107, v66);

            sub_22FFB0D38();
            sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
            swift_allocError();
            sub_22FFB0D18();

            swift_willThrow();
            sub_22FEC72EC(v59, type metadata accessor for Image4Manifest.Property);
            sub_22FEC72EC(v99, type metadata accessor for Image4Manifest.Property);
            v92(v93, v94);
            sub_22FEC72EC(v96, type metadata accessor for Image4Manifest.Manifest);
            return v25;
          }

          v104 = v66;
          v105 = v25;
          v68 = *v67;
          v109 = *(*v67 + 16);
          if (v109)
          {
            v69 = 0;
            v70 = v68 + v50;
            v71 = MEMORY[0x277D84F90];
            while (v69 < *(v68 + 16))
            {
              v72 = v50;
              v73 = sub_22FEC7284(v70, v13, type metadata accessor for Image4Manifest.Property);
              *&v114 = MEMORY[0x23190D510](v73);
              *(&v114 + 1) = v74;
              *&v115 = v75;
              *(&v115 + 1) = v76;
              sub_22FFB14E8();
              v77 = sub_22FFB14C8();
              v79 = v78;
              result = swift_unknownObjectRelease();
              if (!v79)
              {
                goto LABEL_40;
              }

              v80 = &v13[*(v119 + 20)];
              sub_22FEC6564(&v117);
              *&v114 = v77;
              *(&v114 + 1) = v79;
              sub_22FEA2968(&v117, &v115);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v71 = sub_22FEC30C0(0, v71[2] + 1, 1, v71);
              }

              v82 = v71[2];
              v81 = v71[3];
              if (v82 >= v81 >> 1)
              {
                v71 = sub_22FEC30C0((v81 > 1), v82 + 1, 1, v71);
              }

              ++v69;
              result = sub_22FEC72EC(v13, type metadata accessor for Image4Manifest.Property);
              v71[2] = v82 + 1;
              v83 = &v71[6 * v82];
              v84 = v116;
              v85 = v115;
              v83[2] = v114;
              v83[3] = v85;
              v83[4] = v84;
              v70 += v112;
              v50 = v72;
              if (v109 == v69)
              {
                goto LABEL_27;
              }
            }

            __break(1u);
            goto LABEL_38;
          }

          v71 = MEMORY[0x277D84F90];
LABEL_27:

          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CB0, &qword_22FFB4030);
          *&v117 = v71;
          *&v114 = v107;
          *(&v114 + 1) = v104;
          sub_22FEA2968(&v117, &v115);
          v25 = v105;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_22FEC309C(0, *(v25 + 16) + 1, 1, v25);
          }

          v59 = v102;
          v56 = v119;
          v87 = *(v25 + 16);
          v86 = *(v25 + 24);
          if (v87 >= v86 >> 1)
          {
            v25 = sub_22FEC309C((v86 > 1), v87 + 1, 1, v25);
          }

          v58 = v106 + 1;
          sub_22FEC72EC(v59, type metadata accessor for Image4Manifest.Property);
          *(v25 + 16) = v87 + 1;
          v88 = (v25 + 48 * v87);
          v89 = v116;
          v90 = v115;
          v88[2] = v114;
          v88[3] = v90;
          v88[4] = v89;
          result = v97;
          if (v58 == v100)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_39;
      }

      v25 = MEMORY[0x277D84F90];
LABEL_35:

      sub_22FEC72EC(v99, type metadata accessor for Image4Manifest.Property);
      v92(v93, v94);
      sub_22FEC72EC(v96, type metadata accessor for Image4Manifest.Manifest);
    }

    else
    {
LABEL_7:
      sub_22FFB0D38();
      sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
      swift_allocError();
      sub_22FFB0D18();
      swift_willThrow();
LABEL_8:
      v92(v93, v94);
      sub_22FEC72EC(v96, type metadata accessor for Image4Manifest.Manifest);
    }
  }

  return v25;
}

uint64_t sub_22FEC623C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FFB0818();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_22FEA55AC(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_22FF6BE0C(v11, 0);
      v15 = sub_22FFB0718();
      sub_22FEA55AC(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t Image4Manifest.Manifest.init(derEncoded:)(uint64_t a1)
{
  v2 = sub_22FFB0BE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
  type metadata accessor for Image4Manifest.Manifest(0);
  sub_22FFB0EA8();
  v7 = sub_22FFB0D08();
  (*(*(v7 - 8) + 8))(a1, v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22FEC6564@<X0>(void *a1@<X8>)
{
  v3 = sub_22FFB14F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Image4Manifest.Property(0);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FFB0C28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s8PropertyV5ValueOMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEC7284(v1, v19, _s8PropertyV5ValueOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v57 = *v19;
      a1[3] = MEMORY[0x277D84D38];
      *a1 = v57;
    }

    else
    {
      v49 = *v19;
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v49;
    }

    return result;
  }

  if (result == 2)
  {
    (*(v12 + 32))(v15, v19, v11);
    v50 = sub_22FFB0C18();
    sub_22FF960FC(v50, v51, v52, v53);
    a1[3] = MEMORY[0x277CC9318];
    *a1 = v54;
    a1[1] = v55;
    return (*(v12 + 8))(v15, v11);
  }

  if (result != 3)
  {
    v56 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    result = sub_22FEC8B3C();
    a1[3] = result;
    *a1 = v56;
    return result;
  }

  v21 = *v19;
  v22 = *(*v19 + 16);
  v59 = a1;
  v60 = v22;
  if (!v22)
  {
    v24 = MEMORY[0x277D84F98];
LABEL_27:

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD0, &unk_22FFB40D0);
    v58 = v59;
    v59[3] = result;
    *v58 = v24;
    return result;
  }

  v23 = 0;
  v24 = MEMORY[0x277D84F98];
  while (v23 < *(v21 + 16))
  {
    v25 = sub_22FEC7284(v21 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v23, v10, type metadata accessor for Image4Manifest.Property);
    *&v67 = MEMORY[0x23190D510](v25);
    *(&v67 + 1) = v26;
    *&v68 = v27;
    *(&v68 + 1) = v28;
    sub_22FFB14E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CA8, &qword_22FFC0150);
    sub_22FEC734C();
    v29 = sub_22FFB14C8();
    v31 = v30;
    v32 = swift_unknownObjectRelease();
    if (!v31)
    {
      goto LABEL_32;
    }

    v33 = &v10[*(v61 + 20)];
    sub_22FEC6564(&v67, v32);
    v65 = v67;
    v66 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v24;
    v36 = sub_22FFA619C(v29, v31);
    v37 = v24[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_30;
    }

    v40 = v35;
    if (v24[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v35)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_22FF8DB1C();
        if (v40)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_22FF8B0B4(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_22FFA619C(v29, v31);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_33;
      }

      v36 = v41;
      if (v40)
      {
LABEL_6:

        v24 = v64;
        sub_22FEC8ACC(&v65, v64[7] + 32 * v36);
        sub_22FEC72EC(v10, type metadata accessor for Image4Manifest.Property);
        goto LABEL_7;
      }
    }

    v24 = v64;
    v64[(v36 >> 6) + 8] |= 1 << v36;
    v43 = (v24[6] + 16 * v36);
    *v43 = v29;
    v43[1] = v31;
    v44 = (v24[7] + 32 * v36);
    v45 = v66;
    *v44 = v65;
    v44[1] = v45;
    sub_22FEC72EC(v10, type metadata accessor for Image4Manifest.Property);
    v46 = v24[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_31;
    }

    v24[2] = v48;
LABEL_7:
    if (v60 == ++v23)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_22FFB1C18();
  __break(1u);
  return result;
}

uint64_t sub_22FEC6AAC()
{
  v1 = *(v0 + 16);
  *&v15[5] = *v0;
  v16 = v1;
  result = Image4Manifest.properties.getter();
  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_10:

LABEL_28:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_29;
  }

  v5 = 0;
  v6 = result + 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    sub_22FEC52D4(v6, &v13);
    v7 = v13 == 1768973683 && v14 == 0xE400000000000000;
    if (v7 || (sub_22FFB1BC8() & 1) != 0)
    {
      break;
    }

    ++v5;
    result = sub_22FEAEA34(&v13, &qword_27DAF1C78, &qword_22FFB3FE8);
    v6 += 48;
    if (v4 == v5)
    {
      goto LABEL_10;
    }
  }

  if (!v14)
  {
    goto LABEL_28;
  }

  sub_22FEA2968(v15, &v17);
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C98, &qword_22FFB4028);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return 0;
    }

    v8 = v13;
    v9 = *(v13 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v13 + 32;
      while (v10 < *(v8 + 16))
      {
        sub_22FEC52D4(v11, &v13);
        v12 = v13 == 1414743876 && v14 == 0xE400000000000000;
        if (v12 || (sub_22FFB1BC8() & 1) != 0)
        {

          if (!v14)
          {
            goto LABEL_28;
          }

          sub_22FEA2968(v15, &v17);
          if (!*(&v18 + 1))
          {
            goto LABEL_29;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            return 0;
          }

          return v13;
        }

        ++v10;
        result = sub_22FEAEA34(&v13, &qword_27DAF1C78, &qword_22FFB3FE8);
        v11 += 48;
        if (v9 == v10)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_33;
    }

    goto LABEL_10;
  }

LABEL_29:
  sub_22FEAEA34(&v17, &qword_27DAF1CC0, &qword_22FFBFA20);
  return 0;
}

uint64_t sub_22FEC6D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - v7;
  v8 = sub_22FFB0BE8();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v13);
  v14 = sub_22FFB0D78();
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0DB8();
  v18 = v40;
  result = sub_22FFB0DC8();
  if (!v18)
  {
    v20 = v38;
    v40 = v17;
    sub_22FFB0DB8();
    sub_22FFB0DC8();
    v21 = v41;
    type metadata accessor for Image4Manifest.Property(0);
    sub_22FFB0B58();
    sub_22FEC8A30(qword_281490320, type metadata accessor for Image4Manifest.Property);
    v22 = sub_22FFB0E68();
    v32 = v14;
    v33 = v22;
    (*(v20 + 8))(v12, v8);
    v23 = sub_22FFB0CC8();
    v38 = a1;
    sub_22FFB0D88();
    v34 = v21;
    v25 = v35;
    v24 = v36;
    v26 = *(*(v23 - 8) + 56);
    v27 = v37;
    v26(v37, 0, 1, v23);
    sub_22FEAEA34(v27, &qword_27DAF1CD8, &qword_22FFB43D0);
    sub_22FFB0D88();
    v28 = v39;
    v29 = v40;
    v26(v24, 0, 1, v23);
    sub_22FEAEA34(v24, &qword_27DAF1CD8, &qword_22FFB43D0);
    (*(v28 + 32))(v25, v29, v32);
    result = type metadata accessor for Image4Manifest.Manifest(0);
    v30 = v33;
    *(v25 + *(result + 20)) = v34;
    *(v25 + *(result + 24)) = v30;
  }

  return result;
}

uint64_t sub_22FEC721C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEC7284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEC72EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FEC734C()
{
  result = qword_28148F0A8;
  if (!qword_28148F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1CA8, &qword_22FFC0150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F0A8);
  }

  return result;
}

uint64_t sub_22FEC73B0(uint64_t a1)
{
  v2 = sub_22FFB0BE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
  sub_22FFB0EA8();
  v7 = sub_22FFB0D08();
  (*(*(v7 - 8) + 8))(a1, v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22FEC7500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_22FFB0D08();
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v68 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v71 = &v62 - v9;
  MEMORY[0x28223BE20](v8);
  v72 = &v62 - v10;
  v73 = _s8PropertyV5ValueOMa(0);
  v11 = *(*(v73 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v73);
  v64 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v62 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v66 = (&v62 - v17);
  MEMORY[0x28223BE20](v16);
  v69 = &v62 - v18;
  v19 = sub_22FFB0BE8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v65 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v70 = &v62 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v62 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v62 - v30;
  v32 = a1;
  sub_22FFB0CD8();
  sub_22FFB0B68();
  sub_22FEC8A30(qword_28148F1F8, MEMORY[0x277D6A8A8]);
  LOBYTE(a1) = sub_22FFB1478();
  v33 = *(v20 + 8);
  v33(v29, v19);
  if (a1)
  {
    (*(v77 + 8))(v32, v76);
    v33(v31, v19);
    return swift_storeEnumTagMultiPayload();
  }

  v63 = v32;
  sub_22FFB0B78();
  v35 = sub_22FFB1478();
  v33(v29, v19);
  if (v35)
  {
    v33(v31, v19);
    v37 = v76;
    v36 = v77;
    v38 = v63;
    (*(v77 + 16))(v72, v63, v76);
    sub_22FFB0CD8();
    v39 = v75;
    v40 = sub_22FFB1758();
    if (v39)
    {
      return (*(v36 + 8))(v38, v37);
    }

    v51 = v40;
    (*(v36 + 8))(v38, v37);
    v52 = v51 & 1;
    v53 = v69;
    *v69 = v52;
    swift_storeEnumTagMultiPayload();
    v54 = v53;
    return sub_22FEC721C(v54, v74, _s8PropertyV5ValueOMa);
  }

  sub_22FFB0B88();
  v41 = sub_22FFB1478();
  v33(v29, v19);
  if (v41)
  {
    v33(v31, v19);
    v43 = v76;
    v42 = v77;
    v44 = v63;
    (*(v77 + 16))(v71, v63, v76);
    sub_22FFB0CD8();
    sub_22FEC8A78();
    v45 = v75;
    sub_22FFB0CA8();
    if (!v45)
    {
      (*(v42 + 8))(v44, v43);
      v46 = v66;
      *v66 = v78;
      swift_storeEnumTagMultiPayload();
      v47 = v46;
      return sub_22FEC721C(v47, v74, _s8PropertyV5ValueOMa);
    }

    return (*(v42 + 8))(v44, v43);
  }

  sub_22FFB0B48();
  v48 = sub_22FFB1478();
  v33(v29, v19);
  if (v48)
  {
    v33(v31, v19);
    sub_22FFB0C28();
    v43 = v76;
    v42 = v77;
    v44 = v63;
    (*(v77 + 16))(v68, v63, v76);
    v49 = v67;
    v50 = v75;
    sub_22FFB0DE8();
    if (!v50)
    {
      (*(v42 + 8))(v44, v43);
      swift_storeEnumTagMultiPayload();
      v47 = v49;
      return sub_22FEC721C(v47, v74, _s8PropertyV5ValueOMa);
    }

    return (*(v42 + 8))(v44, v43);
  }

  sub_22FFB0B58();
  v55 = sub_22FFB1478();
  v33(v29, v19);
  v33(v31, v19);
  if (v55)
  {
    type metadata accessor for Image4Manifest.Property(0);
    v56 = v65;
    sub_22FFB0B58();
    sub_22FEC8A30(qword_281490320, type metadata accessor for Image4Manifest.Property);
    v57 = v63;
    v58 = v75;
    v59 = sub_22FFB0E78();
    if (!v58)
    {
      v60 = v59;
      (*(v77 + 8))(v57, v76);
      v33(v56, v19);
      v61 = v64;
      *v64 = v60;
      swift_storeEnumTagMultiPayload();
      v54 = v61;
      return sub_22FEC721C(v54, v74, _s8PropertyV5ValueOMa);
    }

    (*(v77 + 8))(v57, v76);
    return (v33)(v56, v19);
  }

  else
  {
    sub_22FFB0D38();
    sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
    swift_allocError();
    sub_22FFB0D18();
    swift_willThrow();
    return (*(v77 + 8))(v63, v76);
  }
}

uint64_t Image4Manifest.Property.init(derEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_22FFB0BA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = sub_22FFB0BE8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v27[0] = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - v16;
  v31 = a1;
  sub_22FFB0CD8();
  sub_22FFB0BC8();
  v18 = *(v12 + 8);
  v28 = v11;
  v18(v17, v11);
  (*(v4 + 104))(v8, *MEMORY[0x277D6A8A0], v3);
  LOBYTE(a1) = sub_22FFB0B98();
  v19 = *(v4 + 8);
  v19(v8, v3);
  v19(v10, v3);
  if (a1)
  {
    v20 = v28;
    v21 = v27[0];
    v22 = v31;
    sub_22FFB0CD8();
    type metadata accessor for Image4Manifest.Property(0);
    sub_22FFB0EA8();
    v23 = sub_22FFB0D08();
    (*(*(v23 - 8) + 8))(v22, v23);
    return (v18)(v21, v20);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_22FFB19B8();
    MEMORY[0x23190DD10](0xD000000000000015, 0x800000022FFC9CE0);
    v25 = v31;
    sub_22FFB0CD8();
    sub_22FFB0BC8();
    v18(v17, v28);
    sub_22FFB1A98();
    v19(v10, v3);
    sub_22FFB0D38();
    sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
    swift_allocError();
    sub_22FFB0D18();

    swift_willThrow();
    v26 = sub_22FFB0D08();
    return (*(*(v26 - 8) + 8))(v25, v26);
  }
}

uint64_t sub_22FEC8220()
{
  v0 = sub_22FFB0BE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CC8, &qword_22FFBEEA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_22FFB0D08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0C48();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF1CC8, &qword_22FFBEEA0);
    sub_22FFB0D38();
    sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
    swift_allocError();
    sub_22FFB0D18();
    return swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_22FFB0CD8();
    type metadata accessor for Image4Manifest.Property(0);
    sub_22FFB0EA8();
    (*(v1 + 8))(v4, v0);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_22FEC8524@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = _s8PropertyV5ValueOMa(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FFB0BE8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22FFB0D78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0DB8();
  result = sub_22FFB0DC8();
  if (!v1)
  {
    v13 = v17;
    sub_22FEC8A30(qword_2814903D0, _s8PropertyV5ValueOMa);
    v14 = v18;
    sub_22FFB0D88();
    (*(v8 + 32))(v13, v11, v7);
    v15 = type metadata accessor for Image4Manifest.Property(0);
    return sub_22FEC721C(v14, v13 + *(v15 + 20), _s8PropertyV5ValueOMa);
  }

  return result;
}

void sub_22FEC87C8()
{
  sub_22FFB0D78();
  if (v0 <= 0x3F)
  {
    sub_22FEC8854();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FEC8854()
{
  if (!qword_27DAF1CB8)
  {
    type metadata accessor for Image4Manifest.Property(255);
    v0 = sub_22FFB1738();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAF1CB8);
    }
  }
}

uint64_t sub_22FEC88D4()
{
  result = sub_22FFB0D78();
  if (v1 <= 0x3F)
  {
    result = _s8PropertyV5ValueOMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FEC89A8()
{
  sub_22FFB0C28();
  if (v0 <= 0x3F)
  {
    sub_22FEC8854();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_22FEC8A30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FEC8A78()
{
  result = qword_28148F090;
  if (!qword_28148F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F090);
  }

  return result;
}

uint64_t sub_22FEC8ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CC0, &qword_22FFBFA20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FEC8B3C()
{
  result = qword_28148F0C8;
  if (!qword_28148F0C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28148F0C8);
  }

  return result;
}

uint64_t sub_22FEC8B88()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB059D0);
  __swift_project_value_buffer(v0, qword_27DB059D0);
  return sub_22FFB12E8();
}

uint64_t MuxValidator.init(environment:_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v8 = sub_22FF9A468();
  if (v8 == 2)
  {
    v9 = 0x3F8u >> v7;
  }

  else
  {
    v9 = v8;
  }

  *(a4 + 16) = v9 & 1;
  result = sub_22FF9A468();
  if (result == 2)
  {
    v11 = 0x3C0u >> v7;
  }

  else
  {
    v11 = result;
  }

  *(a4 + 17) = v11 & 1;
  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t MuxValidator.policy.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE0, &unk_22FFB40E0);
  v2 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v39[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39[-v6];
  v8 = type metadata accessor for X509Policy();
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v39[-v13];
  v40 = *(v1 + 16);
  v15 = *(v1 + 17);
  v16 = MEMORY[0x277D84F90];
  v44[0] = MEMORY[0x277D84F90];
  if (v15 == 1)
  {
    if (qword_281490B50 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (qword_281490B50 != -1)
    {
      swift_once();
    }

    v18 = qword_2814916A0;
    v19 = qword_27DAF1268;

    if (v19 != -1)
    {
      swift_once();
    }

    v45 = v18;

    sub_22FECB2C8(v20);
    v17 = v45;
  }

  sub_22FECB2C8(v17);
  v21 = v44[0];
  v22 = sub_22FFB0908();
  v23 = *(*(v22 - 8) + 56);
  v23(v7, 1, 1, v22);
  *(v14 + 1) = v16;
  v24 = v8[6];
  v23(&v14[v24], 1, 1, v22);
  v25 = &v14[v8[7]];
  *v25 = 0;
  v25[8] = 1;
  v26 = &v14[v8[8]];
  v27 = v40;
  *v14 = v40;
  sub_22FED2C04(v21);
  sub_22FEB3E04(v7, &v14[v24]);
  *v26 = 0;
  v26[1] = 0;
  *v25 = 0;
  v25[8] = 1;
  SEPAttestationPolicy.init(insecure:)(v27 ^ 1, v44);
  v28 = v44[0];
  v29 = v44[1];
  v30 = v44[2];
  sub_22FECB3B8(v14, v12);
  v31 = v41;
  sub_22FECB3B8(v12, v41);
  v32 = v42;
  v33 = &v31[*(v42 + 48)];
  *v33 = v28;
  v33[1] = v29;
  v33[2] = v30;
  v34 = v31;
  v35 = v43;
  sub_22FECB41C(v34, v43);
  v36 = v35 + *(v32 + 48);
  v37 = v33[2];
  *v36 = *v33;
  *(v36 + 16) = v37;
  sub_22FECB480(v28);
  sub_22FE9AC3C(v29);
  sub_22FECB490(v14);
  sub_22FEBAFF4(v28);
  sub_22FEA5C80(v29);
  return sub_22FECB490(v12);
}

uint64_t MuxValidator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x277D85DE8];
  *(v7 + 216) = a5;
  *(v7 + 224) = a6;
  *(v7 + 200) = a3;
  *(v7 + 208) = a4;
  *(v7 + 184) = a1;
  *(v7 + 192) = a2;
  v8 = *(*(sub_22FFB0FE8() - 8) + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  v9 = sub_22FFB13C8();
  *(v7 + 240) = v9;
  v10 = *(v9 - 8);
  *(v7 + 248) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  v12 = sub_22FFB1398();
  *(v7 + 264) = v12;
  v13 = *(v12 - 8);
  *(v7 + 272) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280) - 8) + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CF0, &unk_22FFB4100) - 8) + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = *v6;
  *(v7 + 122) = *(v6 + 16);
  *(v7 + 123) = *(v6 + 17);
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FEC92F0, 0, 0);
}

uint64_t sub_22FEC92F0()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 123);
  v2 = *(v0 + 122);
  v3 = *(v0 + 312);
  v9 = *(v0 + 320);
  *(v0 + 144) = sub_22FFA7050(MEMORY[0x277D84F90]);
  *(v0 + 104) = v9;
  *(v0 + 120) = v2;
  *(v0 + 121) = v1;
  MuxValidator.policy.getter(v3);
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_22FEC9418;
  v5 = *(v0 + 312);
  v6 = *(v0 + 208);
  v7 = *MEMORY[0x277D85DE8];

  return sub_22FFA46B8(v6, v0 + 144);
}

uint64_t sub_22FEC9418()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);

    v5 = sub_22FEC9FF8;
  }

  else
  {
    sub_22FEAEA34(*(v2 + 312), &qword_27DAF1CF0, &unk_22FFB4100);
    v5 = sub_22FEC9580;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FEC9580()
{
  v95 = v0;
  v1 = v0;
  v94 = *MEMORY[0x277D85DE8];
  v3 = v0[18];
  v2 = v0 + 18;
  AttestationPolicyContext.validatedAttestation.getter(&v91);
  v4 = v91;
  *(v2 + 13) = v91;
  v5 = v92;
  *(v2 + 14) = v92;

  if (*(&v4 + 1) >> 60 == 15)
  {
    if (qword_27DAF1258 != -1)
    {
      swift_once();
    }

    v6 = sub_22FFB12F8();
    __swift_project_value_buffer(v6, qword_27DB059D0);
    v7 = sub_22FFB12D8();
    v8 = sub_22FFB1838();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22FE99000, v7, v8, "missing validated attestation", v9, 2u);
      MEMORY[0x23190EFF0](v9, -1, -1);
    }

    sub_22FECB804();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  v1[20] = 0;
  v11 = v1[43];
  v1[19] = 0;
  v12 = swift_task_alloc();
  *(v12 + 16) = v1 + 19;
  *(v12 + 24) = v1 + 20;
  sub_22FED55F8(v5, *(&v5 + 1), sub_22FEBF260);

  if (*(&v91 + 1) >> 60 != 15)
  {
    sub_22FEA56EC(v91, *(&v91 + 1));
    goto LABEL_13;
  }

  v13 = v1[26];
  v14 = (*(v13 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2 || *(v15 + 16) == *(v15 + 24))
    {
      goto LABEL_31;
    }

    goto LABEL_13;
  }

  if (!v17)
  {
    if ((v16 & 0xFF000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_13:
    v2[3] = 0;
    v2[4] = 0;
    v18 = swift_task_alloc();
    *(v18 + 16) = v2 + 3;
    *(v18 + 24) = v2 + 4;
    sub_22FED55F8(v5, *(&v5 + 1), sub_22FEBFA3C);

    if (*(&v91 + 1) >> 60 == 15)
    {
      if (qword_27DAF1258 != -1)
      {
        swift_once();
      }

      v19 = sub_22FFB12F8();
      __swift_project_value_buffer(v19, qword_27DB059D0);
      v20 = sub_22FFB12D8();
      v21 = sub_22FFB1838();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22FE99000, v20, v21, "missing nonce from validated attestation", v22, 2u);
        MEMORY[0x23190EFF0](v22, -1, -1);
      }

      sub_22FECB804();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
      v25 = v4 >> 64;
      v24 = v4;
      v27 = v5 >> 64;
      v26 = v5;
    }

    else
    {
      v88 = *(&v91 + 1);
      v89 = v91;
      v28 = v1[36];
      v29 = v1[32];
      v86 = v1[31];
      v30 = v1[30];
      v31 = v1[26];
      v32 = (*(v31 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v33 = *v32;
      v34 = v32[1];
      v84 = v32;
      sub_22FEA5608(*v32, v34);
      sub_22FECB9C4(&qword_28148F198, MEMORY[0x277CC5540]);
      sub_22FFB1388();
      sub_22FEA5608(v33, v34);
      sub_22FF9EA78(v33, v34);
      sub_22FEA55AC(v33, v34);
      sub_22FFB1368();
      sub_22FEA55AC(v33, v34);
      (*(v86 + 8))(v29, v30);
      if ((sub_22FECAD68(v89, v88) & 1) == 0)
      {
        if (qword_27DAF1258 != -1)
        {
          swift_once();
        }

        v40 = v1[35];
        v41 = v1[36];
        v42 = v1[33];
        v43 = v1[34];
        v44 = sub_22FFB12F8();
        __swift_project_value_buffer(v44, qword_27DB059D0);
        (*(v43 + 16))(v40, v41, v42);
        sub_22FEA5608(v89, v88);
        v45 = sub_22FFB12D8();
        v46 = sub_22FFB1838();
        sub_22FEA56EC(v89, v88);
        v47 = os_log_type_enabled(v45, v46);
        v49 = v1[34];
        v48 = v1[35];
        v50 = v1[33];
        if (v47)
        {
          v51 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *&v91 = v87;
          *v51 = 136446466;
          v52 = sub_22FEB0B54(v89, v88);
          v85 = v46;
          v54 = sub_22FF9E448(v52, v53, &v91);

          *(v51 + 4) = v54;
          *(v51 + 12) = 2082;
          v55 = sub_22FF95DBC();
          v57 = v56;
          v58 = *(v49 + 8);
          v58(v48, v50);
          v59 = sub_22FF9E448(v55, v57, &v91);

          *(v51 + 14) = v59;
          _os_log_impl(&dword_22FE99000, v45, v85, "app data integrity check failed: (nonce:%{public}s != digest:%{public}s", v51, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190EFF0](v87, -1, -1);
          v60 = v51;
          v61 = v88;
          MEMORY[0x23190EFF0](v60, -1, -1);
        }

        else
        {

          v61 = v88;
          v58 = *(v49 + 8);
          v58(v48, v50);
        }

        v70 = v1[36];
        v71 = v1[33];
        sub_22FECB804();
        swift_allocError();
        *v72 = 2;
        swift_willThrow();
        sub_22FECB858(v4, *(&v4 + 1), v5, *(&v5 + 1));
        sub_22FEA56EC(v89, v61);
        v58(v70, v71);
        goto LABEL_37;
      }

      v35 = v1[37];
      v36 = v1[29];
      v37 = type metadata accessor for Proto_AppData(0);
      v38 = *v84;
      v39 = v84[1];
      v1[16] = *v84;
      v1[17] = v39;
      v93 = 0;
      v91 = 0u;
      v92 = 0u;
      sub_22FEA5608(v38, v39);
      sub_22FFB0FD8();
      sub_22FECB9C4(qword_2814906B0, type metadata accessor for Proto_AppData);
      sub_22FFB1188();
      if (!v11)
      {
        v82 = v1[37];
        v83 = v1[38];
        (*(v1[34] + 8))(v1[36], v1[33]);
        sub_22FEA56EC(v89, v88);
        (*(*(v37 - 8) + 56))(v82, 0, 1, v37);
        sub_22FECB8A8(v82, v83);
        goto LABEL_32;
      }

      (*(v1[34] + 8))(v1[36], v1[33]);
      sub_22FEA56EC(v89, v88);
      v24 = v4;
      v26 = v5;
      v25 = *(&v4 + 1);
      v27 = *(&v5 + 1);
    }

    sub_22FECB858(v24, v25, v26, v27);
LABEL_37:
    v74 = v1[38];
    v73 = v1[39];
    v76 = v1[36];
    v75 = v1[37];
    v77 = v1[35];
    v78 = v1[32];
    v79 = v1[29];

    v80 = v1[1];
    v81 = *MEMORY[0x277D85DE8];

    return v80();
  }

  if (v15 != v15 >> 32)
  {
    goto LABEL_13;
  }

LABEL_31:
  v62 = v1[38];
  v63 = type metadata accessor for Proto_AppData(0);
  (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
LABEL_32:
  v90 = (v1[40] + *v1[40]);
  v64 = *(v1[40] + 4);
  v65 = swift_task_alloc();
  v1[48] = v65;
  *v65 = v1;
  v65[1] = sub_22FECA0F8;
  v66 = v1[41];
  v67 = v1[38];
  v68 = *MEMORY[0x277D85DE8];

  return v90(v1 + 2, v67);
}

uint64_t sub_22FEC9FF8()
{
  v12 = *MEMORY[0x277D85DE8];
  sub_22FEAEA34(v0[39], &qword_27DAF1CF0, &unk_22FFB4100);
  v1 = v0[43];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_22FECA0F8()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_22FECA5F4;
  }

  else
  {
    v3 = sub_22FECA238;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FECA238()
{
  v1 = v0;
  v15 = *MEMORY[0x277D85DE8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v14 = (*(v3 + 64) + **(v3 + 64));
  v4 = *(*(v3 + 64) + 4);
  v5 = swift_task_alloc();
  v1[50] = v5;
  *v5 = v1;
  v5[1] = sub_22FECA39C;
  v6 = v1[27];
  v7 = v1[28];
  v8 = v1[25];
  v9 = v1[26];
  v10 = v1[23];
  v11 = v1[24];
  v12 = *MEMORY[0x277D85DE8];

  return v14(v10, v11, v8, v9, v6, v7, v2, v3);
}

uint64_t sub_22FECA39C()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_22FECA704;
  }

  else
  {
    v3 = sub_22FECA4DC;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FECA4DC()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[29];
  sub_22FECB858(v0[44], v0[45], v0[46], v0[47]);
  sub_22FEAEA34(v1, &qword_27DAF1CE8, &qword_22FFB4280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_22FECA5F4()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[38];
  sub_22FECB858(v0[44], v0[45], v0[46], v0[47]);
  sub_22FEAEA34(v1, &qword_27DAF1CE8, &qword_22FFB4280);
  v2 = v0[49];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[32];
  v9 = v0[29];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_22FECA704()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[38];
  sub_22FECB858(v0[44], v0[45], v0[46], v0[47]);
  sub_22FEAEA34(v1, &qword_27DAF1CE8, &qword_22FFB4280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[51];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[32];
  v9 = v0[29];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_22FECA81C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FFB13B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22FFB0818();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62 == 2)
  {
    v16 = *(a2 + 16);
  }

  sub_22FEA5608(a2, a3);
  sub_22FFB0828();
  (*(v7 + 16))(v10, a1, v6);
  sub_22FECB9C4(&qword_28148F1A0, MEMORY[0x277CC52C8]);
  sub_22FFB1608();
  v17 = v26;
  v18 = *(v26 + 16);
  sub_22FECB9C4(&qword_281491358, MEMORY[0x277CC92E0]);
  result = sub_22FFB18A8();
  v20 = v27;
  if (v27 == v18)
  {
LABEL_9:
    v21 = v25;
LABEL_10:
    (*(v12 + 8))(v15, v11);

    return v21;
  }

  else
  {
    while ((v20 & 0x8000000000000000) == 0)
    {
      if (v20 >= *(v17 + 16))
      {
        goto LABEL_12;
      }

      v21 = 0;
      v22 = v20 + 1;
      v23 = *(v17 + 32 + v20);
      v27 = v22;
      if ((v25 & 1) != 0 || v24[14] != v23)
      {
        goto LABEL_10;
      }

      result = sub_22FFB18A8();
      v20 = v27;
      if (v27 == v18)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FECAAF4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22FFB0818();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-v14];
  if (a4 >> 62 == 2)
  {
    v16 = *(a3 + 16);
  }

  sub_22FEA5608(a3, a4);
  sub_22FFB0828();
  if (a2 >> 62 == 2)
  {
    v17 = *(a1 + 16);
  }

  sub_22FEA5608(a1, a2);
  sub_22FFB0828();
  sub_22FECB9C4(&qword_281491358, MEMORY[0x277CC92E0]);
  sub_22FFB18A8();
  sub_22FFB18A8();
  v18 = v22;
  if ((v24 & 1) == 0)
  {
    while ((v18 & 1) == 0 && v23 == v21[12])
    {
      sub_22FFB18A8();
      sub_22FFB18A8();
      v18 = v22;
      if (v24 == 1)
      {
        goto LABEL_11;
      }
    }

    v18 = 0;
  }

LABEL_11:
  v19 = *(v9 + 8);
  v19(v13, v8);
  v19(v15, v8);
  return v18;
}

uint64_t sub_22FECAD68(uint64_t a1, unint64_t a2)
{
  v5 = sub_22FFB0818();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22FFB1398();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  (*(v13 + 16))(&v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v10);
  sub_22FECB9C4(&qword_28148F1B8, MEMORY[0x277CC5290]);
  sub_22FFB1608();
  if (a2 >> 62 == 2)
  {
    v14 = *(a1 + 16);
  }

  sub_22FEA5608(a1, a2);
  result = sub_22FFB0828();
  v16 = v23;
  v17 = *(v23 + 16);
  while (1)
  {
    v18 = v24;
    if (v24 == v17)
    {
      v19 = 0;
      goto LABEL_9;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v24 >= *(v16 + 16))
    {
      goto LABEL_16;
    }

    v19 = *(v16 + 32 + v24++);
LABEL_9:
    sub_22FECB9C4(&qword_281491358, MEMORY[0x277CC92E0]);
    result = sub_22FFB18A8();
    if (v18 == v17 || (v22 & 1) != 0)
    {
      v20 = (v18 == v17) & v22;
      goto LABEL_14;
    }

    if (v19 != v21[14])
    {
      v20 = 0;
LABEL_14:
      (*(v6 + 8))(v9, v5);

      return v20;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22FECB038(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FFB0818();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62 == 2)
  {
    v11 = *(a2 + 16);
  }

  sub_22FEA5608(a2, a3);
  sub_22FFB0828();
  v12 = *(a1 + 16);
  sub_22FECB9C4(&qword_281491358, MEMORY[0x277CC92E0]);
  sub_22FFB18A8();
  if (v12)
  {
    v13 = (a1 + 32);
    while (1)
    {
      v14 = 0;
      if (v18)
      {
        break;
      }

      v15 = *v13++;
      if (v17[14] != v15)
      {
        break;
      }

      sub_22FFB18A8();
      if (!--v12)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v14 = v18;
  }

  (*(v7 + 8))(v10, v6);
  return v14;
}

uint64_t sub_22FECB1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return MuxValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FECB2C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22FFB1AB8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_22FFB1AB8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_22FECB5E4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22FECB684(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22FECB3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for X509Policy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FECB41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for X509Policy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22FECB480(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_22FECB490(uint64_t a1)
{
  v2 = type metadata accessor for X509Policy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FECB4EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22FEC3564(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22FECB5E4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22FFB1AB8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22FFB19E8();
  *v1 = result;
  return result;
}

uint64_t sub_22FECB684(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FFB1AB8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FFB1AB8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FECBA0C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D00, &qword_22FFB4170);
            v9 = sub_22FEC0A14(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SecCertificate(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22FECB804()
{
  result = qword_27DAF1CF8;
  if (!qword_27DAF1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1CF8);
  }

  return result;
}

uint64_t sub_22FECB858(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22FEA55AC(result, a2);

    return sub_22FEA55AC(a3, a4);
  }

  return result;
}

uint64_t sub_22FECB8A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FECB92C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_22FECB974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FECB9C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FECBA0C()
{
  result = qword_27DAF1D08;
  if (!qword_27DAF1D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1D00, &qword_22FFB4170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceModePolicy.Constraint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceModePolicy.Constraint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FECBBC8(uint64_t a1)
{
  v2 = sub_22FECBCC0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FECBC04(uint64_t a1)
{
  v2 = sub_22FECBCC0();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22FECBC6C()
{
  result = qword_27DAF1D10;
  if (!qword_27DAF1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D10);
  }

  return result;
}

unint64_t sub_22FECBCC0()
{
  result = qword_27DAF1D18;
  if (!qword_27DAF1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D18);
  }

  return result;
}

uint64_t sub_22FECBD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 24))
  {
    sub_22FEA2968(a1, v14);
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    sub_22FF8C944(v14, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v13;
  }

  else
  {
    sub_22FEAEA34(a1, &qword_27DAF1A78, &unk_22FFB3A50);
    sub_22FF8A518(a2, a3, a4, a5, v14);

    return sub_22FEAEA34(v14, &qword_27DAF1A78, &unk_22FFB3A50);
  }

  return result;
}

uint64_t sub_22FECBE04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_22FFB0CC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_22FEAEA34(a1, &qword_27DAF1CD8, &qword_22FFB43D0);
    v15 = *v3;
    v16 = sub_22FFA6338(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22FF8DFF8();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_22FF8C62C(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_22FEAEA34(v9, &qword_27DAF1CD8, &qword_22FFB43D0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_22FF8CF6C(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_22FECC054()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DAF1D20);
  __swift_project_value_buffer(v0, qword_27DAF1D20);
  return sub_22FFB12E8();
}

uint64_t static ProxiedReleasePolicy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAF1260 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12F8();
  v3 = __swift_project_value_buffer(v2, qword_27DAF1D20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProxiedReleasePolicy.init(proxyingAttestation:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = v59 - v9;
  v10 = sub_22FFB0F18();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v61 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D40, &qword_22FFB4278);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = v59 - v15;
  v16 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22FFB0FE8();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v59 - v27;
  v29 = type metadata accessor for Proto_AppData(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v67 = a1;
  v35 = (*(a1 + v34) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v36 = v35[1];
  v72 = *v35;
  v73 = v36;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  sub_22FEA5608(v72, v36);
  sub_22FFB0FD8();
  sub_22FECE640(qword_2814906B0, type metadata accessor for Proto_AppData);
  sub_22FFB1188();
  v59[1] = v24;
  v37 = v16;
  v38 = v60;
  v39 = v61;
  (*(v30 + 56))(v28, 0, 1, v29);
  sub_22FECE578(v28, v33, type metadata accessor for Proto_AppData);
  v40 = v66;
  sub_22FECC994(&v33[*(v29 + 32)], v66);
  v41 = *(v64 + 48);
  v42 = v41(v40, 1, v65);
  v43 = v33;
  if (v42 == 1)
  {
    sub_22FFB0F08();
    v44 = v41(v66, 1, v65);
    v45 = v37;
    v46 = v62;
    if (v44 != 1)
    {
      sub_22FEAEA34(v66, &qword_27DAF1D38, &qword_22FFB4270);
    }
  }

  else
  {
    (*(v64 + 32))(v39, v66, v65);
    v45 = v37;
    v46 = v62;
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  sub_22FFB0FD8();
  sub_22FECE640(qword_281490F70, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
  sub_22FFB1158();
  v47 = v63;
  (*(v46 + 56))(v38, 0, 1, v45);
  sub_22FECE578(v38, v19, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
  v49 = *v19;
  v50 = *(*v19 + 16);
  if (v50)
  {
    v66 = v43;
    *&v69 = MEMORY[0x277D84F90];
    sub_22FECD9FC(0, v50, 0);
    v51 = v69;
    v52 = v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v53 = *(v47 + 72);
    do
    {
      sub_22FECE510(v52, v6, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
      v54 = *v6;
      v55 = v6[1];
      sub_22FEA5608(*v6, v55);
      sub_22FECE5E0(v6, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
      *&v69 = v51;
      v57 = *(v51 + 16);
      v56 = *(v51 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_22FECD9FC((v56 > 1), v57 + 1, 1);
        v51 = v69;
      }

      *(v51 + 16) = v57 + 1;
      v58 = v51 + 16 * v57;
      *(v58 + 32) = v54;
      *(v58 + 40) = v55;
      v52 += v53;
      --v50;
    }

    while (v50);
    sub_22FECE5E0(v66, type metadata accessor for Proto_AppData);
    sub_22FECE5E0(v19, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
  }

  else
  {
    sub_22FECE5E0(v43, type metadata accessor for Proto_AppData);
    sub_22FECE5E0(v19, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
    v51 = MEMORY[0x277D84F90];
  }

  result = sub_22FECE5E0(v67, type metadata accessor for AttestationBundle);
  *v68 = v51;
  return result;
}

uint64_t sub_22FECC994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ProxiedReleasePolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v4 = sub_22FFB0818();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v2;
  v3[23] = v7;
  v3[24] = v8;

  return MEMORY[0x2822009F8](sub_22FECCAC8, 0, 0);
}

uint64_t sub_22FECCAC8()
{
  v58 = v0;
  if (!*(*(v0 + 192) + 16))
  {
    if (qword_27DAF1260 != -1)
    {
      swift_once();
    }

    v10 = sub_22FFB12F8();
    __swift_project_value_buffer(v10, qword_27DAF1D20);
    v11 = sub_22FFB12D8();
    v12 = sub_22FFB1838();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FE99000, v11, v12, "Empty proxied releases, production clients will reject this proxy node attestation", v13, 2u);
      MEMORY[0x23190EFF0](v13, -1, -1);
    }

    goto LABEL_13;
  }

  v1 = **(v0 + 160);
  if (*(v1 + 16) && (v2 = sub_22FFA62AC(&type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x44657361656C6572, 0xED00007473656769), (v3 & 1) != 0))
  {
    sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v0 + 48);
    sub_22FEAEA34(v0 + 48, &qword_27DAF1A78, &unk_22FFB3A50);
    *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A78, &unk_22FFB3A50);
    v4 = swift_allocObject();
    *(v0 + 16) = v4;
    if (*(v1 + 16))
    {
      v5 = sub_22FFA62AC(&type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x44657361656C6572, 0xED00007473656769);
      v7 = v6;

      if (v7)
      {
        sub_22FEBF2A4(*(v1 + 56) + 32 * v5, v4 + 16);
        goto LABEL_16;
      }
    }

    else
    {
    }

    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
  }

  else
  {
    v8 = *(v0 + 152);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    sub_22FEAEA34(v0 + 48, &qword_27DAF1A78, &unk_22FFB3A50);
    v9 = sub_22FECD238(v8);
    v16 = *(v0 + 160);
    v17 = MEMORY[0x277CC9318];
    v57[3] = MEMORY[0x277CC9318];
    v57[0] = v9;
    v57[1] = v18;
    v19 = v9;
    v20 = v18;
    sub_22FEA5608(v9, v18);
    sub_22FECBD14(v57, &type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x44657361656C6572, 0xED00007473656769);
    *(v0 + 40) = v17;
    *(v0 + 16) = v19;
    *(v0 + 24) = v20;
  }

LABEL_16:
  sub_22FEBF2A4(v0 + 16, v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 192);
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    *(v0 + 128) = v23;
    *(v0 + 136) = v22;
    v24 = swift_task_alloc();
    *(v24 + 16) = v0 + 128;
    LOBYTE(v21) = sub_22FECE328(sub_22FECE3D8, v24, v21);

    if (v21)
    {
      if (qword_27DAF1260 != -1)
      {
        swift_once();
      }

      v25 = sub_22FFB12F8();
      __swift_project_value_buffer(v25, qword_27DAF1D20);
      sub_22FEA5608(v23, v22);
      v26 = sub_22FFB12D8();
      v27 = sub_22FFB1848();
      sub_22FEA55AC(v23, v22);
      if (os_log_type_enabled(v26, v27))
      {
        log = v26;
        v28 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v57[0] = v51;
        buf = v28;
        *v28 = 136315138;
        if (v22 >> 62 == 2)
        {
          v31 = *(v23 + 16);
        }

        v53 = v27;
        v32 = *(v0 + 184);
        v33 = *(v0 + 168);
        sub_22FEA5608(v23, v22);
        v55 = v23;
        v56 = v22;
        sub_22FFB0828();
        sub_22FECE640(&qword_281491358, MEMORY[0x277CC92E0]);
        sub_22FFB18A8();
        if (*(v0 + 201))
        {
          v34 = MEMORY[0x277D84F90];
        }

        else
        {
          v34 = MEMORY[0x277D84F90];
          v39 = MEMORY[0x277D84B78];
          v40 = MEMORY[0x277D84BC0];
          do
          {
            v41 = *(v0 + 200);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
            v42 = swift_allocObject();
            *(v42 + 16) = xmmword_22FFB2D10;
            *(v42 + 56) = v39;
            *(v42 + 64) = v40;
            *(v42 + 32) = v41;
            v43 = sub_22FFB14D8();
            v45 = v44;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_22FEC2E8C(0, *(v34 + 2) + 1, 1, v34);
            }

            v47 = *(v34 + 2);
            v46 = *(v34 + 3);
            if (v47 >= v46 >> 1)
            {
              v34 = sub_22FEC2E8C((v46 > 1), v47 + 1, 1, v34);
            }

            v48 = *(v0 + 184);
            v49 = *(v0 + 168);
            *(v34 + 2) = v47 + 1;
            v50 = &v34[16 * v47];
            *(v50 + 4) = v43;
            *(v50 + 5) = v45;
            sub_22FFB18A8();
          }

          while (*(v0 + 201) != 1);
        }

        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        *(v0 + 144) = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
        sub_22FEB0F00();
        v35 = sub_22FFB1458();
        v37 = v36;

        v38 = sub_22FF9E448(v35, v37, v57);

        *(buf + 4) = v38;
        _os_log_impl(&dword_22FE99000, log, v53, "release sha256:%s is covered by proxy node attestation", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x23190EFF0](v51, -1, -1);
        MEMORY[0x23190EFF0](buf, -1, -1);

        sub_22FEA55AC(v55, v56);
      }

      else
      {
        sub_22FEA55AC(v23, v22);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_13:
      v14 = *(v0 + 184);

      v15 = *(v0 + 8);
      goto LABEL_26;
    }

    sub_22FECDA1C();
    swift_allocError();
    swift_willThrow();
    sub_22FEA55AC(v23, v22);
  }

  else
  {
    sub_22FECDA1C();
    swift_allocError();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v29 = *(v0 + 184);

  v15 = *(v0 + 8);
LABEL_26:

  return v15();
}

char *sub_22FECD238(uint64_t a1)
{
  v44 = a1;
  v39 = sub_22FFB13C8();
  v43 = *(v39 - 8);
  v1 = *(v43 + 64);
  MEMORY[0x28223BE20](v39);
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22FFB0E58();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Proto_AttestationBundle(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttestationBundle(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Release();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = sub_22FFB1398();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FECE510(v44, v14, type metadata accessor for AttestationBundle);
  sub_22FECE510(v14, v10, type metadata accessor for Proto_AttestationBundle);
  v27 = v49;
  sub_22FF68C5C(v10, 0, 0, v19);
  sub_22FECE5E0(v14, type metadata accessor for AttestationBundle);
  if (!v27)
  {
    v49 = v26;
    v38 = v22;
    v44 = v23;
    v28 = v39;
    sub_22FECE578(v19, v21, type metadata accessor for Release);
    sub_22FFB0E48();
    sub_22FECE640(&qword_28148F578, type metadata accessor for Release);
    sub_22FFB0E38();
    sub_22FFB0E18();
    v29 = sub_22FF9F990();
    v31 = v30;

    (*(v40 + 8))(v6, v41);
    sub_22FECE640(&qword_28148F198, MEMORY[0x277CC5540]);
    v32 = v42;
    sub_22FFB1388();
    sub_22FEA5608(v29, v31);
    sub_22FF9EA78(v29, v31);
    v41 = 0;
    sub_22FEA55AC(v29, v31);
    sub_22FFB1368();
    sub_22FEA55AC(v29, v31);
    sub_22FECE5E0(v21, type metadata accessor for Release);
    (*(v43 + 8))(v32, v28);
    v33 = v38;
    v47 = v38;
    v48 = sub_22FECE640(&qword_28148F1C0, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
    v35 = v44;
    v36 = v49;
    (*(v44 + 16))(boxed_opaque_existential_1, v49, v33);
    __swift_project_boxed_opaque_existential_1(v46, v47);
    sub_22FFB0618();
    (*(v35 + 8))(v36, v33);
    v6 = v45;
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  return v6;
}

uint64_t sub_22FECD7FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return ProxiedReleasePolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t ProxiedReleasePolicy.Error.hashValue.getter()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

uint64_t sub_22FECD914()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

uint64_t sub_22FECD958()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

char *sub_22FECD998(char *a1, int64_t a2, char a3)
{
  result = sub_22FECDB9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22FECD9B8(size_t a1, int64_t a2, char a3)
{
  result = sub_22FECE14C(a1, a2, a3, *v3, &qword_27DAF1D68, &qword_22FFBF9F0, MEMORY[0x277D6A8E8]);
  *v3 = result;
  return result;
}

char *sub_22FECD9FC(char *a1, int64_t a2, char a3)
{
  result = sub_22FECDCE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22FECDA1C()
{
  result = qword_27DAF1D48;
  if (!qword_27DAF1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D48);
  }

  return result;
}

size_t sub_22FECDA70(size_t a1, int64_t a2, char a3)
{
  result = sub_22FECE14C(a1, a2, a3, *v3, &qword_27DAF1D70, &qword_22FFB43C8, type metadata accessor for TransparencyLogProofs);
  *v3 = result;
  return result;
}

char *sub_22FECDAB4(char *a1, int64_t a2, char a3)
{
  result = sub_22FECDDEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FECDAD4(char *a1, int64_t a2, char a3)
{
  result = sub_22FECDF20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22FECDAF4(size_t a1, int64_t a2, char a3)
{
  result = sub_22FECE14C(a1, a2, a3, *v3, &qword_27DAF1D78, &qword_22FFB43D8, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
  *v3 = result;
  return result;
}

char *sub_22FECDB38(char *a1, int64_t a2, char a3)
{
  result = sub_22FECE040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22FECDB58(size_t a1, int64_t a2, char a3)
{
  result = sub_22FECE14C(a1, a2, a3, *v3, &qword_27DAF1D58, &qword_22FFB43B8, type metadata accessor for Proto_SealedHash.Entry);
  *v3 = result;
  return result;
}

char *sub_22FECDB9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C48, &qword_22FFB43E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_22FECDCE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
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

char *sub_22FECDDEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1538, &qword_22FFB2D70);
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

char *sub_22FECDF20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C60, &qword_22FFB3FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FECE040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C30, &qword_22FFB3FA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22FECE14C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_22FECE328(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_22FEA5608(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_22FEA55AC(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

unint64_t sub_22FECE418()
{
  result = qword_27DAF1D50;
  if (!qword_27DAF1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D50);
  }

  return result;
}

uint64_t sub_22FECE46C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22FECE4B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FECE510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FECE578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FECE5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FECE640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FECE688()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_28148F7B0);
  __swift_project_value_buffer(v0, qword_28148F7B0);
  return sub_22FFB12E8();
}

uint64_t static ProxiedReleaseTransparencyPolicy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148F7A8 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12F8();
  v3 = __swift_project_value_buffer(v2, qword_28148F7B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProxiedReleaseTransparencyPolicy.init(verifier:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22FE9B84C(a1, a2);
  *(a2 + 40) = 1;
  return result;
}

uint64_t ProxiedReleaseTransparencyPolicy.init(verifier:validateProofs:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_22FE9B84C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t ProxiedReleaseTransparencyPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = type metadata accessor for TransparencyLogError(0);
  v3[28] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v7 = sub_22FFB0908();
  v3[31] = v7;
  v8 = *(v7 - 8);
  v3[32] = v8;
  v9 = *(v8 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D80, &unk_22FFB4400) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v11 = type metadata accessor for TransparencyLogProofs(0);
  v3[36] = v11;
  v12 = *(v11 - 8);
  v3[37] = v12;
  v13 = *(v12 + 64) + 15;
  v3[38] = swift_task_alloc();
  v14 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) - 8);
  v3[39] = v14;
  v15 = *(v14 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v17 = sub_22FFB0F18();
  v3[43] = v17;
  v18 = *(v17 - 8);
  v3[44] = v18;
  v19 = *(v18 + 64) + 15;
  v3[45] = swift_task_alloc();
  v20 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0);
  v3[46] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v22 = *(*(sub_22FFB0FE8() - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v23 = type metadata accessor for Proto_AppData(0);
  v3[50] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FECEB80, 0, 0);
}

uint64_t sub_22FECEB80()
{
  v102 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 200);
  v5 = (*(v4 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *(v0 + 168) = *v5;
  *(v0 + 176) = v7;
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  sub_22FEA5608(v6, v7);
  sub_22FFB0FD8();
  sub_22FED0C68(qword_2814906B0, type metadata accessor for Proto_AppData);
  v8 = 0;
  sub_22FFB1188();
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  v11 = *(v0 + 336);
  sub_22FEBF3A4(*(v0 + 408) + *(*(v0 + 400) + 32), v11, &qword_27DAF1D38, &qword_22FFB4270);
  v12 = *(v10 + 48);
  if (v12(v11, 1, v9) == 1)
  {
    v13 = *(v0 + 336);
    v14 = *(v0 + 344);
    v15 = *(v0 + 360);
    sub_22FFB0F08();
    if (v12(v13, 1, v14) != 1)
    {
      sub_22FEAEA34(*(v0 + 336), &qword_27DAF1D38, &qword_22FFB4270);
    }
  }

  else
  {
    (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 336), *(v0 + 344));
  }

  v16 = *(v0 + 376);
  v17 = *(v0 + 384);
  v19 = *(v0 + 360);
  v18 = *(v0 + 368);
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  sub_22FFB0FD8();
  sub_22FED0C68(qword_281490F70, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
  sub_22FFB1158();
  v20 = **(v0 + 376);
  *(v0 + 416) = v20;
  v21 = *(v20 + 16);
  *(v0 + 424) = v21;
  if (!v21)
  {
    if (qword_28148F7A8 != -1)
    {
      swift_once();
    }

    v46 = sub_22FFB12F8();
    __swift_project_value_buffer(v46, qword_28148F7B0);
    v47 = sub_22FFB12D8();
    v48 = sub_22FFB1838();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22FE99000, v47, v48, "Proxy is not providing proxied releases", v49, 2u);
      MEMORY[0x23190EFF0](v49, -1, -1);
    }

    v50 = *(v0 + 408);
    v39 = *(v0 + 376);

    sub_22FED0D14();
    v51 = swift_allocError();
    *v52 = 0x8000000000000000;
    swift_willThrow();
    v43 = v51;
    v44 = type metadata accessor for Proto_AppData;
    v45 = v50;
    goto LABEL_19;
  }

  v22 = *(v0 + 328);
  v23 = *(*(v0 + 312) + 80);
  *(v0 + 488) = v23;
  *(v0 + 432) = 0;
  if (*(v20 + 16))
  {
    sub_22FED0CB0(v20 + ((v23 + 32) & ~v23), v22);
    v8 = sub_22FEB0B54(*v22, *(v22 + 8));
    v16 = v24;
    *(v0 + 440) = v8;
    *(v0 + 448) = v24;
    if (qword_28148F7A8 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_8:
  v25 = sub_22FFB12F8();
  *(v0 + 456) = v25;
  *(v0 + 464) = __swift_project_value_buffer(v25, qword_28148F7B0);

  v26 = sub_22FFB12D8();
  v27 = sub_22FFB1848();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v99 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_22FF9E448(v8, v16, &v99);
    _os_log_impl(&dword_22FE99000, v26, v27, "Verifying inclusion of proxied release %{public}s in transparency log", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x23190EFF0](v29, -1, -1);
    MEMORY[0x23190EFF0](v28, -1, -1);
  }

  v30 = *(v0 + 320);
  v31 = *(v0 + 288);
  v32 = *(v0 + 296);
  v33 = *(v0 + 280);
  sub_22FED0CB0(*(v0 + 328), v30);
  sub_22FF6F818(v30, v33);
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    v34 = *(v0 + 280);

    sub_22FEAEA34(v34, &qword_27DAF1D80, &unk_22FFB4400);
    v35 = sub_22FFB12D8();
    v36 = sub_22FFB1838();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22FE99000, v35, v36, "Proxied release metadata is missing transparency proofs", v37, 2u);
      MEMORY[0x23190EFF0](v37, -1, -1);
    }

    v38 = *(v0 + 408);
    v39 = *(v0 + 376);
    v40 = *(v0 + 328);

    sub_22FED0D14();
    v41 = swift_allocError();
    *v42 = 0x8000000000000000;
    swift_willThrow();
    v43 = v41;
    sub_22FED0DCC(v38, type metadata accessor for Proto_AppData);
    v44 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease;
    v45 = v40;
LABEL_19:
    sub_22FED0DCC(v45, v44);
    sub_22FED0DCC(v39, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
    if (*(*(v0 + 216) + 40) == 1)
    {
      v53 = *(v0 + 408);
      v55 = *(v0 + 384);
      v54 = *(v0 + 392);
      v56 = *(v0 + 376);
      v57 = *(v0 + 360);
      v58 = *(v0 + 328);
      v59 = *(v0 + 336);
      v87 = *(v0 + 320);
      v88 = *(v0 + 304);
      v89 = *(v0 + 280);
      v90 = *(v0 + 272);
      v92 = *(v0 + 264);
      v94 = *(v0 + 240);
      v96 = *(v0 + 232);
      swift_willThrow();

      v60 = *(v0 + 8);
    }

    else
    {
      if (qword_28148F7A8 != -1)
      {
        swift_once();
      }

      v61 = sub_22FFB12F8();
      __swift_project_value_buffer(v61, qword_28148F7B0);
      v62 = sub_22FFB12D8();
      v63 = sub_22FFB1848();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_22FE99000, v62, v63, "Failing transparency checks open since validateProofs is off", v64, 2u);
        MEMORY[0x23190EFF0](v64, -1, -1);
      }

      v65 = *(v0 + 408);
      v66 = *(v0 + 384);
      v67 = *(v0 + 392);
      v68 = *(v0 + 376);
      v69 = *(v0 + 360);
      v71 = *(v0 + 328);
      v70 = *(v0 + 336);
      v72 = *(v0 + 320);
      v73 = *(v0 + 304);
      v74 = *(v0 + 280);
      v91 = *(v0 + 272);
      v93 = *(v0 + 264);
      v95 = *(v0 + 240);
      v97 = *(v0 + 232);

      v60 = *(v0 + 8);
    }

    return v60();
  }

  v76 = *(v0 + 328);
  v77 = *(v0 + 216);
  sub_22FED0D68(*(v0 + 280), *(v0 + 304));
  v78 = v77[3];
  v79 = v77[4];
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v80 = *v76;
  v81 = v76[1];
  v82 = *(v79 + 8);
  v98 = (v82 + *v82);
  v83 = v82[1];
  v84 = swift_task_alloc();
  *(v0 + 472) = v84;
  *v84 = v0;
  v84[1] = sub_22FECF550;
  v85 = *(v0 + 304);
  v86 = *(v0 + 272);

  return v98(v86, v80, v81, v85, v78, v79);
}

uint64_t sub_22FECF550()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_22FED0180;
  }

  else
  {
    v3 = sub_22FECF664;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FECF664()
{
  v109 = v0;
  *(v0 + 192) = **(v0 + 208);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  AttestationPolicyContext.proofExpiration.getter(v4);
  v5 = (*(v3 + 48))(v4, 1, v2);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  if (v5 == 1)
  {
    v8 = *(v0 + 272);
    v9 = *(v0 + 208);
    sub_22FEAEA34(*(v0 + 240), &qword_27DAF1510, &qword_22FFB3800);
    *(v0 + 40) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v7 + 16))(boxed_opaque_existential_1, v8, v6);
    sub_22FEBF3A4(v0 + 16, v0 + 48, &qword_27DAF1A78, &unk_22FFB3A50);
    sub_22FECBD14(v0 + 48, &type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x707845666F6F7270, 0xEF6E6F6974617269);
    (*(v7 + 8))(v8, v6);
    v11 = v0 + 16;
LABEL_5:
    sub_22FEAEA34(v11, &qword_27DAF1A78, &unk_22FFB3A50);
    goto LABEL_7;
  }

  v12 = *(v0 + 272);
  (*(v7 + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  v13 = sub_22FFB0888();
  v15 = *(v0 + 264);
  v14 = *(v0 + 272);
  v16 = *(v0 + 248);
  v17 = *(v0 + 256);
  if (v13)
  {
    v18 = *(v0 + 208);
    *(v0 + 104) = v16;
    v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
    (*(v17 + 16))(v19, v14, v16);
    sub_22FEBF3A4(v0 + 80, v0 + 112, &qword_27DAF1A78, &unk_22FFB3A50);
    sub_22FECBD14(v0 + 112, &type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x707845666F6F7270, 0xEF6E6F6974617269);
    v20 = *(v17 + 8);
    p_base_meths = (v17 + 8);
    v20(v15, v16);
    v20(v14, v16);
    v11 = v0 + 80;
    goto LABEL_5;
  }

  v21 = *(v17 + 8);
  p_base_meths = (v17 + 8);
  v21(*(v0 + 264), *(v0 + 248));
  v21(v14, v16);
LABEL_7:
  v22 = *(v0 + 464);
  v23 = *(v0 + 448);

  v24 = sub_22FFB12D8();
  v25 = sub_22FFB1848();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 448);
  if (v26)
  {
    v28 = *(v0 + 440);
    v29 = *(v0 + 304);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v108[0] = v31;
    *v30 = 136446210;
    v32 = sub_22FF9E448(v28, v27, v108);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_22FE99000, v24, v25, "Release %{public}s is included in transparency log", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x23190EFF0](v31, -1, -1);
    MEMORY[0x23190EFF0](v30, -1, -1);
  }

  else
  {
    v29 = *(v0 + 304);
    v33 = *(v0 + 448);
  }

  sub_22FED0DCC(v29, type metadata accessor for TransparencyLogProofs);
  v34 = *(v0 + 424);
  v35 = *(v0 + 432) + 1;
  sub_22FED0DCC(*(v0 + 328), type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
  if (v35 == v34)
  {
    if (qword_28148F7A8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 456), qword_28148F7B0);
    v36 = sub_22FFB12D8();
    v37 = sub_22FFB1848();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22FE99000, v36, v37, "AttestationBundle passed ProxiedReleaseTransparencyPolicy: All proxied releases are included in transparency log", v38, 2u);
      MEMORY[0x23190EFF0](v38, -1, -1);
    }

    v39 = *(v0 + 408);
    v40 = *(v0 + 376);

    sub_22FED0DCC(v39, type metadata accessor for Proto_AppData);
    sub_22FED0DCC(v40, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
    goto LABEL_16;
  }

  v53 = *(v0 + 432) + 1;
  *(v0 + 432) = v53;
  v54 = *(v0 + 416);
  if (v53 >= *(v54 + 16))
  {
    __break(1u);
  }

  else
  {
    v55 = *(v0 + 328);
    sub_22FED0CB0(v54 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 312) + 72) * v53, v55);
    v27 = sub_22FEB0B54(*v55, *(v55 + 8));
    v25 = v56;
    *(v0 + 440) = v27;
    *(v0 + 448) = v56;
    p_base_meths = &PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass.base_meths;
    if (qword_28148F7A8 == -1)
    {
      goto LABEL_22;
    }
  }

  swift_once();
LABEL_22:
  v57 = sub_22FFB12F8();
  *(v0 + 456) = v57;
  *(v0 + 464) = __swift_project_value_buffer(v57, qword_28148F7B0);

  v58 = sub_22FFB12D8();
  v59 = sub_22FFB1848();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v108[0] = v61;
    *v60 = 136446210;
    *(v60 + 4) = sub_22FF9E448(v27, v25, v108);
    _os_log_impl(&dword_22FE99000, v58, v59, "Verifying inclusion of proxied release %{public}s in transparency log", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x23190EFF0](v61, -1, -1);
    MEMORY[0x23190EFF0](v60, -1, -1);
  }

  v62 = *(v0 + 320);
  v63 = *(v0 + 288);
  v64 = *(v0 + 296);
  v65 = *(v0 + 280);
  sub_22FED0CB0(*(v0 + 328), v62);
  sub_22FF6F818(v62, v65);
  if ((*(v64 + 48))(v65, 1, v63) == 1)
  {
    v66 = *(v0 + 280);

    sub_22FEAEA34(v66, &qword_27DAF1D80, &unk_22FFB4400);
    v67 = sub_22FFB12D8();
    v68 = sub_22FFB1838();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_22FE99000, v67, v68, "Proxied release metadata is missing transparency proofs", v69, 2u);
      MEMORY[0x23190EFF0](v69, -1, -1);
    }

    v70 = *(v0 + 408);
    v71 = *(v0 + 376);
    v72 = *(v0 + 328);

    sub_22FED0D14();
    v73 = swift_allocError();
    *v74 = 0x8000000000000000;
    swift_willThrow();
    sub_22FED0DCC(v70, type metadata accessor for Proto_AppData);
    sub_22FED0DCC(v72, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
    sub_22FED0DCC(v71, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
    if (*(*(v0 + 216) + 40))
    {
      v75 = *(v0 + 408);
      v77 = *(v0 + 384);
      v76 = *(v0 + 392);
      v78 = *(v0 + 376);
      v79 = *(v0 + 360);
      v80 = *(v0 + 328);
      v81 = *(v0 + 336);
      v96 = *(v0 + 320);
      v97 = *(v0 + 304);
      v98 = *(v0 + 280);
      v100 = *(v0 + 272);
      v102 = *(v0 + 264);
      v104 = *(v0 + 240);
      v106 = *(v0 + 232);
      swift_willThrow();

      v51 = *(v0 + 8);
      goto LABEL_17;
    }

    if (p_base_meths[245] != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v57, qword_28148F7B0);
    v93 = sub_22FFB12D8();
    v94 = sub_22FFB1848();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_22FE99000, v93, v94, "Failing transparency checks open since validateProofs is off", v95, 2u);
      MEMORY[0x23190EFF0](v95, -1, -1);
    }

LABEL_16:
    v41 = *(v0 + 408);
    v42 = *(v0 + 384);
    v43 = *(v0 + 392);
    v44 = *(v0 + 376);
    v45 = *(v0 + 360);
    v47 = *(v0 + 328);
    v46 = *(v0 + 336);
    v48 = *(v0 + 320);
    v49 = *(v0 + 304);
    v50 = *(v0 + 280);
    v99 = *(v0 + 272);
    v101 = *(v0 + 264);
    v103 = *(v0 + 240);
    v105 = *(v0 + 232);

    v51 = *(v0 + 8);
LABEL_17:

    return v51();
  }

  v82 = *(v0 + 328);
  v83 = *(v0 + 216);
  sub_22FED0D68(*(v0 + 280), *(v0 + 304));
  v84 = v83[3];
  v85 = v83[4];
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v86 = *v82;
  v87 = v82[1];
  v88 = *(v85 + 8);
  v107 = (v88 + *v88);
  v89 = v88[1];
  v90 = swift_task_alloc();
  *(v0 + 472) = v90;
  *v90 = v0;
  v90[1] = sub_22FECF550;
  v91 = *(v0 + 304);
  v92 = *(v0 + 272);

  return v107(v92, v86, v87, v91, v84, v85);
}

uint64_t sub_22FED0180()
{
  v117 = v0;
  v1 = *(v0 + 480);
  *(v0 + 184) = v1;
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v28 = *(v0 + 464);
        v29 = *(v0 + 448);

        v30 = *v6;

        v31 = v30;
        v32 = sub_22FFB12D8();
        v33 = sub_22FFB1838();

        v34 = os_log_type_enabled(v32, v33);
        v35 = *(v0 + 448);
        if (v34)
        {
          v36 = *(v0 + 440);
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v116[0] = v39;
          *v37 = 136446466;
          v40 = sub_22FF9E448(v36, v35, v116);

          *(v37 + 4) = v40;
          *(v37 + 12) = 2114;
          v41 = v30;
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v37 + 14) = v42;
          *v38 = v42;
          _os_log_impl(&dword_22FE99000, v32, v33, "SWTransparency threw unknown error for release %{public}s: %{public}@", v37, 0x16u);
          sub_22FEAEA34(v38, &qword_27DAF1680, &unk_22FFB4B10);
          MEMORY[0x23190EFF0](v38, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v39);
          MEMORY[0x23190EFF0](v39, -1, -1);
          MEMORY[0x23190EFF0](v37, -1, -1);
        }

        else
        {
        }

        v73 = *(v0 + 408);
        v74 = *(v0 + 376);
        v75 = *(v0 + 328);
        v76 = v30 | 0x4000000000000000;
        v77 = *(v0 + 304);
        sub_22FED0D14();
        v78 = swift_allocError();
        *v79 = v76;
        v114 = v78;
        swift_willThrow();
        sub_22FED0DCC(v77, type metadata accessor for TransparencyLogProofs);
        sub_22FED0DCC(v73, type metadata accessor for Proto_AppData);
        sub_22FED0DCC(v75, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
        v80 = v74;
        goto LABEL_23;
      case 13:
        v18 = *(v0 + 464);
        v19 = *(v0 + 448);

        v20 = sub_22FFB12D8();
        v21 = sub_22FFB1838();

        v22 = os_log_type_enabled(v20, v21);
        v23 = *(v0 + 448);
        if (v22)
        {
          v24 = *(v0 + 440);
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v116[0] = v26;
          *v25 = 136446210;
          v27 = sub_22FF9E448(v24, v23, v116);

          *(v25 + 4) = v27;
          _os_log_impl(&dword_22FE99000, v20, v21, "Release %{public}s has expired in transparency log", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          MEMORY[0x23190EFF0](v26, -1, -1);
          MEMORY[0x23190EFF0](v25, -1, -1);
        }

        else
        {
        }

        v66 = *(v0 + 408);
        v67 = *(v0 + 376);
        v68 = *(v0 + 328);
        v69 = *(v0 + 304);
        sub_22FED0D14();
        v70 = swift_allocError();
        v72 = 0x8000000000000010;
        goto LABEL_22;
      case 10:
        v8 = *(v0 + 464);
        v9 = *(v0 + 448);

        v10 = sub_22FFB12D8();
        v11 = sub_22FFB1838();

        v12 = os_log_type_enabled(v10, v11);
        v13 = *(v0 + 448);
        if (v12)
        {
          v14 = *(v0 + 440);
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v116[0] = v16;
          *v15 = 136446210;
          v17 = sub_22FF9E448(v14, v13, v116);

          *(v15 + 4) = v17;
          _os_log_impl(&dword_22FE99000, v10, v11, "Release %{public}s is not included in transparency log, this is likely indicative of using the wrong transparency log", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v16);
          MEMORY[0x23190EFF0](v16, -1, -1);
          MEMORY[0x23190EFF0](v15, -1, -1);
        }

        else
        {
        }

        v66 = *(v0 + 408);
        v67 = *(v0 + 376);
        v68 = *(v0 + 328);
        v69 = *(v0 + 304);
        sub_22FED0D14();
        v70 = swift_allocError();
        v72 = 0x8000000000000008;
LABEL_22:
        *v71 = v72;
        v114 = v70;
        swift_willThrow();
        sub_22FED0DCC(v69, type metadata accessor for TransparencyLogProofs);
        sub_22FED0DCC(v66, type metadata accessor for Proto_AppData);
        sub_22FED0DCC(v68, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
        v80 = v67;
LABEL_23:
        sub_22FED0DCC(v80, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);

        goto LABEL_24;
    }

    sub_22FED0DCC(v6, type metadata accessor for TransparencyLogError);
  }

  v43 = *(v0 + 480);
  v44 = *(v0 + 464);
  v45 = *(v0 + 448);

  v46 = v43;
  v47 = sub_22FFB12D8();
  v48 = sub_22FFB1838();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 480);
    v51 = *(v0 + 440);
    v50 = *(v0 + 448);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v116[0] = v54;
    *v52 = 136446466;
    v55 = sub_22FF9E448(v51, v50, v116);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2114;
    v56 = v49;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 14) = v57;
    *v53 = v57;
    _os_log_impl(&dword_22FE99000, v47, v48, "SWTransparency threw unknown error for release %{public}s: %{public}@", v52, 0x16u);
    sub_22FEAEA34(v53, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v53, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x23190EFF0](v54, -1, -1);
    MEMORY[0x23190EFF0](v52, -1, -1);
  }

  else
  {
    v58 = *(v0 + 448);
  }

  v59 = *(v0 + 408);
  v60 = *(v0 + 376);
  v61 = *(v0 + 328);
  v62 = *(v0 + 304);
  v63 = *(v0 + 480) | 0x4000000000000000;
  sub_22FED0D14();
  v64 = swift_allocError();
  *v65 = v63;
  v114 = v64;
  swift_willThrow();
  sub_22FED0DCC(v62, type metadata accessor for TransparencyLogProofs);
  sub_22FED0DCC(v59, type metadata accessor for Proto_AppData);
  sub_22FED0DCC(v61, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
  sub_22FED0DCC(v60, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
LABEL_24:
  if (*(*(v0 + 216) + 40) == 1)
  {
    v81 = *(v0 + 408);
    v83 = *(v0 + 384);
    v82 = *(v0 + 392);
    v84 = *(v0 + 376);
    v85 = *(v0 + 360);
    v86 = *(v0 + 328);
    v87 = *(v0 + 336);
    v104 = *(v0 + 320);
    v105 = *(v0 + 304);
    v106 = *(v0 + 280);
    v107 = *(v0 + 272);
    v108 = *(v0 + 264);
    v110 = *(v0 + 240);
    v112 = *(v0 + 232);
    swift_willThrow();

    v88 = *(v0 + 8);
  }

  else
  {
    if (qword_28148F7A8 != -1)
    {
      swift_once();
    }

    v89 = sub_22FFB12F8();
    __swift_project_value_buffer(v89, qword_28148F7B0);
    v90 = sub_22FFB12D8();
    v91 = sub_22FFB1848();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_22FE99000, v90, v91, "Failing transparency checks open since validateProofs is off", v92, 2u);
      MEMORY[0x23190EFF0](v92, -1, -1);
    }

    v93 = *(v0 + 408);
    v94 = *(v0 + 384);
    v95 = *(v0 + 392);
    v96 = *(v0 + 376);
    v97 = *(v0 + 360);
    v99 = *(v0 + 328);
    v98 = *(v0 + 336);
    v100 = *(v0 + 320);
    v101 = *(v0 + 304);
    v102 = *(v0 + 280);
    v109 = *(v0 + 272);
    v111 = *(v0 + 264);
    v113 = *(v0 + 240);
    v115 = *(v0 + 232);

    v88 = *(v0 + 8);
  }

  return v88();
}

uint64_t sub_22FED0BC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return ProxiedReleaseTransparencyPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t sub_22FED0C68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FED0CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FED0D14()
{
  result = qword_27DAF1D88;
  if (!qword_27DAF1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D88);
  }

  return result;
}

uint64_t sub_22FED0D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransparencyLogProofs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FED0DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22FED0E40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FED0E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t X509FingerprintPolicy.init<A>(fingerprints:hashFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB12E8();
  (*(v6 + 16))(v9, a1, a2);
  sub_22FEBF348();
  v10 = sub_22FFB17E8();
  (*(v6 + 8))(a1, a2);
  result = type metadata accessor for X509FingerprintPolicy();
  *(a3 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_22FED1050(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_22FECDAB4(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22FFB1948();
  v7 = result;
  v8 = 0;
  v26 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v27 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v13 = *v11;
    v12 = v11[1];
    sub_22FEA5608(*v11, v12);
    v28 = sub_22FEB0B54(v13, v12);
    v15 = v14;
    result = sub_22FEA55AC(v13, v12);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_22FECDAB4((v16 > 1), v17 + 1, 1);
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v28;
    *(v18 + 40) = v15;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v10);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_22FED2064(v7, v27, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_22FED2064(v7, v27, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t X509FingerprintPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v6 = *(a3 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = *(a3 + 24);
  v4[8] = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FED13F0, 0, 0);
}

uint64_t sub_22FED13F0()
{
  v63 = v0;
  v61 = **(v0 + 16);
  AttestationPolicyContext.validatedCert.getter(&v62);
  if (v62)
  {
    v1 = *(&v62 + 1);
    v2 = *(v0 + 96);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v60 = v62;
    ProvisioningCertificate.fingerprint<A>(using:)();
    v59 = v7;
    v8 = *(v6 + *(v7 + 36));
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = sub_22FEC4190(v2, v4, *(AssociatedConformanceWitness + 32));
    v12 = v11;
    LOBYTE(v5) = sub_22FED1940(v10, v11, v8);
    sub_22FEA55AC(v10, v12);
    v13 = *(v0 + 80);
    v14 = *(v0 + 48);
    if (v5)
    {
      (*(v13 + 8))(*(v0 + 96), *(v0 + 72));
      sub_22FED1EDC(v60, v1);

      v15 = *(v0 + 8);
      goto LABEL_12;
    }

    v58 = v1;
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = *(v0 + 24);
    (*(v13 + 16))(*(v0 + 88), *(v0 + 96), *(v0 + 72));
    (*(v24 + 16))(v14, v23, v25);
    v26 = sub_22FFB12D8();
    v27 = sub_22FFB1838();
    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    v31 = *(v0 + 72);
    v33 = *(v0 + 40);
    v32 = *(v0 + 48);
    if (v28)
    {
      v54 = *(v0 + 48);
      v55 = *(v0 + 24);
      v34 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v62 = v57;
      *v34 = 136446466;
      v35 = sub_22FF9F994(v31, AssociatedConformanceWitness);
      log = v26;
      v37 = v36;
      v38 = *(v30 + 8);
      v38(v29, v31);
      v39 = sub_22FF9E448(v35, v37, &v62);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      v40 = sub_22FED1050(*(v54 + *(v59 + 36)));
      (*(v33 + 8))(v54, v55);
      v41 = MEMORY[0x23190DEA0](v40, MEMORY[0x277D837D0]);
      v43 = v42;

      v44 = sub_22FF9E448(v41, v43, &v62);

      *(v34 + 14) = v44;
      _os_log_impl(&dword_22FE99000, log, v27, "Fingerprint %{public}s not a member of %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v57, -1, -1);
      MEMORY[0x23190EFF0](v34, -1, -1);
    }

    else
    {
      (*(v33 + 8))(*(v0 + 48), *(v0 + 24));

      v38 = *(v30 + 8);
      v38(v29, v31);
    }

    v45 = *(v0 + 96);
    v46 = *(v0 + 64);
    v47 = *(v0 + 72);
    v48 = *(v0 + 56);
    type metadata accessor for X509FingerprintPolicy.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    sub_22FED1EDC(v60, v58);
    v38(v45, v47);
  }

  else
  {
    v16 = *(v0 + 32);
    v17 = sub_22FFB12D8();
    v18 = sub_22FFB1838();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22FE99000, v17, v18, "Missing provisioning certificate", v19, 2u);
      MEMORY[0x23190EFF0](v19, -1, -1);
    }

    v21 = *(v0 + 56);
    v20 = *(v0 + 64);

    type metadata accessor for X509FingerprintPolicy.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }

  v51 = *(v0 + 88);
  v50 = *(v0 + 96);
  v52 = *(v0 + 48);

  v15 = *(v0 + 8);
LABEL_12:

  return v15();
}

uint64_t sub_22FED1940(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!*(a3 + 16) || (v6 = *(a3 + 40), sub_22FFB1CA8(), sub_22FFB07F8(), v7 = sub_22FFB1CF8(), v8 = a3 + 56, v9 = -1 << *(a3 + 32), v10 = v7 & ~v9, ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_64:
    result = 0;
    goto LABEL_65;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v44 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v41 = v15;
  v39 = a2;
  v40 = HIDWORD(a1) - a1;
  v42 = v11;
  v43 = BYTE6(a2);
  v38 = a1;
  while (1)
  {
    v16 = (*(a3 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_68;
      }

      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_69;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_34:
        v27 = v43;
        if (v14)
        {
          v27 = v40;
          if (v41)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_63;
      }

      goto LABEL_14;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

LABEL_40:
    if (v23 == v27)
    {
      if (v23 < 1)
      {
        goto LABEL_63;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          *v46 = v18;
          *&v46[8] = v17;
          v46[10] = BYTE2(v17);
          v46[11] = BYTE3(v17);
          v46[12] = BYTE4(v17);
          v46[13] = BYTE5(v17);
          sub_22FEA5608(v18, v17);
          sub_22FEEBB68(v46, a1, a2, v45);
          sub_22FEA55AC(v18, v17);
          if (v45[0])
          {
            goto LABEL_63;
          }

LABEL_61:
          v11 = v42;
          goto LABEL_14;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_70;
        }

        sub_22FEA5608(v18, v17);
        v32 = sub_22FFB0588();
        if (v32)
        {
          v34 = sub_22FFB05B8();
          if (__OFSUB__(v18, v34))
          {
            goto LABEL_73;
          }

          v32 += v18 - v34;
        }

LABEL_59:
        sub_22FFB05A8();
        v35 = v32;
        a1 = v38;
        a2 = v39;
        sub_22FEEBB68(v35, v38, v39, v46);
        sub_22FEA55AC(v18, v17);
        if (v46[0])
        {
          goto LABEL_63;
        }

        v8 = a3 + 56;
        goto LABEL_61;
      }

      if (v19 == 2)
      {
        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        sub_22FEA5608(v18, v17);
        v32 = sub_22FFB0588();
        if (v32)
        {
          v33 = sub_22FFB05B8();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_72;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v30, v31))
        {
          goto LABEL_71;
        }

        goto LABEL_59;
      }

      *&v46[6] = 0;
      *v46 = 0;
      sub_22FEA5608(v18, v17);
      sub_22FEEBB68(v46, a1, a2, v45);
      sub_22FEA55AC(v18, v17);
      if (v45[0])
      {
        goto LABEL_63;
      }
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v44))
  {
LABEL_37:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_63:
  result = 1;
LABEL_65:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FED1D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FEAA0D4;

  return X509FingerprintPolicy.evaluate(bundle:context:)(v6, a2, a3);
}

uint64_t X509FingerprintPolicy.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FED1EA0()
{
  sub_22FFB1CA8();
  X509FingerprintPolicy.Error.hash(into:)();
  return sub_22FFB1CF8();
}

void *sub_22FED1EDC(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

void sub_22FED1F54()
{
  sub_22FFB12F8();
  if (v0 <= 0x3F)
  {
    sub_22FED2000();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FED2000()
{
  if (!qword_27DAF1E18[0])
  {
    sub_22FEBF348();
    v0 = sub_22FFB17D8();
    if (!v1)
    {
      atomic_store(v0, qword_27DAF1E18);
    }
  }
}

uint64_t sub_22FED2064(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t X509Policy.init(roots:clock:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for X509Policy();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 8) = MEMORY[0x277D84F90];
  v14 = v10[8];
  v24 = v14;
  v15 = sub_22FFB0908();
  v16 = *(*(v15 - 8) + 56);
  v16(a3 + v14, 1, 1, v15);
  v17 = a3 + v10[9];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (a3 + v10[10]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a2;
  sub_22FEBF3A4(a2, v8, &qword_27DAF1510, &qword_22FFB3800);
  *(v13 + 1) = MEMORY[0x277D84F90];
  v20 = v10[8];
  v16(&v13[v20], 1, 1, v15);
  v21 = &v13[v10[9]];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v13[v10[10]];
  *v13 = 1;
  sub_22FED2C04(v25);
  sub_22FEAEA34(v19, &qword_27DAF1510, &qword_22FFB3800);
  sub_22FEB3E04(v8, &v13[v20]);
  *v22 = 0;
  *(v22 + 1) = 0;
  *v21 = 0;
  v21[8] = 1;
  sub_22FEAEA34(a3 + v24, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FECB41C(v13, a3);
}

uint64_t type metadata accessor for X509Policy()
{
  result = qword_281490B38;
  if (!qword_281490B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22FED22EC(uint64_t a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v46 - v5;
  v7 = sub_22FFB0908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DCAttestation = SecPolicyCreateDCAttestation();
  if (!DCAttestation)
  {
    sub_22FED466C();
    swift_allocError();
    *v19 = 0x8000000000000004;
    swift_willThrow();
LABEL_19:
    v34 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = DCAttestation;
  v47 = v11;
  v48 = v8;
  v49 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1ED0, &qword_22FFBF090);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22FFB45C0;
  *(v14 + 32) = v13;
  v51 = v14;
  v15 = type metadata accessor for X509Policy();
  v16 = v1 + *(v15 + 28);
  v17 = *(v16 + 8);
  v50 = v13;
  if (v17 == 1)
  {
    v18 = v13;
  }

  else
  {
    v20 = *v16;
    v13 = v13;
    Revocation = SecPolicyCreateRevocation(v20);
    if (!Revocation)
    {

      sub_22FED466C();
      swift_allocError();
      v30 = 0x8000000000000003;
      goto LABEL_17;
    }

    v22 = Revocation;
    MEMORY[0x23190DE60]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22FFB1708();
    }

    sub_22FFB1728();

    v13 = v50;
  }

  v23 = sub_22FEB1380(a1);
  if (!v23)
  {

    sub_22FED466C();
    swift_allocError();
    v30 = 0x8000000000000001;
LABEL_17:
    *v29 = v30;
    swift_willThrow();
    goto LABEL_18;
  }

  v24 = v23;
  v25 = v1;
  sub_22FED2AFC();
  type metadata accessor for SecCertificate(0);
  v26 = sub_22FFB16C8();

  v27 = SecTrustSetAnchorCertificates(v24, v26);

  if (v27)
  {

    sub_22FED466C();
    swift_allocError();
    *v28 = v27 | 0x4000000000000000;
    swift_willThrow();

    goto LABEL_19;
  }

  Allowed = SecTrustSetAnchorCertificatesOnly(v24, 1u);
  v13 = v50;
  if (Allowed || (Allowed = SecTrustSetNetworkFetchAllowed(v24, v17 ^ 1)) != 0)
  {
    v32 = Allowed;

    sub_22FED466C();
    swift_allocError();
    *v33 = v32 | 0x4000000000000000;
    swift_willThrow();

LABEL_18:
    goto LABEL_19;
  }

  sub_22FEBF3A4(v25 + *(v15 + 24), v6, &qword_27DAF1510, &qword_22FFB3800);
  v36 = v48;
  v35 = v49;
  if ((*(v48 + 48))(v6, 1, v49) == 1)
  {
    sub_22FEAEA34(v6, &qword_27DAF1510, &qword_22FFB3800);
  }

  else
  {
    v37 = v47;
    (*(v36 + 32))(v47, v6, v35);
    v38 = sub_22FFB0868();
    v39 = SecTrustSetVerifyDate(v24, v38);

    if (v39)
    {

      sub_22FED466C();
      swift_allocError();
      *v40 = v39 | 0x4000000000000000;
      swift_willThrow();

      (*(v36 + 8))(v37, v35);
      goto LABEL_19;
    }

    (*(v36 + 8))(v37, v35);
    v13 = v50;
  }

  error[0] = 0;
  if (SecTrustEvaluateWithError(v24, error))
  {

LABEL_29:
    goto LABEL_19;
  }

  if (error[0])
  {
    v41 = error[0];

    type metadata accessor for CFError(0);
    sub_22FED4B54(&qword_27DAF1518, type metadata accessor for CFError);
    v42 = swift_allocError();
    *v43 = v41;
    sub_22FED466C();
    swift_allocError();
    *v44 = v42;
    swift_willThrow();

    goto LABEL_29;
  }

  __break(1u);
}

uint64_t X509Policy.init(required:roots:clock:revocation:)@<X0>(char a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = MEMORY[0x277D84F90];
  v8 = type metadata accessor for X509Policy();
  v9 = v8[6];
  v10 = sub_22FFB0908();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + v8[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a4 + v8[8]);
  *a4 = a1;
  sub_22FED2C04(a2);
  result = sub_22FEB3E04(a3, a4 + v9);
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

double AttestationPolicyContext.validatedCert.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for X509Policy();
  if (!*(v3 + 16) || (v5 = sub_22FFA62AC(v4, &protocol witness table for X509Policy, 0x65746164696C6176, 0xED00007472654364), (v6 & 1) == 0))
  {
    v8 = 0u;
    v9 = 0u;

    goto LABEL_7;
  }

  sub_22FEBF2A4(*(v3 + 56) + 32 * v5, &v8);

  if (!*(&v9 + 1))
  {
LABEL_7:
    sub_22FEAEA34(&v8, &qword_27DAF1A78, &unk_22FFB3A50);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

void sub_22FED2AFC()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_22FFB1A38();
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_22FEA5608(v5, *v4);
      v7 = sub_22FFB07B8();
      v8 = SecCertificateCreateWithData(0, v7);

      if (!v8)
      {
        goto LABEL_8;
      }

      ++v3;
      sub_22FEA55AC(v5, v6);
      sub_22FFB1A08();
      v9 = *(v10 + 16);
      sub_22FFB1A48();
      sub_22FFB1A58();
      sub_22FFB1A18();
      v4 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }
}

uint64_t sub_22FED2C04(unint64_t a1)
{
  v2 = v1;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    v6 = MEMORY[0x277D84F90];
LABEL_17:
    v25 = *(v2 + 8);

    *(v2 + 8) = v6;
    return result;
  }

  v4 = sub_22FFB1AB8();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  result = sub_22FECD9FC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x23190E180](v7, a1);
        v9 = SecCertificateCopyData(v8);
        v10 = sub_22FFB07E8();
        v12 = v11;
        swift_unknownObjectRelease();

        v14 = *(v26 + 16);
        v13 = *(v26 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_22FECD9FC((v13 > 1), v14 + 1, 1);
        }

        ++v7;
        *(v26 + 16) = v14 + 1;
        v15 = v26 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      while (v4 != v7);
    }

    else
    {
      v16 = 32;
      do
      {
        v17 = *(a1 + v16);
        v18 = SecCertificateCopyData(v17);
        v19 = sub_22FFB07E8();
        v21 = v20;

        v23 = *(v26 + 16);
        v22 = *(v26 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22FECD9FC((v22 > 1), v23 + 1, 1);
        }

        *(v26 + 16) = v23 + 1;
        v24 = v26 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v16 += 8;
        --v4;
      }

      while (v4);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t X509Policy.clock.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for X509Policy() + 24);

  return sub_22FEB3E04(a1, v3);
}

uint64_t X509Policy.revocation.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for X509Policy();
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t X509Policy.revocation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for X509Policy();
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_22FED2F78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for X509Policy() + 32));
  v6 = *v5;
  v7 = v5[1];
  sub_22FE9AC3C(v2);
  result = sub_22FEA5C80(v6);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t X509Policy.body.getter()
{
  v1 = (v0 + *(type metadata accessor for X509Policy() + 32));
  v2 = *v1;
  v3 = v1[1];
  sub_22FE9AC3C(*v1);
  return v2;
}

uint64_t X509Policy.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for X509Policy() + 32));
  v6 = v5[1];
  result = sub_22FEA5C80(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22FED30B8()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491688);
  __swift_project_value_buffer(v0, qword_281491688);
  return sub_22FFB12E8();
}

uint64_t X509Policy.init(required:roots:clock:)@<X0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v27 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for X509Policy();
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + 8) = MEMORY[0x277D84F90];
  v15 = v11[8];
  v26 = v15;
  v16 = sub_22FFB0908();
  v17 = *(*(v16 - 8) + 56);
  v17(a4 + v15, 1, 1, v16);
  v18 = a4 + v11[9];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = (a4 + v11[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = a3;
  sub_22FEBF3A4(a3, v9, &qword_27DAF1510, &qword_22FFB3800);
  *(v14 + 1) = MEMORY[0x277D84F90];
  v21 = v11[8];
  v17(&v14[v21], 1, 1, v16);
  v22 = &v14[v11[9]];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v14[v11[10]];
  *v14 = v27;
  sub_22FED2C04(v28);
  sub_22FEAEA34(v20, &qword_27DAF1510, &qword_22FFB3800);
  sub_22FEB3E04(v9, &v14[v21]);
  *v23 = 0;
  *(v23 + 1) = 0;
  *v22 = 0;
  v22[8] = 1;
  sub_22FEAEA34(a4 + v26, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FECB41C(v14, a4);
}

uint64_t X509Policy.verifies(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22FECB3B8(v3, a3);
  v7 = (a3 + *(type metadata accessor for X509Policy() + 32));
  v8 = *v7;
  v9 = v7[1];

  result = sub_22FEA5C80(v8);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t X509Policy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for X509Policy();
  v3[26] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FED349C, 0, 0);
}

uint64_t sub_22FED349C()
{
  v89 = v0;
  v88 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 184);
  v3 = *(v2 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v4 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!v5[2])
  {
    sub_22FED466C();
    v11 = swift_allocError();
    *v12 = 0x8000000000000000;
    swift_willThrow();
    goto LABEL_4;
  }

  v6 = *(v0 + 200);
  v7 = v5[4];
  *(v0 + 224) = v7;
  v8 = v5[5];
  *(v0 + 232) = v8;
  sub_22FEA5608(v7, v8);

  v10 = 0;
  sub_22FED22EC(v9);

  v25 = MEMORY[0x277CC9318];
  v26 = MEMORY[0x277CC9300];
  *(v0 + 40) = MEMORY[0x277CC9318];
  *(v0 + 48) = v26;
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  v27 = __swift_project_boxed_opaque_existential_1((v0 + 16), v25);
  v28 = *v27;
  v29 = v27[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      *(v0 + 324) = 0;
      *(v0 + 318) = 0;
      sub_22FEA5608(v7, v8);
      v31 = (v0 + 318);
      v32 = (v0 + 318);
      goto LABEL_38;
    }

    v36 = *(v28 + 16);
    v37 = *(v28 + 24);
    sub_22FEA5608(v7, v8);
    v10 = sub_22FFB0588();
    if (v10)
    {
      v38 = sub_22FFB05B8();
      v28 = v36 - v38;
      if (__OFSUB__(v36, v38))
      {
        goto LABEL_51;
      }

      v10 += v28;
    }

    v39 = __OFSUB__(v37, v36);
    v40 = v37 - v36;
    if (!v39)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_26:
    v41 = v28;
    v42 = v28 >> 32;
    v40 = v42 - v41;
    if (v42 >= v41)
    {
      sub_22FEA5608(v7, v8);
      v10 = sub_22FFB0588();
      if (!v10)
      {
LABEL_30:
        v44 = sub_22FFB05A8();
        if (v44 >= v40)
        {
          v45 = v40;
        }

        else
        {
          v45 = v44;
        }

        v46 = &v10[v45];
        if (v10)
        {
          v32 = v46;
        }

        else
        {
          v32 = 0;
        }

        v31 = v10;
        goto LABEL_38;
      }

      v43 = sub_22FFB05B8();
      if (!__OFSUB__(v41, v43))
      {
        v10 += v41 - v43;
        goto LABEL_30;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      swift_once();
LABEL_42:
      v60 = v10;
      v61 = sub_22FFB12F8();
      __swift_project_value_buffer(v61, qword_281491688);
      v62 = sub_22FFB12D8();
      v63 = sub_22FFB1848();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_22FE99000, v62, v63, "AttestationBundle passed X509Policy: provisioning identity certificate trusted", v64, 2u);
        MEMORY[0x23190EFF0](v64, -1, -1);
      }

      v66 = *(v0 + 200);
      v65 = *(v0 + 208);

      v67 = v66 + *(v65 + 32);
      v68 = *v67;
      *(v0 + 272) = *v67;
      *(v0 + 280) = *(v67 + 8);
      if (v68)
      {
        v82 = v1;
        v83 = v60;
        v84 = v77;
        v85 = v81;
        v86 = v76;
        v87 = v79;

        v68(&v82);
        v69 = *(v0 + 80);
        v70 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v69);
        v80 = (*(v70 + 8) + **(v70 + 8));
        v71 = *(*(v70 + 8) + 4);
        v72 = swift_task_alloc();
        *(v0 + 288) = v72;
        *v72 = v0;
        v72[1] = sub_22FED3D88;
        v74 = *(v0 + 184);
        v73 = *(v0 + 192);
        v75 = *MEMORY[0x277D85DE8];

        return v80(v74, v73, v69, v70);
      }

      sub_22FEA55AC(v7, v8);

      goto LABEL_15;
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v30)
  {
    goto LABEL_26;
  }

  *(v0 + 304) = v28;
  *(v0 + 312) = v29;
  *(v0 + 314) = BYTE2(v29);
  *(v0 + 315) = BYTE3(v29);
  *(v0 + 316) = BYTE4(v29);
  *(v0 + 317) = BYTE5(v29);
  sub_22FEA5608(v7, v8);
  v31 = (v0 + 304);
  v32 = (v0 + 304 + BYTE6(v29));
LABEL_38:
  sub_22FF9E9E4(v31, v32, &v82);
  v47 = v82;
  v48 = v83;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v49 = sub_22FFB07B8();
  sub_22FEA55AC(v47, v48);
  v50 = SecCertificateCreateWithData(0, v49);

  if (v50)
  {
    ProvisioningCertificate.init(from:)(v50, &v82);
    v51 = *(v0 + 208);
    v78 = *(v0 + 192);
    v53 = v82;
    v52 = v83;
    *(v0 + 240) = v82;
    *(v0 + 248) = v52;
    v55 = v84;
    v54 = v85;
    v57 = v86;
    v56 = v87;
    *(v0 + 256) = v85;
    *(v0 + 264) = v56;
    *(v0 + 120) = &type metadata for ProvisioningCertificate;
    v58 = swift_allocObject();
    *(v0 + 96) = v58;
    v58[2] = v53;
    v58[3] = v52;
    v76 = v57;
    v77 = v55;
    v58[4] = v55;
    v58[5] = v54;
    v58[6] = v57;
    v58[7] = v56;
    sub_22FEBF3A4(v0 + 96, v0 + 128, &qword_27DAF1A78, &unk_22FFB3A50);
    v79 = v56;
    v59 = v54;

    v1 = v53;
    v10 = v52;
    v81 = v59;

    sub_22FECBD14(v0 + 128, v51, &protocol witness table for X509Policy, 0x65746164696C6176, 0xED00007472654364);
    sub_22FEAEA34(v0 + 96, &qword_27DAF1A78, &unk_22FFB3A50);
    if (qword_281490B48 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

  type metadata accessor for ProvisioningCertificate.Error();
  sub_22FED4B54(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error);
  v11 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_22FEA55AC(v7, v8);
LABEL_4:
  v13 = *(v0 + 200);
  if (*v13 != 1)
  {
    if (qword_281490B48 != -1)
    {
      swift_once();
      v13 = *(v0 + 200);
    }

    v17 = *(v0 + 216);
    v18 = sub_22FFB12F8();
    __swift_project_value_buffer(v18, qword_281491688);
    sub_22FECB3B8(v13, v17);
    v19 = sub_22FFB12D8();
    v20 = sub_22FFB1838();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 216);
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 67240192;
      v24 = *v22;
      sub_22FECB490(v22);
      *(v23 + 4) = v24;
      _os_log_impl(&dword_22FE99000, v19, v20, "Failing open since required=%{BOOL,public}d", v23, 8u);
      MEMORY[0x23190EFF0](v23, -1, -1);
    }

    else
    {
      sub_22FECB490(*(v0 + 216));
    }

LABEL_15:
    v33 = *(v0 + 216);

    v15 = *(v0 + 8);
    v34 = *MEMORY[0x277D85DE8];
    goto LABEL_16;
  }

  v14 = *(v0 + 216);
  swift_willThrow();

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];
LABEL_16:

  return v15();
}

uint64_t sub_22FED3D88()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_22FED3FB0;
  }

  else
  {
    v3 = sub_22FED3EC8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FED3EC8()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  sub_22FEA55AC(v0[28], v0[29]);

  sub_22FEA5C80(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v7 = v0[27];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_22FED3FB0()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  sub_22FEA55AC(v0[28], v0[29]);

  sub_22FEA5C80(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v7 = v0[37];
  v8 = v0[25];
  if (*v8)
  {
    v9 = v0[27];
    v10 = v0[37];
    swift_willThrow();

    v11 = v0[1];
    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (qword_281490B48 != -1)
    {
      swift_once();
      v8 = v0[25];
    }

    v13 = v0[27];
    v14 = sub_22FFB12F8();
    __swift_project_value_buffer(v14, qword_281491688);
    sub_22FECB3B8(v8, v13);
    v15 = sub_22FFB12D8();
    v16 = sub_22FFB1838();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[27];
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 67240192;
      v20 = *v18;
      sub_22FECB490(v18);
      *(v19 + 4) = v20;
      _os_log_impl(&dword_22FE99000, v15, v16, "Failing open since required=%{BOOL,public}d", v19, 8u);
      MEMORY[0x23190EFF0](v19, -1, -1);
    }

    else
    {
      sub_22FECB490(v0[27]);
    }

    v21 = v0[27];

    v11 = v0[1];
    v22 = *MEMORY[0x277D85DE8];
  }

  return v11();
}

uint64_t sub_22FED41E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return X509Policy.evaluate(bundle:context:)(a1, a2);
}

BOOL sub_22FED4324(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22FED4354@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22FED4380@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_22FED4458@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_22FED446C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1ED0, &qword_22FFBF090);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FFB45C0;
  v1 = qword_27DAF1240;
  v2 = *MEMORY[0x277CBECE8];
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_27DB05990;
  v4 = *algn_27DB05998;
  sub_22FEA5608(qword_27DB05990, *algn_27DB05998);
  v5 = sub_22FFB07B8();
  sub_22FEA55AC(v3, v4);
  v6 = SecCertificateCreateWithData(v2, v5);

  if (v6)
  {
    *(v0 + 32) = v6;
    qword_27DB059E8 = v0;
  }

  else
  {
    __break(1u);
  }
}

void sub_22FED456C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1ED0, &qword_22FFBF090);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FFB45C0;
  v1 = qword_28148F7A0;
  v2 = *MEMORY[0x277CBECE8];
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_281491378;
  v4 = qword_281491380;
  sub_22FEA5608(qword_281491378, qword_281491380);
  v5 = sub_22FFB07B8();
  sub_22FEA55AC(v3, v4);
  v6 = SecCertificateCreateWithData(v2, v5);

  if (v6)
  {
    *(v0 + 32) = v6;
    qword_2814916A0 = v0;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22FED466C()
{
  result = qword_27DAF1EA8;
  if (!qword_27DAF1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EA8);
  }

  return result;
}

unint64_t sub_22FED46C4()
{
  result = qword_27DAF1EB0;
  if (!qword_27DAF1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EB0);
  }

  return result;
}

unint64_t sub_22FED471C()
{
  result = qword_27DAF1EB8;
  if (!qword_27DAF1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EB8);
  }

  return result;
}

unint64_t sub_22FED4774()
{
  result = qword_27DAF1EC0;
  if (!qword_27DAF1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EC0);
  }

  return result;
}

unint64_t sub_22FED47CC()
{
  result = qword_27DAF1EC8;
  if (!qword_27DAF1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EC8);
  }

  return result;
}

void sub_22FED4848()
{
  sub_22FED49AC(319, &qword_28148F158, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22FED4954();
    if (v1 <= 0x3F)
    {
      sub_22FED49AC(319, qword_281490B58, &type metadata for X509Policy.RevocationPolicy, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22FEA9D60();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FED4954()
{
  if (!qword_281491328)
  {
    sub_22FFB0908();
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_281491328);
    }
  }
}

void sub_22FED49AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for X509Policy.RevocationPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for X509Policy.RevocationPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t get_enum_tag_for_layout_string_16CloudAttestation10X509PolicyV5ErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_22FED4A6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22FED4AC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_22FED4B1C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_22FED4B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FED4BA4()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491448);
  __swift_project_value_buffer(v0, qword_281491448);
  return sub_22FFB12E8();
}

uint64_t APTicketPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_22FFB13F8();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_22FFB13B8();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FED4D70, 0, 0);
}

uint64_t sub_22FED4D70()
{
  v51 = v0;
  v50 = *MEMORY[0x277D85DE8];
  v45 = **(v0 + 104);
  AttestationPolicyContext.validatedAttestation.getter(&v46);
  if (v47 >> 60 == 15)
  {
    sub_22FED5408();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
LABEL_17:
    v30 = *(v0 + 152);
    v31 = *(v0 + 128);

    v32 = *(v0 + 8);
    v33 = *MEMORY[0x277D85DE8];
    goto LABEL_18;
  }

  v44 = v47;
  v2 = (v0 + 80);
  v3 = v46;
  v5 = v48;
  v4 = v49;
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 64;
  *(v6 + 24) = v0 + 72;
  sub_22FED55F8(v5, v4, sub_22FED545C);

  v7 = *(v0 + 96);
  if (v46 == 3)
  {
    v8 = (*(v7 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
    swift_beginAccess();
    v9 = (v8 + 1);
  }

  else
  {
    v10 = *(v7 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
    v8 = (v10 + 32);
    swift_beginAccess();
    v9 = (v10 + 40);
  }

  v11 = *v9;
  v12 = *v8;
  *v2 = 0;
  *(v0 + 88) = 0;
  v13 = swift_task_alloc();
  v13[2] = v2;
  v13[3] = v0 + 88;
  v13[4] = v3;
  v13[5] = v44;
  v13[6] = v5;
  v13[7] = v4;
  sub_22FEA5608(v12, v11);
  sub_22FED55F8(v5, v4, sub_22FED57C4);

  if ((~v48 & 0x3000000000000000) == 0)
  {
    sub_22FED5408();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    sub_22FEA55AC(v12, v11);
    sub_22FECB858(v3, v44, v5, v4);
    goto LABEL_17;
  }

  v42 = v3;
  v43 = v5;
  v15 = v46;
  v16 = v11;
  v17 = *(v0 + 152);
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 112);
  v21 = v48 & 0xDFFFFFFFFFFFFFFFLL;
  v40 = v47;
  v41 = v46;
  if ((v48 & 0x2000000000000000) != 0)
  {
    v15 = v47;
  }

  else
  {
    v21 = v47;
  }

  v37 = v21;
  v38 = v15;
  v39 = v48;
  sub_22FED57E8();
  sub_22FFB1388();
  sub_22FEA5608(v12, v16);
  sub_22FED5478(v12, v16);
  sub_22FEA55AC(v12, v16);
  sub_22FFB1368();
  (*(v19 + 8))(v18, v20);
  if ((sub_22FECA81C(v17, v38, v37) & 1) == 0)
  {
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 136);
    sub_22FED5408();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
    sub_22FECB858(v42, v44, v43, v4);
    sub_22FED5840(v41, v40, v39);
    sub_22FEA55AC(v12, v16);
    (*(v27 + 8))(v26, v28);
    goto LABEL_17;
  }

  if (qword_281490470 != -1)
  {
    swift_once();
  }

  v22 = sub_22FFB12F8();
  __swift_project_value_buffer(v22, qword_281491448);
  v23 = sub_22FFB12D8();
  v24 = sub_22FFB1848();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22FE99000, v23, v24, "AttestationBundle passed APTicketPolicy: reported AP ticket matches SEP attestation", v25, 2u);
    MEMORY[0x23190EFF0](v25, -1, -1);
    sub_22FECB858(v42, v44, v43, v4);
    sub_22FED5840(v41, v40, v39);

    sub_22FEA55AC(v12, v16);
  }

  else
  {
    sub_22FECB858(v42, v44, v43, v4);
    sub_22FED5840(v41, v40, v39);
    sub_22FEA55AC(v12, v16);
  }

  v35 = *(v0 + 128);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v32 = *(v0 + 8);
  v36 = *MEMORY[0x277D85DE8];
LABEL_18:

  return v32();
}

uint64_t sub_22FED52E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return APTicketPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t APTicketPolicy.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FED5408()
{
  result = qword_27DAF1ED8;
  if (!qword_27DAF1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1ED8);
  }

  return result;
}

uint64_t sub_22FED5478(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_22FFB13F8();
      sub_22FED57E8();
      result = sub_22FFB1358();
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

  result = sub_22FF5F89C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FED55F8(uint64_t a1, unint64_t a2, uint64_t (*a3)(void *))
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v17, 0, 14);
      goto LABEL_15;
    }

    v5 = *(a1 + 16);
    v6 = sub_22FFB0588();
    if (v6)
    {
      v7 = v6;
      v8 = sub_22FFB05B8();
      if (__OFSUB__(v5, v8))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v9 = (v5 - v8 + v7);
      sub_22FFB05A8();
      if (v9)
      {
LABEL_13:
        v15 = v9;
LABEL_16:
        result = a3(v15);
        v16 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else
    {
      sub_22FFB05A8();
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
    v17[0] = a1;
    LOWORD(v17[1]) = a2;
    BYTE2(v17[1]) = BYTE2(a2);
    BYTE3(v17[1]) = BYTE3(a2);
    BYTE4(v17[1]) = BYTE4(a2);
    BYTE5(v17[1]) = BYTE5(a2);
LABEL_15:
    v15 = v17;
    goto LABEL_16;
  }

  v10 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = sub_22FFB0588();
  if (!v11)
  {
LABEL_22:
    result = sub_22FFB05A8();
    goto LABEL_23;
  }

  v12 = v11;
  v13 = sub_22FFB05B8();
  if (__OFSUB__(v10, v13))
  {
    goto LABEL_19;
  }

  v9 = (v10 - v13 + v12);
  result = sub_22FFB05A8();
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_23:
  __break(1u);
  return result;
}

_BYTE *sub_22FED57C4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_22FF541F4(*(v1 + 16), *(v1 + 24), *(v1 + 48), *(v1 + 56), a1);
}

unint64_t sub_22FED57E8()
{
  result = qword_28148F188;
  if (!qword_28148F188)
  {
    sub_22FFB13F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F188);
  }

  return result;
}

uint64_t sub_22FED5840(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((~a3 & 0x3000000000000000) != 0)
  {
    return sub_22FED5854(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22FED5854(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    a1 = a2;
    a2 = a3 & 0xDFFFFFFFFFFFFFFFLL;
  }

  return sub_22FEA55AC(a1, a2);
}

unint64_t sub_22FED586C()
{
  result = qword_27DAF1EE0;
  if (!qword_27DAF1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EE0);
  }

  return result;
}

CloudAttestation::AttestationPolicyContext __swiftcall AttestationPolicyContext.init()()
{
  v1 = v0;
  result.context._rawValue = sub_22FFA7050(MEMORY[0x277D84F90]);
  v1->context._rawValue = result.context._rawValue;
  return result;
}

double AttestationPolicyContext.subscript.getter@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v35 = a4;
  v34 = *(a3 - 8);
  v7 = *(v34 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v8;
  v12 = v8[1];
  v13 = v8[2];
  v14 = v8[3];
  v33 = v4;
  v15 = *v4;
  if (*(v15 + 16) && (v16 = sub_22FFA62AC(v11, v12, v13, v14), (v17 & 1) != 0))
  {
    sub_22FEBF2A4(*(v15 + 56) + 32 * v16, &v36);
    sub_22FED62C0(&v36);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A78, &unk_22FFB3A50);
    v19 = v35;
    v35[3] = v18;
    v20 = swift_allocObject();
    *v19 = v20;
    if (*(v15 + 16) && (v21 = sub_22FFA62AC(v11, v12, v13, v14), (v22 & 1) != 0))
    {
      sub_22FEBF2A4(*(v15 + 56) + 32 * v21, v20 + 16);
    }

    else
    {
      result = 0.0;
      *(v20 + 16) = 0u;
      *(v20 + 32) = 0u;
    }
  }

  else
  {
    v30 = v13;
    v31 = v12;
    v32 = v11;
    v36 = 0u;
    v37 = 0u;
    v24 = sub_22FED62C0(&v36);
    v25 = v38;
    a2(v24);
    if (!v25)
    {
      *(&v37 + 1) = a3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
      v27 = v34;
      (*(v34 + 16))(boxed_opaque_existential_1, v10, a3);

      sub_22FECBD14(&v36, v32, v31, v30, v14);
      v28 = v35;
      v35[3] = a3;
      v29 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(v27 + 32))(v29, v10, a3);
    }
  }

  return result;
}

uint64_t AttestationPolicyContext.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  sub_22FED6328(a1, v8);
  sub_22FECBD14(v8, v3, v4, v5, v6);
  return sub_22FED62C0(a1);
}

uint64_t AttestationPolicyContext.Key.init(domain:key:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double AttestationPolicyContext.subscript.getter@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_22FFA62AC(*a1, a1[1], a1[2], a1[3]), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 32 * v5;

    sub_22FEBF2A4(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t AttestationPolicy.evaluate(bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22FED5C44, 0, 0);
}

uint64_t sub_22FED5C44()
{
  v10 = v0[5];
  v0[2] = sub_22FFA7050(MEMORY[0x277D84F90]);
  v1 = *(v10 + 8);
  v9 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22FED5D78;
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];

  return (v9)(v7, v0 + 2, v6, v4);
}

uint64_t sub_22FED5D78()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 16);

  if (v0)
  {
    v6 = sub_22FED5EAC;
  }

  else
  {
    v6 = sub_22FEA8FEC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t AttestationPolicyContext.Key.domain.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t AttestationPolicyContext.Key.key.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_22FED5EFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  sub_22FED6328(a1, v9);
  sub_22FED6328(v9, v8);

  sub_22FECBD14(v8, v3, v4, v5, v6);
  return sub_22FED62C0(v9);
}

void (*AttestationPolicyContext.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x88uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = a2[1];
  *(v6 + 96) = v2;
  *(v6 + 104) = v7;
  v9 = a2[2];
  v10 = a2[3];
  *(v6 + 112) = v8;
  *(v6 + 120) = v9;
  *(v6 + 128) = v10;
  v11 = *v2;
  if (*(v11 + 16) && (v12 = sub_22FFA62AC(v7, v8, v9, v10), (v13 & 1) != 0))
  {
    sub_22FEBF2A4(*(v11 + 56) + 32 * v12, v6);
  }

  else
  {
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  return sub_22FED603C;
}

void sub_22FED603C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v6 = *(*a1 + 104);
  v5 = *(*a1 + 112);
  v7 = *(*a1 + 96);
  if (a2)
  {
    sub_22FED6328(*a1, v2 + 32);
    sub_22FED6328(v2 + 32, v2 + 64);
    sub_22FECBD14(v2 + 64, v6, v5, v3, v4);
    sub_22FED62C0(v2 + 32);
  }

  else
  {
    sub_22FED6328(*a1, v2 + 32);
    sub_22FECBD14(v2 + 32, v6, v5, v3, v4);
  }

  sub_22FED62C0(v2);

  free(v2);
}

uint64_t static AttestationPolicyContext.Key.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8();
  }
}

uint64_t AttestationPolicyContext.Key.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FED61C0()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FED6234()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FED6278(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8();
  }
}

uint64_t sub_22FED62C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A78, &unk_22FFB3A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FED6328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A78, &unk_22FFB3A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FED639C()
{
  result = qword_281490BF0[0];
  if (!qword_281490BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281490BF0);
  }

  return result;
}

uint64_t dispatch thunk of AttestationPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22FEAA0D4;

  return v13(a1, a2, a3, a4);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22FED653C(uint64_t *a1, int a2)
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

uint64_t sub_22FED6584(uint64_t result, int a2, int a3)
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

uint64_t CryptexPolicy.init(locked:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_22FED65E0()
{
  v0 = sub_22FFB0958();
  __swift_allocate_value_buffer(v0, qword_281490920);
  v1 = __swift_project_value_buffer(v0, qword_281490920);
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281491418);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static CryptexPolicy.slot.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281490918 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0958();
  v3 = __swift_project_value_buffer(v2, qword_281490920);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FED6750()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491478);
  __swift_project_value_buffer(v0, qword_281491478);
  return sub_22FFB12E8();
}

uint64_t CryptexPolicy.init(_:locked:fallback:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t CryptexPolicy.init(_:locked:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t CryptexPolicy.init(locked:fallback:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  return result;
}

uint64_t CryptexPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(*(type metadata accessor for SEP.SealedHash.Value(0) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  v5 = type metadata accessor for SEP.SealedHash(0);
  *(v3 + 48) = v5;
  v6 = *(v5 - 8);
  *(v3 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F00, &qword_22FFB4AF8);
  *(v3 + 80) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *v2;
  *(v3 + 120) = v11;
  *(v3 + 128) = v12;
  *(v3 + 136) = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_22FED69AC, 0, 0);
}

uint64_t sub_22FED69AC()
{
  v126 = v0;
  v1 = *(v0 + 128);
  if (!v1)
  {
    v122 = **(v0 + 24);
    AttestationPolicyContext.validatedAttestation.getter(v123);
    v124 = v123[0];
    v125 = v123[1];
    v1 = sub_22FED7DBC(&v124);
    sub_22FECB858(v124, *(&v124 + 1), v125, *(&v125 + 1));
    if (!v1)
    {
      v1 = sub_22FFA7434(MEMORY[0x277D84F90]);
    }
  }

  if (qword_281490918 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0958();
  v3 = __swift_project_value_buffer(v2, qword_281490920);
  v4 = v3;
  if (*(v1 + 16) && (v5 = sub_22FFA6214(v3), (v6 & 1) != 0))
  {
    sub_22FED81B0(*(v1 + 56) + *(*(v0 + 56) + 72) * v5, *(v0 + 120), type metadata accessor for SEP.SealedHash);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  v12 = *(v10 + 56);
  v12(v8, v7, 1, v9);
  sub_22FF91BD0(v4, 0, &v124);
  v13 = v124;
  v14 = BYTE8(v124);
  if (BYTE8(v124) != 255)
  {
    v15 = *(v0 + 120);
    v16 = *(v0 + 48);
    goto LABEL_12;
  }

  v120 = v124;
  v121 = v2;
  if (qword_27DAF1270 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 112);
  v31 = *(v0 + 120);
  v34 = *(v0 + 80);
  v33 = *(v0 + 88);
  v36 = *(v0 + 48);
  v35 = *(v0 + 56);
  v37 = __swift_project_value_buffer(v36, qword_27DAF1EE8);
  sub_22FED81B0(v37, v32, type metadata accessor for SEP.SealedHash);
  v12(v32, 0, 1, v36);
  v38 = *(v34 + 48);
  sub_22FED80E0(v31, v33);
  sub_22FED80E0(v32, v33 + v38);
  v39 = *(v35 + 48);
  if (v39(v33, 1, v36) == 1)
  {
    v40 = *(v0 + 48);
    sub_22FEAEA34(*(v0 + 112), &qword_27DAF1F08, &qword_22FFB4B00);
    v13 = v120;
    if (v39(v33 + v38, 1, v40) == 1)
    {
      sub_22FEAEA34(*(v0 + 88), &qword_27DAF1F08, &qword_22FFB4B00);
      v41 = 1;
      v2 = v121;
      goto LABEL_51;
    }

    goto LABEL_32;
  }

  v42 = *(v0 + 48);
  sub_22FED80E0(*(v0 + 88), *(v0 + 104));
  if (v39(v33 + v38, 1, v42) == 1)
  {
    v43 = *(v0 + 104);
    sub_22FEAEA34(*(v0 + 112), &qword_27DAF1F08, &qword_22FFB4B00);
    sub_22FED82C8(v43, type metadata accessor for SEP.SealedHash);
    v13 = v120;
LABEL_32:
    sub_22FEAEA34(*(v0 + 88), &qword_27DAF1F00, &qword_22FFB4AF8);
    v41 = 0;
    v2 = v121;
    goto LABEL_51;
  }

  v61 = *(v0 + 104);
  v62 = *(v0 + 72);
  sub_22FED8260(v33 + v38, v62, type metadata accessor for SEP.SealedHash);
  if (*v61 == *v62)
  {
    v63 = *(*(v0 + 48) + 20);
    v41 = _s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(*(v0 + 104) + v63, *(v0 + 72) + v63);
  }

  else
  {
    v41 = 0;
  }

  v65 = *(v0 + 104);
  v64 = *(v0 + 112);
  v66 = *(v0 + 88);
  sub_22FED82C8(*(v0 + 72), type metadata accessor for SEP.SealedHash);
  sub_22FEAEA34(v64, &qword_27DAF1F08, &qword_22FFB4B00);
  sub_22FED82C8(v65, type metadata accessor for SEP.SealedHash);
  sub_22FEAEA34(v66, &qword_27DAF1F08, &qword_22FFB4B00);
  v13 = v120;
  v2 = v121;
LABEL_51:
  v15 = *(v0 + 120);
  v16 = *(v0 + 48);
  v67 = v39(v15, 1, v16);
  v68 = *(v0 + 136);
  if (v67 == 1)
  {
    if ((*(v0 + 136) & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  if (*(v0 + 136))
  {
LABEL_55:
    if (v41)
    {
      if (qword_281490910 != -1)
      {
        swift_once();
      }

      v69 = sub_22FFB12F8();
      __swift_project_value_buffer(v69, qword_281491478);
      v70 = sub_22FFB12D8();
      v71 = sub_22FFB1838();
      if (!os_log_type_enabled(v70, v71))
      {
        goto LABEL_66;
      }

      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = "Device has no cryptexes installed, and is in cryptex lockdown";
      goto LABEL_65;
    }

    goto LABEL_12;
  }

  if (v41)
  {
LABEL_61:
    if (qword_281490910 != -1)
    {
      swift_once();
    }

    v74 = sub_22FFB12F8();
    __swift_project_value_buffer(v74, qword_281491478);
    v70 = sub_22FFB12D8();
    v71 = sub_22FFB1838();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_66;
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = "Device has no cryptexes installed";
LABEL_65:
    _os_log_impl(&dword_22FE99000, v70, v71, v73, v72, 2u);
    MEMORY[0x23190EFF0](v72, -1, -1);
LABEL_66:

    goto LABEL_67;
  }

LABEL_12:
  v17 = *(v0 + 96);
  v18 = *(v0 + 56);
  sub_22FED80E0(v15, v17);
  v19 = (*(v18 + 48))(v17, 1, v16);
  v20 = *(v0 + 96);
  if (v19 == 1)
  {
    sub_22FED8150(v13, v14);
    sub_22FEAEA34(v20, &qword_27DAF1F08, &qword_22FFB4B00);
    if (qword_281490910 != -1)
    {
      swift_once();
    }

    v21 = sub_22FFB12F8();
    __swift_project_value_buffer(v21, qword_281491478);
    v22 = sub_22FFB12D8();
    v23 = sub_22FFB1838();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22FE99000, v22, v23, "Missing cryptex sealed hash slot from SEP Attestation", v24, 2u);
      MEMORY[0x23190EFF0](v24, -1, -1);
    }

    type metadata accessor for CryptexPolicy.Error();
    sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_76;
  }

  sub_22FED8260(*(v0 + 96), *(v0 + 64), type metadata accessor for SEP.SealedHash);
  if (v14 == 255)
  {
    if (qword_281490910 != -1)
    {
      swift_once();
    }

    v44 = sub_22FFB12F8();
    __swift_project_value_buffer(v44, qword_281491478);
    v45 = sub_22FFB12D8();
    v46 = sub_22FFB1838();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22FE99000, v45, v46, "Missing cryptex ledger from SecureConfigDB", v47, 2u);
      MEMORY[0x23190EFF0](v47, -1, -1);
    }

    v30 = *(v0 + 64);
    v48 = *(v0 + 48);

    type metadata accessor for CryptexPolicy.Error();
    sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error);
    swift_allocError();
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F18, &qword_22FFB4B08) + 48);
    (*(*(v2 - 8) + 16))(v50, v4, v2);
    sub_22FED81B0(v30 + *(v48 + 20), v50 + v51, type metadata accessor for SEP.SealedHash.Value);
    swift_storeEnumTagMultiPayload();
    goto LABEL_73;
  }

  v25 = **(v0 + 64);
  if ((v25 & 8) != 0)
  {
    if (qword_281490910 != -1)
    {
      swift_once();
    }

    v52 = v25 & 4;
    v53 = sub_22FFB12F8();
    __swift_project_value_buffer(v53, qword_281491478);
    v54 = sub_22FFB12D8();
    v55 = sub_22FFB1848();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 67109120;
      *(v56 + 4) = v52 >> 2;
      _os_log_impl(&dword_22FE99000, v54, v55, "Observed Cryptex Lockdown State: %{BOOL}d", v56, 8u);
      MEMORY[0x23190EFF0](v56, -1, -1);
    }

    v57 = *(v0 + 136);

    if (v57 == 1)
    {
      if (((v52 != 0) ^ v14))
      {
        sub_22FED8150(v13, v14);
        v58 = sub_22FFB12D8();
        v59 = sub_22FFB1838();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_22FE99000, v58, v59, "Cryptex Log and SEP Attestation's Sealed Hash have inconsistent lock states", v60, 2u);
          MEMORY[0x23190EFF0](v60, -1, -1);
        }

LABEL_86:
        v112 = *(v0 + 64);

        type metadata accessor for CryptexPolicy.Error();
        sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error);
        swift_allocError();
        *v113 = v14 & 1;
        v113[1] = v52 >> 2;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v89 = v112;
        goto LABEL_75;
      }

      if (!v52 || (v14 & 1) == 0)
      {
        sub_22FED8150(v13, v14);
        v58 = sub_22FFB12D8();
        v110 = sub_22FFB1838();
        if (os_log_type_enabled(v58, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_22FE99000, v58, v110, "Cryptex slot is unexpectedly unlocked", v111, 2u);
          MEMORY[0x23190EFF0](v111, -1, -1);
        }

        goto LABEL_86;
      }
    }

    v84 = *(v0 + 16);
    v85 = sub_22FF9293C();
    if (!v85)
    {
      v87 = sub_22FFB13F8();
      v86 = sub_22FED8218(&qword_28148F188, MEMORY[0x277CC5550]);
      v85 = v87;
    }

    v88 = *(v0 + 32);
    *&v124 = v13;
    BYTE8(v124) = v14 & 1;
    sub_22FF92D94(v85, v86, 0xF000000000000000, v88);
    v99 = *(v0 + 64);
    v100 = *(v0 + 40);
    v101 = *(v0 + 48);
    v102 = *(v0 + 32);
    sub_22FED8150(v13, v14);
    sub_22FED8260(v102, v100, type metadata accessor for SEP.SealedHash.Value);
    v103 = *(v101 + 20);
    v104 = _s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(v100, v99 + v103);
    v105 = sub_22FFB12D8();
    if ((v104 & 1) == 0)
    {
      v114 = sub_22FFB1838();
      if (os_log_type_enabled(v105, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_22FE99000, v105, v114, "Cryptex log from SecureConfigDB did not replay against SEP Attestation's Sealed Hash", v115, 2u);
        MEMORY[0x23190EFF0](v115, -1, -1);
      }

      v30 = *(v0 + 64);
      v116 = *(v0 + 40);

      type metadata accessor for CryptexPolicy.Error();
      sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error);
      swift_allocError();
      v118 = v117;
      v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F20, &qword_22FFB5830) + 48);
      sub_22FED81B0(v116, v118, type metadata accessor for SEP.SealedHash.Value);
      sub_22FED81B0(v99 + v103, v118 + v119, type metadata accessor for SEP.SealedHash.Value);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FED82C8(v116, type metadata accessor for SEP.SealedHash.Value);
      goto LABEL_74;
    }

    v106 = sub_22FFB1848();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_22FE99000, v105, v106, "AttestationBundle passed CryptexPolicy: reported cryptexes match SEP attestation", v107, 2u);
      MEMORY[0x23190EFF0](v107, -1, -1);
    }

    v108 = *(v0 + 64);
    v109 = *(v0 + 40);

    sub_22FED82C8(v109, type metadata accessor for SEP.SealedHash.Value);
    sub_22FED82C8(v108, type metadata accessor for SEP.SealedHash);
LABEL_67:
    v75 = *(v0 + 112);
    v77 = *(v0 + 96);
    v76 = *(v0 + 104);
    v78 = *(v0 + 88);
    v80 = *(v0 + 64);
    v79 = *(v0 + 72);
    v82 = *(v0 + 32);
    v81 = *(v0 + 40);
    sub_22FEAEA34(*(v0 + 120), &qword_27DAF1F08, &qword_22FFB4B00);

    v83 = *(v0 + 8);
    goto LABEL_77;
  }

  sub_22FED8150(v13, v14);
  if (qword_281490910 != -1)
  {
    swift_once();
  }

  v26 = sub_22FFB12F8();
  __swift_project_value_buffer(v26, qword_281491478);
  v27 = sub_22FFB12D8();
  v28 = sub_22FFB1838();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22FE99000, v27, v28, "SEP Cryptex Sealed Hash Slot is missing .cryptexMeasurement", v29, 2u);
    MEMORY[0x23190EFF0](v29, -1, -1);
  }

  v30 = *(v0 + 64);

  type metadata accessor for CryptexPolicy.Error();
  sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_73:
  swift_willThrow();
LABEL_74:
  v89 = v30;
LABEL_75:
  sub_22FED82C8(v89, type metadata accessor for SEP.SealedHash);
LABEL_76:
  v90 = *(v0 + 112);
  v92 = *(v0 + 96);
  v91 = *(v0 + 104);
  v93 = *(v0 + 88);
  v95 = *(v0 + 64);
  v94 = *(v0 + 72);
  v96 = *(v0 + 32);
  v97 = *(v0 + 40);
  sub_22FEAEA34(*(v0 + 120), &qword_27DAF1F08, &qword_22FFB4B00);

  v83 = *(v0 + 8);
LABEL_77:

  return v83();
}

uint64_t sub_22FED7C40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return CryptexPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t sub_22FED7CE4()
{
  v0 = type metadata accessor for SEP.SealedHash(0);
  __swift_allocate_value_buffer(v0, qword_27DAF1EE8);
  v1 = __swift_project_value_buffer(v0, qword_27DAF1EE8);
  v2 = sub_22FFB05D8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v7 = 0x3000000000;
  v8 = sub_22FFB0598();
  sub_22FF555D0(&v7, 0);
  v5 = v7;
  LOBYTE(v7) = 14;
  return SEP.SealedHash.init(digest:flags:)(v5, v8 | 0x4000000000000000, &v7, v1);
}

unint64_t sub_22FED7DBC(uint64_t *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for SEP.SealedHash(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  result = 0;
  v15 = a1[1];
  if (v15 >> 60 != 15)
  {
    v16 = a1[2];
    v17 = a1[3];
    v24 = *a1;
    sub_22FEA5608(v24, v15);
    sub_22FEA5608(v16, v17);
    v25 = sub_22FFA7434(MEMORY[0x277D84F90]);
    if (qword_281490918 != -1)
    {
      swift_once();
    }

    v18 = sub_22FFB0958();
    v19 = __swift_project_value_buffer(v18, qword_281490920);
    memset(v26, 0, sizeof(v26));
    v23 = MEMORY[0x28223BE20](v19);
    *(&v23 - 2) = v23;
    *(&v23 - 1) = v26;
    sub_22FED55F8(v16, v17, sub_22FED86EC);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_22FECB858(v24, v15, v16, v17);
      sub_22FEAEA34(v5, &qword_27DAF1F08, &qword_22FFB4B00);
      result = v25;
    }

    else
    {
      sub_22FED8260(v5, v13, type metadata accessor for SEP.SealedHash);
      sub_22FED81B0(v13, v11, type metadata accessor for SEP.SealedHash);
      v20 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v20;
      sub_22FF8CAC0(v11, v23, isUniquelyReferenced_nonNull_native);
      sub_22FECB858(v24, v15, v16, v17);
      sub_22FED82C8(v13, type metadata accessor for SEP.SealedHash);
      result = *v26;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FED80E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FED8150(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t type metadata accessor for CryptexPolicy.Error()
{
  result = qword_27DAF1F28;
  if (!qword_27DAF1F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FED81B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FED8218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FED8260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FED82C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22FED833C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22FED8398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_22FED83FC()
{
  sub_22FED8498();
  if (v0 <= 0x3F)
  {
    sub_22FED850C();
    if (v1 <= 0x3F)
    {
      sub_22FED856C();
      if (v2 <= 0x3F)
      {
        sub_22FED85D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_22FED8498()
{
  if (!qword_27DAF1F38)
  {
    sub_22FFB0958();
    type metadata accessor for SEP.SealedHash.Value(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF1F38);
    }
  }
}

void sub_22FED850C()
{
  if (!qword_27DAF1F40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF1F40);
    }
  }
}

void sub_22FED856C()
{
  if (!qword_27DAF1F48)
  {
    type metadata accessor for SEP.SealedHash.Value(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF1F48);
    }
  }
}

unint64_t sub_22FED85D4()
{
  result = qword_28148F098;
  if (!qword_28148F098)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28148F098);
  }

  return result;
}

uint64_t sub_22FED8638(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22FED8688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}