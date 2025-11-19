uint64_t sub_24F4B7FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4B803C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CallProviderConversationHandleSet.preferredVideoHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CallProviderConversationHandleSet() + 20);

  return sub_24F4B7FC4(v3, a1);
}

uint64_t type metadata accessor for CallProviderConversationHandleSet()
{
  result = qword_27F2457D0;
  if (!qword_27F2457D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallProviderConversationHandleSet.preferredVideoHandle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CallProviderConversationHandleSet() + 20);

  return sub_24F4B803C(a1, v3);
}

uint64_t CallProviderConversationHandleSet.auxiliaryHandles.getter()
{
  type metadata accessor for CallProviderConversationHandleSet();
}

uint64_t CallProviderConversationHandleSet.auxiliaryHandles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CallProviderConversationHandleSet() + 24);

  *(v1 + v3) = a1;
  return result;
}

unint64_t CallProviderConversationHandleSet.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000024FA75B10;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758);
  *(inited + 72) = v5;
  v6 = sub_24F4B84B4();
  *(inited + 80) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F4B7FC4(v2, boxed_opaque_existential_1);
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x800000024FA75B30;
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  v9 = *(v8 + 20);
  *(inited + 128) = v5;
  *(inited + 136) = v6;
  v10 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F4B7FC4(v2 + v9, v10);
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000024FA75B50;
  v11 = *(v2 + *(v8 + 24));
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245770);
  *(inited + 192) = sub_24F4B9478(&qword_27F245778, &qword_27F245780);
  *(inited + 160) = v11;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

unint64_t sub_24F4B84B4()
{
  result = qword_27F245760;
  if (!qword_27F245760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245758);
    sub_24F4B9514(&qword_27F245768, type metadata accessor for CallProviderConversationHandle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245760);
  }

  return result;
}

unint64_t sub_24F4B856C()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_24F4B85C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F4B9970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4B85E8(uint64_t a1)
{
  v2 = sub_24F4B9424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4B8624(uint64_t a1)
{
  v2 = sub_24F4B9424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallProviderConversationHandleSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245788);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4B9424();
  sub_24F92D128();
  v14 = 0;
  type metadata accessor for CallProviderConversationHandle();
  sub_24F4B9514(&qword_27F245798, type metadata accessor for CallProviderConversationHandle);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for CallProviderConversationHandleSet();
    v13 = 1;
    sub_24F92CCF8();
    v11[1] = *(v3 + *(v9 + 24));
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245770);
    sub_24F4B9478(&qword_27F2457A0, &qword_27F2457A8);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CallProviderConversationHandleSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2457B0);
  v25 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CallProviderConversationHandle();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v14 = *(v9 + 20);
  v13(&v11[v14], 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4B9424();
  v28 = v8;
  v15 = v30;
  sub_24F92D108();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24E601704(v11, &qword_27F245758);
    return sub_24E601704(&v11[v14], &qword_27F245758);
  }

  else
  {
    v23 = a1;
    v30 = v14;
    v16 = v25;
    v17 = v26;
    v34 = 0;
    sub_24F4B9514(&qword_27F2457B8, type metadata accessor for CallProviderConversationHandle);
    v19 = v27;
    v18 = v28;
    sub_24F92CC18();
    sub_24F4B803C(v19, v11);
    v33 = 1;
    sub_24F92CC18();
    sub_24F4B803C(v17, &v11[v30]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245770);
    v32 = 2;
    sub_24F4B9478(&qword_27F2457C0, &qword_27F2457C8);
    v20 = v29;
    sub_24F92CC68();
    (*(v16 + 8))(v18, v20);
    *&v11[*(v9 + 24)] = v31;
    sub_24F4B9AF8(v11, v24, type metadata accessor for CallProviderConversationHandleSet);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return sub_24F4B9A98(v11, type metadata accessor for CallProviderConversationHandleSet);
  }
}

uint64_t _s12GameStoreKit33CallProviderConversationHandleSetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallProviderConversationHandle();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v49 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v49 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245808);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v22 = *(v21 + 48);
  v58 = a1;
  sub_24F4B7FC4(a1, &v49 - v19);
  v57 = a2;
  sub_24F4B7FC4(a2, &v20[v22]);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) == 1)
  {
    if (v23(&v20[v22], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  sub_24F4B7FC4(v20, v14);
  if (v23(&v20[v22], 1, v4) == 1)
  {
    sub_24F4B9A98(v14, type metadata accessor for CallProviderConversationHandle);
LABEL_8:
    v30 = &qword_27F245808;
LABEL_23:
    v38 = v20;
    goto LABEL_24;
  }

  sub_24F4B9B60(&v20[v22], v9, type metadata accessor for CallProviderConversationHandle);
  if ((static CallProvider.== infix(_:_:)(v14, v9) & 1) == 0)
  {
    sub_24F4B9A98(v9, type metadata accessor for CallProviderConversationHandle);
    goto LABEL_22;
  }

  v50 = v17;
  v31 = *(v4 + 20);
  v32 = *(v14 + v31);
  v33 = *(v14 + v31 + 8);
  v34 = (v9 + v31);
  v35 = *v34;
  v54 = v34[1];

  v51 = v33;

  v52 = v32;
  v53 = v35;
  if ((sub_24EA15AB8(v32, v35) & 1) == 0)
  {
    sub_24F4B9A98(v9, type metadata accessor for CallProviderConversationHandle);

    goto LABEL_22;
  }

  v36 = sub_24EDD3E74(v51, v54);
  sub_24F4B9A98(v9, type metadata accessor for CallProviderConversationHandle);

  if ((v36 & 1) == 0)
  {
LABEL_22:
    sub_24F4B9A98(v14, type metadata accessor for CallProviderConversationHandle);
    v30 = &qword_27F245758;
    goto LABEL_23;
  }

  sub_24F4B9A98(v14, type metadata accessor for CallProviderConversationHandle);
  v17 = v50;
LABEL_3:
  sub_24E601704(v20, &qword_27F245758);
  v24 = type metadata accessor for CallProviderConversationHandleSet();
  v25 = *(v24 + 20);
  v26 = *(v15 + 48);
  v27 = v58;
  sub_24F4B7FC4(v58 + v25, v17);
  v28 = v57;
  sub_24F4B7FC4(v57 + v25, &v17[v26]);
  if (v23(v17, 1, v4) != 1)
  {
    v37 = v56;
    sub_24F4B7FC4(v17, v56);
    if (v23(&v17[v26], 1, v4) != 1)
    {
      v39 = &v17[v26];
      v40 = v55;
      sub_24F4B9B60(v39, v55, type metadata accessor for CallProviderConversationHandle);
      if (static CallProvider.== infix(_:_:)(v37, v40))
      {
        v41 = *(v4 + 20);
        v42 = *(v37 + v41);
        v43 = *(v37 + v41 + 8);
        v44 = (v40 + v41);
        v45 = *v44;
        v46 = v44[1];

        if (sub_24EA15AB8(v42, v45))
        {
          v47 = sub_24EDD3E74(v43, v46);
          sub_24F4B9A98(v40, type metadata accessor for CallProviderConversationHandle);

          v37 = v56;
          if (v47)
          {
            sub_24F4B9A98(v56, type metadata accessor for CallProviderConversationHandle);
            goto LABEL_5;
          }
        }

        else
        {
          sub_24F4B9A98(v40, type metadata accessor for CallProviderConversationHandle);

          v37 = v56;
        }
      }

      else
      {
        sub_24F4B9A98(v40, type metadata accessor for CallProviderConversationHandle);
      }

      sub_24F4B9A98(v37, type metadata accessor for CallProviderConversationHandle);
      v30 = &qword_27F245758;
      v38 = v17;
LABEL_24:
      sub_24E601704(v38, v30);
      v29 = 0;
      return v29 & 1;
    }

    sub_24F4B9A98(v37, type metadata accessor for CallProviderConversationHandle);
LABEL_15:
    v30 = &qword_27F245808;
    v38 = v17;
    goto LABEL_24;
  }

  if (v23(&v17[v26], 1, v4) != 1)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_24E601704(v17, &qword_27F245758);
  v29 = sub_24EA14E20(*(v27 + *(v24 + 24)), *(v28 + *(v24 + 24)));
  return v29 & 1;
}

unint64_t sub_24F4B9424()
{
  result = qword_27F245790;
  if (!qword_27F245790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245790);
  }

  return result;
}

uint64_t sub_24F4B9478(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245770);
    sub_24F4B9514(a2, type metadata accessor for CallProviderConversationHandles);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F4B9514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4B9570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758);
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

uint64_t sub_24F4B964C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245758);
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

void sub_24F4B9710()
{
  sub_24F4B97F4(319, &qword_27F2457E0, type metadata accessor for CallProviderConversationHandle, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24F4B97F4(319, &qword_27F2457E8, type metadata accessor for CallProviderConversationHandles, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F4B97F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F4B986C()
{
  result = qword_27F2457F0;
  if (!qword_27F2457F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2457F0);
  }

  return result;
}

unint64_t sub_24F4B98C4()
{
  result = qword_27F2457F8;
  if (!qword_27F2457F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2457F8);
  }

  return result;
}

unint64_t sub_24F4B991C()
{
  result = qword_27F245800;
  if (!qword_27F245800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245800);
  }

  return result;
}

uint64_t sub_24F4B9970(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000024FA75B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA75B30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA75B50 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F4B9A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4B9AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4B9B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4B9BF4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245810);
  v31 = v2;
  v35 = *(v2 - 8);
  v3 = v35;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_24F921A78();
  v33 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  sub_24F45E564(v1, &v38);
  v14 = swift_allocObject();
  v15 = v39;
  v14[1] = v38;
  v14[2] = v15;
  v14[3] = v40;
  v36 = sub_24F923678();
  sub_24F921A68();
  v16 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v17 = MEMORY[0x28223BE20](v16);
  (*(v19 + 16))(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v34 = v8;
  sub_24F928D38();
  (*(v3 + 16))(v5, v8, v2);
  v20 = v29;
  (*(v29 + 16))(v27, v13, v9);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245818);
  v28 = sub_24F921AA8();
  sub_24F921A58();
  sub_24E602068(&qword_27F245820, &qword_27F245810);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245828);
  v22 = sub_24F9241D8();
  v23 = sub_24E602068(&qword_27F245830, &qword_27F245828);
  *&v38 = v21;
  *(&v38 + 1) = v22;
  *&v39 = v23;
  *(&v39 + 1) = MEMORY[0x277CDDAF8];
  swift_getOpaqueTypeConformance2();
  sub_24F4BA7DC(&qword_27F215638, MEMORY[0x277D7EBB0]);
  sub_24F4BA7DC(&qword_27F215640, MEMORY[0x277D7EB90]);
  v24 = v31;
  sub_24F9216E8();
  (*(v35 + 8))(v34, v24);
  return (*(v20 + 8))(v13, v33);
}

uint64_t sub_24F4BA0DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v23 = a3;
  v4 = sub_24F9241B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v22 = sub_24F9241D8();
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245828);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  v24 = *a1;
  v25 = *(a1 + 1);
  v26 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245838);
  sub_24F4BA6CC();
  sub_24F927338();
  sub_24F9241A8();
  (*(v5 + 16))(v7, v10, v4);
  sub_24F9241C8();
  (*(v5 + 8))(v10, v4);
  sub_24E602068(&qword_27F245830, &qword_27F245828);
  v18 = v22;
  sub_24F926048();
  (*(v11 + 8))(v13, v18);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_24F4BA3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  v13 = 0;
  v14 = v8;
  swift_getKeyPath();
  sub_24F45E564(a4, v12);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v10 = v12[1];
  *(v9 + 40) = v12[0];
  *(v9 + 56) = v10;
  *(v9 + 72) = v12[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245850);
  sub_24E62A6CC();
  sub_24F4BA750();
  return sub_24F927228();
}

void sub_24F4BA514(unint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A18);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v16 - v9;
  v11 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(a2 + 16))
  {
    sub_24F44C2A8(a2 + 40 * v11 + 32, *(a3 + 40), v10);
    sub_24F927618();
    sub_24F9242E8();
    sub_24F4BA884(v10, a4);
    v12 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245850) + 36));
    v13 = v16[5];
    v12[4] = v16[4];
    v12[5] = v13;
    v12[6] = v16[6];
    v14 = v16[1];
    *v12 = v16[0];
    v12[1] = v14;
    v15 = v16[3];
    v12[2] = v16[2];
    v12[3] = v15;
    return;
  }

  __break(1u);
}

uint64_t sub_24F4BA674()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24F4BA6CC()
{
  result = qword_27F245840;
  if (!qword_27F245840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245838);
    sub_24F4BA750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245840);
  }

  return result;
}

unint64_t sub_24F4BA750()
{
  result = qword_27F245848;
  if (!qword_27F245848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245850);
    sub_24E712330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245848);
  }

  return result;
}

uint64_t sub_24F4BA7DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4BA824()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24F4BA884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F4BA954(double *a1)
{
  v3 = type metadata accessor for GSKShelf();
  v4 = v3;
  if (*(v1 + *(v3 + 36)) >> 62 == 1)
  {
    if (*(v1 + *(v3 + 40)) <= 2u && !*(v1 + *(v3 + 40)))
    {

      return a1[2];
    }

    v5 = sub_24F92CE08();

    if (v5)
    {
      return a1[2];
    }
  }

  if (*(v1 + *(v4 + 44) + 16) > 0xFBu)
  {
    return 0.0;
  }

  sub_24EDEA488(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_24EDEBC58(__dst) == 1)
  {
    return 0.0;
  }

  sub_24E601704(__src, &qword_27F226148);
  return *&__dst[45];
}

uint64_t sub_24F4BAB50@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for GSKShelf();
  v6 = (v2 + *(v5 + 44));
  v7 = *(v6 + 16);
  if (v7 <= 0xFB)
  {
    v25 = *v6;
LABEL_13:
    v26 = v7;
    return sub_24EDEB058(a1, a2);
  }

  v8 = *(v2 + *(v5 + 60));
  if (!*(v8 + 16))
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_12;
  }

  sub_24E615E00(v8 + 32, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_12;
  }

  if (!*(&v23 + 1))
  {
LABEL_12:
    sub_24E601704(&v22, &qword_27F245870);
    v25 = 0uLL;
    LOBYTE(v7) = -64;
    goto LABEL_13;
  }

  sub_24E612C80(&v22, &v25);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E850);
  sub_24E615E00(&v25, &v22);
  v10 = sub_24F9220B8();
  v11 = sub_24F92BDB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136315138;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    swift_getDynamicType();
    v14 = sub_24F92D1E8();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(&v22);
    v17 = sub_24E7620D4(v14, v16, v21);

    *(v12 + 4) = v17;
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2530542D0](v13, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  v19 = v27;
  v20 = v28;
  __swift_project_boxed_opaque_existential_1(&v25, v27);
  (*(v20 + 8))(a1, v19, v20);
  return __swift_destroy_boxed_opaque_existential_1(&v25);
}

uint64_t sub_24F4BAE20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for GSKShelf() + 60));
  if (*(v3 + 16))
  {
    sub_24E615E00(v3 + 32, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_24E612C80(&v9, v12);
        v4 = v13;
        v5 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v5 + 40))(v4, v5);
        return __swift_destroy_boxed_opaque_existential_1(v12);
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

  sub_24E601704(&v9, &qword_27F245870);
  v7 = sub_24F921CA8();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_24F4BAF84@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F921998();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for GSKShelf();
  v10 = (v2 + *(v9 + 44));
  v11 = *(v10 + 16);
  if (v11 <= 0xFB)
  {
    v21 = *v10;
    v22 = v11;
    sub_24EDEB448(a1);
    if (sub_24F4BB204())
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = *(v2 + *(v9 + 60));
    if (*(v12 + 16))
    {
      sub_24E615E00(v12 + 32, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_24E612C80(&v18, &v21);
          v13 = v23;
          v14 = v24;
          __swift_project_boxed_opaque_existential_1(&v21, v23);
          (*(v14 + 24))(v13, v14);
          __swift_destroy_boxed_opaque_existential_1(&v21);
          if ((sub_24F4BB204() & 1) == 0)
          {
            return (*(v6 + 32))(a2, v8, v5);
          }

LABEL_8:
          sub_24F921948();
          sub_24F921978();
          return (*(v6 + 8))(v8, v5);
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_24E601704(&v18, &qword_27F245870);
    sub_24E6B00B4(*a1);
    sub_24F921958();
    if (sub_24F4BB204())
    {
      goto LABEL_8;
    }
  }

  return (*(v6 + 32))(a2, v8, v5);
}

uint64_t sub_24F4BB204()
{
  v1 = *(v0 + *(type metadata accessor for GSKShelf() + 60));
  if (!*(v1 + 16))
  {
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    goto LABEL_7;
  }

  sub_24E615E00(v1 + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_7;
  }

  if (!*(&v7 + 1))
  {
LABEL_7:
    sub_24E601704(&v6, &qword_27F245870);
    v4 = 0;
    return v4 & 1;
  }

  sub_24E612C80(&v6, v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4 & 1;
}

uint64_t sub_24F4BB32C()
{
  v1 = type metadata accessor for GSKShelf();
  if (*(v0 + *(v1 + 44) + 16) < 0xFCu)
  {
    return 0;
  }

  v2 = *(v0 + *(v1 + 60));
  if (*(v2 + 16))
  {
    sub_24E615E00(v2 + 32, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245868);
    if (swift_dynamicCast())
    {
      if (*(&v9 + 1))
      {
        sub_24E612C80(&v8, v11);
        v3 = v12;
        v4 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        v5 = (*(v4 + 16))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(v11);
        return v5;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_24E601704(&v8, &qword_27F245870);
  return 2;
}

uint64_t sub_24F4BB470@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F921CA8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24F4BB4F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F923E98();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[10]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_24F4BB628(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24F923E98();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for ShelfLayoutEnvironment()
{
  result = qword_27F245878;
  if (!qword_27F245878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F4BB784()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_24F923E98();
    if (v1 <= 0x3F)
    {
      sub_24F4BB85C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F4BB85C()
{
  if (!qword_27F245888)
  {
    sub_24F925218();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F245888);
    }
  }
}

uint64_t AttributeScopes.ExtendedMarkdownStyleAttributes.Color.Value.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24F4BB934()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F4BB9A8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F4BB9FC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t static AttributeScopes.ExtendedMarkdownStyleAttributes.Color.name.getter()
{
  swift_beginAccess();
  v0 = *aEmdColor;

  return v0;
}

uint64_t static AttributeScopes.ExtendedMarkdownStyleAttributes.Color.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aEmdColor = a1;
  *&aEmdColor[8] = a2;
}

uint64_t sub_24F4BBC28(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aEmdColor = v2;
  *&aEmdColor[8] = v1;
}

uint64_t sub_24F4BBDB0()
{
  swift_beginAccess();
  v0 = *aEmdColor;

  return v0;
}

unint64_t sub_24F4BBE18()
{
  result = qword_27F2458A0;
  if (!qword_27F2458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458A0);
  }

  return result;
}

unint64_t sub_24F4BBE74()
{
  result = qword_27F2458A8;
  if (!qword_27F2458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458A8);
  }

  return result;
}

unint64_t sub_24F4BBECC()
{
  result = qword_27F2458B0;
  if (!qword_27F2458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458B0);
  }

  return result;
}

unint64_t sub_24F4BBF24()
{
  result = qword_27F2458B8;
  if (!qword_27F2458B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458B8);
  }

  return result;
}

uint64_t sub_24F4BBF80()
{
  sub_24E845E30();

  return sub_24F91EC68();
}

uint64_t sub_24F4BBFCC()
{
  sub_24E845E30();

  return sub_24F91EC68();
}

uint64_t sub_24F4BC018@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aEmdColor[8];
  *a1 = *aEmdColor;
  a1[1] = v2;
}

unint64_t sub_24F4BC0AC()
{
  result = qword_27F2458C0;
  if (!qword_27F2458C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458C0);
  }

  return result;
}

unint64_t sub_24F4BC100()
{
  result = qword_27F2458C8;
  if (!qword_27F2458C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458C8);
  }

  return result;
}

unint64_t sub_24F4BC154()
{
  result = qword_27F2458D0;
  if (!qword_27F2458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458D0);
  }

  return result;
}

unint64_t sub_24F4BC1A8()
{
  result = qword_27F2458D8;
  if (!qword_27F2458D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2458D8);
  }

  return result;
}

