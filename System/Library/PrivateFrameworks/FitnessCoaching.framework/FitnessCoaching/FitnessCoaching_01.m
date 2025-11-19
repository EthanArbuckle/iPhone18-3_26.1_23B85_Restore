uint64_t sub_22779E738(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1);
  result = (*(a3 + 40))(v12, a2, a3);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_22779E8E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22779E92C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(*(v2 + 24) + 8))(*(v2 + 16));
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t FirstGlanceModalityProtobuf.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v3 = &a1[*(GlanceModalityProtobuf + 20)];
  sub_2277E20F4();
  v4 = *(GlanceModalityProtobuf + 24);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v6 = *(*(GlanceModalityTypeProtobuf - 8) + 56);

  return v6(&a1[v4], 1, 1, GlanceModalityTypeProtobuf);
}

uint64_t type metadata accessor for FirstGlanceModalityProtobuf()
{
  result = qword_27D7CEC10;
  if (!qword_27D7CEC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceModalityProtobuf.type.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceModalityProtobuf() + 24);
  sub_22778CE70(v1 + v3, &qword_27D7CEA80, &unk_2277E4DC0);
  sub_2277910D8(a1, v1 + v3);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v5 = *(*(GlanceModalityTypeProtobuf - 8) + 56);

  return v5(v1 + v3, 0, 1, GlanceModalityTypeProtobuf);
}

uint64_t FirstGlanceModalityProtobuf.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  sub_227790F4C(v1 + *(GlanceModalityProtobuf + 24), v6);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v9 = *(*(GlanceModalityTypeProtobuf - 8) + 48);
  if (v9(v6, 1, GlanceModalityTypeProtobuf) != 1)
  {
    return sub_2277910D8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = a1 + *(GlanceModalityTypeProtobuf + 20);
  sub_2277E20F4();
  result = (v9)(v6, 1, GlanceModalityTypeProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CEA80, &unk_2277E4DC0);
  }

  return result;
}

uint64_t sub_22779EC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  sub_227790F4C(a1 + *(GlanceModalityProtobuf + 24), v7);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v10 = *(*(GlanceModalityTypeProtobuf - 8) + 48);
  if (v10(v7, 1, GlanceModalityTypeProtobuf) != 1)
  {
    return sub_2277910D8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = a2 + *(GlanceModalityTypeProtobuf + 20);
  sub_2277E20F4();
  result = (v10)(v7, 1, GlanceModalityTypeProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v7, &qword_27D7CEA80, &unk_2277E4DC0);
  }

  return result;
}

uint64_t sub_22779EDBC(uint64_t a1, uint64_t a2)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v5 = *(GlanceModalityTypeProtobuf - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22779F1D8(a1, v8);
  v9 = *(type metadata accessor for FirstGlanceModalityProtobuf() + 24);
  sub_22778CE70(a2 + v9, &qword_27D7CEA80, &unk_2277E4DC0);
  sub_2277910D8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, GlanceModalityTypeProtobuf);
}

void (*FirstGlanceModalityProtobuf.type.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0) - 8) + 64);
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
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v5[2] = GlanceModalityTypeProtobuf;
  v10 = *(GlanceModalityTypeProtobuf - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FirstGlanceModalityProtobuf() + 24);
  *(v5 + 12) = v15;
  sub_227790F4C(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, GlanceModalityTypeProtobuf) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v17 = v14 + *(GlanceModalityTypeProtobuf + 20);
    sub_2277E20F4();
    if (v16(v8, 1, GlanceModalityTypeProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CEA80, &unk_2277E4DC0);
    }
  }

  else
  {
    sub_2277910D8(v8, v14);
  }

  return sub_22779F0C0;
}

void sub_22779F0C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22779F1D8((*a1)[5], v4);
    sub_22778CE70(v9 + v3, &qword_27D7CEA80, &unk_2277E4DC0);
    sub_2277910D8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_227794760(v5);
  }

  else
  {
    sub_22778CE70(v9 + v3, &qword_27D7CEA80, &unk_2277E4DC0);
    sub_2277910D8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22779F1D8(uint64_t a1, uint64_t a2)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  (*(*(GlanceModalityTypeProtobuf - 8) + 16))(a2, a1, GlanceModalityTypeProtobuf);
  return a2;
}

BOOL FirstGlanceModalityProtobuf.hasType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  sub_227790F4C(v0 + *(GlanceModalityProtobuf + 24), v4);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v7 = (*(*(GlanceModalityTypeProtobuf - 8) + 48))(v4, 1, GlanceModalityTypeProtobuf) != 1;
  sub_22778CE70(v4, &qword_27D7CEA80, &unk_2277E4DC0);
  return v7;
}

Swift::Void __swiftcall FirstGlanceModalityProtobuf.clearType()()
{
  v1 = *(type metadata accessor for FirstGlanceModalityProtobuf() + 24);
  sub_22778CE70(v0 + v1, &qword_27D7CEA80, &unk_2277E4DC0);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v3 = *(*(GlanceModalityTypeProtobuf - 8) + 56);

  v3(v0 + v1, 1, 1, GlanceModalityTypeProtobuf);
}

uint64_t FirstGlanceModalityProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceModalityProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FirstGlanceModalityProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceModalityProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_22779F510()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CEBE8);
  __swift_project_value_buffer(v0, qword_27D7CEBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t static FirstGlanceModalityProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CEBE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FirstGlanceModalityProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_2277E2164();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2277E21B4();
    }

    else if (result == 2)
    {
      sub_22779F810();
    }
  }

  return result;
}

uint64_t sub_22779F810()
{
  v0 = *(type metadata accessor for FirstGlanceModalityProtobuf() + 24);
  type metadata accessor for FirstGlanceModalityTypeProtobuf();
  sub_2277A0448(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf);
  return sub_2277E2214();
}

uint64_t FirstGlanceModalityProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v11 = *(GlanceModalityTypeProtobuf - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    result = sub_2277E22D4();
    if (v3)
    {
      return result;
    }

    v19 = a2;
    v4 = 0;
  }

  else
  {
    v19 = a2;
  }

  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  sub_227790F4C(v2 + *(GlanceModalityProtobuf + 24), v9);
  if ((*(v11 + 48))(v9, 1, GlanceModalityTypeProtobuf) == 1)
  {
    sub_22778CE70(v9, &qword_27D7CEA80, &unk_2277E4DC0);
  }

  else
  {
    sub_2277910D8(v9, v14);
    sub_2277A0448(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf);
    sub_2277E2314();
    result = sub_227794760(v14);
    if (v4)
    {
      return result;
    }
  }

  v17 = v2 + *(GlanceModalityProtobuf + 20);
  return sub_2277E20E4();
}

uint64_t FirstGlanceModalityProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceModalityProtobuf();
  sub_2277A0448(&qword_27D7CEC00, type metadata accessor for FirstGlanceModalityProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_22779FB8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_2277E20F4();
  v5 = *(a1 + 24);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v7 = *(*(GlanceModalityTypeProtobuf - 8) + 56);

  return v7(&a2[v5], 1, 1, GlanceModalityTypeProtobuf);
}

uint64_t sub_22779FC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277A0448(&qword_27D7CEC28, type metadata accessor for FirstGlanceModalityProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22779FCD8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CEBE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22779FD80(uint64_t a1)
{
  v2 = sub_2277A0448(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22779FDEC()
{
  sub_2277A0448(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf);

  return sub_2277E2264();
}

uint64_t _s15FitnessCoaching27FirstGlanceModalityProtobufV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v5 = *(GlanceModalityTypeProtobuf - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEA80, &unk_2277E4DC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC30, &qword_2277E4F78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_20;
  }

  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v18 = *(GlanceModalityProtobuf + 24);
  v19 = *(v13 + 48);
  sub_227790F4C(a1 + v18, v16);
  sub_227790F4C(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, GlanceModalityTypeProtobuf) != 1)
  {
    sub_227790F4C(v16, v12);
    if (v20(&v16[v19], 1, GlanceModalityTypeProtobuf) == 1)
    {
      sub_227794760(v12);
      goto LABEL_8;
    }

    sub_2277910D8(&v16[v19], v8);
    v25 = *v12;
    v26 = *v8;
    if (v8[8] == 1)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          if (v25 != 1)
          {
            goto LABEL_18;
          }
        }

        else if (v25 != 2)
        {
          goto LABEL_18;
        }

LABEL_15:
        v27 = *(GlanceModalityTypeProtobuf + 20);
        sub_2277E2104();
        sub_2277A0448(&qword_27D7CE980, MEMORY[0x277D216C8]);
        v28 = sub_2277E2404();
        sub_227794760(v8);
        sub_227794760(v12);
        sub_22778CE70(v16, &qword_27D7CEA80, &unk_2277E4DC0);
        if (v28)
        {
          goto LABEL_5;
        }

LABEL_20:
        v22 = 0;
        return v22 & 1;
      }

      if (!v25)
      {
        goto LABEL_15;
      }
    }

    else if (v25 == v26)
    {
      goto LABEL_15;
    }

LABEL_18:
    sub_227794760(v8);
    sub_227794760(v12);
    v23 = &qword_27D7CEA80;
    v24 = &unk_2277E4DC0;
    goto LABEL_19;
  }

  if (v20(&v16[v19], 1, GlanceModalityTypeProtobuf) != 1)
  {
LABEL_8:
    v23 = &qword_27D7CEC30;
    v24 = &qword_2277E4F78;
LABEL_19:
    sub_22778CE70(v16, v23, v24);
    goto LABEL_20;
  }

  sub_22778CE70(v16, &qword_27D7CEA80, &unk_2277E4DC0);
LABEL_5:
  v21 = *(GlanceModalityProtobuf + 20);
  sub_2277E2104();
  sub_2277A0448(&qword_27D7CE980, MEMORY[0x277D216C8]);
  v22 = sub_2277E2404();
  return v22 & 1;
}

void sub_2277A035C()
{
  sub_2277E2104();
  if (v0 <= 0x3F)
  {
    sub_2277A03F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2277A03F0()
{
  if (!qword_27D7CEC20)
  {
    type metadata accessor for FirstGlanceModalityTypeProtobuf();
    v0 = sub_2277E2774();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7CEC20);
    }
  }
}

uint64_t sub_2277A0448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FirstGlanceWeeklySummary.protobuf()()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  sub_2277A080C(&qword_27D7CEC38);
  return sub_2277E2274();
}

uint64_t sub_2277A053C(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  sub_2277A0914(a2, &v12);

  *a1 = v4;
  v7 = *(a2 + 8);
  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(a1 + 2) = v7;
  *(a1 + 1) = *(a2 + 16);
  a1[4] = *(a2 + 32);
  v8 = *(a2 + 40);
  if (v8 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(a1 + 10) = v8;
  a1[6] = *(a2 + 48);
  v9 = *(a2 + 56);
  if (v9 < 0xFFFFFFFF80000000)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v9 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a1 + 14) = v9;
  v10 = *(a2 + 64);
  if (v10 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(a1 + 15) = v10;
  v11 = *(a2 + 72);
  if (v11 < 0xFFFFFFFF80000000)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    *(a1 + 16) = v11;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

double FirstGlanceWeeklySummary.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v13 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);

  v10 = *(a1 + 60);
  sub_2277A0748(a1);
  *&v11 = v10;
  *(&v11 + 1) = SHIDWORD(v10);
  *&result = v10;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v13;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  return result;
}

uint64_t sub_2277A0748(uint64_t a1)
{
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  (*(*(GlanceWeeklySummaryProtobuf - 8) + 8))(a1, GlanceWeeklySummaryProtobuf);
  return a1;
}

uint64_t sub_2277A080C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2277A0850()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  sub_2277A080C(&qword_27D7CEC38);
  return sub_2277E2274();
}

uint64_t sub_2277A098C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_2277A0A10()
{
  result = qword_27D7CEC48;
  if (!qword_27D7CEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEC48);
  }

  return result;
}

unint64_t sub_2277A0A68()
{
  result = qword_27D7CEC50;
  if (!qword_27D7CEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEC50);
  }

  return result;
}

unint64_t sub_2277A0AC0()
{
  result = qword_2813BC970;
  if (!qword_2813BC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC970);
  }

  return result;
}

unint64_t sub_2277A0B18()
{
  result = qword_2813BC968;
  if (!qword_2813BC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC968);
  }

  return result;
}

uint64_t ActivityDataQuery.moveGoalExistsBeforeDate(_:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2277A0BC8, 0, 0);
}

uint64_t sub_2277A0BC8()
{
  v1 = v0[3];
  v2 = FIActivityMoveModeWithHealthStore();
  v3 = objc_opt_self();
  v4 = &selRef_moveMinuteGoal;
  if (v2 != 2)
  {
    v4 = &selRef_calorieGoal;
  }

  v5 = [v3 *v4];
  v0[4] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v0[2];
    v8 = v0[3];
    v9 = objc_opt_self();
    v10 = sub_2277E1F74();
    v11 = [v9 predicateForSamplesWithStartDate:0 endDate:v10 options:0];
    v0[5] = v11;

    v12 = swift_task_alloc();
    v0[6] = v12;
    v12[2] = v6;
    v12[3] = v11;
    v12[4] = v8;
    v13 = *(MEMORY[0x277D85A40] + 4);
    v14 = swift_task_alloc();
    v0[7] = v14;
    *v14 = v0;
    v14[1] = sub_2277A0D9C;
    v15 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 9, 0, 0, 0xD00000000000001CLL, 0x80000002277E9080, sub_2277A3954, v12, v15);
  }

  else
  {
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2277A0D9C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2277A0F24;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2277A0EB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2277A0EB8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2277A0F24()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3(0);
}

void sub_2277A0F9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC90, &qword_2277E5298);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  aBlock[4] = sub_2277A4160;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2277BE724;
  aBlock[3] = &block_descriptor_46;
  v16 = _Block_copy(aBlock);
  v17 = [v15 initWithSampleType:a2 predicate:a3 limit:1 sortDescriptors:0 resultsHandler:v16];
  _Block_release(v16);

  [a4 executeQuery_];
}

uint64_t sub_2277A1198(int a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC90, &qword_2277E5298);
    return sub_2277E25D4();
  }

  else
  {
    if (a2)
    {
      if (a2 >> 62)
      {
        sub_2277E28E4();
      }

      else
      {
        *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC90, &qword_2277E5298);
    return sub_2277E25E4();
  }
}

uint64_t sub_2277A128C()
{
  v1 = [objc_opt_self() activityGoalScheduleType];
  v0[3] = v1;
  if (v1)
  {
    v2 = v0[2];
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_2277A13E4;
    v6 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000014, 0x80000002277E90A0, sub_2277A3960, v3, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2277A13E4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2277A1568;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2277A1500;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2277A1500()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2277A1568()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2(0);
}

void sub_2277A15D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC90, &qword_2277E5298);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  aBlock[4] = sub_2277A40B4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2277BE724;
  aBlock[3] = &block_descriptor_40;
  v14 = _Block_copy(aBlock);
  v15 = [v13 initWithSampleType:a2 predicate:0 limit:0 sortDescriptors:0 resultsHandler:v14];
  _Block_release(v14);

  [a3 executeQuery_];
}

uint64_t sub_2277A17C8(int a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC90, &qword_2277E5298);
    return sub_2277E25D4();
  }

  else
  {
    if (a2)
    {
      if (a2 >> 62)
      {
        sub_2277E28E4();
      }

      else
      {
        v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC90, &qword_2277E5298);
    return sub_2277E25E4();
  }
}

uint64_t ActivityDataQuery.makeActivitySummariesStream(from:to:options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC58, &qword_2277E51A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-v10];
  v12 = *a3;
  v13 = *v3;
  v16 = a1;
  v17 = a2;
  v18 = v12;
  v19 = v13;
  sub_2277A3974();
  (*(v8 + 104))(v11, *MEMORY[0x277D858A0], v7);
  return sub_2277E26A4();
}

