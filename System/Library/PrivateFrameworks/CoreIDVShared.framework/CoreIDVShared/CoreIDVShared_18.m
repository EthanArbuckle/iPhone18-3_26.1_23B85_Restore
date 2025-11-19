id URL.isFileOnDisk.getter()
{
  sub_225CCCE54();
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_225CCE444();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

id Data.formattedSize.getter(uint64_t a1, unint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v4 setAllowedUnits_];
  result = [v4 setCountStyle_];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v7 = 0;
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
LABEL_10:
    v10 = [v4 stringFromByteCount_];
    v11 = sub_225CCE474();

    return v11;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v7 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t optionalMax<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v37 = a4;
  v39 = a2;
  v8 = sub_225CCEFC4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v35 - v16;
  v18 = *(a3 - 8);
  v20 = MEMORY[0x28223BE20](v15, v19);
  v36 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v38 = &v35 - v23;
  v24 = *(v9 + 16);
  v24(v17, a1, v8);
  v40 = v18;
  v25 = *(v18 + 48);
  if (v25(v17, 1, a3) == 1)
  {
    (*(v9 + 8))(v17, v8);
    return (v24)(a5, v39, v8);
  }

  else
  {
    v35 = a5;
    v27 = v17;
    v28 = *(v40 + 32);
    v28(v38, v27, a3);
    v24(v13, v39, v8);
    if (v25(v13, 1, a3) == 1)
    {
      (*(v9 + 8))(v13, v8);
      v29 = v35;
      v28(v35, v38, a3);
      return (*(v40 + 56))(v29, 0, 1, a3);
    }

    else
    {
      v30 = v36;
      v28(v36, v13, a3);
      v31 = v35;
      v32 = v38;
      sub_225CCFAA4();
      v33 = v40;
      v34 = *(v40 + 8);
      v34(v30, a3);
      v34(v32, a3);
      return (*(v33 + 56))(v31, 0, 1, a3);
    }
  }
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_225CCEFC4();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B3B090, 0, 0);
}

uint64_t sub_225B3B090()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_225CCE274();
  (*(v2 + 16))(v1, v3, v4);
  sub_225CCE714();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_225CCF014();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_225B3B2FC;
    v13 = v0[12];
    v14 = v0[9];

    return v15(v14, v13);
  }
}

uint64_t sub_225B3B2FC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_225B3B670;
  }

  else
  {
    v2 = sub_225B3B418;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B3B418()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_225CCE8B4();
  sub_225CCE8A4();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_225CCF014();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_225B3B2FC;
    v12 = v0[12];
    v13 = v0[9];

    return v14(v13, v12);
  }
}

uint64_t sub_225B3B670()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = sub_225CCEFC4();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(a4 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = swift_task_alloc();
  sub_225CCEFC4();
  v6[18] = swift_task_alloc();
  v6[19] = *(a3 - 8);
  v6[20] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B3B9FC, 0, 0);
}

uint64_t sub_225B3B9FC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_225CCE274();
  (*(v2 + 16))(v1, v3, v4);
  sub_225CCE714();
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_225CCF014();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_225B3BC84;
    v13 = v0[17];
    v14 = v0[11];

    return v15(v14, v13);
  }
}

uint64_t sub_225B3BC84()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_225B3C0DC;
  }

  else
  {
    v2 = sub_225B3BDA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B3BDA0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_225CCE8B4();
    sub_225CCE8A4();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_225CCF014();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v15 = v0[2];

    v16 = v0[1];

    return v16(v15);
  }

  else
  {
    v18 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v22 = (v18 + *v18);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_225B3BC84;
    v20 = v0[17];
    v21 = v0[11];

    return v22(v21, v20);
  }
}

uint64_t sub_225B3C0DC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_225B3C1D4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  (*(v3 + 16))(v7, a1, AssociatedTypeWitness);
  sub_225CCEC34();
  v11 = sub_225CCEC24();
  (*(v3 + 8))(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t Array.chunked(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 1)
  {
    sub_225CCE8B4();
    sub_225CCF834();
    swift_allocObject();
    v12 = sub_225CCE834();
    *v13 = a2;
    sub_225CCE8B4();

    return v12;
  }

  else
  {
    v14[7] = 0;
    v15 = sub_225CCE894();
    v16 = a1;
    MEMORY[0x28223BE20](v15, v6);
    v14[2] = a3;
    v14[3] = a2;
    v14[4] = a1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9D8);
    v8 = sub_225CCE8B4();
    v9 = sub_2259D8B24(&qword_27D73D9E0, &qword_27D73D9D8);
    return sub_225B3C588(sub_225B3D9AC, v14, v7, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  }
}

uint64_t *sub_225B3C4B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t **a3@<X8>)
{
  v3 = *result;
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_225CCE894();
    if (result >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if (v6 >= v3)
    {
      sub_225CCE8D4();
      sub_225CCF0C4();
      swift_getWitnessTable();
      result = sub_225CCE8C4();
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225B3C588(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v9 = v8;
  v69 = a2;
  v70 = a4;
  v68 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v52 = &v51 - v16;
  v55 = a5;
  v53 = *(a5 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v65 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v66 = &v51 - v21;
  v22 = sub_225CCEFC4();
  v56 = *(v22 - 8);
  v57 = v22;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v59 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v51 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v58 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v64 = *(a3 - 1);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a6;
  v71 = swift_getAssociatedTypeWitness();
  v60 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v38);
  v40 = &v51 - v39;
  v41 = sub_225CCE724();
  v72 = sub_225CCF3D4();
  v67 = sub_225CCF3E4();
  sub_225CCF384();
  (*(v64 + 2))(v37, v61, a3);
  v70 = v40;
  v64 = a3;
  result = sub_225CCE714();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v63 + 48);
    v44 = (v63 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_225CCF014();
      result = (*v43)(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v68(v29, v66);
      if (v9)
      {
        (*(v60 + 8))(v70, v71);

        (*(v53 + 32))(v54, v66, v55);
        return (*v44)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v44)(v29, AssociatedTypeWitness);
      sub_225CCF3C4();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v45 = v59;
  sub_225CCF014();
  v46 = v45;
  v47 = v63;
  v48 = *(v63 + 48);
  v66 = (v63 + 48);
  v64 = v48;
  if (v48(v45, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v60 + 8))(v70, v71);
    (*(v56 + 8))(v46, v57);
    return v72;
  }

  else
  {
    v63 = *(v47 + 32);
    v49 = (v47 + 8);
    v50 = v52;
    while (1)
    {
      (v63)(v50, v46, AssociatedTypeWitness);
      v68(v50, v65);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v49)(v50, AssociatedTypeWitness);
      sub_225CCF3C4();
      sub_225CCF014();
      if (v64(v46, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v49)(v50, AssociatedTypeWitness);
    (*(v60 + 8))(v70, v71);

    return (*(v53 + 32))(v54, v65, v55);
  }
}

Swift::Bool __swiftcall NSError.userInfoBool(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = [v2 userInfo];
  v6 = sub_225CCE2D4();

  if (*(v6 + 16) && (v7 = sub_2259F18D4(countAndFlagsBits, object), (v8 & 1) != 0))
  {
    sub_2259CB810(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
  }

  return 0;
}

Swift::Bool __swiftcall Error.userInfoBool(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *(v1 - 8);
  MEMORY[0x28223BE20](a1._countAndFlagsBits, a1._object);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, v8);
  v9 = sub_225CCF8E4();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 8))(v7, v2);
  }

  else
  {
    v10 = swift_allocError();
    (*(v5 + 32))(v11, v7, v2);
  }

  v12 = sub_225CCCCB4();

  v13 = [v12 userInfo];
  v14 = sub_225CCE2D4();

  if (*(v14 + 16) && (v15 = sub_2259F18D4(countAndFlagsBits, object), (v16 & 1) != 0))
  {
    sub_2259CB810(*(v14 + 56) + 32 * v15, v19);

    if (swift_dynamicCast())
    {
      return v18[15];
    }
  }

  else
  {
  }

  return 0;
}

float CGRect.area.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return Width * CGRectGetHeight(v10);
}

Swift::Double __swiftcall Double.addingRandomInterval(within:)(Swift::Double within)
{
  if (within < 0.0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = within;
  if ((*&within & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return within;
  }

  v3 = v1;
  v4 = sub_225B3D47C(0x20000000000001uLL);
  v5 = vcvtd_n_f64_u64(v4, 0x35uLL) * v2 + 0.0;
  if (v4 == 0x20000000000000)
  {
    v5 = v2;
  }

  return v5 + v3;
}

uint64_t Double.formattedRounded.getter(double a1)
{
  v30 = sub_225CCF8F4();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_225CCCD84();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9E8);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v28 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v28 - v23;
  v31 = a1;
  sub_225CCD164();
  v28 = sub_225B3D9D0();
  sub_225CCCD14();
  sub_225CCCD74();
  MEMORY[0x22AA6B570](v9, v12);
  (*(v6 + 8))(v9, v29);
  v25 = *(v13 + 8);
  v25(v17, v12);
  v26 = v30;
  (*(v2 + 104))(v5, *MEMORY[0x277D84678], v30);
  MEMORY[0x22AA6B560](v5, 0, 1, v12);
  (*(v2 + 8))(v5, v26);
  v25(v21, v12);
  sub_2259D8B24(&qword_27D73D9F8, &qword_27D73D9E8);
  sub_225CCE2A4();
  v25(v24, v12);
  return v32;
}

_BYTE *sub_225B3D3E8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_225A6D08C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2259D8390(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2259D840C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_225B3D47C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AA6F970](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AA6F970](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_225B3D508(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_225CCF4E4();
      sub_2259D8718(0, &qword_27D73AC58);
      swift_dynamicCast();
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_225CCF4A4() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_225CCF4B4();
  sub_2259D8718(0, &qword_27D73AC58);
  swift_dynamicCast();
  a2 = sub_2259F1A58(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

id sub_225B3D6D8(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_2259CB810(*(a5 + 56) + 32 * a2, result);

  return v6;
}

uint64_t sub_225B3D78C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225B35EA0(a1, v4);
}

uint64_t sub_225B3D834(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v8 = *(v2 + 3);
  v7 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2259FE39C;

  return sub_225A0047C(v6, a1, a2, v8, v7);
}

unint64_t sub_225B3D8F8()
{
  result = qword_27D73D9C0;
  if (!qword_27D73D9C0)
  {
    sub_225CCD0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D9C0);
  }

  return result;
}

uint64_t sub_225B3D950(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225B3D9D0()
{
  result = qword_27D73D9F0;
  if (!qword_27D73D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D9F0);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s13CoreIDVShared20withExtendedLifetimeyq0_x_q0_yYaYbq_YKXEtYaq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v16;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a2;
  v8[3] = a5;
  v8[8] = *(a6 - 8);
  v11 = swift_task_alloc();
  v8[9] = v11;
  v14 = (a3 + *a3);
  v12 = swift_task_alloc();
  v8[10] = v12;
  *v12 = v8;
  v12[1] = sub_225B3DC48;

  return v14(a1, v11);
}

uint64_t sub_225B3DC48()
{

  if (v0)
  {
    v1 = sub_225B3DE08;
  }

  else
  {
    v1 = sub_225B3DD58;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_225B3DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_225B3E6CC(v8[2], nullsub_1, 0, v8[3], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], a8);

  v9 = v8[1];

  return v9();
}

uint64_t sub_225B3DE08()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(v0[8] + 32))(v0[7], v0[9], v0[4]);
  sub_225B3E6CC(v2, nullsub_1, 0, v1, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v3);

  v4 = v0[1];

  return v4();
}

uint64_t waitForTerminationSignal()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225B3DFB0;
  v2 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v1, 0, 0, 0xD00000000000001ALL, 0x8000000225D1DFB0, sub_225B3E0AC, 0, v2);
}

uint64_t sub_225B3DFB0()
{

  return MEMORY[0x2822009F8](sub_225B362D8, 0, 0);
}

uint64_t sub_225B3E0AC(uint64_t a1)
{
  v2 = sub_225CCDA34();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCDA64();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - v13;
  v15 = sub_225CCD964();
  signal(15, v15);
  sub_225B3E3E0();
  v16 = sub_225CCEE24();
  swift_getObjectType();
  (*(v11 + 16))(v14, a1, v10);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v11 + 32))(v18 + v17, v14, v10);
  aBlock[4] = sub_225B3E644;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_225A1A044();
  sub_225A1A048();
  sub_225CCEE34();
  _Block_release(v19);
  (*(v23 + 8))(v5, v24);
  (*(v21 + 8))(v9, v22);

  sub_225CCEE64();
  return swift_unknownObjectRelease();
}

unint64_t sub_225B3E3E0()
{
  result = qword_28105B8C8;
  if (!qword_28105B8C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105B8C8);
  }

  return result;
}

uint64_t sub_225B3E42C()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v1 + 16))(v4, &v5[v6], v0);
  os_unfair_lock_unlock(&v5[v7]);
  v8 = sub_225CCD934();
  v9 = sub_225CCECF4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2259A7000, v8, v9, "SIGTERM received; shutting down", v10, 2u);
    MEMORY[0x22AA6F950](v10, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_getObjectType();
  sub_225CCEE44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00);
  return sub_225CCE934();
}

uint64_t sub_225B3E644()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00);

  return sub_225B3E42C();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225B3E6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

void defaultLogger()(uint64_t a1@<X8>)
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = off_28105B918;
  v3 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v4));
  v5 = sub_225CCD954();
  (*(*(v5 - 8) + 16))(a1, &v2[v3], v5);

  os_unfair_lock_unlock(&v2[v4]);
}

void Logger.sensitive(_:)(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v2;
    swift_once();
    v2 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v2;
    v3 = sub_225CCE444();
    v4 = [v12 BOOLForKey:v3];

    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = a1();
    v7 = v6;
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(v5, v7, &v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v2 = v13;
  }
}

void sub_225B3EAA4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v20 = v3;
    swift_once();
    v3 = v20;
  }

  if (byte_28105B9F8 == 1)
  {
    v18 = v3;
    v4 = sub_225CCE444();
    v5 = [v18 BOOLForKey:v4];

    if ((v5 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v21 = 0xD00000000000001CLL;
    v22 = 0x8000000225D1E300;
    v6 = *(a2 + 8);
    if (v6 >> 60 == 15)
    {
      v7 = 0xE500000000000000;
      v8 = 0x3E6C696E3CLL;
    }

    else
    {
      v9 = *a2;
      sub_2259CB710(*a2, *(a2 + 8));
      v10 = sub_225CCCF84();
      v7 = v11;
      sub_2259B97A8(v9, v6);
      v8 = v10;
    }

    MEMORY[0x22AA6CE70](v8, v7);

    v13 = v21;
    v12 = v22;
    v19 = sub_225CCD934();
    v14 = sub_225CCED04();
    if (os_log_type_enabled(v19, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = sub_2259BE198(v13, v12, &v21);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_2259A7000, v19, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA6F950](v16, -1, -1);
      MEMORY[0x22AA6F950](v15, -1, -1);

      return;
    }

    v3 = v19;
  }
}

void sub_225B3ED40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v8 = v0;
    swift_once();
    v0 = v8;
  }

  if (byte_28105B9F8 == 1)
  {
    v6 = v0;
    v1 = sub_225CCE444();
    v2 = [v6 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    v7 = sub_225CCD934();
    v3 = sub_225CCED04();
    if (os_log_type_enabled(v7, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2259BE198(0xD000000000000032, 0x8000000225D1E200, &v9);
      _os_log_impl(&dword_2259A7000, v7, v3, "%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x22AA6F950](v5, -1, -1);
      MEMORY[0x22AA6F950](v4, -1, -1);

      return;
    }

    v0 = v7;
  }
}

void sub_225B3EF24()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v8 = v0;
    swift_once();
    v0 = v8;
  }

  if (byte_28105B9F8 == 1)
  {
    v6 = v0;
    v1 = sub_225CCE444();
    v2 = [v6 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    v7 = sub_225CCD934();
    v3 = sub_225CCED04();
    if (os_log_type_enabled(v7, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2259BE198(0xD000000000000032, 0x8000000225D1E2C0, &v9);
      _os_log_impl(&dword_2259A7000, v7, v3, "%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x22AA6F950](v5, -1, -1);
      MEMORY[0x22AA6F950](v4, -1, -1);

      return;
    }

    v0 = v7;
  }
}

void sub_225B3F108(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v20 = v3;
    swift_once();
    v3 = v20;
  }

  if (byte_28105B9F8 == 1)
  {
    v18 = v3;
    v4 = sub_225CCE444();
    v5 = [v18 BOOLForKey:v4];

    if ((v5 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v21 = 0xD00000000000001DLL;
    v22 = 0x8000000225D1E280;
    v6 = *(a2 + 8);
    if (v6 >> 60 == 15)
    {
      v7 = 0xE500000000000000;
      v8 = 0x3E6C696E3CLL;
    }

    else
    {
      v9 = *a2;
      sub_2259CB710(*a2, *(a2 + 8));
      v10 = sub_225CCCF84();
      v7 = v11;
      sub_2259B97A8(v9, v6);
      v8 = v10;
    }

    MEMORY[0x22AA6CE70](v8, v7);

    MEMORY[0x22AA6CE70](32, 0xE100000000000000);
    v13 = v21;
    v12 = v22;
    v19 = sub_225CCD934();
    v14 = sub_225CCED04();
    if (os_log_type_enabled(v19, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = sub_2259BE198(v13, v12, &v21);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_2259A7000, v19, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA6F950](v16, -1, -1);
      MEMORY[0x22AA6F950](v15, -1, -1);

      return;
    }

    v3 = v19;
  }
}

void Logger.cryptoParam(_:)(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v2;
    swift_once();
    v2 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v2;
    v3 = sub_225CCE444();
    v4 = [v12 BOOLForKey:v3];

    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = a1();
    v7 = v6;
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(v5, v7, &v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v2 = v13;
  }
}

Swift::String_optional __swiftcall processName()()
{
  if (qword_28105B6C0 != -1)
  {
    swift_once();
  }

  v0 = off_28105B6C8;
  os_unfair_lock_lock(off_28105B6C8 + 8);
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);

  os_unfair_lock_unlock(v0 + 8);
  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_225B3F638()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DA90);
  v5 = swift_allocObject();
  *&v5[(*(*v5 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = (*(v1 + 32))(&v5[*(*v5 + *MEMORY[0x277D841D0] + 16)], v4, v0);
  off_28105B918 = v5;
  return result;
}

void setDefaultLogger(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_28105B910 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = off_28105B918;
  MEMORY[0x28223BE20](a1, a2);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v2[v4]);
  sub_225B406CC(&v2[v3]);
  os_unfair_lock_unlock(&v2[v4]);
}

uint64_t analyticsLogger()@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D739F88 != -1)
  {
    swift_once();
  }

  v2 = sub_225CCD954();
  v3 = __swift_project_value_buffer(v2, qword_27D73DA70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_225B3F98C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DA88);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  off_28105B6C8 = result;
  return result;
}

Swift::Void __swiftcall setProcessName(_:)(Swift::String a1)
{
  if (qword_28105B6C0 != -1)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    object = a1._object;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
    a1._object = object;
  }

  v1 = off_28105B6C8;
  MEMORY[0x28223BE20](a1._countAndFlagsBits, a1._object);
  os_unfair_lock_lock(v1 + 8);
  sub_225B4078C(&v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_225B3FAAC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_225CCD954();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_225CCD944();
}

Swift::Void __swiftcall logMilestone(tag:description:)(Swift::String tag, Swift::String description)
{
  object = description._object;
  countAndFlagsBits = description._countAndFlagsBits;
  v4 = tag._object;
  v5 = tag._countAndFlagsBits;
  if (qword_28105A938 != -1)
  {
    swift_once();
  }

  v6 = sub_225CCD954();
  __swift_project_value_buffer(v6, qword_28105A940);

  oslog = sub_225CCD934();
  v7 = sub_225CCED04();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2259BE198(v5, v4, &v11);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2259BE198(countAndFlagsBits, object, &v11);
    _os_log_impl(&dword_2259A7000, oslog, v7, "(%s) %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v9, -1, -1);
    MEMORY[0x22AA6F950](v8, -1, -1);
  }
}

void sub_225B3FCC8()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD00000000000003CLL, 0x8000000225D1E040, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void sub_225B3FE18()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD000000000000035, 0x8000000225D1E080, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void sub_225B3FF68()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD00000000000002ALL, 0x8000000225D1E0C0, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void sub_225B400B8()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD000000000000028, 0x8000000225D1E0F0, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void sub_225B40208()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD000000000000029, 0x8000000225D1E120, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void Logger.verboseIQ(_:)(uint64_t (*a1)(void))
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    v2 = a1();
    v4 = v3;
    oslog = sub_225CCD934();
    v5 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      v8 = sub_2259BE198(v2, v4, &v10);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_2259A7000, oslog, v5, "%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AA6F950](v7, -1, -1);
      MEMORY[0x22AA6F950](v6, -1, -1);
    }

    else
    {
    }
  }
}