uint64_t sub_24F4BC200(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B458);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245900);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_editorialMediaFallbackUseCase) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_primaryContentLocation) = 2;
  v14 = a1[5];
  if (v14)
  {
    *(v2 + 16) = a1;
    sub_24E65864C((a1 + 19), v2 + 24);
    if (a1[2])
    {
      v15 = 0;
    }

    else
    {
      v15 = a1[3] == 0;
    }

    sub_24F727CE4(v16, v15, a2, v13);
    v17 = _s9ViewModelVMa();
    v18 = 1;
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
    sub_24E6009C8(v13, v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_overlayViewModel, &qword_27F245900);
    sub_24E747EE8(v14 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_badgeText, v7);
    v19 = sub_24F91F008();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) != 1)
    {
      (*(v20 + 32))(v10, v7, v19);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138);
      (*(*(v21 - 8) + 56))(v10, 0, 2, v21);
      v18 = 0;
    }

    v22 = type metadata accessor for BreakoutDetails.Badge(0);
    (*(*(v22 - 8) + 56))(v10, v18, 1, v22);
    sub_24E6009C8(v10, v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_badge, &qword_27F23B458);
    sub_24E747EE8(v14 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_titleText, v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_titleText);
    sub_24E747EE8(v14 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_descriptionText, v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_descriptionText);

    *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_offerButtonViewModel) = 0;
    v23 = (v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_offerButtonCallToAction);
    *v23 = 0;
    v23[1] = 0;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_24F4BC620()
{

  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_overlayViewModel, &qword_27F245900);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_badge, &qword_27F23B458);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_titleText, &qword_27F215340);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_descriptionText, &qword_27F215340);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeroCarouselItemOverlayViewModel()
{
  result = qword_27F2458E0;
  if (!qword_27F2458E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F4BC790()
{
  sub_24F4BC924(319, &qword_27F2458F0, _s9ViewModelVMa);
  if (v0 <= 0x3F)
  {
    sub_24F4BC924(319, &qword_27F2458F8, type metadata accessor for BreakoutDetails.Badge);
    if (v1 <= 0x3F)
    {
      sub_24F4BC924(319, &qword_27F215338, MEMORY[0x277CC8C40]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24F4BC924(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_24F4BC994(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60);
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v50 - v13;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_editorialMediaFallbackUseCase) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_primaryContentLocation) = 2;
  *(v3 + 16) = a1 | 0x8000000000000000;
  sub_24E65864C(a1 + 136, v3 + 24);
  v15 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_overlayViewModel;
  v16 = _s9ViewModelVMa();
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_badge;
  v18 = *(a1 + 16);
  sub_24F1A058C(v18 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge, v3 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_badge);
  v19 = type metadata accessor for BreakoutDetails.Badge(0);
  (*(*(v19 - 8) + 56))(v3 + v17, 0, 1, v19);
  sub_24E747EE8(v18 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title, v3 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_titleText);
  sub_24E747EE8(v18 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description, v3 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_descriptionText);
  if (*(a1 + 32) && (v20 = *(a1 + 24)) != 0)
  {
    v50[0] = *(a1 + 32);
    type metadata accessor for OfferButtonViewModel();
    v21 = swift_allocObject();
    v51 = a2;
    v22 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
    LOBYTE(v59) = 0;

    sub_24F923058();
    (*(v12 + 32))(v21 + v22, v14, v11);
    v23 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
    *&v59 = 0;
    v50[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA8);
    sub_24F923058();
    v24 = v55;
    v25 = v56;
    v26 = v10;
    v27 = v20;
    (*(v55 + 32))(v21 + v23, v26, v56);
    v28 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
    v59 = xmmword_24F943570;
    v60 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB0);
    v29 = v52;
    sub_24F923058();
    (*(v53 + 32))(v21 + v28, v29, v54);
    v30 = v21 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0;
    v31 = (v21 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
    *v31 = 0xD000000000000015;
    v31[1] = 0x800000024FA3FE10;
    v32 = (v21 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
    *v32 = 0;
    v32[1] = 0;
    *(v21 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) = 7;
    v33 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph;
    *(v21 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v51;
    v34 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
    swift_beginAccess();
    v35 = *(v24 + 8);

    v36 = v50[0];

    v37 = v25;
    v38 = v33;
    v35(v21 + v34, v37);
    v66 = v27;
    sub_24F923058();
    swift_endAccess();
    swift_beginAccess();
    v59 = xmmword_24F943590;
    v60 = 0;
    v61 = 0;
    v62 = 4;
    v64 = 0;
    v63 = 0;
    v65 = 0;
    sub_24F923058();
    swift_endAccess();
    *(v21 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties) = v36;
    type metadata accessor for ArcadeSubscriptionManager();
    sub_24F928FD8();

    sub_24F92A758();

    v39 = v59;
    if (OfferDisplayProperties.isArcadeOffer.getter())
    {
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = swift_allocObject();
      v55 = v38;
      swift_weakInit();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = v40;
      *(v42 + 32) = v36;
      *(v42 + 40) = v27;
      *(v42 + 48) = 0;
      *(v42 + 60) = 0;
      *(v42 + 56) = 3;
      *(v42 + 62) = 16843009;
      *(v42 + 66) = 257;
      v43 = v27;
      v44 = *&v39[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

      v56 = v43;

      [v44 lock];
      sub_24F213714(v21, sub_24E690EC8, v42, v39);
      [v44 unlock];

      v38 = v55;
      v27 = v56;
    }

    v45 = &v39[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    LOBYTE(v45) = (v45[8] & 0xC0) == 128;
    WORD2(v66) = 0;
    LODWORD(v66) = 3;
    v58 = 257;
    v57 = 16843009;
    v46 = *(v21 + v38);

    sub_24EEFB79C(v45, v36, v27, 0, &v66, &v57, v46);
  }

  else
  {

    v21 = 0;
  }

  *(v3 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_offerButtonViewModel) = v21;
  v47 = *(a1 + 48);
  v48 = (v3 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemOverlayViewModel_offerButtonCallToAction);
  *v48 = *(a1 + 40);
  v48[1] = v47;

  return v3;
}

uint64_t sub_24F4BD178()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F4BD1B0()
{

  return swift_deallocObject();
}

uint64_t sub_24F4BD238@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *a2;
    v7 = *(*a2 + 16);
    v8 = v7 - v3;
    if (v7 > v3)
    {
      v9 = sub_24F9289E8();
      v10 = *(v9 - 8);
      (*(v10 + 16))(a3, v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v3, v9);
      (*(v10 + 56))(a3, 0, 1, v9);
      v11 = type metadata accessor for GameIcon(0);
      v12 = v11[8];
      *(a3 + v12) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
      swift_storeEnumTagMultiPayload();
      *(a3 + v11[5]) = 1;
      *(a3 + v11[6]) = 1;
      *(a3 + v11[7]) = 0;
      v13 = a2[5];
      sub_24F927618();
      sub_24F9238C8();
      v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760) + 36));
      *v14 = v25;
      v14[1] = v26;
      v14[2] = v27;
      v15 = sub_24F927618();
      v17 = v16;
      v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245938) + 36);
      sub_24F4BD4B8(a2, v18);
      v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245948) + 36));
      *v19 = v15;
      v19[1] = v17;
      sub_24F9278A8();
      v21 = v20;
      v23 = v22;
      v24 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245928) + 36));
      *v24 = v13;
      v24[1] = v21;
      v24[2] = v23;
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245910);
      *(a3 + *(result + 36)) = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F4BD4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924258();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245950);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v30[-v17];
  v19 = *(a1 + 8);
  if (*(a1 + 16) < v19)
  {
    v19 = *(a1 + 16);
  }

  v20 = v19 * 0.25;
  v21 = *(v5 + 28);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24F924B38();
  (*(*(v23 - 8) + 104))(v7 + v21, v22, v23);
  *v7 = v20;
  v7[1] = v20;
  sub_24F923658();
  sub_24E73A8FC(v7, v11);
  v24 = &v11[*(v9 + 44)];
  v25 = v31;
  *v24 = *&v30[8];
  *(v24 + 1) = v25;
  *(v24 + 4) = v32;
  v26 = *(v12 + 36);
  v27 = *MEMORY[0x277CE13C0];
  v28 = sub_24F927748();
  (*(*(v28 - 8) + 104))(&v15[v26], v27, v28);
  sub_24E6009C8(v11, v15, &qword_27F22E7F8);
  sub_24E6009C8(v15, v18, &qword_27F245950);
  sub_24E6009C8(v18, a2, &qword_27F245950);
  return (*(v13 + 56))(a2, 0, 1, v12);
}

uint64_t sub_24F4BD7BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  *a1 = sub_24F9249A8();
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245908);
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = *(v1 + 1);
  *(v5 + 40) = v4;
  *(v5 + 48) = *(v1 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245910);
  sub_24E62A6CC();
  sub_24F4BD940();
  return sub_24F927228();
}

uint64_t sub_24F4BD900()
{

  return swift_deallocObject();
}

unint64_t sub_24F4BD940()
{
  result = qword_27F245918;
  if (!qword_27F245918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245910);
    sub_24F4BD9F8();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245918);
  }

  return result;
}

unint64_t sub_24F4BD9F8()
{
  result = qword_27F245920;
  if (!qword_27F245920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245928);
    sub_24F4BDA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245920);
  }

  return result;
}

unint64_t sub_24F4BDA84()
{
  result = qword_27F245930;
  if (!qword_27F245930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245938);
    sub_24E6801D4();
    sub_24E602068(&qword_27F245940, &qword_27F245948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245930);
  }

  return result;
}

unint64_t sub_24F4BDB58()
{
  result = qword_27F245958;
  if (!qword_27F245958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245960);
    sub_24E602068(&qword_27F245968, &qword_27F245970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245958);
  }

  return result;
}

uint64_t sub_24F4BDC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v110 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = v89 - v5;
  v92 = sub_24F91F4A8();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245980);
  MEMORY[0x28223BE20](v7 - 8);
  v94 = v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = v89 - v12;
  v13 = type metadata accessor for LargeOfferButton(0);
  MEMORY[0x28223BE20](v13);
  v100 = (v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245988);
  MEMORY[0x28223BE20](v104);
  v95 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E30);
  MEMORY[0x28223BE20](v18 - 8);
  *&v105 = v89 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245990);
  MEMORY[0x28223BE20](v99);
  v102 = v89 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245998);
  MEMORY[0x28223BE20](v109);
  v103 = v89 - v21;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2459A0);
  MEMORY[0x28223BE20](v106);
  v108 = v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2459A8);
  MEMORY[0x28223BE20](v23);
  v25 = v89 - v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2459B0);
  MEMORY[0x28223BE20](v107);
  v27 = v89 - v26;
  v28 = type metadata accessor for InlineButton();
  MEMORY[0x28223BE20](v28);
  v30 = (v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for ButtonGroupItemType();
  MEMORY[0x28223BE20](v31);
  v33 = v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ButtonGroupItem();
  sub_24F4BF0BC(a1 + *(v34 + 20), v33, type metadata accessor for ButtonGroupItemType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v42 = v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220568) + 48)];
      v43 = v105;
      sub_24E6009C8(v33, v105, &qword_27F212E30);
      v45 = *v43;
      v44 = v43[1];
      KeyPath = swift_getKeyPath();
      v47 = v100;
      *v100 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
      swift_storeEnumTagMultiPayload();
      v48 = v13[6];
      v49 = v13[7];
      v50 = swift_allocObject();
      v50[2] = v45;
      v50[3] = v44;
      v51 = v96;
      v50[4] = v96;
      v52 = v47 + v13[5];
      *v52 = sub_24E6B7F28;
      *(v52 + 1) = v50;
      v52[16] = 0;
      *(v47 + v48) = v42;
      *(v47 + v49) = 0;
      v53 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
      v54 = *(v53 - 1);
      v55 = *(v54 + 56);
      v89[2] = v54 + 56;
      v55(v101, 1, 1, v53);
      v56 = type metadata accessor for OfferButtonInfo();
      v57 = v93;
      sub_24E60169C(v43 + *(v56 + 24), v93, &qword_27F228530);
      v58 = v91;
      v59 = v92;
      if ((*(v91 + 48))(v57, 1, v92) == 1)
      {
        swift_retain_n();

        sub_24E601704(v57, &qword_27F228530);
        v60 = type metadata accessor for TransientToolbarItem(0);
        v61 = v94;
        (*(*(v60 - 8) + 56))(v94, 1, 1, v60);
      }

      else
      {
        v89[1] = v44;
        v70 = *(v58 + 32);
        v71 = v90;
        v70(v90, v57, v59);
        v61 = v94;
        v70(v94, v71, v59);
        v72 = type metadata accessor for TransientToolbarItem(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v72 - 8) + 56))(v61, 0, 1, v72);
        swift_retain_n();
      }

      v73 = v51;
      v74 = v97;
      v75 = &v97[v53[6]];
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152F8) + 48);
      sub_24F4BF0BC(v105, v75, type metadata accessor for OfferButtonInfo);
      *(v75 + v76) = v73;
      type metadata accessor for TransientToolbarItem(0);
      swift_storeEnumTagMultiPayload();
      v77 = sub_24F927638();
      v79 = v78;
      *v74 = 1;
      sub_24E6009C8(v61, &v74[v53[5]], &qword_27F245980);
      v80 = &v74[v53[7]];
      *v80 = v77;
      v80[1] = v79;
      v55(v74, 0, 1, v53);
      v81 = v95;
      v82 = &v95[*(v104 + 36)];
      v83 = type metadata accessor for ToolbarTransitionViewModifier();
      v84 = v101;
      sub_24E60169C(v101, &v82[v83[8]], &qword_27F215280);
      sub_24E60169C(v74, &v82[v83[9]], &qword_27F215280);
      *v82 = swift_getKeyPath();
      v82[8] = 0;
      v121 = 1;
      sub_24F926F28();
      v85 = *(&v111[0] + 1);
      v82[16] = v111[0];
      *(v82 + 3) = v85;
      v121 = 1;
      sub_24F926F28();
      sub_24E601704(v74, &qword_27F215280);
      sub_24E601704(v84, &qword_27F215280);
      v86 = *(&v111[0] + 1);
      v82[32] = v111[0];
      *(v82 + 5) = v86;
      *(v82 + 6) = 0x3F847AE147AE147BLL;
      v82[v83[10]] = 1;
      sub_24F4BED88(v100, v81);
      v87 = v98;
      sub_24E6009C8(v81, v98, &qword_27F245988);
      sub_24E60169C(v87, v102, &qword_27F245988);
      swift_storeEnumTagMultiPayload();
      sub_24F4BEDEC();
      sub_24F4BEE40();
      v88 = v103;
      sub_24F924E28();
      sub_24E60169C(v88, v108, &qword_27F245998);
      swift_storeEnumTagMultiPayload();
      sub_24F4BEF2C();
      sub_24F4BF030();
      sub_24F924E28();
      sub_24E601704(v88, &qword_27F245998);
      sub_24E601704(v87, &qword_27F245988);
      return sub_24E601704(v105, &qword_27F212E30);
    }

    else
    {
      v105 = *v33;
      v66 = *(v33 + 2);
      v67 = *(v33 + 3);
      v68 = v33[32];
      sub_24E60169C(a1 + *(v34 + 24), v111, qword_27F24EC90);
      v113 = v105;
      v114 = v66;
      v115 = v67;
      LOBYTE(v116) = v68;
      sub_24F2AC180(v111, v102);
      swift_storeEnumTagMultiPayload();
      sub_24F4BEDEC();
      sub_24F4BEE40();
      v69 = v103;
      sub_24F924E28();
      sub_24E60169C(v69, v108, &qword_27F245998);
      swift_storeEnumTagMultiPayload();
      sub_24F4BEF2C();
      sub_24F4BF030();
      sub_24F924E28();
      sub_24E601704(v69, &qword_27F245998);
      return sub_24F43C1F8(v111);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v105 = *v33;
    v62 = *(v33 + 2);
    v63 = *(v33 + 3);
    v64 = v33[32];
    v65 = v33[33];
    sub_24E60169C(a1 + *(v34 + 24), v111, qword_27F24EC90);
    v113 = v105;
    v114 = v62;
    v115 = v63;
    v117 = 0;
    v118 = 0;
    v116 = 0;
    v119 = v64;
    v120 = (v65 == 2) | v65 & 1;
    sub_24E67290C(v111, v25);
    swift_storeEnumTagMultiPayload();
    sub_24F4BEFE8(&qword_27F2459D0, type metadata accessor for InlineButton);
    sub_24E74BB90();
    sub_24F924E28();
    sub_24E60169C(v27, v108, &qword_27F2459B0);
    swift_storeEnumTagMultiPayload();
    sub_24F4BEF2C();
    sub_24F4BF030();
    sub_24F924E28();
    sub_24E601704(v27, &qword_27F2459B0);
    return sub_24E74BE00(v111);
  }

  else
  {
    v36 = *v33;
    v37 = *(v33 + 1);
    sub_24E60169C(a1 + *(v34 + 24), v111, qword_27F24EC90);
    v38 = v30 + *(v28 + 20);
    v39 = v111[1];
    *v38 = v111[0];
    *(v38 + 1) = v39;
    *(v38 + 4) = v112;
    *v30 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
    swift_storeEnumTagMultiPayload();
    v40 = (v30 + *(v28 + 24));
    *v40 = v36;
    v40[1] = v37;
    sub_24F4BF0BC(v30, v25, type metadata accessor for InlineButton);
    swift_storeEnumTagMultiPayload();
    sub_24F4BEFE8(&qword_27F2459D0, type metadata accessor for InlineButton);
    sub_24E74BB90();
    sub_24F924E28();
    sub_24E60169C(v27, v108, &qword_27F2459B0);
    swift_storeEnumTagMultiPayload();
    sub_24F4BEF2C();
    sub_24F4BF030();
    sub_24F924E28();
    sub_24E601704(v27, &qword_27F2459B0);
    return sub_24F4BF124(v30);
  }
}

uint64_t sub_24F4BEC10()
{
  sub_24F47DD1C();

  return sub_24F9218E8();
}

unint64_t sub_24F4BEC74()
{
  result = qword_27F245978;
  if (!qword_27F245978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245978);
  }

  return result;
}

uint64_t sub_24F4BED38()
{

  return swift_deallocObject();
}

uint64_t sub_24F4BED88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LargeOfferButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F4BEDEC()
{
  result = qword_27F2459B8;
  if (!qword_27F2459B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2459B8);
  }

  return result;
}

unint64_t sub_24F4BEE40()
{
  result = qword_27F2459C0;
  if (!qword_27F2459C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245988);
    sub_24F4BEFE8(&qword_27F217B58, type metadata accessor for LargeOfferButton);
    sub_24F4BEFE8(&qword_27F218AB8, type metadata accessor for ToolbarTransitionViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2459C0);
  }

  return result;
}

unint64_t sub_24F4BEF2C()
{
  result = qword_27F2459C8;
  if (!qword_27F2459C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2459B0);
    sub_24F4BEFE8(&qword_27F2459D0, type metadata accessor for InlineButton);
    sub_24E74BB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2459C8);
  }

  return result;
}

uint64_t sub_24F4BEFE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F4BF030()
{
  result = qword_27F2459D8;
  if (!qword_27F2459D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245998);
    sub_24F4BEDEC();
    sub_24F4BEE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2459D8);
  }

  return result;
}

uint64_t sub_24F4BF0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4BF124(uint64_t a1)
{
  v2 = type metadata accessor for InlineButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F4BF184()
{
  result = qword_27F2459E0;
  if (!qword_27F2459E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2459E8);
    sub_24F4BEF2C();
    sub_24F4BF030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2459E0);
  }

  return result;
}

uint64_t AccessPointRequiredData.init(useCase:player:game:friendRequests:challengesCount:completedAchievementsCount:achievementsCount:leaderboardsCount:leaderboardName:leaderboardRank:leaderboardFriendCount:ascAdamID:artwork:ascTitle:ascSubtitle:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *a9 = *a1;
  v25 = type metadata accessor for AccessPointRequiredData();
  sub_24E6009C8(a2, &a9[v25[5]], &unk_27F23E1F0);
  sub_24E636644(a3, &a9[v25[6]]);
  *&a9[v25[7]] = a4;
  *&a9[v25[8]] = a5;
  *&a9[v25[9]] = a6;
  *&a9[v25[10]] = a7;
  *&a9[v25[11]] = a8;
  v26 = &a9[v25[12]];
  *v26 = a10;
  v26[1] = a11;
  *&a9[v25[13]] = a12;
  *&a9[v25[14]] = a13;
  v27 = &a9[v25[15]];
  *v27 = a14;
  v27[1] = a15;
  result = sub_24E6009C8(a16, &a9[v25[16]], &qword_27F213FB0);
  v29 = &a9[v25[17]];
  *v29 = a17;
  v29[1] = a18;
  v30 = &a9[v25[18]];
  *v30 = a19;
  v30[1] = a20;
  return result;
}

uint64_t type metadata accessor for AccessPointRequiredData()
{
  result = qword_27F245A08;
  if (!qword_27F245A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccessPointRequiredData.friendRequests.getter()
{
  type metadata accessor for AccessPointRequiredData();
}

uint64_t AccessPointRequiredData.leaderboardName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessPointRequiredData() + 48));

  return v1;
}

uint64_t AccessPointRequiredData.ascAdamID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessPointRequiredData() + 60));

  return v1;
}

uint64_t AccessPointRequiredData.ascTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessPointRequiredData() + 68));

  return v1;
}

uint64_t AccessPointRequiredData.ascSubtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessPointRequiredData() + 72));

  return v1;
}