void sub_2277A19D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC80, &qword_2277E5288);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = objc_opt_self();
  v13 = sub_2277E1EC4();
  v14 = sub_2277E1EC4();
  v15 = [v12 predicateForActivitySummariesBetweenStartDateComponents:v13 endDateComponents:v14];

  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v11, v7);
  v18 = objc_allocWithZone(MEMORY[0x277CCCFB8]);
  aBlock[4] = sub_2277A4070;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2277A38AC;
  aBlock[3] = &block_descriptor_34;
  v19 = _Block_copy(aBlock);
  v20 = [v18 initWithPredicate:v15 resultsHandler:v19];
  _Block_release(v19);

  [v20 setShouldIncludeActivitySummaryPrivateProperties_];
  [v20 setShouldIncludeActivitySummaryStatistics_];
  [v22 executeQuery_];
}

uint64_t sub_2277A1C40(int a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a3)
  {
    v9 = a3;
    v5 = a3;
  }

  else
  {
    if (a2)
    {
      MEMORY[0x28223BE20](0);
      v8[2] = a4;
      sub_2277BC9C4(sub_2277A4098, v8, v6);
    }

    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC80, &qword_2277E5288);
  return sub_2277E2654();
}

uint64_t sub_2277A1CF8(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC88, &qword_2277E5290);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v10 = *a1;
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC80, &qword_2277E5288);
  sub_2277E2644();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ActivityDataQuery.activitySummaries(interval:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_2277A1E28, 0, 0);
}

uint64_t sub_2277A1E28()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC60, &qword_2277E51B0);
  *v3 = v0;
  v3[1] = sub_2277A1F30;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000002277E90C0, sub_2277A39C0, v1, v4);
}

uint64_t sub_2277A1F30()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2277A2068;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2277A204C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2277A2068()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_2277A20CC(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a1;
  v40 = a3;
  v33 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC78, &qword_2277E5280);
  v36 = *(v38 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v31 - v3;
  v4 = sub_2277E2044();
  v32 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2277E1EF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = objc_opt_self();
  v14 = objc_opt_self();
  v15 = [v14 hk_gregorianCalendar];
  sub_2277E1FE4();

  sub_227793440(v8, v13);
  v16 = *(v5 + 8);
  v16(v8, v4);
  v17 = sub_2277E1EC4();
  v18 = *(v10 + 8);
  v18(v13, v9);
  v19 = [v14 hk_gregorianCalendar];
  sub_2277E1FE4();

  sub_227793458(v8, v13);
  v16(v8, v32);
  v20 = sub_2277E1EC4();
  v18(v13, v9);
  v21 = [v34 predicateForActivitySummariesBetweenStartDateComponents:v17 endDateComponents:v20];

  v23 = v35;
  v22 = v36;
  v24 = v38;
  (*(v36 + 16))(v35, v39, v38);
  v25 = v22;
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v27 = swift_allocObject();
  (*(v25 + 32))(v27 + v26, v23, v24);
  v28 = objc_allocWithZone(MEMORY[0x277CCCFB8]);
  aBlock[4] = sub_2277A4048;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2277A38AC;
  aBlock[3] = &block_descriptor_28;
  v29 = _Block_copy(aBlock);
  v30 = [v28 initWithPredicate:v21 resultsHandler:v29];
  _Block_release(v29);

  [v30 setShouldIncludeActivitySummaryPrivateProperties_];
  [v40 executeQuery_];
}

uint64_t sub_2277A24FC(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC78, &qword_2277E5280);
    return sub_2277E25D4();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC78, &qword_2277E5280);
    return sub_2277E25E4();
  }
}

uint64_t ActivityDataQuery.activitySummary(activitySummaryIndex:options:)(uint64_t a1, uint64_t *a2)
{
  v3[3] = a1;
  v5 = sub_2277E1EF4();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v3[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  v3[7] = v8;
  v3[8] = v9;
  v3[9] = *v2;

  return MEMORY[0x2822009F8](sub_2277A2678, 0, 0);
}

uint64_t sub_2277A2678()
{
  v1 = v0[3];
  v2 = _HKActivityCacheDateComponentsFromCacheIndex();
  if (v2)
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v2;
    sub_2277E1ED4();

    (*(v8 + 32))(v6, v5, v7);
    v10 = objc_opt_self();
    v11 = sub_2277E1EC4();
    v12 = [v10 predicateForActivitySummaryWithDateComponents_];
    v0[10] = v12;

    v13 = swift_task_alloc();
    v0[11] = v13;
    v13[2] = v12;
    v13[3] = v4;
    v13[4] = v3;
    v14 = *(MEMORY[0x277D85A40] + 4);
    v15 = swift_task_alloc();
    v0[12] = v15;
    v16 = sub_2277A3974();
    *v15 = v0;
    v15[1] = sub_2277A288C;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000002ELL, 0x80000002277E90E0, sub_2277A3A1C, v13, v16);
  }

  else
  {
    sub_2277A39C8();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    v19 = v0[6];
    v18 = v0[7];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_2277A288C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 88);

  if (v0)
  {
    v6 = sub_2277A2A64;
  }

  else
  {
    v6 = sub_2277A29C0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2277A29C0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 16);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_2277A2A64()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 104);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

void sub_2277A2B00(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC70, &qword_2277E5278);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = objc_allocWithZone(MEMORY[0x277CCCFB8]);
  aBlock[4] = sub_2277A4008;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2277A38AC;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);
  v17 = [v15 initWithPredicate:a2 resultsHandler:v16];
  _Block_release(v16);

  [v17 setShouldIncludeActivitySummaryPrivateProperties_];
  [v17 setShouldIncludeActivitySummaryStatistics_];
  [a4 executeQuery_];
}

uint64_t sub_2277A2D18(int a1, unint64_t a2, id a3)
{
  if (!a3)
  {
    if (a2)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        v8 = a2 & 0xFFFFFFFFFFFFFF8;
        v9 = a2;
        result = sub_2277E28E4();
        v4 = v8;
        a2 = v9;
        if (result)
        {
LABEL_6:
          if ((a2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x22AA9B9D0](0);
          }

          else
          {
            if (!*(v4 + 16))
            {
              __break(1u);
              return result;
            }

            v6 = *(a2 + 32);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC70, &qword_2277E5278);
          return sub_2277E25E4();
        }
      }

      else
      {
        result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_6;
        }
      }
    }

    sub_2277A39C8();
    swift_allocError();
    *v7 = 3;
    goto LABEL_12;
  }

  v3 = a3;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC70, &qword_2277E5278);
  return sub_2277E25D4();
}

uint64_t ActivityDataQuery.makeActivitySummaryUpdatingStream(interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a1;
  v31 = a2;
  v32 = sub_2277E23D4();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v29 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2277E2044();
  v26[0] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2277E1EF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v2;
  v27 = objc_opt_self();
  v15 = objc_opt_self();
  v16 = [v15 hk_gregorianCalendar];
  sub_2277E1FE4();

  sub_227793440(v9, v14);
  v17 = *(v6 + 8);
  v17(v9, v5);
  v18 = sub_2277E1EC4();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v20 = [v15 hk_gregorianCalendar];
  sub_2277E1FE4();

  sub_227793458(v9, v14);
  v17(v9, v26[0]);
  v21 = sub_2277E1EC4();
  v19(v14, v10);
  v22 = [v27 predicateForActivitySummariesBetweenStartDateComponents:v18 endDateComponents:v21];

  v23 = v22;
  v24 = v29;
  sub_2277E23C4();
  sub_2277E23B4();

  return (*(v30 + 8))(v24, v32);
}

uint64_t sub_2277A3154(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2277A31F8;

  return ActivityDataQuery.activitySummary(activitySummaryIndex:options:)(a1, a2);
}

uint64_t sub_2277A31F8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2277A32F8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_2277A331C, 0, 0);
}

uint64_t sub_2277A331C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC60, &qword_2277E51B0);
  *v3 = v0;
  v3[1] = sub_2277A3424;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000002277E90C0, sub_2277A4258, v1, v4);
}

uint64_t sub_2277A3424()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2277A423C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2277A425C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2277A3548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2277A4254;

  return ActivityDataQuery.moveGoalExistsBeforeDate(_:)(a1);
}

uint64_t sub_2277A35DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2277A3668;

  return ActivityDataQuery.goalSchedulesExist()();
}

uint64_t sub_2277A3668(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_2277A3770(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC58, &qword_2277E51A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-v10];
  v12 = *a3;
  v13 = *v3;
  v16 = a1;
  v17 = a2;
  v18 = v12;
  v19 = v13;
  sub_2277A3974();
  (*(v8 + 104))(v11, *MEMORY[0x277D858A0], v7);
  return sub_2277E26A4();
}

uint64_t sub_2277A38AC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_2277A3974();
    v5 = sub_2277E2554();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

unint64_t sub_2277A3974()
{
  result = qword_2813BC548;
  if (!qword_2813BC548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813BC548);
  }

  return result;
}

unint64_t sub_2277A39C8()
{
  result = qword_27D7CEC68;
  if (!qword_27D7CEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEC68);
  }

  return result;
}