void Logger.logPADFrame(_:)(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v2;
    swift_once();
    v2 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v2;
    v3 = sub_225CCE444();
    v4 = [v12 BOOLForKey:v3];

    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = a1();
    v7 = v6;
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(v5, v7, &v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v2 = v13;
  }
}

uint64_t sub_225B406CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t sub_225B4078C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

void sub_225B407D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v17 = v5;
    swift_once();
    v5 = v17;
  }

  if (byte_28105B9F8 == 1)
  {
    v15 = v5;
    v6 = sub_225CCE444();
    v7 = [v15 BOOLForKey:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = sub_2259BCD58(a2, a3);
    v10 = v9;
    v16 = sub_225CCD934();
    v11 = sub_225CCED04();
    if (os_log_type_enabled(v16, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sub_2259BE198(v8, v10, &v18);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_2259A7000, v16, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA6F950](v13, -1, -1);
      MEMORY[0x22AA6F950](v12, -1, -1);

      return;
    }

    v5 = v16;
  }
}

void sub_225B409D4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v12 = v0;
    swift_once();
    v0 = v12;
  }

  if (byte_28105B9F8 == 1)
  {
    v10 = v0;
    v1 = sub_225CCE444();
    v2 = [v10 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    v3 = sub_2259BCF0C();
    v5 = v4;
    v11 = sub_225CCD934();
    v6 = sub_225CCED04();
    if (os_log_type_enabled(v11, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = sub_2259BE198(v3, v5, &v13);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_2259A7000, v11, v6, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AA6F950](v8, -1, -1);
      MEMORY[0x22AA6F950](v7, -1, -1);

      return;
    }

    v0 = v11;
  }
}

void sub_225B40BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v5;
    v6 = sub_225CCE444();
    v7 = [v12 BOOLForKey:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v15[1] = 0x8000000225D1DFD0;
    MEMORY[0x22AA6CE70](a2, a3);
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(0xD000000000000017, 0x8000000225D1DFD0, v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v5 = v13;
  }
}

void sub_225B40E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v5;
    v6 = sub_225CCE444();
    v7 = [v12 BOOLForKey:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v15[1] = 0x8000000225D1DFF0;
    MEMORY[0x22AA6CE70](a2, a3);
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(0xD000000000000024, 0x8000000225D1DFF0, v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v5 = v13;
  }
}

void sub_225B4105C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v13 = v3;
    swift_once();
    v3 = v13;
  }

  if (byte_28105B9F8 == 1)
  {
    v11 = v3;
    v4 = sub_225CCE444();
    v5 = [v11 BOOLForKey:v4];

    if ((v5 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v14[1] = 0x8000000225D1E020;
    v6 = MEMORY[0x22AA6D090](a2, MEMORY[0x277D837D0]);
    MEMORY[0x22AA6CE70](v6);

    v12 = sub_225CCD934();
    v7 = sub_225CCED04();
    if (os_log_type_enabled(v12, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14[0] = v9;
      *v8 = 136315138;
      v10 = sub_2259BE198(0xD000000000000010, 0x8000000225D1E020, v14);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_2259A7000, v12, v7, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AA6F950](v9, -1, -1);
      MEMORY[0x22AA6F950](v8, -1, -1);

      return;
    }

    v3 = v12;
  }
}

void sub_225B412A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v17 = v5;
    swift_once();
    v5 = v17;
  }

  if (byte_28105B9F8 == 1)
  {
    v15 = v5;
    v6 = sub_225CCE444();
    v7 = [v15 BOOLForKey:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = sub_225BEAFD0(a2, a3);
    v10 = v9;
    v16 = sub_225CCD934();
    v11 = sub_225CCED04();
    if (os_log_type_enabled(v16, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sub_2259BE198(v8, v10, &v18);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_2259A7000, v16, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA6F950](v13, -1, -1);
      MEMORY[0x22AA6F950](v12, -1, -1);

      return;
    }

    v5 = v16;
  }
}

void sub_225B414DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v23 = v11;
    swift_once();
    v11 = v23;
  }

  if (byte_28105B9F8 == 1)
  {
    v21 = v11;
    v12 = sub_225CCE444();
    v13 = [v21 BOOLForKey:v12];

    if ((v13 & 1) == 0)
    {
      return;
    }

    v14 = a6(a2, a3, a4, a5);
    v16 = v15;
    v22 = sub_225CCD934();
    v17 = sub_225CCED04();
    if (os_log_type_enabled(v22, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = sub_2259BE198(v14, v16, &v24);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_2259A7000, v22, v17, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA6F950](v19, -1, -1);
      MEMORY[0x22AA6F950](v18, -1, -1);

      return;
    }

    v11 = v22;
  }
}

void sub_225B41718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v27 = v15;
    swift_once();
    v15 = v27;
  }

  if (byte_28105B9F8 == 1)
  {
    v25 = v15;
    v16 = sub_225CCE444();
    v17 = [v25 BOOLForKey:v16];

    if ((v17 & 1) == 0)
    {
      return;
    }

    v18 = a8(a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v26 = sub_225CCD934();
    v21 = sub_225CCED04();
    if (os_log_type_enabled(v26, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = sub_2259BE198(v18, v20, &v28);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_2259A7000, v26, v21, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA6F950](v23, -1, -1);
      MEMORY[0x22AA6F950](v22, -1, -1);

      return;
    }

    v15 = v26;
  }
}

void sub_225B41958()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E340;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD00000000000001CLL, 0x8000000225D1E340, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B41BAC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E320;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD00000000000001ELL, 0x8000000225D1E320, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B41E28(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v19 = v5;
    swift_once();
    v5 = v19;
  }

  if (byte_28105B9F8 == 1)
  {
    v18 = v5;
    v6 = sub_225CCE444();
    v7 = [v18 BOOLForKey_];

    if (v7)
    {
      *&v20[0] = 0;
      *(&v20[0] + 1) = 0xE000000000000000;
      sub_225CCF204();
      v22 = v20[0];
      MEMORY[0x22AA6CE70](0xD000000000000040, 0x8000000225D1E3F0);
      v8 = a2[7];
      v20[6] = a2[6];
      v20[7] = v8;
      v21[0] = a2[8];
      *(v21 + 9) = *(a2 + 137);
      v9 = a2[3];
      v20[2] = a2[2];
      v20[3] = v9;
      v10 = a2[5];
      v20[4] = a2[4];
      v20[5] = v10;
      v11 = a2[1];
      v20[0] = *a2;
      v20[1] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      sub_225CCF434();
      v12 = v22;
      v13 = sub_225CCD934();
      v14 = sub_225CCED04();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v20[0] = v16;
        *v15 = 136315138;
        v17 = sub_2259BE198(v12, *(&v12 + 1), v20);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_2259A7000, v13, v14, "%s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x22AA6F950](v16, -1, -1);
        MEMORY[0x22AA6F950](v15, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

void sub_225B420DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v5;
    v6 = sub_225CCE444();
    v7 = [v12 BOOLForKey:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    v15[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D1E240);
    MEMORY[0x22AA6CE70](a2, a3);
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(0, 0xE000000000000000, v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v5 = v13;
  }
}

void sub_225B42320()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E2A0;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    MEMORY[0x22AA6CE70](32, 0xE100000000000000);
    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD00000000000001ELL, 0x8000000225D1E2A0, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B42584(uint64_t a1, _OWORD *a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v17 = v3;
    swift_once();
    v3 = v17;
  }

  if (byte_28105B9F8 == 1)
  {
    v16 = v3;
    v4 = sub_225CCE444();
    v5 = [v16 BOOLForKey_];

    if (v5)
    {
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_225CCF204();
      v20 = v18[0];
      MEMORY[0x22AA6CE70](0xD00000000000003CLL, 0x8000000225D1E360);
      v6 = a2[7];
      v18[6] = a2[6];
      v18[7] = v6;
      v19[0] = a2[8];
      *(v19 + 9) = *(a2 + 137);
      v7 = a2[3];
      v18[2] = a2[2];
      v18[3] = v7;
      v8 = a2[5];
      v18[4] = a2[4];
      v18[5] = v8;
      v9 = a2[1];
      v18[0] = *a2;
      v18[1] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFE8);
      sub_225CCF434();
      v10 = v20;
      v11 = sub_225CCD934();
      v12 = sub_225CCED04();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *&v18[0] = v14;
        *v13 = 136315138;
        v15 = sub_2259BE198(v10, *(&v10 + 1), v18);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_2259A7000, v11, v12, "%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA6F950](v14, -1, -1);
        MEMORY[0x22AA6F950](v13, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

void sub_225B42820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v18 = v9;
    swift_once();
    v9 = v18;
  }

  if (byte_28105B9F8 == 1)
  {
    v17 = v9;
    v10 = sub_225CCE444();
    v11 = [v17 BOOLForKey_];

    if (v11)
    {
      sub_225CCF204();
      v19[4] = 0;
      v19[5] = 0xE000000000000000;
      MEMORY[0x22AA6CE70](0xD000000000000045, 0x8000000225D1E3A0);
      v19[0] = a2;
      v19[1] = a3;
      v19[2] = a4;
      v19[3] = a5;
      sub_225CCF434();
      v12 = sub_225CCD934();
      v13 = sub_225CCED04();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19[0] = v15;
        *v14 = 136315138;
        v16 = sub_2259BE198(0, 0xE000000000000000, v19);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_2259A7000, v12, v13, "%s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x22AA6F950](v15, -1, -1);
        MEMORY[0x22AA6F950](v14, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

void sub_225B42AA8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E1E0;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD000000000000011, 0x8000000225D1E1E0, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B42CF4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E1C0;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD000000000000013, 0x8000000225D1E1C0, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B42F40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E1A0;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD000000000000011, 0x8000000225D1E1A0, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B431EC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E170;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD000000000000028, 0x8000000225D1E170, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B43458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v19 = v7;
    swift_once();
    v7 = v19;
  }

  if (byte_28105B9F8 == 1)
  {
    v17 = v7;
    v8 = sub_225CCE444();
    v9 = [v17 BOOLForKey:v8];

    if ((v9 & 1) == 0)
    {
      return;
    }

    v10 = a4(a2, a3);
    v12 = v11;
    v18 = sub_225CCD934();
    v13 = sub_225CCED04();
    if (os_log_type_enabled(v18, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v16 = sub_2259BE198(v10, v12, &v20);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_2259A7000, v18, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA6F950](v15, -1, -1);
      MEMORY[0x22AA6F950](v14, -1, -1);

      return;
    }

    v7 = v18;
  }
}

void sub_225B43660(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v15 = v3;
    swift_once();
    v3 = v15;
  }

  if (byte_28105B9F8 == 1)
  {
    v13 = v3;
    v4 = sub_225CCE444();
    v5 = [v13 BOOLForKey:v4];

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = sub_225A8ECEC(a2);
    v8 = v7;
    v14 = sub_225CCD934();
    v9 = sub_225CCED04();
    if (os_log_type_enabled(v14, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_2259BE198(v6, v8, &v16);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_2259A7000, v14, v9, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AA6F950](v11, -1, -1);
      MEMORY[0x22AA6F950](v10, -1, -1);

      return;
    }

    v3 = v14;
  }
}

void NetworkMonitor.currentPath.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if (*(v3 + 16))
  {
    sub_225CCD984();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_225CCDA04();
  (*(*(v5 - 8) + 56))(a1, v4, 1, v5);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_225B438FC()
{
  result = sub_225B4391C();
  qword_28105B048 = result;
  return result;
}

uint64_t sub_225B4391C()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v1 + 16))(v4, &v5[v6], v0);
  os_unfair_lock_unlock(&v5[v7]);
  v8 = sub_225CCD934();
  v9 = sub_225CCED04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2259A7000, v8, v9, "Creating shared NetworkMonitor", v10, 2u);
    MEMORY[0x22AA6F950](v10, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for NetworkMonitor();
  v11 = swift_allocObject();
  sub_225B43DBC();
  NetworkMonitor.start()();
  return v11;
}

Swift::Void __swiftcall NetworkMonitor.start()()
{
  v1 = sub_225CCD954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 24));
  if (v7)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v8 = off_28105B918;
    v9 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v10 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v10));
    (*(v2 + 16))(v5, &v8[v9], v1);
    os_unfair_lock_unlock(&v8[v10]);
    v11 = sub_225CCD934();
    v12 = sub_225CCED04();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2259A7000, v11, v12, "NetworkMonitor already started, ignoring.", v13, 2u);
      MEMORY[0x22AA6F950](v13, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    os_unfair_lock_lock((v6 + 24));
    sub_225B45150((v6 + 16));

    os_unfair_lock_unlock((v6 + 24));
  }
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (qword_28105B040 != -1)
  {
    swift_once();
  }
}

void *sub_225B43DBC()
{
  v11[0] = sub_225CCEDA4();
  v1 = *(v11[0] - 8);
  MEMORY[0x28223BE20](v11[0], v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCED84();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_225CCDA64();
  MEMORY[0x28223BE20](v7 - 8, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DA98);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  v0[2] = v9;
  sub_225B451E4();
  sub_225CCDA54();
  v11[1] = MEMORY[0x277D84F90];
  sub_225B45230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF10);
  sub_225B45288();
  sub_225CCF0E4();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v11[0]);
  v0[3] = sub_225CCEDD4();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_225B44004(uint64_t *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "NetworkMonitor start called", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_225CCD9D4();
  swift_allocObject();
  v13 = sub_225CCD9C4();

  *a1 = v13;
  swift_allocObject();
  swift_weakInit();

  sub_225CCD994();

  return sub_225CCD9A4();
}

