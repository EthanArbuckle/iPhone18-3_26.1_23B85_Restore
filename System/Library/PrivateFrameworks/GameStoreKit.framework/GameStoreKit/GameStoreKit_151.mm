uint64_t sub_24F5A2924@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93A400;
  *(v2 + 32) = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v3 = sub_24F926D08();

  *(v2 + 40) = v3;
  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v2);
  sub_24F923BD8();
  type metadata accessor for LockupContentView.Ordinal(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  sub_24F9237D8();
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  *&v7 = v13;
  result = sub_24F9278A8();
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v9;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 80) = v10;
  *(a1 + 88) = 0xBFE657184AE74487;
  *(a1 + 96) = v5;
  *(a1 + 104) = v6;
  return result;
}

uint64_t sub_24F5A2B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F5A2B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5A2BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5A2C40(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F5A2D90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F5A2ECC()
{
  type metadata accessor for LockupViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_24F5A3970(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24F5A39D4(319, &qword_27F215E10, sub_24E66ED98);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F5A2FE8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F5A30B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5A3168()
{
  type metadata accessor for LockupViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_24F5A3970(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F5A3238()
{
  result = qword_27F248A88;
  if (!qword_27F248A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248A90);
    sub_24F5A2B1C(&qword_27F248A58, type metadata accessor for LockupContentView.HorizontalContent);
    sub_24F5A2B1C(&qword_27F248A60, type metadata accessor for LockupContentView.VerticalContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248A88);
  }

  return result;
}

uint64_t sub_24F5A33A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupContentView.TextStack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5A3424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F5A3500(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5A35B0()
{
  sub_24E66ECF0(319, &qword_27F254DE0);
  if (v0 <= 0x3F)
  {
    sub_24F5A39D4(319, &qword_27F215E10, sub_24E66ED98);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F5A3688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F5A3758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5A3808()
{
  sub_24E66ECF0(319, &qword_27F254DE0);
  if (v0 <= 0x3F)
  {
    sub_24F5A3970(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F215E08);
      if (v2 <= 0x3F)
      {
        sub_24F5A39D4(319, &qword_27F2340A0, sub_24E62C088);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F5A3970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24F5A39D4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_24F9237E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F5A3A48()
{
  result = qword_27F248B28;
  if (!qword_27F248B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248AA0);
    sub_24E602068(&qword_27F248B30, &qword_27F248B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248B28);
  }

  return result;
}

unint64_t sub_24F5A3B04()
{
  result = qword_27F248B40;
  if (!qword_27F248B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248AE0);
    sub_24E602068(&qword_27F248B48, &qword_27F248AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248B40);
  }

  return result;
}

double sub_24F5A3C10(uint64_t a1)
{
  *(a1 + 352) = 0;
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24F5A3C80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24F5A3CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_24F5A3D84()
{
  result = qword_27F248BE0;
  if (!qword_27F248BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248BE8);
    sub_24EB8F770();
    sub_24E602068(&qword_27F248BF0, &qword_27F248B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248BE0);
  }

  return result;
}

uint64_t sub_24F5A3EC4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F5A3F40()
{
  result = qword_27F248C18;
  if (!qword_27F248C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248BC8);
    sub_24F5A3FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C18);
  }

  return result;
}

unint64_t sub_24F5A3FCC()
{
  result = qword_27F248C20;
  if (!qword_27F248C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248BC0);
    sub_24EA66BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C20);
  }

  return result;
}

unint64_t sub_24F5A4094()
{
  result = qword_27F248C40;
  if (!qword_27F248C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248C48);
    sub_24E602068(&qword_27F248C50, &qword_27F248C58);
    sub_24E602068(&qword_27F2282B0, &qword_27F2282B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C40);
  }

  return result;
}

uint64_t sub_24F5A41C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GlassBackgroundModifierWithShape();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  (*(v8 + 16))(v10, a1, a3);
  (*(v8 + 32))(v14, v10, a3);
  MEMORY[0x25304C420](v14, a2, v11, a4);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24F5A4374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248CF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248CF8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D00);
  MEMORY[0x28223BE20](v11);
  v13 = &v43[-1] - v12;
  v14 = *(v2 + 40);
  sub_24F5A47C8(a1, v10);
  if (v14 == 1)
  {
    v42 = a2;
    v15 = sub_24F924258();
    v43[3] = v15;
    v43[4] = sub_24F5AB138(&qword_27F212868, MEMORY[0x277CDFC08]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    v17 = *(v2 + 16);
    v18 = *(v15 + 20);
    v19 = *MEMORY[0x277CE0118];
    v20 = sub_24F924B38();
    (*(*(v20 - 8) + 104))(boxed_opaque_existential_1 + v18, v19, v20);
    *boxed_opaque_existential_1 = v17;
    boxed_opaque_existential_1[1] = v17;
    sub_24E60169C(v43, v13, &qword_27F248D88);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D28);
    sub_24E60169C(v10, &v13[v21[9]], &qword_27F248CF8);
    v22 = &v13[v21[10]];
    *v22 = sub_24F923398() & 1;
    *(v22 + 1) = v23;
    v22[16] = v24 & 1;
    v25 = &v13[v21[11]];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    if (qword_27F211808 != -1)
    {
      swift_once();
    }

    v26 = qword_27F24E488;
    v27 = sub_24F923398();
    v29 = v28;
    v31 = v30;
    v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D18) + 36)];
    *v32 = v26;
    v32[8] = v27 & 1;
    *(v32 + 2) = v29;
    v32[24] = v31 & 1;
    v33 = sub_24F923398();
    v35 = v34;
    v37 = v36;
    sub_24E601704(v43, &qword_27F248D88);
    sub_24E601704(v10, &qword_27F248CF8);
    v38 = &v13[*(v11 + 36)];
    *v38 = v33 & 1;
    *(v38 + 1) = v35;
    v38[16] = v37 & 1;
    v39 = &qword_27F248D00;
    sub_24E60169C(v13, v7, &qword_27F248D00);
    swift_storeEnumTagMultiPayload();
    sub_24F5AAD40();
    sub_24F5AAE84();
    sub_24F924E28();
    v40 = v13;
  }

  else
  {
    v39 = &qword_27F248CF8;
    sub_24E60169C(v10, v7, &qword_27F248CF8);
    swift_storeEnumTagMultiPayload();
    sub_24F5AAD40();
    sub_24F5AAE84();
    sub_24F924E28();
    v40 = v10;
  }

  return sub_24E601704(v40, v39);
}

uint64_t sub_24F5A47C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D90);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D40);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - v8;
  v10 = sub_24F9257F8();
  v11 = *(v2 + 24);
  sub_24F923318();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D70);
  (*(*(v20 - 8) + 16))(v9, a1, v20);
  v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D60) + 36)];
  *v21 = v10;
  *(v21 + 1) = v13;
  *(v21 + 2) = v15;
  *(v21 + 3) = v17;
  *(v21 + 4) = v19;
  v21[40] = 0;
  LOBYTE(a1) = sub_24F925868();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D50) + 36)];
  *v30 = a1;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = *(v2 + 16);
  v32 = &v9[*(v7 + 44)];
  v33 = sub_24F924258();
  v34 = *(v33 + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24F924B38();
  v37 = *(*(v36 - 8) + 104);
  v37(&v32[v34], v35, v36);
  *v32 = v31;
  *(v32 + 1) = v31;
  v38 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48);
  sub_24E60169C(v2 + v38, &v32[*(v39 + 36)], &qword_27F21C920);
  *&v32[*(v39 + 40)] = v11;
  LODWORD(v32) = *(v2 + 41);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246370);
  v41 = v40;
  if (v32 == 1)
  {
    v42 = v54;
    v43 = &v54[*(v40 + 36)];
    v37(&v43[*(v33 + 20)], v35, v36);
    *v43 = v31;
    *(v43 + 1) = v31;
    KeyPath = swift_getKeyPath();
    v45 = 0;
    *v42 = KeyPath;
    *(v42 + 8) = 0;
  }

  else
  {
    v45 = 1;
    v42 = v54;
  }

  (*(*(v41 - 8) + 56))(v42, v45, 1, v41);
  v46 = sub_24F927618();
  v48 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248CF8);
  v50 = v55;
  v51 = v55 + *(v49 + 36);
  sub_24E6009C8(v42, v51, &qword_27F248D90);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D80) + 36));
  *v52 = v46;
  v52[1] = v48;
  return sub_24E6009C8(v9, v50, &qword_27F248D40);
}

uint64_t sub_24F5A4B98()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000012;
    if (v1 != 4)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return 0x746E656964617267;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD00000000000001DLL;
    if (!*v0)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F5A4CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5AAA8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5A4CDC(uint64_t a1)
{
  v2 = sub_24F5A50BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5A4D18(uint64_t a1)
{
  v2 = sub_24F5A50BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientBackground.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248C70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5A50BC();
  sub_24F92D128();
  v11[31] = 0;
  type metadata accessor for JSColor();
  sub_24F5AB138(&qword_27F21C778, type metadata accessor for JSColor);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for GradientBackground(0);
    v11[30] = 1;
    sub_24F92CCF8();
    v11[29] = 2;
    sub_24F9289E8();
    sub_24F5AB138(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    v11[28] = 3;
    sub_24F92CCB8();
    v11[27] = *(v3 + v9[8]);
    v11[26] = 4;
    sub_24F5A5130();
    sub_24F92CD48();
    v11[25] = *(v3 + v9[9]);
    v11[24] = 5;
    sub_24F92CD48();
    v11[15] = *(v3 + v9[10]);
    v11[14] = 6;
    sub_24F5A5184();
    sub_24F92CD48();
    v11[13] = 7;
    sub_24F92CD28();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F5A50BC()
{
  result = qword_27F248C78;
  if (!qword_27F248C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C78);
  }

  return result;
}

unint64_t sub_24F5A5130()
{
  result = qword_27F248C80;
  if (!qword_27F248C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C80);
  }

  return result;
}

unint64_t sub_24F5A5184()
{
  result = qword_27F248C88;
  if (!qword_27F248C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C88);
  }

  return result;
}

uint64_t GradientBackground.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248C90);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for GradientBackground(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24F5A50BC();
  v17 = v35;
  sub_24F92D108();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v30 = v5;
  v35 = v15;
  type metadata accessor for JSColor();
  v47 = 0;
  sub_24F5AB138(&qword_27F21C758, type metadata accessor for JSColor);
  v18 = v32;
  v19 = v33;
  sub_24F92CC18();
  v20 = v18;
  v21 = v35;
  sub_24E6009C8(v20, v35, &qword_27F21C728);
  v46 = 1;
  sub_24F92CC18();
  v22 = v13;
  sub_24E6009C8(v8, v21 + *(v13 + 20), &qword_27F21C728);
  sub_24F9289E8();
  v45 = 2;
  sub_24F5AB138(&qword_27F214018, MEMORY[0x277D21C48]);
  v23 = v30;
  sub_24F92CC18();
  sub_24E6009C8(v23, v21 + *(v13 + 24), &qword_27F213FB0);
  v44 = 3;
  v24 = sub_24F92CBD8();
  v25 = v34;
  *(v21 + v22[7]) = v24;
  v42 = 4;
  sub_24F5A5858();
  sub_24F92CC68();
  *(v21 + v22[8]) = v43;
  v40 = 5;
  sub_24F92CC68();
  *(v21 + v22[9]) = v41;
  v38 = 6;
  sub_24F5A58AC();
  sub_24F92CC68();
  *(v21 + v22[10]) = v39;
  v37 = 7;
  sub_24F92CC48();
  v27 = v26;
  (*(v25 + 8))(0, v19);
  *(v21 + v22[11]) = v27;
  sub_24F5A5900(v21, v31);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_24F5ABDDC(v21, type metadata accessor for GradientBackground);
}

unint64_t sub_24F5A5858()
{
  result = qword_27F248C98;
  if (!qword_27F248C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C98);
  }

  return result;
}

unint64_t sub_24F5A58AC()
{
  result = qword_27F248CA0;
  if (!qword_27F248CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CA0);
  }

  return result;
}

uint64_t sub_24F5A5900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientBackground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

GameStoreKit::GradientPoint_optional __swiftcall GradientPoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GradientPoint.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x654C6D6F74746F62;
    v7 = 0x6D6F74746F62;
    if (v1 != 8)
    {
      v7 = 0x72546D6F74746F62;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x7265746E6563;
    if (v1 != 5)
    {
      v8 = 0x676E696C69617274;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 1869768058;
    v3 = 7368564;
    v4 = 0x6C69617254706F74;
    if (v1 != 3)
    {
      v4 = 0x676E696461656CLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x696461654C706F74;
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
}

uint64_t sub_24F5A5B44()
{
  sub_24F92D068();
  sub_24F204854();
  return sub_24F92D0B8();
}

uint64_t sub_24F5A5B94()
{
  sub_24F92D068();
  sub_24F204854();
  return sub_24F92D0B8();
}

uint64_t sub_24F5A5BE4@<X0>(uint64_t *a1@<X8>)
{
  result = GradientPoint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::GradientUseCase_optional __swiftcall GradientUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t GradientUseCase.rawValue.getter()
{
  if (*v0)
  {
    return 0x42646574736F7266;
  }

  else
  {
    return 0x6F7247726F6C6F63;
  }
}

unint64_t sub_24F5A5D74()
{
  result = qword_27F248CA8;
  if (!qword_27F248CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CA8);
  }

  return result;
}

uint64_t sub_24F5A5DC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x42646574736F7266;
  }

  else
  {
    v3 = 0x6F7247726F6C6F63;
  }

  if (v2)
  {
    v4 = 0xEF6B636972427075;
  }

  else
  {
    v4 = 0xEC0000006B636972;
  }

  if (*a2)
  {
    v5 = 0x42646574736F7266;
  }

  else
  {
    v5 = 0x6F7247726F6C6F63;
  }

  if (*a2)
  {
    v6 = 0xEC0000006B636972;
  }

  else
  {
    v6 = 0xEF6B636972427075;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

unint64_t sub_24F5A5E88()
{
  result = qword_27F248CB0;
  if (!qword_27F248CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CB0);
  }

  return result;
}

uint64_t sub_24F5A5EDC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F5A5F74()
{
  sub_24F92B218();
}

uint64_t sub_24F5A5FF8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F5A608C@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24F5A60EC(uint64_t *a1@<X8>)
{
  v2 = 0x6F7247726F6C6F63;
  if (*v1)
  {
    v2 = 0x42646574736F7266;
  }

  v3 = 0xEF6B636972427075;
  if (*v1)
  {
    v3 = 0xEC0000006B636972;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F5A6204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 40));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24F5A6338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F5A6458()
{
  sub_24F5A6574(319, &qword_27F21C740, type metadata accessor for JSColor);
  if (v0 <= 0x3F)
  {
    sub_24F5A6574(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
    if (v1 <= 0x3F)
    {
      sub_24E6E8928(319, &qword_27F2169A0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F5A6574(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F5A661C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F5A66E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5A67B0()
{
  sub_24E6E8928(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F5A6574(319, &qword_27F21C940, type metadata accessor for GradientBackground);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F5A68B0()
{
  result = qword_27F248CD8;
  if (!qword_27F248CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CD8);
  }

  return result;
}

unint64_t sub_24F5A6908()
{
  result = qword_27F248CE0;
  if (!qword_27F248CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CE0);
  }

  return result;
}

unint64_t sub_24F5A6960()
{
  result = qword_27F248CE8;
  if (!qword_27F248CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CE8);
  }

  return result;
}

uint64_t sub_24F5A69B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v35 = a3;
  swift_getWitnessTable();
  v27[5] = sub_24F925108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8);
  v29 = sub_24F924038();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v27[3] = sub_24F9236B8();
  v32 = sub_24F924038();
  v27[0] = sub_24F9250E8();
  v33 = sub_24F924038();
  v34 = sub_24F9254C8();
  v27[1] = sub_24F924038();
  type metadata accessor for FrostedGradientView();
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E38);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CB8);
  sub_24F924E38();
  WitnessTable = swift_getWitnessTable();
  v67 = WitnessTable;
  v65 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v64 = sub_24F5ABC24();
  v61 = swift_getWitnessTable();
  v62 = sub_24E63D098();
  swift_getWitnessTable();
  v27[2] = sub_24F924E08();
  v27[4] = sub_24F924038();
  v27[6] = sub_24F924038();
  v27[7] = sub_24F924038();
  v6 = sub_24F927598();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v40 = v4;
  v41 = v5;
  v42 = v30;
  v43 = v31;
  v36 = v4;
  v37 = v5;
  v38 = v30;
  v39 = v31;
  v31 = sub_24E6A4C1C();
  v12 = swift_getWitnessTable();
  v13 = sub_24E602068(&qword_27F2186A0, &qword_27F2186A8);
  v59 = v12;
  v60 = v13;
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v57 = v14;
  v58 = v15;
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v55 = v16;
  v56 = v17;
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v53 = v18;
  v54 = v19;
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v51 = v12;
  v52 = v21;
  v49 = swift_getWitnessTable();
  v50 = v15;
  v47 = swift_getWitnessTable();
  v48 = v17;
  v26 = swift_getWitnessTable();
  v22 = v31;
  sub_24F927568();
  v44 = v22;
  v45 = v20;
  v46 = v26;
  v23 = swift_getWitnessTable();
  sub_24E7896B8(v8, v6, v23);
  v24 = *(v28 + 8);
  v24(v8, v6);
  sub_24E7896B8(v11, v6, v23);
  return (v24)(v11, v6);
}

uint64_t sub_24F5A6F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v50 = a2;
  v58 = a1;
  v62 = a4;
  v5 = sub_24F924368();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v43 - v8);
  type metadata accessor for ComponentBackgroundModifierWithShape();
  swift_getWitnessTable();
  sub_24F925108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8);
  v10 = sub_24F924038();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = *(a3 + 8);
  v48 = sub_24F9236B8();
  v14 = sub_24F924038();
  v54 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v44 = &v43 - v15;
  v43 = v13;
  v52 = sub_24F9250E8();
  v47 = sub_24F924038();
  v56 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v43 - v16;
  v55 = sub_24F9254C8();
  v51 = sub_24F924038();
  v57 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v53 = &v43 - v19;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v20 = sub_24F926D08();

  v21 = *(v7 + 36);
  v22 = *MEMORY[0x277CE13B8];
  v23 = sub_24F927748();
  (*(*(v23 - 8) + 104))(v9 + v21, v22, v23);
  *v9 = v20;
  sub_24E602068(&qword_27F236200, &qword_27F217DC0);
  v71 = sub_24F9238D8();
  sub_24F925808();
  WitnessTable = swift_getWitnessTable();
  sub_24F926098();

  v25 = sub_24E602068(&qword_27F2186A0, &qword_27F2186A8);
  v69 = WitnessTable;
  v70 = v25;
  v26 = swift_getWitnessTable();
  v27 = v44;
  sub_24F926B58();
  (*(v49 + 8))(v12, v10);
  v28 = swift_getWitnessTable();
  v67 = v26;
  v68 = v28;
  v29 = v14;
  v30 = swift_getWitnessTable();
  v31 = v45;
  sub_24F926268();
  (*(v54 + 8))(v27, v29);
  v32 = v59;
  sub_24F924358();
  v33 = swift_getWitnessTable();
  v65 = v30;
  v66 = v33;
  v34 = v47;
  v35 = swift_getWitnessTable();
  v36 = v46;
  sub_24F926278();
  (*(v60 + 8))(v32, v61);
  (*(v56 + 8))(v31, v34);
  v37 = swift_getWitnessTable();
  v63 = v35;
  v64 = v37;
  v38 = v51;
  v39 = swift_getWitnessTable();
  v40 = v53;
  sub_24E7896B8(v36, v38, v39);
  v41 = *(v57 + 8);
  v41(v36, v38);
  sub_24E7896B8(v40, v38, v39);
  return (v41)(v40, v38);
}