uint64_t dispatch thunk of ActivityDataQuerying.activitySummary(activitySummaryIndex:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2277A3B58;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2277A3B58(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ActivityDataQuerying.activitySummaries(interval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2277A4240;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ActivityDataQuerying.moveGoalExistsBeforeDate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2277A4240;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ActivityDataQuerying.goalSchedulesExist()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2277A3B58;

  return v9(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2277A4188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_2277A4260(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CECB8, &qword_2277E52E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2277E4B50;
  *(v11 + 32) = sub_22778E6C8(0, &qword_27D7CECC0, 0x277CBEA60);
  *(v11 + 40) = sub_22778E6C8(0, a3, a4);
  sub_2277E2744();

  if (!v6)
  {
    if (v15)
    {
      sub_2277A4E68(&v14, v16);
      sub_2277A4E68(v16, &v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      if (swift_dynamicCast())
      {
        return v17;
      }
    }

    else
    {
      sub_22778CE70(&v14, &unk_27D7CF290, &qword_2277E4A68);
    }

    sub_227791024();
    swift_allocError();
    *v13 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t WeeklySummaryInfo.protobuf()()
{
  type metadata accessor for WeeklySummaryInfoProtobuf();
  sub_2277A4E24(&qword_27D7CEC98);
  result = sub_2277E2274();
  if (v0)
  {
    if (qword_2813BC690 != -1)
    {
      swift_once();
    }

    v2 = sub_2277E2374();
    __swift_project_value_buffer(v2, qword_2813BC698);
    v3 = v0;
    v4 = sub_2277E2354();
    v5 = sub_2277E26F4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v0;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_227786000, v4, v5, "WeeklySummaryInfo protobuf error %@", v6, 0xCu);
      sub_22778CE70(v7, &qword_27D7CECA0, &qword_2277E52A8);
      MEMORY[0x22AA9C370](v7, -1, -1);
      MEMORY[0x22AA9C370](v6, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

void sub_2277A45DC(uint64_t a1, void *a2)
{
  v5 = sub_2277E1FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
  v11 = sub_2277E2544();
  v12 = sub_2277D6868();
  v14 = v13;

  if (!v2)
  {
    sub_22778E130(*a1, *(a1 + 8));
    *a1 = v12;
    *(a1 + 8) = v14;
    v15 = a2;
    v30 = type metadata accessor for WeeklySummaryInfo();
    v16 = *(v30 + 20);
    sub_2277E1E64();
    sub_2277E1F64();
    v18 = v17;
    v19 = *(v6 + 8);
    v19(v9, v5);
    *(a1 + 16) = v18;
    sub_2277E1E44();
    sub_2277E1F64();
    v21 = v20;
    v19(v9, v5);
    v22 = v30;
    *(a1 + 24) = v21;
    v23 = *(v15 + *(v22 + 24));
    sub_22778E6C8(0, &qword_2813BC500, 0x277CCDBE8);
    v24 = sub_2277E2544();
    v25 = sub_2277D6868();
    v27 = v26;

    sub_22778E130(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = v25;
    *(a1 + 40) = v27;
    v28 = *(v15 + *(v22 + 28));
    if (v28 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v28 <= 0x7FFFFFFF)
    {
      *(a1 + 48) = v28;
      return;
    }

    __break(1u);
  }
}

uint64_t WeeklySummaryInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v49 = sub_2277E1E84();
  v48 = *(v49 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2277E1FA4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = *(a1 + 16);
  sub_2277E1F54();
  v21 = *(a1 + 24);
  sub_2277E1F54();
  v22 = *(a1 + 48);
  v23 = sub_2277A4260(*a1, *(a1 + 8), &qword_2813BC548, 0x277CCCFB0, &qword_27D7CEC60, &qword_2277E51B0);
  if (v2)
  {
    v26 = v7[1];
    v26(v17, v6);
    v26(v19, v6);
    if (qword_2813BC690 != -1)
    {
      swift_once();
    }

    v27 = sub_2277E2374();
    __swift_project_value_buffer(v27, qword_2813BC698);
    v28 = v2;
    v29 = sub_2277E2354();
    v30 = sub_2277E26F4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = a1;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v2;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_227786000, v29, v30, "WeeklySummaryInfo init error %@", v32, 0xCu);
      sub_22778CE70(v33, &qword_27D7CECA0, &qword_2277E52A8);
      MEMORY[0x22AA9C370](v33, -1, -1);
      v36 = v32;
      a1 = v31;
      MEMORY[0x22AA9C370](v36, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v43 = v22;
    v44 = v23;
    v45 = a1;
    v24 = v7[2];
    v24(v14, v19, v6);
    v24(v11, v17, v6);
    a1 = v45;
    v25 = v47;
    sub_2277E1E54();
    v38 = sub_2277A4260(*(a1 + 32), *(a1 + 40), &qword_2813BC500, 0x277CCDBE8, &qword_27D7CECC8, &qword_2277E52E8);
    v39 = v25;
    v40 = v7[1];
    v40(v17, v6);
    v40(v19, v6);
    v41 = v46;
    *v46 = v44;
    v42 = type metadata accessor for WeeklySummaryInfo();
    (*(v48 + 32))(&v41[v42[5]], v39, v49);
    *&v41[v42[6]] = v38;
    *&v41[v42[7]] = v43;
  }

  return sub_2277A4D60(a1);
}

void sub_2277A4CEC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2277A4D60(uint64_t a1)
{
  v2 = type metadata accessor for WeeklySummaryInfoProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2277A4E24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeeklySummaryInfoProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_2277A4E68(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t FitnessPlusPlanError.hashValue.getter()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

unint64_t sub_2277A4F20()
{
  result = qword_27D7CECD0;
  if (!qword_27D7CECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CECD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FitnessPlusPlanError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FitnessPlusPlanError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AchievementNotificationContentProtobuf.achievementData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t AchievementNotificationContentProtobuf.achievementData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22778E130(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t AchievementNotificationContentProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AchievementNotificationContentProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AchievementNotificationContentProtobuf()
{
  result = qword_2813BC7F8;
  if (!qword_2813BC7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AchievementNotificationContentProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AchievementNotificationContentProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AchievementNotificationContentProtobuf.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_2277E4B40;
  v1 = a1 + *(type metadata accessor for AchievementNotificationContentProtobuf() + 20);
  return sub_2277E20F4();
}

uint64_t sub_2277A5394()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CECD8);
  __swift_project_value_buffer(v0, qword_27D7CECD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3E40;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "achievementData";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2277E2324();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_2277E2334();
}

uint64_t static AchievementNotificationContentProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CECD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AchievementNotificationContentProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_2277E2164();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2277E21A4();
    }
  }

  return result;
}

uint64_t AchievementNotificationContentProtobuf.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_2277E22C4();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for AchievementNotificationContentProtobuf() + 20);
  return sub_2277E20E4();
}

uint64_t static AchievementNotificationContentProtobuf.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AchievementNotificationContentProtobuf() + 20);
  sub_2277E2104();
  sub_2277A5D10(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

uint64_t AchievementNotificationContentProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for AchievementNotificationContentProtobuf();
  sub_2277A5D10(&qword_27D7CECF0, type metadata accessor for AchievementNotificationContentProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277A581C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_2277E4B40;
  v2 = a2 + *(a1 + 20);
  return sub_2277E20F4();
}

uint64_t sub_2277A5894(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277A5D10(&qword_27D7CED00, type metadata accessor for AchievementNotificationContentProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277A5910@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CECD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2277A59B8(uint64_t a1)
{
  v2 = sub_2277A5D10(&qword_2813BC810, type metadata accessor for AchievementNotificationContentProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277A5A24()
{
  sub_2277A5D10(&qword_2813BC810, type metadata accessor for AchievementNotificationContentProtobuf);

  return sub_2277E2264();
}

uint64_t sub_2277A5AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_2277E2104();
  sub_2277A5D10(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

uint64_t sub_2277A5C94()
{
  result = sub_2277E2104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2277A5D10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WeeklySummaryError.hashValue.getter()
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

unint64_t sub_2277A5DD0()
{
  result = qword_27D7CED08;
  if (!qword_27D7CED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CED08);
  }

  return result;
}

uint64_t WeeklySummaryInfoProtobuf.activitySummariesData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t WeeklySummaryInfoProtobuf.activitySummariesData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22778E130(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t WeeklySummaryInfoProtobuf.workoutsData.getter()
{
  v1 = *(v0 + 32);
  sub_2277905C0(v1, *(v0 + 40));
  return v1;
}

uint64_t WeeklySummaryInfoProtobuf.workoutsData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22778E130(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t WeeklySummaryInfoProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WeeklySummaryInfoProtobuf() + 36);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WeeklySummaryInfoProtobuf()
{
  result = qword_27D7CED38;
  if (!qword_27D7CED38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WeeklySummaryInfoProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WeeklySummaryInfoProtobuf() + 36);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WeeklySummaryInfoProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xC000000000000000;
  *(a1 + 48) = 0;
  v1 = a1 + *(type metadata accessor for WeeklySummaryInfoProtobuf() + 36);
  return sub_2277E20F4();
}

uint64_t sub_2277A61D4()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CED10);
  __swift_project_value_buffer(v0, qword_27D7CED10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E56B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activitySummariesData";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startDate";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "endDate";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "workoutsData";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "wheelchairUse";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_2277E2334();
}

uint64_t static WeeklySummaryInfoProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CED10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t WeeklySummaryInfoProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_2277E2164();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
LABEL_13:
        sub_2277E21A4();
      }

      else if (result == 2)
      {
LABEL_2:
        sub_2277E21E4();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_2;
        case 4:
          goto LABEL_13;
        case 5:
          sub_2277E21B4();
          break;
      }
    }
  }
}

uint64_t WeeklySummaryInfoProtobuf.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_2277E22C4();
  if (v1)
  {
    return result;
  }

LABEL_10:
  if (*(v0 + 16) == 0.0 || (result = sub_2277E22E4(), !v1))
  {
    if (*(v0 + 24) == 0.0 || (result = sub_2277E22E4(), !v1))
    {
      v8 = *(v0 + 32);
      v9 = *(v0 + 40);
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v10 != 2)
        {
          goto LABEL_25;
        }

        v11 = *(v8 + 16);
        v12 = *(v8 + 24);
      }

      else
      {
        if (!v10)
        {
          if ((v9 & 0xFF000000000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_24:
          result = sub_2277E22C4();
          if (v1)
          {
            return result;
          }

          goto LABEL_25;
        }

        v11 = v8;
        v12 = v8 >> 32;
      }

      if (v11 != v12)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (!*(v0 + 48) || (result = sub_2277E22D4(), !v1))
      {
        v13 = v0 + *(type metadata accessor for WeeklySummaryInfoProtobuf() + 36);
        return sub_2277E20E4();
      }
    }
  }

  return result;
}

uint64_t WeeklySummaryInfoProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for WeeklySummaryInfoProtobuf();
  sub_2277A6E68(&qword_27D7CED28, type metadata accessor for WeeklySummaryInfoProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277A67F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_2277E4B40;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xC000000000000000;
  *(a2 + 48) = 0;
  v2 = a2 + *(a1 + 36);
  return sub_2277E20F4();
}

uint64_t sub_2277A684C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2277A68C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2277A6934(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_2277A6988(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277A6E68(&qword_27D7CED48, type metadata accessor for WeeklySummaryInfoProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277A6A04@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE7F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CED10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2277A6AAC(uint64_t a1)
{
  v2 = sub_2277A6E68(&qword_27D7CEC98, type metadata accessor for WeeklySummaryInfoProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277A6B18()
{
  sub_2277A6E68(&qword_27D7CEC98, type metadata accessor for WeeklySummaryInfoProtobuf);

  return sub_2277E2264();
}

uint64_t _s15FitnessCoaching25WeeklySummaryInfoProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || (sub_227790458(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v4 = *(type metadata accessor for WeeklySummaryInfoProtobuf() + 36);
  sub_2277E2104();
  sub_2277A6E68(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

uint64_t sub_2277A6DD0()
{
  result = sub_2277E2104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2277A6E68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2277A6F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = v6;
  if (a1)
  {
    v14 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;
    result = sub_2277A99B4(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5, a6);
    *v6 = v24;
  }

  else
  {
    v17 = *v6;
    result = sub_2277A8FD0(a3);
    if (v18)
    {
      v19 = result;
      v20 = *v9;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v9;
      v25 = *v9;
      if (!v21)
      {
        sub_2277A9E54(a4, a5);
        v22 = v25;
      }

      v23 = *(*(v22 + 56) + 16 * v19 + 8);

      result = sub_2277A9594(v19, v22);
      *v9 = v22;
    }
  }

  return result;
}

uint64_t sub_2277A6FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_2277A7020, v3, 0);
}

uint64_t sub_2277A7020()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_2277E5890;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_2277A99B4(&unk_2277E58A0, v6, v3, isUniquelyReferenced_nonNull_native, &qword_27D7CED58, &qword_2277E59D8, type metadata accessor for FCCTransportMessage);
  *(v2 + 112) = v11;
  swift_endAccess();

  v9 = v0[1];

  return v9();
}

uint64_t sub_2277A7178(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2277AA94C;

  return v7();
}

uint64_t sub_2277A7260(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2277AA94C;

  return sub_2277A7178(a1, a2, v7);
}

uint64_t sub_2277A7310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_2277A7338, v5, 0);
}

uint64_t sub_2277A7338()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_2277E58B8;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2277A99B4(&unk_2277E58C0, v6, v4, isUniquelyReferenced_nonNull_native, &qword_27D7CED58, &qword_2277E59D8, type metadata accessor for FCCTransportMessage);
  *(v1 + 112) = v11;
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2277A749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(a5 - 8);
  v6[8] = v7;
  v8 = *(v7 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277A7558, 0, 0);
}

uint64_t sub_2277A7558()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v2 + 16);
  sub_2277AA8E8(v5, v4);
  v6(v5, v4, v3, v2);
  v12 = (v0[4] + *v0[4]);
  v7 = *(v0[4] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2277A76F8;
  v9 = v0[9];
  v10 = v0[5];

  return v12(v9);
}

uint64_t sub_2277A76F8()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2277A788C;
  }

  else
  {
    v3 = sub_2277A780C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2277A780C()
{
  (*(v0[8] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2277A788C()
{
  (*(v0[8] + 8))(v0[9], v0[6]);
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2277A7908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_2277A7930, v5, 0);
}

uint64_t sub_2277A7930()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_2277E58D8;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 120);
  *(v1 + 120) = 0x8000000000000000;
  sub_2277A99B4(&unk_2277E58E8, v6, v4, isUniquelyReferenced_nonNull_native, &qword_27D7CED50, &qword_2277E59D0, type metadata accessor for FCCTransportRequest);
  *(v1 + 120) = v11;
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2277A7A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_2277A7ABC, 0, 0);
}

uint64_t sub_2277A7ABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + 24) = *(v0 + 40);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2277A7BC4;
  v6 = *(v0 + 32);

  return v8(boxed_opaque_existential_1);
}

uint64_t sub_2277A7BC4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2277A7CF8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2277A7CF8()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_2277A7D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  return MEMORY[0x2822009F8](sub_2277A7D88, v7, 0);
}

uint64_t sub_2277A7D88()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  v6 = *(v0 + 80);
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_2277E5900;
  *(v7 + 24) = v5;
  swift_beginAccess();

  v8 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 120);
  *(v1 + 120) = 0x8000000000000000;
  sub_2277A99B4(&unk_2277E5908, v7, v4, isUniquelyReferenced_nonNull_native, &qword_27D7CED50, &qword_2277E59D0, type metadata accessor for FCCTransportRequest);
  *(v1 + 120) = v12;
  swift_endAccess();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2277A7EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(a6 - 8);
  v8[11] = v9;
  v10 = *(v9 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277A7FB8, 0, 0);
}

uint64_t sub_2277A7FB8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v2 + 16);
  sub_2277AA8E8(v5, v4);
  v6(v5, v4, v3, v2);
  v7 = v0[10];
  v8 = v0[5];
  v9 = v0[2];
  v9[3] = v0[8];
  v9[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  v16 = (v8 + *v8);
  v11 = v8[1];
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_2277A8178;
  v13 = v0[12];
  v14 = v0[6];

  return v16(boxed_opaque_existential_1, v13);
}

uint64_t sub_2277A8178()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2277A830C;
  }

  else
  {
    v3 = sub_2277A828C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2277A828C()
{
  (*(v0[11] + 8))(v0[12], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2277A830C()
{
  v1 = v0[2];
  (*(v0[11] + 8))(v0[12], v0[7]);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2277A8394(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2277AA94C;

  return v9(v4, v5);
}

uint64_t sub_2277A8490(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2277AA94C;

  return sub_2277A8394(a1, a2, v7);
}

uint64_t sub_2277A8558(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22779696C;

  return v10(a1, v5, v6);
}

uint64_t sub_2277A8664(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  v5 = sub_2277A8FD0(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(v2 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2277A9E54(&qword_27D7CED58, &qword_2277E59D8);
    }

    v11 = *(*(v10 + 56) + 16 * v7 + 8);

    sub_2277A9594(v7, v10);
    *(v2 + 112) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_2277A8724(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 120);
  v5 = sub_2277A8FD0(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(v2 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2277A9E54(&qword_27D7CED50, &qword_2277E59D0);
    }

    v11 = *(*(v10 + 56) + 16 * v7 + 8);

    sub_2277A9594(v7, v10);
    *(v2 + 120) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_2277A87E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_2277A8808, v3, 0);
}

uint64_t sub_2277A8808()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_2277A8FD0(*(v0 + 56)), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 16 * v3;
    v6 = *v5;
    *(v0 + 88) = *(v5 + 8);
    *(v0 + 40) = *(v0 + 64);

    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_2277A89B4;

    return v12();
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v10 = 5;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2277A89B4()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 88);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2277A8ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_2277A8AF0, v3, 0);
}

uint64_t sub_2277A8AF0()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16) && (v3 = sub_2277A8FD0(*(v0 + 96)), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 16 * v3;
    v6 = *v5;
    *(v0 + 128) = *(v5 + 8);
    *(v0 + 80) = *(v0 + 104);

    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_2277A8CA4;

    return v12(v0 + 16, v0 + 80);
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2277A8CA4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);

  if (v0)
  {
    v7 = sub_2277A8EEC;
  }

  else
  {
    v7 = sub_2277A8DEC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2277A8DEC()
{
  v1 = v0[18];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v4;
    v9 = v5;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t TransportDispatchService.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TransportDispatchService.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2277A8F8C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2277E29F4();

  return sub_2277A9038(a1, v4);
}

unint64_t sub_2277A8FD0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](a1);
  v4 = sub_2277E2A44();
  return sub_2277A9038(a1, v4);
}

unint64_t sub_2277A9038(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2277A90A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB00, &unk_2277E59E0);
  result = sub_2277E2904();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_2277E29F4();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2277A930C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_2277E2904();
  v10 = result;
  if (*(v7 + 16))
  {
    v33 = v5;
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
      v23 = *(*(v7 + 48) + 8 * v22);
      v34 = *(*(v7 + 56) + 16 * v22);
      if ((a2 & 1) == 0)
      {
      }

      v24 = *(v10 + 40);
      sub_2277E2A04();
      MEMORY[0x22AA9BBC0](v23);
      result = sub_2277E2A44();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 16 * v18) = v34;
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

      v5 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2277A9594(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2277E27D4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2277E2A04();
      MEMORY[0x22AA9BBC0](v10);
      result = sub_2277E2A44();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2277A9750(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2277AA94C;

  return sub_2277A749C(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_2277A9814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_2277AA94C;

  return sub_2277A7A94(a1, a2, a3, v11, v10, v8, v9);
}

uint64_t sub_2277A98EC(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2277AA94C;

  return sub_2277A8558(a1, a2, v7);
}

unint64_t sub_2277A99B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v11 = v7;
  v16 = *v7;
  result = sub_2277A8FD0(a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_2277A930C(v22, a4 & 1, a5, a6);
      v25 = *v11;
      result = sub_2277A8FD0(a3);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_16:
        a7(0);
        result = sub_2277E29A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      a7 = result;
      sub_2277A9E54(a5, a6);
      result = a7;
    }
  }

  v27 = *v11;
  if ((v23 & 1) == 0)
  {
    v27[(result >> 6) + 8] |= 1 << result;
    *(v27[6] + 8 * result) = a3;
    v30 = (v27[7] + 16 * result);
    *v30 = a1;
    v30[1] = a2;
    v31 = v27[2];
    v21 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v21)
    {
      v27[2] = v32;
      return result;
    }

    goto LABEL_15;
  }

  v28 = (v27[7] + 16 * result);
  v29 = v28[1];
  *v28 = a1;
  v28[1] = a2;
}

uint64_t sub_2277A9B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v13 = v3[6];
  v12 = v3[7];
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_2277AA94C;

  return sub_2277A7EEC(a1, a2, a3, v13, v12, v8, v9, v10);
}

uint64_t sub_2277A9C30(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22779696C;

  return sub_2277A8558(a1, a2, v7);
}

id sub_2277A9CF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB00, &unk_2277E59E0);
  v2 = *v0;
  v3 = sub_2277E28F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2277A9E54(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2277E28F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 16 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t dispatch thunk of TransportDispatchService.register(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 152);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2277AA94C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of TransportDispatchService.register<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 160);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22779696C;

  return v16(a1, a2, a3, a4, a5);
}

{
  v12 = *(*v5 + 168);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2277AA94C;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TransportDispatchService.register<A, B>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 176);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_2277AA94C;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of TransportDispatchService.unregister(_:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

uint64_t dispatch thunk of TransportDispatchService.dispatch(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 216);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2277AA94C;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2277AA7DC;

  return v12(a1, a2, a3);
}

uint64_t sub_2277AA7DC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_2277AA8E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2277905C0(a1, a2);
  }

  return a1;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AA9C370);
  }

  return result;
}

uint64_t FirstGlanceTypeProtobuf.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  *a1 = *(v3 + 16);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_2277AA9CC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v10 = *(GlanceType + 48);
    v11 = *(GlanceType + 52);
    swift_allocObject();
    v8 = sub_2277AF224(v8);
    *(a2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  return result;
}

uint64_t FirstGlanceTypeProtobuf.type.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v10 = *(GlanceType + 48);
    v11 = *(GlanceType + 52);
    swift_allocObject();
    v8 = sub_2277AF224(v8);
    *(v2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  return result;
}

uint64_t sub_2277AAB34(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*FirstGlanceTypeProtobuf.type.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return sub_2277AAC14;
}