uint64_t sub_225B44280(uint64_t a1)
{
  v116 = a1;
  v1 = sub_225CCD974();
  v2 = *(v1 - 8);
  v117 = v1;
  v118 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_225CCDA04();
  v104 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v6);
  v105 = v7;
  v106 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v97 - v10;
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v97 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v97 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v97 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v103 = &v97 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v97 - v34;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v115 = result;
  if (result)
  {
    v98 = v29;
    v99 = v25;
    v100 = v21;
    v102 = v17;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v37 = off_28105B918;
    v38 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v39 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v39));
    v40 = v13;
    v41 = *(v13 + 16);
    v111 = v13 + 16;
    v112 = v38;
    v110 = v41;
    v41(v35, &v37[v38], v12);
    v113 = v39;
    v101 = v37;
    os_unfair_lock_unlock(&v37[v39]);
    v42 = sub_225CCD934();
    v43 = sub_225CCED04();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v12;
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2259A7000, v42, v43, "NetworkMonitor: update handler called.", v45, 2u);
      v46 = v45;
      v12 = v44;
      MEMORY[0x22AA6F950](v46, -1, -1);
    }

    v108 = v12;

    v47 = *(v40 + 8);
    v109 = v40 + 8;
    v114 = v47;
    v47(v35, v12);
    v48 = sub_225CCE994();
    (*(*(v48 - 8) + 56))(v11, 1, 1, v48);
    v49 = v104;
    v51 = v106;
    v50 = v107;
    (*(v104 + 16))(v106, v116, v107);
    sub_225CCE974();
    v52 = v115;

    v53 = sub_225CCE964();
    v54 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D85700];
    *(v55 + 2) = v53;
    *(v55 + 3) = v56;
    *(v55 + 4) = v52;
    (*(v49 + 32))(&v55[v54], v51, v50);
    sub_225AFBF30(0, 0, v11, &unk_225CEF2C8, v55);

    v58 = v117;
    v57 = v118;
    v59 = *(v118 + 104);
    v59(v5, *MEMORY[0x277CD8CB8], v117);
    LOBYTE(v53) = sub_225CCD9F4();
    v60 = *(v57 + 8);
    v118 = v57 + 8;
    v60(v5, v58);
    v61 = v101;
    if (v53)
    {
      v62 = v113;
      os_unfair_lock_lock(&v101[v113]);
      v63 = v103;
      v64 = v108;
      v110(v103, &v61[v112], v108);
      os_unfair_lock_unlock(&v61[v62]);
      v65 = sub_225CCD934();
      v66 = sub_225CCED04();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2259A7000, v65, v66, "DEVICE ON CELLULAR NETWORK", v67, 2u);
        MEMORY[0x22AA6F950](v67, -1, -1);
      }

      v114(v63, v64);
    }

    v68 = v117;
    v59(v5, *MEMORY[0x277CD8CA0], v117);
    v69 = sub_225CCD9F4();
    v60(v5, v68);
    if (v69)
    {
      v70 = v113;
      os_unfair_lock_lock(&v61[v113]);
      v71 = v98;
      v72 = v108;
      v110(v98, &v61[v112], v108);
      os_unfair_lock_unlock(&v61[v70]);
      v73 = sub_225CCD934();
      v74 = sub_225CCED04();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_2259A7000, v73, v74, "DEVICE ON WIRED ETHERNET NETWORK", v75, 2u);
        MEMORY[0x22AA6F950](v75, -1, -1);
      }

      v114(v71, v72);
    }

    v76 = v117;
    v59(v5, *MEMORY[0x277CD8CA8], v117);
    v77 = sub_225CCD9F4();
    v60(v5, v76);
    if (v77)
    {
      v78 = v113;
      os_unfair_lock_lock(&v61[v113]);
      v79 = v99;
      v80 = v108;
      v110(v99, &v61[v112], v108);
      os_unfair_lock_unlock(&v61[v78]);
      v81 = sub_225CCD934();
      v82 = sub_225CCED04();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_2259A7000, v81, v82, "DEVICE ON WIFI NETWORK", v83, 2u);
        MEMORY[0x22AA6F950](v83, -1, -1);
      }

      v114(v79, v80);
    }

    v84 = v117;
    v59(v5, *MEMORY[0x277CD8CB0], v117);
    v85 = sub_225CCD9F4();
    v60(v5, v84);
    v86 = v102;
    v87 = v108;
    if (v85)
    {
      v88 = v113;
      os_unfair_lock_lock(&v61[v113]);
      v89 = v100;
      v110(v100, &v61[v112], v87);
      os_unfair_lock_unlock(&v61[v88]);
      v90 = sub_225CCD934();
      v91 = sub_225CCED04();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_2259A7000, v90, v91, "DEVICE ON OTHER NETWORK", v92, 2u);
        MEMORY[0x22AA6F950](v92, -1, -1);
      }

      v114(v89, v87);
    }

    if (sub_225CCD9E4())
    {
      v93 = v113;
      os_unfair_lock_lock(&v61[v113]);
      v110(v86, &v61[v112], v87);
      os_unfair_lock_unlock(&v61[v93]);
      v94 = sub_225CCD934();
      v95 = sub_225CCED04();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_2259A7000, v94, v95, "DEVICE ON EXPENSIVE NETWORK", v96, 2u);
        MEMORY[0x22AA6F950](v96, -1, -1);
      }

      else
      {
      }

      return (v114)(v86, v87);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_225B44D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_225CCE974();
  v5[5] = sub_225CCE964();
  v7 = sub_225CCE904();

  return MEMORY[0x2822009F8](sub_225B44DE8, v7, v6);
}

uint64_t sub_225B44DE8()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 32);
    v3 = *(*(v0 + 24) + 40);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v2, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v5 = *(v0 + 8);

  return v5();
}

Swift::Void __swiftcall NetworkMonitor.stop()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "NetworkMonitor stop called", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = *(v1 + 16);
  os_unfair_lock_lock((v13 + 24));
  if (*(v13 + 16))
  {
    sub_225CCD9B4();
  }

  *(v13 + 16) = 0;

  os_unfair_lock_unlock((v13 + 24));
}

uint64_t NetworkMonitor.deinit()
{

  sub_225B4516C(v0 + 32);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{

  sub_225B4516C(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_225B451E4()
{
  result = qword_28105BFA8;
  if (!qword_28105BFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105BFA8);
  }

  return result;
}

unint64_t sub_225B45230()
{
  result = qword_28105BFB0;
  if (!qword_28105BFB0)
  {
    sub_225CCED84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105BFB0);
  }

  return result;
}

unint64_t sub_225B45288()
{
  result = qword_28105BFC8;
  if (!qword_28105BFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105BFC8);
  }

  return result;
}

uint64_t sub_225B452F4(uint64_t a1)
{
  v4 = *(sub_225CCDA04() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2259FE39C;

  return sub_225B44D4C(a1, v6, v7, v8, v1 + v5);
}

id NSError.init(domain:code:localizedDescription:debugDescription:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_225B2C92C(MEMORY[0x277D84F90]);
  v13 = MEMORY[0x277D837D0];
  if (a5)
  {
    v14 = sub_225CCE474();
    v16 = v15;
    v40 = v13;
    *&v39 = a4;
    *(&v39 + 1) = a5;
    sub_2259B9624(&v39, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v38, v14, v16, isUniquelyReferenced_nonNull_native);
  }

  if (a7)
  {
    v18 = sub_225CCE474();
    v20 = v19;
    v40 = v13;
    *&v39 = a6;
    *(&v39 + 1) = a7;
    sub_2259B9624(&v39, v38);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v38, v18, v20, v21);
  }

  if (a8)
  {
    v22 = a8;
    v23 = sub_225CCCCB4();
    v24 = [v23 domain];
    if (!v24)
    {
      sub_225CCE474();
      v24 = sub_225CCE444();
    }

    v25 = [v23 code];
    v26 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v24 code:v25 userInfo:0];

    v27 = sub_225CCE474();
    v29 = v28;
    v40 = sub_2259E4540();
    *&v39 = v26;
    sub_2259B9624(&v39, v38);
    v30 = v26;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v38, v27, v29, v31);
  }

  v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v33 = sub_225CCE444();

  v34 = sub_225CCE2B4();

  v35 = [v32 initWithDomain:v33 code:a3 userInfo:v34];

  return v35;
}

id static NSError.mapFromError(_:domain:mapper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v5 = sub_225CCCCB4();
  if (!isInternalBuild()())
  {
    v19 = 0;
    v18 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_12;
  }

  v6 = [v5 debugDescription];
  v7 = sub_225CCE474();
  v9 = v8;

  v10 = [v5 userInfo];
  v11 = sub_225CCE2D4();

  v12 = sub_225CCE474();
  if (!*(v11 + 16))
  {
    v17 = v9;
    v18 = v7;

LABEL_9:

    goto LABEL_10;
  }

  v14 = sub_2259F18D4(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    v17 = v9;
    v18 = v7;
    goto LABEL_9;
  }

  v17 = v9;
  v18 = v7;
  sub_2259CB810(*(v11 + 56) + 32 * v14, &v56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v19 = v55[0];
  v20 = v55[0];
LABEL_11:
  v21 = v17;
LABEL_12:
  v22 = [v5 domain];
  v23 = sub_225CCE474();
  v25 = v24;

  v54 = a4(v23, v25, [v5 code]);
  v27 = v26;
  v29 = v28;

  sub_225B2C92C(MEMORY[0x277D84F90]);
  v30 = sub_225CCE474();
  v32 = v31;
  v33 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D837D0];
  *&v56 = v27;
  *(&v56 + 1) = v29;
  sub_2259B9624(&v56, v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_225A03F40(v55, v30, v32, isUniquelyReferenced_nonNull_native);

  v35 = sub_225CCE474();
  v37 = v36;
  v57 = v33;
  *&v56 = v18;
  *(&v56 + 1) = v21;
  sub_2259B9624(&v56, v55);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A03F40(v55, v35, v37, v38);

  if (v19)
  {
    v39 = v19;
    v40 = sub_225CCCCB4();
    v41 = [v40 domain];
    if (!v41)
    {
      sub_225CCE474();
      v41 = sub_225CCE444();
    }

    v42 = [v40 code];
    v43 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v41 code:v42 userInfo:0];

    v44 = sub_225CCE474();
    v46 = v45;
    v57 = sub_2259E4540();
    *&v56 = v43;
    sub_2259B9624(&v56, v55);
    v47 = v43;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v55, v44, v46, v48);
  }

  v49 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v50 = sub_225CCE444();
  v51 = sub_225CCE2B4();

  v52 = [v49 initWithDomain:v50 code:v54 userInfo:v51];

  return v52;
}

uint64_t OSTransaction.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  OSTransaction.init(_:)(a1, a2);
  return v4;
}

uint64_t OSTransaction.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = sub_225CCD954();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD124();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = a2;

  MEMORY[0x22AA6CE70](46, 0xE100000000000000);
  sub_225CCD114();
  v15 = sub_225CCD0C4();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  MEMORY[0x22AA6CE70](v15, v17);

  v18 = v36;
  v3[2] = v35;
  v3[3] = v18;
  sub_225CCE544();
  v19 = os_transaction_create();

  if (v19)
  {
    v3[4] = v19;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v21 = off_28105B918;
    v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v23));
    v24 = &v21[v22];
    v25 = v34;
    (*(v6 + 16))(v9, v24, v34);
    os_unfair_lock_unlock(&v21[v23]);

    v26 = sub_225CCD934();
    v27 = sub_225CCECF4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      v30 = v3[2];
      v31 = v3[3];

      v32 = sub_2259BE198(v30, v31, &v35);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2259A7000, v26, v27, "Opened transaction: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AA6F950](v29, -1, -1);
      MEMORY[0x22AA6F950](v28, -1, -1);
    }

    (*(v6 + 8))(v9, v25);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OSTransaction.deinit()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);

  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2259BE198(*(v1 + 16), *(v1 + 24), &v16);
    _os_log_impl(&dword_2259A7000, v10, v11, "Closed transaction: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA6F950](v13, -1, -1);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t OSTransaction.__deallocating_deinit()
{
  OSTransaction.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[16] = v8;
  v9[17] = v12;
  v9[14] = a7;
  v9[15] = a8;
  v9[12] = a5;
  v9[13] = a6;
  v9[10] = a3;
  v9[11] = a4;
  v9[8] = a1;
  v9[9] = a2;
  v9[18] = *(a6 - 8);
  v9[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B4624C, 0, 0);
}

uint64_t sub_225B4624C()
{
  v1 = v0[9];
  v2 = v0[10];
  inited = swift_initStackObject();
  v0[20] = inited;

  OSTransaction.init(_:)(v1, v2);
  v0[7] = inited;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_225B46340;
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[8];

  return _s13CoreIDVShared20withExtendedLifetimeyq0_x_q0_yYaYbq_YKXEtYaq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, (v0 + 7), v9, v10, v5, v7, v8, v6);
}

uint64_t sub_225B46340()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225B464A0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225B464A0()
{
  (*(v0[18] + 32))(v0[17], v0[19], v0[13]);

  v1 = v0[1];

  return v1();
}

id sub_225B465A8(uint64_t a1, unint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v62 - v14;
  v16 = sub_225CCCEA4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCCE84();
  v21 = (*(v17 + 48))(v15, 1, v16);
  v65 = a1;
  if (v21 == 1)
  {
    v66 = v5;
    v64 = v4;
    sub_2259CB640(v15, &unk_27D73E090);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_225CCF204();

    v68 = 0xD00000000000001FLL;
    v69 = 0x8000000225D1E540;
    MEMORY[0x22AA6CE70](a1, a2);
    v22 = v68;
    v23 = v69;
    v63 = 0x8000000225D1E560;
    v24 = MEMORY[0x277D84F90];
    v25 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v26 = swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v11, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v11, 1, v29);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v29)
    {
      v31 = 107;
    }

    else
    {
      v31 = 23;
    }

    v32 = sub_225B2C374(v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v32;
    sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v68);

    v34 = v68;
    v35 = sub_225B29AA0(0, 1, 1, v24);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[56 * v37];
    *(v38 + 4) = v22;
    *(v38 + 5) = v23;
    v39 = v63;
    *(v38 + 6) = 0xD000000000000028;
    *(v38 + 7) = v39;
    *(v38 + 8) = 0x284C52556E65706FLL;
    *(v38 + 9) = 0xEB00000000293A5FLL;
    *(v38 + 10) = 44;
    *v28 = v31;
    *(v28 + 8) = v35;
    *(v28 + 16) = v22;
    *(v28 + 24) = v23;
    *(v28 + 32) = v34;
    *(v28 + 40) = 0;
    swift_willThrow();
    v4 = v64;
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v41 = result;
    v42 = sub_225CCCDF4();
    sub_225B2C92C(MEMORY[0x277D84F90]);
    v43 = sub_225CCE2B4();

    v68 = 0;
    v44 = [v41 openSensitiveURL:v42 withOptions:v43 error:&v68];

    if (v44)
    {
      v45 = *(v17 + 8);
      v46 = v68;
      return v45(v20, v16);
    }

    v66 = v5;
    v47 = v68;
    v26 = sub_225CCCCC4();

    swift_willThrow();
    (*(v17 + 8))(v20, v16);
  }

  v48 = v66;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v49 = off_28105B918;
  v50 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v51 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v51));
  v52 = &v49[v50];
  v53 = v67;
  (*(v48 + 16))(v67, v52, v4);
  os_unfair_lock_unlock(&v49[v51]);

  v54 = v26;
  v55 = sub_225CCD934();
  v56 = sub_225CCED04();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v68 = v59;
    *v57 = 136315394;
    *(v57 + 4) = sub_2259BE198(v65, a2, &v68);
    *(v57 + 12) = 2112;
    v60 = v26;
    v61 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 14) = v61;
    *v58 = v61;
    _os_log_impl(&dword_2259A7000, v55, v56, "Could not open system URL %s. Error: %@", v57, 0x16u);
    sub_2259CB640(v58, &unk_27D73FC90);
    MEMORY[0x22AA6F950](v58, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x22AA6F950](v59, -1, -1);
    MEMORY[0x22AA6F950](v57, -1, -1);
  }

  else
  {
  }

  return (*(v48 + 8))(v53, v4);
}

uint64_t _s13CoreIDVShared27ProcessVisibilityMonitoringPAAE014withForegroundC7Monitor10auditToken9isolation9operationqd__So0I8_token_ta_ScA_pSgYiqd__yYaYbKYActYaKs8SendableRd__lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 104) = v17;
  *(v9 + 112) = v8;
  *(v9 + 96) = v16;
  *(v9 + 80) = v15;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  if (a6)
  {
    swift_getObjectType();
    v10 = sub_225CCE904();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v9 + 120) = v10;
  *(v9 + 128) = v12;

  return MEMORY[0x2822009F8](sub_225B46F7C, v10, v12);
}

uint64_t sub_225B46F7C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  *(v7 + 16) = v2;
  *(v7 + 24) = v8;
  *(v7 + 40) = v1;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *(v7 + 64) = v4;
  *(v7 + 72) = v3;
  *(v7 + 80) = v9;
  v10 = sub_225B4E318(v8, v8);
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v11[1] = sub_225B470DC;
  v12 = *(v0 + 96);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 16);

  return MEMORY[0x282200740](v15, v12, v10, v13, v14, &unk_225CEF390, v7, v12);
}

uint64_t sub_225B470DC()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[15];
    v4 = v2[16];

    return MEMORY[0x2822009F8](sub_225B47214, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_225B47214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B47278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v15;
  v8[15] = v16;
  v8[12] = v13;
  v8[13] = v14;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8[16] = swift_task_alloc();
  v9 = sub_225CCEFC4();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v10 = *(v14 - 8);
  v8[20] = v10;
  v8[21] = *(v10 + 64);
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B47424, 0, 0);
}