uint64_t sub_24F5A7740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a2;
  v53 = a1;
  v54 = a5;
  type metadata accessor for FrostedGradientView();
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E38);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CB8);
  v7 = sub_24F924E38();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - v8;
  v10 = type metadata accessor for ComponentBackgroundModifierWithShape();
  swift_getWitnessTable();
  sub_24F925108();
  WitnessTable = swift_getWitnessTable();
  v67 = WitnessTable;
  v65 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = sub_24F5ABC24();
  v63 = v11;
  v64 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_24E63D098();
  v61 = v13;
  v62 = v14;
  v42 = v7;
  v44 = swift_getWitnessTable();
  sub_24F924E08();
  v15 = sub_24F924038();
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v38 - v16;
  v18 = *(a4 + 8);
  v38[1] = a3;
  v40 = v18;
  v46 = sub_24F9236B8();
  v43 = sub_24F924038();
  v49 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = v38 - v19;
  v47 = sub_24F9250E8();
  v20 = sub_24F924038();
  v50 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v41 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v45 = v38 - v23;
  sub_24F5A7DD8(v10, v9);
  sub_24F927618();
  v24 = swift_getWitnessTable();
  v25 = v42;
  sub_24F9260A8();
  (*(v52 + 8))(v9, v25);
  v26 = swift_getWitnessTable();
  v59 = v24;
  v60 = v26;
  v27 = swift_getWitnessTable();
  v28 = v39;
  sub_24F926B58();
  (*(v48 + 8))(v17, v15);
  v29 = swift_getWitnessTable();
  v57 = v27;
  v58 = v29;
  v30 = v43;
  v31 = swift_getWitnessTable();
  v32 = v41;
  sub_24F926268();
  (*(v49 + 8))(v28, v30);
  v33 = swift_getWitnessTable();
  v55 = v31;
  v56 = v33;
  v34 = swift_getWitnessTable();
  v35 = v45;
  sub_24E7896B8(v32, v20, v34);
  v36 = *(v50 + 8);
  v36(v32, v20);
  sub_24E7896B8(v35, v20, v34);
  return (v36)(v35, v20);
}

uint64_t sub_24F5A7DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v250 = a1;
  v247 = a2;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F248E68);
  MEMORY[0x28223BE20](v222);
  v224 = v205 - v3;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10);
  MEMORY[0x28223BE20](v223);
  v216 = (v205 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E38);
  MEMORY[0x28223BE20](v5);
  v234 = v205 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  MEMORY[0x28223BE20](v7 - 8);
  v225 = v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v231 = v205 - v10;
  MEMORY[0x28223BE20](v11);
  v233 = v205 - v12;
  MEMORY[0x28223BE20](v13);
  v232 = v205 - v14;
  v219 = *(*(a1 + 16) - 8);
  MEMORY[0x28223BE20](v15);
  v220 = v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = v17;
  v212 = *(a1 + 24);
  v18 = type metadata accessor for FrostedGradientView();
  v214 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v211 = v205 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v218 = v205 - v21;
  MEMORY[0x28223BE20](v22);
  v213 = v205 - v23;
  MEMORY[0x28223BE20](v24);
  v209 = v205 - v25;
  MEMORY[0x28223BE20](v26);
  v210 = v205 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v28 - 8);
  v217 = v205 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v227 = v205 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v32 - 8);
  v215 = v205 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v230 = v205 - v35;
  MEMORY[0x28223BE20](v36);
  v229 = v205 - v37;
  v38 = sub_24F9289E8();
  v243 = *(v38 - 8);
  v244 = v38;
  MEMORY[0x28223BE20](v38);
  v226 = v205 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v238 = v205 - v41;
  v248 = v18;
  v249 = sub_24F924E38();
  v42 = sub_24F92C4A8();
  v237 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v236 = v205 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v235 = v205 - v45;
  v242 = v5;
  v46 = sub_24F924E38();
  v241 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v240 = v205 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v239 = v205 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = v205 - v51;
  v53 = type metadata accessor for GradientBackground(0);
  v54 = *(v53 - 1);
  MEMORY[0x28223BE20](v53);
  v56 = v205 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CB8);
  v58 = sub_24F924E38();
  v245 = *(v58 - 8);
  v246 = v58;
  MEMORY[0x28223BE20](v58);
  v60 = v205 - v59;
  sub_24E60169C(v251 + *(v250 + 36), v52, &qword_27F21C920);
  if ((*(v54 + 48))(v52, 1, v53) != 1)
  {
    v205[1] = v57;
    v206 = v60;
    v207 = v46;
    v208 = v42;
    sub_24F5ABD78(v52, v56);
    v66 = v56[v53[10]];
    v67 = v53[6];
    v68 = v243;
    v69 = (v243 + 48);
    v70 = v56;
    v228 = v56;
    v71 = &v56[v67];
    if (v66 == 1)
    {
      v72 = v229;
      sub_24E60169C(v71, v229, &qword_27F213FB0);
      v73 = v244;
      v74 = (*v69)(v72, 1, v244);
      v205[0] = v53;
      if (v74 == 1)
      {
        sub_24E601704(v72, &qword_27F213FB0);
        v75 = v249;
LABEL_29:
        v114 = v232;
        v115 = v233;
        goto LABEL_30;
      }

      (*(v68 + 32))(v238, v72, v73);
      v79 = sub_24F9289A8();
      if (v79)
      {
        v80 = qword_27F20FEE0;
        v81 = v79;
        if (v80 != -1)
        {
          v204 = v81;
          swift_once();
          v81 = v204;
        }

        v82 = v81;
        v83 = sub_24F926BD8();
        v84 = v227;
        ColorGrouping.colorGroup(for:)(v83);
        v85 = v84;

        v86 = type metadata accessor for ColorGroup();
        v87 = *(v86 - 8);
        v88 = *(v87 + 48);
        v89 = v88(v85, 1, v86);
        v53 = v205[0];
        if (v89 != 1)
        {
          v90 = *(v85 + *(v86 + 28));

          sub_24F5ABDDC(v85, type metadata accessor for ColorGroup);
          v91 = sub_24F9289A8();
          if (v91)
          {
            v92 = v91;
            v93 = sub_24F926BD8();
            v94 = v217;
            ColorGrouping.colorGroup(for:)(v93);

            v95 = v94;

            if (v88(v94, 1, v86) != 1)
            {
              v160 = *(v94 + *(v86 + 32));

              sub_24F5ABDDC(v94, type metadata accessor for ColorGroup);
              v70 = v228;
              v161 = v228[*(v205[0] + 28)];
              v75 = v249;
              v114 = v232;
              v115 = v233;
              if (v161 != 2)
              {
                v162 = v248;
                if (v161)
                {
                  v163 = v228[*(v205[0] + 32)];
                  if (v163 > 4)
                  {
                    if (v228[*(v205[0] + 32)] <= 6u)
                    {
                      if (v163 == 5)
                      {
                        sub_24F9278A8();
                      }

                      else
                      {
                        sub_24F9278C8();
                      }
                    }

                    else if (v163 == 7)
                    {
                      sub_24F927848();
                    }

                    else if (v163 == 8)
                    {
                      sub_24F927898();
                    }

                    else
                    {
                      sub_24F927858();
                    }
                  }

                  else if (v228[*(v205[0] + 32)] <= 1u)
                  {
                    if (v228[*(v205[0] + 32)])
                    {
                      sub_24F927828();
                    }

                    else
                    {
                      sub_24F927888();
                    }
                  }

                  else if (v163 == 2)
                  {
                    sub_24F927878();
                  }

                  else if (v163 == 3)
                  {
                    sub_24F927838();
                  }

                  else
                  {
                    sub_24F9278B8();
                  }

                  v188 = v164;
                  v189 = v165;
                  v190 = *(v70 + *(v205[0] + 36));
                  v234 = v160;
                  if (v190 > 4)
                  {
                    if (v190 <= 6)
                    {
                      if (v190 == 5)
                      {
                        sub_24F9278A8();
                      }

                      else
                      {
                        sub_24F9278C8();
                      }
                    }

                    else if (v190 == 7)
                    {
                      sub_24F927848();
                    }

                    else if (v190 == 8)
                    {
                      sub_24F927898();
                    }

                    else
                    {
                      sub_24F927858();
                    }
                  }

                  else if (v190 <= 1)
                  {
                    if (v190)
                    {
                      sub_24F927828();
                    }

                    else
                    {
                      sub_24F927888();
                    }
                  }

                  else if (v190 == 2)
                  {
                    sub_24F927878();
                  }

                  else if (v190 == 3)
                  {
                    sub_24F927838();
                  }

                  else
                  {
                    sub_24F9278B8();
                  }

                  v193 = v191;
                  v194 = v192;
                  v128 = v237;
                  v195 = v220;
                  v196 = v251;
                  v197 = v221;
                  (*(v219 + 16))(v220, v251, v221);
                  v198 = *(v70 + *(v205[0] + 44));
                  v199 = v209;
                  sub_24F5A9C68(v90, v234, v195, v197, v209, v188, v189, v193, v194, *(v196 + *(v250 + 40)), v198);
                  WitnessTable = swift_getWitnessTable();
                  v201 = v210;
                  sub_24E7896B8(v199, v162, WitnessTable);
                  v202 = *(v214 + 8);

                  v202(v199, v162);
                  v203 = v213;
                  sub_24E7896B8(v201, v162, WitnessTable);
                  v125 = v236;
                  sub_24ECCCBA0(v203, v162);

                  v202(v203, v162);
                  v202(v210, v162);
                  (*(v243 + 8))(v238, v244);
                  (*(*(v75 - 8) + 56))(v125, 0, 1, v75);
                  v126 = WitnessTable;
                  v252 = WitnessTable;
                  v127 = &v252;
                  goto LABEL_37;
                }
              }

              (*(v243 + 8))(v238, v244);

              v53 = v205[0];
LABEL_30:
              v116 = v75;
              sub_24E60169C(v70 + v53[5], v114, &qword_27F21C728);
              v117 = type metadata accessor for JSColor();
              v118 = *(*(v117 - 8) + 48);
              if (v118(v114, 1, v117) == 1)
              {
                v119 = v114;
LABEL_35:
                sub_24E601704(v119, &qword_27F21C728);
                goto LABEL_36;
              }

              v120 = v70;
              v121 = *(v114 + *(v117 + 28));

              v122 = v114;
              v123 = v121;
              sub_24F5ABDDC(v122, type metadata accessor for JSColor);
              if (!v121)
              {
LABEL_36:
                v125 = v236;
                (*(*(v116 - 8) + 56))(v236, 1, 1, v116);
                v126 = swift_getWitnessTable();
                v256 = v126;
                v127 = &v256;
                v128 = v237;
LABEL_37:
                v127[1] = v126;
                swift_getWitnessTable();
                v129 = v235;
                sub_24E8D5004(v125, v235);
                v130 = *(v128 + 8);
                v131 = v208;
                v130(v125, v208);
                v254 = swift_getWitnessTable();
                v255 = v254;
                v253[2] = swift_getWitnessTable();
                v132 = swift_getWitnessTable();
                sub_24E7896B8(v129, v131, v132);
                sub_24F5ABC24();
                v112 = v239;
                sub_24ECCCBA0(v125, v131);
                v130(v125, v131);
                v130(v129, v131);
                goto LABEL_38;
              }

              v124 = v120;
              sub_24E60169C(v120, v115, &qword_27F21C728);
              if (v118(v115, 1, v117) == 1)
              {

                v119 = v115;
                goto LABEL_35;
              }

              v146 = *(v115 + *(v117 + 28));

              sub_24F5ABDDC(v115, type metadata accessor for JSColor);
              if (!v146)
              {

                goto LABEL_36;
              }

              v147 = v205[0];
              v148 = *(v120 + *(v205[0] + 32));
              v249 = v123;
              if (v148 > 4)
              {
                if (v148 <= 6)
                {
                  v149 = v116;
                  if (v148 == 5)
                  {
                    sub_24F9278A8();
                  }

                  else
                  {
                    sub_24F9278C8();
                  }
                }

                else
                {
                  v149 = v116;
                  if (v148 != 7)
                  {
                    v150 = v248;
                    if (v148 == 8)
                    {
                      sub_24F927898();
                    }

                    else
                    {
                      sub_24F927858();
                    }

                    goto LABEL_72;
                  }

                  sub_24F927848();
                }
              }

              else if (v148 <= 1)
              {
                v149 = v116;
                if (v148)
                {
                  sub_24F927828();
                }

                else
                {
                  sub_24F927888();
                }
              }

              else
              {
                v149 = v116;
                if (v148 != 2)
                {
                  v150 = v248;
                  if (v148 == 3)
                  {
                    sub_24F927838();
                  }

                  else
                  {
                    sub_24F9278B8();
                  }

LABEL_72:
                  v168 = v151;
                  v169 = v152;
LABEL_76:
                  v170 = *(v124 + *(v147 + 36));
                  v171 = v146;
                  if (v170 > 4)
                  {
                    if (*(v124 + *(v147 + 36)) <= 6u)
                    {
                      if (v170 == 5)
                      {
                        sub_24F9278A8();
                      }

                      else
                      {
                        sub_24F9278C8();
                      }
                    }

                    else if (v170 == 7)
                    {
                      sub_24F927848();
                    }

                    else if (v170 == 8)
                    {
                      sub_24F927898();
                    }

                    else
                    {
                      sub_24F927858();
                    }
                  }

                  else if (*(v124 + *(v147 + 36)) <= 1u)
                  {
                    if (*(v124 + *(v147 + 36)))
                    {
                      sub_24F927828();
                    }

                    else
                    {
                      sub_24F927888();
                    }
                  }

                  else if (v170 == 2)
                  {
                    sub_24F927878();
                  }

                  else if (v170 == 3)
                  {
                    sub_24F927838();
                  }

                  else
                  {
                    sub_24F9278B8();
                  }

                  v174 = v172;
                  v175 = v173;
                  v128 = v237;
                  v177 = v219;
                  v176 = v220;
                  v178 = v251;
                  v179 = v221;
                  (*(v219 + 16))(v220, v251, v221);
                  v180 = *(v178 + *(v250 + 40));
                  v181 = *(v124 + *(v205[0] + 44));
                  v182 = v211;
                  v183 = v249;
                  *v211 = v171;
                  *(v182 + 1) = v183;
                  *(v182 + 2) = v168;
                  *(v182 + 3) = v169;
                  *(v182 + 4) = v174;
                  *(v182 + 5) = v175;
                  (*(v177 + 32))(&v182[v150[12]], v176, v179);
                  *&v182[v150[13]] = v180;
                  *&v182[v150[14]] = v181;
                  v184 = swift_getWitnessTable();
                  v185 = v218;
                  sub_24E7896B8(v182, v150, v184);
                  v186 = *(v214 + 8);

                  v186(v182, v150);
                  v187 = v213;
                  sub_24E7896B8(v185, v150, v184);
                  v125 = v236;
                  sub_24ECCCC98(v187, v150, v150);

                  v186(v187, v150);
                  v186(v218, v150);
                  (*(*(v149 - 8) + 56))(v125, 0, 1, v149);
                  v126 = v184;
                  v253[0] = v184;
                  v127 = v253;
                  goto LABEL_37;
                }

                sub_24F927878();
              }

              v168 = v166;
              v169 = v167;
              v150 = v248;
              goto LABEL_76;
            }
          }

          else
          {

            v95 = v217;
            (*(v87 + 56))(v217, 1, 1, v86);
          }

          v75 = v249;
          v70 = v228;
          v114 = v232;
          v115 = v233;
          (*(v243 + 8))(v238, v244);
          sub_24E601704(v95, &qword_27F2190D8);
          v53 = v205[0];
          goto LABEL_30;
        }
      }

      else
      {
        v113 = type metadata accessor for ColorGroup();
        v85 = v227;
        (*(*(v113 - 8) + 56))(v227, 1, 1, v113);
      }

      (*(v68 + 8))(v238, v244);
      sub_24E601704(v85, &qword_27F2190D8);
      v75 = v249;
      v70 = v228;
      goto LABEL_29;
    }

    v76 = v230;
    sub_24E60169C(v71, v230, &qword_27F213FB0);
    v77 = v244;
    if ((*v69)(v76, 1, v244) == 1)
    {
      sub_24E601704(v76, &qword_27F213FB0);
      v78 = v231;
    }

    else
    {
      v96 = v226;
      (*(v68 + 32))(v226, v76, v77);
      v97 = v56[v53[7]];
      v78 = v231;
      if (v97 != 2 && (v97 & 1) != 0)
      {
        v98 = sub_24F926C98();
        v99 = v215;
        (*(v68 + 16))(v215, v96, v77);
        (*(v68 + 56))(v99, 0, 1, v77);
        v100 = v216;
        sub_24F6C4E24(v99, 1, v98, v216);

        sub_24E601704(v99, &qword_27F213FB0);
        sub_24E60169C(v100, v224, &qword_27F214A10);
        swift_storeEnumTagMultiPayload();
        v101 = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E60);
        sub_24E63D150();
        sub_24E602068(&qword_27F248E58, &qword_27F248E60);
        v102 = v234;
        sub_24F924E28();
        sub_24E601704(v100, &qword_27F214A10);
        (*(v68 + 8))(v101, v77);
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E50);
        (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
LABEL_26:
        v266 = swift_getWitnessTable();
        v267 = v266;
        v265 = swift_getWitnessTable();
        v111 = v208;
        swift_getWitnessTable();
        sub_24F5ABC24();
        v112 = v239;
        sub_24ECCCC98(v102, v111, v242);
        sub_24E601704(v102, &qword_27F248E38);
LABEL_38:
        v65 = v206;
        v133 = v207;
        v263 = swift_getWitnessTable();
        v264 = v263;
        v262 = swift_getWitnessTable();
        v134 = swift_getWitnessTable();
        v135 = sub_24F5ABC24();
        v260 = v134;
        v261 = v135;
        v136 = swift_getWitnessTable();
        v137 = v240;
        sub_24E7896B8(v112, v133, v136);
        sub_24E63D098();
        sub_24ECCCBA0(v137, v133);
        v138 = *(v241 + 8);
        v138(v137, v133);
        v138(v112, v133);
        sub_24F5ABDDC(v228, type metadata accessor for GradientBackground);
        goto LABEL_39;
      }

      (*(v68 + 8))(v96, v77);
    }

    sub_24E60169C(&v56[v53[5]], v78, &qword_27F21C728);
    v104 = type metadata accessor for JSColor();
    v105 = *(*(v104 - 8) + 48);
    if (v105(v78, 1, v104) == 1)
    {
      v106 = v78;
    }

    else
    {
      v107 = *(v78 + *(v104 + 28));

      sub_24F5ABDDC(v78, type metadata accessor for JSColor);
      if (!v107)
      {
LABEL_25:
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E50);
        v102 = v234;
        (*(*(v110 - 8) + 56))(v234, 1, 1, v110);
        goto LABEL_26;
      }

      v108 = v56;
      v109 = v225;
      sub_24E60169C(v108, v225, &qword_27F21C728);
      if (v105(v109, 1, v104) != 1)
      {
        v153 = *(v109 + *(v104 + 28));

        sub_24F5ABDDC(v109, type metadata accessor for JSColor);
        if (v153)
        {
          (*(v219 + 16))(v220, v251, v221);
          v154 = sub_24F927348();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
          v155 = swift_allocObject();
          *(v155 + 16) = xmmword_24F93A400;
          *(v155 + 32) = v153;
          *(v155 + 40) = v107;

          MEMORY[0x25304CD70](v155);
          sub_24F927878();
          sub_24F927898();
          sub_24F923BD8();
          *&v258[0] = v154;
          v259 = 256;
          v156 = v224;
          *(v224 + 48) = 256;
          v157 = v258[2];
          v156[1] = v258[1];
          v156[2] = v157;
          *v156 = v258[0];
          swift_storeEnumTagMultiPayload();
          sub_24E60169C(v258, &v257, &qword_27F248E60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E60);
          sub_24E63D150();
          sub_24E602068(&qword_27F248E58, &qword_27F248E60);
          v158 = v234;
          sub_24F924E28();

          v102 = v158;
          sub_24E601704(v258, &qword_27F248E60);
          v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248E50);
          (*(*(v159 - 8) + 56))(v158, 0, 1, v159);
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v106 = v109;
    }

    sub_24E601704(v106, &qword_27F21C728);
    goto LABEL_25;
  }

  sub_24E601704(v52, &qword_27F21C920);
  v61 = sub_24F926C98();
  v62 = sub_24F925808();
  *&v258[0] = v61;
  BYTE8(v258[0]) = v62;
  v278 = swift_getWitnessTable();
  v279 = v278;
  v277 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v64 = sub_24F5ABC24();
  v275 = v63;
  v276 = v64;
  swift_getWitnessTable();
  sub_24E63D098();
  sub_24ECCCC98(v258, v46, v57);

  v65 = v60;
