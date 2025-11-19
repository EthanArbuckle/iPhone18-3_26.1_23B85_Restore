uint64_t sub_25A919744()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25A9197D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), v5 = sub_25A998558(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      sub_25A874FB0(*(a2 + 48) + 40 * v7, v11);
      v9 = MEMORY[0x25F850890](v11, a1);
      sub_25A8795A0(v11);
      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_25A9198A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_25A998B18();
  sub_25A997D58();
  v7 = sub_25A998B38();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25A9989E8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25A9199A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_25A998B18();
  sub_25A997D58();
  v7 = sub_25A998B38();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25A9989E8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_25A919A98(uint64_t a1, uint64_t a2)
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
      v6 = sub_25A91CAD4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_25A91CC18(v3, v4);
    }

    else
    {
      v6 = sub_25A91CB94(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_25A919B54(uint64_t a1, unint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  *&v39 = a1;
  *(&v39 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05258, &qword_25A9FD180);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v37, &v40);
    __swift_project_boxed_opaque_existential_1(&v40, v41);
    sub_25A997A98();
    v37[0] = v39;
    __swift_destroy_boxed_opaque_existential_0Tm(&v40);
    goto LABEL_64;
  }

  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_25A878194(v37, &qword_27FA05260, &qword_25A9FD188);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v37[0] = a1;
    *(&v37[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    sub_25A91C464(v37, HIBYTE(a2) & 0xF, &v40);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = sub_25A998708();
    }

    sub_25A91C464(v4, v5, &v40);
  }

  if (*(&v40 + 1) >> 60 != 15)
  {
    v37[0] = v40;
    goto LABEL_64;
  }

  v33 = *(&v40 + 1);
  v34 = v40;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_13:
  *&v37[0] = sub_25A91CE20(v6);
  *(&v37[0] + 1) = v7;
  MEMORY[0x28223BE20](*&v37[0]);
  v8 = sub_25A91C52C(sub_25A91D118);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = *(&v37[0] + 1) >> 62;
  if ((*(&v37[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v37[0] + 16);
      v16 = *(*&v37[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
        goto LABEL_71;
      }

      if (v11 != v19)
      {
        goto LABEL_24;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_61;
    }
  }

  else if (v15)
  {
    if (__OFSUB__(DWORD1(v37[0]), v37[0]))
    {
      goto LABEL_72;
    }

    if (v11 != DWORD1(v37[0]) - LODWORD(v37[0]))
    {
LABEL_24:
      if (v15 == 2)
      {
        v20 = *(*&v37[0] + 24);
      }

      else if (v15 == 1)
      {
        v20 = *&v37[0] >> 32;
      }

      else
      {
        v20 = BYTE14(v37[0]);
      }

LABEL_61:
      if (v20 >= v11)
      {
        sub_25A997B38();
LABEL_63:

        goto LABEL_64;
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
    }
  }

  else if (v11 != BYTE14(v37[0]))
  {
    goto LABEL_24;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v21 = v8 & 0xFFFFFFFFFFFFLL;
  }

  *(&v39 + 7) = 0;
  *&v39 = 0;
  if (4 * v21 == v10 >> 14)
  {
    goto LABEL_58;
  }

  LOBYTE(v22) = 0;
  v23 = (v8 >> 59) & 1;
  if ((v9 & 0x1000000000000000) == 0)
  {
    LOBYTE(v23) = 1;
  }

  v24 = 4 << v23;
  v35 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v36 = v9 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v25 = v14 & 0xC;
    v26 = v14;
    if (v25 == v24)
    {
      v26 = sub_25A979AA8(v14, v12, v13);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v21)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      v6 = sub_25A997FA8();
      v34 = 0;
      v33 = 0xF000000000000000;
      goto LABEL_13;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v29 = sub_25A997FD8();
      if (v25 != v24)
      {
        goto LABEL_47;
      }
    }

    else if ((v13 & 0x2000000000000000) != 0)
    {
      *&v40 = v12;
      *(&v40 + 1) = v36;
      v29 = *(&v40 + v27);
      if (v25 != v24)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v28 = v35;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = sub_25A998708();
      }

      v29 = *(v28 + v27);
      if (v25 != v24)
      {
LABEL_47:
        if ((v13 & 0x1000000000000000) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_51;
      }
    }

    v14 = sub_25A979AA8(v14, v12, v13);
    if ((v13 & 0x1000000000000000) == 0)
    {
LABEL_48:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_53;
    }

LABEL_51:
    if (v21 <= v14 >> 16)
    {
      goto LABEL_67;
    }

    v14 = sub_25A997FB8();
LABEL_53:
    *(&v39 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_66;
    }

    if (v22 == 14)
    {
      *&v40 = v39;
      *(&v40 + 6) = *(&v39 + 6);
      sub_25A997B48();
      LOBYTE(v22) = 0;
    }
  }

  while (4 * v21 != v14 >> 14);
  if (v22)
  {
    *&v40 = v39;
    *(&v40 + 6) = *(&v39 + 6);
    sub_25A997B48();
    sub_25A8F7E3C(v34, v33);
    goto LABEL_63;
  }

LABEL_58:

  sub_25A8F7E3C(v34, v33);
LABEL_64:
  v30 = v37[0];
  sub_25A8F192C(*&v37[0], *(&v37[0] + 1));

  sub_25A8F1C54(v30, *(&v30 + 1));
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

void *sub_25A91A090()
{
  v0[2] = 1684632949;
  v0[3] = 0xE400000000000000;
  type metadata accessor for LexicalContext();
  v1 = swift_allocObject();
  v1[2] = 0x6E776F6E6B6E55;
  v1[3] = 0xE700000000000000;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v4 + 16) = v3;
  v1[4] = v4;
  v1[5] = sub_25A98E67C(v2);
  v0[4] = v1;
  return v0;
}

uint64_t sub_25A91A17C()
{
  v1 = *(v0 + 32);
  *(&v22 + 1) = MEMORY[0x277D837D0];
  *&v21 = 1145656661;
  *(&v21 + 1) = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v2 = swift_allocObject();
  v2[1] = xmmword_25A9F8D80;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v5 = type metadata accessor for Function();
  v6 = swift_allocObject();
  v6[4] = v3;
  v6[5] = v3;
  v6[6] = v3;

  v6[7] = v3;

  v6[8] = v3;

  v6[9] = 0;
  v6[10] = 0;

  v6[11] = 0;
  v6[12] = 0;

  v6[13] = sub_25A92BDB4(v3);
  v6[2] = 1145656661;
  v6[3] = 0xE400000000000000;
  v7 = *(v6 + 5);
  v19[2] = *(v6 + 4);
  v19[3] = v7;
  v20 = v6[12];
  v8 = *(v6 + 3);
  v19[0] = *(v6 + 2);
  v19[1] = v8;
  v6[4] = &unk_286C0D2E8;
  v6[5] = v3;
  v6[6] = v3;
  v6[7] = v3;
  v6[8] = v2;
  *(v6 + 9) = 0u;
  *(v6 + 11) = 0u;
  sub_25A892B80(v19);
  swift_beginAccess();
  v9 = v6[13];
  v6[13] = v4;

  v6[14] = sub_25A91C384;
  v6[15] = 0;
  v18 = v5;
  v17[0] = v6;
  LexicalContext.store(key:obj:)(&v21, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  v18 = MEMORY[0x277D837D0];
  v17[0] = 0x3464697575;
  v17[1] = 0xE500000000000000;
  v10 = sub_25A92BDB4(v3);
  v11 = swift_allocObject();
  v11[4] = v3;
  v11[5] = v3;
  v11[6] = v3;

  v11[7] = v3;

  v11[8] = v3;

  v11[9] = 0;
  v11[10] = 0;

  v11[11] = 0;
  v11[12] = 0;

  v11[13] = sub_25A92BDB4(v3);
  v11[2] = 0x3464697575;
  v11[3] = 0xE500000000000000;
  v12 = *(v11 + 5);
  v23 = *(v11 + 4);
  v24 = v12;
  v25 = v11[12];
  v13 = *(v11 + 3);
  v21 = *(v11 + 2);
  v22 = v13;
  v11[4] = v3;
  v11[5] = v3;
  v11[6] = v3;
  v11[7] = v3;
  v11[8] = v3;
  *(v11 + 9) = 0u;
  *(v11 + 11) = 0u;
  sub_25A892B80(&v21);
  swift_beginAccess();
  v14 = v11[13];
  v11[13] = v10;

  v11[14] = sub_25A91C408;
  v11[15] = 0;
  v16[3] = v5;
  v16[0] = v11;
  LexicalContext.store(key:obj:)(v17, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

void sub_25A91A464(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05218, &qword_25A9FD148);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v34 - v6;
  v8 = sub_25A997BA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v13 = sub_25A8F3600(7890280, 0xE300000000000000);
  if ((v14 & 1) == 0 || (sub_25A87500C(*(a1 + 56) + 32 * v13, v35), (swift_dynamicCast() & 1) == 0))
  {
    if (*(a1 + 16))
    {
      v18 = sub_25A8F3600(0x7365747962, 0xE500000000000000);
      if (v19)
      {
        sub_25A87500C(*(a1 + 56) + 32 * v18, v35);
        if (swift_dynamicCast())
        {
          v21 = v34[1];
          v20 = v34[2];
          *(a2 + 24) = v8;
          __swift_allocate_boxed_opaque_existential_0(a2);
          v22 = v20 >> 62;
          if ((v20 >> 62) > 1)
          {
            if (v22 != 2)
            {
              *&v35[6] = 0;
              *v35 = 0;
              v33 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
              sub_25A997B78();

              goto LABEL_28;
            }

            v28 = *(v21 + 16);
            v29 = *(v21 + 24);
            v30 = sub_25A997A08();
            if (v30)
            {
              v31 = sub_25A997A38();
              if (__OFSUB__(v28, v31))
              {
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              v30 += v28 - v31;
            }

            if (!__OFSUB__(v29, v28))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (!v22)
            {
              *v35 = v21;
              *&v35[8] = v20;
              v35[10] = BYTE2(v20);
              v35[11] = BYTE3(v20);
              v35[12] = BYTE4(v20);
              v35[13] = BYTE5(v20);
              v23 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
              sub_25A997B78();

LABEL_28:
              sub_25A8F1C54(v21, v20);
              goto LABEL_14;
            }

            if (v21 >> 32 >= v21)
            {
              v30 = sub_25A997A08();
              if (!v30)
              {
LABEL_26:
                sub_25A997A28();
                sub_25A91A9B4(v30);
                goto LABEL_28;
              }

              v32 = sub_25A997A38();
              if (!__OFSUB__(v21, v32))
              {
                v30 += v21 - v32;
                goto LABEL_26;
              }

LABEL_32:
              __break(1u);
            }

            __break(1u);
          }

          __break(1u);
          goto LABEL_31;
        }
      }
    }

LABEL_13:
    sub_25A874F54();
    swift_allocError();
    *v24 = -109;
    swift_willThrow();
    goto LABEL_14;
  }

  v15 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  v16 = sub_25A997E18();

  v17 = [v15 initWithUUIDString_];

  if (v17 && ((*(v9 + 56))(v7, 1, 1, v8), sub_25A91D0D0(&qword_27FA05220, MEMORY[0x277CC95F0]), sub_25A9988B8(), v17, (*(v9 + 48))(v7, 1, v8) != 1))
  {
    v26 = *(v9 + 32);
    v26(v12, v7, v8);
    *(a2 + 24) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    v26(boxed_opaque_existential_0, v12, v8);
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

LABEL_14:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_25A91A998(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91A9A0);
  }

  _Unwind_Resume(a1);
}

void sub_25A91A9B4(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
  sub_25A997B78();
}

uint64_t sub_25A91AA18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v33 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A91D0D0(&qword_27FA04718, type metadata accessor for PyBuiltInClass);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = v33;
  *(inited + 32) = 0x5F5F7274735F5FLL;
  *(inited + 40) = 0xE700000000000000;

  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v29 = type metadata accessor for Function();
  v5 = swift_allocObject();
  v5[4] = v3;
  v5[5] = v3;
  v5[6] = v3;

  v5[7] = v3;

  v5[8] = v3;

  v5[9] = 0;
  v5[10] = 0;

  v5[11] = 0;
  v5[12] = 0;

  v5[13] = sub_25A92BDB4(v3);
  v5[2] = 0x5F5F7274735F5FLL;
  v5[3] = 0xE700000000000000;
  v6 = *(v5 + 5);
  v35[2] = *(v5 + 4);
  v35[3] = v6;
  v36 = v5[12];
  v7 = *(v5 + 3);
  v35[0] = *(v5 + 2);
  v35[1] = v7;
  v5[4] = &unk_286C0B9F8;
  v5[5] = v3;
  v5[6] = v3;
  v5[7] = v3;
  v5[8] = v3;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  sub_25A892B80(v35);
  swift_beginAccess();
  v8 = v5[13];
  v5[13] = v4;

  v5[14] = sub_25A91C358;
  v5[15] = 0;
  *(inited + 48) = v5;
  v9 = sub_25A98E67C(inited);
  swift_setDeallocating();
  sub_25A878194(inited + 32, &qword_27FA047A0, &qword_25A9F8E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v10 = swift_allocObject();
  *(v10 + 16) = v33;
  *(v10 + 32) = 0x7463656A626FLL;
  *(v10 + 40) = 0xE600000000000000;
  v11 = swift_allocObject();
  v11[10] = 0;
  v12 = sub_25A967378(1, 2, 1, v10);
  v34[7] = v12;
  sub_25A96B0BC(0, 0, 1, 1684632949, 0xE400000000000000);
  v11[2] = 1684632949;
  v11[3] = 0xE400000000000000;
  v11[4] = 1684632949;
  v11[5] = 0xE400000000000000;
  v11[6] = v0;
  v11[7] = v12;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v11[8] = sub_25A936284();
  v30 = v11;
  v31 = v9;
  v11[9] = &off_286C11D08;
  v13 = v9 + 64;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v9 + 64);
  swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  if (v16)
  {
    while (1)
    {
      v19 = v17;
LABEL_10:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v19 << 6);
      v22 = (*(v31 + 48) + 16 * v21);
      v23 = *v22;
      v0 = v22[1];
      v24 = *(*(v31 + 56) + 8 * v21);
      v25 = *(v30 + 64);
      v26 = *(v30 + 72);
      ObjectType = swift_getObjectType();
      v34[3] = v29;
      v34[0] = v24;
      v32 = *(v26 + 64);
      *&v33 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v32(v23, v0, v34, v33, v26);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      if (!v16)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v19 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v17;
    if (v16)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  qword_27FA0FCE0 = v30;
  return result;
}

uint64_t sub_25A91AEB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05218, &qword_25A9FD148);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-v6];
  v8 = sub_25A997BA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16) && (v13 = sub_25A8F3600(1718379891, 0xE400000000000000), (v14 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v13, v20);
    v15 = swift_dynamicCast();
    (*(v9 + 56))(v7, v15 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      v16 = sub_25A997B68();
      a2[3] = MEMORY[0x277D837D0];
      *a2 = v16;
      a2[1] = v17;
      return (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_25A878194(v7, &qword_27FA05218, &qword_25A9FD148);
  sub_25A874F54();
  swift_allocError();
  *v19 = -106;
  return swift_willThrow();
}

uint64_t sub_25A91B114()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t UUID.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA043B8 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FCE0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A91D0D0(&qword_27FA04718, type metadata accessor for PyBuiltInClass);
  *a1 = v2;
}

unint64_t UUID.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1 == 0x7365747962 && a2 == 0xE500000000000000;
  if (v4 || (result = sub_25A9989E8(), (result & 1) != 0))
  {
    v6 = sub_25A997B88();
    *(a3 + 24) = MEMORY[0x277CC9318];
    v10[0] = v6;
    v10[1] = v7;
    result = sub_25A919A98(v10, &v11);
    *a3 = result;
    *(a3 + 8) = v8;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Bool __swiftcall UUID.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25A91CC94(&unk_286C0D5A8);
  sub_25A873BC0(&unk_286C0D5C8);
  v4 = sub_25A9198A8(countAndFlagsBits, object, v3);

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_25A91BFB0();
    swift_beginAccess();
    v7 = *(v6 + 16);

    if (*(v7 + 16))
    {
      sub_25A8F3600(countAndFlagsBits, object);
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_25A91B3EC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA043B8 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FCE0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A91D0D0(&qword_27FA04718, type metadata accessor for PyBuiltInClass);
  *a1 = v2;
}

uint64_t sub_25A91B4A0()
{
  *&v10 = type metadata accessor for SharedMutableSet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05278, &qword_25A9FD198);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05280, &qword_25A9FD1A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05280, &qword_25A9FD1A0);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E7CC(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91B674()
{
  *&v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05228, &qword_25A9FD150);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05230, &qword_25A9FD158);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05230, &qword_25A9FD158);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E7E0(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91B854()
{
  *&v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05238, &qword_25A9FD160);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05240, &qword_25A9FD168);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05240, &qword_25A9FD168);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E7F4(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91BA34()
{
  *&v10 = type metadata accessor for MLXArray();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051F0, &qword_25A9FD120);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051F8, &qword_25A9FD128);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051F8, &qword_25A9FD128);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E808(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91BC08()
{
  *&v10 = MEMORY[0x277D837D0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05248, &qword_25A9FD170);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05250, &qword_25A9FD178);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05250, &qword_25A9FD178);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E81C(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91BDDC()
{
  *&v10 = sub_25A873A9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA052A0, &qword_25A9FD1C0);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA052A8, &qword_25A9FD1C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA052A8, &qword_25A9FD1C8);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E830(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91BFB0()
{
  *&v10 = sub_25A997BA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05288, &qword_25A9FD1A8);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05290, &qword_25A9FD1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05290, &qword_25A9FD1B0);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98ECA0(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91C184()
{
  *&v10 = type metadata accessor for PyLogger();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05200, &qword_25A9FD130);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05208, &qword_25A9FD138);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05208, &qword_25A9FD138);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98ECB4(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91C3B0(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A91C408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25A936F00(a1);
  a2[3] = sub_25A997BA8();
  __swift_allocate_boxed_opaque_existential_0(a2);
  sub_25A997B98();
}

unint64_t sub_25A91C464@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25A91CAD4(a1, &a1[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_25A997A58();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_25A9979F8();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25A997B28();
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

void *sub_25A91C52C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
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
      sub_25A8F1C54(v6, v5);
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

    sub_25A8F1C54(v6, v5);
    *v3 = xmmword_25A9F8DC0;
    sub_25A8F1C54(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25A997A08() && __OFSUB__(v6, sub_25A997A38()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_25A997A58();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_25A9979E8();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_25A91C9D0(v6, v6 >> 32, a1);

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

    sub_25A8F1C54(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_25A9F8DC0;
    sub_25A8F1C54(0, 0xC000000000000000);
    sub_25A997AD8();
    result = sub_25A91C9D0(v20[2], v20[3], a1);
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

_BYTE *sub_25A91C8D0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_25A91CAD4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25A91CC18(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25A91CB94(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25A91C964(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_25A91C9D0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25A997A08();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25A997A38();
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

  v12 = sub_25A997A28();
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

uint64_t sub_25A91CA84@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_25A998608();
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

unint64_t sub_25A91CAD4(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_25A973EEC(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25A91CB94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25A997A58();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25A9979F8();
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

uint64_t sub_25A91CC18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25A997A58();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25A9979F8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25A997B28();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25A91CC94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05298, &qword_25A9FD1B8);
    v3 = sub_25A9985A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_25A998B18();

      sub_25A997D58();
      result = sub_25A998B38();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_25A9989E8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25A91CE20(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_25A973EEC(result);
    }

    else
    {
      v2 = sub_25A997A58();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25A997A18();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25A997B28();
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

uint64_t sub_25A91CEC0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05268, &qword_25A9FD190);
  v10 = sub_25A91D1A0();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25A91C8D0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_25A91CF70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05210, &qword_25A9FD140);
    v3 = sub_25A9985A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_25A998B18();
      sub_25A997D58();
      result = sub_25A998B38();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 == v9 && v15[1] == v8)
        {
          goto LABEL_3;
        }

        result = sub_25A9989E8();
        if (result)
        {
          goto LABEL_3;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;

LABEL_3:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25A91D0D0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_25A91D118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25A91C964(sub_25A91D180, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_25A91D1A0()
{
  result = qword_27FA05270;
  if (!qword_27FA05270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA05268, &qword_25A9FD190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05270);
  }

  return result;
}

uint64_t sub_25A91D214(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65726F7473;
  if (v2 != 1)
  {
    v4 = 7103844;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1684107116;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65726F7473;
  if (*a2 != 1)
  {
    v8 = 7103844;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684107116;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A91D2F8()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A91D388()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A91D404()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A91D490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A91D614();
  *a2 = result;
  return result;
}

void sub_25A91D4C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65726F7473;
  if (v2 != 1)
  {
    v5 = 7103844;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684107116;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25A91D5C0()
{
  result = qword_27FA052B0;
  if (!qword_27FA052B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA052B0);
  }

  return result;
}

uint64_t sub_25A91D614()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25A91D660()
{
  result = qword_27FA052B8;
  if (!qword_27FA052B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA052B8);
  }

  return result;
}

uint64_t Int.mul(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    sub_25A87500C(a1, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
    if (!swift_dynamicCast())
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      sub_25A878194(&v48, &qword_27FA047C8, &qword_25A9F8E88);
      if (a2 == a2)
      {
        mlx_array_new_int();
      }

      goto LABEL_55;
    }

    v46 = a3;
    sub_25A87817C(&v48, v52);
    v7 = v53;
    v3 = v54;
    v8 = __swift_project_boxed_opaque_existential_1(v52, v53);
    v47 = v44;
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_38;
    }

    *&v48 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_37:
        sub_25A9984B8();
        goto LABEL_38;
      }
    }

    else
    {
      v28 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v28 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_37;
        }

LABEL_38:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_48;
        }

        *&v48 = 0x7FFFFFFFFFFFFFFFLL;
        v37 = sub_25A9984D8();
        v38 = sub_25A9984C8();
        if (v37)
        {
          if (v38 >= 65)
          {
            goto LABEL_47;
          }
        }

        else if (v38 >= 64)
        {
LABEL_47:
          MEMORY[0x28223BE20](v38);
          sub_25A895280();
          sub_25A9984A8();
          v39 = *(*(v3 + 32) + 8);
          v40 = sub_25A997D88();
          (*(v9 + 8))(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v40 & 1) == 0)
          {
            goto LABEL_48;
          }

          __break(1u);
LABEL_58:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_48:
        v41 = sub_25A9984B8();
        (*(v9 + 8))(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if ((a2 * v41) >> 64 != (a2 * v41) >> 63)
        {
          goto LABEL_56;
        }

        v42 = v46;
        v46[3] = MEMORY[0x277D83B88];
        *v42 = a2 * v41;
        goto LABEL_50;
      }

      if (v11 <= 64)
      {
        v45 = *(*(v3 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v44[1] = v44;
        v32 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v34 = v44 - v33;
        swift_getAssociatedConformanceWitness();
        v44[2] = v34;
        v35 = sub_25A998A78();
        v44[0] = v44;
        MEMORY[0x28223BE20](v35);
        sub_25A9989C8();
        v36 = *(*(v3 + 32) + 8);
        LOBYTE(v34) = sub_25A997D88();
        (*(v9 + 8))(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v34)
        {
          goto LABEL_58;
        }

        goto LABEL_37;
      }
    }

    v45 = v44;
    MEMORY[0x28223BE20](v11);
    sub_25A895280();
    sub_25A9984A8();
    v29 = *(*(v3 + 32) + 8);
    v30 = sub_25A997D88();
    (*(v9 + 8))(v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v30)
    {
      goto LABEL_58;
    }

    goto LABEL_38;
  }

  sub_25A87500C(a1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v48, v52);
    v12 = v53;
    v13 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v14 = (*(v13 + 8))(v12, v13);
    if (a2 < 1)
    {
      v15 = MEMORY[0x277D84F90];
LABEL_29:

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
      v26 = swift_allocObject();
      *(v26 + 16) = v15;
      a3[3] = v25;
      *a3 = v26;
LABEL_50:
      result = __swift_destroy_boxed_opaque_existential_0Tm(v52);
      goto LABEL_51;
    }

    v3 = *(v14 + 16);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = *(v15 + 2);
      v17 = v16 + v3;
      if (__OFADD__(v16, v3))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        swift_once();
        sub_25A998C58();
        v27 = v52[0];
        v52[0] = mlx_array_new();
        swift_beginAccess();
        mlx_multiply(v52, a2, *(v3 + 16), *(v27 + 16));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v15 + 3) >> 1)
      {
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v3;
        }

        else
        {
          v19 = v16;
        }

        v15 = sub_25A967488(isUniquelyReferenced_nonNull_native, v19, 1, v15);
        if (!v3)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if ((*(v15 + 3) >> 1) - *(v15 + 2) < v3)
      {
        goto LABEL_53;
      }

      swift_arrayInitWithCopy();

      v20 = *(v15 + 2);
      v21 = __OFADD__(v20, v3);
      v22 = v20 + v3;
      if (v21)
      {
        goto LABEL_54;
      }

      *(v15 + 2) = v22;
LABEL_12:
      if (!--a2)
      {
        goto LABEL_29;
      }
    }
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  sub_25A878194(&v48, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v23 = 15;
  result = swift_willThrow();
LABEL_51:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A91E10C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91E114);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.mul(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, &v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if (!swift_dynamicCast())
  {
    sub_25A87500C(a1, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (!swift_dynamicCast())
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_25A878194(&v50, &qword_27FA04728, &unk_25A9FD740);
      sub_25A874F54();
      swift_allocError();
      *v26 = 15;
      result = swift_willThrow();
      goto LABEL_53;
    }

    sub_25A87817C(&v50, v54);
    v13 = v55;
    v14 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v15 = (v14[1])(v13, v14);
    if (a2 < 1)
    {
      v16 = MEMORY[0x277D84F90];
LABEL_29:

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
      v28 = swift_allocObject();
      *(v28 + 16) = v16;
      a3[3] = v27;
      *a3 = v28;
LABEL_52:
      result = __swift_destroy_boxed_opaque_existential_0Tm(v54);
      goto LABEL_53;
    }

    v8 = *(v15 + 16);
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = *(v16 + 2);
      v18 = v8 + v17;
      if (__OFADD__(v17, v8))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        swift_once();
LABEL_31:
        sub_25A998C58();
        v29 = v54[0];
        v54[0] = mlx_array_new();
        swift_beginAccess();
        mlx_multiply(v54, a2, v8[2], *(v29 + 16));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= *(v16 + 3) >> 1)
      {
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v20 = v8 + v17;
        }

        else
        {
          v20 = v17;
        }

        v16 = sub_25A967488(isUniquelyReferenced_nonNull_native, v20, 1, v16);
        if (!v8)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v8)
      {
        goto LABEL_55;
      }

      swift_arrayInitWithCopy();

      v21 = *(v16 + 2);
      v22 = __OFADD__(v21, v8);
      v23 = v8 + v21;
      if (v22)
      {
        goto LABEL_56;
      }

      *(v16 + 2) = v23;
LABEL_12:
      if (!--a2)
      {
        goto LABEL_29;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  sub_25A87500C(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    v48 = a3;
    sub_25A87817C(&v50, v54);
    v7 = v55;
    v8 = v56;
    v9 = __swift_project_boxed_opaque_existential_1(v54, v55);
    v49 = v46;
    v10 = *(v7 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    (*(v10 + 16))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_40;
    }

    *&v50 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v12 = sub_25A9984C8();
      if (v12 < 64)
      {
LABEL_39:
        sub_25A9984B8();
        goto LABEL_40;
      }
    }

    else
    {
      v30 = sub_25A9984D8();
      v12 = sub_25A9984C8();
      if ((v30 & 1) == 0)
      {
        if (v12 < 64)
        {
          goto LABEL_39;
        }

LABEL_40:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_50;
        }

        *&v50 = 0x7FFFFFFFFFFFFFFFLL;
        v39 = sub_25A9984D8();
        v40 = sub_25A9984C8();
        if (v39)
        {
          if (v40 >= 65)
          {
            goto LABEL_49;
          }
        }

        else if (v40 >= 64)
        {
LABEL_49:
          MEMORY[0x28223BE20](v40);
          sub_25A8DF900();
          sub_25A9984A8();
          v41 = *(v8[4] + 8);
          v42 = sub_25A997D88();
          (*(v10 + 8))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v42 & 1) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);
LABEL_60:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_50:
        v43 = sub_25A9984B8();
        (*(v10 + 8))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if ((a2 * v43) >> 64 != (a2 * v43) >> 63)
        {
          goto LABEL_57;
        }

        v44 = v48;
        v48[3] = MEMORY[0x277D84A28];
        *v44 = a2 * v43;
        goto LABEL_52;
      }

      if (v12 <= 64)
      {
        v47 = *(v8[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v46[1] = v46;
        v34 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v36 = v46 - v35;
        swift_getAssociatedConformanceWitness();
        v46[2] = v36;
        v37 = sub_25A998A78();
        v46[0] = v46;
        MEMORY[0x28223BE20](v37);
        sub_25A9989C8();
        v38 = *(v8[4] + 8);
        LOBYTE(v36) = sub_25A997D88();
        (*(v10 + 8))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v36)
        {
          goto LABEL_60;
        }

        goto LABEL_39;
      }
    }

    v47 = v46;
    MEMORY[0x28223BE20](v12);
    sub_25A8DF900();
    sub_25A9984A8();
    v31 = *(v8[4] + 8);
    v32 = sub_25A997D88();
    (*(v10 + 8))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v32)
    {
      goto LABEL_60;
    }

    goto LABEL_40;
  }

  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_25A878194(&v50, &qword_27FA047C8, &qword_25A9F8E88);
  v54[0] = a2;
  a2 = mlx_array_new_data(v54, (MEMORY[0x277D84F90] + 32), 0, 8);
  v24 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v8 = v24;
    if (qword_27FA043D8 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_31;
  }

  result = mlx_array_free(a2);
LABEL_53:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A91EBC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91EBC8);
  }

  _Unwind_Resume(a1);
}

