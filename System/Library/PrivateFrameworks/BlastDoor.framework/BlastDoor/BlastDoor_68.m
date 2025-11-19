uint64_t sub_2145FF0C4(unsigned int *a1)
{
  if (a1[1])
  {
    return 1;
  }

  else
  {
    return sub_214041DF4(*a1, 2, *(v1 + 16));
  }
}

uint64_t sub_2145FF1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Untrusted();

  return sub_213FB1620(v4, a2);
}

uint64_t sub_2145FF1F0(uint64_t a1, uint64_t a2)
{
  sub_2145FF878(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_2145FF25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Untrusted();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_2145FF2C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Untrusted();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

void (*sub_2145FF334(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v7[5] = v11;
  v13 = type metadata accessor for Untrusted();
  sub_213FB1620(v13, v12);
  return sub_2145FF44C;
}

void sub_2145FF44C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_2145FF878(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_2145FF878((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2145FF538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for Untrusted();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1);
  v11 = type metadata accessor for Validated();
  return sub_2145FF2C8(v9, v11);
}

void (*sub_2145FF618(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = *(a2 + 16);
  v8 = type metadata accessor for Untrusted();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_2145FF750;
}

void sub_2145FF750(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    v9 = type metadata accessor for Untrusted();
    (*(*(v9 - 8) + 40))(v8, v3, v9);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = *v2;
    v10 = v2[1];
    v12 = type metadata accessor for Untrusted();
    (*(*(v12 - 8) + 40))(v11, v4, v12);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2145FF878(uint64_t a1, uint64_t a2)
{
  v7 = 2;
  v3 = *(a2 + 16);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  v4 = type metadata accessor for Untrusted();
  sub_21469B914(a1, &v7, v6, v4);
}

uint64_t keypath_getTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(a2 + a3 - 8);
  v6 = type metadata accessor for Validated();
  return a4(v6);
}

uint64_t sub_2145FF990(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Untrusted();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145FFA00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_2145FFBC0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 16) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 16) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = (&a1[v11 + 16] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;

      v25(v21, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_2145FFEB8()
{
  v1 = type metadata accessor for MBDChip();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v26 - v7);
  v9 = type metadata accessor for MBDPersistentMenuItem(0);
  sub_2146002B8(v0 + *(v9 + 20), v8);
  v10 = type metadata accessor for MBDPersistentMenuItemContent(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_214600F9C(v8, v4, type metadata accessor for MBDChip);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E6910;
    *(inited + 32) = 1701869940;
    v23 = MEMORY[0x277D83B88];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0;
    *(inited + 72) = v23;
    *(inited + 80) = 0x746E65746E6F63;
    *(inited + 88) = 0xE700000000000000;
    v24 = sub_2144DA1CC();
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *(inited + 96) = v24;
    v25 = sub_214045690(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v18 = sub_2140418B8(v25);

    sub_214601004(v4, type metadata accessor for MBDChip);
    return v18;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_2146EA710;
    *(v19 + 32) = 1701869940;
    v20 = v19 + 32;
    *(v19 + 72) = MEMORY[0x277D83B88];
    *(v19 + 40) = 0xE400000000000000;
    *(v19 + 48) = -1;
    v18 = sub_2140457C0(v19);
    swift_setDeallocating();
    sub_213FB2DF4(v20, &qword_27C903FE0, &unk_2146EA760);
  }

  else
  {
    v12 = v8[3];
    v29 = v8[2];
    v30 = v12;
    v31 = v8[4];
    v13 = v8[1];
    v27 = *v8;
    v28 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_2146E6910;
    *(v14 + 32) = 1701869940;
    v15 = MEMORY[0x277D83B88];
    *(v14 + 40) = 0xE400000000000000;
    *(v14 + 48) = 1;
    *(v14 + 72) = v15;
    *(v14 + 80) = 0x746E65746E6F63;
    *(v14 + 88) = 0xE700000000000000;
    v26[11] = v29;
    v26[12] = v30;
    v26[13] = v31;
    v26[9] = v27;
    v26[10] = v28;
    v16 = sub_214093C70();
    *(v14 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *(v14 + 96) = v16;
    v17 = sub_214045690(v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v18 = sub_2140418B8(v17);

    sub_2142E1100(&v27);
  }

  return v18;
}

uint64_t sub_2146002B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21460032C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E65746E6F63;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E65746E6F63;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2146003CC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214600448()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2146004B0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214600528@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_214600588(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x746E65746E6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2146005C0@<X0>(char *a1@<X8>)
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

uint64_t sub_214600624(uint64_t a1)
{
  v2 = sub_214600F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214600660(uint64_t a1)
{
  v2 = sub_214600F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21460069C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v31 = a2;
  v29 = type metadata accessor for MBDChip();
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MBDPersistentMenuItemContent(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B00, &qword_21476AE80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214600F48();
  v17 = v32;
  sub_2146DAA08();
  if (!v17)
  {
    v32 = v5;
    v18 = v11;
    v19 = v6;
    v20 = v31;
    v39 = 0;
    sub_2142FBDC0();
    sub_2146DA1C8();
    v21 = v9;
    v22 = v34;
    swift_storeEnumTagMultiPayload();
    if (v22)
    {
      if (v22 != 1)
      {
        v39 = 1;
        sub_21409675C();
        sub_2146DA0D8();
        sub_214601004(v21, type metadata accessor for MBDPersistentMenuItemContent);
        (*(v18 + 8))(v14, v10);
        v23 = v30;
        v24 = v37;
        v21[2] = v36;
        v21[3] = v24;
        v21[4] = v38;
        v25 = v35;
        *v21 = v34;
        v21[1] = v25;
        swift_storeEnumTagMultiPayload();
        goto LABEL_8;
      }

      LOBYTE(v34) = 1;
      sub_2140326D4(&qword_27C9129E8);
      sub_2146DA0D8();
      sub_214601004(v21, type metadata accessor for MBDPersistentMenuItemContent);
      (*(v18 + 8))(v14, v10);
      sub_214600F9C(v32, v21, type metadata accessor for MBDChip);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v18 + 8))(v14, v10);
    }

    v23 = v30;
LABEL_8:
    v26 = *(type metadata accessor for MBDPersistentMenuItem(0) + 20);
    sub_214600F9C(v21, &v20[v26], type metadata accessor for MBDPersistentMenuItemContent);
    (*(v23 + 56))(&v20[v26], 0, 1, v19);
    *v20 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_214600AD0(void *a1)
{
  v2 = v1;
  v33 = type metadata accessor for MBDChip();
  v4 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B10, qword_21476AE88);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214600F48();
  v19 = v13;
  sub_2146DAA28();
  v20 = v2;
  LOBYTE(v41[0]) = *v2;
  LOBYTE(v36) = 0;
  sub_2142FBEC8();
  v21 = v44;
  sub_2146DA388();
  if (v21)
  {
    return (*(v14 + 8))(v17, v19);
  }

  v44 = v14;
  v23 = v34;
  v24 = type metadata accessor for MBDPersistentMenuItem(0);
  sub_2146002B8(&v20[*(v24 + 20)], v12);
  v25 = type metadata accessor for MBDPersistentMenuItemContent(0);
  if ((*(*(v25 - 8) + 48))(v12, 1, v25) != 1)
  {
    sub_2146002B8(v12, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v27 = v10[1];
        v28 = v10[2];
        v29 = v10[4];
        v42 = v10[3];
        v43 = v29;
        v30 = *v10;
        v31 = *v10;
        v41[1] = v10[1];
        v41[2] = v28;
        v38 = v28;
        v39 = v42;
        v40 = v10[4];
        v41[0] = v30;
        v36 = v31;
        v37 = v27;
        v35 = 1;
        sub_214096834();
        sub_2146DA2A8();
        (*(v44 + 8))(v17, v19);
        sub_2142E1100(v41);
      }

      else
      {
        (*(v44 + 8))(v17, v19);
        sub_214601004(v10, type metadata accessor for MBDPersistentMenuItemContent);
      }

      return sub_213FB2DF4(v12, &qword_27C9082D8, &unk_21476AE70);
    }

    sub_214600F9C(v10, v23, type metadata accessor for MBDChip);
    LOBYTE(v41[0]) = 1;
    sub_2140326D4(&qword_27C912A00);
    sub_2146DA2A8();
    sub_214601004(v23, type metadata accessor for MBDChip);
  }

  (*(v44 + 8))(v17, v19);
  return sub_213FB2DF4(v12, &qword_27C9082D8, &unk_21476AE70);
}

unint64_t sub_214600F48()
{
  result = qword_27C916B08;
  if (!qword_27C916B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916B08);
  }

  return result;
}

uint64_t sub_214600F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214601004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214601088()
{
  result = qword_27C916B18;
  if (!qword_27C916B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916B18);
  }

  return result;
}

unint64_t sub_2146010E0()
{
  result = qword_27C916B20;
  if (!qword_27C916B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916B20);
  }

  return result;
}

unint64_t sub_214601138()
{
  result = qword_27C916B28;
  if (!qword_27C916B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916B28);
  }

  return result;
}

uint64_t sub_2146011BC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_2146011EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_214601244@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollaborationClearNotice() + 24);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CollaborationClearNotice()
{
  result = qword_280B2ECB8;
  if (!qword_280B2ECB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21460130C(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaborationClearNotice() + 24);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2146013D0()
{
  v1 = (v0 + *(type metadata accessor for CollaborationClearNotice() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_214601410(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CollaborationClearNotice() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2146014A0(uint64_t a1)
{
  *(a1 + 8) = sub_214601508(&qword_27C916B30);
  result = sub_214601508(&qword_27C916B38);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214601508(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollaborationClearNotice();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214601574()
{
  result = sub_2146D8B08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2146015F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (!v11)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v11 writeUint32:*v1 forTag:1];
  v13 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
  sub_2140857F4(v1 + v13[5], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C904EC8, "</\r");
  }

  else
  {
    sub_21460434C(v5, v10, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
    v14 = sub_2144DC484();
    v15 = sub_214601954(v14);
    v17 = v16;
    v18 = sub_2146D8A38();
    sub_213FB54FC(v15, v17);
    [v12 writeData:v18 forTag:2];

    sub_214603E80(v10, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
  }

  v19 = (v1 + v13[6]);
  if ((v19[1] & 1) == 0)
  {
    [v12 writeUint32:*v19 forTag:3];
  }

  v20 = v1 + v13[7];
  v21 = *(v20 + 3);
  if (v21)
  {
    if (v21 == 1)
    {
      goto LABEL_17;
    }

    v22 = *(v20 + 2);
    v23 = *(v20 + 3);

    v24 = sub_2146D9588();
    sub_213FDC6D0(v22, v21);
    [v12 writeString:v24 forTag:4];
  }

  v25 = v1 + v13[8];
  v26 = *(v25 + 3);
  if (!v26)
  {
    goto LABEL_13;
  }

  if (v26 != 1)
  {
    v27 = *(v25 + 2);
    v28 = *(v25 + 3);

    v29 = sub_2146D9588();
    sub_213FDC6D0(v27, v26);
    [v12 writeString:v29 forTag:5];

LABEL_13:
    v30 = [v12 immutableData];
    if (v30)
    {
      v31 = v30;

      return v31;
    }

    goto LABEL_16;
  }

LABEL_17:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214601954(void *a1)
{
  v35[5] = *MEMORY[0x277D85DE8];
  *&v32 = a1;
  sub_21404B79C();
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916B50, &qword_21476B170);
  if (swift_dynamicCast())
  {
    sub_213FB77C8(v33, v35);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_2146D8788();
    v33[0] = v32;
    __swift_destroy_boxed_opaque_existential_1(v35);
    goto LABEL_40;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_213FB2DF4(v33, &qword_27C916B58, qword_21476B178);
  v3 = sub_2146D9CC8();
  v4 = sub_2146D9CD8();
  v5 = sub_2146D9CC8();
  v6 = sub_2146D9CD8();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = sub_2146D9CC8();
  v8 = sub_2146D9CD8();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v33[0] = sub_21408F798(v4 - v3);
  *(&v33[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v33[0]);
  v12 = sub_2146432EC(sub_2146043B4);
  v13 = v10;
  v14 = *&v33[0];
  v15 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v33[0] + 16);
      v16 = *(*&v33[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v33[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v33[0]), v33[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v33[0]) - LODWORD(v33[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v33[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v33[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          sub_2146D89F8();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v35, 0, 15);
  if (v10 == sub_2146D9CD8())
  {
    goto LABEL_39;
  }

  v21 = sub_2146D9CE8();
  v22 = sub_2146D9CC8();
  v23 = sub_2146D9CD8();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v35 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      sub_2146D8A08();
      if (v25 == sub_2146D9CD8())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == sub_2146D9CD8())
    {
      break;
    }

LABEL_32:
    v21 = sub_2146D9CE8();
    v26 = sub_2146D9CC8();
    v27 = sub_2146D9CD8();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  sub_2146D8A08();
LABEL_39:

LABEL_40:
  v29 = v33[0];
  sub_21402D9F8(*&v33[0], *(&v33[0] + 1));

  sub_213FB54FC(v29, *(&v29 + 1));
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t sub_214601D60(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_2145B089C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_21460424C(v3, v4);
    }

    else
    {
      v6 = sub_2146042C8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

unint64_t sub_214601E1C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_2146D86D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ContainsOnlyCharacterSetValidator(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v22 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v13 = swift_initStackObject();
  *(v13 + 16) = v22;
  sub_2146D8668();
  sub_2146D8658();
  sub_2146D8698();
  v14 = *(v2 + 8);
  v14(v6, v1);
  v14(v8, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  sub_21460434C(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ContainsOnlyCharacterSetValidator);
  *(v15 + 16) = sub_214493E44;
  *(v15 + 24) = v17;
  *(v13 + 32) = v15;
  v18 = sub_2142E0070(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v19 + 16) = sub_214032610;
  *(v19 + 24) = v20;
  *(inited + 32) = v19;
  return sub_214042A28(inited, v23);
}

unint64_t sub_2146020FC@<X0>(uint64_t a1@<X8>)
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
  *(v4 + 16) = sub_21406418C;
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

uint64_t sub_214602248@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28));
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

__n128 sub_2146022B4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28));
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

uint64_t sub_21460232C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32));
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

__n128 sub_214602398(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32));
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

uint64_t sub_214602410()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28);
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

uint64_t sub_2146024A0()
{
  v1 = v0 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32);
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

uint64_t type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage()
{
  result = qword_27C916B40;
  if (!qword_27C916B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146025AC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 20);

  return sub_2140857F4(v3, a1);
}

uint64_t sub_2146025F0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 20);

  return sub_214086154(a1, v3);
}

uint64_t sub_2146026BC(uint64_t a1)
{
  result = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_214602740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28);
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

uint64_t sub_2146027DC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146028A4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28);
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

void (*sub_2146029F4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28);
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

uint64_t sub_214602AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28));
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

uint64_t sub_214602B50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28);
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

void (*sub_214602BE8(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 28);
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

uint64_t sub_214602C94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32);
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

uint64_t sub_214602D30(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214602DF8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32);
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

void (*sub_214602F48(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32);
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

uint64_t sub_214603034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32));
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

uint64_t sub_2146030A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32);
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

void (*sub_21460313C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage() + 32);
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

uint64_t sub_2146031EC@<X0>(uint64_t a1@<X8>)
{
  v147 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v136 = (&v125 - v9);
  MEMORY[0x28223BE20](v8);
  v11 = &v125 - v10;
  v12 = objc_allocWithZone(MEMORY[0x277D43170]);
  v13 = sub_2146D8A38();
  v14 = [v12 initWithData_];

  v15 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v16 = *(v15 - 8);
  v134 = *(v16 + 56);
  v135 = v15;
  v133 = v16 + 56;
  v134(v11, 1, 1);
  v17 = [v14 position];
  if (v17 < [v14 length])
  {
    v129 = v7;
    v128 = a1;
    v138 = 0;
    v139 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    v137 = 1;
    LODWORD(v130) = 1;
    v20 = v11;
    while (1)
    {
      if ([v14 hasError])
      {
LABEL_63:
        if (v137)
        {
          goto LABEL_64;
        }

        v127 = v19;
        v66 = v11;
        v67 = v129;
        sub_2140857F4(v66, v129);
        v68 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
        v136 = v1;
        v69 = v18;
        v70 = v68;
        v71 = v128;
        sub_2140857F4(v67, v128 + *(v68 + 20));
        sub_214601E1C(&v143);
        v72 = v144;
        v73 = v145;
        v74 = v146;
        sub_2146020FC(v141);
        v75 = v142;
        *v71 = v131;
        v76 = v71 + v70[6];
        *v76 = v132;
        v76[4] = v130 & 1;
        v77 = v71 + v70[7];
        *v77 = v143;
        *(v77 + 2) = v72;
        *(v77 + 3) = v73;
        v77[32] = v74;
        v78 = v71 + v70[8];
        v79 = v141[1];
        *v78 = v141[0];
        *(v78 + 1) = v79;
        v78[32] = v75;
        v81 = *v77;
        v80 = *(v77 + 1);
        v82 = *(v77 + 2);
        v83 = *(v77 + 3);
        v84 = v77[32];
        v130 = v69;
        *&v141[0] = v69;
        *(&v141[0] + 1) = v139;
        LODWORD(v135) = v84;
        v140 = v84;
        *&v143 = 0xD000000000000038;
        *(&v143 + 1) = 0x8000000214790CA0;
        v131 = 0x8000000214790CA0;
        v144 = 0xD00000000000001CLL;
        v145 = 0x800000021478A360;
        v137 = 0x800000021478A360;

        v133 = v83;
        v134 = v82;
        sub_213FDC9D0(v82, v83);
        v132 = v80;
        v85 = v136;
        v136 = v81;
        v86 = (v81)(v141, &v140, &v143);
        if (v85)
        {

          v87 = v133;
          v88 = v134;
          goto LABEL_73;
        }

        v89 = v130;
        if (v86)
        {
          v90 = v78;
          v126 = v20;
          sub_213FDC6D0(v134, v133);
          v91 = v137;

          v92 = *(v77 + 1);
          v93 = *(v77 + 2);
          v94 = *(v77 + 3);

          sub_213FDC6D0(v93, v94);
          v95 = v132;
          *v77 = v136;
          *(v77 + 1) = v95;
          v97 = v138;
          v96 = v139;
          *(v77 + 2) = v89;
          *(v77 + 3) = v96;
          v77[32] = v135;
          v99 = *v90;
          v98 = *(v90 + 1);
          v100 = *(v90 + 2);
          v101 = *(v90 + 3);
          v102 = v90[32];
          *&v141[0] = v127;
          *(&v141[0] + 1) = v97;
          LODWORD(v139) = v102;
          v140 = v102;
          *&v143 = 0xD00000000000003DLL;
          *(&v143 + 1) = 0x8000000214790CE0;
          v144 = 0xD00000000000001CLL;
          v145 = v91;

          v134 = v100;
          v136 = v101;
          sub_213FDC9D0(v100, v101);
          v103 = v98;
          v135 = v99;
          v104 = v99(v141, &v140, &v143);
          v112 = v126;
          if (v104)
          {
            sub_213FDC6D0(v134, v136);

            sub_213FB2DF4(v129, &qword_27C904EC8, "</\r");
            sub_213FB2DF4(v112, &qword_27C904EC8, "</\r");
            v113 = *(v90 + 1);
            v114 = *(v90 + 2);
            v115 = *(v90 + 3);

            result = sub_213FDC6D0(v114, v115);
            *v90 = v135;
            *(v90 + 1) = v103;
            v116 = v138;
            *(v90 + 2) = v127;
            *(v90 + 3) = v116;
            v90[32] = v139;
            goto LABEL_66;
          }

          sub_214031C4C();
          swift_allocError();
          *v117 = 0xD00000000000003DLL;
          v117[1] = 0x8000000214790CE0;
          v118 = v137;
          v117[2] = 0xD00000000000001CLL;
          v117[3] = v118;
          swift_willThrow();

          v119 = v134;
          v120 = v135;
          sub_213FB2DF4(v129, &qword_27C904EC8, "</\r");
          sub_213FB2DF4(v112, &qword_27C904EC8, "</\r");
          v121 = *(v90 + 1);
          v122 = *(v90 + 2);
          v123 = *(v90 + 3);

          sub_213FDC6D0(v122, v123);
          *v90 = v120;
          *(v90 + 1) = v98;
          v124 = v136;
          *(v90 + 2) = v119;
          *(v90 + 3) = v124;
          v90[32] = v139;
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          v105 = v131;
          *v106 = 0xD000000000000038;
          v106[1] = v105;
          v107 = v137;
          v106[2] = 0xD00000000000001CLL;
          v106[3] = v107;
          swift_willThrow();

          v87 = v133;
          v88 = v134;
LABEL_73:

          sub_213FB2DF4(v129, &qword_27C904EC8, "</\r");
          sub_213FB2DF4(v20, &qword_27C904EC8, "</\r");
          v108 = *(v77 + 1);
          v109 = *(v77 + 2);
          v110 = *(v77 + 3);

          sub_213FDC6D0(v109, v110);
          v111 = v132;
          *v77 = v136;
          *(v77 + 1) = v111;
          *(v77 + 2) = v88;
          *(v77 + 3) = v87;
          v77[32] = v135;
        }

        result = sub_214603E80(v128, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        goto LABEL_66;
      }

      v22 = v19;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        LOBYTE(v143) = 0;
        v26 = [v14 position] + 1;
        if (v26 >= [v14 position] && (v27 = objc_msgSend(v14, "position") + 1, v27 <= objc_msgSend(v14, "length")))
        {
          v28 = [v14 data];
          [v28 getBytes:&v143 range:{objc_msgSend(v14, "position"), 1}];

          [v14 setPosition:{objc_msgSend(v14, "position") + 1}];
        }

        else
        {
          [v14 _setError];
        }

        v25 |= (v143 & 0x7F) << v23;
        if ((v143 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        if (v24++ >= 9)
        {
          v30 = 0;
          goto LABEL_19;
        }
      }

      if ([v14 hasError])
      {
        v30 = 0;
      }

      else
      {
        v30 = v25;
      }

LABEL_19:
      if ([v14 hasError])
      {

        sub_2140861C4();
        swift_allocError();
        *v65 = 0;
        swift_willThrow();

        v62 = v20;
        goto LABEL_65;
      }

      v19 = v22;
      v31 = v30 >> 3;
      if ((v30 >> 3) > 2)
      {
        break;
      }

      if (v31 == 1)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (1)
        {
          LOBYTE(v143) = 0;
          v54 = [v14 position] + 1;
          if (v54 >= [v14 position] && (v55 = objc_msgSend(v14, "position") + 1, v55 <= objc_msgSend(v14, "length")))
          {
            v56 = [v14 data];
            [v56 getBytes:&v143 range:{objc_msgSend(v14, "position"), 1}];

            [v14 setPosition:{objc_msgSend(v14, "position") + 1}];
          }

          else
          {
            [v14 _setError];
          }

          v53 |= (v143 & 0x7F) << v51;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v38 = v52++ > 8;
          if (v38)
          {
            LODWORD(v131) = 0;
            v137 = 0;
            goto LABEL_60;
          }
        }

        v57 = [v14 hasError];
        v137 = 0;
        if (v57)
        {
          v58 = 0;
        }

        else
        {
          v58 = v53;
        }

        v59 = &v148;
        goto LABEL_59;
      }

      if (v31 != 2)
      {
        goto LABEL_3;
      }

      v39 = PBReaderReadData();
      if (!v39)
      {
        goto LABEL_4;
      }

      v40 = v39;
      v41 = sub_2146D8A58();
      v43 = v42;

      v44 = v136;
      sub_2144DB5B0(v136);
      v11 = v20;
      if (v1)
      {
        sub_213FB2DF4(v20, &qword_27C904EC8, "</\r");

        sub_213FB54FC(v41, v43);

        goto LABEL_66;
      }

      sub_213FB2DF4(v20, &qword_27C904EC8, "</\r");
      sub_213FB54FC(v41, v43);
      (v134)(v44, 0, 1, v135);
      sub_214086218(v44, v20);
      v19 = v22;
LABEL_5:
      v21 = [v14 position];
      if (v21 >= [v14 length])
      {
        goto LABEL_63;
      }
    }

    switch(v31)
    {
      case 5:

        v45 = PBReaderReadString();
        if (v45)
        {
          v46 = v45;
          v19 = sub_2146D95B8();
          v138 = v47;
        }

        else
        {
          v19 = 0;
          v138 = 0;
        }

        break;
      case 4:

        v48 = PBReaderReadString();
        if (v48)
        {
          v49 = v48;
          v18 = sub_2146D95B8();
          v139 = v50;
        }

        else
        {
          v18 = 0;
          v139 = 0;
        }

        break;
      case 3:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        while (1)
        {
          LOBYTE(v143) = 0;
          v35 = [v14 position] + 1;
          if (v35 >= [v14 position] && (v36 = objc_msgSend(v14, "position") + 1, v36 <= objc_msgSend(v14, "length")))
          {
            v37 = [v14 data];
            [v37 getBytes:&v143 range:{objc_msgSend(v14, "position"), 1}];

            [v14 setPosition:{objc_msgSend(v14, "position") + 1}];
          }

          else
          {
            [v14 _setError];
          }

          v34 |= (v143 & 0x7F) << v32;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v38 = v33++ > 8;
          if (v38)
          {
            LODWORD(v132) = 0;
            LODWORD(v130) = 0;
            goto LABEL_60;
          }
        }

        v60 = [v14 hasError];
        LODWORD(v130) = 0;
        if (v60)
        {
          v58 = 0;
        }

        else
        {
          v58 = v34;
        }

        v59 = &v149;
LABEL_59:
        *(v59 - 64) = v58;
LABEL_60:
        v11 = v20;
        v19 = v22;
        goto LABEL_5;
      default:
LABEL_3:
        PBReaderSkipValueWithTag();
        break;
    }

LABEL_4:
    v11 = v20;
    goto LABEL_5;
  }

LABEL_64:

  sub_2140861C4();
  swift_allocError();
  *v61 = 1;
  swift_willThrow();

  v62 = v11;
LABEL_65:
  result = sub_213FB2DF4(v62, &qword_27C904EC8, "</\r");
LABEL_66:
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_214603E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214603EE0(uint64_t a1)
{
  *(a1 + 8) = sub_214603F48(&qword_27C90CBE8);
  result = sub_214603F48(&qword_27C90CBA0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214603F48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_214603FB4()
{
  sub_2140863F0();
  if (v0 <= 0x3F)
  {
    sub_214086448();
    if (v1 <= 0x3F)
    {
      sub_214084AA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *sub_214604060@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_2145B089C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_21460424C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2146042C8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

id sub_2146040F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_21460443C(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

uint64_t sub_21460413C(void *a1)
{
  v2 = sub_2146D86D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  sub_2146D86C8();
  sub_214069AD8();
  sub_2146D9DC8();
  LOBYTE(a1) = v8;
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t sub_21460424C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2146D8778();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2146D8718();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2146D89D8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2146042C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2146D8778();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2146D8718();
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

uint64_t sub_21460434C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_2146043B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_214643684(sub_21460441C, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t sub_21460443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2146D9CC8();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != sub_2146D9CD8())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = sub_2146D9CE8();
        v12 = sub_2146D9CC8();
        result = sub_2146D9CD8();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = sub_2146D9CD8();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_214604548@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Alignment() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

uint64_t type metadata accessor for Alignment()
{
  result = qword_27C916B60;
  if (!qword_27C916B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_2146045F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for Alignment() + 24));
  v7 = v6->n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460465C()
{
  v1 = v0 + *(type metadata accessor for Alignment() + 24);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146046D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_214604738(uint64_t a1)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2146047C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Alignment() + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21460483C(uint64_t a1)
{
  v3 = *(type metadata accessor for Alignment() + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_214604900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Alignment();
  v5 = a1 + *(result + 24);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_2146049C0(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Alignment() + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_2145187C0;
  }

  return result;
}

uint64_t sub_214604A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Alignment() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_214604ACC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for Alignment() + 24);
  v8 = *(v7 + 8);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

void (*sub_214604B48(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for Alignment() + 24);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451ABE0;
}

uint64_t sub_214604BF4()
{
  sub_214604C9C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214604C48()
{
  sub_214604C9C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214604C9C()
{
  v1 = v0;
  v2 = sub_2146D8B08();
  v17 = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  v4 = *(*(v2 - 8) + 16);
  v4(boxed_opaque_existential_0, v0, v2);
  sub_213FDC730(v16, v15);
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v15, 0x6174614465736162, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v7 = type metadata accessor for Alignment();
  v8 = *(v7 + 20);
  v17 = v2;
  v9 = __swift_allocate_boxed_opaque_existential_0(v16);
  v4(v9, v1 + v8, v2);
  sub_213FDC730(v16, v15);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v15, 0xD000000000000010, 0x80000002147A53A0, v10);
  v11 = v1 + *(v7 + 24);
  if (*(v11 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v12 = *(v11 + 16);
    v17 = MEMORY[0x277D83B88];
    v16[0] = v12;
    sub_213FDC730(v16, v15);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v15, 0xD000000000000011, 0x80000002147948E0, v13);
    return v5;
  }

  return result;
}

uint64_t sub_214604E94(uint64_t a1)
{
  *(a1 + 8) = sub_214604EFC(&qword_27C9070C8);
  result = sub_214604EFC(&qword_27C9070F0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214604EFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Alignment();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_214604F68()
{
  sub_2146D8B08();
  if (v0 <= 0x3F)
  {
    sub_21451B744();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_214604FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214605010(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214605068()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146050D4(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_214605158@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 32);
  }

  return result;
}

uint64_t (*sub_2146051DC(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_21460528C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_214605328()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = sub_2146D87D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E10, qword_21476B1F0);
  sub_2142F0574();
  v8 = sub_2146D87B8();
  v10 = v9;

  v18 = MEMORY[0x277CC9318];
  *&v17 = v8;
  *(&v17 + 1) = v10;
  sub_213FDC730(&v17, v16);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v17) = v2;
  sub_213FDC730(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 84, 0xE100000000000000, v13);
  if (v4)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v3;
    sub_213FDC730(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 86, 0xE100000000000000, v14);

    return v11;
  }

  return result;
}

uint64_t sub_214605524()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_214605328();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2146055B4()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_214605328();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214605644()
{
  v3 = *v0;
  sub_214605714();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2146056AC()
{
  v3 = *v0;
  sub_214605714();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214605714()
{
  v26 = sub_2146D8B88();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    *&v29 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v6, 0);
    v7 = v29;
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v24 = *(v8 + 56);
    v25 = v9;
    v23 = (v8 - 8);
    do
    {
      v11 = v26;
      v12 = v8;
      v25(v4, v10, v26);
      v13 = sub_2146D8B28();
      v15 = v14;
      (*v23)(v4, v11);
      *&v29 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21409FD08((v16 > 1), v17 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v10 += v24;
      --v6;
      v8 = v12;
    }

    while (v6);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v29 = v7;
  sub_213FDC730(&v29, v28);
  v19 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v19;
  sub_2140524DC(v28, 0xD000000000000011, 0x8000000214794960, isUniquelyReferenced_nonNull_native);
  return v27;
}

uint64_t sub_214605988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2146059D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_214605A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214605A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214605AB0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214605B08()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214605B74(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*sub_214605C1C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214605CA4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_214605D40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = sub_2146D87D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E68, &qword_2146F4810);
  sub_2142F07CC();
  v8 = sub_2146D87B8();
  v10 = v9;

  v18 = MEMORY[0x277CC9318];
  *&v17 = v8;
  *(&v17 + 1) = v10;
  sub_213FDC730(&v17, v16);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v17) = v2;
  sub_213FDC730(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 84, 0xE100000000000000, v13);
  if (v4)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v3;
    sub_213FDC730(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 86, 0xE100000000000000, v14);

    return v11;
  }

  return result;
}

uint64_t sub_214605F3C()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_214605D40();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214605FCC()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_214605D40();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460605C()
{
  v3 = *v0;
  sub_21460612C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2146060C4()
{
  v3 = *v0;
  sub_21460612C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460612C()
{
  v26 = sub_2146D8B88();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    *&v29 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v6, 0);
    v7 = v29;
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v24 = *(v8 + 56);
    v25 = v9;
    v23 = (v8 - 8);
    do
    {
      v11 = v26;
      v12 = v8;
      v25(v4, v10, v26);
      v13 = sub_2146D8B28();
      v15 = v14;
      (*v23)(v4, v11);
      *&v29 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21409FD08((v16 > 1), v17 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v10 += v24;
      --v6;
      v8 = v12;
    }

    while (v6);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v29 = v7;
  sub_213FDC730(&v29, v28);
  v19 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v19;
  sub_2140524DC(v28, 0xD000000000000011, 0x8000000214794960, isUniquelyReferenced_nonNull_native);
  return v27;
}

uint64_t sub_2146063A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146063FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214606420(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214606478()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146064E4(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*sub_21460658C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214606614(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_2146066B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = sub_2146D87D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BD0, &qword_2146F4700);
  sub_2142EF41C();
  v8 = sub_2146D87B8();
  v10 = v9;

  v18 = MEMORY[0x277CC9318];
  *&v17 = v8;
  *(&v17 + 1) = v10;
  sub_213FDC730(&v17, v16);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v17) = v2;
  sub_213FDC730(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 84, 0xE100000000000000, v13);
  if (v4)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v3;
    sub_213FDC730(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 86, 0xE100000000000000, v14);

    return v11;
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustAcceptEnvelopeV1Payload()
{
  result = qword_27C916B70;
  if (!qword_27C916B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146068F8()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_2146066B0();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214606988()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_2146066B0();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214606A18()
{
  sub_214606B28();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214606A6C()
{
  v0 = sub_2146D8B28();
  v7 = MEMORY[0x277D837D0];
  *&v6 = v0;
  *(&v6 + 1) = v1;
  sub_213FDC730(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_214606B28()
{
  v0 = sub_2146D8B28();
  v7 = MEMORY[0x277D837D0];
  *&v6 = v0;
  *(&v6 + 1) = v1;
  sub_213FDC730(&v6, v5);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  return v2;
}

unint64_t sub_214606BB4(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0F10();
  result = sub_2142F1784();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214606BE4(uint64_t a1)
{
  *(a1 + 8) = sub_214606C4C(&qword_27C906BE0);
  result = sub_214606C4C(&qword_27C906C00);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214606C4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CircleTrustAcceptEnvelopeV1Payload();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214606CC8()
{
  result = sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_214606D34@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214606D58(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214606DB0()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214606E1C(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*sub_214606EC4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214606F4C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_214606FE8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = sub_2146D87D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C38, &qword_21476B570);
  sub_2142EF680();
  v8 = sub_2146D87B8();
  v10 = v9;

  v18 = MEMORY[0x277CC9318];
  *&v17 = v8;
  *(&v17 + 1) = v10;
  sub_213FDC730(&v17, v16);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v17) = v2;
  sub_213FDC730(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 84, 0xE100000000000000, v13);
  if (v4)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v3;
    sub_213FDC730(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 86, 0xE100000000000000, v14);

    return v11;
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustAckEnvelopeV1Payload()
{
  result = qword_27C916B80;
  if (!qword_27C916B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214607230()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_214606FE8();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2146072C0()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_214606FE8();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214607350()
{
  v0 = sub_2146D8B28();
  v7 = MEMORY[0x277D837D0];
  *&v6 = v0;
  *(&v6 + 1) = v1;
  sub_213FDC730(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v3 = sub_2146D9468();

  return v3;
}

unint64_t sub_21460740C(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0E38();
  result = sub_2142F16AC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21460743C(uint64_t a1)
{
  *(a1 + 8) = sub_2146074A4(&qword_27C906C48);
  result = sub_2146074A4(&qword_27C906C60);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146074A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CircleTrustAckEnvelopeV1Payload();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214607520@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214607544(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460759C()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214607608(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*sub_2146076B0(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214607738(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_2146077D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = sub_2146D87D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C90, &qword_2146F4750);
  sub_2142EF890();
  v8 = sub_2146D87B8();
  v10 = v9;

  v18 = MEMORY[0x277CC9318];
  *&v17 = v8;
  *(&v17 + 1) = v10;
  sub_213FDC730(&v17, v16);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v17) = v2;
  sub_213FDC730(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 84, 0xE100000000000000, v13);
  if (v4)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v3;
    sub_213FDC730(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 86, 0xE100000000000000, v14);

    return v11;
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustDeclineEnvelopeV1Payload()
{
  result = qword_27C916B90;
  if (!qword_27C916B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214607A1C()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_2146077D4();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214607AAC()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_2146077D4();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214607B3C()
{
  v0 = sub_2146D8B28();
  v7 = MEMORY[0x277D837D0];
  *&v6 = v0;
  *(&v6 + 1) = v1;
  sub_213FDC730(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v3 = sub_2146D9468();

  return v3;
}

unint64_t sub_214607BF8(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0FE8();
  result = sub_2142F185C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214607C28(uint64_t a1)
{
  *(a1 + 8) = sub_214607C90(&qword_27C906CA0);
  result = sub_214607C90(&qword_27C906CB8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214607C90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CircleTrustDeclineEnvelopeV1Payload();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214607D0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214607D30(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214607D88()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214607E54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 256;
  *(v8 + 24) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = 0;
  *(inited + 40) = v9;
  return sub_214042B80(inited, a3);
}

unint64_t sub_214607F44@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v3 + 16) = sub_214084D54;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2140676DC;
  *(v5 + 24) = 0;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214608030@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_2146080B0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21460811C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_21460817C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146081E8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_214608248(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146082B4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_214608314(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52));
  v7 = v6->n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460837C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

__n128 sub_2146083DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214608448()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146084D4()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214608560()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146085EC()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214608660()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146086F4(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*sub_21460879C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_214608824(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_2146088C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = sub_2146D87D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906CE8, &unk_21476B7A0);
  sub_2142EFAA0();
  v8 = sub_2146D87B8();
  v10 = v9;

  v18 = MEMORY[0x277CC9318];
  *&v17 = v8;
  *(&v17 + 1) = v10;
  sub_213FDC730(&v17, v16);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v17) = v2;
  sub_213FDC730(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 84, 0xE100000000000000, v13);
  if (v4)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v3;
    sub_213FDC730(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 86, 0xE100000000000000, v14);

    return v11;
  }

  return result;
}

uint64_t sub_214608ABC()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_2146088C0();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214608B4C()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_2146088C0();
  v1 = sub_2146D9468();

  return v1;
}

unint64_t sub_214608BDC@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214608E40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214608ED8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214608FA0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2146090F4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146091D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_21460923C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2146092C4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 32);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

uint64_t sub_214609370@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214609408(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146094D0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214609624(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214609708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_21460976C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2146097F4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 36);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

uint64_t sub_2146098C4(int a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_214609960(int a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_2146099D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214609A70(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214609B38(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214609C8C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145D0344;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214609D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_214609DD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_214609E5C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 48);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145D04E0;
}

uint64_t sub_214609F08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v5 = a1 + *(result + 52);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_214609FC8(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_2145187C0;
  }

  return result;
}

uint64_t sub_21460A070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_21460A0D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52);
  v8 = *(v7 + 8);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

void (*sub_21460A150(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 52);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451ABE0;
}

uint64_t sub_21460A1FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21460A294(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21460A35C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21460A4B0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21460A594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_21460A5F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21460A680(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 56);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

uint64_t sub_21460A72C()
{
  v1 = *(v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 60));
}

uint64_t sub_21460A760(uint64_t a1)
{
  v3 = *(type metadata accessor for CircleTrustEnvelopeV1Payload(0) + 60);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21460A860@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t sub_21460A894(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

uint64_t sub_21460A93C()
{
  v1 = v0;
  v2 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v101 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = &v92 - v7;
  v100 = sub_2146D8B88();
  v99 = *(v100 - 8);
  v8 = v99[8];
  v9 = MEMORY[0x28223BE20](v100);
  v97 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = &v92 - v11;
  v94 = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  v12 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v95 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EncodedKeyPackage(0);
  v109 = *(v14 - 8);
  v110 = v14;
  v15 = *(v109 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v113 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v92 - v18;
  v20 = type metadata accessor for KeyPackage(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v114 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2146D87D8();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_2146D87C8();
  v93 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v28 = *(v1 + *(v93 + 60));
  v108 = *(v28 + 16);
  if (v108)
  {
    v29 = 0;
    v107 = v28 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v30 = MEMORY[0x277D84F90];
    v105 = v19;
    v106 = v1;
    v103 = v21;
    v104 = v20;
    v102 = v28;
    while (v29 < *(v28 + 16))
    {
      v111 = v29;
      v112 = v30;
      v31 = v107 + *(v21 + 72) * v29;
      v32 = v114;
      sub_21460D910(v31, v114, type metadata accessor for KeyPackage);
      v33 = *(v32 + *(v20 + 20));
      v116 = *(v33 + 16);
      if (v116)
      {
        v34 = 0;
        v35 = (v33 + 56);
        v118 = MEMORY[0x277D84F90];
        v115 = v33;
        while (v34 < *(v33 + 16))
        {
          if (!*v35)
          {
            goto LABEL_32;
          }

          v36 = *(v35 - 3);
          v37 = *(v35 - 1);
          v119 = *v35;

          swift_bridgeObjectRetain_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
          sub_2142E562C();
          v38 = v27;
          v39 = sub_2146D87B8();
          v41 = v40;

          if (v2)
          {
            goto LABEL_33;
          }

          v117 = 0;
          sub_21402D9F8(v39, v41);
          v42 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_214095DAC(0, *(v118 + 2) + 1, 1, v118);
          }

          v44 = *(v118 + 2);
          v43 = *(v118 + 3);
          if (v44 >= v43 >> 1)
          {
            v118 = sub_214095DAC((v43 > 1), v44 + 1, 1, v118);
          }

          ++v34;

          sub_213FB54FC(v39, v41);
          v45 = v118;
          *(v118 + 2) = v44 + 1;
          v46 = &v45[24 * v44];
          *(v46 + 4) = v42;
          *(v46 + 5) = v39;
          *(v46 + 6) = v41;
          v35 += 5;
          v33 = v115;
          v27 = v38;
          v2 = v117;
          if (v116 == v34)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

      v118 = MEMORY[0x277D84F90];
LABEL_16:
      v47 = v114;
      v48 = v105;
      sub_21460D910(v114, v105, type metadata accessor for Alignment);
      v20 = v104;
      v49 = (v47 + *(v104 + 24));
      v50 = *v49;
      v51 = v49[1];
      v52 = v110;
      *(v48 + *(v110 + 20)) = v118;
      v53 = (v48 + *(v52 + 24));
      *v53 = v50;
      v53[1] = v51;
      sub_21460D910(v48, v113, type metadata accessor for EncodedKeyPackage);

      v30 = v112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_214095D84(0, v30[2] + 1, 1, v30);
      }

      v54 = v106;
      v21 = v103;
      v56 = v30[2];
      v55 = v30[3];
      if (v56 >= v55 >> 1)
      {
        v30 = sub_214095D84(v55 > 1, v56 + 1, 1, v30);
      }

      v29 = v111 + 1;
      sub_21460D978(v48, type metadata accessor for EncodedKeyPackage);
      sub_21460D978(v114, type metadata accessor for KeyPackage);
      v30[2] = v56 + 1;
      sub_21460D9D8(v113, v30 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v56);
      v28 = v102;
      v1 = v54;
      if (v29 == v108)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_23:
  v57 = v99[2];
  v58 = v100;
  v57(v96, v1, v100);
  v59 = v93;
  sub_214090414(v1 + *(v93 + 20), v98);
  v57(v97, v1 + v59[6], v58);
  sub_214090414(v1 + v59[7], v101);
  v60 = v1 + v59[8];
  v61 = *(v60 + 24);
  if (!v61)
  {
    goto LABEL_32;
  }

  v62 = v59;
  v63 = v1 + v59[9];
  v64 = *(v63 + 24);
  if (!v64 || (v65 = v1 + v62[12], (v66 = *(v65 + 24)) == 0) || (v67 = v1 + v62[13], (*(v67 + 24) & 1) != 0) || (v68 = v1 + v62[14], (v69 = *(v68 + 24)) == 0))
  {
LABEL_32:
    sub_2146DA018();
    __break(1u);
LABEL_33:
    swift_unexpectedError();
    __break(1u);
    goto LABEL_34;
  }

  v113 = *(v60 + 16);
  v115 = *(v63 + 16);
  v70 = v62[11];
  LODWORD(v112) = *(v1 + v62[10]);
  LODWORD(v114) = *(v1 + v70);
  v71 = *(v67 + 16);
  v116 = *(v65 + 16);
  v117 = v71;
  v118 = *(v68 + 16);
  v119 = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C10, &unk_21476BCA0);
  v111 = v66;
  sub_21460DA3C();
  v72 = sub_2146D87B8();
  v108 = v73;
  v109 = v72;
  v110 = v27;
  if (!v2)
  {
    swift_bridgeObjectRelease_n();
    v74 = *(v1 + v62[16]);
    v75 = *(v1 + v62[17]);
    v76 = v99[4];
    v77 = v95;
    v78 = v100;
    v76(v95, v96, v100);
    v79 = v94;
    sub_214080CE0(v98, v77 + *(v94 + 20));
    v76((v77 + v79[6]), v97, v78);
    sub_214080CE0(v101, v77 + v79[7]);
    v80 = (v77 + v79[8]);
    *v80 = v113;
    v80[1] = v61;
    v81 = (v77 + v79[9]);
    *v81 = v115;
    v81[1] = v64;
    *(v77 + v79[10]) = v112;
    *(v77 + v79[11]) = v114;
    v82 = (v77 + v79[12]);
    v83 = v111;
    *v82 = v116;
    v82[1] = v83;
    v84 = v118;
    *(v77 + v79[13]) = v117;
    v85 = (v77 + v79[14]);
    *v85 = v84;
    v85[1] = v69;
    v86 = (v77 + v79[15]);
    v87 = v108;
    *v86 = v109;
    v86[1] = v87;
    *(v77 + v79[16]) = v74;
    *(v77 + v79[17]) = v75;

    v88 = sub_21460B370();

    sub_21460D978(v77, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder);
    return v88;
  }

LABEL_34:

  sub_214082B3C(v101);
  v90 = v99[1];
  v91 = v100;
  v90(v97, v100);
  sub_214082B3C(v98);
  v90(v96, v91);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21460B370()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v81 - v7;
  v9 = sub_2146D8B88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v82 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v81 - v14;
  v16 = sub_2146D8B28();
  v87 = MEMORY[0x277D837D0];
  *&v86 = v16;
  *(&v86 + 1) = v17;
  sub_213FDC730(&v86, v85);
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = v18;
  sub_2140524DC(v85, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v20 = v10;
  v21 = v84;
  v22 = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  sub_214090414(v1 + v22[5], v8);
  v23 = *(v20 + 48);
  v24 = v23(v8, 1, v9);
  v83 = v20;
  if (v24 == 1)
  {
    sub_214082B3C(v8);
  }

  else
  {
    (*(v20 + 32))(v15, v8, v9);
    v81 = "lastObservedIndex";
    v25 = sub_2146D8B28();
    v87 = MEMORY[0x277D837D0];
    *&v86 = v25;
    *(&v86 + 1) = v26;
    sub_213FDC730(&v86, v85);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v21;
    sub_2140524DC(v85, 0xD000000000000017, v81 | 0x8000000000000000, v27);
    (*(v20 + 8))(v15, v9);
    v21 = v84;
  }

  v28 = v1 + v22[6];
  v29 = sub_2146D8B28();
  v30 = MEMORY[0x277D837D0];
  v87 = MEMORY[0x277D837D0];
  *&v86 = v29;
  *(&v86 + 1) = v31;
  sub_213FDC730(&v86, v85);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v21;
  sub_2140524DC(v85, 0xD000000000000010, 0x8000000214794920, v32);
  v33 = v84;
  sub_214090414(v1 + v22[7], v6);
  if (v23(v6, 1, v9) == 1)
  {
    sub_214082B3C(v6);
  }

  else
  {
    v35 = v82;
    v34 = v83;
    (*(v83 + 32))(v82, v6, v9);
    v36 = sub_2146D8B28();
    v87 = v30;
    *&v86 = v36;
    *(&v86 + 1) = v37;
    sub_213FDC730(&v86, v85);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v33;
    sub_2140524DC(v85, 0xD000000000000015, 0x8000000214794940, v38);
    (*(v34 + 8))(v35, v9);
    v33 = v84;
  }

  v39 = (v1 + v22[8]);
  v40 = *v39;
  v41 = v39[1];
  v87 = v30;
  *&v86 = v40;
  *(&v86 + 1) = v41;
  sub_213FDC730(&v86, v85);

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v33;
  sub_2140524DC(v85, 0x6C65646F6DLL, 0xE500000000000000, v42);
  v43 = v84;
  v44 = (v1 + v22[9]);
  v45 = *v44;
  v46 = v44[1];
  v87 = v30;
  *&v86 = v45;
  *(&v86 + 1) = v46;
  sub_213FDC730(&v86, v85);

  v47 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v43;
  sub_2140524DC(v85, 0x65566D6574737973, 0xED00006E6F697372, v47);
  v48 = v84;
  v49 = *(v1 + v22[10]);
  v50 = MEMORY[0x277D84CC0];
  v87 = MEMORY[0x277D84CC0];
  LODWORD(v86) = v49;
  sub_213FDC730(&v86, v85);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v48;
  sub_2140524DC(v85, 0x6449726F646E6576, 0xE800000000000000, v51);
  v52 = v84;
  v53 = *(v1 + v22[11]);
  v87 = v50;
  LODWORD(v86) = v53;
  sub_213FDC730(&v86, v85);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v52;
  sub_2140524DC(v85, 0x49746375646F7270, 0xE900000000000064, v54);
  v55 = v84;
  v56 = (v1 + v22[12]);
  v57 = *v56;
  v58 = v56[1];
  v87 = v30;
  *&v86 = v57;
  *(&v86 + 1) = v58;
  sub_213FDC730(&v86, v85);

  v59 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v55;
  sub_2140524DC(v85, 0x614E6E6F63616562, 0xEA0000000000656DLL, v59);
  v60 = v84;
  v61 = *(v1 + v22[13]);
  v62 = MEMORY[0x277D83B88];
  v87 = MEMORY[0x277D83B88];
  *&v86 = v61;
  sub_213FDC730(&v86, v85);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v60;
  sub_2140524DC(v85, 1701605234, 0xE400000000000000, v63);
  v64 = v84;
  v65 = (v1 + v22[14]);
  v66 = *v65;
  v67 = v65[1];
  v87 = v30;
  *&v86 = v66;
  *(&v86 + 1) = v67;
  sub_213FDC730(&v86, v85);

  v68 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v64;
  sub_2140524DC(v85, 0x696A6F6D65, 0xE500000000000000, v68);
  v69 = v84;
  v70 = (v1 + v22[15]);
  v71 = *v70;
  v72 = v70[1];
  v87 = MEMORY[0x277CC9318];
  *&v86 = v71;
  *(&v86 + 1) = v72;
  sub_213FDC730(&v86, v85);
  sub_21402D9F8(v71, v72);
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v69;
  sub_2140524DC(v85, 0x616B63615079656BLL, 0xEB00000000736567, v73);
  v74 = v84;
  v75 = *(v1 + v22[16]);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D40, &qword_2146F47A0);
  *&v86 = v75;
  sub_213FDC730(&v86, v85);

  v76 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v74;
  sub_2140524DC(v85, 0x5064657473757274, 0xEC00000073726565, v76);
  v77 = v84;
  v78 = *(v1 + v22[17]);
  v87 = v62;
  *&v86 = v78;
  sub_213FDC730(&v86, v85);
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v77;
  sub_2140524DC(v85, 0x7079546572616873, 0xE900000000000065, v79);
  return v84;
}

uint64_t sub_21460BB08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21460BB70(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21460BC10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);

  return sub_214090414(v4, a2);
}

uint64_t sub_21460BC74(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 20);

  return sub_21460D13C(a1, v4);
}

uint64_t sub_21460BD1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_2146D8B88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21460BDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_2146D8B88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21460BE98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_214090414(v4, a2);
}

uint64_t sub_21460BEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 28);

  return sub_21460D13C(a1, v4);
}

uint64_t sub_21460BF8C()
{
  v1 = (v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_21460BFCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21460C05C()
{
  v1 = (v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_21460C09C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21460C150(int a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_21460C1EC(int a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_21460C264()
{
  v1 = (v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_21460C2A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21460C358(uint64_t a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_21460C3D0()
{
  v1 = (v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_21460C410(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21460C4A0()
{
  v1 = v0 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 60);
  v2 = *v1;
  sub_21402D9F8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_21460C4E4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0) + 60);
  result = sub_213FB54FC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_21460C58C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 64));
}

uint64_t sub_21460C5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 64);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_21460C690(uint64_t a1)
{
  result = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

unint64_t sub_21460C708(char a1)
{
  result = 0x6564496572616873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 0x614E6E6F63616562;
      break;
    case 9:
      result = 1701605234;
      break;
    case 10:
      result = 0x696A6F6D65;
      break;
    case 11:
      result = 0x616B63615079656BLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    case 13:
      result = 0x7079546572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21460C8C4(uint64_t a1)
{
  v2 = sub_21460D1CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21460C900(uint64_t a1)
{
  v2 = sub_21460D1CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21460C93C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916BA0, &unk_21476B7B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21460D1CC();
  sub_2146DAA28();
  LOBYTE(v34) = 0;
  sub_2146D8B88();
  sub_21460D220(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
    v12 = v11[5];
    LOBYTE(v34) = 1;
    sub_2146DA308();
    v13 = v11[6];
    LOBYTE(v34) = 2;
    sub_2146DA388();
    v14 = v11[7];
    LOBYTE(v34) = 3;
    sub_2146DA308();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v34) = 4;
    sub_2146DA328();
    v18 = (v3 + v11[9]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v34) = 5;
    sub_2146DA328();
    v21 = *(v3 + v11[10]);
    LOBYTE(v34) = 6;
    sub_2146DA3D8();
    v22 = *(v3 + v11[11]);
    LOBYTE(v34) = 7;
    sub_2146DA3D8();
    v23 = (v3 + v11[12]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v34) = 8;
    sub_2146DA328();
    v26 = *(v3 + v11[13]);
    LOBYTE(v34) = 9;
    sub_2146DA368();
    v27 = (v3 + v11[14]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v34) = 10;
    sub_2146DA328();
    v30 = (v3 + v11[15]);
    v31 = v30[1];
    v34 = *v30;
    v35 = v31;
    v36 = 11;
    sub_21402D9F8(v34, v31);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v34, v35);
    v34 = *(v3 + v11[16]);
    v36 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D40, &qword_2146F47A0);
    sub_2142EFF80();
    sub_2146DA388();
    v32 = *(v3 + v11[17]);
    LOBYTE(v34) = 13;
    sub_2146DA368();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21460CDC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_21460CE30(void (*a1)(void))
{
  a1();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460CE90(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_21460CF40()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916BB0, &qword_21476B7C0);
  *&v11 = v1;
  sub_213FDC730(&v11, v10);

  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v6 = MEMORY[0x277D83B88];
  v12 = MEMORY[0x277D83B88];
  *&v11 = v2;
  sub_213FDC730(&v11, v10);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 84, 0xE100000000000000, v7);
  v12 = v6;
  *&v11 = v3;
  sub_213FDC730(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 86, 0xE100000000000000, v8);
  return v4;
}

uint64_t sub_21460D05C()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  sub_21460CF40();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460D0CC()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  sub_21460CF40();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460D13C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21460D1CC()
{
  result = qword_27C916BA8;
  if (!qword_27C916BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916BA8);
  }

  return result;
}

uint64_t sub_21460D220(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21460D268(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0D60();
  result = sub_2142F15D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21460D29C()
{
  result = qword_27C916BB8;
  if (!qword_27C916BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916BB8);
  }

  return result;
}

uint64_t sub_21460D2F0(uint64_t a1)
{
  *(a1 + 8) = sub_21460D220(&qword_27C906CF8, type metadata accessor for CircleTrustEnvelopeV1Payload);
  result = sub_21460D220(&qword_27C906D10, type metadata accessor for CircleTrustEnvelopeV1Payload);
  *(a1 + 16) = result;
  return result;
}

void sub_21460D3AC()
{
  sub_2146D8B88();
  if (v0 <= 0x3F)
  {
    sub_21460D5B8(319, &qword_280B353F8, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21460D56C(319, &qword_280B2E578);
      if (v2 <= 0x3F)
      {
        sub_21460D56C(319, &qword_27C9050E0);
        if (v3 <= 0x3F)
        {
          sub_21460D5B8(319, &qword_27C916BD0, type metadata accessor for KeyPackage, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_21460D5B8(319, &qword_27C916BD8, type metadata accessor for PeerTrustEnvelopeV1, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21460D56C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Validated();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21460D5B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21460D654()
{
  sub_2146D8B88();
  if (v0 <= 0x3F)
  {
    sub_21460D5B8(319, &qword_280B353F8, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21460D5B8(319, &qword_27C916BD8, type metadata accessor for PeerTrustEnvelopeV1, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21460D7B8()
{
  result = qword_27C916BF0;
  if (!qword_27C916BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916BF0);
  }

  return result;
}

unint64_t sub_21460D810()
{
  result = qword_27C916BF8;
  if (!qword_27C916BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916BF8);
  }

  return result;
}

unint64_t sub_21460D868()
{
  result = qword_27C916C00;
  if (!qword_27C916C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C00);
  }

  return result;
}

unint64_t sub_21460D8BC()
{
  result = qword_27C916C08;
  if (!qword_27C916C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C08);
  }

  return result;
}

uint64_t sub_21460D910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21460D978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21460D9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodedKeyPackage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21460DA3C()
{
  result = qword_27C916C18;
  if (!qword_27C916C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C916C10, &unk_21476BCA0);
    sub_21460D220(&qword_27C916C20, type metadata accessor for EncodedKeyPackage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C18);
  }

  return result;
}

uint64_t sub_21460DAF8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21460DB1C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460DB74()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21460DBE0(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*sub_21460DC88(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_21460DD10(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_21460DDAC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = sub_2146D87D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DA0, qword_21476BCB0);
  sub_2142F01B4();
  v8 = sub_2146D87B8();
  v10 = v9;

  v18 = MEMORY[0x277CC9318];
  *&v17 = v8;
  *(&v17 + 1) = v10;
  sub_213FDC730(&v17, v16);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v17) = v2;
  sub_213FDC730(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 84, 0xE100000000000000, v13);
  if (v4)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v3;
    sub_213FDC730(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 86, 0xE100000000000000, v14);

    return v11;
  }

  return result;
}

uint64_t sub_21460DFA8()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_21460DDAC();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460E038()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_21460DDAC();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460E0C8()
{
  v3 = *v0;
  sub_21460E198();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460E130()
{
  v3 = *v0;
  sub_21460E198();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460E198()
{
  v26 = sub_2146D8B88();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    *&v29 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v6, 0);
    v7 = v29;
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v24 = *(v8 + 56);
    v25 = v9;
    v23 = (v8 - 8);
    do
    {
      v11 = v26;
      v12 = v8;
      v25(v4, v10, v26);
      v13 = sub_2146D8B28();
      v15 = v14;
      (*v23)(v4, v11);
      *&v29 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21409FD08((v16 > 1), v17 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v10 += v24;
      --v6;
      v8 = v12;
    }

    while (v6);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v29 = v7;
  sub_213FDC730(&v29, v28);
  v19 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v19;
  sub_2140524DC(v28, 0xD000000000000011, 0x8000000214794960, isUniquelyReferenced_nonNull_native);
  return v27;
}

uint64_t sub_21460E40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21460E468@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21460E48C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21460E4E4()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21460E550(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*sub_21460E5F8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_21460E680(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_21460E71C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = sub_2146D87D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EC0, &qword_21476BDF0);
  sub_2142F0A00();
  v8 = sub_2146D87B8();
  v10 = v9;

  v18 = MEMORY[0x277CC9318];
  *&v17 = v8;
  *(&v17 + 1) = v10;
  sub_213FDC730(&v17, v16);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v17) = v2;
  sub_213FDC730(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 84, 0xE100000000000000, v13);
  if (v4)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v3;
    sub_213FDC730(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 86, 0xE100000000000000, v14);

    return v11;
  }

  return result;
}

uint64_t type metadata accessor for DelegatedCircleTrustStopEnvelopeV1Payload()
{
  result = qword_27C916C28;
  if (!qword_27C916C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21460E964()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_21460E71C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460E9F4()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_21460E71C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21460EA84()
{
  v0 = sub_2146D8B28();
  v7 = MEMORY[0x277D837D0];
  *&v6 = v0;
  *(&v6 + 1) = v1;
  sub_213FDC730(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x6564496572616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v3 = sub_2146D9468();

  return v3;
}

unint64_t sub_21460EB40(uint64_t a1)
{
  *(a1 + 8) = sub_2142F1348();
  result = sub_2142F1BBC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21460EB70(uint64_t a1)
{
  *(a1 + 8) = sub_21460EBD8(&qword_27C906ED0);
  result = sub_21460EBD8(&qword_27C906EE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21460EBD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DelegatedCircleTrustStopEnvelopeV1Payload();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21460ECD4(uint64_t a1)
{
  *(a1 + 8) = sub_2143201D8();
  result = sub_21431FAA0();
  *(a1 + 16) = result;
  return result;
}

uint64_t FindMyMessage.$V.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 FindMyMessage.$V.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = *(v1 + 16);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 33) = v5;
  return result;
}

uint64_t FindMyMessage.V.getter()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 24);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21460EDF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v221 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v223 = &v157 - v5;
  v222 = sub_2146D8B88();
  v157 = *(v222 - 8);
  v6 = *(v157 + 64);
  v7 = MEMORY[0x28223BE20](v222);
  v219 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v220 = &v157 - v9;
  v204 = type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder(0);
  v203 = *(v204 - 8);
  v10 = *(v203 + 64);
  v11 = MEMORY[0x28223BE20](v204);
  v218 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v217 = &v157 - v13;
  v234 = type metadata accessor for EncodedKeyPackage(0);
  v233 = *(v234 - 8);
  v14 = *(v233 + 64);
  v15 = MEMORY[0x28223BE20](v234);
  v243 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v242 = &v157 - v17;
  v244 = type metadata accessor for KeyPackage(0);
  v238 = *(v244 - 8);
  v18 = *(v238 + 64);
  MEMORY[0x28223BE20](v244);
  v239 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v206 = *(v230 - 8);
  v20 = *(v206 + 64);
  MEMORY[0x28223BE20](v230);
  v231 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = *v0;
  v191 = *(v0 + 3);
  v197 = v0[32];
  v22 = *(v0 + 5);
  v23 = *(v0 + 6);
  v24 = *(v0 + 7);
  v25 = *(v0 + 8);
  v26 = *(v0 + 9);
  v27 = *(v0 + 40);
  v28 = *(v0 + 12);
  v216 = *(v0 + 11);
  v195 = v28;
  v29 = *(v0 + 14);
  v194 = *(v0 + 13);
  v196 = v29;
  v193 = *(v0 + 15);
  v192 = *(v0 + 64);
  v30 = *(v0 + 18);
  v184 = *(v0 + 17);
  v162 = v30;
  v31 = *(v0 + 20);
  v161 = *(v0 + 19);
  v160 = v31;
  v159 = *(v0 + 21);
  v158 = *(v0 + 88);
  v32 = *(v0 + 24);
  v185 = *(v0 + 23);
  v167 = v32;
  v33 = *(v0 + 26);
  v166 = *(v0 + 25);
  v165 = v33;
  v164 = *(v0 + 27);
  v163 = *(v0 + 112);
  v34 = *(v0 + 30);
  v186 = *(v0 + 29);
  v172 = v34;
  v35 = *(v0 + 32);
  v171 = *(v0 + 31);
  v170 = v35;
  v169 = *(v0 + 33);
  v168 = *(v0 + 136);
  v36 = *(v0 + 36);
  v187 = *(v0 + 35);
  v175 = v36;
  v37 = *(v0 + 38);
  v174 = *(v0 + 37);
  v173 = v37;
  v207 = *(v0 + 39);
  v213 = *(v0 + 160);
  v38 = *(v0 + 42);
  v188 = *(v0 + 41);
  v178 = v38;
  v39 = *(v0 + 44);
  v177 = *(v0 + 43);
  v176 = v39;
  v214 = *(v0 + 45);
  v215 = *(v0 + 184);
  v40 = *(v0 + 48);
  v189 = *(v0 + 47);
  v182 = v40;
  v41 = *(v0 + 50);
  v181 = *(v0 + 49);
  v180 = v41;
  v179 = *(v0 + 51);
  v224 = *(v0 + 208);
  v42 = *(v0 + 54);
  v229 = *(v0 + 53);
  v43 = *(v0 + 56);
  v228 = *(v0 + 55);
  v227 = v43;
  v226 = *(v0 + 57);
  v225 = *(v0 + 232);
  v44 = sub_2146D87D8();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v245 = sub_2146D87C8();
  v183 = v42;
  if (v22)
  {
    *&v251 = v22;
    sub_2142F139C(v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907118, &qword_2146F48F0);
    sub_2142F1F70();
    v232 = sub_2146D87B8();
    v48 = v47;
    sub_2142F13DC(v22);
  }

  else
  {
    v232 = 0;
    v48 = 0xC000000000000000;
  }

  v49 = v229;
  if (v216)
  {
    v205 = v48;
    v201 = *(v216 + 16);
    if (v201)
    {
      v202 = v216 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
      sub_2142F139C(v216);
      v200 = (v157 + 16);
      v199 = (v157 + 56);
      v198 = (v157 + 32);

      v50 = 0;
      v51 = MEMORY[0x277D84F90];
      v52 = v239;
      while (1)
      {
        if (v50 >= *(v216 + 16))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v211 = v51;
        v53 = *(v206 + 72);
        v212 = v50;
        v54 = v231;
        sub_214612528(v202 + v53 * v50, v231, type metadata accessor for CircleTrustEnvelopeV1Payload);
        v55 = *(v54 + *(v230 + 60));
        v237 = *(v55 + 16);
        if (v237)
        {
          break;
        }

        v57 = MEMORY[0x277D84F90];
LABEL_29:
        v80 = *v200;
        v81 = v231;
        v82 = v222;
        (*v200)(v220, v231, v222);
        v83 = *v199;
        (*v199)(v223, 1, 1, v82);
        v84 = v230;
        v80(v219, v81 + *(v230 + 24), v82);
        v85 = v82;
        v86 = v84;
        v83(v221, 1, 1, v85);
        v87 = v81;
        v88 = v81 + v86[8];
        v89 = *(v88 + 24);
        if (!v89)
        {
          goto LABEL_63;
        }

        v90 = v87 + v86[9];
        v91 = *(v90 + 24);
        if (!v91)
        {
          goto LABEL_63;
        }

        v92 = v87 + v86[12];
        v93 = *(v92 + 24);
        if (!v93)
        {
          goto LABEL_63;
        }

        v94 = v87 + v86[13];
        if (*(v94 + 24))
        {
          goto LABEL_63;
        }

        v95 = v87 + v86[14];
        v96 = *(v95 + 24);
        if (!v96)
        {
          goto LABEL_63;
        }

        v236 = *(v88 + 16);
        v240 = *(v90 + 16);
        v97 = v86[11];
        LODWORD(v235) = *(v87 + v86[10]);
        LODWORD(v237) = *(v87 + v97);
        v241 = *(v92 + 16);
        v98 = *(v95 + 16);
        v246 = *(v94 + 16);
        v247 = v98;
        *&v251 = v57;
        v248 = v96;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C10, &unk_21476BCA0);
        v210 = v93;
        sub_21460DA3C();
        v209 = sub_2146D87B8();
        v99 = v91;
        v101 = v100;
        swift_bridgeObjectRelease_n();
        v102 = v86[17];
        v103 = *(v87 + v86[16]);
        v208 = *(v87 + v102);
        v104 = *v198;
        v105 = v217;
        v106 = v222;
        (*v198)(v217, v220, v222);
        v107 = v204;
        sub_214080CE0(v223, v105 + *(v204 + 20));
        v104(v105 + v107[6], v219, v106);
        sub_214080CE0(v221, v105 + v107[7]);
        v108 = (v105 + v107[8]);
        *v108 = v236;
        v108[1] = v89;
        v109 = (v105 + v107[9]);
        *v109 = v240;
        v109[1] = v99;
        *(v105 + v107[10]) = v235;
        *(v105 + v107[11]) = v237;
        v110 = (v105 + v107[12]);
        v111 = v210;
        *v110 = v241;
        v110[1] = v111;
        v112 = v247;
        *(v105 + v107[13]) = v246;
        v113 = (v105 + v107[14]);
        v114 = v248;
        *v113 = v112;
        v113[1] = v114;
        v115 = (v105 + v107[15]);
        *v115 = v209;
        v115[1] = v101;
        *(v105 + v107[16]) = v103;
        *(v105 + v107[17]) = v208;
        sub_214612528(v105, v218, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder);

        v116 = v211;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_214095D5C(0, v116[2] + 1, 1, v116);
        }

        v52 = v239;
        v118 = v116[2];
        v117 = v116[3];
        v51 = v116;
        v119 = v212;
        if (v118 >= v117 >> 1)
        {
          v120 = sub_214095D5C(v117 > 1, v118 + 1, 1, v116);
          v119 = v212;
          v51 = v120;
        }

        sub_2146125F8(v217, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder);
        v51[2] = v118 + 1;
        sub_214612590(v218, v51 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v118, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder);
        sub_2146125F8(v231, type metadata accessor for CircleTrustEnvelopeV1Payload);
        v50 = v119 + 1;
        if (v119 + 1 == v201)
        {

          goto LABEL_42;
        }
      }

      v56 = 0;
      v236 = v55 + ((*(v238 + 80) + 32) & ~*(v238 + 80));
      v57 = MEMORY[0x277D84F90];
      v235 = v55;
      while (1)
      {
        if (v56 >= *(v55 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        v240 = v56;
        v241 = v57;
        sub_214612528(v236 + *(v238 + 72) * v56, v52, type metadata accessor for KeyPackage);
        v58 = *(v52 + *(v244 + 20));
        v247 = *(v58 + 16);
        if (v247)
        {
          break;
        }

        v248 = MEMORY[0x277D84F90];
LABEL_22:
        v52 = v239;
        v70 = v242;
        sub_214612528(v239, v242, type metadata accessor for Alignment);
        v71 = v243;
        v72 = (v52 + *(v244 + 24));
        v73 = *v72;
        v74 = v72[1];
        v75 = v234;
        *(v70 + *(v234 + 20)) = v248;
        v76 = (v70 + *(v75 + 24));
        *v76 = v73;
        v76[1] = v74;
        sub_214612528(v70, v71, type metadata accessor for EncodedKeyPackage);

        v57 = v241;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_214095D84(0, v57[2] + 1, 1, v57);
        }

        v55 = v235;
        v77 = v240;
        v79 = v57[2];
        v78 = v57[3];
        if (v79 >= v78 >> 1)
        {
          v57 = sub_214095D84(v78 > 1, v79 + 1, 1, v57);
        }

        v56 = v77 + 1;
        sub_2146125F8(v242, type metadata accessor for EncodedKeyPackage);
        sub_2146125F8(v52, type metadata accessor for KeyPackage);
        v57[2] = v79 + 1;
        sub_214612590(v243, v57 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v79, type metadata accessor for EncodedKeyPackage);
        if (v56 == v237)
        {
          goto LABEL_29;
        }
      }

      v59 = 0;
      v60 = (v58 + 56);
      v248 = MEMORY[0x277D84F90];
      v246 = v58;
      while (v59 < *(v58 + 16))
      {
        if (!*v60)
        {
          goto LABEL_63;
        }

        v61 = *(v60 - 3);
        v62 = *(v60 - 1);
        *&v251 = *v60;

        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
        sub_2146124AC(&qword_27C905990, &qword_27C905978, &qword_2146F3EF0, sub_214061684);
        v63 = sub_2146D87B8();
        v65 = v64;

        sub_21402D9F8(v63, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = sub_214095DAC(0, *(v248 + 2) + 1, 1, v248);
        }

        v67 = *(v248 + 2);
        v66 = *(v248 + 3);
        if (v67 >= v66 >> 1)
        {
          v248 = sub_214095DAC((v66 > 1), v67 + 1, 1, v248);
        }

        ++v59;

        sub_213FB54FC(v63, v65);
        v68 = v248;
        *(v248 + 2) = v67 + 1;
        v69 = &v68[24 * v67];
        *(v69 + 4) = v61;
        *(v69 + 5) = v63;
        *(v69 + 6) = v65;
        v60 += 5;
        v58 = v246;
        if (v247 == v59)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    v51 = MEMORY[0x277D84F90];
LABEL_42:
    if (v197)
    {
      goto LABEL_63;
    }

    *&v251 = v51;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916BB0, &qword_21476B7C0);
    sub_214612658();
    v121 = sub_2146D87B8();
    v123 = v122;

    sub_2142F13DC(v216);
    sub_213FB54FC(v232, v205);

    v232 = v121;
    v48 = v123;
    v49 = v229;
  }

  v124 = v184;
  if (v184)
  {
    v125 = v48;
    *&v251 = v184;
    sub_2142F139C(v184);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C38, &qword_21476B570);
    sub_2142EF680();
    v126 = sub_2146D87B8();
    v48 = v127;
    sub_213FB54FC(v232, v125);
    sub_2142F13DC(v124);

    v232 = v126;
    v49 = v229;
  }

  v128 = v185;
  if (v185)
  {
    v129 = v48;
    *&v251 = v185;
    sub_2142F139C(v185);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906BD0, &qword_2146F4700);
    sub_2142EF41C();
    v130 = sub_2146D87B8();
    v48 = v131;
    sub_213FB54FC(v232, v129);
    sub_2142F13DC(v128);

    v232 = v130;
    v49 = v229;
  }

  v132 = v186;
  if (v186)
  {
    v133 = v48;
    *&v251 = v186;
    sub_2142F139C(v186);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906C90, &qword_2146F4750);
    sub_2142EF890();
    v134 = sub_2146D87B8();
    v48 = v135;
    sub_213FB54FC(v232, v133);
    sub_2142F13DC(v132);

    v232 = v134;
    v49 = v229;
  }

  v136 = v187;
  if (v187)
  {
    v205 = v48;
    *&v251 = v187;
    sub_2142F139C(v187);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E68, &qword_2146F4810);
    sub_2146124AC(&qword_27C906E88, &qword_27C906E68, &qword_2146F4810, sub_2142F0850);
    v137 = sub_2146D87B8();
    v48 = v138;
    sub_213FB54FC(v232, v205);
    sub_2142F13DC(v136);

    v232 = v137;
    v49 = v229;
  }

  v139 = v188;
  if (v188)
  {
    v205 = v48;
    *&v251 = v188;
    sub_2142F139C(v188);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E10, qword_21476B1F0);
    sub_2146124AC(&qword_27C906E30, &qword_27C906E10, qword_21476B1F0, sub_2142F05F8);
    v140 = sub_2146D87B8();
    v48 = v141;
    sub_213FB54FC(v232, v205);
    sub_2142F13DC(v139);

    v232 = v140;
    v49 = v229;
  }

  v142 = v189;
  if (v189)
  {
    v205 = v48;
    *&v251 = v189;
    sub_2142F139C(v189);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DA0, qword_21476BCB0);
    sub_2146124AC(&qword_27C906DC0, &qword_27C906DA0, qword_21476BCB0, sub_2142F0238);
    v143 = sub_2146D87B8();
    v48 = v144;
    sub_213FB54FC(v232, v205);
    sub_2142F13DC(v142);

    v232 = v143;
    v49 = v229;
  }

  if (v49)
  {
    v145 = v48;
    *&v251 = v49;
    sub_2142F139C(v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EC0, &qword_21476BDF0);
    sub_2142F0A00();
    v146 = sub_2146D87B8();
    v48 = v147;
    sub_213FB54FC(v232, v145);
    sub_2142F13DC(v49);

    v148 = v146;
  }

  else
  {
    v148 = v232;
  }

  if ((v197 & 1) == 0)
  {
    *&v251 = v148;
    *(&v251 + 1) = v48;
    v252 = v190 + 1;
    v253 = v191;
    v149 = v48;
    sub_21402D9F8(v148, v48);
    sub_214612458();
    v150 = sub_2146D87B8();
    v253 = MEMORY[0x277CC9318];
    *&v251 = v150;
    *(&v251 + 1) = v151;
    sub_213FDC730(&v251, &v250);
    v152 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v249 = v152;
    sub_2140524DC(&v250, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);
    sub_213FB54FC(v148, v149);

    sub_213FB54FC(v148, v149);
    return v249;
  }

LABEL_63:
  sub_2146DA018();
  __break(1u);
  swift_unexpectedError();
  __break(1u);

  sub_214082B3C(v221);
  v155 = *(v157 + 8);
  v156 = v222;
  v155(v219, v222);
  sub_214082B3C(v223);
  v155(v220, v156);
  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  swift_unexpectedError();
  __break(1u);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

BlastDoor::FindMyMessage::ItemSharingCrossAccountMessageType_optional __swiftcall FindMyMessage.ItemSharingCrossAccountMessageType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 9)
  {
    v2 = 9;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_214610BCC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 32))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 24);
  }

  return result;
}

uint64_t (*FindMyMessage.V.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 32))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 24);
    return sub_214610CD8;
  }

  return result;
}

uint64_t sub_214610D00(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a2 + 16);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  return result;
}

void (*FindMyMessage.$V.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214610E04;
}

void sub_214610E04(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 16);
  if (a2)
  {
    v10 = (*a1)[1];

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
    *(v3 + 33) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 16);

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
    *(v3 + 33) = v8;
  }

  free(v2);
}

uint64_t FindMyMessage.peerTrustAck.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 80);
  return sub_2142F139C(v2);
}

__n128 FindMyMessage.peerTrustAck.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  sub_2142F13DC(*(v1 + 40));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrust.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 128);
  return sub_2142F139C(v2);
}

__n128 FindMyMessage.circleTrust.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  v9 = *(v1 + 128);
  sub_2142F13DC(*(v1 + 88));
  result = *a1;
  *(v1 + 104) = *(a1 + 16);
  *(v1 + 88) = result;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustAck.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 176);
  return sub_2142F139C(v2);
}

__n128 FindMyMessage.circleTrustAck.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 144);
  v6 = *(v1 + 152);
  v7 = *(v1 + 160);
  v8 = *(v1 + 168);
  v9 = *(v1 + 176);
  sub_2142F13DC(*(v1 + 136));
  result = *a1;
  *(v1 + 152) = *(a1 + 16);
  *(v1 + 136) = result;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustAccept.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  v5 = *(v1 + 208);
  v6 = *(v1 + 216);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 224);
  return sub_2142F139C(v2);
}

__n128 FindMyMessage.circleTrustAccept.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 192);
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  v9 = *(v1 + 224);
  sub_2142F13DC(*(v1 + 184));
  result = *a1;
  *(v1 + 200) = *(a1 + 16);
  *(v1 + 184) = result;
  *(v1 + 216) = v3;
  *(v1 + 224) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustDecline.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  v6 = *(v1 + 264);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 272);
  return sub_2142F139C(v2);
}

__n128 FindMyMessage.circleTrustDecline.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  v8 = *(v1 + 264);
  v9 = *(v1 + 272);
  sub_2142F13DC(*(v1 + 232));
  result = *a1;
  *(v1 + 248) = *(a1 + 16);
  *(v1 + 232) = result;
  *(v1 + 264) = v3;
  *(v1 + 272) = v4;
  return result;
}

uint64_t FindMyMessage.circlesUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 280);
  v3 = *(v1 + 288);
  v4 = *(v1 + 296);
  v5 = *(v1 + 304);
  v6 = *(v1 + 312);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 320);
  return sub_2142F139C(v2);
}

__n128 FindMyMessage.circlesUpdated.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 288);
  v6 = *(v1 + 296);
  v7 = *(v1 + 304);
  v8 = *(v1 + 312);
  v9 = *(v1 + 320);
  sub_2142F13DC(*(v1 + 280));
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 280) = *a1;
  *(v1 + 296) = v11;
  *(v1 + 312) = v3;
  *(v1 + 320) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustStopped.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  v3 = *(v1 + 336);
  v4 = *(v1 + 344);
  v5 = *(v1 + 352);
  v6 = *(v1 + 360);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 368);
  return sub_2142F139C(v2);
}

__n128 FindMyMessage.circleTrustStopped.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 336);
  v6 = *(v1 + 344);
  v7 = *(v1 + 352);
  v8 = *(v1 + 360);
  v9 = *(v1 + 368);
  sub_2142F13DC(*(v1 + 328));
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 328) = *a1;
  *(v1 + 344) = v11;
  *(v1 + 360) = v3;
  *(v1 + 368) = v4;
  return result;
}

uint64_t FindMyMessage.circleTrustRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 384);
  v4 = *(v1 + 392);
  v5 = *(v1 + 400);
  v6 = *(v1 + 408);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 416);
  return sub_2142F139C(v2);
}

__n128 FindMyMessage.circleTrustRequest.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 384);
  v6 = *(v1 + 392);
  v7 = *(v1 + 400);
  v8 = *(v1 + 408);
  v9 = *(v1 + 416);
  sub_2142F13DC(*(v1 + 376));
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 376) = *a1;
  *(v1 + 392) = v11;
  *(v1 + 408) = v3;
  *(v1 + 416) = v4;
  return result;
}

uint64_t FindMyMessage.delegatedReunited.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 424);
  v3 = *(v1 + 432);
  v4 = *(v1 + 440);
  v5 = *(v1 + 448);
  v6 = *(v1 + 456);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 464);
  return sub_2142F139C(v2);
}