uint64_t AccessPointRequiredData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = v37 - v4;
  v5 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v37 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2459F0);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v12 = v37 - v11;
  v13 = type metadata accessor for AccessPointRequiredData();
  MEMORY[0x28223BE20](v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24F4C00E0();
  v41 = v12;
  v17 = v43;
  sub_24F92D108();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v37[1] = v5;
  v43 = v15;
  v46 = 0;
  sub_24E636FAC();
  sub_24F92CC68();
  v18 = v43;
  *v43 = v45;
  v19 = type metadata accessor for Player(0);
  LOBYTE(v45) = 1;
  sub_24F4C0FF8(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  sub_24E6009C8(v10, &v18[v13[5]], &unk_27F23E1F0);
  LOBYTE(v45) = 2;
  sub_24F4C0FF8(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  sub_24E636644(v7, &v18[v13[6]]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  v46 = 3;
  sub_24F4C0764(&qword_27F2196A8, &qword_27F213E38);
  sub_24F92CC68();
  *&v18[v13[7]] = v45;
  LOBYTE(v45) = 4;
  *&v18[v13[8]] = sub_24F92CC58();
  LOBYTE(v45) = 5;
  *&v18[v13[9]] = sub_24F92CC58();
  LOBYTE(v45) = 6;
  *&v18[v13[10]] = sub_24F92CC58();
  LOBYTE(v45) = 7;
  *&v18[v13[11]] = sub_24F92CC58();
  LOBYTE(v45) = 8;
  v20 = sub_24F92CC28();
  v21 = &v18[v13[12]];
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v45) = 9;
  *&v43[v13[13]] = sub_24F92CC58();
  LOBYTE(v45) = 10;
  *&v43[v13[14]] = sub_24F92CC58();
  LOBYTE(v45) = 11;
  v23 = sub_24F92CC28();
  v24 = &v43[v13[15]];
  *v24 = v23;
  v24[1] = v25;
  v26 = sub_24F9289E8();
  LOBYTE(v45) = 12;
  sub_24F4C0FF8(&qword_27F214018, MEMORY[0x277D21C48]);
  sub_24F92CC68();
  v27 = v39;
  (*(*(v26 - 8) + 56))(v39, 0, 1, v26);
  sub_24E6009C8(v27, &v43[v13[16]], &qword_27F213FB0);
  LOBYTE(v45) = 13;
  v28 = sub_24F92CC28();
  v29 = &v43[v13[17]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v45) = 14;
  v31 = sub_24F92CC28();
  v33 = v32;
  (*(v40 + 8))(v41, v42);
  v34 = v43;
  v35 = &v43[v13[18]];
  *v35 = v31;
  v35[1] = v33;
  sub_24F4C0134(v34, v38, type metadata accessor for AccessPointRequiredData);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_24F4C019C(v34, type metadata accessor for AccessPointRequiredData);
}

unint64_t sub_24F4C00E0()
{
  result = qword_27F2459F8;
  if (!qword_27F2459F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2459F8);
  }

  return result;
}

uint64_t sub_24F4C0134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4C019C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t AccessPointRequiredData.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9896A0;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v3 = *v1;
  *(inited + 72) = &type metadata for AccessPointUseCase;
  v4 = sub_24F3FF668();
  *(inited + 48) = v3;
  *(inited + 80) = v4;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v5 = type metadata accessor for AccessPointRequiredData();
  v6 = v5[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 136) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(&v1[v6], boxed_opaque_existential_1, &unk_27F23E1F0);
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  v8 = v5[6];
  *(inited + 184) = type metadata accessor for Game();
  *(inited + 192) = sub_24F4C0FF8(&qword_27F217960, type metadata accessor for Game);
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F4C0134(&v1[v8], v9, type metadata accessor for Game);
  strcpy((inited + 200), "friendRequests");
  *(inited + 215) = -18;
  v10 = *&v1[v5[7]];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  v11 = sub_24F4C0764(&qword_27F21BC38, &qword_27F215388);
  *(inited + 216) = v10;
  *(inited + 248) = v11;
  *(inited + 256) = 0x676E656C6C616863;
  *(inited + 264) = 0xEF746E756F437365;
  v12 = *&v1[v5[8]];
  v13 = MEMORY[0x277D83B88];
  *(inited + 296) = MEMORY[0x277D83B88];
  v14 = sub_24E65901C();
  *(inited + 272) = v12;
  *(inited + 304) = v14;
  *(inited + 312) = 0xD00000000000001ALL;
  *(inited + 320) = 0x800000024FA75C00;
  v15 = *&v1[v5[9]];
  *(inited + 352) = v13;
  *(inited + 360) = v14;
  *(inited + 328) = v15;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x800000024FA75C20;
  v16 = *&v1[v5[10]];
  *(inited + 408) = v13;
  *(inited + 416) = v14;
  *(inited + 384) = v16;
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x800000024FA45580;
  v17 = *&v1[v5[11]];
  *(inited + 464) = v13;
  *(inited + 472) = v14;
  *(inited + 440) = v17;
  *(inited + 480) = 0x6F6272656461656CLL;
  *(inited + 488) = 0xEF656D614E647261;
  v18 = &v1[v5[12]];
  v19 = *v18;
  v20 = v18[1];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 520) = v21;
  v22 = sub_24E605DB4();
  *(inited + 528) = v22;
  *(inited + 496) = v19;
  *(inited + 504) = v20;
  *(inited + 536) = 0x6F6272656461656CLL;
  *(inited + 544) = 0xEF6B6E6152647261;
  v23 = *&v1[v5[13]];
  *(inited + 576) = v13;
  *(inited + 584) = v14;
  *(inited + 552) = v23;
  *(inited + 592) = 0xD000000000000016;
  *(inited + 600) = 0x800000024FA75C40;
  v24 = *&v1[v5[14]];
  *(inited + 632) = v13;
  *(inited + 640) = v14;
  *(inited + 608) = v24;
  *(inited + 648) = 0x496D616441637361;
  *(inited + 656) = 0xE900000000000044;
  v25 = &v1[v5[15]];
  v26 = *v25;
  v27 = v25[1];
  *(inited + 688) = v21;
  *(inited + 696) = v22;
  *(inited + 664) = v26;
  *(inited + 672) = v27;
  *(inited + 704) = 0x6B726F77747261;
  *(inited + 712) = 0xE700000000000000;
  v28 = v5[16];
  *(inited + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  *(inited + 752) = sub_24E7F1D38();
  v29 = __swift_allocate_boxed_opaque_existential_1((inited + 720));
  sub_24E60169C(&v1[v28], v29, &qword_27F213FB0);
  *(inited + 760) = 0x656C746954637361;
  *(inited + 768) = 0xE800000000000000;
  v30 = &v1[v5[17]];
  v31 = *v30;
  v32 = v30[1];
  *(inited + 800) = v21;
  *(inited + 808) = v22;
  *(inited + 776) = v31;
  *(inited + 784) = v32;
  *(inited + 816) = 0x6974627553637361;
  *(inited + 824) = 0xEB00000000656C74;
  v33 = &v1[v5[18]];
  v35 = *v33;
  v34 = v33[1];
  *(inited + 856) = v21;
  *(inited + 864) = v22;
  *(inited + 832) = v35;
  *(inited + 840) = v34;

  v36 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v36;
  return result;
}

uint64_t sub_24F4C0764(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24F4C0FF8(a2, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F4C0800(char a1)
{
  result = 0x65736143657375;
  switch(a1)
  {
    case 1:
      result = 0x726579616C70;
      break;
    case 2:
      result = 1701667175;
      break;
    case 3:
      result = 0x6552646E65697266;
      break;
    case 4:
      result = 0x676E656C6C616863;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 9:
      result = 0x6F6272656461656CLL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x496D616441637361;
      break;
    case 12:
      result = 0x6B726F77747261;
      break;
    case 13:
      result = 0x656C746954637361;
      break;
    case 14:
      result = 0x6974627553637361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F4C09FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F4C1684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4C0A24(uint64_t a1)
{
  v2 = sub_24F4C00E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4C0A60(uint64_t a1)
{
  v2 = sub_24F4C00E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccessPointRequiredData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4C00E0();
  sub_24F92D128();
  LOBYTE(v11) = *v3;
  v12 = 0;
  sub_24E636B10();
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for AccessPointRequiredData();
    LOBYTE(v11) = 1;
    type metadata accessor for Player(0);
    sub_24F4C0FF8(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    LOBYTE(v11) = 2;
    type metadata accessor for Game();
    sub_24F4C0FF8(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
    v11 = *&v3[*(v9 + 28)];
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    sub_24F4C0764(&qword_27F21BC30, &qword_27F213E28);
    sub_24F92CD48();
    LOBYTE(v11) = 4;
    sub_24F92CD38();
    LOBYTE(v11) = 5;
    sub_24F92CD38();
    LOBYTE(v11) = 6;
    sub_24F92CD38();
    LOBYTE(v11) = 7;
    sub_24F92CD38();
    LOBYTE(v11) = 8;
    sub_24F92CCA8();
    LOBYTE(v11) = 9;
    sub_24F92CD38();
    LOBYTE(v11) = 10;
    sub_24F92CD38();
    LOBYTE(v11) = 11;
    sub_24F92CCA8();
    LOBYTE(v11) = 12;
    sub_24F9289E8();
    sub_24F4C0FF8(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    LOBYTE(v11) = 13;
    sub_24F92CCA8();
    LOBYTE(v11) = 14;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F4C0FF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4C1054(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Game();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[16];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_24F4C11F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for Game();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[16];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

void sub_24F4C1378()
{
  sub_24F4C1508(319, &qword_27F214988, type metadata accessor for Player, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Game();
    if (v1 <= 0x3F)
    {
      sub_24F4C1508(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24E6BCB04();
        if (v3 <= 0x3F)
        {
          sub_24F4C1508(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F4C1508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F4C1580()
{
  result = qword_27F245A18;
  if (!qword_27F245A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245A18);
  }

  return result;
}

unint64_t sub_24F4C15D8()
{
  result = qword_27F245A20;
  if (!qword_27F245A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245A20);
  }

  return result;
}

unint64_t sub_24F4C1630()
{
  result = qword_27F245A28;
  if (!qword_27F245A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245A28);
  }

  return result;
}

uint64_t sub_24F4C1684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6552646E65697266 && a2 == 0xEE00737473657571 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEF746E756F437365 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA75C00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA75C20 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA45580 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEF656D614E647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEF6B6E6152647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA75C40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x496D616441637361 && a2 == 0xE900000000000044 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656C746954637361 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6974627553637361 && a2 == 0xEB00000000656C74)
  {

    return 14;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_24F4C1B88@<X0>(_BYTE *a1@<X8>)
{
  sub_24F0BD334();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F4C1C24@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  MEMORY[0x28223BE20](v65);
  v64 = &v53 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v53 - v4;
  v56 = sub_24F92A498();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24F91F648();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A30);
  MEMORY[0x28223BE20](v9);
  v11 = (&v53 - v10);
  v12 = v1[1];
  v71 = *v1;
  v72 = v12;
  v13 = v71;
  v70[3] = &type metadata for ArcadeLibraryPageIntent;
  v63 = sub_24E7C5734();
  v70[4] = v63;
  LOBYTE(v70[0]) = v13;
  v14 = *(&v71 + 1);
  v15 = v72;
  v16 = BYTE1(v72);
  v17 = BYTE2(v72);
  v18 = BYTE3(v72);
  v19 = BYTE4(v72);
  v20 = *(&v72 + 1);
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  *(v21 + 24) = v14;
  *(v21 + 32) = v15;
  *(v21 + 33) = v16;
  v22 = v21;
  *(v21 + 34) = v17;
  *(v21 + 35) = v18;
  *(v21 + 36) = v19;
  v23 = v53;
  *(v21 + 40) = v20;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v24 = v9[13];
  *(v11 + v24) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v25 = v11 + v9[14];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v11 + v9[15];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = v9[16];
  *(v11 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  sub_24F461CB8(&v71, &v68);
  v28 = v54;
  sub_24F91F618();
  v29 = v57;
  v30 = v58;
  (*(v57 + 16))(v55, v28, v58);
  sub_24F926F28();
  (*(v29 + 8))(v28, v30);
  v31 = v11 + v9[18];
  LOBYTE(v67) = 1;
  sub_24F926F28();
  v32 = v69;
  *v31 = v68;
  *(v31 + 1) = v32;
  v33 = (v11 + v9[30]);
  sub_24F929EB8();
  v67 = sub_24F929EA8();
  sub_24F926F28();
  v34 = v69;
  *v33 = v68;
  v33[1] = v34;
  sub_24E615E00(v70, v11 + v9[19]);
  v35 = v56;
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v36 = v60;
  sub_24F92A448();
  v37 = v62;
  sub_24F92A408();
  (*(v61 + 8))(v36, v37);
  (*(v59 + 8))(v23, v35);
  v38 = v69;
  v39 = (v11 + v9[23]);
  *v39 = v68;
  v39[1] = v38;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider();
  sub_24F928EF8();
  *(v11 + v9[25]) = v68;
  v40 = (v11 + v9[27]);
  *v40 = sub_24F4C249C;
  v40[1] = 0;
  v41 = (v11 + v9[28]);
  *v41 = sub_24F4C28E0;
  v41[1] = v22;
  *(v11 + v9[20]) = v14;
  *(v11 + v9[22]) = 1;
  *(v11 + v9[21]) = 2;
  type metadata accessor for FeedRefreshNotifier();

  sub_24F928F28();
  *(v11 + v9[26]) = v68;
  type metadata accessor for NetworkConnectionMonitor();
  sub_24F928F28();
  *(v11 + v9[31]) = v68;
  LOBYTE(v68) = v70[0];
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  __swift_destroy_boxed_opaque_existential_1(v70);
  MEMORY[0x28223BE20](BYTE3(v72));
  *(&v53 - 32) = v42;
  *(&v53 - 3) = v43;
  *(&v53 - 16) = v44;
  *(&v53 - 15) = v45;
  *(&v53 - 14) = v46;
  *(&v53 - 13) = v47;
  *(&v53 - 12) = v48;
  *(&v53 - 1) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A38);
  sub_24E602068(&qword_27F245A40, &qword_27F245A30);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245A48);
  v51 = sub_24E602068(&qword_27F245A50, &qword_27F245A48);
  v70[0] = v50;
  v70[1] = v51;
  swift_getOpaqueTypeConformance2();
  sub_24F926A58();
  return sub_24F4C2C50(v11);
}

uint64_t sub_24F4C249C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Page(0);
  sub_24F4C2DFC(a1 + *(v4 + 80), a2);
  LOBYTE(a1) = *(a1 + *(v4 + 84));
  result = type metadata accessor for DefaultPageHeaderView();
  *(a2 + *(result + 20)) = a1;
  *(a2 + *(result + 24)) = 1;
  return result;
}

uint64_t sub_24F4C2508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A60);
  sub_24F926F38();
  LOBYTE(a1) = *(a1 + *(type metadata accessor for Page(0) + 84));
  KeyPath = swift_getKeyPath();
  *a3 = v8;
  *(a3 + 1) = v9;
  *(a3 + 2) = v10;
  *(a3 + 3) = v11;
  *(a3 + 4) = v12;
  *(a3 + 5) = a1;
  *(a3 + 8) = sub_24F4C2D58;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
}

uint64_t sub_24F4C2610@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v18[1] = a5;
  v9 = a3 >> 8;
  v10 = HIDWORD(a3);
  v11 = sub_24F925018();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A48);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - v14;
  sub_24F924F98();
  v19 = a1;
  v20 = a2;
  v21 = v6 & 1;
  v22 = v9;
  v23 = BYTE2(v6) & 1;
  v24 = HIBYTE(v6) & 1;
  v25 = v10;
  v26 = a4;
  sub_24F4C2D04();
  sub_24F9242A8();
  v16 = sub_24E602068(&qword_27F245A50, &qword_27F245A48);
  MEMORY[0x25304AA30](v15, v12, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_24F4C27F8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A60);
  result = sub_24F926F58();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 18) = v7;
  *(a1 + 19) = v8;
  *(a1 + 20) = v9;
  return result;
}

uint64_t sub_24F4C28A0()
{

  return swift_deallocObject();
}

uint64_t sub_24F4C2954()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A68);
  swift_allocObject();

  return sub_24F4C29A4(v0);
}

uint64_t sub_24F4C29A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A78);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = qword_27F2476B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8);
  sub_24F921808();
  (*(v8 + 16))(v10, v13, v7);
  sub_24F923058();
  (*(v8 + 8))(v13, v7);
  (*(v4 + 32))(v1 + v14, v6, v3);
  v15 = v1 + *(*v1 + 120);
  *(v15 + 4) = 0;
  *v15 = 2;
  v16 = v1 + *(*v1 + 128);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  *(v1 + *(*v1 + 136)) = 0;
  *(v1 + qword_27F2476B8) = a1;
  return v1;
}

uint64_t sub_24F4C2C04@<X0>(uint64_t a1@<X8>)
{
  v2 = 0x10000;
  if (!*(v1 + 34))
  {
    v2 = 0;
  }

  v3 = *(v1 + 32) | (*(v1 + 33) << 8) | v2;
  v4 = 0x1000000;
  if (!*(v1 + 35))
  {
    v4 = 0;
  }

  return sub_24F4C2610(*(v1 + 16), *(v1 + 24), v3 | v4 | (*(v1 + 36) << 32), *(v1 + 40), a1);
}

uint64_t sub_24F4C2C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F4C2D04()
{
  result = qword_27F245A58;
  if (!qword_27F245A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245A58);
  }

  return result;
}

uint64_t sub_24F4C2D60@<X0>(_BYTE *a1@<X8>)
{
  sub_24F0BD334();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F4C2DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4C2E6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245A30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245A38);
  sub_24E602068(&qword_27F245A40, &qword_27F245A30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245A48);
  sub_24E602068(&qword_27F245A50, &qword_27F245A48);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

GameStoreKit::GSKBuildType __swiftcall GSKBuildType.init()()
{
  v1 = v0;
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  *v1 = v3;
  return has_internal_content;
}