LABEL_39:
  v273 = swift_getWitnessTable();
  v274 = v273;
  v272 = swift_getWitnessTable();
  v139 = swift_getWitnessTable();
  v140 = sub_24F5ABC24();
  v270 = v139;
  v271 = v140;
  v141 = swift_getWitnessTable();
  v142 = sub_24E63D098();
  v268 = v141;
  v269 = v142;
  v143 = v246;
  v144 = swift_getWitnessTable();
  sub_24E7896B8(v65, v143, v144);
  return (*(v245 + 8))(v65, v143);
}

uint64_t sub_24F5A9C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a8;
  *(a5 + 40) = a9;
  v16 = type metadata accessor for FrostedGradientView();
  result = (*(*(a4 - 8) + 32))(a5 + v16[12], a3, a4);
  *(a5 + v16[13]) = a10;
  *(a5 + v16[14]) = a11;
  return result;
}

double sub_24F5A9D14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F927628();
  v8 = v7;
  sub_24F5A9E5C(v3, *(a1 + 16), &v16);
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v40[8] = v24;
  v40[9] = v25;
  v40[10] = v26;
  v40[4] = v20;
  v40[5] = v21;
  v40[6] = v22;
  v40[7] = v23;
  v40[0] = v16;
  v40[1] = v17;
  v39 = v27;
  v41 = v27;
  v40[2] = v18;
  v40[3] = v19;
  sub_24E60169C(&v28, &v15, &qword_27F248F70);
  sub_24E601704(v40, &qword_27F248F70);
  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = v37;
  *(a2 + 144) = v36;
  *(a2 + 160) = v9;
  *(a2 + 176) = v38;
  *(a2 + 192) = v39;
  v10 = v33;
  *(a2 + 80) = v32;
  *(a2 + 96) = v10;
  v11 = v35;
  *(a2 + 112) = v34;
  *(a2 + 128) = v11;
  v12 = v29;
  *(a2 + 16) = v28;
  *(a2 + 32) = v12;
  result = *&v30;
  v14 = v31;
  *(a2 + 48) = v30;
  *(a2 + 64) = v14;
  return result;
}

uint64_t sub_24F5A9E5C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FrostedGradientView();
  v9 = *(v35 + 48);
  v10 = *(v6 + 16);
  v10(v8, &a1[v9], a2);
  v11 = sub_24F927348();
  v36 = sub_24F9251B8();
  v10(v8, &a1[v9], a2);
  v12 = sub_24F927348();
  v13 = *(a1 + 1);
  v14 = sub_24F926D08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24F93A400;
  *(v15 + 32) = *a1;
  *(v15 + 40) = v13;

  MEMORY[0x25304CD70](v15);
  sub_24F923BD8();
  v16 = v40;
  v17 = v41;
  v18 = v42;
  v19 = v43;
  v20 = v44;
  v21 = v35;
  v22 = *&a1[*(v35 + 56)];
  sub_24F927618();
  sub_24F9238C8();
  *&v39[39] = v47;
  *&v39[7] = v45;
  *&v39[23] = v46;
  *&v23 = -*&a1[*(v21 + 52)];
  v24 = sub_24F924058();
  v25 = sub_24F925808();
  *&v48 = v16;
  *(&v48 + 1) = v17;
  *&v49 = v18;
  *(&v49 + 1) = v19;
  *&v50 = v20;
  *(&v50 + 2) = v22;
  WORD6(v50) = 256;
  *&v51[0] = 0x4049000000000000;
  BYTE8(v51[0]) = 0;
  v26 = *v39;
  *(v51 + 9) = *v39;
  v27 = *&v39[16];
  *(&v51[1] + 9) = *&v39[16];
  v28 = *&v39[32];
  *(&v51[2] + 9) = *&v39[32];
  *(&v51[3] + 1) = *&v39[47];
  v52 = v23;
  v53[0] = 0;
  v53[1] = v24;
  LOBYTE(v53[2]) = v25;
  *(v38 + 6) = v48;
  *(&v38[4] + 6) = v51[1];
  *(&v38[3] + 6) = v51[0];
  *(&v38[2] + 6) = v50;
  *(&v38[1] + 6) = v49;
  *(&v38[7] + 15) = *(v53 + 1);
  *(&v38[7] + 6) = v23;
  *(&v38[6] + 6) = v51[3];
  *(&v38[5] + 6) = v51[2];
  v29 = v38[4];
  *(a3 + 114) = v38[5];
  v30 = v38[7];
  *(a3 + 130) = v38[6];
  *(a3 + 146) = v30;
  *(a3 + 161) = *(&v38[7] + 15);
  v31 = v38[0];
  *(a3 + 50) = v38[1];
  v32 = v38[3];
  *(a3 + 66) = v38[2];
  *(a3 + 82) = v32;
  *(a3 + 98) = v29;
  *a3 = v11;
  *(a3 + 8) = v36;
  *(a3 + 12) = 256;
  *(a3 + 16) = v12;
  *(a3 + 24) = v14;
  *(a3 + 32) = 256;
  *(a3 + 34) = v31;
  v54[0] = v16;
  v54[1] = v17;
  v54[2] = v18;
  v54[3] = v19;
  v54[4] = v20;
  v55 = v22;
  v56 = 256;
  v57 = 0x4049000000000000;
  v58 = 0;
  v59 = v26;
  v60 = v27;
  *v61 = v28;
  *&v61[15] = *&v39[47];
  v62 = v23;
  v63 = 0;
  v64 = v24;
  v65 = v25;

  sub_24E60169C(&v48, &v37, &qword_27F248F78);
  sub_24E601704(v54, &qword_27F248F78);
}

uint64_t sub_24F5AA2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v67 = a3;
  v4 = sub_24F924368();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24F927418();
  v57 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F927538();
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24F927148();
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v11 = sub_24F925108();
  v12 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v14 = *(*(a2 + 24) + 8);
  v68 = v11;
  v69 = v12;
  v15 = v11;
  v44 = v11;
  v70 = WitnessTable;
  v71 = v14;
  v16 = WitnessTable;
  v17 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v52 = &v42 - v18;
  sub_24F9254C8();
  v19 = sub_24F924038();
  v54 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v51 = &v42 - v20;
  v21 = sub_24F924038();
  v68 = v15;
  v69 = v12;
  v70 = v16;
  v71 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = OpaqueTypeConformance2;
  v23 = swift_getWitnessTable();
  v76 = OpaqueTypeConformance2;
  v77 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_24E6A4C1C();
  v48 = v25;
  v26 = sub_24EB67FB4();
  v74 = v24;
  v75 = v26;
  v43 = v24;
  v49 = v21;
  v47 = swift_getWitnessTable();
  v68 = v19;
  v69 = &type metadata for GameOverlayViewPredicate;
  v70 = v21;
  v71 = v24;
  v72 = v25;
  v73 = v47;
  v45 = MEMORY[0x277CE0E68];
  v27 = swift_getOpaqueTypeMetadata2();
  v46 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v42 = &v42 - v31;
  sub_24F9273F8();
  sub_24F927448();
  (*(v57 + 8))(v7, v63);
  v32 = v55;
  sub_24F927138();
  (*(v59 + 8))(v9, v62);
  swift_checkMetadataState();
  v33 = v52;
  sub_24F926248();
  (*(v58 + 8))(v32, v61);
  v34 = v60;
  sub_24F924358();
  v35 = v51;
  v36 = OpaqueTypeMetadata2;
  sub_24F926278();
  (*(v65 + 8))(v34, v66);
  (*(v56 + 8))(v33, v36);
  v37 = v43;
  View.tapToDismiss(enabled:)();
  (*(v54 + 8))(v35, v19);
  v68 = v19;
  v69 = &type metadata for GameOverlayViewPredicate;
  v70 = v49;
  v71 = v37;
  v72 = v48;
  v73 = v47;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v42;
  sub_24E7896B8(v29, v27, v38);
  v40 = *(v46 + 8);
  v40(v29, v27);
  sub_24E7896B8(v39, v27, v38);
  return (v40)(v39, v27);
}

uint64_t sub_24F5AAA8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x800000024FA76DA0 == a2;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA76DC0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA76DE0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA76E00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA76E20 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA76E40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xEF65736143657355 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xEF7974696361704FLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_24F5AAD40()
{
  result = qword_27F248D08;
  if (!qword_27F248D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D00);
    sub_24F5AADCC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D08);
  }

  return result;
}

unint64_t sub_24F5AADCC()
{
  result = qword_27F248D10;
  if (!qword_27F248D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D18);
    sub_24E602068(&qword_27F248D20, &qword_27F248D28);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D10);
  }

  return result;
}

unint64_t sub_24F5AAE84()
{
  result = qword_27F248D30;
  if (!qword_27F248D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248CF8);
    sub_24F5AAF3C();
    sub_24E602068(&qword_27F248D78, &qword_27F248D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D30);
  }

  return result;
}

unint64_t sub_24F5AAF3C()
{
  result = qword_27F248D38;
  if (!qword_27F248D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D40);
    sub_24F5AAFF4();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D38);
  }

  return result;
}

unint64_t sub_24F5AAFF4()
{
  result = qword_27F248D48;
  if (!qword_27F248D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D50);
    sub_24F5AB080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D48);
  }

  return result;
}

unint64_t sub_24F5AB080()
{
  result = qword_27F248D58;
  if (!qword_27F248D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248D60);
    sub_24E602068(&qword_27F248D68, &qword_27F248D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D58);
  }

  return result;
}

uint64_t sub_24F5AB138(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F5AB190()
{
  result = qword_27F248D98;
  if (!qword_27F248D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248D98);
  }

  return result;
}

unint64_t sub_24F5AB1E4()
{
  result = qword_27F248DA0[0];
  if (!qword_27F248DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F248DA0);
  }

  return result;
}