__n128 FindMyMessage.delegatedReunited.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 432);
  v6 = *(v1 + 440);
  v7 = *(v1 + 448);
  v8 = *(v1 + 456);
  v9 = *(v1 + 464);
  sub_2142F13DC(*(v1 + 424));
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 424) = *a1;
  *(v1 + 440) = v11;
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;
  return result;
}

uint64_t sub_214611500()
{
  sub_21460EDF4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t FindMyMessage.bridgedToObjectiveC.getter()
{
  sub_21460EDF4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146115A8()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2146115DC(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2146116AC(uint64_t a1)
{
  v2 = sub_2146118EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146116E8(uint64_t a1)
{
  v2 = sub_2146118EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214611724(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C38, &qword_21476BF90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21402D9F8(v8, v9);
  sub_2146118EC();
  sub_2146DAA28();
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_214061684();
  v12 = v14[3];
  sub_2146DA388();
  sub_213FB54FC(v15, v16);
  if (!v12)
  {
    LOBYTE(v15) = 1;
    sub_2146DA368();
    LOBYTE(v15) = 2;
    sub_2146DA368();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2146118EC()
{
  result = qword_27C916C40;
  if (!qword_27C916C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C40);
  }

  return result;
}

uint64_t sub_214611958()
{
  v3 = *v0;
  v4 = v0[1];
  sub_214611A28();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2146119C0()
{
  v3 = *v0;
  v4 = v0[1];
  sub_214611A28();
  v1 = sub_2146D9468();

  return v1;
}

unint64_t sub_214611A28()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v27 = MEMORY[0x277CC9318];
  *&v26 = v1;
  *(&v26 + 1) = v2;
  sub_213FDC730(&v26, v24);
  sub_21402D9F8(v1, v2);
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v5;
  v7 = v25;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  sub_214611FC0(*v11, v11[1], 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native, &v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v13 = v23;
  v14 = MEMORY[0x277D83B88];
  v27 = MEMORY[0x277D83B88];
  *&v26 = v4;
  sub_213FDC730(&v26, v24);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v13;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  sub_2146121A4(*v16, 86, 0xE100000000000000, v15, &v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v17 = v23;
  v27 = v14;
  *&v26 = v3;
  sub_213FDC730(&v26, v24);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v17;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  sub_2146121A4(*v19, 84, 0xE100000000000000, v18, &v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v20 = sub_214642720(v23);

  return v20;
}

unint64_t sub_214611C2C()
{
  result = qword_27C916C48;
  if (!qword_27C916C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C48);
  }

  return result;
}

unint64_t sub_214611C80(uint64_t a1)
{
  *(a1 + 8) = sub_21432022C();
  result = sub_21431FAF4();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor22PeerTrustAckEnvelopeV1VSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214611CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 466))
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

uint64_t sub_214611D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 464) = 0;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 466) = 1;
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

    *(result + 466) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214611DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214611E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_214611EBC()
{
  result = qword_27C916C50;
  if (!qword_27C916C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C50);
  }

  return result;
}

unint64_t sub_214611F14()
{
  result = qword_27C916C58;
  if (!qword_27C916C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C58);
  }

  return result;
}

unint64_t sub_214611F6C()
{
  result = qword_27C916C60;
  if (!qword_27C916C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C60);
  }

  return result;
}

_OWORD *sub_214611FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277CC9318];
  v31 = MEMORY[0x277CC9318];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_21408C300(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_213FDC730(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_214483A90();
    goto LABEL_7;
  }

  sub_2140521F0(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_21408C300(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_214612380(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

_OWORD *sub_2146121A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_21408C300(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_213FDC730(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_214483A90();
    goto LABEL_7;
  }

  sub_2140521F0(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_21408C300(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_2146DA8D8();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D83B88]);
  sub_2146122FC(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

_OWORD *sub_2146122FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_213FDC730(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_214612380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277CC9318];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_213FDC730(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_214612404()
{
  result = qword_27C916C68;
  if (!qword_27C916C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C68);
  }

  return result;
}

unint64_t sub_214612458()
{
  result = qword_27C916C70;
  if (!qword_27C916C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C70);
  }

  return result;
}

uint64_t sub_2146124AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214612528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214612590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2146125F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214612658()
{
  result = qword_27C916C78;
  if (!qword_27C916C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C916BB0, &qword_21476B7C0);
    sub_21461270C(&qword_27C916C80, type metadata accessor for CircleTrustEnvelopeV1Payload_Encoder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C78);
  }

  return result;
}

uint64_t sub_21461270C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214612754@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904130, &unk_2146EAA90);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FB7988;
  v4[3] = 0;
  v4[4] = 3;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_213FB7994;
  v6[3] = 0;
  v6[4] = 512;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_2143A571C;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_214613C44;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140436F0(inited, a1);
}

uint64_t DecodedKey.$key.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 DecodedKey.$key.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t DecodedKey.key.getter()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214612A24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214612A8C(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t DecodedKey.key.setter(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v10 = *(v2 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 24);

    *(v2 + 24) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*DecodedKey.key.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214612D08;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214612D08(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *(v4 + 8);
    v10 = *(v4 + 16);
    v14 = *(v4 + 32);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 24) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v14 = *(v4 + 32);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v6(&v13, &v14, &v15) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v12 = 0x6E776F6E6B6E753CLL;
    v12[1] = 0xE90000000000003ELL;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v7 = a1[2];

  *(v4 + 24) = v3;
}

uint64_t sub_214612EE8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

void (*DecodedKey.$key.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_214612FF4;
}

void sub_214612FF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (a2)
  {
    v10 = (*a1)[2];

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 16);

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
  }

  free(v2);
}

uint64_t sub_2146130B4()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[3];
  v6 = *(v0 + 32);
  sub_2146131B4();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t DecodedKey.bridgedToObjectiveC.getter()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[3];
  v6 = *(v0 + 32);
  sub_2146131B4();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2146131B4()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = sub_2146D87D8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2146D87C8();
  v16 = MEMORY[0x277D83B88];
  *&v15 = v1;
  sub_213FDC730(&v15, v14);
  v6 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v6;
  sub_2140524DC(v14, 0x7865646E69, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    *&v15 = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    sub_2142E562C();
    v8 = sub_2146D87B8();
    v10 = v9;

    v16 = MEMORY[0x277CC9318];
    *&v15 = v8;
    *(&v15 + 1) = v10;
    sub_213FDC730(&v15, v14);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v14, 7955819, 0xE300000000000000, v11);

    return v13;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t EncodedKey.key.getter()
{
  v1 = *(v0 + 8);
  sub_21402D9F8(v1, *(v0 + 16));
  return v1;
}

uint64_t EncodedKey.key.setter(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_214613424(uint64_t a1)
{
  v2 = sub_214613638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214613460(uint64_t a1)
{
  v2 = sub_214613638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EncodedKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C88, &qword_21476C540);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v13[0] = v1[1];
  v9 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214613638();
  sub_2146DAA28();
  LOBYTE(v14) = 0;
  v11 = v13[1];
  sub_2146DA368();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    sub_21402D9F8(v13[0], v9);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v14, v15);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_214613638()
{
  result = qword_27C916C90;
  if (!qword_27C916C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916C90);
  }

  return result;
}

uint64_t EncodedKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916C98, &qword_21476C548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214613638();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    v11 = sub_2146DA1A8();
    v15 = 1;
    sub_21406116C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21461387C()
{
  v3 = *v0;
  v4 = *(v0 + 2);
  sub_21461395C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t EncodedKey.bridgedToObjectiveC.getter()
{
  v3 = *v0;
  v4 = *(v0 + 2);
  sub_21461395C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_21461395C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v10 = MEMORY[0x277D83B88];
  *&v9 = v1;
  sub_213FDC730(&v9, v8);
  sub_21402D9F8(v2, v3);
  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v8, 0x7865646E69, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v10 = MEMORY[0x277CC9318];
  *&v9 = v2;
  *(&v9 + 1) = v3;
  sub_213FDC730(&v9, v8);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v8, 7955819, 0xE300000000000000, v6);
  return v4;
}

unint64_t sub_214613A38(uint64_t a1)
{
  *(a1 + 8) = sub_2142F1D3C();
  result = sub_2142F1E14();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214613A78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214613ACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_214613B40()
{
  result = qword_27C916CA0;
  if (!qword_27C916CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916CA0);
  }

  return result;
}

unint64_t sub_214613B98()
{
  result = qword_27C916CA8;
  if (!qword_27C916CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916CA8);
  }

  return result;
}

unint64_t sub_214613BF0()
{
  result = qword_27C916CB0;
  if (!qword_27C916CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916CB0);
  }

  return result;
}