uint64_t sub_225B47424()
{
  v51 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v47 = v0[10];
  v8 = v0[7];
  v48 = v2;
  v46 = v0[9];
  v45 = v0[8];
  v9 = v0[6];
  v10 = sub_225CCE994();
  v43 = *(*(v10 - 8) + 56);
  v44 = v10;
  v43(v2, 1, 1);
  (*(v4 + 16))(v1, v9, v7);
  v11 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v12 = (v3 + v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v7;
  *(v13 + 5) = v6;
  *(v13 + 6) = v5;
  (*(v4 + 32))(&v13[v11], v1, v7);
  v14 = &v13[v12];
  *v14 = v8;
  *(v14 + 1) = v45;
  *(v14 + 2) = v46;
  *(v14 + 3) = v47;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v15 = sub_225CCEA94();
  sub_225B48E80(v48, &unk_225CEF420, v13);
  sub_2259CB640(v48, &qword_27D73FE00);
  if ((*(v5 + 8))(v8, v45, v46, v47, v7))
  {
    v16 = v0[23];
    v17 = v0[11];
    v18 = v0[12];
    (v43)(v16, 1, 1, v44);

    sub_225B48E80(v16, v17, v18);
    sub_2259CB640(v16, &qword_27D73FE00);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_225B47A34;
    v20 = v0[19];

    return MEMORY[0x2822004D0](v20, 0, 0, v15);
  }

  else
  {
    v49 = v0[16];
    v22 = v0[9];
    v21 = v0[10];
    v24 = v0[7];
    v23 = v0[8];
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_225CCF204();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D1E6A0);
    v0[26] = v24;
    v0[27] = v23;
    v0[28] = v22;
    v0[29] = v21;
    type metadata accessor for audit_token_t(0);
    sub_225CCF434();
    MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D1E6C0);
    v26 = v0[2];
    v25 = v0[3];
    v27 = MEMORY[0x277D84F90];
    v28 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v30 = v29;
    v31 = sub_225CCE954();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v49, 1, 1, v31);
    LODWORD(v31) = (*(v32 + 48))(v49, 1, v31);
    sub_2259CB640(v49, &unk_27D73B050);
    if (v31)
    {
      v33 = 24;
    }

    else
    {
      v33 = 23;
    }

    v34 = sub_225B2C374(v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v34;
    sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v50);

    v36 = v50[0];
    v37 = sub_225B29AA0(0, 1, 1, v27);
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[56 * v39];
    *(v40 + 4) = v26;
    *(v40 + 5) = v25;
    *(v40 + 6) = 0xD00000000000002CLL;
    *(v40 + 7) = 0x8000000225D1E5D0;
    *(v40 + 8) = 0xD00000000000003DLL;
    *(v40 + 9) = 0x8000000225D1E6E0;
    *(v40 + 10) = 55;
    *v30 = v33;
    *(v30 + 8) = v37;
    *(v30 + 16) = v26;
    *(v30 + 24) = v25;
    *(v30 + 32) = v36;
    *(v30 + 40) = 0;
    swift_willThrow();

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_225B47A34()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_225B47F14;
  }

  else
  {
    v2 = sub_225B47B48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B47B48()
{
  v23 = v0;
  v1 = v0[19];
  v2 = v0[14];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    (*(v0[18] + 8))(v1, v0[17]);
    v5 = MEMORY[0x277D84F90];
    v6 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v8 = v7;
    v9 = sub_225CCE954();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v4, 1, 1, v9);
    v11 = (*(v10 + 48))(v4, 1, v9);
    sub_2259CB640(v4, &unk_27D73B050);
    v12 = sub_225B2C374(v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v12;
    sub_225B2C4A0(v6, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v22);

    v14 = v22;
    v15 = sub_225B29AA0(0, 1, 1, v5);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[56 * v17];
    *(v18 + 4) = 0xD000000000000015;
    *(v18 + 5) = 0x8000000225D1E720;
    *(v18 + 6) = 0xD00000000000002CLL;
    *(v18 + 7) = 0x8000000225D1E5D0;
    *(v18 + 8) = 0xD00000000000003DLL;
    *(v18 + 9) = 0x8000000225D1E6E0;
    *(v18 + 10) = 68;
    if (v11)
    {
      v19 = 107;
    }

    else
    {
      v19 = 23;
    }

    *v8 = v19;
    *(v8 + 8) = v15;
    *(v8 + 16) = 0xD000000000000015;
    *(v8 + 24) = 0x8000000225D1E720;
    *(v8 + 32) = v14;
    *(v8 + 40) = 0;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_225CCEA84();

    v20 = v0[1];
  }

  else
  {
    (*(v3 + 32))(v0[4], v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_225CCEA84();

    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_225B47F14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCEA84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B47FD8(uint64_t a1, uint64_t a2)
{
  v11 = v2[5];
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  v8 = v2[10];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2259FE39C;

  return sub_225B47278(a1, a2, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_225B480CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = v13;
  v8[27] = v14;
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[21] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB28);
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB30);
  v8[33] = v10;
  v8[34] = *(v10 - 8);
  v8[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B4825C, 0, 0);
}

uint64_t sub_225B4825C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[27] + 16))(v0[22], v0[23], v0[24], v0[25], v0[26]);
  sub_225CCE9F4();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_225B48370;
  v5 = v0[33];

  return MEMORY[0x2822003E8](v0 + 41, 0, 0, v5);
}

uint64_t sub_225B48370()
{

  return MEMORY[0x2822009F8](sub_225B4846C, 0, 0);
}

uint64_t sub_225B4846C()
{
  v80 = v0;
  v1 = *(v0 + 328);
  if (v1 == 2)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    if (sub_225CCEA44())
    {
      v2 = sub_225CCE954();
      sub_225B4A5D0();
      v3 = swift_allocError();
      sub_225CCE284();
      v73 = "' is not visible";
      v4 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v6 = v5;
      swift_getErrorValue();
      v7 = *(v0 + 104);
      v8 = v3;
      sub_225B21FAC(v7, &v74);

      v9 = v75;
      if (v75)
      {
        v71 = v74;
        v72[0] = v76;
        v72[1] = v77;
        v10 = v78;
        v69 = v79;
      }

      else
      {
        *(v0 + 144) = v3;
        v50 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259D8718(0, &qword_281059A90);
        if (swift_dynamicCast())
        {
          v51 = *(v0 + 152);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v53 = [v51 code];
          v54 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v54;
          *(inited + 40) = v53;
          v10 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060);

          v55 = v3;
          v72[0] = 0;
          v72[1] = 0;
          v9 = MEMORY[0x277D84F90];
          v69 = v3;
          v71 = 23;
        }

        else
        {
          v56 = *(v0 + 224);
          *(v0 + 160) = v3;
          v57 = v3;
          v58 = swift_dynamicCast();
          v59 = *(v2 - 8);
          (*(v59 + 56))(v56, v58 ^ 1u, 1, v2);
          (*(v59 + 48))(v56, 1, v2);
          sub_2259CB640(v56, &unk_27D73B050);
          v9 = MEMORY[0x277D84F90];
          v10 = sub_225B2C374(MEMORY[0x277D84F90]);
          v60 = v3;
          HIBYTE(v72[1]) = -18;
          v69 = v3;
          v71 = 23;
          strcpy(v72, "Task cancelled");
        }
      }

      v61 = v73 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v10;
      sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v74);

      v63 = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_225B29AA0(0, *(v9 + 2) + 1, 1, v9);
      }

      v65 = *(v9 + 2);
      v64 = *(v9 + 3);
      if (v65 >= v64 >> 1)
      {
        v9 = sub_225B29AA0((v64 > 1), v65 + 1, 1, v9);
      }

      *(v9 + 2) = v65 + 1;
      v66 = &v9[56 * v65];
      *(v66 + 2) = xmmword_225CEF370;
      *(v66 + 6) = 0xD00000000000002CLL;
      *(v66 + 7) = 0x8000000225D1E5D0;
      *(v66 + 8) = 0xD00000000000003DLL;
      *(v66 + 9) = v61;
      *(v66 + 10) = 48;
      *v6 = v71;
      *(v6 + 8) = v9;
      *(v6 + 16) = v72[0];
      *(v6 + 24) = v72[1];
      *(v6 + 32) = v63;
      *(v6 + 40) = v69;
    }

    else
    {
      v13 = *(v0 + 232);
      v73 = 0x8000000225D1E5D0;
      v14 = MEMORY[0x277D84F90];
      v15 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v17 = v16;
      v18 = sub_225CCE954();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v13, 1, 1, v18);
      LODWORD(v18) = (*(v19 + 48))(v13, 1, v18);
      sub_2259CB640(v13, &unk_27D73B050);
      if (v18)
      {
        v20 = 107;
      }

      else
      {
        v20 = 23;
      }

      v21 = sub_225B2C374(v14);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v21;
      sub_225B2C4A0(v15, sub_225B2AC40, 0, v22, &v74);

      v23 = v74;
      v24 = sub_225B29AA0(0, 1, 1, v14);
      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_225B29AA0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[56 * v26];
      *(v27 + 4) = 0xD000000000000022;
      *(v27 + 5) = 0x8000000225D1E740;
      *(v27 + 6) = 0xD00000000000002CLL;
      *(v27 + 7) = v73;
      *(v27 + 8) = 0xD00000000000003DLL;
      *(v27 + 9) = 0x8000000225D1E6E0;
      *(v27 + 10) = 50;
      *v17 = v20;
      *(v17 + 8) = v24;
      *(v17 + 16) = 0xD000000000000022;
      *(v17 + 24) = 0x8000000225D1E740;
      *(v17 + 32) = v23;
      *(v17 + 40) = 0;
    }

    swift_willThrow();
LABEL_30:

    v67 = *(v0 + 8);

    return v67();
  }

  if ((v1 & 1) == 0)
  {
    v70 = *(v0 + 232);
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);
    v31 = *(v0 + 176);
    v30 = *(v0 + 184);
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_225CCF204();
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D1E6A0);
    *(v0 + 296) = v31;
    *(v0 + 304) = v30;
    *(v0 + 312) = v29;
    *(v0 + 320) = v28;
    type metadata accessor for audit_token_t(0);
    sub_225CCF434();
    MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D1E770);
    v32 = *(v0 + 128);
    v72[0] = 0x8000000225D1E5D0;
    v72[1] = *(v0 + 120);
    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v73 = swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v70, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v70, 1, v37);
    sub_2259CB640(v70, &unk_27D73B050);
    if (v37)
    {
      v39 = 24;
    }

    else
    {
      v39 = 23;
    }

    v40 = sub_225B2C374(v33);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v40;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, v41, &v74);

    v42 = v74;
    v43 = sub_225B29AA0(0, 1, 1, v33);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    v47 = *(v0 + 272);
    v46 = *(v0 + 280);
    v48 = *(v0 + 264);
    *(v43 + 2) = v45 + 1;
    v49 = &v43[56 * v45];
    *(v49 + 4) = v72[1];
    *(v49 + 5) = v32;
    *(v49 + 6) = 0xD00000000000002CLL;
    *(v49 + 7) = v72[0];
    *(v49 + 8) = 0xD00000000000003DLL;
    *(v49 + 9) = 0x8000000225D1E6E0;
    *(v49 + 10) = 42;
    *v36 = v39;
    *(v36 + 8) = v43;
    *(v36 + 16) = v72[1];
    *(v36 + 24) = v32;
    *(v36 + 32) = v42;
    *(v36 + 40) = 0;
    swift_willThrow();
    (*(v47 + 8))(v46, v48);
    goto LABEL_30;
  }

  v11 = swift_task_alloc();
  *(v0 + 288) = v11;
  *v11 = v0;
  v11[1] = sub_225B48370;
  v12 = *(v0 + 264);

  return MEMORY[0x2822003E8](v0 + 328, 0, 0, v12);
}

uint64_t sub_225B48E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v19 - v8;
  v10 = *v3;
  v11 = swift_taskGroup_addPending();
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_225A023C4(a1, v9);
  v12 = sub_225CCE994();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    sub_225CCE984();
    (*(v13 + 8))(v9, v12);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  sub_2259CB640(v9, &qword_27D73FE00);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_225CCE904();
  v16 = v15;
  swift_unknownObjectRelease();
LABEL_8:
  v17 = (v16 | v14);
  if (v16 | v14)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v14;
    v20[3] = v16;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v10;
  swift_task_create();
LABEL_11:

  return v11 & 1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessVisibilityMonitor.isProcessVisible(_:)(audit_token_t *a1)
{
  v5 = v3;
  v6 = v2;
  v7 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v53 - v11;
  sub_2259D8718(0, &qword_27D73DAA0);
  *atoken.val = a1;
  *&atoken.val[2] = v7;
  *&atoken.val[4] = v6;
  *&atoken.val[6] = v5;
  audit_token_to_pid(&atoken);
  v13 = sub_225CCFBA4();
  v14 = sub_225B4A1EC(v13);
  if (v4)
  {

    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_225CCF204();
    v65 = *atoken.val;
    v66 = *&atoken.val[2];
    MEMORY[0x22AA6CE70](0xD000000000000031, 0x8000000225D1E590);
    *atoken.val = a1;
    *&atoken.val[2] = v7;
    *&atoken.val[4] = v6;
    *&atoken.val[6] = v5;
    type metadata accessor for audit_token_t(0);
    v15 = sub_225CCE504();
    MEMORY[0x22AA6CE70](v15);

    v16 = v65;
    v17 = v66;
    v58 = "for audit token: ";
    v57 = "ocessVisibilityMonitor.swift";
    v18 = v4;
    v19 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v59 = swift_allocError();
    v21 = v20;
    swift_getErrorValue();
    v22 = v64;
    v23 = v4;
    sub_225B21FAC(v22, &atoken);

    v24 = *&atoken.val[2];
    if (*&atoken.val[2])
    {
      v56 = *atoken.val;
      v54 = *&atoken.val[4];
      v55 = *&atoken.val[6];
      v25 = v62;
      v53 = v63;
    }

    else
    {
      *atoken.val = v4;
      v31 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v32 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v34 = [v32 code];
        v35 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v35;
        *(inited + 40) = v34;
        v25 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v36 = v4;
        v55 = 0;
        v54 = 0;
        v24 = MEMORY[0x277D84F90];
        v56 = 164;
      }

      else
      {
        *atoken.val = v4;
        v37 = v4;
        v38 = sub_225CCE954();
        v39 = swift_dynamicCast();
        v40 = *(v38 - 8);
        (*(v40 + 56))(v12, v39 ^ 1u, 1, v38);
        LODWORD(v40) = (*(v40 + 48))(v12, 1, v38);
        sub_2259CB640(v12, &unk_27D73B050);
        if (v40)
        {
          v41 = 164;
        }

        else
        {
          v41 = 23;
        }

        v56 = v41;

        v24 = MEMORY[0x277D84F90];
        v25 = sub_225B2C374(MEMORY[0x277D84F90]);
        v42 = v4;
        v55 = v17;
        v54 = v16;
      }

      v53 = v4;
    }

    v60 = v17;
    v43 = v58 | 0x8000000000000000;
    v44 = v57 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *atoken.val = v25;
    sub_225B2C4A0(v19, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &atoken);

    v46 = *atoken.val;
    v47 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_225B29AA0(0, *(v24 + 2) + 1, 1, v24);
    }

    v29 = *(v24 + 2);
    v48 = *(v24 + 3);
    if (v29 >= v48 >> 1)
    {
      v24 = sub_225B29AA0((v48 > 1), v29 + 1, 1, v24);
    }

    *(v24 + 2) = v29 + 1;
    v49 = &v24[56 * v29];
    v50 = v60;
    *(v49 + 4) = v47;
    *(v49 + 5) = v50;
    *(v49 + 6) = 0xD00000000000002CLL;
    *(v49 + 7) = v43;
    *(v49 + 8) = 0xD000000000000014;
    *(v49 + 9) = v44;
    *(v49 + 10) = 93;
    *v21 = v56;
    v51 = v54;
    *(v21 + 8) = v24;
    *(v21 + 16) = v51;
    *(v21 + 24) = v55;
    *(v21 + 32) = v46;
    *(v21 + 40) = v53;
    swift_willThrow();
  }

  else
  {
    v26 = v14;

    v27 = [v26 currentState];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 endowmentNamespaces];

      if (v29)
      {
        v30 = sub_225CCEC04();

        LOBYTE(v29) = sub_225B063F0(0xD00000000000001FLL, 0x8000000225D0C530, v30);
      }
    }

    else
    {
      LOBYTE(v29) = 0;
    }
  }

  return v29 & 1;
}

uint64_t ProcessVisibilityMonitor.visibilityMonitor(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAA8);
  MEMORY[0x28223BE20](v12, v13);
  v18 = v7;
  v19 = v8;
  v20 = v6;
  v21 = v9;
  v22 = v5;
  v23 = v10;
  v24 = v4;
  v25 = v11;
  (*(v15 + 104))(&v17[-v14], *MEMORY[0x277D85778]);
  return sub_225CCEA14();
}

uint64_t sub_225B4982C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v29 = HIDWORD(a2);
  v30 = HIDWORD(a3);
  v31 = HIDWORD(a4);
  v32 = HIDWORD(a5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v33 = &v28 - v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D46F80]) init];
  *(swift_allocObject() + 16) = v14;
  v15 = v14;
  sub_225CCE9B4();
  atoken.val[0] = v8;
  atoken.val[1] = v29;
  atoken.val[2] = v7;
  atoken.val[3] = v30;
  atoken.val[4] = v6;
  atoken.val[5] = v31;
  atoken.val[6] = v5;
  atoken.val[7] = v32;
  audit_token_to_pid(&atoken);
  v16 = sub_225CCFBA4();
  v17 = [objc_opt_self() predicateMatchingIdentifier_];

  v18 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  v19 = sub_225CCE7F4();
  [v18 setEndowmentNamespaces_];

  v20 = v33;
  (*(v11 + 16))(v33, a1, v10);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  (*(v11 + 32))(v22 + v21, v20, v10);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225B4A31C;
  *(v23 + 24) = v22;
  v35 = sub_225B4A39C;
  v36 = v23;
  *atoken.val = MEMORY[0x277D85DD0];
  *&atoken.val[2] = 1107296256;
  *&atoken.val[4] = sub_225B4A034;
  *&atoken.val[6] = &block_descriptor_7;
  v24 = _Block_copy(&atoken);
  v25 = v17;
  v26 = v18;

  [v15 updateConfiguration_];

  _Block_release(v24);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