uint64_t Int32.mul(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    sub_25A87500C(a1, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
    if (!swift_dynamicCast())
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      sub_25A878194(&v49, &qword_27FA047C8, &qword_25A9F8E88);
      mlx_array_new_int();
    }

    v47 = a3;
    sub_25A87817C(&v49, v53);
    v6 = v54;
    v7 = v55;
    v8 = __swift_project_boxed_opaque_existential_1(v53, v54);
    v48 = v45;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 32)
    {
      goto LABEL_37;
    }

    LODWORD(v49) = 0x80000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 32)
      {
LABEL_36:
        sub_25A9984B8();
        goto LABEL_37;
      }
    }

    else
    {
      v28 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v28 & 1) == 0)
      {
        if (v11 < 32)
        {
          goto LABEL_36;
        }

LABEL_37:
        if (sub_25A9984C8() <= 32 && (sub_25A9984C8() != 32 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_47;
        }

        LODWORD(v49) = 0x7FFFFFFF;
        v37 = sub_25A9984D8();
        v38 = sub_25A9984C8();
        if (v37)
        {
          if (v38 >= 33)
          {
            goto LABEL_46;
          }
        }

        else if (v38 >= 32)
        {
LABEL_46:
          MEMORY[0x28223BE20](v38);
          sub_25A8DF954();
          sub_25A9984A8();
          v39 = *(*(v7 + 32) + 8);
          v40 = sub_25A997D88();
          (*(v9 + 8))(v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v40 & 1) == 0)
          {
            goto LABEL_47;
          }

          __break(1u);
LABEL_56:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_47:
        v41 = sub_25A9984B8();
        (*(v9 + 8))(v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        v42 = v41 * a2;
        if (v42 != v42)
        {
          goto LABEL_54;
        }

        v43 = v47;
        v47[3] = MEMORY[0x277D849A8];
        *v43 = v42;
        goto LABEL_49;
      }

      if (v11 <= 32)
      {
        v46 = *(*(v7 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v45[1] = v45;
        v32 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v34 = v45 - v33;
        swift_getAssociatedConformanceWitness();
        v45[2] = v34;
        v35 = sub_25A998A78();
        v45[0] = v45;
        MEMORY[0x28223BE20](v35);
        sub_25A9989C8();
        v36 = *(*(v7 + 32) + 8);
        LOBYTE(v34) = sub_25A997D88();
        (*(v9 + 8))(v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v34)
        {
          goto LABEL_56;
        }

        goto LABEL_36;
      }
    }

    v46 = v45;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF954();
    sub_25A9984A8();
    v29 = *(*(v7 + 32) + 8);
    v30 = sub_25A997D88();
    (*(v9 + 8))(v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v30)
    {
      goto LABEL_56;
    }

    goto LABEL_37;
  }

  sub_25A87500C(a1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v49, v53);
    v12 = v54;
    v13 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v14 = (*(v13 + 8))(v12, v13);
    if (a2 < 1)
    {
      v15 = MEMORY[0x277D84F90];
LABEL_28:

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
      v26 = swift_allocObject();
      *(v26 + 16) = v15;
      a3[3] = v25;
      *a3 = v26;
LABEL_49:
      result = __swift_destroy_boxed_opaque_existential_0Tm(v53);
      goto LABEL_50;
    }

    v7 = a2;
    a2 = *(v14 + 16);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = *(v15 + 2);
      v17 = a2 + v16;
      if (__OFADD__(v16, a2))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        swift_once();
        sub_25A998C58();
        v27 = v53[0];
        v53[0] = mlx_array_new();
        swift_beginAccess();
        mlx_multiply(v53, a2, *(v7 + 16), *(v27 + 16));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v15 + 3) >> 1)
      {
        if (!a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = a2 + v16;
        }

        else
        {
          v19 = v16;
        }

        v15 = sub_25A967488(isUniquelyReferenced_nonNull_native, v19, 1, v15);
        if (!a2)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if ((*(v15 + 3) >> 1) - *(v15 + 2) < a2)
      {
        goto LABEL_52;
      }

      swift_arrayInitWithCopy();

      v20 = *(v15 + 2);
      v21 = __OFADD__(v20, a2);
      v22 = a2 + v20;
      if (v21)
      {
        goto LABEL_53;
      }

      *(v15 + 2) = v22;
LABEL_12:
      if (!--v7)
      {
        goto LABEL_28;
      }
    }
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_25A878194(&v49, &qword_27FA04728, &unk_25A9FD740);
  sub_25A874F54();
  swift_allocError();
  *v23 = 15;
  result = swift_willThrow();