Swift::Bool __swiftcall GSKBuildType.isAny(of:)(Swift::OpaquePointer of)
{
  v2 = *v1;
  v3 = *(of._rawValue + 2);
  v4 = of._rawValue + 32;
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = *v4;
    if (v8 == 2)
    {
      v9 = 0x6C616E7265746E69;
    }

    else
    {
      v9 = 0x69746375646F7270;
    }

    v10 = 0xEA00000000006E6FLL;
    if (v8 == 2)
    {
      v10 = 0xE800000000000000;
    }

    v11 = 0x65677265766E6F63;
    if (!*v4)
    {
      v11 = 0x6775626564;
    }

    v12 = 0xEB0000000065636ELL;
    if (!*v4)
    {
      v12 = 0xE500000000000000;
    }

    if (*v4 <= 1u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    if (*v4 <= 1u)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    if (v2 > 1)
    {
      if (v2 == 2)
      {
        v16 = 0x6C616E7265746E69;
      }

      else
      {
        v16 = 0x69746375646F7270;
      }

      if (v2 == 2)
      {
        v15 = 0xE800000000000000;
      }

      else
      {
        v15 = 0xEA00000000006E6FLL;
      }

      if (v13 != v16)
      {
        goto LABEL_2;
      }
    }

    else if (v2)
    {
      v15 = 0xEB0000000065636ELL;
      if (v13 != 0x65677265766E6F63)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      if (v13 != 0x6775626564)
      {
        goto LABEL_2;
      }
    }

    if (v14 == v15)
    {

      return v6 != 0;
    }

LABEL_2:
    v5 = sub_24F92CE08();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t GSKBuildType.rawValue.getter()
{
  v1 = 0x6775626564;
  v2 = 0x6C616E7265746E69;
  if (*v0 != 2)
  {
    v2 = 0x69746375646F7270;
  }

  if (*v0)
  {
    v1 = 0x65677265766E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

GameStoreKit::GSKBuildType_optional __swiftcall GSKBuildType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F4C3250()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F4C331C()
{
  sub_24F92B218();
}

uint64_t sub_24F4C33D4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F4C34A8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6775626564;
  v4 = 0xE800000000000000;
  v5 = 0x6C616E7265746E69;
  if (*v1 != 2)
  {
    v5 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v3 = 0x65677265766E6F63;
    v2 = 0xEB0000000065636ELL;
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

unint64_t sub_24F4C3534()
{
  result = qword_27F245A80;
  if (!qword_27F245A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245A80);
  }

  return result;
}

uint64_t sub_24F4C35BC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_24F91F648();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_24F4C379C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24F91F648();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

void sub_24F4C3988()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F9289E8();
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        sub_24F91F648();
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
          if (v4 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
            if (v5 <= 0x3F)
            {
              sub_24F4CAF14(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
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

uint64_t sub_24F4C3AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4C3B60(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B80);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B88);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B90);
  v23 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B98);
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4C9BEC();
  sub_24F92D128();
  if (*(v2 + 32))
  {
    if (*(v2 + 32) == 1)
    {
      v34 = 1;
      sub_24F4C9C94();
      v16 = v29;
      sub_24F92CC98();
      v33 = 0;
      v17 = v27;
      v18 = v30;
      sub_24F92CD08();
      if (!v18)
      {
        v32 = 1;
        sub_24F92CD08();
      }

      (*(v26 + 8))(v9, v17);
      return (*(v28 + 8))(v15, v16);
    }

    else
    {
      v35 = 2;
      sub_24F4C9C40();
      v21 = v29;
      sub_24F92CC98();
      v22 = v25;
      sub_24F92CD08();
      (*(v24 + 8))(v6, v22);
      return (*(v28 + 8))(v15, v21);
    }
  }

  else
  {
    v31 = 0;
    sub_24F4C9CE8();
    v19 = v29;
    sub_24F92CC98();
    sub_24F92CCA8();
    (*(v23 + 8))(v12, v10);
    return (*(v28 + 8))(v15, v19);
  }
}

uint64_t sub_24F4C3FD4()
{
  v1 = 0x64657469766E69;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572676F72506E69;
  }
}

uint64_t sub_24F4C4038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F4CA5A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4C4060(uint64_t a1)
{
  v2 = sub_24F4C9BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4C409C(uint64_t a1)
{
  v2 = sub_24F4C9BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4C40FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEF747865546E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F4C418C(uint64_t a1)
{
  v2 = sub_24F4C9C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4C41C8(uint64_t a1)
{
  v2 = sub_24F4C9C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4C4228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C74706D65747461 && a2 == 0xEF74786554746665)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F4C42B8(uint64_t a1)
{
  v2 = sub_24F4C9CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4C42F4(uint64_t a1)
{
  v2 = sub_24F4C9CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4C4330()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x4E72657469766E69;
  }
}

uint64_t sub_24F4C4378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E72657469766E69 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA75CA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F4C4460(uint64_t a1)
{
  v2 = sub_24F4C9C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4C449C(uint64_t a1)
{
  v2 = sub_24F4C9C94();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F4C44D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F4C94D0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_24F4C4538(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6575676573;
    v6 = 0x4D747865746E6F63;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000015;
    if (a1 != 5)
    {
      v7 = 0x6574617473;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x656D614E656D6167;
    v3 = 0x6F6272656461656CLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E6F6349656D6167;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F4C4684(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4C6408();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for ChallengeDetailDescription(0);
    LOBYTE(v15) = 1;
    sub_24F9289E8();
    sub_24F4C3AFC(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CD48();
    LOBYTE(v15) = 2;
    sub_24F92CD08();
    LOBYTE(v15) = 3;
    sub_24F92CD08();
    LOBYTE(v15) = 4;
    sub_24F92CCA8();
    LOBYTE(v15) = 5;
    sub_24F91F648();
    sub_24F4C3AFC(&qword_27F21BB08, MEMORY[0x277CC9578]);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 40));
    v11 = *(v10 + 32);
    v12 = v10[1];
    v15 = *v10;
    v16 = v12;
    v17 = v11;
    v14[15] = 6;
    sub_24F4C65E4();
    sub_24F92CD48();
    LOBYTE(v15) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v15) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v15) = 9;
    sub_24F929608();
    sub_24F4C3AFC(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F4C4B30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v47 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v50);
  v51 = &v47 - v5;
  v6 = sub_24F91F648();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9289E8();
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B18);
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = type metadata accessor for ChallengeDetailDescription(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 44)];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v62 = v20;
  sub_24E61DA68(&v63, v20, qword_27F21B590);
  v21 = v16[12];
  v22 = sub_24F92A6D8();
  v23 = *(*(v22 - 8) + 56);
  v60 = v21;
  v61 = v18;
  v23(&v18[v21], 1, 1, v22);
  v24 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F4C6408();
  v57 = v15;
  v25 = v58;
  sub_24F92D108();
  if (v25)
  {
    v26 = v61;
    __swift_destroy_boxed_opaque_existential_1(v59);
    sub_24E601704(v62, qword_27F24EC90);
    return sub_24E601704(v26 + v60, &qword_27F215440);
  }

  else
  {
    v47 = v8;
    v58 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v66 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v27 = v64;
    v28 = v61;
    *v61 = v63;
    v28[1] = v27;
    *(v28 + 4) = v65;
    LOBYTE(v63) = 1;
    sub_24F4C3AFC(&qword_27F214018, MEMORY[0x277D21C48]);
    v29 = v11;
    v30 = v58;
    sub_24F92CC68();
    (*(v54 + 32))(v28 + v16[5], v29, v30);
    LOBYTE(v63) = 2;
    v31 = sub_24F92CC28();
    v32 = (v28 + v16[6]);
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v63) = 3;
    v34 = sub_24F92CC28();
    v35 = (v28 + v16[7]);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v63) = 4;
    v37 = sub_24F92CBC8();
    v38 = (v28 + v16[8]);
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v63) = 5;
    sub_24F4C3AFC(&qword_27F21B778, MEMORY[0x277CC9578]);
    v40 = v53;
    sub_24F92CC68();
    (*(v52 + 32))(v28 + v16[9], v47, v40);
    v66 = 6;
    sub_24F4C64C8();
    sub_24F92CC68();
    v41 = v65;
    v42 = v28 + v16[10];
    v43 = v64;
    *v42 = v63;
    *(v42 + 1) = v43;
    v42[32] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v66 = 7;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v63, v62, qword_27F24EC90);
    LOBYTE(v63) = 8;
    sub_24E65CAA0();
    v44 = v51;
    sub_24F92CC68();
    sub_24E61DA68(v44, v28 + v60, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v63) = 9;
    sub_24F4C3AFC(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    (*(v56 + 8))(v57, v55);
    v45 = v61;
    sub_24E6009C8(v49, v61 + v16[13], &qword_27F213E68);
    sub_24F4C651C(v45, v48, type metadata accessor for ChallengeDetailDescription);
    __swift_destroy_boxed_opaque_existential_1(v59);
    return sub_24F4C6584(v45, type metadata accessor for ChallengeDetailDescription);
  }
}

uint64_t sub_24F4C55C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F4CA6C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4C55E8(uint64_t a1)
{
  v2 = sub_24F4C6408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4C5624(uint64_t a1)
{
  v2 = sub_24F4C6408();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F4C5660@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 44), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24F4C56BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 48), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

__n128 sub_24F4C57FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245AC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  *v6 = sub_24F924C98();
  *(v6 + 1) = 0x4010000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245AD0);
  sub_24F4C595C(a1, &v6[*(v7 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v6, a2, &qword_27F245AC8);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245AD8) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_24F4C595C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for StateDescriptionView(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v38 - v12;
  *v13 = sub_24F924C98();
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = 0;
  v14 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245AE8) + 44)];
  *v14 = sub_24F9249A8();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245AF0);
  sub_24F4C5C78(a1, &v14[*(v15 + 44)]);
  v16 = type metadata accessor for ChallengeDetailDescription(0);
  v17 = v16[8];
  v18 = (a1 + v16[7]);
  v19 = *v18;
  v41 = v18[1];
  v20 = v41;
  v22 = *(a1 + v17);
  v21 = *(a1 + v17 + 8);
  v38[0] = v19;
  v38[1] = v21;
  v23 = v16[9];
  v24 = *(v4 + 32);
  v25 = sub_24F91F648();
  (*(*(v25 - 8) + 16))(&v8[v24], a1 + v23, v25);
  v26 = a1 + v16[10];
  v28 = *v26;
  v27 = *(v26 + 8);
  v30 = *(v26 + 16);
  v39 = *(v26 + 24);
  v29 = v39;
  v40 = v27;
  *v8 = v38[0];
  *(v8 + 1) = v20;
  *(v8 + 2) = v22;
  *(v8 + 3) = v21;
  v31 = &v8[*(v4 + 36)];
  *v31 = v28;
  *(v31 + 1) = v27;
  *(v31 + 2) = v30;
  *(v31 + 3) = v29;
  LOBYTE(v21) = *(v26 + 32);
  v31[32] = v21;
  v32 = v44;
  sub_24E60169C(v13, v44, &qword_27F245AE0);
  v33 = v42;
  sub_24F4C651C(v8, v42, type metadata accessor for StateDescriptionView);
  v34 = v32;
  v35 = v43;
  sub_24E60169C(v34, v43, &qword_27F245AE0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245AF8);
  sub_24F4C651C(v33, v35 + *(v36 + 48), type metadata accessor for StateDescriptionView);

  sub_24F4C6394(v28, v40, v30, v39, v21);
  sub_24F4C6584(v8, type metadata accessor for StateDescriptionView);
  sub_24E601704(v13, &qword_27F245AE0);
  sub_24F4C6584(v33, type metadata accessor for StateDescriptionView);
  return sub_24E601704(v44, &qword_27F245AE0);
}

uint64_t sub_24F4C5C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B00);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = type metadata accessor for ChallengeDetailDescription(0);
  v17 = *(v16 + 20);
  v18 = sub_24F9289E8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v15, a1 + v17, v18);
  (*(v19 + 56))(v15, 0, 1, v18);
  v20 = type metadata accessor for GameIcon(0);
  v21 = v20[8];
  *&v15[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v15[v20[5]] = 1;
  v15[v20[6]] = 1;
  v15[v20[7]] = 0;
  v22 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B08) + 36)];
  *v22 = 0x3FF0000000000000;
  *(v22 + 4) = 0;
  sub_24F927618();
  sub_24F9238C8();
  v23 = &v15[*(v11 + 44)];
  v24 = v63;
  *v23 = v62;
  *(v23 + 1) = v24;
  *(v23 + 2) = v64;
  v25 = (a1 + *(v16 + 24));
  v26 = v25[1];
  v58 = *v25;
  v59 = v26;
  sub_24E600AEC();

  v27 = sub_24F925E18();
  v29 = v28;
  LOBYTE(v20) = v30;
  LODWORD(v21) = sub_24F9251C8();
  v31 = *(v3 + 36);
  v32 = *MEMORY[0x277CE13B8];
  v33 = sub_24F927748();
  (*(*(v33 - 8) + 104))(&v5[v31], v32, v33);
  *v5 = v21;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v34 = sub_24F925C58();
  v36 = v35;
  LOBYTE(v3) = v37;
  v39 = v38;
  sub_24E600B40(v27, v29, v20 & 1);

  sub_24E601704(v5, &qword_27F213F10);
  v58 = v34;
  v59 = v36;
  v60 = v3 & 1;
  v61 = v39;
  v40 = v52;
  sub_24F9268B8();
  sub_24E600B40(v34, v36, v3 & 1);

  v41 = v57;
  sub_24E60169C(v15, v57, &qword_27F245B00);
  v42 = v53;
  v43 = v54;
  v44 = *(v54 + 16);
  v45 = v55;
  v44(v53, v40, v55);
  v46 = v41;
  v47 = v56;
  sub_24E60169C(v46, v56, &qword_27F245B00);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B10);
  v44((v47 + *(v48 + 48)), v42, v45);
  v49 = *(v43 + 8);
  v49(v40, v45);
  sub_24E601704(v15, &qword_27F245B00);
  v49(v42, v45);
  return sub_24E601704(v57, &qword_27F245B00);
}

uint64_t sub_24F4C61E4()
{
  sub_24F47DCC8();

  return sub_24F9218E8();
}

unint64_t sub_24F4C6274()
{
  result = qword_27F245AC0;
  if (!qword_27F245AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245AC0);
  }

  return result;
}

uint64_t sub_24F4C6394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_24F4C6408()
{
  result = qword_27F245B20;
  if (!qword_27F245B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245B20);
  }

  return result;
}

uint64_t sub_24F4C645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_24F4C64C8()
{
  result = qword_27F245B28;
  if (!qword_27F245B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245B28);
  }

  return result;
}

uint64_t sub_24F4C651C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4C6584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F4C65E4()
{
  result = qword_27F245B38;
  if (!qword_27F245B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245B38);
  }

  return result;
}

uint64_t sub_24F4C6638()
{
  v0 = sub_24F925D38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F925D58();
  __swift_allocate_value_buffer(v4, qword_27F245A88);
  __swift_project_value_buffer(v4, qword_27F245A88);
  (*(v1 + 104))(v3, *MEMORY[0x277CE0BB0], v0);
  return sub_24F925D48();
}

uint64_t sub_24F4C6740@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for TimeLeftView(0);
  v3 = v2 - 8;
  v26 = *(v2 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D620);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245D38);
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v30 = *(v1 + *(v3 + 32));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D628);
  sub_24E602068(&qword_27F21D630, &qword_27F21D628);
  sub_24F9253C8();
  sub_24F4C651C(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimeLeftView);
  v15 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v16 = swift_allocObject();
  sub_24F4CB120(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  (*(v6 + 16))(v25, v10, v5);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24F4CB184;
  *(v17 + 24) = v16;
  sub_24E602068(&qword_27F21D640, &qword_27F21D620);
  sub_24F923828();
  (*(v6 + 8))(v10, v5);
  sub_24F4CB244();
  v18 = v29;
  v19 = v27;
  sub_24F9268B8();
  (*(v28 + 8))(v14, v19);
  LODWORD(v19) = sub_24F9251C8();
  v20 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245D48) + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v22 = *MEMORY[0x277CE13B8];
  v23 = sub_24F927748();
  result = (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v20 = v19;
  return result;
}

double sub_24F4C6B7C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  sub_24F923808();
  v8 = type metadata accessor for TimeLeftView(0);
  sub_24F4C6CA0(a1 + *(v8 + 20), &v12);
  (*(v5 + 8))(v7, v4);
  v9 = v13;
  v10 = v14;
  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_24F4C6CA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F91F7C8();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24F91F7A8();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24F924A78();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_24F925D78();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_24F91F648();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F4C3AFC(&qword_27F2363D0, MEMORY[0x277CC9578]);
  if (sub_24F92AF78())
  {
    v17._object = 0x800000024FA75CF0;
    v17._countAndFlagsBits = 0xD000000000000022;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v64 = localizedString(_:comment:)(v17, v18);
    sub_24E600AEC();
    v19 = sub_24F925E18();
  }

  else
  {
    (*(v14 + 16))(v16, a1, v13);
    if (qword_27F2112A8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F925D58();
    __swift_project_value_buffer(v23, qword_27F245A88);
    sub_24F925D68();
    v19 = sub_24F925DD8();
  }

  v24 = v19;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  sub_24F924A68();
  sub_24F924A58();
  v61 = v26;
  v62 = v25;
  v63 = v24;
  sub_24F924A28();
  sub_24F924A58();
  sub_24F924A98();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v28 = qword_27F24F280;
  v29 = sub_24F925DE8();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if (*(v3 + 8))
  {
    v53 = v27;
    v54 = a2;
    sub_24F924A68();
    sub_24F924A58();
    sub_24F924A48();
    sub_24F924A58();
    v52 = v33;
    sub_24F924A28();
    sub_24F924A58();
    sub_24F924A98();
    v36 = sub_24F925DE8();
    v60 = v37;
    v39 = v38;
    v41 = v40;
    v42 = v55;
    sub_24F91F778();
    sub_24F91F708();
    (*(v58 + 8))(v42, v59);
    sub_24F91F788();
    v43 = sub_24F91F798();
    (*(v56 + 8))(v10, v57);
    if (v43 == 2)
    {
      v44 = sub_24F925C78();
      v46 = v45;
      LOBYTE(v33) = v47;
      v49 = v48;
    }

    else
    {
      v46 = v60;
      sub_24E5FD138(v36, v60, v39 & 1);

      v44 = v36;
      LOBYTE(v33) = v39;
      v49 = v41;
    }

    sub_24E600B40(v29, v31, v52 & 1);

    sub_24E600B40(v63, v62, v61 & 1);

    sub_24E600B40(v36, v60, v39 & 1);
    v29 = v44;
    v31 = v46;
    v35 = v49;
    a2 = v54;
  }

  else
  {
    sub_24E600B40(v63, v62, v61 & 1);
  }

  *a2 = v29;
  *(a2 + 8) = v31;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v35;
  return result;
}

id sub_24F4C7304()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27F245AA0 = v0;
  return result;
}

uint64_t sub_24F4C7368@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245C38);
  MEMORY[0x28223BE20](v32);
  v3 = &v25 - v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245C40);
  MEMORY[0x28223BE20](v27);
  v5 = &v25 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245C48);
  MEMORY[0x28223BE20](v30);
  v28 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245C58);
  MEMORY[0x28223BE20](v29);
  v11 = &v25 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245C60);
  MEMORY[0x28223BE20](v26);
  v13 = &v25 - v12;
  v14 = v1 + *(type metadata accessor for StateDescriptionView(0) + 28);
  v15 = *v14;
  v16 = *(v14 + 1);
  if (v14[32])
  {
    if (v14[32] == 1)
    {
      v18 = *(v14 + 2);
      v17 = *(v14 + 3);
      *v5 = sub_24F924C98();
      *(v5 + 1) = 0x4010000000000000;
      v5[16] = 0;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CB0);
      sub_24F4C8138(v15, v16, v1, v18, v17, &v5[*(v19 + 44)]);
      sub_24E60169C(v5, v9, &qword_27F245C40);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F245C78, &qword_27F245C60);
      sub_24F4CAAB4();
      sub_24F924E28();
      sub_24E60169C(v11, v28, &qword_27F245C58);
      swift_storeEnumTagMultiPayload();
      sub_24F4CA9FC();
      sub_24F4CAB98();
      sub_24F924E28();
      sub_24E601704(v11, &qword_27F245C58);
      v20 = v5;
      v21 = &qword_27F245C40;
    }

    else
    {
      *v3 = sub_24F924C98();
      *(v3 + 1) = 0x4010000000000000;
      v3[16] = 0;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245C68);
      sub_24F4C8D24(v15, v16, v1, &v3[*(v23 + 44)]);
      sub_24E60169C(v3, v28, &qword_27F245C38);
      swift_storeEnumTagMultiPayload();
      sub_24F4CA9FC();
      sub_24F4CAB98();
      sub_24F924E28();
      v20 = v3;
      v21 = &qword_27F245C38;
    }
  }

  else
  {
    *v13 = sub_24F924C98();
    *(v13 + 1) = 0x4010000000000000;
    v13[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CB8);
    sub_24F4C78F8(v1, v15, v16, &v13[*(v22 + 44)]);
    sub_24E60169C(v13, v9, &qword_27F245C60);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F245C78, &qword_27F245C60);
    sub_24F4CAAB4();
    sub_24F924E28();
    sub_24E60169C(v11, v28, &qword_27F245C58);
    swift_storeEnumTagMultiPayload();
    sub_24F4CA9FC();
    sub_24F4CAB98();
    sub_24F924E28();
    sub_24E601704(v11, &qword_27F245C58);
    v20 = v13;
    v21 = &qword_27F245C60;
  }

  return sub_24E601704(v20, v21);
}

uint64_t sub_24F4C78F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v82 = a2;
  v91 = a4;
  v5 = sub_24F91F648();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TimeLeftView(0);
  MEMORY[0x28223BE20](v84);
  v90 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = (v72 - v9);
  v75 = sub_24F925DC8();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CC0);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CC8);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CD0);
  MEMORY[0x28223BE20](v16 - 8);
  v81 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v72 - v19;
  v77 = a1;
  v21 = *(a1 + 1);
  v93 = *a1;
  v94 = v21;
  v22 = sub_24E600AEC();

  v72[1] = v22;
  v23 = sub_24F925E18();
  v25 = v24;
  v27 = v26;
  sub_24F9258F8();
  v28 = sub_24F925C98();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_24E600B40(v23, v25, v27 & 1);

  v93 = v28;
  v94 = v30;
  v35 = v32 & 1;
  v36 = v77;
  v95 = v35;
  v96 = v34;
  v37 = 1;
  v80 = v20;
  sub_24F9268B8();
  sub_24E600B40(v28, v30, v35);

  v38 = *(v36 + 3);
  if (v38)
  {
    v93 = *(v36 + 2);
    v94 = v38;

    v39 = sub_24F925E18();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v73;
    sub_24F925DB8();
    KeyPath = swift_getKeyPath();
    v93 = v39;
    v94 = v41;
    v95 = v43 & 1;
    v96 = v45;
    v97 = KeyPath;
    v98 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
    sub_24E62FBF4();
    v48 = v76;
    sub_24F926718();
    (*(v74 + 8))(v46, v75);
    sub_24E600B40(v39, v41, v43 & 1);

    LODWORD(v39) = sub_24F9251C8();
    v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CE0) + 36));
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v51 = *MEMORY[0x277CE13B8];
    v52 = sub_24F927748();
    (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
    *v49 = v39;
    v53 = v92;
    sub_24E6009C8(v48, v92, &qword_27F245CC0);
    v37 = 0;
    v54 = v53;
  }

  else
  {
    v54 = v92;
  }

  (*(v78 + 56))(v54, v37, 1, v79);
  v55 = type metadata accessor for StateDescriptionView(0);
  v57 = v87;
  v56 = v88;
  v58 = *(v87 + 16);
  v59 = v85;
  v58(v85, &v36[*(v55 + 24)], v88);
  v60 = v89;
  v61 = v86;
  *v89 = v82;
  *(v60 + 8) = v61;
  v62 = v84;
  v58((v60 + *(v84 + 20)), v59, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B78);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_24F9479A0;

  sub_24F91F638();
  sub_24F91F568();
  sub_24F91F568();
  (*(v57 + 8))(v59, v56);
  *(v60 + *(v62 + 24)) = v63;
  v65 = v80;
  v64 = v81;
  sub_24E60169C(v80, v81, &qword_27F245CD0);
  v66 = v92;
  v67 = v83;
  sub_24E60169C(v92, v83, &qword_27F245CC8);
  v68 = v90;
  sub_24F4C651C(v60, v90, type metadata accessor for TimeLeftView);
  v69 = v91;
  sub_24E60169C(v64, v91, &qword_27F245CD0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CD8);
  sub_24E60169C(v67, v69 + *(v70 + 48), &qword_27F245CC8);
  sub_24F4C651C(v68, v69 + *(v70 + 64), type metadata accessor for TimeLeftView);
  sub_24F4C6584(v60, type metadata accessor for TimeLeftView);
  sub_24E601704(v66, &qword_27F245CC8);
  sub_24E601704(v65, &qword_27F245CD0);
  sub_24F4C6584(v68, type metadata accessor for TimeLeftView);
  sub_24E601704(v67, &qword_27F245CC8);
  return sub_24E601704(v64, &qword_27F245CD0);
}