void sub_225B49BA4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_225CD7D40;
  *(v13 + 32) = a2;
  sub_2259D8718(0, &qword_27D73DB18);
  v14 = a2;
  v15 = sub_225CCE7F4();

  [a1 setPredicates_];

  [a1 setStateDescriptor_];
  (*(v9 + 16))(v12, a4, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = sub_225B4A3DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B49F94;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);

  [a1 setUpdateHandler_];
  _Block_release(v18);
}

uint64_t sub_225B49DFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15[-v7];
  v9 = [a3 state];
  if (v9 && (v10 = v9, v11 = [v9 endowmentNamespaces], v10, v11))
  {
    v12 = sub_225CCEC04();
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v13 = sub_225B063F0(0xD00000000000001FLL, 0x8000000225D0C530, v12);

  v15[15] = v13 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0);
  sub_225CCE9C4();
  return (*(v5 + 8))(v8, v4);
}

void sub_225B49F94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_225B4A034(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_225B4A0A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAA8);
  MEMORY[0x28223BE20](v12, v13);
  v18 = v7;
  v19 = v8;
  v20 = v6;
  v21 = v9;
  v22 = v5;
  v23 = v10;
  v24 = v4;
  v25 = v11;
  (*(v15 + 104))(&v17[-v14], *MEMORY[0x277D85778]);
  return sub_225CCEA14();
}

id sub_225B4A1EC(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_225CCCCC4();

    swift_willThrow();
  }

  return v1;
}

void sub_225B4A31C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_225B49BA4(a1, v4, v5, v6);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225B4A3DC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0);

  return sub_225B49DFC(a1, a2, a3);
}

uint64_t sub_225B4A470(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = (v1 + ((*(*(v4 - 8) + 64) + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225B480CC(a1, v6, v7, v1 + v5, v9, v10, v11, v12);
}

unint64_t sub_225B4A5D0()
{
  result = qword_27D73D638;
  if (!qword_27D73D638)
  {
    sub_225CCE954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D638);
  }

  return result;
}

void static ServerEnvironment.current(suiteNameOverride:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2 || a1 == 0xD00000000000001ALL && 0x8000000225D18F90 == a2 || (sub_225CCF934() & 1) != 0)
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = sub_225CCE474();
      v8 = v7;

      if (v6 == 0xD00000000000001ALL && 0x8000000225D18F90 == v8)
      {
      }

      else
      {
        v10 = sub_225CCF934();

        if ((v10 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v14 = [objc_opt_self() standardUserDefaults];
      v19 = v14;
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_11:
    v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v12 = sub_225CCE444();
    v13 = [v11 initWithSuiteName_];
    goto LABEL_16;
  }

  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_225CCE444();
  v13 = [v15 initWithSuiteName_];
LABEL_16:
  v19 = v13;

  v14 = v19;
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_17:
  v16 = v14;
  v17 = sub_225CCE444();
  v18 = [v16 stringForKey_];

  if (v18)
  {
    sub_225CCE474();
  }

LABEL_19:
  sub_225B4A92C(a3);
}

uint64_t ServerEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t sub_225B4A92C@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCE534();
  v4 = v3;

  if (v2 == 1146049104 && v4 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    v6 = 0;
  }

  else if (v2 == 1414677827 && v4 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_225CCE6B4();

    if (v7)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  *a1 = v6;
  return result;
}

unint64_t sub_225B4AA48()
{
  result = qword_27D73DB38;
  if (!qword_27D73DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DB38);
  }

  return result;
}

uint64_t sub_225B4AAAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_225B4DCB0(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_225B4DC4C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_225CCCF54();
    v16 = v15;
    result = sub_2259BEF00(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

uint64_t randomData(numBytes:)(size_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v2 = sub_225CCE874();
      *(v2 + 16) = a1;
      bzero((v2 + 32), a1);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], a1, (v2 + 32)))
    {
      v3 = sub_2259D8490(v2);

      return v3;
    }
  }

  sub_225CCF204();

  v5 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v5);

  result = sub_225CCF524();
  __break(1u);
  return result;
}

uint64_t Collection.nilIfEmpty.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_225CCEC84();
  v6 = *(a1 - 8);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v10 = *(a1 - 8);
    (*(v10 + 16))(a2, v2, a1);
    v6 = v10;
    v7 = 0;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, a1);
}

Swift::Void __swiftcall debugLogFootprint(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v43[1] = *MEMORY[0x277D85DE8];
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = getpid();
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    memset(v17, 0, sizeof(v17));
    if (!proc_pid_rusage(v8, 6, v17))
    {
      v9 = *(&v18 + 1);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v10 = off_28105B918;
      v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v12));
      (*(v4 + 16))(v7, &v10[v11], v3);
      os_unfair_lock_unlock(&v10[v12]);

      sub_2259CFAF8();
      sub_2259CFAF8();
      v13 = sub_225CCD934();
      v14 = sub_225CCED04();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v43[0] = v16;
        *v15 = 136315650;
        *(v15 + 4) = sub_2259BE198(countAndFlagsBits, object, v43);
        *(v15 + 12) = 1040;
        *(v15 + 14) = 2;
        *(v15 + 18) = 2048;
        *(v15 + 20) = v9 * 0.000000953674316;
        _os_log_impl(&dword_2259A7000, v13, v14, "[%s] dirty footprint: %.*f MB", v15, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x22AA6F950](v16, -1, -1);
        MEMORY[0x22AA6F950](v15, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t Data.xor(with:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v52 - v13;
  v15 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(a4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v18 = *(a3 + 16);
  v17 = *(a3 + 24);
  v19 = __OFSUB__(v17, v18);
  v16 = v17 - v18;
  if (v19)
  {
    __break(1u);
LABEL_8:
    LODWORD(v16) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      goto LABEL_92;
    }

    v16 = v16;
  }

LABEL_11:
  v20 = a2 >> 62;
  v73 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      if (v16 != BYTE6(a2))
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (v16 != HIDWORD(a1) - a1)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v20 != 2)
  {
    if (v16)
    {
      goto LABEL_26;
    }

    v53 = v5;
LABEL_76:
    v31 = MEMORY[0x277D84F90];
LABEL_77:
    v51 = sub_2259D8490(v31);

    return v51;
  }

  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v19 = __OFSUB__(v21, v22);
  v23 = v21 - v22;
  if (v19)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v16 != v23)
  {
LABEL_26:
    a3 = 0x8000000225D1E7F0;
    v73 = 0x8000000225D1E790;
    v25 = MEMORY[0x277D84F90];
    v26 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v14, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v14, 1, v29);
    sub_2259CB640(v14, &unk_27D73B050);
    if (v29)
    {
      LOWORD(v31) = 0;
    }

    else
    {
      LOWORD(v31) = 23;
    }

    v32 = sub_225B2C374(v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v32;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v74);

    v14 = v74;
    v12 = sub_225B29AA0(0, 1, 1, v25);
    a2 = *(v12 + 2);
    v34 = *(v12 + 3);
    v4 = a2 + 1;
    if (a2 >= v34 >> 1)
    {
      goto LABEL_90;
    }

    goto LABEL_30;
  }

LABEL_21:
  v69 = HIDWORD(a1);
  if (v73 == 2)
  {
    v39 = *(a1 + 16);
    v38 = *(a1 + 24);
    v19 = __OFSUB__(v38, v39);
    v24 = v38 - v39;
    if (!v19)
    {
      goto LABEL_32;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
  }

  if (v73 != 1)
  {
    goto LABEL_34;
  }

  LODWORD(v24) = v69 - a1;
  if (__OFSUB__(v69, a1))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v24 = v24;
LABEL_32:
  if ((v24 & 0x8000000000000000) == 0)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_34:
  v24 = BYTE6(a2);
LABEL_35:
  v53 = v5;
  if (!v24)
  {
    goto LABEL_76;
  }

  v28 = 0;
  v66 = a3 >> 32;
  v67 = BYTE6(a4);
  v68 = a3;
  v56 = a1;
  v54 = a1 >> 32;
  v55 = BYTE6(a2);
  v31 = MEMORY[0x277D84F90];
  v64 = a3 >> 16;
  v65 = a3 >> 8;
  v62 = HIDWORD(a3);
  v63 = a3 >> 24;
  v60 = HIWORD(a3);
  v61 = a3 >> 40;
  v58 = a4 >> 8;
  v59 = HIBYTE(a3);
  v57 = a4 >> 16;
  v71 = a4 >> 62;
  v72 = a3;
  v70 = v24;
  while (1)
  {
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_96;
      }

      v34 = *(a3 + 16);
      if (v28 < v34)
      {
        goto LABEL_79;
      }

      v34 = *(a3 + 24);
      if (v28 >= v34)
      {
        goto LABEL_81;
      }

      v41 = sub_225CCCA44();
      if (!v41)
      {
        goto LABEL_99;
      }

      a3 = v41;
      v14 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
      v42 = sub_225CCCA74();
      v34 = v28 - v42;
      if (__OFSUB__(v28, v42))
      {
        goto LABEL_85;
      }

      goto LABEL_52;
    }

    if (!v15)
    {
      break;
    }

    v34 = v68;
    if (v28 < v68)
    {
      goto LABEL_80;
    }

    v34 = v66;
    if (v28 >= v66)
    {
      goto LABEL_80;
    }

    v43 = sub_225CCCA44();
    if (!v43)
    {
      goto LABEL_98;
    }

    a3 = v43;
    v14 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
    v44 = sub_225CCCA74();
    v34 = v28 - v44;
    if (__OFSUB__(v28, v44))
    {
      goto LABEL_82;
    }

LABEL_52:
    v40 = *(a3 + v34);
LABEL_53:
    if (v73 > 1)
    {
      if (v73 != 2)
      {
        goto LABEL_97;
      }

      v34 = *(a1 + 16);
      if (v28 < v34)
      {
        goto LABEL_83;
      }

      v34 = *(a1 + 24);
      if (v28 >= v34)
      {
        goto LABEL_87;
      }

      v46 = sub_225CCCA44();
      if (!v46)
      {
        goto LABEL_101;
      }

      a3 = v46;
      v14 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v47 = sub_225CCCA74();
      v34 = v28 - v47;
      if (__OFSUB__(v28, v47))
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (!v73)
      {
        v34 = v55;
        if (v28 >= v55)
        {
          goto LABEL_84;
        }

        LOWORD(v74) = a1;
        BYTE2(v74) = BYTE2(a1);
        BYTE3(v74) = BYTE3(a1);
        BYTE4(v74) = v69;
        BYTE5(v74) = BYTE5(a1);
        BYTE6(v74) = BYTE6(a1);
        HIBYTE(v74) = HIBYTE(a1);
        v75 = a2;
        v76 = BYTE2(a2);
        v77 = BYTE3(a2);
        v78 = BYTE4(a2);
        v79 = BYTE5(a2);
        v45 = *(&v74 + v28);
        goto LABEL_69;
      }

      v34 = v56;
      if (v28 < v56)
      {
        goto LABEL_86;
      }

      v34 = v54;
      if (v28 >= v54)
      {
        goto LABEL_86;
      }

      v48 = sub_225CCCA44();
      if (!v48)
      {
        goto LABEL_100;
      }

      a3 = v48;
      v14 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v49 = sub_225CCCA74();
      v34 = v28 - v49;
      if (__OFSUB__(v28, v49))
      {
        goto LABEL_88;
      }
    }

    v45 = *(a3 + v34);
LABEL_69:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_2259BE5D8(0, *(v31 + 2) + 1, 1, v31);
    }

    v4 = *(v31 + 2);
    v50 = *(v31 + 3);
    v14 = (v4 + 1);
    if (v4 >= v50 >> 1)
    {
      v31 = sub_2259BE5D8((v50 > 1), v4 + 1, 1, v31);
    }

    ++v28;
    *(v31 + 2) = v14;
    v31[v4 + 32] = v45 ^ v40;
    LODWORD(v15) = v71;
    a3 = v72;
    if (v70 == v28)
    {
      goto LABEL_77;
    }
  }

  v34 = v67;
  if (v28 < v67)
  {
    LOBYTE(v74) = a3;
    BYTE1(v74) = v65;
    BYTE2(v74) = v64;
    BYTE3(v74) = v63;
    BYTE4(v74) = v62;
    BYTE5(v74) = v61;
    BYTE6(v74) = v60;
    HIBYTE(v74) = v59;
    LOBYTE(v75) = a4;
    HIBYTE(v75) = v58;
    v76 = v57;
    v77 = BYTE3(a4);
    v78 = BYTE4(a4);
    v79 = BYTE5(a4);
    v40 = *(&v74 + v28);
    goto LABEL_53;
  }

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
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v12 = sub_225B29AA0((v34 > 1), v4, 1, v12);
LABEL_30:
  *(v12 + 2) = v4;
  v35 = &v12[56 * a2];
  *(v35 + 4) = 0xD000000000000017;
  *(v35 + 5) = a3;
  v36 = v73;
  *(v35 + 6) = 0xD000000000000021;
  *(v35 + 7) = v36;
  *(v35 + 8) = 0x6874697728726F78;
  *(v35 + 9) = 0xEA0000000000293ALL;
  *(v35 + 10) = 52;
  *v28 = v31;
  *(v28 + 8) = v12;
  *(v28 + 16) = 0xD000000000000017;
  *(v28 + 24) = a3;
  *(v28 + 32) = v14;
  *(v28 + 40) = 0;
  return swift_willThrow();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.toAlpha2CountryCode()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v71 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB40);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v70 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v77 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB48);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v73 = &v69 - v15;
  v16 = sub_225CCD1C4();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v79 = &v69 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v69 - v26;
  v28 = sub_225B4C144();
  sub_225CCD134();
  v29 = sub_225CCD144();
  v31 = v30;
  v80 = *(v17 + 8);
  v81 = v17 + 8;
  v80(v27, v16);
  if (v31)
  {
    v33 = v29;
  }

  else
  {
    v33 = 0;
  }

  v78 = v33;
  v34 = 0xE000000000000000;
  if (v31)
  {
    v34 = v31;
  }

  v74 = v34;
  v76 = *(v28 + 16);
  if (v76)
  {
    v35 = 0;
    v75 = v17 + 16;
    while (1)
    {
      v36 = *(v28 + 16);
      if (v35 >= v36)
      {
        break;
      }

      v0 = v28;
      v37 = v28 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v35;
      v38 = v17;
      v39 = *(v17 + 16);
      v40 = v16;
      v39(v79, v37, v16);
      sub_225CCD134();
      v41 = v77;
      sub_225CCD1A4();
      v42 = sub_225CCD194();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v41, 1, v42) == 1)
      {
        sub_2259CB640(v41, &qword_27D73DB40);
        v27 = 0xE000000000000000;
      }

      else
      {
        sub_225CCD184();
        v44 = v41;
        v27 = v45;
        (*(v43 + 8))(v44, v42);
      }

      v31 = sub_225CCD144();
      v29 = v46;

      v16 = v40;
      v80(v21, v40);
      v17 = v38;
      v28 = v0;
      if (v29)
      {
        if (v31 == v78 && v29 == v74)
        {

LABEL_20:

          v48 = v73;
          (*(v17 + 32))(v73, v79, v16);
          v47 = 0;
          goto LABEL_21;
        }

        v27 = sub_225CCF934();

        if (v27)
        {

          goto LABEL_20;
        }
      }

      ++v35;
      v80(v79, v16);
      if (v76 == v35)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    v32 = sub_225B29AA0((v36 > 1), v17, 1, v32);
    goto LABEL_29;
  }

LABEL_18:

  v47 = 1;
  v48 = v73;
LABEL_21:
  v49 = v72;
  (*(v17 + 56))(v48, v47, 1, v16);
  sub_225B4DD64(v48, v49);
  if ((*(v17 + 48))(v49, 1, v16) == 1)
  {
    v50 = &qword_27D73DB48;
    v51 = v49;
  }

  else
  {
    v52 = v70;
    sub_225CCD1A4();
    v80(v49, v16);
    v53 = sub_225CCD194();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53) != 1)
    {
      v29 = sub_225CCD184();
      v17 = v65;
      sub_2259CB640(v48, &qword_27D73DB48);
      (*(v54 + 8))(v52, v53);
      goto LABEL_31;
    }

    v50 = &qword_27D73DB40;
    v51 = v52;
  }

  sub_2259CB640(v51, v50);
  v31 = 0x8000000225D1E810;
  v81 = 0x8000000225D1E790;
  v0 = 0x8000000225D1E830;
  v55 = MEMORY[0x277D84F90];
  v56 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v29 = v57;
  v58 = sub_225CCE954();
  v59 = *(v58 - 8);
  v60 = v71;
  (*(v59 + 56))(v71, 1, 1, v58);
  LODWORD(v58) = (*(v59 + 48))(v60, 1, v58);
  sub_2259CB640(v60, &unk_27D73B050);
  if (v58)
  {
    LOWORD(v28) = 857;
  }

  else
  {
    LOWORD(v28) = 23;
  }

  v61 = sub_225B2C374(v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v61;
  sub_225B2C4A0(v56, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v82);

  v35 = v82;
  v32 = sub_225B29AA0(0, 1, 1, v55);
  v27 = *(v32 + 2);
  v36 = *(v32 + 3);
  v17 = v27 + 1;
  if (v27 >= v36 >> 1)
  {
    goto LABEL_33;
  }

LABEL_29:
  *(v32 + 2) = v17;
  v63 = &v32[56 * v27];
  *(v63 + 4) = 0xD000000000000014;
  *(v63 + 5) = v31;
  v64 = v81;
  *(v63 + 6) = 0xD000000000000021;
  *(v63 + 7) = v64;
  *(v63 + 8) = 0xD000000000000015;
  *(v63 + 9) = v0;
  *(v63 + 10) = 74;
  *v29 = v28;
  *(v29 + 8) = v32;
  *(v29 + 16) = 0xD000000000000014;
  *(v29 + 24) = v31;
  *(v29 + 32) = v35;
  *(v29 + 40) = 0;
  swift_willThrow();
  sub_2259CB640(v73, &qword_27D73DB48);
LABEL_31:
  v66 = v29;
  v67 = v17;
  result._object = v67;
  result._countAndFlagsBits = v66;
  return result;
}