void sub_24F5AB238()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_24F5A6574(319, &qword_27F21C940, type metadata accessor for GradientBackground);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F5AB2E4(int *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 16);
  v5 = *(v40 - 8);
  v6 = *(v5 + 84);
  v39 = sub_24F928388();
  v7 = *(v39 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = v9 - 1;
  v11 = *(sub_24F9289E8() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 - 1;
  if (v15 - 1 <= v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = v15 - 1;
  }

  v18 = *(v11 + 80);
  v19 = *(v7 + 64);
  v20 = *(v11 + 64);
  if (v13)
  {
    v21 = 11;
  }

  else
  {
    v21 = 12;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(v7 + 80) & 0xF8 | 7;
  v23 = v18 | v22;
  v24 = (v18 | v22) + *(v5 + 64);
  v25 = v19 + 7;
  v26 = ((((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v27 = v26 + v18;
  if (v17 >= a2)
  {
    goto LABEL_38;
  }

  v28 = (v24 & ~v23) + ((v21 + v20 + ((v27 + ((v26 + v22) & ~v22)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v28 & 0xFFFFFFF8;
  if ((v28 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v17 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 <= 1)
  {
    if (!v31)
    {
      goto LABEL_38;
    }

    v32 = *(a1 + v28);
    if (!v32)
    {
      goto LABEL_38;
    }

LABEL_35:
    v33 = v32 - 1;
    if (v20)
    {
      v33 = 0;
      v34 = *a1;
    }

    else
    {
      v34 = 0;
    }

    return v17 + (v34 | v33) + 1;
  }

  if (v31 == 2)
  {
    v32 = *(a1 + v28);
    if (v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v32 = *(a1 + v28);
    if (v32)
    {
      goto LABEL_35;
    }
  }

LABEL_38:
  if (v6 < v16)
  {
    v35 = (a1 + v24) & ~v23;
    if (v10 >= v14)
    {
      if (v8 < 0x7FFFFFFE)
      {
        if (*((v25 + v35) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
        {
          LODWORD(v36) = -1;
        }

        else
        {
          v36 = *((v25 + v35) & 0xFFFFFFFFFFFFFFF8);
        }

        if ((v36 + 1) < 2)
        {
          return 0;
        }
      }

      else
      {
        LODWORD(v36) = (*(v7 + 48))(v35, v8, v39, v20);
      }
    }

    else
    {
      if (v13 < 2)
      {
        return 0;
      }

      LODWORD(v36) = (*(v12 + 48))((v27 + ((v35 + v22 + v26) & ~v22)) & ~v18);
    }

    if (v36 >= 2)
    {
      result = (v36 - 2);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  v37 = *(v5 + 48);

  return v37(a1, v6, v40);
}

void sub_24F5AB64C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v57 = *(a4 + 16);
  v6 = *(v57 - 8);
  v56 = v6;
  v7 = *(v6 + 84);
  v54 = sub_24F928388();
  v8 = *(v54 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v55 = v10;
  v11 = v10 - 1;
  v12 = 0;
  v13 = *(sub_24F9289E8() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 - 1;
  if (v17 - 1 <= v7)
  {
    v19 = v7;
  }

  else
  {
    v19 = v17 - 1;
  }

  v20 = *(v8 + 80) & 0xF8 | 7;
  v21 = *(v13 + 80);
  v23 = (v21 | v20) + *(v6 + 64);
  v24 = *(v8 + 64) + 7;
  v25 = (((((v24 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v26 = (v25 + v21 + ((v25 + v20) & ~v20)) & ~v21;
  v27 = *(v13 + 64);
  if (!v15)
  {
    ++v27;
  }

  v28 = v26 + v27;
  v29 = (v23 & ~(v21 | v20)) + ((v26 + v27 + 11) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 < a3)
  {
    if ((v23 & ~(v21 | *(v8 + 80) & 0xF8 | 7)) + ((v26 + v27 + 11) & 0xFFFFFFF8) == -16)
    {
      v30 = a3 - v19 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v12 = v31;
    }

    else
    {
      v12 = 0;
    }
  }

  v32 = a2;
  if (a2 > v19)
  {
    if ((v23 & ~(v21 | *(v8 + 80) & 0xF8 | 7)) + ((v26 + v27 + 11) & 0xFFFFFFF8) == -16)
    {
      v33 = a2 - v19;
    }

    else
    {
      v33 = 1;
    }

    if ((v23 & ~(v21 | *(v8 + 80) & 0xF8 | 7)) + ((v26 + v27 + 11) & 0xFFFFFFF8) != -16)
    {
      v34 = ~v19 + a2;
      bzero(a1, v29);
      *a1 = v34;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v29) = v33;
      }

      else
      {
        *(a1 + v29) = v33;
      }
    }

    else if (v12)
    {
      *(a1 + v29) = v33;
    }

    return;
  }

  v35 = a1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v29) = 0;
  }

  else if (v12)
  {
    *(a1 + v29) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v7 >= v18)
  {
    v39 = v57;
    v40 = *(v56 + 56);
    v41 = a2;
    v42 = v7;
LABEL_50:

    v40(v35, v41, v42, v39);
    return;
  }

  v22 = v21 | v20;
  v36 = ((a1 + v23) & ~(v21 | v20));
  if (v18 < v32)
  {
    if (((v28 + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      return;
    }

    v37 = v32 - v17;
    v38 = ((a1 + v23) & ~v22);
    v25 = ((v28 + 11) & 0xFFFFFFF8) + 8;
    goto LABEL_48;
  }

  v43 = v32 - v17;
  if (v32 >= v17)
  {
    if (((v28 + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      bzero(v36, ((v28 + 11) & 0xFFFFFFF8) + 8);
      *v36 = v43;
    }
  }

  else
  {
    if (v11 < v16)
    {
      v44 = ((v25 + v21 + ((v36 + v20 + v25) & ~v20)) & ~v21);
      v45 = v32 - v16;
      if (v32 >= v16)
      {
        if (v27 <= 3)
        {
          v50 = ~(-1 << (8 * v27));
        }

        else
        {
          v50 = -1;
        }

        if (v27)
        {
          v51 = v50 & v45;
          if (v27 <= 3)
          {
            v52 = v27;
          }

          else
          {
            v52 = 4;
          }

          bzero(v44, v27);
          if (v52 > 2)
          {
            if (v52 == 3)
            {
              *v44 = v51;
              v44[2] = BYTE2(v51);
            }

            else
            {
              *v44 = v51;
            }
          }

          else if (v52 == 1)
          {
            *v44 = v51;
          }

          else
          {
            *v44 = v51;
          }
        }
      }

      else
      {
        v46 = *(v14 + 56);

        v46(v44, v32 + 2);
      }

      return;
    }

    v47 = v32 >= v11;
    v48 = v32 - v11;
    if (!v47)
    {
      v49 = v32 + 2;
      if (v49 > v55)
      {
        if ((((((v24 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
        {
          return;
        }

        v37 = v32 + 1 - v55;
        v38 = ((a1 + v23) & ~v22);
LABEL_48:
        bzero(v38, v25);
        *v36 = v37;
        return;
      }

      if (v9 <= 0x7FFFFFFD)
      {
        v53 = ((v36 + v24) & 0xFFFFFFFFFFFFFFF8);
        if (v32 >= 0x7FFFFFFD)
        {
          *v53 = 0;
          *v53 = v32 - 2147483645;
        }

        else
        {
          *v53 = v49;
        }

        return;
      }

      v40 = *(v8 + 56);
      v35 = ((a1 + v23) & ~v22);
      v41 = v32 + 2;
      v42 = v9;
      v39 = v54;
      goto LABEL_50;
    }

    if ((((((v24 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      bzero(v36, v25);
      *v36 = v48;
    }
  }
}

unint64_t sub_24F5ABB3C()
{
  result = qword_27F248E28;
  if (!qword_27F248E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E30);
    sub_24F5AAD40();
    sub_24F5AAE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248E28);
  }

  return result;
}

unint64_t sub_24F5ABC24()
{
  result = qword_27F248E40;
  if (!qword_27F248E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E38);
    sub_24F5ABCA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248E40);
  }

  return result;
}

unint64_t sub_24F5ABCA8()
{
  result = qword_27F248E48;
  if (!qword_27F248E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E50);
    sub_24E63D150();
    sub_24E602068(&qword_27F248E58, &qword_27F248E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248E48);
  }

  return result;
}

uint64_t sub_24F5ABD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientBackground(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5ABDDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5ABE3C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F5ABEE0(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_24F5AC048(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_24F5AC234()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F5AC2A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_24F5AC3E4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_24F5AC604()
{
  type metadata accessor for ComponentBackgroundModifierWithShape();
  swift_getWitnessTable();
  sub_24F925108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8);
  sub_24F924038();
  sub_24F9236B8();
  sub_24F924038();
  sub_24F9250E8();
  sub_24F924038();
  sub_24F9254C8();
  sub_24F924038();
  type metadata accessor for FrostedGradientView();
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248E38);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214CB8);
  sub_24F924E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F5ABC24();
  swift_getWitnessTable();
  sub_24E63D098();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F927598();
  sub_24E6A4C1C();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F2186A0, &qword_27F2186A8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24F5ACB4C()
{
  type metadata accessor for GlassBackgroundModifierWithShape();
  swift_getWitnessTable();
  sub_24F925108();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F9254C8();
  sub_24F924038();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E6A4C1C();
  sub_24EB67FB4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F5ACD34(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F5ACE84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for MixedMediaItemView()
{
  result = qword_27F248F90;
  if (!qword_27F248F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5AD00C()
{
  sub_24E684184(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
  if (v0 <= 0x3F)
  {
    sub_24E684184(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F5AD128()
{
  result = qword_27F248FA0;
  if (!qword_27F248FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FA0);
  }

  return result;
}

uint64_t sub_24F5AD17C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MixedMediaItemView();
  sub_24E60169C(v1 + *(v10 + 32), v9, &qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24F5AD384@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MixedMediaItemView();
  sub_24E60169C(v1 + *(v10 + 36), v9, &qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_24F5AD590()
{
  result = qword_27F248FA8;
  if (!qword_27F248FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FA8);
  }

  return result;
}

unint64_t sub_24F5AD5E8()
{
  result = qword_27F248FB0;
  if (!qword_27F248FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FB0);
  }

  return result;
}

uint64_t sub_24F5AD658()
{
  v1 = sub_24F923E98();
  v2 = *(v1 - 8);
  v72 = v1;
  v73 = v2;
  MEMORY[0x28223BE20](v1);
  v71 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F923F78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v70 - v9;
  v11 = v0[17];
  v12 = v0[16];
  v13 = v0[18];
  sub_24F5AD384(&v70 - v9);
  (*(v5 + 104))(v7, *MEMORY[0x277CDFA90], v4);
  v14 = sub_24F923F68();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  if (v11)
  {
    if (v11 == 1)
    {
      if (v12 <= 1)
      {
        if (v12)
        {
          if (v13)
          {
            if (v14)
            {
              return 63;
            }

            v48 = v71;
            sub_24F5AD17C(v71);
            v49 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
            (*(v73 + 8))(v48, v72);
            v19 = (v49 & 1) == 0;
            v20 = 62;
            v21 = 64;
          }

          else
          {
            if (v14)
            {
              return 46;
            }

            v52 = v71;
            sub_24F5AD17C(v71);
            v53 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
            (*(v73 + 8))(v52, v72);
            v19 = (v53 & 1) == 0;
            v20 = 45;
            v21 = 47;
          }
        }

        else if (v13)
        {
          if (v14)
          {
            return 57;
          }

          v46 = v71;
          sub_24F5AD17C(v71);
          v47 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v46, v72);
          v19 = (v47 & 1) == 0;
          v20 = 56;
          v21 = 58;
        }

        else
        {
          if (v14)
          {
            return 38;
          }

          v50 = v71;
          sub_24F5AD17C(v71);
          v51 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v50, v72);
          v19 = (v51 & 1) == 0;
          v20 = 37;
          v21 = 39;
        }
      }

      else if (v12 == 2)
      {
        if (v13)
        {
          if (v14)
          {
            return 66;
          }

          v30 = v71;
          sub_24F5AD17C(v71);
          v31 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v30, v72);
          v19 = (v31 & 1) == 0;
          v20 = 65;
          v21 = 67;
        }

        else
        {
          if (v14)
          {
            return 50;
          }

          v32 = v71;
          sub_24F5AD17C(v71);
          v33 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v32, v72);
          v19 = (v33 & 1) == 0;
          v20 = 49;
          v21 = 51;
        }
      }

      else if (v12 == 3)
      {
        if (v13)
        {
          if (v14)
          {
            return 69;
          }

          v38 = v71;
          sub_24F5AD17C(v71);
          v39 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v38, v72);
          v19 = (v39 & 1) == 0;
          v20 = 68;
          v21 = 70;
        }

        else
        {
          if (v14)
          {
            return 54;
          }

          v42 = v71;
          sub_24F5AD17C(v71);
          v43 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
          (*(v73 + 8))(v42, v72);
          v19 = (v43 & 1) == 0;
          v20 = 53;
          v21 = 55;
        }
      }

      else if (v13)
      {
        if (v14)
        {
          return 60;
        }

        v40 = v71;
        sub_24F5AD17C(v71);
        v41 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v40, v72);
        v19 = (v41 & 1) == 0;
        v20 = 59;
        v21 = 61;
      }

      else
      {
        if (v14)
        {
          return 42;
        }

        v44 = v71;
        sub_24F5AD17C(v71);
        v45 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v44, v72);
        v19 = (v45 & 1) == 0;
        v20 = 41;
        v21 = 43;
      }
    }

    else if (v12 <= 1)
    {
      if (v12)
      {
        if (v14)
        {
          return 78;
        }

        v28 = v71;
        sub_24F5AD17C(v71);
        v29 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v28, v72);
        v19 = (v29 & 1) == 0;
        v20 = 77;
        v21 = 79;
      }

      else
      {
        if (v14)
        {
          return 72;
        }

        v26 = v71;
        sub_24F5AD17C(v71);
        v27 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v26, v72);
        v19 = (v27 & 1) == 0;
        v20 = 71;
        v21 = 73;
      }
    }

    else if (v12 == 2)
    {
      if (v14)
      {
        return 81;
      }

      v17 = v71;
      sub_24F5AD17C(v71);
      v18 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v17, v72);
      v19 = (v18 & 1) == 0;
      v20 = 80;
      v21 = 82;
    }

    else if (v12 == 3)
    {
      if (v14)
      {
        return 84;
      }

      v22 = v71;
      sub_24F5AD17C(v71);
      v23 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v22, v72);
      v19 = (v23 & 1) == 0;
      v20 = 83;
      v21 = 85;
    }

    else
    {
      if (v14)
      {
        return 75;
      }

      v24 = v71;
      sub_24F5AD17C(v71);
      v25 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v24, v72);
      v19 = (v25 & 1) == 0;
      v20 = 74;
      v21 = 76;
    }
  }

  else if (v12 <= 1)
  {
    if (v12)
    {
      if (v13)
      {
        if (v14)
        {
          return 28;
        }

        v64 = v71;
        sub_24F5AD17C(v71);
        v65 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v64, v72);
        v19 = (v65 & 1) == 0;
        v20 = 27;
        v21 = 29;
      }

      else
      {
        if (v14)
        {
          return 11;
        }

        v68 = v71;
        sub_24F5AD17C(v71);
        v69 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        (*(v73 + 8))(v68, v72);
        v19 = (v69 & 1) == 0;
        v20 = 10;
        v21 = 12;
      }
    }

    else if (v13)
    {
      if (v14)
      {
        return 22;
      }

      v62 = v71;
      sub_24F5AD17C(v71);
      v63 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v62, v72);
      v19 = (v63 & 1) == 0;
      v20 = 21;
      v21 = 23;
    }

    else
    {
      if (v14)
      {
        return 3;
      }

      v66 = v71;
      sub_24F5AD17C(v71);
      v67 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v66, v72);
      v19 = (v67 & 1) == 0;
      v20 = 2;
      v21 = 4;
    }
  }

  else if (v12 == 2)
  {
    if (v13)
    {
      if (v14)
      {
        return 31;
      }

      v34 = v71;
      sub_24F5AD17C(v71);
      v35 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v34, v72);
      v19 = (v35 & 1) == 0;
      v20 = 30;
      v21 = 32;
    }

    else
    {
      if (v14)
      {
        return 15;
      }

      v36 = v71;
      sub_24F5AD17C(v71);
      v37 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v36, v72);
      v19 = (v37 & 1) == 0;
      v20 = 14;
      v21 = 16;
    }
  }

  else if (v12 == 3)
  {
    if (v13)
    {
      if (v14)
      {
        return 34;
      }

      v54 = v71;
      sub_24F5AD17C(v71);
      v55 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v54, v72);
      v19 = (v55 & 1) == 0;
      v20 = 33;
      v21 = 35;
    }

    else
    {
      if (v14)
      {
        return 19;
      }

      v58 = v71;
      sub_24F5AD17C(v71);
      v59 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      (*(v73 + 8))(v58, v72);
      v19 = (v59 & 1) == 0;
      v20 = 18;
      v21 = 20;
    }
  }

  else if (v13)
  {
    if (v14)
    {
      return 25;
    }

    v56 = v71;
    sub_24F5AD17C(v71);
    v57 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v73 + 8))(v56, v72);
    v19 = (v57 & 1) == 0;
    v20 = 24;
    v21 = 26;
  }

  else
  {
    if (v14)
    {
      return 7;
    }

    v60 = v71;
    sub_24F5AD17C(v71);
    v61 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v73 + 8))(v60, v72);
    v19 = (v61 & 1) == 0;
    v20 = 6;
    v21 = 8;
  }

  if (v19)
  {
    return v20;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_24F5AE018@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MixedMediaItem.ContentType();
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F5AD658();
  v7 = *(v1 + 8);
  do
  {
    if (*(v7 + 16))
    {
      v8 = v6;
      v9 = sub_24E76DCB8(v6);
      v6 = v8;
      if (v10)
      {
        sub_24F5B0894(*(v7 + 56) + *(v14 + 72) * v9, v5, type metadata accessor for MixedMediaItem.ContentType);
        sub_24F5B082C(v5, a1, type metadata accessor for MixedMediaItem.ContentType);
        return (*(v14 + 56))(a1, 0, 1, v3);
      }
    }

    v6 = sub_24E974328(v6);
  }

  while (v6 != 86);
  v12 = *(v14 + 56);

  return v12(a1, 1, 1, v3);
}

uint64_t sub_24F5AE1AC@<X0>(uint64_t a1@<X8>)
{
  result = sub_24F5AD658();
  v4 = *v1;
  do
  {
    if (*(v4 + 16))
    {
      v5 = result;
      v6 = sub_24E76DCB8(result);
      result = v5;
      if (v7)
      {
        v8 = *(v4 + 56) + 72 * v6;
        v9 = *v8;
        v10 = *(v8 + 16);
        v11 = *(v8 + 32);
        v12 = *(v8 + 48);
        v13 = *(v8 + 64);
        goto LABEL_7;
      }
    }

    result = sub_24E974328(result);
  }

  while (result != 86);
  v9 = 0uLL;
  v13 = 5;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
LABEL_7:
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  return result;
}

uint64_t sub_24F5AE248@<X0>(uint64_t a1@<X8>)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FB8);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for MixedMediaItem.ContentType();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F5AE018(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F248FC8);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  else
  {
    sub_24F5B082C(v11, v15, type metadata accessor for MixedMediaItem.ContentType);
    v17 = sub_24F5AE5D8(v15, v1);
    v18 = &v18;
    MEMORY[0x28223BE20](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FD0);
    sub_24F5B00C4();
    sub_24F5B0370();
    sub_24F5B03C4();
    sub_24F926B08();
    sub_24E601704(v4, &qword_27F248FB8);
    (*(v6 + 32))(a1, v8, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return sub_24F5B08FC(v15, type metadata accessor for MixedMediaItem.ContentType);
  }
}

uint64_t sub_24F5AE5D8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v52 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249040);
  MEMORY[0x28223BE20](v48);
  v51 = (&v44 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218618);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v44 - v4;
  v49 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v49);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v44 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249018);
  MEMORY[0x28223BE20](v53);
  v50 = &v44 - v9;
  v10 = type metadata accessor for GSKVideo();
  MEMORY[0x28223BE20](v10);
  v45 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249048);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = sub_24F9289E8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MixedMediaItem.ContentType();
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F5B0894(v52, v23, type metadata accessor for MixedMediaItem.ContentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v16;
    v52 = v14;
    sub_24F5B082C(v23, v55, type metadata accessor for GSKVideo);
    v24 = *(v54 + 16);
    if (v24 == 3)
    {
      sub_24F5AE1AC(v58);
      sub_24F5AEEA0(v58, *MEMORY[0x277CEE240], &v56);
      v25 = v57;
      v26 = v51;
      *v51 = v56;
      *(v26 + 16) = v25;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FF8);
      sub_24F5B0C64(&qword_27F2141D8, type metadata accessor for GSKVideoView);
      sub_24F5B01D4();
      v27 = v50;
      sub_24F924E28();
    }

    else
    {
      v31 = v45;
      sub_24F5B0894(v55, v45, type metadata accessor for GSKVideo);
      v32 = type metadata accessor for VideoConfiguration();
      v33 = v46;
      (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
      if (v24)
      {
        v34 = 0.5;
      }

      else
      {
        v34 = 0.3;
      }

      if (v24)
      {
        v35 = 0.75;
      }

      else
      {
        v35 = 0.5;
      }

      sub_24F5AE1AC(v58);
      v36 = sub_24F9238D8();
      v37 = v49;
      v38 = &v6[*(v49 + 48)];
      type metadata accessor for GSKVideoPlaybackCoordinator();
      sub_24F5B0C64(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
      *v38 = sub_24F9243D8();
      v38[1] = v39;
      sub_24F5B082C(v31, v6, type metadata accessor for GSKVideo);
      sub_24E6009C8(v33, &v6[v37[5]], &qword_27F218618);
      v6[v37[9]] = 1;
      *&v6[v37[10]] = v36;
      v6[v37[11]] = 0;
      *&v6[v37[6]] = v35;
      *&v6[v37[7]] = v34;
      v40 = &v6[v37[8]];
      v41 = v58[3];
      *(v40 + 2) = v58[2];
      *(v40 + 3) = v41;
      *(v40 + 32) = v59;
      v42 = v58[1];
      *v40 = v58[0];
      *(v40 + 1) = v42;
      v43 = v47;
      sub_24F5B082C(v6, v47, type metadata accessor for GSKVideoView);
      sub_24F5B0894(v43, v51, type metadata accessor for GSKVideoView);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FF8);
      sub_24F5B0C64(&qword_27F2141D8, type metadata accessor for GSKVideoView);
      sub_24F5B01D4();
      v27 = v50;
      sub_24F924E28();
      sub_24F5B08FC(v43, type metadata accessor for GSKVideoView);
    }

    sub_24E60169C(v27, v44, &qword_27F249018);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FF8);
    sub_24F5B01D4();
    sub_24F5B02B4();
    sub_24F924E28();
    sub_24E601704(v27, &qword_27F249018);
    return sub_24F5B08FC(v55, type metadata accessor for GSKVideo);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128);
    (*(v18 + 32))(v20, v23, v17);
    sub_24F5AE1AC(v58);
    v28 = sub_24F92B098();

    sub_24F5AEEA0(v58, v28, &v56);

    v29 = v57;
    *v16 = v56;
    v16[16] = v29;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FF8);
    sub_24F5B01D4();
    sub_24F5B02B4();
    sub_24F924E28();
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_24F5AEEA0@<X0>(__int128 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v37 = a2;
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 32);
  if (v16 == 5)
  {
    v17 = sub_24F922348();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    (*(v13 + 16))(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v12);
    sub_24E6009C8(v11, v8, &qword_27F214148);
    v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (*(v36 + 80) + v19 + 8) & ~*(v36 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v18, v15, v12);
    v22 = v37;
    *(v21 + v19) = v37;
    sub_24E6009C8(v8, v21 + v20, &qword_27F214148);
    *(v21 + v20 + v7) = 1;
    *&v42 = sub_24E623C20;
    *(&v42 + 1) = v21;
    v43 = 1;
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249008);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0);
    sub_24E602068(&qword_27F249000, &qword_27F249008);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
    result = sub_24F924E28();
    v25 = v44;
    v26 = v45;
  }

  else
  {
    v27 = a1[1];
    v44 = *a1;
    v45 = v27;
    v28 = a1[3];
    v46 = a1[2];
    v47 = v28;
    (*(v13 + 16))(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v12);
    v29 = (*(v13 + 80) + 82) & ~*(v13 + 80);
    v30 = swift_allocObject();
    v31 = v45;
    *(v30 + 16) = v44;
    *(v30 + 32) = v31;
    v32 = v47;
    *(v30 + 48) = v46;
    *(v30 + 64) = v32;
    *(v30 + 80) = v16;
    (*(v13 + 32))(v30 + v29, &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    v33 = v37;
    *(v30 + ((v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
    v39 = sub_24F5B0BB4;
    v40 = v30;
    v41 = 0;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249008);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0);
    sub_24E602068(&qword_27F249000, &qword_27F249008);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
    result = sub_24F924E28();
    v25 = v42;
    v26 = v43;
  }

  v35 = v38;
  *v38 = v25;
  *(v35 + 16) = v26;
  return result;
}

uint64_t sub_24F5AF35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F927618();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248FD0) + 36);
  sub_24F5AF404();
  v8 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249038) + 36));
  *v8 = v4;
  v8[1] = v6;
  return sub_24E60169C(a1, a2, &qword_27F248FB8);
}

uint64_t sub_24F5AF404()
{
  sub_24F5AE1AC(v28);
  v0 = v29;
  if (v29 == 5)
  {
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001CLL, 0x800000024FA76E60);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x61746E6569726F0ALL, 0xEE00203A6E6F6974);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x656D6563616C700ALL, 0xEC000000203A746ELL);
    v1 = sub_24F92CA38();
  }

  else
  {
    v30 = v28[0];
    v31 = v28[1];
    v32 = v28[2];
    sub_24F92C888();
    MEMORY[0x253050C20](0x6953656372756F73, 0xEC000000203A657ALL);
    type metadata accessor for CGSize(0);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x6E41656D6172660ALL, 0xED00003A726F6863);
    v2 = v0 >> 8;
    if (v0 >> 8 <= 3)
    {
      v11 = 0xE300000000000000;
      v12 = 0xE600000000000000;
      v13 = 0x6D6F74746F62;
      if (v2 != 2)
      {
        v13 = 0x676E696C69617274;
        v12 = 0xE800000000000000;
      }

      v14 = 0x676E696461656CLL;
      if (v2)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v14 = 7368564;
      }

      if (v0 >> 8 <= 1)
      {
        v9 = v14;
      }

      else
      {
        v9 = v13;
      }

      if (v0 >> 8 <= 1)
      {
        v10 = v11;
      }

      else
      {
        v10 = v12;
      }
    }

    else
    {
      v3 = 0xED0000676E696461;
      v4 = 0x654C6D6F74746F62;
      v5 = 0xEE00676E696C6961;
      v6 = 0x72546D6F74746F62;
      if (v2 != 7)
      {
        v6 = 0x7265746E6563;
        v5 = 0xE600000000000000;
      }

      if (v2 != 6)
      {
        v4 = v6;
        v3 = v5;
      }

      v7 = 0xEA0000000000676ELL;
      v8 = 0x696461654C706F74;
      if (v2 != 4)
      {
        v8 = 0x6C69617254706F74;
        v7 = 0xEB00000000676E69;
      }

      if (v0 >> 8 <= 5)
      {
        v9 = v8;
      }

      else
      {
        v9 = v4;
      }

      if (v0 >> 8 <= 5)
      {
        v10 = v7;
      }

      else
      {
        v10 = v3;
      }
    }

    MEMORY[0x253050C20](v9, v10);

    MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA76E80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA8);
    v15 = sub_24F92B188();
    MEMORY[0x253050C20](v15);

    MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA76EA0);
    v16 = sub_24F92B188();
    MEMORY[0x253050C20](v16);

    MEMORY[0x253050C20](0x3A74657366666F0ALL, 0xED0000203A782820);
    v17 = sub_24F92BA38();
    MEMORY[0x253050C20](v17);

    MEMORY[0x253050C20](0x203A79202CLL, 0xE500000000000000);
    v18 = sub_24F92BA38();
    MEMORY[0x253050C20](v18);

    MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA76EC0);
    v19 = 0xE300000000000000;
    v20 = 0xE700000000000000;
    v21 = 0x676E696461656CLL;
    v22 = 0xE800000000000000;
    v23 = 0x676E696C69617274;
    if (v0 != 3)
    {
      v23 = 1819047278;
      v22 = 0xE400000000000000;
    }

    if (v0 != 2)
    {
      v21 = v23;
      v20 = v22;
    }

    v24 = 0x6D6F74746F62;
    if (v0)
    {
      v19 = 0xE600000000000000;
    }

    else
    {
      v24 = 7368564;
    }

    if (v0 <= 1u)
    {
      v25 = v24;
    }

    else
    {
      v25 = v21;
    }

    if (v0 <= 1u)
    {
      v26 = v19;
    }

    else
    {
      v26 = v20;
    }

    MEMORY[0x253050C20](v25, v26);

    MEMORY[0x253050C20](0x726F6674616C700ALL, 0xEB00000000203A6DLL);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x61746E6569726F0ALL, 0xEE00203A6E6F6974);
    sub_24F92CA38();
    MEMORY[0x253050C20](0x656D6563616C700ALL, 0xEC000000203A746ELL);
    v1 = sub_24F92CA38();
  }

  MEMORY[0x28223BE20](v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28);
  sub_24E602068(&qword_27F228258, &qword_27F225A28);
  sub_24F926198();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_24F5AFAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v41 = sub_24F91F6B8();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v16 - 8);
  v42 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v21 = sub_24F9232F8();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_24F928A98();
  v22 = type metadata accessor for CopyTextAction();
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC12GameStoreKit14CopyTextAction_text);
  *v24 = a1;
  v24[1] = a2;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v10 + 16))(v12, v15, v9);
  v25 = sub_24F929608();
  v26 = v8;
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v27 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  sub_24E60169C(&v52, &v46, &qword_27F235830);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {

    v28 = v39;
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v38 = v9;
    v37 = v20;
    v30 = v12;
    v32 = v31;
    (*(v40 + 8))(v28, v41);
    v44 = v29;
    v45 = v32;
    v12 = v30;
    v20 = v37;
    v9 = v38;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830);
  }

  sub_24E601704(&v52, &qword_27F235830);
  (*(v10 + 8))(v15, v9);
  v33 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v34 = v50;
  *v33 = v49;
  *(v33 + 16) = v34;
  *(v33 + 32) = v51;
  sub_24E6009C8(v26, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  *(v23 + 16) = xmmword_24FA0D500;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  (*(v10 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v12, v9);
  *(&v53 + 1) = v22;
  v54 = sub_24F5B0C64(&qword_27F230400, type metadata accessor for CopyTextAction);
  *&v52 = v23;
  sub_24E60169C(v20, v42, &unk_27F254FA0);
  sub_24E60169C(&v52, &v49, qword_27F21B590);
  v35 = swift_allocObject();
  *(v35 + 16) = 2037411651;
  *(v35 + 24) = 0xE400000000000000;
  sub_24F921788();
  sub_24E601704(v20, &unk_27F254FA0);
  return sub_24E601704(&v52, qword_27F21B590);
}

unint64_t sub_24F5B00C4()
{
  result = qword_27F248FD8;
  if (!qword_27F248FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FB8);
    sub_24F5B0148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FD8);
  }

  return result;
}