uint64_t sub_24F4C8138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v113 = a5;
  v109 = a4;
  v125 = a3;
  v119 = a6;
  v116 = sub_24F91F648();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for TimeLeftView(0);
  MEMORY[0x28223BE20](v111);
  v118 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v117 = (&v100 - v11);
  v105 = sub_24F925DC8();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CE0);
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CE8);
  MEMORY[0x28223BE20](v14 - 8);
  v114 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v122 = &v100 - v17;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CF0) - 8;
  MEMORY[0x28223BE20](v106);
  v110 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v123 = &v100 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CF8);
  MEMORY[0x28223BE20](v21 - 8);
  v124 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v126 = &v100 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x4E72657469766E69;
  *(inited + 40) = 0xEB00000000656D61;
  v127._countAndFlagsBits = 11043298;
  v127._object = 0xA300000000000000;
  MEMORY[0x253050C20](a1, a2);
  MEMORY[0x253050C20](11108834, 0xA300000000000000);
  object = v127._object;
  *(inited + 48) = v127._countAndFlagsBits;
  *(inited + 56) = object;
  v27 = sub_24E6086DC(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F219F90);
  v28._object = 0x800000024FA75CC0;
  v28._countAndFlagsBits = 0xD00000000000002ALL;
  v29 = localizedString(_:with:)(v28, v27);

  v127 = v29;
  v30 = sub_24E600AEC();
  v31 = sub_24F925E18();
  v33 = v32;
  LOBYTE(inited) = v34;
  sub_24F9258F8();
  v35 = sub_24F925C98();
  v37 = v36;
  LOBYTE(a2) = v38;
  v40 = v39;

  sub_24E600B40(v31, v33, inited & 1);

  KeyPath = swift_getKeyPath();
  v127._countAndFlagsBits = v35;
  v127._object = v37;
  LOBYTE(a2) = a2 & 1;
  v128 = a2;
  v129 = v40;
  v130 = KeyPath;
  v131 = 0;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  v120 = sub_24E62FBF4();
  sub_24F9268B8();
  sub_24E600B40(v35, v37, a2);

  v42 = v125[1];
  v127._countAndFlagsBits = *v125;
  v127._object = v42;

  v101 = v30;
  v43 = sub_24F925E18();
  v45 = v44;
  LOBYTE(v35) = v46;
  sub_24F9258F8();
  v47 = sub_24F925C98();
  v49 = v48;
  LOBYTE(v30) = v50;
  v52 = v51;

  sub_24E600B40(v43, v45, v35 & 1);

  v53 = swift_getKeyPath();
  v127._countAndFlagsBits = v47;
  v127._object = v49;
  v128 = v30 & 1;
  v129 = v52;
  v130 = v53;
  v131 = 0;
  v54 = v123;
  sub_24F9268B8();
  sub_24E600B40(v47, v49, v30 & 1);

  LODWORD(v52) = sub_24F9251C8();
  v55 = (v54 + *(v106 + 44));
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  v57 = *(v56 + 36);
  v58 = *MEMORY[0x277CE13B8];
  v59 = sub_24F927748();
  v60 = *(*(v59 - 8) + 104);
  v61 = v55 + v57;
  v62 = v125;
  v60(v61, v58, v59);
  *v55 = v52;
  v63 = v62[3];
  if (v63)
  {
    v127._countAndFlagsBits = v62[2];
    v127._object = v63;

    v64 = sub_24F925E18();
    v66 = v65;
    v68 = v67;
    LODWORD(v106) = v58;
    v70 = v69;
    v101 = v56;
    v71 = v102;
    sub_24F925DB8();
    v72 = swift_getKeyPath();
    v100 = v60;
    v127._countAndFlagsBits = v64;
    v127._object = v66;
    v128 = v68 & 1;
    v129 = v70;
    v130 = v72;
    v131 = 0;
    v73 = v103;
    sub_24F926718();
    (*(v104 + 8))(v71, v105);
    v74 = v66;
    v62 = v125;
    sub_24E600B40(v64, v74, v68 & 1);

    LODWORD(v64) = sub_24F9251C8();
    v75 = v107;
    v76 = (v73 + *(v107 + 36));
    v100(&v76[*(v101 + 36)], v106, v59);
    *v76 = v64;
    v77 = v122;
    sub_24E6009C8(v73, v122, &qword_27F245CE0);
    v78 = 0;
    v79 = v77;
    v80 = v75;
  }

  else
  {
    v79 = v122;
    v80 = v107;
    v78 = 1;
  }

  (*(v108 + 56))(v79, v78, 1, v80);
  v81 = type metadata accessor for StateDescriptionView(0);
  v82 = v115;
  v83 = *(v115 + 16);
  v84 = v112;
  v85 = v116;
  v83(v112, v62 + *(v81 + 24), v116);
  v86 = v117;
  v87 = v113;
  *v117 = v109;
  *(v86 + 8) = v87;
  v88 = v111;
  v83((v86 + *(v111 + 20)), v84, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B78);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_24F9479A0;

  sub_24F91F638();
  sub_24F91F568();
  sub_24F91F568();
  (*(v82 + 8))(v84, v85);
  *(v86 + *(v88 + 24)) = v89;
  v90 = v124;
  sub_24E60169C(v126, v124, &qword_27F245CF8);
  v91 = v123;
  v92 = v110;
  sub_24E60169C(v123, v110, &qword_27F245CF0);
  v93 = v122;
  v94 = v114;
  sub_24E60169C(v122, v114, &qword_27F245CE8);
  v95 = v118;
  sub_24F4C651C(v86, v118, type metadata accessor for TimeLeftView);
  v96 = v90;
  v97 = v119;
  sub_24E60169C(v96, v119, &qword_27F245CF8);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245D00);
  sub_24E60169C(v92, v97 + v98[12], &qword_27F245CF0);
  sub_24E60169C(v94, v97 + v98[16], &qword_27F245CE8);
  sub_24F4C651C(v95, v97 + v98[20], type metadata accessor for TimeLeftView);
  sub_24F4C6584(v86, type metadata accessor for TimeLeftView);
  sub_24E601704(v93, &qword_27F245CE8);
  sub_24E601704(v91, &qword_27F245CF0);
  sub_24E601704(v126, &qword_27F245CF8);
  sub_24F4C6584(v95, type metadata accessor for TimeLeftView);
  sub_24E601704(v94, &qword_27F245CE8);
  sub_24E601704(v92, &qword_27F245CF0);
  return sub_24E601704(v124, &qword_27F245CF8);
}

uint64_t sub_24F4C8D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v73 = a3;
  v71 = a4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CF0);
  MEMORY[0x28223BE20](v74);
  v72 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = v66 - v8;
  MEMORY[0x28223BE20](v9);
  v68 = v66 - v10;
  MEMORY[0x28223BE20](v11);
  v77 = v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245D08);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x28223BE20](v13);
  v67 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v66 - v16;
  v78 = a1;
  v79 = a2;
  sub_24E600AEC();

  v18 = sub_24F925E18();
  v20 = v19;
  v22 = v21;
  sub_24F9258F8();
  v23 = sub_24F925C98();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_24E600B40(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v78 = v23;
  v79 = v25;
  v27 &= 1u;
  v80 = v27;
  v81 = v29;
  v82 = KeyPath;
  v83 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  sub_24E62FBF4();
  v75 = v17;
  sub_24F9268B8();
  sub_24E600B40(v23, v25, v27);

  sub_24F925998();
  v32 = sub_24F925C98();
  v34 = v33;
  LOBYTE(v20) = v35;
  v37 = v36;

  v38 = swift_getKeyPath();
  v78 = v32;
  v79 = v34;
  v80 = v20 & 1;
  v81 = v37;
  v82 = v38;
  v83 = 0;
  v39 = v77;
  v66[1] = v31;
  sub_24F9268B8();
  sub_24E600B40(v32, v34, v20 & 1);

  LODWORD(v20) = sub_24F9251C8();
  v40 = (v39 + *(v74 + 36));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  v42 = *(v41 + 36);
  v43 = *MEMORY[0x277CE13B8];
  v44 = sub_24F927748();
  v45 = *(*(v44 - 8) + 104);
  v45(&v40[v42], v43, v44);
  *v40 = v20;
  if (qword_27F2112B0 != -1)
  {
    swift_once();
  }

  v46 = qword_27F245AA0;
  type metadata accessor for StateDescriptionView(0);
  v47 = sub_24F91F578();
  v48 = [v46 stringFromDate_];

  v49 = sub_24F92B0D8();
  v51 = v50;

  v52 = swift_getKeyPath();
  v78 = v49;
  v79 = v51;
  v80 = 0;
  v81 = MEMORY[0x277D84F90];
  v82 = v52;
  v83 = 0;
  v53 = v68;
  sub_24F9268B8();

  v54 = sub_24F9251C8();
  v55 = (v53 + *(v74 + 36));
  v45(&v55[*(v41 + 36)], v43, v44);
  *v55 = v54;
  v57 = v69;
  v56 = v70;
  v58 = *(v69 + 16);
  v59 = v67;
  v58(v67, v75, v70);
  sub_24E60169C(v77, v76, &qword_27F245CF0);
  v60 = v72;
  sub_24E60169C(v53, v72, &qword_27F245CF0);
  v61 = v71;
  v58(v71, v59, v56);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245D10);
  v63 = v76;
  sub_24E60169C(v76, &v61[*(v62 + 48)], &qword_27F245CF0);
  sub_24E60169C(v60, &v61[*(v62 + 64)], &qword_27F245CF0);
  sub_24E601704(v53, &qword_27F245CF0);
  sub_24E601704(v77, &qword_27F245CF0);
  v64 = *(v57 + 8);
  v64(v75, v56);
  sub_24E601704(v60, &qword_27F245CF0);
  sub_24E601704(v63, &qword_27F245CF0);
  return (v64)(v59, v56);
}

uint64_t sub_24F4C936C@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245D50);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v16, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v17;
    v15 = v18;
    *a3 = v16;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F4C94D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B40);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v44 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B48);
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v5 = &v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B50);
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B58);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v13 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F4C9BEC();
  v14 = v52;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v15 = v51;
  v52 = v10;
  v16 = sub_24F92CC78();
  v17 = (2 * *(v16 + 16)) | 1;
  v54 = v16;
  v55 = v16 + 32;
  v56 = 0;
  v57 = v17;
  v18 = sub_24E643434();
  v19 = v9;
  if (v18 == 3 || v56 != v57 >> 1)
  {
    v26 = sub_24F92C918();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v28 = &type metadata for ChallengeDetailDescription.ChallengeState;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v52 + 8))(v12, v19);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v20 = v18;
  if (v18)
  {
    if (v18 == 1)
    {
      v58 = 1;
      sub_24F4C9C94();
      v21 = v5;
      v22 = v19;
      sub_24F92CBA8();
      v58 = 0;
      v23 = v45;
      v24 = sub_24F92CC28();
      v25 = v52;
      v44 = v24;
      v49 = v34;
      v51 = v12;
      v58 = 1;
      v35 = sub_24F92CC28();
      v36 = v23;
      v39 = v35;
      v41 = v40;
      (*(v48 + 8))(v21, v36);
      (*(v25 + 8))(v51, v22);
      swift_unknownObjectRelease();
      v43 = v49;
      v42 = v50;
    }

    else
    {
      v58 = 2;
      sub_24F4C9C40();
      sub_24F92CBA8();
      v42 = v50;
      v30 = v47;
      v44 = sub_24F92CC28();
      v43 = v38;
      (*(v49 + 8))(v15, v30);
      (*(v52 + 8))(v12, v19);
      swift_unknownObjectRelease();
      v39 = 0;
      v41 = 0;
    }
  }

  else
  {
    v58 = 0;
    sub_24F4C9CE8();
    sub_24F92CBA8();
    v31 = v6;
    v32 = sub_24F92CBC8();
    v33 = v52;
    v43 = v37;
    v44 = v32;
    (*(v46 + 8))(v8, v31);
    (*(v33 + 8))(v12, v19);
    swift_unknownObjectRelease();
    v39 = 0;
    v41 = 0;
    v42 = v50;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v53);
  *v42 = v44;
  *(v42 + 8) = v43;
  *(v42 + 16) = v39;
  *(v42 + 24) = v41;
  *(v42 + 32) = v20;
  return result;
}

unint64_t sub_24F4C9BEC()
{
  result = qword_27F245B60;
  if (!qword_27F245B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245B60);
  }

  return result;
}

unint64_t sub_24F4C9C40()
{
  result = qword_27F245B68;
  if (!qword_27F245B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245B68);
  }

  return result;
}

unint64_t sub_24F4C9C94()
{
  result = qword_27F245B70;
  if (!qword_27F245B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245B70);
  }

  return result;
}

unint64_t sub_24F4C9CE8()
{
  result = qword_27F245B78;
  if (!qword_27F245B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245B78);
  }

  return result;
}

uint64_t sub_24F4C9DA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F4C9E60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F648();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F4C9F04()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24F91F648();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F4C9FA4()
{
  result = qword_27F245BB0;
  if (!qword_27F245BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245AD8);
    sub_24E602068(&qword_27F245BB8, &qword_27F245AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245BB0);
  }

  return result;
}

unint64_t sub_24F4CA07C()
{
  result = qword_27F245BC0;
  if (!qword_27F245BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245BC0);
  }

  return result;
}

unint64_t sub_24F4CA0D4()
{
  result = qword_27F245BC8;
  if (!qword_27F245BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245BC8);
  }

  return result;
}

unint64_t sub_24F4CA12C()
{
  result = qword_27F245BD0;
  if (!qword_27F245BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245BD0);
  }

  return result;
}

unint64_t sub_24F4CA184()
{
  result = qword_27F245BD8;
  if (!qword_27F245BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245BD8);
  }

  return result;
}

unint64_t sub_24F4CA1DC()
{
  result = qword_27F245BE0;
  if (!qword_27F245BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245BE0);
  }

  return result;
}

unint64_t sub_24F4CA234()
{
  result = qword_27F245BE8;
  if (!qword_27F245BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245BE8);
  }

  return result;
}

unint64_t sub_24F4CA28C()
{
  result = qword_27F245BF0;
  if (!qword_27F245BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245BF0);
  }

  return result;
}

unint64_t sub_24F4CA2E4()
{
  result = qword_27F245BF8;
  if (!qword_27F245BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245BF8);
  }

  return result;
}

unint64_t sub_24F4CA33C()
{
  result = qword_27F245C00;
  if (!qword_27F245C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C00);
  }

  return result;
}

unint64_t sub_24F4CA394()
{
  result = qword_27F245C08;
  if (!qword_27F245C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C08);
  }

  return result;
}

unint64_t sub_24F4CA3EC()
{
  result = qword_27F245C10;
  if (!qword_27F245C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C10);
  }

  return result;
}

unint64_t sub_24F4CA444()
{
  result = qword_27F245C18;
  if (!qword_27F245C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C18);
  }

  return result;
}

unint64_t sub_24F4CA49C()
{
  result = qword_27F245C20;
  if (!qword_27F245C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C20);
  }

  return result;
}

unint64_t sub_24F4CA4F4()
{
  result = qword_27F245C28;
  if (!qword_27F245C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C28);
  }

  return result;
}

unint64_t sub_24F4CA54C()
{
  result = qword_27F245C30;
  if (!qword_27F245C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C30);
  }

  return result;
}

uint64_t sub_24F4CA5A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657469766E69 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F4CA6C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEF656D614E647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA75C60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA75C80 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_24F4CA9FC()
{
  result = qword_27F245C70;
  if (!qword_27F245C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245C58);
    sub_24E602068(&qword_27F245C78, &qword_27F245C60);
    sub_24F4CAAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C70);
  }

  return result;
}

unint64_t sub_24F4CAAB4()
{
  result = qword_27F245C80;
  if (!qword_27F245C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245C40);
    sub_24E602068(&qword_27F245C88, &qword_27F245C90);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C80);
  }

  return result;
}

unint64_t sub_24F4CAB98()
{
  result = qword_27F245C98;
  if (!qword_27F245C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245C38);
    sub_24E602068(&qword_27F245CA0, &qword_27F245CA8);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245C98);
  }

  return result;
}

uint64_t sub_24F4CACB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F648();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24F4CAD8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F648();
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24F4CAE48()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24F91F648();
    if (v1 <= 0x3F)
    {
      sub_24F4CAF14(319, &qword_27F21D618, MEMORY[0x277CC9578], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F4CAF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F4CAF7C()
{
  result = qword_27F245D28;
  if (!qword_27F245D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245D30);
    sub_24F4CA9FC();
    sub_24F4CAB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245D28);
  }

  return result;
}

uint64_t sub_24F4CB024()
{
  v1 = (type metadata accessor for TimeLeftView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24F91F648();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F4CB120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeLeftView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F4CB184@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeLeftView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F4C6B7C(v4, a1);
}

uint64_t sub_24F4CB204()
{

  return swift_deallocObject();
}

unint64_t sub_24F4CB244()
{
  result = qword_27F245D40;
  if (!qword_27F245D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245D40);
  }

  return result;
}

unint64_t sub_24F4CB2C4()
{
  result = qword_27F245D58;
  if (!qword_27F245D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245D60);
    sub_24F4CB37C();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245D58);
  }

  return result;
}

unint64_t sub_24F4CB37C()
{
  result = qword_27F245D68;
  if (!qword_27F245D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245D38);
    sub_24F4CB244();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245D68);
  }

  return result;
}