uint64_t sub_225B4C144()
{
  v0 = sub_225CCD1C4();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x22AA6B9B0](v3);
  v7 = *(v6 + 16);
  if (v7)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2259D54DC(0, v7, 0);
    v8 = v14;
    v9 = v6 + 40;
    do
    {

      sub_225CCD134();
      v14 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2259D54DC(v10 > 1, v11 + 1, 1);
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      (*(v1 + 32))(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v5, v0);
      v9 += 16;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v8;
}

unsigned __int8 *sub_225B4C2F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v53 - v2;

  v4 = sub_2259D8954(2);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x22AA6CD90](v4, v6, v8, v10);
  v13 = v12;

  v15 = HIBYTE(v13) & 0xF;
  v16 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v17 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_64;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v56 = 0;
    v19 = sub_2259F3F08(v11, v13, 10);
    v37 = v52;
LABEL_63:

    if ((v37 & 1) == 0)
    {
      return v19;
    }

LABEL_64:
    v54 = 0x8000000225D1E790;
    v38 = MEMORY[0x277D84F90];
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v19 = v40;
    v41 = sub_225CCE954();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v3, 1, 1, v41);
    LODWORD(v41) = (*(v42 + 48))(v3, 1, v41);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v41)
    {
      v43 = 1006;
    }

    else
    {
      v43 = 23;
    }

    v44 = sub_225B2C374(v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v44;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v55);

    v46 = v55[0];
    v47 = sub_225B29AA0(0, 1, 1, v38);
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v47);
    }

    *(v47 + 2) = v49 + 1;
    v50 = &v47[56 * v49];
    *(v50 + 4) = 0xD000000000000024;
    *(v50 + 5) = 0x8000000225D1E8A0;
    v51 = v54;
    *(v50 + 6) = 0xD000000000000021;
    *(v50 + 7) = v51;
    strcpy(v50 + 64, "getYear(date:)");
    v50[79] = -18;
    *(v50 + 10) = 83;
    *v19 = v43;
    *(v19 + 8) = v47;
    *(v19 + 16) = 0xD000000000000024;
    *(v19 + 24) = 0x8000000225D1E8A0;
    *(v19 + 32) = v46;
    *(v19 + 40) = 0;
    swift_willThrow();
    return v19;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_225CCF354();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v26 = result + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                goto LABEL_61;
              }

              v28 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_61;
              }

              v19 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_61;
              }

              ++v26;
              if (!--v15)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_76;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v32 = *result - 48;
            if (v32 > 9)
            {
              goto LABEL_61;
            }

            v33 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_61;
            }

            v19 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v19 = 0;
      LOBYTE(v15) = 1;
      goto LABEL_62;
    }

    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          v20 = result + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_61;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_61;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v15) = 0;
LABEL_62:
        v56 = v15;
        v37 = v15;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v55[0] = v11;
  v55[1] = v13 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (v15)
      {
        v19 = 0;
        v34 = v55;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          v34 = (v34 + 1);
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v15)
    {
      if (--v15)
      {
        v19 = 0;
        v23 = v55 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_75;
  }

  if (v15)
  {
    if (--v15)
    {
      v19 = 0;
      v29 = v55 + 1;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v15)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_225B4C8A4()
{
  v0 = sub_225CCD0B4();
  v41 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_225CCD264();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_225CCD284();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v44 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - v13;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  v45 = v8;
  v46 = v7;
  v42 = *(v8 + 16);
  v43 = v16;
  v42(v14, &v15[v16], v7);
  os_unfair_lock_unlock(&v15[v17]);
  v18 = sub_225CCD934();
  v19 = sub_225CCED34();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2259A7000, v18, v19, "Calculating year for birth date", v20, 2u);
    MEMORY[0x22AA6F950](v20, -1, -1);
  }

  (*(v45 + 8))(v14, v46);
  v21 = sub_225B4C2F0();
  v22 = v34;
  v23 = v21;
  sub_225CCD244();
  v24 = v38;
  v25 = v36;
  v26 = v40;
  (*(v38 + 104))(v36, *MEMORY[0x277CC9988], v40);
  v27 = v39;
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v28 = sub_225CCD274();
  (*(v41 + 8))(v27, v0);
  (*(v24 + 8))(v25, v26);
  result = (*(v35 + 8))(v22, v37);
  v30 = 100 * (v28 / 100);
  if (v28 % 100 < v23)
  {
    v31 = __OFSUB__(v30, 100);
    v32 = v30 - 100;
    if (v31)
    {
      __break(1u);
      goto LABEL_13;
    }

    v31 = __OFADD__(v32, v23);
    v30 = v32 + v23;
    if (!v31)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v31 = __OFADD__(v30, v23);
  v30 += v23;
  if (!v31)
  {
LABEL_11:
    v47 = v30;
    return sub_225CCF824();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_225B4CE70()
{
  v0 = sub_225CCD0B4();
  v41 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_225CCD264();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_225CCD284();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v44 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - v13;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v15 = off_28105B918;
  v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v17));
  v45 = v8;
  v46 = v7;
  v42 = *(v8 + 16);
  v43 = v16;
  v42(v14, &v15[v16], v7);
  os_unfair_lock_unlock(&v15[v17]);
  v18 = sub_225CCD934();
  v19 = sub_225CCED34();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2259A7000, v18, v19, "Calculating year for expiry date", v20, 2u);
    MEMORY[0x22AA6F950](v20, -1, -1);
  }

  (*(v45 + 8))(v14, v46);
  v21 = sub_225B4C2F0();
  v22 = v34;
  v23 = v21;
  sub_225CCD244();
  v24 = v38;
  v25 = v36;
  v26 = v40;
  (*(v38 + 104))(v36, *MEMORY[0x277CC9988], v40);
  v27 = v39;
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v28 = sub_225CCD274();
  (*(v41 + 8))(v27, v0);
  (*(v24 + 8))(v25, v26);
  result = (*(v35 + 8))(v22, v37);
  v30 = 100 * (v28 / 100);
  if (v23 >= v28 % 100)
  {
    goto LABEL_13;
  }

  v31 = __OFADD__(v30, 100);
  v32 = v30 + 100;
  if (v31)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = __OFADD__(v32, v23);
  v30 = v32 + v23;
  if (v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__OFSUB__(v30, v28))
  {
    if (v30 - v28 < 11)
    {
      goto LABEL_14;
    }

    v31 = __OFSUB__(v30, 100);
    v30 -= 100;
    if (!v31)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v31 = __OFADD__(v30, v23);
    v30 += v23;
    if (!v31)
    {
LABEL_14:
      v47 = v30;
      return sub_225CCF824();
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> formatPassportDate(date:isBirthDate:)(Swift::String date, Swift::Bool isBirthDate)
{
  object = date._object;
  countAndFlagsBits = date._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v96 - v8;
  if (sub_225CCE5D4() != 6)
  {
    v98 = 0x8000000225D1E870;
    v99 = 0x8000000225D1E790;
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    countAndFlagsBits = v14;
    v15 = sub_225CCE954();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v9, 1, 1, v15);
    LODWORD(v15) = (*(v16 + 48))(v9, 1, v15);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v15)
    {
      v17 = 1007;
    }

    else
    {
      v17 = 23;
    }

    v18 = sub_225B2C374(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100[0] = v18;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v100);

    v20 = v100[0];
    v21 = sub_225B29AA0(0, 1, 1, v12);
    object = *(v21 + 2);
    v22 = *(v21 + 3);
    if (object >= v22 >> 1)
    {
      v21 = sub_225B29AA0((v22 > 1), object + 1, 1, v21);
    }

    *(v21 + 2) = object + 1;
    v23 = &v21[56 * object];
    *(v23 + 4) = 0xD000000000000015;
    *(v23 + 5) = 0x8000000225D1E850;
    v24 = v99;
    *(v23 + 6) = 0xD000000000000021;
    *(v23 + 7) = v24;
    v25 = v98;
    *(v23 + 8) = 0xD000000000000025;
    *(v23 + 9) = v25;
    *(v23 + 10) = 137;
    *countAndFlagsBits = v17;
    *(countAndFlagsBits + 8) = v21;
    *(countAndFlagsBits + 16) = 0xD000000000000015;
    *(countAndFlagsBits + 24) = 0x8000000225D1E850;
    *(countAndFlagsBits + 32) = v20;
    *(countAndFlagsBits + 40) = 0;
    swift_willThrow();
    goto LABEL_89;
  }

  if (isBirthDate)
  {
    v10 = sub_225B4C8A4();
  }

  else
  {
    v10 = sub_225B4CE70();
  }

  v26 = v10;
  v27 = v11;

  v28 = sub_225B4DDD4(2uLL, countAndFlagsBits, object);
  v30 = v29;

  v31 = sub_225CCEFD4();
  if (v32)
  {
    v33 = v30;
  }

  else
  {
    v33 = v31;
  }

  if (v33 >> 14 < v28 >> 14)
  {
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:

    goto LABEL_82;
  }

  v97 = v26;
  v99 = v27;
  v34 = sub_225CCF004();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = MEMORY[0x22AA6CD90](v34, v36, v38, v40);
  v43 = v42;

  v44 = sub_225B4DDD4(4uLL, countAndFlagsBits, object);
  v46 = v45;

  v47 = sub_225CCEFD4();
  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = v47;
  }

  if (v49 >> 14 < v44 >> 14)
  {
    goto LABEL_91;
  }

  v98 = v2;
  v50 = sub_225CCF004();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = MEMORY[0x22AA6CD90](v50, v52, v54, v56);
  v59 = v58;

  v61 = HIBYTE(v43) & 0xF;
  v62 = v41 & 0xFFFFFFFFFFFFLL;
  if ((v43 & 0x2000000000000000) != 0)
  {
    v63 = HIBYTE(v43) & 0xF;
  }

  else
  {
    v63 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
    goto LABEL_92;
  }

  if ((v43 & 0x1000000000000000) == 0)
  {
    if ((v43 & 0x2000000000000000) != 0)
    {
      v100[0] = v41;
      v100[1] = v43 & 0xFFFFFFFFFFFFFFLL;
      if (v41 == 43)
      {
        if (v61)
        {
          if (--v61)
          {
            v65 = 0;
            v75 = v100 + 1;
            while (1)
            {
              v76 = *v75 - 48;
              if (v76 > 9)
              {
                break;
              }

              v77 = 10 * v65;
              if ((v65 * 10) >> 64 != (10 * v65) >> 63)
              {
                break;
              }

              v65 = v77 + v76;
              if (__OFADD__(v77, v76))
              {
                break;
              }

              ++v75;
              if (!--v61)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_79;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      if (v41 != 45)
      {
        if (v61)
        {
          v65 = 0;
          v80 = v100;
          while (1)
          {
            v81 = *v80 - 48;
            if (v81 > 9)
            {
              break;
            }

            v82 = 10 * v65;
            if ((v65 * 10) >> 64 != (10 * v65) >> 63)
            {
              break;
            }

            v65 = v82 + v81;
            if (__OFADD__(v82, v81))
            {
              break;
            }

            v80 = (v80 + 1);
            if (!--v61)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

      if (v61)
      {
        if (--v61)
        {
          v65 = 0;
          v69 = v100 + 1;
          while (1)
          {
            v70 = *v69 - 48;
            if (v70 > 9)
            {
              break;
            }

            v71 = 10 * v65;
            if ((v65 * 10) >> 64 != (10 * v65) >> 63)
            {
              break;
            }

            v65 = v71 - v70;
            if (__OFSUB__(v71, v70))
            {
              break;
            }

            ++v69;
            if (!--v61)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }
    }

    else
    {
      if ((v41 & 0x1000000000000000) != 0)
      {
        v60 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v60 = sub_225CCF354();
      }

      v64 = *v60;
      if (v64 == 43)
      {
        if (v62 >= 1)
        {
          v61 = v62 - 1;
          if (v62 != 1)
          {
            v65 = 0;
            if (v60)
            {
              v72 = v60 + 1;
              while (1)
              {
                v73 = *v72 - 48;
                if (v73 > 9)
                {
                  goto LABEL_79;
                }

                v74 = 10 * v65;
                if ((v65 * 10) >> 64 != (10 * v65) >> 63)
                {
                  goto LABEL_79;
                }

                v65 = v74 + v73;
                if (__OFADD__(v74, v73))
                {
                  goto LABEL_79;
                }

                ++v72;
                if (!--v61)
                {
                  goto LABEL_80;
                }
              }
            }

            goto LABEL_71;
          }

          goto LABEL_79;
        }

        goto LABEL_97;
      }

      if (v64 != 45)
      {
        if (v62)
        {
          v65 = 0;
          if (v60)
          {
            while (1)
            {
              v78 = *v60 - 48;
              if (v78 > 9)
              {
                goto LABEL_79;
              }

              v79 = 10 * v65;
              if ((v65 * 10) >> 64 != (10 * v65) >> 63)
              {
                goto LABEL_79;
              }

              v65 = v79 + v78;
              if (__OFADD__(v79, v78))
              {
                goto LABEL_79;
              }

              ++v60;
              if (!--v62)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_79:
        v65 = 0;
        LOBYTE(v61) = 1;
        goto LABEL_80;
      }

      if (v62 >= 1)
      {
        v61 = v62 - 1;
        if (v62 != 1)
        {
          v65 = 0;
          if (v60)
          {
            v66 = v60 + 1;
            while (1)
            {
              v67 = *v66 - 48;
              if (v67 > 9)
              {
                goto LABEL_79;
              }

              v68 = 10 * v65;
              if ((v65 * 10) >> 64 != (10 * v65) >> 63)
              {
                goto LABEL_79;
              }

              v65 = v68 - v67;
              if (__OFSUB__(v68, v67))
              {
                goto LABEL_79;
              }

              ++v66;
              if (!--v61)
              {
                goto LABEL_80;
              }
            }
          }

LABEL_71:
          LOBYTE(v61) = 0;
LABEL_80:
          v101 = v61;
          v83 = v61;
          goto LABEL_81;
        }

        goto LABEL_79;
      }

      __break(1u);
    }

    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v101 = 0;
  v65 = sub_2259F3F08(v41, v43, 10);
  v83 = v94;
LABEL_81:

  if (v83)
  {
LABEL_82:

    goto LABEL_84;
  }

  v84 = sub_2259EDAD0(v57, v59);
  if ((v85 & 1) == 0)
  {
    v86 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_225CD73B0;
    v88 = sub_2259EDAD0(v97, v99);
    v89 = MEMORY[0x277D83B88];
    v90 = MEMORY[0x277D83C10];
    *(v87 + 56) = MEMORY[0x277D83B88];
    *(v87 + 64) = v90;
    if (v91)
    {
      v92 = 0;
    }

    else
    {
      v92 = v88;
    }

    *(v87 + 32) = v92;
    *(v87 + 96) = v89;
    *(v87 + 104) = v90;
    *(v87 + 72) = v65;
    *(v87 + 136) = v89;
    *(v87 + 144) = v90;
    *(v87 + 112) = v86;
    countAndFlagsBits = sub_225CCE4A4();
    object = v93;
    goto LABEL_89;
  }

LABEL_84:

LABEL_89:
  v60 = countAndFlagsBits;
  v62 = object;
LABEL_99:
  result._object = v62;
  result._countAndFlagsBits = v60;
  return result;
}

uint64_t sub_225B4DC4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_225B4DCB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_225B4DD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_225B4DDD4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_225CCE5F4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_225CCE704();
}

uint64_t withTaskTimeoutHandler<A>(timeout:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_225B4DEB0, 0, 0);
}

uint64_t sub_225B4DEB0()
{
  v1 = *(v0 + 24);
  if (v1 <= 0.0)
  {
    v12 = (*(v0 + 32) + **(v0 + 32));
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_225B4E1C0;
    v9 = *(v0 + 16);

    return v12(v9);
  }

  else
  {
    v2 = *(v0 + 48);
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    v4 = *(v0 + 32);
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v3 + 32) = v4;
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_225B4E084;
    v6 = *(v0 + 48);
    v7 = *(v0 + 16);

    return MEMORY[0x282200740](v7, v6, v6, 0, 0, &unk_225CEF4E8, v3, v6);
  }
}

uint64_t sub_225B4E084()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225B4E2B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225B4E1C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_225B4E2B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B4E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 48) = a3;
  *(v6 + 40) = a6;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 72) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v7 = sub_225CCFC34();
  *(v6 + 80) = v7;
  v8 = sub_225CCEFC4();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B4E4C4, 0, 0);
}

uint64_t sub_225B4E4C4()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[7];
  v13 = v0[6];
  v4 = v0[5];
  v5 = sub_225CCE994();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v4;
  v8 = sub_225CCEA94();
  sub_225B4EFC4(v1, &unk_225CEF550, v7);
  sub_225B4F198(v1);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v13;
  v9[6] = v3;

  sub_225B4EFC4(v1, &unk_225CEF560, v9);
  sub_225B4F198(v1);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_225B4E6E4;
  v11 = v0[13];

  return sub_225B4F3C0(v11, 0, 0, v8);
}

uint64_t sub_225B4E6E4()
{

  return MEMORY[0x2822009F8](sub_225B4E7E0, 0, 0);
}

uint64_t sub_225B4E7E0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = *(v2 + 48);
  v5 = v4(v1, 1, v3);
  v6 = v0[16];
  if (v5 == 1)
  {
    sub_225A02370();
    *v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    if (v4(v1, 1, v3) != 1)
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
    }
  }

  else
  {
    (*(v2 + 32))(v0[16], v1, v3);
  }

  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[3];
  sub_225CCEA84();
  (*(v9 + 16))(v7, v8, v10);
  sub_225AF9230(v10, (v0 + 2), v11);
  (*(v0[14] + 8))(v0[16], v0[10]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_225B4E9E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2259FE39C;

  return sub_225B4E324(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_225B4EABC(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_225CCF404();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B4EB7C, 0, 0);
}

uint64_t sub_225B4EB7C()
{
  v1 = _sSd13CoreIDVSharedE8durations8DurationVvg_0();
  v3 = v2;
  sub_225CCFAF4();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_225B4EC58;

  return sub_225A015E8(v1, v3, 0, 0, 1);
}

uint64_t sub_225B4EC58()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_225B4EE60;
  }

  else
  {
    v5 = sub_225B4EDC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225B4EDC8()
{
  sub_225A02370();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B4EE60()
{
  sub_225A02370();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B4EF00()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A02E94;

  return sub_225B4EABC(v2);
}

uint64_t sub_225B4EFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - v9;
  sub_225A023C4(a1, v19 - v9);
  v11 = sub_225CCE994();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_225B4F198(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_225CCE904();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_225CCE984();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_225B4F198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225B4F200(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2259FE39C;

  return v8(a1);
}

uint64_t sub_225B4F2F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225B4F200(a1, v4, v5, v6);
}

uint64_t sub_225B4F3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_225B4F470;

  return MEMORY[0x2822004C0](a1, a4);
}

uint64_t sub_225B4F470()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    if (v2[2])
    {
      swift_getObjectType();
      v3 = sub_225CCE904();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_225B4F5E0, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t TimerHelper.__allocating_init()()
{
  v0 = sub_225CCDA94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *(v5 + 16) = 1315859240;
  *(v5 + 24) = 0;
  sub_225CCDA84();
  v6 = sub_225CCDA74();
  (*(v1 + 8))(v4, v0);
  *(v5 + 24) = v6;
  return v5;
}

uint64_t TimerHelper.init()()
{
  v1 = v0;
  v2 = sub_225CCDA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 1315859240;
  *(v1 + 24) = 0;
  sub_225CCDA84();
  v7 = sub_225CCDA74();
  (*(v3 + 8))(v6, v2);
  *(v1 + 24) = v7;
  return v1;
}

uint64_t sub_225B4F7E8()
{
  v1 = v0;
  v2 = sub_225CCDA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCDA84();
  v7 = sub_225CCDA74();
  result = (*(v3 + 8))(v6, v2);
  *(v1 + 24) = v7;
  return result;
}

uint64_t sub_225B4F8C0()
{
  v1 = v0;
  v2 = sub_225CCDA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCDA84();
  v7 = sub_225CCDA74();
  result = (*(v3 + 8))(v6, v2);
  if (v7 < *(v1 + 24))
  {
    __break(1u);
  }

  return result;
}

void runAsyncAndBlock<A>(file:function:line:_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a6;
  v34 = a7;
  v35 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v32 - v17;
  v19 = sub_225CCEFC4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v32 - v22;
  sub_225B4FD44(a1, a2, a3, a4, a5);
  (*(*(a8 - 8) + 56))(v23, 1, 1, a8);
  v24 = sub_225B515E8();
  (*(v20 + 8))(v23, v19);
  v25 = dispatch_semaphore_create(0);
  v26 = sub_225CCE994();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v33;
  v27[4] = a8;
  v27[5] = v28;
  v27[6] = v34;
  v27[7] = v24;
  v27[8] = v25;

  v29 = v25;
  sub_225AFBC30(0, 0, v18, &unk_225CEF5B0, v27);

  sub_225CCEEB4();
  v36 = a8;
  v30 = *(*v24 + *MEMORY[0x277D841D0] + 16);
  v31 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v24 + v31));
  sub_225B51740(v24 + v30, v35);
  os_unfair_lock_unlock((v24 + v31));
}

void sub_225B4FD44(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v26 = v15;
    swift_once();
    v15 = v26;
  }

  if (byte_28105B9F8 == 1)
  {
    v26 = v15;
    v16 = sub_225CCE444();
    v17 = [v26 BOOLForKey_];

    if (v17)
    {
      sub_225CCF5F4();
      if (LOBYTE(v27[0]) == 1)
      {
        v26 = a5;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v18 = off_28105B918;
        v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v20));
        (*(v11 + 16))(v14, &v18[v19], v10);
        os_unfair_lock_unlock(&v18[v20]);

        v21 = sub_225CCD934();
        v22 = sub_225CCED24();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v27[0] = v25;
          *v23 = 136315650;
          *(v23 + 4) = sub_2259BE198(a3, a4, v27);
          *(v23 + 12) = 2080;
          *(v23 + 14) = sub_2259BE198(a1, a2, v27);
          *(v23 + 22) = 2048;
          *(v23 + 24) = v26;
          _os_log_impl(&dword_2259A7000, v21, v22, "CONCURRENCY ERROR: runAsyncAndBlock should not be invoked from a Swift Concurrency thread. Invoked by %s %s:%ld", v23, 0x20u);
          v24 = v25;
          swift_arrayDestroy();
          MEMORY[0x22AA6F950](v24, -1, -1);
          MEMORY[0x22AA6F950](v23, -1, -1);
        }

        (*(v11 + 8))(v14, v10);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_225B5010C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[5] = *(a8 - 8);
  v10 = swift_task_alloc();
  v8[6] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[7] = v11;
  *v11 = v8;
  v11[1] = sub_225B50264;

  return v13(v10);
}

uint64_t sub_225B50264()
{

  return MEMORY[0x2822009F8](sub_225B50360, 0, 0);
}

uint64_t sub_225B50360()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  sub_225CCEFC4();
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  sub_225B518DC(v4 + v6);
  os_unfair_lock_unlock((v4 + v7));

  sub_225CCEEC4();
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_225B50490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCEFC4();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *(a3 - 8);
  (*(v7 + 16))(a1, a2, a3);
  return (*(v7 + 56))(a1, 0, 1, a3);
}

uint64_t sub_225B50574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_225CCEFC4();
  MEMORY[0x28223BE20](v6, v7);
  v9 = v13 - v8;
  (*(v10 + 16))(v13 - v8, a1);
  v11 = *(a2 - 8);
  result = (*(v11 + 48))(v9, 1, a2);
  if (result != 1)
  {
    return (*(v11 + 32))(a3, v9, a2);
  }

  __break(1u);
  return result;
}