uint64_t sub_214613C44(uint64_t *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5[2] = &v7;
  v6 = v3;
  return sub_214042508(sub_214613CA4, v5, v2) & 1;
}

uint64_t sub_214613CA4(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = **(v1 + 16);
  v8 = *a1;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = v2;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_214613D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alignment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214613D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alignment();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214613F3C()
{
  v1 = sub_2146D87D8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_2146D87C8();
  v32 = type metadata accessor for KeyPackage(0);
  v33 = v0;
  v4 = *(v0 + *(v32 + 20));
  v36 = *(v4 + 16);
  if (v36)
  {
    v5 = 0;
    v34 = v4 + 32;
    v6 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
    v35 = *(v0 + *(v32 + 20));
    while (v5 < *(v4 + 16))
    {
      v8 = (v34 + 40 * v5);
      v9 = v8[3];
      if (!v9)
      {
        goto LABEL_22;
      }

      v10 = *(v9 + 16);
      v38 = v8[2];
      v39 = *v8;

      if (v10)
      {

        v37 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2140961EC(0, *(v6 + 2) + 1, 1, v6);
        }

        v11 = (v9 + 40);
        do
        {
          v12 = *(v11 - 1);
          v13 = *v11;
          sub_21402D9F8(v12, *v11);
          v15 = *(v6 + 2);
          v14 = *(v6 + 3);
          if (v15 >= v14 >> 1)
          {
            v6 = sub_2140961EC((v14 > 1), v15 + 1, 1, v6);
          }

          v11 += 2;
          *(v6 + 2) = v15 + 1;
          v16 = &v6[16 * v15];
          *(v16 + 4) = v12;
          *(v16 + 5) = v13;
          --v10;
        }

        while (v10);

        v7 = v37;
      }

      *&v41 = v6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
      sub_214615054(&qword_27C905990, &qword_27C905978, &qword_2146F3EF0, sub_214061684);
      v17 = sub_2146D87B8();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_214095DAC(0, *(v7 + 2) + 1, 1, v7);
      }

      v21 = *(v7 + 2);
      v20 = *(v7 + 3);
      if (v21 >= v20 >> 1)
      {
        v7 = sub_214095DAC((v20 > 1), v21 + 1, 1, v7);
      }

      ++v5;

      *(v7 + 2) = v21 + 1;
      v22 = &v7[24 * v21];
      *(v22 + 4) = v39;
      *(v22 + 5) = v17;
      *(v22 + 6) = v19;
      v4 = v35;
      if (v5 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    sub_2146DA018();
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_20:

    v42 = type metadata accessor for Alignment();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
    sub_214613D0C(v33, boxed_opaque_existential_0);
    sub_213FDC730(&v41, v40);
    v24 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v40, 0x6E656D6E67696C61, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916CC8, &qword_21476C7F8);
    *&v41 = v7;
    sub_213FDC730(&v41, v40);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v40, 1937335659, 0xE400000000000000, v26);
    v27 = (v33 + *(v32 + 24));
    v28 = *v27;
    v29 = v27[1];
    v42 = MEMORY[0x277D837D0];
    *&v41 = v28;
    *(&v41 + 1) = v29;
    sub_213FDC730(&v41, v40);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v40, 1701869940, 0xE400000000000000, v30);

    return v24;
  }

  return result;
}