unint64_t ChallengesLeaderboardSuggestion.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6F6272656461656CLL;
  *(inited + 40) = 0xEB00000000647261;
  *(inited + 72) = type metadata accessor for Leaderboard(0);
  *(inited + 80) = sub_24F4CC0D0(&qword_27F21B450, type metadata accessor for Leaderboard);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F4CC118(v2, boxed_opaque_existential_1, type metadata accessor for Leaderboard);
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x800000024FA6B270;
  v6 = *(v2 + *(type metadata accessor for ChallengesLeaderboardSuggestion() + 20));
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  *(inited + 136) = sub_24F4CC034(&qword_27F21BC38, &qword_27F215388);
  *(inited + 104) = v6;

  v7 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t type metadata accessor for ChallengesLeaderboardSuggestion()
{
  result = qword_27F245D88;
  if (!qword_27F245D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F4CB6AC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_24F4CB6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6B270 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F4CB7DC(uint64_t a1)
{
  v2 = sub_24F4CBFE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4CB818(uint64_t a1)
{
  v2 = sub_24F4CBFE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesLeaderboardSuggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245D70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4CBFE0();
  sub_24F92D128();
  v12 = 0;
  type metadata accessor for Leaderboard(0);
  sub_24F4CC0D0(&qword_27F21B470, type metadata accessor for Leaderboard);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ChallengesLeaderboardSuggestion() + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    sub_24F4CC034(&qword_27F21BC30, &qword_27F213E28);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ChallengesLeaderboardSuggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245D80);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ChallengesLeaderboardSuggestion();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4CBFE0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_24F4CC0D0(&qword_27F21B488, type metadata accessor for Leaderboard);
  v14 = v19;
  sub_24F92CC68();
  sub_24E90FDA8(v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  v22 = 1;
  sub_24F4CC034(&qword_27F2196A8, &qword_27F213E38);
  sub_24F92CC68();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_24F4CC118(v12, v17, type metadata accessor for ChallengesLeaderboardSuggestion);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F4CC180(v12, type metadata accessor for ChallengesLeaderboardSuggestion);
}

unint64_t sub_24F4CBDF4@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6F6272656461656CLL;
  *(inited + 40) = 0xEB00000000647261;
  *(inited + 72) = type metadata accessor for Leaderboard(0);
  *(inited + 80) = sub_24F4CC0D0(&qword_27F21B450, type metadata accessor for Leaderboard);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F4CC118(v4, boxed_opaque_existential_1, type metadata accessor for Leaderboard);
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x800000024FA6B270;
  v8 = *(v4 + *(a1 + 20));
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  *(inited + 136) = sub_24F4CC034(&qword_27F21BC38, &qword_27F215388);
  *(inited + 104) = v8;

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v9;
  return result;
}

unint64_t sub_24F4CBFE0()
{
  result = qword_27F245D78;
  if (!qword_27F245D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245D78);
  }

  return result;
}

uint64_t sub_24F4CC034(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24F4CC0D0(a2, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F4CC0D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4CC118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4CC180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4CC1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Leaderboard(0);
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

uint64_t sub_24F4CC2C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Leaderboard(0);
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

void sub_24F4CC37C()
{
  type metadata accessor for Leaderboard(319);
  if (v0 <= 0x3F)
  {
    sub_24E76AE60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F4CC414()
{
  result = qword_27F245D98;
  if (!qword_27F245D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245D98);
  }

  return result;
}

unint64_t sub_24F4CC46C()
{
  result = qword_27F245DA0;
  if (!qword_27F245DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245DA0);
  }

  return result;
}

unint64_t sub_24F4CC4C4()
{
  result = qword_27F245DA8;
  if (!qword_27F245DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245DA8);
  }

  return result;
}

uint64_t sub_24F4CC58C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v146 = a5;
  v144 = a4;
  v166 = a3;
  v162 = a2;
  v165 = a1;
  v164 = a6;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v150);
  v145 = &v118 - v6;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F20);
  MEMORY[0x28223BE20](v148);
  v149 = &v118 - v7;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F28);
  MEMORY[0x28223BE20](v161);
  v151 = &v118 - v8;
  v123 = type metadata accessor for CardPrimaryActionButton(0);
  MEMORY[0x28223BE20](v123);
  v118 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F30);
  MEMORY[0x28223BE20](v120);
  v122 = &v118 - v10;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F38);
  MEMORY[0x28223BE20](v121);
  v119 = (&v118 - v11);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F40);
  MEMORY[0x28223BE20](v128);
  v124 = &v118 - v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F48);
  MEMORY[0x28223BE20](v132);
  v134 = &v118 - v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F50);
  MEMORY[0x28223BE20](v125);
  v126 = &v118 - v14;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F58);
  MEMORY[0x28223BE20](v133);
  v127 = &v118 - v15;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F60);
  MEMORY[0x28223BE20](v131);
  v129 = (&v118 - v16);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F68);
  MEMORY[0x28223BE20](v147);
  v135 = &v118 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v118 - v19;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10);
  MEMORY[0x28223BE20](v139);
  v130 = (&v118 - v21);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F70);
  MEMORY[0x28223BE20](v136);
  v138 = &v118 - v22;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F78);
  MEMORY[0x28223BE20](v156);
  v140 = &v118 - v23;
  v137 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v137);
  v25 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v118 - v27;
  v29 = sub_24F9289E8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F80);
  MEMORY[0x28223BE20](v143);
  v34 = &v118 - v33;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F88);
  MEMORY[0x28223BE20](v157);
  v160 = &v118 - v35;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F90);
  MEMORY[0x28223BE20](v152);
  v154 = &v118 - v36;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245F98);
  MEMORY[0x28223BE20](v141);
  v38 = &v118 - v37;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245FA0);
  MEMORY[0x28223BE20](v153);
  v142 = &v118 - v39;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245FA8);
  MEMORY[0x28223BE20](v158);
  v155 = &v118 - v40;
  v41 = type metadata accessor for FriendRequestCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245FB0);
  MEMORY[0x28223BE20](*(v163 - 8));
  v44 = v165;
  v159 = &v118 - v45;
  v167 = v46;
  if (v165 == 4)
  {
    v47 = v166;
    if (!v166)
    {
      goto LABEL_26;
    }

    goto LABEL_7;
  }

  if (v165 != 3)
  {
    v47 = v166;
    v51 = v165;
    if ((sub_24E92D030(v165, v162, v166) & 1) == 0)
    {
      goto LABEL_26;
    }

    v44 = v51;
    if (v51 <= 0xBu)
    {
      if (v51 == 2)
      {
        v85 = type metadata accessor for FriendRequestCard();
        v86 = *(v30 + 16);
        v87 = v162;
        v86(v43, v162 + *(v85 + 36), v29);
        v86(&v43[v41[5]], v87 + *(v85 + 40), v29);
        v43[v41[6]] = v47;
        v88 = &v43[v41[7]];
        type metadata accessor for CardSafeArea(0);
        sub_24F4D1DFC(&qword_27F214D10, type metadata accessor for CardSafeArea);
        *v88 = sub_24F923598();
        v88[8] = v89 & 1;
        sub_24F4D22B8(v43, v38, type metadata accessor for FriendRequestCardConfiguration.VisualView);
        swift_storeEnumTagMultiPayload();
        sub_24F4D1DFC(&qword_27F245FF0, type metadata accessor for FriendRequestCardConfiguration.VisualView);
        sub_24F4D1F8C();
        v90 = v142;
        sub_24F924E28();
        sub_24E60169C(v90, v154, &qword_27F245FA0);
        swift_storeEnumTagMultiPayload();
        sub_24F4D1ED0();
        sub_24F4D2100();
        v91 = v155;
        sub_24F924E28();
        sub_24E601704(v90, &qword_27F245FA0);
        sub_24E60169C(v91, v160, &qword_27F245FA8);
        swift_storeEnumTagMultiPayload();
        sub_24F4D1E44();
        sub_24F4D21BC();
        v50 = v159;
        sub_24F924E28();
        sub_24E601704(v91, &qword_27F245FA8);
        sub_24F4D2320(v43, type metadata accessor for FriendRequestCardConfiguration.VisualView);
        goto LABEL_24;
      }

      if (v51 == 11)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        (*(*(v52 - 8) + 56))(v25, dword_24FA01C84[v47], 5, v52);
        sub_24F4D2380(v25, v28, type metadata accessor for CardContentBackgroundStyle);
        sub_24F4D22B8(v28, v138, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24F4D1DFC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E63D150();
        v53 = v140;
        sub_24F924E28();
        sub_24E60169C(v53, v154, &qword_27F245F78);
        swift_storeEnumTagMultiPayload();
        sub_24F4D1ED0();
        sub_24F4D2100();
        v54 = v155;
        sub_24F924E28();
        sub_24E601704(v53, &qword_27F245F78);
        sub_24E60169C(v54, v160, &qword_27F245FA8);
        swift_storeEnumTagMultiPayload();
        sub_24F4D1E44();
        sub_24F4D21BC();
        v50 = v159;
        sub_24F924E28();
        sub_24E601704(v54, &qword_27F245FA8);
        sub_24F4D2320(v28, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_24;
      }

LABEL_7:
      v48 = v145;
      sub_24E923978(v44, v162, v47, v144, v146, v145);
      sub_24E60169C(v48, v149, &qword_27F214A20);
      swift_storeEnumTagMultiPayload();
      sub_24F4D1BA4();
      sub_24E701970();
      v49 = v151;
      sub_24F924E28();
      sub_24E60169C(v49, v160, &qword_27F245F28);
      swift_storeEnumTagMultiPayload();
      sub_24F4D1E44();
      sub_24F4D21BC();
      v50 = v159;
      sub_24F924E28();
      sub_24E601704(v49, &qword_27F245F28);
      sub_24E601704(v48, &qword_27F214A20);
LABEL_24:
      v80 = v163;
      v79 = v164;
LABEL_25:
      sub_24F4D2248(v50, v79);
      return (*(v167 + 56))(v79, 0, 1, v80);
    }

    if (v51 == 12)
    {
      v92 = sub_24F926C98();
      v93 = type metadata accessor for FriendRequestCard();
      (*(v30 + 16))(v20, v162 + *(v93 + 40), v29);
      (*(v30 + 56))(v20, 0, 1, v29);
      v94 = v130;
      sub_24F6C4E24(v20, v47 != 5, v92, v130);

      sub_24E601704(v20, &qword_27F213FB0);
      v75 = &qword_27F214A10;
      sub_24E60169C(v94, v138, &qword_27F214A10);
      swift_storeEnumTagMultiPayload();
      sub_24F4D1DFC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
      sub_24E63D150();
      v95 = v140;
      sub_24F924E28();
      sub_24E60169C(v95, v154, &qword_27F245F78);
      swift_storeEnumTagMultiPayload();
      sub_24F4D1ED0();
      sub_24F4D2100();
      v96 = v155;
      sub_24F924E28();
      sub_24E601704(v95, &qword_27F245F78);
      sub_24E60169C(v96, v160, &qword_27F245FA8);
      swift_storeEnumTagMultiPayload();
      sub_24F4D1E44();
      sub_24F4D21BC();
      v50 = v159;
      sub_24F924E28();
      sub_24E601704(v96, &qword_27F245FA8);
      v78 = v94;
LABEL_23:
      sub_24E601704(v78, v75);
      goto LABEL_24;
    }

    if (v51 != 13)
    {
      goto LABEL_7;
    }

    if (v47 - 3 >= 3)
    {
      v97 = v162;
      if (v47 >= 2u)
      {
        v105 = type metadata accessor for FriendRequestCard();
        sub_24E60169C(v97 + *(v105 + 44), &v168, qword_27F24EC90);
        if (v169)
        {
          sub_24E612C80(&v168, &v170);
          v106 = sub_24F9249A8();
          v107 = v119;
          *v119 = v106;
          *(v107 + 8) = 0;
          *(v107 + 16) = 1;
          v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246038);
          sub_24F4CE578(v97, &v170, v146, v107 + *(v108 + 44));
          sub_24E60169C(v107, v122, &qword_27F245F38);
          swift_storeEnumTagMultiPayload();
          sub_24E602068(&qword_27F245FD8, &qword_27F245F38);
          sub_24F4D1DFC(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton);
          v109 = v124;
          sub_24F924E28();
          sub_24E601704(v107, &qword_27F245F38);
          __swift_destroy_boxed_opaque_existential_1(&v170);
        }

        else
        {
          sub_24E601704(&v168, qword_27F21B590);
          v110 = v97 + *(v105 + 32);
          v111 = type metadata accessor for CommonCardAttributes(0);
          v112 = v118;
          sub_24E60169C(v110 + *(v111 + 80), v118, &qword_27F21B270);
          sub_24E60169C(v110 + *(v111 + 76), &v170, qword_27F24EC90);
          v113 = v123;
          v114 = v112 + *(v123 + 20);
          v115 = v171;
          *v114 = v170;
          *(v114 + 16) = v115;
          *(v114 + 32) = v172;
          *(v112 + *(v113 + 24)) = 0;
          *(v112 + *(v113 + 28)) = v146;
          sub_24F4D22B8(v112, v122, type metadata accessor for CardPrimaryActionButton);
          swift_storeEnumTagMultiPayload();
          sub_24E602068(&qword_27F245FD8, &qword_27F245F38);
          sub_24F4D1DFC(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton);

          v109 = v124;
          sub_24F924E28();
          sub_24F4D2320(v112, type metadata accessor for CardPrimaryActionButton);
        }

        v80 = v163;
        v79 = v164;
        v103 = v160;
        v50 = v159;
        sub_24E60169C(v109, v126, &qword_27F245F40);
        swift_storeEnumTagMultiPayload();
        v166 = sub_24E602068(&qword_27F245FC8, &qword_27F245F60);
        sub_24F4D1D14();
        v116 = v127;
        sub_24F924E28();
        sub_24E60169C(v116, v134, &qword_27F245F58);
        swift_storeEnumTagMultiPayload();
        sub_24F4D1C5C();
        v117 = v109;
        v58 = v135;
        sub_24F924E28();
        sub_24E601704(v116, &qword_27F245F58);
        sub_24E601704(v117, &qword_27F245F40);
        goto LABEL_34;
      }

      v98 = sub_24F9249A8();
      v99 = v129;
      *v129 = v98;
      *(v99 + 8) = 0;
      *(v99 + 16) = 1;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246030);
      sub_24F4CE7F8(v97, v146, v99 + *(v100 + 44));
      sub_24E60169C(v99, v126, &qword_27F245F60);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F245FC8, &qword_27F245F60);
      sub_24F4D1D14();
      v101 = v127;
      sub_24F924E28();
      sub_24E60169C(v101, v134, &qword_27F245F58);
      swift_storeEnumTagMultiPayload();
      sub_24F4D1C5C();
      v102 = v135;
      sub_24F924E28();
      v58 = v102;
      sub_24E601704(v101, &qword_27F245F58);
      v59 = v99;
    }

    else
    {
      v55 = sub_24F9249A8();
      v56 = v129;
      *v129 = v55;
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246030);
      sub_24F4CEBA8(v162, v47, v146, v56 + *(v57 + 44));
      sub_24E60169C(v56, v134, &qword_27F245F60);
      swift_storeEnumTagMultiPayload();
      sub_24F4D1C5C();
      sub_24E602068(&qword_27F245FC8, &qword_27F245F60);
      v58 = v135;
      sub_24F924E28();
      v59 = v56;
    }

    sub_24E601704(v59, &qword_27F245F60);
    v80 = v163;
    v79 = v164;
    v103 = v160;
    v50 = v159;
LABEL_34:
    sub_24E60169C(v58, v149, &qword_27F245F68);
    swift_storeEnumTagMultiPayload();
    sub_24F4D1BA4();
    sub_24E701970();
    v104 = v151;
    sub_24F924E28();
    sub_24E60169C(v104, v103, &qword_27F245F28);
    swift_storeEnumTagMultiPayload();
    sub_24F4D1E44();
    sub_24F4D21BC();
    sub_24F924E28();
    sub_24E601704(v104, &qword_27F245F28);
    sub_24E601704(v58, &qword_27F245F68);
    goto LABEL_25;
  }

  if (v166 <= 2u && !v166)
  {

LABEL_20:
    v61 = type metadata accessor for FriendRequestCard();
    (*(v30 + 16))(v32, v162 + *(v61 + 40), v29);
    v62 = type metadata accessor for PlayerAvatarView(0);
    v63 = &v34[v62[6]];
    *(v63 + 4) = 0;
    *v63 = 0u;
    *(v63 + 1) = 0u;
    (*(v30 + 32))(v34, v32, v29);
    type metadata accessor for PlayerAvatarView.AvatarType(0);
    swift_storeEnumTagMultiPayload();
    v64 = v62[5];
    v65 = type metadata accessor for PlayerAvatarView.Overlay(0);
    (*(*(v65 - 8) + 56))(&v34[v64], 1, 1, v65);
    v34[v62[7]] = 7;
    if (qword_27F211968 != -1)
    {
      swift_once();
    }

    v66 = xmmword_27F254460;
    v67 = qword_27F254470;
    v68 = qword_27F254478;
    v69 = sub_24F927618();
    v71 = v70;
    v72 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246008) + 36)];
    *v72 = v68;
    *(v72 + 1) = v67;
    *(v72 + 1) = v66;
    *(v72 + 4) = v69;
    *(v72 + 5) = v71;

    sub_24F927618();
    sub_24F9238C8();
    v73 = &v34[*(v143 + 36)];
    v74 = v171;
    *v73 = v170;
    *(v73 + 1) = v74;
    *(v73 + 2) = v172;
    v75 = &qword_27F245F80;
    sub_24E60169C(v34, v38, &qword_27F245F80);
    swift_storeEnumTagMultiPayload();
    sub_24F4D1DFC(&qword_27F245FF0, type metadata accessor for FriendRequestCardConfiguration.VisualView);
    sub_24F4D1F8C();
    v76 = v142;
    sub_24F924E28();
    sub_24E60169C(v76, v154, &qword_27F245FA0);
    swift_storeEnumTagMultiPayload();
    sub_24F4D1ED0();
    sub_24F4D2100();
    v77 = v155;
    sub_24F924E28();
    sub_24E601704(v76, &qword_27F245FA0);
    sub_24E60169C(v77, v160, &qword_27F245FA8);
    swift_storeEnumTagMultiPayload();
    sub_24F4D1E44();
    sub_24F4D21BC();
    v50 = v159;
    sub_24F924E28();
    sub_24E601704(v77, &qword_27F245FA8);
    v78 = v34;
    goto LABEL_23;
  }

  v60 = sub_24F92CE08();

  if (v60)
  {
    goto LABEL_20;
  }

LABEL_26:
  v82 = *(v167 + 56);
  v84 = v163;
  v83 = v164;

  return v82(v83, 1, 1, v84);
}

uint64_t sub_24F4CE578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v29 = a4;
  v6 = type metadata accessor for CardPrimaryActionButton(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = type metadata accessor for FriendRequestCard();
  sub_24E60169C(a1 + v19[14], v18, &qword_27F21B270);
  sub_24E615E00(v28, &v18[v7[7]]);
  v18[v7[8]] = 0;
  *&v18[v7[9]] = a3;
  sub_24E60169C(a1 + v19[13], v15, &qword_27F21B270);
  v20 = a1 + v19[8];
  v21 = type metadata accessor for CommonCardAttributes(0);
  sub_24E60169C(v20 + *(v21 + 76), v30, qword_27F24EC90);
  v22 = &v15[v7[7]];
  v23 = v30[1];
  *v22 = v30[0];
  *(v22 + 1) = v23;
  *(v22 + 4) = v31;
  v15[v7[8]] = 0;
  *&v15[v7[9]] = a3;
  sub_24F4D22B8(v18, v12, type metadata accessor for CardPrimaryActionButton);
  sub_24F4D22B8(v15, v9, type metadata accessor for CardPrimaryActionButton);
  v24 = v29;
  sub_24F4D22B8(v12, v29, type metadata accessor for CardPrimaryActionButton);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246050);
  sub_24F4D22B8(v9, v24 + *(v25 + 48), type metadata accessor for CardPrimaryActionButton);
  swift_retain_n();
  sub_24F4D2320(v15, type metadata accessor for CardPrimaryActionButton);
  sub_24F4D2320(v18, type metadata accessor for CardPrimaryActionButton);
  sub_24F4D2320(v9, type metadata accessor for CardPrimaryActionButton);
  return sub_24F4D2320(v12, type metadata accessor for CardPrimaryActionButton);
}

uint64_t sub_24F4CE7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardPrimaryActionButton(0);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246040);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v19 = type metadata accessor for FriendRequestCard();
  sub_24E60169C(a1 + v19[11], &v26, qword_27F24EC90);
  if (v27)
  {
    sub_24E612C80(&v26, v28);
    sub_24E60169C(a1 + v19[14], v12, &qword_27F21B270);
    sub_24E612C80(v28, &v12[v6[5]]);
    v12[v6[6]] = 0;
    *&v12[v6[7]] = a2;
    sub_24F4D2380(v12, v18, type metadata accessor for CardPrimaryActionButton);
    (*(v7 + 56))(v18, 0, 1, v6);
  }

  else
  {
    sub_24E601704(&v26, qword_27F21B590);
    (*(v7 + 56))(v18, 1, 1, v6);
  }

  sub_24E60169C(a1 + v19[13], v12, &qword_27F21B270);
  v20 = a1 + v19[8];
  v21 = type metadata accessor for CommonCardAttributes(0);
  sub_24E60169C(v20 + *(v21 + 76), v28, qword_27F24EC90);
  v22 = &v12[v6[5]];
  v23 = v28[1];
  *v22 = v28[0];
  *(v22 + 1) = v23;
  *(v22 + 4) = v29;
  v12[v6[6]] = 0;
  *&v12[v6[7]] = a2;
  sub_24E60169C(v18, v15, &qword_27F246040);
  sub_24F4D22B8(v12, v9, type metadata accessor for CardPrimaryActionButton);
  sub_24E60169C(v15, a3, &qword_27F246040);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246048);
  sub_24F4D22B8(v9, a3 + *(v24 + 48), type metadata accessor for CardPrimaryActionButton);

  sub_24F4D2320(v12, type metadata accessor for CardPrimaryActionButton);
  sub_24E601704(v18, &qword_27F246040);
  sub_24F4D2320(v9, type metadata accessor for CardPrimaryActionButton);
  return sub_24E601704(v15, &qword_27F246040);
}

uint64_t sub_24F4CEBA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v54 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for CardPrimaryActionButton(0);
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v17);
  v51 = &v47 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246040);
  MEMORY[0x28223BE20](v25 - 8);
  v50 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v47 - v28;
  v30 = type metadata accessor for FriendRequestCard();
  sub_24E60169C(a1 + v30[11], &v55, qword_27F24EC90);
  v48 = a2;
  v47 = a1;
  if (*(&v56 + 1))
  {
    sub_24E612C80(&v55, v58);
    sub_24E60169C(a1 + v30[12], v10, &qword_27F21B270);
    sub_24E615E00(v58, &v55);
    if (a2 < 4u || a2 == 4)
    {
      v32 = sub_24F92CE08();
    }

    else
    {
      v32 = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_24E6009C8(v10, v21, &qword_27F21B270);
    v33 = &v21[v11[5]];
    v34 = v56;
    *v33 = v55;
    *(v33 + 1) = v34;
    *(v33 + 4) = v57;
    v21[v11[6]] = v32 & 1;
    v31 = v54;
    *&v21[v11[7]] = v54;
    sub_24F4D2380(v21, v24, type metadata accessor for CardPrimaryActionButton);
    sub_24F4D2380(v24, v29, type metadata accessor for CardPrimaryActionButton);
    (*(v12 + 56))(v29, 0, 1, v11);
  }

  else
  {
    sub_24E601704(&v55, qword_27F21B590);
    (*(v12 + 56))(v29, 1, 1, v11);
    v31 = v54;
  }

  v35 = v47 + v30[8];
  v36 = type metadata accessor for CommonCardAttributes(0);
  v37 = v49;
  sub_24E60169C(v35 + *(v36 + 80), v49, &qword_27F21B270);
  sub_24E60169C(v35 + *(v36 + 76), v58, qword_27F24EC90);
  if (v48 > 4u)
  {
    v38 = 1;
  }

  else
  {
    v38 = sub_24F92CE08();
  }

  sub_24E6009C8(v37, v16, &qword_27F21B270);
  v39 = &v16[v11[5]];
  v40 = v58[1];
  *v39 = v58[0];
  *(v39 + 1) = v40;
  *(v39 + 4) = v59;
  v16[v11[6]] = v38 & 1;
  *&v16[v11[7]] = v31;
  v41 = v51;
  sub_24F4D2380(v16, v51, type metadata accessor for CardPrimaryActionButton);
  v42 = v50;
  sub_24E60169C(v29, v50, &qword_27F246040);
  v43 = v52;
  sub_24F4D22B8(v41, v52, type metadata accessor for CardPrimaryActionButton);
  v44 = v53;
  sub_24E60169C(v42, v53, &qword_27F246040);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246048);
  sub_24F4D22B8(v43, v44 + *(v45 + 48), type metadata accessor for CardPrimaryActionButton);

  sub_24F4D2320(v41, type metadata accessor for CardPrimaryActionButton);
  sub_24E601704(v29, &qword_27F246040);
  sub_24F4D2320(v43, type metadata accessor for CardPrimaryActionButton);
  return sub_24E601704(v42, &qword_27F246040);
}