void runAsyncAndBlock<A>(timeout:file:function:line:_:)(double a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v57 = a4;
  v60 = a7;
  v61 = a8;
  v58 = a5;
  v59 = a6;
  v62 = a2;
  v55 = a1;
  v56 = a9;
  v12 = sub_225CCDA14();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_225CCDA94();
  v50 = *(v16 - 8);
  v51 = v16;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v54 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v49 = &v49 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v49 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v26 = sub_225CCFC34();
  v27 = sub_225CCEFC4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v49 - v30;
  sub_225B4FD44(a3, v57, v58, v59, v60);
  (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
  v32 = sub_225B515E8();
  (*(v28 + 8))(v31, v27);
  v33 = dispatch_semaphore_create(0);
  v34 = sub_225CCE994();
  (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v36 = v61;
  v35[4] = a11;
  v35[5] = v36;
  v35[6] = a10;
  v35[7] = v32;
  v35[8] = v33;

  v37 = v33;
  sub_225AFBC30(0, 0, v25, &unk_225CEF5C0, v35);

  if ((v62 & 1) == 0)
  {
    v40 = v54;
    sub_225CCDA84();
    if ((~*&v55 & 0x7FF0000000000000) != 0)
    {
      if (v55 > -9.22337204e18)
      {
        if (v55 < 9.22337204e18)
        {
          *v15 = v55;
          v42 = v52;
          v41 = v53;
          (*(v52 + 104))(v15, *MEMORY[0x277D85188], v53);
          v43 = v49;
          MEMORY[0x22AA6C2E0](v40, v15);
          (*(v42 + 8))(v15, v41);
          v44 = *(v50 + 8);
          v45 = v40;
          v46 = v51;
          v44(v45, v51);
          LOBYTE(v41) = sub_225CCEEA4();
          v38 = (v44)(v43, v46);
          if (v41)
          {
            sub_225A02370();
            swift_allocError();
            swift_willThrow();

            return;
          }

          goto LABEL_8;
        }

LABEL_12:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  v38 = sub_225CCEEB4();
LABEL_8:
  MEMORY[0x28223BE20](v38, v39);
  *(&v49 - 2) = a11;
  v47 = *(*v32 + *MEMORY[0x277D841D0] + 16);
  v48 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v32 + v48));
  sub_225B51888(v32 + v47, v56);
  os_unfair_lock_unlock((v32 + v48));
}

uint64_t sub_225B50C28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[5] = *(a8 - 8);
  v10 = swift_task_alloc();
  v8[6] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[7] = v11;
  *v11 = v8;
  v11[1] = sub_225B50D80;

  return v13(v10);
}

uint64_t sub_225B50D80()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225B50FF4;
  }

  else
  {
    v2 = sub_225B50E94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B50E94()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  sub_225CCFC34();
  sub_225CCEFC4();
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  sub_225B518C0(v4 + v6);
  os_unfair_lock_unlock((v4 + v7));

  (*(v2 + 8))(v1, v3);
  sub_225CCEEC4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_225B50FF4()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  sub_225CCFC34();
  sub_225CCEFC4();
  v5 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_225B518A4((v3 + v5));
  os_unfair_lock_unlock((v3 + v6));

  sub_225CCEEC4();

  v7 = v0[1];

  return v7();
}

uint64_t sub_225B51134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v6 = sub_225CCFC34();
  v7 = sub_225CCEFC4();
  (*(*(v7 - 8) + 8))(a1, v7);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  swift_storeEnumTagMultiPayload();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

id sub_225B5125C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v4 = sub_225CCFC34();
  v5 = sub_225CCEFC4();
  (*(*(v5 - 8) + 8))(a1, v5);
  *a1 = a2;
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  return a2;
}

uint64_t sub_225B51354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v4 = sub_225CCFC34();
  v5 = sub_225CCEFC4();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  result = (*(*(v4 - 8) + 48))(v8, 1, v4);
  if (result != 1)
  {
    return sub_225AF9230(v4, &v12, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_225B514B4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_225CCEB44();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

void sub_225B51530(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_225B515E8()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_225CCF344();
  return sub_225CCF334();
}

uint64_t sub_225B51664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2259FE39C;

  return sub_225B5010C(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_225B517AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_225A02E94;

  return sub_225B50C28(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_225B518F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_225B519D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC10);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v29 = &v28 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC18);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v28 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC20);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v28 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC28);
  sub_225CCD814();
  sub_225CCD844();
  v19 = *(v7 + 8);
  v19(v15, v6);
  sub_225CCE704();
  sub_225B51E0C();
  v30 = v18;
  sub_225CCD804();
  v20 = v29;
  sub_225CCD824();
  v21 = v28;
  v19(v11, v6);

  v23 = v31;
  v22 = v32;
  v24 = v20;
  if ((*(v31 + 48))(v20, 1, v32) == 1)
  {
    v19(v30, v6);
    sub_225B51E70(v20);
    return 0;
  }

  else
  {
    v26 = v21;
    (*(v23 + 32))(v21, v24, v22);
    swift_getKeyPath();
    sub_225CCD854();

    v27 = MEMORY[0x22AA6CD90](v33, v34, v35, v36);

    (*(v23 + 8))(v26, v22);
    v19(v30, v6);
    return v27;
  }
}

unint64_t sub_225B51E0C()
{
  result = qword_27D73DC30;
  if (!qword_27D73DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DC30);
  }

  return result;
}

uint64_t sub_225B51E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225B51F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2259F18D4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

id sub_225B51FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    type metadata accessor for IdentityProofingTextReplacementHelper();
    v17 = swift_allocObject();
    *(v17 + 16) = 0xD000000000000010;
    *(v17 + 24) = 0x8000000225D1E980;
    strcpy((v17 + 32), "id.subregion");
    *(v17 + 45) = 0;
    *(v17 + 46) = -5120;
    strcpy((v17 + 48), "idtype.proper");
    *(v17 + 62) = -4864;
    strcpy((v17 + 64), "idtype.lower");
    *(v17 + 77) = 0;
    *(v17 + 78) = -5120;
    *(v17 + 80) = 0x6E2E726575737369;
    *(v17 + 88) = 0xEB00000000656D61;
    *(v17 + 96) = 0xD000000000000011;
    *(v17 + 104) = 0x8000000225D1E9A0;
    *(v17 + 112) = 0xD000000000000018;
    *(v17 + 120) = 0x8000000225D1E9C0;
    *(v17 + 128) = 0xD00000000000001ALL;
    *(v17 + 136) = 0x8000000225D1E9E0;
    *(v17 + 144) = 0xD000000000000020;
    *(v17 + 152) = 0x8000000225D1EA00;
    *(v17 + 160) = 0xD000000000000023;
    *(v17 + 168) = 0x8000000225D1EA30;
    *(v17 + 176) = 0xD000000000000012;
    *(v17 + 184) = 0x8000000225D1EA60;
    *(v17 + 192) = a1;
    *(v17 + 200) = a2;
    *(v17 + 208) = a3;
    *(v17 + 216) = a4;
    *(v17 + 224) = a5;
    *(v17 + 232) = a6;
    *(v17 + 240) = a7;
    *(v17 + 248) = wapiCapability;

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *IdentityProofingTextReplacementHelper.__allocating_init(attributeMessages:messageReplacements:state:country:documentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    type metadata accessor for IdentityProofingTextReplacementHelper();
    result = swift_allocObject();
    *(result + 2) = 0xD000000000000010;
    *(result + 3) = 0x8000000225D1E980;
    strcpy(result + 32, "id.subregion");
    result[45] = 0;
    *(result + 23) = -5120;
    strcpy(result + 48, "idtype.proper");
    *(result + 31) = -4864;
    strcpy(result + 64, "idtype.lower");
    result[77] = 0;
    *(result + 39) = -5120;
    *(result + 10) = 0x6E2E726575737369;
    *(result + 11) = 0xEB00000000656D61;
    *(result + 12) = 0xD000000000000011;
    *(result + 13) = 0x8000000225D1E9A0;
    *(result + 14) = 0xD000000000000018;
    *(result + 15) = 0x8000000225D1E9C0;
    *(result + 16) = 0xD00000000000001ALL;
    *(result + 17) = 0x8000000225D1E9E0;
    *(result + 18) = 0xD000000000000020;
    *(result + 19) = 0x8000000225D1EA00;
    *(result + 20) = 0xD000000000000023;
    *(result + 21) = 0x8000000225D1EA30;
    *(result + 22) = 0xD000000000000012;
    *(result + 23) = 0x8000000225D1EA60;
    *(result + 24) = a1;
    *(result + 25) = a2;
    *(result + 26) = a3;
    *(result + 27) = a4;
    *(result + 28) = a5;
    *(result + 29) = a6;
    *(result + 30) = a7;
    result[248] = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IdentityProofingTextReplacementHelper.__allocating_init(attributeMessages:messageReplacements:state:country:documentType:isWapi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000010;
  *(result + 24) = 0x8000000225D1E980;
  strcpy((result + 32), "id.subregion");
  *(result + 45) = 0;
  *(result + 46) = -5120;
  strcpy((result + 48), "idtype.proper");
  *(result + 62) = -4864;
  strcpy((result + 64), "idtype.lower");
  *(result + 77) = 0;
  *(result + 78) = -5120;
  *(result + 80) = 0x6E2E726575737369;
  *(result + 88) = 0xEB00000000656D61;
  *(result + 96) = 0xD000000000000011;
  *(result + 104) = 0x8000000225D1E9A0;
  *(result + 112) = 0xD000000000000018;
  *(result + 120) = 0x8000000225D1E9C0;
  *(result + 128) = 0xD00000000000001ALL;
  *(result + 136) = 0x8000000225D1E9E0;
  *(result + 144) = 0xD000000000000020;
  *(result + 152) = 0x8000000225D1EA00;
  *(result + 160) = 0xD000000000000023;
  *(result + 168) = 0x8000000225D1EA30;
  *(result + 176) = 0xD000000000000012;
  *(result + 184) = 0x8000000225D1EA60;
  *(result + 192) = a1;
  *(result + 200) = a2;
  *(result + 208) = a3;
  *(result + 216) = a4;
  *(result + 224) = a5;
  *(result + 232) = a6;
  *(result + 240) = a7;
  *(result + 248) = a8;
  return result;
}

uint64_t IdentityProofingTextReplacementHelper.init(attributeMessages:messageReplacements:state:country:documentType:isWapi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 16) = 0xD000000000000010;
  *(v8 + 24) = 0x8000000225D1E980;
  strcpy((v8 + 32), "id.subregion");
  *(v8 + 45) = 0;
  *(v8 + 46) = -5120;
  strcpy((v8 + 48), "idtype.proper");
  *(v8 + 62) = -4864;
  strcpy((v8 + 64), "idtype.lower");
  *(v8 + 77) = 0;
  *(v8 + 78) = -5120;
  *(v8 + 80) = 0x6E2E726575737369;
  *(v8 + 88) = 0xEB00000000656D61;
  *(v8 + 96) = 0xD000000000000011;
  *(v8 + 104) = 0x8000000225D1E9A0;
  *(v8 + 112) = 0xD000000000000018;
  *(v8 + 120) = 0x8000000225D1E9C0;
  *(v8 + 128) = 0xD00000000000001ALL;
  *(v8 + 136) = 0x8000000225D1E9E0;
  *(v8 + 144) = 0xD000000000000020;
  *(v8 + 152) = 0x8000000225D1EA00;
  *(v8 + 160) = 0xD000000000000023;
  *(v8 + 168) = 0x8000000225D1EA30;
  *(v8 + 176) = 0xD000000000000012;
  *(v8 + 184) = 0x8000000225D1EA60;
  *(v8 + 192) = a1;
  *(v8 + 200) = a2;
  *(v8 + 208) = a3;
  *(v8 + 216) = a4;
  *(v8 + 224) = a5;
  *(v8 + 232) = a6;
  *(v8 + 240) = a7;
  *(v8 + 248) = a8;
  return v8;
}