void sub_2277AAC14(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v12 = *(GlanceType + 48);
    v13 = *(GlanceType + 52);
    swift_allocObject();
    v8 = sub_2277AF224(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;

  free(v1);
}

uint64_t FirstGlanceTypeProtobuf.yesterdayWorkout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v8 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  swift_beginAccess();
  sub_2277AF92C(v7 + v8, v6, &qword_27D7CEDA0, &qword_2277E5A10);
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  v10 = *(*(GlanceYesterdayWorkoutProtobuf - 8) + 48);
  if (v10(v6, 1, GlanceYesterdayWorkoutProtobuf) != 1)
  {
    return sub_2277AF994(v6, a1, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  }

  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  v11 = a1 + *(GlanceYesterdayWorkoutProtobuf + 24);
  sub_2277E20F4();
  result = (v10)(v6, 1, GlanceYesterdayWorkoutProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CEDA0, &qword_2277E5A10);
  }

  return result;
}

uint64_t sub_2277AAE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v9 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  swift_beginAccess();
  sub_2277AF92C(v8 + v9, v7, &qword_27D7CEDA0, &qword_2277E5A10);
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  v11 = *(*(GlanceYesterdayWorkoutProtobuf - 8) + 48);
  if (v11(v7, 1, GlanceYesterdayWorkoutProtobuf) != 1)
  {
    return sub_2277AF994(v7, a2, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  }

  *a2 = xmmword_2277E4B40;
  *(a2 + 16) = 0;
  v12 = a2 + *(GlanceYesterdayWorkoutProtobuf + 24);
  sub_2277E20F4();
  result = (v11)(v7, 1, GlanceYesterdayWorkoutProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v7, &qword_27D7CEDA0, &qword_2277E5A10);
  }

  return result;
}

uint64_t sub_2277AB004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  v9 = *(GlanceYesterdayWorkoutProtobuf - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](GlanceYesterdayWorkoutProtobuf);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2277AFA64(a1, v12, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  v13 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v18 = *(GlanceType + 48);
    v19 = *(GlanceType + 52);
    swift_allocObject();
    v16 = sub_2277AF224(v16);
    *(a2 + v13) = v16;
  }

  sub_2277AF994(v12, v7, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  (*(v9 + 56))(v7, 0, 1, GlanceYesterdayWorkoutProtobuf);
  v20 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  swift_beginAccess();
  sub_2277AF9FC(v7, v16 + v20, &qword_27D7CEDA0, &qword_2277E5A10);
  return swift_endAccess();
}

uint64_t FirstGlanceTypeProtobuf.yesterdayWorkout.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v13 = *(GlanceType + 48);
    v14 = *(GlanceType + 52);
    swift_allocObject();
    v11 = sub_2277AF224(v11);
    *(v2 + v8) = v11;
  }

  sub_2277AF994(a1, v7, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  (*(*(GlanceYesterdayWorkoutProtobuf - 8) + 56))(v7, 0, 1, GlanceYesterdayWorkoutProtobuf);
  v16 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  swift_beginAccess();
  sub_2277AF9FC(v7, v11 + v16, &qword_27D7CEDA0, &qword_2277E5A10);
  return swift_endAccess();
}

void (*FirstGlanceTypeProtobuf.yesterdayWorkout.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  *(v5 + 96) = GlanceYesterdayWorkoutProtobuf;
  v10 = *(GlanceYesterdayWorkoutProtobuf - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  swift_beginAccess();
  sub_2277AF92C(v16 + v17, v8, &qword_27D7CEDA0, &qword_2277E5A10);
  v18 = *(v11 + 48);
  if (v18(v8, 1, GlanceYesterdayWorkoutProtobuf) == 1)
  {
    *v14 = xmmword_2277E4B40;
    *(v14 + 16) = 0;
    v19 = v14 + *(GlanceYesterdayWorkoutProtobuf + 24);
    sub_2277E20F4();
    if (v18(v8, 1, GlanceYesterdayWorkoutProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CEDA0, &qword_2277E5A10);
    }
  }

  else
  {
    sub_2277AF994(v8, v14, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  }

  return sub_2277AB5C4;
}

uint64_t FirstGlanceTypeProtobuf.activitySummaryData.getter()
{
  v1 = *(v0 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20)) + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData;
  swift_beginAccess();
  v2 = *v1;
  sub_2277905C0(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2277AB6C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20)) + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_2277905C0(v4, v5);
}

uint64_t sub_2277AB728(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  sub_2277905C0(v3, v4);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v10 = *(GlanceType + 48);
    v11 = *(GlanceType + 52);
    swift_allocObject();
    v8 = sub_2277AF224(v8);
    *(a2 + v5) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v3;
  v12[1] = v4;
  return sub_22778E130(v13, v14);
}

uint64_t FirstGlanceTypeProtobuf.activitySummaryData.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v11 = *(GlanceType + 48);
    v12 = *(GlanceType + 52);
    swift_allocObject();
    v9 = sub_2277AF224(v9);
    *(v3 + v6) = v9;
  }

  v13 = (v9 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = a1;
  v13[1] = a2;
  return sub_22778E130(v14, v15);
}

void (*FirstGlanceTypeProtobuf.activitySummaryData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_2277905C0(v7, v8);
  return sub_2277AB948;
}

void sub_2277AB948(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_2277905C0(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
      v13 = *(GlanceType + 48);
      v14 = *(GlanceType + 52);
      swift_allocObject();
      v9 = sub_2277AF224(v9);
      *(v11 + v10) = v9;
    }

    v15 = (v9 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    *v15 = v3;
    v15[1] = v5;
    sub_22778E130(v16, v17);
    v18 = *(v2 + 72);
    v19 = *(v2 + 80);
  }

  else
  {
    v20 = *(v6 + v4);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v4);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 96);
      v24 = *(v2 + 88);
      v25 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v22 = sub_2277AF224(v22);
      *(v24 + v23) = v22;
    }

    v28 = (v22 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
    swift_beginAccess();
    v18 = *v28;
    v19 = v28[1];
    *v28 = v3;
    v28[1] = v5;
  }

  sub_22778E130(v18, v19);

  free(v2);
}

uint64_t FirstGlanceTypeProtobuf.weeklySummaryContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v8 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  swift_beginAccess();
  sub_2277AF92C(v7 + v8, v6, &qword_27D7CEDB8, &qword_2277E5A18);
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  v10 = *(*(GlanceWeeklySummaryProtobuf - 8) + 48);
  if (v10(v6, 1, GlanceWeeklySummaryProtobuf) != 1)
  {
    return sub_2277AF994(v6, a1, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v11 = a1 + *(GlanceWeeklySummaryProtobuf + 56);
  sub_2277E20F4();
  result = (v10)(v6, 1, GlanceWeeklySummaryProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CEDB8, &qword_2277E5A18);
  }

  return result;
}

uint64_t sub_2277ABC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  v9 = *(GlanceWeeklySummaryProtobuf - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](GlanceWeeklySummaryProtobuf);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2277AFA64(a1, v12, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  v13 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v18 = *(GlanceType + 48);
    v19 = *(GlanceType + 52);
    swift_allocObject();
    v16 = sub_2277AF224(v16);
    *(a2 + v13) = v16;
  }

  sub_2277AF994(v12, v7, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  (*(v9 + 56))(v7, 0, 1, GlanceWeeklySummaryProtobuf);
  v20 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  swift_beginAccess();
  sub_2277AF9FC(v7, v16 + v20, &qword_27D7CEDB8, &qword_2277E5A18);
  return swift_endAccess();
}

uint64_t FirstGlanceTypeProtobuf.weeklySummaryContent.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v13 = *(GlanceType + 48);
    v14 = *(GlanceType + 52);
    swift_allocObject();
    v11 = sub_2277AF224(v11);
    *(v2 + v8) = v11;
  }

  sub_2277AF994(a1, v7, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  (*(*(GlanceWeeklySummaryProtobuf - 8) + 56))(v7, 0, 1, GlanceWeeklySummaryProtobuf);
  v16 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  swift_beginAccess();
  sub_2277AF9FC(v7, v11 + v16, &qword_27D7CEDB8, &qword_2277E5A18);
  return swift_endAccess();
}

void (*FirstGlanceTypeProtobuf.weeklySummaryContent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  *(v5 + 96) = GlanceWeeklySummaryProtobuf;
  v10 = *(GlanceWeeklySummaryProtobuf - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  swift_beginAccess();
  sub_2277AF92C(v16 + v17, v8, &qword_27D7CEDB8, &qword_2277E5A18);
  v18 = *(v11 + 48);
  if (v18(v8, 1, GlanceWeeklySummaryProtobuf) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 16) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    v19 = v14 + *(GlanceWeeklySummaryProtobuf + 56);
    sub_2277E20F4();
    if (v18(v8, 1, GlanceWeeklySummaryProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CEDB8, &qword_2277E5A18);
    }
  }

  else
  {
    sub_2277AF994(v8, v14, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  }

  return sub_2277AC208;
}

void sub_2277AC238(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_2277AFA64(*(v8 + 120), *(v8 + 112), a3);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v8 + 128);
      v15 = *(v8 + 72);
      GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
      v17 = *(GlanceType + 48);
      v18 = *(GlanceType + 52);
      swift_allocObject();
      v13 = sub_2277AF224(v13);
      *(v15 + v14) = v13;
    }

    v20 = *(v8 + 112);
    v19 = *(v8 + 120);
    v21 = *(v8 + 96);
    v22 = *(v8 + 104);
    v24 = *(v8 + 80);
    v23 = *(v8 + 88);
    sub_2277AF994(v20, v24, a3);
    (*(v22 + 56))(v24, 0, 1, v21);
    v25 = *a4;
    swift_beginAccess();
    sub_2277AF9FC(v24, v13 + v25, a5, a6);
    swift_endAccess();
    sub_2277AFACC(v19, a3);
  }

  else
  {
    v26 = *(v8 + 72);
    v27 = *(v26 + v9);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v26 + v9);
    if ((v28 & 1) == 0)
    {
      v30 = *(v8 + 128);
      v31 = *(v8 + 72);
      v32 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v29 = sub_2277AF224(v29);
      *(v31 + v30) = v29;
    }

    v20 = *(v8 + 112);
    v19 = *(v8 + 120);
    v35 = *(v8 + 96);
    v36 = *(v8 + 104);
    v24 = *(v8 + 80);
    v23 = *(v8 + 88);
    sub_2277AF994(v19, v24, a3);
    (*(v36 + 56))(v24, 0, 1, v35);
    v37 = *a4;
    swift_beginAccess();
    sub_2277AF9FC(v24, v29 + v37, a5, a6);
    swift_endAccess();
  }

  free(v19);
  free(v20);
  free(v23);
  free(v24);

  free(v8);
}

BOOL sub_2277AC474(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_2277AF92C(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_22778CE70(v12, a1, a2);
  return v16;
}

uint64_t sub_2277AC5BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v19 = *(GlanceType + 48);
    v20 = *(GlanceType + 52);
    swift_allocObject();
    v17 = sub_2277AF224(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_2277AF9FC(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t FirstGlanceTypeProtobuf.workoutSummationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v8 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  swift_beginAccess();
  sub_2277AF92C(v7 + v8, v6, &qword_27D7CEDC8, &qword_2277E5A20);
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v10 = *(*(GlanceWorkoutSummationTypeProtobuf - 8) + 48);
  if (v10(v6, 1, GlanceWorkoutSummationTypeProtobuf) != 1)
  {
    return sub_2277AF994(v6, a1, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v11 = a1 + *(GlanceWorkoutSummationTypeProtobuf + 20);
  sub_2277E20F4();
  v12 = *(GlanceWorkoutSummationTypeProtobuf + 24);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  (*(*(GlanceWorkoutSummationProtobuf - 8) + 56))(a1 + v12, 1, 1, GlanceWorkoutSummationProtobuf);
  result = (v10)(v6, 1, GlanceWorkoutSummationTypeProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CEDC8, &qword_2277E5A20);
  }

  return result;
}

uint64_t sub_2277AC8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = *(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v9 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  swift_beginAccess();
  sub_2277AF92C(v8 + v9, v7, &qword_27D7CEDC8, &qword_2277E5A20);
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v11 = *(*(GlanceWorkoutSummationTypeProtobuf - 8) + 48);
  if (v11(v7, 1, GlanceWorkoutSummationTypeProtobuf) != 1)
  {
    return sub_2277AF994(v7, a2, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = a2 + *(GlanceWorkoutSummationTypeProtobuf + 20);
  sub_2277E20F4();
  v13 = *(GlanceWorkoutSummationTypeProtobuf + 24);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  (*(*(GlanceWorkoutSummationProtobuf - 8) + 56))(a2 + v13, 1, 1, GlanceWorkoutSummationProtobuf);
  result = (v11)(v7, 1, GlanceWorkoutSummationTypeProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v7, &qword_27D7CEDC8, &qword_2277E5A20);
  }

  return result;
}

uint64_t sub_2277ACAA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v9 = *(GlanceWorkoutSummationTypeProtobuf - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationTypeProtobuf);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2277AFA64(a1, v12, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  v13 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v18 = *(GlanceType + 48);
    v19 = *(GlanceType + 52);
    swift_allocObject();
    v16 = sub_2277AF224(v16);
    *(a2 + v13) = v16;
  }

  sub_2277AF994(v12, v7, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  (*(v9 + 56))(v7, 0, 1, GlanceWorkoutSummationTypeProtobuf);
  v20 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  swift_beginAccess();
  sub_2277AF9FC(v7, v16 + v20, &qword_27D7CEDC8, &qword_2277E5A20);
  return swift_endAccess();
}

uint64_t FirstGlanceTypeProtobuf.workoutSummationType.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v13 = *(GlanceType + 48);
    v14 = *(GlanceType + 52);
    swift_allocObject();
    v11 = sub_2277AF224(v11);
    *(v2 + v8) = v11;
  }

  sub_2277AF994(a1, v7, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  (*(*(GlanceWorkoutSummationTypeProtobuf - 8) + 56))(v7, 0, 1, GlanceWorkoutSummationTypeProtobuf);
  v16 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  swift_beginAccess();
  sub_2277AF9FC(v7, v11 + v16, &qword_27D7CEDC8, &qword_2277E5A20);
  return swift_endAccess();
}

void (*FirstGlanceTypeProtobuf.workoutSummationType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  *(v5 + 96) = GlanceWorkoutSummationTypeProtobuf;
  v10 = *(GlanceWorkoutSummationTypeProtobuf - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  swift_beginAccess();
  sub_2277AF92C(v16 + v17, v8, &qword_27D7CEDC8, &qword_2277E5A20);
  v18 = *(v11 + 48);
  if (v18(v8, 1, GlanceWorkoutSummationTypeProtobuf) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v19 = v14 + *(GlanceWorkoutSummationTypeProtobuf + 20);
    sub_2277E20F4();
    v20 = *(GlanceWorkoutSummationTypeProtobuf + 24);
    GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
    (*(*(GlanceWorkoutSummationProtobuf - 8) + 56))(v14 + v20, 1, 1, GlanceWorkoutSummationProtobuf);
    if (v18(v8, 1, GlanceWorkoutSummationTypeProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CEDC8, &qword_2277E5A20);
    }
  }

  else
  {
    sub_2277AF994(v8, v14, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  }

  return sub_2277AD0A4;
}

double FirstGlanceTypeProtobuf.weeklyGoalRecommendation.getter()
{
  v1 = *(v0 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20)) + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  swift_beginAccess();
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2277AD19C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20)) + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 8))
  {
    v5 = 0.0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2277AD210(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v9 = *(GlanceType + 48);
    v10 = *(GlanceType + 52);
    swift_allocObject();
    v7 = sub_2277AF224(v7);
    *(a2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  result = swift_beginAccess();
  *v11 = v3;
  *(v11 + 8) = 0;
  return result;
}

uint64_t FirstGlanceTypeProtobuf.weeklyGoalRecommendation.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v9 = *(GlanceType + 48);
    v10 = *(GlanceType + 52);
    swift_allocObject();
    v7 = sub_2277AF224(v7);
    *(v2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  result = swift_beginAccess();
  *v11 = a1;
  *(v11 + 8) = 0;
  return result;
}

void (*FirstGlanceTypeProtobuf.weeklyGoalRecommendation.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_2277AD41C;
}

void sub_2277AD41C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v11 = *(GlanceType + 48);
    v12 = *(GlanceType + 52);
    swift_allocObject();
    v7 = sub_2277AF224(v7);
    *(v9 + v8) = v7;
  }

  v13 = v7 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  swift_beginAccess();
  *v13 = v2;
  *(v13 + 8) = 0;

  free(v1);
}

BOOL FirstGlanceTypeProtobuf.hasWeeklyGoalRecommendation.getter()
{
  v1 = *(v0 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20)) + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  swift_beginAccess();
  return (*(v1 + 8) & 1) == 0;
}