unint64_t sub_24F5B0148()
{
  result = qword_27F248FE0;
  if (!qword_27F248FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FE8);
    sub_24F5B01D4();
    sub_24F5B02B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FE0);
  }

  return result;
}

unint64_t sub_24F5B01D4()
{
  result = qword_27F248FF0;
  if (!qword_27F248FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FF8);
    sub_24E602068(&qword_27F249000, &qword_27F249008);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248FF0);
  }

  return result;
}

unint64_t sub_24F5B02B4()
{
  result = qword_27F249010;
  if (!qword_27F249010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249018);
    sub_24F5B0C64(&qword_27F2141D8, type metadata accessor for GSKVideoView);
    sub_24F5B01D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249010);
  }

  return result;
}

unint64_t sub_24F5B0370()
{
  result = qword_27F249020;
  if (!qword_27F249020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249020);
  }

  return result;
}

unint64_t sub_24F5B03C4()
{
  result = qword_27F249028;
  if (!qword_27F249028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FD0);
    sub_24F5B00C4();
    sub_24E602068(&qword_27F249030, &qword_27F249038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249028);
  }

  return result;
}

double sub_24F5B0484@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_24F9289E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249050);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  sub_24F923998();
  sub_24E97280C(v11);
  sub_24F923998();
  v12 = *(a1 + 56);
  v14 = v13 * *(a1 + 48);
  sub_24F923998();
  v16 = v12 * v15;
  sub_24F9289C8();
  LOBYTE(v25) = *(a1 + 64);
  sub_24F5B0C64(&qword_27F214C28, MEMORY[0x277D21C48]);
  sub_24F5B0CAC();
  sub_24F925ED8();
  (*(v4 + 8))(v6, v3);
  v17 = &v10[*(v8 + 44)];
  *v17 = v14;
  v17[1] = v16;
  sub_24F923998();
  sub_24F923998();
  v18 = *(a1 + 65);
  if (v18 <= 3)
  {
    if (*(a1 + 65) > 1u)
    {
      v19 = v24;
      if (v18 == 2)
      {
        sub_24F927608();
      }

      else
      {
        sub_24F927638();
      }
    }

    else
    {
      v19 = v24;
      if (*(a1 + 65))
      {
        sub_24F927628();
      }

      else
      {
        sub_24F9275F8();
      }
    }
  }

  else if (*(a1 + 65) <= 5u)
  {
    v19 = v24;
    if (v18 == 4)
    {
      sub_24F9275A8();
    }

    else
    {
      sub_24F9275B8();
    }
  }

  else
  {
    v19 = v24;
    if (v18 == 6)
    {
      sub_24F9275C8();
    }

    else if (v18 == 7)
    {
      sub_24F9275D8();
    }

    else
    {
      sub_24F927618();
    }
  }

  sub_24F9238C8();
  sub_24F5B0D00(v10, v19);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249060) + 36));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  result = *&v27;
  v20[2] = v27;
  return result;
}

uint64_t sub_24F5B0788@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24F5B07F4()
{

  return swift_deallocObject();
}

uint64_t sub_24F5B082C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B0894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B08FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5B095C()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F5B0B18()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 82) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24F5B0BB4@<D0>(uint64_t a1@<X8>)
{
  sub_24F9289E8();

  return sub_24F5B0484(v1 + 16, a1);
}

uint64_t sub_24F5B0C64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F5B0CAC()
{
  result = qword_27F249058;
  if (!qword_27F249058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249058);
  }

  return result;
}

uint64_t sub_24F5B0D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F5B0D74()
{
  result = qword_27F249068;
  if (!qword_27F249068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F249070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248FD0);
    sub_24F5B00C4();
    sub_24F5B0370();
    sub_24F5B03C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249068);
  }

  return result;
}

unint64_t sub_24F5B0E98()
{
  result = qword_27F2162F0;
  if (!qword_27F2162F0)
  {
    type metadata accessor for ProgressPerformAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2162F0);
  }

  return result;
}

uint64_t sub_24F5B0EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgressPerformAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v13 = sub_24F92A9E8();
  v14 = sub_24F92B858();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_24F5B1B84(a1, v9);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a3;
  sub_24F5B1D30(v9, v17 + v15);
  *(v17 + v16) = v13;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_24F1D3DA4(0, 0, v12, &unk_24FA0D7E0, v17);

  return v13;
}

uint64_t sub_24F5B10F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = sub_24F928AE8();
  v7[24] = v8;
  v7[25] = *(v8 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F5B11C8, 0, 0);
}

uint64_t sub_24F5B11C8()
{
  v1 = *(v0 + 160);
  v2 = v1[1];
  *(v0 + 224) = v2;
  v3 = v1[2];
  *(v0 + 232) = v3;
  v4 = *(v1 + 24);
  *(v0 + 80) = v2;
  *(v0 + 100) = v4;
  *(v0 + 88) = v3;
  *(v0 + 96) = v4;
  *(v0 + 97) = 1;
  v5 = v0 + 97;
  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927178();
  v6 = *v1;
  *(v0 + 248) = *v1;
  v7 = *(v6 + 16);
  *(v0 + 256) = v7;
  if (v7)
  {
    *(v0 + 264) = 0;
    if (*(v6 + 16))
    {
      v5 = v0 + 16;
      sub_24E615E00(v6 + 32, v0 + 16);
      if (qword_27F211430 == -1)
      {
LABEL_4:
        v8 = sub_24F9220D8();
        *(v0 + 272) = __swift_project_value_buffer(v8, qword_27F39E8E0);
        v9 = sub_24F9220B8();
        v10 = sub_24F92BD98();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_24E5DD000, v9, v10, "ProgressPerformActionImplementation: Performing subaction...", v11, 2u);
          MEMORY[0x2530542D0](v11, -1, -1);
        }

        v12 = swift_task_alloc();
        *(v0 + 280) = v12;
        v13 = type metadata accessor for ProgressPerformActionImplementation();
        WitnessTable = swift_getWitnessTable();
        *v12 = v0;
        v12[1] = sub_24F5B14C0;
        v15 = *(v0 + 208);
        v16 = *(v0 + 176);

        return sub_24F1487B0(v15, v5, v16, v13, WitnessTable);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 100);
  v20 = *(v0 + 216);
  v21 = *(v0 + 200);
  v22 = *(v0 + 192);
  *(v0 + 128) = *(v0 + 224);
  *(v0 + 136) = v18;
  *(v0 + 144) = v19;
  *(v0 + 99) = 0;
  sub_24F927178();
  (*(v21 + 104))(v20, *MEMORY[0x277D21CA8], v22);
  sub_24F92A9C8();
  (*(v21 + 8))(v20, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_24F5B14C0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_24F5B1910;
  }

  else
  {
    (*(v2[25] + 8))(v2[26], v2[24]);
    v3 = sub_24F5B15EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F5B15EC()
{
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "ProgressPerformActionImplementation: Subaction succeeded.", v3, 2u);
    MEMORY[0x2530542D0](v3, -1, -1);
  }

  v5 = *(v0 + 256);
  v4 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v4 + 1 == v5)
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 100);
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 192);
    *(v0 + 128) = *(v0 + 224);
    *(v0 + 136) = v6;
    *(v0 + 144) = v7;
    *(v0 + 99) = 0;
    sub_24F927178();
    (*(v9 + 104))(v8, *MEMORY[0x277D21CA8], v10);
    sub_24F92A9C8();
    (*(v9 + 8))(v8, v10);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 264) + 1;
  *(v0 + 264) = v13;
  v14 = *(v0 + 248);
  if (v13 >= *(v14 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24E615E00(v14 + 40 * v13 + 32, v0 + 16);
  if (qword_27F211430 != -1)
  {
LABEL_15:
    swift_once();
  }

  v15 = sub_24F9220D8();
  *(v0 + 272) = __swift_project_value_buffer(v15, qword_27F39E8E0);
  v16 = sub_24F9220B8();
  v17 = sub_24F92BD98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24E5DD000, v16, v17, "ProgressPerformActionImplementation: Performing subaction...", v18, 2u);
    MEMORY[0x2530542D0](v18, -1, -1);
  }

  v19 = swift_task_alloc();
  *(v0 + 280) = v19;
  v20 = type metadata accessor for ProgressPerformActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v19 = v0;
  v19[1] = sub_24F5B14C0;
  v22 = *(v0 + 208);
  v23 = *(v0 + 176);

  return sub_24F1487B0(v22, v0 + 16, v23, v20, WitnessTable);
}

uint64_t sub_24F5B1910()
{
  v1 = *(v0 + 288);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "ProgressPerformActionImplementation: Subaction failed, reason: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 160);

  v11 = *(v10 + 40);
  if (v11)
  {
    v12 = *(v0 + 288);
    v13 = *(v0 + 160);
    v14 = *(v13 + 48);
    v15 = *(v13 + 32);
    *(v0 + 56) = v15;
    *(v0 + 64) = v11;
    *(v0 + 72) = v14;
    *(v0 + 152) = v12;
    v16 = v12;
    sub_24F5B1ED8(v15, v11, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F78);
    sub_24F927178();
  }

  v17 = *(v0 + 232);
  v18 = *(v0 + 100);
  v19 = *(v0 + 216);
  v20 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 192);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  *(v0 + 104) = v20;
  *(v0 + 112) = v17;
  *(v0 + 120) = v18;
  *(v0 + 98) = 0;
  sub_24F927178();
  (*(v21 + 104))(v19, *MEMORY[0x277D21CA8], v22);
  sub_24F92A9C8();
  (*(v21 + 8))(v19, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_24F5B1B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgressPerformAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5B1BE8()
{
  v1 = type metadata accessor for ProgressPerformAction();
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  if (*(v0 + v2 + 40))
  {
  }

  v4 = *(v1 + 28);
  v5 = sub_24F928AD8();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24F5B1D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgressPerformAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5B1D94(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(type metadata accessor for ProgressPerformAction() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E614970;

  return sub_24F5B10F8(a1, v9, v10, v1 + v7, v11, v12, v5);
}

void sub_24F5B1ED8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v4 = a3;
  }
}

uint64_t GenericPageGridMapper.layout(for:pageGrid:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    v6 = result;
    v7 = *(a2 + 288);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
    *a3 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
    *&a3[v8] = v7;
    v9 = *MEMORY[0x277D7EB58];
    v10 = sub_24F9219E8();
    (*(*(v10 - 8) + 104))(&a3[v8], v9, v10);
    v5 = MEMORY[0x277D7EB20];
    goto LABEL_7;
  }

  v4 = *(a2 + 280);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *a3 = v4;
  v5 = MEMORY[0x277D7EB30];
LABEL_7:
  v11 = *v5;
  v12 = sub_24F9218F8();
  v13 = *(*(v12 - 8) + 104);

  return v13(a3, v11, v12);
}