__n128 sub_24F4CF290@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246080);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246088);
  MEMORY[0x28223BE20](v35);
  v12 = &v33 - v11;
  sub_24F4CF744(v2, v10);
  v13 = type metadata accessor for FriendRequestCardConfiguration.VisualView(0);
  v14 = v2 + *(v13 + 28);
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    sub_24F92BDC8();
    v34 = v4;
    v17 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v34);
    v15 = v36;
  }

  swift_getKeyPath();
  *&v36 = v15;
  sub_24F4D1DFC(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v18 = *(v15 + 16);

  if (*(v2 + *(v13 + 24)) == 4)
  {

    sub_24F925868();
  }

  else
  {
    v19 = sub_24F92CE08();

    if (v19)
    {
      sub_24F925868();
    }

    else
    {
      sub_24F925848();
    }
  }

  v20 = sub_24EA91914(v18);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_24F925808();
  sub_24E6009C8(v10, v12, &qword_27F246080);
  v28 = &v12[*(v35 + 36)];
  *v28 = v27;
  *(v28 + 1) = v20;
  *(v28 + 2) = v22;
  *(v28 + 3) = v24;
  *(v28 + 4) = v26;
  v28[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v12, a1, &qword_27F246088);
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246090) + 36);
  v30 = v41;
  *(v29 + 64) = v40;
  *(v29 + 80) = v30;
  *(v29 + 96) = v42;
  v31 = v37;
  *v29 = v36;
  *(v29 + 16) = v31;
  result = v39;
  *(v29 + 32) = v38;
  *(v29 + 48) = result;
  return result;
}

uint64_t sub_24F4CF744@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FriendRequestCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246098);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2460A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2460A8);
  MEMORY[0x28223BE20](v43);
  v14 = &v38 - v13;
  v15 = type metadata accessor for FriendRequestCardConfiguration.HeroVisualView(0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + v17[6]);
  v42 = v10;
  if ((v20 - 1) >= 4)
  {
    v40 = v14;
    if (!v20)
    {
      swift_storeEnumTagMultiPayload();
      sub_24F4D2620();
      return sub_24F924E28();
    }

    v30 = v16;
    v31 = v17;
    v32 = sub_24F9289E8();
    v33 = *(*(v32 - 8) + 16);
    v39 = v9;
    v41 = v7;
    v33(v19, a1, v32);
    v33(&v19[v30[5]], a1 + v31[5], v32);
    v19[v30[6]] = 5;
    v34 = &v19[v30[7]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = &v19[v30[8]];
    type metadata accessor for HeroSafeAreaMetrics();
    sub_24F4D1DFC(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
    *v35 = sub_24F923598();
    v35[8] = v36 & 1;
    sub_24F4D22B8(v19, v12, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView);
    swift_storeEnumTagMultiPayload();
    sub_24F4D1DFC(&qword_27F2460B8, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView);
    sub_24F4D1DFC(&qword_27F245FF0, type metadata accessor for FriendRequestCardConfiguration.VisualView);
    v37 = v40;
    sub_24F924E28();
    sub_24E60169C(v37, v39, &qword_27F2460A8);
    swift_storeEnumTagMultiPayload();
    sub_24F4D2620();
    sub_24F924E28();
    sub_24E601704(v37, &qword_27F2460A8);
    v27 = type metadata accessor for FriendRequestCardConfiguration.HeroVisualView;
    v28 = v19;
  }

  else
  {
    v39 = v16;
    v21 = v17;
    v22 = sub_24F9289E8();
    v23 = *(v22 - 8);
    v41 = v7;
    v24 = *(v23 + 16);
    v40 = a2;
    v24(v6, a1, v22);
    v24(&v6[v21[5]], a1 + v21[5], v22);
    v6[v21[6]] = v20;
    v25 = &v6[v21[7]];
    type metadata accessor for CardSafeArea(0);
    sub_24F4D1DFC(&qword_27F214D10, type metadata accessor for CardSafeArea);
    *v25 = sub_24F923598();
    v25[8] = v26 & 1;
    sub_24F4D22B8(v6, v12, type metadata accessor for FriendRequestCardConfiguration.VisualView);
    swift_storeEnumTagMultiPayload();
    sub_24F4D1DFC(&qword_27F2460B8, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView);
    sub_24F4D1DFC(&qword_27F245FF0, type metadata accessor for FriendRequestCardConfiguration.VisualView);
    sub_24F924E28();
    sub_24E60169C(v14, v9, &qword_27F2460A8);
    swift_storeEnumTagMultiPayload();
    sub_24F4D2620();
    sub_24F924E28();
    sub_24E601704(v14, &qword_27F2460A8);
    v27 = type metadata accessor for FriendRequestCardConfiguration.VisualView;
    v28 = v6;
  }

  return sub_24F4D2320(v28, v27);
}

uint64_t sub_24F4CFDE0()
{
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  xmmword_27F245DB0 = xmmword_24FA01720;
  unk_27F245DC0 = xmmword_24FA01730;
  *&xmmword_27F245DD0 = 0x4024000000000000;
  *(&xmmword_27F245DD0 + 8) = xmmword_27F2543E0;
  qword_27F245DE8 = qword_27F2543F0;
  qword_27F245DF0 = qword_27F2543F8;
}

uint64_t sub_24F4CFE78()
{
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  xmmword_27F245DF8 = xmmword_24FA01740;
  unk_27F245E08 = xmmword_24FA01750;
  *&xmmword_27F245E18 = 0x4024000000000000;
  *(&xmmword_27F245E18 + 8) = xmmword_27F2543E0;
  qword_27F245E30 = qword_27F2543F0;
  qword_27F245E38 = qword_27F2543F8;
}

uint64_t sub_24F4CFF10()
{
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  xmmword_27F245E40 = xmmword_24FA01760;
  *algn_27F245E50 = xmmword_24FA01770;
  *&xmmword_27F245E60 = 0x4018000000000000;
  *(&xmmword_27F245E60 + 8) = xmmword_27F2543E0;
  qword_27F245E78 = qword_27F2543F0;
  qword_27F245E80 = qword_27F2543F8;
}

uint64_t sub_24F4CFFA8()
{
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  xmmword_27F245E88 = xmmword_24FA01780;
  unk_27F245E98 = xmmword_24FA01790;
  *&xmmword_27F245EA8 = 0x4010000000000000;
  *(&xmmword_27F245EA8 + 8) = xmmword_27F2543E0;
  qword_27F245EC0 = qword_27F2543F0;
  qword_27F245EC8 = qword_27F2543F8;
}

uint64_t sub_24F4D0040()
{
  if (qword_27F211958 != -1)
  {
    swift_once();
  }

  xmmword_27F245ED0 = xmmword_24FA017A0;
  unk_27F245EE0 = xmmword_24FA017B0;
  *&xmmword_27F245EF0 = 0x4010000000000000;
  *(&xmmword_27F245EF0 + 8) = xmmword_27F254420;
  qword_27F245F08 = qword_27F254430;
  qword_27F245F10 = qword_27F254438;
}

uint64_t sub_24F4D00D8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24F924848();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for FriendRequestCardConfiguration.HeroVisualView(0);
  v9 = *(v1 + v8[6]);
  v10 = v1 + v8[7];
  v11 = *v10;
  v43 = *(v10 + 8);
  if (v43 == 1)
  {
    v53 = v11;
  }

  else
  {

    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v11, 0);
    (*(v46 + 8))(v7, v5);
  }

  v44 = v5;
  if (v9 <= 2)
  {
    if (qword_27F2112D8 != -1)
    {
      swift_once();
    }

    v13 = &xmmword_27F245ED0;
    goto LABEL_16;
  }

  if (v9 == 3)
  {
    if (qword_27F2112D0 != -1)
    {
      swift_once();
    }

    v13 = &xmmword_27F245E88;
  }

  else
  {
    if (v9 == 4)
    {
LABEL_10:
      if (qword_27F2112C8 != -1)
      {
        swift_once();
      }

      v13 = &xmmword_27F245E40;
      goto LABEL_16;
    }

    if (v53 > 1u)
    {
      if (v53 == 2)
      {
        goto LABEL_10;
      }

      if (qword_27F2112B8 != -1)
      {
        swift_once();
      }

      v13 = &xmmword_27F245DB0;
    }

    else
    {
      if (!v53)
      {
        goto LABEL_10;
      }

      if (qword_27F2112C0 != -1)
      {
        swift_once();
      }

      v13 = &xmmword_27F245DF8;
    }
  }

LABEL_16:
  v14 = v13[3];
  v50 = v13[2];
  v51 = v14;
  v52 = *(v13 + 8);
  v15 = v13[1];
  v48 = *v13;
  v49 = v15;
  sub_24F4D2C5C(&v48, v47);
  sub_24F4D072C();
  v17 = v16;
  v18 = sub_24F9289E8();
  v19 = *(*(v18 - 8) + 16);
  v19(v4, v1, v18);
  v19(&v4[v2[5]], v1 + v8[5], v18);
  v4[v2[6]] = v9;
  *&v4[v2[7]] = v17;
  v20 = &v4[v2[8]];
  v21 = v51;
  *(v20 + 2) = v50;
  *(v20 + 3) = v21;
  *(v20 + 8) = v52;
  v22 = v49;
  *v20 = v48;
  *(v20 + 1) = v22;
  v23 = &v4[v2[9]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = sub_24F925828();
  LOBYTE(v23) = *(v1 + v8[8] + 8);

  v25 = v44;
  v26 = v46;
  if ((v23 & 1) == 0)
  {
    sub_24F92BDC8();
    v27 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v26 + 8))(v7, v25);
  }

  sub_24F30A4B8();
  v29 = v28;

  if ((v29 & 1) == 0 && (v43 & 1) == 0)
  {

    sub_24F92BDC8();
    v30 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v11, 0);
    (*(v26 + 8))(v7, v25);
  }

  sub_24F923318();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v45;
  sub_24F4D2380(v4, v45, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2460F8);
  v41 = v39 + *(result + 36);
  *v41 = v24;
  *(v41 + 8) = v32;
  *(v41 + 16) = v34;
  *(v41 + 24) = v36;
  *(v41 + 32) = v38;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_24F4D072C()
{
  v1 = v0;
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FriendRequestCardConfiguration.HeroVisualView(0);
  v7 = *(v0 + *(v6 + 32) + 8);

  if ((v7 & 1) == 0)
  {
    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_24F30A4B8();
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    v12 = v1 + *(v6 + 28);
    v13 = *v12;
    if (*(v12 + 8) != 1)
    {

      sub_24F92BDC8();
      v14 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v13, 0);
      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_24F4D0A08@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView(0);
  v9 = v2 + v8[8];
  v77 = *(v9 + 64);
  v10 = *(v9 + 48);
  v76[2] = *(v9 + 32);
  v76[3] = v10;
  v11 = *(v9 + 16);
  v76[0] = *v9;
  v76[1] = v11;
  if (!v77)
  {
    v15 = *(v2 + v8[6]);
    v16 = v2 + v8[9];
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      v38[0] = *v16;
      if (v15 > 2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      HIDWORD(v37) = *(v2 + v8[6]);

      sub_24F92BDC8();
      v19 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v17, 0);
      (*(v5 + 8))(v7, v4);
      v15 = HIDWORD(v37);
      if (SHIDWORD(v37) > 2)
      {
LABEL_5:
        if (v15 == 3)
        {
          if (qword_27F2112D0 != -1)
          {
            swift_once();
          }

          v18 = &xmmword_27F245E88;
          goto LABEL_17;
        }

        if (v15 != 4)
        {
          if (v38[0] > 1u)
          {
            if (v38[0] != 2)
            {
              if (qword_27F2112B8 != -1)
              {
                swift_once();
              }

              v18 = &xmmword_27F245DB0;
              goto LABEL_17;
            }
          }

          else if (v38[0])
          {
            if (qword_27F2112C0 != -1)
            {
              swift_once();
            }

            v18 = &xmmword_27F245DF8;
            goto LABEL_17;
          }
        }

        if (qword_27F2112C8 != -1)
        {
          swift_once();
        }

        v18 = &xmmword_27F245E40;
LABEL_17:
        v20 = v18[3];
        v62 = v18[2];
        v63 = v20;
        *&v64 = *(v18 + 8);
        v21 = v18[1];
        v60 = *v18;
        v61 = v21;
        sub_24F4D2C5C(&v60, &v52);
        v73 = v62;
        v74 = v63;
        v75 = v64;
        v14 = v60;
        v13 = v61;
        goto LABEL_18;
      }
    }

    if (qword_27F2112D8 != -1)
    {
      swift_once();
    }

    v18 = &xmmword_27F245ED0;
    goto LABEL_17;
  }

  v12 = *(v9 + 48);
  v73 = *(v9 + 32);
  v74 = v12;
  v75 = *(v9 + 64);
  v14 = *v9;
  v13 = *(v9 + 16);
LABEL_18:
  v71 = v14;
  v72 = v13;
  v69[2] = v73;
  v69[3] = v74;
  v70 = v75;
  v69[0] = v14;
  v69[1] = v13;
  sub_24E60169C(v76, &v60, &qword_27F246128);
  *a1 = sub_24F927618();
  a1[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246130);
  sub_24F4D0F70(v2, v69, a1 + *(v23 + 44));
  v24 = *(&v73 + 1);
  v25 = v74;
  v26 = v75;
  v54 = v73;
  v55 = v74;
  *&v56 = v75;
  v52 = v71;
  v53 = v72;
  sub_24F4D2C5C(&v71, &v60);
  v27 = sub_24F927618();
  v29 = v28;
  v40 = v53;
  v41 = v54;
  v42 = v55;
  v39 = v52;
  *&v43 = v56;
  *(&v43 + 1) = v26;
  *&v44 = *(&v25 + 1);
  *(&v44 + 1) = v24;
  v45 = v25;
  v46[2] = v54;
  v46[3] = v55;
  v46[0] = v52;
  v46[1] = v53;
  v47 = v56;
  v48 = v26;
  v49 = *(&v25 + 1);
  v50 = v24;
  v51 = v25;
  sub_24F4D2C5C(&v71, &v60);
  sub_24E60169C(&v39, &v60, &qword_27F246138);
  sub_24E601704(v46, &qword_27F246138);
  v56 = v43;
  v57 = v44;
  v52 = v39;
  v53 = v40;
  v54 = v41;
  v55 = v42;
  *&v58 = v45;
  *(&v58 + 1) = v27;
  v59 = v29;
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246140) + 36);
  v31 = v57;
  *(v30 + 4) = v56;
  *(v30 + 5) = v31;
  *(v30 + 6) = v58;
  v32 = v53;
  *v30 = v52;
  *(v30 + 1) = v32;
  v33 = v55;
  *(v30 + 2) = v54;
  *(v30 + 3) = v33;
  v34 = v41;
  v60 = v39;
  v61 = v40;
  v35 = v42;
  v64 = v43;
  v65 = v44;
  *(v30 + 14) = v59;
  v62 = v34;
  v63 = v35;
  v66 = v45;
  v67 = v27;
  v68 = v29;
  sub_24E60169C(&v52, v38, &qword_27F246148);
  sub_24E601704(&v60, &qword_27F246148);
  return sub_24F4D3078(&v71);
}

uint64_t sub_24F4D0F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v86 = a1;
  v84 = a3;
  v4 = type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView(0);
  v5 = *(v4 - 8);
  v72 = v4 - 8;
  v80 = v5;
  v79 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246150) - 8;
  MEMORY[0x28223BE20](v82);
  v83 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v69 - v9;
  v10 = sub_24F9289E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0) - 8;
  MEMORY[0x28223BE20](v76);
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  v75 = *(v11 + 16);
  v75(v13, a1, v10, v16);
  v19 = type metadata accessor for PlayerAvatarView(0);
  v20 = &v18[v19[6]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v74 = *(v11 + 32);
  v74(v18, v13, v10);
  v73 = type metadata accessor for PlayerAvatarView.AvatarType(0);
  swift_storeEnumTagMultiPayload();
  v21 = v19[5];
  v22 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v23 = *(v22 - 8);
  v70 = *(v23 + 56);
  v71 = v23 + 56;
  v70(&v18[v21], 1, 1, v22);
  v18[v19[7]] = 7;
  v77 = v18;
  v24 = v72;
  v25 = v86;
  sub_24F927618();
  sub_24F9238C8();
  v26 = v76;
  v27 = &v18[*(v76 + 44)];
  v28 = v90;
  *v27 = v89;
  *(v27 + 1) = v28;
  *(v27 + 2) = v91;
  (v75)(v13, v25 + *(v24 + 28), v10);
  v29 = v85;
  v30 = &v85[v19[6]];
  *(v30 + 4) = 0;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v74(v29, v13, v10);
  swift_storeEnumTagMultiPayload();
  v70(&v29[v19[5]], 1, 1, v22);
  v29[v19[7]] = 7;
  sub_24F927618();
  sub_24F9238C8();
  v31 = &v29[*(v26 + 44)];
  v32 = v93;
  v33 = v94;
  *v31 = v92;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  v34 = sub_24F927618();
  v36 = v35;
  v37 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246158) + 36)];
  sub_24F923658();
  v38 = v95;
  v39 = v97;
  v40 = v98;
  v41 = v99;
  v42 = sub_24F926C88();
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246160) + 36);
  v44 = *MEMORY[0x277CE13C0];
  v45 = sub_24F927748();
  v46 = v96;
  (*(*(v45 - 8) + 104))(&v37[v43], v44, v45);
  *v37 = v38;
  *(v37 + 1) = v46;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  *(v37 + 5) = v42;
  *(v37 + 24) = 256;
  v47 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246168) + 36)];
  *v47 = v34;
  v47[1] = v36;
  v76 = sub_24F924C88();
  v48 = v86;
  v49 = v78;
  sub_24F4D22B8(v86, v78, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView);
  v50 = (*(v80 + 80) + 88) & ~*(v80 + 80);
  v51 = swift_allocObject();
  v52 = v87;
  v53 = *(v87 + 48);
  *(v51 + 48) = *(v87 + 32);
  *(v51 + 64) = v53;
  *(v51 + 80) = *(v52 + 64);
  v54 = *(v52 + 16);
  *(v51 + 16) = *v52;
  *(v51 + 32) = v54;
  sub_24F4D2380(v49, v51 + v50, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246170);
  v56 = v85;
  v57 = &v85[*(v55 + 36)];
  *v57 = v76;
  v57[1] = sub_24F4D30AC;
  v57[2] = v51;
  sub_24F4D2C5C(v52, v88);
  v58 = sub_24F9249A8();
  sub_24F4D22B8(v48, v49, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView);
  v59 = swift_allocObject();
  v60 = *(v52 + 48);
  *(v59 + 48) = *(v52 + 32);
  *(v59 + 64) = v60;
  *(v59 + 80) = *(v52 + 64);
  v61 = *(v52 + 16);
  *(v59 + 16) = *v52;
  *(v59 + 32) = v61;
  sub_24F4D2380(v49, v59 + v50, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView);
  v62 = (v56 + *(v82 + 44));
  *v62 = v58;
  v62[1] = sub_24F4D31F8;
  v62[2] = v59;
  v63 = v77;
  v64 = v81;
  sub_24E60169C(v77, v81, &qword_27F2233D0);
  v65 = v83;
  sub_24E60169C(v56, v83, &qword_27F246150);
  v66 = v84;
  sub_24E60169C(v64, v84, &qword_27F2233D0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246178);
  sub_24E60169C(v65, v66 + *(v67 + 48), &qword_27F246150);
  sub_24F4D2C5C(v52, v88);
  sub_24E601704(v56, &qword_27F246150);
  sub_24E601704(v63, &qword_27F2233D0);
  sub_24E601704(v65, &qword_27F246150);
  return sub_24E601704(v64, &qword_27F2233D0);
}

double sub_24F4D17E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F924C88();
  v6 = MEMORY[0x253049740](v5);
  v7 = *(a2 + 16);
  return v6 + v7 * *(a3 + *(type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView(0) + 28));
}

double sub_24F4D1844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F9249A8();
  v6 = MEMORY[0x253049730](v5);
  v7 = *(a2 + 24);
  return v6 + v7 * *(a3 + *(type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView(0) + 28));
}

uint64_t sub_24F4D18AC()
{
  sub_24F926FE8();
  v3 = 0x3FF0000000000000;
  v4 = 0;
  v5 = 0;
  v6 = 0x3FF0000000000000;
  v7 = 0;
  v8 = 0;
  sub_24F925AC8();
  sub_24F0810A4(&v1);
  sub_24F926FE8();
  sub_24F925AC8();
  return sub_24F0810A4(v2);
}

double sub_24F4D1964@<D0>(uint64_t a1@<X8>)
{
  sub_24F925B58();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_24F4D19E0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F4D1A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F4D35B8();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F4D1ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F4D35B8();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F4D1B30(uint64_t a1)
{
  v2 = sub_24F4D35B8();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24F4D1BA4()
{
  result = qword_27F245FB8;
  if (!qword_27F245FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245F68);
    sub_24F4D1C5C();
    sub_24E602068(&qword_27F245FC8, &qword_27F245F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245FB8);
  }

  return result;
}

unint64_t sub_24F4D1C5C()
{
  result = qword_27F245FC0;
  if (!qword_27F245FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245F58);
    sub_24E602068(&qword_27F245FC8, &qword_27F245F60);
    sub_24F4D1D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245FC0);
  }

  return result;
}