uint64_t sub_225B526EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v152 = sub_225CCD954();
  v6 = *(v152 - 8);
  v8 = MEMORY[0x28223BE20](v152, v7);
  v10 = v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v135 = v131 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v150 = v131 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v151 = v131 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC38);
  v147 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v156 = v131 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC40);
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = v2[24];
  if (!*(v31 + 16))
  {
LABEL_88:
    if (qword_28105B910 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_89;
  }

  v132 = v131 - v30;
  v133 = v29;

  v32 = sub_2259F18D4(a1, a2);
  if ((v33 & 1) == 0)
  {

    goto LABEL_88;
  }

  v157 = v6;
  v34 = (*(v31 + 56) + 16 * v32);
  v35 = *v34;
  v10 = v34[1];

  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC48);
  sub_225CCD814();
  a1 = v132;
  v36 = v133;
  sub_225CCD844();
  v131[0] = *(v23 + 8);
  v131[1] = v23 + 8;
  (v131[0])(v27, v36);
  v137 = v35;
  *&v166 = v35;
  *(&v166 + 1) = v10;
  sub_225B53BA0();
  sub_225B53BF4();
  v37 = sub_225CCE374();
  v38 = v37;
  v146 = *(v37 + 16);
  if (!v146)
  {
LABEL_93:

    (v131[0])(v132, v133);
    return v137;
  }

  v142 = v37 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
  v158 = (v157 + 2);
  ++v157;
  v140 = (v147 + 8);
  v141 = v147 + 16;

  a2 = 0;
  v155 = 0;
  *&v39 = 136315138;
  v138 = v39;
  *(&v39 + 1) = 10;
  v139 = xmmword_225CD73C0;
  *&v39 = 136315394;
  v134 = v39;
  v136 = v10;
  v6 = v152;
  v149 = v3;
  v143 = v38;
  v144 = v10;
  v145 = v19;
  while (a2 < *(v38 + 16))
  {
    (*(v147 + 16))(v156, v142 + *(v147 + 72) * a2, v19);
    swift_getKeyPath();
    sub_225CCD854();

    v40 = MEMORY[0x22AA6CD90](v166, *(&v166 + 1), v167, v168);
    v42 = v41;

    *&v169 = v40;
    *(&v169 + 1) = v42;
    v43 = v3[2];
    v44 = v3[3];
    v154 = a2;
    if (v40 == v43 && v42 == v44 || (sub_225CCF934() & 1) != 0)
    {
      *&v166 = v40;
      *(&v166 + 1) = v42;

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v45 = v3[28];
      v46 = v3[29];

      MEMORY[0x22AA6CE70](v45, v46);

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v47 = v3[26];
      v48 = v3[27];

      MEMORY[0x22AA6CE70](v47, v48);

      v49 = *(&v166 + 1);
      v40 = v166;
      v50 = 1;
      swift_beginAccess();
      v169 = __PAIR128__(v49, v40);

      if (__PAIR128__(v49, v40) != *(v3 + 2))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v50 = 0;
      if (v40 != v3[4])
      {
        v49 = v42;
LABEL_17:
        if ((sub_225CCF934() & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v49 = v42;
      if (v42 != v3[5])
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    *&v166 = v40;
    *(&v166 + 1) = v49;

    MEMORY[0x22AA6CE70](46, 0xE100000000000000);
    v51 = v3[26];
    v52 = v3[27];

    MEMORY[0x22AA6CE70](v51, v52);

    v49 = *(&v166 + 1);
    v40 = v166;
    v50 = 1;
    swift_beginAccess();
    v169 = __PAIR128__(v49, v40);

LABEL_19:
    if (v40 == v3[6])
    {
      v53 = v151;
      if (v49 == v3[7])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v53 = v151;
    }

    if (sub_225CCF934() & 1) != 0 || v40 == v3[8] && v49 == v3[9] || (sub_225CCF934())
    {
LABEL_27:
      *&v166 = v40;
      *(&v166 + 1) = v49;

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v54 = v3[30];
      if (v54)
      {
        v55 = 0x636972656E6567;
        if (v54 == 1)
        {
          v55 = 0x64696574617473;
        }

        if (v54 == 3)
        {
          v56 = 0x74726F7073736170;
        }

        else
        {
          v56 = v55;
        }

        if (v54 == 3)
        {
          v57 = 0xE800000000000000;
        }

        else
        {
          v57 = 0xE700000000000000;
        }
      }

      else
      {
        v57 = 0xE200000000000000;
        v56 = 27748;
      }

      MEMORY[0x22AA6CE70](v56, v57);

      v58 = *(&v166 + 1);
      v40 = v166;
      swift_beginAccess();
      v169 = __PAIR128__(v58, v40);

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v59 = off_28105B918;
      v60 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v61 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v61));
      (*v158)(v53, &v59[v60], v6);
      os_unfair_lock_unlock(&v59[v61]);
      v62 = sub_225CCD934();
      v63 = sub_225CCED04();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v166 = v65;
        *v64 = v138;

        v66 = sub_2259BE198(v40, v58, &v166);

        *(v64 + 4) = v66;
        _os_log_impl(&dword_2259A7000, v62, v63, "attributeID is %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x22AA6F950](v65, -1, -1);
        MEMORY[0x22AA6F950](v64, -1, -1);

        (*v157)(v151, v6);
      }

      else
      {

        (*v157)(v53, v6);
      }

      v50 = 1;
      if (v40 == v3[10] && v58 == v3[11])
      {
LABEL_45:
        *&v166 = v40;
        *(&v166 + 1) = v58;

        MEMORY[0x22AA6CE70](46, 0xE100000000000000);
        v67 = v3[28];
        v68 = v3[29];

        MEMORY[0x22AA6CE70](v67, v68);

        MEMORY[0x22AA6CE70](46, 0xE100000000000000);
        v69 = v3[26];
        v70 = v3[27];

        MEMORY[0x22AA6CE70](v69, v70);

        v58 = *(&v166 + 1);
        v40 = v166;
        v50 = 1;
        swift_beginAccess();
        v169 = __PAIR128__(v58, v40);

        v71 = v3[13];
        if (v40 != v3[12])
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (v40 == v3[10])
    {
      v58 = v49;
      if (v49 == v3[11])
      {
        goto LABEL_45;
      }
    }

    else
    {
      v58 = v49;
    }

LABEL_44:
    if (sub_225CCF934())
    {
      goto LABEL_45;
    }

    v71 = v3[13];
    if (v40 != v3[12])
    {
LABEL_49:
      v72 = v150;
LABEL_50:
      if ((sub_225CCF934() & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_51;
    }

LABEL_46:
    v72 = v150;
    if (v58 != v71)
    {
      goto LABEL_50;
    }

LABEL_51:
    if (*(v3 + 248))
    {
      v73 = 1851878519;
    }

    else
    {
      v73 = 1768319351;
    }

    *&v166 = v40;
    *(&v166 + 1) = v58;

    MEMORY[0x22AA6CE70](46, 0xE100000000000000);
    MEMORY[0x22AA6CE70](v73, 0xE400000000000000);
    v58 = *(&v166 + 1);
    v40 = v166;
    swift_beginAccess();
    v169 = __PAIR128__(v58, v40);

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v74 = off_28105B918;
    v75 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v76 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v76));
    (*v158)(v72, &v74[v75], v6);
    os_unfair_lock_unlock(&v74[v76]);

    v77 = sub_225CCD934();
    v78 = sub_225CCED04();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v166 = v80;
      *v79 = v138;

      v81 = sub_2259BE198(v40, v58, &v166);

      *(v79 + 4) = v81;
      _os_log_impl(&dword_2259A7000, v77, v78, "attributeID is %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x22AA6F950](v80, -1, -1);
      MEMORY[0x22AA6F950](v79, -1, -1);

      (*v157)(v150, v6);
    }

    else
    {

      (*v157)(v72, v6);
    }

    v50 = 1;
LABEL_60:
    v148 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08);
    inited = swift_initStackObject();
    v153 = v131;
    *(inited + 16) = v139;
    v83 = v3[15];
    *(inited + 32) = v3[14];
    *(inited + 40) = v83;
    v84 = v3[17];
    *(inited + 48) = v3[16];
    *(inited + 56) = v84;
    v85 = v3[19];
    *(inited + 64) = v3[18];
    *(inited + 72) = v85;
    a1 = v3[21];
    *(inited + 80) = v3[20];
    *(inited + 88) = a1;
    v86 = v3[23];
    *(inited + 96) = v3[22];
    *(inited + 104) = v86;
    *&v166 = v40;
    *(&v166 + 1) = v58;
    MEMORY[0x28223BE20](v83, v87);
    v129 = &v166;

    v10 = v155;
    LOBYTE(v85) = sub_225B53C58(sub_225AF3BE4, v128, inited);
    v155 = v10;
    swift_setDeallocating();
    swift_arrayDestroy();

    if (v85)
    {
      *&v166 = v40;
      *(&v166 + 1) = v58;
      swift_bridgeObjectRetain_n();
      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v88 = v149;
      v89 = v149[28];
      v90 = v149[29];

      MEMORY[0x22AA6CE70](v89, v90);

      a1 = *(&v166 + 1);
      if (*(v88[25] + 16) && (v91 = v166, , sub_2259F18D4(v91, a1), v93 = v92, , (v93 & 1) != 0))
      {
        swift_beginAccess();
        *&v169 = v91;
        *(&v169 + 1) = a1;

        v94 = a1;
      }

      else
      {
        *&v166 = v40;
        *(&v166 + 1) = v58;

        MEMORY[0x22AA6CE70](0x746C75616665642ELL, 0xE800000000000000);
        v94 = *(&v166 + 1);
        v91 = v166;
        swift_beginAccess();
        v169 = __PAIR128__(v94, v91);
      }

      v6 = v152;
      v153 = v91;

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v95 = off_28105B918;
      v96 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v97 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v97));
      v98 = v135;
      (*v158)(v135, &v95[v96], v6);
      v99 = &v95[v97];
      v100 = v98;
      os_unfair_lock_unlock(v99);

      v101 = sub_225CCD934();
      v102 = sub_225CCED04();

      if (os_log_type_enabled(v101, v102))
      {
        a1 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v166 = v103;
        *a1 = v134;
        v104 = sub_2259BE198(v40, v58, &v166);

        *(a1 + 4) = v104;
        *(a1 + 12) = 2080;

        v105 = v153;
        v106 = sub_2259BE198(v153, v94, &v166);

        *(a1 + 14) = v106;
        _os_log_impl(&dword_2259A7000, v101, v102, "IdentityProofingTextReplacementHelper updating %s to %s", a1, 0x16u);
        swift_arrayDestroy();
        v107 = v103;
        v6 = v152;
        MEMORY[0x22AA6F950](v107, -1, -1);
        MEMORY[0x22AA6F950](a1, -1, -1);

        v10 = v105;
        (*v157)(v100, v6);
LABEL_71:
        v3 = v149;
        v19 = v145;
      }

      else
      {

        (*v157)(v100, v6);
        v3 = v149;
        v19 = v145;
        v10 = v153;
      }

      v108 = v3[25];
      if (*(v108 + 16))
      {

        v10 = sub_2259F18D4(v10, v94);
        v112 = v111;

        if (v112)
        {
          goto LABEL_78;
        }

LABEL_82:

        goto LABEL_5;
      }

      goto LABEL_5;
    }

    if (v148)
    {
      v10 = v40;
      v94 = v58;
      v6 = v152;
      goto LABEL_71;
    }

    v3 = v149;
    v108 = v149[24];
    v6 = v152;
    if (*(v108 + 16))
    {

      v10 = sub_2259F18D4(v40, v58);
      v110 = v109;

      if (v110)
      {
        v19 = v145;
LABEL_78:
        v113 = (*(v108 + 56) + 16 * v10);
        v114 = *v113;
        v115 = v113[1];

        v164 = v137;
        v165 = v136;
        swift_getKeyPath();
        a1 = v156;
        sub_225CCD854();

        v10 = v168;
        v161 = v166;
        v162 = v167;
        v163 = v168;
        v159 = v114;
        v160 = v115;
        v116 = sub_2259D8654();
        v129 = sub_225B53E2C();
        v130 = v116;
        v128[1] = v116;
        v128[0] = MEMORY[0x277D837D0];
        v137 = sub_225CCF064();
        v118 = v117;

        (*v140)(a1, v19);

        v136 = v118;
        v6 = v152;
        goto LABEL_6;
      }

      v19 = v145;
      goto LABEL_82;
    }

    v19 = v145;
LABEL_5:
    (*v140)(v156, v19);

LABEL_6:
    a2 = v154 + 1;
    v38 = v143;
    if (v146 == v154 + 1)
    {

      goto LABEL_93;
    }
  }

  __break(1u);
LABEL_95:
  swift_once();
LABEL_89:
  v119 = off_28105B918;
  v120 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v121 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v121));
  v122 = v152;
  (*(v6 + 16))(v10, &v119[v120], v152);
  os_unfair_lock_unlock(&v119[v121]);

  v123 = sub_225CCD934();
  v124 = sub_225CCED14();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *&v166 = v126;
    *v125 = 136315138;
    *(v125 + 4) = sub_2259BE198(a1, a2, &v166);
    _os_log_impl(&dword_2259A7000, v123, v124, "Attribute config is always expected to have a value for the messageId %s", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v126);
    MEMORY[0x22AA6F950](v126, -1, -1);
    MEMORY[0x22AA6F950](v125, -1, -1);
  }

  (*(v6 + 8))(v10, v122);
  return 0;
}

uint64_t IdentityProofingTextReplacementHelper.deinit()
{

  return v0;
}

uint64_t IdentityProofingTextReplacementHelper.__deallocating_deinit()
{
  IdentityProofingTextReplacementHelper.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_225B53BA0()
{
  result = qword_27D73DC50;
  if (!qword_27D73DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DC50);
  }

  return result;
}

unint64_t sub_225B53BF4()
{
  result = qword_27D73DC58;
  if (!qword_27D73DC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DC58);
  }

  return result;
}

uint64_t sub_225B53C58(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_225B53D04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_225CCE644();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_225CCE644();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_225B53DD4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_225CCF934() & 1;
  }
}

unint64_t sub_225B53E2C()
{
  result = qword_27D73DC60;
  if (!qword_27D73DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DC60);
  }

  return result;
}

id IdentityBindingDetails.__allocating_init(templateUUIDs:passDescriptions:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_templateUUIDs] = a1;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_passDescriptions] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id IdentityBindingDetails.init(templateUUIDs:passDescriptions:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_templateUUIDs] = a1;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_passDescriptions] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall IdentityBindingDetails.encode(with:)(NSCoder with)
{
  sub_225CCD124();
  v2 = sub_225CCE7F4();
  v3 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_225CCE7F4();
  v5 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id IdentityBindingDetails.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_225CD4890;
  v6 = sub_2259D8718(0, &qword_281059AA0);
  *(v5 + 32) = v6;
  *(v5 + 40) = sub_2259D8718(0, &unk_27D73DC90);
  sub_225CCEF24();

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DCA0);
    if (swift_dynamicCast())
    {
      *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_templateUUIDs] = v11;
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_225CD4890;
      *(v7 + 32) = v6;
      *(v7 + 40) = sub_2259D8718(0, &qword_281059A60);
      sub_225CCEF24();

      if (v13)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
        if (swift_dynamicCast())
        {
          *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_passDescriptions] = v11;
          v10.receiver = v2;
          v10.super_class = ObjectType;
          v8 = objc_msgSendSuper2(&v10, sel_init);

          return v8;
        }
      }

      else
      {

        sub_225B5445C(v12);
      }
    }

    else
    {
    }
  }

  else
  {

    sub_225B5445C(v12);
  }

  swift_deallocPartialClassInstance();
  return 0;
}