Swift::Void __swiftcall FirstGlanceTypeProtobuf.clearWeeklyGoalRecommendation()()
{
  v1 = v0;
  v2 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v7 = *(GlanceType + 48);
    v8 = *(GlanceType + 52);
    swift_allocObject();
    v5 = sub_2277AF224(v5);
    *(v1 + v2) = v5;
  }

  v9 = v5 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  swift_beginAccess();
  *v9 = 0;
  *(v9 + 8) = 1;
}

uint64_t FirstGlanceTypeProtobuf.weeklySummaryInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v8 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  swift_beginAccess();
  sub_2277AF92C(v7 + v8, v6, &qword_27D7CEDE0, &qword_2277E5A28);
  v9 = type metadata accessor for WeeklySummaryInfoProtobuf();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_2277AF994(v6, a1, type metadata accessor for WeeklySummaryInfoProtobuf);
  }

  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xC000000000000000;
  *(a1 + 48) = 0;
  v11 = a1 + *(v9 + 36);
  sub_2277E20F4();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CEDE0, &qword_2277E5A28);
  }

  return result;
}

uint64_t sub_2277AD78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for WeeklySummaryInfoProtobuf();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2277AFA64(a1, v12, type metadata accessor for WeeklySummaryInfoProtobuf);
  v13 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v18 = *(GlanceType + 48);
    v19 = *(GlanceType + 52);
    swift_allocObject();
    v16 = sub_2277AF224(v16);
    *(a2 + v13) = v16;
  }

  sub_2277AF994(v12, v7, type metadata accessor for WeeklySummaryInfoProtobuf);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  swift_beginAccess();
  sub_2277AF9FC(v7, v16 + v20, &qword_27D7CEDE0, &qword_2277E5A28);
  return swift_endAccess();
}

uint64_t FirstGlanceTypeProtobuf.weeklySummaryInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v13 = *(GlanceType + 48);
    v14 = *(GlanceType + 52);
    swift_allocObject();
    v11 = sub_2277AF224(v11);
    *(v2 + v8) = v11;
  }

  sub_2277AF994(a1, v7, type metadata accessor for WeeklySummaryInfoProtobuf);
  v15 = type metadata accessor for WeeklySummaryInfoProtobuf();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  swift_beginAccess();
  sub_2277AF9FC(v7, v11 + v16, &qword_27D7CEDE0, &qword_2277E5A28);
  return swift_endAccess();
}

void (*FirstGlanceTypeProtobuf.weeklySummaryInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for WeeklySummaryInfoProtobuf();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  swift_beginAccess();
  sub_2277AF92C(v16 + v17, v8, &qword_27D7CEDE0, &qword_2277E5A28);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = xmmword_2277E4B40;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xC000000000000000;
    *(v14 + 48) = 0;
    v19 = v14 + *(v9 + 36);
    sub_2277E20F4();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CEDE0, &qword_2277E5A28);
    }
  }

  else
  {
    sub_2277AF994(v8, v14, type metadata accessor for WeeklySummaryInfoProtobuf);
  }

  return sub_2277ADD58;
}

uint64_t FirstGlanceTypeProtobuf.shouldSuggestRecovery.getter()
{
  v1 = *(v0 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v2 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_2277ADE3C(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v9 = *(GlanceType + 48);
    v10 = *(GlanceType + 52);
    swift_allocObject();
    v7 = sub_2277AF224(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  result = swift_beginAccess();
  *(v7 + v11) = v3;
  return result;
}

uint64_t FirstGlanceTypeProtobuf.shouldSuggestRecovery.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v9 = *(GlanceType + 48);
    v10 = *(GlanceType + 52);
    swift_allocObject();
    v7 = sub_2277AF224(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  result = swift_beginAccess();
  *(v7 + v11) = a1 & 1;
  return result;
}

void (*FirstGlanceTypeProtobuf.shouldSuggestRecovery.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_2277AE020;
}

void sub_2277AE020(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v11 = *(GlanceType + 48);
    v12 = *(GlanceType + 52);
    swift_allocObject();
    v7 = sub_2277AF224(v7);
    *(v9 + v8) = v7;
  }

  v13 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  swift_beginAccess();
  *(v7 + v13) = v4;

  free(v1);
}

uint64_t FirstGlanceTypeProtobuf.achievementInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  v8 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  swift_beginAccess();
  sub_2277AF92C(v7 + v8, v6, &qword_27D7CEDF8, &unk_2277E5A30);
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  v10 = *(*(GlanceAchievementInfoProtobuf - 8) + 48);
  if (v10(v6, 1, GlanceAchievementInfoProtobuf) != 1)
  {
    return sub_2277AF994(v6, a1, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
  }

  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v11 = a1 + *(GlanceAchievementInfoProtobuf + 28);
  sub_2277E20F4();
  result = (v10)(v6, 1, GlanceAchievementInfoProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CEDF8, &unk_2277E5A30);
  }

  return result;
}

uint64_t sub_2277AE27C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  v9 = *(GlanceAchievementInfoProtobuf - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](GlanceAchievementInfoProtobuf);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2277AFA64(a1, v12, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
  v13 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v18 = *(GlanceType + 48);
    v19 = *(GlanceType + 52);
    swift_allocObject();
    v16 = sub_2277AF224(v16);
    *(a2 + v13) = v16;
  }

  sub_2277AF994(v12, v7, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
  (*(v9 + 56))(v7, 0, 1, GlanceAchievementInfoProtobuf);
  v20 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  swift_beginAccess();
  sub_2277AF9FC(v7, v16 + v20, &qword_27D7CEDF8, &unk_2277E5A30);
  return swift_endAccess();
}

uint64_t FirstGlanceTypeProtobuf.achievementInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v13 = *(GlanceType + 48);
    v14 = *(GlanceType + 52);
    swift_allocObject();
    v11 = sub_2277AF224(v11);
    *(v2 + v8) = v11;
  }

  sub_2277AF994(a1, v7, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  (*(*(GlanceAchievementInfoProtobuf - 8) + 56))(v7, 0, 1, GlanceAchievementInfoProtobuf);
  v16 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  swift_beginAccess();
  sub_2277AF9FC(v7, v11 + v16, &qword_27D7CEDF8, &unk_2277E5A30);
  return swift_endAccess();
}

void (*FirstGlanceTypeProtobuf.achievementInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  *(v5 + 96) = GlanceAchievementInfoProtobuf;
  v10 = *(GlanceAchievementInfoProtobuf - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  swift_beginAccess();
  sub_2277AF92C(v16 + v17, v8, &qword_27D7CEDF8, &unk_2277E5A30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, GlanceAchievementInfoProtobuf) == 1)
  {
    *v14 = xmmword_2277E4B40;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xE000000000000000;
    *(v14 + 32) = 0;
    v19 = v14 + *(GlanceAchievementInfoProtobuf + 28);
    sub_2277E20F4();
    if (v18(v8, 1, GlanceAchievementInfoProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CEDF8, &unk_2277E5A30);
    }
  }

  else
  {
    sub_2277AF994(v8, v14, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
  }

  return sub_2277AE844;
}

uint64_t FirstGlanceTypeProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2277E2104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FirstGlanceTypeProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_2277E2104();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t FirstGlanceTypeProtobuf.ProtobufType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x10;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2277AEA04@<X0>(uint64_t *a1@<X8>)
{
  result = FirstGlanceTypeProtobuf.ProtobufType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2277AEA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277B38A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t FirstGlanceTypeProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  sub_2277E20F4();
  v2 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  if (qword_27D7CE808 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27D7CED80;
}

uint64_t static FirstGlanceTypeProtobuf.ProtobufType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27D7CED60 = a1;
}

uint64_t sub_2277AEC00@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27D7CED60;
}

uint64_t sub_2277AEC6C()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CED68);
  __swift_project_value_buffer(v0, qword_27D7CED68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2277E59F0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2277E2324();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "yesterdayWorkout";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "activitySummaryData";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "weeklySummaryContent";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "workoutSummationType";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "weeklyGoalRecommendation";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "weeklySummaryInfo";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "shouldSuggestRecovery";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "achievementInfo";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  return sub_2277E2334();
}

uint64_t sub_2277AF014()
{
  GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
  v1 = *(GlanceType + 48);
  v2 = *(GlanceType + 52);
  swift_allocObject();
  result = sub_2277AF054();
  qword_27D7CED80 = result;
  return result;
}

uint64_t sub_2277AF054()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  (*(*(GlanceYesterdayWorkoutProtobuf - 8) + 56))(v0 + v1, 1, 1, GlanceYesterdayWorkoutProtobuf);
  *(v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData) = xmmword_2277E4B40;
  v3 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  (*(*(GlanceWeeklySummaryProtobuf - 8) + 56))(v0 + v3, 1, 1, GlanceWeeklySummaryProtobuf);
  v5 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  (*(*(GlanceWorkoutSummationTypeProtobuf - 8) + 56))(v0 + v5, 1, 1, GlanceWorkoutSummationTypeProtobuf);
  v7 = v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  v9 = type metadata accessor for WeeklySummaryInfoProtobuf();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery) = 0;
  v10 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  (*(*(GlanceAchievementInfoProtobuf - 8) + 56))(v0 + v10, 1, 1, GlanceAchievementInfoProtobuf);
  return v0;
}