void ComponentGridLayout.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  if (v2 > 4)
  {
    v10 = 0x476E6769736564;
    v11 = 0x486E6769736564;
    if (v2 != 8)
    {
      v11 = 0x496E6769736564;
    }

    if (v2 != 7)
    {
      v10 = v11;
      v3 = 0xE700000000000000;
    }

    v12 = 0x456E6769736564;
    if (v2 != 5)
    {
      v12 = 0x466E6769736564;
    }

    if (*v1 <= 6u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }

    if (*v1 <= 6u)
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v4 = 0x416E6769736564;
    v5 = 0xE700000000000000;
    v6 = 0x436E6769736564;
    v7 = 0xE700000000000000;
    v8 = 0x446E6769736564;
    if (v2 != 3)
    {
      v8 = 0x44446E6769736564;
      v7 = 0xEC00000065736E65;
    }

    if (v2 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    if (*v1)
    {
      v4 = 0x426E6769736564;
      v3 = 0xE700000000000000;
    }

    if (*v1 <= 1u)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }
  }

  v13 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v13;
  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24F5B22BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F5B2400(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for CreateChallengeIntent()
{
  result = qword_27F2490F8;
  if (!qword_27F2490F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5B257C()
{
  sub_24F5B275C(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24F5B275C(319, &qword_27F2191B8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F5B275C(319, &qword_27F2182A8, &type metadata for GameActivityDraftPlayerInfo, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24F5B275C(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_24F5B275C(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24F085EDC();
            if (v5 <= 0x3F)
            {
              sub_24F085F40();
              if (v6 <= 0x3F)
              {
                type metadata accessor for Player(319);
                if (v7 <= 0x3F)
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
}

void sub_24F5B275C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ChallengeScoreboardShelfConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ChallengeScoreboardShelfConstructionIntent()
{
  result = qword_27F249150;
  if (!qword_27F249150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ChallengeScoreboardShelfConstructionIntent.participants.getter()
{
  type metadata accessor for ChallengeScoreboardShelfConstructionIntent();
}

uint64_t ChallengeScoreboardShelfConstructionIntent.friendIDs.getter()
{
  type metadata accessor for ChallengeScoreboardShelfConstructionIntent();
}

unint64_t ChallengeScoreboardShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x616C506C61636F6CLL;
  *(inited + 96) = 0xEB00000000726579;
  v7 = type metadata accessor for ChallengeScoreboardShelfConstructionIntent();
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24EAE2A74(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F5B3670(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  strcpy((inited + 144), "attemptLimit");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  v10 = v1 + v7[6];
  v11 = *v10;
  v12 = v10[8];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
  v13 = sub_24E658F98();
  *(inited + 160) = v11;
  *(inited + 168) = v12;
  *(inited + 192) = v13;
  strcpy((inited + 200), "participants");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v14 = *(v1 + v7[7]);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90);
  v15 = sub_24F5B2C30(&qword_27F249108, &qword_27F249110);
  *(inited + 216) = v14;
  *(inited + 248) = v15;
  *(inited + 256) = 0x4449646E65697266;
  *(inited + 264) = 0xE900000000000073;
  v16 = *(v1 + v7[8]);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(inited + 304) = sub_24E61B71C(&qword_27F213798);
  *(inited + 272) = v16;

  v17 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

uint64_t sub_24F5B2C30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220B90);
    sub_24EAE2A74(a2, type metadata accessor for ChallengeDetail.Participant);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F5B2CCC()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x4C74706D65747461;
  v4 = 0x7069636974726170;
  if (v1 != 3)
  {
    v4 = 0x4449646E65697266;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616C506C61636F6CLL;
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

uint64_t sub_24F5B2D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5B3B7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5B2DA8(uint64_t a1)
{
  v2 = sub_24F5B361C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5B2DE4(uint64_t a1)
{
  v2 = sub_24F5B361C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeScoreboardShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249118);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5B361C();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for ChallengeScoreboardShelfConstructionIntent();
    LOBYTE(v12) = 1;
    type metadata accessor for Player(0);
    sub_24EAE2A74(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    LOBYTE(v12) = 2;
    sub_24F92CCE8();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90);
    sub_24F5B2C30(&qword_27F249128, &qword_27F249130);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 32));
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E61B71C(&qword_27F2137A0);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ChallengeScoreboardShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249138);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ChallengeScoreboardShelfConstructionIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5B361C();
  v20 = v7;
  v11 = v22;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v19;
  LOBYTE(v24) = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v22 = v13;
  LOBYTE(v24) = 1;
  sub_24EAE2A74(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v5, v10 + v8[5]);
  LOBYTE(v24) = 2;
  v14 = sub_24F92CC08();
  v15 = v10 + v8[6];
  *v15 = v14;
  v15[8] = v16 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90);
  v23 = 3;
  sub_24F5B2C30(&qword_27F249140, &qword_27F249148);
  sub_24F92CC68();
  *(v10 + v8[7]) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v23 = 4;
  sub_24E61B71C(&qword_27F216420);
  sub_24F92CC68();
  (*(v12 + 8))(v20, v21);
  *(v10 + v8[8]) = v24;
  sub_24F5B3670(v10, v18, type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F5B36D8(v10, type metadata accessor for ChallengeScoreboardShelfConstructionIntent);
}

unint64_t sub_24F5B361C()
{
  result = qword_27F249120;
  if (!qword_27F249120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249120);
  }

  return result;
}

uint64_t sub_24F5B3670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B36D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5B374C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F5B380C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5B38B0()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24F5B3A14(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F5B39BC();
      if (v2 <= 0x3F)
      {
        sub_24F5B3A14(319, &qword_27F218170, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F5B39BC()
{
  if (!qword_27F249160)
  {
    type metadata accessor for ChallengeDetail.Participant(255);
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F249160);
    }
  }
}

void sub_24F5B3A14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24F5B3A78()
{
  result = qword_27F249168;
  if (!qword_27F249168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249168);
  }

  return result;
}

unint64_t sub_24F5B3AD0()
{
  result = qword_27F249170;
  if (!qword_27F249170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249170);
  }

  return result;
}

unint64_t sub_24F5B3B28()
{
  result = qword_27F249178;
  if (!qword_27F249178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249178);
  }

  return result;
}

uint64_t sub_24F5B3B7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449646E65697266 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

double sub_24F5B3DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = sub_24F9234F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  v16 = 10.0;
  if (v15 != *MEMORY[0x277CDF418] && v15 != *MEMORY[0x277CDF438])
  {
    v16 = 12.0;
    if (v15 != *MEMORY[0x277CDF440])
    {
      v16 = 20.0;
      if (v15 != *MEMORY[0x277CDF420] && v15 != *MEMORY[0x277CDF410])
      {
        (*(v11 + 8))(v14, v10);
        v16 = 12.0;
      }
    }
  }

  sub_24EF14440(a2, v9);
  v19 = sub_24F923E98();
  v20 = *(v19 - 8);
  v21 = 0.0;
  if ((*(v20 + 48))(v9, 1, v19) != 1)
  {
    sub_24EF14440(v9, v6);
    v22 = (*(v20 + 88))(v6, v19);
    v21 = 2.0;
    if (v22 != *MEMORY[0x277CDF988])
    {
      v21 = 4.0;
      if (v22 != *MEMORY[0x277CDF998])
      {
        v21 = 6.0;
        if (v22 != *MEMORY[0x277CDF9A8])
        {
          v21 = 8.0;
          if (v22 != *MEMORY[0x277CDF9B8])
          {
            v21 = 10.0;
            if (v22 != *MEMORY[0x277CDF9D0])
            {
              (*(v20 + 8))(v6, v19);
              v21 = 0.0;
            }
          }
        }
      }
    }
  }

  sub_24EF144B0(v9);
  return v16 + v21;
}

uint64_t sub_24F5B40D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24F5B4238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F5B4398()
{
  sub_24F5B9608(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24ED30F30();
    if (v1 <= 0x3F)
    {
      sub_24F5B9608(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F5B4514@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v27 = a1;
  v31 = a2;
  v30 = sub_24F922348();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24F923E98();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for StoryCardView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_24F5B8D14(v2, &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StoryCardView);
  v17 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v27;
  sub_24F5B8D7C(&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for StoryCardView);

  sub_24F769788(v7);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v19 = v28;
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  (*(v5 + 8))(v7, v29);
  v20 = v30;
  (*(v3 + 32))(v13, v19, v30);
  (*(v3 + 56))(v13, 0, 1, v20);
  sub_24E60169C(v13, v10, &qword_27F214148);
  v21 = (*(v3 + 48))(v10, 1, v20);
  if (v21 == 1)
  {
    sub_24E601704(v13, &qword_27F214148);
    result = sub_24E601704(v10, &qword_27F214148);
    v23 = 0;
  }

  else
  {
    sub_24F9222E8();
    v23 = v24;
    sub_24E601704(v13, &qword_27F214148);
    result = (*(v3 + 8))(v10, v20);
  }

  v25 = v31;
  *v31 = sub_24F5B8C68;
  v25[1] = v18;
  v25[2] = v23;
  *(v25 + 24) = v21 == 1;
  *(v25 + 25) = 1;
  return result;
}

uint64_t sub_24F5B4948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42[1] = a3;
  v43 = a2;
  v48 = a4;
  v7 = sub_24F923F78();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24F9234D8();
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491A0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = (v42 - v14);
  *v15 = sub_24F9275C8();
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491A8);
  sub_24F5B4D80(a2, a3, a1, v15 + *(v17 + 44));
  v18 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491B0) + 36);
  v19 = *(sub_24F924258() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_24F924B38();
  v22 = *(*(v21 - 8) + 104);
  v22(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #22.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491B8) + 36)) = 0x4036000000000000;
  v28 = v15 + *(v13 + 44);
  v29 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v22(&v28[v29[6]], v20, v21);
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0x4036000000000000;
  v28[v29[7]] = 1;
  v30 = &v28[v29[8]];
  *v30 = 0;
  v30[8] = 1;
  type metadata accessor for StoryCardView(0);
  sub_24F7699B0(v9);
  v31 = *(*(v43 + 16) + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isMediaDark);
  if (v31 == 2)
  {
    v32 = sub_24E747AC0(*(v43 + qword_27F39A5E8), v9);
    (*(v44 + 8))(v9, v45);
    if (v32 != 2 && (v32 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v33 = MEMORY[0x277CDF3C0];
    goto LABEL_7;
  }

  (*(v44 + 8))(v9, v45);
  if (v31)
  {
    goto LABEL_6;
  }

LABEL_4:
  v33 = MEMORY[0x277CDF3D0];
LABEL_7:
  v35 = v46;
  v34 = v47;
  (*(v10 + 104))(v46, *v33, v47);
  KeyPath = swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491C0);
  v38 = v48;
  v39 = (v48 + *(v37 + 36));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858);
  (*(v10 + 32))(v39 + *(v40 + 28), v35, v34);
  *v39 = KeyPath;
  return sub_24E6009C8(v15, v38, &qword_27F2491A0);
}

uint64_t sub_24F5B4D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v81 = a3;
  v79 = a4;
  v80 = type metadata accessor for StoryCardView(0);
  v74 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = v6;
  v76 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245900);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v65 - v12;
  v13 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StoryCardView.CardContent(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491C8);
  MEMORY[0x28223BE20](v72);
  v78 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = &v65 - v20;
  MEMORY[0x28223BE20](v21);
  v77 = &v65 - v22;
  v23 = sub_24F923F78();
  v82 = *(v23 - 8);
  v83 = v23;
  MEMORY[0x28223BE20](v23);
  v70 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  v28 = sub_24F923E98();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  LOBYTE(v30) = *(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 5);
  v88 = a2;
  v66 = v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions;
  if (v30)
  {
    v69 = 1;
  }

  else
  {
    sub_24F769788(v31);
    v33 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    a2 = v88;
    v69 = v33;
    (*(v29 + 8))(v31, v28);
  }

  sub_24F5B59E4(a1, a2, v121);
  if (*(a1 + 48))
  {
    v73 = 0;
  }

  else
  {
    v73 = *(a1 + 40) != 0;
  }

  v68 = *(v80 + 24);
  sub_24F7699B0(v27);
  v34 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isMediaDark;
  v35 = *(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isMediaDark);
  if (v35 == 2)
  {
    v36 = sub_24E747AC0(*(a1 + qword_27F39A5E8), v27);
    v67 = *(v82 + 8);
    v67(v27, v83);
    LOBYTE(v35) = (v36 == 2) | v36;
  }

  else
  {
    v67 = *(v82 + 8);
    v67(v27, v83);
  }

  v37 = (v88 + *(v80 + 20));
  v38 = *v37;
  v39 = v37[1];
  *&v90[0] = v38;
  *(&v90[0] + 1) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F38();
  v40 = *v89;
  sub_24F923998();
  sub_24EEF51C4(v35 & 1, v102, v40, v41);
  *&v89[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0);
  sub_24F926F28();
  v80 = *(&v90[0] + 1);
  v81 = *&v90[0];
  *(&v104[3] + 6) = v102[3];
  *(&v104[4] + 6) = v102[4];
  *(&v104[5] + 6) = v103[0];
  *(&v104[5] + 15) = *(v103 + 9);
  *(v104 + 6) = v102[0];
  *(&v104[1] + 6) = v102[1];
  *(&v104[2] + 6) = v102[2];
  v108 = v121[3];
  v107 = v121[2];
  v106 = v121[1];
  v105 = v121[0];
  v112 = v121[7];
  v111 = v121[6];
  v110 = v121[5];
  v109 = v121[4];
  v116 = v121[11];
  v115 = v121[10];
  v114 = v121[9];
  v113 = v121[8];
  *(v119 + 9) = *(v122 + 9);
  v119[0] = v122[0];
  v118 = v121[13];
  v117 = v121[12];
  sub_24F5B8D14(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge, v84, type metadata accessor for EditorialStoryCard.Badge);
  sub_24E60169C(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title, v85, &qword_27F215340);
  v42 = *(a1 + 32);
  sub_24E60169C(v32 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, v86, &qword_27F215340);
  v43 = v87;
  if (v42 == 1 && *(v66 + 1) == 1 && *(v66 + 4) == 1)
  {
    v44 = *(a1 + qword_27F39A5D8);
  }

  else
  {
    v44 = 0;
  }

  if (*(a1 + qword_27F39A5D0) == 4)
  {
    v45 = 1;
  }

  else
  {
    sub_24F5B8D14(a1 + qword_27F39A5D0, v43, _s9ViewModelVMa);
    v45 = 0;
  }

  v46 = _s9ViewModelVMa();
  (*(*(v46 - 8) + 56))(v43, v45, 1, v46);
  v47 = v70;
  sub_24F7699B0(v70);
  v48 = *(v32 + v34);
  if (v48 == 2)
  {
    v49 = sub_24E747AC0(*(a1 + qword_27F39A5E8), v47);
    v67(v47, v83);
    LOBYTE(v48) = (v49 == 2) | v49;
  }

  else
  {
    v67(v47, v83);
  }

  v50 = v69 & 1;
  sub_24F5B8D7C(v84, v17, type metadata accessor for EditorialStoryCard.Badge);
  sub_24E6009C8(v85, &v17[v15[5]], &qword_27F215340);
  v17[v15[6]] = v42 ^ 1;
  v17[v15[7]] = v42;
  sub_24E6009C8(v86, &v17[v15[8]], &qword_27F215340);
  *&v17[v15[9]] = v44;
  sub_24E6009C8(v87, &v17[v15[10]], &qword_27F245900);
  v17[v15[11]] = v48 & 1;
  v51 = v15[12];
  *&v17[v51] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v52 = v76;
  sub_24F5B8D14(v88, v76, type metadata accessor for StoryCardView);
  v53 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v54 = v53 + v75;
  v55 = swift_allocObject();
  sub_24F5B8D7C(v52, v55 + v53, type metadata accessor for StoryCardView);
  LODWORD(v83) = v50;
  *(v55 + v54) = v50;
  v56 = v71;
  sub_24F5B8D7C(v17, v71, type metadata accessor for StoryCardView.CardContent);
  v57 = (v56 + *(v72 + 36));
  *v57 = sub_24E7BC238;
  v57[1] = 0;
  v57[2] = sub_24F5B8F84;
  v57[3] = v55;
  v58 = v77;
  sub_24E6009C8(v56, v77, &qword_27F2491C8);
  v59 = v78;
  sub_24E60169C(v58, v78, &qword_27F2491C8);
  v89[12] = v117;
  v89[13] = v118;
  v89[14] = v119[0];
  v89[15] = v119[1];
  v89[8] = v113;
  v89[9] = v114;
  v89[10] = v115;
  v89[11] = v116;
  v89[4] = v109;
  v89[5] = v110;
  v89[6] = v111;
  v89[7] = v112;
  v89[0] = v105;
  v89[1] = v106;
  v89[2] = v107;
  v89[3] = v108;
  LOBYTE(v89[16]) = v50;
  LOBYTE(v50) = v73;
  BYTE1(v89[16]) = v73;
  *(&v89[20] + 2) = v104[4];
  *(&v89[21] + 2) = v104[5];
  *(&v89[22] + 1) = *(&v104[5] + 15);
  *(&v89[16] + 2) = v104[0];
  *(&v89[17] + 2) = v104[1];
  *(&v89[18] + 2) = v104[2];
  *(&v89[19] + 2) = v104[3];
  *(&v89[23] + 1) = *v120;
  DWORD1(v89[23]) = *&v120[3];
  v61 = v80;
  v60 = v81;
  *(&v89[23] + 1) = v81;
  *&v89[24] = v80;
  v62 = v79;
  memcpy(v79, v89, 0x188uLL);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2491D0);
  sub_24E60169C(v59, v62 + *(v63 + 48), &qword_27F2491C8);
  sub_24E60169C(v89, v90, &qword_27F2491D8);
  sub_24E601704(v58, &qword_27F2491C8);
  sub_24E601704(v59, &qword_27F2491C8);
  v90[12] = v117;
  v90[13] = v118;
  v90[14] = v119[0];
  v90[15] = v119[1];
  v90[8] = v113;
  v90[9] = v114;
  v90[10] = v115;
  v90[11] = v116;
  v90[4] = v109;
  v90[5] = v110;
  v90[6] = v111;
  v90[7] = v112;
  v90[0] = v105;
  v90[1] = v106;
  v90[2] = v107;
  v90[3] = v108;
  v91 = v83;
  v92 = v50;
  v97 = v104[4];
  *v98 = v104[5];
  *&v98[15] = *(&v104[5] + 15);
  v93 = v104[0];
  v94 = v104[1];
  v95 = v104[2];
  v96 = v104[3];
  *v99 = *v120;
  *&v99[3] = *&v120[3];
  v100 = v60;
  v101 = v61;
  return sub_24E601704(v90, &qword_27F2491D8);
}

uint64_t sub_24F5B59E4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_24F923F78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v41 - v10;
  v12 = a1[5];
  v45 = a1[6];

  v46 = v12;

  sub_24F923998();
  v14 = v13;
  v16 = v15;
  type metadata accessor for StoryCardView(0);
  sub_24F7699B0(v11);
  v17 = sub_24EE6C7E0(&v75);
  v18 = *(v7 + 8);
  v18(v11, v6, v17);
  type metadata accessor for VideoPlaybackCoordinator();
  sub_24F5B89D8(&qword_27F239098, type metadata accessor for VideoPlaybackCoordinator);
  v19 = sub_24F9243D8();
  v43 = v20;
  v44 = v19;
  v41[1] = a2;
  v21 = v42;
  sub_24F7699B0(v42);
  (v18)(v21, v6);
  if (*(a1[2] + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  else
  {
    sub_24F7699B0(v11);
    v25 = sub_24ED15C14();
    v22 = v26;
    v23 = v27;
    v24 = v28;
    (v18)(v11, v6);
  }

  v30 = v45;
  v29 = v46;
  *&v47 = v46;
  *(&v47 + 1) = v45;
  *&v48 = v14;
  *(&v48 + 1) = v16;
  v57 = v83;
  v58 = v84;
  v59 = v85;
  v53 = v79;
  v54 = v80;
  v56 = v82;
  v55 = v81;
  v49 = v75;
  v50 = v76;
  v52 = v78;
  v51 = v77;
  v32 = v43;
  v31 = v44;
  *&v60 = v44;
  *(&v60 + 1) = v43;
  v33 = v84;
  *(a3 + 160) = v83;
  *(a3 + 176) = v33;
  v34 = v54;
  *(a3 + 96) = v53;
  *(a3 + 112) = v34;
  v35 = v56;
  *(a3 + 128) = v55;
  *(a3 + 144) = v35;
  v36 = v50;
  *(a3 + 32) = v49;
  *(a3 + 48) = v36;
  v37 = v52;
  *(a3 + 64) = v51;
  *(a3 + 80) = v37;
  v38 = v48;
  *a3 = v47;
  *(a3 + 16) = v38;
  v39 = v60;
  *(a3 + 192) = v59;
  *(a3 + 208) = v39;
  *(a3 + 224) = v25;
  *(a3 + 232) = v22;
  *(a3 + 240) = v23;
  *(a3 + 248) = v24;
  sub_24F5B9014(&v47, v61);
  sub_24ED1932C(v25);
  sub_24ED1934C(v25);
  v61[0] = v29;
  v61[1] = v30;
  v61[2] = v14;
  v61[3] = v16;
  v70 = v83;
  v71 = v84;
  v72 = v85;
  v66 = v79;
  v67 = v80;
  v69 = v82;
  v68 = v81;
  v62 = v75;
  v63 = v76;
  v65 = v78;
  v64 = v77;
  v73 = v31;
  v74 = v32;
  return sub_24F5B904C(v61);
}

uint64_t sub_24F5B5E30(double *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  type metadata accessor for StoryCardView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  result = sub_24F926F38();
  if (v4 != v6 && (a3 & 1) != 0)
  {
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24F5B5EDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2492B0);
  MEMORY[0x28223BE20](v1);
  v3 = &v28[-v2];
  v4 = type metadata accessor for ArtworkWithFallbackView();
  MEMORY[0x28223BE20](v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v0;
  v8 = *(v0 + 2);
  v40 = *(v0 + 1);
  v9 = *(v0 + 9);
  v10 = *(v0 + 11);
  v11 = *(v0 + 12);
  v37 = *(v0 + 10);
  v38 = v10;
  v39 = v11;
  v12 = *(v0 + 5);
  v13 = *(v0 + 7);
  v14 = *(v0 + 8);
  v33 = *(v0 + 6);
  v34 = v13;
  v35 = v14;
  v36 = v9;
  v15 = *(v0 + 3);
  v31 = *(v0 + 4);
  v32 = v12;
  v41 = v7;
  v29 = v8;
  v30 = v15;
  v16 = v4[7];
  v17 = *MEMORY[0x277CE1010];
  v18 = sub_24F926E68();
  (*(*(v18 - 8) + 104))(&v6[v16], v17, v18);
  *v6 = v41;
  v19 = v40;
  *(v6 + 8) = v40;
  *(v6 + 24) = v19;
  v20 = &v6[v4[8]];
  *v20 = 1;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  v20[104] = 0;
  v21 = &v6[v4[9]];
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  v23 = v34;
  v21[4] = v33;
  v21[5] = v23;
  v24 = v32;
  v21[2] = v31;
  v21[3] = v24;
  v25 = v39;
  v21[9] = v38;
  v21[10] = v25;
  v26 = v37;
  v21[7] = v36;
  v21[8] = v26;
  v21[6] = v35;
  *&v6[v4[10]] = 0;
  v6[v4[11]] = 0;
  sub_24F5B8D14(v6, v3, type metadata accessor for ArtworkWithFallbackView);
  swift_storeEnumTagMultiPayload();
  sub_24E60169C(&v41, v28, &qword_27F2245A8);
  sub_24E60169C(&v29, v28, &qword_27F22E660);
  sub_24F5B89D8(&qword_27F22E6B8, type metadata accessor for ArtworkWithFallbackView);
  sub_24F924E28();
  return sub_24F5B9C50(v6, type metadata accessor for ArtworkWithFallbackView);
}

uint64_t sub_24F5B6358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249218);
  MEMORY[0x28223BE20](v131);
  v132 = (&v110 - v3);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249220);
  MEMORY[0x28223BE20](v110);
  v112 = &v110 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249228);
  MEMORY[0x28223BE20](v111);
  v114 = &v110 - v5;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249230);
  MEMORY[0x28223BE20](v113);
  v115 = &v110 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249238);
  MEMORY[0x28223BE20](v129);
  v116 = &v110 - v7;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249240);
  v118 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v117 = &v110 - v8;
  v9 = sub_24F923E98();
  v121 = *(v9 - 8);
  v122 = v9;
  MEMORY[0x28223BE20](v9);
  v120 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245900);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v110 - v14;
  v124 = _s9ViewModelVMa();
  v16 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249248);
  MEMORY[0x28223BE20](v18 - 8);
  v128 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v127 = &v110 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249250);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v110 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249258);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v126 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v110 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v110 - v33;
  *v25 = sub_24F924998();
  *(v25 + 1) = 0x4028000000000000;
  v25[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249260);
  sub_24F5B70B4(a1, &v25[*(v35 + 44)]);
  v36 = sub_24F9257F8();
  sub_24F923318();
  v37 = &v25[*(v23 + 44)];
  *v37 = v36;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v25, v31, &qword_27F249250);
  v42 = *(v27 + 44);
  v43 = a1;
  v44 = &v31[v42];
  v45 = v146;
  v46 = v147;
  *(v44 + 4) = v145;
  *(v44 + 5) = v45;
  *(v44 + 6) = v46;
  v47 = v142;
  *v44 = v141;
  *(v44 + 1) = v47;
  v48 = v144;
  *(v44 + 2) = v143;
  *(v44 + 3) = v48;
  v125 = v34;
  sub_24E6009C8(v31, v34, &qword_27F249258);
  v49 = type metadata accessor for StoryCardView.CardContent(0);
  sub_24E60169C(a1 + *(v49 + 40), v15, &qword_27F245900);
  if ((*(v16 + 48))(v15, 1, v124) == 1)
  {
    sub_24E601704(v15, &qword_27F245900);
LABEL_7:
    v73 = v127;
    sub_24F927618();
    sub_24F9238C8();
    v74 = v148;
    v75 = BYTE8(v148);
    v76 = v149;
    v77 = BYTE8(v149);
    v140 = 1;
    v139 = BYTE8(v148);
    v138 = BYTE8(v149);
    v78 = v132;
    *v132 = 0;
    *(v78 + 8) = 1;
    v78[2] = v74;
    *(v78 + 24) = v75;
    v78[4] = v76;
    *(v78 + 40) = v77;
    *(v78 + 3) = v150;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188);
    v79 = type metadata accessor for StoryCardView.EditorialComponentOverlayViewAccessibilityRepresentation(255);
    v80 = sub_24F5B9890();
    v81 = sub_24F5B89D8(&qword_27F249290, type metadata accessor for StoryCardView.EditorialComponentOverlayViewAccessibilityRepresentation);
    v134 = v129;
    v135 = v79;
    v136 = v80;
    v137 = v81;
    swift_getOpaqueTypeConformance2();
    sub_24E8533A4();
    sub_24F924E28();
    goto LABEL_10;
  }

  v50 = v123;
  sub_24F5B8D7C(v15, v123, _s9ViewModelVMa);
  v51 = v119;
  sub_24F769788(v119);
  v53 = v120;
  v52 = v121;
  v54 = v122;
  (*(v121 + 104))(v120, *MEMORY[0x277CDF9A8], v122);
  v55 = sub_24F923E88();
  v56 = *(v52 + 8);
  v56(v53, v54);
  v56(v51, v54);
  if ((v55 & 1) == 0)
  {
    sub_24F5B9C50(v50, _s9ViewModelVMa);
    goto LABEL_7;
  }

  v57 = v112;
  sub_24F5B8D14(v50, v112, _s9ViewModelVMa);
  v58 = type metadata accessor for EditorialComponentOverlayView();
  v59 = v58[8];
  *(v57 + v59) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  swift_storeEnumTagMultiPayload();
  *(v57 + v58[5]) = 0;
  *(v57 + v58[6]) = 1;
  *(v57 + v58[7]) = 0;
  LOBYTE(v58) = sub_24F925808();
  sub_24F923318();
  v60 = v57 + *(v110 + 36);
  *v60 = v58;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  sub_24F927618();
  sub_24F9242E8();
  v65 = v114;
  sub_24E6009C8(v57, v114, &qword_27F249220);
  v66 = (v65 + *(v111 + 36));
  v67 = v153;
  v66[4] = v152;
  v66[5] = v67;
  v66[6] = v154;
  v68 = v149;
  *v66 = v148;
  v66[1] = v68;
  v69 = v151;
  v66[2] = v150;
  v66[3] = v69;
  v70 = sub_24F927618();
  v72 = v71;
  if (*(v43 + *(v49 + 44)) == 1)
  {
    sub_24F926C88();
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v82 = sub_24F926D08();

  v83 = v115;
  sub_24E6009C8(v65, v115, &qword_27F249228);
  v84 = (v83 + *(v113 + 36));
  *v84 = v82;
  v84[1] = v70;
  v84[2] = v72;
  v85 = sub_24F925818();
  sub_24F923318();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v116;
  v95 = sub_24E6009C8(v83, v116, &qword_27F249230);
  v96 = v129;
  v97 = v94 + *(v129 + 36);
  *v97 = v85;
  *(v97 + 8) = v87;
  *(v97 + 16) = v89;
  *(v97 + 24) = v91;
  *(v97 + 32) = v93;
  *(v97 + 40) = 0;
  MEMORY[0x28223BE20](v95);
  v98 = type metadata accessor for StoryCardView.EditorialComponentOverlayViewAccessibilityRepresentation(0);
  v99 = sub_24F5B9890();
  v100 = sub_24F5B89D8(&qword_27F249290, type metadata accessor for StoryCardView.EditorialComponentOverlayViewAccessibilityRepresentation);
  v101 = v117;
  sub_24F926818();
  sub_24E601704(v94, &qword_27F249238);
  v102 = v118;
  v103 = v130;
  (*(v118 + 16))(v132, v101, v130);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188);
  v134 = v96;
  v135 = v98;
  v136 = v99;
  v137 = v100;
  swift_getOpaqueTypeConformance2();
  sub_24E8533A4();
  v73 = v127;
  sub_24F924E28();
  (*(v102 + 8))(v101, v103);
  sub_24F5B9C50(v123, _s9ViewModelVMa);