unint64_t sub_24F4D1D14()
{
  result = qword_27F245FD0;
  if (!qword_27F245FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245F40);
    sub_24E602068(&qword_27F245FD8, &qword_27F245F38);
    sub_24F4D1DFC(&qword_27F214C78, type metadata accessor for CardPrimaryActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245FD0);
  }

  return result;
}

uint64_t sub_24F4D1DFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F4D1E44()
{
  result = qword_27F245FE0;
  if (!qword_27F245FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245FA8);
    sub_24F4D1ED0();
    sub_24F4D2100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245FE0);
  }

  return result;
}

unint64_t sub_24F4D1ED0()
{
  result = qword_27F245FE8;
  if (!qword_27F245FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245FA0);
    sub_24F4D1DFC(&qword_27F245FF0, type metadata accessor for FriendRequestCardConfiguration.VisualView);
    sub_24F4D1F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245FE8);
  }

  return result;
}

unint64_t sub_24F4D1F8C()
{
  result = qword_27F245FF8;
  if (!qword_27F245FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245F80);
    sub_24F4D2018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F245FF8);
  }

  return result;
}

unint64_t sub_24F4D2018()
{
  result = qword_27F246000;
  if (!qword_27F246000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246008);
    sub_24F4D1DFC(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    sub_24E602068(&qword_27F246010, &qword_27F246018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246000);
  }

  return result;
}

unint64_t sub_24F4D2100()
{
  result = qword_27F246020;
  if (!qword_27F246020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245F78);
    sub_24F4D1DFC(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    sub_24E63D150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246020);
  }

  return result;
}

unint64_t sub_24F4D21BC()
{
  result = qword_27F246028;
  if (!qword_27F246028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245F28);
    sub_24F4D1BA4();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246028);
  }

  return result;
}

uint64_t sub_24F4D2248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4D22B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4D2320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4D2380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F4D2418()
{
  sub_24F9289E8();
  if (v0 <= 0x3F)
  {
    sub_24F4D29A0(319, &qword_27F214D30, type metadata accessor for CardSafeArea);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F4D24CC()
{
  result = qword_27F246068;
  if (!qword_27F246068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246070);
    sub_24F4D2550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246068);
  }

  return result;
}

unint64_t sub_24F4D2550()
{
  result = qword_27F246078;
  if (!qword_27F246078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245FB0);
    sub_24F4D1E44();
    sub_24F4D21BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246078);
  }

  return result;
}

unint64_t sub_24F4D2620()
{
  result = qword_27F2460B0;
  if (!qword_27F2460B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2460A8);
    sub_24F4D1DFC(&qword_27F2460B8, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView);
    sub_24F4D1DFC(&qword_27F245FF0, type metadata accessor for FriendRequestCardConfiguration.VisualView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2460B0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = -a2;
  }

  return result;
}

void sub_24F4D28B4()
{
  sub_24F9289E8();
  if (v0 <= 0x3F)
  {
    sub_24F4D2F4C(319, &qword_27F21B190, &type metadata for HeroLayoutMode, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24F4D29A0(319, &qword_27F21EAF0, type metadata accessor for HeroSafeAreaMetrics);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F4D29A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F4D29F8()
{
  result = qword_27F2460D0;
  if (!qword_27F2460D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246090);
    sub_24F4D2A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2460D0);
  }

  return result;
}

unint64_t sub_24F4D2A84()
{
  result = qword_27F2460D8;
  if (!qword_27F2460D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246088);
    sub_24F4D2B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2460D8);
  }

  return result;
}

unint64_t sub_24F4D2B10()
{
  result = qword_27F2460E0;
  if (!qword_27F2460E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246080);
    sub_24F4D2B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2460E0);
  }

  return result;
}

unint64_t sub_24F4D2B94()
{
  result = qword_27F2460E8;
  if (!qword_27F2460E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2460F0);
    sub_24F4D2620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2460E8);
  }

  return result;
}

uint64_t sub_24F4D2CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 64);
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

uint64_t sub_24F4D2D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 64) = a2;
  }

  return result;
}

void sub_24F4D2E54()
{
  sub_24F9289E8();
  if (v0 <= 0x3F)
  {
    sub_24F4D2F4C(319, &qword_27F246110, &type metadata for FriendRequestCardConfiguration.VisualLayoutMetrics, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F4D2F4C(319, &qword_27F21B190, &type metadata for HeroLayoutMode, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F4D2F4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24F4D2FA0()
{
  result = qword_27F246118;
  if (!qword_27F246118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2460F8);
    sub_24F4D1DFC(&qword_27F246120, type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246118);
  }

  return result;
}

uint64_t objectdestroyTm_70()
{
  v1 = (type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView(0) - 8);
  v2 = (*(*v1 + 80) + 88) & ~*(*v1 + 80);

  v3 = sub_24F9289E8();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + v2 + v1[7], v3);

  sub_24E62A5EC(*(v0 + v2 + v1[11]), *(v0 + v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_24F4D3210(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FriendRequestCardConfiguration.HeroVisualView.VisualView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 88) & ~*(v4 + 80));

  return a2(a1, v2 + 16, v5);
}

uint64_t sub_24F4D329C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F4D32E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F4D334C()
{
  result = qword_27F246180;
  if (!qword_27F246180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246140);
    sub_24F4D3404();
    sub_24E602068(&qword_27F2461A8, &qword_27F246148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246180);
  }

  return result;
}

unint64_t sub_24F4D3404()
{
  result = qword_27F246188;
  if (!qword_27F246188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246190);
    sub_24E602068(&qword_27F246198, &qword_27F2461A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246188);
  }

  return result;
}

unint64_t sub_24F4D3504()
{
  result = qword_27F2461C0;
  if (!qword_27F2461C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2461C0);
  }

  return result;
}

unint64_t sub_24F4D355C()
{
  result = qword_27F2461C8;
  if (!qword_27F2461C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2461C8);
  }

  return result;
}

unint64_t sub_24F4D35B8()
{
  result = qword_27F2461D0;
  if (!qword_27F2461D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2461D0);
  }

  return result;
}

uint64_t sub_24F4D3620(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_24F92C7B8(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      sub_24E65864C(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x253052150](v10, a1);
      sub_24E6585F8(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_24F4D36F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_24F92D068();
  sub_24F92B218();
  v6 = sub_24F92D0B8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_24F92CE08() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24F4D37F0(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_24F92D068();
    sub_24F92B218();

    v4 = sub_24F92D0B8();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (*(*(a2 + 48) + v6) == 1)
          {
            v8 = 0x6E4F656461637261;
            v9 = 0xEA0000000000796CLL;
            v10 = a1;
            if (!a1)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v8 = 0xD000000000000015;
            v9 = 0x800000024FA3F9F0;
            v10 = a1;
            if (!a1)
            {
LABEL_18:
              v12 = 0xED0000796C6E4F64;
              if (v8 != 0x656C6C6174736E69)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v8 = 0x656C6C6174736E69;
          v9 = 0xED0000796C6E4F64;
          v10 = a1;
          if (!a1)
          {
            goto LABEL_18;
          }
        }

        if (v10 == 1)
        {
          v11 = 0x6E4F656461637261;
        }

        else
        {
          v11 = 0xD000000000000015;
        }

        if (v10 == 1)
        {
          v12 = 0xEA0000000000796CLL;
        }

        else
        {
          v12 = 0x800000024FA3F9F0;
        }

        if (v8 != v11)
        {
          goto LABEL_20;
        }

LABEL_19:
        if (v9 == v12)
        {

          v13 = 1;
          return v13 & 1;
        }

LABEL_20:
        v13 = sub_24F92CE08();

        if ((v13 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        return v13 & 1;
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_24F4D3A40(uint64_t a1, int64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_24F92D068();
    sub_24F204B30(v18, a1, a2);
    v6 = sub_24F92D0B8();
    v7 = -1 << *(a3 + 32);
    v8 = v6 & ~v7;
    if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v17 = ~v7;
      while (1)
      {
        v9 = (*(a3 + 48) + 16 * v8);
        v10 = *v9;
        v11 = v9[1];
        if (v11 <= 4)
        {
          if (v11 > 1)
          {
            if (v11 == 2)
            {
              v13 = 0xE400000000000000;
              v12 = 1936748641;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else if (v11 == 3)
            {
              v13 = 0xE700000000000000;
              v12 = 0x73657461647075;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v13 = 0xE600000000000000;
              v12 = 0x686372616573;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_56;
          }

          if (!v11)
          {
            v13 = 0xE500000000000000;
            v12 = 0x7961646F74;
            if (a2 > 4)
            {
              goto LABEL_37;
            }

            goto LABEL_56;
          }

          if (v11 == 1)
          {
            v13 = 0xE500000000000000;
            v12 = 0x73656D6167;
            if (a2 > 4)
            {
              goto LABEL_37;
            }

            goto LABEL_56;
          }
        }

        else
        {
          if (v11 <= 7)
          {
            if (v11 == 5)
            {
              v13 = 0xE600000000000000;
              v12 = 0x656461637261;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else if (v11 == 6)
            {
              v13 = 0xE800000000000000;
              v12 = 0x6465727574616566;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v12 = 0x69726F6765746163;
              v13 = 0xEA00000000007365;
              if (a2 > 4)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_56;
          }

          switch(v11)
          {
            case 8:
              v13 = 0xE600000000000000;
              v12 = 0x737472616863;
              if (a2 > 4)
              {
                goto LABEL_37;
              }

              goto LABEL_56;
            case 9:
              v12 = 0x6573616863727570;
              v13 = 0xE900000000000064;
              if (a2 > 4)
              {
                goto LABEL_37;
              }

              goto LABEL_56;
            case 10:
              v13 = 0xE900000000000073;
              v12 = 0x64616F6C6E776F64;
              if (a2 > 4)
              {
                goto LABEL_37;
              }

              goto LABEL_56;
          }
        }

        v12 = *v9;
        v13 = v9[1];
        if (a2 > 4)
        {
LABEL_37:
          if (a2 <= 7)
          {
            if (a2 == 5)
            {
              v14 = 0xE600000000000000;
              if (v12 != 0x656461637261)
              {
                goto LABEL_73;
              }
            }

            else if (a2 == 6)
            {
              v14 = 0xE800000000000000;
              if (v12 != 0x6465727574616566)
              {
                goto LABEL_73;
              }
            }

            else
            {
              v14 = 0xEA00000000007365;
              if (v12 != 0x69726F6765746163)
              {
                goto LABEL_73;
              }
            }

            goto LABEL_72;
          }

          switch(a2)
          {
            case 8:
              v14 = 0xE600000000000000;
              if (v12 != 0x737472616863)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            case 9:
              v14 = 0xE900000000000064;
              if (v12 != 0x6573616863727570)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            case 10:
              v14 = 0xE900000000000073;
              if (v12 != 0x64616F6C6E776F64)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
          }

          goto LABEL_71;
        }

LABEL_56:
        if (a2 <= 1)
        {
          if (!a2)
          {
            v14 = 0xE500000000000000;
            if (v12 != 0x7961646F74)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          }

          if (a2 == 1)
          {
            v14 = 0xE500000000000000;
            if (v12 != 0x73656D6167)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          }

LABEL_71:
          v14 = a2;
          if (v12 != a1)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        if (a2 == 2)
        {
          v14 = 0xE400000000000000;
          if (v12 != 1936748641)
          {
            goto LABEL_73;
          }
        }

        else if (a2 == 3)
        {
          v14 = 0xE700000000000000;
          if (v12 != 0x73657461647075)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v14 = 0xE600000000000000;
          if (v12 != 0x686372616573)
          {
            goto LABEL_73;
          }
        }

LABEL_72:
        if (v13 == v14)
        {
          sub_24E8E2880(v10, v11);
          sub_24E8E2880(a1, a2);

          v15 = 1;
          return v15 & 1;
        }

LABEL_73:
        v15 = sub_24F92CE08();
        sub_24E8E2880(v10, v11);
        sub_24E8E2880(a1, a2);

        if ((v15 & 1) == 0)
        {
          v8 = (v8 + 1) & v17;
          if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
          {
            continue;
          }
        }

        return v15 & 1;
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t sub_24F4D3F30(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_24F92B0D8(), sub_24F92D068(), sub_24F92B218(), v3 = sub_24F92D0B8(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_24F92B0D8();
      v9 = v8;
      if (v7 == sub_24F92B0D8() && v9 == v10)
      {
        break;
      }

      v12 = sub_24F92CE08();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_24F4D4084(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)();
  v4 = sub_24F92D0B8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  v29 = a2 + 56;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = a1[1];
    v28 = a1[2];
    v26 = *a1;
    v27 = a1[3];
    v22 = a1[6];
    v23 = a1[4];
    v24 = a1[7];
    v25 = a1[5];
    v9 = *(a2 + 48);
    do
    {
      v10 = (v9 + (v6 << 6));
      v11 = v10[1];
      v12 = v10[2];
      v14 = v10[3];
      v13 = v10[4];
      v15 = v10[5];
      v16 = v10[6];
      v17 = v10[7];
      if (v11)
      {
        if (!v8)
        {
          goto LABEL_5;
        }

        v18 = *v10 == v26 && v11 == v8;
        if (!v18 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v8)
      {
        goto LABEL_5;
      }

      v19 = v12 == v28 && v14 == v27;
      if (!v19 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_5;
      }

      if (v15)
      {
        if (!v25)
        {
          goto LABEL_5;
        }

        v20 = v13 == v23 && v15 == v25;
        if (!v20 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v25)
      {
        goto LABEL_5;
      }

      if (v17)
      {
        if (v24 && (v16 == v22 && v17 == v24 || (sub_24F92CE08() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v24)
      {
        return 1;
      }

LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v29 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return 0;
}

uint64_t sub_24F4D42B0(char a1, uint64_t a2)
{
  if (*(a2 + 16) && ((v4 = 7304045, sub_24F92D068(), (a1 & 1) != 0) ? (v5 = 0xE300000000000000) : (v4 = 1701736302, v5 = 0xE400000000000000), sub_24F92B218(), , v6 = sub_24F92D0B8(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 7304045 : 1701736302;
      v11 = *(*(a2 + 48) + v8) ? 0xE300000000000000 : 0xE400000000000000;
      if (v10 == v4 && v11 == v5)
      {
        break;
      }

      v13 = sub_24F92CE08();

      if ((v13 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_24F4D4420(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_24F92D068();
  MEMORY[0x253052A00](a1);
  v4 = sub_24F92D0B8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_24F4D4500(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_24F92C788();
  }

  else if (*(a2 + 16) && (sub_24E69A5C4(0, a3), v6 = sub_24F92C3F8(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = sub_24F92C408();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_24F4D4610(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_24F92D068();
    UpdateListener.RefreshDataType.rawValue.getter();
    sub_24F92B218();

    v4 = sub_24F92D0B8();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE300000000000000;
        v9 = 7105633;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0x676E656C6C616863;
            v8 = 0xEA00000000007365;
            break;
          case 2:
            v8 = 0xE700000000000000;
            v9 = 0x73646E65697266;
            break;
          case 3:
            v9 = 0x6552646E65697266;
            v8 = 0xEE00737473657571;
            break;
          case 4:
            v9 = 0xD000000000000015;
            v8 = 0x800000024FA41B30;
            break;
          case 5:
            v8 = 0xE500000000000000;
            v9 = 0x73656D6167;
            break;
          case 6:
            v8 = 0xE800000000000000;
            v9 = 0x73656C69666F7270;
            break;
          case 7:
            v8 = 0xE700000000000000;
            v9 = 0x73726579616C70;
            break;
          case 8:
            v9 = 0x6D65766569686361;
            v10 = 1937010277;
            goto LABEL_35;
          case 9:
            v8 = 0xEC00000073647261;
            goto LABEL_13;
          case 0xA:
            v8 = 0xE500000000000000;
            v9 = 0x6F746F6870;
            break;
          case 0xB:
            v8 = 0xEF73746553647261;
LABEL_13:
            v9 = 0x6F6272656461656CLL;
            break;
          case 0xC:
            v9 = 0x6E65726566657270;
            v8 = 0xEB00000000736563;
            break;
          case 0xD:
            v8 = 0xE600000000000000;
            v9 = 0x7365726F6373;
            break;
          case 0xE:
            v8 = 0xE500000000000000;
            v9 = 0x736E727574;
            break;
          case 0xF:
            v9 = 0x73736553656D6167;
            goto LABEL_34;
          case 0x10:
            v8 = 0xE700000000000000;
            v9 = 0x73726174617661;
            break;
          case 0x11:
            v9 = 0x50656C69666F7270;
            v8 = 0xEE00796361766972;
            break;
          case 0x12:
            v9 = 0xD00000000000001ALL;
            v8 = 0x800000024FA41BD0;
            break;
          case 0x13:
            v9 = 0xD000000000000014;
            v8 = 0x800000024FA41BF0;
            break;
          case 0x14:
            v9 = 0x796C746E65636572;
            v8 = 0xEE00646579616C50;
            break;
          case 0x15:
            v9 = 0xD00000000000001DLL;
            v8 = 0x800000024FA41C10;
            break;
          case 0x16:
            v9 = 0x4D707041656D6167;
            v8 = 0xEF61746164617465;
            break;
          case 0x17:
            v9 = 0x7262694C656D6167;
            v8 = 0xEB00000000797261;
            break;
          case 0x18:
            v9 = 0xD000000000000014;
            v8 = 0x800000024FA41C50;
            break;
          case 0x19:
            v9 = 0xD000000000000012;
            v8 = 0x800000024FA41C70;
            break;
          case 0x1A:
            v9 = 0x7463697274736572;
LABEL_34:
            v10 = 1936617321;
LABEL_35:
            v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x1B:
            v9 = 0xD000000000000010;
            v8 = 0x800000024FA41C90;
            break;
          case 0x1C:
            v8 = 0xE700000000000000;
            v9 = 0x6C616974696E69;
            break;
          default:
            break;
        }

        v11 = 0xE300000000000000;
        v12 = 7105633;
        switch(a1)
        {
          case 1:
            v11 = 0xEA00000000007365;
            if (v9 == 0x676E656C6C616863)
            {
              goto LABEL_87;
            }

            goto LABEL_88;
          case 2:
            v11 = 0xE700000000000000;
            v13 = 0x646E65697266;
            goto LABEL_58;
          case 3:
            v18 = 0x6552646E65697266;
            v19 = 0x737473657571;
            goto LABEL_62;
          case 4:
            v11 = 0x800000024FA41B30;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 5:
            v11 = 0xE500000000000000;
            v14 = 1701667175;
            goto LABEL_65;
          case 6:
            v11 = 0xE800000000000000;
            if (v9 != 0x73656C69666F7270)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 7:
            v11 = 0xE700000000000000;
            v13 = 0x726579616C70;
            goto LABEL_58;
          case 8:
            v17 = 0x6D65766569686361;
            v20 = 1937010277;
            goto LABEL_93;
          case 9:
            v11 = 0xEC00000073647261;
            goto LABEL_48;
          case 10:
            v11 = 0xE500000000000000;
            if (v9 != 0x6F746F6870)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 11:
            v11 = 0xEF73746553647261;
LABEL_48:
            if (v9 != 0x6F6272656461656CLL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 12:
            v15 = 0x6E65726566657270;
            v16 = 7562595;
            goto LABEL_83;
          case 13:
            v11 = 0xE600000000000000;
            if (v9 != 0x7365726F6373)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 14:
            v11 = 0xE500000000000000;
            v14 = 1852994932;
LABEL_65:
            if (v9 != (v14 & 0xFFFF0000FFFFFFFFLL | 0x7300000000))
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 15:
            v17 = 0x73736553656D6167;
            goto LABEL_92;
          case 16:
            v11 = 0xE700000000000000;
            v13 = 0x726174617661;
LABEL_58:
            if (v9 != (v13 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 17:
            v18 = 0x50656C69666F7270;
            v19 = 0x796361766972;
            goto LABEL_62;
          case 18:
            v11 = 0x800000024FA41BD0;
            if (v9 != 0xD00000000000001ALL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 19:
            v11 = 0x800000024FA41BF0;
            if (v9 != 0xD000000000000014)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 20:
            v18 = 0x796C746E65636572;
            v19 = 0x646579616C50;
LABEL_62:
            v11 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v9 != v18)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 21:
            v11 = 0x800000024FA41C10;
            if (v9 != 0xD00000000000001DLL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 22:
            v11 = 0xEF61746164617465;
            if (v9 != 0x4D707041656D6167)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 23:
            v15 = 0x7262694C656D6167;
            v16 = 7959137;
LABEL_83:
            v11 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v9 != v15)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 24:
            v11 = 0x800000024FA41C50;
            if (v9 != 0xD000000000000014)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 25:
            v11 = 0x800000024FA41C70;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 26:
            v17 = 0x7463697274736572;
LABEL_92:
            v20 = 1936617321;
LABEL_93:
            v11 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v17)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 27:
            v11 = 0x800000024FA41C90;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 28:
            v11 = 0xE700000000000000;
            v12 = 0x6C616974696E69;
            goto LABEL_86;
          default:
LABEL_86:
            if (v9 != v12)
            {
              goto LABEL_88;
            }

LABEL_87:
            if (v8 == v11)
            {

              v21 = 1;
              return v21 & 1;
            }

LABEL_88:
            v21 = sub_24F92CE08();

            if (v21)
            {
              return v21 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v21 & 1;
            }

            break;
        }
      }
    }
  }

  v21 = 0;
  return v21 & 1;
}