uint64_t sub_2277AF224(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v55 - v17;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v19 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  (*(*(GlanceYesterdayWorkoutProtobuf - 8) + 56))(v1 + v19, 1, 1, GlanceYesterdayWorkoutProtobuf);
  v21 = (v1 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
  *(v1 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData) = xmmword_2277E4B40;
  v22 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  v55 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  (*(*(GlanceWeeklySummaryProtobuf - 8) + 56))(v1 + v22, 1, 1, GlanceWeeklySummaryProtobuf);
  v24 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  v56 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  (*(*(GlanceWorkoutSummationTypeProtobuf - 8) + 56))(v1 + v24, 1, 1, GlanceWorkoutSummationTypeProtobuf);
  v26 = v1 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  v57 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  v28 = type metadata accessor for WeeklySummaryInfoProtobuf();
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v59 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  *(v1 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery) = 0;
  v29 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  v60 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  (*(*(GlanceAchievementInfoProtobuf - 8) + 56))(v1 + v29, 1, 1, GlanceAchievementInfoProtobuf);
  swift_beginAccess();
  v31 = *(a1 + 16);
  LOBYTE(v29) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v31;
  *(v1 + 24) = v29;
  v32 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  swift_beginAccess();
  sub_2277AF92C(a1 + v32, v18, &qword_27D7CEDA0, &qword_2277E5A10);
  swift_beginAccess();
  sub_2277AF9FC(v18, v1 + v19, &qword_27D7CEDA0, &qword_2277E5A10);
  swift_endAccess();
  v33 = (a1 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  swift_beginAccess();
  v37 = *v21;
  v36 = v21[1];
  *v21 = v35;
  v21[1] = v34;
  sub_2277905C0(v35, v34);
  sub_22778E130(v37, v36);
  v38 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  swift_beginAccess();
  v39 = v58;
  sub_2277AF92C(a1 + v38, v58, &qword_27D7CEDB8, &qword_2277E5A18);
  v40 = v55;
  swift_beginAccess();
  sub_2277AF9FC(v39, v1 + v40, &qword_27D7CEDB8, &qword_2277E5A18);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  swift_beginAccess();
  v42 = v61;
  sub_2277AF92C(a1 + v41, v61, &qword_27D7CEDC8, &qword_2277E5A20);
  v43 = v56;
  swift_beginAccess();
  sub_2277AF9FC(v42, v1 + v43, &qword_27D7CEDC8, &qword_2277E5A20);
  swift_endAccess();
  v44 = (a1 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation);
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  swift_beginAccess();
  *v26 = v45;
  *(v26 + 8) = v44;
  v46 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  swift_beginAccess();
  v47 = v62;
  sub_2277AF92C(a1 + v46, v62, &qword_27D7CEDE0, &qword_2277E5A28);
  v48 = v57;
  swift_beginAccess();
  sub_2277AF9FC(v47, v1 + v48, &qword_27D7CEDE0, &qword_2277E5A28);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  swift_beginAccess();
  LOBYTE(v49) = *(a1 + v49);
  v50 = v59;
  swift_beginAccess();
  *(v1 + v50) = v49;
  v51 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  swift_beginAccess();
  v52 = v63;
  sub_2277AF92C(a1 + v51, v63, &qword_27D7CEDF8, &unk_2277E5A30);

  v53 = v60;
  swift_beginAccess();
  sub_2277AF9FC(v52, v1 + v53, &qword_27D7CEDF8, &unk_2277E5A30);
  swift_endAccess();
  return v1;
}

uint64_t sub_2277AF92C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2277AF994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2277AF9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2277AFA64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2277AFACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2277AFB2C()
{
  sub_22778CE70(v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout, &qword_27D7CEDA0, &qword_2277E5A10);
  sub_22778E130(*(v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData), *(v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData + 8));
  sub_22778CE70(v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent, &qword_27D7CEDB8, &qword_2277E5A18);
  sub_22778CE70(v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType, &qword_27D7CEDC8, &qword_2277E5A20);
  sub_22778CE70(v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo, &qword_27D7CEDE0, &qword_2277E5A28);
  sub_22778CE70(v0 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo, &qword_27D7CEDF8, &unk_2277E5A30);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FirstGlanceTypeProtobuf.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    GlanceType = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
    v8 = *(GlanceType + 48);
    v9 = *(GlanceType + 52);
    swift_allocObject();
    *(v1 + v2) = sub_2277AF224(v6);
  }

  return sub_2277AFCDC();
}

uint64_t sub_2277AFCDC()
{
  while (1)
  {
    result = sub_2277E2164();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_2277AFFF4();
        }

        else
        {
          sub_2277B0080();
        }
      }

      else if (result == 1)
      {
        sub_2277AFE84();
      }

      else if (result == 2)
      {
        sub_2277AFF18();
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_2277B015C();
      }

      else
      {
        sub_2277B0238();
      }
    }

    else
    {
      switch(result)
      {
        case 7:
          sub_2277B02C4();
          break;
        case 8:
          sub_2277B03A0();
          break;
        case 9:
          sub_2277B042C();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_2277AFE84()
{
  swift_beginAccess();
  sub_2277B38A8();
  sub_2277E2184();
  return swift_endAccess();
}

uint64_t sub_2277AFF18()
{
  swift_beginAccess();
  type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  sub_2277B344C(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  sub_2277E2214();
  return swift_endAccess();
}

uint64_t sub_2277AFFF4()
{
  swift_beginAccess();
  sub_2277E21A4();
  return swift_endAccess();
}

uint64_t sub_2277B0080()
{
  swift_beginAccess();
  type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  sub_2277B344C(&qword_27D7CEC38, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  sub_2277E2214();
  return swift_endAccess();
}

uint64_t sub_2277B015C()
{
  swift_beginAccess();
  type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  sub_2277B344C(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  sub_2277E2214();
  return swift_endAccess();
}

uint64_t sub_2277B0238()
{
  swift_beginAccess();
  sub_2277E21D4();
  return swift_endAccess();
}

uint64_t sub_2277B02C4()
{
  swift_beginAccess();
  type metadata accessor for WeeklySummaryInfoProtobuf();
  sub_2277B344C(&qword_27D7CEC98, type metadata accessor for WeeklySummaryInfoProtobuf);
  sub_2277E2214();
  return swift_endAccess();
}

uint64_t sub_2277B03A0()
{
  swift_beginAccess();
  sub_2277E2174();
  return swift_endAccess();
}

uint64_t sub_2277B042C()
{
  swift_beginAccess();
  type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  sub_2277B344C(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
  sub_2277E2214();
  return swift_endAccess();
}

uint64_t FirstGlanceTypeProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  GlanceTypeProtobuf = type metadata accessor for FirstGlanceTypeProtobuf(0);
  result = sub_2277B0574(*(v2 + *(GlanceTypeProtobuf + 20)), a1, a2);
  if (!v3)
  {
    return sub_2277E20E4();
  }

  return result;
}

uint64_t sub_2277B0574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v68 - v7;
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  v71 = *(GlanceAchievementInfoProtobuf - 8);
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](GlanceAchievementInfoProtobuf);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v68 - v13;
  v75 = type metadata accessor for WeeklySummaryInfoProtobuf();
  v74 = *(v75 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v85 = &v68 - v18;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v78 = *(GlanceWorkoutSummationTypeProtobuf - 8);
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationTypeProtobuf);
  v76 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v81 = &v68 - v23;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  v80 = *(GlanceWeeklySummaryProtobuf - 8);
  v24 = *(v80 + 64);
  MEMORY[0x28223BE20](GlanceWeeklySummaryProtobuf);
  v77 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v68 - v28;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  v31 = *(GlanceYesterdayWorkoutProtobuf - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](GlanceYesterdayWorkoutProtobuf);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v35 = *(a1 + 24);
    v86 = *(a1 + 16);
    v87 = v35;
    sub_2277B38A8();
    v36 = v88;
    result = sub_2277E22A4();
    if (v36)
    {
      return result;
    }

    v38 = a1;
    v69 = GlanceAchievementInfoProtobuf;
    v83 = a3;
    v39 = 0;
  }

  else
  {
    v38 = a1;
    v69 = GlanceAchievementInfoProtobuf;
    v83 = a3;
    v39 = v88;
  }

  v40 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  v41 = v38;
  swift_beginAccess();
  v88 = v41;
  sub_2277AF92C(v41 + v40, v29, &qword_27D7CEDA0, &qword_2277E5A10);
  if ((*(v31 + 48))(v29, 1, GlanceYesterdayWorkoutProtobuf) == 1)
  {
    sub_22778CE70(v29, &qword_27D7CEDA0, &qword_2277E5A10);
    v42 = v85;
  }

  else
  {
    sub_2277AF994(v29, v34, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
    sub_2277B344C(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
    sub_2277E2314();
    result = sub_2277AFACC(v34, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
    v42 = v85;
    if (v39)
    {
      return result;
    }

    v39 = 0;
  }

  v43 = v88;
  v44 = (v88 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v47 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v47 != 2)
    {
      goto LABEL_19;
    }

    v48 = *(v45 + 16);
    v49 = *(v45 + 24);
  }

  else
  {
    if (!v47)
    {
      if ((v46 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v48 = v45;
    v49 = v45 >> 32;
  }

  if (v48 == v49)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_2277905C0(v45, v46);
  sub_2277E22C4();
  result = sub_22778E130(v45, v46);
  if (v39)
  {
    return result;
  }

  v39 = 0;
LABEL_19:
  v50 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  swift_beginAccess();
  v51 = v81;
  sub_2277AF92C(v43 + v50, v81, &qword_27D7CEDB8, &qword_2277E5A18);
  v52 = (*(v80 + 48))(v51, 1, GlanceWeeklySummaryProtobuf);
  v53 = v84;
  if (v52 == 1)
  {
    sub_22778CE70(v51, &qword_27D7CEDB8, &qword_2277E5A18);
  }

  else
  {
    v54 = v51;
    v55 = v77;
    sub_2277AF994(v54, v77, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
    sub_2277B344C(&qword_27D7CEC38, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
    sub_2277E2314();
    result = sub_2277AFACC(v55, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
    if (v39)
    {
      return result;
    }

    v39 = 0;
    v53 = v84;
  }

  v56 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  swift_beginAccess();
  sub_2277AF92C(v43 + v56, v42, &qword_27D7CEDC8, &qword_2277E5A20);
  if ((*(v78 + 48))(v42, 1, GlanceWorkoutSummationTypeProtobuf) == 1)
  {
    sub_22778CE70(v42, &qword_27D7CEDC8, &qword_2277E5A20);
  }

  else
  {
    v57 = v53;
    v58 = v76;
    sub_2277AF994(v42, v76, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
    sub_2277B344C(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
    sub_2277E2314();
    result = sub_2277AFACC(v58, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
    if (v39)
    {
      return result;
    }

    v39 = 0;
    v53 = v57;
  }

  v59 = (v43 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation);
  swift_beginAccess();
  if ((v59[1] & 1) == 0)
  {
    v60 = *v59;
    result = sub_2277E22E4();
    if (v39)
    {
      return result;
    }

    v39 = 0;
  }

  v61 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  swift_beginAccess();
  sub_2277AF92C(v43 + v61, v53, &qword_27D7CEDE0, &qword_2277E5A28);
  if ((*(v74 + 48))(v53, 1, v75) == 1)
  {
    sub_22778CE70(v53, &qword_27D7CEDE0, &qword_2277E5A28);
  }

  else
  {
    v62 = v73;
    sub_2277AF994(v53, v73, type metadata accessor for WeeklySummaryInfoProtobuf);
    sub_2277B344C(&qword_27D7CEC98, type metadata accessor for WeeklySummaryInfoProtobuf);
    sub_2277E2314();
    result = sub_2277AFACC(v62, type metadata accessor for WeeklySummaryInfoProtobuf);
    if (v39)
    {
      return result;
    }

    v39 = 0;
  }

  v63 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  swift_beginAccess();
  if (*(v43 + v63) != 1 || (result = sub_2277E2294(), !v39))
  {
    v64 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
    swift_beginAccess();
    v65 = v43 + v64;
    v66 = v72;
    sub_2277AF92C(v65, v72, &qword_27D7CEDF8, &unk_2277E5A30);
    if ((*(v71 + 48))(v66, 1, v69) == 1)
    {
      return sub_22778CE70(v66, &qword_27D7CEDF8, &unk_2277E5A30);
    }

    else
    {
      v67 = v70;
      sub_2277AF994(v66, v70, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      sub_2277B344C(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      sub_2277E2314();
      return sub_2277AFACC(v67, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
    }
  }

  return result;
}

BOOL sub_2277B11B4(uint64_t a1, uint64_t a2)
{
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  v162 = *(GlanceAchievementInfoProtobuf - 8);
  v163 = GlanceAchievementInfoProtobuf;
  v5 = *(v162 + 64);
  MEMORY[0x28223BE20](GlanceAchievementInfoProtobuf);
  v7 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEEA8, &qword_2277E5DE0);
  v8 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v10 = &v157 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v165 = &v157 - v16;
  v17 = type metadata accessor for WeeklySummaryInfoProtobuf();
  v168 = *(v17 - 8);
  v169 = v17;
  v18 = *(v168 + 64);
  MEMORY[0x28223BE20](v17);
  v164 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEEB0, &qword_2277E5DE8);
  v20 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v170 = &v157 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v166 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v171 = &v157 - v26;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v176 = *(GlanceWorkoutSummationTypeProtobuf - 8);
  v177 = GlanceWorkoutSummationTypeProtobuf;
  v28 = *(v176 + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationTypeProtobuf);
  v172 = (&v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEEB8, &qword_2277E5DF0);
  v30 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v178 = &v157 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v173 = (&v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v184 = &v157 - v36;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  v181 = *(GlanceWeeklySummaryProtobuf - 8);
  v182 = GlanceWeeklySummaryProtobuf;
  v38 = *(v181 + 64);
  MEMORY[0x28223BE20](GlanceWeeklySummaryProtobuf);
  v174 = (&v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEEC0, &qword_2277E5DF8);
  v40 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v183 = &v157 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v179 = &v157 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v185 = &v157 - v46;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  v188 = *(GlanceYesterdayWorkoutProtobuf - 8);
  v189 = GlanceYesterdayWorkoutProtobuf;
  v48 = *(v188 + 64);
  MEMORY[0x28223BE20](GlanceYesterdayWorkoutProtobuf);
  v186 = &v157 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEEC8, &unk_2277E5E00);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v157 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v54 - 8);
  v187 = (&v157 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v56);
  v59 = &v157 - v58;
  swift_beginAccess();
  v60 = *(a1 + 16);
  swift_beginAccess();
  v61 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v61)
    {
      case 1:
        if (v60 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v60 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v60 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v60 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v60 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v60 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v60 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v60 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v60 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v60 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v60 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v60 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      case 13:
        if (v60 != 13)
        {
          return 0;
        }

        goto LABEL_6;
      case 14:
        if (v60 != 14)
        {
          return 0;
        }

        goto LABEL_6;
      case 15:
        if (v60 != 15)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v60)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v60 != v61)
  {
    return 0;
  }

LABEL_6:
  v158 = v7;
  v159 = v15;
  v160 = v10;
  v62 = a2;
  v63 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  swift_beginAccess();
  v64 = a1 + v63;
  v65 = v62;
  sub_2277AF92C(v64, v59, &qword_27D7CEDA0, &qword_2277E5A10);
  v66 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
  swift_beginAccess();
  v67 = *(v50 + 48);
  sub_2277AF92C(v59, v53, &qword_27D7CEDA0, &qword_2277E5A10);
  sub_2277AF92C(v62 + v66, &v53[v67], &qword_27D7CEDA0, &qword_2277E5A10);
  v68 = v189;
  v69 = *(v188 + 48);
  if (v69(v53, 1, v189) == 1)
  {

    sub_22778CE70(v59, &qword_27D7CEDA0, &qword_2277E5A10);
    if (v69(&v53[v67], 1, v68) == 1)
    {
      sub_22778CE70(v53, &qword_27D7CEDA0, &qword_2277E5A10);
      goto LABEL_9;
    }

LABEL_15:
    sub_22778CE70(v53, &qword_27D7CEEC8, &unk_2277E5E00);
    goto LABEL_62;
  }

  v88 = a1;
  v89 = v187;
  sub_2277AF92C(v53, v187, &qword_27D7CEDA0, &qword_2277E5A10);
  if (v69(&v53[v67], 1, v68) == 1)
  {

    sub_22778CE70(v59, &qword_27D7CEDA0, &qword_2277E5A10);
    sub_2277AFACC(v89, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
    goto LABEL_15;
  }

  v90 = v186;
  sub_2277AF994(&v53[v67], v186, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  v91 = *v89;
  v92 = v89[1];
  v93 = *v90;
  v94 = *(v90 + 8);

  v95 = v94;
  v96 = v187;
  if ((sub_227790458(v91, v92, v93, v95) & 1) == 0 || *(v96 + 16) != *(v90 + 16))
  {
    sub_22778CE70(v59, &qword_27D7CEDA0, &qword_2277E5A10);
    sub_2277AFACC(v90, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
    sub_2277AFACC(v96, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
    sub_22778CE70(v53, &qword_27D7CEDA0, &qword_2277E5A10);
    goto LABEL_62;
  }

  v97 = *(v189 + 24);
  sub_2277E2104();
  v98 = v90;
  sub_2277B344C(&qword_27D7CE980, MEMORY[0x277D216C8]);
  v99 = sub_2277E2404();
  sub_22778CE70(v59, &qword_27D7CEDA0, &qword_2277E5A10);
  sub_2277AFACC(v98, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  sub_2277AFACC(v96, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  sub_22778CE70(v53, &qword_27D7CEDA0, &qword_2277E5A10);
  a1 = v88;
  if ((v99 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_9:
  v70 = (a1 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
  swift_beginAccess();
  v72 = *v70;
  v71 = v70[1];
  v73 = (v65 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  sub_2277905C0(v72, v71);
  sub_2277905C0(v75, v74);
  v76 = v65;
  v77 = sub_227790458(v72, v71, v75, v74);
  sub_22778E130(v75, v74);
  sub_22778E130(v72, v71);
  if ((v77 & 1) == 0)
  {
LABEL_62:

    return 0;
  }

  v78 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  swift_beginAccess();
  v79 = v185;
  sub_2277AF92C(a1 + v78, v185, &qword_27D7CEDB8, &qword_2277E5A18);
  v80 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
  swift_beginAccess();
  v81 = *(v180 + 48);
  v82 = v183;
  sub_2277AF92C(v79, v183, &qword_27D7CEDB8, &qword_2277E5A18);
  v83 = v82;
  sub_2277AF92C(v76 + v80, v82 + v81, &qword_27D7CEDB8, &qword_2277E5A18);
  v84 = v182;
  v85 = *(v181 + 48);
  if (v85(v82, 1, v182) == 1)
  {
    sub_22778CE70(v79, &qword_27D7CEDB8, &qword_2277E5A18);
    v86 = v85(v82 + v81, 1, v84);
    v87 = v184;
    if (v86 == 1)
    {
      v189 = v76;
      sub_22778CE70(v83, &qword_27D7CEDB8, &qword_2277E5A18);
      goto LABEL_55;
    }

LABEL_23:
    v102 = &qword_27D7CEEC0;
    v103 = &qword_2277E5DF8;
LABEL_61:
    sub_22778CE70(v83, v102, v103);
    goto LABEL_62;
  }

  v100 = v179;
  sub_2277AF92C(v82, v179, &qword_27D7CEDB8, &qword_2277E5A18);
  v101 = v85(v82 + v81, 1, v84);
  v87 = v184;
  if (v101 == 1)
  {
    sub_22778CE70(v185, &qword_27D7CEDB8, &qword_2277E5A18);
    sub_2277AFACC(v100, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
    goto LABEL_23;
  }

  v189 = v76;
  v104 = v83 + v81;
  v105 = v174;
  sub_2277AF994(v104, v174, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  GlanceWeeklySummaryProtobufV2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching32FirstGlanceWeeklySummaryProtobufV2eeoiySbAC_ACtFZ_0(v100, v105);
  sub_2277AFACC(v105, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  sub_22778CE70(v185, &qword_27D7CEDB8, &qword_2277E5A18);
  sub_2277AFACC(v100, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  sub_22778CE70(v83, &qword_27D7CEDB8, &qword_2277E5A18);
  if ((GlanceWeeklySummaryProtobufV2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_55:
  v107 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  swift_beginAccess();
  sub_2277AF92C(a1 + v107, v87, &qword_27D7CEDC8, &qword_2277E5A20);
  v108 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
  v109 = v189;
  swift_beginAccess();
  v110 = *(v175 + 48);
  v111 = v178;
  sub_2277AF92C(v87, v178, &qword_27D7CEDC8, &qword_2277E5A20);
  v83 = v111;
  sub_2277AF92C(v109 + v108, v111 + v110, &qword_27D7CEDC8, &qword_2277E5A20);
  v112 = v177;
  v113 = *(v176 + 48);
  if (v113(v111, 1, v177) == 1)
  {
    sub_22778CE70(v87, &qword_27D7CEDC8, &qword_2277E5A20);
    if (v113(v111 + v110, 1, v112) == 1)
    {
      sub_22778CE70(v111, &qword_27D7CEDC8, &qword_2277E5A20);
      goto LABEL_66;
    }

    goto LABEL_60;
  }

  v114 = v173;
  sub_2277AF92C(v111, v173, &qword_27D7CEDC8, &qword_2277E5A20);
  if (v113(v111 + v110, 1, v112) == 1)
  {
    sub_22778CE70(v184, &qword_27D7CEDC8, &qword_2277E5A20);
    sub_2277AFACC(v114, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
LABEL_60:
    v102 = &qword_27D7CEEB8;
    v103 = &qword_2277E5DF0;
    goto LABEL_61;
  }

  v116 = v111 + v110;
  v117 = v172;
  sub_2277AF994(v116, v172, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  GlanceWorkoutSummationTypeProtobufV2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching39FirstGlanceWorkoutSummationTypeProtobufV2eeoiySbAC_ACtFZ_0(v114, v117);
  sub_2277AFACC(v117, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  sub_22778CE70(v184, &qword_27D7CEDC8, &qword_2277E5A20);
  sub_2277AFACC(v114, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  sub_22778CE70(v111, &qword_27D7CEDC8, &qword_2277E5A20);
  if ((GlanceWorkoutSummationTypeProtobufV2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_66:
  v119 = a1 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  swift_beginAccess();
  v120 = *v119;
  v121 = *(v119 + 8);
  v122 = v109 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
  swift_beginAccess();
  v123 = *(v122 + 8);
  if (v121)
  {
    if ((*(v122 + 8) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if ((*(v122 + 8) & 1) != 0 || v120 != *v122)
  {
    goto LABEL_62;
  }

  v124 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  swift_beginAccess();
  v125 = v171;
  sub_2277AF92C(a1 + v124, v171, &qword_27D7CEDE0, &qword_2277E5A28);
  v126 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
  swift_beginAccess();
  v127 = *(v167 + 48);
  v128 = v109;
  v129 = v170;
  sub_2277AF92C(v125, v170, &qword_27D7CEDE0, &qword_2277E5A28);
  v130 = v128;
  v83 = v129;
  sub_2277AF92C(v128 + v126, v129 + v127, &qword_27D7CEDE0, &qword_2277E5A28);
  v131 = v169;
  v132 = *(v168 + 48);
  if (v132(v129, 1, v169) == 1)
  {
    sub_22778CE70(v125, &qword_27D7CEDE0, &qword_2277E5A28);
    v133 = v128;
    if (v132(v83 + v127, 1, v131) == 1)
    {
      sub_22778CE70(v83, &qword_27D7CEDE0, &qword_2277E5A28);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v134 = v166;
  sub_2277AF92C(v129, v166, &qword_27D7CEDE0, &qword_2277E5A28);
  if (v132(v129 + v127, 1, v131) == 1)
  {
    sub_22778CE70(v171, &qword_27D7CEDE0, &qword_2277E5A28);
    sub_2277AFACC(v134, type metadata accessor for WeeklySummaryInfoProtobuf);
LABEL_76:
    v102 = &qword_27D7CEEB0;
    v103 = &qword_2277E5DE8;
    goto LABEL_61;
  }

  v135 = v129 + v127;
  v136 = v164;
  sub_2277AF994(v135, v164, type metadata accessor for WeeklySummaryInfoProtobuf);
  v137 = _s15FitnessCoaching25WeeklySummaryInfoProtobufV2eeoiySbAC_ACtFZ_0(v134, v136);
  sub_2277AFACC(v136, type metadata accessor for WeeklySummaryInfoProtobuf);
  sub_22778CE70(v171, &qword_27D7CEDE0, &qword_2277E5A28);
  sub_2277AFACC(v134, type metadata accessor for WeeklySummaryInfoProtobuf);
  sub_22778CE70(v129, &qword_27D7CEDE0, &qword_2277E5A28);
  v133 = v130;
  if ((v137 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_78:
  v138 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  swift_beginAccess();
  LODWORD(v138) = *(a1 + v138);
  v139 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__shouldSuggestRecovery;
  swift_beginAccess();
  if (v138 != *(v133 + v139))
  {
    goto LABEL_62;
  }

  v140 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  swift_beginAccess();
  v141 = v165;
  sub_2277AF92C(a1 + v140, v165, &qword_27D7CEDF8, &unk_2277E5A30);
  v142 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
  swift_beginAccess();
  v143 = *(v161 + 48);
  v144 = v133;
  v145 = v160;
  sub_2277AF92C(v141, v160, &qword_27D7CEDF8, &unk_2277E5A30);
  v146 = v144 + v142;
  v147 = v145;
  sub_2277AF92C(v146, v145 + v143, &qword_27D7CEDF8, &unk_2277E5A30);
  v148 = v163;
  v149 = *(v162 + 48);
  if (v149(v145, 1, v163) != 1)
  {
    v150 = v159;
    sub_2277AF92C(v145, v159, &qword_27D7CEDF8, &unk_2277E5A30);
    if (v149(v145 + v143, 1, v148) == 1)
    {

      sub_22778CE70(v165, &qword_27D7CEDF8, &unk_2277E5A30);
      sub_2277AFACC(v150, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      goto LABEL_85;
    }

    v154 = v158;
    sub_2277AF994(v147 + v143, v158, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
    if ((sub_227790458(*v150, *(v150 + 8), *v154, *(v154 + 8)) & 1) == 0 || (*(v150 + 16) != *(v154 + 16) || *(v150 + 24) != *(v154 + 24)) && (sub_2277E2984() & 1) == 0 || *(v150 + 32) != *(v154 + 32))
    {

      sub_22778CE70(v165, &qword_27D7CEDF8, &unk_2277E5A30);
      sub_2277AFACC(v154, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      sub_2277AFACC(v150, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      v153 = v147;
      v151 = &qword_27D7CEDF8;
      v152 = &unk_2277E5A30;
      goto LABEL_92;
    }

    v155 = *(v148 + 28);
    sub_2277E2104();
    sub_2277B344C(&qword_27D7CE980, MEMORY[0x277D216C8]);
    v156 = sub_2277E2404();

    sub_22778CE70(v165, &qword_27D7CEDF8, &unk_2277E5A30);
    sub_2277AFACC(v154, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
    sub_2277AFACC(v150, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
    sub_22778CE70(v147, &qword_27D7CEDF8, &unk_2277E5A30);
    return (v156 & 1) != 0;
  }

  sub_22778CE70(v141, &qword_27D7CEDF8, &unk_2277E5A30);
  if (v149(v145 + v143, 1, v148) != 1)
  {
LABEL_85:
    v151 = &qword_27D7CEEA8;
    v152 = &qword_2277E5DE0;
    v153 = v145;
LABEL_92:
    sub_22778CE70(v153, v151, v152);
    return 0;
  }

  sub_22778CE70(v145, &qword_27D7CEDF8, &unk_2277E5A30);
  return 1;
}

uint64_t FirstGlanceTypeProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceTypeProtobuf(0);
  sub_2277B344C(&qword_27D7CEE08, type metadata accessor for FirstGlanceTypeProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277B28D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2277E20F4();
  v4 = *(a1 + 20);
  if (qword_27D7CE808 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27D7CED80;
}

uint64_t sub_2277B2964@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2277E2104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2277B29CC(uint64_t a1)
{
  v3 = sub_2277E2104();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2277B2A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277B344C(&qword_27D7CEE98, type metadata accessor for FirstGlanceTypeProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277B2B24(uint64_t a1)
{
  v2 = sub_2277B344C(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277B2B90()
{
  sub_2277B344C(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf);

  return sub_2277E2264();
}

uint64_t sub_2277B2C10()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CED88);
  __swift_project_value_buffer(v0, qword_27D7CED88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2277E5A00;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 0;
  *v5 = "weeklySummary";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2277E2324();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "competitionStart";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "competitionEnd";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "achievementProgress";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "yesterdayAchievementEarned";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "yesterdayRingsClosed";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "yesterdayRingExceeded";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "yesterdayBestWorkout";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "yesterdayLongestWorkout";
  *(v22 + 8) = 23;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "yesterdaySadRings";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "yesterdayNoRings";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "bestThisWeek";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "todayRings";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "todayUpdate";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "modernWeeklySummary";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "bestWorkoutSummationThisWeek";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v8();
  return sub_2277E2334();
}

uint64_t _s15FitnessCoaching23FirstGlanceTypeProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_2277B11B4(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_2277E2104();
  sub_2277B344C(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

unint64_t sub_2277B3298()
{
  result = qword_27D7CEE10;
  if (!qword_27D7CEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEE10);
  }

  return result;
}

unint64_t sub_2277B32F0()
{
  result = qword_27D7CEE18;
  if (!qword_27D7CEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEE18);
  }

  return result;
}

unint64_t sub_2277B3348()
{
  result = qword_27D7CEE20;
  if (!qword_27D7CEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEE20);
  }

  return result;
}

unint64_t sub_2277B33A0()
{
  result = qword_27D7CEE28;
  if (!qword_27D7CEE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CEE30, &qword_2277E5B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEE28);
  }

  return result;
}

uint64_t sub_2277B344C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2277B3594()
{
  result = sub_2277E2104();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2277B3630()
{
  sub_2277B3854(319, &qword_27D7CEE70, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_2277B3854(319, &qword_27D7CEE78, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_2277B3854(319, &qword_27D7CEE80, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_2277B3854(319, &qword_27D7CEE88, type metadata accessor for WeeklySummaryInfoProtobuf);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_2277B3854(319, &qword_27D7CEE90, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_2277B3854(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2277E2774();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2277B38A8()
{
  result = qword_27D7CEEA0;
  if (!qword_27D7CEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEEA0);
  }

  return result;
}

uint64_t TransportDispatching.register(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_2277B3924, 0, 0);
}

uint64_t sub_2277B3924()
{
  v1 = v0[10];
  v2 = (*(v0[9] + 8))(v0[8]);
  v0[11] = v2;

  return MEMORY[0x2822009F8](sub_2277B39A4, v2, 0);
}

uint64_t sub_2277B39A4()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_2277E5890;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2277A9728(&unk_2277E58A0, v6, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v11;
  swift_endAccess();

  v9 = v0[1];

  return v9();
}

uint64_t sub_2277B3AE4(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22779696C;

  return sub_2277A8394(a1, a2, v7);
}

uint64_t TransportDispatching.register<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2277B3BD8, 0, 0);
}

{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2277B3DDC, 0, 0);
}

uint64_t sub_2277B3BD8()
{
  v1 = v0[9];
  v0[10] = (*(v0[7] + 8))(v0[5]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_2277B3CA0;
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_2277A7310(v7, v5, v6, v4, v3);
}

uint64_t sub_2277B3CA0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2277B3DDC()
{
  v1 = v0[9];
  v0[10] = (*(v0[7] + 8))(v0[5]);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_2277B4350;
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_2277A7908(v7, v5, v6, v4, v3);
}

uint64_t TransportDispatching.register<A, B>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v11;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  return MEMORY[0x2822009F8](sub_2277B3EDC, 0, 0);
}

uint64_t sub_2277B3EDC()
{
  v1 = v0[11];
  v0[12] = (*(v0[8] + 8))(v0[5]);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_2277B3FA4;
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2277A7D5C(v9, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_2277B3FA4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t TransportDispatching.unregister(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_2277B40D8, 0, 0);
}

{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_2277B421C, 0, 0);
}

uint64_t sub_2277B40D8()
{
  v1 = v0[8];
  v2 = (*(v0[7] + 8))(v0[6]);
  v0[9] = v2;

  return MEMORY[0x2822009F8](sub_2277B4158, v2, 0);
}

uint64_t sub_2277B4158()
{
  v1 = v0[9];
  v2 = v0[5];
  swift_beginAccess();
  sub_2277A6EB0(0, 0, v2);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2277B421C()
{
  v1 = v0[8];
  v2 = (*(v0[7] + 8))(v0[6]);
  v0[9] = v2;

  return MEMORY[0x2822009F8](sub_2277B429C, v2, 0);
}

uint64_t sub_2277B429C()
{
  v1 = v0[9];
  v2 = v0[5];
  swift_beginAccess();
  sub_2277A6ED8(0, 0, v2);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t FirstGlanceWorkoutSummationType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  if ((v0[3] & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v0[3];
  }

  else
  {
    v4 = 0;
  }

  if ((v0[2] & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v0[2];
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x22AA9BBC0](v2 >> 62);
  MEMORY[0x22AA9BBC0](v1);
  MEMORY[0x22AA9BBC0](v2);
  MEMORY[0x22AA9BBE0](v5);
  MEMORY[0x22AA9BBE0](v4);
  return MEMORY[0x22AA9BBC0](v3);
}

uint64_t FirstGlanceWorkoutSummationType.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_2277E2A04();
  FirstGlanceWorkoutSummationType.hash(into:)();
  return sub_2277E2A44();
}

uint64_t sub_2277B4434()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_2277E2A04();
  FirstGlanceWorkoutSummationType.hash(into:)();
  return sub_2277E2A44();
}

uint64_t sub_2277B448C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_2277E2A04();
  FirstGlanceWorkoutSummationType.hash(into:)();
  return sub_2277E2A44();
}

BOOL _s15FitnessCoaching31FirstGlanceWorkoutSummationTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (!(v2 >> 62))
  {
    if (!(v7 >> 62))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v2 >> 62 != 1)
  {
    if (v7 >> 62 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v7 >> 62 != 1)
  {
    return 0;
  }

LABEL_4:
  v18 = a2[4];
  v19 = v3;
  v20 = v2;
  v21 = v5;
  v22 = v4;
  v23 = v6;
  v14 = v8;
  v15 = v7;
  v16 = v10;
  v17 = v9;
  return _s15FitnessCoaching27FirstGlanceWorkoutSummationV2eeoiySbAC_ACtFZ_0(&v19, &v14);
}

unint64_t sub_2277B4580()
{
  result = qword_27D7CEEE0;
  if (!qword_27D7CEEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEEE0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FirstGlanceWorkoutSummationType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for FirstGlanceWorkoutSummationType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for FirstGlanceWorkoutSummationType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 4 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

FitnessCoaching::FitnessPlusPlanNotificationType_optional __swiftcall FitnessPlusPlanNotificationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2277E2924();

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

uint64_t FitnessPlusPlanNotificationType.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696E657665;
  }

  else
  {
    return 0x676E696E726F6DLL;
  }
}

uint64_t sub_2277B4780(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x676E696E657665;
  }

  else
  {
    v2 = 0x676E696E726F6DLL;
  }

  if (*a2)
  {
    v3 = 0x676E696E657665;
  }

  else
  {
    v3 = 0x676E696E726F6DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2277E2984();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_2277B480C()
{
  result = qword_27D7CEEE8;
  if (!qword_27D7CEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEEE8);
  }

  return result;
}

uint64_t sub_2277B4860()
{
  v1 = *v0;
  sub_2277E2A04();
  sub_2277E2484();

  return sub_2277E2A44();
}

uint64_t sub_2277B48D8()
{
  *v0;
  sub_2277E2484();
}

uint64_t sub_2277B4934()
{
  v1 = *v0;
  sub_2277E2A04();
  sub_2277E2484();

  return sub_2277E2A44();
}

uint64_t sub_2277B49A8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2277E2924();

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

void sub_2277B4A08(uint64_t *a1@<X8>)
{
  v2 = 0x676E696E726F6DLL;
  if (*v1)
  {
    v2 = 0x676E696E657665;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t FirstGlanceWorkoutSummation.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  sub_2277B5128(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277B4B08(uint64_t a1, uint64_t *a2)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v6 = *(GlanceModalityProtobuf - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a2 + 8);
  v15 = *a2;
  v16 = v10;
  sub_2277B5128(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf);
  result = sub_2277E2274();
  if (!v2)
  {
    v12 = *(type metadata accessor for FirstGlanceWorkoutSummationProtobuf() + 32);
    sub_2277B4F04(a1 + v12);
    sub_22778B458(v9, a1 + v12);
    result = (*(v6 + 56))(a1 + v12, 0, 1, GlanceModalityProtobuf);
    *a1 = *(a2 + 1);
    v13 = a2[4];
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v13 <= 0x7FFFFFFF)
    {
      *(a1 + 16) = v13;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t FirstGlanceWorkoutSummation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v10 = *(GlanceModalityProtobuf - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  sub_22778B3E8(a1 + *(GlanceWorkoutSummationProtobuf + 32), v8);
  v15 = *(v10 + 48);
  if (v15(v8, 1, GlanceModalityProtobuf) == 1)
  {
    *v13 = 0;
    v16 = v13 + *(GlanceModalityProtobuf + 20);
    sub_2277E20F4();
    v17 = *(GlanceModalityProtobuf + 24);
    GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
    (*(*(GlanceModalityTypeProtobuf - 8) + 56))(v13 + v17, 1, 1, GlanceModalityTypeProtobuf);
    if (v15(v8, 1, GlanceModalityProtobuf) != 1)
    {
      sub_2277B4F04(v8);
    }
  }

  else
  {
    sub_22778B458(v8, v13);
  }

  FirstGlanceModality.init(_:)(v13, &v25);
  if (v2)
  {
    return sub_2277B4F6C(a1);
  }

  v20 = v25;
  v21 = v26;
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  result = sub_2277B4F6C(a1);
  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_2277B4F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE928, &unk_2277E3A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2277B4F6C(uint64_t a1)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  (*(*(GlanceWorkoutSummationProtobuf - 8) + 8))(a1, GlanceWorkoutSummationProtobuf);
  return a1;
}

uint64_t sub_2277B5058()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  sub_2277B5128(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277B5128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FirstGlanceContent.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for FirstGlanceContentProtobuf();
  sub_2277B61E0(&qword_27D7CEEF0, type metadata accessor for FirstGlanceContentProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277B5240(uint64_t a1, __int128 *a2)
{
  GlanceType = type metadata accessor for FirstGlanceType();
  v6 = *(GlanceType - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](GlanceType - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GlanceTypeProtobuf = type metadata accessor for FirstGlanceTypeProtobuf(0);
  v29 = *(GlanceTypeProtobuf - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](GlanceTypeProtobuf);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a2;
  v13 = *a1;
  v14 = *(a1 + 8);
  sub_2277B6100(&v31, &v30);
  result = sub_22778E130(v13, v14);
  *a1 = v31;
  v16 = *(a2 + 2);
  if (v16 >> 31)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = v6;
  *(a1 + 16) = v16;
  v17 = *(a2 + 3);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
LABEL_10:
    v24 = *(a1 + 24);

    *(a1 + 24) = v19;
    v25 = *(a2 + 4);
    if (v25 >= 0xFFFFFFFF80000000)
    {
      if (v25 <= 0x7FFFFFFF)
      {
        *(a1 + 32) = v25;
        return result;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = a2;
  v27 = a1;
  v30 = MEMORY[0x277D84F90];
  sub_2277DDC74(0, v18, 0);
  v19 = v30;
  v20 = v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v28 = *(v28 + 72);
  while (1)
  {
    v21 = sub_2277B615C(v20, v9, type metadata accessor for FirstGlanceType);
    MEMORY[0x28223BE20](v21);
    *(&v26 - 2) = v9;
    sub_2277B61E0(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf);
    sub_2277E2274();
    if (v2)
    {
      break;
    }

    sub_2277B6228(v9, type metadata accessor for FirstGlanceType);
    v30 = v19;
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_2277DDC74(v22 > 1, v23 + 1, 1);
      v19 = v30;
    }

    *(v19 + 16) = v23 + 1;
    sub_2277B6288(v12, v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23, type metadata accessor for FirstGlanceTypeProtobuf);
    v20 += v28;
    if (!--v18)
    {
      a2 = v26;
      a1 = v27;
      goto LABEL_10;
    }
  }

  sub_2277B6228(v9, type metadata accessor for FirstGlanceType);
}

uint64_t FirstGlanceContent.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  GlanceType = type metadata accessor for FirstGlanceType();
  v45 = *(GlanceType - 8);
  v6 = *(v45 + 64);
  v7 = MEMORY[0x28223BE20](GlanceType - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v36 - v11);
  MEMORY[0x28223BE20](v10);
  v44 = &v36 - v13;
  GlanceTypeProtobuf = type metadata accessor for FirstGlanceTypeProtobuf(0);
  v46 = *(GlanceTypeProtobuf - 8);
  v15 = *(v46 + 64);
  v16 = MEMORY[0x28223BE20](GlanceTypeProtobuf - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  if ((*(a1 + 16) & 0x80000000) != 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v36 = *(a1 + 16);
  v37 = a2;
  v22 = *a1;
  v39 = *(a1 + 8);
  v40 = a1;
  v23 = *(a1 + 24);
  v24 = *(v23 + 16);
  v38 = v22;
  result = sub_2277905C0(v22, v39);
  v43 = v24;
  if (v24)
  {
    v42 = v12;
    v25 = 0;
    v26 = MEMORY[0x277D84F90];
    v41 = v9;
    while (v25 < *(v23 + 16))
    {
      sub_2277B615C(v23 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v25, v21, type metadata accessor for FirstGlanceTypeProtobuf);
      sub_2277B615C(v21, v18, type metadata accessor for FirstGlanceTypeProtobuf);
      v27 = v42;
      FirstGlanceType.init(_:)(v18, v42);
      if (v2)
      {
        sub_22778E130(v38, v39);
        sub_2277B6228(v21, type metadata accessor for FirstGlanceTypeProtobuf);
        sub_2277B6228(v40, type metadata accessor for FirstGlanceContentProtobuf);
      }

      sub_2277B6228(v21, type metadata accessor for FirstGlanceTypeProtobuf);
      v28 = v27;
      v29 = v44;
      sub_2277B6288(v28, v44, type metadata accessor for FirstGlanceType);
      sub_2277B6288(v29, v9, type metadata accessor for FirstGlanceType);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_2277B5A98(0, v26[2] + 1, 1, v26);
      }

      v31 = v26[2];
      v30 = v26[3];
      if (v31 >= v30 >> 1)
      {
        v26 = sub_2277B5A98(v30 > 1, v31 + 1, 1, v26);
      }

      ++v25;
      v26[2] = v31 + 1;
      v32 = v26 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v31;
      v9 = v41;
      result = sub_2277B6288(v41, v32, type metadata accessor for FirstGlanceType);
      if (v43 == v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_13:
  v33 = *(v40 + 32);
  result = sub_2277B6228(v40, type metadata accessor for FirstGlanceContentProtobuf);
  v34 = v37;
  v35 = v39;
  *v37 = v38;
  v34[1] = v35;
  v34[2] = v36;
  v34[3] = v26;
  v34[4] = v33;
  return result;
}

uint64_t sub_2277B59C8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for FirstGlanceContentProtobuf();
  sub_2277B61E0(&qword_27D7CEEF0, type metadata accessor for FirstGlanceContentProtobuf);
  return sub_2277E2274();
}

size_t sub_2277B5A98(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF20, &qword_2277E6088);
  v10 = *(type metadata accessor for FirstGlanceType() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FirstGlanceType() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2277B5D00(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF10, &qword_2277E6078);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF18, &qword_2277E6080) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF18, &qword_2277E6080) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2277B5EF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF00, &qword_2277E6068);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2277B5FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF08, &qword_2277E6070);
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

uint64_t sub_2277B615C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2277B61E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2277B6228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2277B6288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AsyncWorkoutWeekStream.__allocating_init(dateInterval:workoutStream:)(char *a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_2277E2044();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v24);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2277E1FA4();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2277E1E84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 48);
  v18 = *(v2 + 52);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2277E1E64();
  sub_2277E2014();
  Date.intervalForFullWeek(calendar:)(v16);
  (*(v4 + 8))(v7, v24);
  (*(v8 + 8))(v11, v23);
  v20 = *(v13 + 32);
  v20(v19 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_currentWeekInterval, v16, v12);
  v20(v19 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_dateInterval, a1, v12);
  *(v19 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_workoutStream) = v25;
  return v19;
}

uint64_t AsyncWorkoutWeekStream.init(dateInterval:workoutStream:)(char *a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_2277E2044();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2277E1FA4();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2277E1E84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_2277E1E64();
  sub_2277E2014();
  Date.intervalForFullWeek(calendar:)(v16);
  (*(v4 + 8))(v7, v21);
  (*(v8 + 8))(v11, v20);
  v17 = *(v13 + 32);
  v17(v2 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_currentWeekInterval, v16, v12);
  v17(v2 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_dateInterval, a1, v12);
  *(v2 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_workoutStream) = v22;
  return v2;
}

uint64_t sub_2277B67EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEB18, &qword_2277E4A60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = &v42 - v3;
  v4 = sub_2277E2044();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v42 - v8;
  v9 = sub_2277E2024();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2277E1E84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = sub_2277E1FA4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - v26;
  v28 = OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_currentWeekInterval;
  swift_beginAccess();
  v29 = *(v14 + 16);
  v51 = v0;
  v43 = v28;
  v29(v19, v0 + v28, v13);
  sub_2277E1E44();
  v46 = v14;
  v47 = v13;
  v30 = v14;
  v31 = v42;
  (*(v30 + 8))(v19, v13);
  (*(v52 + 104))(v12, *MEMORY[0x277CC9968], v53);
  sub_2277E2014();
  v32 = v44;
  sub_2277E1FF4();
  if ((*(v21 + 48))(v32, 1, v20) == 1)
  {
    sub_227798E24(v32);
    result = sub_2277E28D4();
    __break(1u);
  }

  else
  {
    v33 = *(v49 + 8);
    v34 = v31;
    v35 = v50;
    v33(v34, v50);
    (*(v52 + 8))(v12, v53);
    v36 = *(v21 + 8);
    v36(v25, v20);
    (*(v21 + 32))(v27, v32, v20);
    v37 = v48;
    sub_2277E2014();
    v38 = v45;
    Date.intervalForFullWeek(calendar:)(v45);
    v33(v37, v35);
    v36(v27, v20);
    v39 = v51;
    v40 = v43;
    swift_beginAccess();
    (*(v46 + 40))(v39 + v40, v38, v47);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2277B6D04(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF50, &qword_2277E61D8);
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = sub_2277E1FA4();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF58, &unk_2277E61E0);
  v3[24] = v10;
  v11 = *(v10 - 8);
  v3[25] = v11;
  v12 = *(v11 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277B6EA4, v2, 0);
}

uint64_t sub_2277B6EA4()
{
  v1 = *(v0[17] + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_workoutStream);
  v0[28] = v1;
  v0[29] = sub_2277B8B00(&qword_27D7CEF60);
  v0[30] = *(*v1 + 120);
  swift_beginAccess();
  swift_beginAccess();
  v2 = v0[28];

  return MEMORY[0x2822009F8](sub_2277B6F7C, v2, 0);
}

uint64_t sub_2277B6F7C()
{
  v1 = v0[28];
  v2 = *(v1 + 112);
  if (v2)
  {
    v0[33] = v2;
    v3 = v0[17];
    v4 = v2;

    return MEMORY[0x2822009F8](sub_2277B7508, v3, 0);
  }

  else
  {
    (*(v0[25] + 16))(v0[27], v1 + v0[30], v0[24]);
    v5 = *(MEMORY[0x277D858C0] + 4);
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v6[1] = sub_2277B7090;
    v7 = v0[27];
    v8 = v0[24];

    return MEMORY[0x2822005B0](v0 + 11, v8);
  }
}

uint64_t sub_2277B7090()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_2277B72C8;
  }

  else
  {
    v6 = sub_2277B71BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2277B71BC()
{
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  (*(v4 + 32))(v3, v0[27], v5);
  swift_beginAccess();
  (*(v4 + 40))(v2 + v1, v3, v5);
  swift_endAccess();
  v6 = v0[11];
  if (v6)
  {
    v7 = v0[28];
    v8 = *(v7 + 112);
    *(v7 + 112) = v6;
    v9 = v6;

    v0[33] = v9;
    v10 = v0[17];
    v11 = sub_2277B7508;
  }

  else
  {
    v10 = v0[17];
    v11 = sub_2277B743C;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_2277B72C8()
{
  v1 = v0[17];
  (*(v0[25] + 8))(v0[27], v0[24]);
  if (v1)
  {
    v2 = v0[29];
    v3 = v0[17];
    swift_getObjectType();
    v4 = sub_2277E25C4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](sub_2277B7370, v4, v6);
}

uint64_t sub_2277B7370()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[20];
  v0[12] = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
  swift_willThrowTypedImpl();

  v5 = v0[1];
  v6 = v0[32];

  return v5();
}

uint64_t sub_2277B743C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[23];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  sub_2277B67EC();
  v0[13] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
  sub_2277E2654();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2277B7508()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 120);
  v5 = [*(v0 + 264) endDate];
  sub_2277E1F84();

  LOBYTE(v4) = sub_2277E1E74();
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 264);
  if (v4)
  {
    v7 = *(v0 + 224);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);
    *(v0 + 112) = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
    sub_2277E2644();
    (*(v9 + 8))(v8, v10);

    return MEMORY[0x2822009F8](sub_2277B76D0, v7, 0);
  }

  else
  {

    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 184);
    v16 = *(v0 + 160);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    sub_2277B67EC();
    *(v0 + 104) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
    sub_2277E2654();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2277B76D0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 136);
  v3 = *(v1 + 112);
  *(v1 + 112) = 0;

  return MEMORY[0x2822009F8](sub_2277B7744, v2, 0);
}

uint64_t sub_2277B7744()
{
  v1 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_2277B6F7C, v1, 0);
}

uint64_t AsyncWorkoutWeekStream.deinit()
{
  v1 = OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_dateInterval;
  v2 = sub_2277E1E84();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_workoutStream);

  v3(v0 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_currentWeekInterval, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncWorkoutWeekStream.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_dateInterval;
  v2 = sub_2277E1E84();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_workoutStream);

  v3(v0 + OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_currentWeekInterval, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t AsyncWorkoutWeekStream.next()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF28, &qword_2277E6098);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_2277E1E84();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_2277E1FA4();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277B7AB0, v1, 0);
}

uint64_t sub_2277B7AB0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[6];
  sub_2277E1E44();
  v9 = OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_currentWeekInterval;
  swift_beginAccess();
  (*(v6 + 16))(v5, v8 + v9, v7);
  sub_2277E1E44();
  (*(v6 + 8))(v5, v7);
  v10 = sub_2277E1F94();
  v11 = *(v4 + 8);
  v11(v2, v3);
  v11(v1, v3);
  if (v10 == -1)
  {
    v12 = sub_2277B7D5C;
  }

  else
  {
    v12 = sub_2277B7C0C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2277B7C0C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  sub_2277B8948();
  (*(v2 + 104))(v1, *MEMORY[0x277D858A0], v3);
  sub_2277E26A4();
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[12];
  v9 = v0[9];
  v10 = v0[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF30, &qword_2277E60A0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2277B7D5C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF30, &qword_2277E60A0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2277B7E44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_2277E2624();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v6, a1, v2);
  v13 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v12;
  (*(v3 + 32))(&v14[v13], v6, v2);
  sub_2277BAC08(0, 0, v10, &unk_2277E6200, v14);
}

uint64_t sub_2277B804C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[9] = a1;
  v6 = sub_2277E1E84();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277B8110, 0, 0);
}

uint64_t sub_2277B8110()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2277B81DC, Strong, 0);
  }

  else
  {
    v3 = *(v0 + 112);
    **(v0 + 72) = 1;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2277B81DC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = OBJC_IVAR____TtC15FitnessCoaching22AsyncWorkoutWeekStream_currentWeekInterval;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v5, v3);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_2277B82C4;
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[11];

  return sub_2277B6D04(v7, v9);
}

uint64_t sub_2277B82C4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[13];
  v8 = v2[12];
  if (v0)
  {
    (*(v7 + 8))(v2[14], v2[12]);
    v9 = sub_2277B847C;
    v10 = v5;
  }

  else
  {
    v11 = v2[15];

    (*(v7 + 8))(v6, v8);
    v9 = sub_2277B8530;
    v10 = 0;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_2277B847C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[11];
  v0[8] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
  sub_2277E2654();

  return MEMORY[0x2822009F8](sub_2277B8530, 0, 0);
}

uint64_t sub_2277B8530()
{
  v1 = *(v0 + 112);
  **(v0 + 72) = *(v0 + 120) == 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2277B85A0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22779696C;

  return AsyncWorkoutWeekStream.next()(a1);
}

uint64_t sub_2277B863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2277E25C4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x2822009F8](sub_2277B86D4, v6, v8);
}

uint64_t sub_2277B86D4()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2277B8770;
  v3 = *(v0 + 24);

  return AsyncWorkoutWeekStream.next()(v3);
}

uint64_t sub_2277B8770()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[6];
    v5 = v3[7];

    return MEMORY[0x2822009F8](sub_2277B88A0, v4, v5);
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}