LABEL_10:
  v105 = v125;
  v104 = v126;
  sub_24E60169C(v125, v126, &qword_27F249258);
  v106 = v128;
  sub_24F5B9B1C(v73, v128);
  v107 = v133;
  sub_24E60169C(v104, v133, &qword_27F249258);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249298);
  sub_24F5B9B1C(v106, v107 + *(v108 + 48));
  sub_24F5B9B8C(v73);
  sub_24E601704(v105, &qword_27F249258);
  sub_24F5B9B8C(v106);
  return sub_24E601704(v104, &qword_27F249258);
}

uint64_t sub_24F5B70B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v36.i8[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2492A0);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = v36.i64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36.i8[-v9];
  v11 = type metadata accessor for StoryCardView.TextStack(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v36.i64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36.i8[-v15];
  sub_24F5B8D14(a1, v36.i64 - v15, type metadata accessor for EditorialStoryCard.Badge);
  v17 = type metadata accessor for StoryCardView.CardContent(0);
  sub_24E60169C(a1 + v17[5], &v16[v12[7]], &qword_27F215340);
  v18 = *(a1 + v17[6]);
  v19 = *(a1 + v17[7]);
  sub_24E60169C(a1 + v17[8], &v16[v12[10]], &qword_27F215340);
  v16[v12[8]] = v18;
  v16[v12[9]] = v19;
  v20 = *(a1 + v17[9]);
  if (v20)
  {
    v21 = type metadata accessor for SwiftUIArtworkView(0);
    v22 = v21[6];
    v23 = *MEMORY[0x277CE1010];
    v24 = sub_24F926E68();
    (*(*(v24 - 8) + 104))(&v5[v22], v23, v24);
    *v5 = v20;
    v36 = vdupq_n_s64(0x404D000000000000uLL);
    *(v5 + 8) = v36;
    v5[24] = 0;
    v25 = &v5[v21[7]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v25[16] = 1;
    v5[v21[8]] = 2;
    v5[v21[9]] = 0;
    LOBYTE(v21) = *(v20 + 64);
    v46[0] = 0;

    sub_24F926F28();
    v26 = v42[0];
    v27 = v43;
    v44 = 1;
    v28 = v38;
    v29 = &v5[*(v38 + 36)];
    *v29 = v21;
    *(v29 + 1) = v42[0];
    *(v29 + 1) = *(v42 + 3);
    *(v29 + 8) = v36;
    *(v29 + 3) = 0;
    *(v29 + 4) = 0;
    v29[40] = 1;
    *(v29 + 41) = *v46;
    *(v29 + 11) = *&v46[3];
    v29[48] = v26;
    v30 = *v45;
    *(v29 + 13) = *&v45[3];
    *(v29 + 49) = v30;
    *(v29 + 7) = v27;
    sub_24E6009C8(v5, v10, &qword_27F226430);
    (*(v37 + 56))(v10, 0, 1, v28);
  }

  else
  {
    (*(v37 + 56))(v10, 1, 1, v38);
  }

  v31 = v39;
  sub_24F5B8D14(v16, v39, type metadata accessor for StoryCardView.TextStack);
  v32 = v40;
  sub_24E60169C(v10, v40, &qword_27F2492A0);
  v33 = v41;
  sub_24F5B8D14(v31, v41, type metadata accessor for StoryCardView.TextStack);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2492A8);
  sub_24E60169C(v32, v33 + *(v34 + 48), &qword_27F2492A0);
  sub_24E601704(v10, &qword_27F2492A0);
  sub_24F5B9C50(v16, type metadata accessor for StoryCardView.TextStack);
  sub_24E601704(v32, &qword_27F2492A0);
  return sub_24F5B9C50(v31, type metadata accessor for StoryCardView.TextStack);
}

uint64_t sub_24F5B754C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249210);
  return sub_24F5B6358(v1, a1 + *(v3 + 44));
}

void *sub_24F5B759C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24F5B762C(a1, __src);
  sub_24F927628();
  sub_24F9242E8();
  return memcpy(a2, __src, 0x130uLL);
}