LABEL_50:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A91F65C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91F664);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.mul(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  LODWORD(v4) = a2;
  v57 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, &v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if (!swift_dynamicCast())
  {
    sub_25A87500C(a1, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (!swift_dynamicCast())
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_25A878194(&v50, &qword_27FA04728, &unk_25A9FD740);
      sub_25A874F54();
      swift_allocError();
      *v26 = 15;
      result = swift_willThrow();
      goto LABEL_53;
    }

    sub_25A87817C(&v50, v54);
    v13 = v55;
    v14 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v15 = (v14[1])(v13, v14);
    if (!v4)
    {
      v16 = MEMORY[0x277D84F90];
LABEL_29:

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
      v28 = swift_allocObject();
      *(v28 + 16) = v16;
      a3[3] = v27;
      *a3 = v28;
LABEL_52:
      result = __swift_destroy_boxed_opaque_existential_0Tm(v54);
      goto LABEL_53;
    }

    v8 = v4;
    v4 = *(v15 + 16);
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = *(v16 + 2);
      v18 = v17 + v4;
      if (__OFADD__(v17, v4))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        swift_once();
LABEL_31:
        sub_25A998C58();
        v29 = v54[0];
        v54[0] = mlx_array_new();
        swift_beginAccess();
        mlx_multiply(v54, v4, *(v8 + 16), *(v29 + 16));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= *(v16 + 3) >> 1)
      {
        if (!v4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v20 = v17 + v4;
        }

        else
        {
          v20 = v17;
        }

        v16 = sub_25A967488(isUniquelyReferenced_nonNull_native, v20, 1, v16);
        if (!v4)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v4)
      {
        goto LABEL_55;
      }

      swift_arrayInitWithCopy();

      v21 = *(v16 + 2);
      v22 = __OFADD__(v21, v4);
      v23 = v21 + v4;
      if (v22)
      {
        goto LABEL_56;
      }

      *(v16 + 2) = v23;
LABEL_12:
      if (!--v8)
      {
        goto LABEL_29;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  sub_25A87500C(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    v48 = a3;
    sub_25A87817C(&v50, v54);
    v7 = v55;
    v8 = v56;
    v9 = __swift_project_boxed_opaque_existential_1(v54, v55);
    v49 = v46;
    v10 = *(v7 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    (*(v10 + 16))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_40;
    }

    *&v50 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v12 = sub_25A9984C8();
      if (v12 < 64)
      {
LABEL_39:
        sub_25A9984B8();
        goto LABEL_40;
      }
    }

    else
    {
      v30 = sub_25A9984D8();
      v12 = sub_25A9984C8();
      if ((v30 & 1) == 0)
      {
        if (v12 < 64)
        {
          goto LABEL_39;
        }

LABEL_40:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_50;
        }

        *&v50 = 0x7FFFFFFFFFFFFFFFLL;
        v39 = sub_25A9984D8();
        v40 = sub_25A9984C8();
        if (v39)
        {
          if (v40 >= 65)
          {
            goto LABEL_49;
          }
        }

        else if (v40 >= 64)
        {
LABEL_49:
          MEMORY[0x28223BE20](v40);
          sub_25A8DF900();
          sub_25A9984A8();
          v41 = *(*(v8 + 32) + 8);
          v42 = sub_25A997D88();
          (*(v10 + 8))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v42 & 1) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);
LABEL_60:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_50:
        v43 = sub_25A9984B8();
        v4 = v4;
        (*(v10 + 8))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if ((v4 * v43) >> 64 != (v4 * v43) >> 63)
        {
          goto LABEL_57;
        }

        v44 = v48;
        v48[3] = MEMORY[0x277D84A28];
        *v44 = v4 * v43;
        goto LABEL_52;
      }

      if (v12 <= 64)
      {
        v47 = *(*(v8 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v46[1] = v46;
        v34 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v36 = v46 - v35;
        swift_getAssociatedConformanceWitness();
        v46[2] = v36;
        v37 = sub_25A998A78();
        v46[0] = v46;
        MEMORY[0x28223BE20](v37);
        sub_25A9989C8();
        v38 = *(*(v8 + 32) + 8);
        LOBYTE(v36) = sub_25A997D88();
        (*(v10 + 8))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v36)
        {
          goto LABEL_60;
        }

        goto LABEL_39;
      }
    }

    v47 = v46;
    MEMORY[0x28223BE20](v12);
    sub_25A8DF900();
    sub_25A9984A8();
    v31 = *(*(v8 + 32) + 8);
    v32 = sub_25A997D88();
    (*(v10 + 8))(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v32)
    {
      goto LABEL_60;
    }

    goto LABEL_40;
  }

  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_25A878194(&v50, &qword_27FA047C8, &qword_25A9F8E88);
  LODWORD(v54[0]) = v4;
  v4 = mlx_array_new_data(v54, (MEMORY[0x277D84F90] + 32), 0, 3);
  v24 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v8 = v24;
    if (qword_27FA043D8 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_31;
  }

  result = mlx_array_free(v4);