uint64_t sub_24F5B762C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v139 = &v125 - v7;
  v8 = sub_24F91F008();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v129 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v140 = &v125 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v125 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v125 - v17;
  v19 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F5B8D14(a1, v21, type metadata accessor for EditorialStoryCard.Badge);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138);
  v23 = (*(*(v22 - 8) + 48))(v21, 2, v22);
  v128 = v5;
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = sub_24F927628();
      v26 = v25;
      v27 = sub_24F925828();
      sub_24F923318();
      LOBYTE(v142) = 0;
      *&v150 = 0x4028000000000000;
      *(&v150 + 1) = v24;
      *&v151 = v26;
      BYTE8(v151) = 1;
      LOBYTE(v152) = v27;
      *(&v152 + 1) = v28;
      *&v153[0] = v29;
      *(&v153[0] + 1) = v30;
      *&v153[1] = v31;
      WORD4(v153[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249318);
      sub_24F5BA278();
      sub_24F924E28();
      v152 = v156;
      v153[0] = v157[0];
      *(v153 + 10) = *(v157 + 10);
      v150 = v154;
      v151 = v155;
      LOBYTE(v146) = 1;
      BYTE10(v153[1]) = 1;
    }

    else
    {
      LOBYTE(v142) = 0;
      BYTE8(v153[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218528);
      sub_24E6DC2DC();
      sub_24F924E28();
      v152 = v156;
      v153[0] = v157[0];
      *(v153 + 9) = *(v157 + 9);
      v150 = v154;
      v151 = v155;
      LOBYTE(v146) = 0;
      BYTE10(v153[1]) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249340);
    sub_24F5BA3BC();
    sub_24F5BA448();
    sub_24F924E28();
  }

  else
  {
    (*(v9 + 32))(v18, v21, v8);
    (*(v9 + 16))(v15, v18, v8);
    v32 = sub_24F925DF8();
    v34 = v33;
    v36 = v35;
    LOBYTE(v150) = 1;
    sub_24ED1A304();
    v37 = sub_24F925C58();
    v134 = a1;
    v135 = v18;
    v38 = v37;
    v136 = v9;
    v39 = v8;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_24E600B40(v32, v34, v36 & 1);

    KeyPath = swift_getKeyPath();
    v47 = sub_24F925A18();
    v48 = swift_getKeyPath();
    LOBYTE(v154) = v43 & 1;
    LOBYTE(v142) = 0;
    *&v146 = v38;
    *(&v146 + 1) = v41;
    v8 = v39;
    LOBYTE(v147) = v43 & 1;
    *(&v147 + 1) = v150;
    DWORD1(v147) = *(&v150 + 3);
    *(&v147 + 1) = v45;
    *&v148 = KeyPath;
    *(&v148 + 1) = 1;
    LOBYTE(v149[0]) = 0;
    DWORD1(v149[0]) = *(&v158 + 3);
    *(v149 + 1) = v158;
    *(&v149[0] + 1) = v48;
    *&v149[1] = v47;
    v152 = v148;
    v153[0] = v149[0];
    *&v153[1] = v47;
    v150 = v146;
    v151 = v147;
    v141 = 1;
    BYTE8(v153[1]) = 1;
    sub_24E60169C(&v146, &v158, &qword_27F218528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218528);
    sub_24E6DC2DC();
    sub_24F924E28();
    v160 = v156;
    *v161 = v157[0];
    *&v161[9] = *(v157 + 9);
    v158 = v154;
    v159 = v155;
    LOBYTE(v142) = 0;
    v161[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249340);
    sub_24F5BA3BC();
    sub_24F5BA448();
    a1 = v134;
    sub_24F924E28();
    sub_24E601704(&v146, &qword_27F218528);
    (*(v136 + 8))(v135, v39);
    v160 = v152;
    *v161 = v153[0];
    v18 = v135;
    v9 = v136;
    *&v161[11] = *(v153 + 11);
    v158 = v150;
    v159 = v151;
  }

  v49 = type metadata accessor for StoryCardView.TextStack(0);
  v50 = v139;
  sub_24E60169C(a1 + v49[5], v139, &qword_27F215340);
  v51 = *(v9 + 48);
  if (v51(v50, 1, v8) == 1)
  {
    sub_24E601704(v50, &qword_27F215340);
    v139 = 0;
    v140 = 0;
    v132 = 0;
    v133 = 0;
    v137 = 0;
    v138 = 0;
  }

  else
  {
    v127 = v51;
    v52 = v140;
    (*(v9 + 32))(v140, v50, v8);
    v136 = v9;
    v53 = *(v9 + 16);
    v130 = v8;
    v53(v18, v52, v8);
    v135 = v18;
    v54 = sub_24F925DF8();
    v56 = v55;
    v58 = v57;
    LOBYTE(v150) = 0;
    sub_24ED1A304();
    v59 = sub_24F925C58();
    v138 = v60;
    v139 = v59;
    v62 = v61;
    sub_24E600B40(v54, v56, v58 & 1);

    v63 = v49[6];
    v134 = a1;
    LODWORD(v63) = *(a1 + v63);
    v126 = v49;
    if (v63 == 1)
    {
      v133 = 3;
      sub_24F925998();
    }

    else
    {
      v133 = 2;
      sub_24F9258F8();
    }

    v64 = v62;
    v66 = v138;
    v65 = v139;
    v67 = sub_24F925C98();
    v69 = v68;
    LODWORD(v137) = v70;
    v72 = v71;

    sub_24E600B40(v65, v66, v64 & 1);

    v73 = v136;
    v8 = v130;
    (*(v136 + 8))(v140, v130);
    v74 = swift_getKeyPath();
    v75 = v137 & 1;
    v140 = v67;
    v132 = v69;
    v76 = v69;
    v9 = v73;
    v137 &= 1u;
    sub_24E5FD138(v67, v76, v75);
    v139 = v72;

    v138 = v74;

    a1 = v134;
    v18 = v135;
    v49 = v126;
    v51 = v127;
  }

  if (*(a1 + v49[7]) == 1)
  {
    v77 = v128;
    sub_24E60169C(a1 + v49[8], v128, &qword_27F215340);
    if (v51(v77, 1, v8) != 1)
    {
      v81 = v129;
      (*(v9 + 32))(v129, v77, v8);
      (*(v9 + 16))(v18, v81, v8);
      v82 = sub_24F925DF8();
      v84 = v83;
      v86 = v85;
      LOBYTE(v150) = 1;
      sub_24ED1A304();
      v87 = sub_24F925C58();
      v89 = v88;
      v130 = v8;
      v91 = v90;
      v135 = v92;
      sub_24E600B40(v82, v84, v86 & 1);

      sub_24F925A18();
      v93 = sub_24F925C98();
      v95 = v94;
      LODWORD(v136) = v96;
      v98 = v97;

      sub_24E600B40(v87, v89, v91 & 1);

      (*(v9 + 8))(v129, v130);
      v99 = swift_getKeyPath();
      v100 = v136 & 1;
      v78 = v93;
      v79 = v95;
      v136 &= 1u;
      sub_24E5FD138(v93, v95, v100);
      v134 = v98;

      v135 = v99;

      v80 = 2;
      goto LABEL_18;
    }

    sub_24E601704(v77, &qword_27F215340);
  }

  v78 = 0;
  v79 = 0;
  v135 = 0;
  v136 = 0;
  v134 = 0;
  v80 = 0;
LABEL_18:
  v144 = v160;
  v145[0] = *v161;
  *(v145 + 11) = *&v161[11];
  v148 = v160;
  v149[0] = *v161;
  *(v149 + 11) = *&v161[11];
  v142 = v158;
  v143 = v159;
  v146 = v158;
  v147 = v159;
  *(v153 + 11) = *&v161[11];
  v152 = v160;
  v153[0] = *v161;
  v150 = v158;
  v151 = v159;
  sub_24E60169C(&v158, &v154, &qword_27F249358);
  sub_24E60169C(&v146, &v154, &qword_27F249358);
  v101 = v140;
  v102 = v132;
  v103 = v133;
  v104 = v137;
  sub_24ED1A264(v140, v132, v137, v139);
  v130 = v78;
  v105 = v79;
  v106 = v79;
  v107 = v136;
  sub_24ED1A264(v78, v106, v136, v134);
  v108 = v101;
  v109 = v102;
  v110 = v102;
  v111 = v104;
  v112 = v139;
  v113 = v103;
  sub_24ED1A2B4(v108, v109, v111, v139);
  v114 = v78;
  v115 = v107;
  v117 = v134;
  v116 = v135;
  sub_24ED1A2B4(v114, v105, v115, v134);
  sub_24E601704(&v158, &qword_27F249358);
  v118 = v153[0];
  v119 = v130;
  v120 = v131;
  *(v131 + 32) = v152;
  *(v120 + 48) = v118;
  *(v120 + 64) = v153[1];
  v121 = v151;
  *v120 = v150;
  *(v120 + 16) = v121;
  v122 = v140;
  *(v120 + 80) = v140;
  *(v120 + 88) = v110;
  v123 = v136;
  LOBYTE(v103) = v137;
  *(v120 + 96) = v137;
  *(v120 + 104) = v112;
  *(v120 + 112) = v138;
  *(v120 + 120) = v113;
  *(v120 + 128) = 0;
  *(v120 + 136) = v119;
  *(v120 + 144) = v105;
  *(v120 + 152) = v123;
  *(v120 + 160) = v117;
  *(v120 + 168) = v116;
  *(v120 + 176) = v80;
  *(v120 + 184) = 0;
  sub_24ED1A2B4(v119, v105, v123, v117);
  sub_24ED1A2B4(v122, v110, v103, v139);
  v156 = v144;
  v157[0] = v145[0];
  *(v157 + 11) = *(v145 + 11);
  v154 = v142;
  v155 = v143;
  return sub_24E601704(&v154, &qword_27F249358);
}

void *sub_24F5B8298@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924C98();
  v9 = 0;
  sub_24F5B759C(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_24E60169C(__dst, &v6, &qword_27F249310);
  sub_24E601704(v11, &qword_27F249310);
  memcpy(&v8[7], __dst, 0x130uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x137uLL);
}

uint64_t sub_24F5B8370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v35 = type metadata accessor for LockupContentView(0);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35 - 8);
  v32 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2492F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for EditorialComponentOverlayView();
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249300);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_24F5B8D14(v2, v13, _s9ViewModelVMa);
  v20 = v11[8];
  *&v13[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  swift_storeEnumTagMultiPayload();
  v13[v11[5]] = 0;
  v21 = 1;
  v13[v11[6]] = 1;
  v13[v11[7]] = 0;
  v22._object = 0x800000024FA76EE0;
  v22._countAndFlagsBits = 0xD000000000000015;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v36 = localizedString(_:comment:)(v22, v23);
  sub_24F5B89D8(&qword_27F249288, type metadata accessor for EditorialComponentOverlayView);
  sub_24E600AEC();
  v24 = v10;
  sub_24F926538();

  sub_24F5B9C50(v13, type metadata accessor for EditorialComponentOverlayView);
  if (!*v33)
  {
    v31 = v19;
    v25 = v32;
    if (*(v33 + 8))
    {
      v36._countAndFlagsBits = 0x4044000000000000;
      sub_24E66ED98();

      sub_24F9237C8();
      v36._countAndFlagsBits = 0x404B000000000000;
      sub_24F9237C8();
      v36._countAndFlagsBits = 0x4051800000000000;
      sub_24F9237C8();
      v36._countAndFlagsBits = 0x4055800000000000;
      sub_24F9237C8();
      type metadata accessor for LockupViewModel();
      sub_24F5B89D8(&qword_27F2282E0, type metadata accessor for LockupViewModel);
      *v25 = sub_24F923C28();
      v25[1] = v26;
      sub_24F5B8D7C(v25, v24, type metadata accessor for LockupContentView);
      v21 = 0;
    }

    v19 = v31;
  }

  (*(v3 + 56))(v24, v21, 1, v35);
  sub_24E60169C(v19, v16, &qword_27F249300);
  sub_24E60169C(v24, v7, &qword_27F2492F8);
  v27 = v34;
  sub_24E60169C(v16, v34, &qword_27F249300);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249308);
  sub_24E60169C(v7, v27 + *(v28 + 48), &qword_27F2492F8);
  sub_24E601704(v24, &qword_27F2492F8);
  sub_24E601704(v19, &qword_27F249300);
  sub_24E601704(v7, &qword_27F2492F8);
  return sub_24E601704(v16, &qword_27F249300);
}

uint64_t sub_24F5B88B8()
{
  MEMORY[0x28223BE20](v0);
  sub_24F5B8D14(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StoryCardView);
  sub_24F5B89D8(&qword_27F215C68, type metadata accessor for StoryCardView);
  return sub_24F9218E8();
}

uint64_t sub_24F5B89D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F5B8ACC()
{
  v1 = type metadata accessor for StoryCardView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F5B8C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StoryCardView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24F5B4948(a1, v6, v7, a2);
}

uint64_t sub_24F5B8D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B8D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5B8DEC()
{
  v1 = type metadata accessor for StoryCardView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F5B8F84(double *a1)
{
  v3 = *(type metadata accessor for StoryCardView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_24F5B5E30(a1, v4, v5);
}

uint64_t sub_24F5B9090(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EditorialStoryCard.Badge(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[9]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245900);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[12];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_24F5B9290(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245900);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

void sub_24F5B9470()
{
  type metadata accessor for EditorialStoryCard.Badge(319);
  if (v0 <= 0x3F)
  {
    sub_24F5B9608(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F5B9608(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24F5B9608(319, &qword_27F2458F0, _s9ViewModelVMa, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24F5B9608(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F5B9608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit36EditorialGradientBackgroundViewModelVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24F5B9684(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
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

uint64_t sub_24F5B96E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24F5B9780()
{
  result = qword_27F2491F0;
  if (!qword_27F2491F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2491F8);
    sub_24E602068(&qword_27F249200, &qword_27F249208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2491F0);
  }

  return result;
}

unint64_t sub_24F5B9890()
{
  result = qword_27F249268;
  if (!qword_27F249268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249238);
    sub_24F5B991C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249268);
  }

  return result;
}

unint64_t sub_24F5B991C()
{
  result = qword_27F249270;
  if (!qword_27F249270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249230);
    sub_24F5B99D4();
    sub_24E602068(&qword_27F22D5D8, &qword_27F22D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249270);
  }

  return result;
}

unint64_t sub_24F5B99D4()
{
  result = qword_27F249278;
  if (!qword_27F249278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249228);
    sub_24F5B9A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249278);
  }

  return result;
}

unint64_t sub_24F5B9A60()
{
  result = qword_27F249280;
  if (!qword_27F249280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249220);
    sub_24F5B89D8(&qword_27F249288, type metadata accessor for EditorialComponentOverlayView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249280);
  }

  return result;
}

uint64_t sub_24F5B9B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5B9B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F5B9C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5B9CC4(uint64_t a1, uint64_t a2)
{
  v4 = _s9ViewModelVMa();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F5B9D44(uint64_t a1, uint64_t a2)
{
  v4 = _s9ViewModelVMa();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F5B9DB4()
{
  result = _s9ViewModelVMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F5B9E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditorialStoryCard.Badge(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
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

uint64_t sub_24F5B9F70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
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

void sub_24F5BA084()
{
  type metadata accessor for EditorialStoryCard.Badge(319);
  if (v0 <= 0x3F)
  {
    sub_24F5B9608(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F5BA18C()
{
  result = qword_27F2492E8;
  if (!qword_27F2492E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2492F0);
    sub_24F5B89D8(&qword_27F22E6B8, type metadata accessor for ArtworkWithFallbackView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2492E8);
  }

  return result;
}

unint64_t sub_24F5BA278()
{
  result = qword_27F249320;
  if (!qword_27F249320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249318);
    sub_24F5BA304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249320);
  }

  return result;
}

unint64_t sub_24F5BA304()
{
  result = qword_27F249328;
  if (!qword_27F249328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249330);
    sub_24EB3D608();
    sub_24E602068(&qword_27F2282B0, &qword_27F2282B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249328);
  }

  return result;
}

unint64_t sub_24F5BA3BC()
{
  result = qword_27F249348;
  if (!qword_27F249348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249338);
    sub_24E6DC2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249348);
  }

  return result;
}

unint64_t sub_24F5BA448()
{
  result = qword_27F249350;
  if (!qword_27F249350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F249340);
    sub_24F5BA278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249350);
  }

  return result;
}

uint64_t FriendRequestsPageIntent.background.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FriendRequestsPageIntent() + 20);

  return sub_24E7D14D8(v3, a1);
}

uint64_t type metadata accessor for FriendRequestsPageIntent()
{
  result = qword_27F249398;
  if (!qword_27F249398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t FriendRequestsPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24EE00104(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5BB064(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v6 = *(type metadata accessor for FriendRequestsPageIntent() + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 136) = sub_24E7D17FC();
  v7 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D14D8(v2 + v6, v7);
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_24F5BA7FC(uint64_t a1)
{
  v2 = sub_24F5BB010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BA838(uint64_t a1)
{
  v2 = sub_24F5BB010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendRequestsPageIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BB010();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24EE00104(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for FriendRequestsPageIntent();
    v8[14] = 1;
    type metadata accessor for Page.Background(0);
    sub_24EE00104(&qword_27F21D920, type metadata accessor for Page.Background);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FriendRequestsPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v20 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v20);
  v21 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249390);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for FriendRequestsPageIntent();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BB010();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v14 = v13;
  v25 = 0;
  sub_24EE00104(&qword_27F213E38, type metadata accessor for Player);
  v15 = v21;
  v16 = v23;
  sub_24F92CC68();
  sub_24E61C0A8(v15, v14);
  type metadata accessor for Page.Background(0);
  v24 = 1;
  sub_24EE00104(&qword_27F21D930, type metadata accessor for Page.Background);
  sub_24F92CC18();
  (*(v22 + 8))(v10, v16);
  sub_24E7DF71C(v6, v14 + *(v11 + 20));
  sub_24F5BB064(v14, v19, type metadata accessor for FriendRequestsPageIntent);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_24F5BB0CC(v14, type metadata accessor for FriendRequestsPageIntent);
}

unint64_t sub_24F5BAE64@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24EE00104(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5BB064(v4, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v8 = *(a1 + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 136) = sub_24E7D17FC();
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D14D8(v4 + v8, v9);
  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

unint64_t sub_24F5BB010()
{
  result = qword_27F249388;
  if (!qword_27F249388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F249388);
  }

  return result;
}

uint64_t sub_24F5BB064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5BB0CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5BB140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F5BB250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Player(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24F5BB358()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E7D231C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F5BB3F0()
{
  result = qword_27F2493A8;
  if (!qword_27F2493A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493A8);
  }

  return result;
}

unint64_t sub_24F5BB448()
{
  result = qword_27F2493B0;
  if (!qword_27F2493B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493B0);
  }

  return result;
}

unint64_t sub_24F5BB4A0()
{
  result = qword_27F2493B8;
  if (!qword_27F2493B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493B8);
  }

  return result;
}

uint64_t InvitePlayersToChallengeAction.challengeID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InvitePlayersToChallengeAction.gameName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InvitePlayersToChallengeAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvitePlayersToChallengeAction() + 32);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InvitePlayersToChallengeAction()
{
  result = qword_27F2493D8;
  if (!qword_27F2493D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F5BB62C()
{
  v1 = *v0;
  v2 = 0x676E656C6C616863;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E656D6167;
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

uint64_t sub_24F5BB6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F5BC374(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F5BB708(uint64_t a1)
{
  v2 = sub_24F5BBA34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5BB744(uint64_t a1)
{
  v2 = sub_24F5BBA34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitePlayersToChallengeAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2493C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BBA34();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24F92CD08();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E61B71C(&qword_27F2137A0);
    sub_24F92CD48();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    sub_24F92CD48();
    type metadata accessor for InvitePlayersToChallengeAction();
    LOBYTE(v11) = 4;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F5BBA34()
{
  result = qword_27F2493C8;
  if (!qword_27F2493C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493C8);
  }

  return result;
}

uint64_t InvitePlayersToChallengeAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2493D0);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = v16 - v4;
  v6 = type metadata accessor for InvitePlayersToChallengeAction();
  MEMORY[0x28223BE20](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5BBA34();
  v20 = v5;
  v9 = v22;
  sub_24F92D108();
  if (v9)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v6;
  v10 = v19;
  LOBYTE(v24) = 0;
  v11 = v8;
  *v8 = sub_24F92CC28();
  v8[1] = v12;
  v16[4] = v12;
  LOBYTE(v24) = 1;
  v8[2] = sub_24F92CC28();
  v8[3] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v23 = 2;
  v16[1] = sub_24E61B71C(&qword_27F216420);
  v16[2] = v14;
  v16[3] = 0;
  sub_24F92CC68();
  *(v11 + 32) = v24;
  v23 = 3;
  sub_24F92CC68();
  *(v11 + 40) = v24;
  LOBYTE(v24) = 4;
  sub_24E674184(&qword_27F254CB0);
  sub_24F92CC68();
  (*(v10 + 8))(v20, v21);
  (*(v17 + 32))(v11 + *(v22 + 32), 0, v3);
  sub_24F5BBF10(v11, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F5BBF74(v11);
}

uint64_t sub_24F5BBF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitePlayersToChallengeAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5BBF74(uint64_t a1)
{
  v2 = type metadata accessor for InvitePlayersToChallengeAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F5BC014(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F5BC0D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5BC178()
{
  sub_24F5BC20C();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F5BC20C()
{
  if (!qword_27F218170)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218170);
    }
  }
}

unint64_t sub_24F5BC270()
{
  result = qword_27F2493E8;
  if (!qword_27F2493E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493E8);
  }

  return result;
}

unint64_t sub_24F5BC2C8()
{
  result = qword_27F2493F0;
  if (!qword_27F2493F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493F0);
  }

  return result;
}

unint64_t sub_24F5BC320()
{
  result = qword_27F2493F8;
  if (!qword_27F2493F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2493F8);
  }

  return result;
}

uint64_t sub_24F5BC374(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA747F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA6F180 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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