LABEL_53:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A920114(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A92011CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.mul(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_multiply(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A92033C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A920344);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.mul(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  a2.n128_f32[0] = a2.n128_f64[0];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_multiply(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A920558(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A920560);
  }

  _Unwind_Resume(a1);
}

void *sub_25A920598(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  result = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9[0] = mlx_array_new();
    swift_beginAccess();
    v6 = v1[2];
    swift_beginAccess();
    mlx_multiply(v9, v6, v5[2], *(v8 + 16));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A920700(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A920708);
  }

  _Unwind_Resume(a1);
}

char *Array.mul(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_25A87500C(a1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    sub_25A878194(v47, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v16 = 15;
    return swift_willThrow();
  }

  v46 = a2;
  sub_25A87817C(v47, v50);
  v5 = Array.anyArray.getter();
  v6 = v51;
  v7 = v52;
  v8 = __swift_project_boxed_opaque_existential_1(v50, v51);
  v53 = v43;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v47[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v12 = sub_25A9984C8();
      if (v12 >= 64)
      {
        v44 = v43;
        MEMORY[0x28223BE20](v12);
        v45 = v2;
        sub_25A895280();
        sub_25A9984A8();
        v13 = *(*(v7 + 32) + 8);
        v14 = sub_25A997D88();
        v3 = v45;
        result = (*(v9 + 8))(v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v14)
        {
          goto LABEL_48;
        }

        goto LABEL_17;
      }

LABEL_14:
      sub_25A9984B8();
      goto LABEL_17;
    }

    v45 = v2;
    v17 = sub_25A9984D8();
    v18 = sub_25A9984C8();
    if ((v17 & 1) == 0)
    {
      v3 = v45;
      if (v18 >= 64)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (v18 <= 64)
    {
      v44 = *(*(v7 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v43[2] = v43;
      v22 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v43[0] = v43 - v23;
      swift_getAssociatedConformanceWitness();
      v24 = sub_25A998A78();
      v43[1] = v43;
      MEMORY[0x28223BE20](v24);
      sub_25A9989C8();
      v25 = *(*(v7 + 32) + 8);
      v26 = sub_25A997D88();
      result = (*(v9 + 8))(v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v26)
      {
        goto LABEL_48;
      }

      sub_25A9984B8();
      v3 = v45;
    }

    else
    {
      v44 = v43;
      MEMORY[0x28223BE20](v18);
      sub_25A895280();
      sub_25A9984A8();
      v19 = *(*(v7 + 32) + 8);
      v20 = sub_25A997D88();
      result = (*(v9 + 8))(v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      v3 = v45;
      if (v20)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_17:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v45 = v3;
    *&v47[0] = 0x7FFFFFFFFFFFFFFFLL;
    v27 = sub_25A9984D8();
    v28 = sub_25A9984C8();
    if ((v27 & 1) == 0)
    {
      break;
    }

    if (v28 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    MEMORY[0x28223BE20](v28);
    v10 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v29 = *(*(v7 + 32) + 8);
    v30 = sub_25A997D88();
    (*(v9 + 8))(v10, v6);
    v3 = v45;
    if (v30)
    {
      __break(1u);
LABEL_22:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v28 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_25A9984B8();
LABEL_27:
  v31 = sub_25A9984B8();
  result = (*(v9 + 8))(v11, v6);
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_44:

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
    v41 = swift_allocObject();
    *(v41 + 16) = v33;
    v42 = v46;
    v46[3] = v40;
    *v42 = v41;
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  v32 = *(v5 + 16);
  v33 = MEMORY[0x277D84F90];
  while (2)
  {
    v34 = *(v33 + 2);
    v35 = v34 + v32;
    if (!__OFADD__(v34, v32))
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v35 <= *(v33 + 3) >> 1)
      {
        if (!v32)
        {
          goto LABEL_29;
        }

LABEL_40:
        if ((*(v33 + 3) >> 1) - *(v33 + 2) < v32)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        v37 = *(v33 + 2);
        v38 = __OFADD__(v37, v32);
        v39 = v37 + v32;
        if (v38)
        {
          goto LABEL_47;
        }

        *(v33 + 2) = v39;
      }

      else
      {
        if (v34 <= v35)
        {
          v36 = v34 + v32;
        }

        else
        {
          v36 = v34;
        }

        result = sub_25A967488(result, v36, 1, v33);
        v33 = result;
        if (v32)
        {
          goto LABEL_40;
        }

LABEL_29:
      }

      if (!--v31)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

char *sub_25A920F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *v3;
  v5 = *(a2 + 16);
  return Array.mul(_:)(a1, a3);
}

char *sub_25A920F88@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_25A87500C(a1, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    sub_25A878194(v56, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v23 = 15;
    return swift_willThrow();
  }

  v53 = a3;
  v54 = a4;
  v55 = a5;
  v62 = v5;
  v10 = sub_25A87817C(v56, v59);
  v11 = a2(v10);
  v12 = v60;
  v13 = v61;
  v14 = __swift_project_boxed_opaque_existential_1(v59, v60);
  v15 = v50;
  v16 = *(v12 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18);
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v56[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v19 = sub_25A9984C8();
      if (v19 >= 64)
      {
        v51 = v50;
        MEMORY[0x28223BE20](v19);
        v52 = v50;
        sub_25A895280();
        sub_25A9984A8();
        v20 = *(*(v13 + 32) + 8);
        v21 = sub_25A997D88();
        v15 = v52;
        result = (*(v16 + 8))(v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
        if (v21)
        {
          goto LABEL_48;
        }

        goto LABEL_17;
      }

LABEL_14:
      sub_25A9984B8();
      goto LABEL_17;
    }

    v52 = v50;
    v24 = sub_25A9984D8();
    v25 = sub_25A9984C8();
    if ((v24 & 1) == 0)
    {
      v15 = v52;
      if (v25 >= 64)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (v25 <= 64)
    {
      v51 = *(*(v13 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v50[2] = v50;
      v29 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v50[0] = v50 - v30;
      swift_getAssociatedConformanceWitness();
      v31 = sub_25A998A78();
      v50[1] = v50;
      MEMORY[0x28223BE20](v31);
      sub_25A9989C8();
      v32 = *(*(v13 + 32) + 8);
      v33 = sub_25A997D88();
      result = (*(v16 + 8))(v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      if (v33)
      {
        goto LABEL_48;
      }

      sub_25A9984B8();
      v15 = v52;
    }

    else
    {
      v51 = v50;
      MEMORY[0x28223BE20](v25);
      sub_25A895280();
      sub_25A9984A8();
      v26 = *(*(v13 + 32) + 8);
      v27 = sub_25A997D88();
      result = (*(v16 + 8))(v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      v15 = v52;
      if (v27)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_17:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v52 = v15;
    *&v56[0] = 0x7FFFFFFFFFFFFFFFLL;
    v34 = sub_25A9984D8();
    v35 = sub_25A9984C8();
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (v35 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    MEMORY[0x28223BE20](v35);
    v17 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v36 = *(*(v13 + 32) + 8);
    v37 = sub_25A997D88();
    (*(v16 + 8))(v17, v12);
    v15 = v52;
    if (v37)
    {
      __break(1u);
LABEL_22:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v35 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_25A9984B8();
LABEL_27:
  v38 = sub_25A9984B8();
  result = (*(v16 + 8))(v18, v12);
  if (v38 < 1)
  {
    v40 = MEMORY[0x277D84F90];
LABEL_44:

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
    v48 = swift_allocObject();
    *(v48 + 16) = v40;
    v49 = v55;
    v55[3] = v47;
    *v49 = v48;
    return __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  v39 = *(v11 + 16);
  v40 = MEMORY[0x277D84F90];
  while (2)
  {
    v41 = *(v40 + 2);
    v42 = v41 + v39;
    if (!__OFADD__(v41, v39))
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v42 <= *(v40 + 3) >> 1)
      {
        if (!v39)
        {
          goto LABEL_29;
        }

LABEL_40:
        if ((*(v40 + 3) >> 1) - *(v40 + 2) < v39)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        v44 = *(v40 + 2);
        v45 = __OFADD__(v44, v39);
        v46 = v44 + v39;
        if (v45)
        {
          goto LABEL_47;
        }

        *(v40 + 2) = v46;
      }

      else
      {
        if (v41 <= v42)
        {
          v43 = v41 + v39;
        }

        else
        {
          v43 = v41;
        }

        result = sub_25A967488(result, v43, 1, v40);
        v40 = result;
        if (v39)
        {
          goto LABEL_40;
        }

LABEL_29:
      }

      if (!--v38)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t String.mul(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_25A87500C(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_25A878194(v40, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v17 = 15;
    return swift_willThrow();
  }

  v39 = a2;
  v46 = a3;
  sub_25A87817C(v40, v43);
  v7 = v44;
  v8 = v45;
  v9 = __swift_project_boxed_opaque_existential_1(v43, v44);
  v10 = v36;
  v11 = *(v7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_17;
  }

  *&v40[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v13 = sub_25A9984C8();
    if (v13 >= 64)
    {
      v37 = v36;
      MEMORY[0x28223BE20](v13);
      v38 = a4;
      sub_25A895280();
      sub_25A9984A8();
      v14 = *(*(v8 + 32) + 8);
      v15 = sub_25A997D88();
      v10 = v36;
      a4 = v38;
      result = (*(v11 + 8))(v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v15)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v38 = v36;
  v18 = sub_25A9984D8();
  v19 = sub_25A9984C8();
  if (v18)
  {
    if (v19 <= 64)
    {
      v37 = *(*(v8 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v36[2] = v36;
      v23 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v36[0] = v36 - v24;
      swift_getAssociatedConformanceWitness();
      v25 = sub_25A998A78();
      v36[1] = v36;
      MEMORY[0x28223BE20](v25);
      sub_25A9989C8();
      v26 = *(*(v8 + 32) + 8);
      v27 = sub_25A997D88();
      result = (*(v11 + 8))(v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v27)
      {
LABEL_31:
        __break(1u);
        return result;
      }

      sub_25A9984B8();
      v10 = v38;
    }

    else
    {
      v37 = v36;
      MEMORY[0x28223BE20](v19);
      sub_25A895280();
      sub_25A9984A8();
      v20 = *(*(v8 + 32) + 8);
      v21 = sub_25A997D88();
      result = (*(v11 + 8))(v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      v10 = v38;
      if (v21)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_17;
  }

  v10 = v38;
  if (v19 < 64)
  {
LABEL_14:
    sub_25A9984B8();
  }

LABEL_17:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v38 = a4;
    v28 = v10;
    *&v40[0] = 0x7FFFFFFFFFFFFFFFLL;
    v29 = sub_25A9984D8();
    v30 = sub_25A9984C8();
    if ((v29 & 1) == 0)
    {
      break;
    }

    if (v30 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    v37 = v36;
    MEMORY[0x28223BE20](v30);
    sub_25A895280();
    sub_25A9984A8();
    v31 = *(*(v8 + 32) + 8);
    v32 = sub_25A997D88();
    (*(v11 + 8))(v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v10 = v28;
    a4 = v38;
    if (v32)
    {
      __break(1u);
LABEL_22:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v30 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_25A9984B8();
  a4 = v38;
LABEL_27:
  v33 = sub_25A9984B8();
  (*(v11 + 8))(v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  if (v33 < 1)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  else
  {

    v34 = sub_25A998008();
  }

  a4[3] = MEMORY[0x277D837D0];
  *a4 = v34;
  a4[1] = v35;
  return __swift_destroy_boxed_opaque_existential_0Tm(v43);
}

uint64_t sub_25A921E58()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_25A921EB4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04300 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA046D0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

void *PyInstanceBoundMethod.__allocating_init(instance:function:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_25A922324(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v8;
}

void *PyInstanceBoundMethod.init(instance:function:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_25A9222AC(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v12;
}

uint64_t sub_25A9220A8(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[2];
  v14 = type metadata accessor for PyInstance();
  *&v13 = v6;
  sub_25A872D74(&v13, v12);
  v7 = *(a1 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = a1;
  if (!isUniquelyReferenced_nonNull_native || v7 >= *(a1 + 3) >> 1)
  {
    a1 = sub_25A967488(isUniquelyReferenced_nonNull_native, v7 + 1, 1, a1);
    v15 = a1;
  }

  sub_25A96AFC0(0, 0, 1, v12);
  v9 = v3[6];
  v10 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v9);
  (*(v10 + 16))(a1, a2, v9, v10);
}

uint64_t PyInstanceBoundMethod.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  return v0;
}

uint64_t PyInstanceBoundMethod.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25A922230()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  return (*(v2 + 8))(v1, v2);
}

void *sub_25A9222AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[6] = a4;
  a3[7] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  a3[2] = a1;
  return a3;
}

void *sub_25A922324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PyInstanceBoundMethod();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  v13[6] = a4;
  v13[7] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13 + 3);
  (*(v9 + 32))(boxed_opaque_existential_0, v12, a4);
  v13[2] = a1;
  return v13;
}

uint64_t Int.add(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_25A878194(v33, &qword_27FA047C8, &qword_25A9F8E88);
    if (a2 == a2)
    {
      mlx_array_new_int();
    }

    __break(1u);
LABEL_30:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v11 = v36[0];
    v36[0] = mlx_array_new();
    swift_beginAccess();
    mlx_add(v36, a2, *(v3 + 16), *(v11 + 16));
  }

  v31 = a3;
  sub_25A87817C(v33, v36);
  v6 = v37;
  v3 = v38;
  v7 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v32 = v29;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_17;
  }

  *&v33[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v10 = sub_25A9984C8();
    if (v10 < 64)
    {
LABEL_16:
      sub_25A9984B8();
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v12 = sub_25A9984D8();
  v10 = sub_25A9984C8();
  if (v12)
  {
    if (v10 <= 64)
    {
      v30 = *(*(v3 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v29[1] = v29;
      v16 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v18 = v29 - v17;
      swift_getAssociatedConformanceWitness();
      v29[2] = v18;
      v19 = sub_25A998A78();
      v29[0] = v29;
      MEMORY[0x28223BE20](v19);
      sub_25A9989C8();
      v20 = *(*(v3 + 32) + 8);
      LOBYTE(v18) = sub_25A997D88();
      (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v18)
      {
        goto LABEL_32;
      }

      goto LABEL_16;
    }

LABEL_11:
    v30 = v29;
    MEMORY[0x28223BE20](v10);
    sub_25A895280();
    sub_25A9984A8();
    v13 = *(*(v3 + 32) + 8);
    v14 = sub_25A997D88();
    (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v14)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (v10 < 64)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v33[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 65)
      {
        goto LABEL_26;
      }
    }

    else if (v22 >= 64)
    {
LABEL_26:
      MEMORY[0x28223BE20](v22);
      sub_25A895280();
      sub_25A9984A8();
      v23 = *(*(v3 + 32) + 8);
      v24 = sub_25A997D88();
      (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v24 & 1) == 0)
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_27:
  v25 = sub_25A9984B8();
  (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (__OFADD__(a2, v25))
  {
    goto LABEL_30;
  }

  v26 = v31;
  v31[3] = MEMORY[0x277D83B88];
  *v26 = a2 + v25;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v36);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A922D30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A922D38);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.add(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, void *a3@<X8>)
{
  v34 = a3;
  v41 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v35, v38);
    v6 = v39;
    v7 = v40;
    v8 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v33 = v31;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_19;
    }

    *&v35[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_18:
        sub_25A9984B8();
        goto LABEL_19;
      }
    }

    else
    {
      v15 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v15 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_29;
        }

        *&v35[0] = 0x7FFFFFFFFFFFFFFFLL;
        v24 = sub_25A9984D8();
        v25 = sub_25A9984C8();
        if (v24)
        {
          if (v25 >= 65)
          {
            goto LABEL_28;
          }
        }

        else if (v25 >= 64)
        {
LABEL_28:
          MEMORY[0x28223BE20](v25);
          sub_25A8DF900();
          sub_25A9984A8();
          v26 = *(v7[4] + 8);
          v27 = sub_25A997D88();
          (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v27 & 1) == 0)
          {
            goto LABEL_29;
          }

          __break(1u);
LABEL_35:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_29:
        v28 = sub_25A9984B8();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (!__OFADD__(a2, v28))
        {
          v29 = v34;
          v34[3] = MEMORY[0x277D84A28];
          *v29 = a2 + v28;
          result = __swift_destroy_boxed_opaque_existential_0Tm(v38);
          goto LABEL_31;
        }

        __break(1u);
LABEL_33:
        swift_once();
LABEL_10:
        sub_25A998C58();
        v14 = v38[0];
        v38[0] = mlx_array_new();
        swift_beginAccess();
        mlx_add(v38, a2, v7[2], *(v14 + 16));
      }

      if (v11 <= 64)
      {
        v32 = *(v7[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v31[1] = v31;
        v19 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v21 = v31 - v20;
        swift_getAssociatedConformanceWitness();
        v31[2] = v21;
        v22 = sub_25A998A78();
        v31[0] = v31;
        MEMORY[0x28223BE20](v22);
        sub_25A9989C8();
        v23 = *(v7[4] + 8);
        LOBYTE(v21) = sub_25A997D88();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v21)
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }
    }

    v32 = v31;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = *(v7[4] + 8);
    v17 = sub_25A997D88();
    (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v17)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_25A878194(v35, &qword_27FA047C8, &qword_25A9F8E88);
  v38[0] = a2;
  a2 = mlx_array_new_data(v38, (MEMORY[0x277D84F90] + 32), 0, 8);
  v12 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  result = mlx_array_free(a2);
LABEL_31:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A9235B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9235BCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Int32.add(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v38 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_25A878194(v32, &qword_27FA047C8, &qword_25A9F8E88);
    mlx_array_new_int();
  }

  sub_25A87817C(v32, v35);
  v4 = v36;
  v5 = v37;
  v6 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v30 = v28;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 32)
  {
    goto LABEL_16;
  }

  LODWORD(v32[0]) = 0x80000000;
  if (sub_25A9984D8())
  {
    v9 = sub_25A9984C8();
    if (v9 < 32)
    {
LABEL_15:
      sub_25A9984B8();
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v11 = sub_25A9984D8();
  v9 = sub_25A9984C8();
  if (v11)
  {
    if (v9 <= 32)
    {
      v29 = *(*(v5 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v28[1] = v28;
      v15 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v17 = v28 - v16;
      swift_getAssociatedConformanceWitness();
      v28[2] = v17;
      v18 = sub_25A998A78();
      v28[0] = v28;
      MEMORY[0x28223BE20](v18);
      sub_25A9989C8();
      v19 = *(*(v5 + 32) + 8);
      LOBYTE(v17) = sub_25A997D88();
      (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v17)
      {
        goto LABEL_30;
      }

      goto LABEL_15;
    }

LABEL_10:
    v29 = v28;
    MEMORY[0x28223BE20](v9);
    sub_25A8DF954();
    sub_25A9984A8();
    v12 = *(*(v5 + 32) + 8);
    v13 = sub_25A997D88();
    (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (v13)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  if (v9 < 32)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (sub_25A9984C8() > 32 || sub_25A9984C8() == 32 && (sub_25A9984D8() & 1) == 0)
  {
    LODWORD(v32[0]) = 0x7FFFFFFF;
    v20 = sub_25A9984D8();
    v21 = sub_25A9984C8();
    if (v20)
    {
      if (v21 >= 33)
      {
        goto LABEL_25;
      }
    }

    else if (v21 >= 32)
    {
LABEL_25:
      MEMORY[0x28223BE20](v21);
      sub_25A8DF954();
      sub_25A9984A8();
      v22 = *(*(v5 + 32) + 8);
      v23 = sub_25A997D88();
      (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_30:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_26:
  v24 = sub_25A9984B8();
  (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  if (__OFADD__(a2, v24))
  {
    __break(1u);
    swift_once();
    sub_25A998C58();
    v10 = v35[0];
    v35[0] = mlx_array_new();
    swift_beginAccess();
    mlx_add(v35, a2, *(v5 + 16), *(v10 + 16));
  }

  v25 = v31;
  *(v31 + 24) = MEMORY[0x277D849A8];
  *v25 = a2 + v24;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v35);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A923E20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A923E28);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.add(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  LODWORD(v4) = a2;
  v34 = a3;
  v41 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v35, v38);
    v6 = v39;
    v7 = v40;
    v8 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v33 = v31;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_19;
    }

    *&v35[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_18:
        sub_25A9984B8();
        goto LABEL_19;
      }
    }

    else
    {
      v15 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v15 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_29;
        }

        *&v35[0] = 0x7FFFFFFFFFFFFFFFLL;
        v24 = sub_25A9984D8();
        v25 = sub_25A9984C8();
        if (v24)
        {
          if (v25 >= 65)
          {
            goto LABEL_28;
          }
        }

        else if (v25 >= 64)
        {
LABEL_28:
          MEMORY[0x28223BE20](v25);
          sub_25A8DF900();
          sub_25A9984A8();
          v26 = *(v7[4] + 8);
          v27 = sub_25A997D88();
          (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v27 & 1) == 0)
          {
            goto LABEL_29;
          }

          __break(1u);
LABEL_35:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_29:
        v28 = sub_25A9984B8();
        v4 = v4;
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (!__OFADD__(v4, v28))
        {
          v29 = v34;
          v34[3] = MEMORY[0x277D84A28];
          *v29 = v4 + v28;
          result = __swift_destroy_boxed_opaque_existential_0Tm(v38);
          goto LABEL_31;
        }

        __break(1u);
LABEL_33:
        swift_once();
LABEL_10:
        sub_25A998C58();
        v14 = v38[0];
        v38[0] = mlx_array_new();
        swift_beginAccess();
        mlx_add(v38, v4, v7[2], *(v14 + 16));
      }

      if (v11 <= 64)
      {
        v32 = *(v7[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v31[1] = v31;
        v19 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v21 = v31 - v20;
        swift_getAssociatedConformanceWitness();
        v31[2] = v21;
        v22 = sub_25A998A78();
        v31[0] = v31;
        MEMORY[0x28223BE20](v22);
        sub_25A9989C8();
        v23 = *(v7[4] + 8);
        LOBYTE(v21) = sub_25A997D88();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v21)
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }
    }

    v32 = v31;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = *(v7[4] + 8);
    v17 = sub_25A997D88();
    (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v17)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_25A878194(v35, &qword_27FA047C8, &qword_25A9F8E88);
  LODWORD(v38[0]) = v4;
  v4 = mlx_array_new_data(v38, (MEMORY[0x277D84F90] + 32), 0, 3);
  v12 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  result = mlx_array_free(v4);
LABEL_31:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A9246A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9246B0);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.add(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_add(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A9248D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9248D8);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.add(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  a2.n128_f32[0] = a2.n128_f64[0];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_add(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A924AEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A924AF4);
  }

  _Unwind_Resume(a1);
}

void *sub_25A924B2C(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  result = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9[0] = mlx_array_new();
    swift_beginAccess();
    v6 = v1[2];
    swift_beginAccess();
    mlx_add(v9, v6, v5[2], *(v8 + 16));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A924C94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A924C9CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Array.add(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25A87500C(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v12, v15);
    v3 = sub_25A9987B8();
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = (*(v5 + 8))(v4, v5);
    *&v12[0] = v3;
    sub_25A933208(v6);
    v7 = *&v12[0];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    a2[3] = v8;
    *a2 = v9;
    return __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_25A878194(v12, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v11 = 15;
    return swift_willThrow();
  }
}

uint64_t sub_25A924EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *v3;
  v5 = *(a2 + 16);
  return Array.add(_:)(a1, a3);
}

uint64_t sub_25A924F04@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_25A87500C(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    v9 = sub_25A87817C(v19, v22);
    v10 = a2(v9);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v13 = (*(v12 + 8))(v11, v12);
    *&v19[0] = v10;
    sub_25A933208(v13);
    v14 = *&v19[0];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    a5[3] = v15;
    *a5 = v16;
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_25A878194(v19, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v18 = 15;
    return swift_willThrow();
  }
}

uint64_t String.add(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_25A87500C(a1, &v12);
  v7 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    v12 = a2;
    v13 = a3;

    MEMORY[0x25F850290]();

    v9 = v12;
    v10 = v13;
    a4[3] = v7;
    *a4 = v9;
    a4[1] = v10;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v11 = 15;
    return swift_willThrow();
  }

  return result;
}

uint64_t Int.subtract(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_25A917A78(v33);
    if (a2 == a2)
    {
      mlx_array_new_int();
    }

    __break(1u);
LABEL_30:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v11 = v36[0];
    v36[0] = mlx_array_new();
    swift_beginAccess();
    mlx_subtract(v36, a2, *(v3 + 16), *(v11 + 16));
  }

  v31 = a3;
  sub_25A87817C(v33, v36);
  v6 = v37;
  v3 = v38;
  v7 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v32 = v29;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_17;
  }

  *&v33[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v10 = sub_25A9984C8();
    if (v10 < 64)
    {
LABEL_16:
      sub_25A9984B8();
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v12 = sub_25A9984D8();
  v10 = sub_25A9984C8();
  if (v12)
  {
    if (v10 <= 64)
    {
      v30 = *(*(v3 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v29[1] = v29;
      v16 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v18 = v29 - v17;
      swift_getAssociatedConformanceWitness();
      v29[2] = v18;
      v19 = sub_25A998A78();
      v29[0] = v29;
      MEMORY[0x28223BE20](v19);
      sub_25A9989C8();
      v20 = *(*(v3 + 32) + 8);
      LOBYTE(v18) = sub_25A997D88();
      (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v18)
      {
        goto LABEL_32;
      }

      goto LABEL_16;
    }

LABEL_11:
    v30 = v29;
    MEMORY[0x28223BE20](v10);
    sub_25A895280();
    sub_25A9984A8();
    v13 = *(*(v3 + 32) + 8);
    v14 = sub_25A997D88();
    (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v14)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (v10 < 64)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v33[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 65)
      {
        goto LABEL_26;
      }
    }

    else if (v22 >= 64)
    {
LABEL_26:
      MEMORY[0x28223BE20](v22);
      sub_25A895280();
      sub_25A9984A8();
      v23 = *(*(v3 + 32) + 8);
      v24 = sub_25A997D88();
      (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v24 & 1) == 0)
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_27:
  v25 = sub_25A9984B8();
  (*(v8 + 8))(v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (__OFSUB__(a2, v25))
  {
    goto LABEL_30;
  }

  v26 = v31;
  v31[3] = MEMORY[0x277D83B88];
  *v26 = a2 - v25;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v36);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A9259DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9259E4);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.subtract(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, void *a3@<X8>)
{
  v34 = a3;
  v41 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v35, v38);
    v6 = v39;
    v7 = v40;
    v8 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v33 = v31;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_19;
    }

    *&v35[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_18:
        sub_25A9984B8();
        goto LABEL_19;
      }
    }

    else
    {
      v15 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v15 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_29;
        }

        *&v35[0] = 0x7FFFFFFFFFFFFFFFLL;
        v24 = sub_25A9984D8();
        v25 = sub_25A9984C8();
        if (v24)
        {
          if (v25 >= 65)
          {
            goto LABEL_28;
          }
        }

        else if (v25 >= 64)
        {
LABEL_28:
          MEMORY[0x28223BE20](v25);
          sub_25A8DF900();
          sub_25A9984A8();
          v26 = *(v7[4] + 8);
          v27 = sub_25A997D88();
          (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v27 & 1) == 0)
          {
            goto LABEL_29;
          }

          __break(1u);
LABEL_35:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_29:
        v28 = sub_25A9984B8();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (!__OFSUB__(a2, v28))
        {
          v29 = v34;
          v34[3] = MEMORY[0x277D84A28];
          *v29 = a2 - v28;
          result = __swift_destroy_boxed_opaque_existential_0Tm(v38);
          goto LABEL_31;
        }

        __break(1u);
LABEL_33:
        swift_once();
LABEL_10:
        sub_25A998C58();
        v14 = v38[0];
        v38[0] = mlx_array_new();
        swift_beginAccess();
        mlx_subtract(v38, a2, v7[2], *(v14 + 16));
      }

      if (v11 <= 64)
      {
        v32 = *(v7[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v31[1] = v31;
        v19 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v21 = v31 - v20;
        swift_getAssociatedConformanceWitness();
        v31[2] = v21;
        v22 = sub_25A998A78();
        v31[0] = v31;
        MEMORY[0x28223BE20](v22);
        sub_25A9989C8();
        v23 = *(v7[4] + 8);
        LOBYTE(v21) = sub_25A997D88();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v21)
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }
    }

    v32 = v31;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = *(v7[4] + 8);
    v17 = sub_25A997D88();
    (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v17)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_25A917A78(v35);
  v38[0] = a2;
  a2 = mlx_array_new_data(v38, (MEMORY[0x277D84F90] + 32), 0, 8);
  v12 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  result = mlx_array_free(a2);
LABEL_31:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A926250(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A926258);
  }

  _Unwind_Resume(a1);
}

uint64_t Int32.subtract(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v38 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_25A917A78(v32);
    mlx_array_new_int();
  }

  sub_25A87817C(v32, v35);
  v4 = v36;
  v5 = v37;
  v6 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v30 = v28;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 32)
  {
    goto LABEL_16;
  }

  LODWORD(v32[0]) = 0x80000000;
  if (sub_25A9984D8())
  {
    v9 = sub_25A9984C8();
    if (v9 < 32)
    {
LABEL_15:
      sub_25A9984B8();
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v11 = sub_25A9984D8();
  v9 = sub_25A9984C8();
  if (v11)
  {
    if (v9 <= 32)
    {
      v29 = *(*(v5 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v28[1] = v28;
      v15 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v17 = v28 - v16;
      swift_getAssociatedConformanceWitness();
      v28[2] = v17;
      v18 = sub_25A998A78();
      v28[0] = v28;
      MEMORY[0x28223BE20](v18);
      sub_25A9989C8();
      v19 = *(*(v5 + 32) + 8);
      LOBYTE(v17) = sub_25A997D88();
      (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v17)
      {
        goto LABEL_30;
      }

      goto LABEL_15;
    }

LABEL_10:
    v29 = v28;
    MEMORY[0x28223BE20](v9);
    sub_25A8DF954();
    sub_25A9984A8();
    v12 = *(*(v5 + 32) + 8);
    v13 = sub_25A997D88();
    (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (v13)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  if (v9 < 32)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (sub_25A9984C8() > 32 || sub_25A9984C8() == 32 && (sub_25A9984D8() & 1) == 0)
  {
    LODWORD(v32[0]) = 0x7FFFFFFF;
    v20 = sub_25A9984D8();
    v21 = sub_25A9984C8();
    if (v20)
    {
      if (v21 >= 33)
      {
        goto LABEL_25;
      }
    }

    else if (v21 >= 32)
    {
LABEL_25:
      MEMORY[0x28223BE20](v21);
      sub_25A8DF954();
      sub_25A9984A8();
      v22 = *(*(v5 + 32) + 8);
      v23 = sub_25A997D88();
      (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_30:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_26:
  v24 = sub_25A9984B8();
  (*(v7 + 8))(v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  if (__OFSUB__(a2, v24))
  {
    __break(1u);
    swift_once();
    sub_25A998C58();
    v10 = v35[0];
    v35[0] = mlx_array_new();
    swift_beginAccess();
    mlx_subtract(v35, a2, *(v5 + 16), *(v10 + 16));
  }

  v25 = v31;
  *(v31 + 24) = MEMORY[0x277D849A8];
  *v25 = a2 - v24;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v35);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A926AAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A926AB4);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.subtract(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  LODWORD(v4) = a2;
  v34 = a3;
  v41 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v35, v38);
    v6 = v39;
    v7 = v40;
    v8 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v33 = v31;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_19;
    }

    *&v35[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_18:
        sub_25A9984B8();
        goto LABEL_19;
      }
    }

    else
    {
      v15 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v15 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_29;
        }

        *&v35[0] = 0x7FFFFFFFFFFFFFFFLL;
        v24 = sub_25A9984D8();
        v25 = sub_25A9984C8();
        if (v24)
        {
          if (v25 >= 65)
          {
            goto LABEL_28;
          }
        }

        else if (v25 >= 64)
        {
LABEL_28:
          MEMORY[0x28223BE20](v25);
          sub_25A8DF900();
          sub_25A9984A8();
          v26 = *(v7[4] + 8);
          v27 = sub_25A997D88();
          (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v27 & 1) == 0)
          {
            goto LABEL_29;
          }

          __break(1u);
LABEL_35:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_29:
        v28 = sub_25A9984B8();
        v4 = v4;
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (!__OFSUB__(v4, v28))
        {
          v29 = v34;
          v34[3] = MEMORY[0x277D84A28];
          *v29 = v4 - v28;
          result = __swift_destroy_boxed_opaque_existential_0Tm(v38);
          goto LABEL_31;
        }

        __break(1u);
LABEL_33:
        swift_once();
LABEL_10:
        sub_25A998C58();
        v14 = v38[0];
        v38[0] = mlx_array_new();
        swift_beginAccess();
        mlx_subtract(v38, v4, v7[2], *(v14 + 16));
      }

      if (v11 <= 64)
      {
        v32 = *(v7[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v31[1] = v31;
        v19 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v21 = v31 - v20;
        swift_getAssociatedConformanceWitness();
        v31[2] = v21;
        v22 = sub_25A998A78();
        v31[0] = v31;
        MEMORY[0x28223BE20](v22);
        sub_25A9989C8();
        v23 = *(v7[4] + 8);
        LOBYTE(v21) = sub_25A997D88();
        (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v21)
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }
    }

    v32 = v31;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = *(v7[4] + 8);
    v17 = sub_25A997D88();
    (*(v9 + 8))(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v17)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_25A917A78(v35);
  LODWORD(v38[0]) = v4;
  v4 = mlx_array_new_data(v38, (MEMORY[0x277D84F90] + 32), 0, 3);
  v12 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  result = mlx_array_free(v4);
LABEL_31:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A927324(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A92732CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.subtract(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_subtract(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A92754C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A927554);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.subtract(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  a2.n128_f32[0] = a2.n128_f64[0];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_subtract(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A927768(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A927770);
  }

  _Unwind_Resume(a1);
}

void *sub_25A9277A8(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  result = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9[0] = mlx_array_new();
    swift_beginAccess();
    v6 = v1[2];
    swift_beginAccess();
    mlx_subtract(v9, v6, v5[2], *(v8 + 16));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A927910(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A927918);
  }

  _Unwind_Resume(a1);
}

uint64_t SharedMutableSet.__allocating_init(set:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_25A9279E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_25A927A40()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t SharedMutableSet.init(set:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

double sub_25A927AD4@<D0>(uint64_t a1@<X8>)
{
  sub_25A92BEE4(&v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_25A8952F0(v8, &v4, &qword_27FA052C0, &qword_25A9FD550);
  result = *&v5;
  v3 = v6;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_25A927B80(uint64_t a1, int a2, char a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);

  v8 = sub_25A92AB48(a1, a2, a3 & 1, v7);

  return v8;
}

uint64_t sub_25A927C0C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = -1 << *(v1 + 32);

  v3 = sub_25A998508();
  v4 = *(v1 + 36);

  return v3;
}

uint64_t sub_25A927C8C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  result = 1 << *(v1 + 32);
  v3 = *(v1 + 36);
  return result;
}

uint64_t sub_25A927D44@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_25A874FB0(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25A927D9C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  LOBYTE(a1) = sub_25A9197D0(a1, v3);

  return a1 & 1;
}

uint64_t sub_25A927E00()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x277D84FA0];
}

uint64_t SharedMutableSet.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SharedMutableSet.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25A927E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = -1 << *(v4 + 32);

  v6 = sub_25A998508();
  v7 = *(v4 + 36);

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_25A927F20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = *(v5 + 36);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  return result;
}

void (*sub_25A927F7C(uint64_t *a1, uint64_t a2))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *v2;
  swift_beginAccess();
  sub_25A927D44(v7, v8, *(v10 + 16), v6);
  return sub_25A92802C;
}

void sub_25A92802C(uint64_t *a1)
{
  v1 = *a1;
  sub_25A8795A0(*a1);

  free(v1);
}

double sub_25A928068@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v11 = *a1;
  v12[0] = v4;
  *(v12 + 9) = *(a1 + 25);
  v5 = *v2;
  sub_25A9280CC(&v11, v8);
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = *&v9;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_25A9280CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = -1 << *(v5 + 32);

  v7 = sub_25A998508();
  v8 = *(v5 + 36);

  v10 = *(v2 + 16);
  if (*(v10 + 36) != v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = 1 << *(v10 + 32);
  if (v11 < v7)
  {
LABEL_11:
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

  v12 = *(a1 + 8);
  if (v8 != v12)
  {
    goto LABEL_12;
  }

  if (*a1 < v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v13 = *(a1 + 32);
    if (v8 == v13)
    {
      v14 = *(a1 + 24);
      if (v11 >= v14)
      {
        *a2 = *a1;
        *(a2 + 8) = v12;
        *(a2 + 16) = 0;
        *(a2 + 24) = v14;
        *(a2 + 32) = v13;
        *(a2 + 40) = 0;
        *(a2 + 48) = v2;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

double sub_25A9281F0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_25A928240(v6);
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = *&v7;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_25A928240@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = -1 << *(v3 + 32);

  v5 = sub_25A998508();
  v6 = *(v3 + 36);

  v8 = *(v1 + 16);
  v9 = 1 << *(v8 + 32);
  v10 = *(v8 + 36);
  *a1 = v1;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  return result;
}

void sub_25A9282F4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_25A928304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  result = sub_25A928348(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  return result;
}

uint64_t sub_25A928348(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v6 = a3;
  v7 = a2;
  v8 = result;
  v9 = a3 & 1;
  if (a4)
  {
    sub_25A92C654(result, a2, v9);
    result = swift_beginAccess();
    v10 = 0;
    v11 = a4 - 1;
    while ((v6 & 1) == 0)
    {
      if ((v8 & 0x8000000000000000) != 0 || (v15 = *(v4 + 16), v12 = 1 << *(v15 + 32), v8 >= v12))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v16 = v8 >> 6;
      v17 = *(v15 + 56 + 8 * (v8 >> 6));
      if (((v17 >> v8) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(v15 + 36) != v7)
      {
        goto LABEL_22;
      }

      v18 = v17 & (-2 << (v8 & 0x3F));
      if (v18)
      {
        v12 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v13 = *(v4 + 16);
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (v15 + 8 * v16 + 64);
        while (v20 < (v12 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            v24 = *(v4 + 16);

            sub_25A92C648(v8, v7, 0);
            v12 = __clz(__rbit64(v22)) + v19;
            goto LABEL_5;
          }
        }

        v25 = *(v4 + 16);

        sub_25A92C648(v8, v7, 0);
      }

LABEL_5:
      v7 = *(v15 + 36);

      v6 = 0;
      v8 = v12;
      if (v10++ == v11)
      {
        return v12;
      }
    }

    goto LABEL_24;
  }

  sub_25A92C654(result, a2, v9);
  return v8;
}

uint64_t sub_25A928504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = sub_25A928550(*a1, *(a1 + 8), *(a1 + 16), a2, *a3, *(a3 + 8), *(a3 + 16));
  *a4 = result;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  return result;
}

uint64_t sub_25A928550(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v10 = a2;
  v11 = result;
  if (a4)
  {
    sub_25A92C654(result, a2, a3 & 1);
    result = swift_beginAccess();
    v15 = 0;
    v16 = a4 - 1;
    v17 = a3 | a7;
    v33 = v16;
    v34 = a5;
    while ((v17 & 1) == 0)
    {
      if (v10 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v11 == a5)
      {
        return 0;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v20 = *(v7 + 16);
      v21 = 1 << *(v20 + 32);
      if (v11 >= v21)
      {
        goto LABEL_24;
      }

      v22 = v11 >> 6;
      v23 = *(v20 + 56 + 8 * (v11 >> 6));
      if (((v23 >> v11) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(v20 + 36) != a6)
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v18 = *(v7 + 16);
      }

      else
      {
        v25 = a7;
        v26 = v22 << 6;
        v27 = v22 + 1;
        v28 = (v20 + 8 * v22 + 64);
        while (v27 < (v21 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            v31 = *(v7 + 16);

            sub_25A92C648(v11, v10, 0);
            v11 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        v32 = *(v7 + 16);

        sub_25A92C648(v11, v10, 0);
        v11 = v21;
LABEL_19:
        a7 = v25;
        v16 = v33;
        a5 = v34;
      }

      v10 = *(v20 + 36);

      v17 = a7;
      if (v15++ == v16)
      {
        return v11;
      }
    }

    goto LABEL_28;
  }

  sub_25A92C654(result, a2, a3 & 1);
  return v11;
}

uint64_t sub_25A928798(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_32;
  }

  v7 = a4;
  v8 = result;
  if (a4 < result)
  {
    goto LABEL_30;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    result = swift_beginAccess();
    v12 = v9;
    v11 = 1;
    v30 = v9;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v13 = *(v6 + 16);
      v14 = 1 << *(v13 + 32);
      if (v8 >= v14)
      {
        break;
      }

      v15 = v8 >> 6;
      v16 = *(v13 + 56 + 8 * (v8 >> 6));
      if (((v16 >> v8) & 1) == 0)
      {
        goto LABEL_27;
      }

      if (*(v13 + 36) != v10)
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v8 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v18 = *(v6 + 16);
      }

      else
      {
        v19 = v7;
        v20 = v9;
        v21 = v15 << 6;
        v22 = v15 + 1;
        v23 = (v13 + 8 * v15 + 64);
        while (v22 < (v14 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            v26 = *(v6 + 16);

            sub_25A92C648(v8, v10, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_20;
          }
        }

        v27 = *(v6 + 16);

        sub_25A92C648(v8, v10, 0);
        v8 = v14;
LABEL_20:
        v9 = v20;
        v7 = v19;
        v12 = v30;
      }

      v28 = *(v13 + 36);

      if (v28 != v9)
      {
        goto LABEL_29;
      }

      if (v8 == v7)
      {
        return v11;
      }

      v10 = v12;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        break;
      }
    }

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

  return 0;
}

uint64_t sub_25A928970(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 != *(a2 + 32))
  {
    goto LABEL_11;
  }

  if (*result >= *(a2 + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_25A9289DC(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != v2)
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_25A928A48(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((*(a2 + 40) | *(result + 40)))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_25A928AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 16);

  v9 = sub_25A92AB48(v4, v5, v6, v8);
  v11 = v10;
  v13 = v12;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  return result;
}

uint64_t sub_25A928B5C(uint64_t a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  swift_beginAccess();
  v7 = *(v3 + 16);

  v8 = sub_25A92AB48(v4, v5, v6, v7);
  v10 = v9;
  v12 = v11;
  sub_25A92C648(v4, v5, v6);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  return result;
}

double sub_25A928C0C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_25A92BEE4(&v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  sub_25A8952F0(v10, &v6, &qword_27FA052C0, &qword_25A9FD550);

  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_25A928C8C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16);
}

void *sub_25A928CD8()
{
  v1 = sub_25A92C0A0(*v0);

  return v1;
}

double SharedMutableSet.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 6579297 && a2 == 0xE300000000000000;
  if (v5 || (sub_25A9989E8() & 1) != 0)
  {

    v8 = MEMORY[0x277D84F90];
    v9 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v8;
    *(v11 + 40) = v8;
    *(v11 + 48) = v8;

    *(v11 + 56) = v8;

    *(v11 + 64) = v8;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v8);
    *(v11 + 16) = 6579297;
    *(v11 + 24) = 0xE300000000000000;
    v12 = *(v11 + 80);
    v50 = *(v11 + 64);
    v51 = v12;
    v52 = *(v11 + 96);
    v13 = *(v11 + 48);
    v48 = *(v11 + 32);
    v49 = v13;
    *(v11 + 32) = v8;
    *(v11 + 40) = &unk_286C0BAC8;
    *(v11 + 48) = v8;
    *(v11 + 56) = v8;
    *(v11 + 64) = v8;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    sub_25A892B80(&v48);
    swift_beginAccess();
    v14 = *(v11 + 104);
    *(v11 + 104) = v9;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A92C084;
    *(v15 + 24) = v3;
    v17 = sub_25A8F1D14;
LABEL_7:
    *(v11 + 112) = v17;
    *(v11 + 120) = v15;
    *(a3 + 24) = v10;
    *a3 = v11;
    return result;
  }

  if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v18 = MEMORY[0x277D84F90];
    v19 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v18;
    *(v11 + 40) = v18;
    *(v11 + 48) = v18;

    *(v11 + 56) = v18;

    *(v11 + 64) = v18;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v18);
    *(v11 + 16) = 0x65766F6D6572;
    *(v11 + 24) = 0xE600000000000000;
    v20 = *(v11 + 80);
    v50 = *(v11 + 64);
    v51 = v20;
    v52 = *(v11 + 96);
    v21 = *(v11 + 48);
    v48 = *(v11 + 32);
    v49 = v21;
    *(v11 + 32) = v18;
    *(v11 + 40) = &unk_286C0BAF8;
    *(v11 + 48) = v18;
    *(v11 + 56) = v18;
    *(v11 + 64) = v18;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    sub_25A892B80(&v48);
    swift_beginAccess();
    v22 = *(v11 + 104);
    *(v11 + 104) = v19;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A92C068;
    *(v15 + 24) = v3;
    v17 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x64726163736964 && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v23 = MEMORY[0x277D84F90];
    v24 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v23;
    *(v11 + 40) = v23;
    *(v11 + 48) = v23;

    *(v11 + 56) = v23;

    *(v11 + 64) = v23;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v23);
    *(v11 + 16) = 0x64726163736964;
    *(v11 + 24) = 0xE700000000000000;
    v25 = *(v11 + 80);
    v50 = *(v11 + 64);
    v51 = v25;
    v52 = *(v11 + 96);
    v26 = *(v11 + 48);
    v48 = *(v11 + 32);
    v49 = v26;
    *(v11 + 32) = v23;
    *(v11 + 40) = &unk_286C0BB28;
    *(v11 + 48) = v23;
    *(v11 + 56) = v23;
    *(v11 + 64) = v23;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    sub_25A892B80(&v48);
    swift_beginAccess();
    v27 = *(v11 + 104);
    *(v11 + 104) = v24;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A92C04C;
    *(v15 + 24) = v3;
    v17 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x7261656C63 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v28 = MEMORY[0x277D84F90];
    v29 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v28;
    *(v11 + 40) = v28;
    *(v11 + 48) = v28;

    *(v11 + 56) = v28;

    *(v11 + 64) = v28;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v28);
    *(v11 + 16) = 0x7261656C63;
    *(v11 + 24) = 0xE500000000000000;
    v30 = *(v11 + 80);
    v50 = *(v11 + 64);
    v51 = v30;
    v52 = *(v11 + 96);
    v31 = *(v11 + 48);
    v48 = *(v11 + 32);
    v49 = v31;
    *(v11 + 32) = v28;
    *(v11 + 40) = v28;
    *(v11 + 48) = v28;
    *(v11 + 56) = v28;
    *(v11 + 64) = v28;
    *(v11 + 72) = 0u;
    *(v11 + 88) = 0u;
    sub_25A892B80(&v48);
    swift_beginAccess();
    v32 = *(v11 + 104);
    *(v11 + 104) = v29;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A92BFE4;
    *(v15 + 24) = v3;
    v17 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x6E6F696E75 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v33 = MEMORY[0x277D84F90];
    v34 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v33;
    *(v11 + 40) = v33;
    *(v11 + 48) = v33;

    *(v11 + 56) = v33;

    *(v11 + 64) = v33;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v33);
    *(v11 + 16) = 0x6E6F696E75;
    *(v11 + 24) = 0xE500000000000000;
    v35 = *(v11 + 80);
    v50 = *(v11 + 64);
    v51 = v35;
    v52 = *(v11 + 96);
    v36 = *(v11 + 48);
    v48 = *(v11 + 32);
    v49 = v36;
    *(v11 + 32) = v33;
    *(v11 + 40) = v33;
    *(v11 + 48) = v33;
    *(v11 + 56) = v33;
    *(v11 + 64) = v33;
    *(v11 + 72) = xmmword_25A9FD540;
    *(v11 + 88) = 0;
    *(v11 + 96) = 0;
    sub_25A892B80(&v48);
    swift_beginAccess();
    v37 = *(v11 + 104);
    *(v11 + 104) = v34;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A92BFC8;
    *(v15 + 24) = v3;
    v17 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x6365737265746E69 && a2 == 0xEC0000006E6F6974 || (sub_25A9989E8() & 1) != 0)
  {

    v38 = MEMORY[0x277D84F90];
    v39 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v38;
    *(v11 + 40) = v38;
    *(v11 + 48) = v38;

    *(v11 + 56) = v38;

    *(v11 + 64) = v38;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v38);
    strcpy((v11 + 16), "intersection");
    *(v11 + 29) = 0;
    *(v11 + 30) = -5120;
    v40 = *(v11 + 80);
    v50 = *(v11 + 64);
    v51 = v40;
    v52 = *(v11 + 96);
    v41 = *(v11 + 48);
    v48 = *(v11 + 32);
    v49 = v41;
    *(v11 + 32) = v38;
    *(v11 + 40) = v38;
    *(v11 + 48) = v38;
    *(v11 + 56) = v38;
    *(v11 + 64) = v38;
    *(v11 + 72) = xmmword_25A9FD540;
    *(v11 + 88) = 0;
    *(v11 + 96) = 0;
    sub_25A892B80(&v48);
    swift_beginAccess();
    v42 = *(v11 + 104);
    *(v11 + 104) = v39;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A92BFAC;
    *(v15 + 24) = v3;
    v17 = sub_25A8F1D14;
    goto LABEL_7;
  }

  if (a1 == 0x6E65726566666964 && a2 == 0xEA00000000006563 || (sub_25A9989E8() & 1) != 0)
  {

    v43 = MEMORY[0x277D84F90];
    v44 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v10 = type metadata accessor for Function();
    v11 = swift_allocObject();
    *(v11 + 32) = v43;
    *(v11 + 40) = v43;
    *(v11 + 48) = v43;

    *(v11 + 56) = v43;

    *(v11 + 64) = v43;

    *(v11 + 72) = 0;
    *(v11 + 80) = 0;

    *(v11 + 88) = 0;
    *(v11 + 96) = 0;

    *(v11 + 104) = sub_25A92BDB4(v43);
    *(v11 + 16) = 0x6E65726566666964;
    *(v11 + 24) = 0xEA00000000006563;
    v45 = *(v11 + 80);
    v50 = *(v11 + 64);
    v51 = v45;
    v52 = *(v11 + 96);
    v46 = *(v11 + 48);
    v48 = *(v11 + 32);
    v49 = v46;
    *(v11 + 32) = v43;
    *(v11 + 40) = v43;
    *(v11 + 48) = v43;
    *(v11 + 56) = v43;
    *(v11 + 64) = v43;
    *(v11 + 72) = xmmword_25A9FD540;
    *(v11 + 88) = 0;
    *(v11 + 96) = 0;
    sub_25A892B80(&v48);
    swift_beginAccess();
    v47 = *(v11 + 104);
    *(v11 + 104) = v44;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A92BF58;
    *(v15 + 24) = v3;
    v17 = sub_25A8F1830;
    goto LABEL_7;
  }

  return sub_25A87385C(a1, a2, v3, a3);
}

uint64_t sub_25A929804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x746E656D656C65, 0xE700000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, v8);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        v12[0] = v9;
        v12[1] = v10;
        v13 = v11;
        sub_25A874FB0(v12, v8);
        swift_beginAccess();
        sub_25A98D328(&v9, v8);
        sub_25A8795A0(&v9);
        swift_endAccess();
        result = sub_25A8795A0(v12);
        *(a2 + 24) = MEMORY[0x277D84F78] + 8;
        return result;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  sub_25A878194(&v9, &qword_27FA04610, &qword_25A9FDA50);
  sub_25A874F54();
  swift_allocError();
  *v7 = 78;
  return swift_willThrow();
}

uint64_t sub_25A929978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16) || (v6 = sub_25A8F3600(0x746E656D656C65, 0xE700000000000000), (v7 & 1) == 0))
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    goto LABEL_8;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_8;
  }

  if (!*(&v15 + 1))
  {
LABEL_8:
    sub_25A878194(&v14, &qword_27FA04610, &qword_25A9FDA50);
    sub_25A874F54();
    swift_allocError();
    *v11 = 79;
    return swift_willThrow();
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  swift_beginAccess();
  v8 = *(a2 + 16);

  v9 = sub_25A9197D0(v17, v8);

  if (v9)
  {
    swift_beginAccess();
    sub_25A92ABD0(v17, &v14);
    sub_25A878194(&v14, &qword_27FA04610, &qword_25A9FDA50);
    swift_endAccess();
    result = sub_25A8795A0(v17);
    *(a3 + 24) = MEMORY[0x277D84F78] + 8;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v12 = 79;
    swift_willThrow();
    return sub_25A8795A0(v17);
  }

  return result;
}

uint64_t sub_25A929B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x746E656D656C65, 0xE700000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v8);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        v12[0] = v9;
        v12[1] = v10;
        v13 = v11;
        swift_beginAccess();
        sub_25A92ABD0(v12, &v9);
        sub_25A878194(&v9, &qword_27FA04610, &qword_25A9FDA50);
        swift_endAccess();
        result = sub_25A8795A0(v12);
        *(a2 + 24) = MEMORY[0x277D84F78] + 8;
        return result;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  sub_25A878194(&v9, &qword_27FA04610, &qword_25A9FDA50);
  sub_25A874F54();
  swift_allocError();
  *v7 = 80;
  return swift_willThrow();
}

uint64_t sub_25A929CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16) || (v6 = sub_25A8F3600(115, 0xE100000000000000), (v7 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_13;
  }

  v8 = *(&v32 + 1);
  if (!*(&v32 + 1))
  {
LABEL_13:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_14;
  }

  v9 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  v11 = sub_25A92FF1C(v10);

  if (!v11)
  {
LABEL_14:
    sub_25A874F54();
    swift_allocError();
    *v20 = 81;
    return swift_willThrow();
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    v34 = a3;
    v30[0] = MEMORY[0x277D84F90];
    sub_25A9379C0(0, v12, 0);
    v13 = v30[0];
    v14 = v11 + 32;
    do
    {
      sub_25A872F24(v14, &v31);
      v15 = *(&v32 + 1);
      v16 = v33;
      __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
      v17 = (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      v30[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_25A9379C0((v18 > 1), v19 + 1, 1);
        v13 = v30[0];
      }

      *(v13 + 16) = v19 + 1;
      *(v13 + 8 * v19 + 32) = v17;
      v14 += 40;
      --v12;
    }

    while (v12);

    a3 = v34;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  v23 = *(v13 + 16);

  if (v23)
  {
    v24 = 0;
    while (v24 < *(v13 + 16))
    {
      v25 = v24 + 1;
      v26 = *(v13 + 32 + 8 * v24);

      result = sub_25A92A008(v27, v22);
      v22 = result;
      v24 = v25;
      if (v23 == v25)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v28 = type metadata accessor for SharedMutableSet();
    v29 = swift_allocObject();
    *(v29 + 16) = MEMORY[0x277D84FA0];
    result = swift_beginAccess();
    *(v29 + 16) = v22;
    a3[3] = v28;
    *a3 = v29;
  }

  return result;
}

uint64_t sub_25A92A008(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_25A874FB0(*(v2 + 48) + 40 * (v11 | (v10 << 6)), v15);
      v12[0] = v15[0];
      v12[1] = v15[1];
      v13 = v16;
      sub_25A98D328(v14, v12);
      result = sub_25A8795A0(v14);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A92A114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = v3, v8 = sub_25A8F3600(115, 0xE100000000000000), (v9 & 1) == 0))
  {
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_13;
  }

  v10 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_13:
    sub_25A878194(&v44, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_14;
  }

  v40 = a3;
  v11 = v46;
  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  v12 = (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(&v44);
  v42 = sub_25A92FF1C(v12);

  if (!v42)
  {
LABEL_14:
    sub_25A874F54();
    swift_allocError();
    *v21 = 77;
    result = swift_willThrow();
LABEL_15:
    v23 = *MEMORY[0x277D85DE8];
    return result;
  }

  v13 = *(v42 + 16);
  if (v13)
  {
    v43[0] = MEMORY[0x277D84F90];
    sub_25A9379C0(0, v13, 0);
    v14 = v43[0];
    v15 = v42 + 32;
    do
    {
      sub_25A872F24(v15, &v44);
      v16 = *(&v45 + 1);
      v17 = v46;
      __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      v18 = (*(v17 + 8))(v16, v17);
      __swift_destroy_boxed_opaque_existential_0Tm(&v44);
      v43[0] = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_25A9379C0((v19 > 1), v20 + 1, 1);
        v14 = v43[0];
      }

      *(v14 + 16) = v20 + 1;
      *(v14 + 8 * v20 + 32) = v18;
      v15 += 40;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v24 = *(a2 + 16);
  v25 = *(v14 + 16);

  v42 = v25;
  if (!v25)
  {
LABEL_29:

    v36 = type metadata accessor for SharedMutableSet();
    v37 = swift_allocObject();
    *(v37 + 16) = MEMORY[0x277D84FA0];
    result = swift_beginAccess();
    *(v37 + 16) = v24;
    v38 = v40;
    v40[3] = v36;
    *v38 = v37;
    goto LABEL_15;
  }

  v26 = 0;
  v41 = v14 + 32;
  while (1)
  {
    if (v26 >= *(v14 + 16))
    {
      __break(1u);
    }

    v27 = *(v41 + 8 * v26);
    v28 = *(v24 + 32);
    v29 = v28 & 0x3F;
    v30 = ((1 << v28) + 63) >> 6;
    v31 = (8 * v30);
    swift_bridgeObjectRetain_n();

    if (v29 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v31 = swift_slowAlloc();

    v35 = sub_25A92AEC0(v31, v30, v24, v27);
    if (v5)
    {
      goto LABEL_32;
    }

    v34 = v35;

    swift_bridgeObjectRelease_n();
    MEMORY[0x25F852800](v31, -1, -1);
LABEL_24:
    v24 = v34;
    ++v26;

    if (v42 == v26)
    {
      goto LABEL_29;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v39 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0), v31);
  v33 = sub_25A92AF50(&v39 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0), v30, v24, v27);
  if (!v5)
  {
    v34 = v33;

    goto LABEL_24;
  }

  swift_willThrow();

  __break(1u);
LABEL_32:

  result = MEMORY[0x25F852800](v31, -1, -1);
  __break(1u);
  return result;
}

void sub_25A92A5E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A92A5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16) || (v6 = sub_25A8F3600(115, 0xE100000000000000), (v7 & 1) == 0))
  {
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    goto LABEL_13;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v6, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    goto LABEL_13;
  }

  v8 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
LABEL_13:
    sub_25A878194(&v42, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_14;
  }

  v9 = v44;
  __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(&v42);
  v11 = sub_25A92FF1C(v10);

  if (!v11)
  {
LABEL_14:
    sub_25A874F54();
    swift_allocError();
    *v20 = 76;
    return swift_willThrow();
  }

  v39 = a3;
  v12 = *(v11 + 16);
  if (v12)
  {
    v41[0] = MEMORY[0x277D84F90];
    sub_25A9379C0(0, v12, 0);
    v13 = v41[0];
    v14 = v11 + 32;
    do
    {
      sub_25A872F24(v14, &v42);
      v15 = *(&v43 + 1);
      v16 = v44;
      __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      v17 = (*(v16 + 8))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0Tm(&v42);
      v41[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_25A9379C0((v18 > 1), v19 + 1, 1);
        v13 = v41[0];
      }

      *(v13 + 16) = v19 + 1;
      *(v13 + 8 * v19 + 32) = v17;
      v14 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  v23 = *(v13 + 16);

  if (v23)
  {
    v24 = 0;
    v25 = v13 + 32;
    v40 = v23;
    while (v24 < *(v13 + 16))
    {
      v28 = *(v25 + 8 * v24);
      v29 = *(v22 + 16);
      if (*(v28 + 16) > v29 >> 3)
      {
        v26 = *(v25 + 8 * v24);

        v22 = sub_25A92B540(v27, v22);
      }

      else
      {
        v45 = v22;
        if (v29)
        {
          v30 = 1 << *(v28 + 32);
          if (v30 < 64)
          {
            v31 = ~(-1 << v30);
          }

          else
          {
            v31 = -1;
          }

          v32 = v31 & *(v28 + 56);
          v33 = (v30 + 63) >> 6;
          result = swift_bridgeObjectRetain_n();
          for (i = 0; v32; result = sub_25A8795A0(&v42))
          {
            v35 = i;
LABEL_33:
            v36 = __clz(__rbit64(v32));
            v32 &= v32 - 1;
            sub_25A874FB0(*(v28 + 48) + 40 * (v36 | (v35 << 6)), &v42);
            sub_25A92ABD0(&v42, v41);
            sub_25A878194(v41, &qword_27FA04610, &qword_25A9FDA50);
          }

          while (1)
          {
            v35 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v35 >= v33)
            {

              v22 = v45;
              v25 = v13 + 32;
              v23 = v40;
              goto LABEL_20;
            }

            v32 = *(v28 + 56 + 8 * v35);
            ++i;
            if (v32)
            {
              i = v35;
              goto LABEL_33;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_20:
      if (++v24 == v23)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_36:

    v37 = type metadata accessor for SharedMutableSet();
    v38 = swift_allocObject();
    *(v38 + 16) = MEMORY[0x277D84FA0];
    result = swift_beginAccess();
    *(v38 + 16) = v22;
    v39[3] = v37;
    *v39 = v38;
  }

  return result;
}

uint64_t SharedMutableSet.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = sub_25A998228();

  return v2;
}

uint64_t sub_25A92AACC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  v3 = sub_25A998228();

  return v3;
}

uint64_t sub_25A92AB48(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      result = sub_25A998528();
      v5 = *(a4 + 36);
      return result;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_25A92ABD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  result = sub_25A998558();
  v9 = -1 << *(v6 + 32);
  v10 = result & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_25A874FB0(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x25F850890](v18, a1);
      result = sub_25A8795A0(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v18[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25A98DD88();
      v15 = v18[0];
    }

    v16 = *(v15 + 48) + 40 * v10;
    v17 = *(v16 + 16);
    *a2 = *v16;
    *(a2 + 16) = v17;
    *(a2 + 32) = *(v16 + 32);
    result = sub_25A92AD08(v10);
    *v3 = v18[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_25A92AD08(unint64_t result)
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

    v9 = sub_25A998518();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        sub_25A874FB0(*(v3 + 48) + 40 * v6, v24);
        v13 = *(v3 + 40);
        v14 = sub_25A998558();
        sub_25A8795A0(v24);
        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 >= v10 && v2 >= v15)
          {
LABEL_16:
            v18 = *(v3 + 48);
            v19 = v18 + 40 * v2;
            v20 = (v18 + 40 * v6);
            if (v2 != v6 || v19 >= v20 + 40)
            {
              v11 = *v20;
              v12 = v20[1];
              *(v19 + 32) = *(v20 + 4);
              *v19 = v11;
              *(v19 + 16) = v12;
              v2 = v6;
            }
          }
        }

        else if (v15 >= v10 || v2 >= v15)
        {
          goto LABEL_16;
        }

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

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_25A92AEC0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_25A92AF50(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25A92AF50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v43 = result;
  v6 = *(a3 + 16);
  v7 = *(a4 + 16);
  v54 = a3;
  if (v7 >= v6)
  {
LABEL_23:
    v46 = 0;
    v26 = 0;
    v27 = v5 + 56;
    v28 = 1 << *(v5 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v5 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = a4 + 56;
    while (v30)
    {
      v33 = __clz(__rbit64(v30));
      v48 = (v30 - 1) & v30;
LABEL_35:
      v45 = v33 | (v26 << 6);
      sub_25A874FB0(*(v5 + 48) + 40 * v45, v52);
      v36 = *(a4 + 40);
      v37 = sub_25A998558();
      v38 = -1 << *(a4 + 32);
      v39 = v37 & ~v38;
      if ((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        v40 = ~v38;
        while (1)
        {
          sub_25A874FB0(*(a4 + 48) + 40 * v39, v50);
          v41 = MEMORY[0x25F850890](v50, v52);
          sub_25A8795A0(v50);
          if (v41)
          {
            break;
          }

          v39 = (v39 + 1) & v40;
          if (((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        result = sub_25A8795A0(v52);
        *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        v30 = v48;
        v25 = __OFADD__(v46++, 1);
        v5 = v54;
        if (v25)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
LABEL_27:
        result = sub_25A8795A0(v52);
        v5 = v54;
        v30 = v48;
      }
    }

    v34 = v26;
    while (1)
    {
      v26 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v26 >= v31)
      {
        goto LABEL_43;
      }

      v35 = *(v27 + 8 * v26);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v48 = (v35 - 1) & v35;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v8 = 0;
  v9 = 1 << *(a4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a4 + 56);
  v12 = (v9 + 63) >> 6;
  v46 = 0;
  v47 = a3 + 56;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v44 = (v11 - 1) & v11;
LABEL_15:
    sub_25A874FB0(*(a4 + 48) + 40 * (v13 | (v8 << 6)), v52);
    v50[0] = v52[0];
    v50[1] = v52[1];
    v51 = v53;
    v16 = *(v5 + 40);
    v17 = sub_25A998558();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v47 + 8 * (v19 >> 6))) == 0)
    {
      goto LABEL_6;
    }

    sub_25A874FB0(*(v54 + 48) + 40 * v19, v49);
    v22 = MEMORY[0x25F850890](v49, v50);
    sub_25A8795A0(v49);
    if ((v22 & 1) == 0)
    {
      v23 = ~v18;
      while (1)
      {
        v19 = (v19 + 1) & v23;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v47 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        sub_25A874FB0(*(v54 + 48) + 40 * v19, v49);
        v24 = MEMORY[0x25F850890](v49, v50);
        sub_25A8795A0(v49);
        if (v24)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      result = sub_25A8795A0(v50);
      v5 = v54;
      goto LABEL_7;
    }

LABEL_20:
    result = sub_25A8795A0(v50);
    v43[v20] |= v21;
    v25 = __OFADD__(v46++, 1);
    v5 = v54;
    if (v25)
    {
      __break(1u);
      goto LABEL_23;
    }

LABEL_7:
    v11 = v44;
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
LABEL_43:

      return sub_25A92B31C(v43, a2, v46, v5);
    }

    v15 = *(a4 + 56 + 8 * v8);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_25A92B31C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05310, &unk_25A9FD750);
  result = sub_25A9985A8();
  v6 = result;
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_25A874FB0(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v29);
    v16 = *(v6 + 40);
    result = sub_25A998558();
    v17 = -1 << *(v6 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v6 + 48) + 40 * v20;
    v26 = v29[0];
    v27 = v29[1];
    *(v25 + 32) = v30;
    *v25 = v26;
    *(v25 + 16) = v27;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
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
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25A92B540(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v59 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_44;
  }

  v3 = a1;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1 << *(a1 + 32);
  v46 = ~v6;
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (63 - v6) >> 6;
  v10 = a2 + 56;
  v11 = 0;
  v12 = 0;
  v47 = a1 + 56;

  {
    v14 = v8;
    if (!v8)
    {
      break;
    }

LABEL_12:
    sub_25A874FB0(*(v3 + 48) + 40 * (__clz(__rbit64(v14)) | (v12 << 6)), &v49);
    if (!*(&v50 + 1))
    {
      goto LABEL_42;
    }

    v52 = v49;
    v53 = v50;
    v54 = v51;
    v16 = *(v2 + 40);
    v17 = sub_25A998558();
    v8 = (v14 - 1) & v14;
    v18 = -1 << *(v2 + 32);
    v11 = v17 & ~v18;
    v3 = v11 >> 6;
    v14 = 1 << v11;
    if (((1 << v11) & *(v10 + 8 * (v11 >> 6))) != 0)
    {
      sub_25A874FB0(*(v2 + 48) + 40 * v11, &v49);
      v19 = MEMORY[0x25F850890](&v49, &v52);
      v20 = ~v18;
      while (1)
      {
        sub_25A8795A0(&v49);
        if (v19)
        {
          break;
        }

        v11 = (v11 + 1) & v20;
        v3 = v11 >> 6;
        v14 = 1 << v11;
        if (((1 << v11) & *(v10 + 8 * (v11 >> 6))) == 0)
        {
          goto LABEL_6;
        }

        sub_25A874FB0(*(v2 + 48) + 40 * v11, &v49);
        v19 = MEMORY[0x25F850890](&v49, &v52);
      }

      v21 = v47;
      v56 = v46;
      v57 = v12;
      v58 = v8;
      v22 = i;
      v55[0] = i;
      v55[1] = v47;
      v23 = sub_25A8795A0(&v52);
      v24 = *(v2 + 32);
      v43[0] = ((1 << v24) + 63) >> 6;
      v13 = 8 * v43[0];
      if ((v24 & 0x3Fu) <= 0xD)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }

LABEL_6:
    sub_25A8795A0(&v52);
    v11 = v12;
    v5 = v47;
  }

  v15 = v11;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v40 = v13;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v41 = swift_slowAlloc();
        memcpy(v41, (v2 + 56), v40);
        v42 = sub_25A92BB40(v41, v43[0], v2, v11, v55);

        MEMORY[0x25F852800](v41, -1, -1);
        v46 = v56;
        v2 = v42;
        goto LABEL_43;
      }

      v21 = v47;
      v22 = i;
LABEL_20:
      v43[1] = v43;
      MEMORY[0x28223BE20](v23);
      v11 = v43 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v11, (v2 + 56), v25);
      v26 = *(v11 + 8 * v3) & ~v14;
      v44 = v11;
      *(v11 + 8 * v3) = v26;
      v45 = *(v2 + 16) - 1;
      while (1)
      {
        while (1)
        {
          if (!v8)
          {
            v27 = v12;
            while (1)
            {
              v28 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if (v28 >= v9)
              {
                v51 = 0;
                v49 = 0u;
                v50 = 0u;
                goto LABEL_40;
              }

              v8 = *(v21 + 8 * v28);
              ++v27;
              if (v8)
              {
                v12 = v28;
                goto LABEL_28;
              }
            }

            __break(1u);
            goto LABEL_46;
          }

LABEL_28:
          v29 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          sub_25A874FB0(*(v22 + 48) + 40 * (v29 | (v12 << 6)), &v49);
          if (!*(&v50 + 1))
          {
LABEL_40:
            v36 = v43[0];
            v37 = v45;
            sub_25A878194(&v49, &qword_27FA04610, &qword_25A9FDA50);
            v2 = sub_25A92B31C(v44, v36, v37, v2);
            goto LABEL_43;
          }

          v52 = v49;
          v53 = v50;
          v54 = v51;
          v30 = *(v2 + 40);
          v11 = &v52;
          v31 = sub_25A998558();
          v14 = -1 << *(v2 + 32);
          v32 = v31 & ~v14;
          v3 = v32 >> 6;
          v33 = 1 << v32;
          if (((1 << v32) & *(v10 + 8 * (v32 >> 6))) != 0)
          {
            break;
          }

LABEL_21:
          sub_25A8795A0(&v52);
          v21 = v47;
          v22 = i;
        }

        sub_25A874FB0(*(v2 + 48) + 40 * v32, &v49);
        v11 = MEMORY[0x25F850890](&v49, &v52);
        sub_25A8795A0(&v49);
        if ((v11 & 1) == 0)
        {
          v14 = ~v14;
          do
          {
            v32 = (v32 + 1) & v14;
            v3 = v32 >> 6;
            v33 = 1 << v32;
            if (((1 << v32) & *(v10 + 8 * (v32 >> 6))) == 0)
            {
              goto LABEL_21;
            }

            sub_25A874FB0(*(v2 + 48) + 40 * v32, &v49);
            v11 = MEMORY[0x25F850890](&v49, &v52);
            sub_25A8795A0(&v49);
          }

          while ((v11 & 1) == 0);
        }

        sub_25A8795A0(&v52);
        v34 = v44[v3];
        v44[v3] = v34 & ~v33;
        v21 = v47;
        if ((v34 & v33) != 0)
        {
          v35 = v45 - 1;
          v22 = i;
          if (__OFSUB__(v45, 1))
          {
            goto LABEL_47;
          }

          --v45;
          if (!v35)
          {

            v2 = MEMORY[0x277D84FA0];
            goto LABEL_43;
          }
        }

        else
        {
          v22 = i;
        }
      }
    }

    if (v12 >= v9)
    {
      break;
    }

    v14 = *(v5 + 8 * v12);
    ++v15;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
LABEL_42:
  sub_25A878194(&v49, &qword_27FA04610, &qword_25A9FDA50);
LABEL_43:
  sub_25A874FA8();
LABEL_44:
  v38 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_25A92BB34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A92BB40(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = v7 - 1;
  v8 = a3 + 56;
  while (1)
  {
    do
    {
      while (1)
      {
        v9 = *a5;
        v10 = a5[1];
        v12 = a5[2];
        v11 = a5[3];
        v13 = a5[4];
        if (!v13)
        {
          v15 = (v12 + 64) >> 6;
          v16 = a5[3];
          while (1)
          {
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_25;
            }

            if (v14 >= v15)
            {
              break;
            }

            v13 = *(v10 + 8 * v14);
            ++v16;
            if (v13)
            {
              goto LABEL_9;
            }
          }

          v35 = 0;
          if (v15 <= v11 + 1)
          {
            v30 = v11 + 1;
          }

          else
          {
            v30 = (v12 + 64) >> 6;
          }

          v33 = 0u;
          v34 = 0u;
          *a5 = v9;
          a5[1] = v10;
          a5[2] = v12;
          a5[3] = v30 - 1;
          a5[4] = 0;
LABEL_23:
          sub_25A878194(&v33, &qword_27FA04610, &qword_25A9FDA50);

          return sub_25A92B31C(v32, a2, v38, a3);
        }

        v14 = a5[3];
LABEL_9:
        v17 = (v13 - 1) & v13;
        sub_25A874FB0(*(v9 + 48) + 40 * (__clz(__rbit64(v13)) | (v14 << 6)), &v33);
        v18 = *(&v34 + 1);
        *a5 = v9;
        a5[1] = v10;
        a5[2] = v12;
        a5[3] = v14;
        a5[4] = v17;
        if (!v18)
        {
          goto LABEL_23;
        }

        v36[0] = v33;
        v36[1] = v34;
        v37 = v35;
        v19 = *(a3 + 40);
        v20 = sub_25A998558();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v8 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_2:
        result = sub_25A8795A0(v36);
      }

      sub_25A874FB0(*(a3 + 48) + 40 * v22, &v33);
      v25 = MEMORY[0x25F850890](&v33, v36);
      sub_25A8795A0(&v33);
      if ((v25 & 1) == 0)
      {
        v26 = ~v21;
        do
        {
          v22 = (v22 + 1) & v26;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v8 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_2;
          }

          sub_25A874FB0(*(a3 + 48) + 40 * v22, &v33);
          v27 = MEMORY[0x25F850890](&v33, v36);
          sub_25A8795A0(&v33);
        }

        while ((v27 & 1) == 0);
      }

      result = sub_25A8795A0(v36);
      v28 = v32[v23];
      v32[v23] = v28 & ~v24;
    }

    while ((v28 & v24) == 0);
    v29 = v38 - 1;
    if (__OFSUB__(v38, 1))
    {
      break;
    }

    --v38;
    if (!v29)
    {
      return MEMORY[0x277D84FA0];
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_25A92BDB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
    v3 = sub_25A998888();
    v4 = a1 + 32;

    while (1)
    {
      sub_25A8952F0(v4, &v13, &qword_27FA048E8, &unk_25A9FD760);
      v5 = v13;
      v6 = v14;
      result = sub_25A8F3600(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25A872D74(&v15, (v3[7] + 32 * result));
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

uint64_t sub_25A92BEE4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = -1 << *(v4 + 32);
  v6 = ~v5;
  *a1 = v4;
  v9 = *(v4 + 56);
  v7 = v4 + 56;
  v8 = v9;
  v10 = -v5;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  a1[1] = v7;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v11 & v8;
  return result;
}

uint64_t sub_25A92BF74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A92BFE4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x277D84FA0];

  *(a1 + 24) = MEMORY[0x277D84F78] + 8;
  return result;
}

void *sub_25A92C0A0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_25A93743C(*(v2 + 16), 0);

  v5 = sub_25A95F8D4(&v7, (v4 + 4), v3);
  sub_25A874FA8();
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t _s8Morpheus16SharedMutableSetC3has9attributeSbSS_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A98E844(&unk_286C0D5D8);
  swift_arrayDestroy();
  v5 = sub_25A9198A8(a1, a2, v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_25A91B4A0();
    swift_beginAccess();
    v8 = *(v7 + 16);

    if (*(v8 + 16))
    {
      sub_25A8F3600(a1, a2);
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

unint64_t sub_25A92C22C()
{
  result = qword_27FA052C8;
  if (!qword_27FA052C8)
  {
    type metadata accessor for SharedMutableSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA052C8);
  }

  return result;
}

uint64_t sub_25A92C3B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25A92C3FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_25A92C648(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_25A92C654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t PySpecialFunction.rawValue.getter()
{
  result = 0x5F5F77656E5F5FLL;
  switch(*v0)
  {
    case 1:
      v2 = 1852399455;
      goto LABEL_12;
    case 2:
      v8 = 1701076831;
      return v8 | 0x5F5F6C00000000;
    case 3:
      v9 = 1953718111;
      goto LABEL_99;
    case 4:
      return 0x5F5F727065725F5FLL;
    case 5:
      return 0x5F73657479625F5FLL;
    case 6:
      return 0x74616D726F665F5FLL;
    case 7:
      return 0x5F5F687361685F5FLL;
    case 8:
      v3 = 1852399455;
      goto LABEL_66;
    case 9:
      return 0x5F74616F6C665F5FLL;
    case 0xA:
      return 0x656C706D6F635F5FLL;
    case 0xB:
      return 0x5F7865646E695F5FLL;
    case 0xC:
      return 0x5F5F6C6F6F625F5FLL;
    case 0xD:
      return 0x5F5F736F705F5FLL;
    case 0xE:
      return 0x5F5F67656E5F5FLL;
    case 0xF:
      return 0x747265766E695F5FLL;
    case 0x10:
      return 0x5F5F71655F5FLL;
    case 0x11:
      return 0x5F5F656E5F5FLL;
    case 0x12:
      v10 = 1952931679;
      return (v10 & 0xFFFF0000FFFFFFFFLL | 0x5F5F00000000) + 327680;
    case 0x13:
      v10 = 1701273439;
      return (v10 & 0xFFFF0000FFFFFFFFLL | 0x5F5F00000000) + 327680;
    case 0x14:
      return 0x5F5F74675F5FLL;
    case 0x15:
      return 0x5F5F65675F5FLL;
    case 0x16:
      v4 = 1684103007;
      return v4 | 0x5F5F6400000000;
    case 0x17:
      v5 = 0x646461695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x18:
      return 0x5F5F646461695F5FLL;
    case 0x19:
      return 0x5F5F6275735F5FLL;
    case 0x1A:
      v5 = 0x627573695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x1B:
      return 0x5F5F627573695F5FLL;
    case 0x1C:
      v8 = 1970102111;
      return v8 | 0x5F5F6C00000000;
    case 0x1D:
      v5 = 0x6C756D695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x1E:
      return 0x5F5F6C756D695F5FLL;
    case 0x1F:
      return 0x6964657572745F5FLL;
    case 0x20:
      return 0x6465757274725F5FLL;
    case 0x21:
      return 0x6465757274695F5FLL;
    case 0x22:
      return 0x64726F6F6C665F5FLL;
    case 0x23:
      return 0x726F6F6C66725F5FLL;
    case 0x24:
      return 0x726F6F6C66695F5FLL;
    case 0x25:
      v4 = 1869438815;
      return v4 | 0x5F5F6400000000;
    case 0x26:
      v5 = 0x646F6D695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x27:
      return 0x5F5F646F6D695F5FLL;
    case 0x28:
      return 0x5F5F776F705F5FLL;
    case 0x29:
      v5 = 0x776F70695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x2A:
      return 0x5F5F776F70695F5FLL;
    case 0x2B:
      return 0x6C756D74616D5F5FLL;
    case 0x2C:
      return 0x756D74616D725F5FLL;
    case 0x2D:
      return 0x756D74616D695F5FLL;
    case 0x2E:
      v4 = 1851875167;
      return v4 | 0x5F5F6400000000;
    case 0x2F:
      v5 = 0x646E61695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x30:
      return 0x5F5F646E61695F5FLL;
    case 0x31:
      return 0x5F5F726F5F5FLL;
    case 0x32:
      return 0x5F5F726F725F5FLL;
    case 0x33:
      v9 = 1869176671;
      goto LABEL_99;
    case 0x34:
      return 0x5F5F726F785F5FLL;
    case 0x35:
      v5 = 0x726F78695F5FLL;
      return (v5 & 0xFFFFFFFFFFFFLL | 0x5F5F000000000000) + 589824;
    case 0x36:
      return 0x5F5F726F78695F5FLL;
    case 0x37:
      return 0x74666968736C5F5FLL;
    case 0x38:
      v6 = 1818845023;
      goto LABEL_80;
    case 0x39:
      v7 = 1818845023;
      goto LABEL_77;
    case 0x3A:
      return 0x7466696873725F5FLL;
    case 0x3B:
      v6 = 1919508319;
LABEL_80:
      result = (v6 | 0x6669687300000000) + 589824;
      break;
    case 0x3C:
      v7 = 1919508319;
LABEL_77:
      result = v7 | 0x6669687300000000;
      break;
    case 0x3D:
      result = 0x5F5F6E656C5F5FLL;
      break;
    case 0x3E:
      result = 0x6574697465675F5FLL;
      break;
    case 0x3F:
      result = 0x6574697465735F5FLL;
      break;
    case 0x40:
      result = 0x6574696C65645F5FLL;
      break;
    case 0x41:
      result = 0x6961746E6F635F5FLL;
      break;
    case 0x42:
      result = 0x5F5F726574695F5FLL;
      break;
    case 0x43:
      result = 0x5F5F7478656E5F5FLL;
      break;
    case 0x44:
      result = 0x7372657665725F5FLL;
      break;
    case 0x45:
      result = 0x5F5F6C6C61635F5FLL;
      break;
    case 0x46:
      result = 0x5F7265746E655F5FLL;
      break;
    case 0x47:
      v2 = 2019909471;
LABEL_12:
      result = v2 | 0x5F5F746900000000;
      break;
    case 0x48:
      result = 0x7474617465675F5FLL;
      break;
    case 0x49:
      result = 0xD000000000000010;
      break;
    case 0x4A:
      result = 0x7474617465735F5FLL;
      break;
    case 0x4B:
      result = 0x7474616C65645F5FLL;
      break;
    case 0x4C:
      v9 = 1768185695;
LABEL_99:
      result = v9 | 0x5F5F7200000000;
      break;
    case 0x4D:
      v3 = 1701273439;
LABEL_66:
      result = v3 | 0x5F5F7400000000;
      break;
    case 0x4E:
      result = 0x5F5F7465735F5FLL;
      break;
    case 0x4F:
      result = 0x6574656C65645F5FLL;
      break;
    case 0x50:
      result = 0xD000000000000011;
      break;
    case 0x51:
      result = 0xD000000000000011;
      break;
    case 0x52:
      result = 0xD000000000000011;
      break;
    case 0x53:
      result = 0x7261706572705F5FLL;
      break;
    default:
      return result;
  }

  return result;
}

Morpheus::PySpecialFunction_optional __swiftcall PySpecialFunction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25A998A58();

  v5 = 0;
  v6 = 66;
  switch(v3)
  {
    case 0:
      goto LABEL_82;
    case 1:
      v5 = 1;
      goto LABEL_82;
    case 2:
      v5 = 2;
      goto LABEL_82;
    case 3:
      v5 = 3;
      goto LABEL_82;
    case 4:
      v5 = 4;
      goto LABEL_82;
    case 5:
      v5 = 5;
      goto LABEL_82;
    case 6:
      v5 = 6;
      goto LABEL_82;
    case 7:
      v5 = 7;
      goto LABEL_82;
    case 8:
      v5 = 8;
      goto LABEL_82;
    case 9:
      v5 = 9;
      goto LABEL_82;
    case 10:
      v5 = 10;
      goto LABEL_82;
    case 11:
      v5 = 11;
      goto LABEL_82;
    case 12:
      v5 = 12;
      goto LABEL_82;
    case 13:
      v5 = 13;
      goto LABEL_82;
    case 14:
      v5 = 14;
      goto LABEL_82;
    case 15:
      v5 = 15;
      goto LABEL_82;
    case 16:
      v5 = 16;
      goto LABEL_82;
    case 17:
      v5 = 17;
      goto LABEL_82;
    case 18:
      v5 = 18;
      goto LABEL_82;
    case 19:
      v5 = 19;
      goto LABEL_82;
    case 20:
      v5 = 20;
      goto LABEL_82;
    case 21:
      v5 = 21;
      goto LABEL_82;
    case 22:
      v5 = 22;
      goto LABEL_82;
    case 23:
      v5 = 23;
      goto LABEL_82;
    case 24:
      v5 = 24;
      goto LABEL_82;
    case 25:
      v5 = 25;
      goto LABEL_82;
    case 26:
      v5 = 26;
      goto LABEL_82;
    case 27:
      v5 = 27;
      goto LABEL_82;
    case 28:
      v5 = 28;
      goto LABEL_82;
    case 29:
      v5 = 29;
      goto LABEL_82;
    case 30:
      v5 = 30;
      goto LABEL_82;
    case 31:
      v5 = 31;
      goto LABEL_82;
    case 32:
      v5 = 32;
      goto LABEL_82;
    case 33:
      v5 = 33;
      goto LABEL_82;
    case 34:
      v5 = 34;
      goto LABEL_82;
    case 35:
      v5 = 35;
      goto LABEL_82;
    case 36:
      v5 = 36;
      goto LABEL_82;
    case 37:
      v5 = 37;
      goto LABEL_82;
    case 38:
      v5 = 38;
      goto LABEL_82;
    case 39:
      v5 = 39;
      goto LABEL_82;
    case 40:
      v5 = 40;
      goto LABEL_82;
    case 41:
      v5 = 41;
      goto LABEL_82;
    case 42:
      v5 = 42;
      goto LABEL_82;
    case 43:
      v5 = 43;
      goto LABEL_82;
    case 44:
      v5 = 44;
      goto LABEL_82;
    case 45:
      v5 = 45;
      goto LABEL_82;
    case 46:
      v5 = 46;
      goto LABEL_82;
    case 47:
      v5 = 47;
      goto LABEL_82;
    case 48:
      v5 = 48;
      goto LABEL_82;
    case 49:
      v5 = 49;
      goto LABEL_82;
    case 50:
      v5 = 50;
      goto LABEL_82;
    case 51:
      v5 = 51;
      goto LABEL_82;
    case 52:
      v5 = 52;
      goto LABEL_82;
    case 53:
      v5 = 53;
      goto LABEL_82;
    case 54:
      v5 = 54;
      goto LABEL_82;
    case 55:
      v5 = 55;
      goto LABEL_82;
    case 56:
      v5 = 56;
      goto LABEL_82;
    case 57:
      v5 = 57;
      goto LABEL_82;
    case 58:
      v5 = 58;
      goto LABEL_82;
    case 59:
      v5 = 59;
      goto LABEL_82;
    case 60:
      v5 = 60;
      goto LABEL_82;
    case 61:
      v5 = 61;
      goto LABEL_82;
    case 62:
      v5 = 62;
      goto LABEL_82;
    case 63:
      v5 = 63;
      goto LABEL_82;
    case 64:
      v5 = 64;
      goto LABEL_82;
    case 65:
      v5 = 65;
LABEL_82:
      v6 = v5;
      break;
    case 66:
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    case 71:
      v6 = 71;
      break;
    case 72:
      v6 = 72;
      break;
    case 73:
      v6 = 73;
      break;
    case 74:
      v6 = 74;
      break;
    case 75:
      v6 = 75;
      break;
    case 76:
      v6 = 76;
      break;
    case 77:
      v6 = 77;
      break;
    case 78:
      v6 = 78;
      break;
    case 79:
      v6 = 79;
      break;
    case 80:
      v6 = 80;
      break;
    case 81:
      v6 = 81;
      break;
    case 82:
      v6 = 82;
      break;
    case 83:
      v6 = 83;
      break;
    default:
      v6 = 84;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25A92D3F4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PySpecialFunction.rawValue.getter();
  v4 = v3;
  if (v2 == PySpecialFunction.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25A9989E8();
  }

  return v7 & 1;
}

unint64_t sub_25A92D494()
{
  result = qword_27FA05318;
  if (!qword_27FA05318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05318);
  }

  return result;
}

uint64_t sub_25A92D4E8()
{
  v1 = *v0;
  sub_25A998B18();
  PySpecialFunction.rawValue.getter();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A92D550()
{
  v2 = *v0;
  PySpecialFunction.rawValue.getter();
  sub_25A997D58();
}

uint64_t sub_25A92D5B4()
{
  v1 = *v0;
  sub_25A998B18();
  PySpecialFunction.rawValue.getter();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A92D624@<X0>(uint64_t *a1@<X8>)
{
  result = PySpecialFunction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25A92D650()
{
  result = qword_27FA05320;
  if (!qword_27FA05320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA05328, &qword_25A9FD810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05320);
  }

  return result;
}